@interface HKObjectAuthorizationSetStatusContext
- (HKObjectAuthorizationSetStatusContext)initWithCoder:(id)coder;
- (HKObjectAuthorizationSetStatusContext)initWithObjectAuthorizationStatuses:(id)statuses sessionIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKObjectAuthorizationSetStatusContext

- (HKObjectAuthorizationSetStatusContext)initWithObjectAuthorizationStatuses:(id)statuses sessionIdentifier:(id)identifier
{
  statusesCopy = statuses;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HKObjectAuthorizationSetStatusContext;
  v8 = [(HKObjectAuthorizationSetStatusContext *)&v14 init];
  if (v8)
  {
    v9 = [statusesCopy copy];
    objectAuthorizationStatuses = v8->_objectAuthorizationStatuses;
    v8->_objectAuthorizationStatuses = v9;

    v11 = [identifierCopy copy];
    sessionIdentifier = v8->_sessionIdentifier;
    v8->_sessionIdentifier = v11;
  }

  return v8;
}

- (HKObjectAuthorizationSetStatusContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKObjectAuthorizationSetStatusContext;
  v5 = [(HKObjectAuthorizationSetStatusContext *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ObjectAuthorizationStatusesKey"];
    objectAuthorizationStatuses = v5->_objectAuthorizationStatuses;
    v5->_objectAuthorizationStatuses = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_SessionIdentifierKey"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objectAuthorizationStatuses = self->_objectAuthorizationStatuses;
  coderCopy = coder;
  [coderCopy encodeObject:objectAuthorizationStatuses forKey:@"ObjectAuthorizationStatusesKey"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"_SessionIdentifierKey"];
}

@end