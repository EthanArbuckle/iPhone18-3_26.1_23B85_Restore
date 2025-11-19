@interface MTLLinkedFunctionsInternal
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setBinaryFunctions:(id)a3;
- (void)setFunctions:(id)a3;
- (void)setGroups:(id)a3;
- (void)setPrivateFunctions:(id)a3;
@end

@implementation MTLLinkedFunctionsInternal

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLLinkedFunctionsInternal;
  [(MTLLinkedFunctionsInternal *)&v4 dealloc];
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLLinkedFunctionsInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLLinkedFunctionsInternal;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    p_private = &self->_private;
    *(v4 + 16) = [(NSArray *)p_private->functions copy];
    v5[3] = [(NSArray *)p_private->privateFunctions copy];
    v5[4] = [(NSArray *)p_private->binaryFunctions copy];
    v5[8] = [(NSDictionary *)p_private->groups copy];
  }

  return v5;
}

- (void)setFunctions:(id)a3
{
  functions = self->_private.functions;
  if (functions != a3)
  {

    self->_private.functions = [a3 copy];
  }
}

- (void)setPrivateFunctions:(id)a3
{
  p_private = &self->_private;
  privateFunctions = self->_private.privateFunctions;
  if (privateFunctions != a3)
  {

    p_private->privateFunctions = [a3 copy];
  }
}

- (void)setBinaryFunctions:(id)a3
{
  p_private = &self->_private;
  binaryFunctions = self->_private.binaryFunctions;
  if (binaryFunctions != a3)
  {

    p_private->binaryFunctions = [a3 copy];
  }
}

- (void)setGroups:(id)a3
{
  p_private = &self->_private;
  groups = self->_private.groups;
  if (groups != a3)
  {

    p_private->groups = [a3 copy];
  }
}

- (unint64_t)hash
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(MTLLinkedFunctionsInternal *)self isEmpty])
  {
    result = 0;
  }

  else
  {
    p_private = &self->_private;
    bzero(v15, 0x20uLL);
    v5 = 1;
    v15[0] = MTLHashArray(p_private->functions, 1, 1);
    v15[1] = MTLHashArray(p_private->privateFunctions, 1, 1);
    v15[2] = MTLHashArray(p_private->binaryFunctions, 1, 1);
    groups = p_private->groups;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(NSDictionary *)groups countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v5 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(groups);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 hash];
          v13 = MTLHashArray([(NSDictionary *)groups objectForKeyedSubscript:v11], 1, 1);
          v5 ^= v12 ^ ((v13 >> (v12 & 0x3F ^ 0x3F)) | (v13 << v12));
        }

        v8 = [(NSDictionary *)groups countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v15[3] = v5;
    result = _MTLHashState(v15, 0x20uLL);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
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
      p_private = &self->_private;
      v8 = (a3 + 16);
      if (p_private->functions == *v8 || (v6 = [(NSArray *)p_private->functions isEqual:?]) != 0)
      {
        privateFunctions = p_private->privateFunctions;
        if (privateFunctions == v8[1] || (v6 = [(NSArray *)privateFunctions isEqual:?]) != 0)
        {
          binaryFunctions = p_private->binaryFunctions;
          if (binaryFunctions == v8[2] || (v6 = [(NSArray *)binaryFunctions isEqual:?]) != 0)
          {
            groups = p_private->groups;
            if (groups == v8[6] || (v6 = [(NSDictionary *)groups isEqual:?]) != 0)
            {
              LOBYTE(v6) = 1;
            }
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

- (id)formattedDescription:(unint64_t)a3
{
  v15[12] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = MTLLinkedFunctionsInternal;
  v6 = [(MTLLinkedFunctionsInternal *)&v14 description];
  v15[0] = v4;
  v15[1] = @"functions =";
  p_private = &self->_private;
  functions = p_private->functions;
  if (!p_private->functions)
  {
    functions = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = functions;
  v15[3] = v4;
  v15[4] = @"privateFunctions =";
  privateFunctions = p_private->privateFunctions;
  if (!privateFunctions)
  {
    privateFunctions = [MEMORY[0x1E695DFB0] null];
  }

  v15[5] = privateFunctions;
  v15[6] = v4;
  v15[7] = @"binaryFunctions =";
  binaryFunctions = p_private->binaryFunctions;
  if (!binaryFunctions)
  {
    binaryFunctions = [MEMORY[0x1E695DFB0] null];
  }

  v15[8] = binaryFunctions;
  v15[9] = v4;
  v15[10] = @"groups =";
  groups = p_private->groups;
  if (!groups)
  {
    groups = [MEMORY[0x1E695DFB0] null];
  }

  v15[11] = groups;
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 12), "componentsJoinedByString:", @" "];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

@end