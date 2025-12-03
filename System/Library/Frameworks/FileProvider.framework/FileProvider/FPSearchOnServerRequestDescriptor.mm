@interface FPSearchOnServerRequestDescriptor
- (FPSearchOnServerRequestDescriptor)initWithCoder:(id)coder;
- (FPSearchOnServerRequestDescriptor)initWithQuery:(id)query desiredNumberOfResults:(int64_t)results maximumNumberOfResultsPerPage:(int64_t)page;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPSearchOnServerRequestDescriptor

- (FPSearchOnServerRequestDescriptor)initWithQuery:(id)query desiredNumberOfResults:(int64_t)results maximumNumberOfResultsPerPage:(int64_t)page
{
  queryCopy = query;
  v13.receiver = self;
  v13.super_class = FPSearchOnServerRequestDescriptor;
  v10 = [(FPSearchOnServerRequestDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_query, query);
    v11->_desiredNumberOfResults = results;
    v11->_maximumNumberOfResultsPerPage = page;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  query = self->_query;
  coderCopy = coder;
  [coderCopy encodeObject:query forKey:@"query"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_desiredNumberOfResults];
  [coderCopy encodeObject:v7 forKey:@"desiredNumberOfResults"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maximumNumberOfResultsPerPage];
  [coderCopy encodeObject:v6 forKey:@"maximumNumberOfResultsPerPage"];
}

- (FPSearchOnServerRequestDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desiredNumberOfResults"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumNumberOfResultsPerPage"];
      if (v7)
      {
        self = -[FPSearchOnServerRequestDescriptor initWithQuery:desiredNumberOfResults:maximumNumberOfResultsPerPage:](self, "initWithQuery:desiredNumberOfResults:maximumNumberOfResultsPerPage:", v5, [v6 integerValue], objc_msgSend(v7, "integerValue"));
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end