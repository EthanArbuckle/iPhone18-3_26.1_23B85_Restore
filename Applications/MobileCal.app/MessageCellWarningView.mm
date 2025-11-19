@interface MessageCellWarningView
- (MessageCellWarningView)init;
- (void)setImage:(id)a3 warningString:(id)a4 emphasizedRangeValue:(id)a5;
@end

@implementation MessageCellWarningView

- (MessageCellWarningView)init
{
  v16.receiver = self;
  v16.super_class = MessageCellWarningView;
  v2 = [(MessageCellWarningView *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageView = v2->_imageView;
    v2->_imageView = v3;

    [(UIImageView *)v2->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(UIImageView *)v2->_imageView setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(UIImageView *)v2->_imageView setContentHuggingPriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(UIImageView *)v2->_imageView setContentCompressionResistancePriority:0 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(UIImageView *)v2->_imageView setContentCompressionResistancePriority:1 forAxis:v8];
    v9 = objc_opt_new();
    label = v2->_label;
    v2->_label = v9;

    [(UILabel *)v2->_label setOpaque:0];
    v11 = +[UIColor clearColor];
    [(UILabel *)v2->_label setBackgroundColor:v11];

    [(UILabel *)v2->_label setLineBreakMode:4];
    [(UILabel *)v2->_label setNumberOfLines:4];
    [(UILabel *)v2->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1144750080;
    [(UILabel *)v2->_label setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(UILabel *)v2->_label setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1144750080;
    [(UILabel *)v2->_label setContentHuggingPriority:1 forAxis:v14];
    [(MessageCellWarningView *)v2 addSubview:v2->_imageView];
    [(MessageCellWarningView *)v2 addSubview:v2->_label];
  }

  return v2;
}

- (void)setImage:(id)a3 warningString:(id)a4 emphasizedRangeValue:(id)a5
{
  v8 = a5;
  imageView = self->_imageView;
  v10 = a4;
  [(UIImageView *)imageView setImage:a3];
  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
  v27 = [UIFont fontWithDescriptor:v11 size:0.0];
  v30[0] = NSFontAttributeName;
  v30[1] = NSForegroundColorAttributeName;
  v31[0] = v27;
  v12 = +[UIColor labelColor];
  v31[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];

  v14 = [[NSMutableAttributedString alloc] initWithString:v10 attributes:v13];
  v15 = v8;
  if (v8)
  {
    v16 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:32770 options:0];

    v17 = [UIFont fontWithDescriptor:v16 size:0.0];
    v28[1] = NSForegroundColorAttributeName;
    v29[0] = v17;
    v28[0] = NSFontAttributeName;
    v18 = +[UIColor labelColor];
    v29[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

    v20 = [v15 rangeValue];
    [v14 setAttributes:v19 range:{v20, v21}];

    v11 = v16;
  }

  v22 = v15;
  [(UILabel *)self->_label setAttributedText:v14];
  if (!self->_didActivateConstraints)
  {
    v23 = _NSDictionaryOfVariableBindings(@"_imageView,_label", self->_imageView, self->_label, 0);
    v24 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[_imageView]-(2)-[_label]|", 4096, 0, v23);
    [NSLayoutConstraint activateConstraints:v24];

    v22 = v15;
    v25 = _NSDictionaryOfVariableBindings(@"_imageView,_label", self->_imageView, self->_label, 0);
    v26 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_label]|" options:0 metrics:0 views:v25];
    [NSLayoutConstraint activateConstraints:v26];

    self->_didActivateConstraints = 1;
  }
}

@end