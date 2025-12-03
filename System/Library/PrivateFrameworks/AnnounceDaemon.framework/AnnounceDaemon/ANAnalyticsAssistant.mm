@interface ANAnalyticsAssistant
- (ANAnalyticsAssistantAudioData)audioDataForAnnouncement:(id)announcement;
- (ANAnalyticsAssistantSenderData)senderDataForAnnouncement:(SEL)announcement;
- (id)_playerForAnnouncement:(id)announcement;
- (int)_linearBucketAtInterval:(double)interval value:(double)value max:(double)max;
- (int64_t)boundGroupCount:(int64_t)count;
@end

@implementation ANAnalyticsAssistant

- (ANAnalyticsAssistantAudioData)audioDataForAnnouncement:(id)announcement
{
  v3 = [(ANAnalyticsAssistant *)self _playerForAnnouncement:announcement];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
    v6 = v5;
    data = [v4 data];
    v8 = [data length];

    v9 = v6;
  }

  else
  {
    v9 = 0.0;
    v8 = 0;
  }

  v10 = v8;
  v11 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (ANAnalyticsAssistantSenderData)senderDataForAnnouncement:(SEL)announcement
{
  v9 = a4;
  *&retstr->var1 = 0;
  retstr->var0 = [v9 action];
  retstr->var1 = [v9 deviceClass];
  location = [v9 location];
  if (location)
  {
    location2 = [v9 location];
    target = [location2 target];
  }

  else
  {
    target = 0;
  }

  retstr->var2 = target;

  retstr->var3 = [v9 source];

  return result;
}

- (int64_t)boundGroupCount:(int64_t)count
{
  if (count >= 10)
  {
    return 10;
  }

  else
  {
    return count;
  }
}

- (id)_playerForAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  fileData = [announcementCopy fileData];
  filePath = [announcementCopy filePath];

  if (!fileData && filePath)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:filePath];
    if (v6)
    {
      fileData = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v6];
    }

    else
    {
      fileData = 0;
    }
  }

  if (fileData)
  {
    v7 = [objc_alloc(MEMORY[0x277CB83D0]) initWithData:fileData error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_linearBucketAtInterval:(double)interval value:(double)value max:(double)max
{
  if (value > max)
  {
    return (max / interval + 1.0);
  }

  if (value <= 0.0)
  {
    return 1;
  }

  return vcvtpd_s64_f64(value / interval);
}

@end