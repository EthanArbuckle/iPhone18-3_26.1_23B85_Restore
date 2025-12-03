@interface BYODDataCardEditableCell
- (BYODDataCardEditableCell)initWithTitle:(id)title;
- (id)_editableFont;
@end

@implementation BYODDataCardEditableCell

- (BYODDataCardEditableCell)initWithTitle:(id)title
{
  titleCopy = title;
  v30.receiver = self;
  v30.super_class = BYODDataCardEditableCell;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(BYODDataCardEditableCell *)&v30 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    title = height->_title;
    height->_title = v8;

    [(UILabel *)height->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    _editableFont = [(BYODDataCardEditableCell *)height _editableFont];
    [(UILabel *)height->_title setFont:_editableFont];

    [(UILabel *)height->_title setText:titleCopy];
    [(UILabel *)height->_title setNumberOfLines:0];
    v11 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    text = height->_text;
    height->_text = v11;

    [(UITextField *)height->_text setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)height->_text becomeFirstResponder];
    [(UITextField *)height->_text setUserInteractionEnabled:1];
    v13 = +[UIColor labelColor];
    [(UITextField *)height->_text setTextColor:v13];

    _editableFont2 = [(BYODDataCardEditableCell *)height _editableFont];
    [(UITextField *)height->_text setFont:_editableFont2];

    [(UITextField *)height->_text setText:&stru_B9FC8];
    v15 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    container = height->_container;
    height->_container = v15;

    [(UIStackView *)height->_container setAxis:0];
    [(UIStackView *)height->_container setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)height->_container addArrangedSubview:height->_title];
    [(UIStackView *)height->_container addArrangedSubview:height->_text];
    [(UIStackView *)height->_container setAlignment:3];
    [(UIStackView *)height->_container setSpacing:20.0];
    [(BYODDataCardEditableCell *)height addSubview:height->_container];
    leadingAnchor = [(UIStackView *)height->_container leadingAnchor];
    layoutMarginsGuide = [(BYODDataCardEditableCell *)height layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v31[0] = v18;
    centerXAnchor = [(UIStackView *)height->_container centerXAnchor];
    centerXAnchor2 = [(BYODDataCardEditableCell *)height centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v31[1] = v21;
    heightAnchor = [(UIStackView *)height->_container heightAnchor];
    heightAnchor2 = [(BYODDataCardEditableCell *)height heightAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v31[2] = v24;
    v25 = [NSArray arrayWithObjects:v31 count:3];
    [(BYODDataCardEditableCell *)height addConstraints:v25];
  }

  return height;
}

- (id)_editableFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v3 = [UIFont fontWithDescriptor:v2 size:18.0];

  return v3;
}

@end