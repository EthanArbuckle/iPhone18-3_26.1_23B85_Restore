@interface MTLMessageFilter
+ (id)filter:(unint64_t)a3 device:(id)a4;
- (id)init:(unint64_t)a3 device:(id)a4;
@end

@implementation MTLMessageFilter

- (id)init:(unint64_t)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLMessageFilter;
  result = [(MTLMessageFilter *)&v7 init];
  if (result)
  {
    *(result + 1) = a4;
    *(result + 2) = a3;
  }

  return result;
}

+ (id)filter:(unint64_t)a3 device:(id)a4
{
  v4 = [[MTLMessageFilter alloc] init:a3 device:a4];

  return v4;
}

@end