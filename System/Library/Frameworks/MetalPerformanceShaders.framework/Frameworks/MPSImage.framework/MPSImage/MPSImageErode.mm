@interface MPSImageErode
- (MPSImageErode)initWithCoder:(id)coder device:(id)device;
- (MPSImageErode)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height values:(const float *)values;
@end

@implementation MPSImageErode

- (MPSImageErode)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height values:(const float *)values
{
  v7.receiver = self;
  v7.super_class = MPSImageErode;
  result = [(MPSImageDilate *)&v7 initWithDevice:device kernelWidth:width kernelHeight:height values:values];
  if (result)
  {
    result->super.kernel = 1;
  }

  return result;
}

- (MPSImageErode)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageErode;
  result = [(MPSImageDilate *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.kernel = 1;
  }

  return result;
}

@end