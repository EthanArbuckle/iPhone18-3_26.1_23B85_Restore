@interface STLockoutAppContext
+ (id)contextWithData:(id)a3;
- (STLockoutAppContext)initWithCoder:(id)a3;
- (STLockoutAppContext)initWithEventType:(id)a3;
- (id)dataRepresentation;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STLockoutAppContext

- (STLockoutAppContext)initWithEventType:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = STLockoutAppContext;
  v6 = [(STLockoutAppContext *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventType, a3);
    v8 = [NSString stringWithUTF8String:getprogname()];
    clientName = v7->_clientName;
    v7->_clientName = v8;

    v10 = +[NSBundle mainBundle];
    v11 = [v10 bundleIdentifier];
    clientBundleID = v7->_clientBundleID;
    v7->_clientBundleID = v11;
  }

  return v7;
}

- (STLockoutAppContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STLockoutAppContext;
  v5 = [(STLockoutAppContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventType"];
    eventType = v5->_eventType;
    v5->_eventType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleID"];
    clientBundleID = v5->_clientBundleID;
    v5->_clientBundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_additionalParameters"];
    additionalParameters = v5->_additionalParameters;
    v5->_additionalParameters = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v5 = a3;
  [v5 encodeObject:eventType forKey:@"_eventType"];
  [v5 encodeObject:self->_clientName forKey:@"_clientName"];
  [v5 encodeObject:self->_clientBundleID forKey:@"_clientBundleID"];
  [v5 encodeObject:self->_additionalParameters forKey:@"_additionalParameters"];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(STLockoutAppContext *)self eventType];
  v6 = [(STLockoutAppContext *)self clientName];
  v7 = [NSString stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@ }>", v4, self, v5, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(STLockoutAppContext *)self eventType];
  v6 = [(STLockoutAppContext *)self clientName];
  v7 = [(STLockoutAppContext *)self clientBundleID];
  v8 = [(STLockoutAppContext *)self additionalParameters];
  v9 = [NSString stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@, clientBundleID: %@, additionalParameters: %@ }>", v4, self, v5, v6, v7, v8];

  return v9;
}

+ (id)contextWithData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100002F7C(a2, a1);
  }

  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:0];
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

  v6 = [v3 encodedData];

  return v6;
}

@end