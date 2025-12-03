@interface MPSGraphViewerNodePropertyStringSPI
- (MPSGraphViewerNodePropertyStringSPI)initWithJSONDictionary:(id)dictionary;
- (MPSGraphViewerNodePropertyStringSPI)initWithName:(id)name value:(id)value;
- (id)dataWithRange:(_NSRange)range;
- (id)jsonDictionary;
- (id)shape;
- (unint64_t)dataLength;
@end

@implementation MPSGraphViewerNodePropertyStringSPI

- (MPSGraphViewerNodePropertyStringSPI)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = MPSGraphViewerNodePropertyStringSPI;
  v9 = [(MPSGraphViewerNodePropertyStringSPI *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_stringValue, value);
    v11 = [(NSString *)v10->_stringValue dataUsingEncoding:4];
    stringUTF8Data = v10->_stringUTF8Data;
    v10->_stringUTF8Data = v11;
  }

  return v10;
}

- (id)shape
{
  v6[1] = *MEMORY[0x1E69E9840];
  stringUTF8Data = self->_stringUTF8Data;
  if (stringUTF8Data)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData length](stringUTF8Data, "length")}];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (unint64_t)dataLength
{
  result = self->_stringUTF8Data;
  if (result)
  {
    return [result length];
  }

  return result;
}

- (id)dataWithRange:(_NSRange)range
{
  stringUTF8Data = self->_stringUTF8Data;
  if (stringUTF8Data)
  {
    stringUTF8Data = [stringUTF8Data subdataWithRange:{range.location, range.length}];
    v3 = vars8;
  }

  return stringUTF8Data;
}

- (MPSGraphViewerNodePropertyStringSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MPSGraphViewerNodePropertyStringSPI;
  v5 = [(MPSGraphViewerNodePropertyStringSPI *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"value"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v8;

    v10 = [(NSString *)v5->_stringValue dataUsingEncoding:4];
    stringUTF8Data = v5->_stringUTF8Data;
    v5->_stringUTF8Data = v10;
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[MPSGraphViewerNodePropertyStringSPI type];
  [dictionary setObject:v4 forKey:@"type"];

  name = [(MPSGraphViewerNodePropertyStringSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [dictionary setObject:stringValue forKey:@"value"];
  }

  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v7;
}

@end