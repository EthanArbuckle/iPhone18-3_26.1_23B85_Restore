@interface CNAddressComponentSplitTextFieldCell
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (CNAddressComponentSplitTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)newSeparatorView;
- (id)textAttributes;
- (id)textFields;
- (void)setTextAttributes:(id)attributes;
- (void)setupTextFields;
@end

@implementation CNAddressComponentSplitTextFieldCell

- (id)textAttributes
{
  textFieldLeft = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  ab_textAttributes = [textFieldLeft ab_textAttributes];

  return ab_textAttributes;
}

- (void)setTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  textFieldLeft = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  ab_textAttributes = [textFieldLeft ab_textAttributes];

  if (ab_textAttributes != attributesCopy)
  {
    textFieldLeft2 = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
    [textFieldLeft2 setAb_textAttributes:attributesCopy];

    textFieldRight = [(CNAddressComponentSplitTextFieldCell *)self textFieldRight];
    [textFieldRight setAb_textAttributes:attributesCopy];
  }
}

- (id)textFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  textFieldLeft = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  v7[0] = textFieldLeft;
  textFieldRight = [(CNAddressComponentSplitTextFieldCell *)self textFieldRight];
  v7[1] = textFieldRight;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)setupTextFields
{
  newTextField = [(CNAddressComponentTextFieldCell *)self newTextField];
  [(CNAddressComponentSplitTextFieldCell *)self setTextFieldLeft:newTextField];

  containerView = [(NUITableViewContainerCell *)self containerView];
  textFieldLeft = [(CNAddressComponentSplitTextFieldCell *)self textFieldLeft];
  [containerView addArrangedSubview:textFieldLeft];

  newSeparatorView = [(CNAddressComponentSplitTextFieldCell *)self newSeparatorView];
  [(CNAddressComponentSplitTextFieldCell *)self setSeparator:newSeparatorView];

  containerView2 = [(NUITableViewContainerCell *)self containerView];
  separator = [(CNAddressComponentSplitTextFieldCell *)self separator];
  [containerView2 addArrangedSubview:separator];

  containerView3 = [(NUITableViewContainerCell *)self containerView];
  separator2 = [(CNAddressComponentSplitTextFieldCell *)self separator];
  [containerView3 setMinimumSpacing:separator2 adjacentToView:{0.0, 0.0, 0.0, 8.0}];

  newTextField2 = [(CNAddressComponentTextFieldCell *)self newTextField];
  [(CNAddressComponentSplitTextFieldCell *)self setTextFieldRight:newTextField2];

  containerView4 = [(NUITableViewContainerCell *)self containerView];
  textFieldRight = [(CNAddressComponentSplitTextFieldCell *)self textFieldRight];
  [containerView4 addArrangedSubview:textFieldRight];
}

- (id)newSeparatorView
{
  v3 = [CNRepeatingGradientSeparatorView alloc];
  v4 = [(CNRepeatingGradientSeparatorView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNAddressComponentSplitTextFieldCell *)self setSeparator:v4];

  separator = [(CNAddressComponentSplitTextFieldCell *)self separator];
  LODWORD(v6) = 1148846080;
  [separator setLayoutSize:0.5 withContentPriority:{0.5, v6}];

  [(CNAddressComponentSplitTextFieldCell *)self separator];
  return objc_claimAutoreleasedReturnValue();
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  subviewCopy = subview;
  separator = [(CNAddressComponentSplitTextFieldCell *)self separator];

  if (separator == subviewCopy)
  {
    [viewCopy bounds];
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

- (CNAddressComponentSplitTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNAddressComponentSplitTextFieldCell;
  v4 = [(CNAddressComponentTextFieldCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    containerView = [(NUITableViewContainerCell *)v4 containerView];
    [containerView setAxis:0];
    [containerView setAlignment:3];
    [containerView setDistribution:0];
    [containerView setDelegate:v5];
  }

  return v5;
}

@end