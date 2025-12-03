@interface THSimpleCFIChild
+ (id)childWithIndex:(unint64_t)index;
- (THSimpleCFIChild)initWithIndex:(unint64_t)index;
@end

@implementation THSimpleCFIChild

- (THSimpleCFIChild)initWithIndex:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = THSimpleCFIChild;
  v4 = [(THSimpleCFIChild *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THSimpleCFIChild *)v4 setIndex:index];
  }

  return v5;
}

+ (id)childWithIndex:(unint64_t)index
{
  v3 = [[THSimpleCFIChild alloc] initWithIndex:index];

  return v3;
}

@end