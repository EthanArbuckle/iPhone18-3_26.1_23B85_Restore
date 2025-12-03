@interface NSHTTPURLResponse(AMSAnisette)
- (id)ams_actionData;
- (id)ams_actionDataV1;
- (id)ams_actionDataV1_5;
- (id)ams_actionName;
- (id)ams_actionNameV1;
- (id)ams_actionNameV1_5;
- (uint64_t)_anisetteType;
@end

@implementation NSHTTPURLResponse(AMSAnisette)

- (id)ams_actionNameV1
{
  allHeaderFields = [self allHeaderFields];
  v2 = [allHeaderFields ams_objectForCaseInsensitiveKey:@"X-Apple-MD-Action"];

  if (![v2 length])
  {

    v2 = 0;
  }

  return v2;
}

- (id)ams_actionNameV1_5
{
  allHeaderFields = [self allHeaderFields];
  v2 = [allHeaderFields ams_objectForCaseInsensitiveKey:@"X-Apple-AMD-Action"];

  if (![v2 length])
  {

    v2 = 0;
  }

  return v2;
}

- (id)ams_actionData
{
  _anisetteType = [self _anisetteType];
  if (_anisetteType == 2 || _anisetteType == 1)
  {
    ams_actionDataV1 = [self ams_actionDataV1];
  }

  else
  {
    ams_actionDataV1 = 0;
  }

  return ams_actionDataV1;
}

- (id)ams_actionDataV1
{
  allHeaderFields = [self allHeaderFields];
  v2 = [allHeaderFields ams_objectForCaseInsensitiveKey:@"X-Apple-MD-Data"];

  if ([v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ams_actionDataV1_5
{
  allHeaderFields = [self allHeaderFields];
  v2 = [allHeaderFields ams_objectForCaseInsensitiveKey:@"X-Apple-AMD-Data"];

  if ([v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ams_actionName
{
  ams_actionNameV1 = [self ams_actionNameV1];
  v3 = ams_actionNameV1;
  if (ams_actionNameV1)
  {
    ams_actionNameV12 = ams_actionNameV1;
  }

  else
  {
    ams_actionNameV12 = [self ams_actionNameV1];
  }

  v5 = ams_actionNameV12;

  return v5;
}

- (uint64_t)_anisetteType
{
  ams_actionNameV1 = [self ams_actionNameV1];

  if (ams_actionNameV1)
  {
    return 1;
  }

  ams_actionNameV12 = [self ams_actionNameV1];
  v5 = ams_actionNameV12 != 0;

  return 2 * v5;
}

@end