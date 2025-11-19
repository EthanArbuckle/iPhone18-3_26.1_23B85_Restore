@interface BYODDataCardEditableCell
- (BYODDataCardEditableCell)initWithTitle:(id)a3;
- (id)_editableFont;
@end

@implementation BYODDataCardEditableCell

- (BYODDataCardEditableCell)initWithTitle:(id)a3
{
  v29 = a3;
  v30.receiver = self;
  v30.super_class = BYODDataCardEditableCell;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(BYODDataCardEditableCell *)&v30 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v7)
  {
    v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    title = v7->_title;
    v7->_title = v8;

    [(UILabel *)v7->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(BYODDataCardEditableCell *)v7 _editableFont];
    [(UILabel *)v7->_title setFont:v10];

    [(UILabel *)v7->_title setText:v29];
    [(UILabel *)v7->_title setNumberOfLines:0];
    v11 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    text = v7->_text;
    v7->_text = v11;

    [(UITextField *)v7->_text setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)v7->_text becomeFirstResponder];
    [(UITextField *)v7->_text setUserInteractionEnabled:1];
    v13 = +[UIColor labelColor];
    [(UITextField *)v7->_text setTextColor:v13];

    v14 = [(BYODDataCardEditableCell *)v7 _editableFont];
    [(UITextField *)v7->_text setFont:v14];

    [(UITextField *)v7->_text setText:&stru_B9FC8];
    v15 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    container = v7->_container;
    v7->_container = v15;

    [(UIStackView *)v7->_container setAxis:0];
    [(UIStackView *)v7->_container setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_container addArrangedSubview:v7->_title];
    [(UIStackView *)v7->_container addArrangedSubview:v7->_text];
    [(UIStackView *)v7->_container setAlignment:3];
    [(UIStackView *)v7->_container setSpacing:20.0];
    [(BYODDataCardEditableCell *)v7 addSubview:v7->_container];
    v28 = [(UIStackView *)v7->_container leadingAnchor];
    v27 = [(BYODDataCardEditableCell *)v7 layoutMarginsGuide];
    v17 = [v27 leadingAnchor];
    v18 = [v28 constraintEqualToAnchor:v17 constant:0.0];
    v31[0] = v18;
    v19 = [(UIStackView *)v7->_container centerXAnchor];
    v20 = [(BYODDataCardEditableCell *)v7 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v31[1] = v21;
    v22 = [(UIStackView *)v7->_container heightAnchor];
    v23 = [(BYODDataCardEditableCell *)v7 heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v31[2] = v24;
    v25 = [NSArray arrayWithObjects:v31 count:3];
    [(BYODDataCardEditableCell *)v7 addConstraints:v25];
  }

  return v7;
}

- (id)_editableFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v3 = [UIFont fontWithDescriptor:v2 size:18.0];

  return v3;
}

@end