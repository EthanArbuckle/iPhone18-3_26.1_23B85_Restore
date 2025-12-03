@interface MTLFunctionStitchingGraph
- (BOOL)isEqual:(id)equal;
- (MTLFunctionStitchingGraph)init;
- (MTLFunctionStitchingGraph)initWithFunctionName:(NSString *)functionName nodes:(NSArray *)nodes outputNode:(MTLFunctionStitchingFunctionNode *)outputNode attributes:(NSArray *)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setOutputNode:(MTLFunctionStitchingFunctionNode *)outputNode;
@end

@implementation MTLFunctionStitchingGraph

- (void)setOutputNode:(MTLFunctionStitchingFunctionNode *)outputNode
{
  v6 = self->_outputNode;
  if (shouldOutputNodePropertyRetain(void)::onceToken != -1)
  {
    [MTLFunctionStitchingGraph setOutputNode:];
  }

  if (shouldOutputNodePropertyRetain(void)::result == 1)
  {
    v5 = outputNode;
  }

  else
  {
    v5 = [(MTLFunctionStitchingFunctionNode *)outputNode copy];
  }

  self->_outputNode = v5;
}

- (MTLFunctionStitchingGraph)init
{
  v5.receiver = self;
  v5.super_class = MTLFunctionStitchingGraph;
  v2 = [(MTLFunctionStitchingGraph *)&v5 init];
  v3 = MEMORY[0x1E695E0F0];
  [(MTLFunctionStitchingGraph *)v2 setNodes:MEMORY[0x1E695E0F0]];
  [(MTLFunctionStitchingGraph *)v2 setAttributes:v3];
  return v2;
}

- (MTLFunctionStitchingGraph)initWithFunctionName:(NSString *)functionName nodes:(NSArray *)nodes outputNode:(MTLFunctionStitchingFunctionNode *)outputNode attributes:(NSArray *)attributes
{
  v13.receiver = self;
  v13.super_class = MTLFunctionStitchingGraph;
  v10 = [(MTLFunctionStitchingGraph *)&v13 init];
  v10->_functionName = [(NSString *)functionName copy];
  v10->_nodes = [(NSArray *)nodes copy];
  if (shouldOutputNodePropertyRetain(void)::onceToken != -1)
  {
    [MTLFunctionStitchingGraph initWithFunctionName:nodes:outputNode:attributes:];
  }

  if (shouldOutputNodePropertyRetain(void)::result == 1)
  {
    v11 = outputNode;
  }

  else
  {
    v11 = [(MTLFunctionStitchingFunctionNode *)outputNode copy];
  }

  v10->_outputNode = v11;
  v10->_attributes = [(NSArray *)attributes copy];
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setFunctionName:self->_functionName];
  [v4 setNodes:self->_nodes];
  [v4 setOutputNode:self->_outputNode];
  [v4 setAttributes:self->_attributes];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionStitchingGraph;
  [(MTLFunctionStitchingGraph *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      functionName = self->_functionName;
      if (functionName == *(equal + 1) || (v6 = [(NSString *)functionName isEqual:?]) != 0)
      {
        outputNode = self->_outputNode;
        if (outputNode == *(equal + 3) || (v6 = [(MTLFunctionStitchingFunctionNode *)outputNode isEqual:?]) != 0)
        {
          v6 = MTLCompareArray(self->_nodes, *(equal + 2), 1, 0);
          if (v6)
          {
            attributes = self->_attributes;
            v10 = *(equal + 4);

            LOBYTE(v6) = MTLCompareArray(attributes, v10, 1, 0);
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v4, 0x20uLL);
  v4[0] = [(NSString *)self->_functionName hash];
  v4[1] = [(MTLFunctionStitchingFunctionNode *)self->_outputNode hash];
  v4[2] = MTLHashArray(self->_nodes, 1, 0);
  v4[3] = MTLHashArray(self->_attributes, 1, 0);
  return _MTLHashState(v4, 0x20uLL);
}

- (id)formattedDescription:(unint64_t)description
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  nodes = self->_nodes;
  v7 = [(NSArray *)nodes countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(nodes);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        if (v9)
        {
          [v9 appendString:v5];
        }

        else
        {
          v9 = objc_opt_new();
        }

        [v9 appendString:{objc_msgSend(v12, "formattedDescription:", description + 4)}];
      }

      v8 = [(NSArray *)nodes countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  attributes = self->_attributes;
  v14 = [(NSArray *)attributes countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v31;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(attributes);
        }

        v19 = *(*(&v30 + 1) + 8 * j);
        if (v16)
        {
          [v16 appendString:v5];
        }

        else
        {
          v16 = objc_opt_new();
        }

        [v16 appendString:{objc_msgSend(v19, "formattedDescription:", description + 4)}];
      }

      v15 = [(NSArray *)attributes countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v20 = MEMORY[0x1E696AEC0];
  v29.receiver = selfCopy;
  v29.super_class = MTLFunctionStitchingGraph;
  v21 = [(MTLFunctionStitchingGraph *)&v29 description];
  v38[0] = v5;
  v38[1] = @"functionName =";
  v38[2] = selfCopy->_functionName;
  v38[3] = v5;
  v22 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  v38[4] = @"nodes =";
  v38[5] = v23;
  v38[6] = v5;
  v38[7] = @"outputNode =";
  outputNode = selfCopy->_outputNode;
  if (!outputNode)
  {
    outputNode = [MEMORY[0x1E695DFB0] null];
  }

  v38[8] = outputNode;
  v38[9] = v5;
  if (v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = v22;
  }

  v38[10] = @"attributes =";
  v38[11] = v25;
  result = [v20 stringWithFormat:@"%@%@", v21, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v38, 12), "componentsJoinedByString:", @" "];
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

@end