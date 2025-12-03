@interface TUIRenderModelToggle
- (BOOL)isEqualToRenderModel:(id)model;
- (TUIRenderModelToggle)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name title:(id)self0 isOn:(BOOL)self1;
- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc;
@end

@implementation TUIRenderModelToggle

- (TUIRenderModelToggle)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name title:(id)self0 isOn:(BOOL)self1
{
  titleCopy = title;
  v24.receiver = self;
  v24.super_class = TUIRenderModelToggle;
  enabledCopy = enabled;
  name = [(TUIRenderModelInteractive *)&v24 initWithReuseIdentifier:identifier identifier:a4 style:0 elementStates:states imageModelIDToResource:0 actionHandler:handler viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:state menu:enabledCopy name:0, 0, 0, name];
  if (name)
  {
    v20 = [titleCopy copy];
    title = name->_title;
    name->_title = v20;

    name->_isOn = on;
  }

  return name;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  v14.receiver = self;
  v14.super_class = TUIRenderModelToggle;
  if (-[TUIRenderModelInteractive isEqualToRenderModel:](&v14, "isEqualToRenderModel:", v6) && (isOn = self->_isOn, isOn == [v6 isOn]))
  {
    title = self->_title;
    title = [v6 title];
    if (title == title)
    {
      v12 = 1;
    }

    else
    {
      v10 = self->_title;
      title2 = [v6 title];
      v12 = [(NSString *)v10 isEqualToString:title2];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc
{
  v18 = objc_alloc(objc_opt_class());
  reuseIdentifier = [(TUIRenderModelInteractive *)self reuseIdentifier];
  identifier = [(TUIRenderModelInteractive *)self identifier];
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v9 = sub_15CE70(stateToModel, flags, &stru_262DA0);
  actionHandler = [(TUIRenderModelInteractive *)self actionHandler];
  viewState = [(TUIRenderModelInteractive *)self viewState];
  enabled = [(TUIRenderModelInteractive *)self enabled];
  name = [(TUIRenderModelInteractive *)self name];
  title = [(TUIRenderModelToggle *)self title];
  LOBYTE(v17) = self->_isOn;
  v15 = [v18 initWithReuseIdentifier:reuseIdentifier identifier:identifier elementStates:v9 actionHandler:actionHandler viewState:viewState enabled:enabled name:name title:title isOn:v17];

  TUIRenderModelCopyProperties(v15, self);
  return v15;
}

@end