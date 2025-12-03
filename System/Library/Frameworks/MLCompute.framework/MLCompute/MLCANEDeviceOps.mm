@interface MLCANEDeviceOps
- (MLCANEDeviceOps)initWithType:(int)type params:(id)params;
@end

@implementation MLCANEDeviceOps

- (MLCANEDeviceOps)initWithType:(int)type params:(id)params
{
  paramsCopy = params;
  v18.receiver = self;
  v18.super_class = MLCANEDeviceOps;
  v8 = [(MLCDeviceOps *)&v18 initWithSource:0 secondarySource:0 result:0 batchSize:1];
  v9 = v8;
  if (v8)
  {
    v8->_deviceOpType = type;
    units = v8->_units;
    v8->_units = 0;

    objc_storeStrong(&v9->_params, params);
    procedureName = v9->_procedureName;
    v9->_procedureName = 0;

    v9->_procedureIndex = -1;
    model = v9->_model;
    v9->_model = 0;

    request = v9->_request;
    v9->_request = 0;

    v14 = [MEMORY[0x277CBEBF8] mutableCopy];
    constantTensors = v9->_constantTensors;
    v9->_constantTensors = v14;

    plistBuilder = v9->_plistBuilder;
    v9->_plistBuilder = 0;
  }

  return v9;
}

@end