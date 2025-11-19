@interface WKPDFFoundTextPosition
+ (id)textPositionWithIndex:(unint64_t)a3;
@end

@implementation WKPDFFoundTextPosition

+ (id)textPositionWithIndex:(unint64_t)a3
{
  v4 = objc_alloc_init(WKPDFFoundTextPosition);
  [(WKPDFFoundTextPosition *)v4 setIndex:a3];
  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

@end