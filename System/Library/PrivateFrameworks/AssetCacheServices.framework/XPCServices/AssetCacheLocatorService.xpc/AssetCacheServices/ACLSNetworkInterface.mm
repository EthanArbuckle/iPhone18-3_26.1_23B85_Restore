@interface ACLSNetworkInterface
- (id)description;
@end

@implementation ACLSNetworkInterface

- (id)description
{
  ipAddress = [(ACLSNetworkInterface *)self ipAddress];
  bsdName = [(ACLSNetworkInterface *)self bsdName];
  deviceID = [(ACLSNetworkInterface *)self deviceID];
  userReadable = [(ACLSNetworkInterface *)self userReadable];
  locationID = [(ACLSNetworkInterface *)self locationID];
  unsignedIntValue = [locationID unsignedIntValue];
  v8 = @"YES";
  if ([(ACLSNetworkInterface *)self wired])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  interfaceType = [(ACLSNetworkInterface *)self interfaceType];
  if (![(ACLSNetworkInterface *)self isNCM])
  {
    v8 = @"NO";
  }

  [(ACLSNetworkInterface *)self speed];
  v12 = [NSString stringWithFormat:@"{IP Address = %@, BSD Name = %@, Device ID = %@, User Readable = %@, IO Path Location = %#x, Wired = %@, Interface Type = %@, NCM = %@, Speed = %.1f Mbps}", ipAddress, bsdName, deviceID, userReadable, unsignedIntValue, v9, interfaceType, v8, v11];

  return v12;
}

@end