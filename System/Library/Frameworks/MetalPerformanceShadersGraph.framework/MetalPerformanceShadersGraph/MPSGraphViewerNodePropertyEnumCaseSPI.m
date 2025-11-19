@interface MPSGraphViewerNodePropertyEnumCaseSPI
- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)a3;
- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithName:(id)a3 value:(unint64_t)a4;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePropertyEnumCaseSPI

- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithName:(id)a3 value:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MPSGraphViewerNodePropertyEnumCaseSPI;
  v8 = [(MPSGraphViewerNodePropertyEnumCaseSPI *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_value = a4;
  }

  return v9;
}

- (MPSGraphViewerNodePropertyEnumCaseSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MPSGraphViewerNodePropertyEnumCaseSPI;
  v5 = [(MPSGraphViewerNodePropertyEnumCaseSPI *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"value"];
    v5->_value = [v8 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MPSGraphViewerNodePropertyEnumCaseSPI *)self name];

  if (v4)
  {
    v5 = [(MPSGraphViewerNodePropertyEnumCaseSPI *)self name];
    [v3 setObject:v5 forKey:@"name"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSGraphViewerNodePropertyEnumCaseSPI value](self, "value")}];
  [v3 setObject:v6 forKey:@"value"];

  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  return v7;
}

@end