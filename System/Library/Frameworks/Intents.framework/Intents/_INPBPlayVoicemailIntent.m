@interface _INPBPlayVoicemailIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPlayVoicemailIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setCallRecordIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPlayVoicemailIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_callRecordIdentifier)
  {
    v4 = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"callRecordIdentifier"];
  }

  v6 = [(_INPBPlayVoicemailIntent *)self intentMetadata];
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

  v5 = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
  v6 = [v4 callRecordIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];
    v10 = [v4 callRecordIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayVoicemailIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBPlayVoicemailIntent *)self intentMetadata];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBPlayVoicemailIntent *)self intentMetadata];
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
  v5 = [+[_INPBPlayVoicemailIntent allocWithZone:](_INPBPlayVoicemailIntent init];
  v6 = [(NSString *)self->_callRecordIdentifier copyWithZone:a3];
  [(_INPBPlayVoicemailIntent *)v5 setCallRecordIdentifier:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBPlayVoicemailIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPlayVoicemailIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPlayVoicemailIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPlayVoicemailIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBPlayVoicemailIntent *)self callRecordIdentifier];

  if (v4)
  {
    callRecordIdentifier = self->_callRecordIdentifier;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBPlayVoicemailIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBPlayVoicemailIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setCallRecordIdentifier:(id)a3
{
  v4 = [a3 copy];
  callRecordIdentifier = self->_callRecordIdentifier;
  self->_callRecordIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, callRecordIdentifier);
}

@end