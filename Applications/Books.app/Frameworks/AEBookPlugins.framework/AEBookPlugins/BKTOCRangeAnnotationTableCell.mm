@interface BKTOCRangeAnnotationTableCell
+ (CGRect)dateLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds minY:(double)y layoutDirection:(int64_t)direction;
+ (CGRect)dateLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds minY:(double)y pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)highlightedTextFrameForAnnotation:(id)annotation font:(id)font bounds:(CGRect)bounds letMargin:(double)margin numberOfLines:(int)lines pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)highlightedTextFrameForAnnotation:(id)annotation font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)highlightedTextFrameInPopoverForAnnotation:(id)annotation font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction;
+ (CGRect)pageLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds layoutDirection:(int64_t)direction;
+ (double)bottomPadding;
+ (double)cellHeightInPopoverForBounds:(CGRect)bounds highlightFont:(id)font annotation:(id)annotation dateString:(id)string pageString:(id)pageString layoutDirection:(int64_t)direction;
+ (double)noteTextFrameForString:(CGFloat)string font:(CGFloat)font bounds:(double)bounds spacingToItemAbove:(uint64_t)above numberOfLines:(uint64_t)lines matchesWidthOfHighlightedText:(void *)text highlightedTextFrame:(void *)frame pageLabelFrame:(int)self0;
+ (double)pageNumberAndHighlightedTextFontSize;
+ (id)noteFontForPopover;
- (AEHighlightedTextLabel)highlightedTextLabel;
- (void)layoutSubviewsNotEditingWithBounds:(CGRect)bounds;
- (void)prepareForReuse;
@end

@implementation BKTOCRangeAnnotationTableCell

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
  effectiveUserInterfaceLayoutDirection = [(BKTOCRangeAnnotationTableCell *)self effectiveUserInterfaceLayoutDirection];
  if (usesPopoverStyle)
  {
    [v9 pageLabelFrameInPopoverForString:text font:font bounds:effectiveUserInterfaceLayoutDirection layoutDirection:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v169 = height;
    v22 = v21;
    pageLabel3 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel3 setFrame:{v16, v18, v20, v22}];

    v24 = objc_opt_class();
    highlightedTextLabel = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    annotation = [highlightedTextLabel annotation];
    highlightedTextLabel2 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    font2 = [highlightedTextLabel2 font];
    pageLabel4 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel4 frame];
    [v24 highlightedTextFrameInPopoverForAnnotation:annotation font:font2 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, v169, v30, v31, v32, v33}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    highlightedTextLabel3 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel3 setFrame:{v35, v37, v39, v41}];

    highlightedTextLabel4 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel4 frame];
    v44 = CGRectGetWidth(v171);
    highlightedTextLabel5 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel5 setFullLineWidth:v44];

    v46 = objc_opt_class();
    noteLabel = [(BKTOCAnnotationTableCell *)self noteLabel];
    text2 = [noteLabel text];
    noteLabel2 = [(BKTOCAnnotationTableCell *)self noteLabel];
    font3 = [noteLabel2 font];
    highlightedTextLabel6 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel6 frame];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    pageLabel5 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel5 frame];
    [v46 noteTextFrameInPopoverForString:text2 font:font3 bounds:x highlightedTextFrame:y pageLabelFrame:{width, v169, v53, v55, v57, v59, v61, v62, v63, v64}];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    noteLabel3 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [noteLabel3 setFrame:{v66, v68, v70, v72}];

    v74 = objc_opt_class();
    dateLabel = [(BKTOCAnnotationTableCell *)self dateLabel];
    text3 = [dateLabel text];
    dateLabel2 = [(BKTOCAnnotationTableCell *)self dateLabel];
    font4 = [dateLabel2 font];
    noteLabel4 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [noteLabel4 frame];
    MaxY = CGRectGetMaxY(v172);

    highlightedTextLabel7 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel7 frame];
    v82 = CGRectGetMaxY(v173);

    if (MaxY < v82)
    {
      MaxY = v82;
    }

    pageLabel6 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel6 frame];
    height = v169;
    [v74 dateLabelFrameInPopoverForString:text3 font:font4 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self minY:"effectiveUserInterfaceLayoutDirection") pageLabelFrame:x layoutDirection:{y, width, v169, MaxY, v84, v85, v86, v87}];
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    dateLabel3 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [dateLabel3 setFrame:{v89, v91, v93, v95}];
  }

  else
  {
    [v9 pageLabelFrameForString:text font:font bounds:effectiveUserInterfaceLayoutDirection layoutDirection:{x, y, width, height}];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    pageLabel7 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel7 setFrame:{v98, v100, v102, v104}];

    v106 = objc_opt_class();
    highlightedTextLabel8 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    annotation2 = [highlightedTextLabel8 annotation];
    highlightedTextLabel9 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    font5 = [highlightedTextLabel9 font];
    pageLabel8 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel8 frame];
    [v106 highlightedTextFrameForAnnotation:annotation2 font:font5 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v112, v113, v114, v115}];
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    highlightedTextLabel10 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel10 setFrame:{v117, v119, v121, v123}];

    highlightedTextLabel11 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel11 frame];
    v126 = CGRectGetWidth(v174);
    highlightedTextLabel12 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel12 setFullLineWidth:v126];

    v128 = objc_opt_class();
    noteLabel5 = [(BKTOCAnnotationTableCell *)self noteLabel];
    text4 = [noteLabel5 text];
    noteLabel6 = [(BKTOCAnnotationTableCell *)self noteLabel];
    font6 = [noteLabel6 font];
    highlightedTextLabel13 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel13 frame];
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v141 = v140;
    pageLabel9 = [(BKTOCTableViewCell *)self pageLabel];
    [pageLabel9 frame];
    [v128 noteTextFrameForString:text4 font:font6 bounds:x highlightedTextFrame:y pageLabelFrame:{width, height, v135, v137, v139, v141, v143, v144, v145, v146}];
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v154 = v153;
    noteLabel7 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [noteLabel7 setFrame:{v148, v150, v152, v154}];

    v156 = objc_opt_class();
    dateLabel = [(BKTOCAnnotationTableCell *)self dateLabel];
    text3 = [dateLabel text];
    dateLabel2 = [(BKTOCAnnotationTableCell *)self dateLabel];
    font4 = [dateLabel2 font];
    noteLabel8 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [noteLabel8 frame];
    v158 = CGRectGetMaxY(v175);

    highlightedTextLabel14 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [highlightedTextLabel14 frame];
    v160 = CGRectGetMaxY(v176);

    if (v158 < v160)
    {
      v158 = v160;
    }

    [v156 dateLabelFrameForString:text3 font:font4 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self minY:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v158}];
    v162 = v161;
    v164 = v163;
    v166 = v165;
    v168 = v167;
    pageLabel6 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [pageLabel6 setFrame:{v162, v164, v166, v168}];
  }

  v170.receiver = self;
  v170.super_class = BKTOCRangeAnnotationTableCell;
  [(BKTOCAnnotationTableCell *)&v170 layoutSubviewsNotEditingWithBounds:x, y, width, height];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = BKTOCRangeAnnotationTableCell;
  [(BKTOCAnnotationTableCell *)&v4 prepareForReuse];
  [(AEHighlightedTextLabel *)self->_highlightedTextLabel removeFromSuperview];
  highlightedTextLabel = self->_highlightedTextLabel;
  self->_highlightedTextLabel = 0;
}

- (AEHighlightedTextLabel)highlightedTextLabel
{
  highlightedTextLabel = self->_highlightedTextLabel;
  if (!highlightedTextLabel)
  {
    v4 = objc_alloc_init(AEHighlightedTextLabel);
    v5 = self->_highlightedTextLabel;
    self->_highlightedTextLabel = v4;

    if ([(BKTOCTableViewCell *)self usesPopoverStyle])
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    [(AEHighlightedTextLabel *)self->_highlightedTextLabel setNumberOfLines:v6];
    [(AEHighlightedTextLabel *)self->_highlightedTextLabel setOpaque:0];
    contentView = [(BKTOCRangeAnnotationTableCell *)self contentView];
    [contentView addSubview:self->_highlightedTextLabel];

    highlightedTextLabel = self->_highlightedTextLabel;
  }

  return highlightedTextLabel;
}

+ (id)noteFontForPopover
{
  v2 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  v3 = [UITraitCollection currentTraitCollectionLimitedToSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];

  [v4 pointSize];
  v5 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v6 = [v2 scaledFontForFont:v5];

  return v6;
}

+ (double)pageNumberAndHighlightedTextFontSize
{
  v2 = objc_opt_class();

  [v2 pageNumberFontSize];
  return result;
}

+ (CGRect)pageLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds layoutDirection:(int64_t)direction
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  fontCopy = font;
  stringCopy = string;
  [objc_opt_class() pageLabelFrameForString:stringCopy font:fontCopy bounds:direction topMargin:x layoutDirection:{y, width, height, 8.0}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)highlightedTextFrameInPopoverForAnnotation:(id)annotation font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  [self highlightedTextFrameForAnnotation:annotation font:font bounds:3 letMargin:direction numberOfLines:bounds.origin.x pageLabelFrame:bounds.origin.y layoutDirection:{bounds.size.width, bounds.size.height, 8.0, *&frame.origin.x, *&frame.origin.y, *&frame.size.width, *&frame.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)highlightedTextFrameForAnnotation:(id)annotation font:(id)font bounds:(CGRect)bounds pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  [self highlightedTextFrameForAnnotation:annotation font:font bounds:2 letMargin:direction numberOfLines:bounds.origin.x pageLabelFrame:bounds.origin.y layoutDirection:{bounds.size.width, bounds.size.height, 15.0, *&frame.origin.x, *&frame.origin.y, *&frame.size.width, *&frame.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)highlightedTextFrameForAnnotation:(id)annotation font:(id)font bounds:(CGRect)bounds letMargin:(double)margin numberOfLines:(int)lines pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  annotationCopy = annotation;
  fontCopy = font;
  v32 = CGRectZero.size.height;
  MinY = CGRectGetMinY(frame);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MinX = CGRectGetMinX(v35);
  if (CGRectGetWidth(frame) <= 0.0)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v21 = CGRectGetWidth(v37);
    v20 = v32;
    v19 = MinY;
  }

  else
  {
    if (direction == 1)
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      rect = CGRectGetWidth(v36);
      v18 = rect - CGRectGetMaxX(frame);
      v20 = v32;
      v19 = MinY;
    }

    else
    {
      recta = CGRectZero.size.width;
      v22 = CGRectGetMinX(frame);
      v19 = MinY;
      v38.origin.x = MinX;
      v38.origin.y = MinY;
      v38.size.width = recta;
      v20 = v32;
      v38.size.height = v32;
      v18 = v22 - CGRectGetMinX(v38);
    }

    v21 = v18 - margin;
  }

  v23 = MinX;
  if (annotationCopy)
  {
    v39.origin.x = MinX;
    v39.origin.y = v19;
    v39.size.width = v21;
    v39.size.height = v20;
    [AEHighlightedTextLabel sizeForAnnotation:annotationCopy font:fontCopy width:lines numberOfLines:0 useSelectedText:CGRectGetWidth(v39)];
    v20 = v24;
  }

  if (direction == 1)
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v23 = CGRectGetMaxX(v40) - v21;
  }

  v25 = v23;
  v26 = v19;
  v27 = v21;
  v28 = v20;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

+ (double)noteTextFrameForString:(CGFloat)string font:(CGFloat)font bounds:(double)bounds spacingToItemAbove:(uint64_t)above numberOfLines:(uint64_t)lines matchesWidthOfHighlightedText:(void *)text highlightedTextFrame:(void *)frame pageLabelFrame:(int)self0
{
  stringCopy = a17;
  fontCopy = a18;
  selfCopy = a15;
  v30 = a16;
  textCopy = text;
  frameCopy = frame;
  height = CGRectZero.size.height;
  v50.origin.x = a15;
  v50.origin.y = a16;
  v50.size.width = a17;
  v50.size.height = a18;
  MaxY = CGRectGetMaxY(v50);
  v51.origin.x = self;
  v51.origin.y = a2;
  v51.size.width = string;
  v51.size.height = font;
  MinX = CGRectGetMinX(v51);
  if ([textCopy isNotWhitespace])
  {
    if ((a11 & 1) == 0)
    {
      v52.origin.x = a15;
      v52.origin.y = a16;
      v52.size.width = a17;
      v52.size.height = a18;
      v43 = CGRectGetMaxY(v52);
      v53.origin.x = a19;
      v53.origin.y = a20;
      v53.size.width = a21;
      v53.size.height = a22;
      if (v43 >= CGRectGetMaxY(v53))
      {
        fontCopy = font;
        stringCopy = string;
        v30 = a2;
        selfCopy = self;
      }
    }

    v54.origin.x = selfCopy;
    v54.origin.y = v30;
    v54.size.width = stringCopy;
    v54.size.height = fontCopy;
    Width = CGRectGetWidth(v54);
    [frameCopy lineHeight];
    v36 = v35;
    v37 = objc_alloc_init(NSStringDrawingContext);
    v55.size.height = height;
    v38 = MinX;
    v55.origin.x = MinX;
    v55.origin.y = MaxY + bounds;
    v55.size.width = Width;
    v39 = CGRectGetWidth(v55);
    v40 = v36 * labelFrame;
    v48 = NSFontAttributeName;
    v49 = frameCopy;
    v41 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    [textCopy boundingRectWithSize:35 options:v41 attributes:v37 context:{v39, v40}];
  }

  else
  {
    v38 = MinX;
  }

  return v38;
}

+ (CGRect)dateLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds minY:(double)y layoutDirection:(int64_t)direction
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = y + 3.0;
  fontCopy = font;
  stringCopy = string;
  [fontCopy ascender];
  v18 = v17;
  [fontCopy descender];
  *&v19 = v14 + (v18 - v19) * 0.200000003;
  v20 = floorf(*&v19);
  [self dateLabelSizeForString:stringCopy font:fontCopy bounds:{x, y, width, height}];
  v22 = v21;

  v23 = x;
  yCopy = y;
  v25 = width;
  v26 = height;
  if (direction == 1)
  {
    MaxX = CGRectGetMaxX(*&v23);
    v32.origin.x = CGRectZero.origin.x;
    v32.origin.y = v20;
    v32.size.width = width;
    v32.size.height = v22;
    MinX = MaxX - CGRectGetWidth(v32);
  }

  else
  {
    MinX = CGRectGetMinX(*&v23);
  }

  v29 = v20 + 5.0;
  v30 = width;
  v31 = v22;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = MinX;
  return result;
}

+ (CGRect)dateLabelFrameInPopoverForString:(id)string font:(id)font bounds:(CGRect)bounds minY:(double)y pageLabelFrame:(CGRect)frame layoutDirection:(int64_t)direction
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12 = y + 5.0;
  [self dateLabelSizeForString:string font:font bounds:{direction, bounds.origin.x}];
  v14 = v13;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = CGRectZero.origin.x;
  v21.origin.y = v12;
  v21.size.width = width;
  v21.size.height = v14;
  v16 = MaxX - CGRectGetWidth(v21);
  v17 = v12;
  v18 = width;
  v19 = v14;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (double)bottomPadding
{
  v2 = isPhone();
  result = 19.0;
  if (v2)
  {
    return 15.0;
  }

  return result;
}

+ (double)cellHeightInPopoverForBounds:(CGRect)bounds highlightFont:(id)font annotation:(id)annotation dateString:(id)string pageString:(id)pageString layoutDirection:(int64_t)direction
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v58 = bounds.origin.x;
  pageStringCopy = pageString;
  stringCopy = string;
  annotationCopy = annotation;
  fontCopy = font;
  pageNumberFontForPopover = [self pageNumberFontForPopover];
  [self pageLabelFrameInPopoverForString:pageStringCopy font:pageNumberFontForPopover bounds:direction layoutDirection:{x, y, width, height}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v60 = v25;
  v61 = v23;
  v59 = v29;
  [self highlightedTextFrameInPopoverForAnnotation:annotationCopy font:fontCopy bounds:direction pageLabelFrame:x layoutDirection:{y, width, height, v23, v25, v27, v29}];
  v56 = v31;
  v57 = v30;
  v54 = v33;
  v55 = v32;
  v34 = v33;

  noteFontForPopover = [self noteFontForPopover];
  annotationNote = [annotationCopy annotationNote];

  [self noteTextFrameInPopoverForString:annotationNote font:noteFontForPopover bounds:v58 highlightedTextFrame:y pageLabelFrame:{width, height, v57, v56, v55, v34, *&v23, *&v25, *&v27, *&v29}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  dateFontForPopover = [self dateFontForPopover];
  v62.origin.x = v38;
  v62.origin.y = v40;
  v62.size.width = v42;
  v62.size.height = v44;
  MaxY = CGRectGetMaxY(v62);
  v63.origin.x = v57;
  v63.origin.y = v56;
  v63.size.width = v55;
  v63.size.height = v54;
  v47 = CGRectGetMaxY(v63);
  if (MaxY >= v47)
  {
    v48 = MaxY;
  }

  else
  {
    v48 = v47;
  }

  [self dateLabelFrameInPopoverForString:stringCopy font:dateFontForPopover bounds:direction minY:v58 pageLabelFrame:y layoutDirection:{width, height, v48, *&v61, *&v60, *&v27, *&v59}];
  v50 = v49;

  v51 = v44 + 5.0;
  if (v44 <= 0.0)
  {
    v51 = 0.0;
  }

  v52 = v54 + 8.0 + 5.0 + v51 + v50 + 8.0;

  return v52;
}

@end