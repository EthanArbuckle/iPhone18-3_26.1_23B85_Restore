@interface TUIRenderModelSegmentedControl
- (BOOL)isEqualToRenderModel:(id)a3;
- (TUIRenderModelSegmentedControl)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 selectIndex:(int64_t)a10 segments:(id)a11 tintColor:(id)a12;
- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4;
@end

@implementation TUIRenderModelSegmentedControl

- (TUIRenderModelSegmentedControl)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 selectIndex:(int64_t)a10 segments:(id)a11 tintColor:(id)a12
{
  v19 = a11;
  v26 = a12;
  v27.receiver = self;
  v27.super_class = TUIRenderModelSegmentedControl;
  v25 = a8;
  v20 = [(TUIRenderModelInteractive *)&v27 initWithReuseIdentifier:a3 identifier:a4 style:0 elementStates:a5 imageModelIDToResource:0 actionHandler:a6 viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:a7 menu:v25 name:0, 0, 0, a9];
  v21 = v20;
  if (v20)
  {
    v20->_selectIndex = a10;
    objc_storeStrong(&v20->_tintColor, a12);
    v22 = [v19 copy];
    segments = v21->_segments;
    v21->_segments = v22;
  }

  return v21;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  v18.receiver = self;
  v18.super_class = TUIRenderModelSegmentedControl;
  if (![(TUIRenderModelInteractive *)&v18 isEqualToRenderModel:v6])
  {
    goto LABEL_4;
  }

  tintColor = self->_tintColor;
  v8 = [v6 tintColor];
  v9 = v8;
  if (tintColor == v8)
  {
  }

  else
  {
    v10 = self->_tintColor;
    v11 = [v6 tintColor];
    LODWORD(v10) = [(UIColor *)v10 isEqual:v11];

    if (!v10)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_10;
    }
  }

  segments = self->_segments;
  v14 = [v6 segments];
  if (segments == v14)
  {
    v12 = 1;
  }

  else
  {
    v15 = self->_segments;
    v16 = [v6 segments];
    v12 = [(NSArray *)v15 isEqualToArray:v16];
  }

LABEL_10:
  return v12;
}

- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4
{
  v6 = objc_alloc(objc_opt_class());
  v7 = [(TUIRenderModelInteractive *)self reuseIdentifier];
  v8 = [(TUIRenderModelInteractive *)self identifier];
  v9 = [(TUIRenderModelInteractive *)self stateToModel];
  v10 = sub_15CE70(v9, a3, &stru_262DA0);
  v11 = [(TUIRenderModelInteractive *)self actionHandler];
  v12 = [(TUIRenderModelInteractive *)self viewState];
  v13 = [(TUIRenderModelInteractive *)self enabled];
  v14 = [(TUIRenderModelInteractive *)self name];
  v15 = [v6 initWithReuseIdentifier:v7 identifier:v8 elementStates:v10 actionHandler:v11 viewState:v12 enabled:v13 name:v14 selectIndex:self->_selectIndex segments:self->_segments tintColor:self->_tintColor];

  TUIRenderModelCopyProperties(v15, self);
  return v15;
}

@end