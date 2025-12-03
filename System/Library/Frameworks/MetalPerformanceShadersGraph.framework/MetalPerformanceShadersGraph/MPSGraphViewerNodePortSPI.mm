@interface MPSGraphViewerNodePortSPI
- (MPSGraphViewerNodePortSPI)initWithJSONDictionary:(id)dictionary;
- (MPSGraphViewerNodePortSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape valueRef:(unint64_t)ref;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePortSPI

- (MPSGraphViewerNodePortSPI)initWithName:(id)name dataType:(unsigned int)type shape:(id)shape valueRef:(unint64_t)ref
{
  nameCopy = name;
  shapeCopy = shape;
  v16.receiver = self;
  v16.super_class = MPSGraphViewerNodePortSPI;
  v13 = [(MPSGraphViewerNodePortSPI *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    v14->_dataType = type;
    objc_storeStrong(&v14->_shape, shape);
    v14->_valueRef = ref;
  }

  return v14;
}

- (MPSGraphViewerNodePortSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MPSGraphViewerNodePortSPI;
  v5 = [(MPSGraphViewerNodePortSPI *)&v13 init];
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

    v11 = [dictionaryCopy objectForKey:@"valueRef"];
    v5->_valueRef = [v11 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  name = [(MPSGraphViewerNodePortSPI *)self name];

  if (name)
  {
    name2 = [(MPSGraphViewerNodePortSPI *)self name];
    [dictionary setObject:name2 forKey:@"name"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPSGraphViewerNodePortSPI dataType](self, "dataType")}];
  [dictionary setObject:v6 forKey:@"dataType"];

  shape = [(MPSGraphViewerNodePortSPI *)self shape];

  if (shape)
  {
    shape2 = [(MPSGraphViewerNodePortSPI *)self shape];
    [dictionary setObject:shape2 forKey:@"shape"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSGraphViewerNodePortSPI valueRef](self, "valueRef")}];
  [dictionary setObject:v9 forKey:@"valueRef"];

  v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v10;
}

@end