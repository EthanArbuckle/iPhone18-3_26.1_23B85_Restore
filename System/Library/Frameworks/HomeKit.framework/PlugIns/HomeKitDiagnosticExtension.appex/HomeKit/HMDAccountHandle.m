@interface HMDAccountHandle
+ (id)accountHandleForDestination:(id)a3;
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (CKUserIdentityLookupInfo)cloudKitLookupInfo;
- (CNContact)contact;
- (HMDAccountHandle)init;
- (HMDAccountHandle)initWithCoder:(id)a3;
- (HMDAccountHandle)initWithURI:(id)a3 local:(BOOL)a4;
- (NSString)remoteDestinationString;
- (NSString)value;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)shortDescription;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccountHandle

- (id)logIdentifier
{
  v2 = [(HMDAccountHandle *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSString)remoteDestinationString
{
  v2 = [(HMDAccountHandle *)self URI];
  v3 = [v2 prefixedURI];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HMDAccountHandle *)self URI];
  [v5 encodeObject:v4 forKey:@"HMD.URI"];

  [v5 encodeBool:-[HMDAccountHandle isLocal](self forKey:{"isLocal"), @"HMD.local"}];
  if ([v5 hmd_isForLocalStore])
  {
    [v5 encodeBool:-[HMDAccountHandle isLocallyTracked](self forKey:{"isLocallyTracked"), @"HMD.locallyTracked"}];
  }
}

- (HMDAccountHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.URI"];
  v6 = -[HMDAccountHandle initWithURI:local:](self, "initWithURI:local:", v5, [v4 decodeBoolForKey:@"HMD.local"]);
  if (v6)
  {
    v6->_locallyTracked = [v4 decodeBoolForKey:@"HMD.locallyTracked"];
    if ([v4 containsValueForKey:@"HMD.modelParentIdentifier"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.modelParentIdentifier"];
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
  v4 = [v3 unprefixedURI];
  v5 = [v4 _appearsToBeEmail];

  if (v5)
  {
    return 1;
  }

  v7 = [(HMDAccountHandle *)self URI];
  v8 = [v7 unprefixedURI];
  v9 = [v8 _appearsToBePhoneNumber];

  if (v9)
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
  v4 = [(HMDAccountHandle *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [v3 initWithName:@"ID" value:v5];
  v21[0] = v6;
  v7 = [HMFAttributeDescription alloc];
  v8 = [(HMDAccountHandle *)self type];
  v9 = @"Unknown";
  if (v8 == 2)
  {
    v9 = @"Phone";
  }

  if (v8 == 1)
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
  v16 = [(HMDAccountHandle *)self value];
  v17 = +[HMDAccountHandleFormatter defaultFormatter];
  v18 = [v15 initWithName:@"VA" value:v16 options:0 formatter:v17];
  v21[3] = v18;
  v19 = [NSArray arrayWithObjects:v21 count:4];

  return v19;
}

- (id)shortDescription
{
  v3 = [objc_opt_class() shortDescription];
  v4 = [(HMDAccountHandle *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v3 = [v2 unprefixedURI];

  return v3;
}

- (HMDAccountHandle)initWithURI:(id)a3 local:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v20.receiver = self;
    v20.super_class = HMDAccountHandle;
    v7 = [(HMDAccountHandle *)&v20 init];
    if (v7)
    {
      v8 = qword_10003B238;
      v9 = v6;
      if (v8 != -1)
      {
        dispatch_once(&qword_10003B238, &stru_100030B18);
      }

      v10 = [NSUUID alloc];
      v11 = qword_10003B230;
      v12 = [v9 prefixedURI];

      v13 = [v12 dataUsingEncoding:4];
      v14 = [v10 initWithNamespace:v11 data:v13];

      identifier = v7->_identifier;
      v7->_identifier = v14;

      v16 = [v9 copy];
      URI = v7->_URI;
      v7->_URI = v16;

      v7->_local = a4;
    }

    self = v7;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
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

+ (id)accountHandleForDestination:(id)a3
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