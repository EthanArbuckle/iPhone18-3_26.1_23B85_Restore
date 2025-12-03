@interface AARegionInfo
- (AARegionInfo)init;
- (AARegionInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AARegionInfo

- (AARegionInfo)init
{
  [(AARegionInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AARegionInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AARegionInfo;
  v5 = [(AARegionInfo *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    regionInfoDictionary = v5->_regionInfoDictionary;
    v5->_regionInfoDictionary = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  regionInfoDictionary = self->_regionInfoDictionary;

  return [v4 initWithDictionary:regionInfoDictionary];
}

@end