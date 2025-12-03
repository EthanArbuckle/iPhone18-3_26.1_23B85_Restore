@interface BKLibraryBookshelfListModeBookCell
- (BKLibraryBookshelfListModeBookCell)initWithFrame:(CGRect)frame;
- (BOOL)isSupplementalContentPDFPicker;
- (BOOL)shouldDragWithTouch:(id)touch;
- (BOOL)shrinkInEditMode;
- (CGRect)coverArea;
- (CGRect)infoFrame;
- (id)_checkmarkImageForSelectedState:(BOOL)state;
- (id)cellListMetrics;
- (id)dragPreview;
- (id)dragPreviewParametersForDrop:(BOOL)drop;
- (void)_updateDragBarImage;
- (void)_updateLibraryAssetText;
- (void)_updateSeriesSequenceLabel:(BOOL)label;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDataSource:(id)source;
- (void)setLibraryAsset:(id)asset;
- (void)setSelected:(BOOL)selected;
@end

@implementation BKLibraryBookshelfListModeBookCell

- (BKLibraryBookshelfListModeBookCell)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = BKLibraryBookshelfListModeBookCell;
  v3 = [(BKLibraryBookshelfGridBookCell *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    coverLayer = [(BKLibraryBookshelfGridBookCell *)v3 coverLayer];
    [coverLayer setBottomAligned:0];

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

    infoCell = [(BKLibraryBookshelfGridBookCell *)v4 infoCell];
    [infoCell setLeftAlignedCloudIcon:1];

    layer = [(BKLibraryBookshelfListModeBookCell *)v4 layer];
    [layer addSublayer:v4->_separatorline];

    contentView = [(BKLibraryBookshelfListModeBookCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    contentView2 = [(BKLibraryBookshelfListModeBookCell *)v4 contentView];
    [contentView2 addSubview:v4->_authorLabel];

    contentView3 = [(BKLibraryBookshelfListModeBookCell *)v4 contentView];
    [contentView3 addSubview:v4->_dragBarView];

    v21 = +[UIColor bc_booksTableSelectionColor];
    [(BKLibraryBookshelfCollectionViewCell *)v4 setHighlightBackgroundColor:v21];
  }

  return v4;
}

- (void)dealloc
{
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACD3B0];

  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v4 dealloc];
}

- (id)cellListMetrics
{
  objc_opt_class();
  metrics = [(BKLibraryBookshelfGridBookCell *)self metrics];
  v4 = BUDynamicCast();

  return v4;
}

- (id)dragPreview
{
  v3 = [UIDragPreview alloc];
  coverView = [(BKLibraryBookshelfGridBookCell *)self coverView];
  v5 = [v3 initWithView:coverView];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)drop
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  traitCollection = [(BKLibraryBookshelfListModeBookCell *)self traitCollection];
  v6 = [traitCollection traitCollectionByModifyingTraits:&stru_100A06210];

  v7 = +[UIColor bc_booksBackground];
  v8 = [v7 resolvedColorWithTraitCollection:v6];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (CGRect)coverArea
{
  cellListMetrics = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [cellListMetrics smallCoverMargins];
    columnMetrics = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
    [columnMetrics smallMargins];

    [cellListMetrics smallCoverMargins];
    [cellListMetrics smallCoverSize];
  }

  else
  {
    [cellListMetrics coverMargins];
    columnMetrics2 = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
    [columnMetrics2 margins];

    [cellListMetrics coverMargins];
    [cellListMetrics coverSize];
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
  cellListMetrics = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  shrinkInEditMode = [cellListMetrics shrinkInEditMode];

  return shrinkInEditMode;
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
  dataSource = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  supplementalContentPDFPicker = [dataSource supplementalContentPDFPicker];

  return supplementalContentPDFPicker;
}

- (void)layoutSubviews
{
  v225.receiver = self;
  v225.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v225 layoutSubviews];
  cellListMetrics = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode]&& ([(BKLibraryBookshelfListModeBookCell *)self isSelected]& 1) == 0)
  {
    memset(&v224, 0, sizeof(v224));
    [cellListMetrics shrinkAmount];
    v10 = v9;
    [cellListMetrics shrinkAmount];
    CGAffineTransformMakeScale(&v224, v10, v11);
    v223 = v224;
    coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v222 = v223;
    [coverLayer setAffineTransform:&v222];

    [cellListMetrics shrinkAlpha];
    *&v10 = v13;
    coverLayer2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v7 = coverLayer2;
    LODWORD(v8) = LODWORD(v10);
  }

  else
  {
    coverLayer3 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v5 = *&CGAffineTransformIdentity.c;
    *&v224.a = *&CGAffineTransformIdentity.a;
    *&v224.c = v5;
    *&v224.tx = *&CGAffineTransformIdentity.tx;
    [coverLayer3 setAffineTransform:&v224];

    coverLayer2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v7 = coverLayer2;
    LODWORD(v8) = 1.0;
  }

  [coverLayer2 setOpacity:v8];

  [(BKLibraryBookshelfListModeBookCell *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  columnMetrics = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
  [columnMetrics margins];
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
    columnMetrics2 = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
    [columnMetrics2 smallMargins];
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
  [cellListMetrics coverSize];
  v213 = v41;
  [cellListMetrics coverSize];
  v43 = v42;
  [(BKLibraryBookshelfListModeBookCell *)self editModeMargin];
  v45 = v44;
  [cellListMetrics coverMargins];
  v47 = v46;
  [cellListMetrics coverMargins];
  v49 = v48;
  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [cellListMetrics smallCoverSize];
    v213 = v50;
    [cellListMetrics smallCoverSize];
    v52 = MinX + v51;
    [cellListMetrics smallCoverMargins];
    v54 = v52 + v53;
    [cellListMetrics coverMargins];
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
  dragBarView = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  isHidden = [dragBarView isHidden];

  v60 = v57;
  if ((isHidden & 1) == 0)
  {
    dragBarView2 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
    image = [dragBarView2 image];
    [image size];
    v60 = v57 - v63;
  }

  seriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  isHidden2 = [seriesSequenceLabel isHidden];

  if (isHidden2)
  {
    v66 = 0.0;
  }

  else
  {
    seriesSequenceLabelFontAttributes = [cellListMetrics seriesSequenceLabelFontAttributes];
    font = [seriesSequenceLabelFontAttributes font];

    seriesSequenceLabel2 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [seriesSequenceLabel2 sizeThatFits:{v60, 3.40282347e38}];
    v71 = v70;

    v232.origin.y = 0.0;
    v232.origin.x = v56;
    v232.size.width = v60;
    v232.size.height = v71;
    MaxY = CGRectGetMaxY(v232);
    [font descender];
    v74 = MaxY + v73;
    [cellListMetrics seriesSequenceLabelBottomMargin];
    v66 = v74 + v75;
  }

  titleFontAttributes = [cellListMetrics titleFontAttributes];
  font2 = [titleFontAttributes font];

  titleLabel = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  [titleLabel sizeThatFits:{v60, 3.40282347e38}];
  v80 = v79;

  titleLabel2 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  v211 = v57;
  if ([titleLabel2 numberOfLines] == 1)
  {
    isSupplementalContentPDFPicker = [(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker];

    if ((isSupplementalContentPDFPicker & 1) == 0)
    {
      v233.origin.x = v56;
      v233.origin.y = v66;
      v233.size.width = v60;
      v233.size.height = v80;
      v83 = height;
      v84 = x;
      v85 = v66;
      v86 = CGRectGetHeight(v233);
      [font2 bk_heightFromCapLineToDescender];
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

  authorFontAttributes = [cellListMetrics authorFontAttributes];
  font3 = [authorFontAttributes font];

  v234.origin.x = v56;
  v210 = v66;
  v234.origin.y = v66;
  v234.size.width = v60;
  v212 = v80;
  v234.size.height = v80;
  v92 = CGRectGetMaxY(v234);
  [font2 descender];
  v94 = v92 + v93;
  [cellListMetrics titleSpacing];
  v96 = v94 + v95;
  authorLabel = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
  [authorLabel sizeThatFits:{v60, 3.40282347e38}];
  v99 = v98;
  v101 = v100;

  authorLabel2 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
  numberOfLines = [authorLabel2 numberOfLines];

  if (numberOfLines == 1)
  {
    v235.origin.x = v56;
    v235.origin.y = v96;
    v235.size.width = v99;
    v235.size.height = v101;
    v104 = CGRectGetHeight(v235);
    [font3 bk_heightFromCapLineToDescender];
    v96 = v96 - (v104 - v105);
  }

  v236.origin.x = v56;
  v236.origin.y = v96;
  rect = v60;
  v236.size.width = v60;
  v236.size.height = v101;
  v106 = CGRectGetMaxY(v236);
  [font3 descender];
  v108 = v106 + v107;
  [cellListMetrics authorSpacing];
  v110 = v108 + v109;
  [cellListMetrics infoBarHeight];
  v112 = v111;
  [cellListMetrics infoBarDateSpacing];
  v114 = v112 + v113;
  [cellListMetrics infoBarExpectedDateHeight];
  v237.size.height = v114 + v115;
  v237.origin.x = v56;
  v237.origin.y = v110;
  v237.size.width = v57;
  v116 = CGRectGetMaxY(v237);
  infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  showsDateBadge = [infoCell showsDateBadge];

  if ((showsDateBadge & 1) == 0)
  {
    [cellListMetrics infoBarExpectedDateHeight];
    v120 = v119;
    [cellListMetrics infoBarDateSpacing];
    v116 = v116 - (v120 + v121);
  }

  rect_16 = height;
  v122 = x;
  [cellListMetrics coverMargins];
  v124 = v123;
  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    [cellListMetrics smallCoverMargins];
    v126 = round(v213 * 0.5) + v125;
  }

  else
  {
    v126 = v124 + round((v213 - v116) * 0.5);
  }

  seriesSequenceLabel3 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  isHidden3 = [seriesSequenceLabel3 isHidden];

  if ((isHidden3 & 1) == 0)
  {
    [(BKLibraryBookshelfGridBookCell *)self isRTL];
    IMRectFlippedForRTL();
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v136 = v135;
    seriesSequenceLabel4 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [seriesSequenceLabel4 setFrame:{v130, v132, v134, v136}];
  }

  if ([(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
  {
    v238.origin.x = v56;
    v238.origin.y = v210 + v126;
    v238.size.width = rect;
    v238.size.height = v212;
    CGRectGetHeight(v238);
    [font2 bk_heightFromCapLineToDescender];
  }

  v216 = v122;
  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  authorLabel3 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
  [authorLabel3 setFrame:{v139, v141, v143, v145}];

  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v154 = v153;
  titleLabel3 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  [titleLabel3 setFrame:{v148, v150, v152, v154}];

  [(BKLibraryBookshelfGridBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;
  infoCell2 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [infoCell2 setFrame:{v157, v159, v161, v163}];

  if (*&qword_100AF7510 == 0.0)
  {
    dataSource = [(BKLibraryBookshelfGridBookCell *)self dataSource];
    v166 = [dataSource selectedCheckmarkImageForSelectedState:1];
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
  selectIndicatorView = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [selectIndicatorView setFrame:{v170, v172, v174, v176}];

  dragBarView3 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  image2 = [dragBarView3 image];
  [image2 size];

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
  dragBarView4 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  [dragBarView4 setFrame:{v181, v183, v185, v187}];

  v189 = +[UIBezierPath bezierPath];
  separatorline = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  [separatorline lineWidth];
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
  cGPath = [v189 CGPath];
  separatorline2 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  [separatorline2 setPath:cGPath];

  audiobookControl = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  v199 = audiobookControl;
  if (audiobookControl)
  {
    [audiobookControl frame];
    coverLayer4 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    [coverLayer4 frame];
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
      coverLayer5 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
      [coverLayer5 frame];
      IMRectFlippedForRTL();
      [v199 setFrame:?];
    }
  }
}

- (void)_updateSeriesSequenceLabel:(BOOL)label
{
  v7.receiver = self;
  v7.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v7 _updateSeriesSequenceLabel:label];
  seriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  if ([seriesSequenceLabel isHidden])
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

  titleLabel = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
  [titleLabel setNumberOfLines:v5];
}

- (void)_updateLibraryAssetText
{
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (libraryAsset)
  {
    cellListMetrics = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
    titleFontAttributes = [cellListMetrics titleFontAttributes];
    v17 = [titleFontAttributes attributesWithTruncated:1];

    libraryAsset2 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    title = [libraryAsset2 title];
    v8 = [TUIFontSpec attributedStringWith:title attributes:v17];
    titleLabel = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
    [titleLabel setAttributedText:v8];

    if (![(BKLibraryBookshelfListModeBookCell *)self isSupplementalContentPDFPicker])
    {
      cellListMetrics2 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
      authorFontAttributes = [cellListMetrics2 authorFontAttributes];
      v12 = [authorFontAttributes attributesWithTruncated:1];

      libraryAsset3 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
      displayAuthor = [libraryAsset3 displayAuthor];
      v15 = [TUIFontSpec attributedStringWith:displayAuthor attributes:v12];
      authorLabel = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      [authorLabel setAttributedText:v15];
    }

    [(BKLibraryBookshelfListModeBookCell *)self setNeedsLayout];
  }
}

- (void)setLibraryAsset:(id)asset
{
  assetCopy = asset;
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (libraryAsset != assetCopy)
  {
    libraryAsset2 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    [libraryAsset2 removeObserver:self forKeyPath:@"author" context:off_100ACD3B0];
  }

  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v9 setLibraryAsset:assetCopy];
  libraryAsset3 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (libraryAsset3)
  {
    libraryAsset4 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    [libraryAsset4 addObserver:self forKeyPath:@"author" options:0 context:off_100ACD3B0];
  }

  [(BKLibraryBookshelfListModeBookCell *)self _updateLibraryAssetText];
}

- (void)_updateDragBarImage
{
  cellListMetrics = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  if (cellListMetrics)
  {
    v4 = cellListMetrics;
    dataSource = [(BKLibraryBookshelfGridBookCell *)self dataSource];

    if (dataSource)
    {
      cellListMetrics2 = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
      obj = [cellListMetrics2 dragBarTintColor];

      if (!qword_100AF7520 || ([obj isEqual:qword_100AF7518] & 1) == 0)
      {
        objc_storeStrong(&qword_100AF7518, obj);
        v7 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:20.0];
        dataSource2 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
        dragBarName = [dataSource2 dragBarName];
        v10 = [UIImage systemImageNamed:dragBarName];
        v11 = [v10 imageWithConfiguration:v7];
        v12 = [v11 imageMaskWithColor:qword_100AF7518];
        v13 = qword_100AF7520;
        qword_100AF7520 = v12;
      }

      [(UIImageView *)self->_dragBarView setImage:qword_100AF7520];
    }
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  v5 = BUDynamicCast();
  layoutDebugMode = [v5 layoutDebugMode];
  layoutDebugMode2 = [(BKLibraryBookshelfGridBookCell *)self layoutDebugMode];
  v42.receiver = self;
  v42.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v42 applyLayoutAttributes:attributesCopy];

  if (layoutDebugMode2 != layoutDebugMode)
  {
    if ([v5 layoutDebugMode])
    {
      v8 = +[UIColor redColor];
      v9 = [v8 colorWithAlphaComponent:0.2];
      cGColor = [v9 CGColor];
      authorLabel = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      layer = [authorLabel layer];
      [layer setBorderColor:cGColor];

      authorLabel2 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      layer2 = [authorLabel2 layer];
      v15 = 0.5;
      [layer2 setBorderWidth:0.5];

      authorLabel3 = +[UIColor redColor];
      layer4 = [authorLabel3 colorWithAlphaComponent:0.2];
      cGColor2 = [layer4 CGColor];
      titleLabel = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
      layer3 = [titleLabel layer];
      [layer3 setBorderColor:cGColor2];
    }

    else
    {
      authorLabel3 = [(BKLibraryBookshelfListModeBookCell *)self authorLabel];
      layer4 = [authorLabel3 layer];
      v15 = 0.0;
      [layer4 setBorderWidth:0.0];
    }

    titleLabel2 = [(BKLibraryBookshelfListModeBookCell *)self titleLabel];
    layer5 = [titleLabel2 layer];
    [layer5 setBorderWidth:v15];
  }

  cellListMetrics = [(BKLibraryBookshelfListModeBookCell *)self cellListMetrics];
  editMode = [v5 editMode];
  v25 = 0.0;
  if (editMode)
  {
    [cellListMetrics editModeMargin];
  }

  [(BKLibraryBookshelfListModeBookCell *)self setEditModeMargin:v25];
  [(BKLibraryBookshelfListModeBookCell *)self _updateDragBarImage];
  separatorline = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  isHidden = [separatorline isHidden];
  lastItem = [v5 lastItem];

  if (isHidden != lastItem)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    lastItem2 = [v5 lastItem];
    separatorline2 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
    [separatorline2 setHidden:lastItem2];

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

  dragBarView = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  [dragBarView setHidden:v31];

  separatorColor = [cellListMetrics separatorColor];
  cGColor3 = [separatorColor CGColor];
  separatorline3 = [(BKLibraryBookshelfListModeBookCell *)self separatorline];
  [separatorline3 setStrokeColor:cGColor3];

  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (libraryAsset)
  {
    [(BKLibraryBookshelfListModeBookCell *)self _updateLibraryAssetText];
    [(BKLibraryBookshelfListModeBookCell *)self layoutIfNeeded];
    coverView = [(BKLibraryBookshelfGridBookCell *)self coverView];
    coverLayer = [coverView coverLayer];
    libraryAsset2 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    [(BKLibraryBookshelfListModeBookCell *)self coverArea];
    [coverLayer setLibraryAsset:libraryAsset2 size:{v40, v41}];
  }
}

- (id)_checkmarkImageForSelectedState:(BOOL)state
{
  stateCopy = state;
  dataSource = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  v5 = [dataSource selectedCheckmarkImageForSelectedState:stateCopy];

  return v5;
}

- (void)setDataSource:(id)source
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfListModeBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v6 setDataSource:source];
  if ([(BKLibraryBookshelfListModeBookCell *)self isSelected])
  {
    +[UIColor bc_booksKeyColor];
  }

  else
  {
    +[UIColor bc_booksTertiaryLabelColor];
  }
  v4 = ;
  selectIndicatorView = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [selectIndicatorView setTintColor:v4];

  [(BKLibraryBookshelfListModeBookCell *)self _updateDragBarImage];
}

- (void)setSelected:(BOOL)selected
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
    selectedCopy = selected;
    [UIView animateWithDuration:v5 animations:0.2];
  }
}

- (BOOL)shouldDragWithTouch:(id)touch
{
  [touch locationInView:self];
  v5 = v4;
  v7 = v6;
  dragBarView = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
  if ([dragBarView isHidden])
  {
    v9 = 0;
  }

  else
  {
    dragBarView2 = [(BKLibraryBookshelfListModeBookCell *)self dragBarView];
    [dragBarView2 frame];
    v12.x = v5;
    v12.y = v7;
    v9 = CGRectContainsPoint(v13, v12);
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100ACD3B0 == context)
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
    [(BKLibraryBookshelfGridBookCell *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end