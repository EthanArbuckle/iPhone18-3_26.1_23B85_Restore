@interface _EXSceneSessionParameters
- (_EXSceneSessionParameters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EXSceneSessionParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_sceneIdentifier forKey:@"sceneIdentifier"];
  initializationParametersPromise = self->_initializationParametersPromise;
  if (initializationParametersPromise)
  {
    [coderCopy encodeObject:initializationParametersPromise forKey:@"initializationPromise"];
  }

  [coderCopy encodeInteger:self->_sizeBridgingOptions forKey:@"sizeBridgingOptions"];
}

- (_EXSceneSessionParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _EXSceneSessionParameters;
  v5 = [(_EXSceneSessionParameters *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initializationPromise"];
    initializationParametersPromise = v5->_initializationParametersPromise;
    v5->_initializationParametersPromise = v8;

    v5->_sizeBridgingOptions = [coderCopy decodeIntegerForKey:@"sizeBridgingOptions"];
  }

  return v5;
}

@end