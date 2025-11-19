@interface _CLMicroLocationSourcesStatisticsResult
- (_CLMicroLocationSourcesStatisticsResult)initWithCoder:(id)a3;
- (_CLMicroLocationSourcesStatisticsResult)initWithSourcesData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation _CLMicroLocationSourcesStatisticsResult

- (_CLMicroLocationSourcesStatisticsResult)initWithSourcesData:(id)a3
{
  v6.receiver = self;
  v6.super_class = _CLMicroLocationSourcesStatisticsResult;
  v4 = [(_CLMicroLocationSourcesStatisticsResult *)&v6 init];
  if (v4)
  {
    v4->_sourcesData = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLMicroLocationSourcesStatisticsResult;
  [(_CLMicroLocationSourcesStatisticsResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSArray *)[(_CLMicroLocationSourcesStatisticsResult *)self sourcesData] copyWithZone:a3];

  return [v5 initWithSourcesData:v6];
}

- (_CLMicroLocationSourcesStatisticsResult)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _CLMicroLocationSourcesStatisticsResult;
  v4 = [(_CLMicroLocationSourcesStatisticsResult *)&v8 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_sourcesData = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"sourcesData"}];
  }

  return v4;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(_CLMicroLocationSourcesStatisticsResult *)self sourcesData];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@\n", objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "description"))}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

@end