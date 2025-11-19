@interface AARegionInfo
- (AARegionInfo)init;
- (AARegionInfo)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AARegionInfo

- (AARegionInfo)init
{
  [(AARegionInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AARegionInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AARegionInfo;
  v5 = [(AARegionInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    regionInfoDictionary = v5->_regionInfoDictionary;
    v5->_regionInfoDictionary = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  regionInfoDictionary = self->_regionInfoDictionary;

  return [v4 initWithDictionary:regionInfoDictionary];
}

@end