@interface MPSNDArrayInitializationConstant
- (MPSNDArrayInitializationConstant)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayInitializationConstant)initWithDevice:(id)device constantValue:(float)value;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
@end

@implementation MPSNDArrayInitializationConstant

- (MPSNDArrayInitializationConstant)initWithDevice:(id)device constantValue:(float)value
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitializationConstant;
  result = [(MPSNDArrayInitialization *)&v6 initWithDevice:device sourceCount:0];
  if (result)
  {
    result->super._constantValue = value;
    result->super.super._encode = EncodeConstantInitialization;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitializationConstant;
  result = [(MPSNDArrayInitialization *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 42) = LODWORD(self->super._constantValue);
    *(result + 17) = EncodeConstantInitialization;
  }

  return result;
}

- (MPSNDArrayInitializationConstant)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationConstant;
  result = [(MPSNDArrayInitialization *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeConstantInitialization;
  }

  return result;
}

@end