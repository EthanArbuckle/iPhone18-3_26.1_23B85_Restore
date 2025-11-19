@interface MTLVertexAttributeInternal
- (MTLVertexAttributeInternal)initWithName:(id)a3 attributeIndex:(unint64_t)a4 attributeType:(unint64_t)a5 flags:(MTLAttributeFlags)a6;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLVertexAttributeInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLVertexAttributeInternal;
  [(MTLVertexAttributeInternal *)&v3 dealloc];
}

- (MTLVertexAttributeInternal)initWithName:(id)a3 attributeIndex:(unint64_t)a4 attributeType:(unint64_t)a5 flags:(MTLAttributeFlags)a6
{
  var1 = a6.var0.var1;
  v13.receiver = self;
  v13.super_class = MTLVertexAttributeInternal;
  v10 = [(MTLVertexAttributeInternal *)&v13 init];
  v10->_name = a3;
  v11 = a3;
  v10->_attributeIndex = a4;
  v10->_attributeType = a5;
  v10->_flags = var1;
  return v10;
}

- (id)formattedDescription:(unint64_t)a3
{
  v11[18] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLVertexAttributeInternal;
  v6 = [(MTLVertexAttributeInternal *)&v10 description];
  v11[0] = v4;
  v11[1] = @"name =";
  name = self->_name;
  if (!name)
  {
    name = @"<none>";
  }

  v11[2] = name;
  v11[3] = v4;
  v11[4] = @"attributeIndex =";
  v11[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_attributeIndex];
  v11[6] = v4;
  v11[7] = @"attributeType =";
  v11[8] = MTLDataTypeString(self->_attributeType);
  v11[9] = v4;
  v11[10] = @"active =";
  v11[11] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_flags & 1];
  v11[12] = v4;
  v11[13] = @"isPatchData =";
  v11[14] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:(self->_flags >> 1) & 1];
  v11[15] = v4;
  v11[16] = @"isPatchControlPointData =";
  v11[17] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:(self->_flags >> 2) & 1];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 18), "componentsJoinedByString:", @" "];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end