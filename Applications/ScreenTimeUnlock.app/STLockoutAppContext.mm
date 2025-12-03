@interface STLockoutAppContext
+ (id)contextWithData:(id)data;
- (STLockoutAppContext)initWithCoder:(id)coder;
- (STLockoutAppContext)initWithEventType:(id)type;
- (id)dataRepresentation;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STLockoutAppContext

- (STLockoutAppContext)initWithEventType:(id)type
{
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = STLockoutAppContext;
  v6 = [(STLockoutAppContext *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventType, type);
    v8 = [NSString stringWithUTF8String:getprogname()];
    clientName = v7->_clientName;
    v7->_clientName = v8;

    v10 = +[NSBundle mainBundle];
    bundleIdentifier = [v10 bundleIdentifier];
    clientBundleID = v7->_clientBundleID;
    v7->_clientBundleID = bundleIdentifier;
  }

  return v7;
}

- (STLockoutAppContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = STLockoutAppContext;
  v5 = [(STLockoutAppContext *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventType"];
    eventType = v5->_eventType;
    v5->_eventType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleID"];
    clientBundleID = v5->_clientBundleID;
    v5->_clientBundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_additionalParameters"];
    additionalParameters = v5->_additionalParameters;
    v5->_additionalParameters = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  [coderCopy encodeObject:eventType forKey:@"_eventType"];
  [coderCopy encodeObject:self->_clientName forKey:@"_clientName"];
  [coderCopy encodeObject:self->_clientBundleID forKey:@"_clientBundleID"];
  [coderCopy encodeObject:self->_additionalParameters forKey:@"_additionalParameters"];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  eventType = [(STLockoutAppContext *)self eventType];
  clientName = [(STLockoutAppContext *)self clientName];
  v7 = [NSString stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@ }>", v4, self, eventType, clientName];

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  eventType = [(STLockoutAppContext *)self eventType];
  clientName = [(STLockoutAppContext *)self clientName];
  clientBundleID = [(STLockoutAppContext *)self clientBundleID];
  additionalParameters = [(STLockoutAppContext *)self additionalParameters];
  v9 = [NSString stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@, clientBundleID: %@, additionalParameters: %@ }>", v4, self, eventType, clientName, clientBundleID, additionalParameters];

  return v9;
}

+ (id)contextWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    sub_100002F7C(a2, self);
  }

  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:0];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 decodeObjectOfClass:v7 forKey:v9];

  return v10;
}

- (id)dataRepresentation
{
  v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 encodeObject:self forKey:v5];

  encodedData = [v3 encodedData];

  return encodedData;
}

@end