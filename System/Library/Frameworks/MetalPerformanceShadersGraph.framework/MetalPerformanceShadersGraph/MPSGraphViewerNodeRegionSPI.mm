@interface MPSGraphViewerNodeRegionSPI
- (MPSGraphViewerNodeRegionSPI)initWithJSONDictionary:(id)dictionary;
- (MPSGraphViewerNodeRegionSPI)initWithName:(id)name returnType:(id)type nodes:(id)nodes;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodeRegionSPI

- (MPSGraphViewerNodeRegionSPI)initWithName:(id)name returnType:(id)type nodes:(id)nodes
{
  nameCopy = name;
  typeCopy = type;
  nodesCopy = nodes;
  v15.receiver = self;
  v15.super_class = MPSGraphViewerNodeRegionSPI;
  v12 = [(MPSGraphViewerNodeRegionSPI *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_returnType, type);
    objc_storeStrong(&v13->_nodes, nodes);
  }

  return v13;
}

- (MPSGraphViewerNodeRegionSPI)initWithJSONDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = MPSGraphViewerNodeRegionSPI;
  v5 = [(MPSGraphViewerNodeRegionSPI *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"returnType"];
    returnType = v5->_returnType;
    v5->_returnType = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [dictionaryCopy objectForKey:@"nodes"];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v11 = v22 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = [MPSGraphViewerNodeSPI alloc];
          v17 = [(MPSGraphViewerNodeSPI *)v16 initWithJSONDictionary:v15, v21];
          [v10 addObject:v17];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
    nodes = v5->_nodes;
    v5->_nodes = v18;
  }

  return v5;
}

- (id)jsonDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  nodes = [(MPSGraphViewerNodeRegionSPI *)self nodes];
  v5 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(nodes);
        }

        jsonDictionary = [*(*(&v15 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v5 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  name = [(MPSGraphViewerNodeRegionSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

  returnType = [(MPSGraphViewerNodeRegionSPI *)self returnType];
  LOBYTE(name) = returnType == 0;

  if ((name & 1) == 0)
  {
    returnType2 = [(MPSGraphViewerNodeRegionSPI *)self returnType];
    [dictionary setObject:returnType2 forKey:@"returnType"];
  }

  [dictionary setObject:v3 forKey:@"nodes"];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v13;
}

@end