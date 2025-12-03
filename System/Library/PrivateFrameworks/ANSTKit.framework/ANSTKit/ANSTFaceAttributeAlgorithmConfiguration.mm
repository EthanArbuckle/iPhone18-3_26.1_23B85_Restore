@interface ANSTFaceAttributeAlgorithmConfiguration
- (ANSTFaceAttributeAlgorithmConfiguration)initWithVersion:(unint64_t)version;
@end

@implementation ANSTFaceAttributeAlgorithmConfiguration

- (ANSTFaceAttributeAlgorithmConfiguration)initWithVersion:(unint64_t)version
{
  v4.receiver = self;
  v4.super_class = ANSTFaceAttributeAlgorithmConfiguration;
  return [(ANSTConfiguration *)&v4 initWithVersion:version];
}

@end