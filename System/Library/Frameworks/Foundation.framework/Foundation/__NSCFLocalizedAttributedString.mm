@interface __NSCFLocalizedAttributedString
+ (__CFString)copyStringWithMarkdown:(__CFString *)markdown formatConfiguration:(__CFDictionary *)configuration bundle:(__CFBundle *)bundle tableURL:(__CFURL *)l;
+ (__CFString)createStringRequiringInflectionWithFormat:(__CFString *)format formatOptions:(__CFDictionary *)options arguments:(char *)arguments;
+ (id)stringEncapsulatingBaseAttributedString:(id)string;
- (__NSCFLocalizedAttributedString)initWithAttributedStringMarkdown:(id)markdown formatConfiguration:(id)configuration bundle:(__CFBundle *)bundle tableURL:(id)l;
- (id)_initWithAttributedString:(id)string;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation __NSCFLocalizedAttributedString

+ (__CFString)copyStringWithMarkdown:(__CFString *)markdown formatConfiguration:(__CFDictionary *)configuration bundle:(__CFBundle *)bundle tableURL:(__CFURL *)l
{
  v10 = [self alloc];

  return [v10 initWithAttributedStringMarkdown:markdown formatConfiguration:configuration bundle:bundle tableURL:l];
}

+ (__CFString)createStringRequiringInflectionWithFormat:(__CFString *)format formatOptions:(__CFDictionary *)options arguments:(char *)arguments
{
  result = [(__CFString *)format __baseAttributedString];
  if (result)
  {
    v8 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      options = 0;
    }

    v9 = [[NSAttributedString alloc] _initWithFormat:v8 options:0 locale:options arguments:arguments];
    v10 = [objc_msgSend(v9 "string")];

    return v10;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = __NSCFLocalizedAttributedString;
  [(NSString *)&v3 encodeWithCoder:coder];
}

- (__NSCFLocalizedAttributedString)initWithAttributedStringMarkdown:(id)markdown formatConfiguration:(id)configuration bundle:(__CFBundle *)bundle tableURL:(id)l
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = __NSCFLocalizedAttributedString;
  v10 = [(NSString *)&v13 init];
  if (v10)
  {
    v11 = _NSStringCreateByParsingMarkdownAndOptionallyInflecting(markdown, bundle, l, configuration, 0, 0);
    v10->_original = &v11->super;
    if (v11)
    {
      markdown = [-[NSAttributedString _inflectedAttributedString](v11 "_inflectedAttributedString")];
    }

    else
    {
      v10->_original = [[NSAttributedString alloc] initWithString:markdown];
    }

    v10->_apparentString = [markdown copy];
    v10->_formatConfiguration = [configuration copy];
  }

  return v10;
}

- (id)_initWithAttributedString:(id)string
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = __NSCFLocalizedAttributedString;
  v4 = [(NSString *)&v7 init];
  if (v4)
  {
    v5 = [string copy];
    v4->_original = v5;
    v4->_apparentString = [objc_msgSend(-[NSAttributedString _inflectedAttributedString](v5 "_inflectedAttributedString")];
    v4->_formatConfiguration = [MEMORY[0x1E695E0F8] copy];
  }

  return v4;
}

+ (id)stringEncapsulatingBaseAttributedString:(id)string
{
  v3 = [[self alloc] _initWithAttributedString:string];

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