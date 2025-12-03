@interface CuratedCollectionItemTableViewCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CuratedCollectionItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CuratedCollectionItemTableViewCellDelegate)delegate;
- (id)menuForAddButton;
- (void)_createSubviews;
- (void)_loadImageIfNeeded;
- (void)_loadPOIImage;
- (void)_setupConstraints;
- (void)_tappedAddOrRemoveFromLibraryButton:(id)button;
- (void)_tappedAddToUserCollection:(id)collection;
- (void)_tappedAddToUserCollectionButton:(id)button;
- (void)_tappedAppClip;
- (void)addToUserCollection:(id)collection;
- (void)configureWithModel:(id)model;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setupReviewLabel;
@end

@implementation CuratedCollectionItemTableViewCell

- (CuratedCollectionItemTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  viewCopy = view;
  reviewTextView = [(CuratedCollectionItemTableViewCell *)self reviewTextView];

  if (!interaction && reviewTextView == viewCopy)
  {
    delegate = [(CuratedCollectionItemTableViewCell *)self delegate];
    model = [(CuratedCollectionItemTableViewCell *)self model];
    collectionItem = [model collectionItem];
    [delegate willPunchOutToPublisherWebpageForPlaceCollectionItem:collectionItem];
  }

  return 1;
}

- (void)setupReviewLabel
{
  v3 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CuratedCollectionItemTableViewCell *)self setReviewTextView:v3];

  v28 = NSForegroundColorAttributeName;
  mk_theme = [(CuratedCollectionItemTableViewCell *)self mk_theme];
  tintColor = [mk_theme tintColor];
  v29 = tintColor;
  v6 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  reviewTextView = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView setLinkTextAttributes:v6];

  reviewTextView2 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView2 setTextAlignment:4];

  reviewTextView3 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView3 setDelegate:self];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  reviewTextView4 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView4 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  reviewTextView5 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  textContainer = [reviewTextView5 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  reviewTextView6 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  reviewTextView7 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView7 setDataDetectorTypes:2];

  reviewTextView8 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView8 setUserInteractionEnabled:1];

  reviewTextView9 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView9 setSelectable:1];

  reviewTextView10 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView10 setEditable:0];

  reviewTextView11 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView11 setScrollEnabled:0];

  v22 = +[UIColor clearColor];
  reviewTextView12 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView12 setBackgroundColor:v22];

  reviewTextView13 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView13 setHidden:1];

  reviewTextView14 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView14 setAccessibilityIdentifier:@"ReviewTextView"];

  stackView = [(CuratedCollectionItemTableViewCell *)self stackView];
  reviewTextView15 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [stackView addArrangedSubview:reviewTextView15];
}

- (void)_tappedAppClip
{
  delegate = [(CuratedCollectionItemTableViewCell *)self delegate];
  appClip = [(CuratedCollectionItemCellModel *)self->_model appClip];
  [delegate openAppClip:appClip];
}

- (id)menuForAddButton
{
  model = [(CuratedCollectionItemTableViewCell *)self model];
  collectionItem = [model collectionItem];
  mapItem = [collectionItem mapItem];

  v5 = +[CollectionManager sharedManager];
  collectionsForAddingMapItems = [v5 collectionsForAddingMapItems];

  v7 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = collectionsForAddingMapItems;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        title = [v11 title];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100D7697C;
        v20[3] = &unk_101660418;
        objc_copyWeak(&v21, &location);
        v20[4] = v11;
        v13 = [UIAction actionWithTitle:title image:0 identifier:0 handler:v20];

        if ([v11 containsItem:mapItem])
        {
          [v13 setAttributes:1];
        }

        [v7 addObject:v13];

        objc_destroyWeak(&v21);
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  if ([v7 count])
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"[Curated Guide View] Save to Guides" value:@"localized string not found" table:0];
    v16 = [UIMenu menuWithTitle:v15 children:v7];
  }

  else
  {
    v16 = 0;
  }

  objc_destroyWeak(&location);

  return v16;
}

- (void)_tappedAddToUserCollection:(id)collection
{
  collectionCopy = collection;
  delegate = [(CuratedCollectionItemTableViewCell *)self delegate];
  model = [(CuratedCollectionItemTableViewCell *)self model];
  collectionItem = [model collectionItem];
  mapItem = [collectionItem mapItem];
  addToLibraryOrUserCollectionsButton = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D76AD4;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  [delegate didSelectAddToUserCollection:collectionCopy forMapItem:mapItem sourceView:addToLibraryOrUserCollectionsButton onSaveCompletion:v10];
}

- (void)_tappedAddOrRemoveFromLibraryButton:(id)button
{
  model = [(CuratedCollectionItemTableViewCell *)self model];

  if (model)
  {
    delegate = [(CuratedCollectionItemTableViewCell *)self delegate];
    model2 = [(CuratedCollectionItemTableViewCell *)self model];
    isItemInLibrary = [model2 isItemInLibrary];
    model3 = [(CuratedCollectionItemTableViewCell *)self model];
    [delegate didSelectAddOrRemoveFromLibrary:isItemInLibrary ^ 1 forModel:model3];
  }
}

- (void)_tappedAddToUserCollectionButton:(id)button
{
  buttonCopy = button;
  delegate = [(CuratedCollectionItemTableViewCell *)self delegate];
  model = [(CuratedCollectionItemTableViewCell *)self model];
  collectionItem = [model collectionItem];
  mapItem = [collectionItem mapItem];
  [delegate didSelectAddToUserCollection:0 forMapItem:mapItem sourceView:buttonCopy onSaveCompletion:0];
}

- (void)addToUserCollection:(id)collection
{
  delegate = [(CuratedCollectionItemTableViewCell *)self delegate];
  model = [(CuratedCollectionItemTableViewCell *)self model];
  collectionItem = [model collectionItem];
  mapItem = [collectionItem mapItem];
  addToLibraryOrUserCollectionsButton = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  [delegate didSelectAddToUserCollection:0 forMapItem:mapItem sourceView:addToLibraryOrUserCollectionsButton onSaveCompletion:0];
}

- (void)_setupConstraints
{
  contentView = [(CuratedCollectionItemTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  topAnchor2 = [(CuratedCollectionItemTableViewCell *)self topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v53[0] = v49;
  contentView2 = [(CuratedCollectionItemTableViewCell *)self contentView];
  leadingAnchor = [contentView2 leadingAnchor];
  leadingAnchor2 = [(CuratedCollectionItemTableViewCell *)self leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[1] = v45;
  contentView3 = [(CuratedCollectionItemTableViewCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [(CuratedCollectionItemTableViewCell *)self trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[2] = v41;
  contentView4 = [(CuratedCollectionItemTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  bottomAnchor2 = [(CuratedCollectionItemTableViewCell *)self bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[3] = v37;
  stackView = [(CuratedCollectionItemTableViewCell *)self stackView];
  topAnchor3 = [stackView topAnchor];
  contentView5 = [(CuratedCollectionItemTableViewCell *)self contentView];
  topAnchor4 = [contentView5 topAnchor];
  v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
  v53[4] = v32;
  stackView2 = [(CuratedCollectionItemTableViewCell *)self stackView];
  leadingAnchor3 = [stackView2 leadingAnchor];
  contentView6 = [(CuratedCollectionItemTableViewCell *)self contentView];
  leadingAnchor4 = [contentView6 leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v53[5] = v27;
  stackView3 = [(CuratedCollectionItemTableViewCell *)self stackView];
  trailingAnchor3 = [stackView3 trailingAnchor];
  contentView7 = [(CuratedCollectionItemTableViewCell *)self contentView];
  trailingAnchor4 = [contentView7 trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v53[6] = v22;
  stackView4 = [(CuratedCollectionItemTableViewCell *)self stackView];
  bottomAnchor3 = [stackView4 bottomAnchor];
  contentView8 = [(CuratedCollectionItemTableViewCell *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
  v53[7] = v17;
  addToLibraryOrUserCollectionsButton = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  widthAnchor = [addToLibraryOrUserCollectionsButton widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:37.0];
  v53[8] = v14;
  addToLibraryOrUserCollectionsButton2 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  heightAnchor = [addToLibraryOrUserCollectionsButton2 heightAnchor];
  addToLibraryOrUserCollectionsButton3 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  widthAnchor2 = [addToLibraryOrUserCollectionsButton3 widthAnchor];
  v6 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v53[9] = v6;
  itemImageView = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  heightAnchor2 = [itemImageView heightAnchor];
  itemImageView2 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  widthAnchor3 = [itemImageView2 widthAnchor];
  v11 = [heightAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:0.670000017];
  v53[10] = v11;
  v12 = [NSArray arrayWithObjects:v53 count:11];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(CuratedCollectionItemTableViewCell *)self setBackgroundColor:v3];

  v4 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionItemTableViewCell *)self setStackView:v8];

  stackView = [(CuratedCollectionItemTableViewCell *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(CuratedCollectionItemTableViewCell *)self stackView];
  [stackView2 setAxis:1];

  stackView3 = [(CuratedCollectionItemTableViewCell *)self stackView];
  [stackView3 setDistribution:3];

  stackView4 = [(CuratedCollectionItemTableViewCell *)self stackView];
  [stackView4 setAlignment:0];

  stackView5 = [(CuratedCollectionItemTableViewCell *)self stackView];
  [stackView5 setSpacing:16.0];

  stackView6 = [(CuratedCollectionItemTableViewCell *)self stackView];
  [stackView6 setAccessibilityIdentifier:@"StackView"];

  contentView = [(CuratedCollectionItemTableViewCell *)self contentView];
  stackView7 = [(CuratedCollectionItemTableViewCell *)self stackView];
  [contentView addSubview:stackView7];

  height = [[CuratedCollectionItemImageWithAttributionView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(CuratedCollectionItemTableViewCell *)self setItemImageView:height];

  itemImageView = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  itemImageView2 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView2 setClipsToBounds:1];

  itemImageView3 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView3 _setContinuousCornerRadius:8.0];

  itemImageView4 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView4 setHidden:1];

  itemImageView5 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView5 setAccessibilityIdentifier:@"ItemImageView"];

  stackView8 = [(CuratedCollectionItemTableViewCell *)self stackView];
  itemImageView6 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [stackView8 addArrangedSubview:itemImageView6];

  v25 = objc_alloc_init(CuratedCollectionItemPOIIconImageView);
  [(CuratedCollectionItemTableViewCell *)self setPoiIconImageView:v25];

  poiIconImageView = [(CuratedCollectionItemTableViewCell *)self poiIconImageView];
  [poiIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  poiIconImageView2 = [(CuratedCollectionItemTableViewCell *)self poiIconImageView];
  [poiIconImageView2 setAccessibilityIdentifier:@"POIIconImageView"];

  stackView9 = [(CuratedCollectionItemTableViewCell *)self stackView];
  poiIconImageView3 = [(CuratedCollectionItemTableViewCell *)self poiIconImageView];
  [stackView9 addArrangedSubview:poiIconImageView3];

  v30 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionItemTableViewCell *)self setPlaceSummaryContainerStackView:v30];

  placeSummaryContainerStackView = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  [placeSummaryContainerStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  placeSummaryContainerStackView2 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  [placeSummaryContainerStackView2 setAxis:0];

  placeSummaryContainerStackView3 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  [placeSummaryContainerStackView3 setDistribution:3];

  placeSummaryContainerStackView4 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  [placeSummaryContainerStackView4 setAlignment:1];

  placeSummaryContainerStackView5 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  [placeSummaryContainerStackView5 setSpacing:8.0];

  placeSummaryContainerStackView6 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  [placeSummaryContainerStackView6 setAccessibilityIdentifier:@"PlaceSummaryContainerStackView"];

  stackView10 = [(CuratedCollectionItemTableViewCell *)self stackView];
  placeSummaryContainerStackView7 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  [stackView10 addArrangedSubview:placeSummaryContainerStackView7];

  height2 = [[CuratedCollectionPlaceSummaryView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(CuratedCollectionItemTableViewCell *)self setPlaceSummaryView:height2];

  placeSummaryView = [(CuratedCollectionItemTableViewCell *)self placeSummaryView];
  [placeSummaryView setTranslatesAutoresizingMaskIntoConstraints:0];

  placeSummaryContainerStackView8 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  placeSummaryView2 = [(CuratedCollectionItemTableViewCell *)self placeSummaryView];
  [placeSummaryContainerStackView8 addArrangedSubview:placeSummaryView2];

  v43 = [UIButton buttonWithType:0];
  [(CuratedCollectionItemTableViewCell *)self setAddToLibraryOrUserCollectionsButton:v43];

  if (sub_10000FA08(self) == 5)
  {
    v44 = [UIImage systemImageNamed:@"plus.circle"];
    v94 = [v44 imageWithRenderingMode:2];

    addToLibraryOrUserCollectionsButton = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
    v46 = +[UIFont system20];
    v47 = [UIImageSymbolConfiguration configurationWithFont:v46];
    [addToLibraryOrUserCollectionsButton setPreferredSymbolConfiguration:v47 forImageInState:0];

    v48 = +[UIColor _maps_keyColor];
    addToLibraryOrUserCollectionsButton2 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
    [addToLibraryOrUserCollectionsButton2 setTintColor:v48];

    LODWORD(addToLibraryOrUserCollectionsButton2) = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    addToLibraryOrUserCollectionsButton3 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
    addToLibraryOrUserCollectionsButton7 = addToLibraryOrUserCollectionsButton3;
    if (addToLibraryOrUserCollectionsButton2)
    {
      v52 = "_tappedAddOrRemoveFromLibraryButton:";
    }

    else
    {
      [addToLibraryOrUserCollectionsButton3 setContextMenuInteractionEnabled:1];

      addToLibraryOrUserCollectionsButton4 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
      [addToLibraryOrUserCollectionsButton4 setShowsMenuAsPrimaryAction:1];

      addToLibraryOrUserCollectionsButton3 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
      addToLibraryOrUserCollectionsButton7 = addToLibraryOrUserCollectionsButton3;
      v52 = "_tappedAddToUserCollectionButton:";
    }

    [addToLibraryOrUserCollectionsButton3 addTarget:self action:v52 forControlEvents:64];
  }

  else
  {
    v53 = [UIImage systemImageNamed:@"plus"];
    v94 = [v53 imageWithRenderingMode:2];

    LODWORD(v53) = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    addToLibraryOrUserCollectionsButton5 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
    v55 = addToLibraryOrUserCollectionsButton5;
    v56 = &selRef__tappedAddOrRemoveFromLibraryButton_;
    if (!v53)
    {
      v56 = &selRef__tappedAddToUserCollectionButton_;
    }

    [addToLibraryOrUserCollectionsButton5 addTarget:self action:*v56 forControlEvents:64];

    v57 = +[UIColor tertiarySystemFillColor];
    addToLibraryOrUserCollectionsButton6 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
    [addToLibraryOrUserCollectionsButton6 setBackgroundColor:v57];

    addToLibraryOrUserCollectionsButton7 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
    layer = [addToLibraryOrUserCollectionsButton7 layer];
    [layer setCornerRadius:18.5];
  }

  addToLibraryOrUserCollectionsButton8 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  [addToLibraryOrUserCollectionsButton8 setImage:v94 forState:0];

  addToLibraryOrUserCollectionsButton9 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  [addToLibraryOrUserCollectionsButton9 setTranslatesAutoresizingMaskIntoConstraints:0];

  addToLibraryOrUserCollectionsButton10 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  [addToLibraryOrUserCollectionsButton10 setAccessibilityIdentifier:@"AddToUserCollectionsButton"];

  placeSummaryContainerStackView9 = [(CuratedCollectionItemTableViewCell *)self placeSummaryContainerStackView];
  addToLibraryOrUserCollectionsButton11 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  [placeSummaryContainerStackView9 addArrangedSubview:addToLibraryOrUserCollectionsButton11];

  v66 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionItemTableViewCell *)self setItemDescriptionTextView:v66];

  itemDescriptionTextView = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  itemDescriptionTextView2 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView2 setDelegate:self];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  itemDescriptionTextView3 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView3 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  itemDescriptionTextView4 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  textContainer = [itemDescriptionTextView4 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  itemDescriptionTextView5 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView5 setUserInteractionEnabled:1];

  itemDescriptionTextView6 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView6 setSelectable:1];

  itemDescriptionTextView7 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView7 setEditable:0];

  itemDescriptionTextView8 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView8 setScrollEnabled:0];

  v79 = +[UIColor clearColor];
  itemDescriptionTextView9 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView9 setBackgroundColor:v79];

  itemDescriptionTextView10 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView10 setHidden:1];

  itemDescriptionTextView11 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView11 setAccessibilityIdentifier:@"ItemDescriptionTextView"];

  stackView11 = [(CuratedCollectionItemTableViewCell *)self stackView];
  itemDescriptionTextView12 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [stackView11 addArrangedSubview:itemDescriptionTextView12];

  [(CuratedCollectionItemTableViewCell *)self setupReviewLabel];
  height3 = [[CuratedCollectionItemAppClipView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(CuratedCollectionItemTableViewCell *)self setAppClipView:height3];

  appClipView = [(CuratedCollectionItemTableViewCell *)self appClipView];
  [appClipView setTranslatesAutoresizingMaskIntoConstraints:0];

  appClipView2 = [(CuratedCollectionItemTableViewCell *)self appClipView];
  [appClipView2 setUserInteractionEnabled:1];

  appClipView3 = [(CuratedCollectionItemTableViewCell *)self appClipView];
  [appClipView3 setHidden:1];

  stackView12 = [(CuratedCollectionItemTableViewCell *)self stackView];
  appClipView4 = [(CuratedCollectionItemTableViewCell *)self appClipView];
  [stackView12 addArrangedSubview:appClipView4];

  v91 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tappedAppClip"];
  [(CuratedCollectionItemTableViewCell *)self setAppClipTapGestureRecognizer:v91];

  appClipView5 = [(CuratedCollectionItemTableViewCell *)self appClipView];
  appClipTapGestureRecognizer = [(CuratedCollectionItemTableViewCell *)self appClipTapGestureRecognizer];
  [appClipView5 addGestureRecognizer:appClipTapGestureRecognizer];
}

- (void)_loadPOIImage
{
  model = [(CuratedCollectionItemTableViewCell *)self model];
  objc_initWeak(&location, self);
  v4 = +[MapsUIImageCache sharedCache];
  model2 = [(CuratedCollectionItemTableViewCell *)self model];
  collectionItem = [model2 collectionItem];
  mapItem = [collectionItem mapItem];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D77F1C;
  v9[3] = &unk_1016612F0;
  objc_copyWeak(&v11, &location);
  v8 = model;
  v10 = v8;
  [v4 getImageForMapItem:mapItem completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_loadImageIfNeeded
{
  itemImageView = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView frame];
  v5 = v4;
  v7 = v6;
  height = CGSizeZero.height;

  if (v5 == CGSizeZero.width && v7 == height)
  {

    [(CuratedCollectionItemTableViewCell *)self setNeedsLayout];
  }

  else if (self->_needsImageLoad)
  {
    self->_needsImageLoad = 0;
    model = [(CuratedCollectionItemTableViewCell *)self model];
    objc_initWeak(&location, self);
    itemImageView2 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
    [itemImageView2 frame];
    v13 = v12;
    v15 = v14;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100D7817C;
    v17[3] = &unk_1016531A0;
    objc_copyWeak(&v19, &location);
    v16 = model;
    v18 = v16;
    [v16 loadImageForSize:v17 completion:{v13, v15}];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  [(CuratedCollectionItemTableViewCell *)self setModel:modelCopy];
  placeSummaryView = [(CuratedCollectionItemTableViewCell *)self placeSummaryView];
  placeSummaryModel = [modelCopy placeSummaryModel];
  [placeSummaryView configureWithModel:placeSummaryModel];

  itemDescription = [modelCopy itemDescription];
  v7 = [itemDescription length];

  if (v7)
  {
    itemDescriptionTextView = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
    [itemDescriptionTextView setHidden:0];

    itemDescription2 = [modelCopy itemDescription];
    itemDescriptionTextView2 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
    [itemDescriptionTextView2 setAttributedText:itemDescription2];

    v11 = +[UIColor labelColor];
    itemDescriptionTextView3 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
    [itemDescriptionTextView3 setTextColor:v11];
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    isItemInLibrary = [modelCopy isItemInLibrary];
  }

  else
  {
    isItemInLibrary = [modelCopy isItemInUserCollection];
  }

  v14 = isItemInLibrary;
  v15 = sub_10000FA08(self);
  v16 = @"plus";
  if (v14)
  {
    v16 = @"checkmark";
  }

  v17 = @"checkmark.circle";
  if (!v14)
  {
    v17 = @"plus.circle";
  }

  if (v15 == 5)
  {
    v16 = v17;
  }

  v18 = v16;
  v19 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:17.0];
  v20 = [UIImage systemImageNamed:v18 withConfiguration:v19];
  v21 = [v20 imageWithRenderingMode:2];

  addToLibraryOrUserCollectionsButton = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
  [addToLibraryOrUserCollectionsButton setImage:v21 forState:0];

  fullReviewString = [modelCopy fullReviewString];
  v24 = [fullReviewString length];

  if (v24)
  {
    reviewTextView = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
    [reviewTextView setHidden:0];

    fullReviewString2 = [modelCopy fullReviewString];
    reviewTextView2 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
    [reviewTextView2 setAttributedText:fullReviewString2];
  }

  if ([modelCopy hasImage])
  {
    itemImageView = [(CuratedCollectionItemTableViewCell *)self itemImageView];
    [itemImageView setHidden:0];

    imageAttribution = [modelCopy imageAttribution];
    itemImageView2 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
    [itemImageView2 setAttributionString:imageAttribution];

    self->_needsImageLoad = 1;
    [(CuratedCollectionItemTableViewCell *)self _loadImageIfNeeded];
  }

  if (sub_10000FA08(self) == 5 && !+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    menuForAddButton = [(CuratedCollectionItemTableViewCell *)self menuForAddButton];
    addToLibraryOrUserCollectionsButton2 = [(CuratedCollectionItemTableViewCell *)self addToLibraryOrUserCollectionsButton];
    [addToLibraryOrUserCollectionsButton2 setMenu:menuForAddButton];
  }

  [(CuratedCollectionItemTableViewCell *)self _loadPOIImage];
  appClip = [modelCopy appClip];

  if (appClip)
  {
    v34 = [CuratedCollectionItemAppStoreAppClipViewModel alloc];
    appClip2 = [modelCopy appClip];
    v36 = [(CuratedCollectionItemAppStoreAppClipViewModel *)v34 initWithAppStoreAppClip:appClip2];

    [(CuratedCollectionItemAppClipView *)self->_appClipView setViewModel:v36];
    [(CuratedCollectionItemAppClipView *)self->_appClipView setHidden:0];
  }

  else
  {
    [(CuratedCollectionItemAppClipView *)self->_appClipView setHidden:1];
  }

  stackView = [(CuratedCollectionItemTableViewCell *)self stackView];
  [stackView setNeedsLayout];

  [(CuratedCollectionItemTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v11.receiver = self;
  v11.super_class = CuratedCollectionItemTableViewCell;
  [(CuratedCollectionItemTableViewCell *)&v11 prepareForReuse];
  self->_needsImageLoad = 0;
  itemImageView = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView setImage:0];

  itemImageView2 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView2 setAttributionString:0];

  itemImageView3 = [(CuratedCollectionItemTableViewCell *)self itemImageView];
  [itemImageView3 setHidden:1];

  itemDescriptionTextView = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView setAttributedText:0];

  itemDescriptionTextView2 = [(CuratedCollectionItemTableViewCell *)self itemDescriptionTextView];
  [itemDescriptionTextView2 setHidden:1];

  reviewTextView = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView setText:0];

  reviewTextView2 = [(CuratedCollectionItemTableViewCell *)self reviewTextView];
  [reviewTextView2 setHidden:1];

  poiIconImageView = [(CuratedCollectionItemTableViewCell *)self poiIconImageView];
  [poiIconImageView setImage:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionItemTableViewCell;
  [(CuratedCollectionItemTableViewCell *)&v3 layoutSubviews];
  [(CuratedCollectionItemTableViewCell *)self _loadImageIfNeeded];
  [(CuratedCollectionItemTableViewCell *)self _loadPOIImage];
}

- (CuratedCollectionItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CuratedCollectionItemTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CuratedCollectionItemTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(CuratedCollectionItemTableViewCell *)v5 setAccessibilityIdentifier:v7];

    [(CuratedCollectionItemTableViewCell *)v5 _createSubviews];
    [(CuratedCollectionItemTableViewCell *)v5 _setupConstraints];
  }

  return v5;
}

@end