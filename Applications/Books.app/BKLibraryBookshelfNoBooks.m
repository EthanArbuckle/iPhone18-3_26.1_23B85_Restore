@interface BKLibraryBookshelfNoBooks
+ (id)_createDescriptionDetailLabel:(CGRect)a3;
+ (id)_createDescriptionHeaderLabel:(CGRect)a3;
+ (void)_layoutDescriptionHeader:(id)a3 detail:(id)a4 topMargin:(double)a5 descWidth:(double)a6 spacing:(double)a7 inRect:(CGRect)a8;
+ (void)adjustHeight:(id)a3 withDataSource:(id)a4;
- (BKLibraryBookshelfNoBooks)initWithFrame:(CGRect)a3;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (UILabel)descriptionDetailLabel;
- (UILabel)descriptionHeaderLabel;
- (void)_updateLabels;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setDataSource:(id)a3;
@end

@implementation BKLibraryBookshelfNoBooks

+ (id)_createDescriptionHeaderLabel:(CGRect)a3
{
  v3 = [[UILabel alloc] initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  [v3 setNumberOfLines:0];

  return v3;
}

+ (id)_createDescriptionDetailLabel:(CGRect)a3
{
  v3 = [[UILabel alloc] initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  [v3 setNumberOfLines:0];

  return v3;
}

+ (void)adjustHeight:(id)a3 withDataSource:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 mainHeaderMetrics];
  v33 = [v7 noBooksDescriptionHeaderFontAttributes];

  v8 = [v6 mainHeaderMetrics];
  v9 = [v8 noBooksDescriptionFontAttributes];

  [v6 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v6 mainHeaderMetrics];
  [v18 noBooksDescriptionTopMargin];
  v20 = v19;

  v21 = [v6 mainHeaderMetrics];
  [v21 noBooksDescriptionSpacing];
  v23 = v22;

  v24 = [v6 mainHeaderMetrics];
  [v24 noBooksDescriptionWidth];
  v26 = v25;

  v27 = [BKLibraryBookshelfNoBooks _createDescriptionHeaderLabel:v11, v13, v15, v17];
  v28 = [BKLibraryBookshelfNoBooks _createDescriptionDetailLabel:v11, v13, v15, v17];
  v29 = [v5 noBooksDescriptionHeader];
  v30 = [TUIFontSpec attributedStringWith:v29 attributes:v33];
  [v27 setAttributedText:v30];

  v31 = [v5 noBooksDescription];

  v32 = [TUIFontSpec attributedStringWith:v31 attributes:v9];
  [v28 setAttributedText:v32];

  [BKLibraryBookshelfNoBooks _layoutDescriptionHeader:v27 detail:v28 topMargin:v20 descWidth:v26 spacing:v23 inRect:v11, v13, v15, v17];
  [v28 frame];
  [v6 setFrame:{v11, v13, v15, CGRectGetMaxY(v35) * 1.2}];
}

+ (void)_layoutDescriptionHeader:(id)a3 detail:(id)a4 topMargin:(double)a5 descWidth:(double)a6 spacing:(double)a7 inRect:(CGRect)a8
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v33 = a3;
  v16 = a4;
  v17 = [v33 attributedText];
  if (v17)
  {
    v18 = v17;
    v19 = [v16 attributedText];

    if (v19)
    {
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v20 = CGRectGetHeight(v35);
      [v33 sizeThatFits:{width, CGRectZero.size.height}];
      rect = v21;
      v32 = a7;
      v22 = round(v20 * a5 / 100.0);
      [v33 setFrame:{(width - width) * 0.5, v22, width, v21}];
      v23 = [v16 attributedText];
      [v23 size];
      v24 = a6;
      v26 = v25;

      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v27 = CGRectGetWidth(v36);
      if (v27 >= v26 / v24)
      {
        v28 = v26 / v24;
      }

      else
      {
        v28 = v27;
      }

      [v16 sizeThatFits:{v28, 1.79769313e308}];
      v30 = v29;
      v37.origin.x = (width - width) * 0.5;
      v37.origin.y = v22;
      v37.size.width = width;
      v37.size.height = rect;
      [v16 setFrame:{(width - v28) * 0.5, CGRectGetMaxY(v37) + v32, v28, v30}];
    }
  }
}

- (BKLibraryBookshelfNoBooks)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfNoBooks;
  v7 = [(BKLibraryBookshelfNoBooks *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [BKLibraryBookshelfNoBooks _createDescriptionHeaderLabel:x, y, width, height];
    [(BKLibraryBookshelfNoBooks *)v7 addSubview:v8];
    [(BKLibraryBookshelfNoBooks *)v7 setDescriptionHeaderLabel:v8];
    v9 = [BKLibraryBookshelfNoBooks _createDescriptionDetailLabel:x, y, width, height];
    [(BKLibraryBookshelfNoBooks *)v7 addSubview:v9];
    [(BKLibraryBookshelfNoBooks *)v7 setDescriptionDetailLabel:v9];
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
  v11 = [(BKLibraryBookshelfNoBooks *)self descriptionHeaderLabel];
  v12 = [(BKLibraryBookshelfNoBooks *)self descriptionDetailLabel];
  [(BKLibraryBookshelfNoBooks *)self descriptionTopMargin];
  v14 = v13;
  [(BKLibraryBookshelfNoBooks *)self descriptionWidth];
  v16 = v15;
  [(BKLibraryBookshelfNoBooks *)self descriptionSpacing];
  [BKLibraryBookshelfNoBooks _layoutDescriptionHeader:v11 detail:v12 topMargin:v14 descWidth:v16 spacing:v17 inRect:v4, v6, v8, v10];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BKLibraryBookshelfNoBooks;
  [(BKLibraryBookshelfNoBooks *)&v16 applyLayoutAttributes:v4];
  v5 = v4;
  if ([v5 layoutDebugMode])
  {
    v6 = +[UIColor redColor];
    v7 = [v6 colorWithAlphaComponent:0.2];
    v8 = [v7 CGColor];
    v9 = [(BKLibraryBookshelfNoBooks *)self layer];
    [v9 setBorderColor:v8];

    v10 = 0.5;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [(BKLibraryBookshelfNoBooks *)self layer];
  [v11 setBorderWidth:v10];

  v12 = [v5 mainHeaderMetrics];
  [(BKLibraryBookshelfNoBooks *)self setMainHeaderMetrics:v12];

  v13 = [v5 mainHeaderMetrics];
  [v13 noBooksDescriptionTopMargin];
  [(BKLibraryBookshelfNoBooks *)self setDescriptionTopMargin:?];

  v14 = [v5 mainHeaderMetrics];
  [v14 noBooksDescriptionSpacing];
  [(BKLibraryBookshelfNoBooks *)self setDescriptionSpacing:?];

  v15 = [v5 mainHeaderMetrics];

  [v15 noBooksDescriptionWidth];
  [(BKLibraryBookshelfNoBooks *)self setDescriptionWidth:?];

  [(BKLibraryBookshelfNoBooks *)self _updateLabels];
}

- (void)_updateLabels
{
  v3 = [(BKLibraryBookshelfNoBooks *)self dataSource];

  if (v3)
  {
    v4 = [(BKLibraryBookshelfNoBooks *)self dataSource];
    v5 = [v4 noBooksDescriptionHeader];
    v6 = [(BKLibraryBookshelfNoBooks *)self mainHeaderMetrics];
    v7 = [v6 noBooksDescriptionHeaderFontAttributes];
    v8 = [TUIFontSpec attributedStringWith:v5 attributes:v7];
    v9 = [(BKLibraryBookshelfNoBooks *)self descriptionHeaderLabel];
    [v9 setAttributedText:v8];

    v10 = [(BKLibraryBookshelfNoBooks *)self dataSource];
    v11 = [v10 noBooksDescription];
    v12 = [(BKLibraryBookshelfNoBooks *)self mainHeaderMetrics];
    v13 = [v12 noBooksDescriptionFontAttributes];
    v14 = [TUIFontSpec attributedStringWith:v11 attributes:v13];
    v15 = [(BKLibraryBookshelfNoBooks *)self descriptionDetailLabel];
    [v15 setAttributedText:v14];

    [(BKLibraryBookshelfNoBooks *)self setNeedsLayout];
  }
}

- (void)setDataSource:(id)a3
{
  objc_storeWeak(&self->_dataSource, a3);

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