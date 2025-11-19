@interface _TUIElementShelfBuilder
- (void)addModel:(id)a3;
- (void)configureWithChildNode:(id)a3 attributes:(id)a4;
@end

@implementation _TUIElementShelfBuilder

- (void)configureWithChildNode:(id)a3 attributes:(id)a4
{
  v5 = [a4 stringForAttribute:178 node:a3.var0];
  role = self->_role;
  self->_role = v5;
}

- (void)addModel:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[TUISingleModelContainerWithRole alloc] initWithRole:self->_role];
    v8 = v4;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [(TUISingleModelContainer *)v5 updateModelChildren:v6];

    v7.receiver = self;
    v7.super_class = _TUIElementShelfBuilder;
    [(TUIBoxBuilder *)&v7 addModel:v5];
  }
}

@end