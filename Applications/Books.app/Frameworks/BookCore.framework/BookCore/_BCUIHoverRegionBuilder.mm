@interface _BCUIHoverRegionBuilder
- (_BCUIHoverRegionBuilder)init;
- (void)addRegionWithRect:(CGRect)rect;
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

- (void)addRegionWithRect:(CGRect)rect
{
  bounds = self->_bounds;
  v4 = [NSValue valueWithCGRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(NSMutableArray *)bounds addObject:v4];
}

@end