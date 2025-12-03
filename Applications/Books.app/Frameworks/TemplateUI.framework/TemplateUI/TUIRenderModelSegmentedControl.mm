@interface TUIRenderModelSegmentedControl
- (BOOL)isEqualToRenderModel:(id)model;
- (TUIRenderModelSegmentedControl)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name selectIndex:(int64_t)self0 segments:(id)self1 tintColor:(id)self2;
- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc;
@end

@implementation TUIRenderModelSegmentedControl

- (TUIRenderModelSegmentedControl)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name selectIndex:(int64_t)self0 segments:(id)self1 tintColor:(id)self2
{
  segmentsCopy = segments;
  colorCopy = color;
  v27.receiver = self;
  v27.super_class = TUIRenderModelSegmentedControl;
  enabledCopy = enabled;
  name = [(TUIRenderModelInteractive *)&v27 initWithReuseIdentifier:identifier identifier:a4 style:0 elementStates:states imageModelIDToResource:0 actionHandler:handler viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:state menu:enabledCopy name:0, 0, 0, name];
  v21 = name;
  if (name)
  {
    name->_selectIndex = index;
    objc_storeStrong(&name->_tintColor, color);
    v22 = [segmentsCopy copy];
    segments = v21->_segments;
    v21->_segments = v22;
  }

  return v21;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  v18.receiver = self;
  v18.super_class = TUIRenderModelSegmentedControl;
  if (![(TUIRenderModelInteractive *)&v18 isEqualToRenderModel:v6])
  {
    goto LABEL_4;
  }

  tintColor = self->_tintColor;
  tintColor = [v6 tintColor];
  v9 = tintColor;
  if (tintColor == tintColor)
  {
  }

  else
  {
    v10 = self->_tintColor;
    tintColor2 = [v6 tintColor];
    LODWORD(v10) = [(UIColor *)v10 isEqual:tintColor2];

    if (!v10)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_10;
    }
  }

  segments = self->_segments;
  segments = [v6 segments];
  if (segments == segments)
  {
    v12 = 1;
  }

  else
  {
    v15 = self->_segments;
    segments2 = [v6 segments];
    v12 = [(NSArray *)v15 isEqualToArray:segments2];
  }

LABEL_10:
  return v12;
}

- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc
{
  v6 = objc_alloc(objc_opt_class());
  reuseIdentifier = [(TUIRenderModelInteractive *)self reuseIdentifier];
  identifier = [(TUIRenderModelInteractive *)self identifier];
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v10 = sub_15CE70(stateToModel, flags, &stru_262DA0);
  actionHandler = [(TUIRenderModelInteractive *)self actionHandler];
  viewState = [(TUIRenderModelInteractive *)self viewState];
  enabled = [(TUIRenderModelInteractive *)self enabled];
  name = [(TUIRenderModelInteractive *)self name];
  v15 = [v6 initWithReuseIdentifier:reuseIdentifier identifier:identifier elementStates:v10 actionHandler:actionHandler viewState:viewState enabled:enabled name:name selectIndex:self->_selectIndex segments:self->_segments tintColor:self->_tintColor];

  TUIRenderModelCopyProperties(v15, self);
  return v15;
}

@end