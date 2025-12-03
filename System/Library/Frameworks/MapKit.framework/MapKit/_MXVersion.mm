@interface _MXVersion
- (_MXVersion)init;
- (_MXVersion)initWithComponents:(id)components;
- (_MXVersion)initWithVersionString:(id)string;
- (int64_t)compare:(id)compare;
@end

@implementation _MXVersion

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  components = [(_MXVersion *)self components];
  components2 = [compareCopy components];
  v7 = [components count];
  if (v7 <= [components2 count])
  {
    v8 = components2;
  }

  else
  {
    v8 = components;
  }

  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = &unk_1F1611458;
      if (v11 < [components count])
      {
        v12 = [components objectAtIndexedSubscript:v11];
      }

      v13 = &unk_1F1611458;
      if (v11 < [components2 count])
      {
        v13 = [components2 objectAtIndexedSubscript:v11];
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

- (_MXVersion)initWithVersionString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [stringCopy componentsSeparatedByString:{@".", 0}];
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

- (_MXVersion)initWithComponents:(id)components
{
  componentsCopy = components;
  v9.receiver = self;
  v9.super_class = _MXVersion;
  v5 = [(_MXVersion *)&v9 init];
  if (v5)
  {
    v6 = [componentsCopy copy];
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