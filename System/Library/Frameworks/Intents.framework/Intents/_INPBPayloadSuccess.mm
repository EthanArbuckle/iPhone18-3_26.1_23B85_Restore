@interface _INPBPayloadSuccess
- (BOOL)isEqual:(id)equal;
- (_INPBPayloadSuccess)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setResolvedKeyPath:(id)path;
- (void)writeTo:(id)to;
@end

@implementation _INPBPayloadSuccess

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_resolvedKeyPath)
  {
    resolvedKeyPath = [(_INPBPayloadSuccess *)self resolvedKeyPath];
    v5 = [resolvedKeyPath copy];
    [dictionary setObject:v5 forKeyedSubscript:@"resolvedKeyPath"];
  }

  resolvedValue = [(_INPBPayloadSuccess *)self resolvedValue];
  dictionaryRepresentation = [resolvedValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"resolvedValue"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  resolvedKeyPath = [(_INPBPayloadSuccess *)self resolvedKeyPath];
  resolvedKeyPath2 = [equalCopy resolvedKeyPath];
  if ((resolvedKeyPath != 0) == (resolvedKeyPath2 == 0))
  {
    goto LABEL_11;
  }

  resolvedKeyPath3 = [(_INPBPayloadSuccess *)self resolvedKeyPath];
  if (resolvedKeyPath3)
  {
    v8 = resolvedKeyPath3;
    resolvedKeyPath4 = [(_INPBPayloadSuccess *)self resolvedKeyPath];
    resolvedKeyPath5 = [equalCopy resolvedKeyPath];
    v11 = [resolvedKeyPath4 isEqual:resolvedKeyPath5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  resolvedKeyPath = [(_INPBPayloadSuccess *)self resolvedValue];
  resolvedKeyPath2 = [equalCopy resolvedValue];
  if ((resolvedKeyPath != 0) != (resolvedKeyPath2 == 0))
  {
    resolvedValue = [(_INPBPayloadSuccess *)self resolvedValue];
    if (!resolvedValue)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = resolvedValue;
    resolvedValue2 = [(_INPBPayloadSuccess *)self resolvedValue];
    resolvedValue3 = [equalCopy resolvedValue];
    v16 = [resolvedValue2 isEqual:resolvedValue3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPayloadSuccess allocWithZone:](_INPBPayloadSuccess init];
  v6 = [(NSString *)self->_resolvedKeyPath copyWithZone:zone];
  [(_INPBPayloadSuccess *)v5 setResolvedKeyPath:v6];

  v7 = [(_INPBIntentSlotValue *)self->_resolvedValue copyWithZone:zone];
  [(_INPBPayloadSuccess *)v5 setResolvedValue:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPayloadSuccess *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPayloadSuccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPayloadSuccess *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  resolvedKeyPath = [(_INPBPayloadSuccess *)self resolvedKeyPath];

  if (resolvedKeyPath)
  {
    resolvedKeyPath = self->_resolvedKeyPath;
    PBDataWriterWriteStringField();
  }

  resolvedValue = [(_INPBPayloadSuccess *)self resolvedValue];

  if (resolvedValue)
  {
    resolvedValue2 = [(_INPBPayloadSuccess *)self resolvedValue];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setResolvedKeyPath:(id)path
{
  v4 = [path copy];
  resolvedKeyPath = self->_resolvedKeyPath;
  self->_resolvedKeyPath = v4;

  MEMORY[0x1EEE66BB8](v4, resolvedKeyPath);
}

@end