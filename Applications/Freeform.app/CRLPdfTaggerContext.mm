@interface CRLPdfTaggerContext
- (CRLPdfTaggerContext)initWithStateOfTagger:(id)tagger;
@end

@implementation CRLPdfTaggerContext

- (CRLPdfTaggerContext)initWithStateOfTagger:(id)tagger
{
  taggerCopy = tagger;
  v9.receiver = self;
  v9.super_class = CRLPdfTaggerContext;
  v5 = [(CRLPdfTaggerContext *)&v9 init];
  if (v5)
  {
    state = [taggerCopy state];
    taggerState = v5->_taggerState;
    v5->_taggerState = state;
  }

  return v5;
}

@end