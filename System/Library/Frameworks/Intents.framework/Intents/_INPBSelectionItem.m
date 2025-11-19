@interface _INPBSelectionItem
- (BOOL)isEqual:(id)a3;
- (_INPBSelectionItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setUuid:(id)a3;
- (void)setVocabularyValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSelectionItem

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_uuid)
  {
    v4 = [(_INPBSelectionItem *)self uuid];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"uuid"];
  }

  v6 = [(_INPBSelectionItem *)self value];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"value"];

  if (self->_vocabularyValue)
  {
    v8 = [(_INPBSelectionItem *)self vocabularyValue];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"vocabularyValue"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(_INPBIntentSlotValue *)self->_value hash]^ v3;
  return v4 ^ [(NSString *)self->_vocabularyValue hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBSelectionItem *)self uuid];
  v6 = [v4 uuid];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBSelectionItem *)self uuid];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSelectionItem *)self uuid];
    v10 = [v4 uuid];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSelectionItem *)self value];
  v6 = [v4 value];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBSelectionItem *)self value];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSelectionItem *)self value];
    v15 = [v4 value];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSelectionItem *)self vocabularyValue];
  v6 = [v4 vocabularyValue];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBSelectionItem *)self vocabularyValue];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBSelectionItem *)self vocabularyValue];
    v20 = [v4 vocabularyValue];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSelectionItem allocWithZone:](_INPBSelectionItem init];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  [(_INPBSelectionItem *)v5 setUuid:v6];

  v7 = [(_INPBIntentSlotValue *)self->_value copyWithZone:a3];
  [(_INPBSelectionItem *)v5 setValue:v7];

  v8 = [(NSString *)self->_vocabularyValue copyWithZone:a3];
  [(_INPBSelectionItem *)v5 setVocabularyValue:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSelectionItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSelectionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSelectionItem *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBSelectionItem *)self uuid];

  if (v4)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBSelectionItem *)self value];

  if (v6)
  {
    v7 = [(_INPBSelectionItem *)self value];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSelectionItem *)self vocabularyValue];

  v9 = v11;
  if (v8)
  {
    vocabularyValue = self->_vocabularyValue;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setVocabularyValue:(id)a3
{
  v4 = [a3 copy];
  vocabularyValue = self->_vocabularyValue;
  self->_vocabularyValue = v4;

  MEMORY[0x1EEE66BB8](v4, vocabularyValue);
}

- (void)setUuid:(id)a3
{
  v4 = [a3 copy];
  uuid = self->_uuid;
  self->_uuid = v4;

  MEMORY[0x1EEE66BB8](v4, uuid);
}

@end