@interface WKPDFFoundTextPosition
+ (id)textPositionWithIndex:(unint64_t)index;
@end

@implementation WKPDFFoundTextPosition

+ (id)textPositionWithIndex:(unint64_t)index
{
  v4 = objc_alloc_init(WKPDFFoundTextPosition);
  [(WKPDFFoundTextPosition *)v4 setIndex:index];
  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

@end