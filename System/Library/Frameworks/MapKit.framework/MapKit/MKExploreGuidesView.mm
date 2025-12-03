@interface MKExploreGuidesView
- (MKExploreGuidesView)initWithExploreGuides:(id)guides tapHandler:(id)handler;
- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)response;
- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)response edgeInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)defaultInsets;
- (id)_imageTemplateURL;
- (id)_subtitle;
- (id)_title;
- (void)_commonSetup;
- (void)_openURL;
- (void)buttonTouchDown:(id)down;
- (void)buttonTouchUp:(id)up;
- (void)didSelectExploreGuides:(id)guides;
- (void)setupConstraints;
- (void)setupImage;
- (void)setupSubviews;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)updateExploreGuidesResponse:(id)response;
- (void)updateUI;
- (void)updateUIContent;
@end

@implementation MKExploreGuidesView

- (void)buttonTouchUp:(id)up
{
  upCopy = up;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MKExploreGuidesView_buttonTouchUp___block_invoke;
  v6[3] = &unk_1E76CDB38;
  v7 = upCopy;
  v5 = upCopy;
  [v4 animateWithDuration:v6 animations:0.1];
}

void __37__MKExploreGuidesView_buttonTouchUp___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (void)buttonTouchDown:(id)down
{
  downCopy = down;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__MKExploreGuidesView_buttonTouchDown___block_invoke;
  v6[3] = &unk_1E76CDB38;
  v7 = downCopy;
  v5 = downCopy;
  [v4 animateWithDuration:v6 animations:0.1];
}

void __39__MKExploreGuidesView_buttonTouchDown___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] systemGray4Color];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (void)didSelectExploreGuides:(id)guides
{
  tapHandler = [(MKExploreGuidesView *)self tapHandler];

  if (tapHandler)
  {
    tapHandler2 = [(MKExploreGuidesView *)self tapHandler];
    exploreGuide = [(MKExploreGuidesView *)self exploreGuide];
    tapHandler2[2](tapHandler2, exploreGuide);
  }
}

- (void)setupConstraints
{
  v75[15] = *MEMORY[0x1E69E9840];
  imageView = [(MKExploreGuidesView *)self imageView];
  widthAnchor = [imageView widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:92.0];

  LODWORD(v6) = 1144750080;
  v7 = v5;
  v36 = v5;
  [v5 setPriority:v6];
  v48 = MEMORY[0x1E696ACD8];
  button = [(MKExploreGuidesView *)self button];
  leadingAnchor = [button leadingAnchor];
  leadingAnchor2 = [(MKExploreGuidesView *)self leadingAnchor];
  v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:self->_edgeInsets.left];
  v75[0] = v71;
  button2 = [(MKExploreGuidesView *)self button];
  trailingAnchor = [button2 trailingAnchor];
  trailingAnchor2 = [(MKExploreGuidesView *)self trailingAnchor];
  v67 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-self->_edgeInsets.right];
  v75[1] = v67;
  button3 = [(MKExploreGuidesView *)self button];
  topAnchor = [button3 topAnchor];
  topAnchor2 = [(MKExploreGuidesView *)self topAnchor];
  v63 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self->_edgeInsets.top];
  v75[2] = v63;
  button4 = [(MKExploreGuidesView *)self button];
  bottomAnchor = [button4 bottomAnchor];
  bottomAnchor2 = [(MKExploreGuidesView *)self bottomAnchor];
  v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-self->_edgeInsets.bottom];
  v75[3] = v59;
  labelsStack = [(MKExploreGuidesView *)self labelsStack];
  leadingAnchor3 = [labelsStack leadingAnchor];
  button5 = [(MKExploreGuidesView *)self button];
  leadingAnchor4 = [button5 leadingAnchor];
  v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v75[4] = v54;
  labelsStack2 = [(MKExploreGuidesView *)self labelsStack];
  centerYAnchor = [labelsStack2 centerYAnchor];
  button6 = [(MKExploreGuidesView *)self button];
  centerYAnchor2 = [button6 centerYAnchor];
  v49 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v75[5] = v49;
  labelsStack3 = [(MKExploreGuidesView *)self labelsStack];
  trailingAnchor3 = [labelsStack3 trailingAnchor];
  imageView2 = [(MKExploreGuidesView *)self imageView];
  leadingAnchor5 = [imageView2 leadingAnchor];
  v43 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor5 constant:-16.0];
  v75[6] = v43;
  labelsStack4 = [(MKExploreGuidesView *)self labelsStack];
  topAnchor3 = [labelsStack4 topAnchor];
  button7 = [(MKExploreGuidesView *)self button];
  topAnchor4 = [button7 topAnchor];
  v38 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:16.0];
  v75[7] = v38;
  labelsStack5 = [(MKExploreGuidesView *)self labelsStack];
  bottomAnchor3 = [labelsStack5 bottomAnchor];
  button8 = [(MKExploreGuidesView *)self button];
  bottomAnchor4 = [button8 bottomAnchor];
  v32 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-16.0];
  v75[8] = v32;
  imageView3 = [(MKExploreGuidesView *)self imageView];
  trailingAnchor4 = [imageView3 trailingAnchor];
  button9 = [(MKExploreGuidesView *)self button];
  trailingAnchor5 = [button9 trailingAnchor];
  v27 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v75[9] = v27;
  imageView4 = [(MKExploreGuidesView *)self imageView];
  topAnchor5 = [imageView4 topAnchor];
  button10 = [(MKExploreGuidesView *)self button];
  topAnchor6 = [button10 topAnchor];
  v22 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v75[10] = v22;
  imageView5 = [(MKExploreGuidesView *)self imageView];
  bottomAnchor5 = [imageView5 bottomAnchor];
  button11 = [(MKExploreGuidesView *)self button];
  bottomAnchor6 = [button11 bottomAnchor];
  v8 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v75[11] = v8;
  imageView6 = [(MKExploreGuidesView *)self imageView];
  widthAnchor2 = [imageView6 widthAnchor];
  imageView7 = [(MKExploreGuidesView *)self imageView];
  heightAnchor = [imageView7 heightAnchor];
  v13 = [widthAnchor2 constraintEqualToAnchor:heightAnchor multiplier:1.22666667];
  v75[12] = v13;
  imageView8 = [(MKExploreGuidesView *)self imageView];
  widthAnchor3 = [imageView8 widthAnchor];
  v16 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:92.0];
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

  imageView = [(MKExploreGuidesView *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView2 = [(MKExploreGuidesView *)self imageView];
  [imageView2 setAccessibilityIdentifier:@"ExploreGuidesImage"];

  imageView3 = [(MKExploreGuidesView *)self imageView];
  [imageView3 setContentMode:2];

  imageView4 = [(MKExploreGuidesView *)self imageView];
  LODWORD(v9) = 1144750080;
  [imageView4 setContentHuggingPriority:0 forAxis:v9];

  imageView5 = [(MKExploreGuidesView *)self imageView];
  LODWORD(v11) = 1132068864;
  [imageView5 setContentCompressionResistancePriority:0 forAxis:v11];

  imageView6 = [(MKExploreGuidesView *)self imageView];
  [(MKExploreGuidesView *)self addSubview:imageView6];

  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v13 = 5;
  }

  else
  {
    v13 = 10;
  }

  traitCollection = [(MKExploreGuidesView *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v16 = v15;
  imageView7 = [(MKExploreGuidesView *)self imageView];
  [imageView7 _setContinuousCornerRadius:v16];

  imageView8 = [(MKExploreGuidesView *)self imageView];
  layer = [imageView8 layer];
  [layer setMaskedCorners:v13];

  imageView9 = [(MKExploreGuidesView *)self imageView];
  [imageView9 setClipsToBounds:1];
}

- (void)setupSubviews
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(MKExploreGuidesView *)self setButton:v3];

  button = [(MKExploreGuidesView *)self button];
  [button setTranslatesAutoresizingMaskIntoConstraints:0];

  traitCollection = [(MKExploreGuidesView *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v7 = v6;
  button2 = [(MKExploreGuidesView *)self button];
  [button2 _setContinuousCornerRadius:v7];

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  button3 = [(MKExploreGuidesView *)self button];
  [button3 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  button4 = [(MKExploreGuidesView *)self button];
  [button4 addTarget:self action:sel_didSelectExploreGuides_ forControlEvents:0x2000];

  button5 = [(MKExploreGuidesView *)self button];
  [button5 addTarget:self action:sel_buttonTouchDown_ forControlEvents:17];

  button6 = [(MKExploreGuidesView *)self button];
  [button6 addTarget:self action:sel_buttonTouchUp_ forControlEvents:480];

  button7 = [(MKExploreGuidesView *)self button];
  [(MKExploreGuidesView *)self addSubview:button7];

  v15 = objc_alloc(MEMORY[0x1E69DCF90]);
  v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(MKExploreGuidesView *)self setLabelsStack:v16];

  labelsStack = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack setTranslatesAutoresizingMaskIntoConstraints:0];

  labelsStack2 = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack2 setAxis:1];

  labelsStack3 = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack3 setDistribution:0];

  labelsStack4 = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack4 setAlignment:0];

  labelsStack5 = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack5 setUserInteractionEnabled:0];

  labelsStack6 = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack6 setAccessibilityIdentifier:@"ExploreGuidesLabelStack"];

  labelsStack7 = [(MKExploreGuidesView *)self labelsStack];
  [(MKExploreGuidesView *)self addSubview:labelsStack7];

  v36 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v36 setNumberOfLines:1];
  defaultTitleFont = [(MKExploreGuidesView *)self defaultTitleFont];
  [v36 setFont:defaultTitleFont];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v36 setTextColor:labelColor];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setAccessibilityIdentifier:@"ExploreGuidesTitle"];
  LODWORD(v26) = 1148846080;
  [v36 setContentCompressionResistancePriority:1 forAxis:v26];
  [(MKExploreGuidesView *)self setTitleLabel:v36];
  text = [v36 text];
  button8 = [(MKExploreGuidesView *)self button];
  [button8 setAccessibilityLabel:text];

  button9 = [(MKExploreGuidesView *)self button];
  [button9 setAccessibilityIdentifier:@"ExploreGuidesButton"];

  labelsStack8 = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack8 addArrangedSubview:v36];

  v31 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v31 setNumberOfLines:2];
  LODWORD(v32) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v32];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  defaultSubtitleFont = [(MKExploreGuidesView *)self defaultSubtitleFont];
  [v31 setFont:defaultSubtitleFont];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v31 setTextColor:secondaryLabelColor];

  [v31 setAccessibilityIdentifier:@"ExploreGuidesSubtitle"];
  [(MKExploreGuidesView *)self setSubtitleLabel:v31];
  labelsStack9 = [(MKExploreGuidesView *)self labelsStack];
  [labelsStack9 addArrangedSubview:v31];

  [(MKExploreGuidesView *)self setupImage];
}

- (id)_imageTemplateURL
{
  p_exploreGuidesResponse = &self->_exploreGuidesResponse;
  imageTemplateURL = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse imageTemplateURL];
  v5 = [imageTemplateURL length];

  if (!v5)
  {
    p_exploreGuidesResponse = &self->_exploreGuide;
  }

  imageTemplateURL2 = [*p_exploreGuidesResponse imageTemplateURL];

  return imageTemplateURL2;
}

- (id)_subtitle
{
  subtitle = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse subtitle];
  v4 = [subtitle length];

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
  title = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse title];
  v4 = [title length];

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

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(MKExploreGuidesView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [collectionCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
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
  defaultTitleFont = [(MKExploreGuidesView *)self defaultTitleFont];
  v9 = [v7 scaledFontForFont:defaultTitleFont maximumPointSize:36.0];
  [(MKExploreGuidesView *)self setMaxSupportedTitleFont:v9];

  traitCollection = [(MKExploreGuidesView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v12 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]);

  subtitleLabel = [(MKExploreGuidesView *)self subtitleLabel];
  v14 = subtitleLabel;
  if (v12 == NSOrderedAscending)
  {
    [subtitleLabel setHidden:0];

    defaultTitleFont2 = [(MKExploreGuidesView *)self defaultTitleFont];
    titleLabel = [(MKExploreGuidesView *)self titleLabel];
    [titleLabel setFont:defaultTitleFont2];

    defaultSubtitleFont = [(MKExploreGuidesView *)self defaultSubtitleFont];
    [(MKExploreGuidesView *)self subtitleLabel];
  }

  else
  {
    [subtitleLabel setHidden:1];

    defaultSubtitleFont = [(MKExploreGuidesView *)self maxSupportedTitleFont];
    [(MKExploreGuidesView *)self titleLabel];
  }
  v17 = ;
  [v17 setFont:defaultSubtitleFont];
}

- (void)updateUIContent
{
  _title = [(MKExploreGuidesView *)self _title];
  titleLabel = [(MKExploreGuidesView *)self titleLabel];
  [titleLabel setText:_title];

  _title2 = [(MKExploreGuidesView *)self _title];
  button = [(MKExploreGuidesView *)self button];
  [button setAccessibilityLabel:_title2];

  _subtitle = [(MKExploreGuidesView *)self _subtitle];
  subtitleLabel = [(MKExploreGuidesView *)self subtitleLabel];
  [subtitleLabel setText:_subtitle];

  v9 = +[MKSystemController sharedInstance];
  [v9 screenScale];
  v11 = v10;

  v12 = v11 * 92.0;
  +[MKExploreGuidesView defaultHeight];
  v14 = v11 * v13;
  v15 = MEMORY[0x1E69A1DA0];
  _imageTemplateURL = [(MKExploreGuidesView *)self _imageTemplateURL];
  v17 = [v15 imageURLForSize:_imageTemplateURL imageTemplateURL:{v12, v14}];

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

- (void)updateExploreGuidesResponse:(id)response
{
  responseCopy = response;
  if (![(MKExploreGuidesResponse *)self->_exploreGuidesResponse isEqual:?])
  {
    objc_storeStrong(&self->_exploreGuidesResponse, response);
    exploreGuides = [responseCopy exploreGuides];
    exploreGuide = self->_exploreGuide;
    self->_exploreGuide = exploreGuides;

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(MKExploreGuidesView *)self setBackgroundColor:clearColor];

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
  punchInURL = [(MKExploreGuidesResponse *)self->_exploreGuidesResponse punchInURL];
  [v4 openURL:punchInURL completionHandler:0];
}

- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)response edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  responseCopy = response;
  v24.receiver = self;
  v24.super_class = MKExploreGuidesView;
  v11 = [(MKExploreGuidesView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_exploreGuidesResponse, response);
    exploreGuides = [responseCopy exploreGuides];
    exploreGuide = v12->_exploreGuide;
    v12->_exploreGuide = exploreGuides;

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

- (MKExploreGuidesView)initWithExploreGuidesResponse:(id)response
{
  responseCopy = response;
  [(MKExploreGuidesView *)self defaultInsets];
  v5 = [(MKExploreGuidesView *)self initWithExploreGuidesResponse:responseCopy edgeInsets:?];

  return v5;
}

- (MKExploreGuidesView)initWithExploreGuides:(id)guides tapHandler:(id)handler
{
  guidesCopy = guides;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = MKExploreGuidesView;
  v9 = [(MKExploreGuidesView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exploreGuide, guides);
    v11 = MEMORY[0x1A58E9F30](handlerCopy);
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