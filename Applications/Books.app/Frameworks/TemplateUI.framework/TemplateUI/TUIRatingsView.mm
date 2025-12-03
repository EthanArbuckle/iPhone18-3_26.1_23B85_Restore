@interface TUIRatingsView
+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state identifier:(id)identifier name:(id)name rating:(double)rating enabled:(BOOL)enabled direction:(unint64_t)self0 color:(id)self1 startColor:(id)self2 backgroundColor:(id)self3 backgroundImageName:(id)self4 foregroundImageName:(id)self5 starWidth:(double)self6 starPadding:(double)self7;
- (id)viewStateSave;
- (void)_ratingControlChanged:(id)changed;
- (void)_ratingControlTouchDown:(id)down;
- (void)_ratingControlTouchUp:(id)up;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)loadControlWithValue:(double)value enabled:(BOOL)enabled direction:(unint64_t)direction color:(id)color startColor:(id)startColor backgroundColor:(id)backgroundColor backgroundImageName:(id)name foregroundImageName:(id)self0 starWidth:(double)self1 starPadding:(double)self2;
- (void)updateControlWithValue:(double)value enabled:(BOOL)enabled direction:(unint64_t)direction color:(id)color startColor:(id)startColor backgroundColor:(id)backgroundColor backgroundImageName:(id)name foregroundImageName:(id)self0 starWidth:(double)self1 starPadding:(double)self2;
- (void)viewStateRestore:(id)restore;
@end

@implementation TUIRatingsView

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  modelCopy = model;
  if (modelCopy)
  {
    v10 = objc_opt_class();
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    v12 = TUIDynamicCast(v10, renderModel);

    v13 = objc_opt_class();
    v14 = TUIDynamicCast(v13, modelCopy);
    [v14 rating];
    v16 = v15;
    v36 = v12;
    if ([v12 isEqualToRenderModel:v14])
    {
      control = [(TUIInteractiveBaseView *)self control];

      if (control)
      {
        control2 = [(TUIInteractiveBaseView *)self control];
        [control2 value];
        v16 = v19;
      }
    }

    viewStateToRestore = self->_viewStateToRestore;
    if (viewStateToRestore)
    {
      [(_TUIRatingsViewState *)viewStateToRestore value];
      v16 = v21;
      v22 = self->_viewStateToRestore;
      self->_viewStateToRestore = 0;
    }

    viewState = [modelCopy viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = viewState;

    v37.receiver = self;
    v37.super_class = TUIRatingsView;
    [(TUIInteractiveBaseView *)&v37 configureWithModel:modelCopy outsets:top, left, bottom, right];
    control3 = [(TUIInteractiveBaseView *)self control];

    enabled = [v14 enabled];
    direction = [v14 direction];
    color = [v14 color];
    startColor = [v14 startColor];
    backgroundColor = [v14 backgroundColor];
    backgroundImageName = [v14 backgroundImageName];
    foregroundImageName = [v14 foregroundImageName];
    [v14 starWidth];
    v33 = v32;
    [v14 starPadding];
    if (control3)
    {
      [(TUIRatingsView *)self updateControlWithValue:enabled enabled:direction direction:color color:startColor startColor:backgroundColor backgroundColor:backgroundImageName backgroundImageName:v16 foregroundImageName:v33 starWidth:v34 starPadding:foregroundImageName];
    }

    else
    {
      [(TUIRatingsView *)self loadControlWithValue:enabled enabled:direction direction:color color:startColor startColor:backgroundColor backgroundColor:backgroundImageName backgroundImageName:v16 foregroundImageName:v33 starWidth:v34 starPadding:foregroundImageName];
    }
  }
}

- (void)_updateDynamicViewState
{
  if (self->_dynamicViewState)
  {
    control = [(TUIInteractiveBaseView *)self control];

    if (control)
    {
      dynamicViewState = self->_dynamicViewState;
      v8 = @"value";
      control2 = [(TUIInteractiveBaseView *)self control];
      [control2 value];
      v6 = [NSNumber numberWithFloat:?];
      v9 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [(TUIMutableDynamicValue *)dynamicViewState updateWithValueIfChanged:v7];
    }
  }
}

- (void)updateControlWithValue:(double)value enabled:(BOOL)enabled direction:(unint64_t)direction color:(id)color startColor:(id)startColor backgroundColor:(id)backgroundColor backgroundImageName:(id)name foregroundImageName:(id)self0 starWidth:(double)self1 starPadding:(double)self2
{
  enabledCopy = enabled;
  imageNameCopy = imageName;
  nameCopy = name;
  backgroundColorCopy = backgroundColor;
  startColorCopy = startColor;
  colorCopy = color;
  control = [(TUIInteractiveBaseView *)self control];
  [control _updateImagesIfNeededWithForegroundImageName:imageNameCopy backgroundImageName:nameCopy starWidth:width starPadding:padding];

  [control setForegroundColor:colorCopy];
  [control setStartColor:startColorCopy];

  [control setBackgroundColor:backgroundColorCopy];
  *&v26 = value;
  [control setValue:v26];
  [control setEnabled:enabledCopy];
}

- (void)loadControlWithValue:(double)value enabled:(BOOL)enabled direction:(unint64_t)direction color:(id)color startColor:(id)startColor backgroundColor:(id)backgroundColor backgroundImageName:(id)name foregroundImageName:(id)self0 starWidth:(double)self1 starPadding:(double)self2
{
  enabledCopy = enabled;
  imageNameCopy = imageName;
  nameCopy = name;
  backgroundColorCopy = backgroundColor;
  startColorCopy = startColor;
  colorCopy = color;
  v27 = [[TUIStarRatingControl alloc] initWithRating:nameCopy backgroundImageName:imageNameCopy foregroundImageName:direction direction:colorCopy color:startColorCopy startColor:backgroundColorCopy backgroundColor:value starWidth:width starPadding:padding];

  [(TUIStarRatingControl *)v27 setHitPadding:CGSizeZero.width, CGSizeZero.height];
  [(TUIRatingsView *)self bounds];
  [(TUIStarRatingControl *)v27 setFrame:?];
  [(TUIStarRatingControl *)v27 setEnabled:enabledCopy];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlChanged:" forControlEvents:4096];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlTouchDown:" forControlEvents:1];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlTouchUp:" forControlEvents:64];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlTouchUp:" forControlEvents:128];
  [(TUIStarRatingControl *)v27 setAutoresizingMask:18];
  [(TUIRatingsView *)self addSubview:v27];
  [(TUIInteractiveBaseView *)self setControl:v27];
}

- (void)_ratingControlChanged:(id)changed
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  v11 = @"value";
  v6 = objc_opt_class();
  control = [(TUIInteractiveBaseView *)self control];
  v8 = TUIDynamicCast(v6, control);
  [v8 value];
  v9 = [NSNumber numberWithFloat:?];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [actionHandler invoke:@"changedInput" arguments:v10];

  [(TUIRatingsView *)self _updateDynamicViewState];
}

- (void)_ratingControlTouchDown:(id)down
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  v11 = @"value";
  v6 = objc_opt_class();
  control = [(TUIInteractiveBaseView *)self control];
  v8 = TUIDynamicCast(v6, control);
  [v8 value];
  v9 = [NSNumber numberWithFloat:?];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [actionHandler invoke:@"beginInput" arguments:v10];
}

- (void)_ratingControlTouchUp:(id)up
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  v11 = @"value";
  v6 = objc_opt_class();
  control = [(TUIInteractiveBaseView *)self control];
  v8 = TUIDynamicCast(v6, control);
  [v8 value];
  v9 = [NSNumber numberWithFloat:?];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [actionHandler invoke:@"endInput" arguments:v10];
}

+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state identifier:(id)identifier name:(id)name rating:(double)rating enabled:(BOOL)enabled direction:(unint64_t)self0 color:(id)self1 startColor:(id)self2 backgroundColor:(id)self3 backgroundImageName:(id)self4 foregroundImageName:(id)self5 starWidth:(double)self6 starPadding:(double)self7
{
  enabledCopy = enabled;
  foregroundImageNameCopy = foregroundImageName;
  imageNameCopy = imageName;
  backgroundColorCopy = backgroundColor;
  startColorCopy = startColor;
  colorCopy = color;
  nameCopy = name;
  identifierCopy = identifier;
  stateCopy = state;
  handlerCopy = handler;
  statesCopy = states;
  v27 = [TUIRenderModelRatings alloc];
  tuiReuseIdentifier = [self tuiReuseIdentifier];
  v40 = [(TUIRenderModelRatings *)v27 initWithReuseIdentifier:tuiReuseIdentifier identifier:identifierCopy elementStates:statesCopy actionHandler:handlerCopy viewState:stateCopy enabled:enabledCopy name:rating rating:width direction:padding color:nameCopy startColor:direction backgroundColor:colorCopy backgroundImageName:startColorCopy foregroundImageName:backgroundColorCopy starWidth:imageNameCopy starPadding:foregroundImageNameCopy];

  return v40;
}

- (id)viewStateSave
{
  control = [(TUIInteractiveBaseView *)self control];
  if ([control isEnabled])
  {
    v4 = [_TUIRatingsViewState alloc];
    control2 = [(TUIInteractiveBaseView *)self control];
    [control2 value];
    v7 = [(_TUIRatingsViewState *)v4 initWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)viewStateRestore:(id)restore
{
  restoreCopy = restore;
  control = [(TUIInteractiveBaseView *)self control];

  if (restoreCopy && control)
  {
    [restoreCopy value];
    v6 = v5;

    restoreCopy = [(TUIInteractiveBaseView *)self control];
    *&v6 = v6;
    LODWORD(v7) = LODWORD(v6);
    [restoreCopy setValue:v7];
  }

  else
  {
    [(TUIRatingsView *)self setViewStateToRestore:restoreCopy];
  }
}

@end