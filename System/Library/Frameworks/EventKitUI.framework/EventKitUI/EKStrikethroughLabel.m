@interface EKStrikethroughLabel
- (void)setDrawsStrikethrough:(BOOL)a3;
- (void)setFirstLineHeadIndent:(double)a3;
- (void)setHyphenationFactor:(double)a3;
- (void)setText:(id)a3;
@end

@implementation EKStrikethroughLabel

- (void)setText:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v10 = [v4 dictionary];
  if (self->_drawsStrikethrough)
  {
    [v10 setObject:&unk_1F4F323F8 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  }

  if (self->_firstLineHeadIndent != 0.0 || self->_hyphenationFactor != 0.0)
  {
    v6 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v7 = [v6 mutableCopy];

    [v7 setFirstLineHeadIndent:self->_firstLineHeadIndent];
    hyphenationFactor = self->_hyphenationFactor;
    *&hyphenationFactor = hyphenationFactor;
    [v7 setHyphenationFactor:hyphenationFactor];
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v10];

  [(EKStrikethroughLabel *)self setAttributedText:v9];
}

- (void)setDrawsStrikethrough:(BOOL)a3
{
  if (self->_drawsStrikethrough != a3)
  {
    self->_drawsStrikethrough = a3;
    v4 = [(EKStrikethroughLabel *)self text];

    if (v4)
    {
      v5 = [(EKStrikethroughLabel *)self text];
      [(EKStrikethroughLabel *)self setText:v5];
    }
  }
}

- (void)setFirstLineHeadIndent:(double)a3
{
  if (self->_firstLineHeadIndent != a3)
  {
    self->_firstLineHeadIndent = a3;
    v4 = [(EKStrikethroughLabel *)self text];

    if (v4)
    {
      v5 = [(EKStrikethroughLabel *)self text];
      [(EKStrikethroughLabel *)self setText:v5];
    }
  }
}

- (void)setHyphenationFactor:(double)a3
{
  if (self->_hyphenationFactor != a3)
  {
    self->_hyphenationFactor = a3;
    v4 = [(EKStrikethroughLabel *)self text];

    if (v4)
    {
      v5 = [(EKStrikethroughLabel *)self text];
      [(EKStrikethroughLabel *)self setText:v5];
    }
  }
}

@end