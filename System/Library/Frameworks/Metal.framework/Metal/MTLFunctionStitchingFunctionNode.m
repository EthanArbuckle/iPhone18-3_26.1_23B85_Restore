@interface MTLFunctionStitchingFunctionNode
- (BOOL)isEqual:(id)a3;
- (MTLFunctionStitchingFunctionNode)init;
- (MTLFunctionStitchingFunctionNode)initWithName:(NSString *)name arguments:(NSArray *)arguments controlDependencies:(NSArray *)controlDependencies;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLFunctionStitchingFunctionNode

- (MTLFunctionStitchingFunctionNode)init
{
  v4.receiver = self;
  v4.super_class = MTLFunctionStitchingFunctionNode;
  v2 = [(MTLFunctionStitchingFunctionNode *)&v4 init];
  [(MTLFunctionStitchingFunctionNode *)v2 setControlDependencies:MEMORY[0x1E695E0F0]];
  return v2;
}

- (MTLFunctionStitchingFunctionNode)initWithName:(NSString *)name arguments:(NSArray *)arguments controlDependencies:(NSArray *)controlDependencies
{
  v10.receiver = self;
  v10.super_class = MTLFunctionStitchingFunctionNode;
  v8 = [(MTLFunctionStitchingFunctionNode *)&v10 init];
  v8->_name = [(NSString *)name copy];
  v8->_arguments = [(NSArray *)arguments copy];
  v8->_controlDependencies = [(NSArray *)controlDependencies copy];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setName:self->_name];
  [v4 setArguments:self->_arguments];
  [v4 setControlDependencies:self->_controlDependencies];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v6 = -[NSString isEqualToString:](-[MTLFunctionStitchingFunctionNode name](self, "name"), "isEqualToString:", [a3 name]);
      if (v6)
      {
        v6 = MTLCompareArray(-[MTLFunctionStitchingFunctionNode arguments](self, "arguments"), [a3 arguments], 1, 1);
        if (v6)
        {
          v7 = [(MTLFunctionStitchingFunctionNode *)self controlDependencies];
          v8 = [a3 controlDependencies];

          LOBYTE(v6) = MTLCompareArray(v7, v8, 1, 0);
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
  bzero(v4, 0x18uLL);
  v4[0] = [(NSString *)[(MTLFunctionStitchingFunctionNode *)self name] hash];
  v4[1] = MTLHashArray([(MTLFunctionStitchingFunctionNode *)self arguments], 1, 1);
  v4[2] = MTLHashArray([(MTLFunctionStitchingFunctionNode *)self controlDependencies], 1, 0);
  return _MTLHashState(v4, 0x18uLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionStitchingFunctionNode;
  [(MTLFunctionStitchingFunctionNode *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  arguments = self->_arguments;
  v7 = [(NSArray *)arguments countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(arguments);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        if (v9)
        {
          [v9 appendString:v5];
        }

        else
        {
          v9 = objc_opt_new();
        }

        [v9 appendString:{objc_msgSend(v12, "formattedDescription:", a3 + 4)}];
      }

      v8 = [(NSArray *)arguments countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = self;
  controlDependencies = self->_controlDependencies;
  v14 = [(NSArray *)controlDependencies countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v29;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(controlDependencies);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        if (v16)
        {
          [v16 appendString:v5];
        }

        else
        {
          v16 = objc_opt_new();
        }

        [v16 appendString:{objc_msgSend(v19, "formattedDescription:", a3 + 4)}];
      }

      v15 = [(NSArray *)controlDependencies countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v20 = MEMORY[0x1E696AEC0];
  v27.receiver = v26;
  v27.super_class = MTLFunctionStitchingFunctionNode;
  v21 = [(MTLFunctionStitchingFunctionNode *)&v27 description];
  v36[0] = v5;
  v36[1] = @"name =";
  v36[2] = v26->_name;
  v36[3] = v5;
  if (v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
  }

  v36[4] = @"arguments =";
  v36[5] = v22;
  v36[6] = v5;
  v36[7] = @"controlDependencies =";
  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  v36[8] = v23;
  result = [v20 stringWithFormat:@"%@%@", v21, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v36, 9), "componentsJoinedByString:", @" "];
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

@end