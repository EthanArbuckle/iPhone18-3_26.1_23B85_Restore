@interface INTextNoteContent
- (BOOL)isEqual:(id)a3;
- (INTextNoteContent)initWithCoder:(id)a3;
- (INTextNoteContent)initWithText:(NSString *)text;
- (id)_dictionaryRepresentation;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
@end

@implementation INTextNoteContent

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v4 = [(INTextNoteContent *)self text:a3];
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"text";
  text = self->_text;
  v3 = text;
  if (!text)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!text)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (INTextNoteContent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"text"];

  v9 = [objc_alloc(objc_opt_class()) initWithText:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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