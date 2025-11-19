@interface AFSiriTaskUsageResult
- (AFSiriTaskUsageResult)initWithCoder:(id)a3;
- (id)_initWithOriginatingAceID:(id)a3;
- (id)_resultDescription;
- (id)description;
@end

@implementation AFSiriTaskUsageResult

- (AFSiriTaskUsageResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OriginatingAceIDKeyIdentifier"];

  v6 = [(AFSiriTaskUsageResult *)self _initWithOriginatingAceID:v5];
  return v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  [v3 appendFormat:@": %p;", self];
  if ([(NSString *)self->_originatingAceID length])
  {
    [v3 appendString:@" originatingAceID="];
    [v3 appendString:self->_originatingAceID];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)_resultDescription
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFSiriTaskUsageResult.m" lineNumber:33 description:@"_resultDescription must be overridden in subclasses."];

  return 0;
}

- (id)_initWithOriginatingAceID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFSiriTaskUsageResult;
  v5 = [(AFSiriTaskUsageResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    originatingAceID = v5->_originatingAceID;
    v5->_originatingAceID = v6;
  }

  return v5;
}

@end