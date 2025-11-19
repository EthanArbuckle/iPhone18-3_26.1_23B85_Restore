@interface MPSImageErode
- (MPSImageErode)initWithCoder:(id)a3 device:(id)a4;
- (MPSImageErode)initWithDevice:(id)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 values:(const float *)a6;
@end

@implementation MPSImageErode

- (MPSImageErode)initWithDevice:(id)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 values:(const float *)a6
{
  v7.receiver = self;
  v7.super_class = MPSImageErode;
  result = [(MPSImageDilate *)&v7 initWithDevice:a3 kernelWidth:a4 kernelHeight:a5 values:a6];
  if (result)
  {
    result->super.kernel = 1;
  }

  return result;
}

- (MPSImageErode)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSImageErode;
  result = [(MPSImageDilate *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.kernel = 1;
  }

  return result;
}

@end