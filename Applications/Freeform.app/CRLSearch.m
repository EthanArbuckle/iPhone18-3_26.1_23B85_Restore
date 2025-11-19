@interface CRLSearch
- (CRLSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5;
@end

@implementation CRLSearch

- (CRLSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CRLSearch;
  v10 = [(CRLSearch *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CRLSearch *)v10 setString:v8];
    [(CRLSearch *)v11 setOptions:a4];
    [(CRLSearch *)v11 setHitBlock:v9];
    [(CRLSearch *)v11 setIsComplete:0];
  }

  return v11;
}

@end