@interface HMDAccountHandle
+ (id)accountHandleForDestination:(id)destination;
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (CKUserIdentityLookupInfo)cloudKitLookupInfo;
- (CNContact)contact;
- (HMDAccountHandle)init;
- (HMDAccountHandle)initWithCoder:(id)coder;
- (HMDAccountHandle)initWithURI:(id)i local:(BOOL)local;
- (NSString)remoteDestinationString;
- (NSString)value;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)shortDescription;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccountHandle

- (id)logIdentifier
{
  identifier = [(HMDAccountHandle *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (NSString)remoteDestinationString
{
  v2 = [(HMDAccountHandle *)self URI];
  prefixedURI = [v2 prefixedURI];

  return prefixedURI;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(HMDAccountHandle *)self URI];
  [coderCopy encodeObject:v4 forKey:@"HMD.URI"];

  [coderCopy encodeBool:-[HMDAccountHandle isLocal](self forKey:{"isLocal"), @"HMD.local"}];
  if ([coderCopy hmd_isForLocalStore])
  {
    [coderCopy encodeBool:-[HMDAccountHandle isLocallyTracked](self forKey:{"isLocallyTracked"), @"HMD.locallyTracked"}];
  }
}

- (HMDAccountHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.URI"];
  v6 = -[HMDAccountHandle initWithURI:local:](self, "initWithURI:local:", v5, [coderCopy decodeBoolForKey:@"HMD.local"]);
  if (v6)
  {
    v6->_locallyTracked = [coderCopy decodeBoolForKey:@"HMD.locallyTracked"];
    if ([coderCopy containsValueForKey:@"HMD.modelParentIdentifier"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.modelParentIdentifier"];
      modelParentIdentifier = v6->_modelParentIdentifier;
      v6->_modelParentIdentifier = v7;
    }
  }

  return v6;
}

- (CKUserIdentityLookupInfo)cloudKitLookupInfo
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (CNContact)contact
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (int64_t)type
{
  v3 = [(HMDAccountHandle *)self URI];
  unprefixedURI = [v3 unprefixedURI];
  _appearsToBeEmail = [unprefixedURI _appearsToBeEmail];

  if (_appearsToBeEmail)
  {
    return 1;
  }

  v7 = [(HMDAccountHandle *)self URI];
  unprefixedURI2 = [v7 unprefixedURI];
  _appearsToBePhoneNumber = [unprefixedURI2 _appearsToBePhoneNumber];

  if (_appearsToBePhoneNumber)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  identifier = [(HMDAccountHandle *)self identifier];
  uUIDString = [identifier UUIDString];
  v6 = [v3 initWithName:@"ID" value:uUIDString];
  v21[0] = v6;
  v7 = [HMFAttributeDescription alloc];
  type = [(HMDAccountHandle *)self type];
  v9 = @"Unknown";
  if (type == 2)
  {
    v9 = @"Phone";
  }

  if (type == 1)
  {
    v10 = @"Email";
  }

  else
  {
    v10 = v9;
  }

  v11 = [v7 initWithName:@"TP" value:v10];
  v21[1] = v11;
  v12 = [HMFAttributeDescription alloc];
  [(HMDAccountHandle *)self isLocal];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"LC" value:v13];
  v21[2] = v14;
  v15 = [HMFAttributeDescription alloc];
  value = [(HMDAccountHandle *)self value];
  v17 = +[HMDAccountHandleFormatter defaultFormatter];
  v18 = [v15 initWithName:@"VA" value:value options:0 formatter:v17];
  v21[3] = v18;
  v19 = [NSArray arrayWithObjects:v21 count:4];

  return v19;
}

- (id)shortDescription
{
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDAccountHandle *)self identifier];
  uUIDString = [identifier UUIDString];
  v6 = [NSString stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDAccountHandle *)self URI];
      v8 = [(HMDAccountHandle *)v6 URI];
      v9 = [v7 isEqualToURI:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccountHandle *)self URI];
  v3 = [v2 hash];

  return v3;
}

- (NSString)value
{
  v2 = [(HMDAccountHandle *)self URI];
  unprefixedURI = [v2 unprefixedURI];

  return unprefixedURI;
}

- (HMDAccountHandle)initWithURI:(id)i local:(BOOL)local
{
  iCopy = i;
  if (iCopy)
  {
    v20.receiver = self;
    v20.super_class = HMDAccountHandle;
    v7 = [(HMDAccountHandle *)&v20 init];
    if (v7)
    {
      v8 = qword_10003B238;
      v9 = iCopy;
      if (v8 != -1)
      {
        dispatch_once(&qword_10003B238, &stru_100030B18);
      }

      v10 = [NSUUID alloc];
      v11 = qword_10003B230;
      prefixedURI = [v9 prefixedURI];

      v13 = [prefixedURI dataUsingEncoding:4];
      v14 = [v10 initWithNamespace:v11 data:v13];

      identifier = v7->_identifier;
      v7->_identifier = v14;

      v16 = [v9 copy];
      URI = v7->_URI;
      v7->_URI = v16;

      v7->_local = local;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDAccountHandle)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)logCategory
{
  if (qword_10003B220 != -1)
  {
    dispatch_once(&qword_10003B220, &stru_100030AF8);
  }

  v3 = qword_10003B228;

  return v3;
}

+ (id)accountHandleForDestination:(id)destination
{
  v3 = IDSCopyAddressDestinationForDestination();
  if (v3)
  {
    v4 = +[HMDAccountHandleFormatter defaultFormatter];
    v5 = [v4 accountHandleFromString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end