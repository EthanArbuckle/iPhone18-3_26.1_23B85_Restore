@interface CRLPdfTaggerState
- (CRLPdfTaggerState)initWithTagStackHeight:(unint64_t)height;
@end

@implementation CRLPdfTaggerState

- (CRLPdfTaggerState)initWithTagStackHeight:(unint64_t)height
{
  v5.receiver = self;
  v5.super_class = CRLPdfTaggerState;
  result = [(CRLPdfTaggerState *)&v5 init];
  if (result)
  {
    result->_tagStackHeight = height;
  }

  return result;
}

@end