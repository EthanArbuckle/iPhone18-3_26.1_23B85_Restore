@interface TUIRenderModelRatings
- (BOOL)isEqualToRenderModel:(id)a3;
- (TUIRenderModelRatings)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 rating:(double)a10 direction:(unint64_t)a11 color:(id)a12 startColor:(id)a13 backgroundColor:(id)a14 backgroundImageName:(id)a15 foregroundImageName:(id)a16 starWidth:(double)a17 starPadding:(double)a18;
- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4;
@end

@implementation TUIRenderModelRatings

- (TUIRenderModelRatings)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 rating:(double)a10 direction:(unint64_t)a11 color:(id)a12 startColor:(id)a13 backgroundColor:(id)a14 backgroundImageName:(id)a15 foregroundImageName:(id)a16 starWidth:(double)a17 starPadding:(double)a18
{
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v42.receiver = self;
  v42.super_class = TUIRenderModelRatings;
  v29 = [(TUIRenderModelInteractive *)&v42 initWithReuseIdentifier:a3 identifier:a4 style:0 elementStates:a5 imageModelIDToResource:0 actionHandler:a6 viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:a7 menu:a8 name:0, 0, 0, a9];
  v30 = v29;
  if (v29)
  {
    v29->_rating = a10;
    v29->_direction = a11;
    v29->_starWidth = a17;
    v29->_starPadding = a18;
    objc_storeStrong(&v29->_color, a12);
    if (v25)
    {
      v31 = v25;
    }

    else
    {
      v31 = v24;
    }

    objc_storeStrong(&v30->_startColor, v31);
    if (v26)
    {
      v32 = v26;
    }

    else
    {
      v32 = v24;
    }

    objc_storeStrong(&v30->_backgroundColor, v32);
    v33 = [v27 copy];
    backgroundImageName = v30->_backgroundImageName;
    v30->_backgroundImageName = v33;

    v35 = [v28 copy];
    foregroundImageName = v30->_foregroundImageName;
    v30->_foregroundImageName = v35;
  }

  return v30;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  v40.receiver = self;
  v40.super_class = TUIRenderModelRatings;
  if (![(TUIRenderModelInteractive *)&v40 isEqualToRenderModel:v6])
  {
    goto LABEL_20;
  }

  rating = self->_rating;
  [v6 rating];
  if (rating != v8)
  {
    goto LABEL_20;
  }

  direction = self->_direction;
  if (direction != [v6 direction])
  {
    goto LABEL_20;
  }

  starWidth = self->_starWidth;
  [v6 starWidth];
  if (starWidth != v11)
  {
    goto LABEL_20;
  }

  starPadding = self->_starPadding;
  [v6 starPadding];
  if (starPadding != v13)
  {
    goto LABEL_20;
  }

  color = self->_color;
  v15 = [v6 color];
  v16 = v15;
  if (color == v15)
  {
  }

  else
  {
    v17 = self->_color;
    v18 = [v6 color];
    LODWORD(v17) = [(UIColor *)v17 isEqual:v18];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  startColor = self->_startColor;
  v20 = [v6 startColor];
  v21 = v20;
  if (startColor == v20)
  {
  }

  else
  {
    v22 = self->_startColor;
    v23 = [v6 startColor];
    LODWORD(v22) = [(UIColor *)v22 isEqual:v23];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  backgroundColor = self->_backgroundColor;
  v25 = [v6 backgroundColor];
  v26 = v25;
  if (backgroundColor == v25)
  {
  }

  else
  {
    v27 = self->_backgroundColor;
    v28 = [v6 backgroundColor];
    LODWORD(v27) = [(UIColor *)v27 isEqual:v28];

    if (!v27)
    {
      goto LABEL_20;
    }
  }

  backgroundImageName = self->_backgroundImageName;
  v30 = [v6 backgroundImageName];
  v31 = v30;
  if (backgroundImageName == v30)
  {
  }

  else
  {
    v32 = self->_backgroundImageName;
    v33 = [v6 backgroundImageName];
    LODWORD(v32) = [(NSString *)v32 isEqualToString:v33];

    if (!v32)
    {
LABEL_20:
      v34 = 0;
      goto LABEL_21;
    }
  }

  foregroundImageName = self->_foregroundImageName;
  v37 = [v6 foregroundImageName];
  if (foregroundImageName == v37)
  {
    v34 = 1;
  }

  else
  {
    v38 = self->_foregroundImageName;
    v39 = [v6 foregroundImageName];
    v34 = [(NSString *)v38 isEqualToString:v39];
  }

LABEL_21:
  return v34;
}

- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4
{
  v7 = objc_alloc(objc_opt_class());
  v8 = [(TUIRenderModelInteractive *)self reuseIdentifier];
  v9 = [(TUIRenderModelInteractive *)self identifier];
  v10 = [(TUIRenderModelInteractive *)self stateToModel];
  v11 = (a4)(v10, a3);
  v12 = [(TUIRenderModelInteractive *)self actionHandler];
  v13 = [(TUIRenderModelInteractive *)self viewState];
  v14 = [(TUIRenderModelInteractive *)self enabled];
  v15 = [(TUIRenderModelInteractive *)self name];
  v16 = [v7 initWithReuseIdentifier:v8 identifier:v9 elementStates:v11 actionHandler:v12 viewState:v13 enabled:v14 name:self->_rating rating:self->_starWidth direction:self->_starPadding color:v15 startColor:self->_direction backgroundColor:self->_color backgroundImageName:self->_startColor foregroundImageName:self->_backgroundColor starWidth:self->_backgroundImageName starPadding:self->_foregroundImageName];

  TUIRenderModelCopyProperties(v16, self);
  v17 = self;

  return v17;
}

@end