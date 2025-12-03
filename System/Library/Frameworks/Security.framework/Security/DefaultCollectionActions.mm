@interface DefaultCollectionActions
- (BOOL)shouldRatelimit:(id)ratelimit rule:(id)rule;
- (void)tapToRadar:(id)radar description:(id)description radar:(id)a5 componentName:(id)name componentVersion:(id)version componentID:(id)d attributes:(id)attributes;
@end

@implementation DefaultCollectionActions

- (void)tapToRadar:(id)radar description:(id)description radar:(id)a5 componentName:(id)name componentVersion:(id)version componentID:(id)d attributes:(id)attributes
{
  nameCopy = name;
  versionCopy = version;
  dCopy = d;
  attributesCopy = attributes;
  v17 = a5;
  descriptionCopy = description;
  radarCopy = radar;
  v20 = [[SecTapToRadar alloc] initTapToRadar:radarCopy description:descriptionCopy radar:v17];

  if (nameCopy && versionCopy && dCopy)
  {
    [v20 setComponentName:nameCopy];
    [v20 setComponentVersion:versionCopy];
    [v20 setComponentID:dCopy];
  }

  if (attributesCopy && [MEMORY[0x1E696ACB0] isValidJSONObject:attributesCopy])
  {
    v21 = [MEMORY[0x1E696ACB0] dataWithJSONObject:attributesCopy options:3 error:0];
    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
      [v20 setReason:v22];
    }
  }

  [v20 trigger];
}

- (BOOL)shouldRatelimit:(id)ratelimit rule:(id)rule
{
  ratelimitCopy = ratelimit;
  ruleCopy = rule;
  lastMatch = [ruleCopy lastMatch];

  if (!lastMatch)
  {
    goto LABEL_5;
  }

  rule = [ruleCopy rule];
  repeatAfterSeconds = [rule repeatAfterSeconds];

  v10 = 86400;
  if (repeatAfterSeconds)
  {
    v10 = repeatAfterSeconds;
  }

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v10];
  lastMatch2 = [ruleCopy lastMatch];
  v13 = [v11 compare:lastMatch2];

  if (v13 != 1)
  {
    v17 = 1;
  }

  else
  {
LABEL_5:
    date = [MEMORY[0x1E695DF00] date];
    [ruleCopy setLastMatch:date];

    lastMatch3 = [ruleCopy lastMatch];
    lastMatchTimeKey = [ruleCopy lastMatchTimeKey];
    [ratelimitCopy setDateProperty:lastMatch3 forKey:lastMatchTimeKey];

    v17 = 0;
  }

  return v17;
}

@end