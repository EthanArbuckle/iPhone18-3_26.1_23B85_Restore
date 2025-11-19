@interface CRLPdfTaggerPrimaryTextRunContext
- (CRLPdfTaggerPrimaryTextRunContext)initWithStateOfTagger:(id)a3 charRange:(_NSRange)a4;
- (_NSRange)charRange;
@end

@implementation CRLPdfTaggerPrimaryTextRunContext

- (CRLPdfTaggerPrimaryTextRunContext)initWithStateOfTagger:(id)a3 charRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7.receiver = self;
  v7.super_class = CRLPdfTaggerPrimaryTextRunContext;
  result = [(CRLPdfTaggerContext *)&v7 initWithStateOfTagger:a3];
  if (result)
  {
    result->_charRange.location = location;
    result->_charRange.length = length;
  }

  return result;
}

- (_NSRange)charRange
{
  p_charRange = &self->_charRange;
  location = self->_charRange.location;
  length = p_charRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end