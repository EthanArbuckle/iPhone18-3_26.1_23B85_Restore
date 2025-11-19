@interface _MXVersion
- (_MXVersion)init;
- (_MXVersion)initWithComponents:(id)a3;
- (_MXVersion)initWithVersionString:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation _MXVersion

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(_MXVersion *)self components];
  v6 = [v4 components];
  v7 = [v5 count];
  if (v7 <= [v6 count])
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = &unk_1F1611458;
      if (v11 < [v5 count])
      {
        v12 = [v5 objectAtIndexedSubscript:v11];
      }

      v13 = &unk_1F1611458;
      if (v11 < [v6 count])
      {
        v13 = [v6 objectAtIndexedSubscript:v11];
      }

      v14 = [v12 compare:v13];

      if (v14)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14;
}

- (_MXVersion)initWithVersionString:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 componentsSeparatedByString:{@".", 0}];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v14 + 1) + 8 * v10), "integerValue")}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(_MXVersion *)self initWithComponents:v5];
  return v12;
}

- (_MXVersion)initWithComponents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MXVersion;
  v5 = [(_MXVersion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    components = v5->_components;
    v5->_components = v6;
  }

  return v5;
}

- (_MXVersion)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end