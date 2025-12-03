@interface INNoteContent
- (INNoteContent)initWithCoder:(id)coder;
- (id)descriptionAtIndent:(unint64_t)indent;
@end

@implementation INNoteContent

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INNoteContent;
  v6 = [(INNoteContent *)&v11 description];
  _dictionaryRepresentation = [(INNoteContent *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INNoteContent)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(objc_opt_class());

  return v4;
}

@end