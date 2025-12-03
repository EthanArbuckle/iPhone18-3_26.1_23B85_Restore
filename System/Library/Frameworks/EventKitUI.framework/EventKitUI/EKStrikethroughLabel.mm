@interface EKStrikethroughLabel
- (void)setDrawsStrikethrough:(BOOL)strikethrough;
- (void)setFirstLineHeadIndent:(double)indent;
- (void)setHyphenationFactor:(double)factor;
- (void)setText:(id)text;
@end

@implementation EKStrikethroughLabel

- (void)setText:(id)text
{
  v4 = MEMORY[0x1E695DF90];
  textCopy = text;
  dictionary = [v4 dictionary];
  if (self->_drawsStrikethrough)
  {
    [dictionary setObject:&unk_1F4F323F8 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  }

  if (self->_firstLineHeadIndent != 0.0 || self->_hyphenationFactor != 0.0)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v7 = [defaultParagraphStyle mutableCopy];

    [v7 setFirstLineHeadIndent:self->_firstLineHeadIndent];
    hyphenationFactor = self->_hyphenationFactor;
    *&hyphenationFactor = hyphenationFactor;
    [v7 setHyphenationFactor:hyphenationFactor];
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy attributes:dictionary];

  [(EKStrikethroughLabel *)self setAttributedText:v9];
}

- (void)setDrawsStrikethrough:(BOOL)strikethrough
{
  if (self->_drawsStrikethrough != strikethrough)
  {
    self->_drawsStrikethrough = strikethrough;
    text = [(EKStrikethroughLabel *)self text];

    if (text)
    {
      text2 = [(EKStrikethroughLabel *)self text];
      [(EKStrikethroughLabel *)self setText:text2];
    }
  }
}

- (void)setFirstLineHeadIndent:(double)indent
{
  if (self->_firstLineHeadIndent != indent)
  {
    self->_firstLineHeadIndent = indent;
    text = [(EKStrikethroughLabel *)self text];

    if (text)
    {
      text2 = [(EKStrikethroughLabel *)self text];
      [(EKStrikethroughLabel *)self setText:text2];
    }
  }
}

- (void)setHyphenationFactor:(double)factor
{
  if (self->_hyphenationFactor != factor)
  {
    self->_hyphenationFactor = factor;
    text = [(EKStrikethroughLabel *)self text];

    if (text)
    {
      text2 = [(EKStrikethroughLabel *)self text];
      [(EKStrikethroughLabel *)self setText:text2];
    }
  }
}

@end