@interface _EXSceneSessionParameters
- (_EXSceneSessionParameters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EXSceneSessionParameters

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_sceneIdentifier forKey:@"sceneIdentifier"];
  initializationParametersPromise = self->_initializationParametersPromise;
  if (initializationParametersPromise)
  {
    [v5 encodeObject:initializationParametersPromise forKey:@"initializationPromise"];
  }

  [v5 encodeInteger:self->_sizeBridgingOptions forKey:@"sizeBridgingOptions"];
}

- (_EXSceneSessionParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _EXSceneSessionParameters;
  v5 = [(_EXSceneSessionParameters *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initializationPromise"];
    initializationParametersPromise = v5->_initializationParametersPromise;
    v5->_initializationParametersPromise = v8;

    v5->_sizeBridgingOptions = [v4 decodeIntegerForKey:@"sizeBridgingOptions"];
  }

  return v5;
}

@end