@interface _INPBCustomObject
- (BOOL)isEqual:(id)a3;
- (_INPBCustomObject)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAlternative:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlternatives:(id)a3;
- (void)setDisplayString:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setPronunciationHint:(id)a3;
- (void)setSubtitleString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCustomObject

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternatives count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alternative"];
  }

  v11 = [(_INPBCustomObject *)self displayImage];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"displayImage"];

  if (self->_displayString)
  {
    v13 = [(_INPBCustomObject *)self displayString];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"displayString"];
  }

  if (self->_identifier)
  {
    v15 = [(_INPBCustomObject *)self identifier];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"identifier"];
  }

  if (self->_pronunciationHint)
  {
    v17 = [(_INPBCustomObject *)self pronunciationHint];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"pronunciationHint"];
  }

  if (self->_subtitleString)
  {
    v19 = [(_INPBCustomObject *)self subtitleString];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"subtitleString"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBCustomObject *)self alternatives];
  v6 = [v4 alternatives];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBCustomObject *)self alternatives];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCustomObject *)self alternatives];
    v10 = [v4 alternatives];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBCustomObject *)self displayImage];
  v6 = [v4 displayImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBCustomObject *)self displayImage];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCustomObject *)self displayImage];
    v15 = [v4 displayImage];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBCustomObject *)self displayString];
  v6 = [v4 displayString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBCustomObject *)self displayString];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBCustomObject *)self displayString];
    v20 = [v4 displayString];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBCustomObject *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBCustomObject *)self identifier];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBCustomObject *)self identifier];
    v25 = [v4 identifier];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBCustomObject *)self pronunciationHint];
  v6 = [v4 pronunciationHint];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBCustomObject *)self pronunciationHint];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBCustomObject *)self pronunciationHint];
    v30 = [v4 pronunciationHint];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBCustomObject *)self subtitleString];
  v6 = [v4 subtitleString];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_INPBCustomObject *)self subtitleString];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_INPBCustomObject *)self subtitleString];
    v35 = [v4 subtitleString];
    v36 = [v34 isEqual:v35];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCustomObject allocWithZone:](_INPBCustomObject init];
  v6 = [(NSArray *)self->_alternatives copyWithZone:a3];
  [(_INPBCustomObject *)v5 setAlternatives:v6];

  v7 = [(_INPBImageValue *)self->_displayImage copyWithZone:a3];
  [(_INPBCustomObject *)v5 setDisplayImage:v7];

  v8 = [(NSString *)self->_displayString copyWithZone:a3];
  [(_INPBCustomObject *)v5 setDisplayString:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBCustomObject *)v5 setIdentifier:v9];

  v10 = [(NSString *)self->_pronunciationHint copyWithZone:a3];
  [(_INPBCustomObject *)v5 setPronunciationHint:v10];

  v11 = [(NSString *)self->_subtitleString copyWithZone:a3];
  [(_INPBCustomObject *)v5 setSubtitleString:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCustomObject *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCustomObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCustomObject *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBCustomObject *)self displayImage];

  if (v11)
  {
    v12 = [(_INPBCustomObject *)self displayImage];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBCustomObject *)self displayString];

  if (v13)
  {
    displayString = self->_displayString;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBCustomObject *)self identifier];

  if (v15)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v17 = [(_INPBCustomObject *)self pronunciationHint];

  if (v17)
  {
    pronunciationHint = self->_pronunciationHint;
    PBDataWriterWriteStringField();
  }

  v19 = [(_INPBCustomObject *)self subtitleString];

  if (v19)
  {
    subtitleString = self->_subtitleString;
    PBDataWriterWriteStringField();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setSubtitleString:(id)a3
{
  v4 = [a3 copy];
  subtitleString = self->_subtitleString;
  self->_subtitleString = v4;

  MEMORY[0x1EEE66BB8](v4, subtitleString);
}

- (void)setPronunciationHint:(id)a3
{
  v4 = [a3 copy];
  pronunciationHint = self->_pronunciationHint;
  self->_pronunciationHint = v4;

  MEMORY[0x1EEE66BB8](v4, pronunciationHint);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setDisplayString:(id)a3
{
  v4 = [a3 copy];
  displayString = self->_displayString;
  self->_displayString = v4;

  MEMORY[0x1EEE66BB8](v4, displayString);
}

- (void)addAlternative:(id)a3
{
  v4 = a3;
  alternatives = self->_alternatives;
  v8 = v4;
  if (!alternatives)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternatives;
    self->_alternatives = v6;

    v4 = v8;
    alternatives = self->_alternatives;
  }

  [(NSArray *)alternatives addObject:v4];
}

- (void)setAlternatives:(id)a3
{
  v4 = [a3 mutableCopy];
  alternatives = self->_alternatives;
  self->_alternatives = v4;

  MEMORY[0x1EEE66BB8](v4, alternatives);
}

@end