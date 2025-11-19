@interface _INPBHangUpCallIntent
- (BOOL)isEqual:(id)a3;
- (_INPBHangUpCallIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setCallIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHangUpCallIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_callIdentifier)
  {
    v4 = [(_INPBHangUpCallIntent *)self callIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"callIdentifier"];
  }

  v6 = [(_INPBHangUpCallIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBHangUpCallIntent *)self callIdentifier];
  v6 = [v4 callIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBHangUpCallIntent *)self callIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBHangUpCallIntent *)self callIdentifier];
    v10 = [v4 callIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBHangUpCallIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBHangUpCallIntent *)self intentMetadata];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBHangUpCallIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBHangUpCallIntent allocWithZone:](_INPBHangUpCallIntent init];
  v6 = [(NSString *)self->_callIdentifier copyWithZone:a3];
  [(_INPBHangUpCallIntent *)v5 setCallIdentifier:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBHangUpCallIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHangUpCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHangUpCallIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHangUpCallIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBHangUpCallIntent *)self callIdentifier];

  if (v4)
  {
    callIdentifier = self->_callIdentifier;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBHangUpCallIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBHangUpCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setCallIdentifier:(id)a3
{
  v4 = [a3 copy];
  callIdentifier = self->_callIdentifier;
  self->_callIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, callIdentifier);
}

@end