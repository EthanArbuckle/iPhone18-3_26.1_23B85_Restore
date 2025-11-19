@interface THSimpleCFIChild
+ (id)childWithIndex:(unint64_t)a3;
- (THSimpleCFIChild)initWithIndex:(unint64_t)a3;
@end

@implementation THSimpleCFIChild

- (THSimpleCFIChild)initWithIndex:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = THSimpleCFIChild;
  v4 = [(THSimpleCFIChild *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THSimpleCFIChild *)v4 setIndex:a3];
  }

  return v5;
}

+ (id)childWithIndex:(unint64_t)a3
{
  v3 = [[THSimpleCFIChild alloc] initWithIndex:a3];

  return v3;
}

@end