@interface PHASEGeneratorNodeDefinition
- (PHASEGeneratorNodeDefinition)init;
- (PHASEGroup)group;
- (id)initInternal:(id)internal;
- (void)setCalibrationMode:(PHASECalibrationMode)calibrationMode level:(double)level;
- (void)setRate:(double)rate;
@end

@implementation PHASEGeneratorNodeDefinition

- (PHASEGeneratorNodeDefinition)init
{
  [(PHASEGeneratorNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal:(id)internal
{
  internalCopy = internal;
  if (internalCopy)
  {
    v12.receiver = self;
    v12.super_class = PHASEGeneratorNodeDefinition;
    initInternal = [(PHASEDefinition *)&v12 initInternal];
    v7 = initInternal;
    if (initInternal)
    {
      initInternal[2] = 0;
      initInternal[3] = 0x3FF0000000000000;
      initInternal[4] = 0x3FF0000000000000;
      objc_storeWeak(initInternal + 5, 0);
      v8 = v7[6];
      v7[6] = 0;

      v9 = v7[7];
      v7[7] = 0;

      objc_storeStrong(v7 + 8, internal);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot create a generator with a nil mixerDefinition"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setCalibrationMode:(PHASECalibrationMode)calibrationMode level:(double)level
{
  self->_calibrationMode = calibrationMode;
  if (calibrationMode == PHASECalibrationModeAbsoluteSpl)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v8 = NSStringFromSelector(a2);
    v9 = PHASEGetPropertyBounded<double>(v12, v8, level, 0.0, 120.0);
  }

  else if (calibrationMode == PHASECalibrationModeRelativeSpl)
  {
    v10 = objc_opt_class();
    v12 = NSStringFromClass(v10);
    v8 = NSStringFromSelector(a2);
    v9 = PHASEGetPropertyBounded<double>(v12, v8, level, -200.0, 12.0);
  }

  else
  {
    if (calibrationMode)
    {
      return;
    }

    v7 = objc_opt_class();
    v12 = NSStringFromClass(v7);
    v8 = NSStringFromSelector(a2);
    v9 = PHASEGetPropertyBounded<double>(v12, v8, level, 0.0, 1.0);
  }

  self->_level = v9;
}

- (void)setRate:(double)rate
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_rate = PHASEGetPropertyBounded<double>(v8, v7, rate, 0.25, 4.0);
}

- (PHASEGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

@end