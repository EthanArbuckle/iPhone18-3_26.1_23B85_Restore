@interface SiriLinkFlowProvisionalLinkActionParameter
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionParameter)initWithDictionary:(id)dictionary;
- (SiriLinkFlowProvisionalLinkActionParameter)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation SiriLinkFlowProvisionalLinkActionParameter

- (void)writeTo:(id)to
{
  toCopy = to;
  name = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];

  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    name = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
    name2 = [equalCopy name];
    v7 = name2;
    if ((name != 0) != (name2 == 0))
    {
      name3 = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
      if (!name3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = name3;
      name4 = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
      name5 = [equalCopy name];
      v12 = [name4 isEqual:name5];

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

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_name)
  {
    name = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
    v5 = [name copy];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SiriLinkFlowProvisionalLinkActionParameter *)self dictionaryRepresentation];
  if ([NSJSONSerialization isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [NSJSONSerialization dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SiriLinkFlowProvisionalLinkActionParameter)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkActionParameter *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SiriLinkFlowProvisionalLinkActionParameter)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SiriLinkFlowProvisionalLinkActionParameter;
  v5 = [(SiriLinkFlowProvisionalLinkActionParameter *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkFlowProvisionalLinkActionParameter *)v5 setName:v7];
    }

    v8 = v5;
  }

  return v5;
}

@end