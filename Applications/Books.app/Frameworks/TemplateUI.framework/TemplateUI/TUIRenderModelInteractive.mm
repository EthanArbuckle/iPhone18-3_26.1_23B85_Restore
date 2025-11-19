@interface TUIRenderModelInteractive
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (NSString)description;
- (TUIRenderModelInteractive)initWithReuseIdentifier:(id)a3 identifier:(id)a4 style:(id)a5 elementStates:(id)a6 imageModelIDToResource:(id)a7 actionHandler:(id)a8 viewState:(id)a9 enabled:(BOOL)a10 pressScale:(double)a11 touchInsets:(UIEdgeInsets)a12 pointer:(id)a13 focusStyle:(id)a14 menu:(id)a15 name:(id)a16;
- (UIEdgeInsets)touchInsets;
- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4;
- (unint64_t)hash;
- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
@end

@implementation TUIRenderModelInteractive

- (TUIRenderModelInteractive)initWithReuseIdentifier:(id)a3 identifier:(id)a4 style:(id)a5 elementStates:(id)a6 imageModelIDToResource:(id)a7 actionHandler:(id)a8 viewState:(id)a9 enabled:(BOOL)a10 pressScale:(double)a11 touchInsets:(UIEdgeInsets)a12 pointer:(id)a13 focusStyle:(id)a14 menu:(id)a15 name:(id)a16
{
  right = a12.right;
  bottom = a12.bottom;
  left = a12.left;
  top = a12.top;
  v45 = a3;
  v26 = a4;
  obj = a5;
  v50 = a5;
  v27 = a6;
  v28 = a7;
  v49 = a8;
  v48 = a9;
  v47 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v51.receiver = self;
  v51.super_class = TUIRenderModelInteractive;
  v32 = [(TUIRenderModelInteractive *)&v51 init];
  if (v32)
  {
    v33 = [v26 copyWithZone:0];
    identifier = v32->_identifier;
    v32->_identifier = v33;

    v35 = [v45 copy];
    reuseIdentifier = v32->_reuseIdentifier;
    v32->_reuseIdentifier = v35;

    objc_storeStrong(&v32->_style, obj);
    v37 = [v27 copy];
    stateToModel = v32->_stateToModel;
    v32->_stateToModel = v37;

    v39 = [v28 copy];
    imageModelIDToResource = v32->_imageModelIDToResource;
    v32->_imageModelIDToResource = v39;

    v41 = [v31 copy];
    name = v32->_name;
    v32->_name = v41;

    objc_storeStrong(&v32->_pointer, a13);
    objc_storeStrong(&v32->_focusStyle, a14);
    objc_storeStrong(&v32->_menu, a15);
    objc_storeStrong(&v32->_viewState, a9);
    v32->_enabled = a10;
    v32->_pressScale = a11;
    v32->_touchInsets.top = top;
    v32->_touchInsets.left = left;
    v32->_touchInsets.bottom = bottom;
    v32->_touchInsets.right = right;
    objc_storeStrong(&v32->_actionHandler, a8);
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

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  stateToModel = self->_stateToModel;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v8 = *&a4->c;
  v12 = *&a4->a;
  v13 = v8;
  v10[2] = sub_15D3A0;
  v10[3] = &unk_262DE8;
  v11 = v6;
  v14 = *&a4->tx;
  v9 = v6;
  [(NSDictionary *)stateToModel enumerateKeysAndObjectsUsingBlock:v10];
}

- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  stateToModel = self->_stateToModel;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v14 = *&a4->c;
  v22 = *&a4->a;
  v23 = v14;
  v18[2] = sub_15D4E4;
  v18[3] = &unk_262E10;
  v24 = *&a4->tx;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [(NSDictionary *)stateToModel enumerateKeysAndObjectsUsingBlock:v18];
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = TUIDynamicCast(v6, v4);
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
  v2 = [(TUIRenderModelInteractive *)self identifier];
  v3 = TUIIdentifierHash(v2);

  return v3;
}

- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4
{
  v7 = objc_alloc(objc_opt_class());
  reuseIdentifier = self->_reuseIdentifier;
  identifier = self->_identifier;
  style = self->_style;
  v11 = (a4)(self->_stateToModel, a3);
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