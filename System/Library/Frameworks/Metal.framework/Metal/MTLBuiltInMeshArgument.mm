@interface MTLBuiltInMeshArgument
- (BOOL)isEqual:(id)equal;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLBuiltInMeshArgument

- (id)formattedDescription:(unint64_t)description
{
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v20 = MEMORY[0x1E696AEC0];
  v21.receiver = self;
  v21.super_class = MTLBuiltInMeshArgument;
  v6 = [(MTLBindingInternal *)&v21 formattedDescription:description];
  v27[0] = v5;
  v27[1] = @"BuiltInArgumentType =";
  v27[2] = MTLBuiltInArgumentTypeString(self->_builtInType);
  v7 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:{3), "componentsJoinedByString:", @" "}];
  v26[0] = v5;
  v26[1] = @"MeshVertexStructMembers =";
  meshVertexStruct = self->_meshVertexStruct;
  if (meshVertexStruct)
  {
    v9 = [(MTLStructTypeInternal *)meshVertexStruct formattedDescription:description + 4];
  }

  else
  {
    v9 = @"nil";
  }

  v26[2] = v9;
  v10 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:{3), "componentsJoinedByString:", @" "}];
  v25[0] = v5;
  v25[1] = @"MeshPrimitiveStructMembers =";
  meshPrimitiveStruct = self->_meshPrimitiveStruct;
  if (meshPrimitiveStruct)
  {
    v12 = [(MTLStructTypeInternal *)meshPrimitiveStruct formattedDescription:description + 4];
  }

  else
  {
    v12 = @"nil";
  }

  v25[2] = v12;
  v13 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:{3), "componentsJoinedByString:", @" "}];
  v24[0] = v5;
  v24[1] = @"MeshVertexCount =";
  v24[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_meshVertexCount];
  v14 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:{3), "componentsJoinedByString:", @" "}];
  v23[0] = v5;
  v23[1] = @"MeshPrimitiveCount =";
  v23[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_meshPrimitiveCount];
  v15 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:{3), "componentsJoinedByString:", @" "}];
  v22[0] = v5;
  v22[1] = @"MeshTopologyType =";
  meshTopologyType = self->_meshTopologyType;
  if (meshTopologyType > 3)
  {
    v17 = @"Unknown";
  }

  else
  {
    v17 = off_1E6EEB250[meshTopologyType];
  }

  v22[2] = v17;
  result = [v20 stringWithFormat:@"%@%@%@%@%@%@%@", v6, v7, v10, v13, v14, v15, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v22, 3), "componentsJoinedByString:", @" "];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_meshVertexStruct = 0;

  self->_meshPrimitiveStruct = 0;
  v3.receiver = self;
  v3.super_class = MTLBuiltInMeshArgument;
  [(MTLBindingInternal *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_builtInType == *(equal + 84) && self->_builtInDataType == *(equal + 85) && self->_meshVertexCount == *(equal + 86) && self->_meshPrimitiveCount == *(equal + 87) && self->_meshTopologyType == *(equal + 88))
    {
      v5 = [(MTLStructTypeInternal *)self->_meshVertexStruct isEqual:*(equal + 23)];
      if (v5)
      {
        v5 = [(MTLStructTypeInternal *)self->_meshPrimitiveStruct isEqual:*(equal + 24)];
        if (v5)
        {
          v7.receiver = self;
          v7.super_class = MTLBuiltInMeshArgument;
          LOBYTE(v5) = [(MTLBindingInternal *)&v7 isEqual:equal];
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end