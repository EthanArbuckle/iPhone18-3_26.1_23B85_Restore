@interface PreviewFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PreviewFooterView)initWithTitle:(id)title subtitle:(id)subtitle;
@end

@implementation PreviewFooterView

- (PreviewFooterView)initWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v63.receiver = self;
  v63.super_class = PreviewFooterView;
  v8 = [(PreviewFooterView *)&v63 init];
  if (v8)
  {
    v9 = objc_alloc_init(UIView);
    v10 = +[UIColor _barHairlineShadowColor];
    [v9 setBackgroundColor:v10];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PreviewFooterView *)v8 addSubview:v9];
    v59 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:2 options:0];
    v11 = [UIFont fontWithDescriptor:0.0 size:?];
    v12 = objc_alloc_init(UILabel);
    [v12 setFont:v11];
    v61 = titleCopy;
    [v12 setText:titleCopy];
    v13 = +[UIColor labelColor];
    [v12 setTextColor:v13];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v62 = v12;
    [(PreviewFooterView *)v8 addSubview:v12];
    v14 = objc_alloc_init(UILabel);
    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v14 setFont:v15];

    v60 = subtitleCopy;
    [v14 setText:subtitleCopy];
    v16 = +[UIColor systemGrayColor];
    [v14 setTextColor:v16];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PreviewFooterView *)v8 addSubview:v14];
    heightAnchor = [v9 heightAnchor];
    v18 = *&qword_10000CCE0;
    if (*&qword_10000CCE0 == 0.0)
    {
      v19 = +[UIScreen mainScreen];
      [v19 scale];
      qword_10000CCE0 = v20;

      v18 = *&qword_10000CCE0;
    }

    v58 = [heightAnchor constraintEqualToConstant:1.0 / v18];
    v64[0] = v58;
    leadingAnchor = [v9 leadingAnchor];
    leadingAnchor2 = [(PreviewFooterView *)v8 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v64[1] = v55;
    trailingAnchor = [v9 trailingAnchor];
    trailingAnchor2 = [(PreviewFooterView *)v8 trailingAnchor];
    v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v64[2] = v52;
    topAnchor = [v9 topAnchor];
    topAnchor2 = [(PreviewFooterView *)v8 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v64[3] = v49;
    leadingAnchor3 = [v62 leadingAnchor];
    leadingAnchor4 = [(PreviewFooterView *)v8 leadingAnchor];
    v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v64[4] = v46;
    firstBaselineAnchor = [v62 firstBaselineAnchor];
    bottomAnchor = [v9 bottomAnchor];
    [v11 _scaledValueForValue:20.0];
    v42 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    v64[5] = v42;
    trailingAnchor3 = [v62 trailingAnchor];
    trailingAnchor4 = [(PreviewFooterView *)v8 trailingAnchor];
    v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v64[6] = v37;
    leadingAnchor5 = [v14 leadingAnchor];
    leadingAnchor6 = [(PreviewFooterView *)v8 leadingAnchor];
    v34 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
    v64[7] = v34;
    firstBaselineAnchor2 = [v14 firstBaselineAnchor];
    firstBaselineAnchor3 = [v62 firstBaselineAnchor];
    [v11 _scaledValueForValue:15.0];
    v21 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
    v64[8] = v21;
    [v14 trailingAnchor];
    v22 = v41 = heightAnchor;
    trailingAnchor5 = [(PreviewFooterView *)v8 trailingAnchor];
    [v22 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
    v24 = v43 = v9;
    v64[9] = v24;
    [(PreviewFooterView *)v8 bottomAnchor];
    v25 = v11;
    v26 = v39 = v11;
    firstBaselineAnchor4 = [v14 firstBaselineAnchor];
    [v25 _scaledValueForValue:12.0];
    v28 = [v26 constraintEqualToAnchor:firstBaselineAnchor4 constant:?];
    v64[10] = v28;
    v29 = [NSArray arrayWithObjects:v64 count:11];
    [NSLayoutConstraint activateConstraints:v29];

    v30 = v8;
    subtitleCopy = v60;
    titleCopy = v61;
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(PreviewFooterView *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

@end