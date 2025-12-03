@interface INTextNoteContent
- (BOOL)isEqual:(id)equal;
- (INTextNoteContent)initWithCoder:(id)coder;
- (INTextNoteContent)initWithText:(NSString *)text;
- (id)_dictionaryRepresentation;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
@end

@implementation INTextNoteContent

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  v4 = [(INTextNoteContent *)self text:localizer];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v6;
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"text";
  text = self->_text;
  null = text;
  if (!text)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!text)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (INTextNoteContent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"text"];

  v9 = [objc_alloc(objc_opt_class()) initWithText:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    text = self->_text;
    v7 = text == v5[1] || [(NSString *)text isEqual:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INTextNoteContent)initWithText:(NSString *)text
{
  v5 = text;
  v9.receiver = self;
  v9.super_class = INTextNoteContent;
  v6 = [(INTextNoteContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, text);
  }

  return v7;
}

@end