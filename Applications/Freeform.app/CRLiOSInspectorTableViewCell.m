@interface CRLiOSInspectorTableViewCell
+ (id)checkableCellWithImage:(id)a3 checkmarkOnLeadingEdge:(BOOL)a4 checked:(BOOL)a5 reuseIdentifier:(id)a6;
+ (id)checkableCellWithTitle:(id)a3 checkmarkOnLeadingEdge:(BOOL)a4 checked:(BOOL)a5 reuseIdentifier:(id)a6;
+ (id)checkableCellWithTitle:(id)a3 detailText:(id)a4 checkmarkOnLeadingEdge:(BOOL)a5 checked:(BOOL)a6 reuseIdentifier:(id)a7;
+ (id)checkableSubtitleCellWithTitle:(id)a3 subtitle:(id)a4 checkmarkOnLeadingEdge:(BOOL)a5 checked:(BOOL)a6 reuseIdentifier:(id)a7;
- (BOOL)currentContentSizeCategoryWrapsToNextLine;
- (BOOL)p_needsConstraintsUpdateForElements:(unint64_t)a3;
- (CRLiOSInspectorLabel)customTextLabel;
- (CRLiOSInspectorTableCellImageButton)customImageButton;
- (CRLiOSInspectorTableCellImageView)customImageView;
- (CRLiOSInspectorTableViewCell)initWithCoder:(id)a3;
- (CRLiOSInspectorTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSLayoutXAxisAnchor)leadingContentTrailingEdgeAnchor;
- (NSLayoutXAxisAnchor)trailingContentLeadingEdgeAnchor;
- (UIColor)detailButtonColor;
- (UIColor)detailLabelColor;
- (UIColor)disclosureDetailLabelColor;
- (UIColor)subtitleLabelColor;
- (UIColor)titleLabelColor;
- (UIEdgeInsets)fullSizeControlInsets;
- (UIEdgeInsets)imageInsets;
- (UILabel)customDetailTextLabel;
- (double)minimumRowHeight;
- (double)p_currentAccessibilitySizeRatio;
- (double)p_generateConstraintsForLeadingSideElements:(unint64_t)a3 intoArray:(id)a4;
- (double)p_minimumVerticalTitlePadding;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)p_centerYConstraintForView:(id)a3 atAnchor:(id)a4;
- (id)p_currentDetailLabelFont;
- (id)p_mainLayoutAnchorOwner;
- (id)p_standardLabelFont;
- (unint64_t)p_elementsToConstrain;
- (void)dealloc;
- (void)layoutSubviews;
- (void)p_commonInitWithStyle:(int64_t)a3;
- (void)p_contentSizeCategoryDidChangeNotification:(id)a3;
- (void)p_detailButtonTapped:(id)a3;
- (void)p_generateConstraintsForAccessoryAreaOnFirstLine:(unint64_t)a3 intoArray:(id)a4;
- (void)p_generateConstraintsForAccessoryAreaOnSecondLine:(unint64_t)a3 intoArray:(id)a4;
- (void)p_generateConstraintsForFirstRowLayoutGuideIntoArray:(id)a3;
- (void)p_generateConstraintsForFullSizeControl:(unint64_t)a3 intoArray:(id)a4;
- (void)p_generateConstraintsForImage:(id)a3 container:(id)a4 intoArray:(id)a5;
- (void)p_generateConstraintsForLegacyFixedRowHeightIntoArray:(id)a3;
- (void)p_generateConstraintsForSecondRowLayoutGuide:(unint64_t)a3 intoArray:(id)a4;
- (void)p_generateConstraintsForThirdRowLayoutGuide:(unint64_t)a3 intoArray:(id)a4;
- (void)p_generateConstraintsForTitleArea:(unint64_t)a3 margin:(double)a4 intoArray:(id)a5;
- (void)p_generateConstraintsForTitleAreaTrailingAnchor:(unint64_t)a3 intoArray:(id)a4;
- (void)p_generateConstraintsForTrailingSideElements:(unint64_t)a3 intoArray:(id)a4;
- (void)p_generateGeneralConstraintsForImages:(unint64_t)a3 intoArray:(id)a4;
- (void)p_imageDidChange;
- (void)p_prepareToChangeConstraintsForElements:(unint64_t)a3;
- (void)p_setNeedsUpdateConstraints;
- (void)p_updateConstraintsForElements:(unint64_t)a3;
- (void)p_updateImageTintColor;
- (void)setAutomaticallyResizesForContentSizeCategory:(BOOL)a3;
- (void)setCheckable:(BOOL)a3;
- (void)setChecked:(BOOL)a3;
- (void)setCustomAccessoryType:(int64_t)customAccessoryType;
- (void)setCustomAccessoryView:(id)a3;
- (void)setCustomCheckmarkImage:(id)a3;
- (void)setCustomHighlightedCheckmarkImage:(id)a3;
- (void)setDetailButtonColor:(id)a3;
- (void)setDetailLabelColor:(id)a3;
- (void)setDisablesContentWhenNotUserInteractive:(BOOL)a3;
- (void)setDisclosureDetailLabelColor:(id)a3;
- (void)setExpandAccessoryViewToFillCellHorizontally:(BOOL)a3;
- (void)setFullSizeControl:(id)a3;
- (void)setFullSizeControlInsets:(UIEdgeInsets)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setImageInsets:(UIEdgeInsets)a3;
- (void)setImageUsesStandardMargins:(BOOL)a3;
- (void)setImageUsesTitleLabelColor:(BOOL)a3;
- (void)setLegacyFixedRowHeight:(double)a3;
- (void)setPreventTextLabelFromCompression:(BOOL)a3;
- (void)setSubtitleLabelColor:(id)a3;
- (void)setTitleLabelColor:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setUsesDetailButtonColor:(BOOL)a3;
- (void)setUsesDisclosureDetailLabelColor:(BOOL)a3;
- (void)setUsesSubtitleLabelColor:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation CRLiOSInspectorTableViewCell

- (CRLiOSInspectorTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (a3 == 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137FE9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137FEB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137FF38();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSInspectorTableViewCell initWithStyle:reuseIdentifier:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSInspectorTableViewCell.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:205 isFatal:0 description:"Table View Cell style Value2 is not supported in CRLiOSInspectorTableViewCell."];

    a3 = 1;
  }

  v13.receiver = self;
  v13.super_class = CRLiOSInspectorTableViewCell;
  v10 = [(CRLiOSInspectorTableViewCell *)&v13 initWithStyle:a3 reuseIdentifier:v6];
  v11 = v10;
  if (v10)
  {
    [(CRLiOSInspectorTableViewCell *)v10 p_commonInitWithStyle:a3];
  }

  return v11;
}

- (CRLiOSInspectorTableViewCell)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLiOSInspectorTableViewCell;
  v5 = [(CRLiOSInspectorTableViewCell *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"UITableViewCellStyle"];
    if (v6 == 2)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137FF60();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137FF88();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101380010();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLiOSInspectorTableViewCell initWithCoder:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSInspectorTableViewCell.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:219 isFatal:0 description:"Table View Cell style Value2 is not supported in CRLiOSInspectorTableViewCell."];
    }

    [(CRLiOSInspectorTableViewCell *)v5 p_commonInitWithStyle:v6];
  }

  return v5;
}

- (void)p_commonInitWithStyle:(int64_t)a3
{
  self->_cellStyle = a3;
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = &__NSArray0__struct;

  self->_activeConstrainedElements = 0;
  self->_automaticallyResizesForContentSizeCategory = 1;
  self->_usesTitleLabelColor = 1;
  self->_imageUsesTitleLabelColor = 1;
  self->_expandTextLabelToFillCell = 0;
  v5 = [CRLiOSInspectorTableViewCellBackgroundView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(CRLiOSInspectorTableViewCellBackgroundView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  customBackgroundView = self->_customBackgroundView;
  self->_customBackgroundView = v9;

  [(CRLiOSInspectorTableViewCell *)self setBackgroundView:self->_customBackgroundView];
  v11 = [[CRLiOSInspectorTableViewCellSelectedBackgroundView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  customSelectedBackgroundView = self->_customSelectedBackgroundView;
  self->_customSelectedBackgroundView = v11;

  [(CRLiOSInspectorTableViewCell *)self setSelectedBackgroundView:self->_customSelectedBackgroundView];
  v13 = +[UIColor labelColor];
  objc_storeWeak(&self->_titleLabelColor, v13);

  v14 = +[UIColor secondaryLabelColor];
  objc_storeWeak(&self->_detailLabelColor, v14);

  v15 = +[UIColor secondaryLabelColor];
  objc_storeWeak(&self->_disclosureDetailLabelColor, v15);

  self->_usesDisclosureDetailLabelColor = 1;
  self->_usesSubtitleLabelColor = 0;
  [(CRLiOSInspectorTableViewCell *)self setIndentationWidth:16.0];
  self->_disablesContentWhenNotUserInteractive = 1;
  v16 = *&UIEdgeInsetsZero.bottom;
  *&self->_imageInsets.top = *&UIEdgeInsetsZero.top;
  *&self->_imageInsets.bottom = v16;
  v17 = objc_alloc_init(UILayoutGuide);
  firstRowLayoutGuide = self->_firstRowLayoutGuide;
  self->_firstRowLayoutGuide = v17;

  [(UILayoutGuide *)self->_firstRowLayoutGuide setIdentifier:@"firstRowLayoutGuide"];
  v19 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v19 addLayoutGuide:self->_firstRowLayoutGuide];

  v20 = objc_alloc_init(UILayoutGuide);
  secondRowLayoutGuide = self->_secondRowLayoutGuide;
  self->_secondRowLayoutGuide = v20;

  [(UILayoutGuide *)self->_secondRowLayoutGuide setIdentifier:@"secondRowLayoutGuide"];
  v22 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v22 addLayoutGuide:self->_secondRowLayoutGuide];

  v23 = objc_alloc_init(UILayoutGuide);
  thirdRowLayoutGuide = self->_thirdRowLayoutGuide;
  self->_thirdRowLayoutGuide = v23;

  [(UILayoutGuide *)self->_thirdRowLayoutGuide setIdentifier:@"thirdRowLayoutGuide"];
  v25 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v25 addLayoutGuide:self->_thirdRowLayoutGuide];

  v26 = objc_alloc_init(UILayoutGuide);
  titleAreaLayoutGuide = self->_titleAreaLayoutGuide;
  self->_titleAreaLayoutGuide = v26;

  [(UILayoutGuide *)self->_titleAreaLayoutGuide setIdentifier:@"titleAreaLayoutGuide"];
  v28 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v28 addLayoutGuide:self->_titleAreaLayoutGuide];

  v29 = objc_alloc_init(UILayoutGuide);
  accessoryViewLayoutGuide = self->_accessoryViewLayoutGuide;
  self->_accessoryViewLayoutGuide = v29;

  [(UILayoutGuide *)self->_accessoryViewLayoutGuide setIdentifier:@"accessoryViewLayoutGuide"];
  v31 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v31 addLayoutGuide:self->_accessoryViewLayoutGuide];

  v32 = objc_alloc_init(UILayoutGuide);
  firstRowCenterFreeSpaceLayoutGuide = self->_firstRowCenterFreeSpaceLayoutGuide;
  self->_firstRowCenterFreeSpaceLayoutGuide = v32;

  [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide setIdentifier:@"firstRowCenterFreeSpaceLayoutGuide"];
  v34 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v34 addLayoutGuide:self->_firstRowCenterFreeSpaceLayoutGuide];

  v35 = objc_alloc_init(UILayoutGuide);
  insetFirstRowCenterFreeSpaceLayoutGuide = self->_insetFirstRowCenterFreeSpaceLayoutGuide;
  self->_insetFirstRowCenterFreeSpaceLayoutGuide = v35;

  [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide setIdentifier:@"insetFirstRowCenterFreeSpaceLayoutGuide"];
  v37 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v37 addLayoutGuide:self->_insetFirstRowCenterFreeSpaceLayoutGuide];

  v38 = objc_alloc_init(UILayoutGuide);
  titleAndDetailLayoutGuide = self->_titleAndDetailLayoutGuide;
  self->_titleAndDetailLayoutGuide = v38;

  [(UILayoutGuide *)self->_titleAndDetailLayoutGuide setIdentifier:@"titleAndDetailLayoutGuide"];
  v40 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [v40 addLayoutGuide:self->_titleAndDetailLayoutGuide];

  v41 = [(CRLiOSInspectorTableViewCell *)self heightAnchor];
  [objc_opt_class() minimumHeight];
  v44 = [v41 constraintGreaterThanOrEqualToConstant:?];

  LODWORD(v42) = 1148829696;
  [v44 setPriority:v42];
  [v44 setActive:1];
  v43 = +[NSNotificationCenter defaultCenter];
  [v43 addObserver:self selector:"p_willChangeStatusBarOrientation:" name:UIApplicationWillChangeStatusBarOrientationNotification object:0];
  [v43 addObserver:self selector:"p_contentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
  [(CRLiOSInspectorTableViewCell *)self p_setNeedsUpdateConstraints];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v4 dealloc];
}

- (BOOL)currentContentSizeCategoryWrapsToNextLine
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (CRLiOSInspectorLabel)customTextLabel
{
  customTextLabel = self->_customTextLabel;
  if (!customTextLabel)
  {
    v4 = [[CRLiOSInspectorLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_customTextLabel;
    self->_customTextLabel = v4;

    v6 = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
    [(CRLiOSInspectorLabel *)self->_customTextLabel setFont:v6];

    v7 = [(CRLiOSInspectorTableViewCell *)self contentView];
    [v7 addSubview:self->_customTextLabel];

    [(CRLiOSInspectorTableViewCell *)self p_setNeedsUpdateConstraints];
    customTextLabel = self->_customTextLabel;
  }

  return customTextLabel;
}

- (UILabel)customDetailTextLabel
{
  customDetailTextLabel = self->_customDetailTextLabel;
  if (!customDetailTextLabel)
  {
    if (self->_cellStyle)
    {
      v4 = [[CRLiOSInspectorLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v5 = self->_customDetailTextLabel;
      self->_customDetailTextLabel = &v4->super;

      v6 = [(CRLiOSInspectorTableViewCell *)self p_currentDetailLabelFont];
      [(UILabel *)self->_customDetailTextLabel setFont:v6];

      v7 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [v7 addSubview:self->_customDetailTextLabel];

      [(CRLiOSInspectorTableViewCell *)self p_setNeedsUpdateConstraints];
      customDetailTextLabel = self->_customDetailTextLabel;
    }

    else
    {
      customDetailTextLabel = 0;
    }
  }

  return customDetailTextLabel;
}

- (CRLiOSInspectorTableCellImageView)customImageView
{
  customImageView = self->_customImageView;
  if (!customImageView)
  {
    v4 = [[CRLiOSInspectorTableCellImageView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_customImageView;
    self->_customImageView = v4;

    [(CRLiOSInspectorTableCellImageView *)self->_customImageView setContentMode:4];
    [(CRLiOSInspectorTableCellImageView *)self->_customImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CRLiOSInspectorTableCellImageView *)self->_customImageView setParentCell:self];
    v6 = [(CRLiOSInspectorTableViewCell *)self contentView];
    [v6 addSubview:self->_customImageView];

    [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton removeFromSuperview];
    customImageButton = self->_customImageButton;
    self->_customImageButton = 0;

    [(CRLiOSInspectorTableViewCell *)self p_setNeedsUpdateConstraints];
    customImageView = self->_customImageView;
  }

  return customImageView;
}

- (CRLiOSInspectorTableCellImageButton)customImageButton
{
  customImageButton = self->_customImageButton;
  if (!customImageButton)
  {
    v4 = [[CRLiOSInspectorTableCellImageButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_customImageButton;
    self->_customImageButton = v4;

    [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton setContentMode:4];
    [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton setParentCell:self];
    v6 = [(CRLiOSInspectorTableViewCell *)self contentView];
    [v6 addSubview:self->_customImageButton];

    [(CRLiOSInspectorTableCellImageView *)self->_customImageView removeFromSuperview];
    customImageView = self->_customImageView;
    self->_customImageView = 0;

    [(CRLiOSInspectorTableViewCell *)self p_setNeedsUpdateConstraints];
    customImageButton = self->_customImageButton;
  }

  return customImageButton;
}

- (void)setCustomAccessoryType:(int64_t)customAccessoryType
{
  if (customAccessoryType == 3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101380038();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138004C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013800D4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLiOSInspectorTableViewCell setCustomAccessoryType:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSInspectorTableViewCell.m"];

    [(CRLiOSInspectorTableViewCell *)self setChecked:1];
  }

  else if (self->_customAccessoryType != customAccessoryType)
  {
    self->_customAccessoryType = customAccessoryType;
    customStandardAccessoryView = self->_customStandardAccessoryView;
    if (customStandardAccessoryView)
    {
      [(UIView *)customStandardAccessoryView removeFromSuperview];
      customAccessoryType = self->_customAccessoryType;
    }

    if (customAccessoryType <= 4)
    {
      if (((1 << customAccessoryType) & 0xB) != 0)
      {
        v8 = self->_customStandardAccessoryView;
        self->_customStandardAccessoryView = 0;
      }

      else
      {
        v9 = [UIButton buttonWithType:2];
        [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)v9 addTarget:self action:"p_detailButtonTapped:" forControlEvents:64];
        v10 = self->_customStandardAccessoryView;
        self->_customStandardAccessoryView = v9;
        v11 = v9;

        v8 = [(CRLiOSInspectorTableViewCell *)self contentView];
        [v8 addSubview:self->_customStandardAccessoryView];
      }
    }

    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setCustomAccessoryView:(id)a3
{
  v5 = a3;
  customAccessoryView = self->_customAccessoryView;
  if (customAccessoryView != v5)
  {
    v8 = v5;
    if (customAccessoryView)
    {
      [(UIView *)customAccessoryView removeFromSuperview];
    }

    objc_storeStrong(&self->_customAccessoryView, a3);
    if (self->_customAccessoryView)
    {
      v7 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [v7 addSubview:self->_customAccessoryView];
    }

    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    v5 = v8;
  }
}

- (void)setCheckable:(BOOL)a3
{
  if (self->_checkable != a3)
  {
    self->_checkable = a3;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    checked = self->_checked;
    v6 = [(CRLiOSInspectorTableViewCell *)self checkmarkView];
    [v6 setHidden:!checked];
  }
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  if (!self->_checkable)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013800FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101380110();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101380198();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSInspectorTableViewCell setChecked:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSInspectorTableViewCell.m"];
  }

  if (self->_checked != v3)
  {
    self->_checked = v3;
    v8 = [(CRLiOSInspectorTableViewCell *)self checkmarkView];
    [v8 setHidden:!v3];
  }

  if (v3)
  {
    v9 = [(CRLiOSInspectorTableViewCell *)self accessibilityTraits];
    v10 = UIAccessibilityTraitSelected | v9;
  }

  else
  {
    v11 = UIAccessibilityTraitSelected;
    v10 = [(CRLiOSInspectorTableViewCell *)self accessibilityTraits]& ~v11;
  }

  [(CRLiOSInspectorTableViewCell *)self setAccessibilityTraits:v10];
}

- (void)setCustomCheckmarkImage:(id)a3
{
  v5 = a3;
  if (self->_customCheckmarkImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customCheckmarkImage, a3);
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomCheckmarkImage:v6];
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setUsesCustomCheckmarkImage:v6 != 0];
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    v5 = v6;
  }
}

- (void)setCustomHighlightedCheckmarkImage:(id)a3
{
  v5 = a3;
  if (self->_customHighlightedCheckmarkImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_customHighlightedCheckmarkImage, a3);
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomHighlightedCheckmarkImage:v7];
    v6 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView customCheckmarkImage];
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setUsesCustomCheckmarkImage:v6 != 0];

    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    v5 = v7;
  }
}

- (void)setFullSizeControl:(id)a3
{
  v5 = a3;
  fullSizeControl = self->_fullSizeControl;
  if (fullSizeControl != v5)
  {
    v7 = v5;
    if (fullSizeControl)
    {
      [(UIView *)fullSizeControl removeFromSuperview];
    }

    objc_storeStrong(&self->_fullSizeControl, a3);
    [(UIView *)self->_fullSizeControl removeFromSuperview];
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    v5 = v7;
  }
}

- (void)setFullSizeControlInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fullSizeControlInsets.top, v3), vceqq_f64(*&self->_fullSizeControlInsets.bottom, v4)))) & 1) == 0)
  {
    self->_fullSizeControlInsets = a3;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setImageInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_imageInsets.top), vceqq_f64(v4, *&self->_imageInsets.bottom)))) & 1) == 0)
  {
    self->_imageInsets = a3;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setImageUsesStandardMargins:(BOOL)a3
{
  if (self->_imageUsesStandardMargins != a3)
  {
    self->_imageUsesStandardMargins = a3;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setTitleLabelColor:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_titleLabelColor);
  if (WeakRetained == obj)
  {
  }

  else
  {
    usesTitleLabelColor = self->_usesTitleLabelColor;

    if (usesTitleLabelColor)
    {
      objc_storeWeak(&self->_titleLabelColor, obj);
      [(CRLiOSInspectorLabel *)self->_customTextLabel setTextColor:obj];
      if (self->_imageUsesTitleLabelColor)
      {
        [(CRLiOSInspectorTableViewCell *)self p_updateImageTintColor];
      }
    }
  }
}

- (void)setImageUsesTitleLabelColor:(BOOL)a3
{
  if (self->_imageUsesTitleLabelColor != a3)
  {
    self->_imageUsesTitleLabelColor = a3;
    [(CRLiOSInspectorTableViewCell *)self p_updateImageTintColor];
  }
}

- (void)setDetailLabelColor:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_detailLabelColor);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_detailLabelColor, obj);
    cellStyle = self->_cellStyle;
    if (cellStyle == 3 || cellStyle == 1 && !self->_usesDisclosureDetailLabelColor)
    {
      v5 = [(UILabel *)self->_customDetailTextLabel setTextColor:obj];
    }
  }

  _objc_release_x2(v5);
}

- (void)setDisclosureDetailLabelColor:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_disclosureDetailLabelColor);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_disclosureDetailLabelColor, obj);
    if (self->_cellStyle == 1 && self->_usesDisclosureDetailLabelColor)
    {
      v5 = [(UILabel *)self->_customDetailTextLabel setTextColor:obj];
    }
  }

  _objc_release_x2(v5);
}

- (void)setSubtitleLabelColor:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabelColor);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_subtitleLabelColor, obj);
    if (self->_cellStyle == 3 && self->_usesSubtitleLabelColor)
    {
      v5 = [(UILabel *)self->_customDetailTextLabel setTextColor:obj];
    }
  }

  _objc_release_x2(v5);
}

- (void)setDetailButtonColor:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_detailButtonColor);
  if (WeakRetained == obj)
  {
  }

  else
  {
    usesDetailButtonColor = self->_usesDetailButtonColor;

    if (usesDetailButtonColor)
    {
      objc_storeWeak(&self->_detailButtonColor, obj);
      [(UIView *)self->_customStandardAccessoryView setTintColor:obj];
    }
  }
}

- (void)setUsesDetailButtonColor:(BOOL)a3
{
  if (self->_usesDetailButtonColor != a3)
  {
    self->_usesDetailButtonColor = a3;
    if ((self->_activeConstrainedElements & 0x400) != 0 && a3)
    {
      v4 = [(CRLiOSInspectorTableViewCell *)self detailButtonColor];
      [(UIView *)self->_customStandardAccessoryView setTintColor:v4];
    }
  }
}

- (void)setUsesDisclosureDetailLabelColor:(BOOL)a3
{
  if (self->_usesDisclosureDetailLabelColor != a3)
  {
    self->_usesDisclosureDetailLabelColor = a3;
    if (self->_cellStyle == 1 && (self->_activeConstrainedElements & 0x200) != 0 && a3)
    {
      v4 = [(CRLiOSInspectorTableViewCell *)self disclosureDetailLabelColor];
      [(UILabel *)self->_customDetailTextLabel setTextColor:v4];
    }
  }
}

- (void)setUsesSubtitleLabelColor:(BOOL)a3
{
  if (self->_usesSubtitleLabelColor != a3)
  {
    self->_usesSubtitleLabelColor = a3;
    if ((self->_activeConstrainedElements & 2) != 0 && a3)
    {
      v4 = [(CRLiOSInspectorTableViewCell *)self subtitleLabelColor];
      [(UILabel *)self->_customDetailTextLabel setTextColor:v4];
    }
  }
}

- (void)setDisablesContentWhenNotUserInteractive:(BOOL)a3
{
  if (self->_disablesContentWhenNotUserInteractive != a3)
  {
    self->_disablesContentWhenNotUserInteractive = a3;
    v5 = [(CRLiOSInspectorTableViewCell *)self isUserInteractionEnabled];

    [(CRLiOSInspectorTableViewCell *)self setUserInteractionEnabled:v5];
  }
}

- (void)setExpandAccessoryViewToFillCellHorizontally:(BOOL)a3
{
  if (self->_expandAccessoryViewToFillCellHorizontally != a3)
  {
    self->_expandAccessoryViewToFillCellHorizontally = a3;
    if ((self->_activeConstrainedElements & 0x400) != 0)
    {
      [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setPreventTextLabelFromCompression:(BOOL)a3
{
  if (self->_preventTextLabelFromCompression != a3)
  {
    self->_preventTextLabelFromCompression = a3;
    if (self->_activeConstrainedElements)
    {
      [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setAutomaticallyResizesForContentSizeCategory:(BOOL)a3
{
  if (self->_automaticallyResizesForContentSizeCategory != a3)
  {
    self->_automaticallyResizesForContentSizeCategory = a3;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setLegacyFixedRowHeight:(double)a3
{
  if (self->_legacyFixedRowHeight != a3)
  {
    if (a3 < 0.0)
    {
      a3 = 0.0;
    }

    if (a3 > 0.0)
    {
      self->_automaticallyResizesForContentSizeCategory = 0;
    }

    self->_legacyFixedRowHeight = a3;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (unint64_t)p_elementsToConstrain
{
  customTextLabel = self->_customTextLabel;
  if (customTextLabel)
  {
    v4 = [(CRLiOSInspectorLabel *)customTextLabel text];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  customDetailTextLabel = self->_customDetailTextLabel;
  if (customDetailTextLabel)
  {
    v7 = [(UILabel *)customDetailTextLabel text];
    v8 = [v7 length];

    if (v8)
    {
      cellStyle = self->_cellStyle;
      if (cellStyle == 1)
      {
        if ([(CRLiOSInspectorTableViewCell *)self currentContentSizeCategoryWrapsToNextLine])
        {
          v5 |= 2uLL;
        }

        else
        {
          v5 |= 4uLL;
        }
      }

      else if (cellStyle == 3)
      {
        v5 |= 2uLL;
      }
    }
  }

  customImageView = self->_customImageView;
  if (customImageView)
  {
    v11 = [(CRLiOSInspectorTableCellImageView *)customImageView image];

    if (v11)
    {
      if ([(CRLiOSInspectorTableViewCell *)self showsImageOnTrailingEdge])
      {
        v5 |= 0x40uLL;
      }

      else
      {
        v5 |= 0x20uLL;
      }
    }
  }

  customImageButton = self->_customImageButton;
  if (customImageButton)
  {
    v13 = [(CRLiOSInspectorTableCellImageButton *)customImageButton imageForState:0];

    if (v13)
    {
      if ([(CRLiOSInspectorTableViewCell *)self showsImageOnTrailingEdge])
      {
        v5 |= 0x100uLL;
      }

      else
      {
        v5 |= 0x80uLL;
      }
    }
  }

  if (self->_customAccessoryView)
  {
    v14 = v5 | 0x400;
  }

  else
  {
    v14 = v5;
  }

  customAccessoryType = self->_customAccessoryType;
  v16 = v14 | 0x200;
  v17 = v14 | 0x800;
  if (customAccessoryType == 2)
  {
    v14 |= 0xA00uLL;
  }

  if (customAccessoryType == 4)
  {
    v14 = v17;
  }

  if (customAccessoryType == 1)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  if ([(CRLiOSInspectorTableViewCell *)self checkable]&& ([(CRLiOSInspectorTableViewCell *)self isEditing]& 1) == 0)
  {
    if ([(CRLiOSInspectorTableViewCell *)self showsCheckmarkOnLeadingEdge])
    {
      v18 |= 0x10uLL;
    }

    else
    {
      v18 |= 8uLL;
    }
  }

  v19 = [(CRLiOSInspectorTableViewCell *)self fullSizeControl];

  if (v19)
  {
    return v18 | 0x1000;
  }

  else
  {
    return v18;
  }
}

- (void)p_prepareToChangeConstraintsForElements:(unint64_t)a3
{
  v3 = a3;
  activeConstrainedElements = self->_activeConstrainedElements;
  [NSLayoutConstraint deactivateConstraints:self->_activeConstraints];
  if (v3 & 1) == 0 || (activeConstrainedElements)
  {
    if ((v3 & 1) == 0)
    {
      v9 = [(CRLiOSInspectorLabel *)self->_customTextLabel superview];

      if (v9)
      {
        [(CRLiOSInspectorLabel *)self->_customTextLabel removeFromSuperview];
      }
    }
  }

  else
  {
    v6 = [(CRLiOSInspectorLabel *)self->_customTextLabel superview];

    if (!v6)
    {
      v7 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [v7 addSubview:self->_customTextLabel];
    }

    if (self->_usesTitleLabelColor)
    {
      v8 = [(CRLiOSInspectorTableViewCell *)self titleLabelColor];
      [(CRLiOSInspectorLabel *)self->_customTextLabel setTextColor:v8];
    }
  }

  if ((activeConstrainedElements & 6) != 0)
  {
    if ((v3 & 6) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((v3 & 6) == 0)
  {
LABEL_20:
    v13 = [(UILabel *)self->_customDetailTextLabel superview];

    if (v13)
    {
      [(UILabel *)self->_customDetailTextLabel removeFromSuperview];
    }

    goto LABEL_27;
  }

  v10 = [(UILabel *)self->_customDetailTextLabel superview];

  if (!v10)
  {
    v11 = [(CRLiOSInspectorTableViewCell *)self contentView];
    [v11 addSubview:self->_customDetailTextLabel];
  }

  if ((v3 & 0x200) != 0 && self->_cellStyle == 1 && self->_usesDisclosureDetailLabelColor)
  {
    v12 = [(CRLiOSInspectorTableViewCell *)self disclosureDetailLabelColor];
  }

  else if ((v3 & 2) != 0 && self->_usesSubtitleLabelColor)
  {
    v12 = [(CRLiOSInspectorTableViewCell *)self subtitleLabelColor];
  }

  else
  {
    v12 = [(CRLiOSInspectorTableViewCell *)self detailLabelColor];
  }

  v14 = v12;
  [(UILabel *)self->_customDetailTextLabel setTextColor:v12];

LABEL_27:
  if ((v3 & 0x18) == 0 || (activeConstrainedElements & 0x18) != 0)
  {
    if ((v3 & 0x18) == 0)
    {
      v19 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView superview];

      if (v19)
      {
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView removeFromSuperview];
      }
    }
  }

  else
  {
    v15 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView superview];

    if (!v15)
    {
      if (!self->_checkmarkView)
      {
        v16 = +[CRLiOSInspectorCheckmark checkmark];
        checkmarkView = self->_checkmarkView;
        self->_checkmarkView = v16;

        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setHidden:[(CRLiOSInspectorTableViewCell *)self checked]^ 1];
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setAccessibilityElementsHidden:1];
      }

      v18 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [v18 addSubview:self->_checkmarkView];

      if (self->_customCheckmarkImage)
      {
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setUsesCustomCheckmarkImage:1];
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomCheckmarkImage:self->_customCheckmarkImage];
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomHighlightedCheckmarkImage:self->_customHighlightedCheckmarkImage];
      }
    }
  }

  if ((v3 & 0x60) == 0 || (activeConstrainedElements & 0x60) != 0)
  {
    if ((v3 & 0x60) == 0)
    {
      v22 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView superview];

      if (v22)
      {
        [(CRLiOSInspectorTableCellImageView *)self->_customImageView removeFromSuperview];
      }
    }
  }

  else
  {
    v20 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView superview];

    if (!v20)
    {
      v21 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [v21 addSubview:self->_customImageView];
    }
  }

  if ((v3 & 0x180) == 0 || (activeConstrainedElements & 0x180) != 0)
  {
    if ((v3 & 0x180) == 0)
    {
      v25 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton superview];

      if (v25)
      {
        [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton removeFromSuperview];
      }
    }
  }

  else
  {
    v23 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton superview];

    if (!v23)
    {
      v24 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [v24 addSubview:self->_customImageButton];
    }
  }

  if ((v3 & 0x200) == 0 || (activeConstrainedElements & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0)
    {
      v32 = [(UIImageView *)self->_disclosureView superview];

      if (v32)
      {
        [(UIImageView *)self->_disclosureView removeFromSuperview];
      }
    }
  }

  else
  {
    v26 = [(UIImageView *)self->_disclosureView superview];

    if (!v26)
    {
      if (!self->_disclosureView)
      {
        v27 = [UIImage systemImageNamed:@"chevron.forward"];
        v28 = [[CRLiOSInspectorTableViewCellDisclosureImageView alloc] initWithImage:v27];
        disclosureView = self->_disclosureView;
        self->_disclosureView = &v28->super;

        [(UIImageView *)self->_disclosureView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIImageView *)self->_disclosureView setContentMode:4];
        v30 = +[UIColor tertiaryLabelColor];
        [(UIImageView *)self->_disclosureView setTintColor:v30];
      }

      v31 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [v31 addSubview:self->_disclosureView];
    }
  }

  if ((v3 & 0x400) == 0 || (activeConstrainedElements & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0)
    {
      v35 = [(UIView *)self->_customAccessoryView superview];

      if (v35)
      {
        [(UIView *)self->_customAccessoryView removeFromSuperview];
        customAccessoryView = self->_customAccessoryView;
        self->_customAccessoryView = 0;
        goto LABEL_67;
      }
    }
  }

  else
  {
    v33 = [(UIView *)self->_customAccessoryView superview];

    if (!v33)
    {
      [(UIView *)self->_customAccessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      customAccessoryView = [(CRLiOSInspectorTableViewCell *)self contentView];
      [customAccessoryView addSubview:self->_customAccessoryView];
LABEL_67:
    }
  }

  if ((v3 & 0x800) == 0 || (activeConstrainedElements & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0)
    {
      v38 = [(UIView *)self->_customStandardAccessoryView superview];

      if (v38)
      {
        [(UIView *)self->_customStandardAccessoryView removeFromSuperview];
        customStandardAccessoryView = self->_customStandardAccessoryView;
        self->_customStandardAccessoryView = 0;
        goto LABEL_75;
      }
    }
  }

  else
  {
    v36 = [(UIView *)self->_customStandardAccessoryView superview];

    if (!v36)
    {
      customStandardAccessoryView = [(CRLiOSInspectorTableViewCell *)self contentView];
      [customStandardAccessoryView addSubview:self->_customStandardAccessoryView];
LABEL_75:
    }
  }

  if ((v3 & 0x1000) != 0 && (activeConstrainedElements & 0x1000) == 0)
  {
    v39 = [(UIView *)self->_fullSizeControl superview];

    if (v39)
    {
      goto LABEL_84;
    }

    [(UIView *)self->_fullSizeControl setTranslatesAutoresizingMaskIntoConstraints:0];
    fullSizeControl = [(CRLiOSInspectorTableViewCell *)self contentView];
    [fullSizeControl addSubview:self->_fullSizeControl];
    goto LABEL_83;
  }

  if ((v3 & 0x1000) == 0)
  {
    v41 = [(UIView *)self->_fullSizeControl superview];

    if (v41)
    {
      [(UIView *)self->_fullSizeControl removeFromSuperview];
      fullSizeControl = self->_fullSizeControl;
      self->_fullSizeControl = 0;
LABEL_83:
    }
  }

LABEL_84:
  v42 = [(CRLiOSInspectorTableViewCell *)self isUserInteractionEnabled];

  [(CRLiOSInspectorTableViewCell *)self setUserInteractionEnabled:v42];
}

- (void)p_updateConstraintsForElements:(unint64_t)a3
{
  [(CRLiOSInspectorTableViewCell *)self p_prepareToChangeConstraintsForElements:?];
  v5 = [NSMutableArray arrayWithCapacity:64];
  [(CRLiOSInspectorTableViewCell *)self p_generateGeneralConstraintsForImages:a3 intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForLeadingSideElements:a3 intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForTitleArea:a3 margin:v5 intoArray:?];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForTrailingSideElements:a3 intoArray:v5];
  if ([(CRLiOSInspectorTableViewCell *)self currentContentSizeCategoryWrapsToNextLine])
  {
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForAccessoryAreaOnSecondLine:a3 intoArray:v5];
  }

  else
  {
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForAccessoryAreaOnFirstLine:a3 intoArray:v5];
  }

  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForTitleAreaTrailingAnchor:a3 intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForFullSizeControl:a3 intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForFirstRowLayoutGuideIntoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForSecondRowLayoutGuide:a3 intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForThirdRowLayoutGuide:a3 intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForLegacyFixedRowHeightIntoArray:v5];
  [NSLayoutConstraint activateConstraints:v5];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v5;

  self->_activeConstrainedElements = a3;
  [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
  self->_activeAccessibilitySizeMultiplier = v7;
  self->_constraintConstantsNeedUpdate = 0;
}

- (void)p_generateConstraintsForImage:(id)a3 container:(id)a4 intoArray:(id)a5
{
  v21 = a4;
  v8 = a5;
  [a3 size];
  if (self->_imageUsesStandardMargins)
  {
    LODWORD(v9) = 1148846080;
    [v21 setContentHuggingPriority:0 forAxis:v9];
    goto LABEL_15;
  }

  v11 = v9;
  v12 = v10;
  v13 = [v21 contentMode];
  if (v13 != 2)
  {
    if (v13 == 1)
    {
      v14 = [v21 widthAnchor];
      v15 = [v21 heightAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 multiplier:v11 / v12];
      goto LABEL_8;
    }

    if (v13)
    {
      [objc_opt_class() minimumHeight];
      v19 = v18 + 10.0;
      if (v11 <= v18 + 10.0)
      {
        if ([v21 adjustsImageSizeForAccessibilityContentSizeCategory])
        {
          [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
          v19 = ceil(v19 * v20);
        }
      }

      else
      {
        v19 = v11 + 32.0;
      }

      v14 = [v21 widthAnchor];
      v15 = [v14 constraintEqualToConstant:v19];
      [v8 addObject:v15];
      goto LABEL_14;
    }
  }

  v14 = [v21 widthAnchor];
  v15 = [v21 heightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
LABEL_8:
  v17 = v16;
  [v8 addObject:v16];

LABEL_14:
LABEL_15:
}

- (void)p_generateGeneralConstraintsForImages:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v8 = a4;
  if ((v4 & 0x60) != 0)
  {
    v6 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView image];
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForImage:v6 container:self->_customImageView intoArray:v8];
  }

  if ((v4 & 0x180) != 0)
  {
    v7 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton imageForState:0];
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForImage:v7 container:self->_customImageButton intoArray:v8];
  }
}

- (id)p_centerYConstraintForView:(id)a3 atAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[CRLiOSInspectorTableViewCell currentContentSizeCategoryWrapsToNextLine](self, "currentContentSizeCategoryWrapsToNextLine") && (-[CRLiOSInspectorLabel text](self->_customTextLabel, "text"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, v9))
  {
    v10 = [(CRLiOSInspectorLabel *)self->_customTextLabel font];
    [v10 lineHeight];
    v12 = v11 * 0.5;

    v13 = [v6 centerYAnchor];
    v14 = [(CRLiOSInspectorLabel *)self->_customTextLabel topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:v12];
  }

  else
  {
    v13 = [v6 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v7];
  }

  return v15;
}

- (double)p_generateConstraintsForLeadingSideElements:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v8 = v7;
  right = v7 * ([(CRLiOSInspectorTableViewCell *)self indentationLevel]+ 1);
  v45 = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  v10 = [v45 leadingAnchor];
  objc_storeWeak(&self->_leadingContentTrailingEdgeAnchor, v10);

  self->_needsPaddingOnLeadingContentAnchor = 1;
  v46 = v6;
  if ((v4 & 0x10) != 0)
  {
    LODWORD(v11) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:0 forAxis:v12];
    checkmarkView = self->_checkmarkView;
    v44 = [(CRLiOSInspectorTableViewCell *)self contentView];
    v14 = [v44 centerYAnchor];
    v15 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:checkmarkView atAnchor:v14];
    v49[0] = v15;
    v16 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView leadingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v18 = [v16 constraintEqualToAnchor:WeakRetained constant:right];
    v49[1] = v18;
    v19 = [NSArray arrayWithObjects:v49 count:2];
    [v6 addObjectsFromArray:v19];

    v20 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView trailingAnchor];
    objc_storeWeak(&self->_leadingContentTrailingEdgeAnchor, v20);

    self->_needsPaddingOnLeadingContentAnchor = 1;
    self->_firstRowHasContent = 1;
    right = v8;
  }

  p_imageInsets = &self->_imageInsets;
  v22 = right - v8;
  if (self->_imageUsesStandardMargins)
  {
    v22 = right;
  }

  v23 = v22 + self->_imageInsets.left;
  if ((v4 & 0x20) != 0)
  {
    v24 = 32;
    v42 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView topAnchor];
    v41 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v40 = [v42 constraintGreaterThanOrEqualToAnchor:v41 constant:p_imageInsets->top];
    v48[0] = v40;
    v39 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView bottomAnchor];
    v25 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v26 = [v39 constraintLessThanOrEqualToAnchor:v25 constant:-self->_imageInsets.bottom];
    v48[1] = v26;
    customImageView = self->_customImageView;
    v28 = [(UILayoutGuide *)self->_firstRowLayoutGuide centerYAnchor];
    v29 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:customImageView atAnchor:v28];
    v48[2] = v29;
    v30 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView leadingAnchor];
    v43 = &self->_imageInsets;
    v31 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v32 = [v30 constraintEqualToAnchor:v31 constant:v23];
    v48[3] = v32;
    v33 = v48;
  }

  else
  {
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    v24 = 40;
    v42 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
    v41 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v40 = [v42 constraintGreaterThanOrEqualToAnchor:v41 constant:p_imageInsets->top];
    v47[0] = v40;
    v39 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
    v25 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v26 = [v39 constraintLessThanOrEqualToAnchor:v25 constant:-self->_imageInsets.bottom];
    v47[1] = v26;
    customImageButton = self->_customImageButton;
    v28 = [(UILayoutGuide *)self->_firstRowLayoutGuide centerYAnchor];
    v29 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:customImageButton atAnchor:v28];
    v47[2] = v29;
    v30 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton leadingAnchor];
    v43 = &self->_imageInsets;
    v31 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v32 = [v30 constraintEqualToAnchor:v31 constant:v23];
    v47[3] = v32;
    v33 = v47;
  }

  v35 = [NSArray arrayWithObjects:v33 count:4];
  [v46 addObjectsFromArray:v35];

  v36 = [*(&self->super.super.super.super.isa + v24) trailingAnchor];
  objc_storeWeak(&self->_leadingContentTrailingEdgeAnchor, v36);

  v37 = 1;
  if (!self->_imageUsesStandardMargins)
  {
    v37 = v43->right > 0.0;
  }

  self->_needsPaddingOnLeadingContentAnchor = v37;
  self->_firstRowHasContent = 1;
  right = v8;
  if (!self->_imageUsesStandardMargins)
  {
    right = self->_imageInsets.right;
  }

LABEL_13:

  return right;
}

- (void)p_generateConstraintsForTitleArea:(unint64_t)a3 margin:(double)a4 intoArray:(id)a5
{
  v67 = a3;
  v69 = a5;
  v7 = [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
  WeakRetained = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
  v9 = 0.0;
  if (self->_needsPaddingOnLeadingContentAnchor)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [v7 constraintEqualToAnchor:WeakRetained constant:v10];

  v12 = 1148829696;
  LODWORD(v13) = 1148829696;
  [v11 setPriority:v13];
  if (![(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell])
  {
    [(CRLiOSInspectorTableViewCell *)self p_minimumVerticalTitlePadding];
    v9 = v14;
  }

  v63 = [(UILayoutGuide *)self->_titleAreaLayoutGuide centerYAnchor];
  v15 = [(UILayoutGuide *)self->_firstRowLayoutGuide centerYAnchor];
  v16 = [v63 constraintEqualToAnchor:v15];
  v76[0] = v16;
  v17 = [(UILayoutGuide *)self->_titleAreaLayoutGuide topAnchor];
  v18 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:v9];
  v76[1] = v19;
  v20 = [(UILayoutGuide *)self->_titleAreaLayoutGuide bottomAnchor];
  v21 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-v9];
  v76[2] = v22;
  v76[3] = v11;
  v66 = v11;
  v23 = [NSArray arrayWithObjects:v76 count:4];
  [v69 addObjectsFromArray:v23];

  v24 = [(UILayoutGuide *)self->_titleAreaLayoutGuide topAnchor];
  v26 = v67;
  if (v67)
  {
    v36 = [(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell];
    p_customTextLabel = &self->_customTextLabel;
    customTextLabel = self->_customTextLabel;
    if (v36)
    {
      LODWORD(v37) = 1144733696;
      [(CRLiOSInspectorLabel *)customTextLabel setContentHuggingPriority:1 forAxis:v37];
      v39 = [*p_customTextLabel bottomAnchor];
      v40 = [(UILayoutGuide *)self->_titleAreaLayoutGuide bottomAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      v75 = v41;
      v42 = [NSArray arrayWithObjects:&v75 count:1];
      [v69 addObjectsFromArray:v42];
    }

    else
    {
      LODWORD(v37) = 1148846080;
      [(CRLiOSInspectorLabel *)customTextLabel setContentHuggingPriority:1 forAxis:v37];
    }

    LODWORD(v43) = 1144733696;
    [*p_customTextLabel setContentHuggingPriority:0 forAxis:v43];
    if (!self->_preventTextLabelFromCompression || [(CRLiOSInspectorTableViewCell *)self currentContentSizeCategoryWrapsToNextLine])
    {
      v12 = 1144733696;
    }

    LODWORD(v44) = v12;
    [*p_customTextLabel setContentCompressionResistancePriority:0 forAxis:v44];
    v62 = [*p_customTextLabel topAnchor];
    [v62 constraintEqualToAnchor:v24];
    v28 = v64 = v24;
    v74[0] = v28;
    v29 = [*p_customTextLabel leadingAnchor];
    v30 = [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v74[1] = v31;
    v32 = [*p_customTextLabel trailingAnchor];
    v33 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v34 = [v32 constraintLessThanOrEqualToAnchor:v33];
    v74[2] = v34;
    v35 = v74;
    goto LABEL_17;
  }

  if ((v67 & 0x1000) != 0 && [(CRLiOSInspectorTableViewCell *)self fullSizeControlReplacesTextLabel])
  {
    p_customTextLabel = &self->_fullSizeControl;
    v62 = [(UIView *)self->_fullSizeControl topAnchor];
    [v62 constraintEqualToAnchor:v24];
    v28 = v64 = v24;
    v73[0] = v28;
    v29 = [(UIView *)self->_fullSizeControl leadingAnchor];
    v30 = [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v73[1] = v31;
    v32 = [(UIView *)self->_fullSizeControl trailingAnchor];
    v33 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v73[2] = v34;
    v35 = v73;
LABEL_17:
    v45 = [NSArray arrayWithObjects:v35 count:3];
    [v69 addObjectsFromArray:v45];

    v24 = [*p_customTextLabel bottomAnchor];

    self->_titleAreaHasContent = 1;
    self->_firstRowHasContent = 1;
    v26 = v67;
  }

  if ((v26 & 2) != 0)
  {
    LODWORD(v25) = 1148846080;
    [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:1 forAxis:v25];
    LODWORD(v46) = 1144733696;
    [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:0 forAxis:v46];
    v68 = [(UILabel *)self->_customDetailTextLabel topAnchor];
    v47 = [v68 constraintEqualToAnchor:v24];
    v72[0] = v47;
    v48 = [(UILabel *)self->_customDetailTextLabel leadingAnchor];
    [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
    v49 = v65 = v24;
    v50 = [v48 constraintEqualToAnchor:v49];
    v72[1] = v50;
    v51 = [(UILabel *)self->_customDetailTextLabel trailingAnchor];
    v52 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v53 = [v51 constraintLessThanOrEqualToAnchor:v52];
    v72[2] = v53;
    v54 = [NSArray arrayWithObjects:v72 count:3];
    [v69 addObjectsFromArray:v54];

    v24 = [(UILabel *)self->_customDetailTextLabel bottomAnchor];

    self->_titleAreaHasContent = 1;
    self->_firstRowHasContent = 1;
  }

  v55 = v66;
  if (self->_titleAreaLayoutGuide)
  {
    v56 = [(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell];
    v57 = [(UILayoutGuide *)self->_titleAreaLayoutGuide bottomAnchor];
    v58 = v57;
    if (v56)
    {
      v59 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];
      v71 = v60;
      v61 = [NSArray arrayWithObjects:&v71 count:1];
      [v69 addObjectsFromArray:v61];

      v55 = v66;
    }

    else
    {
      v59 = [v57 constraintEqualToAnchor:v24];
      v70 = v59;
      v60 = [NSArray arrayWithObjects:&v70 count:1];
      [v69 addObjectsFromArray:v60];
    }
  }
}

- (void)p_generateConstraintsForTrailingSideElements:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v9 = v8;
  v33 = v7;
  v10 = [v7 trailingAnchor];
  objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, v10);

  self->_needsPaddingOnTrailingContentAnchor = 1;
  v12 = -v9;
  if ((v4 & 0x200) != 0)
  {
    LODWORD(v11) = 1148846080;
    [(UIImageView *)self->_disclosureView setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v13) = 1148846080;
    [(UIImageView *)self->_disclosureView setContentHuggingPriority:0 forAxis:v13];
    disclosureView = self->_disclosureView;
    v31 = [(CRLiOSInspectorTableViewCell *)self contentView];
    v15 = [v31 centerYAnchor];
    v16 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:disclosureView atAnchor:v15];
    v35[0] = v16;
    v17 = [(UIImageView *)self->_disclosureView trailingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v19 = [v17 constraintEqualToAnchor:WeakRetained constant:v12];
    v35[1] = v19;
    v20 = [NSArray arrayWithObjects:v35 count:2];
    [v6 addObjectsFromArray:v20];

    v21 = [(UIImageView *)self->_disclosureView leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, v21);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
  }

  if ((v4 & 8) != 0)
  {
    LODWORD(v11) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v22) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:0 forAxis:v22];
    checkmarkView = self->_checkmarkView;
    v32 = [(CRLiOSInspectorTableViewCell *)self contentView];
    v24 = [v32 centerYAnchor];
    v25 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:checkmarkView atAnchor:v24];
    v34[0] = v25;
    v26 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView trailingAnchor];
    v27 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [v26 constraintEqualToAnchor:v27 constant:v12];
    v34[1] = v28;
    v29 = [NSArray arrayWithObjects:v34 count:2];
    [v6 addObjectsFromArray:v29];

    v30 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, v30);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
  }
}

- (void)p_generateConstraintsForAccessoryAreaOnFirstLine:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v8 = v7;
  p_imageInsets = &self->_imageInsets;
  right = self->_imageInsets.right;
  if (self->_imageUsesStandardMargins)
  {
    right = v8 + right;
  }

  v11 = -right;
  v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  v130 = v4;
  v132 = v6;
  if ((v4 & 0x40) != 0)
  {
    v22 = 32;
    v126 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView topAnchor];
    v120 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v115 = [v126 constraintEqualToAnchor:v120 constant:p_imageInsets->top];
    v139[0] = v115;
    v23 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView bottomAnchor];
    v24 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    [v23 constraintEqualToAnchor:v24 constant:-self->_imageInsets.bottom];
    v25 = v110 = &self->_imageInsets;
    v139[1] = v25;
    v26 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView trailingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [v26 constraintEqualToAnchor:WeakRetained constant:v11];
    v139[2] = v28;
    v29 = v139;
LABEL_9:
    v30 = [NSArray arrayWithObjects:v29 count:3];
    [v132 addObjectsFromArray:v30];

    v31 = [*(&self->super.super.super.super.isa + v22) leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, v31);

    if (self->_imageUsesStandardMargins)
    {
      v32 = 1;
    }

    else
    {
      right = v110->left;
      v32 = right > 0.0;
    }

    self->_needsPaddingOnTrailingContentAnchor = v32;
    v4 = v130;
    v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    goto LABEL_13;
  }

  if ((v4 & 0x100) == 0)
  {
    goto LABEL_14;
  }

  if (![(CRLiOSInspectorTableViewCell *)self showsImageButtonTrailingAdjacentToLabel])
  {
    v22 = 40;
    v126 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
    v120 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v115 = [v126 constraintEqualToAnchor:v120 constant:p_imageInsets->top];
    v138[0] = v115;
    v23 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
    v24 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    [v23 constraintEqualToAnchor:v24 constant:-self->_imageInsets.bottom];
    v25 = v110 = &self->_imageInsets;
    v138[1] = v25;
    v26 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton trailingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [v26 constraintEqualToAnchor:WeakRetained constant:v11];
    v138[2] = v28;
    v29 = v138;
    goto LABEL_9;
  }

  if (![(CRLiOSInspectorTableViewCell *)self showsImageButtonTrailingAdjacentToLabel])
  {
    goto LABEL_14;
  }

  v128 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
  v125 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
  v119 = [v128 constraintEqualToAnchor:v125 constant:p_imageInsets->top];
  v137[0] = v119;
  v114 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
  v13 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
  v14 = [v114 constraintEqualToAnchor:v13 constant:-self->_imageInsets.bottom];
  v137[1] = v14;
  v15 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton leadingAnchor];
  v16 = [(CRLiOSInspectorLabel *)self->_customTextLabel trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:v11];
  v137[2] = v17;
  v18 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton trailingAnchor];
  v19 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19 constant:v11];
  v137[3] = v20;
  v21 = [NSArray arrayWithObjects:v137 count:4];
  [v132 addObjectsFromArray:v21];

  v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  v4 = v130;

LABEL_13:
  self->_firstRowHasContent = 1;
LABEL_14:
  if ((v4 & 0x800) != 0)
  {
    LODWORD(right) = 1148846080;
    [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:1 forAxis:right];
    LODWORD(v33) = 1148846080;
    [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:0 forAxis:v33];
    v34 = [(UIView *)self->_customStandardAccessoryView trailingAnchor];
    v121 = v34;
    v35 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v116 = v35;
    v36 = 0.0;
    if (self->_needsPaddingOnTrailingContentAnchor)
    {
      v36 = -v8;
    }

    v111 = [v34 constraintEqualToAnchor:v35 constant:v36];
    v136[0] = v111;
    v108 = [(UIView *)self->_customStandardAccessoryView centerYAnchor];
    v37 = v12[564];
    v105 = [*(&self->super.super.super.super.isa + v37) centerYAnchor];
    v38 = [v108 constraintEqualToAnchor:v105];
    v136[1] = v38;
    v39 = [(UIView *)self->_customStandardAccessoryView topAnchor];
    v40 = [*(&self->super.super.super.super.isa + v37) topAnchor];
    v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40];
    v136[2] = v41;
    v42 = [(UIView *)self->_customStandardAccessoryView bottomAnchor];
    v43 = [*(&self->super.super.super.super.isa + v37) bottomAnchor];
    v44 = [v42 constraintLessThanOrEqualToAnchor:v43];
    v136[3] = v44;
    v45 = [NSArray arrayWithObjects:v136 count:4];
    [v132 addObjectsFromArray:v45];

    v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    LOBYTE(v4) = v130;
    v46 = [(UIView *)self->_customStandardAccessoryView leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, v46);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
    if ((v130 & 0x400) == 0)
    {
LABEL_16:
      if ((v4 & 4) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_16;
  }

  if (self->_expandAccessoryViewToFillCellHorizontally)
  {
    *&right = 250.0;
  }

  else
  {
    *&right = 1000.0;
  }

  [(UIView *)self->_customAccessoryView setContentHuggingPriority:0 forAxis:right];
  LODWORD(v47) = 1148846080;
  [(UIView *)self->_customAccessoryView setContentHuggingPriority:1 forAxis:v47];
  v48 = [(UIView *)self->_customAccessoryView centerYAnchor];
  v49 = v12[564];
  v50 = [*(&self->super.super.super.super.isa + v49) centerYAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];

  LODWORD(v52) = 1132068864;
  [v51 setPriority:v52];
  if (self->_expandAccessoryViewToFillCellHorizontally)
  {
    v53 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    if (v4)
    {
      v54 = [(CRLiOSInspectorLabel *)self->_customTextLabel trailingAnchor];
      v129 = 1;
    }

    else
    {
      v54 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
      v129 = 0;
    }
  }

  else
  {
    v54 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v129 = 1;
    v53 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  }

  v100 = v54;
  v127 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
  v122 = [*(&self->super.super.super.super.isa + v49) topAnchor];
  v117 = [v127 constraintEqualToAnchor:v122];
  v135[0] = v117;
  v112 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
  v106 = [*(&self->super.super.super.super.isa + v49) bottomAnchor];
  v103 = [v112 constraintEqualToAnchor:v106];
  v135[1] = v103;
  v102 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
  v101 = [v102 constraintEqualToAnchor:v54 constant:v8];
  v135[2] = v101;
  v55 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
  v99 = v55;
  v104 = v53[600];
  v56 = objc_loadWeakRetained((&self->super.super.super.super.isa + v104));
  v98 = v56;
  v57 = 0.0;
  if (self->_needsPaddingOnTrailingContentAnchor)
  {
    v57 = -v8;
  }

  v96 = [v55 constraintEqualToAnchor:v56 constant:v57];
  v135[3] = v96;
  v95 = [(UIView *)self->_customAccessoryView leadingAnchor];
  v94 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
  v93 = [v95 constraintLessThanOrEqualToAnchor:v94];
  v135[4] = v93;
  v92 = [(UIView *)self->_customAccessoryView trailingAnchor];
  v58 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
  v59 = [v92 constraintEqualToAnchor:v58];
  v135[5] = v59;
  v135[6] = v51;
  v60 = [(UIView *)self->_customAccessoryView topAnchor];
  v61 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
  v62 = [v60 constraintGreaterThanOrEqualToAnchor:v61];
  v135[7] = v62;
  [(UIView *)self->_customAccessoryView bottomAnchor];
  v63 = v97 = v51;
  v64 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
  v65 = [v63 constraintLessThanOrEqualToAnchor:v64];
  v135[8] = v65;
  v66 = [NSArray arrayWithObjects:v135 count:9];
  [v132 addObjectsFromArray:v66];

  v67 = [(UIView *)self->_customAccessoryView leadingAnchor];
  objc_storeWeak((&self->super.super.super.super.isa + v104), v67);

  self->_needsPaddingOnTrailingContentAnchor = v129;
  self->_firstRowHasContent = 1;

  v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  if ((v130 & 4) != 0)
  {
LABEL_33:
    LODWORD(right) = 1148846080;
    [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:1 forAxis:right];
    LODWORD(v68) = 1148846080;
    [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:0 forAxis:v68];
    [(CRLiOSInspectorLabel *)self->_customTextLabel contentCompressionResistancePriorityForAxis:0];
    *&v70 = v69 + -1.0;
    [(UILabel *)self->_customDetailTextLabel setContentCompressionResistancePriority:0 forAxis:v70];
    v71 = [(UILabel *)self->_customDetailTextLabel trailingAnchor];
    v123 = v71;
    v72 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v118 = v72;
    v73 = 0.0;
    if (self->_needsPaddingOnTrailingContentAnchor)
    {
      v73 = -v8;
    }

    v113 = [v71 constraintEqualToAnchor:v72 constant:v73];
    v134[0] = v113;
    v109 = [(UILabel *)self->_customDetailTextLabel centerYAnchor];
    v107 = [(UILayoutGuide *)self->_titleAreaLayoutGuide centerYAnchor];
    v74 = [v109 constraintEqualToAnchor:v107];
    v134[1] = v74;
    v75 = [(UILabel *)self->_customDetailTextLabel topAnchor];
    v76 = v12[564];
    v77 = [*(&self->super.super.super.super.isa + v76) topAnchor];
    v78 = [v75 constraintGreaterThanOrEqualToAnchor:v77];
    v134[2] = v78;
    v79 = [(UILabel *)self->_customDetailTextLabel bottomAnchor];
    v80 = [*(&self->super.super.super.super.isa + v76) bottomAnchor];
    v81 = [v79 constraintLessThanOrEqualToAnchor:v80];
    v134[3] = v81;
    v82 = [NSArray arrayWithObjects:v134 count:4];
    [v132 addObjectsFromArray:v82];

    if (v130)
    {
      v131 = [(UILayoutGuide *)self->_titleAndDetailLayoutGuide leadingAnchor];
      v124 = [(CRLiOSInspectorLabel *)self->_customTextLabel leadingAnchor];
      v83 = [v131 constraintEqualToAnchor:v124];
      v133[0] = v83;
      v84 = [(UILayoutGuide *)self->_titleAndDetailLayoutGuide trailingAnchor];
      v85 = [(UILabel *)self->_customDetailTextLabel trailingAnchor];
      v86 = [v84 constraintEqualToAnchor:v85];
      v133[1] = v86;
      v87 = [(CRLiOSInspectorLabel *)self->_customTextLabel widthAnchor];
      v88 = [(UILayoutGuide *)self->_titleAndDetailLayoutGuide widthAnchor];
      v89 = [v87 constraintLessThanOrEqualToAnchor:v88 multiplier:0.7];
      v133[2] = v89;
      v90 = [NSArray arrayWithObjects:v133 count:3];
      [v132 addObjectsFromArray:v90];
    }

    v91 = [(UILabel *)self->_customDetailTextLabel leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, v91);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
  }

LABEL_38:
}

- (void)p_generateConstraintsForAccessoryAreaOnSecondLine:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v9 = v8;
  v10 = v8 * ([(CRLiOSInspectorTableViewCell *)self indentationLevel]+ 1);
  v105 = v7;
  v11 = [v7 leadingAnchor];
  p_imageInsets = &self->_imageInsets;
  right = self->_imageInsets.right;
  v14 = v10 - v9;
  if (self->_imageUsesStandardMargins)
  {
    v14 = v10;
  }

  v15 = v14 + right;
  v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  v110 = v6;
  v106 = v4;
  if ((v4 & 0x40) != 0)
  {
    v18 = 32;
    v99 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView topAnchor];
    v96 = [(UILayoutGuide *)self->_secondRowLayoutGuide topAnchor];
    v19 = [v99 constraintEqualToAnchor:v96 constant:p_imageInsets->top];
    v118[0] = v19;
    v20 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView bottomAnchor];
    v21 = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-self->_imageInsets.bottom];
    v118[1] = v22;
    v23 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView leadingAnchor];
    [v23 constraintEqualToAnchor:v11 constant:v15];
    v24 = v107 = v11;
    v118[2] = v24;
    v25 = [NSArray arrayWithObjects:v118 count:3];
    [v6 addObjectsFromArray:v25];

    goto LABEL_9;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = 40;
    v99 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
    v26 = [(UILayoutGuide *)self->_secondRowLayoutGuide topAnchor];
    v27 = [v99 constraintEqualToAnchor:v26 constant:p_imageInsets->top];
    v117[0] = v27;
    v28 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
    v29 = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-self->_imageInsets.bottom];
    v117[1] = v30;
    v31 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton leadingAnchor];
    [v31 constraintEqualToAnchor:v11 constant:v15];
    v32 = v107 = v11;
    v117[2] = v32;
    v33 = [NSArray arrayWithObjects:v117 count:3];
    [v110 addObjectsFromArray:v33];

LABEL_9:
    v11 = [*(&self->super.super.super.super.isa + v18) trailingAnchor];

    if (self->_imageUsesStandardMargins)
    {
      v17 = 1;
      v4 = v106;
      v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    }

    else
    {
      v4 = v106;
      v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
      right = self->_imageInsets.left;
      v17 = right > 0.0;
    }

    self->_secondRowHasContent = 1;
    v10 = v9;
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v17 = 1;
  if ((v4 & 0x800) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  LODWORD(right) = 1148846080;
  [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:1 forAxis:right];
  LODWORD(v34) = 1148846080;
  [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:0 forAxis:v34];
  v35 = [(UIView *)self->_customStandardAccessoryView leadingAnchor];
  v104 = v35;
  v36 = 0.0;
  if (v17)
  {
    v36 = v10;
  }

  v103 = [v35 constraintEqualToAnchor:v11 constant:v36];
  v116[0] = v103;
  v100 = [(UIView *)self->_customStandardAccessoryView centerYAnchor];
  v37 = v16[565];
  v97 = [*(&self->super.super.super.super.isa + v37) centerYAnchor];
  v38 = [v100 constraintEqualToAnchor:v97];
  v116[1] = v38;
  v39 = [(UIView *)self->_customStandardAccessoryView topAnchor];
  v40 = [*(&self->super.super.super.super.isa + v37) topAnchor];
  [v39 constraintGreaterThanOrEqualToAnchor:v40];
  v41 = v108 = v11;
  v116[2] = v41;
  v42 = [(UIView *)self->_customStandardAccessoryView bottomAnchor];
  v43 = [*(&self->super.super.super.super.isa + v37) bottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43];
  v116[3] = v44;
  v45 = [NSArray arrayWithObjects:v116 count:4];
  [v110 addObjectsFromArray:v45];

  v4 = v106;
  v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;

  v11 = [(UIView *)self->_customStandardAccessoryView trailingAnchor];

  self->_secondRowHasContent = 1;
  v10 = v9;
  v17 = 1;
LABEL_16:
  v46 = -v9;
  if ((v4 & 0x400) != 0)
  {
    v109 = v11;
    customAccessoryView = self->_customAccessoryView;
    if (self->_expandAccessoryViewToFillCellHorizontally)
    {
      LODWORD(right) = 1132068864;
      [(UIView *)customAccessoryView setContentHuggingPriority:0 forAxis:right];
      v49 = [(UIView *)self->_customAccessoryView trailingAnchor];
      v50 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v101 = v49;
      v51 = [v49 constraintEqualToAnchor:v50];
      v115[0] = v51;
      v52 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v53 = v16[565];
      v54 = [*(&self->super.super.super.super.isa + v53) trailingAnchor];
      v55 = [v52 constraintEqualToAnchor:v54 constant:-v9];
      v115[1] = v55;
      v56 = v115;
    }

    else
    {
      LODWORD(right) = 1148846080;
      [(UIView *)customAccessoryView setContentHuggingPriority:0 forAxis:right];
      v57 = [(UIView *)self->_customAccessoryView trailingAnchor];
      v50 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v101 = v57;
      v51 = [v57 constraintEqualToAnchor:v50];
      v114[0] = v51;
      v52 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v53 = v16[565];
      v54 = [*(&self->super.super.super.super.isa + v53) trailingAnchor];
      v55 = [v52 constraintLessThanOrEqualToAnchor:v54 constant:-v9];
      v114[1] = v55;
      v56 = v114;
    }

    v58 = [NSArray arrayWithObjects:v56 count:2];
    [v110 addObjectsFromArray:v58];

    LODWORD(v59) = 1148846080;
    [(UIView *)self->_customAccessoryView setContentHuggingPriority:1 forAxis:v59];
    v102 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
    v98 = [*(&self->super.super.super.super.isa + v53) topAnchor];
    v95 = [v102 constraintEqualToAnchor:v98];
    v113[0] = v95;
    v94 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
    v93 = [*(&self->super.super.super.super.isa + v53) bottomAnchor];
    v92 = [v94 constraintEqualToAnchor:v93];
    v113[1] = v92;
    v60 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
    v91 = v60;
    v61 = 0.0;
    if (v17)
    {
      v61 = v10;
    }

    v90 = [v60 constraintEqualToAnchor:v11 constant:v61];
    v113[2] = v90;
    v89 = [(UIView *)self->_customAccessoryView leadingAnchor];
    v88 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v113[3] = v87;
    v86 = [(UIView *)self->_customAccessoryView centerYAnchor];
    v62 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide centerYAnchor];
    v63 = [v86 constraintEqualToAnchor:v62];
    v113[4] = v63;
    v64 = [(UIView *)self->_customAccessoryView topAnchor];
    v65 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
    v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65];
    v113[5] = v66;
    v67 = [(UIView *)self->_customAccessoryView bottomAnchor];
    v68 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
    v69 = [v67 constraintLessThanOrEqualToAnchor:v68];
    v113[6] = v69;
    v70 = [NSArray arrayWithObjects:v113 count:7];
    [v110 addObjectsFromArray:v70];

    if (self->_expandAccessoryViewToFillCellHorizontally)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(UIView *)self->_customAccessoryView trailingAnchor];
    }

    LOBYTE(v4) = v106;

    self->_secondRowHasContent = 1;
    v17 = 1;
    v47 = v110;
    v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = v10;
    v47 = v110;
    if (!v11)
    {
      goto LABEL_34;
    }
  }

  if ((v4 & 4) == 0)
  {
    v71 = v16[565];
LABEL_33:
    v83 = [*(&self->super.super.super.super.isa + v71) trailingAnchor];
    v84 = [v11 constraintLessThanOrEqualToAnchor:v83 constant:v46];
    v111 = v84;
    v85 = [NSArray arrayWithObjects:&v111 count:1];
    [v47 addObjectsFromArray:v85];

    goto LABEL_34;
  }

  v72 = v16;
  v73 = v11;
  LODWORD(right) = 1148846080;
  [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:1 forAxis:right];
  LODWORD(v74) = 1148846080;
  [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:0 forAxis:v74];
  v75 = [(UILabel *)self->_customDetailTextLabel leadingAnchor];
  v76 = v75;
  v77 = 0.0;
  if (v17)
  {
    v77 = v9;
  }

  v78 = [v75 constraintEqualToAnchor:v11 constant:v77];
  v112[0] = v78;
  v79 = [(UILabel *)self->_customDetailTextLabel centerYAnchor];
  v71 = v72[565];
  v80 = [*(&self->super.super.super.super.isa + v71) centerYAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];
  v112[1] = v81;
  v82 = [NSArray arrayWithObjects:v112 count:2];
  [v110 addObjectsFromArray:v82];

  v47 = v110;
  v11 = [(UILabel *)self->_customDetailTextLabel trailingAnchor];

  self->_secondRowHasContent = 1;
  if (v11)
  {
    goto LABEL_33;
  }

LABEL_34:
}

- (void)p_generateConstraintsForTitleAreaTrailingAnchor:(unint64_t)a3 intoArray:(id)a4
{
  v16 = a4;
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v6 = v5;
  needsPaddingOnTrailingContentAnchor = self->_needsPaddingOnTrailingContentAnchor;
  v8 = [(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell];
  v9 = -v6;
  if (!needsPaddingOnTrailingContentAnchor)
  {
    v9 = 0.0;
  }

  if (v8)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  [(CRLiOSInspectorLabel *)self->_customTextLabel setContainsTrailingMargin:v8, v9];
  v11 = [(CRLiOSInspectorTableViewCell *)self fullSizeControlReplacesTextLabel];
  v12 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
  WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
  if (v11)
  {
    [v12 constraintEqualToAnchor:WeakRetained constant:v10];
  }

  else
  {
    [v12 constraintLessThanOrEqualToAnchor:WeakRetained constant:v10];
  }
  v14 = ;

  LODWORD(v15) = 1144766464;
  [v14 setPriority:v15];
  if (v14)
  {
    [v16 addObject:v14];
  }
}

- (void)p_generateConstraintsForFullSizeControl:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ((v4 & 0x1000) != 0 && ![(CRLiOSInspectorTableViewCell *)self fullSizeControlReplacesTextLabel])
  {
    v7 = [(CRLiOSInspectorTableViewCell *)self indentationLevel];
    top = self->_fullSizeControlInsets.top;
    v9 = self->_fullSizeControlInsets.left + v7 * 16.0;
    v10 = 0.0 - self->_fullSizeControlInsets.right;
    v11 = 0.0 - self->_fullSizeControlInsets.bottom;
    if (self->_firstRowHasContent || self->_secondRowHasContent)
    {
      v12 = self->_thirdRowLayoutGuide;
      v9 = v9 + [(CRLiOSInspectorTableViewCell *)self indentationLevel]* 16.0;
      self->_thirdRowHasContent = 1;
    }

    else
    {
      v12 = self->_firstRowLayoutGuide;
    }

    v13 = [(UIView *)self->_fullSizeControl centerYAnchor];
    v14 = [(UILayoutGuide *)v12 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    LODWORD(v16) = 1144750080;
    v30 = v15;
    [v15 setPriority:v16];
    v31[0] = v15;
    v29 = [(UIView *)self->_fullSizeControl topAnchor];
    v28 = [(UILayoutGuide *)v12 topAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:top];
    v31[1] = v27;
    v26 = [(UIView *)self->_fullSizeControl leadingAnchor];
    v25 = [(UILayoutGuide *)v12 leadingAnchor];
    v17 = [v26 constraintEqualToAnchor:v25 constant:v9];
    v31[2] = v17;
    v18 = [(UIView *)self->_fullSizeControl trailingAnchor];
    v19 = [(UILayoutGuide *)v12 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v10];
    v31[3] = v20;
    v21 = [(UIView *)self->_fullSizeControl bottomAnchor];
    v22 = [(UILayoutGuide *)v12 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:v11];
    v31[4] = v23;
    v24 = [NSArray arrayWithObjects:v31 count:5];
    [v6 addObjectsFromArray:v24];
  }
}

- (void)p_generateConstraintsForFirstRowLayoutGuideIntoArray:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  needsPaddingOnLeadingContentAnchor = self->_needsPaddingOnLeadingContentAnchor;
  needsPaddingOnTrailingContentAnchor = self->_needsPaddingOnTrailingContentAnchor;
  v8 = [(UILayoutGuide *)self->_firstRowLayoutGuide heightAnchor];
  [(CRLiOSInspectorTableViewCell *)self minimumRowHeight];
  v9 = [v8 constraintGreaterThanOrEqualToConstant:?];

  LODWORD(v10) = 1148829696;
  [v9 setPriority:v10];
  if (self->_firstRowLayoutGuide)
  {
    [(CRLiOSInspectorTableViewCell *)self p_minimumVerticalTitlePadding];
    v12 = v11;
    v48 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v49 = [(CRLiOSInspectorTableViewCell *)self contentView];
    v47 = [v49 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v53[0] = v46;
    v45 = [(UILayoutGuide *)self->_firstRowLayoutGuide leadingAnchor];
    v44 = [v5 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v53[1] = v43;
    v42 = [(UILayoutGuide *)self->_firstRowLayoutGuide trailingAnchor];
    v41 = [v5 trailingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v53[2] = v40;
    v53[3] = v9;
    v52 = v4;
    v39 = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide topAnchor];
    v38 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v53[4] = v37;
    v36 = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide bottomAnchor];
    v35 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v53[5] = v34;
    v33 = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide leadingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v31 = [v33 constraintEqualToAnchor:WeakRetained];
    v53[6] = v31;
    v30 = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide trailingAnchor];
    v51 = v5;
    v29 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [v30 constraintEqualToAnchor:v29];
    v53[7] = v28;
    v27 = [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide topAnchor];
    v26 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:v12];
    v53[8] = v25;
    [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide bottomAnchor];
    v13 = v50 = v9;
    v14 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-v12];
    v53[9] = v15;
    v16 = [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide leadingAnchor];
    v17 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v18 = 16.0;
    if (!needsPaddingOnLeadingContentAnchor)
    {
      v18 = 0.0;
    }

    v19 = [v16 constraintEqualToAnchor:v17 constant:v18];
    v53[10] = v19;
    v20 = [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide trailingAnchor];
    v21 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v22 = -16.0;
    if (!needsPaddingOnTrailingContentAnchor)
    {
      v22 = 0.0;
    }

    v23 = [v20 constraintEqualToAnchor:v21 constant:v22];
    v53[11] = v23;
    v24 = [NSArray arrayWithObjects:v53 count:12];
    [v52 addObjectsFromArray:v24];

    v5 = v51;
    v4 = v52;

    v9 = v50;
  }
}

- (void)p_generateConstraintsForSecondRowLayoutGuide:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  if (self->_secondRowLayoutGuide)
  {
    if ((v4 & 3) == 1 && self->_secondRowHasContent && !self->_expandAccessoryViewToFillCellHorizontally)
    {
      v8 = &OBJC_IVAR___CRLiOSInspectorTableViewCell__customTextLabel;
    }

    else
    {
      v8 = &OBJC_IVAR___CRLiOSInspectorTableViewCell__firstRowLayoutGuide;
    }

    v25 = [*(&self->super.super.super.super.isa + *v8) bottomAnchor];
    v24 = [(UILayoutGuide *)self->_secondRowLayoutGuide topAnchor];
    v23 = [v24 constraintEqualToAnchor:v25];
    v27[0] = v23;
    v22 = [(UILayoutGuide *)self->_secondRowLayoutGuide leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v22 constraintEqualToAnchor:v9];
    v27[1] = v10;
    v11 = [(UILayoutGuide *)self->_secondRowLayoutGuide trailingAnchor];
    v12 = [v7 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v27[2] = v13;
    v14 = [NSArray arrayWithObjects:v27 count:3];
    [v6 addObjectsFromArray:v14];
  }

  secondRowLayoutGuide = self->_secondRowLayoutGuide;
  if (self->_secondRowHasContent)
  {
    v16 = [(UILayoutGuide *)secondRowLayoutGuide heightAnchor];
    v17 = [(UILayoutGuide *)self->_firstRowLayoutGuide heightAnchor];
    v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17 multiplier:0.5];

    if (v18)
    {
      LODWORD(v19) = 1148829696;
      [v18 setPriority:v19];
      [v6 addObject:v18];
    }

    goto LABEL_13;
  }

  if (secondRowLayoutGuide)
  {
    v18 = [(UILayoutGuide *)secondRowLayoutGuide heightAnchor];
    v20 = [v18 constraintEqualToConstant:0.0];
    v26 = v20;
    v21 = [NSArray arrayWithObjects:&v26 count:1];
    [v6 addObjectsFromArray:v21];

LABEL_13:
  }
}

- (void)p_generateConstraintsForThirdRowLayoutGuide:(unint64_t)a3 intoArray:(id)a4
{
  v4 = a3;
  v34 = a4;
  v6 = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  if ((v4 & 1) != 0 && self->_secondRowHasContent)
  {
    v7 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v8 = [(CRLiOSInspectorLabel *)self->_customTextLabel topAnchor];
    v9 = [v7 anchorWithOffsetToAnchor:v8];

    v10 = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
    v11 = [(UILayoutGuide *)self->_thirdRowLayoutGuide topAnchor];
    v12 = [v10 anchorWithOffsetToAnchor:v11];
  }

  else
  {
    v9 = [(UILayoutGuide *)self->_thirdRowLayoutGuide topAnchor];
    v12 = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
  }

  v13 = [v9 constraintEqualToAnchor:v12];

  thirdRowLayoutGuide = self->_thirdRowLayoutGuide;
  if (thirdRowLayoutGuide)
  {
    v37[0] = v13;
    v32 = [(UILayoutGuide *)thirdRowLayoutGuide leadingAnchor];
    v31 = [v6 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v37[1] = v30;
    v29 = [(UILayoutGuide *)self->_thirdRowLayoutGuide trailingAnchor];
    [v6 trailingAnchor];
    v15 = v33 = v6;
    v16 = [v29 constraintEqualToAnchor:v15];
    v37[2] = v16;
    v17 = [(UILayoutGuide *)self->_thirdRowLayoutGuide bottomAnchor];
    v18 = [(CRLiOSInspectorTableViewCell *)self contentView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v37[3] = v20;
    v21 = [NSArray arrayWithObjects:v37 count:4];
    [v34 addObjectsFromArray:v21];

    v6 = v33;
  }

  v22 = self->_thirdRowLayoutGuide;
  if (self->_thirdRowHasContent)
  {
    v23 = [(UILayoutGuide *)v22 heightAnchor];
    v24 = [(UILayoutGuide *)self->_firstRowLayoutGuide heightAnchor];
    v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

    if (!v25)
    {
LABEL_13:

      goto LABEL_14;
    }

    LODWORD(v26) = 1148829696;
    [v25 setPriority:v26];
    v36 = v25;
    v27 = [NSArray arrayWithObjects:&v36 count:1];
    [v34 addObjectsFromArray:v27];
LABEL_12:

    goto LABEL_13;
  }

  if (v22)
  {
    v25 = [(UILayoutGuide *)v22 heightAnchor];
    v27 = [v25 constraintEqualToConstant:0.0];
    v35 = v27;
    v28 = [NSArray arrayWithObjects:&v35 count:1];
    [v34 addObjectsFromArray:v28];

    goto LABEL_12;
  }

LABEL_14:
}

- (void)p_generateConstraintsForLegacyFixedRowHeightIntoArray:(id)a3
{
  legacyFixedRowHeight = self->_legacyFixedRowHeight;
  if (legacyFixedRowHeight > 0.0)
  {
    v5 = a3;
    [objc_opt_class() minimumHeight];
    if (legacyFixedRowHeight < v6)
    {
      legacyFixedRowHeight = v6;
    }

    v7 = [(CRLiOSInspectorTableViewCell *)self contentView];
    v8 = [v7 heightAnchor];
    v9 = [v8 constraintEqualToConstant:legacyFixedRowHeight];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v5 addObjectsFromArray:v10];
  }
}

- (id)p_standardLabelFont
{
  v2 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v2];

  return v3;
}

- (id)p_currentDetailLabelFont
{
  if (self->_cellStyle == 3)
  {
    v2 = &UIFontTextStyleCaption1;
  }

  else
  {
    v2 = &UIFontTextStyleBody;
  }

  return [UIFont preferredFontForTextStyle:*v2];
}

- (double)p_currentAccessibilitySizeRatio
{
  v3 = [(CRLiOSInspectorTableViewCell *)self automaticallyResizesForContentSizeCategory];
  result = 1.0;
  if (v3)
  {
    v5 = [(CRLiOSInspectorTableViewCell *)self p_standardLabelFont];
    [v5 pointSize];
    v7 = v6;

    v8 = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
    [v8 pointSize];
    v10 = v9;

    return fmax(v10 / v7, 1.0);
  }

  return result;
}

- (double)p_minimumVerticalTitlePadding
{
  v3 = [(CRLiOSInspectorTableViewCell *)self currentContentSizeCategoryWrapsToNextLine];
  result = 6.0;
  if (v3)
  {
    [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
    return v5 * 10.0;
  }

  return result;
}

- (double)minimumRowHeight
{
  [objc_opt_class() minimumHeight];
  v4 = v3;
  if ([(CRLiOSInspectorTableViewCell *)self currentContentSizeCategoryWrapsToNextLine])
  {
    [(CRLiOSInspectorTableViewCell *)self p_minimumVerticalTitlePadding];
    v6 = v5;
    v7 = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
    [v7 lineHeight];
    v9 = v8 + v6 * 2.0;
  }

  else
  {
    [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
    v9 = v4 * v10;
  }

  return ceil(v9);
}

- (BOOL)p_needsConstraintsUpdateForElements:(unint64_t)a3
{
  if (self->_activeConstrainedElements != a3)
  {
    return 1;
  }

  if (self->_constraintConstantsNeedUpdate)
  {
    return 1;
  }

  [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
  return v5 != self->_activeAccessibilitySizeMultiplier;
}

- (void)p_imageDidChange
{
  [(CRLiOSInspectorTableViewCell *)self p_updateImageTintColor];

  [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)p_updateImageTintColor
{
  if (self->_imageUsesTitleLabelColor)
  {
    WeakRetained = objc_loadWeakRetained(&self->_titleLabelColor);
    [(CRLiOSInspectorTableCellImageView *)self->_customImageView setTintColor:WeakRetained];
  }

  else
  {
    customImageView = self->_customImageView;

    [(CRLiOSInspectorTableCellImageView *)customImageView setTintColor:0];
  }
}

- (void)p_contentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
  [(CRLiOSInspectorLabel *)self->_customTextLabel setFont:v4];

  v5 = [(CRLiOSInspectorTableViewCell *)self p_currentDetailLabelFont];
  [(UILabel *)self->_customDetailTextLabel setFont:v5];

  [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)p_detailButtonTapped:(id)a3
{
  v4 = [(CRLiOSInspectorTableViewCell *)self superview];
  do
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, v4);
    v4 = [v4 superview];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 == 0;
    }
  }

  while (!v8);
  v9 = [v7 delegate];
  v16 = sub_1003035DC(v9, 1, v10, v11, v12, v13, v14, v15, &OBJC_PROTOCOL___UITableViewDelegate);

  v17 = [v7 indexPathForCell:self];
  if (v17)
  {
    [v16 tableView:v7 accessoryButtonTappedForRowWithIndexPath:v17];
  }

  else
  {
    if (v7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013801C0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013801D4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138025C();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLiOSInspectorTableViewCell p_detailButtonTapped:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSInspectorTableViewCell.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1749 isFatal:0 description:"expected nil table view if index path was also nil"];
    }

    if (v16)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101380284();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013802AC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101380334();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v21);
      }

      v22 = [NSString stringWithUTF8String:"[CRLiOSInspectorTableViewCell p_detailButtonTapped:]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Inspectors/CRLiOSInspectorTableViewCell.m"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1750 isFatal:0 description:"expected nil delegate if table view was also nil"];
    }
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v16 layoutSubviews];
  if ([(CRLiOSInspectorTableViewCell *)self showsReorderControl])
  {
    v3 = [(CRLiOSInspectorTableViewCell *)self contentView];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if (sub_100076BAC())
    {
      [(CRLiOSInspectorTableViewCell *)self bounds];
      MaxX = CGRectGetMaxX(v17);
      v18.origin.x = v5;
      v18.origin.y = v7;
      v18.size.width = v9;
      v18.size.height = v11;
      if (MaxX - CGRectGetMaxX(v18) == 40.0)
      {
        v9 = v9 + 3.0;
        v13 = [(CRLiOSInspectorTableViewCell *)self contentView];
        [v13 setFrame:{v5, v7, v9, v11}];
      }
    }

    if (sub_1004A48FC())
    {
      v19.origin.x = v5;
      v19.origin.y = v7;
      v19.size.width = v9;
      v19.size.height = v11;
      MinX = CGRectGetMinX(v19);
      [(CRLiOSInspectorTableViewCell *)self bounds];
      if (MinX - CGRectGetMinX(v20) == 64.0)
      {
        v15 = [(CRLiOSInspectorTableViewCell *)self contentView];
        [v15 setFrame:{v5 + -27.0, v7, v9 + 27.0, v11}];
      }
    }
  }
}

- (void)updateConstraints
{
  v3 = [(CRLiOSInspectorTableViewCell *)self p_elementsToConstrain];
  if ([(CRLiOSInspectorTableViewCell *)self p_needsConstraintsUpdateForElements:v3])
  {
    [(CRLiOSInspectorTableViewCell *)self p_updateConstraintsForElements:v3];
  }

  v4.receiver = self;
  v4.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v4 updateConstraints];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = ![(CRLiOSInspectorTableViewCell *)self disablesContentWhenNotUserInteractive];
  [(CRLiOSInspectorLabel *)self->_customTextLabel setEnabled:v5 | v3];
  [(CRLiOSInspectorLabel *)self->_customTextLabel setUserInteractionEnabled:v3];
  [(UILabel *)self->_customDetailTextLabel setEnabled:v5 | v3];
  [(UILabel *)self->_customDetailTextLabel setUserInteractionEnabled:v3];
  [(CRLiOSInspectorTableCellImageView *)self->_customImageView setUserInteractionEnabled:v3];
  [(UIView *)self->_customStandardAccessoryView setUserInteractionEnabled:v3];
  v6 = objc_opt_class();
  v7 = sub_100014370(v6, self->_customStandardAccessoryView);
  [v7 setEnabled:v5 | v3];
  [(CRLiOSInspectorCheckmark *)self->_checkmarkView setEnabled:v5 | v3];
  v8.receiver = self;
  v8.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v8 setUserInteractionEnabled:v3];
}

- (void)p_setNeedsUpdateConstraints
{
  v2.receiver = self;
  v2.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v2 setNeedsUpdateConstraints];
}

- (id)p_mainLayoutAnchorOwner
{
  usesContentViewInsteadOfSafeAreaLayoutGuide = self->_usesContentViewInsteadOfSafeAreaLayoutGuide;
  v3 = [(CRLiOSInspectorTableViewCell *)self contentView];
  v4 = v3;
  if (!usesContentViewInsteadOfSafeAreaLayoutGuide)
  {
    v5 = [v3 safeAreaLayoutGuide];

    v4 = v5;
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v6 setHighlighted:a3 animated:a4];
  [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton setHighlighted:v4];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = CRLiOSInspectorTableViewCell;
  v3 = [(CRLiOSInspectorTableViewCell *)&v10 accessibilityLabel];
  if (![v3 length])
  {
    v4 = [(CRLiOSInspectorTableViewCell *)self customTextLabel];
    v5 = [v4 text];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(CRLiOSInspectorTableViewCell *)self customTextLabel];
      v8 = [v7 text];

      v3 = v8;
    }
  }

  return v3;
}

- (id)accessibilityValue
{
  v10.receiver = self;
  v10.super_class = CRLiOSInspectorTableViewCell;
  v3 = [(CRLiOSInspectorTableViewCell *)&v10 accessibilityValue];
  if (![v3 length])
  {
    v4 = [(CRLiOSInspectorTableViewCell *)self customDetailTextLabel];
    v5 = [v4 text];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(CRLiOSInspectorTableViewCell *)self customDetailTextLabel];
      v8 = [v7 text];

      v3 = v8;
    }
  }

  return v3;
}

+ (id)checkableCellWithTitle:(id)a3 checkmarkOnLeadingEdge:(BOOL)a4 checked:(BOOL)a5 reuseIdentifier:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = [objc_alloc(objc_opt_class()) initWithStyle:0 reuseIdentifier:v10];

  [v11 setCheckable:1];
  [v11 setChecked:v7];
  [v11 setShowsCheckmarkOnLeadingEdge:v8];
  if (v9)
  {
    v12 = [v11 textLabel];
    [v12 setText:v9];
  }

  return v11;
}

+ (id)checkableCellWithImage:(id)a3 checkmarkOnLeadingEdge:(BOOL)a4 checked:(BOOL)a5 reuseIdentifier:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = [objc_alloc(objc_opt_class()) initWithStyle:0 reuseIdentifier:v10];

  [v11 setCheckable:1];
  [v11 setChecked:v7];
  [v11 setShowsCheckmarkOnLeadingEdge:v8];
  [v11 setShowsImageOnTrailingEdge:v8];
  if (v9)
  {
    v12 = [v11 imageView];
    [v12 setImage:v9];
  }

  return v11;
}

+ (id)checkableSubtitleCellWithTitle:(id)a3 subtitle:(id)a4 checkmarkOnLeadingEdge:(BOOL)a5 checked:(BOOL)a6 reuseIdentifier:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [objc_alloc(objc_opt_class()) initWithStyle:3 reuseIdentifier:v13];

  [v14 setCheckable:1];
  [v14 setChecked:v8];
  [v14 setShowsCheckmarkOnLeadingEdge:v9];
  if (v11)
  {
    v15 = [v14 textLabel];
    [v15 setText:v11];
  }

  if (v12)
  {
    v16 = [v14 detailTextLabel];
    [v16 setText:v12];
  }

  return v14;
}

+ (id)checkableCellWithTitle:(id)a3 detailText:(id)a4 checkmarkOnLeadingEdge:(BOOL)a5 checked:(BOOL)a6 reuseIdentifier:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [objc_alloc(objc_opt_class()) initWithStyle:1 reuseIdentifier:v13];

  [v14 setCheckable:1];
  [v14 setChecked:v8];
  [v14 setShowsCheckmarkOnLeadingEdge:v9];
  if (v11)
  {
    v15 = [v14 textLabel];
    [v15 setText:v11];
  }

  if (v12)
  {
    v16 = [v14 detailTextLabel];
    [v16 setText:v12];
  }

  return v14;
}

- (UIEdgeInsets)fullSizeControlInsets
{
  top = self->_fullSizeControlInsets.top;
  left = self->_fullSizeControlInsets.left;
  bottom = self->_fullSizeControlInsets.bottom;
  right = self->_fullSizeControlInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)imageInsets
{
  top = self->_imageInsets.top;
  left = self->_imageInsets.left;
  bottom = self->_imageInsets.bottom;
  right = self->_imageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIColor)titleLabelColor
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabelColor);

  return WeakRetained;
}

- (UIColor)detailLabelColor
{
  WeakRetained = objc_loadWeakRetained(&self->_detailLabelColor);

  return WeakRetained;
}

- (UIColor)disclosureDetailLabelColor
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureDetailLabelColor);

  return WeakRetained;
}

- (UIColor)subtitleLabelColor
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabelColor);

  return WeakRetained;
}

- (UIColor)detailButtonColor
{
  WeakRetained = objc_loadWeakRetained(&self->_detailButtonColor);

  return WeakRetained;
}

- (NSLayoutXAxisAnchor)leadingContentTrailingEdgeAnchor
{
  WeakRetained = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);

  return WeakRetained;
}

- (NSLayoutXAxisAnchor)trailingContentLeadingEdgeAnchor
{
  WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);

  return WeakRetained;
}

@end