@interface _LTTranslationGenderAlternative
+ (id)genderAlternativeFromDictionary:(id)a3 withGroup:(id)a4;
+ (id)genderAlternativesFromDictionary:(id)a3;
- (_LTTranslationGenderAlternative)initWithCoder:(id)a3;
- (_NSRange)sourceRange;
- (_NSRange)targetRange;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationGenderAlternative

+ (id)genderAlternativesFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"group"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"spans"];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = MEMORY[0x277CBEBF8];
  if (v6 && v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68___LTTranslationGenderAlternative_genderAlternativesFromDictionary___block_invoke;
    v12[3] = &unk_278B6D9B0;
    v13 = v6;
    v10 = [v9 _ltCompactMap:v12];
  }

  return v10;
}

+ (id)genderAlternativeFromDictionary:(id)a3 withGroup:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"start"];
  v8 = [v6 objectForKeyedSubscript:@"end"];
  v9 = [v6 objectForKeyedSubscript:@"projection"];

  v10 = [v9 objectForKeyedSubscript:@"start"];
  v11 = [v9 objectForKeyedSubscript:@"end"];
  v12 = [v9 objectForKeyedSubscript:@"default_gender"];
  v13 = 0;
  if (v7 && v8 && v10 && v11)
  {
    v13 = objc_alloc_init(_LTTranslationGenderAlternative);
    [(_LTTranslationGenderAlternative *)v13 setGroup:v5];
    -[_LTTranslationGenderAlternative setSourceRange:](v13, "setSourceRange:", [v7 intValue], (objc_msgSend(v8, "intValue") - objc_msgSend(v7, "intValue") + 1));
    -[_LTTranslationGenderAlternative setTargetRange:](v13, "setTargetRange:", [v10 intValue], (objc_msgSend(v11, "intValue") - objc_msgSend(v10, "intValue") + 1));
    [(_LTTranslationGenderAlternative *)v13 setDefaultGender:v12];
  }

  return v13;
}

- (_LTTranslationGenderAlternative)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _LTTranslationGenderAlternative;
  v5 = [(_LTTranslationGenderAlternative *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = v5->_group;
    v5->_group = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceRange"];
    v5->_sourceRange.location = [v8 rangeValue];
    v5->_sourceRange.length = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetRange"];
    v5->_targetRange.location = [v10 rangeValue];
    v5->_targetRange.length = v11;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultGender"];
    defaultGender = v5->_defaultGender;
    v5->_defaultGender = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  group = self->_group;
  v5 = a3;
  [v5 encodeObject:group forKey:@"group"];
  v7 = [MEMORY[0x277CCAE60] valueWithRange:{self->_sourceRange.location, self->_sourceRange.length}];
  [v5 encodeObject:v7 forKey:@"sourceRange"];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{self->_targetRange.location, self->_targetRange.length}];
  [v5 encodeObject:v6 forKey:@"targetRange"];
  [v5 encodeObject:self->_defaultGender forKey:@"defaultGender"];
}

- (_NSRange)sourceRange
{
  length = self->_sourceRange.length;
  location = self->_sourceRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)targetRange
{
  length = self->_targetRange.length;
  location = self->_targetRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end