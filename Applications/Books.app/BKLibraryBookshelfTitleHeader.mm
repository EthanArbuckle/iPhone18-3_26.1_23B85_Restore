@interface BKLibraryBookshelfTitleHeader
+ (double)_cachedHeight:(id)height withDataSource:(id)source;
+ (double)heightOf:(id)of inSize:(CGSize)size withMaxLines:(double)lines;
+ (void)adjustHeight:(id)height withDataSource:(id)source;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BKLibraryBookshelfTitleHeader)initWithFrame:(CGRect)frame;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (void)_configureDescriptionLabel;
- (void)_configureDescriptionLabelForAttributeChange;
- (void)_configureForEditableState:(BOOL)state;
- (void)applyLayoutAttributes:(id)attributes;
- (void)clearDescriptionLabelText;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDataSource:(id)source;
- (void)setDescriptionPlaceHolderText:(id)text;
- (void)setDescriptionText:(id)text;
- (void)setTitleText:(id)text;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation BKLibraryBookshelfTitleHeader

+ (double)heightOf:(id)of inSize:(CGSize)size withMaxLines:(double)lines
{
  height = size.height;
  width = size.width;
  ofCopy = of;
  [ofCopy sizeThatFits:{width, height}];
  v10 = v9;
  if (lines > 0.0)
  {
    font = [ofCopy font];
    [font lineHeight];
    v13 = v12;
    [ofCopy textContainerInset];
    v15 = v14 + v13 * lines;
    [ofCopy textContainerInset];
    v17 = v15 + v16;

    if (v10 >= v17)
    {
      v10 = v17;
    }
  }

  return v10;
}

+ (double)_cachedHeight:(id)height withDataSource:(id)source
{
  heightCopy = height;
  sourceCopy = source;
  if (qword_100AF7700 != -1)
  {
    sub_100790874();
  }

  editable = [heightCopy editable];
  [heightCopy frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  columnMetrics = [heightCopy columnMetrics];
  [columnMetrics margins];
  v18 = v17;

  collectionTitle = [sourceCopy collectionTitle];
  mainHeaderMetrics = [heightCopy mainHeaderMetrics];
  largeTitleFontAttributes = [mainHeaderMetrics largeTitleFontAttributes];
  v22 = [TUIFontSpec attributedStringWith:collectionTitle attributes:largeTitleFontAttributes];

  if (!v22)
  {
    v22 = objc_alloc_init(NSAttributedString);
  }

  collectionDescription = [sourceCopy collectionDescription];
  v24 = collectionDescription;
  if (editable)
  {
    if ([collectionDescription length])
    {
      [sourceCopy collectionDescription];
    }

    else
    {
      [sourceCopy collectionDescriptionPlaceHolder];
    }
    v25 = ;

    v24 = v25;
  }

  collectionIsSeries = [sourceCopy collectionIsSeries];
  mainHeaderMetrics2 = [heightCopy mainHeaderMetrics];
  v28 = mainHeaderMetrics2;
  if (collectionIsSeries)
  {
    [mainHeaderMetrics2 alternateTitleDetailsFontAttributes];
  }

  else
  {
    [mainHeaderMetrics2 titleDetailsFontAttributes];
  }
  v29 = ;
  v30 = v13 - v18;
  v31 = [TUIFontSpec attributedStringWith:v24 attributes:v29];

  if (!v31)
  {
    v31 = objc_alloc_init(NSAttributedString);
  }

  mainHeaderMetrics3 = [heightCopy mainHeaderMetrics];
  [mainHeaderMetrics3 titleDetailsTopMargin];
  v34 = v33;
  mainHeaderMetrics4 = [heightCopy mainHeaderMetrics];
  [mainHeaderMetrics4 titleDetailsBottomMargin];
  v37 = v34 + v36;

  v74[0] = @"editable";
  v38 = [NSNumber numberWithBool:editable];
  v75[0] = v38;
  v74[1] = @"textViewWidth";
  v39 = [NSNumber numberWithDouble:v30];
  v75[1] = v39;
  v75[2] = v22;
  v73 = v22;
  v74[2] = @"titleAttributedText";
  v74[3] = @"descAttributedText";
  v75[3] = v31;
  v74[4] = @"margins";
  v40 = [NSNumber numberWithDouble:v37];
  v75[4] = v40;
  v41 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:5];

  v42 = [qword_100AF7708 objectForKeyedSubscript:v41];
  v43 = v42;
  if (v42)
  {
    [v42 doubleValue];
    v45 = v44;
  }

  else
  {
    v71 = collectionTitle;
    columnMetrics2 = [heightCopy columnMetrics];
    [columnMetrics2 margins];
    v48 = v13 - v47;

    v49 = [[UITextView alloc] initWithFrame:{v9, v11, v48, v15}];
    [v49 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v49 setEditable:editable];
    [v49 setSelectable:editable];
    collectionDescription2 = [sourceCopy collectionDescription];
    v51 = collectionDescription2;
    if (editable)
    {
      if ([collectionDescription2 length])
      {
        [sourceCopy collectionDescription];
      }

      else
      {
        [sourceCopy collectionDescriptionPlaceHolder];
      }
      v52 = ;

      v72 = v52;
    }

    else
    {
      v72 = collectionDescription2;
    }

    collectionIsSeries2 = [sourceCopy collectionIsSeries];
    mainHeaderMetrics5 = [heightCopy mainHeaderMetrics];
    v55 = mainHeaderMetrics5;
    if (collectionIsSeries2)
    {
      [mainHeaderMetrics5 alternateTitleDetailsFontAttributes];
    }

    else
    {
      [mainHeaderMetrics5 titleDetailsFontAttributes];
    }
    v56 = ;
    v57 = [TUIFontSpec attributedStringWith:v72 attributes:v56];
    [v49 setAttributedText:v57];

    mainHeaderMetrics6 = [heightCopy mainHeaderMetrics];
    [mainHeaderMetrics6 titleDetailsMaxLines];
    [BKLibraryBookshelfTitleHeader heightOf:v49 inSize:v48 withMaxLines:v15, v59];
    v61 = v60;

    if (([v49 isEditable] & 1) != 0 || (objc_msgSend(v49, "text"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "length"), v62, v63))
    {
      v45 = v61 + 0.0;
      if (v61 > 0.0)
      {
        mainHeaderMetrics7 = [heightCopy mainHeaderMetrics];
        [mainHeaderMetrics7 titleDetailsTopMargin];
        v66 = v45 + v65;

        mainHeaderMetrics8 = [heightCopy mainHeaderMetrics];
        [mainHeaderMetrics8 titleDetailsBottomMargin];
        v45 = v66 + v68;
      }
    }

    else
    {
      v45 = 0.0;
    }

    v69 = [NSNumber numberWithDouble:v45];
    [qword_100AF7708 setObject:v69 forKeyedSubscript:v41];

    collectionTitle = v71;
  }

  return v45;
}

+ (void)adjustHeight:(id)height withDataSource:(id)source
{
  sourceCopy = source;
  heightCopy = height;
  [heightCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [self _cachedHeight:heightCopy withDataSource:sourceCopy];
  v14 = v13;

  [heightCopy setFrame:{v8, v10, v12, v14}];
}

- (BKLibraryBookshelfTitleHeader)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfTitleHeader;
  v3 = [(BKLibraryBookshelfTitleHeader *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKLibraryBookshelfTitleHeader *)v3 setClipsToBounds:1];
    v5 = [UITextView alloc];
    [(BKLibraryBookshelfTitleHeader *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    [v6 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [(BKLibraryBookshelfTitleHeader *)v4 addSubview:v6];
    [(BKLibraryBookshelfTitleHeader *)v4 setDescriptionLabel:v6];
    descriptionLabel = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [descriptionLabel setDelegate:v4];

    descriptionLabel2 = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [descriptionLabel2 setEditable:0];

    descriptionLabel3 = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [descriptionLabel3 setSelectable:0];

    descriptionLabel4 = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [descriptionLabel4 setScrollEnabled:0];
  }

  return v4;
}

- (void)dealloc
{
  [BKDataBinder unbind:self];
  [(UITextView *)self->_descriptionLabel setDelegate:0];
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfTitleHeader;
  [(BKLibraryBookshelfTitleHeader *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = BKLibraryBookshelfTitleHeader;
  [(BKLibraryBookshelfTitleHeader *)&v38 layoutSubviews];
  v3 = CGRectZero.size.height + 0.0;
  [(BKLibraryBookshelfTitleHeader *)self descriptionSpacing];
  v5 = v3 + v4;
  [(BKLibraryBookshelfTitleHeader *)self bounds];
  MaxX = CGRectGetMaxX(v39);
  [(BKLibraryBookshelfTitleHeader *)self margins];
  v8 = MaxX - v7;
  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [(BKLibraryBookshelfTitleHeader *)self maxDescriptionLines];
  [BKLibraryBookshelfTitleHeader heightOf:descriptionLabel inSize:v8 withMaxLines:0.0, v10];
  v12 = v11;

  descriptionLabel2 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [descriptionLabel2 frame];
  v42.origin.x = 0.0;
  v42.origin.y = v5;
  v42.size.width = v8;
  v42.size.height = v12;
  LOBYTE(descriptionLabel) = CGRectEqualToRect(v40, v42);

  if ((descriptionLabel & 1) == 0)
  {
    descriptionLabel3 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [descriptionLabel3 setFrame:{0.0, v5, v8, v12}];
  }

  descrBaselineHairline = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];

  if (descrBaselineHairline)
  {
    descriptionLabel4 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [descriptionLabel4 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    descriptionLabel5 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [descriptionLabel5 textContainerInset];
    v27 = v26;
    descriptionLabel6 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    font = [descriptionLabel6 font];
    [font descender];
    v31 = v27 - v30;
    descriptionLabel7 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    font2 = [descriptionLabel7 font];
    [font2 leading];
    v35 = v31 + v34;

    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    v36 = CGRectGetMaxY(v41) - v35;
    descrBaselineHairline2 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
    [descrBaselineHairline2 setFrame:{v18, v36, v22, 1.0}];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v71.receiver = self;
  v71.super_class = BKLibraryBookshelfTitleHeader;
  attributesCopy = attributes;
  [(BKLibraryBookshelfTitleHeader *)&v71 applyLayoutAttributes:attributesCopy];
  v5 = [UIApplication sharedApplication:v71.receiver];
  -[BKLibraryBookshelfTitleHeader setIsRTL:](self, "setIsRTL:", [v5 userInterfaceLayoutDirection] == 1);

  objc_opt_class();
  v6 = BUDynamicCast();

  if ([v6 layoutDebugMode])
  {
    v7 = +[UIColor redColor];
    v8 = [v7 colorWithAlphaComponent:0.2];
    cGColor = [v8 CGColor];
    layer = [(BKLibraryBookshelfTitleHeader *)self layer];
    [layer setBorderColor:cGColor];

    layer2 = [(BKLibraryBookshelfTitleHeader *)self layer];
    [layer2 setBorderWidth:0.5];

    v12 = +[UIColor yellowColor];
    cGColor2 = [v12 CGColor];
    layer3 = [(BKLibraryBookshelfTitleHeader *)self layer];
    [layer3 setBackgroundColor:cGColor2];

    v15 = +[UIColor redColor];
    v16 = [v15 colorWithAlphaComponent:0.2];
    cGColor3 = [v16 CGColor];
    titleLabel = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
    layer4 = [titleLabel layer];
    [layer4 setBorderColor:cGColor3];

    titleLabel2 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
    layer5 = [titleLabel2 layer];
    [layer5 setBorderWidth:0.5];

    v22 = +[UIColor redColor];
    v23 = [v22 colorWithAlphaComponent:0.2];
    cGColor4 = [v23 CGColor];
    descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    layer6 = [descriptionLabel layer];
    [layer6 setBorderColor:cGColor4];

    descriptionLabel2 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    layer7 = [descriptionLabel2 layer];
    [layer7 setBorderWidth:0.5];

    titleBaselineHairline = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];

    if (!titleBaselineHairline)
    {
      v30 = +[CALayer layer];
      [(BKLibraryBookshelfTitleHeader *)self setTitleBaselineHairline:v30];

      v31 = +[UIColor greenColor];
      v32 = [v31 colorWithAlphaComponent:0.2];
      cGColor5 = [v32 CGColor];
      titleBaselineHairline2 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
      [titleBaselineHairline2 setBorderColor:cGColor5];

      titleBaselineHairline3 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
      [titleBaselineHairline3 setBorderWidth:0.5];

      layer8 = [(BKLibraryBookshelfTitleHeader *)self layer];
      titleBaselineHairline4 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
      [layer8 addSublayer:titleBaselineHairline4];
    }

    descrBaselineHairline = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];

    if (!descrBaselineHairline)
    {
      v39 = +[CALayer layer];
      [(BKLibraryBookshelfTitleHeader *)self setDescrBaselineHairline:v39];

      v40 = +[UIColor greenColor];
      v41 = [v40 colorWithAlphaComponent:0.2];
      cGColor6 = [v41 CGColor];
      descrBaselineHairline2 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
      [descrBaselineHairline2 setBorderColor:cGColor6];

      descrBaselineHairline3 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
      [descrBaselineHairline3 setBorderWidth:0.5];

      layer9 = [(BKLibraryBookshelfTitleHeader *)self layer];
      descrBaselineHairline4 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
      [layer9 addSublayer:descrBaselineHairline4];
    }
  }

  else
  {
    layer10 = [(BKLibraryBookshelfTitleHeader *)self layer];
    [layer10 setBorderWidth:0.0];

    titleLabel3 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
    layer11 = [titleLabel3 layer];
    [layer11 setBorderWidth:0.0];

    titleBaselineHairline5 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
    [titleBaselineHairline5 removeFromSuperlayer];

    [(BKLibraryBookshelfTitleHeader *)self setTitleBaselineHairline:0];
    descriptionLabel3 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    layer12 = [descriptionLabel3 layer];
    [layer12 setBorderWidth:0.0];

    descrBaselineHairline5 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
    [descrBaselineHairline5 removeFromSuperlayer];

    [(BKLibraryBookshelfTitleHeader *)self setDescrBaselineHairline:0];
  }

  mainHeaderMetrics = [v6 mainHeaderMetrics];
  [(BKLibraryBookshelfTitleHeader *)self setMainHeaderMetrics:mainHeaderMetrics];

  backgroundColor = [(BKLibraryBookshelfTitleHeader *)self backgroundColor];
  mainHeaderMetrics2 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  headerBackgroundColor = [mainHeaderMetrics2 headerBackgroundColor];

  if (backgroundColor != headerBackgroundColor)
  {
    mainHeaderMetrics3 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
    headerBackgroundColor2 = [mainHeaderMetrics3 headerBackgroundColor];
    [(BKLibraryBookshelfTitleHeader *)self setBackgroundColor:headerBackgroundColor2];
  }

  v60 = +[UIColor bc_booksKeyColor];
  titleLabel4 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
  [titleLabel4 setTintColor:v60];

  v62 = +[UIColor bc_booksLabelColor];
  titleLabel5 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
  [titleLabel5 setTextColor:v62];

  v64 = +[UIColor bc_booksKeyColor];
  descriptionLabel4 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [descriptionLabel4 setTintColor:v64];

  v66 = +[UIColor bc_booksLabelColor];
  descriptionLabel5 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [descriptionLabel5 setTextColor:v66];

  columnMetrics = [v6 columnMetrics];
  [columnMetrics margins];
  [(BKLibraryBookshelfTitleHeader *)self setMargins:?];

  mainHeaderMetrics4 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  [mainHeaderMetrics4 titleDetailsMaxLines];
  [(BKLibraryBookshelfTitleHeader *)self setMaxDescriptionLines:?];

  mainHeaderMetrics5 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  [mainHeaderMetrics5 titleDetailsTopMargin];
  [(BKLibraryBookshelfTitleHeader *)self setDescriptionSpacing:?];

  -[BKLibraryBookshelfTitleHeader _configureForEditableState:](self, "_configureForEditableState:", [v6 editable]);
  [(BKLibraryBookshelfTitleHeader *)self _configureHeaderLabel];
  [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabelForAttributeChange];
}

- (void)_configureDescriptionLabelForAttributeChange
{
  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  if ([descriptionLabel isFirstResponder])
  {
    text = [descriptionLabel text];
    if ([descriptionLabel isEditable])
    {
      isFirstResponder = [descriptionLabel isFirstResponder];
    }

    else
    {
      isFirstResponder = 0;
    }

    descriptionText = [(BKLibraryBookshelfTitleHeader *)self descriptionText];
    v6 = [descriptionText length];

    if (v6 || isFirstResponder)
    {
      dataSource = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      collectionIsSeries = [dataSource collectionIsSeries];
      mainHeaderMetrics = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      v11 = mainHeaderMetrics;
      if (collectionIsSeries)
      {
        [mainHeaderMetrics alternateTitleDetailsFontAttributes];
      }

      else
      {
        [mainHeaderMetrics titleDetailsFontAttributes];
      }
      titleDetailsPlaceholderFontAttributes = ;
    }

    else
    {
      dataSource = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      titleDetailsPlaceholderFontAttributes = [dataSource titleDetailsPlaceholderFontAttributes];
    }

    v12 = [TUIFontSpec attributedStringWith:text attributes:titleDetailsPlaceholderFontAttributes];
    [descriptionLabel setAttributedText:v12];

    [(BKLibraryBookshelfTitleHeader *)self setDescriptionText:text];
  }

  else
  {
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
  }
}

- (void)_configureDescriptionLabel
{
  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  isEditable = [descriptionLabel isEditable];
  if (!isEditable || ([descriptionLabel isFirstResponder] & 1) == 0)
  {
    descriptionText = [(BKLibraryBookshelfTitleHeader *)self descriptionText];
    if ([descriptionText length])
    {
      v5 = 0;
    }

    else
    {
      v5 = isEditable;
    }

    if (v5)
    {
      descriptionPlaceHolderText = [(BKLibraryBookshelfTitleHeader *)self descriptionPlaceHolderText];
      mainHeaderMetrics = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      titleDetailsPlaceholderFontAttributes = [mainHeaderMetrics titleDetailsPlaceholderFontAttributes];
    }

    else
    {
      descriptionPlaceHolderText = descriptionText;
      mainHeaderMetrics = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      collectionIsSeries = [mainHeaderMetrics collectionIsSeries];
      mainHeaderMetrics2 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      v11 = mainHeaderMetrics2;
      if (collectionIsSeries)
      {
        [mainHeaderMetrics2 alternateTitleDetailsFontAttributes];
      }

      else
      {
        [mainHeaderMetrics2 titleDetailsFontAttributes];
      }
      titleDetailsPlaceholderFontAttributes = ;
    }

    v12 = [TUIFontSpec attributedStringWith:descriptionPlaceHolderText attributes:titleDetailsPlaceholderFontAttributes];
    [descriptionLabel setAttributedText:v12];

    v13 = (isEditable & 1) == 0 && [descriptionPlaceHolderText length] == 0;
    [descriptionLabel setHidden:v13];
    descrBaselineHairline = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
    [descrBaselineHairline setHidden:v13];
  }
}

- (void)_configureForEditableState:(BOOL)state
{
  stateCopy = state;
  if (state)
  {
    v5 = 0;
  }

  else
  {
    [(BKLibraryBookshelfTitleHeader *)self maxDescriptionLines];
    v5 = v6;
  }

  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  textContainer = [descriptionLabel textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  if (maximumNumberOfLines != v5)
  {
    descriptionLabel2 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    textContainer2 = [descriptionLabel2 textContainer];
    [textContainer2 setMaximumNumberOfLines:v5];

    descriptionLabel3 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    textContainer3 = [descriptionLabel3 textContainer];
    [textContainer3 setLineBreakMode:4];
  }

  descriptionLabel4 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  isEditable = [descriptionLabel4 isEditable];

  if (isEditable != stateCopy)
  {
    descriptionLabel5 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [descriptionLabel5 setEditable:stateCopy];

    descriptionLabel6 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [descriptionLabel6 setSelectable:stateCopy];

    descriptionLabel7 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    textContainer4 = [descriptionLabel7 textContainer];
    layoutManager = [textContainer4 layoutManager];
    descriptionLabel8 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    textStorage = [descriptionLabel8 textStorage];
    [layoutManager invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(textStorage, "length"), 0}];

    descriptionLabel9 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    LODWORD(layoutManager) = [descriptionLabel9 isEditable];

    dataSource = [(BKLibraryBookshelfTitleHeader *)self dataSource];
    if (layoutManager)
    {
      [BKDataBinder bind:dataSource key:@"collectionDescriptionPlaceHolder" between:self key:@"descriptionPlaceHolderText"];
    }

    else
    {
      [BKDataBinder unbind:dataSource key:@"collectionDescriptionPlaceHolder" from:self key:@"descriptionPlaceHolderText"];

      dataSource = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      [BKDataBinder unbind:self key:@"descriptionPlaceHolderText" from:dataSource key:@"collectionDescriptionPlaceHolder"];
    }

    [(BKLibraryBookshelfTitleHeader *)self setNeedsLayout];
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    [BKDataBinder unbind:self];
    objc_storeWeak(&self->_dataSource, obj);
    [(BKLibraryBookshelfTitleHeader *)self _configureHeaderLabel];
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
    dataSource = [(BKLibraryBookshelfTitleHeader *)self dataSource];

    if (dataSource)
    {
      dataSource2 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      [BKDataBinder bind:dataSource2 key:@"collectionTitle" to:self key:@"titleText"];

      dataSource3 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      [BKDataBinder bind:dataSource3 key:@"collectionDescription" between:self key:@"descriptionText"];

      descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
      LODWORD(dataSource3) = [descriptionLabel isEditable];

      if (dataSource3)
      {
        dataSource4 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
        [BKDataBinder bind:dataSource4 key:@"collectionDescriptionPlaceHolder" between:self key:@"descriptionPlaceHolderText"];
      }
    }
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, text);
    [(BKLibraryBookshelfTitleHeader *)self _configureHeaderLabel];
  }
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_descriptionText isEqualToString:?])
  {
    objc_storeStrong(&self->_descriptionText, text);
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
  }
}

- (void)setDescriptionPlaceHolderText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_descriptionPlaceHolderText isEqualToString:?])
  {
    objc_storeStrong(&self->_descriptionPlaceHolderText, text);
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];

  v5 = editingCopy;
  if (descriptionLabel == editingCopy)
  {
    text = [editingCopy text];
    [(BKLibraryBookshelfTitleHeader *)self setDescriptionText:text];

    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
    actionHandler = [(BKLibraryBookshelfTitleHeader *)self actionHandler];
    [actionHandler descriptionUpdated];

    v5 = editingCopy;
  }
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];

  if (descriptionLabel == editingCopy)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();

    if (!IsVoiceOverRunning)
    {
      descriptionText = [(BKLibraryBookshelfTitleHeader *)self descriptionText];
      v8 = [descriptionText length];

      if (!v8)
      {
        [(BKLibraryBookshelfTitleHeader *)self clearDescriptionLabelText];
      }
    }
  }

  else
  {
  }

  return 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];

  if (descriptionLabel == editingCopy)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();

    if (IsVoiceOverRunning)
    {
      descriptionLabel2 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
      text = [descriptionLabel2 text];
      descriptionPlaceHolderText = [(BKLibraryBookshelfTitleHeader *)self descriptionPlaceHolderText];
      v9 = [text isEqualToString:descriptionPlaceHolderText];

      if (v9)
      {

        [(BKLibraryBookshelfTitleHeader *)self clearDescriptionLabelText];
      }
    }
  }

  else
  {
  }
}

- (void)clearDescriptionLabelText
{
  mainHeaderMetrics = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  titleDetailsFontAttributes = [mainHeaderMetrics titleDetailsFontAttributes];
  v5 = [TUIFontSpec attributedStringWith:@" " attributes:titleDetailsFontAttributes];
  descriptionLabel = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [descriptionLabel setAttributedText:v5];

  descriptionLabel2 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [descriptionLabel2 setText:&stru_100A30A68];
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