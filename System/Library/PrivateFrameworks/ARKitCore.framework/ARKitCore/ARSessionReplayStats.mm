@interface ARSessionReplayStats
- (NSString)arkitVersion;
- (NSString)deviceModel;
- (NSString)fileName;
- (NSString)osVersion;
@end

@implementation ARSessionReplayStats

- (NSString)arkitVersion
{
  if (self->_arkitVersion)
  {
    return self->_arkitVersion;
  }

  else
  {
    return &stru_1F4208A80;
  }
}

- (NSString)fileName
{
  if (self->_fileName)
  {
    return self->_fileName;
  }

  else
  {
    return &stru_1F4208A80;
  }
}

- (NSString)deviceModel
{
  if (self->_deviceModel)
  {
    return self->_deviceModel;
  }

  else
  {
    return &stru_1F4208A80;
  }
}

- (NSString)osVersion
{
  if (self->_osVersion)
  {
    return self->_osVersion;
  }

  else
  {
    return &stru_1F4208A80;
  }
}

@end