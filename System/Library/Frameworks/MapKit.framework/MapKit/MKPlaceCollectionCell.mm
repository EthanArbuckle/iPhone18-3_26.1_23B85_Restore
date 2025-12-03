@interface MKPlaceCollectionCell
- (BOOL)canBecomeFirstResponder;
- (CGSize)sizeForSavedPill;
- (MKPlaceCollectionCell)initWithFrame:(CGRect)frame;
- (void)addCollectionNameView;
- (void)addPublisherLogoImage;
- (void)addSavedCollectionView;
- (void)prepareForReuse;
- (void)setImageMetadata;
- (void)setTextMetadata;
- (void)setUpCellUsingModel:(id)model;
- (void)setupAccessibility;
- (void)setupCollectionImage;
- (void)setupConstraints;
- (void)setupCornerRadius;
- (void)setupShadows;
- (void)setupStackView;
- (void)setupSubviews;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
@end

@implementation MKPlaceCollectionCell

- (void)setImageMetadata
{
  v29 = *MEMORY[0x1E69E9840];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(MKPlaceCollectionCell *)self setUpdateIdentifier:uUID];
  objc_initWeak(&location, self);
  item = [(MKPlaceCollectionCell *)self item];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__MKPlaceCollectionCell_setImageMetadata__block_invoke;
  v23[3] = &unk_1E76CCCF8;
  objc_copyWeak(&v25, &location);
  v5 = uUID;
  v24 = v5;
  [item publisherLogoImageWithCompletion:v23];

  v6 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    item2 = [(MKPlaceCollectionCell *)self item];
    collectionTitle = [item2 collectionTitle];
    string = [collectionTitle string];
    *buf = 138412290;
    v28 = string;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "[⌛]Requesting image for : %@", buf, 0xCu);
  }

  date = [MEMORY[0x1E695DF00] date];
  item3 = [(MKPlaceCollectionCell *)self item];
  contentView = [(MKPlaceCollectionCell *)self contentView];
  [contentView frame];
  v14 = v13;
  v16 = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__MKPlaceCollectionCell_setImageMetadata__block_invoke_59;
  v19[3] = &unk_1E76CCD20;
  objc_copyWeak(&v22, &location);
  v19[4] = self;
  v17 = v5;
  v20 = v17;
  v18 = date;
  v21 = v18;
  [item3 collectionImageForSize:v19 onCompletion:{v14, v16}];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __41__MKPlaceCollectionCell_setImageMetadata__block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_8;
  }

  v5 = [WeakRetained updateIdentifier];
  if (([v5 isEqual:*(a1 + 32)] & 1) == 0)
  {

LABEL_8:
    v22 = [v4 publisherLogoImageView];
    [v22 setHidden:1];
    goto LABEL_9;
  }

  v6 = [v4 item];

  if (!v23 || !v6)
  {
    goto LABEL_8;
  }

  v7 = [v4 publisherLogoImageView];
  v8 = [v7 image];

  if (v8)
  {
    goto LABEL_10;
  }

  v9 = [v4 publisherLogoImageView];
  [v9 setImage:v23];

  v10 = [v4 publisherLogoImageView];
  v11 = [v10 widthAnchor];
  v12 = [v4 publisherLogoImageView];
  v13 = [v12 heightAnchor];
  v14 = [v4 publisherLogoImageView];
  v15 = [v14 image];
  [v15 size];
  v17 = v16;
  v18 = [v4 publisherLogoImageView];
  v19 = [v18 image];
  [v19 size];
  v21 = [v11 constraintEqualToAnchor:v13 multiplier:v17 / v20];
  [v4 setLogoWidthConstraint:v21];

  v22 = [v4 logoWidthConstraint];
  [v22 setActive:1];
LABEL_9:

LABEL_10:
}

void __41__MKPlaceCollectionCell_setImageMetadata__block_invoke_59(uint64_t a1, void *a2, uint64_t a3, int a4, char a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if ((a5 & 1) == 0)
  {
    v22 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [*(a1 + 32) item];
      v24 = [v23 collectionTitle];
      v25 = [v24 string];
      *buf = 138412290;
      v34 = v25;
      _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_INFO, "Cancelled image download for collection: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  v12 = [WeakRetained updateIdentifier];
  if (([v12 isEqual:*(a1 + 40)] & 1) == 0)
  {

    goto LABEL_16;
  }

  v13 = [*(a1 + 32) item];

  if (!v13)
  {
LABEL_16:
    v26 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v26, OS_LOG_TYPE_INFO, "Cell doesn't exist OR identifier mistach", buf, 2u);
    }

    goto LABEL_19;
  }

  v14 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v11 item];
    v16 = [v15 collectionTitle];
    v17 = [v16 string];
    *buf = 138412290;
    v34 = v17;
    _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_DEBUG, "[⌛]Received image for : %@", buf, 0xCu);
  }

  if (v9 && !a3)
  {
    v18 = MKGetCuratedCollectionsLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (a4)
    {
      v20 = 0.0;
      if (v19)
      {
        *buf = 0;
        v21 = "Received cached image. Displaying without animation.";
LABEL_22:
        _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_INFO, v21, buf, 2u);
      }
    }

    else
    {
      v20 = 0.100000001;
      if (v19)
      {
        *buf = 0;
        v21 = "Received non-cached image. Displaying with animation.";
        goto LABEL_22;
      }
    }

    v27 = MEMORY[0x1E69DD250];
    v28 = [v11 collectionImageView];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __41__MKPlaceCollectionCell_setImageMetadata__block_invoke_61;
    v31[3] = &unk_1E76CD810;
    v31[4] = v11;
    v32 = v9;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __41__MKPlaceCollectionCell_setImageMetadata__block_invoke_2;
    v29[3] = &unk_1E76CDB88;
    v29[4] = v11;
    v30 = *(a1 + 48);
    [v27 transitionWithView:v28 duration:5242882 options:v31 animations:v29 completion:v20];
  }

LABEL_19:
}

void __41__MKPlaceCollectionCell_setImageMetadata__block_invoke_61(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) collectionImageView];
  [v2 setImage:v1];
}

void __41__MKPlaceCollectionCell_setImageMetadata__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) item];
    v4 = [v3 collectionTitle];
    v5 = [v4 string];
    v6 = [MEMORY[0x1E695DF00] date];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_DEBUG, "[⌛]Finished showing image for : %@ in %f", &v8, 0x16u);
  }
}

- (void)setTextMetadata
{
  item = [(MKPlaceCollectionCell *)self item];
  collectionTitle = [item collectionTitle];
  collectionLabel = [(MKPlaceCollectionCell *)self collectionLabel];
  [collectionLabel setAttributedText:collectionTitle];

  item2 = [(MKPlaceCollectionCell *)self item];
  LODWORD(collectionTitle) = [item2 isSaved];
  savedView = [(MKPlaceCollectionCell *)self savedView];
  [savedView setHidden:collectionTitle ^ 1];

  collectionLabel2 = [(MKPlaceCollectionCell *)self collectionLabel];
  text = [collectionLabel2 text];
  v9 = text;
  if (text)
  {
    v10 = text;
  }

  else
  {
    v10 = &stru_1F15B23C0;
  }

  metadataStackView = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView setAccessibilityLabel:v10];
}

- (void)setUpCellUsingModel:(id)model
{
  v12 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v5 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    collectionTitle = [modelCopy collectionTitle];
    string = [collectionTitle string];
    v10 = 138412290;
    v11 = string;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "Configuring cell for Collection: %@", &v10, 0xCu);
  }

  [(MKPlaceCollectionCell *)self setItem:modelCopy];
  backgroundColor = [modelCopy backgroundColor];
  contentView = [(MKPlaceCollectionCell *)self contentView];
  [contentView setBackgroundColor:backgroundColor];

  [(MKPlaceCollectionCell *)self setTextMetadata];
  [(MKPlaceCollectionCell *)self setImageMetadata];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = MKPlaceCollectionCell;
  [(MKPlaceCollectionCell *)&v8 prepareForReuse];
  publisherLogoImageView = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [publisherLogoImageView setImage:0];

  collectionLabel = [(MKPlaceCollectionCell *)self collectionLabel];
  [collectionLabel setAttributedText:0];

  collectionImageView = [(MKPlaceCollectionCell *)self collectionImageView];
  [collectionImageView setImage:0];

  contentView = [(MKPlaceCollectionCell *)self contentView];
  [contentView setBackgroundColor:0];

  metadataStackView = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView setAccessibilityLabel:0];

  [(MKPlaceCollectionCell *)self setItem:0];
}

- (void)setupAccessibility
{
  [(MKPlaceCollectionCell *)self setAccessibilityIdentifier:@"PlaceCollectionCell"];
  metadataStackView = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView setIsAccessibilityElement:1];

  v4 = *MEMORY[0x1E69DD9B8];
  metadataStackView2 = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView2 setAccessibilityTraits:v4];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  traitCollection = [(MKPlaceCollectionCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    item = [(MKPlaceCollectionCell *)self item];
    [item contentCategorySizeDidChange];

    [(MKPlaceCollectionCell *)self setTextMetadata];
  }
}

- (void)setupShadows
{
  systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
  cGColor = [systemBlackColor CGColor];
  layer = [(MKPlaceCollectionCell *)self layer];
  [layer setShadowColor:cGColor];

  layer2 = [(MKPlaceCollectionCell *)self layer];
  LODWORD(v7) = 1028443341;
  [layer2 setShadowOpacity:v7];

  layer3 = [(MKPlaceCollectionCell *)self layer];
  [layer3 setShadowOffset:{0.0, 2.0}];

  layer4 = [(MKPlaceCollectionCell *)self layer];
  [layer4 setShadowRadius:12.0];

  layer5 = [(MKPlaceCollectionCell *)self layer];
  [layer5 setShadowPathIsBounds:1];
}

- (void)addSavedCollectionView
{
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC730];
  traitCollection = [(MKPlaceCollectionCell *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v5 = [v3 effectWithBlurRadius:?];

  v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
  [(MKPlaceCollectionCell *)self setSavedView:v6];

  savedView = [(MKPlaceCollectionCell *)self savedView];
  [savedView setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  savedView2 = [(MKPlaceCollectionCell *)self savedView];
  [savedView2 setBackgroundColor:clearColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v11 = [blackColor colorWithAlphaComponent:0.24];
  savedView3 = [(MKPlaceCollectionCell *)self savedView];
  contentView = [savedView3 contentView];
  [contentView setBackgroundColor:v11];

  savedView4 = [(MKPlaceCollectionCell *)self savedView];
  [savedView4 setAccessibilityIdentifier:@"PlaceCollectionSavedView"];

  v15 = objc_alloc(MEMORY[0x1E69DCC10]);
  v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setSavedCollectionLabel:v16];

  savedCollectionLabel = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [savedCollectionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  savedCollectionLabel2 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [savedCollectionLabel2 setTextColor:whiteColor];

  savedCollectionLabel3 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  LODWORD(v21) = 1148846080;
  [savedCollectionLabel3 setContentCompressionResistancePriority:0 forAxis:v21];

  v22 = *MEMORY[0x1E69DDD10];
  v23 = *MEMORY[0x1E69DB970];
  v24 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] weight:*MEMORY[0x1E69DB970]];
  savedCollectionLabel4 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [savedCollectionLabel4 setFont:v24];

  savedCollectionLabel5 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [savedCollectionLabel5 setNumberOfLines:1];

  v27 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v28 = MEMORY[0x1E69DCAB8];
  v29 = MEMORY[0x1E69DCAD8];
  v30 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v22 weight:v23];
  v31 = [v29 configurationWithFont:v30];
  v32 = [v28 systemImageNamed:@"checkmark" withConfiguration:v31];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  v34 = [v32 imageWithTintColor:whiteColor2];
  [v27 setImage:v34];

  v35 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v27];
  v36 = objc_alloc(MEMORY[0x1E696AD40]);
  v52 = *MEMORY[0x1E69DB648];
  v37 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v22 weight:v23];
  v53[0] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v39 = [v36 initWithString:&stru_1F15B23C0 attributes:v38];

  [v39 appendAttributedString:v35];
  v40 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v39 appendAttributedString:v40];

  v41 = objc_alloc(MEMORY[0x1E696AAB0]);
  v42 = _MKLocalizedStringFromThisBundle(@"[Curated Collection] Saved Collection text");
  v43 = [v41 initWithString:v42];

  [v39 appendAttributedString:v43];
  savedCollectionLabel6 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [savedCollectionLabel6 setTextAlignment:1];

  savedCollectionLabel7 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [savedCollectionLabel7 setAttributedText:v39];

  savedCollectionLabel8 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [savedCollectionLabel8 setAccessibilityIdentifier:@"PlaceCollectionSavedLabel"];

  savedView5 = [(MKPlaceCollectionCell *)self savedView];
  contentView2 = [savedView5 contentView];
  savedCollectionLabel9 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [contentView2 addSubview:savedCollectionLabel9];

  contentView3 = [(MKPlaceCollectionCell *)self contentView];
  savedView6 = [(MKPlaceCollectionCell *)self savedView];
  [contentView3 addSubview:savedView6];
}

- (void)addCollectionNameView
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setCollectionLabel:v4];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  collectionLabel = [(MKPlaceCollectionCell *)self collectionLabel];
  [collectionLabel setTextColor:whiteColor];

  collectionLabel2 = [(MKPlaceCollectionCell *)self collectionLabel];
  [collectionLabel2 setNumberOfLines:0];

  collectionLabel3 = [(MKPlaceCollectionCell *)self collectionLabel];
  [collectionLabel3 setAccessibilityIdentifier:@"PlaceCollectionTitle"];

  metadataStackView = [(MKPlaceCollectionCell *)self metadataStackView];
  collectionLabel4 = [(MKPlaceCollectionCell *)self collectionLabel];
  [metadataStackView addArrangedSubview:collectionLabel4];
}

- (void)addPublisherLogoImage
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setPublisherLogoImageView:v4];

  publisherLogoImageView = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [publisherLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  publisherLogoImageView2 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [publisherLogoImageView2 setAccessibilityIgnoresInvertColors:1];

  publisherLogoImageView3 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [publisherLogoImageView3 setAccessibilityIdentifier:@"PlaceCollectionPublisherLogo"];

  publisherLogoImageView4 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [publisherLogoImageView4 setContentMode:1];

  metadataStackView = [(MKPlaceCollectionCell *)self metadataStackView];
  publisherLogoImageView5 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [metadataStackView addArrangedSubview:publisherLogoImageView5];
}

- (void)setupStackView
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setMetadataStackView:v4];

  metadataStackView = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  metadataStackView2 = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView2 setAxis:1];

  metadataStackView3 = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView3 setDistribution:0];

  metadataStackView4 = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView4 setAlignment:1];

  metadataStackView5 = [(MKPlaceCollectionCell *)self metadataStackView];
  [metadataStackView5 setAccessibilityIdentifier:@"PlaceCollectionMetadataStack"];

  contentView = [(MKPlaceCollectionCell *)self contentView];
  metadataStackView6 = [(MKPlaceCollectionCell *)self metadataStackView];
  [contentView addSubview:metadataStackView6];

  [(MKPlaceCollectionCell *)self addPublisherLogoImage];
  [(MKPlaceCollectionCell *)self addCollectionNameView];

  [(MKPlaceCollectionCell *)self addSavedCollectionView];
}

- (void)setupCollectionImage
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setCollectionImageView:v4];

  collectionImageView = [(MKPlaceCollectionCell *)self collectionImageView];
  [collectionImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionImageView2 = [(MKPlaceCollectionCell *)self collectionImageView];
  [collectionImageView2 setAccessibilityIgnoresInvertColors:1];

  collectionImageView3 = [(MKPlaceCollectionCell *)self collectionImageView];
  [collectionImageView3 setAccessibilityIdentifier:@"PlaceCollectionImage"];

  collectionImageView4 = [(MKPlaceCollectionCell *)self collectionImageView];
  [collectionImageView4 setContentMode:2];

  contentView = [(MKPlaceCollectionCell *)self contentView];
  collectionImageView5 = [(MKPlaceCollectionCell *)self collectionImageView];
  [contentView addSubview:collectionImageView5];
}

- (void)setupCornerRadius
{
  traitCollection = [(MKPlaceCollectionCell *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v5 = v4;
  contentView = [(MKPlaceCollectionCell *)self contentView];
  [contentView _setContinuousCornerRadius:v5];

  contentView2 = [(MKPlaceCollectionCell *)self contentView];
  layer = [contentView2 layer];
  [layer setMasksToBounds:1];
}

- (void)setupConstraints
{
  v84[17] = *MEMORY[0x1E69E9840];
  [(MKPlaceCollectionCell *)self sizeForSavedPill];
  v4 = v3;
  v6 = v5;
  v52 = MEMORY[0x1E696ACD8];
  collectionImageView = [(MKPlaceCollectionCell *)self collectionImageView];
  leadingAnchor = [collectionImageView leadingAnchor];
  contentView = [(MKPlaceCollectionCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v84[0] = v79;
  collectionImageView2 = [(MKPlaceCollectionCell *)self collectionImageView];
  trailingAnchor = [collectionImageView2 trailingAnchor];
  contentView2 = [(MKPlaceCollectionCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v74 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v84[1] = v74;
  collectionImageView3 = [(MKPlaceCollectionCell *)self collectionImageView];
  topAnchor = [collectionImageView3 topAnchor];
  contentView3 = [(MKPlaceCollectionCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v69 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v84[2] = v69;
  collectionImageView4 = [(MKPlaceCollectionCell *)self collectionImageView];
  bottomAnchor = [collectionImageView4 bottomAnchor];
  contentView4 = [(MKPlaceCollectionCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v84[3] = v64;
  metadataStackView = [(MKPlaceCollectionCell *)self metadataStackView];
  leadingAnchor3 = [metadataStackView leadingAnchor];
  contentView5 = [(MKPlaceCollectionCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  v84[4] = v59;
  metadataStackView2 = [(MKPlaceCollectionCell *)self metadataStackView];
  trailingAnchor3 = [metadataStackView2 trailingAnchor];
  contentView6 = [(MKPlaceCollectionCell *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  v84[5] = v54;
  metadataStackView3 = [(MKPlaceCollectionCell *)self metadataStackView];
  topAnchor3 = [metadataStackView3 topAnchor];
  contentView7 = [(MKPlaceCollectionCell *)self contentView];
  topAnchor4 = [contentView7 topAnchor];
  v48 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v84[6] = v48;
  metadataStackView4 = [(MKPlaceCollectionCell *)self metadataStackView];
  bottomAnchor3 = [metadataStackView4 bottomAnchor];
  contentView8 = [(MKPlaceCollectionCell *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
  v84[7] = v43;
  publisherLogoImageView = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  heightAnchor = [publisherLogoImageView heightAnchor];
  v40 = [heightAnchor constraintEqualToConstant:32.0];
  v84[8] = v40;
  savedCollectionLabel = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  centerXAnchor = [savedCollectionLabel centerXAnchor];
  savedView = [(MKPlaceCollectionCell *)self savedView];
  centerXAnchor2 = [savedView centerXAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v84[9] = v35;
  savedCollectionLabel2 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  centerYAnchor = [savedCollectionLabel2 centerYAnchor];
  savedView2 = [(MKPlaceCollectionCell *)self savedView];
  centerYAnchor2 = [savedView2 centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v84[10] = v30;
  savedCollectionLabel3 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  heightAnchor2 = [savedCollectionLabel3 heightAnchor];
  v27 = [heightAnchor2 constraintEqualToConstant:v6];
  v84[11] = v27;
  savedCollectionLabel4 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  widthAnchor = [savedCollectionLabel4 widthAnchor];
  v24 = [widthAnchor constraintEqualToConstant:v4];
  v84[12] = v24;
  savedView3 = [(MKPlaceCollectionCell *)self savedView];
  topAnchor5 = [savedView3 topAnchor];
  contentView9 = [(MKPlaceCollectionCell *)self contentView];
  topAnchor6 = [contentView9 topAnchor];
  v19 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:8.0];
  v84[13] = v19;
  savedView4 = [(MKPlaceCollectionCell *)self savedView];
  trailingAnchor5 = [savedView4 trailingAnchor];
  contentView10 = [(MKPlaceCollectionCell *)self contentView];
  trailingAnchor6 = [contentView10 trailingAnchor];
  v9 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-8.0];
  v84[14] = v9;
  savedView5 = [(MKPlaceCollectionCell *)self savedView];
  heightAnchor3 = [savedView5 heightAnchor];
  v12 = [heightAnchor3 constraintEqualToConstant:v6];
  v84[15] = v12;
  savedView6 = [(MKPlaceCollectionCell *)self savedView];
  widthAnchor2 = [savedView6 widthAnchor];
  v15 = [widthAnchor2 constraintEqualToConstant:v4];
  v84[16] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:17];
  [v52 activateConstraints:v16];
}

- (CGSize)sizeForSavedPill
{
  savedCollectionLabel = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  attributedText = [savedCollectionLabel attributedText];
  [attributedText size];
  v6 = v5;

  savedView = [(MKPlaceCollectionCell *)self savedView];
  [savedView _setContinuousCornerRadius:12.0];

  v8 = 24.0;
  v9 = v6 + 7.0 + 7.0;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setupSubviews
{
  [(MKPlaceCollectionCell *)self setupCollectionImage];

  [(MKPlaceCollectionCell *)self setupStackView];
}

- (BOOL)canBecomeFirstResponder
{
  traitCollection = [(MKPlaceCollectionCell *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 5;

  return v3;
}

- (MKPlaceCollectionCell)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKPlaceCollectionCell;
  v3 = [(MKPlaceCollectionCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKPlaceCollectionCell *)v3 setupSubviews];
    [(MKPlaceCollectionCell *)v4 setupCornerRadius];
    [(MKPlaceCollectionCell *)v4 setupConstraints];
    [(MKPlaceCollectionCell *)v4 setupShadows];
    [(MKPlaceCollectionCell *)v4 setupAccessibility];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(MKPlaceCollectionCell *)v4 registerForTraitChanges:v5 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v4;
}

@end