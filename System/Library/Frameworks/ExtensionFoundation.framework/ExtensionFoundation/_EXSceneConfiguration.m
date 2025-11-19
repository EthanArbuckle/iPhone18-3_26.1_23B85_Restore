@interface _EXSceneConfiguration
- (Class)sceneDelegateClass;
- (_EXSceneConfiguration)initWithParameters:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initializationParametersOfClass:(Class)a3 error:(id *)a4;
@end

@implementation _EXSceneConfiguration

- (_EXSceneConfiguration)initWithParameters:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _EXSceneConfiguration;
  v6 = [(_EXSceneConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parameters, a3);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_EXSceneConfiguration alloc] initWithParameters:self->_parameters];
  [(_EXSceneConfiguration *)v4 setSceneDelegateClass:[(_EXSceneConfiguration *)self sceneDelegateClass]];
  v5 = [(_EXSceneConfiguration *)self sceneDelegateClassName];
  v6 = [v5 copy];
  [(_EXSceneConfiguration *)v4 setSceneDelegateClassName:v6];

  [(_EXSceneConfiguration *)v4 setSceneClass:[(_EXSceneConfiguration *)self sceneClass]];
  return v4;
}

- (id)initializationParametersOfClass:(Class)a3 error:(id *)a4
{
  v6 = [(_EXSceneSessionParameters *)self->_parameters initializationParametersPromise];
  v7 = v6;
  if (a3 && v6)
  {
    v8 = [v6 resolveObjectOfClass:a3 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:8 userInfo:MEMORY[0x1E695E0F8]];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end