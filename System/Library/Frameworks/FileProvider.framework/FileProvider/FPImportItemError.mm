@interface FPImportItemError
- (FPImportItemError)initWithCoder:(id)coder;
- (FPImportItemError)initWithItemIdentifier:(id)identifier error:(id)error retryCount:(int64_t)count;
- (id)json;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPImportItemError

- (FPImportItemError)initWithItemIdentifier:(id)identifier error:(id)error retryCount:(int64_t)count
{
  identifierCopy = identifier;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = FPImportItemError;
  v11 = [(FPImportItemError *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_itemIdentifier, identifier);
    objc_storeStrong(&v12->_error, error);
    v12->_retryCount = count;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  itemIdentifier = self->_itemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [coderCopy encodeObject:self->_error forKey:@"_error"];
  [coderCopy encodeInteger:self->_retryCount forKey:@"_retryCount"];
  [coderCopy encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
}

- (FPImportItemError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FPImportItemError;
  v5 = [(FPImportItemError *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v8;

    v5->_retryCount = [coderCopy decodeIntegerForKey:@"_retryCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v10;
  }

  return v5;
}

- (id)json
{
  v3 = objc_opt_new();
  [v3 setObject:self->_itemIdentifier forKeyedSubscript:@"itemIdentifier"];
  fp_prettyDescription = [(NSError *)self->_error fp_prettyDescription];
  v5 = [fp_prettyDescription description];
  [v3 setObject:v5 forKeyedSubscript:@"errorDescription"];

  domain = [(NSError *)self->_error domain];
  [v3 setObject:domain forKeyedSubscript:@"errorDomain"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSError code](self->_error, "code")}];
  [v3 setObject:v7 forKeyedSubscript:@"errorCode"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_retryCount];
  [v3 setObject:v8 forKeyedSubscript:@"retryCount"];

  underlyingErrors = [(NSError *)self->_error underlyingErrors];
  firstObject = [underlyingErrors firstObject];

  if (firstObject)
  {
    domain2 = [firstObject domain];
    [v3 setObject:domain2 forKeyedSubscript:@"underlyingErrorDomain"];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(firstObject, "code")}];
    [v3 setObject:v12 forKeyedSubscript:@"underlyingErrorCode"];
  }

  return v3;
}

@end