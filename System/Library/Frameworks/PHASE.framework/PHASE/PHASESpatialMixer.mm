@interface PHASESpatialMixer
- (PHASESpatialMixer)init;
- (PHASESpatialMixer)initWithIdentifier:(id)a3 spatialModelerSends:(id)a4 source:(id)a5 listener:(id)a6 sourceDirectivityModel:(Handle64)a7 listenerDirectivityModel:(Handle64)a8 distanceModel:(Handle64)a9;
- (id).cxx_construct;
@end

@implementation PHASESpatialMixer

- (PHASESpatialMixer)init
{
  [(PHASESpatialMixer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESpatialMixer)initWithIdentifier:(id)a3 spatialModelerSends:(id)a4 source:(id)a5 listener:(id)a6 sourceDirectivityModel:(Handle64)a7 listenerDirectivityModel:(Handle64)a8 distanceModel:(Handle64)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v24.receiver = self;
  v24.super_class = PHASESpatialMixer;
  v19 = [(PHASEMixer *)&v24 initWithIdentifier:v15];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    spatialModelerSends = v19->_spatialModelerSends;
    v19->_spatialModelerSends = v20;

    objc_storeStrong(&v19->_source, a5);
    objc_storeStrong(&v19->_listener, a6);
    v19->_sourceDirectivityModel = a7;
    v19->_listenerDirectivityModel = a8;
    v19->_distanceModel = a9;
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