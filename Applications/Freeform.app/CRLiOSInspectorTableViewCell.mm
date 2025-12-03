@interface CRLiOSInspectorTableViewCell
+ (id)checkableCellWithImage:(id)image checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier;
+ (id)checkableCellWithTitle:(id)title checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier;
+ (id)checkableCellWithTitle:(id)title detailText:(id)text checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier;
+ (id)checkableSubtitleCellWithTitle:(id)title subtitle:(id)subtitle checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier;
- (BOOL)currentContentSizeCategoryWrapsToNextLine;
- (BOOL)p_needsConstraintsUpdateForElements:(unint64_t)elements;
- (CRLiOSInspectorLabel)customTextLabel;
- (CRLiOSInspectorTableCellImageButton)customImageButton;
- (CRLiOSInspectorTableCellImageView)customImageView;
- (CRLiOSInspectorTableViewCell)initWithCoder:(id)coder;
- (CRLiOSInspectorTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
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
- (double)p_generateConstraintsForLeadingSideElements:(unint64_t)elements intoArray:(id)array;
- (double)p_minimumVerticalTitlePadding;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)p_centerYConstraintForView:(id)view atAnchor:(id)anchor;
- (id)p_currentDetailLabelFont;
- (id)p_mainLayoutAnchorOwner;
- (id)p_standardLabelFont;
- (unint64_t)p_elementsToConstrain;
- (void)dealloc;
- (void)layoutSubviews;
- (void)p_commonInitWithStyle:(int64_t)style;
- (void)p_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)p_detailButtonTapped:(id)tapped;
- (void)p_generateConstraintsForAccessoryAreaOnFirstLine:(unint64_t)line intoArray:(id)array;
- (void)p_generateConstraintsForAccessoryAreaOnSecondLine:(unint64_t)line intoArray:(id)array;
- (void)p_generateConstraintsForFirstRowLayoutGuideIntoArray:(id)array;
- (void)p_generateConstraintsForFullSizeControl:(unint64_t)control intoArray:(id)array;
- (void)p_generateConstraintsForImage:(id)image container:(id)container intoArray:(id)array;
- (void)p_generateConstraintsForLegacyFixedRowHeightIntoArray:(id)array;
- (void)p_generateConstraintsForSecondRowLayoutGuide:(unint64_t)guide intoArray:(id)array;
- (void)p_generateConstraintsForThirdRowLayoutGuide:(unint64_t)guide intoArray:(id)array;
- (void)p_generateConstraintsForTitleArea:(unint64_t)area margin:(double)margin intoArray:(id)array;
- (void)p_generateConstraintsForTitleAreaTrailingAnchor:(unint64_t)anchor intoArray:(id)array;
- (void)p_generateConstraintsForTrailingSideElements:(unint64_t)elements intoArray:(id)array;
- (void)p_generateGeneralConstraintsForImages:(unint64_t)images intoArray:(id)array;
- (void)p_imageDidChange;
- (void)p_prepareToChangeConstraintsForElements:(unint64_t)elements;
- (void)p_setNeedsUpdateConstraints;
- (void)p_updateConstraintsForElements:(unint64_t)elements;
- (void)p_updateImageTintColor;
- (void)setAutomaticallyResizesForContentSizeCategory:(BOOL)category;
- (void)setCheckable:(BOOL)checkable;
- (void)setChecked:(BOOL)checked;
- (void)setCustomAccessoryType:(int64_t)customAccessoryType;
- (void)setCustomAccessoryView:(id)view;
- (void)setCustomCheckmarkImage:(id)image;
- (void)setCustomHighlightedCheckmarkImage:(id)image;
- (void)setDetailButtonColor:(id)color;
- (void)setDetailLabelColor:(id)color;
- (void)setDisablesContentWhenNotUserInteractive:(BOOL)interactive;
- (void)setDisclosureDetailLabelColor:(id)color;
- (void)setExpandAccessoryViewToFillCellHorizontally:(BOOL)horizontally;
- (void)setFullSizeControl:(id)control;
- (void)setFullSizeControlInsets:(UIEdgeInsets)insets;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setImageInsets:(UIEdgeInsets)insets;
- (void)setImageUsesStandardMargins:(BOOL)margins;
- (void)setImageUsesTitleLabelColor:(BOOL)color;
- (void)setLegacyFixedRowHeight:(double)height;
- (void)setPreventTextLabelFromCompression:(BOOL)compression;
- (void)setSubtitleLabelColor:(id)color;
- (void)setTitleLabelColor:(id)color;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setUsesDetailButtonColor:(BOOL)color;
- (void)setUsesDisclosureDetailLabelColor:(BOOL)color;
- (void)setUsesSubtitleLabelColor:(BOOL)color;
- (void)updateConstraints;
@end

@implementation CRLiOSInspectorTableViewCell

- (CRLiOSInspectorTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (style == 2)
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

    style = 1;
  }

  v13.receiver = self;
  v13.super_class = CRLiOSInspectorTableViewCell;
  v10 = [(CRLiOSInspectorTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifierCopy];
  v11 = v10;
  if (v10)
  {
    [(CRLiOSInspectorTableViewCell *)v10 p_commonInitWithStyle:style];
  }

  return v11;
}

- (CRLiOSInspectorTableViewCell)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRLiOSInspectorTableViewCell;
  v5 = [(CRLiOSInspectorTableViewCell *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"UITableViewCellStyle"];
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

- (void)p_commonInitWithStyle:(int64_t)style
{
  self->_cellStyle = style;
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
  height = [(CRLiOSInspectorTableViewCellBackgroundView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  customBackgroundView = self->_customBackgroundView;
  self->_customBackgroundView = height;

  [(CRLiOSInspectorTableViewCell *)self setBackgroundView:self->_customBackgroundView];
  height2 = [[CRLiOSInspectorTableViewCellSelectedBackgroundView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  customSelectedBackgroundView = self->_customSelectedBackgroundView;
  self->_customSelectedBackgroundView = height2;

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
  contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView addLayoutGuide:self->_firstRowLayoutGuide];

  v20 = objc_alloc_init(UILayoutGuide);
  secondRowLayoutGuide = self->_secondRowLayoutGuide;
  self->_secondRowLayoutGuide = v20;

  [(UILayoutGuide *)self->_secondRowLayoutGuide setIdentifier:@"secondRowLayoutGuide"];
  contentView2 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView2 addLayoutGuide:self->_secondRowLayoutGuide];

  v23 = objc_alloc_init(UILayoutGuide);
  thirdRowLayoutGuide = self->_thirdRowLayoutGuide;
  self->_thirdRowLayoutGuide = v23;

  [(UILayoutGuide *)self->_thirdRowLayoutGuide setIdentifier:@"thirdRowLayoutGuide"];
  contentView3 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView3 addLayoutGuide:self->_thirdRowLayoutGuide];

  v26 = objc_alloc_init(UILayoutGuide);
  titleAreaLayoutGuide = self->_titleAreaLayoutGuide;
  self->_titleAreaLayoutGuide = v26;

  [(UILayoutGuide *)self->_titleAreaLayoutGuide setIdentifier:@"titleAreaLayoutGuide"];
  contentView4 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView4 addLayoutGuide:self->_titleAreaLayoutGuide];

  v29 = objc_alloc_init(UILayoutGuide);
  accessoryViewLayoutGuide = self->_accessoryViewLayoutGuide;
  self->_accessoryViewLayoutGuide = v29;

  [(UILayoutGuide *)self->_accessoryViewLayoutGuide setIdentifier:@"accessoryViewLayoutGuide"];
  contentView5 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView5 addLayoutGuide:self->_accessoryViewLayoutGuide];

  v32 = objc_alloc_init(UILayoutGuide);
  firstRowCenterFreeSpaceLayoutGuide = self->_firstRowCenterFreeSpaceLayoutGuide;
  self->_firstRowCenterFreeSpaceLayoutGuide = v32;

  [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide setIdentifier:@"firstRowCenterFreeSpaceLayoutGuide"];
  contentView6 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView6 addLayoutGuide:self->_firstRowCenterFreeSpaceLayoutGuide];

  v35 = objc_alloc_init(UILayoutGuide);
  insetFirstRowCenterFreeSpaceLayoutGuide = self->_insetFirstRowCenterFreeSpaceLayoutGuide;
  self->_insetFirstRowCenterFreeSpaceLayoutGuide = v35;

  [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide setIdentifier:@"insetFirstRowCenterFreeSpaceLayoutGuide"];
  contentView7 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView7 addLayoutGuide:self->_insetFirstRowCenterFreeSpaceLayoutGuide];

  v38 = objc_alloc_init(UILayoutGuide);
  titleAndDetailLayoutGuide = self->_titleAndDetailLayoutGuide;
  self->_titleAndDetailLayoutGuide = v38;

  [(UILayoutGuide *)self->_titleAndDetailLayoutGuide setIdentifier:@"titleAndDetailLayoutGuide"];
  contentView8 = [(CRLiOSInspectorTableViewCell *)self contentView];
  [contentView8 addLayoutGuide:self->_titleAndDetailLayoutGuide];

  heightAnchor = [(CRLiOSInspectorTableViewCell *)self heightAnchor];
  [objc_opt_class() minimumHeight];
  v44 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];

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
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

    p_currentLabelFont = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
    [(CRLiOSInspectorLabel *)self->_customTextLabel setFont:p_currentLabelFont];

    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    [contentView addSubview:self->_customTextLabel];

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

      p_currentDetailLabelFont = [(CRLiOSInspectorTableViewCell *)self p_currentDetailLabelFont];
      [(UILabel *)self->_customDetailTextLabel setFont:p_currentDetailLabelFont];

      contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
      [contentView addSubview:self->_customDetailTextLabel];

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
    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    [contentView addSubview:self->_customImageView];

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
    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    [contentView addSubview:self->_customImageButton];

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
        contentView = self->_customStandardAccessoryView;
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

        contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
        [contentView addSubview:self->_customStandardAccessoryView];
      }
    }

    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setCustomAccessoryView:(id)view
{
  viewCopy = view;
  customAccessoryView = self->_customAccessoryView;
  if (customAccessoryView != viewCopy)
  {
    v8 = viewCopy;
    if (customAccessoryView)
    {
      [(UIView *)customAccessoryView removeFromSuperview];
    }

    objc_storeStrong(&self->_customAccessoryView, view);
    if (self->_customAccessoryView)
    {
      contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
      [contentView addSubview:self->_customAccessoryView];
    }

    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    viewCopy = v8;
  }
}

- (void)setCheckable:(BOOL)checkable
{
  if (self->_checkable != checkable)
  {
    self->_checkable = checkable;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    checked = self->_checked;
    checkmarkView = [(CRLiOSInspectorTableViewCell *)self checkmarkView];
    [checkmarkView setHidden:!checked];
  }
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
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

  if (self->_checked != checkedCopy)
  {
    self->_checked = checkedCopy;
    checkmarkView = [(CRLiOSInspectorTableViewCell *)self checkmarkView];
    [checkmarkView setHidden:!checkedCopy];
  }

  if (checkedCopy)
  {
    accessibilityTraits = [(CRLiOSInspectorTableViewCell *)self accessibilityTraits];
    v10 = UIAccessibilityTraitSelected | accessibilityTraits;
  }

  else
  {
    v11 = UIAccessibilityTraitSelected;
    v10 = [(CRLiOSInspectorTableViewCell *)self accessibilityTraits]& ~v11;
  }

  [(CRLiOSInspectorTableViewCell *)self setAccessibilityTraits:v10];
}

- (void)setCustomCheckmarkImage:(id)image
{
  imageCopy = image;
  if (self->_customCheckmarkImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_customCheckmarkImage, image);
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomCheckmarkImage:v6];
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setUsesCustomCheckmarkImage:v6 != 0];
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    imageCopy = v6;
  }
}

- (void)setCustomHighlightedCheckmarkImage:(id)image
{
  imageCopy = image;
  if (self->_customHighlightedCheckmarkImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_customHighlightedCheckmarkImage, image);
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomHighlightedCheckmarkImage:v7];
    customCheckmarkImage = [(CRLiOSInspectorCheckmark *)self->_checkmarkView customCheckmarkImage];
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setUsesCustomCheckmarkImage:customCheckmarkImage != 0];

    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    imageCopy = v7;
  }
}

- (void)setFullSizeControl:(id)control
{
  controlCopy = control;
  fullSizeControl = self->_fullSizeControl;
  if (fullSizeControl != controlCopy)
  {
    v7 = controlCopy;
    if (fullSizeControl)
    {
      [(UIView *)fullSizeControl removeFromSuperview];
    }

    objc_storeStrong(&self->_fullSizeControl, control);
    [(UIView *)self->_fullSizeControl removeFromSuperview];
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    controlCopy = v7;
  }
}

- (void)setFullSizeControlInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fullSizeControlInsets.top, v3), vceqq_f64(*&self->_fullSizeControlInsets.bottom, v4)))) & 1) == 0)
  {
    self->_fullSizeControlInsets = insets;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setImageInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_imageInsets.top), vceqq_f64(v4, *&self->_imageInsets.bottom)))) & 1) == 0)
  {
    self->_imageInsets = insets;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setImageUsesStandardMargins:(BOOL)margins
{
  if (self->_imageUsesStandardMargins != margins)
  {
    self->_imageUsesStandardMargins = margins;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setTitleLabelColor:(id)color
{
  obj = color;
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

- (void)setImageUsesTitleLabelColor:(BOOL)color
{
  if (self->_imageUsesTitleLabelColor != color)
  {
    self->_imageUsesTitleLabelColor = color;
    [(CRLiOSInspectorTableViewCell *)self p_updateImageTintColor];
  }
}

- (void)setDetailLabelColor:(id)color
{
  obj = color;
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

- (void)setDisclosureDetailLabelColor:(id)color
{
  obj = color;
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

- (void)setSubtitleLabelColor:(id)color
{
  obj = color;
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

- (void)setDetailButtonColor:(id)color
{
  obj = color;
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

- (void)setUsesDetailButtonColor:(BOOL)color
{
  if (self->_usesDetailButtonColor != color)
  {
    self->_usesDetailButtonColor = color;
    if ((self->_activeConstrainedElements & 0x400) != 0 && color)
    {
      detailButtonColor = [(CRLiOSInspectorTableViewCell *)self detailButtonColor];
      [(UIView *)self->_customStandardAccessoryView setTintColor:detailButtonColor];
    }
  }
}

- (void)setUsesDisclosureDetailLabelColor:(BOOL)color
{
  if (self->_usesDisclosureDetailLabelColor != color)
  {
    self->_usesDisclosureDetailLabelColor = color;
    if (self->_cellStyle == 1 && (self->_activeConstrainedElements & 0x200) != 0 && color)
    {
      disclosureDetailLabelColor = [(CRLiOSInspectorTableViewCell *)self disclosureDetailLabelColor];
      [(UILabel *)self->_customDetailTextLabel setTextColor:disclosureDetailLabelColor];
    }
  }
}

- (void)setUsesSubtitleLabelColor:(BOOL)color
{
  if (self->_usesSubtitleLabelColor != color)
  {
    self->_usesSubtitleLabelColor = color;
    if ((self->_activeConstrainedElements & 2) != 0 && color)
    {
      subtitleLabelColor = [(CRLiOSInspectorTableViewCell *)self subtitleLabelColor];
      [(UILabel *)self->_customDetailTextLabel setTextColor:subtitleLabelColor];
    }
  }
}

- (void)setDisablesContentWhenNotUserInteractive:(BOOL)interactive
{
  if (self->_disablesContentWhenNotUserInteractive != interactive)
  {
    self->_disablesContentWhenNotUserInteractive = interactive;
    isUserInteractionEnabled = [(CRLiOSInspectorTableViewCell *)self isUserInteractionEnabled];

    [(CRLiOSInspectorTableViewCell *)self setUserInteractionEnabled:isUserInteractionEnabled];
  }
}

- (void)setExpandAccessoryViewToFillCellHorizontally:(BOOL)horizontally
{
  if (self->_expandAccessoryViewToFillCellHorizontally != horizontally)
  {
    self->_expandAccessoryViewToFillCellHorizontally = horizontally;
    if ((self->_activeConstrainedElements & 0x400) != 0)
    {
      [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setPreventTextLabelFromCompression:(BOOL)compression
{
  if (self->_preventTextLabelFromCompression != compression)
  {
    self->_preventTextLabelFromCompression = compression;
    if (self->_activeConstrainedElements)
    {
      [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setAutomaticallyResizesForContentSizeCategory:(BOOL)category
{
  if (self->_automaticallyResizesForContentSizeCategory != category)
  {
    self->_automaticallyResizesForContentSizeCategory = category;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setLegacyFixedRowHeight:(double)height
{
  if (self->_legacyFixedRowHeight != height)
  {
    if (height < 0.0)
    {
      height = 0.0;
    }

    if (height > 0.0)
    {
      self->_automaticallyResizesForContentSizeCategory = 0;
    }

    self->_legacyFixedRowHeight = height;
    [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (unint64_t)p_elementsToConstrain
{
  customTextLabel = self->_customTextLabel;
  if (customTextLabel)
  {
    text = [(CRLiOSInspectorLabel *)customTextLabel text];
    v5 = [text length] != 0;
  }

  else
  {
    v5 = 0;
  }

  customDetailTextLabel = self->_customDetailTextLabel;
  if (customDetailTextLabel)
  {
    text2 = [(UILabel *)customDetailTextLabel text];
    v8 = [text2 length];

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
    image = [(CRLiOSInspectorTableCellImageView *)customImageView image];

    if (image)
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

  fullSizeControl = [(CRLiOSInspectorTableViewCell *)self fullSizeControl];

  if (fullSizeControl)
  {
    return v18 | 0x1000;
  }

  else
  {
    return v18;
  }
}

- (void)p_prepareToChangeConstraintsForElements:(unint64_t)elements
{
  elementsCopy = elements;
  activeConstrainedElements = self->_activeConstrainedElements;
  [NSLayoutConstraint deactivateConstraints:self->_activeConstraints];
  if (elementsCopy & 1) == 0 || (activeConstrainedElements)
  {
    if ((elementsCopy & 1) == 0)
    {
      superview = [(CRLiOSInspectorLabel *)self->_customTextLabel superview];

      if (superview)
      {
        [(CRLiOSInspectorLabel *)self->_customTextLabel removeFromSuperview];
      }
    }
  }

  else
  {
    superview2 = [(CRLiOSInspectorLabel *)self->_customTextLabel superview];

    if (!superview2)
    {
      contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
      [contentView addSubview:self->_customTextLabel];
    }

    if (self->_usesTitleLabelColor)
    {
      titleLabelColor = [(CRLiOSInspectorTableViewCell *)self titleLabelColor];
      [(CRLiOSInspectorLabel *)self->_customTextLabel setTextColor:titleLabelColor];
    }
  }

  if ((activeConstrainedElements & 6) != 0)
  {
    if ((elementsCopy & 6) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((elementsCopy & 6) == 0)
  {
LABEL_20:
    superview3 = [(UILabel *)self->_customDetailTextLabel superview];

    if (superview3)
    {
      [(UILabel *)self->_customDetailTextLabel removeFromSuperview];
    }

    goto LABEL_27;
  }

  superview4 = [(UILabel *)self->_customDetailTextLabel superview];

  if (!superview4)
  {
    contentView2 = [(CRLiOSInspectorTableViewCell *)self contentView];
    [contentView2 addSubview:self->_customDetailTextLabel];
  }

  if ((elementsCopy & 0x200) != 0 && self->_cellStyle == 1 && self->_usesDisclosureDetailLabelColor)
  {
    disclosureDetailLabelColor = [(CRLiOSInspectorTableViewCell *)self disclosureDetailLabelColor];
  }

  else if ((elementsCopy & 2) != 0 && self->_usesSubtitleLabelColor)
  {
    disclosureDetailLabelColor = [(CRLiOSInspectorTableViewCell *)self subtitleLabelColor];
  }

  else
  {
    disclosureDetailLabelColor = [(CRLiOSInspectorTableViewCell *)self detailLabelColor];
  }

  v14 = disclosureDetailLabelColor;
  [(UILabel *)self->_customDetailTextLabel setTextColor:disclosureDetailLabelColor];

LABEL_27:
  if ((elementsCopy & 0x18) == 0 || (activeConstrainedElements & 0x18) != 0)
  {
    if ((elementsCopy & 0x18) == 0)
    {
      superview5 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView superview];

      if (superview5)
      {
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView removeFromSuperview];
      }
    }
  }

  else
  {
    superview6 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView superview];

    if (!superview6)
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

      contentView3 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [contentView3 addSubview:self->_checkmarkView];

      if (self->_customCheckmarkImage)
      {
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setUsesCustomCheckmarkImage:1];
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomCheckmarkImage:self->_customCheckmarkImage];
        [(CRLiOSInspectorCheckmark *)self->_checkmarkView setCustomHighlightedCheckmarkImage:self->_customHighlightedCheckmarkImage];
      }
    }
  }

  if ((elementsCopy & 0x60) == 0 || (activeConstrainedElements & 0x60) != 0)
  {
    if ((elementsCopy & 0x60) == 0)
    {
      superview7 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView superview];

      if (superview7)
      {
        [(CRLiOSInspectorTableCellImageView *)self->_customImageView removeFromSuperview];
      }
    }
  }

  else
  {
    superview8 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView superview];

    if (!superview8)
    {
      contentView4 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [contentView4 addSubview:self->_customImageView];
    }
  }

  if ((elementsCopy & 0x180) == 0 || (activeConstrainedElements & 0x180) != 0)
  {
    if ((elementsCopy & 0x180) == 0)
    {
      superview9 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton superview];

      if (superview9)
      {
        [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton removeFromSuperview];
      }
    }
  }

  else
  {
    superview10 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton superview];

    if (!superview10)
    {
      contentView5 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [contentView5 addSubview:self->_customImageButton];
    }
  }

  if ((elementsCopy & 0x200) == 0 || (activeConstrainedElements & 0x200) != 0)
  {
    if ((elementsCopy & 0x200) == 0)
    {
      superview11 = [(UIImageView *)self->_disclosureView superview];

      if (superview11)
      {
        [(UIImageView *)self->_disclosureView removeFromSuperview];
      }
    }
  }

  else
  {
    superview12 = [(UIImageView *)self->_disclosureView superview];

    if (!superview12)
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

      contentView6 = [(CRLiOSInspectorTableViewCell *)self contentView];
      [contentView6 addSubview:self->_disclosureView];
    }
  }

  if ((elementsCopy & 0x400) == 0 || (activeConstrainedElements & 0x400) != 0)
  {
    if ((elementsCopy & 0x400) == 0)
    {
      superview13 = [(UIView *)self->_customAccessoryView superview];

      if (superview13)
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
    superview14 = [(UIView *)self->_customAccessoryView superview];

    if (!superview14)
    {
      [(UIView *)self->_customAccessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      customAccessoryView = [(CRLiOSInspectorTableViewCell *)self contentView];
      [customAccessoryView addSubview:self->_customAccessoryView];
LABEL_67:
    }
  }

  if ((elementsCopy & 0x800) == 0 || (activeConstrainedElements & 0x800) != 0)
  {
    if ((elementsCopy & 0x800) == 0)
    {
      superview15 = [(UIView *)self->_customStandardAccessoryView superview];

      if (superview15)
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
    superview16 = [(UIView *)self->_customStandardAccessoryView superview];

    if (!superview16)
    {
      customStandardAccessoryView = [(CRLiOSInspectorTableViewCell *)self contentView];
      [customStandardAccessoryView addSubview:self->_customStandardAccessoryView];
LABEL_75:
    }
  }

  if ((elementsCopy & 0x1000) != 0 && (activeConstrainedElements & 0x1000) == 0)
  {
    superview17 = [(UIView *)self->_fullSizeControl superview];

    if (superview17)
    {
      goto LABEL_84;
    }

    [(UIView *)self->_fullSizeControl setTranslatesAutoresizingMaskIntoConstraints:0];
    fullSizeControl = [(CRLiOSInspectorTableViewCell *)self contentView];
    [fullSizeControl addSubview:self->_fullSizeControl];
    goto LABEL_83;
  }

  if ((elementsCopy & 0x1000) == 0)
  {
    superview18 = [(UIView *)self->_fullSizeControl superview];

    if (superview18)
    {
      [(UIView *)self->_fullSizeControl removeFromSuperview];
      fullSizeControl = self->_fullSizeControl;
      self->_fullSizeControl = 0;
LABEL_83:
    }
  }

LABEL_84:
  isUserInteractionEnabled = [(CRLiOSInspectorTableViewCell *)self isUserInteractionEnabled];

  [(CRLiOSInspectorTableViewCell *)self setUserInteractionEnabled:isUserInteractionEnabled];
}

- (void)p_updateConstraintsForElements:(unint64_t)elements
{
  [(CRLiOSInspectorTableViewCell *)self p_prepareToChangeConstraintsForElements:?];
  v5 = [NSMutableArray arrayWithCapacity:64];
  [(CRLiOSInspectorTableViewCell *)self p_generateGeneralConstraintsForImages:elements intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForLeadingSideElements:elements intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForTitleArea:elements margin:v5 intoArray:?];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForTrailingSideElements:elements intoArray:v5];
  if ([(CRLiOSInspectorTableViewCell *)self currentContentSizeCategoryWrapsToNextLine])
  {
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForAccessoryAreaOnSecondLine:elements intoArray:v5];
  }

  else
  {
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForAccessoryAreaOnFirstLine:elements intoArray:v5];
  }

  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForTitleAreaTrailingAnchor:elements intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForFullSizeControl:elements intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForFirstRowLayoutGuideIntoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForSecondRowLayoutGuide:elements intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForThirdRowLayoutGuide:elements intoArray:v5];
  [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForLegacyFixedRowHeightIntoArray:v5];
  [NSLayoutConstraint activateConstraints:v5];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v5;

  self->_activeConstrainedElements = elements;
  [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
  self->_activeAccessibilitySizeMultiplier = v7;
  self->_constraintConstantsNeedUpdate = 0;
}

- (void)p_generateConstraintsForImage:(id)image container:(id)container intoArray:(id)array
{
  containerCopy = container;
  arrayCopy = array;
  [image size];
  if (self->_imageUsesStandardMargins)
  {
    LODWORD(v9) = 1148846080;
    [containerCopy setContentHuggingPriority:0 forAxis:v9];
    goto LABEL_15;
  }

  v11 = v9;
  v12 = v10;
  contentMode = [containerCopy contentMode];
  if (contentMode != 2)
  {
    if (contentMode == 1)
    {
      widthAnchor = [containerCopy widthAnchor];
      heightAnchor = [containerCopy heightAnchor];
      v16 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v11 / v12];
      goto LABEL_8;
    }

    if (contentMode)
    {
      [objc_opt_class() minimumHeight];
      v19 = v18 + 10.0;
      if (v11 <= v18 + 10.0)
      {
        if ([containerCopy adjustsImageSizeForAccessibilityContentSizeCategory])
        {
          [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
          v19 = ceil(v19 * v20);
        }
      }

      else
      {
        v19 = v11 + 32.0;
      }

      widthAnchor = [containerCopy widthAnchor];
      heightAnchor = [widthAnchor constraintEqualToConstant:v19];
      [arrayCopy addObject:heightAnchor];
      goto LABEL_14;
    }
  }

  widthAnchor = [containerCopy widthAnchor];
  heightAnchor = [containerCopy heightAnchor];
  v16 = [widthAnchor constraintEqualToAnchor:heightAnchor];
LABEL_8:
  v17 = v16;
  [arrayCopy addObject:v16];

LABEL_14:
LABEL_15:
}

- (void)p_generateGeneralConstraintsForImages:(unint64_t)images intoArray:(id)array
{
  imagesCopy = images;
  arrayCopy = array;
  if ((imagesCopy & 0x60) != 0)
  {
    image = [(CRLiOSInspectorTableCellImageView *)self->_customImageView image];
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForImage:image container:self->_customImageView intoArray:arrayCopy];
  }

  if ((imagesCopy & 0x180) != 0)
  {
    v7 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton imageForState:0];
    [(CRLiOSInspectorTableViewCell *)self p_generateConstraintsForImage:v7 container:self->_customImageButton intoArray:arrayCopy];
  }
}

- (id)p_centerYConstraintForView:(id)view atAnchor:(id)anchor
{
  viewCopy = view;
  anchorCopy = anchor;
  if (-[CRLiOSInspectorTableViewCell currentContentSizeCategoryWrapsToNextLine](self, "currentContentSizeCategoryWrapsToNextLine") && (-[CRLiOSInspectorLabel text](self->_customTextLabel, "text"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, v9))
  {
    font = [(CRLiOSInspectorLabel *)self->_customTextLabel font];
    [font lineHeight];
    v12 = v11 * 0.5;

    centerYAnchor = [viewCopy centerYAnchor];
    topAnchor = [(CRLiOSInspectorLabel *)self->_customTextLabel topAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:v12];
  }

  else
  {
    centerYAnchor = [viewCopy centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:anchorCopy];
  }

  return v15;
}

- (double)p_generateConstraintsForLeadingSideElements:(unint64_t)elements intoArray:(id)array
{
  elementsCopy = elements;
  arrayCopy = array;
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v8 = v7;
  right = v7 * ([(CRLiOSInspectorTableViewCell *)self indentationLevel]+ 1);
  p_safeAreaLayoutGuide = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  leadingAnchor = [p_safeAreaLayoutGuide leadingAnchor];
  objc_storeWeak(&self->_leadingContentTrailingEdgeAnchor, leadingAnchor);

  self->_needsPaddingOnLeadingContentAnchor = 1;
  v46 = arrayCopy;
  if ((elementsCopy & 0x10) != 0)
  {
    LODWORD(v11) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:0 forAxis:v12];
    checkmarkView = self->_checkmarkView;
    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    centerYAnchor = [contentView centerYAnchor];
    v15 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:checkmarkView atAnchor:centerYAnchor];
    v49[0] = v15;
    leadingAnchor2 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView leadingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v18 = [leadingAnchor2 constraintEqualToAnchor:WeakRetained constant:right];
    v49[1] = v18;
    v19 = [NSArray arrayWithObjects:v49 count:2];
    [arrayCopy addObjectsFromArray:v19];

    trailingAnchor = [(CRLiOSInspectorCheckmark *)self->_checkmarkView trailingAnchor];
    objc_storeWeak(&self->_leadingContentTrailingEdgeAnchor, trailingAnchor);

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
  if ((elementsCopy & 0x20) != 0)
  {
    v24 = 32;
    topAnchor = [(CRLiOSInspectorTableCellImageView *)self->_customImageView topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v40 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:p_imageInsets->top];
    v48[0] = v40;
    bottomAnchor = [(CRLiOSInspectorTableCellImageView *)self->_customImageView bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v26 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-self->_imageInsets.bottom];
    v48[1] = v26;
    customImageView = self->_customImageView;
    centerYAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide centerYAnchor];
    v29 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:customImageView atAnchor:centerYAnchor2];
    v48[2] = v29;
    leadingAnchor3 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView leadingAnchor];
    v43 = &self->_imageInsets;
    v31 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v32 = [leadingAnchor3 constraintEqualToAnchor:v31 constant:v23];
    v48[3] = v32;
    v33 = v48;
  }

  else
  {
    if ((elementsCopy & 0x80) == 0)
    {
      goto LABEL_13;
    }

    v24 = 40;
    topAnchor = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v40 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:p_imageInsets->top];
    v47[0] = v40;
    bottomAnchor = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v26 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-self->_imageInsets.bottom];
    v47[1] = v26;
    customImageButton = self->_customImageButton;
    centerYAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide centerYAnchor];
    v29 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:customImageButton atAnchor:centerYAnchor2];
    v47[2] = v29;
    leadingAnchor3 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton leadingAnchor];
    v43 = &self->_imageInsets;
    v31 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v32 = [leadingAnchor3 constraintEqualToAnchor:v31 constant:v23];
    v47[3] = v32;
    v33 = v47;
  }

  v35 = [NSArray arrayWithObjects:v33 count:4];
  [v46 addObjectsFromArray:v35];

  trailingAnchor2 = [*(&self->super.super.super.super.isa + v24) trailingAnchor];
  objc_storeWeak(&self->_leadingContentTrailingEdgeAnchor, trailingAnchor2);

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

- (void)p_generateConstraintsForTitleArea:(unint64_t)area margin:(double)margin intoArray:(id)array
{
  areaCopy = area;
  arrayCopy = array;
  leadingAnchor = [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
  WeakRetained = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
  v9 = 0.0;
  if (self->_needsPaddingOnLeadingContentAnchor)
  {
    marginCopy = margin;
  }

  else
  {
    marginCopy = 0.0;
  }

  v11 = [leadingAnchor constraintEqualToAnchor:WeakRetained constant:marginCopy];

  v12 = 1148829696;
  LODWORD(v13) = 1148829696;
  [v11 setPriority:v13];
  if (![(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell])
  {
    [(CRLiOSInspectorTableViewCell *)self p_minimumVerticalTitlePadding];
    v9 = v14;
  }

  centerYAnchor = [(UILayoutGuide *)self->_titleAreaLayoutGuide centerYAnchor];
  centerYAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v76[0] = v16;
  topAnchor = [(UILayoutGuide *)self->_titleAreaLayoutGuide topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
  v19 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v9];
  v76[1] = v19;
  bottomAnchor = [(UILayoutGuide *)self->_titleAreaLayoutGuide bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
  v22 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-v9];
  v76[2] = v22;
  v76[3] = v11;
  v66 = v11;
  v23 = [NSArray arrayWithObjects:v76 count:4];
  [arrayCopy addObjectsFromArray:v23];

  topAnchor3 = [(UILayoutGuide *)self->_titleAreaLayoutGuide topAnchor];
  v26 = areaCopy;
  if (areaCopy)
  {
    expandTextLabelToFillCell = [(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell];
    p_customTextLabel = &self->_customTextLabel;
    customTextLabel = self->_customTextLabel;
    if (expandTextLabelToFillCell)
    {
      LODWORD(v37) = 1144733696;
      [(CRLiOSInspectorLabel *)customTextLabel setContentHuggingPriority:1 forAxis:v37];
      bottomAnchor3 = [*p_customTextLabel bottomAnchor];
      bottomAnchor4 = [(UILayoutGuide *)self->_titleAreaLayoutGuide bottomAnchor];
      v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v75 = v41;
      v42 = [NSArray arrayWithObjects:&v75 count:1];
      [arrayCopy addObjectsFromArray:v42];
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
    topAnchor4 = [*p_customTextLabel topAnchor];
    [topAnchor4 constraintEqualToAnchor:topAnchor3];
    v28 = v64 = topAnchor3;
    v74[0] = v28;
    leadingAnchor2 = [*p_customTextLabel leadingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
    v31 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v74[1] = v31;
    trailingAnchor = [*p_customTextLabel trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v34 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v74[2] = v34;
    v35 = v74;
    goto LABEL_17;
  }

  if ((areaCopy & 0x1000) != 0 && [(CRLiOSInspectorTableViewCell *)self fullSizeControlReplacesTextLabel])
  {
    p_customTextLabel = &self->_fullSizeControl;
    topAnchor4 = [(UIView *)self->_fullSizeControl topAnchor];
    [topAnchor4 constraintEqualToAnchor:topAnchor3];
    v28 = v64 = topAnchor3;
    v73[0] = v28;
    leadingAnchor2 = [(UIView *)self->_fullSizeControl leadingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
    v31 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v73[1] = v31;
    trailingAnchor = [(UIView *)self->_fullSizeControl trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v73[2] = v34;
    v35 = v73;
LABEL_17:
    v45 = [NSArray arrayWithObjects:v35 count:3];
    [arrayCopy addObjectsFromArray:v45];

    topAnchor3 = [*p_customTextLabel bottomAnchor];

    self->_titleAreaHasContent = 1;
    self->_firstRowHasContent = 1;
    v26 = areaCopy;
  }

  if ((v26 & 2) != 0)
  {
    LODWORD(v25) = 1148846080;
    [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:1 forAxis:v25];
    LODWORD(v46) = 1144733696;
    [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:0 forAxis:v46];
    topAnchor5 = [(UILabel *)self->_customDetailTextLabel topAnchor];
    v47 = [topAnchor5 constraintEqualToAnchor:topAnchor3];
    v72[0] = v47;
    leadingAnchor4 = [(UILabel *)self->_customDetailTextLabel leadingAnchor];
    [(UILayoutGuide *)self->_titleAreaLayoutGuide leadingAnchor];
    v49 = v65 = topAnchor3;
    v50 = [leadingAnchor4 constraintEqualToAnchor:v49];
    v72[1] = v50;
    trailingAnchor3 = [(UILabel *)self->_customDetailTextLabel trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v53 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v72[2] = v53;
    v54 = [NSArray arrayWithObjects:v72 count:3];
    [arrayCopy addObjectsFromArray:v54];

    topAnchor3 = [(UILabel *)self->_customDetailTextLabel bottomAnchor];

    self->_titleAreaHasContent = 1;
    self->_firstRowHasContent = 1;
  }

  v55 = v66;
  if (self->_titleAreaLayoutGuide)
  {
    expandTextLabelToFillCell2 = [(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell];
    bottomAnchor5 = [(UILayoutGuide *)self->_titleAreaLayoutGuide bottomAnchor];
    v58 = bottomAnchor5;
    if (expandTextLabelToFillCell2)
    {
      bottomAnchor6 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
      v60 = [v58 constraintEqualToAnchor:bottomAnchor6];
      v71 = v60;
      v61 = [NSArray arrayWithObjects:&v71 count:1];
      [arrayCopy addObjectsFromArray:v61];

      v55 = v66;
    }

    else
    {
      bottomAnchor6 = [bottomAnchor5 constraintEqualToAnchor:topAnchor3];
      v70 = bottomAnchor6;
      v60 = [NSArray arrayWithObjects:&v70 count:1];
      [arrayCopy addObjectsFromArray:v60];
    }
  }
}

- (void)p_generateConstraintsForTrailingSideElements:(unint64_t)elements intoArray:(id)array
{
  elementsCopy = elements;
  arrayCopy = array;
  p_safeAreaLayoutGuide = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v9 = v8;
  v33 = p_safeAreaLayoutGuide;
  trailingAnchor = [p_safeAreaLayoutGuide trailingAnchor];
  objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, trailingAnchor);

  self->_needsPaddingOnTrailingContentAnchor = 1;
  v12 = -v9;
  if ((elementsCopy & 0x200) != 0)
  {
    LODWORD(v11) = 1148846080;
    [(UIImageView *)self->_disclosureView setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v13) = 1148846080;
    [(UIImageView *)self->_disclosureView setContentHuggingPriority:0 forAxis:v13];
    disclosureView = self->_disclosureView;
    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    centerYAnchor = [contentView centerYAnchor];
    v16 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:disclosureView atAnchor:centerYAnchor];
    v35[0] = v16;
    trailingAnchor2 = [(UIImageView *)self->_disclosureView trailingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v19 = [trailingAnchor2 constraintEqualToAnchor:WeakRetained constant:v12];
    v35[1] = v19;
    v20 = [NSArray arrayWithObjects:v35 count:2];
    [arrayCopy addObjectsFromArray:v20];

    leadingAnchor = [(UIImageView *)self->_disclosureView leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, leadingAnchor);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
  }

  if ((elementsCopy & 8) != 0)
  {
    LODWORD(v11) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v22) = 1148846080;
    [(CRLiOSInspectorCheckmark *)self->_checkmarkView setContentHuggingPriority:0 forAxis:v22];
    checkmarkView = self->_checkmarkView;
    contentView2 = [(CRLiOSInspectorTableViewCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v25 = [(CRLiOSInspectorTableViewCell *)self p_centerYConstraintForView:checkmarkView atAnchor:centerYAnchor2];
    v34[0] = v25;
    trailingAnchor3 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView trailingAnchor];
    v27 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [trailingAnchor3 constraintEqualToAnchor:v27 constant:v12];
    v34[1] = v28;
    v29 = [NSArray arrayWithObjects:v34 count:2];
    [arrayCopy addObjectsFromArray:v29];

    leadingAnchor2 = [(CRLiOSInspectorCheckmark *)self->_checkmarkView leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, leadingAnchor2);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
  }
}

- (void)p_generateConstraintsForAccessoryAreaOnFirstLine:(unint64_t)line intoArray:(id)array
{
  lineCopy = line;
  arrayCopy = array;
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
  v130 = lineCopy;
  v132 = arrayCopy;
  if ((lineCopy & 0x40) != 0)
  {
    v22 = 32;
    topAnchor = [(CRLiOSInspectorTableCellImageView *)self->_customImageView topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v115 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:p_imageInsets->top];
    v139[0] = v115;
    bottomAnchor = [(CRLiOSInspectorTableCellImageView *)self->_customImageView bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-self->_imageInsets.bottom];
    v25 = v110 = &self->_imageInsets;
    v139[1] = v25;
    trailingAnchor = [(CRLiOSInspectorTableCellImageView *)self->_customImageView trailingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [trailingAnchor constraintEqualToAnchor:WeakRetained constant:v11];
    v139[2] = v28;
    v29 = v139;
LABEL_9:
    v30 = [NSArray arrayWithObjects:v29 count:3];
    [v132 addObjectsFromArray:v30];

    leadingAnchor = [*(&self->super.super.super.super.isa + v22) leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, leadingAnchor);

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
    lineCopy = v130;
    v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    goto LABEL_13;
  }

  if ((lineCopy & 0x100) == 0)
  {
    goto LABEL_14;
  }

  if (![(CRLiOSInspectorTableViewCell *)self showsImageButtonTrailingAdjacentToLabel])
  {
    v22 = 40;
    topAnchor = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v115 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:p_imageInsets->top];
    v138[0] = v115;
    bottomAnchor = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-self->_imageInsets.bottom];
    v25 = v110 = &self->_imageInsets;
    v138[1] = v25;
    trailingAnchor = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton trailingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [trailingAnchor constraintEqualToAnchor:WeakRetained constant:v11];
    v138[2] = v28;
    v29 = v138;
    goto LABEL_9;
  }

  if (![(CRLiOSInspectorTableViewCell *)self showsImageButtonTrailingAdjacentToLabel])
  {
    goto LABEL_14;
  }

  topAnchor3 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
  topAnchor4 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
  v119 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:p_imageInsets->top];
  v137[0] = v119;
  bottomAnchor3 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
  bottomAnchor4 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
  v14 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-self->_imageInsets.bottom];
  v137[1] = v14;
  leadingAnchor2 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton leadingAnchor];
  trailingAnchor2 = [(CRLiOSInspectorLabel *)self->_customTextLabel trailingAnchor];
  v17 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:v11];
  v137[2] = v17;
  trailingAnchor3 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton trailingAnchor];
  v19 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
  v20 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:v19 constant:v11];
  v137[3] = v20;
  v21 = [NSArray arrayWithObjects:v137 count:4];
  [v132 addObjectsFromArray:v21];

  v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  lineCopy = v130;

LABEL_13:
  self->_firstRowHasContent = 1;
LABEL_14:
  if ((lineCopy & 0x800) != 0)
  {
    LODWORD(right) = 1148846080;
    [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:1 forAxis:right];
    LODWORD(v33) = 1148846080;
    [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:0 forAxis:v33];
    trailingAnchor4 = [(UIView *)self->_customStandardAccessoryView trailingAnchor];
    v121 = trailingAnchor4;
    v35 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v116 = v35;
    v36 = 0.0;
    if (self->_needsPaddingOnTrailingContentAnchor)
    {
      v36 = -v8;
    }

    v111 = [trailingAnchor4 constraintEqualToAnchor:v35 constant:v36];
    v136[0] = v111;
    centerYAnchor = [(UIView *)self->_customStandardAccessoryView centerYAnchor];
    v37 = v12[564];
    centerYAnchor2 = [*(&self->super.super.super.super.isa + v37) centerYAnchor];
    v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v136[1] = v38;
    topAnchor5 = [(UIView *)self->_customStandardAccessoryView topAnchor];
    topAnchor6 = [*(&self->super.super.super.super.isa + v37) topAnchor];
    v41 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
    v136[2] = v41;
    bottomAnchor5 = [(UIView *)self->_customStandardAccessoryView bottomAnchor];
    bottomAnchor6 = [*(&self->super.super.super.super.isa + v37) bottomAnchor];
    v44 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v136[3] = v44;
    v45 = [NSArray arrayWithObjects:v136 count:4];
    [v132 addObjectsFromArray:v45];

    v12 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    LOBYTE(lineCopy) = v130;
    leadingAnchor3 = [(UIView *)self->_customStandardAccessoryView leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, leadingAnchor3);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
    if ((v130 & 0x400) == 0)
    {
LABEL_16:
      if ((lineCopy & 4) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }
  }

  else if ((lineCopy & 0x400) == 0)
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
  centerYAnchor3 = [(UIView *)self->_customAccessoryView centerYAnchor];
  v49 = v12[564];
  centerYAnchor4 = [*(&self->super.super.super.super.isa + v49) centerYAnchor];
  v51 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

  LODWORD(v52) = 1132068864;
  [v51 setPriority:v52];
  if (self->_expandAccessoryViewToFillCellHorizontally)
  {
    v53 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    if (lineCopy)
    {
      trailingAnchor5 = [(CRLiOSInspectorLabel *)self->_customTextLabel trailingAnchor];
      v129 = 1;
    }

    else
    {
      trailingAnchor5 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
      v129 = 0;
    }
  }

  else
  {
    trailingAnchor5 = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
    v129 = 1;
    v53 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  }

  v100 = trailingAnchor5;
  topAnchor7 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
  topAnchor8 = [*(&self->super.super.super.super.isa + v49) topAnchor];
  v117 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v135[0] = v117;
  bottomAnchor7 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
  bottomAnchor8 = [*(&self->super.super.super.super.isa + v49) bottomAnchor];
  v103 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v135[1] = v103;
  leadingAnchor4 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
  v101 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:v8];
  v135[2] = v101;
  trailingAnchor6 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
  v99 = trailingAnchor6;
  v104 = v53[600];
  v56 = objc_loadWeakRetained((&self->super.super.super.super.isa + v104));
  v98 = v56;
  v57 = 0.0;
  if (self->_needsPaddingOnTrailingContentAnchor)
  {
    v57 = -v8;
  }

  v96 = [trailingAnchor6 constraintEqualToAnchor:v56 constant:v57];
  v135[3] = v96;
  leadingAnchor5 = [(UIView *)self->_customAccessoryView leadingAnchor];
  leadingAnchor6 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
  v93 = [leadingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor6];
  v135[4] = v93;
  trailingAnchor7 = [(UIView *)self->_customAccessoryView trailingAnchor];
  trailingAnchor8 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
  v59 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v135[5] = v59;
  v135[6] = v51;
  topAnchor9 = [(UIView *)self->_customAccessoryView topAnchor];
  topAnchor10 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
  v62 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:topAnchor10];
  v135[7] = v62;
  [(UIView *)self->_customAccessoryView bottomAnchor];
  v63 = v97 = v51;
  bottomAnchor9 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
  v65 = [v63 constraintLessThanOrEqualToAnchor:bottomAnchor9];
  v135[8] = v65;
  v66 = [NSArray arrayWithObjects:v135 count:9];
  [v132 addObjectsFromArray:v66];

  leadingAnchor7 = [(UIView *)self->_customAccessoryView leadingAnchor];
  objc_storeWeak((&self->super.super.super.super.isa + v104), leadingAnchor7);

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
    trailingAnchor9 = [(UILabel *)self->_customDetailTextLabel trailingAnchor];
    v123 = trailingAnchor9;
    v72 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v118 = v72;
    v73 = 0.0;
    if (self->_needsPaddingOnTrailingContentAnchor)
    {
      v73 = -v8;
    }

    v113 = [trailingAnchor9 constraintEqualToAnchor:v72 constant:v73];
    v134[0] = v113;
    centerYAnchor5 = [(UILabel *)self->_customDetailTextLabel centerYAnchor];
    centerYAnchor6 = [(UILayoutGuide *)self->_titleAreaLayoutGuide centerYAnchor];
    v74 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v134[1] = v74;
    topAnchor11 = [(UILabel *)self->_customDetailTextLabel topAnchor];
    v76 = v12[564];
    topAnchor12 = [*(&self->super.super.super.super.isa + v76) topAnchor];
    v78 = [topAnchor11 constraintGreaterThanOrEqualToAnchor:topAnchor12];
    v134[2] = v78;
    bottomAnchor10 = [(UILabel *)self->_customDetailTextLabel bottomAnchor];
    bottomAnchor11 = [*(&self->super.super.super.super.isa + v76) bottomAnchor];
    v81 = [bottomAnchor10 constraintLessThanOrEqualToAnchor:bottomAnchor11];
    v134[3] = v81;
    v82 = [NSArray arrayWithObjects:v134 count:4];
    [v132 addObjectsFromArray:v82];

    if (v130)
    {
      leadingAnchor8 = [(UILayoutGuide *)self->_titleAndDetailLayoutGuide leadingAnchor];
      leadingAnchor9 = [(CRLiOSInspectorLabel *)self->_customTextLabel leadingAnchor];
      v83 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
      v133[0] = v83;
      trailingAnchor10 = [(UILayoutGuide *)self->_titleAndDetailLayoutGuide trailingAnchor];
      trailingAnchor11 = [(UILabel *)self->_customDetailTextLabel trailingAnchor];
      v86 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
      v133[1] = v86;
      widthAnchor = [(CRLiOSInspectorLabel *)self->_customTextLabel widthAnchor];
      widthAnchor2 = [(UILayoutGuide *)self->_titleAndDetailLayoutGuide widthAnchor];
      v89 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.7];
      v133[2] = v89;
      v90 = [NSArray arrayWithObjects:v133 count:3];
      [v132 addObjectsFromArray:v90];
    }

    leadingAnchor10 = [(UILabel *)self->_customDetailTextLabel leadingAnchor];
    objc_storeWeak(&self->_trailingContentLeadingEdgeAnchor, leadingAnchor10);

    self->_needsPaddingOnTrailingContentAnchor = 1;
    self->_firstRowHasContent = 1;
  }

LABEL_38:
}

- (void)p_generateConstraintsForAccessoryAreaOnSecondLine:(unint64_t)line intoArray:(id)array
{
  lineCopy = line;
  arrayCopy = array;
  p_safeAreaLayoutGuide = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v9 = v8;
  v10 = v8 * ([(CRLiOSInspectorTableViewCell *)self indentationLevel]+ 1);
  v105 = p_safeAreaLayoutGuide;
  leadingAnchor = [p_safeAreaLayoutGuide leadingAnchor];
  p_imageInsets = &self->_imageInsets;
  right = self->_imageInsets.right;
  v14 = v10 - v9;
  if (self->_imageUsesStandardMargins)
  {
    v14 = v10;
  }

  v15 = v14 + right;
  v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  v110 = arrayCopy;
  v106 = lineCopy;
  if ((lineCopy & 0x40) != 0)
  {
    v18 = 32;
    topAnchor = [(CRLiOSInspectorTableCellImageView *)self->_customImageView topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_secondRowLayoutGuide topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:p_imageInsets->top];
    v118[0] = v19;
    bottomAnchor = [(CRLiOSInspectorTableCellImageView *)self->_customImageView bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-self->_imageInsets.bottom];
    v118[1] = v22;
    leadingAnchor2 = [(CRLiOSInspectorTableCellImageView *)self->_customImageView leadingAnchor];
    [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:v15];
    v24 = v107 = leadingAnchor;
    v118[2] = v24;
    v25 = [NSArray arrayWithObjects:v118 count:3];
    [arrayCopy addObjectsFromArray:v25];

    goto LABEL_9;
  }

  if ((lineCopy & 0x100) != 0)
  {
    v18 = 40;
    topAnchor = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton topAnchor];
    topAnchor3 = [(UILayoutGuide *)self->_secondRowLayoutGuide topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor3 constant:p_imageInsets->top];
    v117[0] = v27;
    bottomAnchor3 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-self->_imageInsets.bottom];
    v117[1] = v30;
    leadingAnchor3 = [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton leadingAnchor];
    [leadingAnchor3 constraintEqualToAnchor:leadingAnchor constant:v15];
    v32 = v107 = leadingAnchor;
    v117[2] = v32;
    v33 = [NSArray arrayWithObjects:v117 count:3];
    [v110 addObjectsFromArray:v33];

LABEL_9:
    leadingAnchor = [*(&self->super.super.super.super.isa + v18) trailingAnchor];

    if (self->_imageUsesStandardMargins)
    {
      v17 = 1;
      lineCopy = v106;
      v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    }

    else
    {
      lineCopy = v106;
      v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
      right = self->_imageInsets.left;
      v17 = right > 0.0;
    }

    self->_secondRowHasContent = 1;
    v10 = v9;
    if ((lineCopy & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v17 = 1;
  if ((lineCopy & 0x800) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  LODWORD(right) = 1148846080;
  [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:1 forAxis:right];
  LODWORD(v34) = 1148846080;
  [(UIView *)self->_customStandardAccessoryView setContentHuggingPriority:0 forAxis:v34];
  leadingAnchor4 = [(UIView *)self->_customStandardAccessoryView leadingAnchor];
  v104 = leadingAnchor4;
  v36 = 0.0;
  if (v17)
  {
    v36 = v10;
  }

  v103 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor constant:v36];
  v116[0] = v103;
  centerYAnchor = [(UIView *)self->_customStandardAccessoryView centerYAnchor];
  v37 = v16[565];
  centerYAnchor2 = [*(&self->super.super.super.super.isa + v37) centerYAnchor];
  v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v116[1] = v38;
  topAnchor4 = [(UIView *)self->_customStandardAccessoryView topAnchor];
  topAnchor5 = [*(&self->super.super.super.super.isa + v37) topAnchor];
  [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
  v41 = v108 = leadingAnchor;
  v116[2] = v41;
  bottomAnchor5 = [(UIView *)self->_customStandardAccessoryView bottomAnchor];
  bottomAnchor6 = [*(&self->super.super.super.super.isa + v37) bottomAnchor];
  v44 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
  v116[3] = v44;
  v45 = [NSArray arrayWithObjects:v116 count:4];
  [v110 addObjectsFromArray:v45];

  lineCopy = v106;
  v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;

  leadingAnchor = [(UIView *)self->_customStandardAccessoryView trailingAnchor];

  self->_secondRowHasContent = 1;
  v10 = v9;
  v17 = 1;
LABEL_16:
  v46 = -v9;
  if ((lineCopy & 0x400) != 0)
  {
    v109 = leadingAnchor;
    customAccessoryView = self->_customAccessoryView;
    if (self->_expandAccessoryViewToFillCellHorizontally)
    {
      LODWORD(right) = 1132068864;
      [(UIView *)customAccessoryView setContentHuggingPriority:0 forAxis:right];
      trailingAnchor = [(UIView *)self->_customAccessoryView trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v101 = trailingAnchor;
      v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v115[0] = v51;
      trailingAnchor3 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v53 = v16[565];
      trailingAnchor4 = [*(&self->super.super.super.super.isa + v53) trailingAnchor];
      v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v9];
      v115[1] = v55;
      v56 = v115;
    }

    else
    {
      LODWORD(right) = 1148846080;
      [(UIView *)customAccessoryView setContentHuggingPriority:0 forAxis:right];
      trailingAnchor5 = [(UIView *)self->_customAccessoryView trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v101 = trailingAnchor5;
      v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor2];
      v114[0] = v51;
      trailingAnchor3 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide trailingAnchor];
      v53 = v16[565];
      trailingAnchor4 = [*(&self->super.super.super.super.isa + v53) trailingAnchor];
      v55 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-v9];
      v114[1] = v55;
      v56 = v114;
    }

    v58 = [NSArray arrayWithObjects:v56 count:2];
    [v110 addObjectsFromArray:v58];

    LODWORD(v59) = 1148846080;
    [(UIView *)self->_customAccessoryView setContentHuggingPriority:1 forAxis:v59];
    topAnchor6 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
    topAnchor7 = [*(&self->super.super.super.super.isa + v53) topAnchor];
    v95 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v113[0] = v95;
    bottomAnchor7 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
    bottomAnchor8 = [*(&self->super.super.super.super.isa + v53) bottomAnchor];
    v92 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v113[1] = v92;
    leadingAnchor5 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
    v91 = leadingAnchor5;
    v61 = 0.0;
    if (v17)
    {
      v61 = v10;
    }

    v90 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor constant:v61];
    v113[2] = v90;
    leadingAnchor6 = [(UIView *)self->_customAccessoryView leadingAnchor];
    leadingAnchor7 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide leadingAnchor];
    v87 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v113[3] = v87;
    centerYAnchor3 = [(UIView *)self->_customAccessoryView centerYAnchor];
    centerYAnchor4 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide centerYAnchor];
    v63 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v113[4] = v63;
    topAnchor8 = [(UIView *)self->_customAccessoryView topAnchor];
    topAnchor9 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide topAnchor];
    v66 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:topAnchor9];
    v113[5] = v66;
    bottomAnchor9 = [(UIView *)self->_customAccessoryView bottomAnchor];
    bottomAnchor10 = [(UILayoutGuide *)self->_accessoryViewLayoutGuide bottomAnchor];
    v69 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor10];
    v113[6] = v69;
    v70 = [NSArray arrayWithObjects:v113 count:7];
    [v110 addObjectsFromArray:v70];

    if (self->_expandAccessoryViewToFillCellHorizontally)
    {
      leadingAnchor = 0;
    }

    else
    {
      leadingAnchor = [(UIView *)self->_customAccessoryView trailingAnchor];
    }

    LOBYTE(lineCopy) = v106;

    self->_secondRowHasContent = 1;
    v17 = 1;
    v47 = v110;
    v16 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    if (!leadingAnchor)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = v10;
    v47 = v110;
    if (!leadingAnchor)
    {
      goto LABEL_34;
    }
  }

  if ((lineCopy & 4) == 0)
  {
    v71 = v16[565];
LABEL_33:
    trailingAnchor6 = [*(&self->super.super.super.super.isa + v71) trailingAnchor];
    v84 = [leadingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:v46];
    v111 = v84;
    v85 = [NSArray arrayWithObjects:&v111 count:1];
    [v47 addObjectsFromArray:v85];

    goto LABEL_34;
  }

  v72 = v16;
  v73 = leadingAnchor;
  LODWORD(right) = 1148846080;
  [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:1 forAxis:right];
  LODWORD(v74) = 1148846080;
  [(UILabel *)self->_customDetailTextLabel setContentHuggingPriority:0 forAxis:v74];
  leadingAnchor8 = [(UILabel *)self->_customDetailTextLabel leadingAnchor];
  v76 = leadingAnchor8;
  v77 = 0.0;
  if (v17)
  {
    v77 = v9;
  }

  v78 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor constant:v77];
  v112[0] = v78;
  centerYAnchor5 = [(UILabel *)self->_customDetailTextLabel centerYAnchor];
  v71 = v72[565];
  centerYAnchor6 = [*(&self->super.super.super.super.isa + v71) centerYAnchor];
  v81 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v112[1] = v81;
  v82 = [NSArray arrayWithObjects:v112 count:2];
  [v110 addObjectsFromArray:v82];

  v47 = v110;
  leadingAnchor = [(UILabel *)self->_customDetailTextLabel trailingAnchor];

  self->_secondRowHasContent = 1;
  if (leadingAnchor)
  {
    goto LABEL_33;
  }

LABEL_34:
}

- (void)p_generateConstraintsForTitleAreaTrailingAnchor:(unint64_t)anchor intoArray:(id)array
{
  arrayCopy = array;
  [(CRLiOSInspectorTableViewCell *)self indentationWidth];
  v6 = v5;
  needsPaddingOnTrailingContentAnchor = self->_needsPaddingOnTrailingContentAnchor;
  expandTextLabelToFillCell = [(CRLiOSInspectorTableViewCell *)self expandTextLabelToFillCell];
  v9 = -v6;
  if (!needsPaddingOnTrailingContentAnchor)
  {
    v9 = 0.0;
  }

  if (expandTextLabelToFillCell)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  [(CRLiOSInspectorLabel *)self->_customTextLabel setContainsTrailingMargin:expandTextLabelToFillCell, v9];
  fullSizeControlReplacesTextLabel = [(CRLiOSInspectorTableViewCell *)self fullSizeControlReplacesTextLabel];
  trailingAnchor = [(UILayoutGuide *)self->_titleAreaLayoutGuide trailingAnchor];
  WeakRetained = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
  if (fullSizeControlReplacesTextLabel)
  {
    [trailingAnchor constraintEqualToAnchor:WeakRetained constant:v10];
  }

  else
  {
    [trailingAnchor constraintLessThanOrEqualToAnchor:WeakRetained constant:v10];
  }
  v14 = ;

  LODWORD(v15) = 1144766464;
  [v14 setPriority:v15];
  if (v14)
  {
    [arrayCopy addObject:v14];
  }
}

- (void)p_generateConstraintsForFullSizeControl:(unint64_t)control intoArray:(id)array
{
  controlCopy = control;
  arrayCopy = array;
  if ((controlCopy & 0x1000) != 0 && ![(CRLiOSInspectorTableViewCell *)self fullSizeControlReplacesTextLabel])
  {
    indentationLevel = [(CRLiOSInspectorTableViewCell *)self indentationLevel];
    top = self->_fullSizeControlInsets.top;
    v9 = self->_fullSizeControlInsets.left + indentationLevel * 16.0;
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

    centerYAnchor = [(UIView *)self->_fullSizeControl centerYAnchor];
    centerYAnchor2 = [(UILayoutGuide *)v12 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    LODWORD(v16) = 1144750080;
    v30 = v15;
    [v15 setPriority:v16];
    v31[0] = v15;
    topAnchor = [(UIView *)self->_fullSizeControl topAnchor];
    topAnchor2 = [(UILayoutGuide *)v12 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
    v31[1] = v27;
    leadingAnchor = [(UIView *)self->_fullSizeControl leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)v12 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
    v31[2] = v17;
    trailingAnchor = [(UIView *)self->_fullSizeControl trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)v12 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v10];
    v31[3] = v20;
    bottomAnchor = [(UIView *)self->_fullSizeControl bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)v12 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v11];
    v31[4] = v23;
    v24 = [NSArray arrayWithObjects:v31 count:5];
    [arrayCopy addObjectsFromArray:v24];
  }
}

- (void)p_generateConstraintsForFirstRowLayoutGuideIntoArray:(id)array
{
  arrayCopy = array;
  p_safeAreaLayoutGuide = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  needsPaddingOnLeadingContentAnchor = self->_needsPaddingOnLeadingContentAnchor;
  needsPaddingOnTrailingContentAnchor = self->_needsPaddingOnTrailingContentAnchor;
  heightAnchor = [(UILayoutGuide *)self->_firstRowLayoutGuide heightAnchor];
  [(CRLiOSInspectorTableViewCell *)self minimumRowHeight];
  v9 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];

  LODWORD(v10) = 1148829696;
  [v9 setPriority:v10];
  if (self->_firstRowLayoutGuide)
  {
    [(CRLiOSInspectorTableViewCell *)self p_minimumVerticalTitlePadding];
    v12 = v11;
    topAnchor = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v53[0] = v46;
    leadingAnchor = [(UILayoutGuide *)self->_firstRowLayoutGuide leadingAnchor];
    leadingAnchor2 = [p_safeAreaLayoutGuide leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v53[1] = v43;
    trailingAnchor = [(UILayoutGuide *)self->_firstRowLayoutGuide trailingAnchor];
    trailingAnchor2 = [p_safeAreaLayoutGuide trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v53[2] = v40;
    v53[3] = v9;
    v52 = arrayCopy;
    topAnchor3 = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide topAnchor];
    topAnchor4 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v53[4] = v37;
    bottomAnchor = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v53[5] = v34;
    leadingAnchor3 = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide leadingAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v31 = [leadingAnchor3 constraintEqualToAnchor:WeakRetained];
    v53[6] = v31;
    trailingAnchor3 = [(UILayoutGuide *)self->_firstRowCenterFreeSpaceLayoutGuide trailingAnchor];
    v51 = p_safeAreaLayoutGuide;
    v29 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v28 = [trailingAnchor3 constraintEqualToAnchor:v29];
    v53[7] = v28;
    topAnchor5 = [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide topAnchor];
    topAnchor6 = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    v25 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:v12];
    v53[8] = v25;
    [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide bottomAnchor];
    v13 = v50 = v9;
    bottomAnchor3 = [(UILayoutGuide *)self->_firstRowLayoutGuide bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:bottomAnchor3 constant:-v12];
    v53[9] = v15;
    leadingAnchor4 = [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide leadingAnchor];
    v17 = objc_loadWeakRetained(&self->_leadingContentTrailingEdgeAnchor);
    v18 = 16.0;
    if (!needsPaddingOnLeadingContentAnchor)
    {
      v18 = 0.0;
    }

    v19 = [leadingAnchor4 constraintEqualToAnchor:v17 constant:v18];
    v53[10] = v19;
    trailingAnchor4 = [(UILayoutGuide *)self->_insetFirstRowCenterFreeSpaceLayoutGuide trailingAnchor];
    v21 = objc_loadWeakRetained(&self->_trailingContentLeadingEdgeAnchor);
    v22 = -16.0;
    if (!needsPaddingOnTrailingContentAnchor)
    {
      v22 = 0.0;
    }

    v23 = [trailingAnchor4 constraintEqualToAnchor:v21 constant:v22];
    v53[11] = v23;
    v24 = [NSArray arrayWithObjects:v53 count:12];
    [v52 addObjectsFromArray:v24];

    p_safeAreaLayoutGuide = v51;
    arrayCopy = v52;

    v9 = v50;
  }
}

- (void)p_generateConstraintsForSecondRowLayoutGuide:(unint64_t)guide intoArray:(id)array
{
  guideCopy = guide;
  arrayCopy = array;
  p_safeAreaLayoutGuide = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  if (self->_secondRowLayoutGuide)
  {
    if ((guideCopy & 3) == 1 && self->_secondRowHasContent && !self->_expandAccessoryViewToFillCellHorizontally)
    {
      v8 = &OBJC_IVAR___CRLiOSInspectorTableViewCell__customTextLabel;
    }

    else
    {
      v8 = &OBJC_IVAR___CRLiOSInspectorTableViewCell__firstRowLayoutGuide;
    }

    bottomAnchor = [*(&self->super.super.super.super.isa + *v8) bottomAnchor];
    topAnchor = [(UILayoutGuide *)self->_secondRowLayoutGuide topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v27[0] = v23;
    leadingAnchor = [(UILayoutGuide *)self->_secondRowLayoutGuide leadingAnchor];
    leadingAnchor2 = [p_safeAreaLayoutGuide leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v27[1] = v10;
    trailingAnchor = [(UILayoutGuide *)self->_secondRowLayoutGuide trailingAnchor];
    trailingAnchor2 = [p_safeAreaLayoutGuide trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[2] = v13;
    v14 = [NSArray arrayWithObjects:v27 count:3];
    [arrayCopy addObjectsFromArray:v14];
  }

  secondRowLayoutGuide = self->_secondRowLayoutGuide;
  if (self->_secondRowHasContent)
  {
    heightAnchor = [(UILayoutGuide *)secondRowLayoutGuide heightAnchor];
    heightAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide heightAnchor];
    heightAnchor3 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2 multiplier:0.5];

    if (heightAnchor3)
    {
      LODWORD(v19) = 1148829696;
      [heightAnchor3 setPriority:v19];
      [arrayCopy addObject:heightAnchor3];
    }

    goto LABEL_13;
  }

  if (secondRowLayoutGuide)
  {
    heightAnchor3 = [(UILayoutGuide *)secondRowLayoutGuide heightAnchor];
    v20 = [heightAnchor3 constraintEqualToConstant:0.0];
    v26 = v20;
    v21 = [NSArray arrayWithObjects:&v26 count:1];
    [arrayCopy addObjectsFromArray:v21];

LABEL_13:
  }
}

- (void)p_generateConstraintsForThirdRowLayoutGuide:(unint64_t)guide intoArray:(id)array
{
  guideCopy = guide;
  arrayCopy = array;
  p_safeAreaLayoutGuide = [(CRLiOSInspectorTableViewCell *)self p_safeAreaLayoutGuide];
  if ((guideCopy & 1) != 0 && self->_secondRowHasContent)
  {
    topAnchor = [(UILayoutGuide *)self->_firstRowLayoutGuide topAnchor];
    topAnchor2 = [(CRLiOSInspectorLabel *)self->_customTextLabel topAnchor];
    topAnchor4 = [topAnchor anchorWithOffsetToAnchor:topAnchor2];

    bottomAnchor = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
    topAnchor3 = [(UILayoutGuide *)self->_thirdRowLayoutGuide topAnchor];
    bottomAnchor2 = [bottomAnchor anchorWithOffsetToAnchor:topAnchor3];
  }

  else
  {
    topAnchor4 = [(UILayoutGuide *)self->_thirdRowLayoutGuide topAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_secondRowLayoutGuide bottomAnchor];
  }

  v13 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];

  thirdRowLayoutGuide = self->_thirdRowLayoutGuide;
  if (thirdRowLayoutGuide)
  {
    v37[0] = v13;
    leadingAnchor = [(UILayoutGuide *)thirdRowLayoutGuide leadingAnchor];
    leadingAnchor2 = [p_safeAreaLayoutGuide leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[1] = v30;
    trailingAnchor = [(UILayoutGuide *)self->_thirdRowLayoutGuide trailingAnchor];
    [p_safeAreaLayoutGuide trailingAnchor];
    v15 = v33 = p_safeAreaLayoutGuide;
    v16 = [trailingAnchor constraintEqualToAnchor:v15];
    v37[2] = v16;
    bottomAnchor3 = [(UILayoutGuide *)self->_thirdRowLayoutGuide bottomAnchor];
    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    bottomAnchor4 = [contentView bottomAnchor];
    v20 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v37[3] = v20;
    v21 = [NSArray arrayWithObjects:v37 count:4];
    [arrayCopy addObjectsFromArray:v21];

    p_safeAreaLayoutGuide = v33;
  }

  v22 = self->_thirdRowLayoutGuide;
  if (self->_thirdRowHasContent)
  {
    heightAnchor = [(UILayoutGuide *)v22 heightAnchor];
    heightAnchor2 = [(UILayoutGuide *)self->_firstRowLayoutGuide heightAnchor];
    heightAnchor3 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];

    if (!heightAnchor3)
    {
LABEL_13:

      goto LABEL_14;
    }

    LODWORD(v26) = 1148829696;
    [heightAnchor3 setPriority:v26];
    v36 = heightAnchor3;
    v27 = [NSArray arrayWithObjects:&v36 count:1];
    [arrayCopy addObjectsFromArray:v27];
LABEL_12:

    goto LABEL_13;
  }

  if (v22)
  {
    heightAnchor3 = [(UILayoutGuide *)v22 heightAnchor];
    v27 = [heightAnchor3 constraintEqualToConstant:0.0];
    v35 = v27;
    v28 = [NSArray arrayWithObjects:&v35 count:1];
    [arrayCopy addObjectsFromArray:v28];

    goto LABEL_12;
  }

LABEL_14:
}

- (void)p_generateConstraintsForLegacyFixedRowHeightIntoArray:(id)array
{
  legacyFixedRowHeight = self->_legacyFixedRowHeight;
  if (legacyFixedRowHeight > 0.0)
  {
    arrayCopy = array;
    [objc_opt_class() minimumHeight];
    if (legacyFixedRowHeight < v6)
    {
      legacyFixedRowHeight = v6;
    }

    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:legacyFixedRowHeight];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [arrayCopy addObjectsFromArray:v10];
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
  automaticallyResizesForContentSizeCategory = [(CRLiOSInspectorTableViewCell *)self automaticallyResizesForContentSizeCategory];
  result = 1.0;
  if (automaticallyResizesForContentSizeCategory)
  {
    p_standardLabelFont = [(CRLiOSInspectorTableViewCell *)self p_standardLabelFont];
    [p_standardLabelFont pointSize];
    v7 = v6;

    p_currentLabelFont = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
    [p_currentLabelFont pointSize];
    v10 = v9;

    return fmax(v10 / v7, 1.0);
  }

  return result;
}

- (double)p_minimumVerticalTitlePadding
{
  currentContentSizeCategoryWrapsToNextLine = [(CRLiOSInspectorTableViewCell *)self currentContentSizeCategoryWrapsToNextLine];
  result = 6.0;
  if (currentContentSizeCategoryWrapsToNextLine)
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
    p_currentLabelFont = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
    [p_currentLabelFont lineHeight];
    v9 = v8 + v6 * 2.0;
  }

  else
  {
    [(CRLiOSInspectorTableViewCell *)self p_currentAccessibilitySizeRatio];
    v9 = v4 * v10;
  }

  return ceil(v9);
}

- (BOOL)p_needsConstraintsUpdateForElements:(unint64_t)elements
{
  if (self->_activeConstrainedElements != elements)
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

- (void)p_contentSizeCategoryDidChangeNotification:(id)notification
{
  p_currentLabelFont = [(CRLiOSInspectorTableViewCell *)self p_currentLabelFont];
  [(CRLiOSInspectorLabel *)self->_customTextLabel setFont:p_currentLabelFont];

  p_currentDetailLabelFont = [(CRLiOSInspectorTableViewCell *)self p_currentDetailLabelFont];
  [(UILabel *)self->_customDetailTextLabel setFont:p_currentDetailLabelFont];

  [(CRLiOSInspectorTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)p_detailButtonTapped:(id)tapped
{
  superview = [(CRLiOSInspectorTableViewCell *)self superview];
  do
  {
    v5 = superview;
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, superview);
    superview = [superview superview];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = superview == 0;
    }
  }

  while (!v8);
  delegate = [v7 delegate];
  v16 = sub_1003035DC(delegate, 1, v10, v11, v12, v13, v14, v15, &OBJC_PROTOCOL___UITableViewDelegate);

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
    contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
    [contentView frame];
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
        contentView2 = [(CRLiOSInspectorTableViewCell *)self contentView];
        [contentView2 setFrame:{v5, v7, v9, v11}];
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
        contentView3 = [(CRLiOSInspectorTableViewCell *)self contentView];
        [contentView3 setFrame:{v5 + -27.0, v7, v9 + 27.0, v11}];
      }
    }
  }
}

- (void)updateConstraints
{
  p_elementsToConstrain = [(CRLiOSInspectorTableViewCell *)self p_elementsToConstrain];
  if ([(CRLiOSInspectorTableViewCell *)self p_needsConstraintsUpdateForElements:p_elementsToConstrain])
  {
    [(CRLiOSInspectorTableViewCell *)self p_updateConstraintsForElements:p_elementsToConstrain];
  }

  v4.receiver = self;
  v4.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v4 updateConstraints];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = ![(CRLiOSInspectorTableViewCell *)self disablesContentWhenNotUserInteractive];
  [(CRLiOSInspectorLabel *)self->_customTextLabel setEnabled:v5 | enabledCopy];
  [(CRLiOSInspectorLabel *)self->_customTextLabel setUserInteractionEnabled:enabledCopy];
  [(UILabel *)self->_customDetailTextLabel setEnabled:v5 | enabledCopy];
  [(UILabel *)self->_customDetailTextLabel setUserInteractionEnabled:enabledCopy];
  [(CRLiOSInspectorTableCellImageView *)self->_customImageView setUserInteractionEnabled:enabledCopy];
  [(UIView *)self->_customStandardAccessoryView setUserInteractionEnabled:enabledCopy];
  v6 = objc_opt_class();
  v7 = sub_100014370(v6, self->_customStandardAccessoryView);
  [v7 setEnabled:v5 | enabledCopy];
  [(CRLiOSInspectorCheckmark *)self->_checkmarkView setEnabled:v5 | enabledCopy];
  v8.receiver = self;
  v8.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v8 setUserInteractionEnabled:enabledCopy];
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
  contentView = [(CRLiOSInspectorTableViewCell *)self contentView];
  v4 = contentView;
  if (!usesContentViewInsteadOfSafeAreaLayoutGuide)
  {
    safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];

    v4 = safeAreaLayoutGuide;
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = CRLiOSInspectorTableViewCell;
  [(CRLiOSInspectorTableViewCell *)&v6 setHighlighted:highlighted animated:animated];
  [(CRLiOSInspectorTableCellImageButton *)self->_customImageButton setHighlighted:highlightedCopy];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = CRLiOSInspectorTableViewCell;
  accessibilityLabel = [(CRLiOSInspectorTableViewCell *)&v10 accessibilityLabel];
  if (![accessibilityLabel length])
  {
    customTextLabel = [(CRLiOSInspectorTableViewCell *)self customTextLabel];
    text = [customTextLabel text];
    v6 = [text length];

    if (v6)
    {
      customTextLabel2 = [(CRLiOSInspectorTableViewCell *)self customTextLabel];
      text2 = [customTextLabel2 text];

      accessibilityLabel = text2;
    }
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v10.receiver = self;
  v10.super_class = CRLiOSInspectorTableViewCell;
  accessibilityValue = [(CRLiOSInspectorTableViewCell *)&v10 accessibilityValue];
  if (![accessibilityValue length])
  {
    customDetailTextLabel = [(CRLiOSInspectorTableViewCell *)self customDetailTextLabel];
    text = [customDetailTextLabel text];
    v6 = [text length];

    if (v6)
    {
      customDetailTextLabel2 = [(CRLiOSInspectorTableViewCell *)self customDetailTextLabel];
      text2 = [customDetailTextLabel2 text];

      accessibilityValue = text2;
    }
  }

  return accessibilityValue;
}

+ (id)checkableCellWithTitle:(id)title checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier
{
  checkedCopy = checked;
  edgeCopy = edge;
  titleCopy = title;
  identifierCopy = identifier;
  v11 = [objc_alloc(objc_opt_class()) initWithStyle:0 reuseIdentifier:identifierCopy];

  [v11 setCheckable:1];
  [v11 setChecked:checkedCopy];
  [v11 setShowsCheckmarkOnLeadingEdge:edgeCopy];
  if (titleCopy)
  {
    textLabel = [v11 textLabel];
    [textLabel setText:titleCopy];
  }

  return v11;
}

+ (id)checkableCellWithImage:(id)image checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier
{
  checkedCopy = checked;
  edgeCopy = edge;
  imageCopy = image;
  identifierCopy = identifier;
  v11 = [objc_alloc(objc_opt_class()) initWithStyle:0 reuseIdentifier:identifierCopy];

  [v11 setCheckable:1];
  [v11 setChecked:checkedCopy];
  [v11 setShowsCheckmarkOnLeadingEdge:edgeCopy];
  [v11 setShowsImageOnTrailingEdge:edgeCopy];
  if (imageCopy)
  {
    imageView = [v11 imageView];
    [imageView setImage:imageCopy];
  }

  return v11;
}

+ (id)checkableSubtitleCellWithTitle:(id)title subtitle:(id)subtitle checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier
{
  checkedCopy = checked;
  edgeCopy = edge;
  titleCopy = title;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  v14 = [objc_alloc(objc_opt_class()) initWithStyle:3 reuseIdentifier:identifierCopy];

  [v14 setCheckable:1];
  [v14 setChecked:checkedCopy];
  [v14 setShowsCheckmarkOnLeadingEdge:edgeCopy];
  if (titleCopy)
  {
    textLabel = [v14 textLabel];
    [textLabel setText:titleCopy];
  }

  if (subtitleCopy)
  {
    detailTextLabel = [v14 detailTextLabel];
    [detailTextLabel setText:subtitleCopy];
  }

  return v14;
}

+ (id)checkableCellWithTitle:(id)title detailText:(id)text checkmarkOnLeadingEdge:(BOOL)edge checked:(BOOL)checked reuseIdentifier:(id)identifier
{
  checkedCopy = checked;
  edgeCopy = edge;
  titleCopy = title;
  textCopy = text;
  identifierCopy = identifier;
  v14 = [objc_alloc(objc_opt_class()) initWithStyle:1 reuseIdentifier:identifierCopy];

  [v14 setCheckable:1];
  [v14 setChecked:checkedCopy];
  [v14 setShowsCheckmarkOnLeadingEdge:edgeCopy];
  if (titleCopy)
  {
    textLabel = [v14 textLabel];
    [textLabel setText:titleCopy];
  }

  if (textCopy)
  {
    detailTextLabel = [v14 detailTextLabel];
    [detailTextLabel setText:textCopy];
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