@interface CRLPdfTaggerSecondaryTextRunContext
- (CRLPdfTaggerSecondaryTextRunContext)initWithStateOfTagger:(id)tagger charRange:(_NSRange)range baseTextRange:(_NSRange)textRange;
- (_NSRange)baseTextRange;
- (_NSRange)charRange;
@end

@implementation CRLPdfTaggerSecondaryTextRunContext

- (CRLPdfTaggerSecondaryTextRunContext)initWithStateOfTagger:(id)tagger charRange:(_NSRange)range baseTextRange:(_NSRange)textRange
{
  length = textRange.length;
  location = textRange.location;
  v7 = range.length;
  v8 = range.location;
  v10.receiver = self;
  v10.super_class = CRLPdfTaggerSecondaryTextRunContext;
  result = [(CRLPdfTaggerContext *)&v10 initWithStateOfTagger:tagger];
  if (result)
  {
    result->_charRange.location = v8;
    result->_charRange.length = v7;
    result->_baseTextRange.location = location;
    result->_baseTextRange.length = length;
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

- (_NSRange)baseTextRange
{
  p_baseTextRange = &self->_baseTextRange;
  location = self->_baseTextRange.location;
  length = p_baseTextRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end