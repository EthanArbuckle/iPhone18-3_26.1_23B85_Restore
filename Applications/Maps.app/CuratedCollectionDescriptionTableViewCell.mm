@interface CuratedCollectionDescriptionTableViewCell
- (BOOL)expanded;
- (CuratedCollectionDescriptionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CuratedCollectionDescriptionTableViewCellDelegate)delegate;
- (void)_createSubviews;
- (void)_descriptionLabelDidExpand;
- (void)_publisherLogoTapped;
- (void)_setupConstraints;
- (void)_updateColorsAnimated:(BOOL)animated;
- (void)_updateFonts;
- (void)configureWithModel:(id)model;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setAlwaysUseLightForegroundColors:(BOOL)colors animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CuratedCollectionDescriptionTableViewCell

- (CuratedCollectionDescriptionTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_publisherLogoTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cellPublisherLogoTapped:self];
}

- (void)_descriptionLabelDidExpand
{
  descriptionLabel = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  if ([descriptionLabel isExpanded])
  {
  }

  else
  {
    descriptionLabel2 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
    isShowingExpanded = [descriptionLabel2 isShowingExpanded];

    if (isShowingExpanded)
    {
      return;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cellExpansionOccured:self];
}

- (BOOL)expanded
{
  descriptionLabel = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  isExpanded = [descriptionLabel isExpanded];

  return isExpanded;
}

- (void)setAlwaysUseLightForegroundColors:(BOOL)colors animated:(BOOL)animated
{
  if (self->_alwaysUseLightForegroundColors != colors)
  {
    self->_alwaysUseLightForegroundColors = colors;
    [(CuratedCollectionDescriptionTableViewCell *)self _updateColorsAnimated:animated];
  }
}

- (void)_updateColorsAnimated:(BOOL)animated
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1008D791C;
  v11[3] = &unk_10162DB98;
  animatedCopy = animated;
  v4 = objc_retainBlock(v11);
  descriptionLabel = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1008D795C;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  (v4[2])(v4, descriptionLabel, v10);

  authorLabel = [(CuratedCollectionDescriptionTableViewCell *)self authorLabel];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1008D7AB4;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  (v4[2])(v4, authorLabel, v9);

  metadataLabel = [(CuratedCollectionDescriptionTableViewCell *)self metadataLabel];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008D7B44;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  (v4[2])(v4, metadataLabel, v8);
}

- (void)_updateFonts
{
  v3 = sub_10000FA08(self);
  v4 = +[UIFont system17];
  descriptionLabel = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel setFont:v4];

  v6 = +[UIFont system17SemiBold];
  descriptionLabel2 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel2 setShowMoreFont:v6];

  v8 = +[UIFont system17SemiBold];
  descriptionLabel3 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel3 setShowLessFont:v8];

  if (v3 == 5)
  {
    v10 = +[UIFont system15Tall];
    authorLabel = [(CuratedCollectionDescriptionTableViewCell *)self authorLabel];
    [authorLabel setFont:v10];

    +[UIFont system15Tall];
  }

  else
  {
    v12 = +[UIFont system15];
    authorLabel2 = [(CuratedCollectionDescriptionTableViewCell *)self authorLabel];
    [authorLabel2 setFont:v12];

    +[UIFont system15];
  }
  v15 = ;
  metadataLabel = [(CuratedCollectionDescriptionTableViewCell *)self metadataLabel];
  [metadataLabel setFont:v15];
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  model = [(CuratedCollectionDescriptionTableViewCell *)self model];

  if (model != modelCopy)
  {
    authorImageView = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
    [authorImageView setImage:0];

    [(CuratedCollectionDescriptionTableViewCell *)self setModel:modelCopy];
    model2 = [(CuratedCollectionDescriptionTableViewCell *)self model];
    collectionDescription = [model2 collectionDescription];
    descriptionLabel = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
    [descriptionLabel setAttributedText:collectionDescription];

    model3 = [(CuratedCollectionDescriptionTableViewCell *)self model];
    authorName = [model3 authorName];
    authorLabel = [(CuratedCollectionDescriptionTableViewCell *)self authorLabel];
    [authorLabel setText:authorName];

    model4 = [(CuratedCollectionDescriptionTableViewCell *)self model];
    collectionMetadata = [model4 collectionMetadata];
    metadataLabel = [(CuratedCollectionDescriptionTableViewCell *)self metadataLabel];
    [metadataLabel setText:collectionMetadata];

    authorImageView2 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
    [authorImageView2 setHidden:0];

    [(CuratedCollectionDescriptionTableViewCell *)self _updateColorsAnimated:0];
    objc_initWeak(&location, self);
    model5 = [(CuratedCollectionDescriptionTableViewCell *)self model];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1008D7F94;
    v18[3] = &unk_10162DB78;
    objc_copyWeak(&v20, &location);
    v19 = modelCopy;
    [model5 loadAuthorImageForSize:v18 completion:{30.0, 30.0}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)_setupConstraints
{
  contentLayoutGuide = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  topAnchor = [contentLayoutGuide topAnchor];
  contentView = [(CuratedCollectionDescriptionTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v56[0] = v51;
  contentLayoutGuide2 = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide2 leadingAnchor];
  contentView2 = [(CuratedCollectionDescriptionTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v56[1] = v46;
  contentLayoutGuide3 = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  trailingAnchor = [contentLayoutGuide3 trailingAnchor];
  contentView3 = [(CuratedCollectionDescriptionTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v56[2] = v41;
  contentLayoutGuide4 = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  bottomAnchor = [contentLayoutGuide4 bottomAnchor];
  contentView4 = [(CuratedCollectionDescriptionTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v56[3] = v36;
  stackView = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  topAnchor3 = [stackView topAnchor];
  contentLayoutGuide5 = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  topAnchor4 = [contentLayoutGuide5 topAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v56[4] = v31;
  stackView2 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  leadingAnchor3 = [stackView2 leadingAnchor];
  contentLayoutGuide6 = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  leadingAnchor4 = [contentLayoutGuide6 leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v56[5] = v26;
  stackView3 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  trailingAnchor3 = [stackView3 trailingAnchor];
  contentLayoutGuide7 = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  trailingAnchor4 = [contentLayoutGuide7 trailingAnchor];
  v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[6] = v21;
  contentLayoutGuide8 = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  bottomAnchor3 = [contentLayoutGuide8 bottomAnchor];
  v18 = bottomAnchor3;
  stackView4 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  bottomAnchor4 = [stackView4 bottomAnchor];
  v5 = sub_10000FA08(self);
  v6 = 22.0;
  if (v5 == 5)
  {
    v6 = 16.0;
  }

  v7 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:{v6, bottomAnchor4}];
  v56[7] = v7;
  authorImageView = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  widthAnchor = [authorImageView widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:30.0];
  v56[8] = v10;
  authorImageView2 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  heightAnchor = [authorImageView2 heightAnchor];
  authorImageView3 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  widthAnchor2 = [authorImageView3 widthAnchor];
  v15 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v56[9] = v15;
  v16 = [NSArray arrayWithObjects:v56 count:10];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(CuratedCollectionDescriptionTableViewCell *)self setBackgroundColor:v3];

  v4 = objc_alloc_init(UILayoutGuide);
  [(CuratedCollectionDescriptionTableViewCell *)self setContentLayoutGuide:v4];

  contentView = [(CuratedCollectionDescriptionTableViewCell *)self contentView];
  contentLayoutGuide = [(CuratedCollectionDescriptionTableViewCell *)self contentLayoutGuide];
  [contentView addLayoutGuide:contentLayoutGuide];

  v7 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionDescriptionTableViewCell *)self setStackView:v11];

  stackView = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [stackView2 setAxis:1];

  stackView3 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [stackView3 setDistribution:3];

  stackView4 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [stackView4 setAlignment:0];

  if (sub_10000FA08(self) == 5)
  {
    v16 = 12.0;
  }

  else
  {
    v16 = 16.0;
  }

  stackView5 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [stackView5 setSpacing:v16];

  stackView6 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [stackView6 setAccessibilityIdentifier:@"StackView"];

  contentView2 = [(CuratedCollectionDescriptionTableViewCell *)self contentView];
  stackView7 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [contentView2 addSubview:stackView7];

  v21 = [[MUExpandingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionDescriptionTableViewCell *)self setDescriptionLabel:v21];

  descriptionLabel = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  descriptionLabel2 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel2 setNumberOfLinesWhenCollapsed:3];

  descriptionLabel3 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel3 setEditable:0];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"[Curated Collections] Show More" value:@"localized string not found" table:0];
  descriptionLabel4 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel4 setShowMoreText:v26];

  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"[Curated Collections] Show Less" value:@"localized string not found" table:0];
  descriptionLabel5 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel5 setShowLessText:v29];

  descriptionLabel6 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel6 setAllowLessText:1];

  objc_initWeak(&location, self);
  objc_copyWeak(&v60, &location);
  v32 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel:_NSConcreteStackBlock];
  [v32 setLabelResizedBlock:&v59];

  descriptionLabel7 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [descriptionLabel7 setAccessibilityIdentifier:@"DescriptionLabel"];

  stackView8 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  descriptionLabel8 = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
  [stackView8 addArrangedSubview:descriptionLabel8];

  v36 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setAxis:0];
  [v36 setDistribution:0];
  [v36 setAlignment:3];
  [v36 setSpacing:8.0];
  [v36 setUserInteractionEnabled:1];
  [v36 setAccessibilityIdentifier:@"AuthorImageStackView"];
  stackView9 = [(CuratedCollectionDescriptionTableViewCell *)self stackView];
  [stackView9 addArrangedSubview:v36];

  v38 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_publisherLogoTapped"];
  [(CuratedCollectionDescriptionTableViewCell *)self setPublisherTapGestureRecognizer:v38];

  publisherTapGestureRecognizer = [(CuratedCollectionDescriptionTableViewCell *)self publisherTapGestureRecognizer];
  [v36 addGestureRecognizer:publisherTapGestureRecognizer];

  v40 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionDescriptionTableViewCell *)self setAuthorImageView:v40];

  authorImageView = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  [authorImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  authorImageView2 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  [authorImageView2 setContentMode:2];

  authorImageView3 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  [authorImageView3 setClipsToBounds:1];

  authorImageView4 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  [authorImageView4 _setCornerRadius:15.0];

  theme = [(CuratedCollectionDescriptionTableViewCell *)self theme];
  imageBackgroundColor = [theme imageBackgroundColor];
  authorImageView5 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  [authorImageView5 setBackgroundColor:imageBackgroundColor];

  authorImageView6 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  [authorImageView6 setAccessibilityIdentifier:@"AuthorImageView"];

  authorImageView7 = [(CuratedCollectionDescriptionTableViewCell *)self authorImageView];
  [v36 addArrangedSubview:authorImageView7];

  v50 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v50 setAxis:1];
  [v50 setDistribution:3];
  [v50 setAlignment:0];
  [v50 setAccessibilityIdentifier:@"LabelStackView"];
  [v36 addArrangedSubview:v50];
  v51 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionDescriptionTableViewCell *)self setAuthorLabel:v51];

  authorLabel = [(CuratedCollectionDescriptionTableViewCell *)self authorLabel];
  [authorLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  authorLabel2 = [(CuratedCollectionDescriptionTableViewCell *)self authorLabel];
  [authorLabel2 setAccessibilityIdentifier:@"AuthorLabel"];

  authorLabel3 = [(CuratedCollectionDescriptionTableViewCell *)self authorLabel];
  [v50 addArrangedSubview:authorLabel3];

  v55 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionDescriptionTableViewCell *)self setMetadataLabel:v55];

  metadataLabel = [(CuratedCollectionDescriptionTableViewCell *)self metadataLabel];
  [metadataLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  metadataLabel2 = [(CuratedCollectionDescriptionTableViewCell *)self metadataLabel];
  [metadataLabel2 setAccessibilityIdentifier:@"MetadataLabel"];

  metadataLabel3 = [(CuratedCollectionDescriptionTableViewCell *)self metadataLabel];
  [v50 addArrangedSubview:metadataLabel3];

  [(CuratedCollectionDescriptionTableViewCell *)self _updateFonts];
  [(CuratedCollectionDescriptionTableViewCell *)self _updateColorsAnimated:0];

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = CuratedCollectionDescriptionTableViewCell;
  changeCopy = change;
  [(MapsThemeTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(CuratedCollectionDescriptionTableViewCell *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(CuratedCollectionDescriptionTableViewCell *)self _updateFonts];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  delegate = [(CuratedCollectionDescriptionTableViewCell *)self delegate];
  if (delegate)
  {
    anyObject = [endedCopy anyObject];
    v10 = [anyObject key];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 keyCode] != 40)
  {
    goto LABEL_7;
  }

  if (([v10 modifierFlags] & 0x100000) != 0)
  {
    descriptionLabel = [(CuratedCollectionDescriptionTableViewCell *)self descriptionLabel];
    [descriptionLabel setExpanded:{-[CuratedCollectionDescriptionTableViewCell expanded](self, "expanded") ^ 1}];

    if ([v10 modifierFlags])
    {
      goto LABEL_10;
    }

LABEL_9:
    [(CuratedCollectionDescriptionTableViewCell *)self _publisherLogoTapped];
    goto LABEL_10;
  }

  if (![v10 modifierFlags])
  {
    goto LABEL_9;
  }

LABEL_7:
  v12.receiver = self;
  v12.super_class = CuratedCollectionDescriptionTableViewCell;
  [(CuratedCollectionDescriptionTableViewCell *)&v12 pressesEnded:endedCopy withEvent:eventCopy];
LABEL_10:
}

- (CuratedCollectionDescriptionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CuratedCollectionDescriptionTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CuratedCollectionDescriptionTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(CuratedCollectionDescriptionTableViewCell *)v5 setAccessibilityIdentifier:v7];

    [(CuratedCollectionDescriptionTableViewCell *)v5 _createSubviews];
    [(CuratedCollectionDescriptionTableViewCell *)v5 _setupConstraints];
  }

  return v5;
}

@end