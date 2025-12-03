@interface CNMeCardSharingNameFormatter
+ (id)formattedNameFromComponents:(id)components forProvider:(id)provider withFormat:(unint64_t)format;
+ (id)formattedNameFromProvider:(id)provider withFormat:(unint64_t)format;
+ (id)nameComponentsFromProvider:(id)provider;
- (CNMeCardSharingNameFormatter)initWithNameProvider:(id)provider;
- (id)formattedNameWithFormat:(unint64_t)format;
@end

@implementation CNMeCardSharingNameFormatter

- (id)formattedNameWithFormat:(unint64_t)format
{
  cachedFormattedNames = self->_cachedFormattedNames;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedFormattedNames objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [objc_opt_class() formattedNameFromComponents:self->_nameComponents forProvider:self->_nameProvider withFormat:format];
    v8 = self->_cachedFormattedNames;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:format];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (CNMeCardSharingNameFormatter)initWithNameProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = CNMeCardSharingNameFormatter;
  v6 = [(CNMeCardSharingNameFormatter *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nameProvider, provider);
    v8 = [objc_opt_class() nameComponentsFromProvider:providerCopy];
    nameComponents = v7->_nameComponents;
    v7->_nameComponents = v8;

    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    cachedFormattedNames = v7->_cachedFormattedNames;
    v7->_cachedFormattedNames = v10;

    v12 = v7;
  }

  return v7;
}

+ (id)formattedNameFromComponents:(id)components forProvider:(id)provider withFormat:(unint64_t)format
{
  componentsCopy = components;
  providerCopy = provider;
  v9 = providerCopy;
  if (format == 1)
  {
    v10 = [MEMORY[0x1E696ADF8] _localizedShortNameForComponents:componentsCopy withStyle:1 options:0];
  }

  else
  {
    if (format)
    {
      [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:componentsCopy style:0 options:0];
    }

    else
    {
      [providerCopy givenName];
    }
    v10 = ;
  }

  v11 = v10;

  return v11;
}

+ (id)formattedNameFromProvider:(id)provider withFormat:(unint64_t)format
{
  providerCopy = provider;
  v7 = [self nameComponentsFromProvider:providerCopy];
  v8 = [self formattedNameFromComponents:v7 forProvider:providerCopy withFormat:format];

  return v8;
}

+ (id)nameComponentsFromProvider:(id)provider
{
  v3 = MEMORY[0x1E696ADF0];
  providerCopy = provider;
  v5 = objc_alloc_init(v3);
  givenName = [providerCopy givenName];
  [v5 setGivenName:givenName];

  middleName = [providerCopy middleName];
  [v5 setMiddleName:middleName];

  familyName = [providerCopy familyName];

  [v5 setFamilyName:familyName];

  return v5;
}

@end