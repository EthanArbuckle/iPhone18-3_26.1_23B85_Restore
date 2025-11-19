@interface CRLPdfTaggerState
- (CRLPdfTaggerState)initWithTagStackHeight:(unint64_t)a3;
@end

@implementation CRLPdfTaggerState

- (CRLPdfTaggerState)initWithTagStackHeight:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLPdfTaggerState;
  result = [(CRLPdfTaggerState *)&v5 init];
  if (result)
  {
    result->_tagStackHeight = a3;
  }

  return result;
}

@end