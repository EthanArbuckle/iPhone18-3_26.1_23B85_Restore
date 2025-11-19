@interface __NSCFLocalizedAttributedString
+ (__CFString)copyStringWithMarkdown:(__CFString *)a3 formatConfiguration:(__CFDictionary *)a4 bundle:(__CFBundle *)a5 tableURL:(__CFURL *)a6;
+ (__CFString)createStringRequiringInflectionWithFormat:(__CFString *)a3 formatOptions:(__CFDictionary *)a4 arguments:(char *)a5;
+ (id)stringEncapsulatingBaseAttributedString:(id)a3;
- (__NSCFLocalizedAttributedString)initWithAttributedStringMarkdown:(id)a3 formatConfiguration:(id)a4 bundle:(__CFBundle *)a5 tableURL:(id)a6;
- (id)_initWithAttributedString:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation __NSCFLocalizedAttributedString

+ (__CFString)copyStringWithMarkdown:(__CFString *)a3 formatConfiguration:(__CFDictionary *)a4 bundle:(__CFBundle *)a5 tableURL:(__CFURL *)a6
{
  v10 = [a1 alloc];

  return [v10 initWithAttributedStringMarkdown:a3 formatConfiguration:a4 bundle:a5 tableURL:a6];
}

+ (__CFString)createStringRequiringInflectionWithFormat:(__CFString *)a3 formatOptions:(__CFDictionary *)a4 arguments:(char *)a5
{
  result = [(__CFString *)a3 __baseAttributedString];
  if (result)
  {
    v8 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      a4 = 0;
    }

    v9 = [[NSAttributedString alloc] _initWithFormat:v8 options:0 locale:a4 arguments:a5];
    v10 = [objc_msgSend(v9 "string")];

    return v10;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = __NSCFLocalizedAttributedString;
  [(NSString *)&v3 encodeWithCoder:a3];
}

- (__NSCFLocalizedAttributedString)initWithAttributedStringMarkdown:(id)a3 formatConfiguration:(id)a4 bundle:(__CFBundle *)a5 tableURL:(id)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = __NSCFLocalizedAttributedString;
  v10 = [(NSString *)&v13 init];
  if (v10)
  {
    v11 = _NSStringCreateByParsingMarkdownAndOptionallyInflecting(a3, a5, a6, a4, 0, 0);
    v10->_original = &v11->super;
    if (v11)
    {
      a3 = [-[NSAttributedString _inflectedAttributedString](v11 "_inflectedAttributedString")];
    }

    else
    {
      v10->_original = [[NSAttributedString alloc] initWithString:a3];
    }

    v10->_apparentString = [a3 copy];
    v10->_formatConfiguration = [a4 copy];
  }

  return v10;
}

- (id)_initWithAttributedString:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = __NSCFLocalizedAttributedString;
  v4 = [(NSString *)&v7 init];
  if (v4)
  {
    v5 = [a3 copy];
    v4->_original = v5;
    v4->_apparentString = [objc_msgSend(-[NSAttributedString _inflectedAttributedString](v5 "_inflectedAttributedString")];
    v4->_formatConfiguration = [MEMORY[0x1E695E0F8] copy];
  }

  return v4;
}

+ (id)stringEncapsulatingBaseAttributedString:(id)a3
{
  v3 = [[a1 alloc] _initWithAttributedString:a3];

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSCFLocalizedAttributedString;
  [(__NSCFLocalizedAttributedString *)&v3 dealloc];
}

@end