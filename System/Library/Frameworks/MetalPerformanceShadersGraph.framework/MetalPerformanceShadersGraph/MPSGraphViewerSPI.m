@interface MPSGraphViewerSPI
- (MPSGraphViewerSPI)initWithJSONDictionary:(id)a3;
- (MPSGraphViewerSPI)initWithName:(id)a3 nodes:(id)a4;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerSPI

- (MPSGraphViewerSPI)initWithName:(id)a3 nodes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPSGraphViewerSPI;
  v9 = [(MPSGraphViewerSPI *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_nodes, a4);
  }

  return v10;
}

- (MPSGraphViewerSPI)initWithJSONDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MPSGraphViewerSPI;
  v5 = [(MPSGraphViewerSPI *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v4 objectForKey:@"nodes"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v9 = v20 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [MPSGraphViewerNodeSPI alloc];
          v15 = [(MPSGraphViewerNodeSPI *)v14 initWithJSONDictionary:v13, v19];
          [v8 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
    nodes = v5->_nodes;
    v5->_nodes = v16;
  }

  return v5;
}

- (id)jsonDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MPSGraphViewerSPI *)self nodes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v16[0] = @"name";
  v9 = [(MPSGraphViewerSPI *)self name];
  v16[1] = @"nodes";
  v17[0] = v9;
  v17[1] = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

@end