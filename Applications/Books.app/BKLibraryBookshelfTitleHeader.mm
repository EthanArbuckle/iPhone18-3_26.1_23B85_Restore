@interface BKLibraryBookshelfTitleHeader
+ (double)_cachedHeight:(id)a3 withDataSource:(id)a4;
+ (double)heightOf:(id)a3 inSize:(CGSize)a4 withMaxLines:(double)a5;
+ (void)adjustHeight:(id)a3 withDataSource:(id)a4;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BKLibraryBookshelfTitleHeader)initWithFrame:(CGRect)a3;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (void)_configureDescriptionLabel;
- (void)_configureDescriptionLabelForAttributeChange;
- (void)_configureForEditableState:(BOOL)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)clearDescriptionLabelText;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDataSource:(id)a3;
- (void)setDescriptionPlaceHolderText:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation BKLibraryBookshelfTitleHeader

+ (double)heightOf:(id)a3 inSize:(CGSize)a4 withMaxLines:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  [v8 sizeThatFits:{width, height}];
  v10 = v9;
  if (a5 > 0.0)
  {
    v11 = [v8 font];
    [v11 lineHeight];
    v13 = v12;
    [v8 textContainerInset];
    v15 = v14 + v13 * a5;
    [v8 textContainerInset];
    v17 = v15 + v16;

    if (v10 >= v17)
    {
      v10 = v17;
    }
  }

  return v10;
}

+ (double)_cachedHeight:(id)a3 withDataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100AF7700 != -1)
  {
    sub_100790874();
  }

  v7 = [v5 editable];
  [v5 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v5 columnMetrics];
  [v16 margins];
  v18 = v17;

  v19 = [v6 collectionTitle];
  v20 = [v5 mainHeaderMetrics];
  v21 = [v20 largeTitleFontAttributes];
  v22 = [TUIFontSpec attributedStringWith:v19 attributes:v21];

  if (!v22)
  {
    v22 = objc_alloc_init(NSAttributedString);
  }

  v23 = [v6 collectionDescription];
  v24 = v23;
  if (v7)
  {
    if ([v23 length])
    {
      [v6 collectionDescription];
    }

    else
    {
      [v6 collectionDescriptionPlaceHolder];
    }
    v25 = ;

    v24 = v25;
  }

  v26 = [v6 collectionIsSeries];
  v27 = [v5 mainHeaderMetrics];
  v28 = v27;
  if (v26)
  {
    [v27 alternateTitleDetailsFontAttributes];
  }

  else
  {
    [v27 titleDetailsFontAttributes];
  }
  v29 = ;
  v30 = v13 - v18;
  v31 = [TUIFontSpec attributedStringWith:v24 attributes:v29];

  if (!v31)
  {
    v31 = objc_alloc_init(NSAttributedString);
  }

  v32 = [v5 mainHeaderMetrics];
  [v32 titleDetailsTopMargin];
  v34 = v33;
  v35 = [v5 mainHeaderMetrics];
  [v35 titleDetailsBottomMargin];
  v37 = v34 + v36;

  v74[0] = @"editable";
  v38 = [NSNumber numberWithBool:v7];
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
    v71 = v19;
    v46 = [v5 columnMetrics];
    [v46 margins];
    v48 = v13 - v47;

    v49 = [[UITextView alloc] initWithFrame:{v9, v11, v48, v15}];
    [v49 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v49 setEditable:v7];
    [v49 setSelectable:v7];
    v50 = [v6 collectionDescription];
    v51 = v50;
    if (v7)
    {
      if ([v50 length])
      {
        [v6 collectionDescription];
      }

      else
      {
        [v6 collectionDescriptionPlaceHolder];
      }
      v52 = ;

      v72 = v52;
    }

    else
    {
      v72 = v50;
    }

    v53 = [v6 collectionIsSeries];
    v54 = [v5 mainHeaderMetrics];
    v55 = v54;
    if (v53)
    {
      [v54 alternateTitleDetailsFontAttributes];
    }

    else
    {
      [v54 titleDetailsFontAttributes];
    }
    v56 = ;
    v57 = [TUIFontSpec attributedStringWith:v72 attributes:v56];
    [v49 setAttributedText:v57];

    v58 = [v5 mainHeaderMetrics];
    [v58 titleDetailsMaxLines];
    [BKLibraryBookshelfTitleHeader heightOf:v49 inSize:v48 withMaxLines:v15, v59];
    v61 = v60;

    if (([v49 isEditable] & 1) != 0 || (objc_msgSend(v49, "text"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "length"), v62, v63))
    {
      v45 = v61 + 0.0;
      if (v61 > 0.0)
      {
        v64 = [v5 mainHeaderMetrics];
        [v64 titleDetailsTopMargin];
        v66 = v45 + v65;

        v67 = [v5 mainHeaderMetrics];
        [v67 titleDetailsBottomMargin];
        v45 = v66 + v68;
      }
    }

    else
    {
      v45 = 0.0;
    }

    v69 = [NSNumber numberWithDouble:v45];
    [qword_100AF7708 setObject:v69 forKeyedSubscript:v41];

    v19 = v71;
  }

  return v45;
}

+ (void)adjustHeight:(id)a3 withDataSource:(id)a4
{
  v6 = a4;
  v15 = a3;
  [v15 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [a1 _cachedHeight:v15 withDataSource:v6];
  v14 = v13;

  [v15 setFrame:{v8, v10, v12, v14}];
}

- (BKLibraryBookshelfTitleHeader)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfTitleHeader;
  v3 = [(BKLibraryBookshelfTitleHeader *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v7 = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [v7 setDelegate:v4];

    v8 = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [v8 setEditable:0];

    v9 = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [v9 setSelectable:0];

    v10 = [(BKLibraryBookshelfTitleHeader *)v4 descriptionLabel];
    [v10 setScrollEnabled:0];
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
  v9 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [(BKLibraryBookshelfTitleHeader *)self maxDescriptionLines];
  [BKLibraryBookshelfTitleHeader heightOf:v9 inSize:v8 withMaxLines:0.0, v10];
  v12 = v11;

  v13 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [v13 frame];
  v42.origin.x = 0.0;
  v42.origin.y = v5;
  v42.size.width = v8;
  v42.size.height = v12;
  LOBYTE(v9) = CGRectEqualToRect(v40, v42);

  if ((v9 & 1) == 0)
  {
    v14 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [v14 setFrame:{0.0, v5, v8, v12}];
  }

  v15 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];

  if (v15)
  {
    v16 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [v25 textContainerInset];
    v27 = v26;
    v28 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v29 = [v28 font];
    [v29 descender];
    v31 = v27 - v30;
    v32 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v33 = [v32 font];
    [v33 leading];
    v35 = v31 + v34;

    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    v36 = CGRectGetMaxY(v41) - v35;
    v37 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
    [v37 setFrame:{v18, v36, v22, 1.0}];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v71.receiver = self;
  v71.super_class = BKLibraryBookshelfTitleHeader;
  v4 = a3;
  [(BKLibraryBookshelfTitleHeader *)&v71 applyLayoutAttributes:v4];
  v5 = [UIApplication sharedApplication:v71.receiver];
  -[BKLibraryBookshelfTitleHeader setIsRTL:](self, "setIsRTL:", [v5 userInterfaceLayoutDirection] == 1);

  objc_opt_class();
  v6 = BUDynamicCast();

  if ([v6 layoutDebugMode])
  {
    v7 = +[UIColor redColor];
    v8 = [v7 colorWithAlphaComponent:0.2];
    v9 = [v8 CGColor];
    v10 = [(BKLibraryBookshelfTitleHeader *)self layer];
    [v10 setBorderColor:v9];

    v11 = [(BKLibraryBookshelfTitleHeader *)self layer];
    [v11 setBorderWidth:0.5];

    v12 = +[UIColor yellowColor];
    v13 = [v12 CGColor];
    v14 = [(BKLibraryBookshelfTitleHeader *)self layer];
    [v14 setBackgroundColor:v13];

    v15 = +[UIColor redColor];
    v16 = [v15 colorWithAlphaComponent:0.2];
    v17 = [v16 CGColor];
    v18 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
    v19 = [v18 layer];
    [v19 setBorderColor:v17];

    v20 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
    v21 = [v20 layer];
    [v21 setBorderWidth:0.5];

    v22 = +[UIColor redColor];
    v23 = [v22 colorWithAlphaComponent:0.2];
    v24 = [v23 CGColor];
    v25 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v26 = [v25 layer];
    [v26 setBorderColor:v24];

    v27 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v28 = [v27 layer];
    [v28 setBorderWidth:0.5];

    v29 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];

    if (!v29)
    {
      v30 = +[CALayer layer];
      [(BKLibraryBookshelfTitleHeader *)self setTitleBaselineHairline:v30];

      v31 = +[UIColor greenColor];
      v32 = [v31 colorWithAlphaComponent:0.2];
      v33 = [v32 CGColor];
      v34 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
      [v34 setBorderColor:v33];

      v35 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
      [v35 setBorderWidth:0.5];

      v36 = [(BKLibraryBookshelfTitleHeader *)self layer];
      v37 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
      [v36 addSublayer:v37];
    }

    v38 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];

    if (!v38)
    {
      v39 = +[CALayer layer];
      [(BKLibraryBookshelfTitleHeader *)self setDescrBaselineHairline:v39];

      v40 = +[UIColor greenColor];
      v41 = [v40 colorWithAlphaComponent:0.2];
      v42 = [v41 CGColor];
      v43 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
      [v43 setBorderColor:v42];

      v44 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
      [v44 setBorderWidth:0.5];

      v45 = [(BKLibraryBookshelfTitleHeader *)self layer];
      v46 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
      [v45 addSublayer:v46];
    }
  }

  else
  {
    v47 = [(BKLibraryBookshelfTitleHeader *)self layer];
    [v47 setBorderWidth:0.0];

    v48 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
    v49 = [v48 layer];
    [v49 setBorderWidth:0.0];

    v50 = [(BKLibraryBookshelfTitleHeader *)self titleBaselineHairline];
    [v50 removeFromSuperlayer];

    [(BKLibraryBookshelfTitleHeader *)self setTitleBaselineHairline:0];
    v51 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v52 = [v51 layer];
    [v52 setBorderWidth:0.0];

    v53 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
    [v53 removeFromSuperlayer];

    [(BKLibraryBookshelfTitleHeader *)self setDescrBaselineHairline:0];
  }

  v54 = [v6 mainHeaderMetrics];
  [(BKLibraryBookshelfTitleHeader *)self setMainHeaderMetrics:v54];

  v55 = [(BKLibraryBookshelfTitleHeader *)self backgroundColor];
  v56 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  v57 = [v56 headerBackgroundColor];

  if (v55 != v57)
  {
    v58 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
    v59 = [v58 headerBackgroundColor];
    [(BKLibraryBookshelfTitleHeader *)self setBackgroundColor:v59];
  }

  v60 = +[UIColor bc_booksKeyColor];
  v61 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
  [v61 setTintColor:v60];

  v62 = +[UIColor bc_booksLabelColor];
  v63 = [(BKLibraryBookshelfTitleHeader *)self titleLabel];
  [v63 setTextColor:v62];

  v64 = +[UIColor bc_booksKeyColor];
  v65 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [v65 setTintColor:v64];

  v66 = +[UIColor bc_booksLabelColor];
  v67 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [v67 setTextColor:v66];

  v68 = [v6 columnMetrics];
  [v68 margins];
  [(BKLibraryBookshelfTitleHeader *)self setMargins:?];

  v69 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  [v69 titleDetailsMaxLines];
  [(BKLibraryBookshelfTitleHeader *)self setMaxDescriptionLines:?];

  v70 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  [v70 titleDetailsTopMargin];
  [(BKLibraryBookshelfTitleHeader *)self setDescriptionSpacing:?];

  -[BKLibraryBookshelfTitleHeader _configureForEditableState:](self, "_configureForEditableState:", [v6 editable]);
  [(BKLibraryBookshelfTitleHeader *)self _configureHeaderLabel];
  [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabelForAttributeChange];
}

- (void)_configureDescriptionLabelForAttributeChange
{
  v13 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  if ([v13 isFirstResponder])
  {
    v3 = [v13 text];
    if ([v13 isEditable])
    {
      v4 = [v13 isFirstResponder];
    }

    else
    {
      v4 = 0;
    }

    v5 = [(BKLibraryBookshelfTitleHeader *)self descriptionText];
    v6 = [v5 length];

    if (v6 || v4)
    {
      v7 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      v9 = [v7 collectionIsSeries];
      v10 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      v11 = v10;
      if (v9)
      {
        [v10 alternateTitleDetailsFontAttributes];
      }

      else
      {
        [v10 titleDetailsFontAttributes];
      }
      v8 = ;
    }

    else
    {
      v7 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      v8 = [v7 titleDetailsPlaceholderFontAttributes];
    }

    v12 = [TUIFontSpec attributedStringWith:v3 attributes:v8];
    [v13 setAttributedText:v12];

    [(BKLibraryBookshelfTitleHeader *)self setDescriptionText:v3];
  }

  else
  {
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
  }
}

- (void)_configureDescriptionLabel
{
  v15 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  v3 = [v15 isEditable];
  if (!v3 || ([v15 isFirstResponder] & 1) == 0)
  {
    v4 = [(BKLibraryBookshelfTitleHeader *)self descriptionText];
    if ([v4 length])
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      v6 = [(BKLibraryBookshelfTitleHeader *)self descriptionPlaceHolderText];
      v7 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      v8 = [v7 titleDetailsPlaceholderFontAttributes];
    }

    else
    {
      v6 = v4;
      v7 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      v9 = [v7 collectionIsSeries];
      v10 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
      v11 = v10;
      if (v9)
      {
        [v10 alternateTitleDetailsFontAttributes];
      }

      else
      {
        [v10 titleDetailsFontAttributes];
      }
      v8 = ;
    }

    v12 = [TUIFontSpec attributedStringWith:v6 attributes:v8];
    [v15 setAttributedText:v12];

    v13 = (v3 & 1) == 0 && [v6 length] == 0;
    [v15 setHidden:v13];
    v14 = [(BKLibraryBookshelfTitleHeader *)self descrBaselineHairline];
    [v14 setHidden:v13];
  }
}

- (void)_configureForEditableState:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    [(BKLibraryBookshelfTitleHeader *)self maxDescriptionLines];
    v5 = v6;
  }

  v7 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  v8 = [v7 textContainer];
  v9 = [v8 maximumNumberOfLines];

  if (v9 != v5)
  {
    v10 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v11 = [v10 textContainer];
    [v11 setMaximumNumberOfLines:v5];

    v12 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v13 = [v12 textContainer];
    [v13 setLineBreakMode:4];
  }

  v14 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  v15 = [v14 isEditable];

  if (v15 != v3)
  {
    v16 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [v16 setEditable:v3];

    v17 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    [v17 setSelectable:v3];

    v18 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v19 = [v18 textContainer];
    v20 = [v19 layoutManager];
    v21 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    v22 = [v21 textStorage];
    [v20 invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(v22, "length"), 0}];

    v23 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
    LODWORD(v20) = [v23 isEditable];

    v24 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
    if (v20)
    {
      [BKDataBinder bind:v24 key:@"collectionDescriptionPlaceHolder" between:self key:@"descriptionPlaceHolderText"];
    }

    else
    {
      [BKDataBinder unbind:v24 key:@"collectionDescriptionPlaceHolder" from:self key:@"descriptionPlaceHolderText"];

      v24 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      [BKDataBinder unbind:self key:@"descriptionPlaceHolderText" from:v24 key:@"collectionDescriptionPlaceHolder"];
    }

    [(BKLibraryBookshelfTitleHeader *)self setNeedsLayout];
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    [BKDataBinder unbind:self];
    objc_storeWeak(&self->_dataSource, obj);
    [(BKLibraryBookshelfTitleHeader *)self _configureHeaderLabel];
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
    v5 = [(BKLibraryBookshelfTitleHeader *)self dataSource];

    if (v5)
    {
      v6 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      [BKDataBinder bind:v6 key:@"collectionTitle" to:self key:@"titleText"];

      v7 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
      [BKDataBinder bind:v7 key:@"collectionDescription" between:self key:@"descriptionText"];

      v8 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
      LODWORD(v7) = [v8 isEditable];

      if (v7)
      {
        v9 = [(BKLibraryBookshelfTitleHeader *)self dataSource];
        [BKDataBinder bind:v9 key:@"collectionDescriptionPlaceHolder" between:self key:@"descriptionPlaceHolderText"];
      }
    }
  }
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, a3);
    [(BKLibraryBookshelfTitleHeader *)self _configureHeaderLabel];
  }
}

- (void)setDescriptionText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_descriptionText isEqualToString:?])
  {
    objc_storeStrong(&self->_descriptionText, a3);
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
  }
}

- (void)setDescriptionPlaceHolderText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_descriptionPlaceHolderText isEqualToString:?])
  {
    objc_storeStrong(&self->_descriptionPlaceHolderText, a3);
    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v8 = a3;
  v4 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];

  v5 = v8;
  if (v4 == v8)
  {
    v6 = [v8 text];
    [(BKLibraryBookshelfTitleHeader *)self setDescriptionText:v6];

    [(BKLibraryBookshelfTitleHeader *)self _configureDescriptionLabel];
    v7 = [(BKLibraryBookshelfTitleHeader *)self actionHandler];
    [v7 descriptionUpdated];

    v5 = v8;
  }
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];

  if (v5 == v4)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();

    if (!IsVoiceOverRunning)
    {
      v7 = [(BKLibraryBookshelfTitleHeader *)self descriptionText];
      v8 = [v7 length];

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

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v10 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];

  if (v10 == v4)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();

    if (IsVoiceOverRunning)
    {
      v6 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
      v7 = [v6 text];
      v8 = [(BKLibraryBookshelfTitleHeader *)self descriptionPlaceHolderText];
      v9 = [v7 isEqualToString:v8];

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
  v3 = [(BKLibraryBookshelfTitleHeader *)self mainHeaderMetrics];
  v4 = [v3 titleDetailsFontAttributes];
  v5 = [TUIFontSpec attributedStringWith:@" " attributes:v4];
  v6 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [v6 setAttributedText:v5];

  v7 = [(BKLibraryBookshelfTitleHeader *)self descriptionLabel];
  [v7 setText:&stru_100A30A68];
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