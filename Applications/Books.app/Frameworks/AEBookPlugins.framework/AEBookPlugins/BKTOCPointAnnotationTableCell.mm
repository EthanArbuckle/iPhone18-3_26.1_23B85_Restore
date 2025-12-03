@interface BKTOCPointAnnotationTableCell
+ (CGRect)chapterTitleFrameForString:(id)string font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)chapterTitleFrameForString:(id)string font:(id)font letMargin:(double)margin numberOfLines:(int)lines bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)chapterTitleFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)dateLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)dateLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds minY:(double)y pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)pageLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds layoutDirection:(int64_t)direction;
+ (CGSize)sizeForString:(id)string font:(id)font width:(double)width numberOfLines:(int)lines;
+ (double)cellHeightForCellWidth:(double)width chapterString:(id)string dateString:(id)dateString pageString:(id)pageString layoutDirection:(int64_t)direction;
+ (id)chapterFontForPopover;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (void)layoutSubviewsNotEditingWithBounds:(CGRect)bounds;
@end

@implementation BKTOCPointAnnotationTableCell

- (void)layoutSubviewsNotEditingWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  usesPopoverStyle = [(BKTOCTableViewCell *)self usesPopoverStyle];
  v9 = objc_opt_class();
  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  text = [pageLabel text];
  pageLabel2 = [(BKTOCTableViewCell *)self pageLabel];
  font = [pageLabel2 font];
  effectiveUserInterfaceLayoutDirection = [(BKTOCPointAnnotationTableCell *)self effectiveUserInterfaceLayoutDirection];
  if (usesPopoverStyle)
  {
    [v9 pageLabelFrameInPopoverForString:text font:font bounds:effectiveUserInterfaceLayoutDirection layoutDirection:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v105 = height;
    v22 = v21;
    pageLabel3 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel3 setFrame:{v16, v18, v20, v22}];

    v24 = objc_opt_class();
    noteLabel = [(BKTOCAnnotationTableCell *)self noteLabel];
    text2 = [noteLabel text];
    noteLabel2 = [(BKTOCAnnotationTableCell *)self noteLabel];
    font2 = [noteLabel2 font];
    pageLabel4 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel4 frame];
    [v24 chapterTitleFrameInPopoverForString:text2 font:font2 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, v105, v30, v31, v32, v33}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    noteLabel3 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [noteLabel3 setFrame:{v35, v37, v39, v41}];

    v43 = objc_opt_class();
    dateLabel = [(BKTOCAnnotationTableCell *)self dateLabel];
    text3 = [dateLabel text];
    dateLabel2 = [(BKTOCAnnotationTableCell *)self dateLabel];
    font3 = [dateLabel2 font];
    noteLabel4 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [noteLabel4 frame];
    MaxY = CGRectGetMaxY(v107);
    pageLabel5 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel5 frame];
    height = v105;
    [v43 dateLabelFrameInPopoverForString:text3 font:font3 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self minY:"effectiveUserInterfaceLayoutDirection") pageLabelFrame:x layoutDirection:{y, width, v105, MaxY, v51, v52, v53, v54}];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    dateLabel3 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [dateLabel3 setFrame:{v56, v58, v60, v62}];
  }

  else
  {
    [v9 pageLabelFrameForString:text font:font bounds:effectiveUserInterfaceLayoutDirection layoutDirection:{x, y, width, height}];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    pageLabel6 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel6 setFrame:{v65, v67, v69, v71}];

    v73 = objc_opt_class();
    noteLabel5 = [(BKTOCAnnotationTableCell *)self noteLabel];
    text4 = [noteLabel5 text];
    noteLabel6 = [(BKTOCAnnotationTableCell *)self noteLabel];
    font4 = [noteLabel6 font];
    pageLabel7 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel7 frame];
    [v73 chapterTitleFrameForString:text4 font:font4 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v79, v80, v81, v82}];
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    noteLabel7 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [noteLabel7 setFrame:{v84, v86, v88, v90}];

    v92 = objc_opt_class();
    dateLabel = [(BKTOCAnnotationTableCell *)self dateLabel];
    text3 = [dateLabel text];
    dateLabel2 = [(BKTOCAnnotationTableCell *)self dateLabel];
    font3 = [dateLabel2 font];
    noteLabel4 = [(BKTOCTableViewCell *)self pageLabel];
    [noteLabel4 frame];
    [v92 dateLabelFrameForString:text3 font:font3 bounds:-[BKTOCPointAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v93, v94, v95, v96}];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    pageLabel5 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [pageLabel5 setFrame:{v98, v100, v102, v104}];
  }

  v106.receiver = self;
  v106.super_class = BKTOCPointAnnotationTableCell;
  [(BKTOCAnnotationTableCell *)&v106 layoutSubviewsNotEditingWithBounds:x, y, width, height];
}

+ (CGRect)chapterTitleFrameForString:(id)string font:(id)font letMargin:(double)margin numberOfLines:(int)lines bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  rect_8 = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = *&lines;
  stringCopy = string;
  fontCopy = font;
  rect_16 = CGRectGetMinY(frame);
  marginCopy = margin;
  v35 = width;
  if (direction == 1)
  {
    MinX = CGRectGetMaxX(frame) + margin;
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
  if ([stringCopy length])
  {
    if (CGRectGetWidth(frame) <= 0.0)
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
      if (direction != 1)
      {
        v27 = CGRectGetMinX(frame);
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
      v20 = CGRectGetWidth(*&v22) - v20 - v34 - frame.size.width;
    }

    v26 = rect_16;
LABEL_12:
    v41.origin.x = MinX;
    v41.origin.y = v26;
    v41.size.width = v20;
    v41.size.height = height;
    [self sizeForString:stringCopy font:fontCopy width:v13 numberOfLines:CGRectGetWidth(v41)];
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

+ (CGRect)chapterTitleFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  [self chapterTitleFrameForString:string font:font letMargin:2 numberOfLines:direction bounds:8.0 pageLabelFrame:bounds.origin.x layoutDirection:{bounds.origin.y, bounds.size.width, bounds.size.height, *&frame.origin.x, *&frame.origin.y, *&frame.size.width, *&frame.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)chapterTitleFrameForString:(id)string font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  [self chapterTitleFrameForString:string font:font letMargin:1 numberOfLines:direction bounds:15.0 pageLabelFrame:bounds.origin.x layoutDirection:{bounds.origin.y, bounds.size.width, bounds.size.height, *&frame.origin.x, *&frame.origin.y, *&frame.size.width, *&frame.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)pageLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds layoutDirection:(int64_t)direction
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___BKTOCPointAnnotationTableCell;
  objc_msgSendSuper2(&v10, "pageLabelFrameForString:font:bounds:topMargin:layoutDirection:", string, font, direction, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, 8.0);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)dateLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  rect = bounds.size.height;
  v12 = bounds.size.width;
  v13 = bounds.origin.y;
  v14 = bounds.origin.x;
  v31 = CGRectZero.size.width;
  if (direction == 1)
  {
    fontCopy = font;
    stringCopy = string;
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
    fontCopy2 = font;
    stringCopy2 = string;
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

  [self dateLabelSizeForString:string font:font bounds:{v14, v13, v12, rect}];
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

+ (CGRect)dateLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds minY:(double)y pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  width = bounds.size.width;
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v29 = CGRectZero.size.width;
  v13 = y + 3.0;
  if (direction == 1)
  {
    fontCopy = font;
    stringCopy = string;
    MinX = CGRectGetMaxX(frame) + 8.0;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v17 = CGRectGetWidth(v32) - v29 + -8.0 - frame.size.width;
  }

  else
  {
    v28 = CGRectZero.size.height;
    fontCopy2 = font;
    stringCopy2 = string;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MinX = CGRectGetMinX(v33);
    v20 = CGRectGetMinX(frame);
    v34.origin.x = MinX;
    v34.origin.y = v13;
    v34.size.height = v28;
    v34.size.width = v29;
    v17 = v20 - CGRectGetMinX(v34) + -8.0;
  }

  v21 = v13;
  [self dateLabelSizeForString:string font:font bounds:{x, y, width, height, *&v28}];
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
  noteLabel = [(BKTOCAnnotationTableCell *)self noteLabel];
  accessibilityLabel = [noteLabel accessibilityLabel];

  dateLabel = [(BKTOCAnnotationTableCell *)self dateLabel];
  accessibilityLabel2 = [dateLabel accessibilityLabel];

  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  accessibilityLabel3 = [pageLabel accessibilityLabel];

  if ([accessibilityLabel3 length])
  {
    v9 = AEAXLocString(@"page.num %@");
    v10 = [NSString stringWithFormat:v9, accessibilityLabel3];

    v11 = [NSString stringWithFormat:@"%@, %@, %@", accessibilityLabel, accessibilityLabel2, v10];
    accessibilityLabel3 = v10;
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%@, %@", accessibilityLabel, accessibilityLabel2];
  }

  return v11;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  accessibilityLabel = [pageLabel accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v6 = AEAXLocString(@"page.num %@");
    v7 = [NSString stringWithFormat:v6, accessibilityLabel];

    [v3 addObject:v7];
    accessibilityLabel = v7;
  }

  noteLabel = [(BKTOCAnnotationTableCell *)self noteLabel];
  accessibilityLabel2 = [noteLabel accessibilityLabel];

  if ([accessibilityLabel2 length])
  {
    [v3 addObject:accessibilityLabel2];
  }

  v12.receiver = self;
  v12.super_class = BKTOCPointAnnotationTableCell;
  accessibilityUserInputLabels = [(BKTOCPointAnnotationTableCell *)&v12 accessibilityUserInputLabels];
  if (accessibilityUserInputLabels)
  {
    [v3 addObjectsFromArray:accessibilityUserInputLabels];
  }

  return v3;
}

+ (double)cellHeightForCellWidth:(double)width chapterString:(id)string dateString:(id)dateString pageString:(id)pageString layoutDirection:(int64_t)direction
{
  pageStringCopy = pageString;
  dateStringCopy = dateString;
  stringCopy = string;
  pageNumberFontForPopover = [self pageNumberFontForPopover];
  widthCopy = width;
  [self pageLabelFrameInPopoverForString:pageStringCopy font:pageNumberFontForPopover bounds:direction layoutDirection:{0.0, 0.0, width, 1.79769313e308}];
  v17 = v16;
  v39 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  chapterFontForPopover = [self chapterFontForPopover];
  [self chapterTitleFrameInPopoverForString:stringCopy font:chapterFontForPopover bounds:direction pageLabelFrame:0.0 layoutDirection:{0.0, width, 1.79769313e308, v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  dateFontForPopover = [self dateFontForPopover];
  v41.origin.x = v26;
  v41.origin.y = v28;
  v41.size.width = v30;
  v41.size.height = v32;
  [self dateLabelFrameInPopoverForString:dateStringCopy font:dateFontForPopover bounds:direction minY:0.0 pageLabelFrame:0.0 layoutDirection:{widthCopy, 1.79769313e308, CGRectGetMaxY(v41), *&v39, *&v19, *&v21, *&v23}];
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

+ (CGSize)sizeForString:(id)string font:(id)font width:(double)width numberOfLines:(int)lines
{
  fontCopy = font;
  stringCopy = string;
  [fontCopy lineHeight];
  v12 = v11;
  if (lines >= 2)
  {
    [fontCopy leading];
    v12 = (v12 + v13) * lines;
  }

  [UILabel bkSizeForString:stringCopy constrainedToSize:fontCopy font:0 lineBreakMode:width, v12];
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