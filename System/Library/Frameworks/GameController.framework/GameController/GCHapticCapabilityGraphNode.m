@interface GCHapticCapabilityGraphNode
- (GCHapticCapabilityGraphNode)initWithJSONDictionaryRepresentation:(id)a3;
- (id)jsonDictionaryRepresentation;
@end

@implementation GCHapticCapabilityGraphNode

- (GCHapticCapabilityGraphNode)initWithJSONDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GCHapticCapabilityGraphNode;
  v5 = [(GCHapticCapabilityGraphNode *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 objectForKeyedSubscript:@"exposed"];
    v5->_exposed = [v8 BOOLValue];

    v9 = [MEMORY[0x1E695DF70] array];
    children = v5->_children;
    v5->_children = v9;

    v11 = [MEMORY[0x1E695DF70] array];
    actuators = v5->_actuators;
    v5->_actuators = v11;
  }

  return v5;
}

- (id)jsonDictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v28 + 1) + 8 * i) label];
        [v4 addObject:v10];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_actuators;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * j) label];
        [v11 addObject:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  [v3 setObject:self->_label forKeyedSubscript:@"label"];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_exposed];
  [v3 setObject:v18 forKeyedSubscript:@"exposed"];

  if ([v4 count])
  {
    v19 = @"children";
    v20 = v3;
    v21 = v4;
  }

  else
  {
    if (![v11 count])
    {
      goto LABEL_20;
    }

    v19 = @"actuators";
    v20 = v3;
    v21 = v11;
  }

  [v20 setObject:v21 forKeyedSubscript:{v19, v24}];
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

@end