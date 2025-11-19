@interface _INPBGetVisualCodeIntent
- (BOOL)isEqual:(id)a3;
- (_INPBGetVisualCodeIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsVisualCodeType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setVisualCodeType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetVisualCodeIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBGetVisualCodeIntent *)self hasVisualCodeType])
  {
    v6 = [(_INPBGetVisualCodeIntent *)self visualCodeType];
    if (v6 >= 7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E727E770 + v6);
    }

    [v3 setObject:v7 forKeyedSubscript:@"visualCodeType"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
      v11 = [v4 intentMetadata];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBGetVisualCodeIntent *)self hasVisualCodeType];
    if (v13 == [v4 hasVisualCodeType])
    {
      if (!-[_INPBGetVisualCodeIntent hasVisualCodeType](self, "hasVisualCodeType") || ![v4 hasVisualCodeType] || (visualCodeType = self->_visualCodeType, visualCodeType == objc_msgSend(v4, "visualCodeType")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBGetVisualCodeIntent allocWithZone:](_INPBGetVisualCodeIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBGetVisualCodeIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBGetVisualCodeIntent *)self hasVisualCodeType])
  {
    [(_INPBGetVisualCodeIntent *)v5 setVisualCodeType:[(_INPBGetVisualCodeIntent *)self visualCodeType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetVisualCodeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetVisualCodeIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetVisualCodeIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBGetVisualCodeIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBGetVisualCodeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetVisualCodeIntent *)self hasVisualCodeType])
  {
    visualCodeType = self->_visualCodeType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsVisualCodeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTACT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REQUEST_PAYMENT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SEND_PAYMENT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TRANSIT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BUS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SUBWAY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setVisualCodeType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_visualCodeType = a3;
  }
}

@end