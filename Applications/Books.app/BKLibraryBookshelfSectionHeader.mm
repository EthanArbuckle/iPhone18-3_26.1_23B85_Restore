@interface BKLibraryBookshelfSectionHeader
- (BKLibraryBookshelfSectionHeader)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSectionName:(id)name;
@end

@implementation BKLibraryBookshelfSectionHeader

- (BKLibraryBookshelfSectionHeader)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfSectionHeader;
  v3 = [(BKLibraryBookshelfSectionHeader *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    sectionNameLabel = v3->_sectionNameLabel;
    v3->_sectionNameLabel = v4;

    v6 = v3->_sectionNameLabel;
    accessibilityTraits = [(UILabel *)v6 accessibilityTraits];
    [(UILabel *)v6 setAccessibilityTraits:UIAccessibilityTraitHeader | accessibilityTraits];
    v8 = +[CAShapeLayer layer];
    separatorLine = v3->_separatorLine;
    v3->_separatorLine = v8;

    v10 = +[UIScreen mainScreen];
    [v10 scale];
    [(CAShapeLayer *)v3->_separatorLine setLineWidth:1.0 / v11];

    [(CAShapeLayer *)v3->_separatorLine setHidden:1];
    [(BKLibraryBookshelfSectionHeader *)v3 addSubview:v3->_sectionNameLabel];
    layer = [(BKLibraryBookshelfSectionHeader *)v3 layer];
    [layer addSublayer:v3->_separatorLine];
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
  sectionNameLabel = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
  [sectionNameLabel setFrame:{v18, v20, v22, v24}];

  v26 = +[UIBezierPath bezierPath];
  [(BKLibraryBookshelfSectionHeader *)self isRTL];
  IMRectFlippedForRTL();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  separatorLine = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [separatorLine lineWidth];
  v43 = v36 * 0.5;

  LOBYTE(separatorLine) = [(BKLibraryBookshelfSectionHeader *)self bottomSeparator];
  v44 = v28;
  v51.origin.x = v28;
  v51.origin.y = v30;
  v45 = v34;
  v51.size.width = v32;
  v51.size.height = v34;
  MinX = CGRectGetMinX(v51);
  v38 = MinX;
  if (separatorLine)
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
  cGPath = [v26 CGPath];
  separatorLine2 = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [separatorLine2 setPath:cGPath];
}

- (void)setSectionName:(id)name
{
  v4 = [name copy];
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

  useAllCaps = [(BKLibraryBookshelfSectionHeader *)self useAllCaps];
  v12 = self->_sectionName;
  if (useAllCaps)
  {
    localizedUppercaseString = [(NSString *)v12 localizedUppercaseString];
  }

  else
  {
    localizedUppercaseString = v12;
  }

  v18 = localizedUppercaseString;
  v14 = [NSAttributedString alloc];
  fontAttrs = [(BKLibraryBookshelfSectionHeader *)self fontAttrs];
  v16 = [v14 initWithString:v18 attributes:fontAttrs];
  sectionNameLabel = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
  [sectionNameLabel setAttributedText:v16];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v36.receiver = self;
  v36.super_class = BKLibraryBookshelfSectionHeader;
  attributesCopy = attributes;
  [(BKLibraryBookshelfSectionHeader *)&v36 applyLayoutAttributes:attributesCopy];
  [(BKLibraryBookshelfSectionHeader *)self setIsRTL:[(BKLibraryBookshelfSectionHeader *)self effectiveUserInterfaceLayoutDirection:v36.receiver]== 1];
  objc_opt_class();
  v5 = BUDynamicCast();

  if ([v5 layoutDebugMode])
  {
    v6 = +[UIColor redColor];
    v7 = [v6 colorWithAlphaComponent:0.2];
    cGColor = [v7 CGColor];
    layer = [(BKLibraryBookshelfSectionHeader *)self layer];
    [layer setBorderColor:cGColor];

    layer2 = [(BKLibraryBookshelfSectionHeader *)self layer];
    v11 = 0.5;
    [layer2 setBorderWidth:0.5];

    layer4 = +[UIColor redColor];
    v13 = [layer4 colorWithAlphaComponent:0.2];
    cGColor2 = [v13 CGColor];
    sectionNameLabel = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
    layer3 = [sectionNameLabel layer];
    [layer3 setBorderColor:cGColor2];
  }

  else
  {
    layer4 = [(BKLibraryBookshelfSectionHeader *)self layer];
    v11 = 0.0;
    [layer4 setBorderWidth:0.0];
  }

  sectionNameLabel2 = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
  layer5 = [sectionNameLabel2 layer];
  [layer5 setBorderWidth:v11];

  fontAttrs = [v5 fontAttrs];
  [(BKLibraryBookshelfSectionHeader *)self setFontAttrs:fontAttrs];

  -[BKLibraryBookshelfSectionHeader setUseAllCaps:](self, "setUseAllCaps:", [v5 useAllCaps]);
  columnMetrics = [v5 columnMetrics];
  [columnMetrics margins];
  [(BKLibraryBookshelfSectionHeader *)self setMargins:?];

  useAllCaps = [(BKLibraryBookshelfSectionHeader *)self useAllCaps];
  sectionName = self->_sectionName;
  if (useAllCaps)
  {
    localizedUppercaseString = [(NSString *)sectionName localizedUppercaseString];
  }

  else
  {
    localizedUppercaseString = sectionName;
  }

  v24 = localizedUppercaseString;
  if (localizedUppercaseString)
  {
    v25 = [NSAttributedString alloc];
    fontAttrs2 = [(BKLibraryBookshelfSectionHeader *)self fontAttrs];
    v27 = [v25 initWithString:v24 attributes:fontAttrs2];
    sectionNameLabel3 = [(BKLibraryBookshelfSectionHeader *)self sectionNameLabel];
    [sectionNameLabel3 setAttributedText:v27];
  }

  mainHeaderMetrics = [v5 mainHeaderMetrics];
  separatorLineColor = [mainHeaderMetrics separatorLineColor];
  cGColor3 = [separatorLineColor CGColor];
  separatorLine = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [separatorLine setStrokeColor:cGColor3];

  mainHeaderMetrics2 = [v5 mainHeaderMetrics];
  if (mainHeaderMetrics2)
  {
    firstItem = [v5 firstItem];
  }

  else
  {
    firstItem = 1;
  }

  separatorLine2 = [(BKLibraryBookshelfSectionHeader *)self separatorLine];
  [separatorLine2 setHidden:firstItem];
}

@end