@interface GCHapticCapabilityGraphNode
- (GCHapticCapabilityGraphNode)initWithJSONDictionaryRepresentation:(id)representation;
- (id)jsonDictionaryRepresentation;
@end

@implementation GCHapticCapabilityGraphNode

- (GCHapticCapabilityGraphNode)initWithJSONDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = GCHapticCapabilityGraphNode;
  v5 = [(GCHapticCapabilityGraphNode *)&v14 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"exposed"];
    v5->_exposed = [v8 BOOLValue];

    array = [MEMORY[0x1E695DF70] array];
    children = v5->_children;
    v5->_children = array;

    array2 = [MEMORY[0x1E695DF70] array];
    actuators = v5->_actuators;
    v5->_actuators = array2;
  }

  return v5;
}

- (id)jsonDictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
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

        label = [*(*(&v28 + 1) + 8 * i) label];
        [array addObject:label];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  array2 = [MEMORY[0x1E695DF70] array];
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

        label2 = [*(*(&v24 + 1) + 8 * j) label];
        [array2 addObject:label2];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  [dictionary setObject:self->_label forKeyedSubscript:@"label"];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_exposed];
  [dictionary setObject:v18 forKeyedSubscript:@"exposed"];

  if ([array count])
  {
    v19 = @"children";
    v20 = dictionary;
    v21 = array;
  }

  else
  {
    if (![array2 count])
    {
      goto LABEL_20;
    }

    v19 = @"actuators";
    v20 = dictionary;
    v21 = array2;
  }

  [v20 setObject:v21 forKeyedSubscript:{v19, v24}];
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

@end