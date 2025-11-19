@interface TUIRenderModelToggle
- (BOOL)isEqualToRenderModel:(id)a3;
- (TUIRenderModelToggle)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 title:(id)a10 isOn:(BOOL)a11;
- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4;
@end

@implementation TUIRenderModelToggle

- (TUIRenderModelToggle)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 title:(id)a10 isOn:(BOOL)a11
{
  v18 = a10;
  v24.receiver = self;
  v24.super_class = TUIRenderModelToggle;
  v23 = a8;
  v19 = [(TUIRenderModelInteractive *)&v24 initWithReuseIdentifier:a3 identifier:a4 style:0 elementStates:a5 imageModelIDToResource:0 actionHandler:a6 viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:a7 menu:v23 name:0, 0, 0, a9];
  if (v19)
  {
    v20 = [v18 copy];
    title = v19->_title;
    v19->_title = v20;

    v19->_isOn = a11;
  }

  return v19;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  v14.receiver = self;
  v14.super_class = TUIRenderModelToggle;
  if (-[TUIRenderModelInteractive isEqualToRenderModel:](&v14, "isEqualToRenderModel:", v6) && (isOn = self->_isOn, isOn == [v6 isOn]))
  {
    title = self->_title;
    v9 = [v6 title];
    if (title == v9)
    {
      v12 = 1;
    }

    else
    {
      v10 = self->_title;
      v11 = [v6 title];
      v12 = [(NSString *)v10 isEqualToString:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4
{
  v18 = objc_alloc(objc_opt_class());
  v6 = [(TUIRenderModelInteractive *)self reuseIdentifier];
  v7 = [(TUIRenderModelInteractive *)self identifier];
  v8 = [(TUIRenderModelInteractive *)self stateToModel];
  v9 = sub_15CE70(v8, a3, &stru_262DA0);
  v10 = [(TUIRenderModelInteractive *)self actionHandler];
  v11 = [(TUIRenderModelInteractive *)self viewState];
  v12 = [(TUIRenderModelInteractive *)self enabled];
  v13 = [(TUIRenderModelInteractive *)self name];
  v14 = [(TUIRenderModelToggle *)self title];
  LOBYTE(v17) = self->_isOn;
  v15 = [v18 initWithReuseIdentifier:v6 identifier:v7 elementStates:v9 actionHandler:v10 viewState:v11 enabled:v12 name:v13 title:v14 isOn:v17];

  TUIRenderModelCopyProperties(v15, self);
  return v15;
}

@end