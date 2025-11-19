@interface MPSGraphVariable
+ (id)newVariableWithData:(id)a3 dataType:(unsigned int)a4 shape:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initVariableWithData:(id)a3 dataType:(unsigned int)a4 shape:(id)a5;
- (id)initVariableWithData:(id)a3 value:(Value)a4;
- (id)initVariableWithMPSNDArray:(id)a3 value:(Value)a4;
- (id)mpsNDArrayWithDevice:(id)a3;
@end

@implementation MPSGraphVariable

- (id)initVariableWithData:(id)a3 dataType:(unsigned int)a4 shape:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = MPSGraphVariable;
  v10 = [(MPSGraphVariable *)&v16 init];
  objc_storeStrong(&v10->_shape, a5);
  v10->_value.impl = 0;
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  mpsndarrays = v10->_mpsndarrays;
  v10->_mpsndarrays = v11;

  v10->_dataType = a4;
  v13 = [v8 copyWithZone:0];
  data = v10->_data;
  v10->_data = v13;

  return v10;
}

+ (id)newVariableWithData:(id)a3 dataType:(unsigned int)a4 shape:(id)a5
{
  v6 = *&a4;
  v7 = a3;
  v8 = a5;
  v9 = [[MPSGraphVariable alloc] initVariableWithData:v7 dataType:v6 shape:v8];

  return v9;
}

- (id)initVariableWithData:(id)a3 value:(Value)a4
{
  v6 = a3;
  MPSDataType = getMPSDataType((*(a4.impl + 1) & 0xFFFFFFFFFFFFFFF8));
  v8 = getMPSShapeFromMLIR(a4.impl);
  v9 = [(MPSGraphVariable *)self initVariableWithData:v6 dataType:MPSDataType shape:v8];

  v9[3].impl = a4.impl;
  return v9;
}

- (id)initVariableWithMPSNDArray:(id)a3 value:(Value)a4
{
  [(NSMutableArray *)self->_mpsndarrays addObject:a3];
  self->_value = a4;
  return self;
}

- (id)mpsNDArrayWithDevice:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_mpsndarrays;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 device];
        v11 = [v10 registryID];
        LOBYTE(v11) = v11 == [v4 registryID];

        if (v11)
        {
          v16 = v9;
          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableArray *)self->_mpsndarrays count];
  if ([(NSMutableArray *)self->_mpsndarrays count]&& MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = MEMORY[0x1E6974490];
  MPSDataType = getMPSDataType((*(self->_value.impl + 1) & 0xFFFFFFFFFFFFFFF8));
  v14 = getMPSShapeFromMLIR(self->_value.impl);
  v15 = adaptForMPS(v14);
  v5 = [v12 descriptorWithDataType:MPSDataType shape:v15];

  v16 = [objc_alloc(MEMORY[0x1E6974488]) initWithDevice:v4 descriptor:v5];
  [v16 writeBytes:-[NSData bytes](self->_data strideBytes:{"bytes"), 0}];
  [(NSMutableArray *)self->_mpsndarrays addObject:v16];
LABEL_12:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end