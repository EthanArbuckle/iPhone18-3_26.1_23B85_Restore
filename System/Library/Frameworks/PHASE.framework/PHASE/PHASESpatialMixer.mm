@interface PHASESpatialMixer
- (PHASESpatialMixer)init;
- (PHASESpatialMixer)initWithIdentifier:(id)identifier spatialModelerSends:(id)sends source:(id)source listener:(id)listener sourceDirectivityModel:(Handle64)model listenerDirectivityModel:(Handle64)directivityModel distanceModel:(Handle64)distanceModel;
- (id).cxx_construct;
@end

@implementation PHASESpatialMixer

- (PHASESpatialMixer)init
{
  [(PHASESpatialMixer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESpatialMixer)initWithIdentifier:(id)identifier spatialModelerSends:(id)sends source:(id)source listener:(id)listener sourceDirectivityModel:(Handle64)model listenerDirectivityModel:(Handle64)directivityModel distanceModel:(Handle64)distanceModel
{
  identifierCopy = identifier;
  sendsCopy = sends;
  sourceCopy = source;
  listenerCopy = listener;
  v24.receiver = self;
  v24.super_class = PHASESpatialMixer;
  v19 = [(PHASEMixer *)&v24 initWithIdentifier:identifierCopy];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA60] arrayWithArray:sendsCopy];
    spatialModelerSends = v19->_spatialModelerSends;
    v19->_spatialModelerSends = v20;

    objc_storeStrong(&v19->_source, source);
    objc_storeStrong(&v19->_listener, listener);
    v19->_sourceDirectivityModel = model;
    v19->_listenerDirectivityModel = directivityModel;
    v19->_distanceModel = distanceModel;
    v22 = v19;
  }

  return v19;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end