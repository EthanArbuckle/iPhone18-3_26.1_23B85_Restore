@interface AudioComponentPrefRegConnection
- (AudioComponentPrefRegConnection)initWithRegistrar:(void *)a3 connection:(id)a4;
- (BOOL)isGenericAppIcon:(id)a3 size:(CGSize)a4 scale:(double)a5;
- (id).cxx_construct;
- (void)clearConfigurationInfoCache:(id)a3;
- (void)copyConfigurationInfoFromCache:(id)a3 reply:(id)a4;
- (void)getComponentUserTags:(id)a3 reply:(id)a4;
- (void)getExtensionComponentList:(id)a3 linkedSDKRequiresEntitlement:(BOOL)a4 reply:(id)a5;
- (void)getExtensionIcon:(id)a3 reply:(id)a4;
- (void)getInterAppIcon:(id)a3 reply:(id)a4;
- (void)setComponentUserTags:(id)a3 tags:(id)a4;
- (void)setExtensionComponentList:(id)a3 linkedSDKRequiresEntitlement:(BOOL)a4 components:(id)a5 reply:(id)a6;
- (void)writeConfigurationInfoToCache:(id)a3 configurationInfo:(id)a4;
@end

@implementation AudioComponentPrefRegConnection

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = -1;
  *(self + 28) = 0;
  return self;
}

- (void)clearConfigurationInfoCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.audio.AudioComponentCache"];
  if (v3 && [(__CFString *)v3 length])
  {
    CFPreferencesSetAppValue(v3, 0, v4);
  }

  else
  {
    v5 = CFPreferencesCopyKeyList(v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          CFPreferencesSetAppValue(*(*(&v11 + 1) + 8 * v9++), 0, v4);
        }

        while (v7 != v9);
        v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  CFPreferencesAppSynchronize(v4);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)writeConfigurationInfoToCache:(id)a3 configurationInfo:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.audio.AudioComponentCache"];
  [v6 setValue:v5 forKey:v7];
}

- (void)copyConfigurationInfoFromCache:(id)a3 reply:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.audio.AudioComponentCache"];
  v7 = [v6 dictionaryForKey:v8];
  v5[2](v5, v7);
}

- (void)getInterAppIcon:(id)a3 reply:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (v9)
  {
    [-[objc_class mainScreen](NSClassFromString(&cfstr_Uiscreen.isa) "mainScreen")];
    v7 = [NSClassFromString(&cfstr_Uiimage.isa) _applicationIconImageForBundleIdentifier:v9 format:2 scale:v6];
    v8 = localUIImagePNGRepresentation(v7);
    v5[2](v5, v8);
  }

  v5[2](v5, 0);
}

- (void)getExtensionIcon:(id)a3 reply:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  ISImageDescriptorClass = getISImageDescriptorClass();
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v9 = getkISImageDescriptorHomeScreenSymbolLoc(void)::ptr;
  v39 = getkISImageDescriptorHomeScreenSymbolLoc(void)::ptr;
  if (!getkISImageDescriptorHomeScreenSymbolLoc(void)::ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = ___ZL40getkISImageDescriptorHomeScreenSymbolLocv_block_invoke;
    v34 = &unk_1E72C2B68;
    v35 = &v36;
    v10 = IconServicesLibrary();
    v37[3] = dlsym(v10, "kISImageDescriptorHomeScreen");
    getkISImageDescriptorHomeScreenSymbolLoc(void)::ptr = *(v35[1] + 24);
    v9 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v9)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkISImageDescriptorHomeScreen()"];
    [v29 handleFailureInFunction:v30 file:@"AudioComponentRegistrar.mm" lineNumber:633 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v11 = *v9;
  v12 = [ISImageDescriptorClass imageDescriptorNamed:v11];

  [v12 size];
  v14 = v13;
  v16 = v15;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v17 = getUIScreenClass(void)::softClass;
  v39 = getUIScreenClass(void)::softClass;
  if (!getUIScreenClass(void)::softClass)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = ___ZL16getUIScreenClassv_block_invoke;
    v34 = &unk_1E72C2B68;
    v35 = &v36;
    ___ZL16getUIScreenClassv_block_invoke(&v31);
    v17 = v37[3];
  }

  v18 = v17;
  _Block_object_dispose(&v36, 8);
  v19 = [v17 mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_alloc(getISIconClass()) initWithBundleIdentifier:v6];
  v23 = [objc_alloc(getISImageDescriptorClass()) initWithSize:v14 scale:{v16, v21}];
  v40[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [v22 prepareImagesForImageDescriptors:v24];

  v25 = [getUIImageClass() imageWithCGImage:objc_msgSend(v22 scale:"CGImageForDescriptor:" orientation:{v23), 0, v21}];
  v26 = localUIImagePNGRepresentation(v25);
  if ([(AudioComponentPrefRegConnection *)self isGenericAppIcon:v26 size:v14 scale:v16, v21])
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  (v7)[2](v7, v27);

  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)isGenericAppIcon:(id)a3 size:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [getISIconClass() genericApplicationIcon];
  v10 = [objc_alloc(getISImageDescriptorClass()) initWithSize:width scale:{height, a5}];
  v17[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v9 prepareImagesForImageDescriptors:v11];

  v12 = [getUIImageClass() imageWithCGImage:objc_msgSend(v9 scale:"CGImageForDescriptor:" orientation:{v10), 0, a5}];
  v13 = localUIImagePNGRepresentation(v12);
  v14 = [v8 isEqualToData:v13];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)setComponentUserTags:(id)a3 tags:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  mImpl = self->mImpl;
  v6 = a3;
  v7 = a4;
  if ((*mImpl & 1) == 0)
  {
    memset(&v13, 0, sizeof(v13));
    dictionaryToComponentDescription(v6, &v13, &v12);
    v8 = MEMORY[0x1E696AEC0];
    CAX4CCString::CAX4CCString(v16, v13.componentType);
    CAX4CCString::CAX4CCString(v15, v13.componentSubType);
    CAX4CCString::CAX4CCString(v14, v13.componentManufacturer);
    v9 = [v8 stringWithFormat:@"2-%s-%s-%s", v16, v15, v14];
    v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.audio.UserComponentTags"];
    [v10 setObject:v7 forKey:v9];
    [v10 synchronize];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getComponentUserTags:(id)a3 reply:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v28 = a4;
  mImpl = self->mImpl;
  v7 = a3;
  v8 = v7;
  if (*mImpl)
  {
    v9 = 0;
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
    v29 = 0;
    dictionaryToComponentDescription(v7, &v30, &v29);
    v10 = MEMORY[0x1E696AEC0];
    componentType = v30.componentType;
    CAX4CCString::CAX4CCString(&v35, v30.componentType);
    componentSubType = v30.componentSubType;
    CAX4CCString::CAX4CCString(&v33, v30.componentSubType);
    componentManufacturer = v30.componentManufacturer;
    CAX4CCString::CAX4CCString(&v31, v30.componentManufacturer);
    v14 = [v10 stringWithFormat:@"2-%s-%s-%s", &v35, &v33, &v31];
    v15 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.audio.UserComponentTags"];
    [v15 synchronize];
    v9 = [v15 objectForKey:v14];
    if (!v9)
    {
      v16.i32[0] = componentType;
      v19 = vzip1_s8(v16, v16);
      v17.i32[0] = componentSubType;
      v20 = vzip1_s8(v17, v19);
      v18.i32[0] = componentManufacturer;
      v21 = vzip1_s8(v18, v19);
      v22 = vrev64_s16(v19);
      v35 = vuzp1_s8(v22, v22).u32[0];
      v36 = 0;
      v23 = vrev64_s16(v20);
      v33 = vuzp1_s8(v23, v23).u32[0];
      v34 = 0;
      v24 = vrev64_s16(v21);
      v31 = vuzp1_s8(v24, v24).u32[0];
      v32 = 0;
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"1-'%s'-'%s'-'%s'-0x%X", &v35, &v33, &v31, v29];
      v26 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.audio.ComponentTagHelper"];
      [v26 synchronize];
      v9 = [v26 objectForKey:v25];
      if (v9)
      {
        [v15 setObject:v9 forKey:v14];
        [v15 synchronize];
      }
    }
  }

  v28[2](v28, v9);
  v27 = *MEMORY[0x1E69E9840];
}

- (void)getExtensionComponentList:(id)a3 linkedSDKRequiresEntitlement:(BOOL)a4 reply:(id)a5
{
  self->mConnInfo.mLinkedSDKRequiresEntitlement = a4;
  mImpl = self->mImpl;
  v12 = a3;
  v8 = a5;
  mExtUsePermission = self->mConnInfo.mExtUsePermission;
  if (mExtUsePermission == -1)
  {
    mExtUsePermission = ConnectionInfo::_canUseExtensions(&self->mConnInfo);
    self->mConnInfo.mExtUsePermission = mExtUsePermission;
  }

  if (mExtUsePermission == 1 && (v10 = mImpl[32]) != 0)
  {
    os_unfair_lock_lock(mImpl[32]);
    v11 = AUExtensionScanner::getExtensionComponentList(&v10[2], v12);
    os_unfair_lock_unlock(v10);
  }

  else
  {
    v11 = 0;
  }

  v8[2](v8, v11);
}

- (void)setExtensionComponentList:(id)a3 linkedSDKRequiresEntitlement:(BOOL)a4 components:(id)a5 reply:(id)a6
{
  self->mConnInfo.mLinkedSDKRequiresEntitlement = a4;
  mImpl = self->mImpl;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  mExtUsePermission = self->mConnInfo.mExtUsePermission;
  if (mExtUsePermission == -1)
  {
    mExtUsePermission = ConnectionInfo::_canUseExtensions(&self->mConnInfo);
    self->mConnInfo.mExtUsePermission = mExtUsePermission;
  }

  v14 = 4294900548;
  if (mExtUsePermission == 1)
  {
    v15 = *(mImpl + 32);
    if (v15)
    {
      memset(&v23, 0, 24);
      v23.mSorted = 1;
      memset(&v22, 0, 24);
      v22.mSorted = 1;
      os_unfair_lock_lock(v15);
      v16 = v10;
      v17 = v11;
      Extension = AUExtensionScanner::findExtension((v15 + 8), v16);
      if (*(v15 + 144) != Extension)
      {
        v19 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.audio.ComponentRegistrationOverrides"];
        [v19 setObject:v17 forKey:v16];
        [v19 synchronize];
        v21 = Extension[2];
        v20 = Extension[3];
        if (v20)
        {
          atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
        }

        AUExtensionScanner::componentsForExtension(&v25, (v15 + 8), *Extension);
      }

      v14 = 4294900552;

      os_unfair_lock_unlock(v15);
      AudioComponentRegistrarImpl::addRemoveComponents(mImpl, &v23, &v22);
      v24.__begin_ = &v22;
      std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v24);
      v24.__begin_ = &v23;
      std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v24);
    }

    else
    {
      v14 = 4294967292;
    }
  }

  v12[2](v12, v14);
}

- (AudioComponentPrefRegConnection)initWithRegistrar:(void *)a3 connection:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AudioComponentPrefRegConnection;
  v7 = [(AudioComponentPrefRegConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->mImpl = a3;
    objc_storeWeak(&v7->mConnInfo.mConnection, v6);
  }

  return v8;
}

@end