@interface TUISegmentedControlView
+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 identifier:(id)a7 name:(id)a8 selectIndex:(int64_t)a9 segments:(id)a10 tintColor:(id)a11;
- (id)accessibilityElements;
- (id)viewStateSave;
- (void)_segmentedControlValueChanged:(id)a3;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)loadControlIfNeeded;
- (void)updateControlWithSelectIndex:(int64_t)a3 segments:(id)a4 tintColor:(id)a5;
- (void)viewStateRestore:(id)a3;
@end

@implementation TUISegmentedControlView

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  if (a3)
  {
    right = a4.right;
    bottom = a4.bottom;
    left = a4.left;
    top = a4.top;
    v9 = a3;
    v10 = objc_opt_class();
    v11 = [(TUIInteractiveBaseView *)self renderModel];
    v12 = TUIDynamicCast(v10, v11);

    v13 = objc_opt_class();
    v14 = TUIDynamicCast(v13, v9);
    v21.receiver = self;
    v21.super_class = TUISegmentedControlView;
    [(TUIInteractiveBaseView *)&v21 configureWithModel:v9 outsets:top, left, bottom, right];

    if (v12 != v14 && ([v12 isEqualToRenderModel:v14] & 1) == 0)
    {
      v15 = [v14 viewState];
      [(TUISegmentedControlView *)self setDynamicViewState:v15];

      v16 = [(TUISegmentedControlView *)self viewState];
      if (v16)
      {
        v17 = [(TUISegmentedControlView *)self viewState];
      }

      else
      {
        v17 = v14;
      }

      v18 = [v17 selectIndex];
      v19 = [v14 segments];
      v20 = [v14 tintColor];
      [(TUISegmentedControlView *)self updateControlWithSelectIndex:v18 segments:v19 tintColor:v20];

      if (v16)
      {
      }
    }
  }
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
      v9 = @"index";
      v6 = [(TUIInteractiveBaseView *)self control];
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 selectedSegmentIndex]);
      v10 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [(TUIMutableDynamicValue *)v5 updateWithValueIfChanged:v8];
    }
  }
}

- (void)updateControlWithSelectIndex:(int64_t)a3 segments:(id)a4 tintColor:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = [(TUIInteractiveBaseView *)self control];
  v10 = [v9 numberOfSegments];
  v11 = [v17 count];
  v12 = v11;
  if (v10 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [v17 objectAtIndexedSubscript:i];
      [v9 setTitle:v15 forSegmentAtIndex:i];
    }
  }

  if (v10 >= v12)
  {
    while (v10 > v12)
    {
      [v9 removeSegmentAtIndex:--v10 animated:1];
    }
  }

  else
  {
    do
    {
      v16 = [v17 objectAtIndexedSubscript:v10];
      [v9 insertSegmentWithTitle:v16 atIndex:v10 animated:1];

      ++v10;
    }

    while (v12 != v10);
  }

  [v9 setSelectedSegmentIndex:a3];
  if (v8)
  {
    [v9 setTintColor:v8];
  }

  [(TUISegmentedControlView *)self bounds];
  [v9 setFrame:?];
}

- (void)loadControlIfNeeded
{
  v3 = [(TUIInteractiveBaseView *)self control];
  if (!v3)
  {
    v4 = objc_opt_class();
    v5 = [(TUIInteractiveBaseView *)self renderModel];
    v6 = TUIDynamicCast(v4, v5);

    v7 = [UISegmentedControl alloc];
    v8 = [v6 segments];
    v9 = [v7 initWithItems:v8];

    [(TUISegmentedControlView *)self bounds];
    [v9 setFrame:?];
    [v9 addTarget:self action:"_segmentedControlValueChanged:" forControlEvents:4096];
    [v9 setAutoresizingMask:18];
    [(TUISegmentedControlView *)self addSubview:v9];
    [(TUIInteractiveBaseView *)self setControl:v9];

    v3 = v9;
  }
}

- (void)_segmentedControlValueChanged:(id)a3
{
  v4 = [(TUIInteractiveBaseView *)self renderModel];
  v5 = [v4 actionHandler];

  if (v5)
  {
    v6 = [(TUIInteractiveBaseView *)self renderModel];
    v7 = [v6 actionHandler];
    v13 = @"value";
    v8 = objc_opt_class();
    v9 = [(TUIInteractiveBaseView *)self control];
    v10 = TUIDynamicCast(v8, v9);
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 selectedSegmentIndex]);
    v14 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v7 invoke:@"valueChanged" arguments:v12];
  }

  [(TUISegmentedControlView *)self _updateDynamicViewState];
}

+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 identifier:(id)a7 name:(id)a8 selectIndex:(int64_t)a9 segments:(id)a10 tintColor:(id)a11
{
  v28 = a6;
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [TUIRenderModelSegmentedControl alloc];
  v25 = [a1 tuiReuseIdentifier];
  v26 = [(TUIRenderModelSegmentedControl *)v24 initWithReuseIdentifier:v25 identifier:v20 elementStates:v23 actionHandler:v22 viewState:v21 enabled:v28 name:v19 selectIndex:a9 segments:v18 tintColor:v17];

  return v26;
}

- (id)viewStateSave
{
  v3 = [(TUIInteractiveBaseView *)self control];
  if (v3)
  {
    [(TUISegmentedControlView *)self setViewState:0];
    v4 = -[_TUISegmentedControlViewState initWithSelectIndex:]([_TUISegmentedControlViewState alloc], "initWithSelectIndex:", [v3 selectedSegmentIndex]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewStateRestore:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  [(TUISegmentedControlView *)self setViewState:v6];
  v7 = [(TUIInteractiveBaseView *)self control];
  if (v4 && v7)
  {
    v9 = v7;
    v8 = [(TUISegmentedControlView *)self viewState];
    [v9 setSelectedSegmentIndex:{objc_msgSend(v8, "selectIndex")}];

    v7 = v9;
  }
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