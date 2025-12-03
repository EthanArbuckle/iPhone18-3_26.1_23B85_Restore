@interface BKLibraryBookshelfNoBooks
+ (id)_createDescriptionDetailLabel:(CGRect)label;
+ (id)_createDescriptionHeaderLabel:(CGRect)label;
+ (void)_layoutDescriptionHeader:(id)header detail:(id)detail topMargin:(double)margin descWidth:(double)width spacing:(double)spacing inRect:(CGRect)rect;
+ (void)adjustHeight:(id)height withDataSource:(id)source;
- (BKLibraryBookshelfNoBooks)initWithFrame:(CGRect)frame;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (UILabel)descriptionDetailLabel;
- (UILabel)descriptionHeaderLabel;
- (void)_updateLabels;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setDataSource:(id)source;
@end

@implementation BKLibraryBookshelfNoBooks

+ (id)_createDescriptionHeaderLabel:(CGRect)label
{
  v3 = [[UILabel alloc] initWithFrame:{label.origin.x, label.origin.y, label.size.width, label.size.height}];
  [v3 setNumberOfLines:0];

  return v3;
}

+ (id)_createDescriptionDetailLabel:(CGRect)label
{
  v3 = [[UILabel alloc] initWithFrame:{label.origin.x, label.origin.y, label.size.width, label.size.height}];
  [v3 setNumberOfLines:0];

  return v3;
}

+ (void)adjustHeight:(id)height withDataSource:(id)source
{
  sourceCopy = source;
  heightCopy = height;
  mainHeaderMetrics = [heightCopy mainHeaderMetrics];
  noBooksDescriptionHeaderFontAttributes = [mainHeaderMetrics noBooksDescriptionHeaderFontAttributes];

  mainHeaderMetrics2 = [heightCopy mainHeaderMetrics];
  noBooksDescriptionFontAttributes = [mainHeaderMetrics2 noBooksDescriptionFontAttributes];

  [heightCopy frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  mainHeaderMetrics3 = [heightCopy mainHeaderMetrics];
  [mainHeaderMetrics3 noBooksDescriptionTopMargin];
  v20 = v19;

  mainHeaderMetrics4 = [heightCopy mainHeaderMetrics];
  [mainHeaderMetrics4 noBooksDescriptionSpacing];
  v23 = v22;

  mainHeaderMetrics5 = [heightCopy mainHeaderMetrics];
  [mainHeaderMetrics5 noBooksDescriptionWidth];
  v26 = v25;

  v27 = [BKLibraryBookshelfNoBooks _createDescriptionHeaderLabel:v11, v13, v15, v17];
  v28 = [BKLibraryBookshelfNoBooks _createDescriptionDetailLabel:v11, v13, v15, v17];
  noBooksDescriptionHeader = [sourceCopy noBooksDescriptionHeader];
  v30 = [TUIFontSpec attributedStringWith:noBooksDescriptionHeader attributes:noBooksDescriptionHeaderFontAttributes];
  [v27 setAttributedText:v30];

  noBooksDescription = [sourceCopy noBooksDescription];

  v32 = [TUIFontSpec attributedStringWith:noBooksDescription attributes:noBooksDescriptionFontAttributes];
  [v28 setAttributedText:v32];

  [BKLibraryBookshelfNoBooks _layoutDescriptionHeader:v27 detail:v28 topMargin:v20 descWidth:v26 spacing:v23 inRect:v11, v13, v15, v17];
  [v28 frame];
  [heightCopy setFrame:{v11, v13, v15, CGRectGetMaxY(v35) * 1.2}];
}

+ (void)_layoutDescriptionHeader:(id)header detail:(id)detail topMargin:(double)margin descWidth:(double)width spacing:(double)spacing inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  headerCopy = header;
  detailCopy = detail;
  attributedText = [headerCopy attributedText];
  if (attributedText)
  {
    v18 = attributedText;
    attributedText2 = [detailCopy attributedText];

    if (attributedText2)
    {
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v20 = CGRectGetHeight(v35);
      [headerCopy sizeThatFits:{width, CGRectZero.size.height}];
      rect = v21;
      spacingCopy = spacing;
      v22 = round(v20 * margin / 100.0);
      [headerCopy setFrame:{(width - width) * 0.5, v22, width, v21}];
      attributedText3 = [detailCopy attributedText];
      [attributedText3 size];
      widthCopy = width;
      v26 = v25;

      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v27 = CGRectGetWidth(v36);
      if (v27 >= v26 / widthCopy)
      {
        v28 = v26 / widthCopy;
      }

      else
      {
        v28 = v27;
      }

      [detailCopy sizeThatFits:{v28, 1.79769313e308}];
      v30 = v29;
      v37.origin.x = (width - width) * 0.5;
      v37.origin.y = v22;
      v37.size.width = width;
      v37.size.height = rect;
      [detailCopy setFrame:{(width - v28) * 0.5, CGRectGetMaxY(v37) + spacingCopy, v28, v30}];
    }
  }
}

- (BKLibraryBookshelfNoBooks)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfNoBooks;
  v7 = [(BKLibraryBookshelfNoBooks *)&v11 initWithFrame:?];
  if (v7)
  {
    height = [BKLibraryBookshelfNoBooks _createDescriptionHeaderLabel:x, y, width, height];
    [(BKLibraryBookshelfNoBooks *)v7 addSubview:height];
    [(BKLibraryBookshelfNoBooks *)v7 setDescriptionHeaderLabel:height];
    height2 = [BKLibraryBookshelfNoBooks _createDescriptionDetailLabel:x, y, width, height];
    [(BKLibraryBookshelfNoBooks *)v7 addSubview:height2];
    [(BKLibraryBookshelfNoBooks *)v7 setDescriptionDetailLabel:height2];
  }

  return v7;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = BKLibraryBookshelfNoBooks;
  [(BKLibraryBookshelfNoBooks *)&v18 layoutSubviews];
  [(BKLibraryBookshelfNoBooks *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  descriptionHeaderLabel = [(BKLibraryBookshelfNoBooks *)self descriptionHeaderLabel];
  descriptionDetailLabel = [(BKLibraryBookshelfNoBooks *)self descriptionDetailLabel];
  [(BKLibraryBookshelfNoBooks *)self descriptionTopMargin];
  v14 = v13;
  [(BKLibraryBookshelfNoBooks *)self descriptionWidth];
  v16 = v15;
  [(BKLibraryBookshelfNoBooks *)self descriptionSpacing];
  [BKLibraryBookshelfNoBooks _layoutDescriptionHeader:descriptionHeaderLabel detail:descriptionDetailLabel topMargin:v14 descWidth:v16 spacing:v17 inRect:v4, v6, v8, v10];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = BKLibraryBookshelfNoBooks;
  [(BKLibraryBookshelfNoBooks *)&v16 applyLayoutAttributes:attributesCopy];
  v5 = attributesCopy;
  if ([v5 layoutDebugMode])
  {
    v6 = +[UIColor redColor];
    v7 = [v6 colorWithAlphaComponent:0.2];
    cGColor = [v7 CGColor];
    layer = [(BKLibraryBookshelfNoBooks *)self layer];
    [layer setBorderColor:cGColor];

    v10 = 0.5;
  }

  else
  {
    v10 = 0.0;
  }

  layer2 = [(BKLibraryBookshelfNoBooks *)self layer];
  [layer2 setBorderWidth:v10];

  mainHeaderMetrics = [v5 mainHeaderMetrics];
  [(BKLibraryBookshelfNoBooks *)self setMainHeaderMetrics:mainHeaderMetrics];

  mainHeaderMetrics2 = [v5 mainHeaderMetrics];
  [mainHeaderMetrics2 noBooksDescriptionTopMargin];
  [(BKLibraryBookshelfNoBooks *)self setDescriptionTopMargin:?];

  mainHeaderMetrics3 = [v5 mainHeaderMetrics];
  [mainHeaderMetrics3 noBooksDescriptionSpacing];
  [(BKLibraryBookshelfNoBooks *)self setDescriptionSpacing:?];

  mainHeaderMetrics4 = [v5 mainHeaderMetrics];

  [mainHeaderMetrics4 noBooksDescriptionWidth];
  [(BKLibraryBookshelfNoBooks *)self setDescriptionWidth:?];

  [(BKLibraryBookshelfNoBooks *)self _updateLabels];
}

- (void)_updateLabels
{
  dataSource = [(BKLibraryBookshelfNoBooks *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(BKLibraryBookshelfNoBooks *)self dataSource];
    noBooksDescriptionHeader = [dataSource2 noBooksDescriptionHeader];
    mainHeaderMetrics = [(BKLibraryBookshelfNoBooks *)self mainHeaderMetrics];
    noBooksDescriptionHeaderFontAttributes = [mainHeaderMetrics noBooksDescriptionHeaderFontAttributes];
    v8 = [TUIFontSpec attributedStringWith:noBooksDescriptionHeader attributes:noBooksDescriptionHeaderFontAttributes];
    descriptionHeaderLabel = [(BKLibraryBookshelfNoBooks *)self descriptionHeaderLabel];
    [descriptionHeaderLabel setAttributedText:v8];

    dataSource3 = [(BKLibraryBookshelfNoBooks *)self dataSource];
    noBooksDescription = [dataSource3 noBooksDescription];
    mainHeaderMetrics2 = [(BKLibraryBookshelfNoBooks *)self mainHeaderMetrics];
    noBooksDescriptionFontAttributes = [mainHeaderMetrics2 noBooksDescriptionFontAttributes];
    v14 = [TUIFontSpec attributedStringWith:noBooksDescription attributes:noBooksDescriptionFontAttributes];
    descriptionDetailLabel = [(BKLibraryBookshelfNoBooks *)self descriptionDetailLabel];
    [descriptionDetailLabel setAttributedText:v14];

    [(BKLibraryBookshelfNoBooks *)self setNeedsLayout];
  }
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);

  [(BKLibraryBookshelfNoBooks *)self _updateLabels];
}

- (BKLibraryBookshelfSupplementaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (UILabel)descriptionHeaderLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionHeaderLabel);

  return WeakRetained;
}

- (UILabel)descriptionDetailLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionDetailLabel);

  return WeakRetained;
}

@end