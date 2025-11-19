@interface _NSAttributedStringFromMarkdownCreatorConcrete
- (_NSAttributedStringFromMarkdownCreatorConcrete)init;
- (id)parseExtendedAttributesFromData:(id)a3 error:(id *)a4;
- (id)result;
- (unsigned)lastCharacter;
- (void)appendString:(id)a3;
- (void)appendString:(id)a3 with:(id)a4;
- (void)dealloc;
- (void)finalizeWithLanguageIdentifier:(id)a3;
@end

@implementation _NSAttributedStringFromMarkdownCreatorConcrete

- (_NSAttributedStringFromMarkdownCreatorConcrete)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSAttributedStringFromMarkdownCreatorConcrete;
  v2 = [(_NSAttributedStringFromMarkdownCreatorConcrete *)&v4 init];
  if (v2)
  {
    v2->_result = objc_alloc_init(NSMutableAttributedString);
  }

  return v2;
}

- (id)result
{
  v2 = self->_result;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSAttributedStringFromMarkdownCreatorConcrete;
  [(_NSAttributedStringFromMarkdownCreatorConcrete *)&v3 dealloc];
}

- (void)appendString:(id)a3 with:(id)a4
{
  v5 = [[NSAttributedString alloc] initWithString:a3 attributes:a4];
  [(NSMutableAttributedString *)self->_result appendAttributedString:v5];
}

- (unsigned)lastCharacter
{
  v3 = [(NSAttributedString *)self->_result length];
  if (v3)
  {
    v4 = [(NSAttributedString *)self->_result string];
    v5 = [(NSAttributedString *)self->_result length]- 1;

    LOWORD(v3) = [(NSString *)v4 characterAtIndex:v5];
  }

  return v3;
}

- (void)appendString:(id)a3
{
  v4 = [(NSMutableAttributedString *)self->_result mutableString];

  [(NSMutableString *)v4 appendString:a3];
}

- (id)parseExtendedAttributesFromData:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v5 = [NSJSONSerialization JSONObjectWithData:a3 options:24 error:&v13];
  if (v5)
  {
    v6 = v5;
    if (_NSIsNSDictionary())
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __attributesFromKnownAttributeKeys_block_invoke;
      v14[3] = &unk_1E69F67F8;
      v14[4] = v7;
      [v6 enumerateKeysAndObjectsUsingBlock:v14];
      return v7;
    }

    if (a4)
    {
      v15 = @"NSDebugDescription";
      v16 = @"JSON result was not a dictionary";
      v9 = MEMORY[0x1E695DF20];
      v10 = &v16;
      v11 = &v15;
      goto LABEL_8;
    }
  }

  else if (a4)
  {
    v17 = @"NSUnderlyingError";
    v18[0] = v13;
    v9 = MEMORY[0x1E695DF20];
    v10 = v18;
    v11 = &v17;
LABEL_8:
    v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 259, [v9 dictionaryWithObjects:v10 forKeys:v11 count:1]);
    result = 0;
    *a4 = v12;
    return result;
  }

  return 0;
}

- (void)finalizeWithLanguageIdentifier:(id)a3
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    result = self->_result;
    v6 = [(NSAttributedString *)result length];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81___NSAttributedStringFromMarkdownCreatorConcrete_finalizeWithLanguageIdentifier___block_invoke;
    v7[3] = &unk_1E69F67D0;
    v7[4] = self;
    v7[5] = a3;
    [(NSAttributedString *)result enumerateAttribute:@"NSLanguage" inRange:0 options:v6 usingBlock:0x100000, v7];
  }
}

@end