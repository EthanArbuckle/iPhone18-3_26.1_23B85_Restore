@interface SHMatchedMediaItem
- (NSTimeInterval)matchOffset;
- (NSTimeInterval)predictedCurrentMatchOffset;
- (SHMatchedMediaItem)initWithCoder:(id)a3;
- (SHMatchedMediaItem)initWithMatchedMediaItemDictionary:(id)a3 syncedLyrics:(id)a4;
- (float)confidence;
- (float)frequencySkew;
- (float)speedSkew;
- (id)creationDate;
- (int64_t)compare:(id)a3;
- (int64_t)matchScore;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHMatchedMediaItem

- (SHMatchedMediaItem)initWithMatchedMediaItemDictionary:(id)a3 syncedLyrics:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SHMatchedMediaItem;
  v8 = [(SHMediaItem *)&v11 initWithProperties:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_syncedLyrics, a4);
  }

  return v9;
}

- (SHMatchedMediaItem)initWithCoder:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"SHMatchedMediaItemSyncedLyrics"];
  v12.receiver = self;
  v12.super_class = SHMatchedMediaItem;
  v9 = [(SHMediaItem *)&v12 initWithCoder:v5];

  if (v9)
  {
    objc_storeStrong(&v9->_syncedLyrics, v8);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SHMatchedMediaItem;
  v4 = a3;
  [(SHMediaItem *)&v6 encodeWithCoder:v4];
  v5 = [(SHMatchedMediaItem *)self syncedLyrics:v6.receiver];
  [v4 encodeObject:v5 forKey:@"SHMatchedMediaItemSyncedLyrics"];
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
  v3 = [v2 integerValue];

  return v3;
}

- (NSTimeInterval)predictedCurrentMatchOffset
{
  [(SHMatchedMediaItem *)self matchOffset];
  v4 = v3;
  v5 = [(SHMatchedMediaItem *)self audioStartDate];
  [v5 timeIntervalSinceNow];
  v7 = v4 - v6;

  return v7;
}

- (id)creationDate
{
  v8.receiver = self;
  v8.super_class = SHMatchedMediaItem;
  v3 = [(SHMediaItem *)&v8 creationDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SHMatchedMediaItem *)self audioStartDate];
  }

  v6 = v5;

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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaItem *)self shazamID];
  v6 = [v4 shazamID];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = sub_230F85BC0(self, "objectForKeyedSubscript:", @"sh_score");
    v9 = [v4 objectForKeyedSubscript:@"sh_score"];
    v10 = [v8 compare:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end