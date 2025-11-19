@interface _LTStreamingOutput
- (BOOL)isEqual:(id)a3;
- (_LTStreamingOutput)initWithCoder:(id)a3;
- (_LTStreamingOutput)initWithText:(id)a3 sourceText:(id)a4 locale:(id)a5 isFinal:(BOOL)a6 sourceIdentifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTStreamingOutput

- (_LTStreamingOutput)initWithText:(id)a3 sourceText:(id)a4 locale:(id)a5 isFinal:(BOOL)a6 sourceIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = _LTStreamingOutput;
  v16 = [(_LTStreamingOutput *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    translatedText = v16->_translatedText;
    v16->_translatedText = v17;

    v19 = [v13 copy];
    sourceText = v16->_sourceText;
    v16->_sourceText = v19;

    v21 = [v14 copy];
    locale = v16->_locale;
    v16->_locale = v21;

    v16->_isFinal = a6;
    v23 = [v15 copy];
    sourceIdentifier = v16->_sourceIdentifier;
    v16->_sourceIdentifier = v23;

    v25 = v16;
  }

  return v16;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_isFinal)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(NSLocale *)self->_locale _ltLocaleIdentifier];
  translatedText = self->_translatedText;
  sourceText = self->_sourceText;
  v10 = [(NSUUID *)self->_sourceIdentifier UUIDString];
  v11 = [v3 stringWithFormat:@"<%@: %p isFinal: %@; locale: %@; text: %@; sourceText: %@, sourceIdentifier: %@>", v5, self, v6, v7, translatedText, sourceText, v10];;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    translatedText = self->_translatedText;
    v7 = [v5 translatedText];
    if ([(NSString *)translatedText isEqualToString:v7])
    {
      sourceText = self->_sourceText;
      v9 = [v5 sourceText];
      if (-[NSString isEqualToString:](sourceText, "isEqualToString:", v9) && (isFinal = self->_isFinal, isFinal == [v5 isFinal]))
      {
        locale = self->_locale;
        v12 = [v5 locale];
        if ([(NSLocale *)locale isEqual:v12])
        {
          sourceIdentifier = self->_sourceIdentifier;
          v14 = [v5 sourceIdentifier];
          if (sourceIdentifier == v14)
          {
            v17 = 1;
          }

          else
          {
            v15 = self->_sourceIdentifier;
            v16 = [v5 sourceIdentifier];
            v17 = [(NSUUID *)v15 isEqual:v16];
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_translatedText hash];
  v4 = [(NSString *)self->_sourceText hash]^ v3;
  v5 = v4 ^ [(NSLocale *)self->_locale hash];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFinal];
  v7 = v5 ^ [v6 hash];
  v8 = [(NSUUID *)self->_sourceIdentifier hash];

  return v7 ^ v8;
}

- (_LTStreamingOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _LTStreamingOutput;
  v5 = [(_LTStreamingOutput *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translatedText"];
    translatedText = v5->_translatedText;
    v5->_translatedText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceText"];
    sourceText = v5->_sourceText;
    v5->_sourceText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v10;

    v5->_isFinal = [v4 decodeBoolForKey:@"isFinal"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  translatedText = self->_translatedText;
  v5 = a3;
  [v5 encodeObject:translatedText forKey:@"translatedText"];
  [v5 encodeObject:self->_sourceText forKey:@"sourceText"];
  [v5 encodeObject:self->_locale forKey:@"locale"];
  [v5 encodeBool:self->_isFinal forKey:@"isFinal"];
  [v5 encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTStreamingOutput alloc];
  locale = self->_locale;
  translatedText = self->_translatedText;
  isFinal = self->_isFinal;
  sourceText = self->_sourceText;
  sourceIdentifier = self->_sourceIdentifier;

  return [(_LTStreamingOutput *)v4 initWithText:translatedText sourceText:sourceText locale:locale isFinal:isFinal sourceIdentifier:sourceIdentifier];
}

@end