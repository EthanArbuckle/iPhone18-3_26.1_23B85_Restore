@interface _LTTranslationResult
- (_LTTranslationResult)init;
- (_LTTranslationResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationResult

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (!self->_locale && ((_LTIsInternalInstall() & 1) != 0 || -1431655765 * arc4random() <= 0x55555555))
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Null value for locale when encoding LTTranslationResult" userInfo:0];
    [v4 raise];
  }

  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_locale forKey:@"locale"];
  [v5 encodeObject:self->_translations forKey:@"translations"];
  [v5 encodeObject:self->_sourceString forKey:@"sourceString"];
  [v5 encodeObject:self->_sanitizedSourceString forKey:@"sanitizedSourceString"];
  [v5 encodeBool:self->_isFinal forKey:@"isFinal"];
  [v5 encodeBool:self->_endOfUtterance forKey:@"endOfUtterance"];
  [v5 encodeObject:self->_alignments forKey:@"alignments"];
  [v5 encodeInteger:self->_route forKey:@"route"];
  [v5 encodeObject:self->_disambiguableResult forKey:@"disambiguableResult"];
}

- (_LTTranslationResult)init
{
  v6.receiver = self;
  v6.super_class = _LTTranslationResult;
  v2 = [(_LTTranslationResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_isFinal = 1;
    v4 = v2;
  }

  return v3;
}

- (_LTTranslationResult)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_LTTranslationResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v8;

    v10 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"translations"];
    translations = v5->_translations;
    v5->_translations = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceString"];
    sourceString = v5->_sourceString;
    v5->_sourceString = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedSourceString"];
    sanitizedSourceString = v5->_sanitizedSourceString;
    v5->_sanitizedSourceString = v17;

    v5->_isFinal = [v4 decodeBoolForKey:@"isFinal"];
    v5->_endOfUtterance = [v4 decodeBoolForKey:@"endOfUtterance"];
    v5->_route = [v4 decodeIntegerForKey:@"route"];
    v19 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v21 = [v19 setWithArray:v20];

    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"alignments"];
    alignments = v5->_alignments;
    v5->_alignments = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disambiguableResult"];
    disambiguableResult = v5->_disambiguableResult;
    v5->_disambiguableResult = v24;

    v26 = v5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

@end