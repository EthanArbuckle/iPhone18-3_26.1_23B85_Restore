@interface SCNMetalLibraryProvider
- (id)iniWithBlock:(id)a3;
- (id)iniWithLibrary:(id)a3;
- (id)iniWithLibraryURL:(id)a3;
- (id)libraryForDevice:(id)a3;
- (unint64_t)_libraryHash;
- (void)_libraryHash;
- (void)dealloc;
@end

@implementation SCNMetalLibraryProvider

- (void)dealloc
{
  _Block_release(self->_block);
  v3.receiver = self;
  v3.super_class = SCNMetalLibraryProvider;
  [(SCNMetalLibraryProvider *)&v3 dealloc];
}

- (id)iniWithLibrary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNMetalLibraryProvider;
  v4 = [(SCNMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_library = a3;
  }

  return v4;
}

- (id)iniWithLibraryURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNMetalLibraryProvider;
  v4 = [(SCNMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_libraryURL = a3;
  }

  return v4;
}

- (id)iniWithBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNMetalLibraryProvider;
  v4 = [(SCNMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_block = _Block_copy(a3);
  }

  return v4;
}

- (id)libraryForDevice:(id)a3
{
  if ([(MTLLibrary *)self->_library device]== a3)
  {
    return self->_library;
  }

  block = self->_block;
  if (!block || (result = block[2](block, a3)) == 0)
  {
    libraryURL = self->_libraryURL;
    if (libraryURL)
    {
      v11 = 0;
      v8 = [a3 newLibraryWithURL:libraryURL error:&v11];
      if (v8)
      {
        return v8;
      }

      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SCNMetalLibraryProvider libraryForDevice:];
      }
    }

    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNMetalLibraryProvider libraryForDevice:];
    }

    return 0;
  }

  return result;
}

- (unint64_t)_libraryHash
{
  library = self->_library;
  if (library || (library = self->_block) != 0 || (library = self->_libraryURL) != 0)
  {

    return CFHash(library);
  }

  else
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNMetalLibraryProvider _libraryHash];
    }

    return 0;
  }
}

- (void)_libraryHash
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end