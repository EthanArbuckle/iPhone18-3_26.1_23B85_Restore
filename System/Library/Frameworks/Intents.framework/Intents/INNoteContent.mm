@interface INNoteContent
- (INNoteContent)initWithCoder:(id)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
@end

@implementation INNoteContent

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INNoteContent;
  v6 = [(INNoteContent *)&v11 description];
  v7 = [(INNoteContent *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INNoteContent)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());

  return v4;
}

@end