@interface BKLibraryBookshelfCollectionsHeader
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfCollectionsHeader)initWithFrame:(CGRect)a3;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (void)_setupGlyphs;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setActionHandler:(id)a3;
- (void)setButtonText:(id)a3;
- (void)setDataSource:(id)a3;
- (void)updateButtonWithText:(id)a3 attributes:(id)a4;
@end

@implementation BKLibraryBookshelfCollectionsHeader

- (BKLibraryBookshelfCollectionsHeader)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfCollectionsHeader;
  v3 = [(BKLibraryBookshelfCollectionsHeader *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [v11 sizeThatFits:{1.79769313e308, 1.79769313e308}];
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
  v21 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [v21 sizeThatFits:{v18, v10}];
  v23 = v22;

  v24 = [(BKLibraryBookshelfCollectionsHeader *)self traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 1)
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
  v39 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [v39 setFrame:{v32, v34, v36, v38}];

  [(BKLibraryBookshelfCollectionsHeader *)self isRTL];
  IMRectFlippedForRTL();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [v48 setFrame:{v41, v43, v45, v47}];
}

- (void)applyLayoutAttributes:(id)a3
{
  v71.receiver = self;
  v71.super_class = BKLibraryBookshelfCollectionsHeader;
  v4 = a3;
  [(BKLibraryBookshelfCollectionsHeader *)&v71 applyLayoutAttributes:v4];
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [v5 mainHeaderMetrics];
  [(BKLibraryBookshelfCollectionsHeader *)self setMainHeaderMetrics:v6];
  v7 = +[UIColor systemGroupedBackgroundColor];
  if (!qword_100AF75C8 || ([qword_100AF75C0 isEqual:v7] & 1) == 0)
  {
    objc_storeStrong(&qword_100AF75C0, v7);
    v8 = [UIImage imageWithColor:qword_100AF75C0];
    v9 = qword_100AF75C8;
    qword_100AF75C8 = v8;
  }

  v10 = [v6 readingListHighlightColor];
  v11 = v10;
  if (!qword_100AF75B8 || ([v10 isEqual:qword_100AF75B0] & 1) == 0)
  {
    objc_storeStrong(&qword_100AF75B0, v11);
    v12 = [UIImage imageWithColor:qword_100AF75B0];
    v13 = qword_100AF75B8;
    qword_100AF75B8 = v12;
  }

  v14 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfCollectionsHeader setIsRTL:](self, "setIsRTL:", [v14 userInterfaceLayoutDirection] == 1);

  v15 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  if ([v5 layoutDebugMode])
  {
    v16 = +[UIColor redColor];
    v17 = [v16 colorWithAlphaComponent:0.2];
    v18 = [v17 CGColor];
    [(BKLibraryBookshelfCollectionsHeader *)self layer];
    v19 = v67 = v7;
    [v19 setBorderColor:v18];

    v20 = [(BKLibraryBookshelfCollectionsHeader *)self layer];
    v21 = 0.5;
    [v20 setBorderWidth:0.5];

    v22 = +[UIColor greenColor];
    v23 = [v22 colorWithAlphaComponent:0.2];
    v24 = [v23 CGColor];
    v25 = [v15 layer];
    [v25 setBackgroundColor:v24];

    v26 = +[UIColor redColor];
    v27 = [v26 colorWithAlphaComponent:0.2];
    v28 = [v27 CGColor];
    v29 = [v15 imageView];
    v30 = [v29 layer];
    [v30 setBorderColor:v28];

    v31 = [v15 imageView];
    v32 = [v31 layer];
    [v32 setBorderWidth:0.5];

    v33 = +[UIColor redColor];
    v34 = [v33 colorWithAlphaComponent:0.2];
    v35 = [v34 CGColor];
    v36 = [v15 titleLabel];
    v37 = [v36 layer];
    [v37 setBorderColor:v35];

    v38 = [v15 titleLabel];
    v39 = [v38 layer];
    [v39 setBorderWidth:0.5];

    v40 = +[UIColor redColor];
    v41 = [v40 colorWithAlphaComponent:0.2];
    v42 = [v41 CGColor];
    v43 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
    v44 = [v43 layer];
    [v44 setBorderColor:v42];

    v7 = v67;
  }

  else
  {
    v45 = [(BKLibraryBookshelfCollectionsHeader *)self layer];
    v21 = 0.0;
    [v45 setBorderWidth:0.0];

    v46 = [v15 layer];
    [v46 setBackgroundColor:0];

    v47 = [v15 imageView];
    v48 = [v47 layer];
    [v48 setBorderWidth:0.0];

    v40 = [v15 titleLabel];
    v41 = [v40 layer];
    [v41 setBorderWidth:0.0];
  }

  v49 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  v50 = [v49 layer];
  [v50 setBorderWidth:v21];

  v51 = [(BKLibraryBookshelfCollectionsHeader *)self backgroundColor];
  v52 = [v6 headerBackgroundColor];

  if (v51 != v52)
  {
    v53 = [v6 headerBackgroundColor];
    [(BKLibraryBookshelfCollectionsHeader *)self setBackgroundColor:v53];
  }

  [v6 readingListPadding];
  [(BKLibraryBookshelfCollectionsHeader *)self setPadding:?];
  [v6 chevronSpacing];
  [(BKLibraryBookshelfCollectionsHeader *)self setChevronSpacing:?];
  v54 = [v5 columnMetrics];
  [v54 margins];
  [(BKLibraryBookshelfCollectionsHeader *)self setMargins:?];

  [v6 readingListImageSpacing];
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

  v59 = [v6 readingListHighlightColor];
  v60 = &qword_100AF75B8;
  if (!v59)
  {
    v60 = &qword_100AF75C8;
  }

  v61 = *v60;

  [v15 setContentVerticalAlignment:0];
  [v15 setContentHorizontalAlignment:4];
  [v15 setImageEdgeInsets:{0.0, -v58, 0.0, v58}];
  [v15 setTitleEdgeInsets:{0.0, v58, 0.0, -v58}];
  [v15 setContentEdgeInsets:{0.0, v57, 0.0, v57}];
  [v15 setBackgroundImage:v61 forState:1];
  [(BKLibraryBookshelfCollectionsHeader *)self _setupGlyphs];
  v62 = [v15 isEnabled];
  if (v62 == [v5 editMode])
  {
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000EB4B0;
    v68[3] = &unk_100A03440;
    v69 = v15;
    v70 = v5;
    [UIView transitionWithView:v69 duration:5242880 options:v68 animations:0 completion:0.3];
  }

  v63 = [(BKLibraryBookshelfCollectionsHeader *)self buttonText];

  if (v63)
  {
    v64 = [(BKLibraryBookshelfCollectionsHeader *)self buttonText];
    v65 = [v6 collectionsLabelFontAttributes];
    v66 = [v65 attributes];
    [(BKLibraryBookshelfCollectionsHeader *)self updateButtonWithText:v64 attributes:v66];
  }
}

- (void)_setupGlyphs
{
  v3 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  v4 = [v3 chevronFontAttributes];
  v5 = [v4 font];
  v6 = [UIImageSymbolConfiguration configurationWithFont:v5 scale:1];

  v7 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  v8 = [v7 chevronName];
  v9 = [UIImage systemImageNamed:v8];
  v10 = [v9 imageWithConfiguration:v6];
  [(BKLibraryBookshelfCollectionsHeader *)self setChevronImage:v10];

  v11 = [(BKLibraryBookshelfCollectionsHeader *)self chevronImage];
  v12 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [v12 setImage:v11];

  v13 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  v14 = [v13 chevronFontAttributes];
  v15 = [v14 foregroundColor];
  v16 = [(BKLibraryBookshelfCollectionsHeader *)self chevron];
  [v16 setTintColor:v15];

  v17 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  v18 = [v17 iconFontAttributes];
  v19 = [v18 font];
  v30 = [UIImageSymbolConfiguration configurationWithFont:v19 scale:3];

  v20 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  v21 = [v20 iconName];
  v22 = [UIImage systemImageNamed:v21];
  v23 = [v22 imageWithConfiguration:v30];

  v24 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [v24 setImage:v23 forState:0];

  v25 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  v26 = [v25 iconFontAttributes];
  v27 = [v26 foregroundColor];
  v28 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  v29 = [v28 imageView];
  [v29 setTintColor:v27];
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  [BKDataBinder unbind:self];
  objc_storeWeak(&self->_dataSource, v4);

  [(BKLibraryBookshelfCollectionsHeader *)self _setupGlyphs];
  v5 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  v6 = [v5 imageView];
  [v6 setContentMode:1];

  v7 = [(BKLibraryBookshelfCollectionsHeader *)self dataSource];

  if (v7)
  {
    v8 = [(BKLibraryBookshelfCollectionsHeader *)self dataSource];
    [BKDataBinder bind:v8 key:@"readingListButtonText" to:self key:@"buttonText"];
  }
}

- (void)setActionHandler:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_actionHandler, obj);
    v6 = [(BKLibraryBookshelfCollectionsHeader *)self button];
    [v6 removeTarget:0 action:0 forControlEvents:64];

    v7 = [(BKLibraryBookshelfCollectionsHeader *)self button];
    v8 = [(BKLibraryBookshelfCollectionsHeader *)self actionHandler];
    [v7 addTarget:v8 action:"showReadingLists" forControlEvents:64];

    v5 = obj;
  }
}

- (void)setButtonText:(id)a3
{
  objc_storeStrong(&self->_buttonText, a3);
  v5 = a3;
  v8 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
  v6 = [v8 collectionsLabelFontAttributes];
  v7 = [v6 attributes];
  [(BKLibraryBookshelfCollectionsHeader *)self updateButtonWithText:v5 attributes:v7];
}

- (void)updateButtonWithText:(id)a3 attributes:(id)a4
{
  v43 = a3;
  v6 = [a4 mutableCopy];
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

  v13 = [[NSMutableAttributedString alloc] initWithString:v43 attributes:v6];
  v14 = [(BKLibraryBookshelfCollectionsHeader *)self traitCollection];
  v15 = [v14 horizontalSizeClass];

  v42 = v10;
  if (v15 == 1)
  {
    v16 = NSForegroundColorAttributeName;
  }

  else
  {
    v17 = objc_alloc_init(NSTextAttachment);
    v18 = [(BKLibraryBookshelfCollectionsHeader *)self chevronImage];
    v19 = [v18 imageWithRenderingMode:2];
    [v17 setImage:v19];

    v20 = [[NSAttributedString alloc] initWithString:@" " attributes:v6];
    [v13 appendAttributedString:v20];

    v21 = [NSAttributedString attributedStringWithAttachment:v17];
    v22 = [v21 mutableCopy];

    v16 = NSForegroundColorAttributeName;
    v23 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
    v24 = [v23 chevronFontAttributes];
    v25 = [v24 foregroundColor];
    [v22 addAttribute:NSForegroundColorAttributeName value:v25 range:{0, objc_msgSend(v22, "length")}];

    [v13 appendAttributedString:v22];
  }

  v26 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [v26 setAttributedTitle:v13 forState:0];

  v27 = v6;
  v28 = [v27 objectForKey:v16];
  v29 = [v28 colorWithAlphaComponent:0.5];
  [v27 setObject:v29 forKey:v16];

  v30 = [[NSMutableAttributedString alloc] initWithString:v43 attributes:v27];
  if (v15 != 1)
  {
    v31 = objc_alloc_init(NSTextAttachment);
    v32 = [(BKLibraryBookshelfCollectionsHeader *)self chevronImage];
    v33 = [v32 imageWithRenderingMode:2];
    [v31 setImage:v33];

    v34 = [[NSAttributedString alloc] initWithString:@" " attributes:v27];
    [v30 appendAttributedString:v34];

    v35 = [NSAttributedString attributedStringWithAttachment:v31];
    v36 = [v35 mutableCopy];

    v37 = [(BKLibraryBookshelfCollectionsHeader *)self mainHeaderMetrics];
    v38 = [v37 chevronFontAttributes];
    v39 = [v38 foregroundColor];
    [v36 addAttribute:v16 value:v39 range:{0, objc_msgSend(v36, "length")}];

    [v30 appendAttributedString:v36];
  }

  v40 = [(BKLibraryBookshelfCollectionsHeader *)self button];
  [v40 setAttributedTitle:v30 forState:2];

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