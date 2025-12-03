@interface CRLSearch
- (CRLSearch)initWithString:(id)string options:(unint64_t)options hitBlock:(id)block;
@end

@implementation CRLSearch

- (CRLSearch)initWithString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = CRLSearch;
  v10 = [(CRLSearch *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CRLSearch *)v10 setString:stringCopy];
    [(CRLSearch *)v11 setOptions:options];
    [(CRLSearch *)v11 setHitBlock:blockCopy];
    [(CRLSearch *)v11 setIsComplete:0];
  }

  return v11;
}

@end