@interface BTSDevice
- (BOOL)isEqual:(id)equal;
- (BOOL)isiPad;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation BTSDevice

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BTSDevice *)self identifier];
    identifier2 = [v5 identifier];

    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(BTSDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  shouldDenyIncomingClassicConnection = [(BTSDevice *)self shouldDenyIncomingClassicConnection];
  if (shouldDenyIncomingClassicConnection != [compareCopy shouldDenyIncomingClassicConnection])
  {
    shouldDenyIncomingClassicConnection2 = [(BTSDevice *)self shouldDenyIncomingClassicConnection];
LABEL_5:
    v8 = !shouldDenyIncomingClassicConnection2;
    goto LABEL_6;
  }

  connected = [(BTSDevice *)self connected];
  if (connected != [compareCopy connected])
  {
    shouldDenyIncomingClassicConnection2 = [(BTSDevice *)self connected];
    goto LABEL_5;
  }

  isManagedByDeviceAccess = [(BTSDevice *)self paired]|| [(BTSDevice *)self isHealthDevice]|| [(BTSDevice *)self isManagedByDeviceAccess];
  if ([compareCopy paired] & 1) != 0 || (objc_msgSend(compareCopy, "isHealthDevice"))
  {
    isManagedByDeviceAccess2 = 1;
  }

  else
  {
    isManagedByDeviceAccess2 = [compareCopy isManagedByDeviceAccess];
  }

  if (isManagedByDeviceAccess2 == isManagedByDeviceAccess)
  {
    name = [(BTSDevice *)self name];
    name2 = [compareCopy name];
    v9 = [name compare:name2 options:1];

    goto LABEL_9;
  }

  v8 = isManagedByDeviceAccess == 0;
LABEL_6:
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

LABEL_9:

  return v9;
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

@end