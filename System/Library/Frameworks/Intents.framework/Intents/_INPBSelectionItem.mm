@interface _INPBSelectionItem
- (BOOL)isEqual:(id)equal;
- (_INPBSelectionItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setUuid:(id)uuid;
- (void)setVocabularyValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBSelectionItem

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_uuid)
  {
    uuid = [(_INPBSelectionItem *)self uuid];
    v5 = [uuid copy];
    [dictionary setObject:v5 forKeyedSubscript:@"uuid"];
  }

  value = [(_INPBSelectionItem *)self value];
  dictionaryRepresentation = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];

  if (self->_vocabularyValue)
  {
    vocabularyValue = [(_INPBSelectionItem *)self vocabularyValue];
    v9 = [vocabularyValue copy];
    [dictionary setObject:v9 forKeyedSubscript:@"vocabularyValue"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(_INPBIntentSlotValue *)self->_value hash]^ v3;
  return v4 ^ [(NSString *)self->_vocabularyValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  uuid = [(_INPBSelectionItem *)self uuid];
  uuid2 = [equalCopy uuid];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_16;
  }

  uuid3 = [(_INPBSelectionItem *)self uuid];
  if (uuid3)
  {
    v8 = uuid3;
    uuid4 = [(_INPBSelectionItem *)self uuid];
    uuid5 = [equalCopy uuid];
    v11 = [uuid4 isEqual:uuid5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  uuid = [(_INPBSelectionItem *)self value];
  uuid2 = [equalCopy value];
  if ((uuid != 0) == (uuid2 == 0))
  {
    goto LABEL_16;
  }

  value = [(_INPBSelectionItem *)self value];
  if (value)
  {
    v13 = value;
    value2 = [(_INPBSelectionItem *)self value];
    value3 = [equalCopy value];
    v16 = [value2 isEqual:value3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  uuid = [(_INPBSelectionItem *)self vocabularyValue];
  uuid2 = [equalCopy vocabularyValue];
  if ((uuid != 0) != (uuid2 == 0))
  {
    vocabularyValue = [(_INPBSelectionItem *)self vocabularyValue];
    if (!vocabularyValue)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = vocabularyValue;
    vocabularyValue2 = [(_INPBSelectionItem *)self vocabularyValue];
    vocabularyValue3 = [equalCopy vocabularyValue];
    v21 = [vocabularyValue2 isEqual:vocabularyValue3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSelectionItem allocWithZone:](_INPBSelectionItem init];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  [(_INPBSelectionItem *)v5 setUuid:v6];

  v7 = [(_INPBIntentSlotValue *)self->_value copyWithZone:zone];
  [(_INPBSelectionItem *)v5 setValue:v7];

  v8 = [(NSString *)self->_vocabularyValue copyWithZone:zone];
  [(_INPBSelectionItem *)v5 setVocabularyValue:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSelectionItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSelectionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSelectionItem *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  uuid = [(_INPBSelectionItem *)self uuid];

  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  value = [(_INPBSelectionItem *)self value];

  if (value)
  {
    value2 = [(_INPBSelectionItem *)self value];
    PBDataWriterWriteSubmessage();
  }

  vocabularyValue = [(_INPBSelectionItem *)self vocabularyValue];

  v9 = toCopy;
  if (vocabularyValue)
  {
    vocabularyValue = self->_vocabularyValue;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setVocabularyValue:(id)value
{
  v4 = [value copy];
  vocabularyValue = self->_vocabularyValue;
  self->_vocabularyValue = v4;

  MEMORY[0x1EEE66BB8](v4, vocabularyValue);
}

- (void)setUuid:(id)uuid
{
  v4 = [uuid copy];
  uuid = self->_uuid;
  self->_uuid = v4;

  MEMORY[0x1EEE66BB8](v4, uuid);
}

@end