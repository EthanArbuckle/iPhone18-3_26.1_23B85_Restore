@interface HKObjectAuthorizationSetStatusContext
- (HKObjectAuthorizationSetStatusContext)initWithCoder:(id)a3;
- (HKObjectAuthorizationSetStatusContext)initWithObjectAuthorizationStatuses:(id)a3 sessionIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKObjectAuthorizationSetStatusContext

- (HKObjectAuthorizationSetStatusContext)initWithObjectAuthorizationStatuses:(id)a3 sessionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKObjectAuthorizationSetStatusContext;
  v8 = [(HKObjectAuthorizationSetStatusContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    objectAuthorizationStatuses = v8->_objectAuthorizationStatuses;
    v8->_objectAuthorizationStatuses = v9;

    v11 = [v7 copy];
    sessionIdentifier = v8->_sessionIdentifier;
    v8->_sessionIdentifier = v11;
  }

  return v8;
}

- (HKObjectAuthorizationSetStatusContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKObjectAuthorizationSetStatusContext;
  v5 = [(HKObjectAuthorizationSetStatusContext *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ObjectAuthorizationStatusesKey"];
    objectAuthorizationStatuses = v5->_objectAuthorizationStatuses;
    v5->_objectAuthorizationStatuses = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_SessionIdentifierKey"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objectAuthorizationStatuses = self->_objectAuthorizationStatuses;
  v5 = a3;
  [v5 encodeObject:objectAuthorizationStatuses forKey:@"ObjectAuthorizationStatusesKey"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"_SessionIdentifierKey"];
}

@end