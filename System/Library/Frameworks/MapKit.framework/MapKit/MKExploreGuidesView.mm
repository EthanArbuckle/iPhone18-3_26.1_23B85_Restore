@interface MKExploreGuidesView
- (MKExploreGuidesView)initWithExploreGuides:(id)a3 tapHandler:(id)a4;
- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)a3;
- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)defaultInsets;
- (id)_imageTemplateURL;
- (id)_subtitle;
- (id)_title;
- (void)_commonSetup;
- (void)_openURL;
- (void)buttonTouchDown:(id)a3;
- (void)buttonTouchUp:(id)a3;
- (void)didSelectExploreGuides:(id)a3;
- (void)setupConstraints;
- (void)setupImage;
- (void)setupSubviews;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateExploreGuidesResponse:(id)a3;
- (void)updateUI;
- (void)updateUIContent;
@end

@implementation MKExploreGuidesView

- (void)buttonTouchUp:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MKExploreGuidesView_buttonTouchUp___block_invoke;
  v6[3] = &unk_1E76CDB38;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.1];
}

void __37__MKExploreGuidesView_buttonTouchUp___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (void)buttonTouchDown:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__MKExploreGuidesView_buttonTouchDown___block_invoke;
  v6[3] = &unk_1E76CDB38;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.1];
}

void __39__MKExploreGuidesView_buttonTouchDown___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] systemGray4Color];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (void)didSelectExploreGuides:(id)a3
{
  v4 = [(MKExploreGuidesView *)self tapHandler];

  if (v4)
  {
    v6 = [(MKExploreGuidesView *)self tapHandler];
    v5 = [(MKExploreGuidesView *)self exploreGuide];
    v6[2](v6, v5);
  }
}

- (void)setupConstraints
{
  v75[15] = *MEMORY[0x1E69E9840];
  v3 = [(MKExploreGuidesView *)self imageView];
  v4 = [v3 widthAnchor];
  v5 = [v4 constraintEqualToConstant:92.0];

  LODWORD(v6) = 1144750080;
  v7 = v5;
  v36 = v5;
  [v5 setPriority:v6];
  v48 = MEMORY[0x1E696ACD8];
  v74 = [(MKExploreGuidesView *)self button];
  v73 = [v74 leadingAnchor];
  v72 = [(MKExploreGuidesView *)self leadingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72 constant:self->_edgeInsets.left];
  v75[0] = v71;
  v70 = [(MKExploreGuidesView *)self button];
  v69 = [v70 trailingAnchor];
  v68 = [(MKExploreGuidesView *)self trailingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68 constant:-self->_edgeInsets.right];
  v75[1] = v67;
  v66 = [(MKExploreGuidesView *)self button];
  v65 = [v66 topAnchor];
  v64 = [(MKExploreGuidesView *)self topAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 constant:self->_edgeInsets.top];
  v75[2] = v63;
  v62 = [(MKExploreGuidesView *)self button];
  v61 = [v62 bottomAnchor];
  v60 = [(MKExploreGuidesView *)self bottomAnchor];
  v59 = [v61 constraintEqualToAnchor:v60 constant:-self->_edgeInsets.bottom];
  v75[3] = v59;
  v58 = [(MKExploreGuidesView *)self labelsStack];
  v56 = [v58 leadingAnchor];
  v57 = [(MKExploreGuidesView *)self button];
  v55 = [v57 leadingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:16.0];
  v75[4] = v54;
  v53 = [(MKExploreGuidesView *)self labelsStack];
  v51 = [v53 centerYAnchor];
  v52 = [(MKExploreGuidesView *)self button];
  v50 = [v52 centerYAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v75[5] = v49;
  v47 = [(MKExploreGuidesView *)self labelsStack];
  v45 = [v47 trailingAnchor];
  v46 = [(MKExploreGuidesView *)self imageView];
  v44 = [v46 leadingAnchor];
  v43 = [v45 constraintLessThanOrEqualToAnchor:v44 constant:-16.0];
  v75[6] = v43;
  v42 = [(MKExploreGuidesView *)self labelsStack];
  v40 = [v42 topAnchor];
  v41 = [(MKExploreGuidesView *)self button];
  v39 = [v41 topAnchor];
  v38 = [v40 constraintGreaterThanOrEqualToAnchor:v39 constant:16.0];
  v75[7] = v38;
  v37 = [(MKExploreGuidesView *)self labelsStack];
  v34 = [v37 bottomAnchor];
  v35 = [(MKExploreGuidesView *)self button];
  v33 = [v35 bottomAnchor];
  v32 = [v34 constraintLessThanOrEqualToAnchor:v33 constant:-16.0];
  v75[8] = v32;
  v31 = [(MKExploreGuidesView *)self imageView];
  v29 = [v31 trailingAnchor];
  v30 = [(MKExploreGuidesView *)self button];
  v28 = [v30 trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v75[9] = v27;
  v26 = [(MKExploreGuidesView *)self imageView];
  v24 = [v26 topAnchor];
  v25 = [(MKExploreGuidesView *)self button];
  v23 = [v25 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v75[10] = v22;
  v21 = [(MKExploreGuidesView *)self imageView];
  v19 = [v21 bottomAnchor];
  v20 = [(MKExploreGuidesView *)self button];
  v18 = [v20 bottomAnchor];
  v8 = [v19 constraintEqualToAnchor:v18];
  v75[11] = v8;
  v9 = [(MKExploreGuidesView *)self imageView];
  v10 = [v9 widthAnchor];
  v11 = [(MKExploreGuidesView *)self imageView];
  v12 = [v11 heightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 multiplier:1.22666667];
  v75[12] = v13;
  v14 = [(MKExploreGuidesView *)self imageView];
  v15 = [v14 widthAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:92.0];
  v75[13] = v16;
  v75[14] = v7;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:15];
  [v48 activateConstraints:v17];
}

- (void)setupImage
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKExploreGuidesView *)self setImageView:v4];

  v5 = [(MKExploreGuidesView *)self imageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(MKExploreGuidesView *)self imageView];
  [v6 setAccessibilityIdentifier:@"ExploreGuidesImage"];

  v7 = [(MKExploreGuidesView *)self imageView];
  [v7 setContentMode:2];

  v8 = [(MKExploreGuidesView *)self imageView];
  LODWORD(v9) = 1144750080;
  [v8 setContentHuggingPriority:0 forAxis:v9];

  v10 = [(MKExploreGuidesView *)self imageView];
  LODWORD(v11) = 1132068864;
  [v10 setContentCompressionResistancePriority:0 forAxis:v11];

  v12 = [(MKExploreGuidesView *)self imageView];
  [(MKExploreGuidesView *)self addSubview:v12];

  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v13 = 5;
  }

  else
  {
    v13 = 10;
  }

  v14 = [(MKExploreGuidesView *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v16 = v15;
  v17 = [(MKExploreGuidesView *)self imageView];
  [v17 _setContinuousCornerRadius:v16];

  v18 = [(MKExploreGuidesView *)self imageView];
  v19 = [v18 layer];
  [v19 setMaskedCorners:v13];

  v20 = [(MKExploreGuidesView *)self imageView];
  [v20 setClipsToBounds:1];
}

- (void)setupSubviews
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(MKExploreGuidesView *)self setButton:v3];

  v4 = [(MKExploreGuidesView *)self button];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(MKExploreGuidesView *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v7 = v6;
  v8 = [(MKExploreGuidesView *)self button];
  [v8 _setContinuousCornerRadius:v7];

  v9 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  v10 = [(MKExploreGuidesView *)self button];
  [v10 setBackgroundColor:v9];

  v11 = [(MKExploreGuidesView *)self button];
  [v11 addTarget:self action:sel_didSelectExploreGuides_ forControlEvents:0x2000];

  v12 = [(MKExploreGuidesView *)self button];
  [v12 addTarget:self action:sel_buttonTouchDown_ forControlEvents:17];

  v13 = [(MKExploreGuidesView *)self button];
  [v13 addTarget:self action:sel_buttonTouchUp_ forControlEvents:480];

  v14 = [(MKExploreGuidesView *)self button];
  [(MKExploreGuidesView *)self addSubview:v14];

  v15 = objc_alloc(MEMORY[0x1E69DCF90]);
  v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKExploreGuidesView *)self setLabelsStack:v16];

  v17 = [(MKExploreGuidesView *)self labelsStack];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(MKExploreGuidesView *)self labelsStack];
  [v18 setAxis:1];

  v19 = [(MKExploreGuidesView *)self labelsStack];
  [v19 setDistribution:0];

  v20 = [(MKExploreGuidesView *)self labelsStack];
  [v20 setAlignment:0];

  v21 = [(MKExploreGuidesView *)self labelsStack];
  [v21 setUserInteractionEnabled:0];

  v22 = [(MKExploreGuidesView *)self labelsStack];
  [v22 setAccessibilityIdentifier:@"ExploreGuidesLabelStack"];

  v23 = [(MKExploreGuidesView *)self labelsStack];
  [(MKExploreGuidesView *)self addSubview:v23];

  v36 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v36 setNumberOfLines:1];
  v24 = [(MKExploreGuidesView *)self defaultTitleFont];
  [v36 setFont:v24];

  v25 = [MEMORY[0x1E69DC888] labelColor];
  [v36 setTextColor:v25];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setAccessibilityIdentifier:@"ExploreGuidesTitle"];
  LODWORD(v26) = 1148846080;
  [v36 setContentCompressionResistancePriority:1 forAxis:v26];
  [(MKExploreGuidesView *)self setTitleLabel:v36];
  v27 = [v36 text];
  v28 = [(MKExploreGuidesView *)self button];
  [v28 setAccessibilityLabel:v27];

  v29 = [(MKExploreGuidesView *)self button];
  [v29 setAccessibilityIdentifier:@"ExploreGuidesButton"];

  v30 = [(MKExploreGuidesView *)self labelsStack];
  [v30 addArrangedSubview:v36];

  v31 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v31 setNumberOfLines:2];
  LODWORD(v32) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v32];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [(MKExploreGuidesView *)self defaultSubtitleFont];
  [v31 setFont:v33];

  v34 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v31 setTextColor:v34];

  [v31 setAccessibilityIdentifier:@"ExploreGuidesSubtitle"];
  [(MKExploreGuidesView *)self setSubtitleLabel:v31];
  v35 = [(MKExploreGuidesView *)self labelsStack];
  [v35 addArrangedSubview:v31];

  [(MKExploreGuidesView *)self setupImage];
}

- (id)_imageTemplateURL
{
  p_exploreGuidesResponse = &self->_exploreGuidesResponse;
  v4 = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse imageTemplateURL];
  v5 = [v4 length];

  if (!v5)
  {
    p_exploreGuidesResponse = &self->_exploreGuide;
  }

  v6 = [*p_exploreGuidesResponse imageTemplateURL];

  return v6;
}

- (id)_subtitle
{
  v3 = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse subtitle];
  v4 = [v3 length];

  if (v4)
  {
    [(MKExploreGuidesResponse *)self->_exploreGuidesResponse subtitle];
  }

  else
  {
    _MKLocalizedStringFromThisBundle(@"[Curated Collections] Explore Guide Subtitle");
  }
  v5 = ;

  return v5;
}

- (id)_title
{
  v3 = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse title];
  v4 = [v3 length];

  if (v4)
  {
    [(MKExploreGuidesResponse *)self->_exploreGuidesResponse title];
  }

  else
  {
    _MKLocalizedStringFromThisBundle(@"[Curated Collections] Explore Guides Title");
  }
  v5 = ;

  return v5;
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(MKExploreGuidesView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 preferredContentSizeCategory];

  if (v7 != v8)
  {

    [(MKExploreGuidesView *)self updateUI];
  }
}

- (void)updateUI
{
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v5 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(MKExploreGuidesView *)self setDefaultTitleFont:v5];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(MKExploreGuidesView *)self setDefaultSubtitleFont:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:v3];
  v8 = [(MKExploreGuidesView *)self defaultTitleFont];
  v9 = [v7 scaledFontForFont:v8 maximumPointSize:36.0];
  [(MKExploreGuidesView *)self setMaxSupportedTitleFont:v9];

  v10 = [(MKExploreGuidesView *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = UIContentSizeCategoryCompareToCategory(v11, *MEMORY[0x1E69DDC50]);

  v13 = [(MKExploreGuidesView *)self subtitleLabel];
  v14 = v13;
  if (v12 == NSOrderedAscending)
  {
    [v13 setHidden:0];

    v15 = [(MKExploreGuidesView *)self defaultTitleFont];
    v16 = [(MKExploreGuidesView *)self titleLabel];
    [v16 setFont:v15];

    v18 = [(MKExploreGuidesView *)self defaultSubtitleFont];
    [(MKExploreGuidesView *)self subtitleLabel];
  }

  else
  {
    [v13 setHidden:1];

    v18 = [(MKExploreGuidesView *)self maxSupportedTitleFont];
    [(MKExploreGuidesView *)self titleLabel];
  }
  v17 = ;
  [v17 setFont:v18];
}

- (void)updateUIContent
{
  v3 = [(MKExploreGuidesView *)self _title];
  v4 = [(MKExploreGuidesView *)self titleLabel];
  [v4 setText:v3];

  v5 = [(MKExploreGuidesView *)self _title];
  v6 = [(MKExploreGuidesView *)self button];
  [v6 setAccessibilityLabel:v5];

  v7 = [(MKExploreGuidesView *)self _subtitle];
  v8 = [(MKExploreGuidesView *)self subtitleLabel];
  [v8 setText:v7];

  v9 = +[MKSystemController sharedInstance];
  [v9 screenScale];
  v11 = v10;

  v12 = v11 * 92.0;
  +[MKExploreGuidesView defaultHeight];
  v14 = v11 * v13;
  v15 = MEMORY[0x1E69A1DA0];
  v16 = [(MKExploreGuidesView *)self _imageTemplateURL];
  v17 = [v15 imageURLForSize:v16 imageTemplateURL:{v12, v14}];

  v18 = +[MKAppImageManager sharedImageManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__MKExploreGuidesView_updateUIContent__block_invoke;
  v19[3] = &unk_1E76CC830;
  v19[4] = self;
  [v18 loadAppImageAtURL:v17 completionHandler:v19];
}

uint64_t __38__MKExploreGuidesView_updateUIContent__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 480);
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  return [v2 setImage:v3];
}

- (void)updateExploreGuidesResponse:(id)a3
{
  v7 = a3;
  if (![(MKExploreGuidesResponse *)self->_exploreGuidesResponse isEqual:?])
  {
    objc_storeStrong(&self->_exploreGuidesResponse, a3);
    v5 = [v7 exploreGuides];
    exploreGuide = self->_exploreGuide;
    self->_exploreGuide = v5;

    [(MKExploreGuidesView *)self updateUIContent];
  }
}

- (UIEdgeInsets)defaultInsets
{
  v2 = [[MKPlaceCollectionsSizeController alloc] initWithCollectionsConfiguration:0 isSingleCollection:1 usingTraitCollections:0 inContext:self, 7];
  [(MKPlaceCollectionsSizeController *)v2 sectionInsets];
  v4 = v3;
  [(MKPlaceCollectionsSizeController *)v2 sectionInsets];
  v6 = v5;

  v7 = 5.0;
  v8 = 5.0;
  v9 = v4;
  v10 = v6;
  result.right = v10;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (void)_commonSetup
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(MKExploreGuidesView *)self setBackgroundColor:v3];

  [(MKExploreGuidesView *)self setClipsToBounds:1];
  [(MKExploreGuidesView *)self setAccessibilityIdentifier:@"ExploreGuidesView"];
  [(MKExploreGuidesView *)self setupSubviews];
  [(MKExploreGuidesView *)self updateUI];
  [(MKExploreGuidesView *)self updateUIContent];
  [(MKExploreGuidesView *)self setupConstraints];
  v6[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5 = [(MKExploreGuidesView *)self registerForTraitChanges:v4 withAction:sel_traitEnvironment_didChangeTraitCollection_];
}

- (void)_openURL
{
  v4 = +[MKSystemController sharedInstance];
  v3 = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse punchInURL];
  [v4 openURL:v3 completionHandler:0];
}

- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  v24.receiver = self;
  v24.super_class = MKExploreGuidesView;
  v11 = [(MKExploreGuidesView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_exploreGuidesResponse, a3);
    v13 = [v10 exploreGuides];
    exploreGuide = v12->_exploreGuide;
    v12->_exploreGuide = v13;

    v12->_edgeInsets.top = top;
    v12->_edgeInsets.left = left;
    v12->_edgeInsets.bottom = bottom;
    v12->_edgeInsets.right = right;
    objc_initWeak(&location, v12);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __64__MKExploreGuidesView_initWithExploreGuidesResponse_edgeInsets___block_invoke;
    v21 = &unk_1E76C70F8;
    objc_copyWeak(&v22, &location);
    v15 = MEMORY[0x1A58E9F30](&v18);
    tapHandler = v12->_tapHandler;
    v12->_tapHandler = v15;

    [(MKExploreGuidesView *)v12 _commonSetup:v18];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __64__MKExploreGuidesView_initWithExploreGuidesResponse_edgeInsets___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _openURL];
    WeakRetained = v2;
  }
}

- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)a3
{
  v4 = a3;
  [(MKExploreGuidesView *)self defaultInsets];
  v5 = [(MKExploreGuidesView *)self initWithExploreGuidesResponse:v4 edgeInsets:?];

  return v5;
}

- (MKExploreGuidesView)initWithExploreGuides:(id)a3 tapHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MKExploreGuidesView;
  v9 = [(MKExploreGuidesView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exploreGuide, a3);
    v11 = MEMORY[0x1A58E9F30](v8);
    tapHandler = v10->_tapHandler;
    v10->_tapHandler = v11;

    [(MKExploreGuidesView *)v10 defaultInsets];
    v10->_edgeInsets.top = v13;
    v10->_edgeInsets.left = v14;
    v10->_edgeInsets.bottom = v15;
    v10->_edgeInsets.right = v16;
    [(MKExploreGuidesView *)v10 _commonSetup];
  }

  return v10;
}

@end