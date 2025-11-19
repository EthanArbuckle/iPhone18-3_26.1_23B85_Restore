@interface TUIToggleView
+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 identifier:(id)a7 name:(id)a8 title:(id)a9 isOn:(BOOL)a10;
- (BOOL)controlIsOn;
- (id)accessibilityElements;
- (id)viewStateSave;
- (void)_toggleValueChanged:(id)a3;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)setControlIsOn:(BOOL)a3 animated:(BOOL)a4;
- (void)updateControlWithIsOn:(BOOL)a3 title:(id)a4 enabled:(BOOL)a5 animated:(BOOL)a6;
- (void)viewStateRestore:(id)a3;
@end

@implementation TUIToggleView

+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 identifier:(id)a7 name:(id)a8 title:(id)a9 isOn:(BOOL)a10
{
  v12 = a6;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [TUIRenderModelToggle alloc];
  v24 = [a1 tuiReuseIdentifier];
  LOBYTE(v27) = a10;
  v25 = [(TUIRenderModelToggle *)v23 initWithReuseIdentifier:v24 identifier:v19 elementStates:v22 actionHandler:v21 viewState:v20 enabled:v12 name:v18 title:v17 isOn:v27];

  return v25;
}

- (void)loadControlIfNeeded
{
  v3 = [(TUIInteractiveBaseView *)self control];
  if (!v3)
  {
    v4 = [UISwitch alloc];
    [(TUIToggleView *)self bounds];
    v5 = [v4 initWithFrame:?];
    [v5 addTarget:self action:"_toggleValueChanged:" forControlEvents:4096];
    [v5 setAutoresizingMask:18];
    [(TUIToggleView *)self addSubview:v5];
    [(TUIInteractiveBaseView *)self setControl:v5];
    v3 = v5;
  }
}

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = TUIDynamicCast(v10, v9);
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [(TUIInteractiveBaseView *)self renderModel];
    v14 = TUIDynamicCast(v12, v13);

    v15 = [v11 isOn];
    if ([v11 isEqualToRenderModel:v14])
    {
      v15 = [(TUIToggleView *)self controlIsOn];
    }

    v16 = [(TUIToggleView *)self viewStateToRestore];

    if (v16)
    {
      v17 = [(TUIToggleView *)self viewStateToRestore];
      v15 = [v17 isOn];

      [(TUIToggleView *)self setViewStateToRestore:0];
    }

    v18 = [v11 viewState];
    [(TUIToggleView *)self setDynamicViewState:v18];

    v20.receiver = self;
    v20.super_class = TUIToggleView;
    [(TUIInteractiveBaseView *)&v20 configureWithModel:v9 outsets:top, left, bottom, right];
    v19 = [v11 title];
    -[TUIToggleView updateControlWithIsOn:title:enabled:animated:](self, "updateControlWithIsOn:title:enabled:animated:", v15, v19, [v11 enabled], v14 != 0);
  }
}

- (void)setControlIsOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(TUIInteractiveBaseView *)self control];
  [v6 setOn:v5 animated:v4];
}

- (BOOL)controlIsOn
{
  v2 = [(TUIInteractiveBaseView *)self control];
  v3 = [v2 isOn];

  return v3;
}

- (void)updateControlWithIsOn:(BOOL)a3 title:(id)a4 enabled:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a3;
  v14 = a4;
  [(TUIToggleView *)self setControlIsOn:v8 animated:v6];
  v10 = [(TUIInteractiveBaseView *)self control];
  v11 = [v10 title];
  if (v11 == v14)
  {
  }

  else
  {
    v12 = [v10 title];
    v13 = [v12 isEqualToString:v14];

    if ((v13 & 1) == 0)
    {
      [v10 setTitle:v14];
    }
  }

  [v10 setEnabled:v7];
  [(TUIToggleView *)self bounds];
  [v10 setFrame:?];
}

- (void)_toggleValueChanged:(id)a3
{
  v4 = [(TUIInteractiveBaseView *)self renderModel];
  v5 = [v4 actionHandler];

  if (v5)
  {
    v6 = [(TUIInteractiveBaseView *)self renderModel];
    v7 = [v6 actionHandler];
    v10 = @"isOn";
    v8 = [NSNumber numberWithBool:[(TUIToggleView *)self controlIsOn]];
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v7 invoke:@"valueChanged" arguments:v9];
  }

  [(TUIToggleView *)self _updateDynamicViewState];
}

- (void)_updateDynamicViewState
{
  v3 = [(TUIInteractiveBaseView *)self control];
  if (v3)
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
  v3 = [(TUIInteractiveBaseView *)self control];
  if (v3)
  {
    v4 = [[_TUIToggleViewState alloc] initWithIsOn:[(TUIToggleView *)self controlIsOn]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewStateRestore:(id)a3
{
  v6 = a3;
  v4 = [(TUIInteractiveBaseView *)self control];

  if (v6 && v4)
  {
    v5 = [v6 isOn];

    [(TUIToggleView *)self setControlIsOn:v5 animated:1];
  }

  else
  {
    [(TUIToggleView *)self setViewStateToRestore:v6];
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
  v3 = [(TUIInteractiveBaseView *)self control];
  if (v3)
  {
    v4 = [(TUIInteractiveBaseView *)self control];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end