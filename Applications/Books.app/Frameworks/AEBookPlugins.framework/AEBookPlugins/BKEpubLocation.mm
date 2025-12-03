@interface BKEpubLocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
- (BKEpubLocation)initWithCoder:(id)coder;
- (BKEpubLocation)initWithLocationDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)jsonObject;
- (_NSRange)adjustRangeForSinglePageMode:(_NSRange)mode;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKEpubLocation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13.receiver = self;
    v13.super_class = BKEpubLocation;
    if ([(BKLocation *)&v13 isEqual:equalCopy])
    {
      v5 = equalCopy;
      startPath = [v5 startPath];
      if ([startPath count])
      {
        startPath2 = [(BKEpubLocation *)self startPath];
        [startPath2 count];
        endPath = [v5 endPath];
        [endPath count];
      }

      endPath2 = [v5 endPath];
      if ([endPath2 count])
      {
        endPath3 = [(BKEpubLocation *)self endPath];
        [endPath3 count];
        endPath4 = [v5 endPath];
        [endPath4 count];
      }
    }
  }

  return 0;
}

- (id)serializeLocationToDictionary
{
  v14.receiver = self;
  v14.super_class = BKEpubLocation;
  serializeLocationToDictionary = [(BKLocation *)&v14 serializeLocationToDictionary];
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:serializeLocationToDictionary forKey:@"super"];
  *&v5 = [(BKEpubLocation *)self startOffset];
  v6 = [NSNumber numberWithFloat:v5];
  [v4 setObject:v6 forKey:@"startOffset"];

  *&v7 = [(BKEpubLocation *)self endOffset];
  v8 = [NSNumber numberWithFloat:v7];
  [v4 setObject:v8 forKey:@"endOffset"];

  startPath = [(BKEpubLocation *)self startPath];

  if (startPath)
  {
    startPath2 = [(BKEpubLocation *)self startPath];
    [v4 setObject:startPath2 forKey:@"startPath"];
  }

  endPath = [(BKEpubLocation *)self endPath];

  if (endPath)
  {
    endPath2 = [(BKEpubLocation *)self endPath];
    [v4 setObject:endPath2 forKey:@"endPath"];
  }

  [v4 setObject:@"BKEpubLocation" forKey:@"class"];

  return v4;
}

- (BKEpubLocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"super"];
  v12.receiver = self;
  v12.super_class = BKEpubLocation;
  v6 = [(BKLocation *)&v12 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"startPath"];
    [(BKEpubLocation *)v6 setStartPath:v7];

    v8 = [dictionaryCopy objectForKey:@"startOffset"];
    -[BKEpubLocation setStartOffset:](v6, "setStartOffset:", [v8 unsignedIntValue]);

    v9 = [dictionaryCopy objectForKey:@"endPath"];
    [(BKEpubLocation *)v6 setEndPath:v9];

    v10 = [dictionaryCopy objectForKey:@"endOffset"];
    -[BKEpubLocation setEndOffset:](v6, "setEndOffset:", [v10 unsignedIntValue]);
  }

  return v6;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKEpubLocation"])
  {
    v5 = [[BKEpubLocation alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BKEpubLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BKEpubLocation;
  v5 = [(BKLocation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"startPath"];
    [(BKEpubLocation *)v5 setStartPath:v10];

    -[BKEpubLocation setStartOffset:](v5, "setStartOffset:", [coderCopy decodeIntegerForKey:@"startOffset"]);
    v11 = [coderCopy decodeObjectOfClasses:v9 forKey:@"endPath"];
    [(BKEpubLocation *)v5 setEndPath:v11];

    -[BKEpubLocation setEndOffset:](v5, "setEndOffset:", [coderCopy decodeIntegerForKey:@"endOffset"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BKEpubLocation;
  coderCopy = coder;
  [(BKLocation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startPath forKey:{@"startPath", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_startOffset forKey:@"startOffset"];
  [coderCopy encodeObject:self->_endPath forKey:@"endPath"];
  [coderCopy encodeInteger:self->_endOffset forKey:@"endOffset"];
}

- (_NSRange)adjustRangeForSinglePageMode:(_NSRange)mode
{
  length = mode.length;
  location = mode.location;
  singlePage = [(BKEpubLocation *)self singlePage];
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = length + location - 1;
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = length;
  }

  else
  {
    v7 = 1;
  }

  if (length < 2)
  {
    v6 = location;
    v7 = length;
  }

  v8 = singlePage == 0;
  if (singlePage)
  {
    v9 = v6;
  }

  else
  {
    v9 = location;
  }

  if (v8)
  {
    v10 = length;
  }

  else
  {
    v10 = v7;
  }

  result.length = v10;
  result.location = v9;
  return result;
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKEpubLocation;
  stringValue = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, singlePage: %d, startOffset:%lu, endOffset:%lu, startPath:%@, endPath:%@ }", stringValue, self->_singlePage, self->_startOffset, self->_endOffset, self->_startPath, self->_endPath];

  return v4;
}

- (NSDictionary)jsonObject
{
  startPath = [(BKEpubLocation *)self startPath];
  if ([startPath count])
  {
    endPath = [(BKEpubLocation *)self endPath];
    v5 = [endPath count];

    if (v5)
    {
      v12[0] = @"startPath";
      startPath2 = [(BKEpubLocation *)self startPath];
      v13[0] = startPath2;
      v12[1] = @"startOffset";
      v7 = [NSNumber numberWithUnsignedInteger:[(BKEpubLocation *)self startOffset]];
      v13[1] = v7;
      v12[2] = @"endPath";
      endPath2 = [(BKEpubLocation *)self endPath];
      v13[2] = endPath2;
      v12[3] = @"endOffset";
      v9 = [NSNumber numberWithUnsignedInteger:[(BKEpubLocation *)self endOffset]];
      v13[3] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end