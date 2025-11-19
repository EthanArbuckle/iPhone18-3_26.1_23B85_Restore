@interface _LTTranslationCandidate
- (_LTTranslationCandidate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationCandidate

- (_LTTranslationCandidate)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = _LTTranslationCandidate;
  v5 = [(_LTTranslationCandidate *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formattedString"];
    formattedString = v5->_formattedString;
    v5->_formattedString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedFormattedString"];
    sanitizedFormattedString = v5->_sanitizedFormattedString;
    v5->_sanitizedFormattedString = v8;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v10;
    v5->_lowConfidence = [v4 decodeBoolForKey:@"lowConfidence"];
    v11 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v14;

    v16 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"senses"];
    senses = v5->_senses;
    v5->_senses = v19;

    v21 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v23 = [v21 setWithArray:v22];

    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"genders"];
    genderAlternatives = v5->_genderAlternatives;
    v5->_genderAlternatives = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statistics"];
    statistics = v5->_statistics;
    v5->_statistics = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"romanization"];
    romanization = v5->_romanization;
    v5->_romanization = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stableString"];
    stableString = v5->_stableString;
    v5->_stableString = v30;

    v32 = v5;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  formattedString = self->_formattedString;
  v5 = a3;
  [v5 encodeObject:formattedString forKey:@"formattedString"];
  [v5 encodeObject:self->_sanitizedFormattedString forKey:@"sanitizedFormattedString"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
  [v5 encodeBool:self->_lowConfidence forKey:@"lowConfidence"];
  [v5 encodeObject:self->_tokens forKey:@"tokens"];
  [v5 encodeObject:self->_senses forKey:@"senses"];
  [v5 encodeObject:self->_genderAlternatives forKey:@"genders"];
  [v5 encodeObject:self->_statistics forKey:@"statistics"];
  [v5 encodeObject:self->_romanization forKey:@"romanization"];
  [v5 encodeObject:self->_stableString forKey:@"stableString"];
}

@end