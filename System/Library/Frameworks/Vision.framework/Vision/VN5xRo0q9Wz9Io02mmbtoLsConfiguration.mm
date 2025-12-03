@interface VN5xRo0q9Wz9Io02mmbtoLsConfiguration
- (VN5xRo0q9Wz9Io02mmbtoLsConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VN5xRo0q9Wz9Io02mmbtoLsConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = VN5xRo0q9Wz9Io02mmbtoLsConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setImageSignatureprintType:self->_imageSignatureprintType];
    [v5 setImageSignatureHashType:self->_imageSignatureHashType];
    v6 = [(VN6Ac6Cyl5O5oK19HboyMBR *)self->_inputSignatureprint copy];
    [v5 setInputSignatureprint:v6];
  }

  return v5;
}

- (VN5xRo0q9Wz9Io02mmbtoLsConfiguration)initWithRequestClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = VN5xRo0q9Wz9Io02mmbtoLsConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v8 initWithRequestClass:class];
  v4 = v3;
  if (v3)
  {
    inputSignatureprint = v3->_inputSignatureprint;
    v3->_inputSignatureprint = 0;

    v4->_imageSignatureprintType = 0;
    v4->_imageSignatureHashType = 0;
    v6 = v4;
  }

  return v4;
}

@end