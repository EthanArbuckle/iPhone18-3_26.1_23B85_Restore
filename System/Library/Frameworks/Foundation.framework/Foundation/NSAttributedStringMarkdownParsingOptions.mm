@interface NSAttributedStringMarkdownParsingOptions
+ (id)_localizedAttributedStringParsingOptions;
+ (id)allowingExtendedAttributes;
- (BOOL)isEqual:(id)equal;
- (NSAttributedStringMarkdownParsingOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
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
  v2 = objc_alloc_init(self);
  [v2 setAllowsExtendedAttributes:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
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
  allowsExtendedAttributes = [(NSAttributedStringMarkdownParsingOptions *)self allowsExtendedAttributes];
  interpretedSyntax = [(NSAttributedStringMarkdownParsingOptions *)self interpretedSyntax];
  v5 = interpretedSyntax ^ [(NSAttributedStringMarkdownParsingOptions *)self failurePolicy];
  v6 = v5 ^ [(NSString *)[(NSAttributedStringMarkdownParsingOptions *)self languageCode] hash]^ allowsExtendedAttributes;
  return v6 ^ [(NSAttributedStringMarkdownParsingOptions *)self appliesSourcePositionAttributes];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equal allowsExtendedAttributes], v5 == -[NSAttributedStringMarkdownParsingOptions allowsExtendedAttributes](self, "allowsExtendedAttributes")) && (v6 = objc_msgSend(equal, "interpretedSyntax"), v6 == -[NSAttributedStringMarkdownParsingOptions interpretedSyntax](self, "interpretedSyntax")) && (v7 = objc_msgSend(equal, "failurePolicy"), v7 == -[NSAttributedStringMarkdownParsingOptions failurePolicy](self, "failurePolicy")))
  {
    languageCode = [equal languageCode];
    if (languageCode == -[NSAttributedStringMarkdownParsingOptions languageCode](self, "languageCode") || (v9 = -[NSAttributedStringMarkdownParsingOptions languageCode](self, "languageCode")) != 0 && (LODWORD(v9) = [objc_msgSend(equal "languageCode")], v9))
    {
      appliesSourcePositionAttributes = [equal appliesSourcePositionAttributes];
      LOBYTE(v9) = appliesSourcePositionAttributes ^ [(NSAttributedStringMarkdownParsingOptions *)self appliesSourcePositionAttributes]^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end