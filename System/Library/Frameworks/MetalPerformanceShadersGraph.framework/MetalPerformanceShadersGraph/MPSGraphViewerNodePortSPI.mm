@interface MPSGraphViewerNodePortSPI
- (MPSGraphViewerNodePortSPI)initWithJSONDictionary:(id)a3;
- (MPSGraphViewerNodePortSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5 valueRef:(unint64_t)a6;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePortSPI

- (MPSGraphViewerNodePortSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5 valueRef:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = MPSGraphViewerNodePortSPI;
  v13 = [(MPSGraphViewerNodePortSPI *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    v14->_dataType = a4;
    objc_storeStrong(&v14->_shape, a5);
    v14->_valueRef = a6;
  }

  return v14;
}

- (MPSGraphViewerNodePortSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPSGraphViewerNodePortSPI;
  v5 = [(MPSGraphViewerNodePortSPI *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"dataType"];
    v5->_dataType = [v8 unsignedIntValue];

    v9 = [v4 objectForKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v9;

    v11 = [v4 objectForKey:@"valueRef"];
    v5->_valueRef = [v11 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MPSGraphViewerNodePortSPI *)self name];

  if (v4)
  {
    v5 = [(MPSGraphViewerNodePortSPI *)self name];
    [v3 setObject:v5 forKey:@"name"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPSGraphViewerNodePortSPI dataType](self, "dataType")}];
  [v3 setObject:v6 forKey:@"dataType"];

  v7 = [(MPSGraphViewerNodePortSPI *)self shape];

  if (v7)
  {
    v8 = [(MPSGraphViewerNodePortSPI *)self shape];
    [v3 setObject:v8 forKey:@"shape"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MPSGraphViewerNodePortSPI valueRef](self, "valueRef")}];
  [v3 setObject:v9 forKey:@"valueRef"];

  v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  return v10;
}

@end