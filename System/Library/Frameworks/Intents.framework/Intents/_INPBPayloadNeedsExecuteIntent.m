@interface _INPBPayloadNeedsExecuteIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPayloadNeedsExecuteIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPayloadNeedsExecuteIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentExecution"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
    v6 = [v4 intentExecution];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
      v11 = [v4 intentExecution];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPayloadNeedsExecuteIntent allocWithZone:](_INPBPayloadNeedsExecuteIntent init];
  v6 = [(_INPBIntentExecutionRequest *)self->_intentExecution copyWithZone:a3];
  [(_INPBPayloadNeedsExecuteIntent *)v5 setIntentExecution:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPayloadNeedsExecuteIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPayloadNeedsExecuteIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPayloadNeedsExecuteIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];

  if (v4)
  {
    v5 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
    PBDataWriterWriteSubmessage();
  }
}

@end