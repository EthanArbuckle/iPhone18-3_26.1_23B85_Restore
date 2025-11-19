@interface MPSGraphViewerNodePropertyEnumSPI
- (MPSGraphViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)a3;
- (MPSGraphViewerNodePropertyEnumSPI)initWithName:(id)a3 type:(id)a4 cases:(id)a5 value:(unint64_t)a6;
- (id)dataWithRange:(_NSRange)a3;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePropertyEnumSPI

- (MPSGraphViewerNodePropertyEnumSPI)initWithName:(id)a3 type:(id)a4 cases:(id)a5 value:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MPSGraphViewerNodePropertyEnumSPI;
  v14 = [(MPSGraphViewerNodePropertyEnumSPI *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_enumCases, a5);
    objc_storeStrong(&v15->_enumType, a4);
    v15->_enumValue = a6;
  }

  return v15;
}

- (id)dataWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_enumValue length:8];
  v6 = [v5 subdataWithRange:{location, length}];

  return v6;
}

- (MPSGraphViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MPSGraphViewerNodePropertyEnumSPI;
  v5 = [(MPSGraphViewerNodePropertyEnumSPI *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"enumCases"];
    enumCases = v5->_enumCases;
    v5->_enumCases = v8;

    v10 = [v4 objectForKey:@"enumType"];
    enumType = v5->_enumType;
    v5->_enumType = v10;

    v12 = [v4 objectForKey:@"enumValue"];
    v5->_enumValue = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[MPSGraphViewerNodePropertyEnumSPI type];
  [v3 setObject:v4 forKey:@"type"];

  v5 = [(MPSGraphViewerNodePropertyEnumSPI *)self name];
  [v3 setObject:v5 forKey:@"name"];

  if (self->_enumCases)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_enumCases;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:v11];
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [v3 setObject:v6 forKey:@"enumCases"];
  }

  enumType = self->_enumType;
  if (enumType)
  {
    [v3 setObject:enumType forKey:@"enumType"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_enumValue, v16}];
  [v3 setObject:v13 forKey:@"enumValue"];

  v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  return v14;
}

@end