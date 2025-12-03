@interface _LTStreamingOutput
- (BOOL)isEqual:(id)equal;
- (_LTStreamingOutput)initWithCoder:(id)coder;
- (_LTStreamingOutput)initWithText:(id)text sourceText:(id)sourceText locale:(id)locale isFinal:(BOOL)final sourceIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTStreamingOutput

- (_LTStreamingOutput)initWithText:(id)text sourceText:(id)sourceText locale:(id)locale isFinal:(BOOL)final sourceIdentifier:(id)identifier
{
  textCopy = text;
  sourceTextCopy = sourceText;
  localeCopy = locale;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = _LTStreamingOutput;
  v16 = [(_LTStreamingOutput *)&v27 init];
  if (v16)
  {
    v17 = [textCopy copy];
    translatedText = v16->_translatedText;
    v16->_translatedText = v17;

    v19 = [sourceTextCopy copy];
    sourceText = v16->_sourceText;
    v16->_sourceText = v19;

    v21 = [localeCopy copy];
    locale = v16->_locale;
    v16->_locale = v21;

    v16->_isFinal = final;
    v23 = [identifierCopy copy];
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

  _ltLocaleIdentifier = [(NSLocale *)self->_locale _ltLocaleIdentifier];
  translatedText = self->_translatedText;
  sourceText = self->_sourceText;
  uUIDString = [(NSUUID *)self->_sourceIdentifier UUIDString];
  v11 = [v3 stringWithFormat:@"<%@: %p isFinal: %@; locale: %@; text: %@; sourceText: %@, sourceIdentifier: %@>", v5, self, v6, _ltLocaleIdentifier, translatedText, sourceText, uUIDString];;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    translatedText = self->_translatedText;
    translatedText = [v5 translatedText];
    if ([(NSString *)translatedText isEqualToString:translatedText])
    {
      sourceText = self->_sourceText;
      sourceText = [v5 sourceText];
      if (-[NSString isEqualToString:](sourceText, "isEqualToString:", sourceText) && (isFinal = self->_isFinal, isFinal == [v5 isFinal]))
      {
        locale = self->_locale;
        locale = [v5 locale];
        if ([(NSLocale *)locale isEqual:locale])
        {
          sourceIdentifier = self->_sourceIdentifier;
          sourceIdentifier = [v5 sourceIdentifier];
          if (sourceIdentifier == sourceIdentifier)
          {
            v17 = 1;
          }

          else
          {
            v15 = self->_sourceIdentifier;
            sourceIdentifier2 = [v5 sourceIdentifier];
            v17 = [(NSUUID *)v15 isEqual:sourceIdentifier2];
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

- (_LTStreamingOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _LTStreamingOutput;
  v5 = [(_LTStreamingOutput *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translatedText"];
    translatedText = v5->_translatedText;
    v5->_translatedText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceText"];
    sourceText = v5->_sourceText;
    v5->_sourceText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v10;

    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  translatedText = self->_translatedText;
  coderCopy = coder;
  [coderCopy encodeObject:translatedText forKey:@"translatedText"];
  [coderCopy encodeObject:self->_sourceText forKey:@"sourceText"];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
  [coderCopy encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
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