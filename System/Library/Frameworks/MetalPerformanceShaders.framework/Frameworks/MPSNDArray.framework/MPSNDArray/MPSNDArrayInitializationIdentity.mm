@interface MPSNDArrayInitializationIdentity
- (MPSNDArrayInitializationIdentity)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayInitializationIdentity)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
@end

@implementation MPSNDArrayInitializationIdentity

- (MPSNDArrayInitializationIdentity)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayInitializationIdentity;
  result = [(MPSNDArrayInitialization *)&v4 initWithDevice:device sourceCount:0];
  if (result)
  {
    result->super.super._encode = EncodeIdentityInitialization;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationIdentity;
  result = [(MPSNDArrayInitialization *)&v5 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 17) = EncodeIdentityInitialization;
  }

  return result;
}

- (MPSNDArrayInitializationIdentity)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationIdentity;
  result = [(MPSNDArrayInitialization *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeIdentityInitialization;
  }

  return result;
}

@end