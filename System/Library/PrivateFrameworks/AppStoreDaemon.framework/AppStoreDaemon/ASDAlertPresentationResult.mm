@interface ASDAlertPresentationResult
- (ASDAlertPresentationResult)initWithCoder:(id)coder;
- (ASDAlertPresentationResult)initWithError:(id)error;
- (ASDAlertPresentationResult)initWithSelectedActionIdentifier:(id)identifier;
- (BOOL)isSelectedAction:(id)action;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAlertPresentationResult

- (ASDAlertPresentationResult)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = ASDAlertPresentationResult;
  v6 = [(ASDAlertPresentationResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    selectedActionIdentifier = v7->_selectedActionIdentifier;
    v7->_selectedActionIdentifier = 0;
  }

  return v7;
}

- (ASDAlertPresentationResult)initWithSelectedActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = ASDAlertPresentationResult;
  v6 = [(ASDAlertPresentationResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    error = v6->_error;
    v6->_error = 0;

    objc_storeStrong(&v7->_selectedActionIdentifier, identifier);
  }

  return v7;
}

- (BOOL)isSelectedAction:(id)action
{
  if (self->_error)
  {
    return 0;
  }

  selectedActionIdentifier = self->_selectedActionIdentifier;
  identifier = [action identifier];
  LOBYTE(selectedActionIdentifier) = [(NSUUID *)selectedActionIdentifier isEqual:identifier];

  return selectedActionIdentifier;
}

- (ASDAlertPresentationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ASDAlertPresentationResult;
  v5 = [(ASDAlertPresentationResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedActionIdentifier"];
    selectedActionIdentifier = v5->_selectedActionIdentifier;
    v5->_selectedActionIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  coderCopy = coder;
  [coderCopy encodeObject:error forKey:@"error"];
  [coderCopy encodeObject:self->_selectedActionIdentifier forKey:@"selectedActionIdentifier"];
}

@end