@interface MPSGraphViewerNodePropertyDataSPI
- (MPSGraphViewerNodePropertyDataSPI)initWithJSONDictionary:(id)a3;
- (MPSGraphViewerNodePropertyDataSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodePropertyDataSPI

- (MPSGraphViewerNodePropertyDataSPI)initWithName:(id)a3 dataType:(unsigned int)a4 shape:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MPSGraphViewerNodePropertyDataSPI;
  v11 = [(MPSGraphViewerNodePropertyDataSPI *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_dataType = a4;
    objc_storeStrong(&v12->_shape, a5);
    v12->_isSplat = 0;
  }

  return v12;
}

- (MPSGraphViewerNodePropertyDataSPI)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPSGraphViewerNodePropertyDataSPI;
  v5 = [(MPSGraphViewerNodePropertyDataSPI *)&v13 init];
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

    v11 = [v4 objectForKey:@"isSplat"];
    v5->_isSplat = [v11 BOOLValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[MPSGraphViewerNodePropertyDataSPI type];
  [v3 setObject:v4 forKey:@"type"];

  v5 = [(MPSGraphViewerNodePropertyDataSPI *)self name];
  [v3 setObject:v5 forKey:@"name"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPSGraphViewerNodePropertyDataSPI dataType](self, "dataType")}];
  [v3 setObject:v6 forKey:@"dataType"];

  v7 = [(MPSGraphViewerNodePropertyDataSPI *)self shape];
  [v3 setObject:v7 forKey:@"shape"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSplat];
  [v3 setObject:v8 forKey:@"isSplat"];

  v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  return v9;
}

@end