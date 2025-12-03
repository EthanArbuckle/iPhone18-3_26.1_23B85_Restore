@interface _INPBGetVisualCodeIntent
- (BOOL)isEqual:(id)equal;
- (_INPBGetVisualCodeIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsVisualCodeType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setVisualCodeType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetVisualCodeIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBGetVisualCodeIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBGetVisualCodeIntent *)self hasVisualCodeType])
  {
    visualCodeType = [(_INPBGetVisualCodeIntent *)self visualCodeType];
    if (visualCodeType >= 7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", visualCodeType];
    }

    else
    {
      v7 = *(&off_1E727E770 + visualCodeType);
    }

    [dictionary setObject:v7 forKeyedSubscript:@"visualCodeType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBGetVisualCodeIntent *)self hasVisualCodeType])
  {
    v4 = 2654435761 * self->_visualCodeType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  intentMetadata = [(_INPBGetVisualCodeIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  v7 = intentMetadata2;
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    intentMetadata3 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
    if (intentMetadata3)
    {
      v9 = intentMetadata3;
      intentMetadata4 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
      intentMetadata5 = [equalCopy intentMetadata];
      v12 = [intentMetadata4 isEqual:intentMetadata5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasVisualCodeType = [(_INPBGetVisualCodeIntent *)self hasVisualCodeType];
    if (hasVisualCodeType == [equalCopy hasVisualCodeType])
    {
      if (!-[_INPBGetVisualCodeIntent hasVisualCodeType](self, "hasVisualCodeType") || ![equalCopy hasVisualCodeType] || (visualCodeType = self->_visualCodeType, visualCodeType == objc_msgSend(equalCopy, "visualCodeType")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetVisualCodeIntent allocWithZone:](_INPBGetVisualCodeIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBGetVisualCodeIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBGetVisualCodeIntent *)self hasVisualCodeType])
  {
    [(_INPBGetVisualCodeIntent *)v5 setVisualCodeType:[(_INPBGetVisualCodeIntent *)self visualCodeType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetVisualCodeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetVisualCodeIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetVisualCodeIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBGetVisualCodeIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetVisualCodeIntent *)self hasVisualCodeType])
  {
    visualCodeType = self->_visualCodeType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsVisualCodeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CONTACT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"REQUEST_PAYMENT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SEND_PAYMENT"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TRANSIT"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"BUS"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"SUBWAY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setVisualCodeType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_visualCodeType = type;
  }
}

@end