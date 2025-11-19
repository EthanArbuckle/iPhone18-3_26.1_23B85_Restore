@interface LPLyricExcerptMetadata
- (BOOL)isEqual:(id)a3;
- (LPLyricExcerptMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPLyricExcerptMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPLyricExcerptMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPLyricExcerptMetadata *)self lyrics];
    [(LPLyricExcerptMetadata *)v4 setLyrics:v5];

    v6 = [(LPLyricExcerptMetadata *)self language];
    [(LPLyricExcerptMetadata *)v4 setLanguage:v6];

    v7 = [(LPLyricExcerptMetadata *)self startTime];
    [(LPLyricExcerptMetadata *)v4 setStartTime:v7];

    v8 = [(LPLyricExcerptMetadata *)self endTime];
    [(LPLyricExcerptMetadata *)v4 setEndTime:v8];

    v9 = v4;
  }

  return v4;
}

- (LPLyricExcerptMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = LPLyricExcerptMetadata;
  v5 = [(LPLyricExcerptMetadata *)&v16 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v6;

    v8 = decodeStringForKey(v4, @"language");
    language = v5->_language;
    v5->_language = v8;

    v10 = decodeNumberForKey(v4, @"startTime");
    startTime = v5->_startTime;
    v5->_startTime = v10;

    v12 = decodeNumberForKey(v4, @"endTime");
    endTime = v5->_endTime;
    v5->_endTime = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_lyrics forKey:@"lyrics"];
  [v4 _lp_encodeStringIfNotNil:self->_language forKey:@"language"];
  [v4 _lp_encodeObjectIfNotNil:self->_startTime forKey:@"startTime"];
  [v4 _lp_encodeObjectIfNotNil:self->_endTime forKey:@"endTime"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPLyricExcerptMetadata;
  if ([(LPLyricExcerptMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[1], self->_lyrics) & 1) != 0 && objectsAreEqual_0(v6[2], self->_language) && objectsAreEqual_0(v6[3], self->_startTime))
      {
        v5 = objectsAreEqual_0(v6[4], self->_endTime);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end