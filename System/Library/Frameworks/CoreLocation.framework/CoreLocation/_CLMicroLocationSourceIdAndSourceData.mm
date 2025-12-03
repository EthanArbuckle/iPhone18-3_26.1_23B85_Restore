@interface _CLMicroLocationSourceIdAndSourceData
- (_CLMicroLocationSourceIdAndSourceData)initWithCoder:(id)coder;
- (_CLMicroLocationSourceIdAndSourceData)initWithSourceIdsIdentifier:(id)identifier sourceData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLMicroLocationSourceIdAndSourceData

- (_CLMicroLocationSourceIdAndSourceData)initWithSourceIdsIdentifier:(id)identifier sourceData:(id)data
{
  v8.receiver = self;
  v8.super_class = _CLMicroLocationSourceIdAndSourceData;
  v6 = [(_CLMicroLocationSourceIdAndSourceData *)&v8 init];
  if (v6)
  {
    v6->_sourceIdsIdentifier = [identifier copy];
    v6->_sourceData = [data copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLMicroLocationSourceIdAndSourceData;
  [(_CLMicroLocationSourceIdAndSourceData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)[(_CLMicroLocationSourceIdAndSourceData *)self sourceIdsIdentifier] copyWithZone:zone];
  v7 = [(NSArray *)[(_CLMicroLocationSourceIdAndSourceData *)self sourceData] copyWithZone:zone];

  return [v5 initWithSourceIdsIdentifier:v6 sourceData:v7];
}

- (_CLMicroLocationSourceIdAndSourceData)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _CLMicroLocationSourceIdAndSourceData;
  v4 = [(_CLMicroLocationSourceIdAndSourceData *)&v8 init];
  if (v4)
  {
    v4->_sourceIdsIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sourceId"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_sourceData = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"sourceData"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_sourceIdsIdentifier forKey:@"sourceId"];
  sourceData = self->_sourceData;

  [coder encodeObject:sourceData forKey:@"sourceData"];
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sourceIdentifier: %@\n", self->_sourceIdsIdentifier];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sourceData = [(_CLMicroLocationSourceIdAndSourceData *)self sourceData];
  v6 = [(NSArray *)sourceData countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(sourceData);
        }

        [v4 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"\t%@\n", objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "description"))}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)sourceData countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, v4];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end