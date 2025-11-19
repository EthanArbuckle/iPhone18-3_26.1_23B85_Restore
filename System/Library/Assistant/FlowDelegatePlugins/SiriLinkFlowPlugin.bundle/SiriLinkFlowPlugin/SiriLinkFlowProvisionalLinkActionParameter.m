@interface SiriLinkFlowProvisionalLinkActionParameter
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionParameter)initWithDictionary:(id)a3;
- (SiriLinkFlowProvisionalLinkActionParameter)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation SiriLinkFlowProvisionalLinkActionParameter

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];

  if (v4)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
    v6 = [v4 name];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
      v11 = [v4 name];
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

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_name)
  {
    v4 = [(SiriLinkFlowProvisionalLinkActionParameter *)self name];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SiriLinkFlowProvisionalLinkActionParameter *)self dictionaryRepresentation];
  if ([NSJSONSerialization isValidJSONObject:v2])
  {
    v3 = [NSJSONSerialization dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SiriLinkFlowProvisionalLinkActionParameter)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkActionParameter *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SiriLinkFlowProvisionalLinkActionParameter)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SiriLinkFlowProvisionalLinkActionParameter;
  v5 = [(SiriLinkFlowProvisionalLinkActionParameter *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
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