@interface _TUIHoverVisibleRenderModel
- (_TUIHoverVisibleRenderModel)initWithIdentifier:(id)identifier submodel:(id)submodel hoverIdentifier:(id)hoverIdentifier;
@end

@implementation _TUIHoverVisibleRenderModel

- (_TUIHoverVisibleRenderModel)initWithIdentifier:(id)identifier submodel:(id)submodel hoverIdentifier:(id)hoverIdentifier
{
  hoverIdentifierCopy = hoverIdentifier;
  v13.receiver = self;
  v13.super_class = _TUIHoverVisibleRenderModel;
  v10 = [(TUIRenderModelView *)&v13 initWithReuseIdentifier:@"TUIReuseIdentifierHoverVisibleView" identifier:identifier submodel:submodel];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_hoverIdentifier, hoverIdentifier);
  }

  return v11;
}

@end