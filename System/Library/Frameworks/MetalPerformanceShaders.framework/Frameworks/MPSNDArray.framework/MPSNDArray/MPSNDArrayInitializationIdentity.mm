@interface MPSNDArrayInitializationIdentity
- (MPSNDArrayInitializationIdentity)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayInitializationIdentity)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
@end

@implementation MPSNDArrayInitializationIdentity

- (MPSNDArrayInitializationIdentity)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayInitializationIdentity;
  result = [(MPSNDArrayInitialization *)&v4 initWithDevice:a3 sourceCount:0];
  if (result)
  {
    result->super.super._encode = EncodeIdentityInitialization;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationIdentity;
  result = [(MPSNDArrayInitialization *)&v5 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 17) = EncodeIdentityInitialization;
  }

  return result;
}

- (MPSNDArrayInitializationIdentity)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationIdentity;
  result = [(MPSNDArrayInitialization *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeIdentityInitialization;
  }

  return result;
}

@end