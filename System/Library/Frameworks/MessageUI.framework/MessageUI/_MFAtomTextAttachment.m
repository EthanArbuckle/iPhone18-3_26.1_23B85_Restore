@interface _MFAtomTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (MFComposeRecipient)recipient;
- (_MFAtomTextAttachment)initWithAtomView:(id)a3;
- (id)attributedStringWithBaseAttributes:(id)a3;
@end

@implementation _MFAtomTextAttachment

- (_MFAtomTextAttachment)initWithAtomView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MFAtomTextAttachment;
  v5 = [(_MFAtomTextAttachment *)&v8 initWithData:0 ofType:0];
  v6 = v5;
  if (v5)
  {
    [(_MFAtomTextAttachment *)v5 setIsPlaceholder:0];
    [(_MFAtomTextAttachment *)v6 setAtomView:v4];
  }

  return v6;
}

- (MFComposeRecipient)recipient
{
  v2 = [(_MFAtomTextAttachment *)self atomView];
  v3 = [v2 recipient];

  return v3;
}

- (id)attributedStringWithBaseAttributes:(id)a3
{
  v4 = a3;
  v10 = -4;
  v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:self forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  v7 = +[MFModernAtomView defaultFont];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (v4)
  {
    [v6 setValuesForKeysWithDictionary:v4];
  }

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v6];

  return v8;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  if ([(_MFAtomTextAttachment *)self isPlaceholder:a3])
  {
    [(_MFAtomTextAttachment *)self bounds];
    v10 = v9;
  }

  else
  {
    [(MFModernAtomView *)self->_atomView intrinsicContentSize];
    v10 = v11;
  }

  v12 = +[MFModernAtomView defaultFont];
  [v12 descender];
  v14 = v13;
  v15 = *MEMORY[0x1E695F058];

  if (v10 >= width)
  {
    v16 = width;
  }

  else
  {
    v16 = v10;
  }

  v17 = v15;
  v18 = v14;
  v19 = height;
  result.size.height = v19;
  result.size.width = v16;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end