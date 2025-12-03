@interface TUIRenderModelInteractive
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (NSString)description;
- (TUIRenderModelInteractive)initWithReuseIdentifier:(id)identifier identifier:(id)a4 style:(id)style elementStates:(id)states imageModelIDToResource:(id)resource actionHandler:(id)handler viewState:(id)state enabled:(BOOL)self0 pressScale:(double)self1 touchInsets:(UIEdgeInsets)self2 pointer:(id)self3 focusStyle:(id)self4 menu:(id)self5 name:(id)self6;
- (UIEdgeInsets)touchInsets;
- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc;
- (unint64_t)hash;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
@end

@implementation TUIRenderModelInteractive

- (TUIRenderModelInteractive)initWithReuseIdentifier:(id)identifier identifier:(id)a4 style:(id)style elementStates:(id)states imageModelIDToResource:(id)resource actionHandler:(id)handler viewState:(id)state enabled:(BOOL)self0 pressScale:(double)self1 touchInsets:(UIEdgeInsets)self2 pointer:(id)self3 focusStyle:(id)self4 menu:(id)self5 name:(id)self6
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  identifierCopy = identifier;
  v26 = a4;
  obj = style;
  styleCopy = style;
  statesCopy = states;
  resourceCopy = resource;
  handlerCopy = handler;
  stateCopy = state;
  pointerCopy = pointer;
  focusStyleCopy = focusStyle;
  menuCopy = menu;
  nameCopy = name;
  v51.receiver = self;
  v51.super_class = TUIRenderModelInteractive;
  v32 = [(TUIRenderModelInteractive *)&v51 init];
  if (v32)
  {
    v33 = [v26 copyWithZone:0];
    identifier = v32->_identifier;
    v32->_identifier = v33;

    v35 = [identifierCopy copy];
    reuseIdentifier = v32->_reuseIdentifier;
    v32->_reuseIdentifier = v35;

    objc_storeStrong(&v32->_style, obj);
    v37 = [statesCopy copy];
    stateToModel = v32->_stateToModel;
    v32->_stateToModel = v37;

    v39 = [resourceCopy copy];
    imageModelIDToResource = v32->_imageModelIDToResource;
    v32->_imageModelIDToResource = v39;

    v41 = [nameCopy copy];
    name = v32->_name;
    v32->_name = v41;

    objc_storeStrong(&v32->_pointer, pointer);
    objc_storeStrong(&v32->_focusStyle, focusStyle);
    objc_storeStrong(&v32->_menu, menu);
    objc_storeStrong(&v32->_viewState, state);
    v32->_enabled = enabled;
    v32->_pressScale = scale;
    v32->_touchInsets.top = top;
    v32->_touchInsets.left = left;
    v32->_touchInsets.bottom = bottom;
    v32->_touchInsets.right = right;
    objc_storeStrong(&v32->_actionHandler, handler);
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p stateToModel=%@, enabled=%d>", v4, self, self->_stateToModel, self->_enabled];

  return v5;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  stateToModel = self->_stateToModel;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v8 = *&transform->c;
  v12 = *&transform->a;
  v13 = v8;
  v10[2] = sub_15D3A0;
  v10[3] = &unk_262DE8;
  v11 = collectorCopy;
  v14 = *&transform->tx;
  v9 = collectorCopy;
  [(NSDictionary *)stateToModel enumerateKeysAndObjectsUsingBlock:v10];
}

- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver
{
  collectorCopy = collector;
  queryCopy = query;
  resolverCopy = resolver;
  stateToModel = self->_stateToModel;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v14 = *&transform->c;
  v22 = *&transform->a;
  v23 = v14;
  v18[2] = sub_15D4E4;
  v18[3] = &unk_262E10;
  v24 = *&transform->tx;
  v19 = collectorCopy;
  v20 = queryCopy;
  v21 = resolverCopy;
  v15 = resolverCopy;
  v16 = queryCopy;
  v17 = collectorCopy;
  [(NSDictionary *)stateToModel enumerateKeysAndObjectsUsingBlock:v18];
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = modelCopy;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = TUIDynamicCast(v6, modelCopy);
    }

    v9 = v7;
    if (TUIRenderModelIsEqualToRenderModel(self, v7) && self->_viewState == *(v9 + 6) && ((reuseIdentifier = self->_reuseIdentifier, reuseIdentifier == *(v9 + 4)) || [(NSString *)reuseIdentifier isEqualToString:?]) && ((name = self->_name, name == *(v9 + 10)) || [(NSString *)name isEqualToString:?]) && self->_enabled == v9[8] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_touchInsets.top, *(v9 + 136)), vceqq_f64(*&self->_touchInsets.bottom, *(v9 + 152))))) & 1) != 0 && ((stateToModel = self->_stateToModel, stateToModel == *(v9 + 8)) || [(NSDictionary *)stateToModel isEqual:?]) && ((imageModelIDToResource = self->_imageModelIDToResource, imageModelIDToResource == *(v9 + 9)) || [(NSDictionary *)imageModelIDToResource isEqualToDictionary:?]) && ((style = self->_style, style == *(v9 + 7)) || [(TUIRenderStyling *)style isEqualToStyle:?]) && ((actionHandler = self->_actionHandler, actionHandler == *(v9 + 5)) || [(TUIElementActionTriggerHandler *)actionHandler isEqualToHandler:?]))
    {
      menu = self->_menu;
      if (menu == *(v9 + 13))
      {
        v8 = 1;
      }

      else
      {
        v8 = [(TUIMenuModel *)menu isEqual:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelInteractive *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc
{
  v7 = objc_alloc(objc_opt_class());
  reuseIdentifier = self->_reuseIdentifier;
  identifier = self->_identifier;
  style = self->_style;
  v11 = (proc)(self->_stateToModel, flags);
  LOBYTE(v14) = self->_enabled;
  v12 = [v7 initWithReuseIdentifier:reuseIdentifier identifier:identifier style:style elementStates:v11 imageModelIDToResource:self->_imageModelIDToResource actionHandler:self->_actionHandler viewState:self->_pressScale enabled:self->_touchInsets.top pressScale:self->_touchInsets.left touchInsets:self->_touchInsets.bottom pointer:self->_touchInsets.right focusStyle:self->_viewState menu:v14 name:{self->_pointer, self->_focusStyle, self->_menu, self->_name}];

  TUIRenderModelCopyProperties(v12, self);
  return v12;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end