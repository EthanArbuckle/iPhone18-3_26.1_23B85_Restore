@interface NEAOVPNException
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)isLimitedToUDP;
- (NEAOVPNException)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEAOVPNException

- (BOOL)isLimitedToUDP
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NEAOVPNException *)self limitToProtocols];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:@"UDP"])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEAOVPNException *)self serviceName];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(NEAOVPNException *)self serviceName];
  if ([v6 isEqualToString:@"AirPrint"])
  {
    goto LABEL_7;
  }

  v7 = [(NEAOVPNException *)self serviceName];
  if ([v7 isEqualToString:@"VoiceMail"])
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v8 = [(NEAOVPNException *)self serviceName];
  if ([v8 isEqualToString:@"CellularServices"])
  {

    goto LABEL_6;
  }

  v11 = [(NEAOVPNException *)self serviceName];
  v12 = [v11 isEqualToString:@"DeviceCommunication"];

  if ((v12 & 1) == 0)
  {
    [NEConfiguration addError:v4 toList:?];
    v9 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v9 = 1;
LABEL_9:
  if ([(NEAOVPNException *)self action]!= 1 && [(NEAOVPNException *)self action]!= 2)
  {
    [NEConfiguration addError:v4 toList:?];
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEAOVPNException allocWithZone:?]];
  v5 = [(NEAOVPNException *)self serviceName];
  [(NEAOVPNException *)v4 setServiceName:v5];

  v6 = [(NEAOVPNException *)self bundleIdentifier];
  [(NEAOVPNException *)v4 setBundleIdentifier:v6];

  v7 = [(NEAOVPNException *)self limitToProtocols];
  [(NEAOVPNException *)v4 setLimitToProtocols:v7];

  [(NEAOVPNException *)v4 setAction:[(NEAOVPNException *)self action]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(NEAOVPNException *)self serviceName];
  [v7 encodeObject:v4 forKey:@"ServiceName"];

  v5 = [(NEAOVPNException *)self bundleIdentifier];
  [v7 encodeObject:v5 forKey:@"BundleIdentifier"];

  v6 = [(NEAOVPNException *)self limitToProtocols];
  [v7 encodeObject:v6 forKey:@"LimitToProtocols"];

  [v7 encodeInt32:-[NEAOVPNException action](self forKey:{"action"), @"Action"}];
}

- (NEAOVPNException)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NEAOVPNException;
  v5 = [(NEAOVPNException *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServiceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"LimitToProtocols"];
    limitToProtocols = v5->_limitToProtocols;
    v5->_limitToProtocols = v13;

    v5->_action = [v4 decodeInt32ForKey:@"Action"];
  }

  return v5;
}

@end