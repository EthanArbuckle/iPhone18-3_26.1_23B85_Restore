@interface BKEpubLocation
+ (id)deserializeLocationFromDictionary:(id)a3;
- (BKEpubLocation)initWithCoder:(id)a3;
- (BKEpubLocation)initWithLocationDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)jsonObject;
- (_NSRange)adjustRangeForSinglePageMode:(_NSRange)a3;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKEpubLocation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13.receiver = self;
    v13.super_class = BKEpubLocation;
    if ([(BKLocation *)&v13 isEqual:v4])
    {
      v5 = v4;
      v6 = [v5 startPath];
      if ([v6 count])
      {
        v7 = [(BKEpubLocation *)self startPath];
        [v7 count];
        v8 = [v5 endPath];
        [v8 count];
      }

      v9 = [v5 endPath];
      if ([v9 count])
      {
        v10 = [(BKEpubLocation *)self endPath];
        [v10 count];
        v11 = [v5 endPath];
        [v11 count];
      }
    }
  }

  return 0;
}

- (id)serializeLocationToDictionary
{
  v14.receiver = self;
  v14.super_class = BKEpubLocation;
  v3 = [(BKLocation *)&v14 serializeLocationToDictionary];
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v3 forKey:@"super"];
  *&v5 = [(BKEpubLocation *)self startOffset];
  v6 = [NSNumber numberWithFloat:v5];
  [v4 setObject:v6 forKey:@"startOffset"];

  *&v7 = [(BKEpubLocation *)self endOffset];
  v8 = [NSNumber numberWithFloat:v7];
  [v4 setObject:v8 forKey:@"endOffset"];

  v9 = [(BKEpubLocation *)self startPath];

  if (v9)
  {
    v10 = [(BKEpubLocation *)self startPath];
    [v4 setObject:v10 forKey:@"startPath"];
  }

  v11 = [(BKEpubLocation *)self endPath];

  if (v11)
  {
    v12 = [(BKEpubLocation *)self endPath];
    [v4 setObject:v12 forKey:@"endPath"];
  }

  [v4 setObject:@"BKEpubLocation" forKey:@"class"];

  return v4;
}

- (BKEpubLocation)initWithLocationDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"super"];
  v12.receiver = self;
  v12.super_class = BKEpubLocation;
  v6 = [(BKLocation *)&v12 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [v4 objectForKey:@"startPath"];
    [(BKEpubLocation *)v6 setStartPath:v7];

    v8 = [v4 objectForKey:@"startOffset"];
    -[BKEpubLocation setStartOffset:](v6, "setStartOffset:", [v8 unsignedIntValue]);

    v9 = [v4 objectForKey:@"endPath"];
    [(BKEpubLocation *)v6 setEndPath:v9];

    v10 = [v4 objectForKey:@"endOffset"];
    -[BKEpubLocation setEndOffset:](v6, "setEndOffset:", [v10 unsignedIntValue]);
  }

  return v6;
}

+ (id)deserializeLocationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKEpubLocation"])
  {
    v5 = [[BKEpubLocation alloc] initWithLocationDictionary:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BKEpubLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BKEpubLocation;
  v5 = [(BKLocation *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"startPath"];
    [(BKEpubLocation *)v5 setStartPath:v10];

    -[BKEpubLocation setStartOffset:](v5, "setStartOffset:", [v4 decodeIntegerForKey:@"startOffset"]);
    v11 = [v4 decodeObjectOfClasses:v9 forKey:@"endPath"];
    [(BKEpubLocation *)v5 setEndPath:v11];

    -[BKEpubLocation setEndOffset:](v5, "setEndOffset:", [v4 decodeIntegerForKey:@"endOffset"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKEpubLocation;
  v4 = a3;
  [(BKLocation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startPath forKey:{@"startPath", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_startOffset forKey:@"startOffset"];
  [v4 encodeObject:self->_endPath forKey:@"endPath"];
  [v4 encodeInteger:self->_endOffset forKey:@"endOffset"];
}

- (_NSRange)adjustRangeForSinglePageMode:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(BKEpubLocation *)self singlePage];
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

  v8 = v5 == 0;
  if (v5)
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
  v3 = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, singlePage: %d, startOffset:%lu, endOffset:%lu, startPath:%@, endPath:%@ }", v3, self->_singlePage, self->_startOffset, self->_endOffset, self->_startPath, self->_endPath];

  return v4;
}

- (NSDictionary)jsonObject
{
  v3 = [(BKEpubLocation *)self startPath];
  if ([v3 count])
  {
    v4 = [(BKEpubLocation *)self endPath];
    v5 = [v4 count];

    if (v5)
    {
      v12[0] = @"startPath";
      v6 = [(BKEpubLocation *)self startPath];
      v13[0] = v6;
      v12[1] = @"startOffset";
      v7 = [NSNumber numberWithUnsignedInteger:[(BKEpubLocation *)self startOffset]];
      v13[1] = v7;
      v12[2] = @"endPath";
      v8 = [(BKEpubLocation *)self endPath];
      v13[2] = v8;
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