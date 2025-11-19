@interface NSInflectionRule
+ (BOOL)canInflectLanguage:(NSString *)language;
+ (BOOL)canInflectPreferredLocalization;
+ (NSInflectionRule)automaticRule;
- (id)_init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSInflectionRule

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSInflectionRule;
  return [(NSInflectionRule *)&v3 init];
}

+ (NSInflectionRule)automaticRule
{
  if (qword_1ED43E6E0 != -1)
  {
    dispatch_once(&qword_1ED43E6E0, &__block_literal_global_62);
  }

  return _MergedGlobals_3_0;
}

id __33__NSInflectionRule_automaticRule__block_invoke()
{
  result = [[_NSInflectionRuleAutomatic alloc] _init];
  _MergedGlobals_3_0 = result;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

+ (BOOL)canInflectPreferredLocalization
{
  v3 = -[NSArray firstObject]([+[NSBundle mainBundle](NSBundle preferredLocalizations], "firstObject");
  if (v3)
  {

    LOBYTE(v3) = [a1 canInflectLanguage:v3];
  }

  return v3;
}

+ (BOOL)canInflectLanguage:(NSString *)language
{
  v4 = _NSRequiresMorphunInflectionForLanguageIdentifier(language);
  if (v4)
  {

    LOBYTE(v4) = _NSRequiresMorphunInflectionForLanguageIdentifier(language);
  }

  return v4;
}

@end