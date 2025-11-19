@interface CRLPdfTaggerContext
- (CRLPdfTaggerContext)initWithStateOfTagger:(id)a3;
@end

@implementation CRLPdfTaggerContext

- (CRLPdfTaggerContext)initWithStateOfTagger:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLPdfTaggerContext;
  v5 = [(CRLPdfTaggerContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 state];
    taggerState = v5->_taggerState;
    v5->_taggerState = v6;
  }

  return v5;
}

@end