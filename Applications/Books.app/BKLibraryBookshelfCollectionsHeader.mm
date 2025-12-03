@interface BKLibraryBookshelfCollectionsHeader
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfCollectionsHeader)initWithFrame:(CGRect)frame;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (void)_setupGlyphs;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setActionHandler:(id)handler;
- (void)setButtonText:(id)text;
- (void)setDataSource:(id)source;
- (void)updateButtonWithText:(id)text attributes:(id)attributes;
@end

@implementation BKLibraryBookshelfCollectionsHeader

- (BKLibraryBookshelfCollectionsHeader)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfCollectionsHeader;
  v3 = [(BKLibraryBookshelfCollectionsHeader *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    [(BKLibraryBookshelfCollectionsHeader *)v3 bounds];
    [(UIButton *)v3->_button setFrame:?];
    [(UIButton *)v3->_button setAutoresizingMask:18];
    [(UIButton *)v3->_button setSpringLoaded:1];
    v6 = objc_alloc_init(UIImageView);
    chevron = v3->_chevron;
    v3->_chevron = v6;

    [(BKLibraryBookshelfCollectionsHeader *)v3 addSubview:v3->_chevron];
    [(BKLibraryBookshelfCollectionsHeader *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)dealloc
{
  [BKDataBinder unbind:self];
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfCollectionsHeader;
  [(BKLibraryBookshelfCollectionsHeader *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = BKLibraryBookshelfCollectionsHeader;
  [(BKLibraryBookshelfCollectionsHeader *)&v51 layoutSubviews];
  [(BKLibraryBookshelfCollectionsHeader *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  chevron = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [chevron sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v13 = v12;
  v15 = v14;

  v52.origin.x = v4;
  v52.origin.y = v6;
  v52.size.width = v8;
  v52.size.height = v10;
  Height = CGRectGetHeight(v52);
  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v13;
  v50 = v15;
  v53.size.height = v15;
  v49 = round((Height - CGRectGetHeight(v53)) * 0.5);
  [(BKLibraryBookshelfCollectionsHeader *)self margins];
  v18 = v8 + v17 * -2.0;
  [(BKLibraryBookshelfCollectionsHeader *)self margins];
  v20 = v4 + v19;
  button = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [button sizeThatFits:{v18, v10}];
  v23 = v22;

  traitCollection = [(BKLibraryBookshelfCollectionsHeader *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    v54.origin.x = v4;
    v54.origin.y = v6;
    v54.size.width = v8;
    v54.size.height = v10;
    CGRectGetMaxX(v54);
    v55.origin.x = v4;
    v55.origin.y = v49;
    v55.size.height = v50;
    v55.size.width = v13;
    CGRectGetWidth(v55);
    [(BKLibraryBookshelfCollectionsHeader *)self margins];
    chevron = self->_chevron;
    v27 = 0;
  }

  else
  {
    v56.origin.x = v20;
    v56.origin.y = v6;
    v56.size.width = v18;
    v56.size.height = v10;
    v28 = v23 + CGRectGetMinX(v56);
    [(BKLibraryBookshelfCollectionsHeader *)self chevronSpacing];
    v30 = v28 + v29;
    [(BKLibraryBookshelfCollectionsHeader *)self chevronSpacing];
    v57.origin.x = v30;
    v57.origin.y = v49;
    v57.size.height = v50;
    v57.size.width = v13;
    CGRectGetWidth(v57);
    chevron = self->_chevron;
    v27 = 1;
  }

  [(UIImageView *)chevron setHidden:v27];
  [(BKLibraryBookshelfCollectionsHeader *)self isRTL];
  IMRectFlippedForRTL();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  button2 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [button2 setFrame:{v32, v34, v36, v38}];

  [(BKLibraryBookshelfCollectionsHeader *)self isRTL];
  IMRectFlippedForRTL();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  chevron2 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [chevron2 setFrame:{v41, v43, v45, v47}];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v71.receiver = self;
  v71.super_class = BKLibraryBookshelfCollectionsHeader;
  attributesCopy = attributes;
  [(BKLibraryBookshelfCollectionsHeader *)&v71 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  v5 = BUDynamicCast();

  mainHeaderMetrics = [v5 mainHeaderMetrics];
  [(BKLibraryBookshelfCollectionsHeader *)self setMainHeaderMetrics:mainHeaderMetrics];
  v7 = +[UIColor systemGroupedBackgroundColor];
  if (!qword_100AF75C8 || ([qword_100AF75C0 isEqual:v7] & 1) == 0)
  {
    objc_storeStrong(&qword_100AF75C0, v7);
    v8 = [UIImage imageWithColor:qword_100AF75C0];
    v9 = qword_100AF75C8;
    qword_100AF75C8 = v8;
  }

  readingListHighlightColor = [mainHeaderMetrics readingListHighlightColor];
  v11 = readingListHighlightColor;
  if (!qword_100AF75B8 || ([readingListHighlightColor isEqual:qword_100AF75B0] & 1) == 0)
  {
    objc_storeStrong(&qword_100AF75B0, v11);
    v12 = [UIImage imageWithColor:qword_100AF75B0];
    v13 = qword_100AF75B8;
    qword_100AF75B8 = v12;
  }

  v14 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfCollectionsHeader setIsRTL:](self, "setIsRTL:", [v14 userInterfaceLayoutDirection] == 1);

  button = [(BKLibraryBookshelfCollectionsHeader *)self button];
  if ([v5 layoutDebugMode])
  {
    v16 = +[UIColor redColor];
    v17 = [v16 colorWithAlphaComponent:0.2];
    cGColor = [v17 CGColor];
    [(BKLibraryBookshelfCollectionsHeader *)self layer];
    v19 = v67 = v7;
    [v19 setBorderColor:cGColor];

    layer = [(BKLibraryBookshelfCollectionsHeader *)self layer];
    v21 = 0.5;
    [layer setBorderWidth:0.5];

    v22 = +[UIColor greenColor];
    v23 = [v22 colorWithAlphaComponent:0.2];
    cGColor2 = [v23 CGColor];
    layer2 = [button layer];
    [layer2 setBackgroundColor:cGColor2];

    v26 = +[UIColor redColor];
    v27 = [v26 colorWithAlphaComponent:0.2];
    cGColor3 = [v27 CGColor];
    imageView = [button imageView];
    layer3 = [imageView layer];
    [layer3 setBorderColor:cGColor3];

    imageView2 = [button imageView];
    layer4 = [imageView2 layer];
    [layer4 setBorderWidth:0.5];

    v33 = +[UIColor redColor];
    v34 = [v33 colorWithAlphaComponent:0.2];
    cGColor4 = [v34 CGColor];
    titleLabel = [button titleLabel];
    layer5 = [titleLabel layer];
    [layer5 setBorderColor:cGColor4];

    titleLabel2 = [button titleLabel];
    layer6 = [titleLabel2 layer];
    [layer6 setBorderWidth:0.5];

    titleLabel3 = +[UIColor redColor];
    layer11 = [titleLabel3 colorWithAlphaComponent:0.2];
    cGColor5 = [layer11 CGColor];
    chevron = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
    layer7 = [chevron layer];
    [layer7 setBorderColor:cGColor5];

    v7 = v67;
  }

  else
  {
    layer8 = [(BKLibraryBookshelfCollectionsHeader *)self layer];
    v21 = 0.0;
    [layer8 setBorderWidth:0.0];

    layer9 = [button layer];
    [layer9 setBackgroundColor:0];

    imageView3 = [button imageView];
    layer10 = [imageView3 layer];
    [layer10 setBorderWidth:0.0];

    titleLabel3 = [button titleLabel];
    layer11 = [titleLabel3 layer];
    [layer11 setBorderWidth:0.0];
  }

  chevron2 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  layer12 = [chevron2 layer];
  [layer12 setBorderWidth:v21];

  backgroundColor = [(BKLibraryBookshelfCollectionsHeader *)self backgroundColor];
  headerBackgroundColor = [mainHeaderMetrics headerBackgroundColor];

  if (backgroundColor != headerBackgroundColor)
  {
    headerBackgroundColor2 = [mainHeaderMetrics headerBackgroundColor];
    [(BKLibraryBookshelfCollectionsHeader *)self setBackgroundColor:headerBackgroundColor2];
  }

  [mainHeaderMetrics readingListPadding];
  [(BKLibraryBookshelfCollectionsHeader *)self setPadding:?];
  [mainHeaderMetrics chevronSpacing];
  [(BKLibraryBookshelfCollectionsHeader *)self setChevronSpacing:?];
  columnMetrics = [v5 columnMetrics];
  [columnMetrics margins];
  [(BKLibraryBookshelfCollectionsHeader *)self setMargins:?];

  [mainHeaderMetrics readingListImageSpacing];
  v56 = v55;
  v57 = v55 * 0.5;
  if ([(BKLibraryBookshelfCollectionsHeader *)self isRTL])
  {
    v58 = -(v56 * 0.5);
  }

  else
  {
    v58 = v57;
  }

  readingListHighlightColor2 = [mainHeaderMetrics readingListHighlightColor];
  v60 = &qword_100AF75B8;
  if (!readingListHighlightColor2)
  {
    v60 = &qword_100AF75C8;
  }

  v61 = *v60;

  [button setContentVerticalAlignment:0];
  [button setContentHorizontalAlignment:4];
  [button setImageEdgeInsets:{0.0, -v58, 0.0, v58}];
  [button setTitleEdgeInsets:{0.0, v58, 0.0, -v58}];
  [button setContentEdgeInsets:{0.0, v57, 0.0, v57}];
  [button setBackgroundImage:v61 forState:1];
  [(BKLibraryBookshelfCollectionsHeader *)self _setupGlyphs];
  isEnabled = [button isEnabled];
  if (isEnabled == [v5 editMode])
  {
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000EB4B0;
    v68[3] = &unk_100A03440;
    v69 = button;
    v70 = v5;
    [UIView transitionWithView:v69 duration:5242880 options:v68 animations:0 completion:0.3];
  }

  buttonText = [(BKLibraryBookshelfCollectionsHeader *)self buttonText];

  if (buttonText)
  {
    buttonText2 = [(BKLibraryBookshelfCollectionsHeader *)self buttonText];
    collectionsLabelFontAttributes = [mainHeaderMetrics collectionsLabelFontAttributes];
    attributes = [collectionsLabelFontAttributes attributes];
    [(BKLibraryBookshelfCollectionsHeader *)self updateButtonWithText:buttonText2 attributes:attributes];
  }
}

- (void)_setupGlyphs
{
  mainHeaderMetrics = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  chevronFontAttributes = [mainHeaderMetrics chevronFontAttributes];
  font = [chevronFontAttributes font];
  v6 = [UIImageSymbolConfiguration configurationWithFont:font scale:1];

  mainHeaderMetrics2 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  chevronName = [mainHeaderMetrics2 chevronName];
  v9 = [UIImage systemImageNamed:chevronName];
  v10 = [v9 imageWithConfiguration:v6];
  [(BKLibraryBookshelfCollectionsHeader *)self setChevronImage:v10];

  chevronImage = [(BKLibraryBookshelfCollectionsHeader *)self chevronImage];
  chevron = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [chevron setImage:chevronImage];

  mainHeaderMetrics3 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  chevronFontAttributes2 = [mainHeaderMetrics3 chevronFontAttributes];
  foregroundColor = [chevronFontAttributes2 foregroundColor];
  chevron2 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [chevron2 setTintColor:foregroundColor];

  mainHeaderMetrics4 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  iconFontAttributes = [mainHeaderMetrics4 iconFontAttributes];
  font2 = [iconFontAttributes font];
  v30 = [UIImageSymbolConfiguration configurationWithFont:font2 scale:3];

  mainHeaderMetrics5 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  iconName = [mainHeaderMetrics5 iconName];
  v22 = [UIImage systemImageNamed:iconName];
  v23 = [v22 imageWithConfiguration:v30];

  button = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [button setImage:v23 forState:0];

  mainHeaderMetrics6 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  iconFontAttributes2 = [mainHeaderMetrics6 iconFontAttributes];
  foregroundColor2 = [iconFontAttributes2 foregroundColor];
  button2 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  imageView = [button2 imageView];
  [imageView setTintColor:foregroundColor2];
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  [BKDataBinder unbind:self];
  objc_storeWeak(&self->_dataSource, sourceCopy);

  [(BKLibraryBookshelfCollectionsHeader *)self _setupGlyphs];
  button = [(BKLibraryBookshelfCollectionsHeader *)self button];
  imageView = [button imageView];
  [imageView setContentMode:1];

  dataSource = [(BKLibraryBookshelfCollectionsHeader *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(BKLibraryBookshelfCollectionsHeader *)self dataSource];
    [BKDataBinder bind:dataSource2 key:@"readingListButtonText" to:self key:@"buttonText"];
  }
}

- (void)setActionHandler:(id)handler
{
  obj = handler;
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_actionHandler, obj);
    button = [(BKLibraryBookshelfCollectionsHeader *)self button];
    [button removeTarget:0 action:0 forControlEvents:64];

    button2 = [(BKLibraryBookshelfCollectionsHeader *)self button];
    actionHandler = [(BKLibraryBookshelfCollectionsHeader *)self actionHandler];
    [button2 addTarget:actionHandler action:"showReadingLists" forControlEvents:64];

    v5 = obj;
  }
}

- (void)setButtonText:(id)text
{
  objc_storeStrong(&self->_buttonText, text);
  textCopy = text;
  mainHeaderMetrics = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  collectionsLabelFontAttributes = [mainHeaderMetrics collectionsLabelFontAttributes];
  attributes = [collectionsLabelFontAttributes attributes];
  [(BKLibraryBookshelfCollectionsHeader *)self updateButtonWithText:textCopy attributes:attributes];
}

- (void)updateButtonWithText:(id)text attributes:(id)attributes
{
  textCopy = text;
  v6 = [attributes mutableCopy];
  v7 = [v6 objectForKeyedSubscript:NSParagraphStyleAttributeName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSParagraphStyle defaultParagraphStyle];
  }

  v10 = v9;

  v11 = [v10 mutableCopy];
  [v11 setLineBreakMode:4];
  v41 = v11;
  v12 = [v11 copy];
  [v6 setObject:v12 forKeyedSubscript:NSParagraphStyleAttributeName];

  v13 = [[NSMutableAttributedString alloc] initWithString:textCopy attributes:v6];
  traitCollection = [(BKLibraryBookshelfCollectionsHeader *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v42 = v10;
  if (horizontalSizeClass == 1)
  {
    v16 = NSForegroundColorAttributeName;
  }

  else
  {
    v17 = objc_alloc_init(NSTextAttachment);
    chevronImage = [(BKLibraryBookshelfCollectionsHeader *)self chevronImage];
    v19 = [chevronImage imageWithRenderingMode:2];
    [v17 setImage:v19];

    v20 = [[NSAttributedString alloc] initWithString:@" " attributes:v6];
    [v13 appendAttributedString:v20];

    v21 = [NSAttributedString attributedStringWithAttachment:v17];
    v22 = [v21 mutableCopy];

    v16 = NSForegroundColorAttributeName;
    mainHeaderMetrics = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
    chevronFontAttributes = [mainHeaderMetrics chevronFontAttributes];
    foregroundColor = [chevronFontAttributes foregroundColor];
    [v22 addAttribute:NSForegroundColorAttributeName value:foregroundColor range:{0, objc_msgSend(v22, "length")}];

    [v13 appendAttributedString:v22];
  }

  button = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [button setAttributedTitle:v13 forState:0];

  v27 = v6;
  v28 = [v27 objectForKey:v16];
  v29 = [v28 colorWithAlphaComponent:0.5];
  [v27 setObject:v29 forKey:v16];

  v30 = [[NSMutableAttributedString alloc] initWithString:textCopy attributes:v27];
  if (horizontalSizeClass != 1)
  {
    v31 = objc_alloc_init(NSTextAttachment);
    chevronImage2 = [(BKLibraryBookshelfCollectionsHeader *)self chevronImage];
    v33 = [chevronImage2 imageWithRenderingMode:2];
    [v31 setImage:v33];

    v34 = [[NSAttributedString alloc] initWithString:@" " attributes:v27];
    [v30 appendAttributedString:v34];

    v35 = [NSAttributedString attributedStringWithAttachment:v31];
    v36 = [v35 mutableCopy];

    mainHeaderMetrics2 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
    chevronFontAttributes2 = [mainHeaderMetrics2 chevronFontAttributes];
    foregroundColor2 = [chevronFontAttributes2 foregroundColor];
    [v36 addAttribute:v16 value:foregroundColor2 range:{0, objc_msgSend(v36, "length")}];

    [v30 appendAttributedString:v36];
  }

  button2 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [button2 setAttributedTitle:v30 forState:2];

  [(BKLibraryBookshelfCollectionsHeader *)self setNeedsLayout];
}

- (BKLibraryBookshelfSupplementaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BKLibraryActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end