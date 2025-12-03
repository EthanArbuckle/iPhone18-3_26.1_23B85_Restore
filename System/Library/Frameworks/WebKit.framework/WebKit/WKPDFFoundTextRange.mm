@interface WKPDFFoundTextRange
+ (id)foundTextRangeWithIndex:(unint64_t)index;
- (id)start;
@end

@implementation WKPDFFoundTextRange

+ (id)foundTextRangeWithIndex:(unint64_t)index
{
  v4 = objc_alloc_init(WKPDFFoundTextRange);
  [(WKPDFFoundTextRange *)v4 setIndex:index];
  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

- (id)start
{
  index = [(WKPDFFoundTextRange *)self index];

  return [WKPDFFoundTextPosition textPositionWithIndex:index];
}

@end