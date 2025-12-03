@interface _MFAtomTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (MFComposeRecipient)recipient;
- (_MFAtomTextAttachment)initWithAtomView:(id)view;
- (id)attributedStringWithBaseAttributes:(id)attributes;
@end

@implementation _MFAtomTextAttachment

- (_MFAtomTextAttachment)initWithAtomView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _MFAtomTextAttachment;
  v5 = [(_MFAtomTextAttachment *)&v8 initWithData:0 ofType:0];
  v6 = v5;
  if (v5)
  {
    [(_MFAtomTextAttachment *)v5 setIsPlaceholder:0];
    [(_MFAtomTextAttachment *)v6 setAtomView:viewCopy];
  }

  return v6;
}

- (MFComposeRecipient)recipient
{
  atomView = [(_MFAtomTextAttachment *)self atomView];
  recipient = [atomView recipient];

  return recipient;
}

- (id)attributedStringWithBaseAttributes:(id)attributes
{
  attributesCopy = attributes;
  v10 = -4;
  v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  v7 = +[MFModernAtomView defaultFont];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (attributesCopy)
  {
    [dictionary setValuesForKeysWithDictionary:attributesCopy];
  }

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:dictionary];

  return v8;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  height = fragment.size.height;
  width = fragment.size.width;
  if ([(_MFAtomTextAttachment *)self isPlaceholder:container])
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