@interface _TUIElementShelfBuilder
- (void)addModel:(id)model;
- (void)configureWithChildNode:(id)node attributes:(id)attributes;
@end

@implementation _TUIElementShelfBuilder

- (void)configureWithChildNode:(id)node attributes:(id)attributes
{
  v5 = [attributes stringForAttribute:178 node:node.var0];
  role = self->_role;
  self->_role = v5;
}

- (void)addModel:(id)model
{
  if (model)
  {
    modelCopy = model;
    v5 = [[TUISingleModelContainerWithRole alloc] initWithRole:self->_role];
    v8 = modelCopy;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [(TUISingleModelContainer *)v5 updateModelChildren:v6];

    v7.receiver = self;
    v7.super_class = _TUIElementShelfBuilder;
    [(TUIBoxBuilder *)&v7 addModel:v5];
  }
}

@end