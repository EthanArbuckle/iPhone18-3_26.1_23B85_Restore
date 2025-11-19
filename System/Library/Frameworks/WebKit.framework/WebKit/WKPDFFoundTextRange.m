@interface WKPDFFoundTextRange
+ (id)foundTextRangeWithIndex:(unint64_t)a3;
- (id)start;
@end

@implementation WKPDFFoundTextRange

+ (id)foundTextRangeWithIndex:(unint64_t)a3
{
  v4 = objc_alloc_init(WKPDFFoundTextRange);
  [(WKPDFFoundTextRange *)v4 setIndex:a3];
  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

- (id)start
{
  v2 = [(WKPDFFoundTextRange *)self index];

  return [WKPDFFoundTextPosition textPositionWithIndex:v2];
}

@end