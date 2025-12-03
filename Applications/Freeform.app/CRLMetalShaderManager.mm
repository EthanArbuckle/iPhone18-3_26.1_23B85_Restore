@interface CRLMetalShaderManager
- (CRLMetalShaderManager)initWithDevice:(id)device;
- (id)computeShaderWithName:(id)name initBlock:(id)block;
- (id)libraryForBundle:(id)bundle;
- (id)linearClampToEdgeSampler;
- (id)linearClampToZeroSampler;
- (id)nearestClampToEdgeSampler;
- (id)nearestClampToZeroSampler;
- (id)samplerWithName:(id)name initBlock:(id)block;
- (id)shaderWithName:(id)name initBlock:(id)block;
@end

@implementation CRLMetalShaderManager

- (CRLMetalShaderManager)initWithDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = CRLMetalShaderManager;
  v6 = [(CRLMetalShaderManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    libraries = v7->_libraries;
    v7->_libraries = v8;

    v10 = +[NSMutableDictionary dictionary];
    shaders = v7->_shaders;
    v7->_shaders = v10;

    v12 = +[NSMutableDictionary dictionary];
    computeShaders = v7->_computeShaders;
    v7->_computeShaders = v12;

    v14 = +[NSMutableDictionary dictionary];
    samplers = v7->_samplers;
    v7->_samplers = v14;

    *&v7->_librariesLock._os_unfair_lock_opaque = 0;
    *&v7->_computeShadersLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)libraryForBundle:(id)bundle
{
  bundleCopy = bundle;
  os_unfair_lock_lock(&self->_librariesLock);
  v5 = [(NSMapTable *)self->_libraries objectForKeyedSubscript:bundleCopy];
  if (!v5)
  {
    device = [(CRLMetalShaderManager *)self device];
    v13 = 0;
    v5 = [device newDefaultLibraryWithBundle:bundleCopy error:&v13];
    v7 = v13;

    if (!v5)
    {
      v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101317E68();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101317E90(v7, v8);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101317F48();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLMetalShaderManager libraryForBundle:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShaderManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:57 isFatal:0 description:"Failed to create library, error %@", v7];
    }

    [(NSMapTable *)self->_libraries setObject:v5 forKeyedSubscript:bundleCopy];
  }

  os_unfair_lock_unlock(&self->_librariesLock);

  return v5;
}

- (id)shaderWithName:(id)name initBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  os_unfair_lock_lock(&self->_shadersLock);
  v8 = [(NSMutableDictionary *)self->_shaders objectForKeyedSubscript:nameCopy];
  if (!v8)
  {
    v8 = blockCopy[2](blockCopy);
    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101317F70();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101317F84();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131801C();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLMetalShaderManager shaderWithName:initBlock:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShaderManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "namedShader"];
    }

    [(NSMutableDictionary *)self->_shaders setObject:v8 forKeyedSubscript:nameCopy];
  }

  os_unfair_lock_unlock(&self->_shadersLock);

  return v8;
}

- (id)computeShaderWithName:(id)name initBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  os_unfair_lock_lock(&self->_computeShadersLock);
  v8 = [(NSMutableDictionary *)self->_computeShaders objectForKeyedSubscript:nameCopy];
  if (!v8)
  {
    v8 = blockCopy[2](blockCopy);
    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101318044();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101318058();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013180F0();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLMetalShaderManager computeShaderWithName:initBlock:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShaderManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:83 isFatal:0 description:"invalid nil value for '%{public}s'", "namedShader"];
    }

    [(NSMutableDictionary *)self->_computeShaders setObject:v8 forKeyedSubscript:nameCopy];
  }

  os_unfair_lock_unlock(&self->_computeShadersLock);

  return v8;
}

- (id)samplerWithName:(id)name initBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  os_unfair_lock_lock(&self->_samplersLock);
  v8 = [(NSMutableDictionary *)self->_samplers objectForKeyedSubscript:nameCopy];
  if (!v8)
  {
    v8 = blockCopy[2](blockCopy);
    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101318118();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131812C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013181C4();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLMetalShaderManager samplerWithName:initBlock:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShaderManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:97 isFatal:0 description:"invalid nil value for '%{public}s'", "namedSampler"];
    }

    [(NSMutableDictionary *)self->_samplers setObject:v8 forKeyedSubscript:nameCopy];
  }

  os_unfair_lock_unlock(&self->_samplersLock);

  return v8;
}

- (id)linearClampToEdgeSampler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011B8F4;
  v6[3] = &unk_10183DF98;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = [(CRLMetalShaderManager *)self samplerWithName:@"Linear Clamp To Edge Sampler" initBlock:v3];

  return v4;
}

- (id)linearClampToZeroSampler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011BA68;
  v6[3] = &unk_10183DF98;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = [(CRLMetalShaderManager *)self samplerWithName:@"Linear Clamp To Zero Sampler" initBlock:v3];

  return v4;
}

- (id)nearestClampToEdgeSampler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011BBDC;
  v6[3] = &unk_10183DF98;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = [(CRLMetalShaderManager *)self samplerWithName:@"Nearest Clamp To Edge Sampler" initBlock:v3];

  return v4;
}

- (id)nearestClampToZeroSampler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011BD50;
  v6[3] = &unk_10183DF98;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = [(CRLMetalShaderManager *)self samplerWithName:@"Nearest Clamp To Zero Sampler" initBlock:v3];

  return v4;
}

@end