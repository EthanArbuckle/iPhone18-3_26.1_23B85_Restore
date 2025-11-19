@interface DSPProcessor
- (BOOL)hasHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3;
- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withData:(id)a4 withQualifier:(id)a5 error:(id *)a6;
- (BOOL)validateAdaptConfigurationChangeRequest:(const void *)a3;
- (DSPProcessor)initWithHostDescription:(id)a3 hostCallback:(id)a4 systemConfiguration:(SystemConfiguration *)a5;
- (id).cxx_construct;
- (id)adaptToConfigurationChange:(id)a3 withCallbacks:(void *)a4 error:(id *)a5;
- (id)doNegotiateConfigurationChange:(id)a3 simulate:(BOOL)a4 error:(id *)a5;
- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withQualifierData:(id)a4;
- (id)getHostedDSPPropertyInfoArray;
- (id)initWithHostDescription:hostCallback:systemConfiguration:;
- (id)negotiateConfigurationChange:(id)a3 error:(id *)a4;
- (id)simulateConfigurationChange:(id)a3 error:(id *)a4;
- (uint64_t)initWithHostDescription:hostCallback:systemConfiguration:;
- (void)connectRemoteProcessingBlockServer:(id)a3 host:(id)a4;
- (void)dealloc;
- (void)disconnectRemoteProcessingBlockServer:(id)a3 host:(id)a4;
- (void)dumpDiagnosticsWithNSObject:(id)a3 name:(id)a4;
- (void)initWithHostDescription:hostCallback:systemConfiguration:;
- (void)registerExternalNotifications:(const NotificationSubscriptions *)a3;
- (void)unregisterExternalNotifications;
@end

@implementation DSPProcessor

- (id).cxx_construct
{
  *self->_systemConfiguration.mContext.mResourcePath.__pn_.__rep_.__s.__data_ = 0uLL;
  *(&self->_systemConfiguration.mContext.mResourcePath.__pn_.__rep_.__l + 2) = 0;
  *self->_hostDescription.mBundleID.__rep_.__s.__data_ = 0u;
  *(&self->_hostDescription.mBundleID.__rep_.__l + 1) = 0u;
  *self->_anon_30 = 0u;
  self->_systemConfiguration.mContext.mOS = 0;
  std::__fs::filesystem::path::path[abi:ne200100]<char [24],void>(&self->_systemConfiguration.mContext.mResourcePath.var0, "/Library/Audio/Tunings/");
  self->_anon_70[8] = 0;
  self->_anon_70[12] = 0;
  self->_anon_70[16] = 0;
  self->_anon_70[40] = 0;
  self->_anon_70[48] = 0;
  self->_anon_70[72] = 0;
  self->_anon_70[80] = 0;
  self->_anon_70[88] = 0;
  self->_anon_70[92] = 0;
  *&self->_anon_70[96] = 0u;
  *&self->_anon_70[112] = 0u;
  *&self->_anon_70[128] = 0u;
  *&self->_anon_70[144] = 0u;
  *&self->_anon_70[160] = 0u;
  *&self->_anon_70[176] = 1065353216;
  *&self->_anon_70[192] = 0;
  *&self->_anon_70[200] = 0;
  *&self->_anon_70[184] = 0;
  *&self->_anon_70[205] = 0;
  self->_graphBuilder.var0.__null_state_ = 0;
  self->_anon_178[264] = 0;
  self->_nodeManager.var0.__null_state_ = 0;
  self->_nodeManager.__engaged_ = 0;
  self->_customPropertyManager.var0.__null_state_ = 0;
  self->_customPropertyManager.__engaged_ = 0;
  self->_pendingDeviceConfigChanges.var0.__null_state_ = 0;
  self->_pendingDeviceConfigChanges.__engaged_ = 0;
  self->_activeDeviceConfigChanges.var0.__null_state_ = 0;
  self->_activeDeviceConfigChanges.__engaged_ = 0;
  self->_pendingChangeRequest.var0.__null_state_ = 0;
  self->_pendingChangeRequest.__engaged_ = 0;
  self->_activeChangeRequest.var0.__null_state_ = 0;
  self->_activeChangeRequest.__engaged_ = 0;
  return self;
}

- (void)dumpDiagnosticsWithNSObject:(id)a3 name:(id)a4
{
  v15 = a3;
  v6 = a4;
  {
    if (v14)
    {
      [DSPProcessor dumpDiagnosticsWithNSObject:name:]::isDebugDumpEnabled = adm::utility::readDefaultsDebugDumpEnablement(v14);
    }
  }

  if ([DSPProcessor dumpDiagnosticsWithNSObject:name:]::isDebugDumpEnabled == 1)
  {
    v7 = MEMORY[0x277CCACA8];
    p_hostDescription = &self->_hostDescription;
    if (*(&self->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
    {
      p_hostDescription = p_hostDescription->mBundleID.__rep_.__l.__data_;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_hostDescription];
    p_var0 = &self->_hostDescription.var0;
    if (self->_anon_30[15] < 0)
    {
      p_var0 = *p_var0;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_var0];
    v12 = [v7 stringWithFormat:@"%@(%@_%@)", v6, v9, v11];

    adm::utility::writeNSObjectToDisk(v15, v12, v13);
  }
}

- (void)unregisterExternalNotifications
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_hasRegisteredUIOrientation)
  {
    v3 = CAUnregisterUIOrientation();
    if (v3)
    {
      v4 = v3;
      v5 = get_adm_log_object();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11[0] = 67109120;
        v11[1] = v4;
        _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "Failed to unregister UIOrientation with error %d", v11, 8u);
      }
    }

    else
    {
      self->_hasRegisteredUIOrientation = 0;
      v5 = get_adm_log_object();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEFAULT, "Succeeded in unregistering UIOrientation notification", v11, 2u);
      }
    }
  }

  if (self->_notificationVendor)
  {
    coexNotificationRegistrationResults = self->_coexNotificationRegistrationResults;
    if (coexNotificationRegistrationResults)
    {
      if ([(ADMListenerRegistrationResults *)coexNotificationRegistrationResults successful])
      {
        v7 = [(ADMNotificationVendor *)self->_notificationVendor deregisterListenerWithRegistrationResults:self->_coexNotificationRegistrationResults];
        v8 = get_adm_log_object();
        v9 = v8;
        if (v7)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v11[0]) = 0;
            _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, "Succeeded in unregistering inference coex notification", v11, 2u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v11[0]) = 0;
          _os_log_error_impl(&dword_223B4A000, v9, OS_LOG_TYPE_ERROR, "Failed to unregister inference coex notifications", v11, 2u);
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerExternalNotifications:(const NotificationSubscriptions *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3->var0)
  {
    objc_initWeak(location, self);
    v24[1] = MEMORY[0x277D85DD0];
    v24[2] = 3221225472;
    v24[3] = __46__DSPProcessor_registerExternalNotifications___block_invoke;
    v24[4] = &unk_2784F0660;
    objc_copyWeak(&v25, location);
    v5 = CARegisterUIOrientation();
    if (v5)
    {
      v6 = get_adm_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v5;
        _os_log_error_impl(&dword_223B4A000, v6, OS_LOG_TYPE_ERROR, "Failed to register UIOrientation with error %d", &buf, 8u);
      }
    }

    else
    {
      self->_hasRegisteredUIOrientation = 1;
      v6 = get_adm_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_223B4A000, v6, OS_LOG_TYPE_DEFAULT, "Succeeded in registering UIOrientation notification", &buf, 2u);
      }
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  if (a3->var1)
  {
    if (self->_notificationVendor || (+[ADMNotificationVendor canonical], v7 = objc_claimAutoreleasedReturnValue(), v8 = self->_notificationVendor, self->_notificationVendor = v7, v8, self->_notificationVendor))
    {
      objc_initWeak(&buf, self);
      notificationVendor = self->_notificationVendor;
      v10 = +[ADMNotificationStreamKeys inferenceSlowFalse];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __46__DSPProcessor_registerExternalNotifications___block_invoke_50;
      v23 = &unk_2784F0688;
      objc_copyWeak(v24, &buf);
      v11 = [(ADMNotificationVendor *)notificationVendor registerBoolListenerWithNotificationKey:v10 listenerCallback:&v20];
      coexNotificationRegistrationResults = self->_coexNotificationRegistrationResults;
      self->_coexNotificationRegistrationResults = v11;

      LODWORD(notificationVendor) = [(ADMListenerRegistrationResults *)self->_coexNotificationRegistrationResults successful:v20];
      v13 = get_adm_log_object();
      v14 = v13;
      if (notificationVendor)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_223B4A000, v14, OS_LOG_TYPE_DEFAULT, "Succeeded in registering inference coex notification", location, 2u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = [(ADMListenerRegistrationResults *)self->_coexNotificationRegistrationResults error];
        v18 = v17;
        v19 = [v17 UTF8String];
        LODWORD(location[0]) = 136315138;
        *(location + 4) = v19;
        _os_log_error_impl(&dword_223B4A000, v14, OS_LOG_TYPE_ERROR, "Failed to register inference coex. Cause: %s", location, 0xCu);
      }

      objc_destroyWeak(v24);
      objc_destroyWeak(&buf);
    }

    else
    {
      v16 = get_adm_log_object();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_error_impl(&dword_223B4A000, v16, OS_LOG_TYPE_ERROR, "Failed to create a notification vendor", location, 2u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__DSPProcessor_registerExternalNotifications___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = get_adm_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v10 = a2;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "UIOrientation notification received, orientation = %d", buf, 8u);
    }

    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:4];
    v7 = 0;
    [WeakRetained setHostedDSPPropertyAtAddress:0x676C6F6255494F52 withData:0 withQualifier:v5 error:{0, &v7}];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __46__DSPProcessor_registerExternalNotifications___block_invoke_50(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v4 = get_adm_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v11 = a2;
    _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "Inference coex notification received, status = %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v9 length:1];
    v8 = 0;
    [WeakRetained setHostedDSPPropertyAtAddress:0x676C6F624946434FLL withData:0 withQualifier:v6 error:{0, &v8}];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withQualifierData:(id)a4
{
  v11 = a3;
  v5 = a4;
  applesauce::CF::DataRef::from_ns(&cf, v5);
  adm::CustomPropertyManager::getCustomProperty(&v10, &self->_customPropertyManager, &v11, &cf);
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3 withData:(id)a4 withQualifier:(id)a5 error:(id *)a6
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  applesauce::CF::DataRef::from_ns(&v13, v8);
  applesauce::CF::DataRef::from_ns(&cf, v9);
  v10 = adm::CustomPropertyManager::setCustomProperty(&self->_customPropertyManager, &v14, &v13, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

- (BOOL)hasHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)a3
{
  v3 = "";
  v4 = 224;
  result = 1;
  while (1)
  {
    if (a3.mSelector == 707406378 || ((v6 = *(v3 - 2), v6 != 707406378) ? (v7 = v6 == a3.mSelector) : (v7 = 1), v7))
    {
      if (a3.mScope == 707406378 || ((v8 = *(v3 - 1), v8 != 707406378) ? (v9 = v8 == a3.mScope) : (v9 = 1), v9))
      {
        if (a3.mElement == -1)
        {
          break;
        }

        if (*v3 == -1 || *v3 == a3.mElement)
        {
          break;
        }
      }
    }

    v3 += 56;
    v4 -= 56;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

- (id)getHostedDSPPropertyInfoArray
{
  adm::CustomPropertyManager::getCustomPropertyList(&v5);
  v2 = v5;
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (id)adaptToConfigurationChange:(id)a3 withCallbacks:(void *)a4 error:(id *)a5
{
  v107 = *MEMORY[0x277D85DE8];
  v83 = self;
  v7 = a3;
  v80 = 1;
  v81 = 0;
  v82 = 0;
  v8 = get_adm_log_object();
  if (os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_223B4A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::Adapt", &unk_223C17543, &buf, 2u);
  }

  if (*(&v83->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&mBundleID, v83->_hostDescription.mBundleID.__rep_.__l.__data_, v83->_hostDescription.mBundleID.__rep_.__l.__size_);
  }

  else
  {
    mBundleID = v83->_hostDescription.mBundleID;
  }

  v9 = get_adm_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    p_mBundleID = &mBundleID;
    if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_mBundleID = mBundleID.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = p_mBundleID;
    _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, ">>> ADAPT [%s]", &buf, 0xCu);
  }

  LOBYTE(v77) = 0;
  v78 = 0;
  v11 = v83;
  if (v83->_remoteProcessingBlockHost)
  {
    [(RPBHost *)v83->_remoteProcessingBlockHost setUserInfo:v7 error:0];
    v11 = v83;
  }

  [(DSPProcessor *)v11 dumpDiagnosticsWithNSObject:v7 name:@"AdaptConfigChange"];
  LOBYTE(v59.super.isa) = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  LOBYTE(__p) = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v75 = 0;
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  memset(v76, 0, sizeof(v76));
  if ((adm::utility::convertFromDictionary(v7, &v59, v12) & 1) == 0)
  {
    v25 = get_adm_log_object();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_223B4A000, v25, OS_LOG_TYPE_ERROR, "Failed to convert the config change request dictionary", &buf, 2u);
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
    goto LABEL_37;
  }

  logConfigChangeRequestBasicInfo(&v59);
  if (![(DSPProcessor *)v83 validateAdaptConfigurationChangeRequest:&v59])
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
LABEL_37:
    v27 = 0;
    *a5 = v26;
    goto LABEL_38;
  }

  if (LOBYTE(v59.super.isa) != 1)
  {
    v31 = get_adm_log_object();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_223B4A000, v31, OS_LOG_TYPE_DEFAULT, "Adapt to de-activation config change request", &buf, 2u);
    }

    *&v88.__r_.__value_.__l.__data_ = 0uLL;
    v103 = 0;
    *(&buf + 1) = 0;
    *&buf = &buf + 8;
    adm::CustomPropertyManager::attachToNode(&v83->_customPropertyManager, &v88, &buf);
    std::__tree<std::string>::destroy(*(&buf + 1));
    [(DSPProcessor *)v83 unregisterExternalNotifications];
    goto LABEL_55;
  }

  adm::graph::GraphBuilder::buildGraph(&buf, &v83->_graphBuilder, &v59);
  if ((v106 & 1) == 0)
  {
    v40 = MEMORY[0x277CCA9B8];
    v41 = buf;
    v100 = *MEMORY[0x277CCA450];
    v101 = @"ADM failed to build graph";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    *a5 = [v40 errorWithDomain:@"AudioDSPManagerErrorDomain" code:v41 userInfo:v42];

    v43 = get_adm_log_object();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v88.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v43, OS_LOG_TYPE_ERROR, "ADM failed to build graph", &v88, 2u);
    }

    goto LABEL_66;
  }

  v88.__r_.__value_.__r.__words[0] = &v83;
  v88.__r_.__value_.__l.__size_ = &buf;
  if (v105 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v56.__val_ = &v88;
  (*(&off_28371AB90 + v105))(&v57, &v56, &v104);
  if (v58 != 1)
  {
    cat = 0;
    v56 = 0;
LABEL_70:
    v44 = get_adm_log_object();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      std::error_code::message(&v88, &v57);
      v50 = (v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v88 : v88.__r_.__value_.__r.__words[0];
      *v86 = 136315138;
      v87 = v50;
      _os_log_error_impl(&dword_223B4A000, v44, OS_LOG_TYPE_ERROR, "failed to create DSP node with error %s", v86, 0xCu);
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }
    }

    if (a5)
    {
      v45 = MEMORY[0x277CCA9B8];
      v84 = *MEMORY[0x277CCA450];
      v85 = @"ADM failed to create DSP node";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      *a5 = [v45 errorWithDomain:@"AudioDSPManagerErrorDomain" code:1970170734 userInfo:v46];
    }

    v24 = 1;
    goto LABEL_74;
  }

  v14 = *&v57.__val_;
  cat = v57.__cat_;
  v56 = v57;
  if (v57.__cat_)
  {
    atomic_fetch_add_explicit(&v57.__cat_[1], 1uLL, memory_order_relaxed);
  }

  if (!v14)
  {
    goto LABEL_70;
  }

  adm::CustomPropertyManager::attachToNode(&v83->_customPropertyManager, &v56, &v60);
  if (v83->_remoteProcessingBlockHost)
  {
    v15 = objc_alloc(MEMORY[0x277D46118]);
    v16 = [v15 initWithName:@"DSP" inputs:*MEMORY[0x277CBEBE8] outputs:*MEMORY[0x277CBEBE8]];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = v16;
    v17 = [(RPBHost *)v83->_remoteProcessingBlockHost items];
    v18 = [v17 copy];

    v19 = [v18 countByEnumeratingWithState:&v52 objects:v99 count:16];
    if (v19)
    {
      v20 = *v53;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [(RPBHost *)v83->_remoteProcessingBlockHost removeItem:*(*(&v52 + 1) + 8 * i)];
        }

        v19 = [v18 countByEnumeratingWithState:&v52 objects:v99 count:16];
      }

      while (v19);
    }

    [(RPBHost *)v83->_remoteProcessingBlockHost addItem:v51];
    (*(*v14 + 16))(v14, v51);
  }

  adm::graph::Node::createHandlers(&v88, v14);
  std::__function::__value_func<void ()>::operator=[abi:ne200100](a4 + 96, v89);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](a4 + 32, v91);
  std::__function::__value_func<void ()>::operator=[abi:ne200100](a4 + 128, v93);
  if (v96)
  {
    v22 = (*(*v96 + 48))(v96);
    v78 = 1;
    v77 = v22;
  }

  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](&v98);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](&v97);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](&v95);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v94);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v93);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](&v92);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v91);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](&v90);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v89);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v88);
  v24 = 0;
LABEL_74:
  if (cat)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cat);
  }

  if (v24)
  {
    if (v58 == 1 && v57.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57.__cat_);
    }

LABEL_66:
    std::expected<adm::graph::GraphDescription,std::error_code>::~expected[abi:ne200100](&buf);
    v27 = 0;
    goto LABEL_38;
  }

  LOWORD(v88.__r_.__value_.__l.__data_) = adm::config_policy::getRequiredNotificationSubscriptions(&v59, v23);
  [(DSPProcessor *)v83 registerExternalNotifications:&v88];
  if (v58 == 1 && v57.__cat_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57.__cat_);
  }

  std::expected<adm::graph::GraphDescription,std::error_code>::~expected[abi:ne200100](&buf);
LABEL_55:
  if (LOBYTE(v59.super.isa) == 1)
  {
    v32 = [(adm::utility *)v7 copy];
    activeConfiguration = v83->_activeConfiguration;
    v83->_activeConfiguration = v32;

    std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100]<adm::ConfigurationChangeRequest,void>(&v83->_activeChangeRequest, &v59);
    v34 = v83;
    p_pendingDeviceConfigChanges = &v83->_pendingDeviceConfigChanges;
    if (v83->_activeDeviceConfigChanges.__engaged_ == v83->_pendingDeviceConfigChanges.__engaged_)
    {
      if (v83->_activeDeviceConfigChanges.__engaged_)
      {
        std::vector<adm::DeviceConfiguration>::__vdeallocate(&v83->_activeDeviceConfigChanges);
        *&v34->_activeDeviceConfigChanges.var0.__null_state_ = *&v34->_pendingDeviceConfigChanges.var0.__null_state_;
        v34->_activeDeviceConfigChanges.var0.__val_.__cap_ = v34->_pendingDeviceConfigChanges.var0.__val_.__cap_;
        p_pendingDeviceConfigChanges->__end_ = 0;
        p_pendingDeviceConfigChanges->__cap_ = 0;
        p_pendingDeviceConfigChanges->__begin_ = 0;
      }
    }

    else if (v83->_activeDeviceConfigChanges.__engaged_)
    {
      *&buf = &v83->_activeDeviceConfigChanges;
      std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&buf);
      v34->_activeDeviceConfigChanges.__engaged_ = 0;
    }

    else
    {
      *&v83->_activeDeviceConfigChanges.var0.__null_state_ = *&v83->_pendingDeviceConfigChanges.var0.__null_state_;
      v34->_activeDeviceConfigChanges.var0.__val_.__cap_ = v34->_pendingDeviceConfigChanges.var0.__val_.__cap_;
      p_pendingDeviceConfigChanges->__end_ = 0;
      p_pendingDeviceConfigChanges->__cap_ = 0;
      p_pendingDeviceConfigChanges->__begin_ = 0;
      v34->_activeDeviceConfigChanges.__engaged_ = 1;
    }

    v37 = v83;
    remoteProcessingBlockHost = v83->_remoteProcessingBlockHost;
    if (!remoteProcessingBlockHost)
    {
      goto LABEL_88;
    }

    p_activeConfiguration = &v83->_activeConfiguration;
  }

  else
  {
    v36 = v83->_activeConfiguration;
    v83->_activeConfiguration = 0;

    std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100](&v83->_activeChangeRequest);
    v37 = v83;
    if (v83->_activeDeviceConfigChanges.__engaged_)
    {
      *&buf = &v83->_activeDeviceConfigChanges;
      std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&buf);
      v37->_activeDeviceConfigChanges.__engaged_ = 0;
      v37 = v83;
    }

    remoteProcessingBlockHost = v37->_remoteProcessingBlockHost;
    if (!remoteProcessingBlockHost)
    {
      goto LABEL_88;
    }

    p_activeConfiguration = MEMORY[0x277CBEC00];
  }

  [(RPBHost *)remoteProcessingBlockHost setUserInfo:*p_activeConfiguration error:0];
  v37 = v83;
LABEL_88:
  std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100](&v37->_pendingChangeRequest);
  v47 = v83;
  if (v83->_pendingDeviceConfigChanges.__engaged_)
  {
    *&buf = &v83->_pendingDeviceConfigChanges;
    std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&buf);
    v47->_pendingDeviceConfigChanges.__engaged_ = 0;
  }

  v27 = adm::utility::convertToDictionary(&v77);
  [(DSPProcessor *)v83 dumpDiagnosticsWithNSObject:v27 name:@"AdaptResponse"];
  v48 = get_adm_log_object();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = &mBundleID;
    if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v49 = mBundleID.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v49;
    _os_log_impl(&dword_223B4A000, v48, OS_LOG_TYPE_DEFAULT, "<<< ADAPT [%s]", &buf, 0xCu);
  }

LABEL_38:
  *&buf = v76;
  std::vector<adm::DeviceDescription>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (v75 == 1 && v74 == 1 && cf)
  {
    CFRelease(cf);
  }

  *&buf = v71;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (v68 == 1 && __p)
  {
    v67 = __p;
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(v61[0]);
  if (SHIBYTE(mBundleID.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(mBundleID.__r_.__value_.__l.__data_);
  }

  v28 = get_adm_log_object();
  if (os_signpost_enabled(v28))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_223B4A000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::Adapt", &unk_223C17543, &buf, 2u);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)validateAdaptConfigurationChangeRequest:(const void *)a3
{
  v5 = *a3;
  engaged = self->_pendingChangeRequest.__engaged_;
  if (v5 == 1)
  {
    if (self->_pendingChangeRequest.__engaged_)
    {
      if (self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__size_ != *(a3 + 3))
      {
LABEL_44:
        v26 = get_adm_log_object();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        *v32 = 0;
        v27 = "Adapt semantics don't match Negotiated semantics";
        v28 = v32;
LABEL_50:
        _os_log_error_impl(&dword_223B4A000, v26, OS_LOG_TYPE_ERROR, v27, v28, 2u);
        goto LABEL_45;
      }

      begin_node = self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__begin_node_;
      p_end_node = &self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_;
      if (begin_node != &self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_)
      {
        v9 = *(a3 + 1);
        while (std::equal_to<std::string>::operator()[abi:ne200100](&begin_node[4].__left_, v9 + 4))
        {
          left = begin_node[1].__left_;
          v11 = begin_node;
          if (left)
          {
            do
            {
              begin_node = left;
              left = left->__left_;
            }

            while (left);
          }

          else
          {
            do
            {
              begin_node = v11[2].__left_;
              v12 = begin_node->__left_ == v11;
              v11 = begin_node;
            }

            while (!v12);
          }

          v13 = v9[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v9[2];
              v12 = *v14 == v9;
              v9 = v14;
            }

            while (!v12);
          }

          v9 = v14;
          if (begin_node == p_end_node)
          {
          }
        }

        goto LABEL_44;
      }
    }
  }

  else if (self->_pendingChangeRequest.__engaged_)
  {
  }

  if (self->_activeChangeRequest.__engaged_ && self->_activeChangeRequest.var0.__null_state_ == v5 && self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__size_ == *(a3 + 3))
  {
    v16 = self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__begin_node_;
    v17 = &self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_;
    if (v16 == &self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_)
    {
LABEL_38:
      end = self->_activeChangeRequest.var0.__val_.mIOContextDescription.mStreamIDs.__end_;
      begin = self->_activeChangeRequest.var0.__val_.mIOContextDescription.mStreamIDs.__begin_;
      v25 = *(a3 + 21);
      if (end - begin == *(a3 + 22) - v25)
      {
        while (begin != end)
        {
          if (!std::equal_to<std::string>::operator()[abi:ne200100](begin, v25))
          {
            goto LABEL_42;
          }

          begin += 3;
          v25 += 3;
        }

        v29 = get_adm_log_object();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_223B4A000, v29, OS_LOG_TYPE_INFO, "warning: Adapt called without a Negotiate, but request is duplicate so allow for now", buf, 2u);
        }
      }
    }

    else
    {
      v18 = *(a3 + 1);
      while (std::equal_to<std::string>::operator()[abi:ne200100](&v16[4].__left_, v18 + 4))
      {
        v19 = v16[1].__left_;
        v20 = v16;
        if (v19)
        {
          do
          {
            v16 = v19;
            v19 = v19->__left_;
          }

          while (v19);
        }

        else
        {
          do
          {
            v16 = v20[2].__left_;
            v12 = v16->__left_ == v20;
            v20 = v16;
          }

          while (!v12);
        }

        v21 = v18[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v18[2];
            v12 = *v22 == v18;
            v18 = v22;
          }

          while (!v12);
        }

        v18 = v22;
        if (v16 == v17)
        {
          goto LABEL_38;
        }
      }
    }
  }

LABEL_42:
  v26 = get_adm_log_object();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v30 = 0;
    v27 = "Adapt called without a Negotiate";
    v28 = &v30;
    goto LABEL_50;
  }

LABEL_45:

  return 0;
}

- (id)doNegotiateConfigurationChange:(id)a3 simulate:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v99[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v70 = 0;
  if (*(&self->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&mBundleID, self->_hostDescription.mBundleID.__rep_.__l.__data_, self->_hostDescription.mBundleID.__rep_.__l.__size_);
  }

  else
  {
    mBundleID = self->_hostDescription.mBundleID;
  }

  v9 = get_adm_log_object();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      p_mBundleID = &mBundleID;
      if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_mBundleID = mBundleID.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *v83 = p_mBundleID;
      _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, ">>> SIMULATE [%s]", buf, 0xCu);
    }

    [(DSPProcessor *)self dumpDiagnosticsWithNSObject:v8 name:@"SimulateConfigChange"];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v67);
    v12 = 1;
    v67[0] = 1;
    v68 = 0;
    v69 = 0;
    v13 = get_adm_log_object();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      v14 = "ADM::Simulate";
LABEL_17:
      _os_signpost_emit_with_name_impl(&dword_223B4A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v14, &unk_223C17543, buf, 2u);
    }
  }

  else
  {
    if (v10)
    {
      v15 = &mBundleID;
      if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = mBundleID.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *v83 = v15;
      _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, ">>> NEGOTIATE [%s]", buf, 0xCu);
    }

    [(DSPProcessor *)self dumpDiagnosticsWithNSObject:v8 name:@"NegotiateConfigChange"];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v67);
    v67[0] = 1;
    v68 = 0;
    v69 = 0;
    v13 = get_adm_log_object();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      v14 = "ADM::Negotiate";
      v12 = 2;
      goto LABEL_17;
    }

    v12 = 2;
  }

  v70 = v12;
  buf[0] = 0;
  v84[0] = 0;
  v84[1] = 0;
  *&v83[4] = v84;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  LOBYTE(__p) = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v98 = 0;
  memset(v94, 0, sizeof(v94));
  v95 = 0;
  memset(v99, 0, 24);
  if ((adm::utility::convertFromDictionary(v8, buf, v16) & 1) == 0)
  {
    v30 = get_adm_log_object();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v72 = 0;
      _os_log_error_impl(&dword_223B4A000, v30, OS_LOG_TYPE_ERROR, "Failed to convert the config change request dictionary", v72, 2u);
    }

    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
    goto LABEL_49;
  }

  logConfigChangeRequestBasicInfo(buf);
  {
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
LABEL_49:
    v32 = 0;
    *a5 = v31;
    goto LABEL_56;
  }

  adm::config_policy::getDeviceConfigurations(&v63, buf, &self->_activeDeviceConfigChanges);
  if (v65)
  {
    adm::config_policy::getIOContextConfiguration(&v58, buf);
    v57 = v62;
    if (v62)
    {
      if (!v6)
      {
        v18 = *(&v63 + 1);
        v17 = v63;
        if (v63 != *(&v63 + 1))
        {
          v56 = 136315394;
          do
          {
            if (*(v17 + 41) == 1)
            {
              v19 = get_adm_log_object();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v20 = v17;
                if (*(v17 + 23) < 0)
                {
                  v20 = *v17;
                }

                if ((*(v17 + 41) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                v21 = *(v17 + 40);
                *v72 = 136315394;
                *&v72[4] = v20;
                *&v72[12] = 1024;
                *&v72[14] = v21;
                _os_log_debug_impl(&dword_223B4A000, v19, OS_LOG_TYPE_DEBUG, "- ref request for device %s => %d", v72, 0x12u);
              }
            }

            v17 += 9;
          }

          while (v17 != v18);
        }

        if (buf[0])
        {
          p_pendingDeviceConfigChanges = &self->_pendingDeviceConfigChanges;
          if (self->_pendingDeviceConfigChanges.__engaged_)
          {
            if (p_pendingDeviceConfigChanges != &v63)
            {
              v23 = *(&v63 + 1);
              v24 = v63;
              v25 = *(&v63 + 1) - v63;
              begin = self->_pendingDeviceConfigChanges.var0.__val_.__begin_;
              if (self->_pendingDeviceConfigChanges.var0.__val_.__cap_ - begin < *(&v63 + 1) - v63)
              {
                v27 = 0x8E38E38E38E38E39 * (v25 >> 3);
                std::vector<adm::DeviceConfiguration>::__vdeallocate(&self->_pendingDeviceConfigChanges);
                if (v27 <= 0x38E38E38E38E38ELL)
                {
                  v28 = 0x1C71C71C71C71C72 * ((self->_pendingDeviceConfigChanges.var0.__val_.__cap_ - self->_pendingDeviceConfigChanges.var0.__val_.__begin_) >> 3);
                  if (v28 <= v27)
                  {
                    v28 = v27;
                  }

                  if (0x8E38E38E38E38E39 * ((self->_pendingDeviceConfigChanges.var0.__val_.__cap_ - self->_pendingDeviceConfigChanges.var0.__val_.__begin_) >> 3) >= 0x1C71C71C71C71C7)
                  {
                    v29 = 0x38E38E38E38E38ELL;
                  }

                  else
                  {
                    v29 = v28;
                  }

                  std::vector<adm::DeviceConfiguration>::__vallocate[abi:ne200100](&self->_pendingDeviceConfigChanges, v29);
                }

                std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
              }

              end = self->_pendingDeviceConfigChanges.var0.__val_.__end_;
              if (end - begin >= v25)
              {
                if (v63 != *(&v63 + 1))
                {
                  do
                  {
                    std::string::operator=(begin, v24);
                    v45 = *(v24 + 24);
                    v46 = *(v24 + 40);
                    *(begin + 53) = *(v24 + 53);
                    *(begin + 40) = v46;
                    *(begin + 24) = v45;
                    v24 += 72;
                    begin = (begin + 72);
                  }

                  while (v24 != v23);
                  end = self->_pendingDeviceConfigChanges.var0.__val_.__end_;
                }

                while (end != begin)
                {
                  v47 = SHIBYTE(end[-3].__r_.__value_.__r.__words[2]);
                  end -= 3;
                  if (v47 < 0)
                  {
                    operator delete(end->__r_.__value_.__l.__data_);
                  }
                }

                self->_pendingDeviceConfigChanges.var0.__val_.__end_ = begin;
              }

              else
              {
                v56 = *(&v63 + 1);
                if (end == begin)
                {
                  v42 = v63;
                }

                else
                {
                  v42 = (v63 + end - begin);
                  do
                  {
                    std::string::operator=(begin, v24);
                    v43 = *(v24 + 24);
                    v44 = *(v24 + 40);
                    *(begin + 53) = *(v24 + 53);
                    *(begin + 40) = v44;
                    *(begin + 24) = v43;
                    v24 += 72;
                    begin = (begin + 72);
                  }

                  while (v24 != v42);
                  end = self->_pendingDeviceConfigChanges.var0.__val_.__end_;
                }

                self->_pendingDeviceConfigChanges.var0.__val_.__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<adm::DeviceConfiguration>,adm::DeviceConfiguration*,adm::DeviceConfiguration*,adm::DeviceConfiguration*>(&self->_pendingDeviceConfigChanges, v42, v56, end);
              }
            }
          }

          else
          {
            p_pendingDeviceConfigChanges->var0.__val_.__begin_ = 0;
            self->_pendingDeviceConfigChanges.var0.__val_.__end_ = 0;
            self->_pendingDeviceConfigChanges.var0.__val_.__cap_ = 0;
            *v72 = &self->_pendingDeviceConfigChanges;
            v72[8] = 0;
            if (*(&v63 + 1) != v63)
            {
              std::vector<adm::DeviceConfiguration>::__vallocate[abi:ne200100](&self->_pendingDeviceConfigChanges, 0x8E38E38E38E38E39 * ((*(&v63 + 1) - v63) >> 3));
            }

            self->_pendingDeviceConfigChanges.__engaged_ = 1;
          }
        }

        v48 = [(adm::utility *)v8 copy];
        pendingConfiguration = self->_pendingConfiguration;
        self->_pendingConfiguration = v48;

        remoteProcessingBlockHost = self->_remoteProcessingBlockHost;
        if (remoteProcessingBlockHost)
        {
          [(RPBHost *)remoteProcessingBlockHost setUserInfo:self->_pendingConfiguration error:0];
        }

        std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100]<adm::ConfigurationChangeRequest,void>(&self->_pendingChangeRequest, buf);
      }

      memset(v72, 0, sizeof(v72));
      std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(v72, v58, v59, 0xCCCCCCCCCCCCCCCDLL * ((v59 - v58) >> 3));
      v73 = 0;
      v74 = 0;
      v75 = 0;
      std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(&v73, v60, v61, 0xCCCCCCCCCCCCCCCDLL * ((v61 - v60) >> 3));
      v76 = v63;
      v77 = v64;
      v64 = 0;
      v63 = 0uLL;
      v32 = adm::utility::convertToDictionary(v72, v51);
      v71 = &v76;
      std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&v71);
      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (*v72)
      {
        *&v72[8] = *v72;
        operator delete(*v72);
      }

      if (v6)
      {
        [(DSPProcessor *)self dumpDiagnosticsWithNSObject:v32 name:@"SimulateResponse"];
        v52 = get_adm_log_object();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v53 = &mBundleID;
        if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v53 = mBundleID.__r_.__value_.__r.__words[0];
        }

        *v72 = 136315138;
        *&v72[4] = v53;
        v54 = "<<< SIMULATE [%s]";
      }

      else
      {
        [(DSPProcessor *)self dumpDiagnosticsWithNSObject:v32 name:@"NegotiateResponse"];
        v52 = get_adm_log_object();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v55 = &mBundleID;
        if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v55 = mBundleID.__r_.__value_.__r.__words[0];
        }

        *v72 = 136315138;
        *&v72[4] = v55;
        v54 = "<<< NEGOTIATE [%s]";
      }

      _os_log_impl(&dword_223B4A000, v52, OS_LOG_TYPE_DEFAULT, v54, v72, 0xCu);
LABEL_102:

      if (v57)
      {
        std::__destroy_at[abi:ne200100]<adm::IOContextConfiguration,0>(&v58);
      }

      goto LABEL_54;
    }

    v36 = MEMORY[0x277CCA9B8];
    v37 = v58;
    v78 = *MEMORY[0x277CCA450];
    v79 = @"ADM failed to determine IOContext configuration";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    *a5 = [v36 errorWithDomain:@"AudioDSPManagerErrorDomain" code:v37 userInfo:v38];
  }

  else
  {
    v33 = MEMORY[0x277CCA9B8];
    v34 = v63;
    v80 = *MEMORY[0x277CCA450];
    v81 = @"ADM failed to determine device configuration";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    *a5 = [v33 errorWithDomain:@"AudioDSPManagerErrorDomain" code:v34 userInfo:v35];
  }

  v32 = 0;
LABEL_54:
  if (v65 == 1)
  {
    *v72 = &v63;
    std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](v72);
  }

LABEL_56:
  *v72 = v99;
  std::vector<adm::DeviceDescription>::__destroy_vector::operator()[abi:ne200100](v72);
  if (v98 == 1 && v97 == 1 && cf)
  {
    CFRelease(cf);
  }

  *v72 = v94;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](v72);
  if (v91 == 1 && __p)
  {
    v90 = __p;
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(v84[0]);
  if (SHIBYTE(mBundleID.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(mBundleID.__r_.__value_.__l.__data_);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v67);

  v39 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)negotiateConfigurationChange:(id)a3 error:(id *)a4
{
  v4 = [(DSPProcessor *)self doNegotiateConfigurationChange:a3 simulate:0 error:a4];

  return v4;
}

- (id)simulateConfigurationChange:(id)a3 error:(id *)a4
{
  v4 = [(DSPProcessor *)self doNegotiateConfigurationChange:a3 simulate:1 error:a4];

  return v4;
}

- (void)dealloc
{
  [(DSPProcessor *)self unregisterExternalNotifications];
  remoteProcessingBlockItem = self->_remoteProcessingBlockItem;
  if (remoteProcessingBlockItem)
  {
    v4 = [(RPBItem *)remoteProcessingBlockItem superHost];
    [v4 removeItem:self->_remoteProcessingBlockItem];
  }

  if (self->_remoteProcessingBlockHost)
  {
    v5 = [MEMORY[0x277D46130] sharedInstance];
    [v5 removeHost:self->_remoteProcessingBlockHost];
  }

  v6 = get_adm_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223B4A000, v6, OS_LOG_TYPE_DEFAULT, "DSPProcessor destroyed", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = DSPProcessor;
  [(DSPProcessor *)&v7 dealloc];
}

- (DSPProcessor)initWithHostDescription:(id)a3 hostCallback:(id)a4 systemConfiguration:(SystemConfiguration *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = DSPProcessor;
  v11 = [(DSPProcessor *)&v18 init];
  if (v11)
  {
    v12 = [v9 copy];
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    if ((adm::utility::convertFromDictionary(v9, v11 + 2, v14) & 1) == 0)
    {
      v15 = get_adm_log_object();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_223B4A000, v15, OS_LOG_TYPE_ERROR, "Failed to convert the host description dictionary. Proceeding without it", buf, 2u);
      }
    }

    adm::SystemConfiguration::operator=((v11 + 64), a5);
    std::optional<adm::graph::GraphBuilder>::emplace[abi:ne200100]<adm::SystemConfiguration &,adm::HostDescription &,void>((v11 + 328), (v11 + 64), v11 + 1);
    std::optional<adm::graph::NodeManager>::emplace[abi:ne200100]<adm::SystemConfiguration &,void>(v11 + 81, (v11 + 64));
  }

  [0 dumpDiagnosticsWithNSObject:v9 name:@"HostDescription"];

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

- (uint64_t)initWithHostDescription:hostCallback:systemConfiguration:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z73-[DSPProcessor initWithHostDescription:hostCallback:systemConfiguration:]E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithHostDescription:hostCallback:systemConfiguration:
{

  JUMPOUT(0x223DF43A0);
}

- (id)initWithHostDescription:hostCallback:systemConfiguration:
{
  *a2 = &unk_28371AAF8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (void)disconnectRemoteProcessingBlockServer:(id)a3 host:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_remoteProcessingBlockItem)
  {
    [v6 removeItem:?];
    remoteProcessingBlockItem = v7->_remoteProcessingBlockItem;
    v7->_remoteProcessingBlockItem = 0;
  }

  if (v7->_remoteProcessingBlockHost)
  {
    [v10 removeHost:?];
    remoteProcessingBlockHost = v7->_remoteProcessingBlockHost;
    v7->_remoteProcessingBlockHost = 0;
  }

  objc_sync_exit(v7);
}

- (void)connectRemoteProcessingBlockServer:(id)a3 host:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (!v7->_remoteProcessingBlockItem)
  {
    p_hostDescription = &v7->_hostDescription;
    if (*(&v7->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
    {
      p_hostDescription = p_hostDescription->__data_;
    }

    p_var0 = &v7->_hostDescription.var0;
    if (v7->_anon_30[15] < 0)
    {
      p_var0 = *p_var0;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %s", p_hostDescription, p_var0];
    v11 = objc_alloc(MEMORY[0x277D46118]);
    v12 = [v11 initWithName:v10 inputs:*MEMORY[0x277CBEBE8] outputs:*MEMORY[0x277CBEBE8]];
    remoteProcessingBlockItem = v7->_remoteProcessingBlockItem;
    v7->_remoteProcessingBlockItem = v12;

    [(RPBItem *)v7->_remoteProcessingBlockItem setUserInfo:v7->_nsDescription error:0];
    [v6 addItem:v7->_remoteProcessingBlockItem];
    v14 = [objc_alloc(MEMORY[0x277D46110]) initWithName:v10];
    remoteProcessingBlockHost = v7->_remoteProcessingBlockHost;
    v7->_remoteProcessingBlockHost = v14;

    activeConfiguration = v7->_activeConfiguration;
    if (activeConfiguration)
    {
      [(RPBHost *)v7->_remoteProcessingBlockHost setUserInfo:activeConfiguration error:0];
    }

    [v17 addHost:v7->_remoteProcessingBlockHost toItem:v7->_remoteProcessingBlockItem];
  }

  objc_sync_exit(v7);
}

@end