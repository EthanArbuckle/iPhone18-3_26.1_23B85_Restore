@interface _TUIFocusContainerRenderModel
- (_TUIFocusContainerRenderModel)initWithIdentifier:(id)a3 submodel:(id)a4 focusStyle:(id)a5 actionHandler:(id)a6 linkEntities:(id)a7;
@end

@implementation _TUIFocusContainerRenderModel

- (_TUIFocusContainerRenderModel)initWithIdentifier:(id)a3 submodel:(id)a4 focusStyle:(id)a5 actionHandler:(id)a6 linkEntities:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = _TUIFocusContainerRenderModel;
  v16 = [(TUIRenderModelView *)&v19 initWithReuseIdentifier:@"TUIReuseIdentifierFocusContainerView" identifier:a3 submodel:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_focusStyle, a5);
    objc_storeStrong(&v17->_actionHandler, a6);
    objc_storeStrong(&v17->_linkEntities, a7);
  }

  return v17;
}

@end