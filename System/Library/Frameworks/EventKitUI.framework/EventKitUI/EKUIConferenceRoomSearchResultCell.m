@interface EKUIConferenceRoomSearchResultCell
- (EKUIConferenceRoomSearchResultCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)description;
- (void)reloadWithConferenceRoom:(id)a3;
- (void)updateSeparatorInset;
@end

@implementation EKUIConferenceRoomSearchResultCell

- (EKUIConferenceRoomSearchResultCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v56[9] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = EKUIConferenceRoomSearchResultCell;
  v4 = [(EKUIConferenceRoomSearchResultCell *)&v55 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(EKUIConferenceRoomSearchResultCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v5->_title;
    v5->_title = v7;

    [(UILabel *)v5->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(EKUIConferenceRoomSearchResultCell *)v5 textLabel];
    v10 = [v9 font];
    [(UILabel *)v5->_title setFont:v10];

    v11 = [(EKUIConferenceRoomSearchResultCell *)v5 textLabel];
    v12 = [v11 textColor];
    [(UILabel *)v5->_title setTextColor:v12];

    [v6 addSubview:v5->_title];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    image = v5->_image;
    v5->_image = v13;

    v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:26.0];
    [(UIImageView *)v5->_image setPreferredSymbolConfiguration:v15];

    [(UIImageView *)v5->_image setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:v5->_image];
    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v16;

    [(UIActivityIndicatorView *)v5->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:v5->_spinner];
    v42 = MEMORY[0x1E696ACD8];
    v53 = [(UILabel *)v5->_title topAnchor];
    v54 = [v6 layoutMarginsGuide];
    v52 = [v54 topAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:4.0];
    v56[0] = v51;
    v49 = [(UILabel *)v5->_title bottomAnchor];
    v50 = [v6 layoutMarginsGuide];
    v48 = [v50 bottomAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:-4.0];
    v56[1] = v47;
    v45 = [(UILabel *)v5->_title leadingAnchor];
    v46 = [v6 layoutMarginsGuide];
    v44 = [v46 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:45.0];
    v56[2] = v43;
    v40 = [(UILabel *)v5->_title trailingAnchor];
    v41 = [v6 layoutMarginsGuide];
    v39 = [v41 trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v56[3] = v38;
    v36 = [(UIImageView *)v5->_image centerXAnchor];
    v37 = [v6 layoutMarginsGuide];
    v35 = [v37 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:17.0];
    v56[4] = v34;
    v32 = [(UIImageView *)v5->_image centerYAnchor];
    v33 = [v6 layoutMarginsGuide];
    v31 = [v33 centerYAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v56[5] = v30;
    v28 = [(UIActivityIndicatorView *)v5->_spinner centerXAnchor];
    v29 = [v6 layoutMarginsGuide];
    v27 = [v29 leadingAnchor];
    v18 = [v28 constraintEqualToAnchor:v27 constant:17.0];
    v56[6] = v18;
    v19 = [(UIActivityIndicatorView *)v5->_spinner centerYAnchor];
    v20 = [v6 layoutMarginsGuide];
    v21 = [v20 centerYAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    v56[7] = v22;
    v23 = [v6 heightAnchor];
    v24 = [v23 constraintGreaterThanOrEqualToConstant:EKUITableRowHeightDefault()];
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
  v6 = [v5 build];

  return v6;
}

- (void)updateSeparatorInset
{
  CalInterfaceIsLeftToRight();
  [(EKUIConferenceRoomSearchResultCell *)self safeAreaInsets];
  [(EKUIConferenceRoomSearchResultCell *)self separatorInset];

  [(EKUIConferenceRoomSearchResultCell *)self setSeparatorInset:?];
}

- (void)reloadWithConferenceRoom:(id)a3
{
  v19 = a3;
  v4 = [(UIActivityIndicatorView *)self->_spinner isHidden];
  if ([v19 supportsAvailability] && objc_msgSend(v19, "availabilityRequestInProgress"))
  {
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Loading Availability" value:&stru_1F4EF6790 table:0];

    if (!v4)
    {
      goto LABEL_12;
    }

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    [(UIActivityIndicatorView *)self->_spinner setHidden:0];
    p_image = &self->_image;
    goto LABEL_10;
  }

  if ((v4 & 1) == 0)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    [(UIActivityIndicatorView *)self->_spinner setHidden:1];
    [(UIImageView *)self->_image setHidden:0];
  }

  if (![v19 supportsAvailability])
  {
    p_image = &self->_image;
    v6 = &stru_1F4EF6790;
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v8 = [v19 availability];
  v6 = AccessibilityLabelForAvailabilityType(v8);
  v9 = ImageForAvailabilityType(v8);
  p_image = &self->_image;
  [(UIImageView *)self->_image setImage:v9];

  v10 = [MEMORY[0x1E69DC888] systemGray4Color];
  [(UIImageView *)self->_image setTintColor:v10];

  v11 = 0;
LABEL_11:
  [(UIImageView *)*p_image setHidden:v11];
LABEL_12:
  v12 = [v19 location];
  v13 = [v12 displayName];
  [(UILabel *)self->_title setText:v13];

  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Conference Search Result Accessibility Label Format" value:@"%@ table:{%@", 0}];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(UILabel *)self->_title text];
  v18 = [v16 localizedStringWithFormat:v15, v6, v17];
  [(EKUIConferenceRoomSearchResultCell *)self setAccessibilityLabel:v18];
}

@end