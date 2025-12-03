@interface UGCPhotoFeedHeaderView
+ (id)_floatingButtonImageSymbolConfiguration;
- (UGCPhotoFeedHeaderView)initWithOptions:(unint64_t)options;
- (UGCPhotoFeedHeaderViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addPhoto;
- (void)_addPhotosWithEntryPoint:(int64_t)point;
- (void)_doneButtonPressed;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateFonts;
- (void)_updateForOptionsChange;
- (void)_updateTitleText;
- (void)setOptions:(unint64_t)options;
- (void)setTitleModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UGCPhotoFeedHeaderView

- (UGCPhotoFeedHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateForOptionsChange
{
  [(UIButton *)self->_floatingDoneButton setHidden:[(UGCPhotoFeedHeaderView *)self shouldShowDoneButton]^ 1];
  v3 = [(UGCPhotoFeedHeaderView *)self shouldShowAddPhotoButton]^ 1;
  floatingAddButton = self->_floatingAddButton;

  [(UIButton *)floatingAddButton setHidden:v3];
}

- (void)setOptions:(unint64_t)options
{
  if (self->_options != options)
  {
    self->_options = options;
    [(UGCPhotoFeedHeaderView *)self _updateForOptionsChange];
  }
}

- (void)_updateFonts
{
  traitCollection = [(UGCPhotoFeedHeaderView *)self traitCollection];
  v10 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];

  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  v5 = [v4 _mapkit_fontWithWeight:UIFontWeightBold];
  v6 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];
  [(UILabel *)self->_placeNameLabel setFont:v6];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v8 = [v7 _mapkit_fontWithWeight:UIFontWeightSemibold];
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];
  [(UILabel *)self->_attributionLabel setFont:v9];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = UGCPhotoFeedHeaderView;
  changeCopy = change;
  [(UGCPhotoFeedHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(UGCPhotoFeedHeaderView *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(UGCPhotoFeedHeaderView *)self _updateFonts];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  subviews = [(UGCPhotoFeedHeaderView *)self subviews];
  reverseObjectEnumerator = [subviews reverseObjectEnumerator];

  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 isUserInteractionEnabled])
        {
          if (([v14 isHidden] & 1) == 0)
          {
            [v14 alpha];
            if (v15 >= 0.01)
            {
              [v14 convertPoint:self fromView:{x, y}];
              v17 = v16;
              v19 = v18;
              if ([v14 pointInside:eventCopy withEvent:?])
              {
                v20 = [v14 hitTest:eventCopy withEvent:{v17, v19}];
                if (v20)
                {
                  v21 = v20;
                  goto LABEL_15;
                }
              }
            }
          }
        }
      }

      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (void)_updateTitleText
{
  titleText = [(UGCPhotoFeedHeaderTitleModel *)self->_titleModel titleText];
  v4 = [titleText length];

  if (v4)
  {
    v28[0] = NSFontAttributeName;
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    v6 = [v5 _mapkit_fontWithWeight:UIFontWeightBold];
    v29[0] = v6;
    v28[1] = NSForegroundColorAttributeName;
    v7 = +[UIColor labelColor];
    v29[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

    if ([(UGCPhotoFeedHeaderTitleModel *)self->_titleModel showPunchoutSymbol])
    {
      v9 = +[NSBundle mainBundle];
      titleText3 = [v9 localizedStringForKey:@"%@ %@ [Badge format]" value:@"localized string not found" table:0];

      v26 = [[NSAttributedString alloc] initWithString:titleText3];
      v11 = objc_alloc_init(NSTextAttachment);
      [UIImage systemImageNamed:@"arrow.up.right.square.fill"];
      v12 = v27 = v8;
      v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
      v14 = [v13 _mapkit_fontWithWeight:UIFontWeightBold];
      v15 = [UIImageSymbolConfiguration configurationWithFont:v14 scale:1];
      v16 = [v12 imageWithConfiguration:v15];
      v17 = [v16 imageWithRenderingMode:2];
      [v11 setImage:v17];

      v8 = v27;
      v18 = [NSAttributedString attributedStringWithAttachment:v11];
      v19 = [NSAttributedString alloc];
      titleText2 = [(UGCPhotoFeedHeaderTitleModel *)self->_titleModel titleText];
      v21 = [v19 initWithString:titleText2];

      v22 = [NSMutableAttributedString localizedAttributedStringWithFormat:v26, v21, v18];
    }

    else
    {
      v24 = [NSMutableAttributedString alloc];
      titleText3 = [(UGCPhotoFeedHeaderTitleModel *)self->_titleModel titleText];
      v22 = [v24 initWithString:titleText3 attributes:v8];
    }

    [v22 addAttributes:v8 range:{0, objc_msgSend(v22, "length")}];
    v25 = [v22 copy];
    [(UILabel *)self->_placeNameLabel setAttributedText:v25];
  }

  else
  {
    placeNameLabel = self->_placeNameLabel;

    [(UILabel *)placeNameLabel setAttributedText:0];
  }
}

- (void)setTitleModel:(id)model
{
  modelCopy = model;
  if (![(UGCPhotoFeedHeaderTitleModel *)self->_titleModel isEqual:?])
  {
    objc_storeStrong(&self->_titleModel, model);
    [(UGCPhotoFeedHeaderView *)self _updateTitleText];
  }
}

- (void)_setupConstraints
{
  v67 = objc_alloc_init(NSMutableArray);
  leadingAnchor = [(UILabel *)self->_placeNameLabel leadingAnchor];
  leadingAnchor2 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide leadingAnchor];
  v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v68[0] = v64;
  trailingAnchor = [(UILabel *)self->_placeNameLabel trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide trailingAnchor];
  v61 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v68[1] = v61;
  topAnchor = [(UILabel *)self->_placeNameLabel topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide topAnchor];
  v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v68[2] = v58;
  bottomAnchor = [(UILabel *)self->_placeNameLabel bottomAnchor];
  topAnchor3 = [(UILabel *)self->_attributionLabel topAnchor];
  v55 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-4.0];
  v68[3] = v55;
  leadingAnchor3 = [(UILabel *)self->_attributionLabel leadingAnchor];
  leadingAnchor4 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide leadingAnchor];
  v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v68[4] = v52;
  trailingAnchor3 = [(UILabel *)self->_attributionLabel trailingAnchor];
  trailingAnchor4 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide trailingAnchor];
  v49 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v68[5] = v49;
  bottomAnchor2 = [(UILabel *)self->_attributionLabel bottomAnchor];
  bottomAnchor3 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide bottomAnchor];
  v46 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v68[6] = v46;
  leadingAnchor5 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide leadingAnchor];
  layoutMarginsGuide = [(UGCPhotoFeedHeaderView *)self layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
  v42 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v68[7] = v42;
  topAnchor4 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide topAnchor];
  layoutMarginsGuide2 = [(UGCPhotoFeedHeaderView *)self layoutMarginsGuide];
  topAnchor5 = [layoutMarginsGuide2 topAnchor];
  v38 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v68[8] = v38;
  bottomAnchor4 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide bottomAnchor];
  bottomAnchor5 = [(UGCPhotoFeedHeaderView *)self bottomAnchor];
  v35 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-16.0];
  v68[9] = v35;
  topAnchor6 = [(UIButton *)self->_floatingDoneButton topAnchor];
  layoutMarginsGuide3 = [(UGCPhotoFeedHeaderView *)self layoutMarginsGuide];
  topAnchor7 = [layoutMarginsGuide3 topAnchor];
  v31 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v68[10] = v31;
  trailingAnchor5 = [(UIButton *)self->_floatingDoneButton trailingAnchor];
  layoutMarginsGuide4 = [(UGCPhotoFeedHeaderView *)self layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide4 trailingAnchor];
  v27 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v68[11] = v27;
  widthAnchor = [(UIButton *)self->_floatingDoneButton widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:44.0];
  v68[12] = v25;
  heightAnchor = [(UIButton *)self->_floatingDoneButton heightAnchor];
  v23 = [heightAnchor constraintEqualToConstant:44.0];
  v68[13] = v23;
  leadingAnchor7 = [(UIStackView *)self->_floatingButtonsStackView leadingAnchor];
  trailingAnchor7 = [(UILayoutGuide *)self->_photoViewerDescriptionLayoutGuide trailingAnchor];
  v20 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor7 constant:8.0];
  v68[14] = v20;
  topAnchor8 = [(UIStackView *)self->_floatingButtonsStackView topAnchor];
  layoutMarginsGuide5 = [(UGCPhotoFeedHeaderView *)self layoutMarginsGuide];
  topAnchor9 = [layoutMarginsGuide5 topAnchor];
  v16 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v68[15] = v16;
  trailingAnchor8 = [(UIStackView *)self->_floatingButtonsStackView trailingAnchor];
  layoutMarginsGuide6 = [(UGCPhotoFeedHeaderView *)self layoutMarginsGuide];
  trailingAnchor9 = [layoutMarginsGuide6 trailingAnchor];
  v4 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v68[16] = v4;
  heightAnchor2 = [(UIButton *)self->_floatingAddButton heightAnchor];
  heightAnchor3 = [(UIButton *)self->_floatingDoneButton heightAnchor];
  v7 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v68[17] = v7;
  widthAnchor2 = [(UIButton *)self->_floatingAddButton widthAnchor];
  v9 = [widthAnchor2 constraintEqualToConstant:44.0];
  v68[18] = v9;
  heightAnchor4 = [(UIButton *)self->_floatingAddButton heightAnchor];
  v11 = [heightAnchor4 constraintEqualToConstant:44.0];
  v68[19] = v11;
  v12 = [NSArray arrayWithObjects:v68 count:20];
  [v67 addObjectsFromArray:v12];

  v13 = [v67 copy];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_addPhoto
{
  [GEOAPPortal captureUserAction:2147 target:612 value:0];
  v3 = +[MUPhotoOptionsMenuButton preferredEntryPoint];
  if (v3)
  {

    [(UGCPhotoFeedHeaderView *)self _addPhotosWithEntryPoint:v3];
  }
}

- (void)_addPhotosWithEntryPoint:(int64_t)point
{
  v6 = objc_alloc_init(MUPresentationOptions);
  [v6 setSourceView:self->_floatingAddButton];
  [v6 setProgressObserver:self->_floatingAddButton];
  delegate = [(UGCPhotoFeedHeaderView *)self delegate];
  [delegate photoFeedHeaderView:self selectedAddPhotoWithEntryPoint:point usingPresentationOptions:v6];
}

- (void)_doneButtonPressed
{
  v4 = objc_alloc_init(MUPresentationOptions);
  [v4 setSourceView:self->_floatingDoneButton];
  delegate = [(UGCPhotoFeedHeaderView *)self delegate];
  [delegate photoFeedHeaderView:self selectedDoneWithPresentationOptions:v4];
}

- (void)_setupSubviews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  placeNameLabel = self->_placeNameLabel;
  self->_placeNameLabel = v7;

  [(UILabel *)self->_placeNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  v10 = [v9 _mapkit_fontWithWeight:UIFontWeightBold];
  [(UILabel *)self->_placeNameLabel setFont:v10];

  [(UILabel *)self->_placeNameLabel setNumberOfLines:0];
  [(UILabel *)self->_placeNameLabel setUserInteractionEnabled:0];
  [(UILabel *)self->_placeNameLabel setAccessibilityIdentifier:@"PlaceNameLabel"];
  v11 = self->_placeNameLabel;
  v12 = [[_UIScrollPocketInteraction alloc] initWithStyle:0];
  [(UILabel *)v11 addInteraction:v12];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  attributionLabel = self->_attributionLabel;
  self->_attributionLabel = v13;

  [(UILabel *)self->_attributionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v16 = [v15 _mapkit_fontWithWeight:UIFontWeightSemibold];
  [(UILabel *)self->_attributionLabel setFont:v16];

  [(UILabel *)self->_attributionLabel setNumberOfLines:0];
  [(UILabel *)self->_attributionLabel setUserInteractionEnabled:0];
  [(UILabel *)self->_attributionLabel setAccessibilityIdentifier:@"AttributionLabel"];
  v17 = self->_attributionLabel;
  v18 = [[_UIScrollPocketInteraction alloc] initWithStyle:0];
  [(UILabel *)v17 addInteraction:v18];

  v19 = objc_alloc_init(UILayoutGuide);
  photoViewerDescriptionLayoutGuide = self->_photoViewerDescriptionLayoutGuide;
  self->_photoViewerDescriptionLayoutGuide = v19;

  v21 = objc_alloc_init(UIButton);
  floatingDoneButton = self->_floatingDoneButton;
  self->_floatingDoneButton = v21;

  [(UIButton *)self->_floatingDoneButton _setTouchInsets:-16.0, -16.0, -16.0, -16.0];
  layer = [(UIButton *)self->_floatingDoneButton layer];
  [layer setCornerRadius:22.0];

  [(UIButton *)self->_floatingDoneButton setAccessibilityIdentifier:@"DoneButton"];
  [(UIButton *)self->_floatingDoneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_floatingDoneButton _maps_applyGlassBackgroundForButton:1 buttonBackgroundType:0];
  v24 = self->_floatingDoneButton;
  v25 = +[UGCPhotoFeedHeaderView _floatingButtonImageSymbolConfiguration];
  v26 = [UIImage systemImageNamed:@"xmark" withConfiguration:v25];
  [(UIButton *)v24 setImage:v26 forState:0];

  [(UIButton *)self->_floatingDoneButton addTarget:self action:"_doneButtonPressed" forControlEvents:64];
  v27 = objc_alloc_init(UIButton);
  floatingAddButton = self->_floatingAddButton;
  self->_floatingAddButton = v27;

  [(UIButton *)self->_floatingAddButton _setTouchInsets:-16.0, -16.0, -16.0, -16.0];
  layer2 = [(UIButton *)self->_floatingAddButton layer];
  [layer2 setCornerRadius:22.0];

  [(UIButton *)self->_floatingAddButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_floatingAddButton setShowsMenuAsPrimaryAction:1];
  [(UIButton *)self->_floatingAddButton setPreferredMenuElementOrder:2];
  [(UIButton *)self->_floatingAddButton setAccessibilityIdentifier:@"AddButton"];
  [(UIButton *)self->_floatingAddButton _maps_applyGlassBackgroundForButton:1 buttonBackgroundType:0];
  v30 = self->_floatingAddButton;
  v31 = +[UGCPhotoFeedHeaderView _floatingButtonImageSymbolConfiguration];
  v32 = [UIImage systemImageNamed:@"plus" withConfiguration:v31];
  [(UIButton *)v30 setImage:v32 forState:0];

  [(UIButton *)self->_floatingAddButton addTarget:self action:"_addButtonPressed" forControlEvents:64];
  objc_initWeak(&location, self);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100DCF534;
  v40[3] = &unk_101661B98;
  objc_copyWeak(&v41, &location);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100DCF57C;
  v38[3] = &unk_101661B98;
  objc_copyWeak(&v39, &location);
  v33 = [MUPhotoOptionsMenuButton menuForPhotoOptionsMenuButtonWithCameraCompletion:v40 libraryCompletion:v38];
  [(UIButton *)self->_floatingAddButton setMenu:v33];

  [(UIButton *)self->_floatingAddButton addTarget:self action:"_addPhoto" forControlEvents:0x4000];
  LODWORD(v34) = 1148846080;
  [(UIButton *)self->_floatingAddButton setContentCompressionResistancePriority:0 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [(UIButton *)self->_floatingAddButton setContentHuggingPriority:0 forAxis:v35];
  v36 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  floatingButtonsStackView = self->_floatingButtonsStackView;
  self->_floatingButtonsStackView = v36;

  [(UIStackView *)self->_floatingButtonsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_floatingButtonsStackView setAxis:0];
  [(UIStackView *)self->_floatingButtonsStackView setSpacing:10.0];
  [(UIStackView *)self->_floatingButtonsStackView _setTouchInsets:-16.0, -16.0, -16.0, -16.0];
  [(UIStackView *)self->_floatingButtonsStackView addArrangedSubview:self->_floatingAddButton];
  [(UIStackView *)self->_floatingButtonsStackView addArrangedSubview:self->_floatingDoneButton];
  [(UGCPhotoFeedHeaderView *)self addSubview:self->_floatingButtonsStackView];
  [(UGCPhotoFeedHeaderView *)self addLayoutGuide:self->_photoViewerDescriptionLayoutGuide];
  [(UGCPhotoFeedHeaderView *)self addSubview:self->_placeNameLabel];
  [(UGCPhotoFeedHeaderView *)self addSubview:self->_attributionLabel];
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

- (UGCPhotoFeedHeaderView)initWithOptions:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = UGCPhotoFeedHeaderView;
  v4 = [(UGCPhotoFeedHeaderView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    [(UGCPhotoFeedHeaderView *)v4 setAccessibilityIdentifier:@"PhotoFeedHeader"];
    [(UGCPhotoFeedHeaderView *)v5 _setupSubviews];
    [(UGCPhotoFeedHeaderView *)v5 _setupConstraints];
    [(UGCPhotoFeedHeaderView *)v5 _updateForOptionsChange];
  }

  return v5;
}

+ (id)_floatingButtonImageSymbolConfiguration
{
  v2 = qword_10195F1D8;
  if (!qword_10195F1D8)
  {
    v3 = [UIFont systemFontOfSize:23.0];
    v4 = [UIImageSymbolConfiguration configurationWithFont:v3];
    v5 = +[UIColor labelColor];
    v11 = v5;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];
    v8 = [v4 configurationByApplyingConfiguration:v7];
    v9 = qword_10195F1D8;
    qword_10195F1D8 = v8;

    v2 = qword_10195F1D8;
  }

  return v2;
}

@end