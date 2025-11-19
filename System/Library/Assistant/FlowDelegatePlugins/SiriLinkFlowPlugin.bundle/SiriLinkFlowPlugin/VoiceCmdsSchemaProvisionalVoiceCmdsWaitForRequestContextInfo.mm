@interface VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithDictionary:(id)a3;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

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
  v2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo *)self dictionaryRepresentation];
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

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)initWithDictionary:(id)a3
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