@interface CNAddressComponentSplitTextFieldCell
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5;
- (CNAddressComponentSplitTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)newSeparatorView;
- (id)textAttributes;
- (id)textFields;
- (void)setTextAttributes:(id)a3;
- (void)setupTextFields;
@end

@implementation CNAddressComponentSplitTextFieldCell

- (id)textAttributes
{
  v2 = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  v3 = [v2 ab_textAttributes];

  return v3;
}

- (void)setTextAttributes:(id)a3
{
  v8 = a3;
  v4 = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  v5 = [v4 ab_textAttributes];

  if (v5 != v8)
  {
    v6 = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
    [v6 setAb_textAttributes:v8];

    v7 = [(CNAddressComponentSplitTextFieldCell *)self textFieldRight];
    [v7 setAb_textAttributes:v8];
  }
}

- (id)textFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  v7[0] = v3;
  v4 = [(CNAddressComponentSplitTextFieldCell *)self textFieldRight];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)setupTextFields
{
  v3 = [(CNAddressComponentTextFieldCell *)self newTextField];
  [(CNAddressComponentSplitTextFieldCell *)self setTextFieldLeft:v3];

  v4 = [(NUITableViewContainerCell *)self containerView];
  v5 = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  [v4 addArrangedSubview:v5];

  v6 = [(CNAddressComponentSplitTextFieldCell *)self newSeparatorView];
  [(CNAddressComponentSplitTextFieldCell *)self setSeparator:v6];

  v7 = [(NUITableViewContainerCell *)self containerView];
  v8 = [(CNAddressComponentSplitTextFieldCell *)self separator];
  [v7 addArrangedSubview:v8];

  v9 = [(NUITableViewContainerCell *)self containerView];
  v10 = [(CNAddressComponentSplitTextFieldCell *)self separator];
  [v9 setMinimumSpacing:v10 adjacentToView:{0.0, 0.0, 0.0, 8.0}];

  v11 = [(CNAddressComponentTextFieldCell *)self newTextField];
  [(CNAddressComponentSplitTextFieldCell *)self setTextFieldRight:v11];

  v13 = [(NUITableViewContainerCell *)self containerView];
  v12 = [(CNAddressComponentSplitTextFieldCell *)self textFieldRight];
  [v13 addArrangedSubview:v12];
}

- (id)newSeparatorView
{
  v3 = [CNRepeatingGradientSeparatorView alloc];
  v4 = [(CNRepeatingGradientSeparatorView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNAddressComponentSplitTextFieldCell *)self setSeparator:v4];

  v5 = [(CNAddressComponentSplitTextFieldCell *)self separator];
  LODWORD(v6) = 1148846080;
  [v5 setLayoutSize:0.5 withContentPriority:{0.5, v6}];

  [(CNAddressComponentSplitTextFieldCell *)self separator];
  return objc_claimAutoreleasedReturnValue();
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(CNAddressComponentSplitTextFieldCell *)self separator];

  if (v13 == v12)
  {
    [v11 bounds];
    height = v14;
    y = 0.0;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CNAddressComponentSplitTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNAddressComponentSplitTextFieldCell;
  v4 = [(CNAddressComponentTextFieldCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(NUITableViewContainerCell *)v4 containerView];
    [v6 setAxis:0];
    [v6 setAlignment:3];
    [v6 setDistribution:0];
    [v6 setDelegate:v5];
  }

  return v5;
}

@end