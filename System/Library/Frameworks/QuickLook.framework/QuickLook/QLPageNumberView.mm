@interface QLPageNumberView
- (CGPath)_copyMutablePathForRoundedRect:(CGRect)rect radius:(double)radius inverted:(BOOL)inverted;
- (QLPageNumberView)initWithFrame:(CGRect)frame;
- (id)_indexFormatter;
- (void)_updateString;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setPageCount:(int64_t)count;
- (void)setPageNumber:(int64_t)number;
- (void)sizeToFit;
@end

@implementation QLPageNumberView

- (QLPageNumberView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = QLPageNumberView;
  v3 = [(QLPageNumberView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v3->_label;
    v3->_label = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_label setTextColor:labelColor];

    [(UILabel *)v3->_label setFont:v6];
    [(UILabel *)v3->_label setTextAlignment:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_label setBackgroundColor:clearColor];

    [(QLPageNumberView *)v3 addSubview:v3->_label];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(QLPageNumberView *)v3 setBackgroundColor:clearColor2];
  }

  return v3;
}

- (id)_indexFormatter
{
  indexFormatter = self->_indexFormatter;
  if (!indexFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v5 = self->_indexFormatter;
    self->_indexFormatter = v4;

    v6 = self->_indexFormatter;
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [(NSNumberFormatter *)v6 setLocale:currentLocale];

    [(NSNumberFormatter *)self->_indexFormatter setGeneratesDecimalNumbers:1];
    [(NSNumberFormatter *)self->_indexFormatter setNumberStyle:1];
    indexFormatter = self->_indexFormatter;
  }

  return indexFormatter;
}

- (void)_updateString
{
  _indexFormatter = [(QLPageNumberView *)self _indexFormatter];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_pageNumber];
  v4 = [_indexFormatter stringFromNumber:v3];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_pageCount];
  v6 = [_indexFormatter stringFromNumber:v5];

  v7 = MEMORY[0x277CCACA8];
  v8 = QLLocalizedString();
  v9 = [v7 localizedStringWithFormat:v8, objc_msgSend(v4, "intValue"), objc_msgSend(v6, "intValue")];

  [(UILabel *)self->_label setText:v9];
  [(UILabel *)self->_backgroundLabel setText:v9];
  [(QLPageNumberView *)self setNeedsLayout];
}

- (void)setPageNumber:(int64_t)number
{
  if (self->_pageNumber != number)
  {
    self->_pageNumber = number;
    [(QLPageNumberView *)self _updateString];

    [(QLPageNumberView *)self setNeedsDisplay];
  }
}

- (void)setPageCount:(int64_t)count
{
  if (self->_pageCount != count)
  {
    self->_pageCount = count;
    [(QLPageNumberView *)self _updateString];

    [(QLPageNumberView *)self setNeedsDisplay];
  }
}

- (void)sizeToFit
{
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label frame];
  [(QLPageNumberView *)self frame];

  [(QLPageNumberView *)self setFrame:?];
}

- (void)layoutSubviews
{
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label frame];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_label setFrame:12.0, 6.0];
  backgroundLabel = self->_backgroundLabel;

  [(UILabel *)backgroundLabel setFrame:12.0, 7.0, v4, v6];
}

- (CGPath)_copyMutablePathForRoundedRect:(CGRect)rect radius:(double)radius inverted:(BOOL)inverted
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectInset(v23, radius, radius);
  v12 = v24.origin.x;
  v13 = x + width;
  v14 = v24.origin.y;
  v21 = v24.origin.y + v24.size.height;
  v22 = v24.origin.x + v24.size.width;
  v15 = y + height;
  CGPathMoveToPoint(Mutable, 0, v24.origin.x, y);
  if (inverted)
  {
    CGPathAddArcToPoint(Mutable, 0, x, y, x, v14, radius);
    CGPathAddLineToPoint(Mutable, 0, x, v21);
    CGPathAddArcToPoint(Mutable, 0, x, v15, v12, v15, radius);
    CGPathAddLineToPoint(Mutable, 0, v22, v15);
    CGPathAddArcToPoint(Mutable, 0, v13, v15, v13, v21, radius);
    CGPathAddLineToPoint(Mutable, 0, v13, v14);
    v16 = Mutable;
    v17 = x + width;
    v18 = y;
    v19 = v22;
  }

  else
  {
    CGPathAddLineToPoint(Mutable, 0, v22, y);
    CGPathAddArcToPoint(Mutable, 0, v13, y, v13, v14, radius);
    CGPathAddLineToPoint(Mutable, 0, v13, v21);
    CGPathAddArcToPoint(Mutable, 0, v13, v15, v22, v15, radius);
    CGPathAddLineToPoint(Mutable, 0, v12, v15);
    CGPathAddArcToPoint(Mutable, 0, x, v15, x, v21, radius);
    CGPathAddLineToPoint(Mutable, 0, x, v14);
    v16 = Mutable;
    v17 = x;
    v18 = y;
    v19 = v12;
  }

  CGPathAddArcToPoint(v16, 0, v17, v18, v19, y, radius);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextClipToRect(CurrentContext, v15);
  [(QLPageNumberView *)self bounds];
  v17 = CGRectInset(v16, 2.0, 2.0);
  v9 = [(QLPageNumberView *)self _copyMutablePathForRoundedRect:0 radius:v17.origin.x inverted:v17.origin.y, v17.size.width, v17.size.height + -3.0, 4.0];
  CGContextAddPath(CurrentContext, v9);
  v10 = MEMORY[0x277D75348];
  v11 = QLFrameworkBundle();
  v13 = [v10 colorNamed:@"QLSquaredLabelBackgroundColor" inBundle:v11 compatibleWithTraitCollection:0];

  v12 = v13;
  CGContextSetFillColorWithColor(CurrentContext, [v13 CGColor]);
  CGContextDrawPath(CurrentContext, kCGPathFill);
  CGPathRelease(v9);
  CGContextRestoreGState(CurrentContext);
}

@end