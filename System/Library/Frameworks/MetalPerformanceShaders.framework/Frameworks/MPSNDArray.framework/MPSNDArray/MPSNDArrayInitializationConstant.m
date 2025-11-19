@interface MPSNDArrayInitializationConstant
- (MPSNDArrayInitializationConstant)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayInitializationConstant)initWithDevice:(id)a3 constantValue:(float)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
@end

@implementation MPSNDArrayInitializationConstant

- (MPSNDArrayInitializationConstant)initWithDevice:(id)a3 constantValue:(float)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitializationConstant;
  result = [(MPSNDArrayInitialization *)&v6 initWithDevice:a3 sourceCount:0];
  if (result)
  {
    result->super._constantValue = a4;
    result->super.super._encode = EncodeConstantInitialization;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitializationConstant;
  result = [(MPSNDArrayInitialization *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 42) = LODWORD(self->super._constantValue);
    *(result + 17) = EncodeConstantInitialization;
  }

  return result;
}

- (MPSNDArrayInitializationConstant)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationConstant;
  result = [(MPSNDArrayInitialization *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeConstantInitialization;
  }

  return result;
}

@end