@interface PHASESpatialMixerDefinition
- (PHASESpatialMixerDefinition)init;
- (PHASESpatialMixerDefinition)initWithSpatialPipeline:(PHASESpatialPipeline *)spatialPipeline;
- (PHASESpatialMixerDefinition)initWithSpatialPipeline:(PHASESpatialPipeline *)spatialPipeline identifier:(NSString *)identifier;
- (void)setListenerDopplerFactor:(double)factor;
- (void)setSourceDopplerFactor:(double)factor;
@end

@implementation PHASESpatialMixerDefinition

- (PHASESpatialMixerDefinition)init
{
  [(PHASESpatialMixerDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESpatialMixerDefinition)initWithSpatialPipeline:(PHASESpatialPipeline *)spatialPipeline
{
  v5 = spatialPipeline;
  v13.receiver = self;
  v13.super_class = PHASESpatialMixerDefinition;
  initInternal = [(PHASEMixerDefinition *)&v13 initInternal];
  v7 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 4, spatialPipeline);
    v8 = v7[5];
    v7[5] = 0;

    v9 = v7[6];
    v7[6] = 0;

    v10 = v7[7];
    v7[7] = 0;

    v7[8] = 0x3FF0000000000000;
    v7[9] = 0x3FF0000000000000;
    v11 = v7;
  }

  return v7;
}

- (PHASESpatialMixerDefinition)initWithSpatialPipeline:(PHASESpatialPipeline *)spatialPipeline identifier:(NSString *)identifier
{
  v6 = spatialPipeline;
  v7 = identifier;
  v8 = [(PHASESpatialMixerDefinition *)self initWithSpatialPipeline:v6];
  v9 = v8;
  if (v8)
  {
    [(PHASEDefinition *)v8 setIdentifier:v7];
    v10 = v9;
  }

  return v9;
}

- (void)setListenerDopplerFactor:(double)factor
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_listenerDopplerFactor = PHASEGetPropertyBounded<double>(v8, v7, factor, 0.0, 1.79769313e308);
}

- (void)setSourceDopplerFactor:(double)factor
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_sourceDopplerFactor = PHASEGetPropertyBounded<double>(v8, v7, factor, 0.0, 1.79769313e308);
}

@end