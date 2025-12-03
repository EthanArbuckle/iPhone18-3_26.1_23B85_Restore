@interface CRLPdfTaggerParagraphContext
- (CRLPdfTaggerParagraphContext)initWithStateOfTagger:(id)tagger needsSpans:(BOOL)spans;
@end

@implementation CRLPdfTaggerParagraphContext

- (CRLPdfTaggerParagraphContext)initWithStateOfTagger:(id)tagger needsSpans:(BOOL)spans
{
  v6.receiver = self;
  v6.super_class = CRLPdfTaggerParagraphContext;
  result = [(CRLPdfTaggerContext *)&v6 initWithStateOfTagger:tagger];
  if (result)
  {
    result->_needsSpans = spans;
  }

  return result;
}

@end