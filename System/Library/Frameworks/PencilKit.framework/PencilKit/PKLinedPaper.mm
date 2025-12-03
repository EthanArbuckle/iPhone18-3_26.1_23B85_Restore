@interface PKLinedPaper
- (BOOL)isEqual:(id)equal;
- (CGPoint)lineSpacing;
- (PKLinedPaper)initWithLineSpacing:(CGPoint)spacing horizontalInset:(double)inset;
- (unint64_t)hash;
@end

@implementation PKLinedPaper

- (PKLinedPaper)initWithLineSpacing:(CGPoint)spacing horizontalInset:(double)inset
{
  y = spacing.y;
  x = spacing.x;
  v8.receiver = self;
  v8.super_class = PKLinedPaper;
  result = [(PKLinedPaper *)&v8 init];
  result->_lineSpacing.x = x;
  result->_lineSpacing.y = y;
  result->_horizontalInset = inset;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((-[PKLinedPaper lineSpacing](self, "lineSpacing"), v6 = v5, v8 = v7, [equalCopy lineSpacing], v6 == v10) ? (v11 = v8 == v9) : (v11 = 0), v11))
  {
    horizontalInset = self->_horizontalInset;
    [equalCopy horizontalInset];
    v12 = horizontalInset == v14;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  [(PKLinedPaper *)self lineSpacing];
  v4 = v3;
  [(PKLinedPaper *)self lineSpacing];
  return v4 ^ (v5 << 16);
}

- (CGPoint)lineSpacing
{
  x = self->_lineSpacing.x;
  y = self->_lineSpacing.y;
  result.y = y;
  result.x = x;
  return result;
}

@end