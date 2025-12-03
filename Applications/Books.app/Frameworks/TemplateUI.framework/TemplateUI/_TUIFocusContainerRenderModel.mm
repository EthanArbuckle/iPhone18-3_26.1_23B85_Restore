@interface _TUIFocusContainerRenderModel
- (_TUIFocusContainerRenderModel)initWithIdentifier:(id)identifier submodel:(id)submodel focusStyle:(id)style actionHandler:(id)handler linkEntities:(id)entities;
@end

@implementation _TUIFocusContainerRenderModel

- (_TUIFocusContainerRenderModel)initWithIdentifier:(id)identifier submodel:(id)submodel focusStyle:(id)style actionHandler:(id)handler linkEntities:(id)entities
{
  styleCopy = style;
  handlerCopy = handler;
  entitiesCopy = entities;
  v19.receiver = self;
  v19.super_class = _TUIFocusContainerRenderModel;
  v16 = [(TUIRenderModelView *)&v19 initWithReuseIdentifier:@"TUIReuseIdentifierFocusContainerView" identifier:identifier submodel:submodel];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_focusStyle, style);
    objc_storeStrong(&v17->_actionHandler, handler);
    objc_storeStrong(&v17->_linkEntities, entities);
  }

  return v17;
}

@end