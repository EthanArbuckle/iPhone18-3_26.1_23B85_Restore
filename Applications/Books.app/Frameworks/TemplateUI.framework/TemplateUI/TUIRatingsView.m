@interface TUIRatingsView
+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 identifier:(id)a6 name:(id)a7 rating:(double)a8 enabled:(BOOL)a9 direction:(unint64_t)a10 color:(id)a11 startColor:(id)a12 backgroundColor:(id)a13 backgroundImageName:(id)a14 foregroundImageName:(id)a15 starWidth:(double)a16 starPadding:(double)a17;
- (id)viewStateSave;
- (void)_ratingControlChanged:(id)a3;
- (void)_ratingControlTouchDown:(id)a3;
- (void)_ratingControlTouchUp:(id)a3;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)loadControlWithValue:(double)a3 enabled:(BOOL)a4 direction:(unint64_t)a5 color:(id)a6 startColor:(id)a7 backgroundColor:(id)a8 backgroundImageName:(id)a9 foregroundImageName:(id)a10 starWidth:(double)a11 starPadding:(double)a12;
- (void)updateControlWithValue:(double)a3 enabled:(BOOL)a4 direction:(unint64_t)a5 color:(id)a6 startColor:(id)a7 backgroundColor:(id)a8 backgroundImageName:(id)a9 foregroundImageName:(id)a10 starWidth:(double)a11 starPadding:(double)a12;
- (void)viewStateRestore:(id)a3;
@end

@implementation TUIRatingsView

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [(TUIInteractiveBaseView *)self renderModel];
    v12 = TUIDynamicCast(v10, v11);

    v13 = objc_opt_class();
    v14 = TUIDynamicCast(v13, v9);
    [v14 rating];
    v16 = v15;
    v36 = v12;
    if ([v12 isEqualToRenderModel:v14])
    {
      v17 = [(TUIInteractiveBaseView *)self control];

      if (v17)
      {
        v18 = [(TUIInteractiveBaseView *)self control];
        [v18 value];
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

    v23 = [v9 viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = v23;

    v37.receiver = self;
    v37.super_class = TUIRatingsView;
    [(TUIInteractiveBaseView *)&v37 configureWithModel:v9 outsets:top, left, bottom, right];
    v25 = [(TUIInteractiveBaseView *)self control];

    v35 = [v14 enabled];
    v26 = [v14 direction];
    v27 = [v14 color];
    v28 = [v14 startColor];
    v29 = [v14 backgroundColor];
    v30 = [v14 backgroundImageName];
    v31 = [v14 foregroundImageName];
    [v14 starWidth];
    v33 = v32;
    [v14 starPadding];
    if (v25)
    {
      [(TUIRatingsView *)self updateControlWithValue:v35 enabled:v26 direction:v27 color:v28 startColor:v29 backgroundColor:v30 backgroundImageName:v16 foregroundImageName:v33 starWidth:v34 starPadding:v31];
    }

    else
    {
      [(TUIRatingsView *)self loadControlWithValue:v35 enabled:v26 direction:v27 color:v28 startColor:v29 backgroundColor:v30 backgroundImageName:v16 foregroundImageName:v33 starWidth:v34 starPadding:v31];
    }
  }
}

- (void)_updateDynamicViewState
{
  if (self->_dynamicViewState)
  {
    v3 = [(TUIInteractiveBaseView *)self control];

    if (v3)
    {
      dynamicViewState = self->_dynamicViewState;
      v8 = @"value";
      v5 = [(TUIInteractiveBaseView *)self control];
      [v5 value];
      v6 = [NSNumber numberWithFloat:?];
      v9 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [(TUIMutableDynamicValue *)dynamicViewState updateWithValueIfChanged:v7];
    }
  }
}

- (void)updateControlWithValue:(double)a3 enabled:(BOOL)a4 direction:(unint64_t)a5 color:(id)a6 startColor:(id)a7 backgroundColor:(id)a8 backgroundImageName:(id)a9 foregroundImageName:(id)a10 starWidth:(double)a11 starPadding:(double)a12
{
  v18 = a4;
  v21 = a10;
  v22 = a9;
  v23 = a8;
  v24 = a7;
  v25 = a6;
  v27 = [(TUIInteractiveBaseView *)self control];
  [v27 _updateImagesIfNeededWithForegroundImageName:v21 backgroundImageName:v22 starWidth:a11 starPadding:a12];

  [v27 setForegroundColor:v25];
  [v27 setStartColor:v24];

  [v27 setBackgroundColor:v23];
  *&v26 = a3;
  [v27 setValue:v26];
  [v27 setEnabled:v18];
}

- (void)loadControlWithValue:(double)a3 enabled:(BOOL)a4 direction:(unint64_t)a5 color:(id)a6 startColor:(id)a7 backgroundColor:(id)a8 backgroundImageName:(id)a9 foregroundImageName:(id)a10 starWidth:(double)a11 starPadding:(double)a12
{
  v19 = a4;
  v22 = a10;
  v23 = a9;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = [[TUIStarRatingControl alloc] initWithRating:v23 backgroundImageName:v22 foregroundImageName:a5 direction:v26 color:v25 startColor:v24 backgroundColor:a3 starWidth:a11 starPadding:a12];

  [(TUIStarRatingControl *)v27 setHitPadding:CGSizeZero.width, CGSizeZero.height];
  [(TUIRatingsView *)self bounds];
  [(TUIStarRatingControl *)v27 setFrame:?];
  [(TUIStarRatingControl *)v27 setEnabled:v19];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlChanged:" forControlEvents:4096];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlTouchDown:" forControlEvents:1];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlTouchUp:" forControlEvents:64];
  [(TUIStarRatingControl *)v27 addTarget:self action:"_ratingControlTouchUp:" forControlEvents:128];
  [(TUIStarRatingControl *)v27 setAutoresizingMask:18];
  [(TUIRatingsView *)self addSubview:v27];
  [(TUIInteractiveBaseView *)self setControl:v27];
}

- (void)_ratingControlChanged:(id)a3
{
  v4 = [(TUIInteractiveBaseView *)self renderModel];
  v5 = [v4 actionHandler];
  v11 = @"value";
  v6 = objc_opt_class();
  v7 = [(TUIInteractiveBaseView *)self control];
  v8 = TUIDynamicCast(v6, v7);
  [v8 value];
  v9 = [NSNumber numberWithFloat:?];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 invoke:@"changedInput" arguments:v10];

  [(TUIRatingsView *)self _updateDynamicViewState];
}

- (void)_ratingControlTouchDown:(id)a3
{
  v4 = [(TUIInteractiveBaseView *)self renderModel];
  v5 = [v4 actionHandler];
  v11 = @"value";
  v6 = objc_opt_class();
  v7 = [(TUIInteractiveBaseView *)self control];
  v8 = TUIDynamicCast(v6, v7);
  [v8 value];
  v9 = [NSNumber numberWithFloat:?];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 invoke:@"beginInput" arguments:v10];
}

- (void)_ratingControlTouchUp:(id)a3
{
  v4 = [(TUIInteractiveBaseView *)self renderModel];
  v5 = [v4 actionHandler];
  v11 = @"value";
  v6 = objc_opt_class();
  v7 = [(TUIInteractiveBaseView *)self control];
  v8 = TUIDynamicCast(v6, v7);
  [v8 value];
  v9 = [NSNumber numberWithFloat:?];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 invoke:@"endInput" arguments:v10];
}

+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 identifier:(id)a6 name:(id)a7 rating:(double)a8 enabled:(BOOL)a9 direction:(unint64_t)a10 color:(id)a11 startColor:(id)a12 backgroundColor:(id)a13 backgroundImageName:(id)a14 foregroundImageName:(id)a15 starWidth:(double)a16 starPadding:(double)a17
{
  v39 = a9;
  v35 = a15;
  v31 = a14;
  v22 = a13;
  v23 = a12;
  v24 = a11;
  v25 = a7;
  v30 = a6;
  v34 = a5;
  v26 = a4;
  v37 = a3;
  v27 = [TUIRenderModelRatings alloc];
  v28 = [a1 tuiReuseIdentifier];
  v40 = [(TUIRenderModelRatings *)v27 initWithReuseIdentifier:v28 identifier:v30 elementStates:v37 actionHandler:v26 viewState:v34 enabled:v39 name:a8 rating:a16 direction:a17 color:v25 startColor:a10 backgroundColor:v24 backgroundImageName:v23 foregroundImageName:v22 starWidth:v31 starPadding:v35];

  return v40;
}

- (id)viewStateSave
{
  v3 = [(TUIInteractiveBaseView *)self control];
  if ([v3 isEnabled])
  {
    v4 = [_TUIRatingsViewState alloc];
    v5 = [(TUIInteractiveBaseView *)self control];
    [v5 value];
    v7 = [(_TUIRatingsViewState *)v4 initWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)viewStateRestore:(id)a3
{
  v8 = a3;
  v4 = [(TUIInteractiveBaseView *)self control];

  if (v8 && v4)
  {
    [v8 value];
    v6 = v5;

    v8 = [(TUIInteractiveBaseView *)self control];
    *&v6 = v6;
    LODWORD(v7) = LODWORD(v6);
    [v8 setValue:v7];
  }

  else
  {
    [(TUIRatingsView *)self setViewStateToRestore:v8];
  }
}

@end