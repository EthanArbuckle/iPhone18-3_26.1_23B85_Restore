@interface _CLMicroLocationSourceIdAndSourceData
- (_CLMicroLocationSourceIdAndSourceData)initWithCoder:(id)a3;
- (_CLMicroLocationSourceIdAndSourceData)initWithSourceIdsIdentifier:(id)a3 sourceData:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLMicroLocationSourceIdAndSourceData

- (_CLMicroLocationSourceIdAndSourceData)initWithSourceIdsIdentifier:(id)a3 sourceData:(id)a4
{
  v8.receiver = self;
  v8.super_class = _CLMicroLocationSourceIdAndSourceData;
  v6 = [(_CLMicroLocationSourceIdAndSourceData *)&v8 init];
  if (v6)
  {
    v6->_sourceIdsIdentifier = [a3 copy];
    v6->_sourceData = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLMicroLocationSourceIdAndSourceData;
  [(_CLMicroLocationSourceIdAndSourceData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)[(_CLMicroLocationSourceIdAndSourceData *)self sourceIdsIdentifier] copyWithZone:a3];
  v7 = [(NSArray *)[(_CLMicroLocationSourceIdAndSourceData *)self sourceData] copyWithZone:a3];

  return [v5 initWithSourceIdsIdentifier:v6 sourceData:v7];
}

- (_CLMicroLocationSourceIdAndSourceData)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _CLMicroLocationSourceIdAndSourceData;
  v4 = [(_CLMicroLocationSourceIdAndSourceData *)&v8 init];
  if (v4)
  {
    v4->_sourceIdsIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceId"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_sourceData = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"sourceData"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_sourceIdsIdentifier forKey:@"sourceId"];
  sourceData = self->_sourceData;

  [a3 encodeObject:sourceData forKey:@"sourceData"];
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
  v5 = [(_CLMicroLocationSourceIdAndSourceData *)self sourceData];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"\t%@\n", objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "description"))}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, v4];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end