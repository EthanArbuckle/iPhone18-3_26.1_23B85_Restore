@interface NTKKaleidoscopeCoordinatorCache
+ (id)sharedCache;
- (id)provideAtlasBacking:(id)a3 uuid:(id)a4 uuidLuma:(id)a5 uuidChroma:(id)a6;
- (void)_computeKaleidoscopeFaceCount;
- (void)faceCollection:(id)a3 didAddFace:(id)a4 atIndex:(unint64_t)a5;
- (void)faceCollection:(id)a3 didRemoveFace:(id)a4 atIndex:(unint64_t)a5;
- (void)setLibraryCollection:(id)a3;
@end

@implementation NTKKaleidoscopeCoordinatorCache

+ (id)sharedCache
{
  if (qword_2CE40 != -1)
  {
    sub_150B4();
  }

  v3 = qword_2CE38;

  return v3;
}

- (void)setLibraryCollection:(id)a3
{
  v5 = a3;
  if (self->_libraryCollection != v5)
  {
    v11 = v5;
    [(NTKFaceCollection *)v5 addObserver:self];
    [(NTKFaceCollection *)self->_libraryCollection removeObserver:self];
    objc_storeStrong(&self->_libraryCollection, a3);
    [(NTKKaleidoscopeCoordinatorCache *)self _computeKaleidoscopeFaceCount];
    if (self->_libraryCollection)
    {
      v6 = objc_opt_new();
      pathsToTouch = self->_pathsToTouch;
      self->_pathsToTouch = v6;

      v8 = objc_opt_new();
    }

    else
    {
      v9 = self->_pathsToTouch;
      self->_pathsToTouch = 0;

      v8 = 0;
    }

    pathsToWrite = self->_pathsToWrite;
    self->_pathsToWrite = v8;

    v5 = v11;
  }
}

- (id)provideAtlasBacking:(id)a3 uuid:(id)a4 uuidLuma:(id)a5 uuidChroma:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = [CLKUIAtlasBacking atlasBackingWithImage:v9 uuid:v10 mipmap:1];
  v15 = v11;
  v16 = v12;
  if (!v14)
  {
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      v20 = "[kaleidoscope] input backing is nil";
      v21 = &v26;
LABEL_18:
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  [v14 structure];
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[kaleidoscope] input backing format is not srgba8888", buf, 2u);
  }

  if ((v28 & 0x100000000000000) == 0)
  {
    v18 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[kaleidoscope] input backing mipmaps expected", buf, 2u);
    }
  }

  if (HIDWORD(v26) == v27)
  {
    if ((HIDWORD(v26) & (HIDWORD(v26) - 1)) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "[kaleidoscope] input backing is not POT";
      v21 = buf;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v22 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[kaleidoscope] input backing is not square", buf, 2u);
  }

  if ((HIDWORD(v26) & (HIDWORD(v26) - 1)) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:

  v23 = 0;
  objc_autoreleasePoolPop(v13);

  return 0;
}

- (void)faceCollection:(id)a3 didAddFace:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(NTKKaleidoscopeCoordinatorCache *)self _computeKaleidoscopeFaceCount];
  }
}

- (void)faceCollection:(id)a3 didRemoveFace:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(NTKKaleidoscopeCoordinatorCache *)self _computeKaleidoscopeFaceCount];
  }
}

- (void)_computeKaleidoscopeFaceCount
{
  v3 = [(NTKFaceCollection *)self->_libraryCollection numberOfFaces];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = [(NTKFaceCollection *)self->_libraryCollection faceAtIndex:i];
      objc_opt_class();
      v5 += objc_opt_isKindOfClass() & 1;
    }
  }

  else
  {
    v5 = 0;
  }

  self->_kaleidoscopeFaceCount = v5;
}

@end