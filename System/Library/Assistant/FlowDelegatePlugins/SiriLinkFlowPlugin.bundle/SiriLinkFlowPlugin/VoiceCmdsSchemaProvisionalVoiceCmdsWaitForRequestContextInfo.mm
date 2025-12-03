@interface VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithDictionary:(id)dictionary;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
@end

@implementation VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo *)self dictionaryRepresentation];
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

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo;
  v3 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end