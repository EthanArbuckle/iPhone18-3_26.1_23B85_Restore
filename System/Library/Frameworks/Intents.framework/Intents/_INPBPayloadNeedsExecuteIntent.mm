@interface _INPBPayloadNeedsExecuteIntent
- (BOOL)isEqual:(id)equal;
- (_INPBPayloadNeedsExecuteIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBPayloadNeedsExecuteIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentExecution = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
  dictionaryRepresentation = [intentExecution dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentExecution"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    intentExecution = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
    intentExecution2 = [equalCopy intentExecution];
    v7 = intentExecution2;
    if ((intentExecution != 0) != (intentExecution2 == 0))
    {
      intentExecution3 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
      if (!intentExecution3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = intentExecution3;
      intentExecution4 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
      intentExecution5 = [equalCopy intentExecution];
      v12 = [intentExecution4 isEqual:intentExecution5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPayloadNeedsExecuteIntent allocWithZone:](_INPBPayloadNeedsExecuteIntent init];
  v6 = [(_INPBIntentExecutionRequest *)self->_intentExecution copyWithZone:zone];
  [(_INPBPayloadNeedsExecuteIntent *)v5 setIntentExecution:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPayloadNeedsExecuteIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPayloadNeedsExecuteIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPayloadNeedsExecuteIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentExecution = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];

  if (intentExecution)
  {
    intentExecution2 = [(_INPBPayloadNeedsExecuteIntent *)self intentExecution];
    PBDataWriterWriteSubmessage();
  }
}

@end