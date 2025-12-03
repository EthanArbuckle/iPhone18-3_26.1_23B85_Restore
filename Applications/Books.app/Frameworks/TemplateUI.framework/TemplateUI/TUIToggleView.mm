@interface TUIToggleView
+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled identifier:(id)identifier name:(id)name title:(id)title isOn:(BOOL)self0;
- (BOOL)controlIsOn;
- (id)accessibilityElements;
- (id)viewStateSave;
- (void)_toggleValueChanged:(id)changed;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)setControlIsOn:(BOOL)on animated:(BOOL)animated;
- (void)updateControlWithIsOn:(BOOL)on title:(id)title enabled:(BOOL)enabled animated:(BOOL)animated;
- (void)viewStateRestore:(id)restore;
@end

@implementation TUIToggleView

+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled identifier:(id)identifier name:(id)name title:(id)title isOn:(BOOL)self0
{
  enabledCopy = enabled;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  stateCopy = state;
  handlerCopy = handler;
  statesCopy = states;
  v23 = [TUIRenderModelToggle alloc];
  tuiReuseIdentifier = [self tuiReuseIdentifier];
  LOBYTE(v27) = on;
  v25 = [(TUIRenderModelToggle *)v23 initWithReuseIdentifier:tuiReuseIdentifier identifier:identifierCopy elementStates:statesCopy actionHandler:handlerCopy viewState:stateCopy enabled:enabledCopy name:nameCopy title:titleCopy isOn:v27];

  return v25;
}

- (void)loadControlIfNeeded
{
  control = [(TUIInteractiveBaseView *)self control];
  if (!control)
  {
    v4 = [UISwitch alloc];
    [(TUIToggleView *)self bounds];
    v5 = [v4 initWithFrame:?];
    [v5 addTarget:self action:"_toggleValueChanged:" forControlEvents:4096];
    [v5 setAutoresizingMask:18];
    [(TUIToggleView *)self addSubview:v5];
    [(TUIInteractiveBaseView *)self setControl:v5];
    control = v5;
  }
}

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  modelCopy = model;
  v10 = objc_opt_class();
  v11 = TUIDynamicCast(v10, modelCopy);
  if (v11)
  {
    v12 = objc_opt_class();
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    v14 = TUIDynamicCast(v12, renderModel);

    isOn = [v11 isOn];
    if ([v11 isEqualToRenderModel:v14])
    {
      isOn = [(TUIToggleView *)self controlIsOn];
    }

    viewStateToRestore = [(TUIToggleView *)self viewStateToRestore];

    if (viewStateToRestore)
    {
      viewStateToRestore2 = [(TUIToggleView *)self viewStateToRestore];
      isOn = [viewStateToRestore2 isOn];

      [(TUIToggleView *)self setViewStateToRestore:0];
    }

    viewState = [v11 viewState];
    [(TUIToggleView *)self setDynamicViewState:viewState];

    v20.receiver = self;
    v20.super_class = TUIToggleView;
    [(TUIInteractiveBaseView *)&v20 configureWithModel:modelCopy outsets:top, left, bottom, right];
    title = [v11 title];
    -[TUIToggleView updateControlWithIsOn:title:enabled:animated:](self, "updateControlWithIsOn:title:enabled:animated:", isOn, title, [v11 enabled], v14 != 0);
  }
}

- (void)setControlIsOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  control = [(TUIInteractiveBaseView *)self control];
  [control setOn:onCopy animated:animatedCopy];
}

- (BOOL)controlIsOn
{
  control = [(TUIInteractiveBaseView *)self control];
  isOn = [control isOn];

  return isOn;
}

- (void)updateControlWithIsOn:(BOOL)on title:(id)title enabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  onCopy = on;
  titleCopy = title;
  [(TUIToggleView *)self setControlIsOn:onCopy animated:animatedCopy];
  control = [(TUIInteractiveBaseView *)self control];
  title = [control title];
  if (title == titleCopy)
  {
  }

  else
  {
    title2 = [control title];
    v13 = [title2 isEqualToString:titleCopy];

    if ((v13 & 1) == 0)
    {
      [control setTitle:titleCopy];
    }
  }

  [control setEnabled:enabledCopy];
  [(TUIToggleView *)self bounds];
  [control setFrame:?];
}

- (void)_toggleValueChanged:(id)changed
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];

  if (actionHandler)
  {
    renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
    actionHandler2 = [renderModel2 actionHandler];
    v10 = @"isOn";
    v8 = [NSNumber numberWithBool:[(TUIToggleView *)self controlIsOn]];
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [actionHandler2 invoke:@"valueChanged" arguments:v9];
  }

  [(TUIToggleView *)self _updateDynamicViewState];
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
      v8 = @"isOn";
      v6 = [NSNumber numberWithBool:[(TUIToggleView *)self controlIsOn]];
      v9 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [(TUIMutableDynamicValue *)v5 updateWithValueIfChanged:v7];
    }
  }
}

- (id)viewStateSave
{
  control = [(TUIInteractiveBaseView *)self control];
  if (control)
  {
    v4 = [[_TUIToggleViewState alloc] initWithIsOn:[(TUIToggleView *)self controlIsOn]];
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
  control = [(TUIInteractiveBaseView *)self control];

  if (restoreCopy && control)
  {
    isOn = [restoreCopy isOn];

    [(TUIToggleView *)self setControlIsOn:isOn animated:1];
  }

  else
  {
    [(TUIToggleView *)self setViewStateToRestore:restoreCopy];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TUIToggleView;
  [(TUIInteractiveBaseView *)&v3 prepareForReuse];
  [(TUIToggleView *)self setViewStateToRestore:0];
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