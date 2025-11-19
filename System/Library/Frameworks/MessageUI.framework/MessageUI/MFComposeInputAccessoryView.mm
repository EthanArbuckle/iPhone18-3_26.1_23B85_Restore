@interface MFComposeInputAccessoryView
- (CGSize)intrinsicContentSize;
- (MFComposeInputAccessoryView)initWithCoder:(id)a3;
- (MFComposeInputAccessoryView)initWithToolbarItems:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setupToolbarWithItems:(id)a3;
- (void)updateFrameForIntrinsicContentSize;
- (void)updateToolbarItems:(id)a3;
@end

@implementation MFComposeInputAccessoryView

- (MFComposeInputAccessoryView)initWithToolbarItems:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFComposeInputAccessoryView;
  v5 = [(MFComposeInputAccessoryView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(MFComposeInputAccessoryView *)v5 setupToolbarWithItems:v4];
  }

  return v6;
}

- (MFComposeInputAccessoryView)initWithCoder:(id)a3
{
  v5 = a3;
  [(MFComposeInputAccessoryView *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFComposeInputAccessoryView initWithCoder:]", "MFComposeInputAccessoryView.m", 33, "0");
}

- (CGSize)intrinsicContentSize
{
  [(MFComposeInputAccessoryView *)self safeAreaInsets];
  v4 = v3;
  v5 = [(MFComposeInputAccessoryView *)self toolbar];
  [v5 frame];
  v7 = v6;

  v8 = [(MFComposeInputAccessoryView *)self toolbar];
  [v8 intrinsicContentSize];
  v10 = v9;

  v11 = v4 + v10 + 10.0;
  v12 = v7;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)updateFrameForIntrinsicContentSize
{
  [(MFComposeInputAccessoryView *)self intrinsicContentSize];
  [(MFComposeInputAccessoryView *)self frame];

  [(MFComposeInputAccessoryView *)self setFrame:?];
}

- (void)updateToolbarItems:(id)a3
{
  v5 = a3;
  v4 = [(MFComposeInputAccessoryView *)self toolbar];
  [v4 setItems:v5];

  [(MFComposeInputAccessoryView *)self updateFrameForIntrinsicContentSize];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(MFComposeInputAccessoryView *)self toolbar];
  [(MFComposeInputAccessoryView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;
  [v8 bounds];
  v17.x = v10;
  v17.y = v12;
  if (CGRectContainsPoint(v18, v17))
  {
    v13 = [v8 hitTest:v7 withEvent:{v10, v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setupToolbarWithItems:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v20 = a3;
  v4 = objc_alloc(MEMORY[0x1E69DD180]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MFComposeInputAccessoryView *)self addSubview:v5];
  v6 = MEMORY[0x1E696ACD8];
  v23 = [v5 leadingAnchor];
  v19 = [(MFComposeInputAccessoryView *)self safeAreaLayoutGuide];
  v18 = [v19 leadingAnchor];
  v17 = [v23 constraintEqualToAnchor:?];
  v24[0] = v17;
  v22 = [v5 trailingAnchor];
  v16 = [(MFComposeInputAccessoryView *)self safeAreaLayoutGuide];
  v15 = [v16 trailingAnchor];
  v14 = [v22 constraintEqualToAnchor:?];
  v24[1] = v14;
  v21 = [v5 topAnchor];
  v7 = [(MFComposeInputAccessoryView *)self topAnchor];
  v8 = [v21 constraintEqualToAnchor:v7];
  v24[2] = v8;
  v9 = [v5 bottomAnchor];
  v10 = [(MFComposeInputAccessoryView *)self safeAreaLayoutGuide];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:-10.0];
  v24[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v6 activateConstraints:v13];

  [(MFComposeInputAccessoryView *)self setToolbar:v5];
  [(MFComposeInputAccessoryView *)self updateToolbarItems:v20];
}

@end