@interface MSMessageLayout
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MSMessageLayout

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MSMessageLayout;
  return [(MSMessageLayout *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MSMessageLayout alloc];

  return [(MSMessageLayout *)v3 _init];
}

@end