@interface BKLibraryBookshelfSectionHeader
- (BKLibraryBookshelfSectionHeader)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSectionName:(id)a3;
@end

@implementation BKLibraryBookshelfSectionHeader

- (BKLibraryBookshelfSectionHeader)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfSectionHeader;
  v3 = [(BKLibraryBookshelfSectionHeader *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    sectionNameLabel = v3->_sectionNameLabel;
    v3->_sectionNameLabel = v4;

    v6 = v3->_sectionNameLabel;
    v7 = [(UILabel *)v6 accessibilityTraits];
    [(UILabel *)v6 setAccessibilityTraits:UIAccessibilityTraitHeader | v7];
    v8 = +[CAShapeLayer layer];
    separatorLine = v3->_separatorLine;
    v3->_separatorLine = v8;

    v10 = +[UIScreen mainScreen];
    [v10 scale];
    [(CAShapeLayer *)v3->_separatorLine setLineWidth:1.0 / v11];

    [(CAShapeLayer *)v3->_separatorLine setHidden:1];
    [(BKLibraryBookshelfSectionHeader *)v3 addSubview:v3->_sectionNameLabel];
    v12 = [(BKLibraryBookshelfSectionHeader *)v3 layer];
    [v12 addSublayer:v3->_separatorLine];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BKLibraryBookshelfSectionHeader;
  [(BKLibraryBookshelfSectionHeader *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = BKLibraryBookshelfSectionHeader;
  [(BKLibraryBookshelfSectionHeader *)&v46 layoutSubviews];
  [(BKLibraryBookshelfSectionHeader *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BKLibraryBookshelfSectionHeader *)self margins];
  v12 = v11;
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  v48 = CGRectInset(v47, v12, 0.0);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  CGRectGetMinX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  CGRectGetWidth(v49);
  [(BKLibraryBookshelfSectionHeader *)self isRTL];
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  CGRectGetHeight(v50);
  IMRectFlippedForRTL();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = +[UIBezierPath bezierPath];
  [(BKLibraryBookshelfSectionHeader *)self isRTL];
  IMRectFlippedForRTL();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [v35 lineWidth];
  v43 = v36 * 0.5;

  LOBYTE(v35) = [(BKLibraryBookshelfSectionHeader *)self bottomSeparator];
  v44 = v28;
  v51.origin.x = v28;
  v51.origin.y = v30;
  v45 = v34;
  v51.size.width = v32;
  v51.size.height = v34;
  MinX = CGRectGetMinX(v51);
  v38 = MinX;
  if (v35)
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    [v26 moveToPoint:{v38, CGRectGetMaxY(v52) - v43}];
    v53.origin.x = v28;
    v53.origin.y = v30;
    v53.size.width = v32;
    v53.size.height = v45;
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v40 = CGRectGetMaxY(v54) - v43;
  }

  else
  {
    v40 = v43;
    [v26 moveToPoint:{MinX, v43}];
    v55.origin.x = v44;
    v55.origin.y = v30;
    v55.size.width = v32;
    v55.size.height = v45;
    MaxX = CGRectGetMaxX(v55);
  }

  [v26 addLineToPoint:{MaxX, v40}];
  v41 = [v26 CGPath];
  v42 = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [v42 setPath:v41];
}

- (void)setSectionName:(id)a3
{
  v4 = [a3 copy];
  sectionName = self->_sectionName;
  self->_sectionName = v4;

  if ([(NSString *)self->_sectionName isEqualToString:BKLibrarySortLastUnknownAuthorString])
  {
    v6 = +[BKLibraryAsset unknownAuthor];
  }

  else
  {
    if (![(NSString *)self->_sectionName isEqualToString:BKLibrarySortLastMultipleAuthorString])
    {
      goto LABEL_6;
    }

    v6 = +[BKLibraryAsset multipleAuthors];
  }

  v7 = self->_sectionName;
  self->_sectionName = v6;

LABEL_6:
  if (!self->_sectionName)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Unknown" value:&stru_100A30A68 table:0];
    v10 = self->_sectionName;
    self->_sectionName = v9;
  }

  v11 = [(BKLibraryBookshelfSectionHeader *)self useAllCaps];
  v12 = self->_sectionName;
  if (v11)
  {
    v13 = [(NSString *)v12 localizedUppercaseString];
  }

  else
  {
    v13 = v12;
  }

  v18 = v13;
  v14 = [NSAttributedString alloc];
  v15 = [(BKLibraryBookshelfSectionHeader *)self fontAttrs];
  v16 = [v14 initWithString:v18 attributes:v15];
  v17 = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
  [v17 setAttributedText:v16];
}

- (void)applyLayoutAttributes:(id)a3
{
  v36.receiver = self;
  v36.super_class = BKLibraryBookshelfSectionHeader;
  v4 = a3;
  [(BKLibraryBookshelfSectionHeader *)&v36 applyLayoutAttributes:v4];
  [(BKLibraryBookshelfSectionHeader *)self setIsRTL:[(BKLibraryBookshelfSectionHeader *)self effectiveUserInterfaceLayoutDirection:v36.receiver]== 1];
  objc_opt_class();
  v5 = BUDynamicCast();

  if ([v5 layoutDebugMode])
  {
    v6 = +[UIColor redColor];
    v7 = [v6 colorWithAlphaComponent:0.2];
    v8 = [v7 CGColor];
    v9 = [(BKLibraryBookshelfSectionHeader *)self layer];
    [v9 setBorderColor:v8];

    v10 = [(BKLibraryBookshelfSectionHeader *)self layer];
    v11 = 0.5;
    [v10 setBorderWidth:0.5];

    v12 = +[UIColor redColor];
    v13 = [v12 colorWithAlphaComponent:0.2];
    v14 = [v13 CGColor];
    v15 = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
    v16 = [v15 layer];
    [v16 setBorderColor:v14];
  }

  else
  {
    v12 = [(BKLibraryBookshelfSectionHeader *)self layer];
    v11 = 0.0;
    [v12 setBorderWidth:0.0];
  }

  v17 = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
  v18 = [v17 layer];
  [v18 setBorderWidth:v11];

  v19 = [v5 fontAttrs];
  [(BKLibraryBookshelfSectionHeader *)self setFontAttrs:v19];

  -[BKLibraryBookshelfSectionHeader setUseAllCaps:](self, "setUseAllCaps:", [v5 useAllCaps]);
  v20 = [v5 columnMetrics];
  [v20 margins];
  [(BKLibraryBookshelfSectionHeader *)self setMargins:?];

  v21 = [(BKLibraryBookshelfSectionHeader *)self useAllCaps];
  sectionName = self->_sectionName;
  if (v21)
  {
    v23 = [(NSString *)sectionName localizedUppercaseString];
  }

  else
  {
    v23 = sectionName;
  }

  v24 = v23;
  if (v23)
  {
    v25 = [NSAttributedString alloc];
    v26 = [(BKLibraryBookshelfSectionHeader *)self fontAttrs];
    v27 = [v25 initWithString:v24 attributes:v26];
    v28 = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
    [v28 setAttributedText:v27];
  }

  v29 = [v5 mainHeaderMetrics];
  v30 = [v29 separatorLineColor];
  v31 = [v30 CGColor];
  v32 = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [v32 setStrokeColor:v31];

  v33 = [v5 mainHeaderMetrics];
  if (v33)
  {
    v34 = [v5 firstItem];
  }

  else
  {
    v34 = 1;
  }

  v35 = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [v35 setHidden:v34];
}

@end