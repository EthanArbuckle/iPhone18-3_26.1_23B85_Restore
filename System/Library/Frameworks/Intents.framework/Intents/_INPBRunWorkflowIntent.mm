@interface _INPBRunWorkflowIntent
- (BOOL)isEqual:(id)equal;
- (_INPBRunWorkflowIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBRunWorkflowIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBRunWorkflowIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  workflow = [(_INPBRunWorkflowIntent *)self workflow];
  dictionaryRepresentation2 = [workflow dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"workflow"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBRunWorkflowIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBRunWorkflowIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBRunWorkflowIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBRunWorkflowIntent *)self workflow];
  intentMetadata2 = [equalCopy workflow];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    workflow = [(_INPBRunWorkflowIntent *)self workflow];
    if (!workflow)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = workflow;
    workflow2 = [(_INPBRunWorkflowIntent *)self workflow];
    workflow3 = [equalCopy workflow];
    v16 = [workflow2 isEqual:workflow3];

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
  v5 = [+[_INPBRunWorkflowIntent allocWithZone:](_INPBRunWorkflowIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBRunWorkflowIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_workflow copyWithZone:zone];
  [(_INPBRunWorkflowIntent *)v5 setWorkflow:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRunWorkflowIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRunWorkflowIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRunWorkflowIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBRunWorkflowIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBRunWorkflowIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  workflow = [(_INPBRunWorkflowIntent *)self workflow];

  if (workflow)
  {
    workflow2 = [(_INPBRunWorkflowIntent *)self workflow];
    PBDataWriterWriteSubmessage();
  }
}

@end