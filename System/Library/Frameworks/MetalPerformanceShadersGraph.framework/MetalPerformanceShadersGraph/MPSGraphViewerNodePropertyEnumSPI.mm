@interface MPSGraphViewerNodePropertyEnumSPI
- (MPSGraphViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)dictionary;
- (MPSGraphViewerNodePropertyEnumSPI)initWithName:(id)name type:(id)type cases:(id)cases value:(unint64_t)value;
- (id)dataWithRange:(_NSRange)range;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePropertyEnumSPI

- (MPSGraphViewerNodePropertyEnumSPI)initWithName:(id)name type:(id)type cases:(id)cases value:(unint64_t)value
{
  nameCopy = name;
  typeCopy = type;
  casesCopy = cases;
  v17.receiver = self;
  v17.super_class = MPSGraphViewerNodePropertyEnumSPI;
  v14 = [(MPSGraphViewerNodePropertyEnumSPI *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_enumCases, cases);
    objc_storeStrong(&v15->_enumType, type);
    v15->_enumValue = value;
  }

  return v15;
}

- (id)dataWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_enumValue length:8];
  v6 = [v5 subdataWithRange:{location, length}];

  return v6;
}

- (MPSGraphViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MPSGraphViewerNodePropertyEnumSPI;
  v5 = [(MPSGraphViewerNodePropertyEnumSPI *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"enumCases"];
    enumCases = v5->_enumCases;
    v5->_enumCases = v8;

    v10 = [dictionaryCopy objectForKey:@"enumType"];
    enumType = v5->_enumType;
    v5->_enumType = v10;

    v12 = [dictionaryCopy objectForKey:@"enumValue"];
    v5->_enumValue = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[MPSGraphViewerNodePropertyEnumSPI type];
  [dictionary setObject:v4 forKey:@"type"];

  name = [(MPSGraphViewerNodePropertyEnumSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

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

          jsonDictionary = [*(*(&v16 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:jsonDictionary];
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v6 forKey:@"enumCases"];
  }

  enumType = self->_enumType;
  if (enumType)
  {
    [dictionary setObject:enumType forKey:@"enumType"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_enumValue, v16}];
  [dictionary setObject:v13 forKey:@"enumValue"];

  v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v14;
}

@end