@interface SHMatchedMediaItem
- (NSTimeInterval)matchOffset;
- (NSTimeInterval)predictedCurrentMatchOffset;
- (SHMatchedMediaItem)initWithCoder:(id)coder;
- (SHMatchedMediaItem)initWithMatchedMediaItemDictionary:(id)dictionary syncedLyrics:(id)lyrics;
- (float)confidence;
- (float)frequencySkew;
- (float)speedSkew;
- (id)creationDate;
- (int64_t)compare:(id)compare;
- (int64_t)matchScore;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMatchedMediaItem

- (SHMatchedMediaItem)initWithMatchedMediaItemDictionary:(id)dictionary syncedLyrics:(id)lyrics
{
  lyricsCopy = lyrics;
  v11.receiver = self;
  v11.super_class = SHMatchedMediaItem;
  v8 = [(SHMediaItem *)&v11 initWithProperties:dictionary];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_syncedLyrics, lyrics);
  }

  return v9;
}

- (SHMatchedMediaItem)initWithCoder:(id)coder
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SHMatchedMediaItemSyncedLyrics"];
  v12.receiver = self;
  v12.super_class = SHMatchedMediaItem;
  v9 = [(SHMediaItem *)&v12 initWithCoder:coderCopy];

  if (v9)
  {
    objc_storeStrong(&v9->_syncedLyrics, v8);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SHMatchedMediaItem;
  coderCopy = coder;
  [(SHMediaItem *)&v6 encodeWithCoder:coderCopy];
  v5 = [(SHMatchedMediaItem *)self syncedLyrics:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"SHMatchedMediaItemSyncedLyrics"];
}

- (NSTimeInterval)matchOffset
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_matchOffset"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (float)speedSkew
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_speedSkew"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)frequencySkew
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_frequencySkew"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int64_t)matchScore
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_score"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSTimeInterval)predictedCurrentMatchOffset
{
  [(SHMatchedMediaItem *)self matchOffset];
  v4 = v3;
  audioStartDate = [(SHMatchedMediaItem *)self audioStartDate];
  [audioStartDate timeIntervalSinceNow];
  v7 = v4 - v6;

  return v7;
}

- (id)creationDate
{
  v8.receiver = self;
  v8.super_class = SHMatchedMediaItem;
  creationDate = [(SHMediaItem *)&v8 creationDate];
  v4 = creationDate;
  if (creationDate)
  {
    audioStartDate = creationDate;
  }

  else
  {
    audioStartDate = [(SHMatchedMediaItem *)self audioStartDate];
  }

  v6 = audioStartDate;

  return v6;
}

- (float)confidence
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_confidence"];
  [v2 floatValue];
  if (v3 == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  shazamID = [(SHMediaItem *)self shazamID];
  shazamID2 = [compareCopy shazamID];
  v7 = [shazamID isEqualToString:shazamID2];

  if (v7)
  {
    v8 = sub_230F85BC0(self, "objectForKeyedSubscript:", @"sh_score");
    v9 = [compareCopy objectForKeyedSubscript:@"sh_score"];
    v10 = [v8 compare:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end