@interface ANSTFaceAttributeAlgorithmConfiguration
- (ANSTFaceAttributeAlgorithmConfiguration)initWithVersion:(unint64_t)a3;
@end

@implementation ANSTFaceAttributeAlgorithmConfiguration

- (ANSTFaceAttributeAlgorithmConfiguration)initWithVersion:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = ANSTFaceAttributeAlgorithmConfiguration;
  return [(ANSTConfiguration *)&v4 initWithVersion:a3];
}

@end