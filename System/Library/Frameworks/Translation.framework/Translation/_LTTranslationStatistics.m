@interface _LTTranslationStatistics
- (_LTTranslationStatistics)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationStatistics

- (_LTTranslationStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _LTTranslationStatistics;
  v5 = [(_LTTranslationStatistics *)&v8 init];
  if (v5)
  {
    v5->_inputTokenCount = [v4 decodeIntegerForKey:@"inputTokenCount"];
    v5->_inputSubtokenCount = [v4 decodeIntegerForKey:@"inputSubtokenCount"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  inputTokenCount = self->_inputTokenCount;
  v5 = a3;
  [v5 encodeInteger:inputTokenCount forKey:@"inputTokenCount"];
  [v5 encodeInteger:self->_inputSubtokenCount forKey:@"inputSubtokenCount"];
}

@end