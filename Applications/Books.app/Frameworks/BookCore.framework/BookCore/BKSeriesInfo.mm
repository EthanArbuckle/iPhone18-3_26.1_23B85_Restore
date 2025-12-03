@interface BKSeriesInfo
+ (id)seriesInfoWithDictionary:(id)dictionary;
- (BKSeriesInfo)initWithDictionary:(id)dictionary;
- (BOOL)isAudiobook;
- (BOOL)isContainer;
- (BOOL)isExplicit;
- (NSString)description;
- (float)popularity;
@end

@implementation BKSeriesInfo

- (BKSeriesInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = BKSeriesInfo;
  v5 = [(BKSeriesInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BKSeriesInfo *)v5 setInfoDictionary:dictionaryCopy];
  }

  return v6;
}

+ (id)seriesInfoWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithDictionary:dictionaryCopy];

  return v4;
}

- (NSString)description
{
  infoDictionary = [(BKSeriesInfo *)self infoDictionary];
  v4 = [NSString stringWithFormat:@"<BKSeriesInfo: %p> data: %@", self, infoDictionary];

  return v4;
}

- (BOOL)isExplicit
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"isExplicit"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAudiobook
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"isAudiobook"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isContainer
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"isContainer"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (float)popularity
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"popularity"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

@end