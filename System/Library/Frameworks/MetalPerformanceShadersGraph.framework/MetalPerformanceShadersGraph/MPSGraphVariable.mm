@interface MPSGraphVariable
+ (id)newVariableWithData:(id)data dataType:(unsigned int)type shape:(id)shape;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initVariableWithData:(id)data dataType:(unsigned int)type shape:(id)shape;
- (id)initVariableWithData:(id)data value:(Value)value;
- (id)initVariableWithMPSNDArray:(id)array value:(Value)value;
- (id)mpsNDArrayWithDevice:(id)device;
@end

@implementation MPSGraphVariable

- (id)initVariableWithData:(id)data dataType:(unsigned int)type shape:(id)shape
{
  dataCopy = data;
  shapeCopy = shape;
  v16.receiver = self;
  v16.super_class = MPSGraphVariable;
  v10 = [(MPSGraphVariable *)&v16 init];
  objc_storeStrong(&v10->_shape, shape);
  v10->_value.impl = 0;
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  mpsndarrays = v10->_mpsndarrays;
  v10->_mpsndarrays = v11;

  v10->_dataType = type;
  v13 = [dataCopy copyWithZone:0];
  data = v10->_data;
  v10->_data = v13;

  return v10;
}

+ (id)newVariableWithData:(id)data dataType:(unsigned int)type shape:(id)shape
{
  v6 = *&type;
  dataCopy = data;
  shapeCopy = shape;
  v9 = [[MPSGraphVariable alloc] initVariableWithData:dataCopy dataType:v6 shape:shapeCopy];

  return v9;
}

- (id)initVariableWithData:(id)data value:(Value)value
{
  dataCopy = data;
  MPSDataType = getMPSDataType((*(value.impl + 1) & 0xFFFFFFFFFFFFFFF8));
  v8 = getMPSShapeFromMLIR(value.impl);
  v9 = [(MPSGraphVariable *)self initVariableWithData:dataCopy dataType:MPSDataType shape:v8];

  v9[3].impl = value.impl;
  return v9;
}

- (id)initVariableWithMPSNDArray:(id)array value:(Value)value
{
  [(NSMutableArray *)self->_mpsndarrays addObject:array];
  self->_value = value;
  return self;
}

- (id)mpsNDArrayWithDevice:(id)device
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
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
        device = [v9 device];
        registryID = [device registryID];
        LOBYTE(registryID) = registryID == [deviceCopy registryID];

        if (registryID)
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

  v16 = [objc_alloc(MEMORY[0x1E6974488]) initWithDevice:deviceCopy descriptor:v5];
  [v16 writeBytes:-[NSData bytes](self->_data strideBytes:{"bytes"), 0}];
  [(NSMutableArray *)self->_mpsndarrays addObject:v16];
LABEL_12:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v4 = selfCopy;
  if (selfCopy)
  {
    v5 = selfCopy;
  }

  return v4;
}

@end