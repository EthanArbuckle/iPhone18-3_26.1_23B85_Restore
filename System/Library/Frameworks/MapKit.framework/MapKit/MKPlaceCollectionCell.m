@interface MKPlaceCollectionCell
- (BOOL)canBecomeFirstResponder;
- (CGSize)sizeForSavedPill;
- (MKPlaceCollectionCell)initWithFrame:(CGRect)a3;
- (void)addCollectionNameView;
- (void)addPublisherLogoImage;
- (void)addSavedCollectionView;
- (void)prepareForReuse;
- (void)setImageMetadata;
- (void)setTextMetadata;
- (void)setUpCellUsingModel:(id)a3;
- (void)setupAccessibility;
- (void)setupCollectionImage;
- (void)setupConstraints;
- (void)setupCornerRadius;
- (void)setupShadows;
- (void)setupStackView;
- (void)setupSubviews;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation MKPlaceCollectionCell

- (void)setImageMetadata
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [(MKPlaceCollectionCell *)self setUpdateIdentifier:v3];
  objc_initWeak(&location, self);
  v4 = [(MKPlaceCollectionCell *)self item];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__MKPlaceCollectionCell_setImageMetadata__block_invoke;
  v23[3] = &unk_1E76CCCF8;
  objc_copyWeak(&v25, &location);
  v5 = v3;
  v24 = v5;
  [v4 publisherLogoImageWithCompletion:v23];

  v6 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(MKPlaceCollectionCell *)self item];
    v8 = [v7 collectionTitle];
    v9 = [v8 string];
    *buf = 138412290;
    v28 = v9;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "[⌛]Requesting image for : %@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [(MKPlaceCollectionCell *)self item];
  v12 = [(MKPlaceCollectionCell *)self contentView];
  [v12 frame];
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
  v18 = v10;
  v21 = v18;
  [v11 collectionImageForSize:v19 onCompletion:{v14, v16}];

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
  v3 = [(MKPlaceCollectionCell *)self item];
  v4 = [v3 collectionTitle];
  v5 = [(MKPlaceCollectionCell *)self collectionLabel];
  [v5 setAttributedText:v4];

  v6 = [(MKPlaceCollectionCell *)self item];
  LODWORD(v4) = [v6 isSaved];
  v7 = [(MKPlaceCollectionCell *)self savedView];
  [v7 setHidden:v4 ^ 1];

  v12 = [(MKPlaceCollectionCell *)self collectionLabel];
  v8 = [v12 text];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F15B23C0;
  }

  v11 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v11 setAccessibilityLabel:v10];
}

- (void)setUpCellUsingModel:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 collectionTitle];
    v7 = [v6 string];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "Configuring cell for Collection: %@", &v10, 0xCu);
  }

  [(MKPlaceCollectionCell *)self setItem:v4];
  v8 = [v4 backgroundColor];
  v9 = [(MKPlaceCollectionCell *)self contentView];
  [v9 setBackgroundColor:v8];

  [(MKPlaceCollectionCell *)self setTextMetadata];
  [(MKPlaceCollectionCell *)self setImageMetadata];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = MKPlaceCollectionCell;
  [(MKPlaceCollectionCell *)&v8 prepareForReuse];
  v3 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [v3 setImage:0];

  v4 = [(MKPlaceCollectionCell *)self collectionLabel];
  [v4 setAttributedText:0];

  v5 = [(MKPlaceCollectionCell *)self collectionImageView];
  [v5 setImage:0];

  v6 = [(MKPlaceCollectionCell *)self contentView];
  [v6 setBackgroundColor:0];

  v7 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v7 setAccessibilityLabel:0];

  [(MKPlaceCollectionCell *)self setItem:0];
}

- (void)setupAccessibility
{
  [(MKPlaceCollectionCell *)self setAccessibilityIdentifier:@"PlaceCollectionCell"];
  v3 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v3 setIsAccessibilityElement:1];

  v4 = *MEMORY[0x1E69DD9B8];
  v5 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v5 setAccessibilityTraits:v4];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 preferredContentSizeCategory];
  v6 = [(MKPlaceCollectionCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    v8 = [(MKPlaceCollectionCell *)self item];
    [v8 contentCategorySizeDidChange];

    [(MKPlaceCollectionCell *)self setTextMetadata];
  }
}

- (void)setupShadows
{
  v3 = [MEMORY[0x1E69DC888] systemBlackColor];
  v4 = [v3 CGColor];
  v5 = [(MKPlaceCollectionCell *)self layer];
  [v5 setShadowColor:v4];

  v6 = [(MKPlaceCollectionCell *)self layer];
  LODWORD(v7) = 1028443341;
  [v6 setShadowOpacity:v7];

  v8 = [(MKPlaceCollectionCell *)self layer];
  [v8 setShadowOffset:{0.0, 2.0}];

  v9 = [(MKPlaceCollectionCell *)self layer];
  [v9 setShadowRadius:12.0];

  v10 = [(MKPlaceCollectionCell *)self layer];
  [v10 setShadowPathIsBounds:1];
}

- (void)addSavedCollectionView
{
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC730];
  v4 = [(MKPlaceCollectionCell *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v5 = [v3 effectWithBlurRadius:?];

  v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
  [(MKPlaceCollectionCell *)self setSavedView:v6];

  v7 = [(MKPlaceCollectionCell *)self savedView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  v9 = [(MKPlaceCollectionCell *)self savedView];
  [v9 setBackgroundColor:v8];

  v10 = [MEMORY[0x1E69DC888] blackColor];
  v11 = [v10 colorWithAlphaComponent:0.24];
  v12 = [(MKPlaceCollectionCell *)self savedView];
  v13 = [v12 contentView];
  [v13 setBackgroundColor:v11];

  v14 = [(MKPlaceCollectionCell *)self savedView];
  [v14 setAccessibilityIdentifier:@"PlaceCollectionSavedView"];

  v15 = objc_alloc(MEMORY[0x1E69DCC10]);
  v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setSavedCollectionLabel:v16];

  v17 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [MEMORY[0x1E69DC888] whiteColor];
  v19 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v19 setTextColor:v18];

  v20 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];

  v22 = *MEMORY[0x1E69DDD10];
  v23 = *MEMORY[0x1E69DB970];
  v24 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] weight:*MEMORY[0x1E69DB970]];
  v25 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v25 setFont:v24];

  v26 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v26 setNumberOfLines:1];

  v27 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v28 = MEMORY[0x1E69DCAB8];
  v29 = MEMORY[0x1E69DCAD8];
  v30 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v22 weight:v23];
  v31 = [v29 configurationWithFont:v30];
  v32 = [v28 systemImageNamed:@"checkmark" withConfiguration:v31];
  v33 = [MEMORY[0x1E69DC888] whiteColor];
  v34 = [v32 imageWithTintColor:v33];
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
  v44 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v44 setTextAlignment:1];

  v45 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v45 setAttributedText:v39];

  v46 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v46 setAccessibilityIdentifier:@"PlaceCollectionSavedLabel"];

  v47 = [(MKPlaceCollectionCell *)self savedView];
  v48 = [v47 contentView];
  v49 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  [v48 addSubview:v49];

  v50 = [(MKPlaceCollectionCell *)self contentView];
  v51 = [(MKPlaceCollectionCell *)self savedView];
  [v50 addSubview:v51];
}

- (void)addCollectionNameView
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setCollectionLabel:v4];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [(MKPlaceCollectionCell *)self collectionLabel];
  [v6 setTextColor:v5];

  v7 = [(MKPlaceCollectionCell *)self collectionLabel];
  [v7 setNumberOfLines:0];

  v8 = [(MKPlaceCollectionCell *)self collectionLabel];
  [v8 setAccessibilityIdentifier:@"PlaceCollectionTitle"];

  v10 = [(MKPlaceCollectionCell *)self metadataStackView];
  v9 = [(MKPlaceCollectionCell *)self collectionLabel];
  [v10 addArrangedSubview:v9];
}

- (void)addPublisherLogoImage
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setPublisherLogoImageView:v4];

  v5 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [v6 setAccessibilityIgnoresInvertColors:1];

  v7 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [v7 setAccessibilityIdentifier:@"PlaceCollectionPublisherLogo"];

  v8 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [v8 setContentMode:1];

  v10 = [(MKPlaceCollectionCell *)self metadataStackView];
  v9 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  [v10 addArrangedSubview:v9];
}

- (void)setupStackView
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setMetadataStackView:v4];

  v5 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v6 setAxis:1];

  v7 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v7 setDistribution:0];

  v8 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v8 setAlignment:1];

  v9 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v9 setAccessibilityIdentifier:@"PlaceCollectionMetadataStack"];

  v10 = [(MKPlaceCollectionCell *)self contentView];
  v11 = [(MKPlaceCollectionCell *)self metadataStackView];
  [v10 addSubview:v11];

  [(MKPlaceCollectionCell *)self addPublisherLogoImage];
  [(MKPlaceCollectionCell *)self addCollectionNameView];

  [(MKPlaceCollectionCell *)self addSavedCollectionView];
}

- (void)setupCollectionImage
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKPlaceCollectionCell *)self setCollectionImageView:v4];

  v5 = [(MKPlaceCollectionCell *)self collectionImageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MKPlaceCollectionCell *)self collectionImageView];
  [v6 setAccessibilityIgnoresInvertColors:1];

  v7 = [(MKPlaceCollectionCell *)self collectionImageView];
  [v7 setAccessibilityIdentifier:@"PlaceCollectionImage"];

  v8 = [(MKPlaceCollectionCell *)self collectionImageView];
  [v8 setContentMode:2];

  v10 = [(MKPlaceCollectionCell *)self contentView];
  v9 = [(MKPlaceCollectionCell *)self collectionImageView];
  [v10 addSubview:v9];
}

- (void)setupCornerRadius
{
  v3 = [(MKPlaceCollectionCell *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v5 = v4;
  v6 = [(MKPlaceCollectionCell *)self contentView];
  [v6 _setContinuousCornerRadius:v5];

  v8 = [(MKPlaceCollectionCell *)self contentView];
  v7 = [v8 layer];
  [v7 setMasksToBounds:1];
}

- (void)setupConstraints
{
  v84[17] = *MEMORY[0x1E69E9840];
  [(MKPlaceCollectionCell *)self sizeForSavedPill];
  v4 = v3;
  v6 = v5;
  v52 = MEMORY[0x1E696ACD8];
  v83 = [(MKPlaceCollectionCell *)self collectionImageView];
  v81 = [v83 leadingAnchor];
  v82 = [(MKPlaceCollectionCell *)self contentView];
  v80 = [v82 leadingAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v84[0] = v79;
  v78 = [(MKPlaceCollectionCell *)self collectionImageView];
  v76 = [v78 trailingAnchor];
  v77 = [(MKPlaceCollectionCell *)self contentView];
  v75 = [v77 trailingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v84[1] = v74;
  v73 = [(MKPlaceCollectionCell *)self collectionImageView];
  v71 = [v73 topAnchor];
  v72 = [(MKPlaceCollectionCell *)self contentView];
  v70 = [v72 topAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v84[2] = v69;
  v68 = [(MKPlaceCollectionCell *)self collectionImageView];
  v66 = [v68 bottomAnchor];
  v67 = [(MKPlaceCollectionCell *)self contentView];
  v65 = [v67 bottomAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v84[3] = v64;
  v63 = [(MKPlaceCollectionCell *)self metadataStackView];
  v61 = [v63 leadingAnchor];
  v62 = [(MKPlaceCollectionCell *)self contentView];
  v60 = [v62 leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60 constant:12.0];
  v84[4] = v59;
  v58 = [(MKPlaceCollectionCell *)self metadataStackView];
  v56 = [v58 trailingAnchor];
  v57 = [(MKPlaceCollectionCell *)self contentView];
  v55 = [v57 trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:-20.0];
  v84[5] = v54;
  v53 = [(MKPlaceCollectionCell *)self metadataStackView];
  v50 = [v53 topAnchor];
  v51 = [(MKPlaceCollectionCell *)self contentView];
  v49 = [v51 topAnchor];
  v48 = [v50 constraintGreaterThanOrEqualToAnchor:v49];
  v84[6] = v48;
  v47 = [(MKPlaceCollectionCell *)self metadataStackView];
  v45 = [v47 bottomAnchor];
  v46 = [(MKPlaceCollectionCell *)self contentView];
  v44 = [v46 bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:-12.0];
  v84[7] = v43;
  v42 = [(MKPlaceCollectionCell *)self publisherLogoImageView];
  v41 = [v42 heightAnchor];
  v40 = [v41 constraintEqualToConstant:32.0];
  v84[8] = v40;
  v39 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  v37 = [v39 centerXAnchor];
  v38 = [(MKPlaceCollectionCell *)self savedView];
  v36 = [v38 centerXAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v84[9] = v35;
  v34 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  v32 = [v34 centerYAnchor];
  v33 = [(MKPlaceCollectionCell *)self savedView];
  v31 = [v33 centerYAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v84[10] = v30;
  v29 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  v28 = [v29 heightAnchor];
  v27 = [v28 constraintEqualToConstant:v6];
  v84[11] = v27;
  v26 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  v25 = [v26 widthAnchor];
  v24 = [v25 constraintEqualToConstant:v4];
  v84[12] = v24;
  v23 = [(MKPlaceCollectionCell *)self savedView];
  v21 = [v23 topAnchor];
  v22 = [(MKPlaceCollectionCell *)self contentView];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:8.0];
  v84[13] = v19;
  v18 = [(MKPlaceCollectionCell *)self savedView];
  v17 = [v18 trailingAnchor];
  v7 = [(MKPlaceCollectionCell *)self contentView];
  v8 = [v7 trailingAnchor];
  v9 = [v17 constraintEqualToAnchor:v8 constant:-8.0];
  v84[14] = v9;
  v10 = [(MKPlaceCollectionCell *)self savedView];
  v11 = [v10 heightAnchor];
  v12 = [v11 constraintEqualToConstant:v6];
  v84[15] = v12;
  v13 = [(MKPlaceCollectionCell *)self savedView];
  v14 = [v13 widthAnchor];
  v15 = [v14 constraintEqualToConstant:v4];
  v84[16] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:17];
  [v52 activateConstraints:v16];
}

- (CGSize)sizeForSavedPill
{
  v3 = [(MKPlaceCollectionCell *)self savedCollectionLabel];
  v4 = [v3 attributedText];
  [v4 size];
  v6 = v5;

  v7 = [(MKPlaceCollectionCell *)self savedView];
  [v7 _setContinuousCornerRadius:12.0];

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
  v2 = [(MKPlaceCollectionCell *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 5;

  return v3;
}

- (MKPlaceCollectionCell)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKPlaceCollectionCell;
  v3 = [(MKPlaceCollectionCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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