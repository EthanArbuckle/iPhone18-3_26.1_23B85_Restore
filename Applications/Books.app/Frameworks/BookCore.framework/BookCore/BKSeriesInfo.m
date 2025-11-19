@interface BKSeriesInfo
+ (id)seriesInfoWithDictionary:(id)a3;
- (BKSeriesInfo)initWithDictionary:(id)a3;
- (BOOL)isAudiobook;
- (BOOL)isContainer;
- (BOOL)isExplicit;
- (NSString)description;
- (float)popularity;
@end

@implementation BKSeriesInfo

- (BKSeriesInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKSeriesInfo;
  v5 = [(BKSeriesInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BKSeriesInfo *)v5 setInfoDictionary:v4];
  }

  return v6;
}

+ (id)seriesInfoWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDictionary:v3];

  return v4;
}

- (NSString)description
{
  v3 = [(BKSeriesInfo *)self infoDictionary];
  v4 = [NSString stringWithFormat:@"<BKSeriesInfo: %p> data: %@", self, v3];

  return v4;
}

- (BOOL)isExplicit
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"isExplicit"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAudiobook
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"isAudiobook"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isContainer
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"isContainer"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (float)popularity
{
  v2 = [(NSDictionary *)self->_infoDictionary objectForKey:@"popularity"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

@end