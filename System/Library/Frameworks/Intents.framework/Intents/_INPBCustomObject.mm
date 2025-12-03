@interface _INPBCustomObject
- (BOOL)isEqual:(id)equal;
- (_INPBCustomObject)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAlternative:(id)alternative;
- (void)encodeWithCoder:(id)coder;
- (void)setAlternatives:(id)alternatives;
- (void)setDisplayString:(id)string;
- (void)setIdentifier:(id)identifier;
- (void)setPronunciationHint:(id)hint;
- (void)setSubtitleString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _INPBCustomObject

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternatives count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_alternatives;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"alternative"];
  }

  displayImage = [(_INPBCustomObject *)self displayImage];
  dictionaryRepresentation2 = [displayImage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"displayImage"];

  if (self->_displayString)
  {
    displayString = [(_INPBCustomObject *)self displayString];
    v14 = [displayString copy];
    [dictionary setObject:v14 forKeyedSubscript:@"displayString"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBCustomObject *)self identifier];
    v16 = [identifier copy];
    [dictionary setObject:v16 forKeyedSubscript:@"identifier"];
  }

  if (self->_pronunciationHint)
  {
    pronunciationHint = [(_INPBCustomObject *)self pronunciationHint];
    v18 = [pronunciationHint copy];
    [dictionary setObject:v18 forKeyedSubscript:@"pronunciationHint"];
  }

  if (self->_subtitleString)
  {
    subtitleString = [(_INPBCustomObject *)self subtitleString];
    v20 = [subtitleString copy];
    [dictionary setObject:v20 forKeyedSubscript:@"subtitleString"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_alternatives hash];
  v4 = [(_INPBImageValue *)self->_displayImage hash]^ v3;
  v5 = [(NSString *)self->_displayString hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_identifier hash];
  v7 = [(NSString *)self->_pronunciationHint hash];
  return v6 ^ v7 ^ [(NSString *)self->_subtitleString hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  alternatives = [(_INPBCustomObject *)self alternatives];
  alternatives2 = [equalCopy alternatives];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_31;
  }

  alternatives3 = [(_INPBCustomObject *)self alternatives];
  if (alternatives3)
  {
    v8 = alternatives3;
    alternatives4 = [(_INPBCustomObject *)self alternatives];
    alternatives5 = [equalCopy alternatives];
    v11 = [alternatives4 isEqual:alternatives5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  alternatives = [(_INPBCustomObject *)self displayImage];
  alternatives2 = [equalCopy displayImage];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_31;
  }

  displayImage = [(_INPBCustomObject *)self displayImage];
  if (displayImage)
  {
    v13 = displayImage;
    displayImage2 = [(_INPBCustomObject *)self displayImage];
    displayImage3 = [equalCopy displayImage];
    v16 = [displayImage2 isEqual:displayImage3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  alternatives = [(_INPBCustomObject *)self displayString];
  alternatives2 = [equalCopy displayString];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_31;
  }

  displayString = [(_INPBCustomObject *)self displayString];
  if (displayString)
  {
    v18 = displayString;
    displayString2 = [(_INPBCustomObject *)self displayString];
    displayString3 = [equalCopy displayString];
    v21 = [displayString2 isEqual:displayString3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  alternatives = [(_INPBCustomObject *)self identifier];
  alternatives2 = [equalCopy identifier];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_31;
  }

  identifier = [(_INPBCustomObject *)self identifier];
  if (identifier)
  {
    v23 = identifier;
    identifier2 = [(_INPBCustomObject *)self identifier];
    identifier3 = [equalCopy identifier];
    v26 = [identifier2 isEqual:identifier3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  alternatives = [(_INPBCustomObject *)self pronunciationHint];
  alternatives2 = [equalCopy pronunciationHint];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_31;
  }

  pronunciationHint = [(_INPBCustomObject *)self pronunciationHint];
  if (pronunciationHint)
  {
    v28 = pronunciationHint;
    pronunciationHint2 = [(_INPBCustomObject *)self pronunciationHint];
    pronunciationHint3 = [equalCopy pronunciationHint];
    v31 = [pronunciationHint2 isEqual:pronunciationHint3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  alternatives = [(_INPBCustomObject *)self subtitleString];
  alternatives2 = [equalCopy subtitleString];
  if ((alternatives != 0) != (alternatives2 == 0))
  {
    subtitleString = [(_INPBCustomObject *)self subtitleString];
    if (!subtitleString)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = subtitleString;
    subtitleString2 = [(_INPBCustomObject *)self subtitleString];
    subtitleString3 = [equalCopy subtitleString];
    v36 = [subtitleString2 isEqual:subtitleString3];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCustomObject allocWithZone:](_INPBCustomObject init];
  v6 = [(NSArray *)self->_alternatives copyWithZone:zone];
  [(_INPBCustomObject *)v5 setAlternatives:v6];

  v7 = [(_INPBImageValue *)self->_displayImage copyWithZone:zone];
  [(_INPBCustomObject *)v5 setDisplayImage:v7];

  v8 = [(NSString *)self->_displayString copyWithZone:zone];
  [(_INPBCustomObject *)v5 setDisplayString:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBCustomObject *)v5 setIdentifier:v9];

  v10 = [(NSString *)self->_pronunciationHint copyWithZone:zone];
  [(_INPBCustomObject *)v5 setPronunciationHint:v10];

  v11 = [(NSString *)self->_subtitleString copyWithZone:zone];
  [(_INPBCustomObject *)v5 setSubtitleString:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCustomObject *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCustomObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCustomObject *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_alternatives;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  displayImage = [(_INPBCustomObject *)self displayImage];

  if (displayImage)
  {
    displayImage2 = [(_INPBCustomObject *)self displayImage];
    PBDataWriterWriteSubmessage();
  }

  displayString = [(_INPBCustomObject *)self displayString];

  if (displayString)
  {
    displayString = self->_displayString;
    PBDataWriterWriteStringField();
  }

  identifier = [(_INPBCustomObject *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  pronunciationHint = [(_INPBCustomObject *)self pronunciationHint];

  if (pronunciationHint)
  {
    pronunciationHint = self->_pronunciationHint;
    PBDataWriterWriteStringField();
  }

  subtitleString = [(_INPBCustomObject *)self subtitleString];

  if (subtitleString)
  {
    subtitleString = self->_subtitleString;
    PBDataWriterWriteStringField();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setSubtitleString:(id)string
{
  v4 = [string copy];
  subtitleString = self->_subtitleString;
  self->_subtitleString = v4;

  MEMORY[0x1EEE66BB8](v4, subtitleString);
}

- (void)setPronunciationHint:(id)hint
{
  v4 = [hint copy];
  pronunciationHint = self->_pronunciationHint;
  self->_pronunciationHint = v4;

  MEMORY[0x1EEE66BB8](v4, pronunciationHint);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setDisplayString:(id)string
{
  v4 = [string copy];
  displayString = self->_displayString;
  self->_displayString = v4;

  MEMORY[0x1EEE66BB8](v4, displayString);
}

- (void)addAlternative:(id)alternative
{
  alternativeCopy = alternative;
  alternatives = self->_alternatives;
  v8 = alternativeCopy;
  if (!alternatives)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternatives;
    self->_alternatives = array;

    alternativeCopy = v8;
    alternatives = self->_alternatives;
  }

  [(NSArray *)alternatives addObject:alternativeCopy];
}

- (void)setAlternatives:(id)alternatives
{
  v4 = [alternatives mutableCopy];
  alternatives = self->_alternatives;
  self->_alternatives = v4;

  MEMORY[0x1EEE66BB8](v4, alternatives);
}

@end