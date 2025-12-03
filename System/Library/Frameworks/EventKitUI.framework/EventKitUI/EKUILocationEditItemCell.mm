@interface EKUILocationEditItemCell
- (EKUILocationEditItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)description;
- (void)updateWithName:(id)name sourceSupportsAvailability:(BOOL)availability availabilityRequestInProgress:(BOOL)progress availabilityType:(int64_t)type;
@end

@implementation EKUILocationEditItemCell

- (EKUILocationEditItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v47.receiver = self;
  v47.super_class = EKUILocationEditItemCell;
  v4 = [(EKUILocationEditItemCell *)&v47 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(EKUILocationEditItemCell *)v4 contentView];
    v7 = [EKUIClearButton alloc];
    v8 = ClearButtonImageColor();
    v9 = [(EKUIClearButton *)v7 initWithColor:v8];
    clearButton = v5->_clearButton;
    v5->_clearButton = v9;

    [(UIButton *)v5->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v5->_clearButton];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v5->_title;
    v5->_title = v11;

    [(UILabel *)v5->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v5->_title setFont:v13];

    textLabel = [(EKUILocationEditItemCell *)v5 textLabel];
    textColor = [textLabel textColor];
    [(UILabel *)v5->_title setTextColor:textColor];

    [contentView addSubview:v5->_title];
    v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    image = v5->_image;
    v5->_image = v16;

    v18 = MEMORY[0x1E69DCAD8];
    font = [(UILabel *)v5->_title font];
    v20 = [v18 configurationWithFont:font];
    [(UIImageView *)v5->_image setPreferredSymbolConfiguration:v20];

    [(UIImageView *)v5->_image setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [(UIImageView *)v5->_image setContentHuggingPriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)v5->_image setContentHuggingPriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)v5->_image setContentCompressionResistancePriority:0 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIImageView *)v5->_image setContentCompressionResistancePriority:1 forAxis:v24];
    [contentView addSubview:v5->_image];
    v25 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v25;

    [(UIActivityIndicatorView *)v5->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v27) = 1148846080;
    [(UIActivityIndicatorView *)v5->_spinner setContentHuggingPriority:0 forAxis:v27];
    LODWORD(v28) = 1148846080;
    [(UIActivityIndicatorView *)v5->_spinner setContentHuggingPriority:1 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [(UIActivityIndicatorView *)v5->_spinner setContentCompressionResistancePriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(UIActivityIndicatorView *)v5->_spinner setContentCompressionResistancePriority:1 forAxis:v30];
    [contentView addSubview:v5->_spinner];
    v31 = _NSDictionaryOfVariableBindings(&cfstr_Title.isa, v5->_title, 0);
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(textPadding)-[_title]-(textPadding)-|" options:0 metrics:&unk_1F4F32928 views:v31];
    [v32 addObjectsFromArray:v33];

    v34 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_image attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:16.0];
    [v32 addObject:v34];

    v35 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_image attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [v32 addObject:v35];

    v36 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_spinner attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:16.0];
    [v32 addObject:v36];

    v37 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_spinner attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [v32 addObject:v37];

    v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_title attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:46.0];
    [v32 addObject:v38];

    v39 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_clearButton attribute:5 relatedBy:0 toItem:v5->_title attribute:6 multiplier:1.0 constant:8.0];
    [v32 addObject:v39];

    v40 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_clearButton attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [v32 addObject:v40];

    v41 = MEMORY[0x1E696ACD8];
    v42 = v5->_clearButton;
    +[EKUIClearButton trailingOffsetToMarginForTextFieldClearButtonAlignment];
    v44 = [v41 constraintWithItem:contentView attribute:18 relatedBy:0 toItem:v42 attribute:6 multiplier:1.0 constant:v43];
    [v32 addObject:v44];

    v45 = [MEMORY[0x1E696ACD8] constraintWithItem:contentView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:EKUITableRowHeightDefault()];
    [v32 addObject:v45];

    [contentView addConstraints:v32];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v8.receiver = self;
  v8.super_class = EKUILocationEditItemCell;
  v4 = [(EKUILocationEditItemCell *)&v8 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"_title" withObject:self->_title];
  [v5 setKey:@"_spinner" withObject:self->_spinner];
  [v5 setKey:@"_clearButton" withObject:self->_clearButton];
  [v5 setKey:@"_image" withObject:self->_image];
  build = [v5 build];

  return build;
}

- (void)updateWithName:(id)name sourceSupportsAvailability:(BOOL)availability availabilityRequestInProgress:(BOOL)progress availabilityType:(int64_t)type
{
  progressCopy = progress;
  availabilityCopy = availability;
  nameCopy = name;
  isHidden = [(UIActivityIndicatorView *)self->_spinner isHidden];
  if (availabilityCopy && progressCopy)
  {
    if (!isHidden)
    {
      goto LABEL_11;
    }

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    [(UIActivityIndicatorView *)self->_spinner setHidden:0];
    goto LABEL_9;
  }

  if ((isHidden & 1) == 0)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    [(UIActivityIndicatorView *)self->_spinner setHidden:1];
    [(UIImageView *)self->_image setHidden:0];
  }

  if (!availabilityCopy)
  {
LABEL_9:
    p_image = &self->_image;
    v14 = 1;
    goto LABEL_10;
  }

  v11 = ImageForAvailabilityType(type);
  p_image = &self->_image;
  [(UIImageView *)self->_image setImage:v11];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UIImageView *)self->_image setTintColor:systemGrayColor];

  v14 = 0;
LABEL_10:
  [(UIImageView *)*p_image setHidden:v14];
LABEL_11:
  [(UILabel *)self->_title setText:nameCopy];
}

@end