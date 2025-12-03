@interface TUIRenderModelRatings
- (BOOL)isEqualToRenderModel:(id)model;
- (TUIRenderModelRatings)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name rating:(double)self0 direction:(unint64_t)self1 color:(id)self2 startColor:(id)self3 backgroundColor:(id)self4 backgroundImageName:(id)self5 foregroundImageName:(id)self6 starWidth:(double)self7 starPadding:(double)self8;
- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc;
@end

@implementation TUIRenderModelRatings

- (TUIRenderModelRatings)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name rating:(double)self0 direction:(unint64_t)self1 color:(id)self2 startColor:(id)self3 backgroundColor:(id)self4 backgroundImageName:(id)self5 foregroundImageName:(id)self6 starWidth:(double)self7 starPadding:(double)self8
{
  colorCopy = color;
  startColorCopy = startColor;
  backgroundColorCopy = backgroundColor;
  imageNameCopy = imageName;
  foregroundImageNameCopy = foregroundImageName;
  v42.receiver = self;
  v42.super_class = TUIRenderModelRatings;
  name = [(TUIRenderModelInteractive *)&v42 initWithReuseIdentifier:identifier identifier:a4 style:0 elementStates:states imageModelIDToResource:0 actionHandler:handler viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:state menu:enabled name:0, 0, 0, name];
  v30 = name;
  if (name)
  {
    name->_rating = rating;
    name->_direction = direction;
    name->_starWidth = width;
    name->_starPadding = padding;
    objc_storeStrong(&name->_color, color);
    if (startColorCopy)
    {
      v31 = startColorCopy;
    }

    else
    {
      v31 = colorCopy;
    }

    objc_storeStrong(&v30->_startColor, v31);
    if (backgroundColorCopy)
    {
      v32 = backgroundColorCopy;
    }

    else
    {
      v32 = colorCopy;
    }

    objc_storeStrong(&v30->_backgroundColor, v32);
    v33 = [imageNameCopy copy];
    backgroundImageName = v30->_backgroundImageName;
    v30->_backgroundImageName = v33;

    v35 = [foregroundImageNameCopy copy];
    foregroundImageName = v30->_foregroundImageName;
    v30->_foregroundImageName = v35;
  }

  return v30;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

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
  color = [v6 color];
  v16 = color;
  if (color == color)
  {
  }

  else
  {
    v17 = self->_color;
    color2 = [v6 color];
    LODWORD(v17) = [(UIColor *)v17 isEqual:color2];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  startColor = self->_startColor;
  startColor = [v6 startColor];
  v21 = startColor;
  if (startColor == startColor)
  {
  }

  else
  {
    v22 = self->_startColor;
    startColor2 = [v6 startColor];
    LODWORD(v22) = [(UIColor *)v22 isEqual:startColor2];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  backgroundColor = self->_backgroundColor;
  backgroundColor = [v6 backgroundColor];
  v26 = backgroundColor;
  if (backgroundColor == backgroundColor)
  {
  }

  else
  {
    v27 = self->_backgroundColor;
    backgroundColor2 = [v6 backgroundColor];
    LODWORD(v27) = [(UIColor *)v27 isEqual:backgroundColor2];

    if (!v27)
    {
      goto LABEL_20;
    }
  }

  backgroundImageName = self->_backgroundImageName;
  backgroundImageName = [v6 backgroundImageName];
  v31 = backgroundImageName;
  if (backgroundImageName == backgroundImageName)
  {
  }

  else
  {
    v32 = self->_backgroundImageName;
    backgroundImageName2 = [v6 backgroundImageName];
    LODWORD(v32) = [(NSString *)v32 isEqualToString:backgroundImageName2];

    if (!v32)
    {
LABEL_20:
      v34 = 0;
      goto LABEL_21;
    }
  }

  foregroundImageName = self->_foregroundImageName;
  foregroundImageName = [v6 foregroundImageName];
  if (foregroundImageName == foregroundImageName)
  {
    v34 = 1;
  }

  else
  {
    v38 = self->_foregroundImageName;
    foregroundImageName2 = [v6 foregroundImageName];
    v34 = [(NSString *)v38 isEqualToString:foregroundImageName2];
  }

LABEL_21:
  return v34;
}

- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc
{
  v7 = objc_alloc(objc_opt_class());
  reuseIdentifier = [(TUIRenderModelInteractive *)self reuseIdentifier];
  identifier = [(TUIRenderModelInteractive *)self identifier];
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v11 = (proc)(stateToModel, flags);
  actionHandler = [(TUIRenderModelInteractive *)self actionHandler];
  viewState = [(TUIRenderModelInteractive *)self viewState];
  enabled = [(TUIRenderModelInteractive *)self enabled];
  name = [(TUIRenderModelInteractive *)self name];
  v16 = [v7 initWithReuseIdentifier:reuseIdentifier identifier:identifier elementStates:v11 actionHandler:actionHandler viewState:viewState enabled:enabled name:self->_rating rating:self->_starWidth direction:self->_starPadding color:name startColor:self->_direction backgroundColor:self->_color backgroundImageName:self->_startColor foregroundImageName:self->_backgroundColor starWidth:self->_backgroundImageName starPadding:self->_foregroundImageName];

  TUIRenderModelCopyProperties(v16, self);
  selfCopy = self;

  return selfCopy;
}

@end