@interface THGlossaryDividerLayout
- (id)computeLayoutGeometry;
- (void)validate;
@end

@implementation THGlossaryDividerLayout

- (void)validate
{
  [(THGlossaryDividerLayout *)self invalidateFrame];
  v3.receiver = self;
  v3.super_class = THGlossaryDividerLayout;
  [(THGlossaryDividerLayout *)&v3 validate];
}

- (id)computeLayoutGeometry
{
  v2 = [[TSDLayoutGeometry alloc] initWithFrame:{0.0, 0.0, 100.0, 1.0}];

  return v2;
}

@end