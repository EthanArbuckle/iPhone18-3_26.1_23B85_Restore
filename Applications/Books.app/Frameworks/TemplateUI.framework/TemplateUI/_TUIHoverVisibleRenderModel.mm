@interface _TUIHoverVisibleRenderModel
- (_TUIHoverVisibleRenderModel)initWithIdentifier:(id)a3 submodel:(id)a4 hoverIdentifier:(id)a5;
@end

@implementation _TUIHoverVisibleRenderModel

- (_TUIHoverVisibleRenderModel)initWithIdentifier:(id)a3 submodel:(id)a4 hoverIdentifier:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _TUIHoverVisibleRenderModel;
  v10 = [(TUIRenderModelView *)&v13 initWithReuseIdentifier:@"TUIReuseIdentifierHoverVisibleView" identifier:a3 submodel:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_hoverIdentifier, a5);
  }

  return v11;
}

@end