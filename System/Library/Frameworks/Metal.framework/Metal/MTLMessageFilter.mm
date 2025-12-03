@interface MTLMessageFilter
+ (id)filter:(unint64_t)filter device:(id)device;
- (id)init:(unint64_t)init device:(id)device;
@end

@implementation MTLMessageFilter

- (id)init:(unint64_t)init device:(id)device
{
  v7.receiver = self;
  v7.super_class = MTLMessageFilter;
  result = [(MTLMessageFilter *)&v7 init];
  if (result)
  {
    *(result + 1) = device;
    *(result + 2) = init;
  }

  return result;
}

+ (id)filter:(unint64_t)filter device:(id)device
{
  v4 = [[MTLMessageFilter alloc] init:filter device:device];

  return v4;
}

@end