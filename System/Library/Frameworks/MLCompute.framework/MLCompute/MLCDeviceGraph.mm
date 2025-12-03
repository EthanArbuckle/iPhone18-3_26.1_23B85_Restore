@interface MLCDeviceGraph
+ (id)deviceGraphWithLayers:(id)layers device:(id)device;
- (NSMutableSet)liveInputs;
- (NSMutableSet)liveOutputs;
- (id)initDeviceGraphWithLayers:(id)layers device:(id)device;
@end

@implementation MLCDeviceGraph

+ (id)deviceGraphWithLayers:(id)layers device:(id)device
{
  deviceCopy = device;
  layersCopy = layers;
  v8 = [[self alloc] initDeviceGraphWithLayers:layersCopy device:deviceCopy];

  return v8;
}

- (id)initDeviceGraphWithLayers:(id)layers device:(id)device
{
  layersCopy = layers;
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = MLCDeviceGraph;
  v8 = [(MLCDeviceGraph *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v10 = [layersCopy mutableCopy];
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