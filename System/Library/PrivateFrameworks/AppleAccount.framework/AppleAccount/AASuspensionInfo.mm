@interface AASuspensionInfo
- (AASuspensionInfo)init;
- (AASuspensionInfo)initWithDictionary:(id)dictionary;
- (BOOL)isFamilySuspended;
- (BOOL)isiCloudSuspended;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AASuspensionInfo

- (AASuspensionInfo)init
{
  [(AASuspensionInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AASuspensionInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AASuspensionInfo;
  v5 = [(AASuspensionInfo *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    suspensionInfoDictionary = v5->_suspensionInfoDictionary;
    v5->_suspensionInfoDictionary = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  suspensionInfoDictionary = self->_suspensionInfoDictionary;

  return [v4 initWithDictionary:suspensionInfoDictionary];
}

- (BOOL)isiCloudSuspended
{
  v2 = [(NSDictionary *)self->_suspensionInfoDictionary objectForKey:@"icloud"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isFamilySuspended
{
  v2 = [(NSDictionary *)self->_suspensionInfoDictionary objectForKey:@"family"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end