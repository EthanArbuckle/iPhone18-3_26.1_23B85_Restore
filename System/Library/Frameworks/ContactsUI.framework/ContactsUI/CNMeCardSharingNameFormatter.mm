@interface CNMeCardSharingNameFormatter
+ (id)formattedNameFromComponents:(id)a3 forProvider:(id)a4 withFormat:(unint64_t)a5;
+ (id)formattedNameFromProvider:(id)a3 withFormat:(unint64_t)a4;
+ (id)nameComponentsFromProvider:(id)a3;
- (CNMeCardSharingNameFormatter)initWithNameProvider:(id)a3;
- (id)formattedNameWithFormat:(unint64_t)a3;
@end

@implementation CNMeCardSharingNameFormatter

- (id)formattedNameWithFormat:(unint64_t)a3
{
  cachedFormattedNames = self->_cachedFormattedNames;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedFormattedNames objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [objc_opt_class() formattedNameFromComponents:self->_nameComponents forProvider:self->_nameProvider withFormat:a3];
    v8 = self->_cachedFormattedNames;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (CNMeCardSharingNameFormatter)initWithNameProvider:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNMeCardSharingNameFormatter;
  v6 = [(CNMeCardSharingNameFormatter *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nameProvider, a3);
    v8 = [objc_opt_class() nameComponentsFromProvider:v5];
    nameComponents = v7->_nameComponents;
    v7->_nameComponents = v8;

    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    cachedFormattedNames = v7->_cachedFormattedNames;
    v7->_cachedFormattedNames = v10;

    v12 = v7;
  }

  return v7;
}

+ (id)formattedNameFromComponents:(id)a3 forProvider:(id)a4 withFormat:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a5 == 1)
  {
    v10 = [MEMORY[0x1E696ADF8] _localizedShortNameForComponents:v7 withStyle:1 options:0];
  }

  else
  {
    if (a5)
    {
      [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v7 style:0 options:0];
    }

    else
    {
      [v8 givenName];
    }
    v10 = ;
  }

  v11 = v10;

  return v11;
}

+ (id)formattedNameFromProvider:(id)a3 withFormat:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 nameComponentsFromProvider:v6];
  v8 = [a1 formattedNameFromComponents:v7 forProvider:v6 withFormat:a4];

  return v8;
}

+ (id)nameComponentsFromProvider:(id)a3
{
  v3 = MEMORY[0x1E696ADF0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 givenName];
  [v5 setGivenName:v6];

  v7 = [v4 middleName];
  [v5 setMiddleName:v7];

  v8 = [v4 familyName];

  [v5 setFamilyName:v8];

  return v5;
}

@end