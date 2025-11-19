@interface BKLibraryBookshelfListModeBookCell
- (BKLibraryBookshelfListModeBookCell)initWithFrame:(CGRect)a3;
- (BOOL)isSupplementalContentPDFPicker;
- (BOOL)shouldDragWithTouch:(id)a3;
- (BOOL)shrinkInEditMode;
- (CGRect)coverArea;
- (CGRect)infoFrame;
- (id)_checkmarkImageForSelectedState:(BOOL)a3;
- (id)cellListMetrics;
- (id)dragPreview;
- (id)dragPreviewParametersForDrop:(BOOL)a3;
- (void)_updateDragBarImage;
- (void)_updateLibraryAssetText;
- (void)_updateSeriesSequenceLabel:(BOOL)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setDataSource:(id)a3;
- (void)setLibraryAsset:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation BKLibraryBookshelfListModeBookCell

- (BKLibraryBookshelfListModeBookCell)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = BKLibraryBookshelfListModeBookCell;
  v3 = [(BKLibraryBookshelfGridBookCell *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(BKLibraryBookshelfGridBookCell *)v3 coverLayer];
    [v5 setBottomAligned:0];

    v6 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    v8 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    authorLabel = v4->_authorLabel;
    v4->_authorLabel = v8;

    v10 = +[CAShapeLayer layer];
    separatorline = v4->_separatorline;
    v4->_separatorline = v10;

    v12 = +[UIScreen mainScreen];
    [v12 scale];
    [(CAShapeLayer *)v4->_separatorline setLineWidth:1.0 / v13];

    [(CAShapeLayer *)v4->_separatorline setHidden:1];
    v14 = objc_alloc_init(UIImageView);
    dragBarView = v4->_dragBarView;
    v4->_dragBarView = v14;

    v16 = [(BKLibraryBookshelfGridBookCell *)v4 infoCell];
    [v16 setLeftAlignedCloudIcon:1];

    v17 = [(BKLibraryBookshelfListModeBookCell *)v4 layer];
    [v17 addSublayer:v4->_separatorline];

    v18 = [(BKLibraryBookshelfListModeBookCell *)v4 contentView];
    [v18 addSubview:v4->_titleLabel];

    v19 = [(BKLibraryBookshelfListModeBookCell *)v4 contentView];
    [v19 addSubview:v4->_authorLabel];

    v20 = [(BKLibraryBookshelfListModeBookCell *)v4 contentView];
    [v20 addSubview:v4->_dragBarView];

    v21 = +[UIColor bc_booksTableSelectionColor];
    [(BKLibraryBookshelfCollectionViewCell *)v4 setHighlightBackgroundColor:v21];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [v3 removeObserver:self forKeyPath:@"author" context:off_100ACD3B0];

  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v4 dealloc];
}

- (id)cellListMetrics
{
  objc_opt_class();
  v3 = [(BKLibraryBookshelfGridBookCell *)self metrics];
  v4 = BUDynamicCast();

  return v4;
}

- (id)dragPreview
{
  v3 = [UIDragPreview alloc];
  v4 = [(BKLibraryBookshelfGridBookCell *)self coverView];
  v5 = [v3 initWithView:v4];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)a3
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  v5 = [(BKLibraryBookshelfListModeBookCell *)self traitCollection];
  v6 = [v5 traitCollectionByModifyingTraits:&stru_100A06210];

  v7 = +[UIColor bc_booksBackground];
  v8 = [v7 resolvedColorWithTraitCollection:v6];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (CGRect)coverArea
{
  v3 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [v3 smallCoverMargins];
    v4 = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
    [v4 smallMargins];

    [v3 smallCoverMargins];
    [v3 smallCoverSize];
  }

  else
  {
    [v3 coverMargins];
    v5 = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
    [v5 margins];

    [v3 coverMargins];
    [v3 coverSize];
  }

  [(BKLibraryBookshelfListModeBookCell *)self bounds];
  [(BKLibraryBookshelfListModeBookCell *)self editModeMargin];
  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)shrinkInEditMode
{
  v2 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  v3 = [v2 shrinkInEditMode];

  return v3;
}

- (CGRect)infoFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isSupplementalContentPDFPicker
{
  v2 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  v3 = [v2 supplementalContentPDFPicker];

  return v3;
}

- (void)layoutSubviews
{
  v225.receiver = self;
  v225.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v225 layoutSubviews];
  v3 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]&& ([(BKLibraryBookshelfListModeBookCell *)self isSelected]& 1) == 0)
  {
    memset(&v224, 0, sizeof(v224));
    [v3 shrinkAmount];
    v10 = v9;
    [v3 shrinkAmount];
    CGAffineTransformMakeScale(&v224, v10, v11);
    v223 = v224;
    v12 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v222 = v223;
    [v12 setAffineTransform:&v222];

    [v3 shrinkAlpha];
    *&v10 = v13;
    v6 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v7 = v6;
    LODWORD(v8) = LODWORD(v10);
  }

  else
  {
    v4 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v5 = *&CGAffineTransformIdentity.c;
    *&v224.a = *&CGAffineTransformIdentity.a;
    *&v224.c = v5;
    *&v224.tx = *&CGAffineTransformIdentity.tx;
    [v4 setAffineTransform:&v224];

    v6 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v7 = v6;
    LODWORD(v8) = 1.0;
  }

  [v6 setOpacity:v8];

  [(BKLibraryBookshelfListModeBookCell *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
  [v22 margins];
  v24 = v23;
  v226.origin.x = v15;
  v226.origin.y = v17;
  v226.size.width = v19;
  v226.size.height = v21;
  v227 = CGRectInset(v226, v24, 0.0);
  x = v227.origin.x;
  y = v227.origin.y;
  width = v227.size.width;
  height = v227.size.height;

  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [(BKLibraryBookshelfListModeBookCell *)self bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
    [v37 smallMargins];
    v39 = v38;
    v228.origin.x = v30;
    v228.origin.y = v32;
    v228.size.width = v34;
    v228.size.height = v36;
    v229 = CGRectInset(v228, v39, 0.0);
    x = v229.origin.x;
    y = v229.origin.y;
    width = v229.size.width;
    height = v229.size.height;
  }

  v230.origin.x = x;
  v230.origin.y = y;
  rect_24 = width;
  v230.size.width = width;
  v230.size.height = height;
  MinX = CGRectGetMinX(v230);
  [v3 coverSize];
  v213 = v41;
  [v3 coverSize];
  v43 = v42;
  [(BKLibraryBookshelfListModeBookCell *)self editModeMargin];
  v45 = v44;
  [v3 coverMargins];
  v47 = v46;
  [v3 coverMargins];
  v49 = v48;
  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [v3 smallCoverSize];
    v213 = v50;
    [v3 smallCoverSize];
    v52 = MinX + v51;
    [v3 smallCoverMargins];
    v54 = v52 + v53;
    [v3 coverMargins];
    v56 = v54 + v55;
  }

  else
  {
    v56 = v45 + MinX + v43 + v47 + v49;
  }

  v231.origin.x = x;
  rect_8 = y;
  v231.origin.y = y;
  v231.size.width = rect_24;
  v231.size.height = height;
  v57 = CGRectGetMaxX(v231) - v56;
  v58 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  v59 = [v58 isHidden];

  v60 = v57;
  if ((v59 & 1) == 0)
  {
    v61 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
    v62 = [v61 image];
    [v62 size];
    v60 = v57 - v63;
  }

  v64 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  v65 = [v64 isHidden];

  if (v65)
  {
    v66 = 0.0;
  }

  else
  {
    v67 = [v3 seriesSequenceLabelFontAttributes];
    v68 = [v67 font];

    v69 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [v69 sizeThatFits:{v60, 3.40282347e38}];
    v71 = v70;

    v232.origin.y = 0.0;
    v232.origin.x = v56;
    v232.size.width = v60;
    v232.size.height = v71;
    MaxY = CGRectGetMaxY(v232);
    [v68 descender];
    v74 = MaxY + v73;
    [v3 seriesSequenceLabelBottomMargin];
    v66 = v74 + v75;
  }

  v76 = [v3 titleFontAttributes];
  v77 = [v76 font];

  v78 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  [v78 sizeThatFits:{v60, 3.40282347e38}];
  v80 = v79;

  v81 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  v211 = v57;
  if ([v81 numberOfLines] == 1)
  {
    v82 = [(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker];

    if ((v82 & 1) == 0)
    {
      v233.origin.x = v56;
      v233.origin.y = v66;
      v233.size.width = v60;
      v233.size.height = v80;
      v83 = height;
      v84 = x;
      v85 = v66;
      v86 = CGRectGetHeight(v233);
      [v77 bk_heightFromCapLineToDescender];
      v88 = v86 - v87;
      v89 = v85;
      x = v84;
      height = v83;
      v57 = v211;
      v66 = v89 - v88;
    }
  }

  else
  {
  }

  v90 = [v3 authorFontAttributes];
  v91 = [v90 font];

  v234.origin.x = v56;
  v210 = v66;
  v234.origin.y = v66;
  v234.size.width = v60;
  v212 = v80;
  v234.size.height = v80;
  v92 = CGRectGetMaxY(v234);
  [v77 descender];
  v94 = v92 + v93;
  [v3 titleSpacing];
  v96 = v94 + v95;
  v97 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
  [v97 sizeThatFits:{v60, 3.40282347e38}];
  v99 = v98;
  v101 = v100;

  v102 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
  v103 = [v102 numberOfLines];

  if (v103 == 1)
  {
    v235.origin.x = v56;
    v235.origin.y = v96;
    v235.size.width = v99;
    v235.size.height = v101;
    v104 = CGRectGetHeight(v235);
    [v91 bk_heightFromCapLineToDescender];
    v96 = v96 - (v104 - v105);
  }

  v236.origin.x = v56;
  v236.origin.y = v96;
  rect = v60;
  v236.size.width = v60;
  v236.size.height = v101;
  v106 = CGRectGetMaxY(v236);
  [v91 descender];
  v108 = v106 + v107;
  [v3 authorSpacing];
  v110 = v108 + v109;
  [v3 infoBarHeight];
  v112 = v111;
  [v3 infoBarDateSpacing];
  v114 = v112 + v113;
  [v3 infoBarExpectedDateHeight];
  v237.size.height = v114 + v115;
  v237.origin.x = v56;
  v237.origin.y = v110;
  v237.size.width = v57;
  v116 = CGRectGetMaxY(v237);
  v117 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  v118 = [v117 showsDateBadge];

  if ((v118 & 1) == 0)
  {
    [v3 infoBarExpectedDateHeight];
    v120 = v119;
    [v3 infoBarDateSpacing];
    v116 = v116 - (v120 + v121);
  }

  rect_16 = height;
  v122 = x;
  [v3 coverMargins];
  v124 = v123;
  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [v3 smallCoverMargins];
    v126 = round(v213 * 0.5) + v125;
  }

  else
  {
    v126 = v124 + round((v213 - v116) * 0.5);
  }

  v127 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  v128 = [v127 isHidden];

  if ((v128 & 1) == 0)
  {
    [(BKLibraryBookshelfGridBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v136 = v135;
    v137 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [v137 setFrame:{v130, v132, v134, v136}];
  }

  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    v238.origin.x = v56;
    v238.origin.y = v210 + v126;
    v238.size.width = rect;
    v238.size.height = v212;
    CGRectGetHeight(v238);
    [v77 bk_heightFromCapLineToDescender];
  }

  v216 = v122;
  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v146 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
  [v146 setFrame:{v139, v141, v143, v145}];

  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v154 = v153;
  v155 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  [v155 setFrame:{v148, v150, v152, v154}];

  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v164 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [v164 setFrame:{v157, v159, v161, v163}];

  if (*&qword_100AF7510 == 0.0)
  {
    v165 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
    v166 = [v165 selectedCheckmarkImageForSelectedState:1];
    [v166 size];
    qword_100AF7508 = v167;
    qword_100AF7510 = v168;
  }

  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v170 = v169;
  v172 = v171;
  v174 = v173;
  v176 = v175;
  v177 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [v177 setFrame:{v170, v172, v174, v176}];

  v178 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  v179 = [v178 image];
  [v179 size];

  v239.origin.x = v216;
  v239.origin.y = rect_8;
  v239.size.width = rect_24;
  v239.size.height = rect_16;
  CGRectGetHeight(v239);
  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v181 = v180;
  v183 = v182;
  v185 = v184;
  v187 = v186;
  v188 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  [v188 setFrame:{v181, v183, v185, v187}];

  v189 = +[UIBezierPath bezierPath];
  v190 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  [v190 lineWidth];
  v214 = 1.0 - v191 * 0.5;

  if (![(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [(BKLibraryBookshelfListModeBookCell *)self editModeMargin];
  }

  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  v240.origin.x = v216;
  v240.origin.y = rect_8;
  v240.size.width = rect_24;
  v240.size.height = rect_16;
  CGRectGetMaxY(v240);
  v241.origin.x = v216;
  v241.origin.y = rect_8;
  v241.size.width = rect_24;
  v241.size.height = rect_16;
  CGRectGetWidth(v241);
  [(BKLibraryBookshelfListModeBookCell *)self editModeMargin];
  IMRectFlippedForRTL();
  recta = v242.origin.x;
  v192 = v242.origin.y;
  v193 = v242.size.width;
  v194 = v242.size.height;
  v215 = CGRectGetMinX(v242);
  v243.origin.x = v216;
  v243.origin.y = rect_8;
  v243.size.width = rect_24;
  v243.size.height = rect_16;
  [v189 moveToPoint:{v215, CGRectGetMaxY(v243) - v214}];
  v244.origin.x = recta;
  v244.origin.y = v192;
  v244.size.width = v193;
  v244.size.height = v194;
  MaxX = CGRectGetMaxX(v244);
  v245.origin.x = v216;
  v245.origin.y = rect_8;
  v245.size.width = rect_24;
  v245.size.height = rect_16;
  [v189 addLineToPoint:{MaxX, CGRectGetMaxY(v245) - v214}];
  v196 = [v189 CGPath];
  v197 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  [v197 setPath:v196];

  v198 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  v199 = v198;
  if (v198)
  {
    [v198 frame];
    v200 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    [v200 frame];
    CGRectCenterRectInRect();
    v202 = v201;
    v204 = v203;
    v206 = v205;
    v208 = v207;

    [v199 frame];
    v247.origin.x = v202;
    v247.origin.y = v204;
    v247.size.width = v206;
    v247.size.height = v208;
    if (!CGRectEqualToRect(v246, v247))
    {
      [(BKLibraryBookshelfListModeBookCell *)self effectiveUserInterfaceLayoutDirection];
      v209 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
      [v209 frame];
      IMRectFlippedForRTL();
      [v199 setFrame:?];
    }
  }
}

- (void)_updateSeriesSequenceLabel:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v7 _updateSeriesSequenceLabel:a3];
  v4 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  if ([v4 isHidden])
  {
    if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  [v6 setNumberOfLines:v5];
}

- (void)_updateLibraryAssetText
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (v3)
  {
    v4 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
    v5 = [v4 titleFontAttributes];
    v17 = [v5 attributesWithTruncated:1];

    v6 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    v7 = [v6 title];
    v8 = [TUIFontSpec attributedStringWith:v7 attributes:v17];
    v9 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
    [v9 setAttributedText:v8];

    if (![(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
    {
      v10 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
      v11 = [v10 authorFontAttributes];
      v12 = [v11 attributesWithTruncated:1];

      v13 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
      v14 = [v13 displayAuthor];
      v15 = [TUIFontSpec attributedStringWith:v14 attributes:v12];
      v16 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      [v16 setAttributedText:v15];
    }

    [(BKLibraryBookshelfListModeBookCell *)self setNeedsLayout];
  }
}

- (void)setLibraryAsset:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (v5 != v4)
  {
    v6 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    [v6 removeObserver:self forKeyPath:@"author" context:off_100ACD3B0];
  }

  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v9 setLibraryAsset:v4];
  v7 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (v7)
  {
    v8 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    [v8 addObserver:self forKeyPath:@"author" options:0 context:off_100ACD3B0];
  }

  [(BKLibraryBookshelfListModeBookCell *)self _updateLibraryAssetText];
}

- (void)_updateDragBarImage
{
  v3 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  if (v3)
  {
    v4 = v3;
    v5 = [(BKLibraryBookshelfGridBookCell *)self dataSource];

    if (v5)
    {
      v6 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
      obj = [v6 dragBarTintColor];

      if (!qword_100AF7520 || ([obj isEqual:qword_100AF7518] & 1) == 0)
      {
        objc_storeStrong(&qword_100AF7518, obj);
        v7 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:20.0];
        v8 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
        v9 = [v8 dragBarName];
        v10 = [UIImage systemImageNamed:v9];
        v11 = [v10 imageWithConfiguration:v7];
        v12 = [v11 imageMaskWithColor:qword_100AF7518];
        v13 = qword_100AF7520;
        qword_100AF7520 = v12;
      }

      [(UIImageView *)self->_dragBarView setImage:qword_100AF7520];
    }
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = [v5 layoutDebugMode];
  v7 = [(BKLibraryBookshelfGridBookCell *)self layoutDebugMode];
  v42.receiver = self;
  v42.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v42 applyLayoutAttributes:v4];

  if (v7 != v6)
  {
    if ([v5 layoutDebugMode])
    {
      v8 = +[UIColor redColor];
      v9 = [v8 colorWithAlphaComponent:0.2];
      v10 = [v9 CGColor];
      v11 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      v12 = [v11 layer];
      [v12 setBorderColor:v10];

      v13 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      v14 = [v13 layer];
      v15 = 0.5;
      [v14 setBorderWidth:0.5];

      v16 = +[UIColor redColor];
      v17 = [v16 colorWithAlphaComponent:0.2];
      v18 = [v17 CGColor];
      v19 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
      v20 = [v19 layer];
      [v20 setBorderColor:v18];
    }

    else
    {
      v16 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      v17 = [v16 layer];
      v15 = 0.0;
      [v17 setBorderWidth:0.0];
    }

    v21 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
    v22 = [v21 layer];
    [v22 setBorderWidth:v15];
  }

  v23 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  v24 = [v5 editMode];
  v25 = 0.0;
  if (v24)
  {
    [v23 editModeMargin];
  }

  [(BKLibraryBookshelfListModeBookCell *)self setEditModeMargin:v25];
  [(BKLibraryBookshelfListModeBookCell *)self _updateDragBarImage];
  v26 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  v27 = [v26 isHidden];
  v28 = [v5 lastItem];

  if (v27 != v28)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v29 = [v5 lastItem];
    v30 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
    [v30 setHidden:v29];

    +[CATransaction commit];
  }

  if ([v5 editMode])
  {
    v31 = [v5 editable] ^ 1;
  }

  else
  {
    v31 = 1;
  }

  v32 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  [v32 setHidden:v31];

  v33 = [v23 separatorColor];
  v34 = [v33 CGColor];
  v35 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  [v35 setStrokeColor:v34];

  v36 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (v36)
  {
    [(BKLibraryBookshelfListModeBookCell *)self _updateLibraryAssetText];
    [(BKLibraryBookshelfListModeBookCell *)self layoutIfNeeded];
    v37 = [(BKLibraryBookshelfGridBookCell *)self coverView];
    v38 = [v37 coverLayer];
    v39 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    [(BKLibraryBookshelfListModeBookCell *)self coverArea];
    [v38 setLibraryAsset:v39 size:{v40, v41}];
  }
}

- (id)_checkmarkImageForSelectedState:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  v5 = [v4 selectedCheckmarkImageForSelectedState:v3];

  return v5;
}

- (void)setDataSource:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v6 setDataSource:a3];
  if ([(BKLibraryBookshelfListModeBookCell *)self isSelected])
  {
    +[UIColor bc_booksKeyColor];
  }

  else
  {
    +[UIColor bc_booksTertiaryLabelColor];
  }
  v4 = ;
  v5 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [v5 setTintColor:v4];

  [(BKLibraryBookshelfListModeBookCell *)self _updateDragBarImage];
}

- (void)setSelected:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v7 setSelected:?];
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B15D4;
    v5[3] = &unk_100A044C8;
    v5[4] = self;
    v6 = a3;
    [UIView animateWithDuration:v5 animations:0.2];
  }
}

- (BOOL)shouldDragWithTouch:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  if ([v8 isHidden])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
    [v10 frame];
    v12.x = v5;
    v12.y = v7;
    v9 = CGRectContainsPoint(v13, v12);
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_100ACD3B0 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B17A0;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BKLibraryBookshelfListModeBookCell;
    [(BKLibraryBookshelfGridBookCell *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end