@interface ACLSNetworkInterface
- (id)description;
@end

@implementation ACLSNetworkInterface

- (id)description
{
  v14 = [(ACLSNetworkInterface *)self ipAddress];
  v3 = [(ACLSNetworkInterface *)self bsdName];
  v4 = [(ACLSNetworkInterface *)self deviceID];
  v5 = [(ACLSNetworkInterface *)self userReadable];
  v6 = [(ACLSNetworkInterface *)self locationID];
  v7 = [v6 unsignedIntValue];
  v8 = @"YES";
  if ([(ACLSNetworkInterface *)self wired])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(ACLSNetworkInterface *)self interfaceType];
  if (![(ACLSNetworkInterface *)self isNCM])
  {
    v8 = @"NO";
  }

  [(ACLSNetworkInterface *)self speed];
  v12 = [NSString stringWithFormat:@"{IP Address = %@, BSD Name = %@, Device ID = %@, User Readable = %@, IO Path Location = %#x, Wired = %@, Interface Type = %@, NCM = %@, Speed = %.1f Mbps}", v14, v3, v4, v5, v7, v9, v10, v8, v11];

  return v12;
}

@end