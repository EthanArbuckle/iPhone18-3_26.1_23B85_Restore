@interface NSAttributedStringMarkdownParsingOptions
+ (id)_localizedAttributedStringParsingOptions;
+ (id)allowingExtendedAttributes;
- (BOOL)isEqual:(id)a3;
- (NSAttributedStringMarkdownParsingOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation NSAttributedStringMarkdownParsingOptions

- (NSAttributedStringMarkdownParsingOptions)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSAttributedStringMarkdownParsingOptions;
  result = [(NSAttributedStringMarkdownParsingOptions *)&v3 init];
  if (result)
  {
    *&result->_allowsExtendedAttributes = 0;
    result->_failurePolicy = 0;
    result->_languageCode = 0;
    result->_interpretedSyntax = 0;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSAttributedStringMarkdownParsingOptions;
  [(NSAttributedStringMarkdownParsingOptions *)&v3 dealloc];
}

+ (id)_localizedAttributedStringParsingOptions
{
  if (qword_1ED43F1B8 != -1)
  {
    dispatch_once(&qword_1ED43F1B8, &__block_literal_global_90);
  }

  return qword_1ED43F1B0;
}

+ (id)allowingExtendedAttributes
{
  v2 = objc_alloc_init(a1);
  [v2 setAllowsExtendedAttributes:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAllowsExtendedAttributes:{-[NSAttributedStringMarkdownParsingOptions allowsExtendedAttributes](self, "allowsExtendedAttributes")}];
  [v4 setInterpretedSyntax:{-[NSAttributedStringMarkdownParsingOptions interpretedSyntax](self, "interpretedSyntax")}];
  [v4 setFailurePolicy:{-[NSAttributedStringMarkdownParsingOptions failurePolicy](self, "failurePolicy")}];
  [v4 setLanguageCode:{-[NSAttributedStringMarkdownParsingOptions languageCode](self, "languageCode")}];
  [v4 setAppliesSourcePositionAttributes:{-[NSAttributedStringMarkdownParsingOptions appliesSourcePositionAttributes](self, "appliesSourcePositionAttributes")}];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(NSAttributedStringMarkdownParsingOptions *)self allowsExtendedAttributes];
  v4 = [(NSAttributedStringMarkdownParsingOptions *)self interpretedSyntax];
  v5 = v4 ^ [(NSAttributedStringMarkdownParsingOptions *)self failurePolicy];
  v6 = v5 ^ [(NSString *)[(NSAttributedStringMarkdownParsingOptions *)self languageCode] hash]^ v3;
  return v6 ^ [(NSAttributedStringMarkdownParsingOptions *)self appliesSourcePositionAttributes];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [a3 allowsExtendedAttributes], v5 == -[NSAttributedStringMarkdownParsingOptions allowsExtendedAttributes](self, "allowsExtendedAttributes")) && (v6 = objc_msgSend(a3, "interpretedSyntax"), v6 == -[NSAttributedStringMarkdownParsingOptions interpretedSyntax](self, "interpretedSyntax")) && (v7 = objc_msgSend(a3, "failurePolicy"), v7 == -[NSAttributedStringMarkdownParsingOptions failurePolicy](self, "failurePolicy")))
  {
    v8 = [a3 languageCode];
    if (v8 == -[NSAttributedStringMarkdownParsingOptions languageCode](self, "languageCode") || (v9 = -[NSAttributedStringMarkdownParsingOptions languageCode](self, "languageCode")) != 0 && (LODWORD(v9) = [objc_msgSend(a3 "languageCode")], v9))
    {
      v10 = [a3 appliesSourcePositionAttributes];
      LOBYTE(v9) = v10 ^ [(NSAttributedStringMarkdownParsingOptions *)self appliesSourcePositionAttributes]^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end