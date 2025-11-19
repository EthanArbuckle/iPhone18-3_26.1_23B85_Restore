@interface FPSearchOnServerRequestDescriptor
- (FPSearchOnServerRequestDescriptor)initWithCoder:(id)a3;
- (FPSearchOnServerRequestDescriptor)initWithQuery:(id)a3 desiredNumberOfResults:(int64_t)a4 maximumNumberOfResultsPerPage:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPSearchOnServerRequestDescriptor

- (FPSearchOnServerRequestDescriptor)initWithQuery:(id)a3 desiredNumberOfResults:(int64_t)a4 maximumNumberOfResultsPerPage:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = FPSearchOnServerRequestDescriptor;
  v10 = [(FPSearchOnServerRequestDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_query, a3);
    v11->_desiredNumberOfResults = a4;
    v11->_maximumNumberOfResultsPerPage = a5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  query = self->_query;
  v5 = a3;
  [v5 encodeObject:query forKey:@"query"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_desiredNumberOfResults];
  [v5 encodeObject:v7 forKey:@"desiredNumberOfResults"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maximumNumberOfResultsPerPage];
  [v5 encodeObject:v6 forKey:@"maximumNumberOfResultsPerPage"];
}

- (FPSearchOnServerRequestDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desiredNumberOfResults"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumNumberOfResultsPerPage"];
      if (v7)
      {
        self = -[FPSearchOnServerRequestDescriptor initWithQuery:desiredNumberOfResults:maximumNumberOfResultsPerPage:](self, "initWithQuery:desiredNumberOfResults:maximumNumberOfResultsPerPage:", v5, [v6 integerValue], objc_msgSend(v7, "integerValue"));
        v8 = self;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end