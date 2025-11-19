@interface MetalPackage
- (MetalPackage)initWithPackageURL:(id)a3 temporaryPackageURL:(id)a4;
- (id).cxx_construct;
- (id)getJsonData;
@end

@implementation MetalPackage

- (MetalPackage)initWithPackageURL:(id)a3 temporaryPackageURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = MetalPackage;
  v9 = [(MetalPackage *)&v22 init];
  objc_storeStrong(&v9->_packageURL, a3);
  objc_storeStrong(&v9->_temporaryPackageURL, a4);
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  fileManager = v9->_fileManager;
  v9->_fileManager = v10;

  v12 = [v8 path];
  v13 = [v12 stringByAppendingString:@".lock"];

  v14 = [v13 cStringUsingEncoding:4];
  v15 = strlen(v14);
  if (v15 < 0x7FFFFFFFFFFFFFF8)
  {
    v16 = v15;
    if (v15 < 0x17)
    {
      v21 = v15;
      if (v15)
      {
        memmove(&__dst, v14, v15);
      }

      *(&__dst + v16) = 0;
      ptr = v9->_temporaryPackageFileLock.__ptr_;
      v9->_temporaryPackageFileLock.__ptr_ = 0;
      if (ptr)
      {
        llvm::LockFileManager::~LockFileManager(ptr);
        MEMORY[0x1E12E5B90]();
      }

      v18 = v9->_writingLockGuard.__ptr_;
      v9->_writingLockGuard.__ptr_ = 0;
      if (v18)
      {
        std::default_delete<InProcessPackageWritingGuard::LockGuard>::operator()[abi:ne200100](v18);
      }

      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

- (id)getJsonData
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:&unk_1F5B75878 forKey:@"major"];
  [v4 setObject:&unk_1F5B75890 forKey:@"minor"];
  [v4 setObject:&unk_1F5B75890 forKey:@"patch"];
  [v5 setObject:@"library.mpsgraphpackage" forKey:@"mpspkgname"];
  [v3 setObject:v4 forKey:@"version"];
  [v3 setObject:@"MLLibrary" forKey:@"pkgtype"];
  [v3 setObject:v5 forKey:@"content"];
  [v2 setObject:v3 forKey:@"mtlpackage"];
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:1 error:0];

  return v7;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end