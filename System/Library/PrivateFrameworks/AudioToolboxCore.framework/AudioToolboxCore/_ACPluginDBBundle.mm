@interface _ACPluginDBBundle
- (_ACPluginDBBundle)initWithCoder:(id)a3;
- (_ACPluginDBBundle)initWithPath:(id)a3 infoPlistModDate:(double)a4 rsrcModDate:(double)a5;
- (__n128)scanWithPriority:loadable:infoPlistPath:;
- (id).cxx_construct;
- (uint64_t)scanWithPriority:loadable:infoPlistPath:;
- (void)encodeWithCoder:(id)a3;
- (void)scanWithPriority:(int)a3 loadable:(BOOL)a4 infoPlistPath:(id)a5;
@end

@implementation _ACPluginDBBundle

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 56) = 1;
  return self;
}

- (void)scanWithPriority:(int)a3 loadable:(BOOL)a4 infoPlistPath:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = self;
  v28 = a3;
  v27 = a4;
  v6 = a5;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](&self->mBundleComponentVector);
  self->mBundleComponentVector.mSorted = 1;
  v7 = MEMORY[0x1E695DF20];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  v26 = 0;
  v9 = [v7 dictionaryWithContentsOfURL:v8 error:&v26];
  v10 = v26;

  if (v10)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v11 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315906;
      *&cf[4] = "AudioComponentPluginScanner.mm";
      v32 = 1024;
      v33 = 167;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't read %@ error: %@", cf, 0x26u);
    }
  }

  else
  {
    v12 = [v9 objectForKeyedSubscript:@"AudioComponents"];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DEC8] array];
      applesauce::CF::ArrayRef::from_ns(cf, v13);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        applesauce::CF::ArrayRef::from_ns(&v25, v12);
        v14 = *cf;
        *cf = v25;
        v25 = v14;
        if (v14)
        {
          CFRelease(v14);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v12, 0}];
          applesauce::CF::ArrayRef::from_ns(&v25, v16);
          v17 = *cf;
          *cf = v25;
          v25 = v17;
          if (v17)
          {
            CFRelease(v17);
          }
        }
      }

      v18 = self->mFullPath;
      v19 = v18;
      if (v18)
      {
        CFRetain(v18);
        v25 = v19;
        v20 = CFGetTypeID(v19);
        if (v20 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v25 = 0;
      }

      [MEMORY[0x1E696AAE8] bundleWithPath:self->mFullPath];
      v22 = [objc_claimAutoreleasedReturnValue() executableArchitectures];
      applesauce::CF::ArrayRef::from_ns(&v24, v22);

      v30 = 0;
      operator new();
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)scanWithPriority:loadable:infoPlistPath:
{
  if (*(a2 + 40) != 0)
  {
    if (**(result + 8) == 1)
    {
      v2 = *(result + 24);
      v3 = **(result + 16);
      v4 = *(result + 32);
      APComponent_FromBundle_Loadable::create_shared();
    }

    v5 = *(result + 24);
    v6 = **(result + 16);
    v7 = *(result + 32);
    operator new();
  }

  return result;
}

- (__n128)scanWithPriority:loadable:infoPlistPath:
{
  *a2 = &unk_1F033C8F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->mFullPath forKey:@"path"];
  [v5 encodeDouble:@"infoPlistModDate" forKey:self->mInfoPlistModDate];
  v4 = [[_ACComponentVector alloc] initWithVector:&self->mBundleComponentVector];
  [v5 encodeObject:v4 forKey:@"components"];
}

- (_ACPluginDBBundle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  mFullPath = self->mFullPath;
  self->mFullPath = v5;

  [v4 decodeDoubleForKey:@"infoPlistModDate"];
  self->mInfoPlistModDate = v7;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"components"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (&self->mBundleComponentVector != (v8 + 8))
    {
      std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&self->mBundleComponentVector, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 4);
    }

    self->mBundleComponentVector.mSorted = *(v8 + 32);
  }

  return self;
}

- (_ACPluginDBBundle)initWithPath:(id)a3 infoPlistModDate:(double)a4 rsrcModDate:(double)a5
{
  objc_storeStrong(&self->mFullPath, a3);
  self->mInfoPlistModDate = a4;
  self->mRsrcModDate = a5;
  return self;
}

@end