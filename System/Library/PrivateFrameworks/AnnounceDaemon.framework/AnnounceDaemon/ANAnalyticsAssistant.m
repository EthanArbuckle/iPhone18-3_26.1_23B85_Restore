@interface ANAnalyticsAssistant
- (ANAnalyticsAssistantAudioData)audioDataForAnnouncement:(id)a3;
- (ANAnalyticsAssistantSenderData)senderDataForAnnouncement:(SEL)a3;
- (id)_playerForAnnouncement:(id)a3;
- (int)_linearBucketAtInterval:(double)a3 value:(double)a4 max:(double)a5;
- (int64_t)boundGroupCount:(int64_t)a3;
@end

@implementation ANAnalyticsAssistant

- (ANAnalyticsAssistantAudioData)audioDataForAnnouncement:(id)a3
{
  v3 = [(ANAnalyticsAssistant *)self _playerForAnnouncement:a3];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
    v6 = v5;
    v7 = [v4 data];
    v8 = [v7 length];

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

- (ANAnalyticsAssistantSenderData)senderDataForAnnouncement:(SEL)a3
{
  v9 = a4;
  *&retstr->var1 = 0;
  retstr->var0 = [v9 action];
  retstr->var1 = [v9 deviceClass];
  v5 = [v9 location];
  if (v5)
  {
    v6 = [v9 location];
    v7 = [v6 target];
  }

  else
  {
    v7 = 0;
  }

  retstr->var2 = v7;

  retstr->var3 = [v9 source];

  return result;
}

- (int64_t)boundGroupCount:(int64_t)a3
{
  if (a3 >= 10)
  {
    return 10;
  }

  else
  {
    return a3;
  }
}

- (id)_playerForAnnouncement:(id)a3
{
  v3 = a3;
  v4 = [v3 fileData];
  v5 = [v3 filePath];

  if (!v4 && v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    if (v6)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277CB83D0]) initWithData:v4 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_linearBucketAtInterval:(double)a3 value:(double)a4 max:(double)a5
{
  if (a4 > a5)
  {
    return (a5 / a3 + 1.0);
  }

  if (a4 <= 0.0)
  {
    return 1;
  }

  return vcvtpd_s64_f64(a4 / a3);
}

@end