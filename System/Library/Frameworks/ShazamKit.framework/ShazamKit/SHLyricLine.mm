@interface SHLyricLine
+ (id)lyricLineWithText:(id)a3 offset:(double)a4;
- (SHLyricLine)initWithCoder:(id)a3;
- (SHLyricLine)initWithLineWithText:(id)a3 offset:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHLyricLine

+ (id)lyricLineWithText:(id)a3 offset:(double)a4
{
  v5 = a3;
  v6 = [[SHLyricLine alloc] initWithLineWithText:v5 offset:a4];

  return v6;
}

- (SHLyricLine)initWithLineWithText:(id)a3 offset:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SHLyricLine;
  v8 = [(SHLyricLine *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, a3);
    v9->_offset = a4;
  }

  return v9;
}

- (SHLyricLine)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  [v4 decodeDoubleForKey:@"offset"];
  v7 = v6;

  v8 = [(SHLyricLine *)self initWithLineWithText:v5 offset:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeDouble:@"offset" forKey:self->_offset];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SHLyricLine *)self text];
  [(SHLyricLine *)self offset];
  v6 = [v3 stringWithFormat:@"%@ : %f", v4, v5];

  return v6;
}

@end