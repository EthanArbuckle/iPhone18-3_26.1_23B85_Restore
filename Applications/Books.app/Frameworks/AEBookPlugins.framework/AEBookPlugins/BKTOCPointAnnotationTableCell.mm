@interface BKTOCPointAnnotationTableCell
+ (CGRect)chapterTitleFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7;
+ (CGRect)chapterTitleFrameForString:(id)a3 font:(id)a4 letMargin:(double)a5 numberOfLines:(int)a6 bounds:(CGRect)a7 pageLabelFrame:(CGRect)a8 layoutDirection:(int64_t)a9;
+ (CGRect)chapterTitleFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7;
+ (CGRect)dateLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7;
+ (CGRect)dateLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 minY:(double)a6 pageLabelFrame:(CGRect)a7 layoutDirection:(int64_t)a8;
+ (CGRect)pageLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 layoutDirection:(int64_t)a6;
+ (CGSize)sizeForString:(id)a3 font:(id)a4 width:(double)a5 numberOfLines:(int)a6;
+ (double)cellHeightForCellWidth:(double)a3 chapterString:(id)a4 dateString:(id)a5 pageString:(id)a6 layoutDirection:(int64_t)a7;
+ (id)chapterFontForPopover;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (void)layoutSubviewsNotEditingWithBounds:(CGRect)a3;
@end

@implementation BKTOCPointAnnotationTableCell

- (void)layoutSubviewsNotEditingWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BKTOCTableViewCell *)self usesPopoverStyle];
  v9 = objc_opt_class();
  v10 = [(BKTOCTableViewCell *)self pageLabel];
  v11 = [v10 text];
  v12 = [(BKTOCTableViewCell *)self pageLabel];
  v13 = [v12 font];
  v14 = [(BKTOCPointAnnotationTableCell *)self effectiveUserInterfaceLayoutDirection];
  if (v8)
  {
    [v9 pageLabelFrameInPopoverForString:v11 font:v13 bounds:v14 layoutDirection:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v105 = height;
    v22 = v21;
    v23 = [(BKTOCTableViewCell *)self pageLabel];
    [v23 setFrame:{v16, v18, v20, v22}];

    v24 = objc_opt_class();
    v25 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v26 = [v25 text];
    v27 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v28 = [v27 font];
    v29 = [(BKTOCTableViewCell *)self pageLabel];
    [v29 frame];
    [v24 chapterTitleFrameInPopoverForString:v26 font:v28 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, v105, v30, v31, v32, v33}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [v42 setFrame:{v35, v37, v39, v41}];

    v43 = objc_opt_class();
    v44 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v45 = [v44 text];
    v46 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v47 = [v46 font];
    v48 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [v48 frame];
    MaxY = CGRectGetMaxY(v107);
    v50 = [(BKTOCTableViewCell *)self pageLabel];
    [v50 frame];
    height = v105;
    [v43 dateLabelFrameInPopoverForString:v45 font:v47 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self minY:"effectiveUserInterfaceLayoutDirection") pageLabelFrame:x layoutDirection:{y, width, v105, MaxY, v51, v52, v53, v54}];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [v63 setFrame:{v56, v58, v60, v62}];
  }

  else
  {
    [v9 pageLabelFrameForString:v11 font:v13 bounds:v14 layoutDirection:{x, y, width, height}];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = [(BKTOCTableViewCell *)self pageLabel];
    [v72 setFrame:{v65, v67, v69, v71}];

    v73 = objc_opt_class();
    v74 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v75 = [v74 text];
    v76 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v77 = [v76 font];
    v78 = [(BKTOCTableViewCell *)self pageLabel];
    [v78 frame];
    [v73 chapterTitleFrameForString:v75 font:v77 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v79, v80, v81, v82}];
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [v91 setFrame:{v84, v86, v88, v90}];

    v92 = objc_opt_class();
    v44 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v45 = [v44 text];
    v46 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v47 = [v46 font];
    v48 = [(BKTOCTableViewCell *)self pageLabel];
    [v48 frame];
    [v92 dateLabelFrameForString:v45 font:v47 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v93, v94, v95, v96}];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v50 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [v50 setFrame:{v98, v100, v102, v104}];
  }

  v106.receiver = self;
  v106.super_class = BKTOCPointAnnotationTableCell;
  [(BKTOCAnnotationTableCell *)&v106 layoutSubviewsNotEditingWithBounds:x, y, width, height];
}

+ (CGRect)chapterTitleFrameForString:(id)a3 font:(id)a4 letMargin:(double)a5 numberOfLines:(int)a6 bounds:(CGRect)a7 pageLabelFrame:(CGRect)a8 layoutDirection:(int64_t)a9
{
  rect_8 = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = *&a6;
  v17 = a3;
  v18 = a4;
  rect_16 = CGRectGetMinY(a8);
  v33 = a5;
  v35 = width;
  if (a9 == 1)
  {
    MinX = CGRectGetMaxX(a8) + a5;
  }

  else
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = rect_8;
    MinX = CGRectGetMinX(v38);
  }

  v20 = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([v17 length])
  {
    if (CGRectGetWidth(a8) <= 0.0)
    {
      v39.size.width = v35;
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.height = rect_8;
      v20 = CGRectGetWidth(v39);
    }

    else
    {
      v22 = x;
      if (a9 != 1)
      {
        v27 = CGRectGetMinX(a8);
        v40.origin.x = MinX;
        v26 = rect_16;
        v40.origin.y = rect_16;
        v40.size.width = v20;
        v40.size.height = height;
        v20 = v27 - CGRectGetMinX(v40) - v34;
        goto LABEL_12;
      }

      v23 = y;
      v24 = v35;
      v25 = rect_8;
      v20 = CGRectGetWidth(*&v22) - v20 - v34 - a8.size.width;
    }

    v26 = rect_16;
LABEL_12:
    v41.origin.x = MinX;
    v41.origin.y = v26;
    v41.size.width = v20;
    v41.size.height = height;
    [a1 sizeForString:v17 font:v18 width:v13 numberOfLines:CGRectGetWidth(v41)];
    height = v28;
    goto LABEL_13;
  }

  v26 = rect_16;
LABEL_13:

  v29 = MinX;
  v30 = v26;
  v31 = v20;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (CGRect)chapterTitleFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7
{
  [a1 chapterTitleFrameForString:a3 font:a4 letMargin:2 numberOfLines:a7 bounds:8.0 pageLabelFrame:a5.origin.x layoutDirection:{a5.origin.y, a5.size.width, a5.size.height, *&a6.origin.x, *&a6.origin.y, *&a6.size.width, *&a6.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)chapterTitleFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7
{
  [a1 chapterTitleFrameForString:a3 font:a4 letMargin:1 numberOfLines:a7 bounds:15.0 pageLabelFrame:a5.origin.x layoutDirection:{a5.origin.y, a5.size.width, a5.size.height, *&a6.origin.x, *&a6.origin.y, *&a6.size.width, *&a6.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)pageLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 layoutDirection:(int64_t)a6
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___BKTOCPointAnnotationTableCell;
  objc_msgSendSuper2(&v10, "pageLabelFrameForString:font:bounds:topMargin:layoutDirection:", a3, a4, a6, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height, 8.0);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)dateLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  rect = a5.size.height;
  v12 = a5.size.width;
  v13 = a5.origin.y;
  v14 = a5.origin.x;
  v31 = CGRectZero.size.width;
  if (a7 == 1)
  {
    v17 = a4;
    v18 = a3;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MinX = CGRectGetMaxX(v33) + 15.0;
    v34.origin.x = v14;
    v34.origin.y = v13;
    v34.size.width = v12;
    v34.size.height = rect;
    v20 = CGRectGetWidth(v34) - v31 - 15.0 - width;
  }

  else
  {
    v30 = CGRectZero.size.height;
    v21 = a4;
    v22 = a3;
    v35.origin.x = v14;
    v35.origin.y = v13;
    v35.size.width = v12;
    v35.size.height = rect;
    MinX = CGRectGetMinX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v23 = CGRectGetMinX(v36);
    v37.origin.y = 41.0;
    v37.origin.x = MinX;
    v37.size.height = v30;
    v37.size.width = v31;
    v20 = v23 - CGRectGetMinX(v37) - 15.0;
  }

  [a1 dateLabelSizeForString:a3 font:a4 bounds:{v14, v13, v12, rect}];
  v25 = v24;

  v26 = 41.0;
  v27 = MinX;
  v28 = v20;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v26;
  result.origin.x = v27;
  return result;
}

+ (CGRect)dateLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 minY:(double)a6 pageLabelFrame:(CGRect)a7 layoutDirection:(int64_t)a8
{
  width = a5.size.width;
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  v29 = CGRectZero.size.width;
  v13 = a6 + 3.0;
  if (a8 == 1)
  {
    v14 = a4;
    v15 = a3;
    MinX = CGRectGetMaxX(a7) + 8.0;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v17 = CGRectGetWidth(v32) - v29 + -8.0 - a7.size.width;
  }

  else
  {
    v28 = CGRectZero.size.height;
    v18 = a4;
    v19 = a3;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MinX = CGRectGetMinX(v33);
    v20 = CGRectGetMinX(a7);
    v34.origin.x = MinX;
    v34.origin.y = v13;
    v34.size.height = v28;
    v34.size.width = v29;
    v17 = v20 - CGRectGetMinX(v34) + -8.0;
  }

  v21 = v13;
  [a1 dateLabelSizeForString:a3 font:a4 bounds:{x, y, width, height, *&v28}];
  v23 = v22;

  v24 = MinX;
  v25 = v21;
  v26 = v17;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(BKTOCAnnotationTableCell *)self noteLabel];
  v4 = [v3 accessibilityLabel];

  v5 = [(BKTOCAnnotationTableCell *)self dateLabel];
  v6 = [v5 accessibilityLabel];

  v7 = [(BKTOCTableViewCell *)self pageLabel];
  v8 = [v7 accessibilityLabel];

  if ([v8 length])
  {
    v9 = AEAXLocString(@"page.num %@");
    v10 = [NSString stringWithFormat:v9, v8];

    v11 = [NSString stringWithFormat:@"%@, %@, %@", v4, v6, v10];
    v8 = v10;
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%@, %@", v4, v6];
  }

  return v11;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(BKTOCTableViewCell *)self pageLabel];
  v5 = [v4 accessibilityLabel];

  if ([v5 length])
  {
    v6 = AEAXLocString(@"page.num %@");
    v7 = [NSString stringWithFormat:v6, v5];

    [v3 addObject:v7];
    v5 = v7;
  }

  v8 = [(BKTOCAnnotationTableCell *)self noteLabel];
  v9 = [v8 accessibilityLabel];

  if ([v9 length])
  {
    [v3 addObject:v9];
  }

  v12.receiver = self;
  v12.super_class = BKTOCPointAnnotationTableCell;
  v10 = [(BKTOCPointAnnotationTableCell *)&v12 accessibilityUserInputLabels];
  if (v10)
  {
    [v3 addObjectsFromArray:v10];
  }

  return v3;
}

+ (double)cellHeightForCellWidth:(double)a3 chapterString:(id)a4 dateString:(id)a5 pageString:(id)a6 layoutDirection:(int64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a1 pageNumberFontForPopover];
  v40 = a3;
  [a1 pageLabelFrameInPopoverForString:v12 font:v15 bounds:a7 layoutDirection:{0.0, 0.0, a3, 1.79769313e308}];
  v17 = v16;
  v39 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [a1 chapterFontForPopover];
  [a1 chapterTitleFrameInPopoverForString:v14 font:v24 bounds:a7 pageLabelFrame:0.0 layoutDirection:{0.0, a3, 1.79769313e308, v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [a1 dateFontForPopover];
  v41.origin.x = v26;
  v41.origin.y = v28;
  v41.size.width = v30;
  v41.size.height = v32;
  [a1 dateLabelFrameInPopoverForString:v13 font:v33 bounds:a7 minY:0.0 pageLabelFrame:0.0 layoutDirection:{v40, 1.79769313e308, CGRectGetMaxY(v41), *&v39, *&v19, *&v21, *&v23}];
  v35 = v34;

  v36 = v32;
  v37 = v35;
  return ceilf(v36) + 8.0 + 3.0 + ceilf(v37) + 8.0;
}

+ (id)chapterFontForPopover
{
  v2 = [UITraitCollection currentTraitCollectionLimitedToSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:v2];

  return v3;
}

+ (CGSize)sizeForString:(id)a3 font:(id)a4 width:(double)a5 numberOfLines:(int)a6
{
  v9 = a4;
  v10 = a3;
  [v9 lineHeight];
  v12 = v11;
  if (a6 >= 2)
  {
    [v9 leading];
    v12 = (v12 + v13) * a6;
  }

  [UILabel bkSizeForString:v10 constrainedToSize:v9 font:0 lineBreakMode:a5, v12];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = ceilf(v18);
  v20 = v17;
  v21 = ceilf(v20);
  result.height = v21;
  result.width = v19;
  return result;
}

@end