@interface LPLyricExcerptMetadata
- (BOOL)isEqual:(id)equal;
- (LPLyricExcerptMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPLyricExcerptMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPLyricExcerptMetadata allocWithZone:zone];
  if (v4)
  {
    lyrics = [(LPLyricExcerptMetadata *)self lyrics];
    [(LPLyricExcerptMetadata *)v4 setLyrics:lyrics];

    language = [(LPLyricExcerptMetadata *)self language];
    [(LPLyricExcerptMetadata *)v4 setLanguage:language];

    startTime = [(LPLyricExcerptMetadata *)self startTime];
    [(LPLyricExcerptMetadata *)v4 setStartTime:startTime];

    endTime = [(LPLyricExcerptMetadata *)self endTime];
    [(LPLyricExcerptMetadata *)v4 setEndTime:endTime];

    v9 = v4;
  }

  return v4;
}

- (LPLyricExcerptMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = LPLyricExcerptMetadata;
  v5 = [(LPLyricExcerptMetadata *)&v16 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v6;

    v8 = decodeStringForKey(coderCopy, @"language");
    language = v5->_language;
    v5->_language = v8;

    v10 = decodeNumberForKey(coderCopy, @"startTime");
    startTime = v5->_startTime;
    v5->_startTime = v10;

    v12 = decodeNumberForKey(coderCopy, @"endTime");
    endTime = v5->_endTime;
    v5->_endTime = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_lyrics forKey:@"lyrics"];
  [coderCopy _lp_encodeStringIfNotNil:self->_language forKey:@"language"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_startTime forKey:@"startTime"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_endTime forKey:@"endTime"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPLyricExcerptMetadata;
  if ([(LPLyricExcerptMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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