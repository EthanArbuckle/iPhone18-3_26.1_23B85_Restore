@interface NEAOVPNException
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isLimitedToUDP;
- (NEAOVPNException)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEAOVPNException

- (BOOL)isLimitedToUDP
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  limitToProtocols = [(NEAOVPNException *)self limitToProtocols];
  v3 = [limitToProtocols countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(limitToProtocols);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:@"UDP"])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [limitToProtocols countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  serviceName = [(NEAOVPNException *)self serviceName];

  if (!serviceName)
  {
    goto LABEL_8;
  }

  serviceName2 = [(NEAOVPNException *)self serviceName];
  if ([serviceName2 isEqualToString:@"AirPrint"])
  {
    goto LABEL_7;
  }

  serviceName3 = [(NEAOVPNException *)self serviceName];
  if ([serviceName3 isEqualToString:@"VoiceMail"])
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  serviceName4 = [(NEAOVPNException *)self serviceName];
  if ([serviceName4 isEqualToString:@"CellularServices"])
  {

    goto LABEL_6;
  }

  serviceName5 = [(NEAOVPNException *)self serviceName];
  v12 = [serviceName5 isEqualToString:@"DeviceCommunication"];

  if ((v12 & 1) == 0)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v9 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v9 = 1;
LABEL_9:
  if ([(NEAOVPNException *)self action]!= 1 && [(NEAOVPNException *)self action]!= 2)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEAOVPNException allocWithZone:?]];
  serviceName = [(NEAOVPNException *)self serviceName];
  [(NEAOVPNException *)v4 setServiceName:serviceName];

  bundleIdentifier = [(NEAOVPNException *)self bundleIdentifier];
  [(NEAOVPNException *)v4 setBundleIdentifier:bundleIdentifier];

  limitToProtocols = [(NEAOVPNException *)self limitToProtocols];
  [(NEAOVPNException *)v4 setLimitToProtocols:limitToProtocols];

  [(NEAOVPNException *)v4 setAction:[(NEAOVPNException *)self action]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceName = [(NEAOVPNException *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"ServiceName"];

  bundleIdentifier = [(NEAOVPNException *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"BundleIdentifier"];

  limitToProtocols = [(NEAOVPNException *)self limitToProtocols];
  [coderCopy encodeObject:limitToProtocols forKey:@"LimitToProtocols"];

  [coderCopy encodeInt32:-[NEAOVPNException action](self forKey:{"action"), @"Action"}];
}

- (NEAOVPNException)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NEAOVPNException;
  v5 = [(NEAOVPNException *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServiceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"LimitToProtocols"];
    limitToProtocols = v5->_limitToProtocols;
    v5->_limitToProtocols = v13;

    v5->_action = [coderCopy decodeInt32ForKey:@"Action"];
  }

  return v5;
}

@end