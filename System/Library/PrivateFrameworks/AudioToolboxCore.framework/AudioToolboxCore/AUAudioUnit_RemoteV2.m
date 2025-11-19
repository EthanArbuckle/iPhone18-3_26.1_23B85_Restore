@interface AUAudioUnit_RemoteV2
- (AUAudioUnit_RemoteV2)initWithXPCService:()unique_ptr<AUHostingServiceClient componentDescription:(std:(AudioComponentDescription *)a4 :(OpaqueAudioComponentInstance *)a5 default_delete<AUHostingServiceClient>>)a3 instance:(id)a6 instanceUUID:(id *)a7 error:;
- (BOOL)providesUserInterface;
- (id)_valueForProperty:(id)a3 error:(id *)a4;
- (void)_setValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)initWithXPCService:componentDescription:instance:instanceUUID:error:;
@end

@implementation AUAudioUnit_RemoteV2

- (BOOL)providesUserInterface
{
  v3 = [(AUAudioUnit *)self cachedViewController];

  if (v3)
  {
    return 1;
  }

  v5 = [AUAudioUnitProperty propertyWithKey:@"_v2bridge_providesUserInterface" v2propID:0 scope:0 element:0];
  v9 = 0;
  v6 = [(AUAudioUnit_XPC *)self _getValueForProperty:v5 error:&v9];
  v7 = v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v12 = a3;
  v8 = a4;
  v9 = +[AUAudioUnit keyPathsForValuesAffectingAllParameterValues];
  v10 = [v9 containsObject:v8];

  if (v10)
  {
    [(AUAudioUnit_XPC *)self _setState:v12 forKey:v8 error:a5];
  }

  else
  {
    v11 = [AUAudioUnitProperty propertyWithKey:v8];
    [(AUAudioUnit_XPC *)self _setValue:v12 forProperty:v11 error:a5];
  }
}

- (id)_valueForProperty:(id)a3 error:(id *)a4
{
  v4 = [(AUAudioUnit_XPC *)self _getValueForProperty:a3 error:a4];

  return v4;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  ptr = self->_service.__ptr_;
  v7 = 0;
  AUHostingServiceClient::setInvalidationHandler(*(ptr + 7), v6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v5.receiver = self;
  v5.super_class = AUAudioUnit_RemoteV2;
  [(AUAudioUnit_XPC *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (AUAudioUnit_RemoteV2)initWithXPCService:()unique_ptr<AUHostingServiceClient componentDescription:(std:(AudioComponentDescription *)a4 :(OpaqueAudioComponentInstance *)a5 default_delete<AUHostingServiceClient>>)a3 instance:(id)a6 instanceUUID:(id *)a7 error:
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a6;
  v27 = *&a4->componentType;
  LODWORD(v28) = a4->componentFlagsMask;
  v34.receiver = self;
  v34.super_class = AUAudioUnit_RemoteV2;
  v14 = [(AUAudioUnit *)&v34 initWithComponentDescription:&v27 options:0 error:a7];
  v15 = v14;
  if (v14)
  {
    v16 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    std::unique_ptr<AUHostingServiceClient>::reset[abi:ne200100](&v14->_service.__ptr_, v16);
    [(AUAudioUnit_XPC *)v15 _setComponentInstance:a5];
    objc_storeStrong(&v15->_auInstanceUUID, a6);
    objc_initWeak(&location, v15);
    ptr = v15->_service.__ptr_;
    objc_copyWeak(&to, &location);
    v37 = 0;
    v35 = &unk_1F033E9F0;
    objc_moveWeak(&v36, &to);
    v37 = &v35;
    objc_destroyWeak(&to);
    AUHostingServiceClient::setInvalidationHandler(*(ptr + 7), &v35);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v35);
    *&v27 = 0;
    *(&v27 + 1) = &v27;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__15569;
    v30 = __Block_byref_object_dispose__15570;
    v31 = 0;
    v18 = *(v15->_service.__ptr_ + 5);
    v19 = v15;
    v20 = v18;
    v21 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0351D40];
    SetAllowedClassesForAUAudioUnitHostXPCInterface(v21);
    [v20 setExportedInterface:v21];
    v22 = objc_opt_new();
    [v22 setAudioUnit:v19];
    [v20 setExportedObject:v22];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __92__AUAudioUnit_RemoteV2_initWithXPCService_componentDescription_instance_instanceUUID_error___block_invoke;
    v26[3] = &unk_1E72C2D38;
    v26[4] = &v27;
    [(AUAudioUnit_XPC *)v19 _doOpen:v20 completion:v26];

    if (a7)
    {
      *a7 = *(*(&v27 + 1) + 40);
    }

    v23 = v19;
    _Block_object_dispose(&v27, 8);

    objc_destroyWeak(&location);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)initWithXPCService:componentDescription:instance:instanceUUID:error:
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x193ADF220);
}

@end