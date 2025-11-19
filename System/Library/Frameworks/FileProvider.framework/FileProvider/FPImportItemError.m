@interface FPImportItemError
- (FPImportItemError)initWithCoder:(id)a3;
- (FPImportItemError)initWithItemIdentifier:(id)a3 error:(id)a4 retryCount:(int64_t)a5;
- (id)json;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPImportItemError

- (FPImportItemError)initWithItemIdentifier:(id)a3 error:(id)a4 retryCount:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = FPImportItemError;
  v11 = [(FPImportItemError *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_itemIdentifier, a3);
    objc_storeStrong(&v12->_error, a4);
    v12->_retryCount = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [v5 encodeObject:self->_error forKey:@"_error"];
  [v5 encodeInteger:self->_retryCount forKey:@"_retryCount"];
  [v5 encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
}

- (FPImportItemError)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FPImportItemError;
  v5 = [(FPImportItemError *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v8;

    v5->_retryCount = [v4 decodeIntegerForKey:@"_retryCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v10;
  }

  return v5;
}

- (id)json
{
  v3 = objc_opt_new();
  [v3 setObject:self->_itemIdentifier forKeyedSubscript:@"itemIdentifier"];
  v4 = [(NSError *)self->_error fp_prettyDescription];
  v5 = [v4 description];
  [v3 setObject:v5 forKeyedSubscript:@"errorDescription"];

  v6 = [(NSError *)self->_error domain];
  [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSError code](self->_error, "code")}];
  [v3 setObject:v7 forKeyedSubscript:@"errorCode"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_retryCount];
  [v3 setObject:v8 forKeyedSubscript:@"retryCount"];

  v9 = [(NSError *)self->_error underlyingErrors];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [v10 domain];
    [v3 setObject:v11 forKeyedSubscript:@"underlyingErrorDomain"];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "code")}];
    [v3 setObject:v12 forKeyedSubscript:@"underlyingErrorCode"];
  }

  return v3;
}

@end