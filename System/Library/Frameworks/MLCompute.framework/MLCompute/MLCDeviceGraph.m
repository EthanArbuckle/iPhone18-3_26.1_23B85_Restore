@interface MLCDeviceGraph
+ (id)deviceGraphWithLayers:(id)a3 device:(id)a4;
- (NSMutableSet)liveInputs;
- (NSMutableSet)liveOutputs;
- (id)initDeviceGraphWithLayers:(id)a3 device:(id)a4;
@end

@implementation MLCDeviceGraph

+ (id)deviceGraphWithLayers:(id)a3 device:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initDeviceGraphWithLayers:v7 device:v6];

  return v8;
}

- (id)initDeviceGraphWithLayers:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MLCDeviceGraph;
  v8 = [(MLCDeviceGraph *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a4);
    v10 = [v6 mutableCopy];
    graphLayerList = v9->_graphLayerList;
    v9->_graphLayerList = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    objc_storeWeak(&v9->_liveOutputs, v12);

    v13 = [MEMORY[0x277CBEB58] set];
    objc_storeWeak(&v9->_liveInputs, v13);
  }

  return v9;
}

- (NSMutableSet)liveOutputs
{
  WeakRetained = objc_loadWeakRetained(&self->_liveOutputs);

  return WeakRetained;
}

- (NSMutableSet)liveInputs
{
  WeakRetained = objc_loadWeakRetained(&self->_liveInputs);

  return WeakRetained;
}

@end