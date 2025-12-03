@interface MPSGraphViewerNodePropertyEnumCaseSPI
- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)dictionary;
- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithName:(id)name value:(unint64_t)value;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePropertyEnumCaseSPI

- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithName:(id)name value:(unint64_t)value
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MPSGraphViewerNodePropertyEnumCaseSPI;
  v8 = [(MPSGraphViewerNodePropertyEnumCaseSPI *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_value = value;
  }

  return v9;
}

- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MPSGraphViewerNodePropertyEnumCaseSPI;
  v5 = [(MPSGraphViewerNodePropertyEnumCaseSPI *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"value"];
    v5->_value = [v8 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  name = [(MPSGraphViewerNodePropertyEnumCaseSPI *)self name];

  if (name)
  {
    name2 = [(MPSGraphViewerNodePropertyEnumCaseSPI *)self name];
    [dictionary setObject:name2 forKey:@"name"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSGraphViewerNodePropertyEnumCaseSPI value](self, "value")}];
  [dictionary setObject:v6 forKey:@"value"];

  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v7;
}

@end