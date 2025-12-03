@interface SFEditableTextFieldTableViewCell
- (SFEditableTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SFEditableTextFieldTableViewCell

- (SFEditableTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = SFEditableTextFieldTableViewCell;
  v4 = [(SFEditableTextFieldTableViewCell *)&v30 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SFEditableTextFieldTableViewCell *)v4 contentView];
    v29 = contentView;
    v7 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    editableTextField = v5->_editableTextField;
    v5->_editableTextField = v7;

    [(UITextField *)v5->_editableTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([(SFEditableTextFieldTableViewCell *)v5 _sf_usesLeftToRightLayout])
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    [(UITextField *)v5->_editableTextField setTextAlignment:v9];
    v10 = +[_SFAccountManagerAppearanceValues titleFontForLargerCell];
    [(UITextField *)v5->_editableTextField setFont:v10];

    [contentView addSubview:v5->_editableTextField];
    contentView2 = [(SFEditableTextFieldTableViewCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v23 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UITextField *)v5->_editableTextField leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v26;
    trailingAnchor = [(UITextField *)v5->_editableTextField trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[1] = v13;
    heightAnchor = [(UITextField *)v5->_editableTextField heightAnchor];
    heightAnchor2 = [layoutMarginsGuide heightAnchor];
    v16 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    v31[2] = v16;
    centerYAnchor = [(UITextField *)v5->_editableTextField centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v31[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v23 activateConstraints:v20];

    v21 = v5;
  }

  return v5;
}

@end