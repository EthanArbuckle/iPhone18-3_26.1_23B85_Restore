@interface ASDViewPresentationResult
- (ASDViewPresentationResult)initWithCoder:(id)coder;
- (ASDViewPresentationResult)initWithError:(id)error;
- (ASDViewPresentationResult)initWithNumber:(id)number;
- (ASDViewPresentationResult)initWithString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDViewPresentationResult

- (ASDViewPresentationResult)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v9 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (ASDViewPresentationResult)initWithNumber:(id)number
{
  numberCopy = number;
  v9.receiver = self;
  v9.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v9 init];
  if (v5)
  {
    v6 = [numberCopy copy];
    numberResult = v5->_numberResult;
    v5->_numberResult = v6;
  }

  return v5;
}

- (ASDViewPresentationResult)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    stringResult = v5->_stringResult;
    v5->_stringResult = v6;
  }

  return v5;
}

- (ASDViewPresentationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASDViewPresentationResult;
  v5 = [(ASDViewPresentationResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"N"];
    numberResult = v5->_numberResult;
    v5->_numberResult = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    stringResult = v5->_stringResult;
    v5->_stringResult = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  coderCopy = coder;
  [coderCopy encodeObject:error forKey:@"E"];
  [coderCopy encodeObject:self->_numberResult forKey:@"N"];
  [coderCopy encodeObject:self->_stringResult forKey:@"S"];
}

@end