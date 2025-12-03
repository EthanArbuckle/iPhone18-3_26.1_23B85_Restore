@interface SHLyricLine
+ (id)lyricLineWithText:(id)text offset:(double)offset;
- (SHLyricLine)initWithCoder:(id)coder;
- (SHLyricLine)initWithLineWithText:(id)text offset:(double)offset;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHLyricLine

+ (id)lyricLineWithText:(id)text offset:(double)offset
{
  textCopy = text;
  v6 = [[SHLyricLine alloc] initWithLineWithText:textCopy offset:offset];

  return v6;
}

- (SHLyricLine)initWithLineWithText:(id)text offset:(double)offset
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = SHLyricLine;
  v8 = [(SHLyricLine *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, text);
    v9->_offset = offset;
  }

  return v9;
}

- (SHLyricLine)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  [coderCopy decodeDoubleForKey:@"offset"];
  v7 = v6;

  v8 = [(SHLyricLine *)self initWithLineWithText:v5 offset:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeDouble:@"offset" forKey:self->_offset];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  text = [(SHLyricLine *)self text];
  [(SHLyricLine *)self offset];
  v6 = [v3 stringWithFormat:@"%@ : %f", text, v5];

  return v6;
}

@end