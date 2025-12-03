@interface TUISegmentedControlView
+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled identifier:(id)identifier name:(id)name selectIndex:(int64_t)index segments:(id)self0 tintColor:(id)self1;
- (id)accessibilityElements;
- (id)viewStateSave;
- (void)_segmentedControlValueChanged:(id)changed;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)loadControlIfNeeded;
- (void)updateControlWithSelectIndex:(int64_t)index segments:(id)segments tintColor:(id)color;
- (void)viewStateRestore:(id)restore;
@end

@implementation TUISegmentedControlView

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  if (model)
  {
    right = outsets.right;
    bottom = outsets.bottom;
    left = outsets.left;
    top = outsets.top;
    modelCopy = model;
    v10 = objc_opt_class();
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    v12 = TUIDynamicCast(v10, renderModel);

    v13 = objc_opt_class();
    v14 = TUIDynamicCast(v13, modelCopy);
    v21.receiver = self;
    v21.super_class = TUISegmentedControlView;
    [(TUIInteractiveBaseView *)&v21 configureWithModel:modelCopy outsets:top, left, bottom, right];

    if (v12 != v14 && ([v12 isEqualToRenderModel:v14] & 1) == 0)
    {
      viewState = [v14 viewState];
      [(TUISegmentedControlView *)self setDynamicViewState:viewState];

      viewState2 = [(TUISegmentedControlView *)self viewState];
      if (viewState2)
      {
        viewState3 = [(TUISegmentedControlView *)self viewState];
      }

      else
      {
        viewState3 = v14;
      }

      selectIndex = [viewState3 selectIndex];
      segments = [v14 segments];
      tintColor = [v14 tintColor];
      [(TUISegmentedControlView *)self updateControlWithSelectIndex:selectIndex segments:segments tintColor:tintColor];

      if (viewState2)
      {
      }
    }
  }
}

- (void)_updateDynamicViewState
{
  control = [(TUIInteractiveBaseView *)self control];
  if (control)
  {
    dynamicViewState = self->_dynamicViewState;

    if (dynamicViewState)
    {
      v5 = self->_dynamicViewState;
      v9 = @"index";
      control2 = [(TUIInteractiveBaseView *)self control];
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [control2 selectedSegmentIndex]);
      v10 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [(TUIMutableDynamicValue *)v5 updateWithValueIfChanged:v8];
    }
  }
}

- (void)updateControlWithSelectIndex:(int64_t)index segments:(id)segments tintColor:(id)color
{
  segmentsCopy = segments;
  colorCopy = color;
  control = [(TUIInteractiveBaseView *)self control];
  numberOfSegments = [control numberOfSegments];
  v11 = [segmentsCopy count];
  v12 = v11;
  if (numberOfSegments >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = numberOfSegments;
  }

  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [segmentsCopy objectAtIndexedSubscript:i];
      [control setTitle:v15 forSegmentAtIndex:i];
    }
  }

  if (numberOfSegments >= v12)
  {
    while (numberOfSegments > v12)
    {
      [control removeSegmentAtIndex:--numberOfSegments animated:1];
    }
  }

  else
  {
    do
    {
      v16 = [segmentsCopy objectAtIndexedSubscript:numberOfSegments];
      [control insertSegmentWithTitle:v16 atIndex:numberOfSegments animated:1];

      ++numberOfSegments;
    }

    while (v12 != numberOfSegments);
  }

  [control setSelectedSegmentIndex:index];
  if (colorCopy)
  {
    [control setTintColor:colorCopy];
  }

  [(TUISegmentedControlView *)self bounds];
  [control setFrame:?];
}

- (void)loadControlIfNeeded
{
  control = [(TUIInteractiveBaseView *)self control];
  if (!control)
  {
    v4 = objc_opt_class();
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    v6 = TUIDynamicCast(v4, renderModel);

    v7 = [UISegmentedControl alloc];
    segments = [v6 segments];
    v9 = [v7 initWithItems:segments];

    [(TUISegmentedControlView *)self bounds];
    [v9 setFrame:?];
    [v9 addTarget:self action:"_segmentedControlValueChanged:" forControlEvents:4096];
    [v9 setAutoresizingMask:18];
    [(TUISegmentedControlView *)self addSubview:v9];
    [(TUIInteractiveBaseView *)self setControl:v9];

    control = v9;
  }
}

- (void)_segmentedControlValueChanged:(id)changed
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];

  if (actionHandler)
  {
    renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
    actionHandler2 = [renderModel2 actionHandler];
    v13 = @"value";
    v8 = objc_opt_class();
    control = [(TUIInteractiveBaseView *)self control];
    v10 = TUIDynamicCast(v8, control);
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 selectedSegmentIndex]);
    v14 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [actionHandler2 invoke:@"valueChanged" arguments:v12];
  }

  [(TUISegmentedControlView *)self _updateDynamicViewState];
}

+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled identifier:(id)identifier name:(id)name selectIndex:(int64_t)index segments:(id)self0 tintColor:(id)self1
{
  enabledCopy = enabled;
  colorCopy = color;
  segmentsCopy = segments;
  nameCopy = name;
  identifierCopy = identifier;
  stateCopy = state;
  handlerCopy = handler;
  statesCopy = states;
  v24 = [TUIRenderModelSegmentedControl alloc];
  tuiReuseIdentifier = [self tuiReuseIdentifier];
  v26 = [(TUIRenderModelSegmentedControl *)v24 initWithReuseIdentifier:tuiReuseIdentifier identifier:identifierCopy elementStates:statesCopy actionHandler:handlerCopy viewState:stateCopy enabled:enabledCopy name:nameCopy selectIndex:index segments:segmentsCopy tintColor:colorCopy];

  return v26;
}

- (id)viewStateSave
{
  control = [(TUIInteractiveBaseView *)self control];
  if (control)
  {
    [(TUISegmentedControlView *)self setViewState:0];
    v4 = -[_TUISegmentedControlViewState initWithSelectIndex:]([_TUISegmentedControlViewState alloc], "initWithSelectIndex:", [control selectedSegmentIndex]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewStateRestore:(id)restore
{
  restoreCopy = restore;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, restoreCopy);

  [(TUISegmentedControlView *)self setViewState:v6];
  control = [(TUIInteractiveBaseView *)self control];
  if (restoreCopy && control)
  {
    v9 = control;
    viewState = [(TUISegmentedControlView *)self viewState];
    [v9 setSelectedSegmentIndex:{objc_msgSend(viewState, "selectIndex")}];

    control = v9;
  }
}

- (id)accessibilityElements
{
  control = [(TUIInteractiveBaseView *)self control];
  if (control)
  {
    control2 = [(TUIInteractiveBaseView *)self control];
    v7 = control2;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end