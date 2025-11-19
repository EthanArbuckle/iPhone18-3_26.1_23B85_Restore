@interface _BCUIHoverRegionBuilder
- (_BCUIHoverRegionBuilder)init;
- (void)addRegionWithRect:(CGRect)a3;
@end

@implementation _BCUIHoverRegionBuilder

- (_BCUIHoverRegionBuilder)init
{
  v6.receiver = self;
  v6.super_class = _BCUIHoverRegionBuilder;
  v2 = [(_BCUIHoverRegionBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bounds = v2->_bounds;
    v2->_bounds = v3;
  }

  return v2;
}

- (void)addRegionWithRect:(CGRect)a3
{
  bounds = self->_bounds;
  v4 = [NSValue valueWithCGRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NSMutableArray *)bounds addObject:v4];
}

@end