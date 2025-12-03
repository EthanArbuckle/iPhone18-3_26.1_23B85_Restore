@interface _LTTranslationStatistics
- (_LTTranslationStatistics)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationStatistics

- (_LTTranslationStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _LTTranslationStatistics;
  v5 = [(_LTTranslationStatistics *)&v8 init];
  if (v5)
  {
    v5->_inputTokenCount = [coderCopy decodeIntegerForKey:@"inputTokenCount"];
    v5->_inputSubtokenCount = [coderCopy decodeIntegerForKey:@"inputSubtokenCount"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  inputTokenCount = self->_inputTokenCount;
  coderCopy = coder;
  [coderCopy encodeInteger:inputTokenCount forKey:@"inputTokenCount"];
  [coderCopy encodeInteger:self->_inputSubtokenCount forKey:@"inputSubtokenCount"];
}

@end