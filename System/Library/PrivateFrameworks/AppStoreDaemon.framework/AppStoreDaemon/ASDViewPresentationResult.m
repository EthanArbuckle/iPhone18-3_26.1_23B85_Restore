@interface ASDViewPresentationResult
- (ASDViewPresentationResult)initWithCoder:(id)a3;
- (ASDViewPresentationResult)initWithError:(id)a3;
- (ASDViewPresentationResult)initWithNumber:(id)a3;
- (ASDViewPresentationResult)initWithString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDViewPresentationResult

- (ASDViewPresentationResult)initWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (ASDViewPresentationResult)initWithNumber:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    numberResult = v5->_numberResult;
    v5->_numberResult = v6;
  }

  return v5;
}

- (ASDViewPresentationResult)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stringResult = v5->_stringResult;
    v5->_stringResult = v6;
  }

  return v5;
}

- (ASDViewPresentationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"N"];
    numberResult = v5->_numberResult;
    v5->_numberResult = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    stringResult = v5->_stringResult;
    v5->_stringResult = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  v5 = a3;
  [v5 encodeObject:error forKey:@"E"];
  [v5 encodeObject:self->_numberResult forKey:@"N"];
  [v5 encodeObject:self->_stringResult forKey:@"S"];
}

@end