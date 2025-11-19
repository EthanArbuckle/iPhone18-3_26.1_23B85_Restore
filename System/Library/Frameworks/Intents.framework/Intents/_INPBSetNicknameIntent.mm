@interface _INPBSetNicknameIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetNicknameIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetNicknameIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetNicknameIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  v6 = [(_INPBSetNicknameIntent *)self targetNickname];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"targetNickname"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBSetNicknameIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBSetNicknameIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetNicknameIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetNicknameIntent *)self targetNickname];
  v6 = [v4 targetNickname];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBSetNicknameIntent *)self targetNickname];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBSetNicknameIntent *)self targetNickname];
    v15 = [v4 targetNickname];
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
  v5 = [+[_INPBSetNicknameIntent allocWithZone:](_INPBSetNicknameIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetNicknameIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBModifyNickname *)self->_targetNickname copyWithZone:a3];
  [(_INPBSetNicknameIntent *)v5 setTargetNickname:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetNicknameIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetNicknameIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetNicknameIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBSetNicknameIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBSetNicknameIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSetNicknameIntent *)self targetNickname];

  if (v6)
  {
    v7 = [(_INPBSetNicknameIntent *)self targetNickname];
    PBDataWriterWriteSubmessage();
  }
}

@end