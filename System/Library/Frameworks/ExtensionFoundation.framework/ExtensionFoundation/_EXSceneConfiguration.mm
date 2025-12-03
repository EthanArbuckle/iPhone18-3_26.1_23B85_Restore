@interface _EXSceneConfiguration
- (Class)sceneDelegateClass;
- (_EXSceneConfiguration)initWithParameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initializationParametersOfClass:(Class)class error:(id *)error;
@end

@implementation _EXSceneConfiguration

- (_EXSceneConfiguration)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = _EXSceneConfiguration;
  v6 = [(_EXSceneConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parameters, parameters);
  }

  return v7;
}

- (Class)sceneDelegateClass
{
  sceneDelegateClass = self->_sceneDelegateClass;
  if (!sceneDelegateClass)
  {
    sceneDelegateClass = self->_sceneDelegateClassName;
    if (sceneDelegateClass)
    {
      v4 = NSClassFromString(sceneDelegateClass);
      v5 = self->_sceneDelegateClass;
      self->_sceneDelegateClass = v4;

      sceneDelegateClass = self->_sceneDelegateClass;
    }
  }

  return sceneDelegateClass;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_EXSceneConfiguration alloc] initWithParameters:self->_parameters];
  [(_EXSceneConfiguration *)v4 setSceneDelegateClass:[(_EXSceneConfiguration *)self sceneDelegateClass]];
  sceneDelegateClassName = [(_EXSceneConfiguration *)self sceneDelegateClassName];
  v6 = [sceneDelegateClassName copy];
  [(_EXSceneConfiguration *)v4 setSceneDelegateClassName:v6];

  [(_EXSceneConfiguration *)v4 setSceneClass:[(_EXSceneConfiguration *)self sceneClass]];
  return v4;
}

- (id)initializationParametersOfClass:(Class)class error:(id *)error
{
  initializationParametersPromise = [(_EXSceneSessionParameters *)self->_parameters initializationParametersPromise];
  v7 = initializationParametersPromise;
  if (class && initializationParametersPromise)
  {
    v8 = [initializationParametersPromise resolveObjectOfClass:class error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:8 userInfo:MEMORY[0x1E695E0F8]];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end