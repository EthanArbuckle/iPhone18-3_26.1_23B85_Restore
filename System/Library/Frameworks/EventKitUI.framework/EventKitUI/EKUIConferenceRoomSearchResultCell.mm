@interface EKUIConferenceRoomSearchResultCell
- (EKUIConferenceRoomSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)description;
- (void)reloadWithConferenceRoom:(id)room;
- (void)updateSeparatorInset;
@end

@implementation EKUIConferenceRoomSearchResultCell

- (EKUIConferenceRoomSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v56[9] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = EKUIConferenceRoomSearchResultCell;
  v4 = [(EKUIConferenceRoomSearchResultCell *)&v55 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(EKUIConferenceRoomSearchResultCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v5->_title;
    v5->_title = v7;

    [(UILabel *)v5->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    textLabel = [(EKUIConferenceRoomSearchResultCell *)v5 textLabel];
    font = [textLabel font];
    [(UILabel *)v5->_title setFont:font];

    textLabel2 = [(EKUIConferenceRoomSearchResultCell *)v5 textLabel];
    textColor = [textLabel2 textColor];
    [(UILabel *)v5->_title setTextColor:textColor];

    [contentView addSubview:v5->_title];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    image = v5->_image;
    v5->_image = v13;

    v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:26.0];
    [(UIImageView *)v5->_image setPreferredSymbolConfiguration:v15];

    [(UIImageView *)v5->_image setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v5->_image];
    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v16;

    [(UIActivityIndicatorView *)v5->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v5->_spinner];
    v42 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v5->_title topAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v51 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v56[0] = v51;
    bottomAnchor = [(UILabel *)v5->_title bottomAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
    v56[1] = v47;
    leadingAnchor = [(UILabel *)v5->_title leadingAnchor];
    layoutMarginsGuide3 = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:45.0];
    v56[2] = v43;
    trailingAnchor = [(UILabel *)v5->_title trailingAnchor];
    layoutMarginsGuide4 = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v56[3] = v38;
    centerXAnchor = [(UIImageView *)v5->_image centerXAnchor];
    layoutMarginsGuide5 = [contentView layoutMarginsGuide];
    leadingAnchor3 = [layoutMarginsGuide5 leadingAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3 constant:17.0];
    v56[4] = v34;
    centerYAnchor = [(UIImageView *)v5->_image centerYAnchor];
    layoutMarginsGuide6 = [contentView layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide6 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v56[5] = v30;
    centerXAnchor2 = [(UIActivityIndicatorView *)v5->_spinner centerXAnchor];
    layoutMarginsGuide7 = [contentView layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide7 leadingAnchor];
    v18 = [centerXAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:17.0];
    v56[6] = v18;
    centerYAnchor3 = [(UIActivityIndicatorView *)v5->_spinner centerYAnchor];
    layoutMarginsGuide8 = [contentView layoutMarginsGuide];
    centerYAnchor4 = [layoutMarginsGuide8 centerYAnchor];
    v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v56[7] = v22;
    heightAnchor = [contentView heightAnchor];
    v24 = [heightAnchor constraintGreaterThanOrEqualToConstant:EKUITableRowHeightDefault()];
    v56[8] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:9];
    [v42 activateConstraints:v25];
  }

  [(EKUIConferenceRoomSearchResultCell *)v5 updateSeparatorInset];
  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v8.receiver = self;
  v8.super_class = EKUIConferenceRoomSearchResultCell;
  v4 = [(EKUIConferenceRoomSearchResultCell *)&v8 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"_spinner" withObject:self->_spinner];
  [v5 setKey:@"_title" withObject:self->_title];
  [v5 setKey:@"_image" withObject:self->_image];
  build = [v5 build];

  return build;
}

- (void)updateSeparatorInset
{
  CalInterfaceIsLeftToRight();
  [(EKUIConferenceRoomSearchResultCell *)self safeAreaInsets];
  [(EKUIConferenceRoomSearchResultCell *)self separatorInset];

  [(EKUIConferenceRoomSearchResultCell *)self setSeparatorInset:?];
}

- (void)reloadWithConferenceRoom:(id)room
{
  roomCopy = room;
  isHidden = [(UIActivityIndicatorView *)self->_spinner isHidden];
  if ([roomCopy supportsAvailability] && objc_msgSend(roomCopy, "availabilityRequestInProgress"))
  {
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Loading Availability" value:&stru_1F4EF6790 table:0];

    if (!isHidden)
    {
      goto LABEL_12;
    }

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    [(UIActivityIndicatorView *)self->_spinner setHidden:0];
    p_image = &self->_image;
    goto LABEL_10;
  }

  if ((isHidden & 1) == 0)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    [(UIActivityIndicatorView *)self->_spinner setHidden:1];
    [(UIImageView *)self->_image setHidden:0];
  }

  if (![roomCopy supportsAvailability])
  {
    p_image = &self->_image;
    v6 = &stru_1F4EF6790;
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  availability = [roomCopy availability];
  v6 = AccessibilityLabelForAvailabilityType(availability);
  v9 = ImageForAvailabilityType(availability);
  p_image = &self->_image;
  [(UIImageView *)self->_image setImage:v9];

  systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
  [(UIImageView *)self->_image setTintColor:systemGray4Color];

  v11 = 0;
LABEL_11:
  [(UIImageView *)*p_image setHidden:v11];
LABEL_12:
  location = [roomCopy location];
  displayName = [location displayName];
  [(UILabel *)self->_title setText:displayName];

  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Conference Search Result Accessibility Label Format" value:@"%@ table:{%@", 0}];

  v16 = MEMORY[0x1E696AEC0];
  text = [(UILabel *)self->_title text];
  v18 = [v16 localizedStringWithFormat:v15, v6, text];
  [(EKUIConferenceRoomSearchResultCell *)self setAccessibilityLabel:v18];
}

@end