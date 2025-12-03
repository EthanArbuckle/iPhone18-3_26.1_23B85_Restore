@interface MPSGraphViewerNodePropertyDataSPI
- (MPSGraphViewerNodePropertyDataSPI)initWithJSONDictionary:(id)dictionary;
- (MPSGraphViewerNodePropertyDataSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePropertyDataSPI

- (MPSGraphViewerNodePropertyDataSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape
{
  nameCopy = name;
  shapeCopy = shape;
  v14.receiver = self;
  v14.super_class = MPSGraphViewerNodePropertyDataSPI;
  v11 = [(MPSGraphViewerNodePropertyDataSPI *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_dataType = type;
    objc_storeStrong(&v12->_shape, shape);
    v12->_isSplat = 0;
  }

  return v12;
}

- (MPSGraphViewerNodePropertyDataSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MPSGraphViewerNodePropertyDataSPI;
  v5 = [(MPSGraphViewerNodePropertyDataSPI *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"dataType"];
    v5->_dataType = [v8 unsignedIntValue];

    v9 = [dictionaryCopy objectForKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v9;

    v11 = [dictionaryCopy objectForKey:@"isSplat"];
    v5->_isSplat = [v11 BOOLValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[MPSGraphViewerNodePropertyDataSPI type];
  [dictionary setObject:v4 forKey:@"type"];

  name = [(MPSGraphViewerNodePropertyDataSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPSGraphViewerNodePropertyDataSPI dataType](self, "dataType")}];
  [dictionary setObject:v6 forKey:@"dataType"];

  shape = [(MPSGraphViewerNodePropertyDataSPI *)self shape];
  [dictionary setObject:shape forKey:@"shape"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSplat];
  [dictionary setObject:v8 forKey:@"isSplat"];

  v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v9;
}

@end