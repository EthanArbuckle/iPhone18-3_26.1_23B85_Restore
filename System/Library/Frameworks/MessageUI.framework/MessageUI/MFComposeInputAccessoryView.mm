@interface MFComposeInputAccessoryView
- (CGSize)intrinsicContentSize;
- (MFComposeInputAccessoryView)initWithCoder:(id)coder;
- (MFComposeInputAccessoryView)initWithToolbarItems:(id)items;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setupToolbarWithItems:(id)items;
- (void)updateFrameForIntrinsicContentSize;
- (void)updateToolbarItems:(id)items;
@end

@implementation MFComposeInputAccessoryView

- (MFComposeInputAccessoryView)initWithToolbarItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = MFComposeInputAccessoryView;
  v5 = [(MFComposeInputAccessoryView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(MFComposeInputAccessoryView *)v5 setupToolbarWithItems:itemsCopy];
  }

  return v6;
}

- (MFComposeInputAccessoryView)initWithCoder:(id)coder
{
  coderCopy = coder;
  [(MFComposeInputAccessoryView *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFComposeInputAccessoryView initWithCoder:]", "MFComposeInputAccessoryView.m", 33, "0");
}

- (CGSize)intrinsicContentSize
{
  [(MFComposeInputAccessoryView *)self safeAreaInsets];
  v4 = v3;
  toolbar = [(MFComposeInputAccessoryView *)self toolbar];
  [toolbar frame];
  v7 = v6;

  toolbar2 = [(MFComposeInputAccessoryView *)self toolbar];
  [toolbar2 intrinsicContentSize];
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

- (void)updateToolbarItems:(id)items
{
  itemsCopy = items;
  toolbar = [(MFComposeInputAccessoryView *)self toolbar];
  [toolbar setItems:itemsCopy];

  [(MFComposeInputAccessoryView *)self updateFrameForIntrinsicContentSize];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  toolbar = [(MFComposeInputAccessoryView *)self toolbar];
  [(MFComposeInputAccessoryView *)self convertPoint:toolbar toView:x, y];
  v10 = v9;
  v12 = v11;
  [toolbar bounds];
  v17.x = v10;
  v17.y = v12;
  if (CGRectContainsPoint(v18, v17))
  {
    v13 = [toolbar hitTest:eventCopy withEvent:{v10, v12}];
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

- (void)setupToolbarWithItems:(id)items
{
  v24[4] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_alloc(MEMORY[0x1E69DD180]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MFComposeInputAccessoryView *)self addSubview:v5];
  v6 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v5 leadingAnchor];
  safeAreaLayoutGuide = [(MFComposeInputAccessoryView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:?];
  v24[0] = v17;
  trailingAnchor = [v5 trailingAnchor];
  safeAreaLayoutGuide2 = [(MFComposeInputAccessoryView *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:?];
  v24[1] = v14;
  topAnchor = [v5 topAnchor];
  topAnchor2 = [(MFComposeInputAccessoryView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[2] = v8;
  bottomAnchor = [v5 bottomAnchor];
  safeAreaLayoutGuide3 = [(MFComposeInputAccessoryView *)self safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v24[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v6 activateConstraints:v13];

  [(MFComposeInputAccessoryView *)self setToolbar:v5];
  [(MFComposeInputAccessoryView *)self updateToolbarItems:itemsCopy];
}

@end