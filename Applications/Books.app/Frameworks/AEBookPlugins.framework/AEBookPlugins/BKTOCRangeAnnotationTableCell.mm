@interface BKTOCRangeAnnotationTableCell
+ (CGRect)dateLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 minY:(double)a6 layoutDirection:(int64_t)a7;
+ (CGRect)dateLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 minY:(double)a6 pageLabelFrame:(CGRect)a7 layoutDirection:(int64_t)a8;
+ (CGRect)highlightedTextFrameForAnnotation:(id)a3 font:(id)a4 bounds:(CGRect)a5 letMargin:(double)a6 numberOfLines:(int)a7 pageLabelFrame:(CGRect)a8 layoutDirection:(int64_t)a9;
+ (CGRect)highlightedTextFrameForAnnotation:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7;
+ (CGRect)highlightedTextFrameInPopoverForAnnotation:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7;
+ (CGRect)pageLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 layoutDirection:(int64_t)a6;
+ (double)bottomPadding;
+ (double)cellHeightInPopoverForBounds:(CGRect)a3 highlightFont:(id)a4 annotation:(id)a5 dateString:(id)a6 pageString:(id)a7 layoutDirection:(int64_t)a8;
+ (double)noteTextFrameForString:(CGFloat)a3 font:(CGFloat)a4 bounds:(double)a5 spacingToItemAbove:(uint64_t)a6 numberOfLines:(uint64_t)a7 matchesWidthOfHighlightedText:(void *)a8 highlightedTextFrame:(void *)a9 pageLabelFrame:(int)a10;
+ (double)pageNumberAndHighlightedTextFontSize;
+ (id)noteFontForPopover;
- (AEHighlightedTextLabel)highlightedTextLabel;
- (void)layoutSubviewsNotEditingWithBounds:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation BKTOCRangeAnnotationTableCell

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
  v14 = [(BKTOCRangeAnnotationTableCell *)self effectiveUserInterfaceLayoutDirection];
  if (v8)
  {
    [v9 pageLabelFrameInPopoverForString:v11 font:v13 bounds:v14 layoutDirection:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v169 = height;
    v22 = v21;
    v23 = [(BKTOCTableViewCell *)self pageLabel];
    [v23 setFrame:{v16, v18, v20, v22}];

    v24 = objc_opt_class();
    v25 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    v26 = [v25 annotation];
    v27 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    v28 = [v27 font];
    v29 = [(BKTOCTableViewCell *)self pageLabel];
    [v29 frame];
    [v24 highlightedTextFrameInPopoverForAnnotation:v26 font:v28 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, v169, v30, v31, v32, v33}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v42 setFrame:{v35, v37, v39, v41}];

    v43 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v43 frame];
    v44 = CGRectGetWidth(v171);
    v45 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v45 setFullLineWidth:v44];

    v46 = objc_opt_class();
    v47 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v48 = [v47 text];
    v49 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v50 = [v49 font];
    v51 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v51 frame];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = [(BKTOCTableViewCell *)self pageLabel];
    [v60 frame];
    [v46 noteTextFrameInPopoverForString:v48 font:v50 bounds:x highlightedTextFrame:y pageLabelFrame:{width, v169, v53, v55, v57, v59, v61, v62, v63, v64}];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [v73 setFrame:{v66, v68, v70, v72}];

    v74 = objc_opt_class();
    v75 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v76 = [v75 text];
    v77 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v78 = [v77 font];
    v79 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [v79 frame];
    MaxY = CGRectGetMaxY(v172);

    v81 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v81 frame];
    v82 = CGRectGetMaxY(v173);

    if (MaxY < v82)
    {
      MaxY = v82;
    }

    v83 = [(BKTOCTableViewCell *)self pageLabel];
    [v83 frame];
    height = v169;
    [v74 dateLabelFrameInPopoverForString:v76 font:v78 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self minY:"effectiveUserInterfaceLayoutDirection") pageLabelFrame:x layoutDirection:{y, width, v169, MaxY, v84, v85, v86, v87}];
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [v96 setFrame:{v89, v91, v93, v95}];
  }

  else
  {
    [v9 pageLabelFrameForString:v11 font:v13 bounds:v14 layoutDirection:{x, y, width, height}];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = [(BKTOCTableViewCell *)self pageLabel];
    [v105 setFrame:{v98, v100, v102, v104}];

    v106 = objc_opt_class();
    v107 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    v108 = [v107 annotation];
    v109 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    v110 = [v109 font];
    v111 = [(BKTOCTableViewCell *)self pageLabel];
    [v111 frame];
    [v106 highlightedTextFrameForAnnotation:v108 font:v110 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self pageLabelFrame:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v112, v113, v114, v115}];
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v124 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v124 setFrame:{v117, v119, v121, v123}];

    v125 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v125 frame];
    v126 = CGRectGetWidth(v174);
    v127 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v127 setFullLineWidth:v126];

    v128 = objc_opt_class();
    v129 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v130 = [v129 text];
    v131 = [(BKTOCAnnotationTableCell *)self noteLabel];
    v132 = [v131 font];
    v133 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v133 frame];
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v142 = [(BKTOCTableViewCell *)self pageLabel];
    [v142 frame];
    [v128 noteTextFrameForString:v130 font:v132 bounds:x highlightedTextFrame:y pageLabelFrame:{width, height, v135, v137, v139, v141, v143, v144, v145, v146}];
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v155 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [v155 setFrame:{v148, v150, v152, v154}];

    v156 = objc_opt_class();
    v75 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v76 = [v75 text];
    v77 = [(BKTOCAnnotationTableCell *)self dateLabel];
    v78 = [v77 font];
    v157 = [(BKTOCAnnotationTableCell *)self noteLabel];
    [v157 frame];
    v158 = CGRectGetMaxY(v175);

    v159 = [(BKTOCRangeAnnotationTableCell *)self highlightedTextLabel];
    [v159 frame];
    v160 = CGRectGetMaxY(v176);

    if (v158 < v160)
    {
      v158 = v160;
    }

    [v156 dateLabelFrameForString:v76 font:v78 bounds:-[BKTOCRangeAnnotationTableCell effectiveUserInterfaceLayoutDirection](self minY:"effectiveUserInterfaceLayoutDirection") layoutDirection:{x, y, width, height, v158}];
    v162 = v161;
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v83 = [(BKTOCAnnotationTableCell *)self dateLabel];
    [v83 setFrame:{v162, v164, v166, v168}];
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
    v7 = [(BKTOCRangeAnnotationTableCell *)self contentView];
    [v7 addSubview:self->_highlightedTextLabel];

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

+ (CGRect)pageLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 layoutDirection:(int64_t)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4;
  v13 = a3;
  [objc_opt_class() pageLabelFrameForString:v13 font:v12 bounds:a6 topMargin:x layoutDirection:{y, width, height, 8.0}];
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

+ (CGRect)highlightedTextFrameInPopoverForAnnotation:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7
{
  [a1 highlightedTextFrameForAnnotation:a3 font:a4 bounds:3 letMargin:a7 numberOfLines:a5.origin.x pageLabelFrame:a5.origin.y layoutDirection:{a5.size.width, a5.size.height, 8.0, *&a6.origin.x, *&a6.origin.y, *&a6.size.width, *&a6.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)highlightedTextFrameForAnnotation:(id)a3 font:(id)a4 bounds:(CGRect)a5 pageLabelFrame:(CGRect)a6 layoutDirection:(int64_t)a7
{
  [a1 highlightedTextFrameForAnnotation:a3 font:a4 bounds:2 letMargin:a7 numberOfLines:a5.origin.x pageLabelFrame:a5.origin.y layoutDirection:{a5.size.width, a5.size.height, 15.0, *&a6.origin.x, *&a6.origin.y, *&a6.size.width, *&a6.size.height}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)highlightedTextFrameForAnnotation:(id)a3 font:(id)a4 bounds:(CGRect)a5 letMargin:(double)a6 numberOfLines:(int)a7 pageLabelFrame:(CGRect)a8 layoutDirection:(int64_t)a9
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a3;
  v17 = a4;
  v32 = CGRectZero.size.height;
  MinY = CGRectGetMinY(a8);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MinX = CGRectGetMinX(v35);
  if (CGRectGetWidth(a8) <= 0.0)
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
    if (a9 == 1)
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      rect = CGRectGetWidth(v36);
      v18 = rect - CGRectGetMaxX(a8);
      v20 = v32;
      v19 = MinY;
    }

    else
    {
      recta = CGRectZero.size.width;
      v22 = CGRectGetMinX(a8);
      v19 = MinY;
      v38.origin.x = MinX;
      v38.origin.y = MinY;
      v38.size.width = recta;
      v20 = v32;
      v38.size.height = v32;
      v18 = v22 - CGRectGetMinX(v38);
    }

    v21 = v18 - a6;
  }

  v23 = MinX;
  if (v16)
  {
    v39.origin.x = MinX;
    v39.origin.y = v19;
    v39.size.width = v21;
    v39.size.height = v20;
    [AEHighlightedTextLabel sizeForAnnotation:v16 font:v17 width:a7 numberOfLines:0 useSelectedText:CGRectGetWidth(v39)];
    v20 = v24;
  }

  if (a9 == 1)
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

+ (double)noteTextFrameForString:(CGFloat)a3 font:(CGFloat)a4 bounds:(double)a5 spacingToItemAbove:(uint64_t)a6 numberOfLines:(uint64_t)a7 matchesWidthOfHighlightedText:(void *)a8 highlightedTextFrame:(void *)a9 pageLabelFrame:(int)a10
{
  v29 = a17;
  v28 = a18;
  v31 = a15;
  v30 = a16;
  v32 = a8;
  v33 = a9;
  height = CGRectZero.size.height;
  v50.origin.x = a15;
  v50.origin.y = a16;
  v50.size.width = a17;
  v50.size.height = a18;
  MaxY = CGRectGetMaxY(v50);
  v51.origin.x = a1;
  v51.origin.y = a2;
  v51.size.width = a3;
  v51.size.height = a4;
  MinX = CGRectGetMinX(v51);
  if ([v32 isNotWhitespace])
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
        v28 = a4;
        v29 = a3;
        v30 = a2;
        v31 = a1;
      }
    }

    v54.origin.x = v31;
    v54.origin.y = v30;
    v54.size.width = v29;
    v54.size.height = v28;
    Width = CGRectGetWidth(v54);
    [v33 lineHeight];
    v36 = v35;
    v37 = objc_alloc_init(NSStringDrawingContext);
    v55.size.height = height;
    v38 = MinX;
    v55.origin.x = MinX;
    v55.origin.y = MaxY + a5;
    v55.size.width = Width;
    v39 = CGRectGetWidth(v55);
    v40 = v36 * a10;
    v48 = NSFontAttributeName;
    v49 = v33;
    v41 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    [v32 boundingRectWithSize:35 options:v41 attributes:v37 context:{v39, v40}];
  }

  else
  {
    v38 = MinX;
  }

  return v38;
}

+ (CGRect)dateLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 minY:(double)a6 layoutDirection:(int64_t)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a6 + 3.0;
  v15 = a4;
  v16 = a3;
  [v15 ascender];
  v18 = v17;
  [v15 descender];
  *&v19 = v14 + (v18 - v19) * 0.200000003;
  v20 = floorf(*&v19);
  [a1 dateLabelSizeForString:v16 font:v15 bounds:{x, y, width, height}];
  v22 = v21;

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  if (a7 == 1)
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

+ (CGRect)dateLabelFrameInPopoverForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 minY:(double)a6 pageLabelFrame:(CGRect)a7 layoutDirection:(int64_t)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a6 + 5.0;
  [a1 dateLabelSizeForString:a3 font:a4 bounds:{a8, a5.origin.x}];
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

+ (double)cellHeightInPopoverForBounds:(CGRect)a3 highlightFont:(id)a4 annotation:(id)a5 dateString:(id)a6 pageString:(id)a7 layoutDirection:(int64_t)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v58 = a3.origin.x;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = [a1 pageNumberFontForPopover];
  [a1 pageLabelFrameInPopoverForString:v17 font:v21 bounds:a8 layoutDirection:{x, y, width, height}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v60 = v25;
  v61 = v23;
  v59 = v29;
  [a1 highlightedTextFrameInPopoverForAnnotation:v19 font:v20 bounds:a8 pageLabelFrame:x layoutDirection:{y, width, height, v23, v25, v27, v29}];
  v56 = v31;
  v57 = v30;
  v54 = v33;
  v55 = v32;
  v34 = v33;

  v35 = [a1 noteFontForPopover];
  v36 = [v19 annotationNote];

  [a1 noteTextFrameInPopoverForString:v36 font:v35 bounds:v58 highlightedTextFrame:y pageLabelFrame:{width, height, v57, v56, v55, v34, *&v23, *&v25, *&v27, *&v29}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [a1 dateFontForPopover];
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

  [a1 dateLabelFrameInPopoverForString:v18 font:v45 bounds:a8 minY:v58 pageLabelFrame:y layoutDirection:{width, height, v48, *&v61, *&v60, *&v27, *&v59}];
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