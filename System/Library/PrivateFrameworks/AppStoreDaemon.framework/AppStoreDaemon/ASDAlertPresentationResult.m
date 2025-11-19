@interface ASDAlertPresentationResult
- (ASDAlertPresentationResult)initWithCoder:(id)a3;
- (ASDAlertPresentationResult)initWithError:(id)a3;
- (ASDAlertPresentationResult)initWithSelectedActionIdentifier:(id)a3;
- (BOOL)isSelectedAction:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAlertPresentationResult

- (ASDAlertPresentationResult)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASDAlertPresentationResult;
  v6 = [(ASDAlertPresentationResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    selectedActionIdentifier = v7->_selectedActionIdentifier;
    v7->_selectedActionIdentifier = 0;
  }

  return v7;
}

- (ASDAlertPresentationResult)initWithSelectedActionIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASDAlertPresentationResult;
  v6 = [(ASDAlertPresentationResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    error = v6->_error;
    v6->_error = 0;

    objc_storeStrong(&v7->_selectedActionIdentifier, a3);
  }

  return v7;
}

- (BOOL)isSelectedAction:(id)a3
{
  if (self->_error)
  {
    return 0;
  }

  selectedActionIdentifier = self->_selectedActionIdentifier;
  v5 = [a3 identifier];
  LOBYTE(selectedActionIdentifier) = [(NSUUID *)selectedActionIdentifier isEqual:v5];

  return selectedActionIdentifier;
}

- (ASDAlertPresentationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASDAlertPresentationResult;
  v5 = [(ASDAlertPresentationResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedActionIdentifier"];
    selectedActionIdentifier = v5->_selectedActionIdentifier;
    v5->_selectedActionIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  v5 = a3;
  [v5 encodeObject:error forKey:@"error"];
  [v5 encodeObject:self->_selectedActionIdentifier forKey:@"selectedActionIdentifier"];
}

@end