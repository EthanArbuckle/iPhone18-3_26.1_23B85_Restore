@interface CREditTextTableCell
- (CREditTextTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
- (void)setValue:(id)value;
@end

@implementation CREditTextTableCell

- (CREditTextTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v21.receiver = self;
  v21.super_class = CREditTextTableCell;
  v9 = [(CREditTextTableCell *)&v21 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(CREditTextTableCell *)v9 setSelectionStyle:0];
    [(CREditTextTableCell *)v10 setAccessoryType:0];
    v11 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v12 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v24 = UIFontWeightTrait;
    v13 = [NSNumber numberWithDouble:UIFontWeightRegular];
    v25 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v22 = UIFontDescriptorTraitsAttribute;
    v23 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = [v12 fontDescriptorByAddingAttributes:v15];

    v17 = [UIFont fontWithDescriptor:v16 size:0.0];
    [v11 setFont:v17];

    [v11 setEditable:1];
    [v11 setAllowsEditingTextAttributes:0];
    [v11 setScrollEnabled:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CREditTextTableCell *)v10 setTextView:v11];
    contentView = [(CREditTextTableCell *)v10 contentView];
    [contentView addSubview:v11];

    target = [specifierCopy target];
    [v11 setDelegate:target];
  }

  return v10;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  textView = [(CREditTextTableCell *)self textView];
  [textView setText:valueCopy];

  [(CREditTextTableCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CREditTextTableCell;
  [(CREditTextTableCell *)&v12 layoutSubviews];
  PSTextViewInsets();
  [(CREditTextTableCell *)self bounds];
  UIRectInset();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  textView = [(CREditTextTableCell *)self textView];
  [textView setFrame:{v4, v6, v8, v10}];
}

@end