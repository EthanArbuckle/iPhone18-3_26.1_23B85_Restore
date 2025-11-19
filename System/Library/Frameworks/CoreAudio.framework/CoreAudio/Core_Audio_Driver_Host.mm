@interface Core_Audio_Driver_Host
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (Core_Audio_Driver_Host)init;
- (id).cxx_construct;
- (id)init_with_delegate:(id)a3;
- (int)create_device:(id)a3 client_info:(const AudioServerPlugInClientInfo *)a4 out_object_id:(unsigned int *)a5;
- (int)get_property_data:(Driver_Property_Identity *)a3 qualifier_data_size:(unsigned int)a4 qualifier_data:(const void *)a5 data_size:(unsigned int)a6 out_data_size:(unsigned int *)a7 out_data:(void *)a8;
- (int)get_property_data_size:(Driver_Property_Identity *)a3 qualifier_data_size:(unsigned int)a4 qualifier_data:(const void *)a5 out_size:(unsigned int *)a6;
- (int)has_property:(Driver_Property_Identity *)a3 out_has_property:(char *)a4;
- (int)initialize_driver:(id)a3;
- (int)is_property_settable:(Driver_Property_Identity *)a3 out_settable:(char *)a4;
- (int)register_buffer:(id)a3;
- (int)set_property_data:(Driver_Property_Identity *)a3 qualifier_data_size:(unsigned int)a4 qualifier_data:(const void *)a5 data_size:(unsigned int)a6 data:(const void *)a7;
- (int)unregister_buffer:(id)a3;
- (shared_ptr<Property_Type_Info>)m_property_type_info;
- (void)copy_storage_settings:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)delete_storage_settings:(id)a3 reply:(id)a4;
- (void)retain_reply_for_process_boost;
- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)a3;
- (void)set_invalidation_handler:(function<void)(;
- (void)write_storage_settings:(id)a3 storage_data:(id)a4 reply:(id)a5;
@end

@implementation Core_Audio_Driver_Host

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  return self;
}

- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  self->_m_custom_property_type_cache.__ptr_ = v4;
  self->_m_custom_property_type_cache.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<Property_Type_Info>)m_property_type_info
{
  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  *v2 = self->_m_custom_property_type_cache.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (int)set_property_data:(Driver_Property_Identity *)a3 qualifier_data_size:(unsigned int)a4 qualifier_data:(const void *)a5 data_size:(unsigned int)a6 data:(const void *)a7
{
  v26 = 2003329396;
  v13 = objc_autoreleasePoolPush();
  v14 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3321888768;
  v25[2] = __94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data___block_invoke;
  v25[3] = &__block_descriptor_40_ea8_32c108_ZTSKZ94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data__E4__42_e17_v16__0__NSError_8l;
  v25[4] = &v26;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v25];

  if (v15)
  {
    [(Core_Audio_Driver_Host *)self m_property_type_info];
    property_data_and_qualifier_type_code = Property_Type_Info::get_property_data_and_qualifier_type_code(v23[0], a3->var0, a3->var2.mSelector);
    if (v23[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23[1]);
    }

    if (a5)
    {
      if (((qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)] | qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]) & 0x100000000) != 0)
      {
        v17 = LODWORD(qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)]) | LODWORD(qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]);
      }

      else
      {
        v17 = a4;
      }

      a5 = AMCP::HAL::pack_property_data(SHIDWORD(property_data_and_qualifier_type_code), v17, a5);
    }

    if (property_data_and_qualifier_type_code > 0x12)
    {
      v18 = 0x100000004;
    }

    else
    {
      v18 = qword_1DE7962A0[property_data_and_qualifier_type_code & 0x1F] | qword_1DE796208[property_data_and_qualifier_type_code & 0x1F];
    }

    if ((v18 & 0x100000000) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = a6;
    }

    v20 = AMCP::HAL::pack_property_data(property_data_and_qualifier_type_code, v19, a7);
    *v23 = *&a3->var0;
    mElement = a3->var2.mElement;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3321888768;
    v22[2] = __94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data___block_invoke_159;
    v22[3] = &__block_descriptor_40_ea8_32c108_ZTSKZ94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data__E4__43_e8_v12__0i8l;
    v22[4] = &v26;
    [v15 set_property_data:v23 qualifier:a5 data:v20 reply:v22];
  }

  objc_autoreleasePoolPop(v13);
  return v26;
}

- (int)get_property_data:(Driver_Property_Identity *)a3 qualifier_data_size:(unsigned int)a4 qualifier_data:(const void *)a5 data_size:(unsigned int)a6 out_data_size:(unsigned int *)a7 out_data:(void *)a8
{
  v32[3] = *MEMORY[0x1E69E9840];
  v31 = 2003329396;
  v15 = objc_autoreleasePoolPush();
  v16 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3321888768;
  v30[2] = __112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data___block_invoke;
  v30[3] = &__block_descriptor_40_ea8_32c127_ZTSKZ112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data__E4__40_e17_v16__0__NSError_8l;
  v30[4] = &v31;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v30];

  if (v17)
  {
    v26 = v15;
    [(Core_Audio_Driver_Host *)self m_property_type_info];
    property_data_and_qualifier_type_code = Property_Type_Info::get_property_data_and_qualifier_type_code(v28[0], a3->var0, a3->var2.mSelector);
    if (v28[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28[1]);
    }

    if (a5)
    {
      if (((qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)] | qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]) & 0x100000000) != 0)
      {
        v19 = LODWORD(qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)]) | LODWORD(qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]);
      }

      else
      {
        v19 = a4;
      }

      a5 = AMCP::HAL::pack_property_data(SHIDWORD(property_data_and_qualifier_type_code), v19, a5);
    }

    if (property_data_and_qualifier_type_code > 0x12)
    {
      v20 = 0x100000004;
    }

    else
    {
      v20 = qword_1DE7962A0[property_data_and_qualifier_type_code & 0x1F] | qword_1DE796208[property_data_and_qualifier_type_code & 0x1F];
    }

    if ((v20 & 0x100000000) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = a6;
    }

    v32[0] = 0;
    *v28 = *&a3->var0;
    mElement = a3->var2.mElement;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3321888768;
    v27[2] = __112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data___block_invoke_152;
    v27[3] = &__block_descriptor_48_ea8_32c127_ZTSKZ112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data__E4__41_e19_v20__0i8__NSData_12l;
    v27[4] = &v31;
    v27[5] = v32;
    [v17 get_property_data:v28 qualifier:a5 data_size:v21 reply:v27];
    if (!v31)
    {
      v22 = v32[0];
      if (v32[0])
      {
        *a7 = a6;
        v31 = AMCP::HAL::unpack_property_data(v22, property_data_and_qualifier_type_code, a7, a8);
        if (a3->var2.mSelector == 1668641652)
        {
          v23 = *a7;
          [(Core_Audio_Driver_Host *)self m_property_type_info];
          Property_Type_Info::add_custom_properties(v28[0], a3->var0, v23 / 0xCuLL, a8);
          v15 = v26;
          if (v28[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28[1]);
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v15);
  result = v31;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)get_property_data_size:(Driver_Property_Identity *)a3 qualifier_data_size:(unsigned int)a4 qualifier_data:(const void *)a5 out_size:(unsigned int *)a6
{
  v22 = 2003329396;
  v23 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3321888768;
  v21[2] = __93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size___block_invoke;
  v21[3] = &__block_descriptor_40_ea8_32c107_ZTSKZ93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size__E4__38_e17_v16__0__NSError_8l;
  v21[4] = &v22;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v21];

  if (v13)
  {
    [(Core_Audio_Driver_Host *)self m_property_type_info];
    property_qualifier_type_code = Property_Type_Info::get_property_qualifier_type_code(v19[0], a3->var0, a3->var2.mSelector);
    if (v19[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19[1]);
    }

    if (a5)
    {
      if (((qword_1DE7962A0[property_qualifier_type_code] | qword_1DE796208[property_qualifier_type_code]) & 0x100000000) != 0)
      {
        v15 = LODWORD(qword_1DE7962A0[property_qualifier_type_code]) | LODWORD(qword_1DE796208[property_qualifier_type_code]);
      }

      else
      {
        v15 = a4;
      }

      a5 = AMCP::HAL::pack_property_data(property_qualifier_type_code, v15, a5);
    }

    *v19 = *&a3->var0;
    mElement = a3->var2.mElement;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = __93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size___block_invoke_147;
    v18[3] = &__block_descriptor_48_ea8_32c107_ZTSKZ93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size__E4__39_e11_v16__0i8I12l;
    v18[4] = &v22;
    v18[5] = &v23;
    [v13 get_property_data_size:v19 qualifier:a5 reply:v18];

    v16 = v23;
  }

  else
  {
    v16 = 0;
  }

  *a6 = v16;

  objc_autoreleasePoolPop(v11);
  return v22;
}

- (int)is_property_settable:(Driver_Property_Identity *)a3 out_settable:(char *)a4
{
  v17 = 0;
  v16 = 2003329396;
  v7 = objc_autoreleasePoolPush();
  v8 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __60__Core_Audio_Driver_Host_is_property_settable_out_settable___block_invoke;
  v15[3] = &__block_descriptor_40_ea8_32c74_ZTSKZ60__Core_Audio_Driver_Host_is_property_settable_out_settable__E4__36_e17_v16__0__NSError_8l;
  v15[4] = &v16;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v15];

  if (v9)
  {
    v13 = *&a3->var0;
    mElement = a3->var2.mElement;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = __60__Core_Audio_Driver_Host_is_property_settable_out_settable___block_invoke_141;
    v12[3] = &__block_descriptor_48_ea8_32c74_ZTSKZ60__Core_Audio_Driver_Host_is_property_settable_out_settable__E4__37_e11_v16__0i8C12l;
    v12[4] = &v16;
    v12[5] = &v17;
    [v9 is_property_settable:&v13 reply:v12];
    v10 = v17;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;

  objc_autoreleasePoolPop(v7);
  return v16;
}

- (int)has_property:(Driver_Property_Identity *)a3 out_has_property:(char *)a4
{
  v15 = a4;
  v14 = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __56__Core_Audio_Driver_Host_has_property_out_has_property___block_invoke;
  v13[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_has_property_out_has_property__E4__34_e17_v16__0__NSError_8l;
  v13[4] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];

  if (v8)
  {
    v11 = *&a3->var0;
    mElement = a3->var2.mElement;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __56__Core_Audio_Driver_Host_has_property_out_has_property___block_invoke_135;
    v10[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_has_property_out_has_property__E4__35_e8_v12__0C8l;
    v10[4] = &v15;
    [v8 has_property:&v11 reply:v10];
  }

  objc_autoreleasePoolPop(v6);
  return v14;
}

- (int)unregister_buffer:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __44__Core_Audio_Driver_Host_unregister_buffer___block_invoke;
  v12[3] = &__block_descriptor_40_ea8_32c58_ZTSKZ44__Core_Audio_Driver_Host_unregister_buffer__E4__32_e17_v16__0__NSError_8l;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  if (v7)
  {
    v8 = [Core_Audio_XPC_Raw_Transporter object:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __44__Core_Audio_Driver_Host_unregister_buffer___block_invoke_130;
    v11[3] = &__block_descriptor_40_ea8_32c58_ZTSKZ44__Core_Audio_Driver_Host_unregister_buffer__E4__33_e8_v12__0i8l;
    v11[4] = &v13;
    [v7 unregister_io_buffer:v8 reply:v11];
  }

  objc_autoreleasePoolPop(v5);
  v9 = v13;

  return v9;
}

- (int)register_buffer:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __42__Core_Audio_Driver_Host_register_buffer___block_invoke;
  v12[3] = &__block_descriptor_40_ea8_32c56_ZTSKZ42__Core_Audio_Driver_Host_register_buffer__E4__30_e17_v16__0__NSError_8l;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  if (v7)
  {
    v8 = [Core_Audio_XPC_Raw_Transporter object:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __42__Core_Audio_Driver_Host_register_buffer___block_invoke_125;
    v11[3] = &__block_descriptor_40_ea8_32c56_ZTSKZ42__Core_Audio_Driver_Host_register_buffer__E4__31_e8_v12__0i8l;
    v11[4] = &v13;
    [v7 register_io_buffer:v8 reply:v11];
  }

  objc_autoreleasePoolPop(v5);
  v9 = v13;

  return v9;
}

- (void)retain_reply_for_process_boost
{
  v2 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = __56__Core_Audio_Driver_Host_retain_reply_for_process_boost__block_invoke;
  v5[3] = &__block_descriptor_33_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_retain_reply_for_process_boost_E4__28_e17_v16__0__NSError_8l;
  v3 = [v2 remoteObjectProxyWithErrorHandler:v5];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3321888768;
    v4[2] = __56__Core_Audio_Driver_Host_retain_reply_for_process_boost__block_invoke_121;
    v4[3] = &__block_descriptor_33_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_retain_reply_for_process_boost_E4__29_e5_v8__0l;
    [v3 retain_reply_for_process_boost:v4];
  }
}

- (int)create_device:(id)a3 client_info:(const AudioServerPlugInClientInfo *)a4 out_object_id:(unsigned int *)a5
{
  v8 = a3;
  v20 = a5;
  v19 = 2003329396;
  v9 = objc_autoreleasePoolPush();
  v10 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = __66__Core_Audio_Driver_Host_create_device_client_info_out_object_id___block_invoke;
  v18[3] = &__block_descriptor_40_ea8_32c80_ZTSKZ66__Core_Audio_Driver_Host_create_device_client_info_out_object_id__E4__14_e17_v16__0__NSError_8l;
  v18[4] = &v19;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v18];

  mClientID = a4->mClientID;
  mProcessID = a4->mProcessID;
  v14 = a4->mIsNativeEndian != 0;
  mBundleID = a4->mBundleID;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = __66__Core_Audio_Driver_Host_create_device_client_info_out_object_id___block_invoke_89;
  v17[3] = &__block_descriptor_48_ea8_32c80_ZTSKZ66__Core_Audio_Driver_Host_create_device_client_info_out_object_id__E4__15_e11_v16__0i8I12l;
  v17[4] = &v19;
  v17[5] = &v20;
  [v11 create_device:v8 client_id:mClientID process_id:mProcessID is_native_endianess:v14 bundle_id:mBundleID reply:v17];

  objc_autoreleasePoolPop(v9);
  LODWORD(v9) = v19;

  return v9;
}

- (void)set_invalidation_handler:(function<void)(
{
  v6 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a3);
  [(Core_Audio_Driver_Host *)self setM_invalidation_handler:v5];
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (int)initialize_driver:(id)a3
{
  v4 = a3;
  v29 = 2003329396;
  v5 = objc_autoreleasePoolPush();
  v6 = [(Core_Audio_Driver_Host *)self driver_endpoint];

  if (!v6)
  {
    [(Core_Audio_Driver_Host *)self setDriver_endpoint:v4];
  }

  v7 = [(Core_Audio_Driver_Host *)self connection_to_driver];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696B0B8]);
    v9 = [(Core_Audio_Driver_Host *)self driver_endpoint];
    v10 = [v8 initWithListenerEndpoint:v9];
    [(Core_Audio_Driver_Host *)self setConnection_to_driver:v10];

    v11 = [(Core_Audio_Driver_Host *)self connection_to_driver];

    if (v11)
    {
      v12 = MEMORY[0x1E696B0D0];
      v13 = [(Core_Audio_Driver_Host *)self driver_protocol];
      v14 = [v12 interfaceWithProtocol:v13];
      v15 = [(Core_Audio_Driver_Host *)self connection_to_driver];
      [v15 setRemoteObjectInterface:v14];

      v16 = self;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __44__Core_Audio_Driver_Host_initialize_driver___block_invoke;
      v27[3] = &unk_1E8678318;
      v17 = v16;
      v28 = v17;
      v18 = [(Core_Audio_Driver_Host *)v17 connection_to_driver];
      [v18 setInvalidationHandler:v27];

      v19 = [(Core_Audio_Driver_Host *)v17 connection_to_driver];
      [v19 resume];
    }
  }

  v20 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3321888768;
  v26[2] = __44__Core_Audio_Driver_Host_initialize_driver___block_invoke_2;
  v26[3] = &__block_descriptor_33_ea8_32c57_ZTSKZ44__Core_Audio_Driver_Host_initialize_driver__E3__4_e17_v16__0__NSError_8l;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v26];

  if (v21)
  {
    v22 = [(Core_Audio_Driver_Host *)self endpoint];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3321888768;
    v25[2] = __44__Core_Audio_Driver_Host_initialize_driver___block_invoke_63;
    v25[3] = &__block_descriptor_40_ea8_32c57_ZTSKZ44__Core_Audio_Driver_Host_initialize_driver__E3__5_e8_v12__0i8l;
    v25[4] = &v29;
    [v21 initialize:v22 reply:v25];
  }

  objc_autoreleasePoolPop(v5);
  v23 = v29;

  return v23;
}

- (void)delete_storage_settings:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(Core_Audio_Driver_Host *)self delegate];
  v8 = [v7 delete_storage_settings:v9];

  v6[2](v6, v8);
}

- (void)copy_storage_settings:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(Core_Audio_Driver_Host *)self delegate];
  v11 = [v8 copy_storage_settings:v6];
  cf = v9;

  v10 = AMCP::HAL::pack_property_data(15, 8u, &cf);
  v7[2](v7, v11, v10);
  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)write_storage_settings:(id)a3 storage_data:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13 = 8;
  cf = 0;
  AMCP::HAL::unpack_property_data(a4, 15, &v13, &cf);
  v10 = [(Core_Audio_Driver_Host *)self delegate];
  v11 = [v10 write_storage_settings:v8 storage_data:cf];

  if (cf)
  {
    CFRelease(cf);
  }

  v9[2](v9, v11);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696B0D0];
  v7 = [(Core_Audio_Driver_Host *)self driver_host_protocol];
  v8 = [v6 interfaceWithProtocol:v7];
  [v5 setExportedInterface:v8];

  [v5 setExportedObject:self];
  [v5 setInterruptionHandler:&__block_literal_global_6467];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__Core_Audio_Driver_Host_listener_shouldAcceptNewConnection___block_invoke_2;
  v10[3] = &unk_1E8678318;
  v10[4] = self;
  [v5 setInvalidationHandler:v10];
  [v5 resume];
  [(Core_Audio_Driver_Host *)self setConnection_from_driver:v5];

  return 1;
}

- (void)dealloc
{
  connection_to_driver = self->_connection_to_driver;
  if (connection_to_driver)
  {
    [(NSXPCConnection *)connection_to_driver invalidate];
    v4 = self->_connection_to_driver;
    self->_connection_to_driver = 0;
  }

  connection_from_driver = self->_connection_from_driver;
  if (connection_from_driver)
  {
    [(NSXPCConnection *)connection_from_driver invalidate];
    v6 = self->_connection_from_driver;
    self->_connection_from_driver = 0;
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    v8 = self->_listener;
    self->_listener = 0;
  }

  delegate = self->_delegate;
  if (delegate)
  {
    self->_delegate = 0;
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    self->_endpoint = 0;
  }

  v11.receiver = self;
  v11.super_class = Core_Audio_Driver_Host;
  [(Core_Audio_Driver_Host *)&v11 dealloc];
}

- (id)init_with_delegate:(id)a3
{
  v5 = a3;
  v6 = [(Core_Audio_Driver_Host *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

- (Core_Audio_Driver_Host)init
{
  v8.receiver = self;
  v8.super_class = Core_Audio_Driver_Host;
  v2 = [(Core_Audio_Driver_Host *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v5 = [(NSXPCListener *)v2->_listener endpoint];
    endpoint = v2->_endpoint;
    v2->_endpoint = v5;

    objc_storeStrong(&v2->_driver_protocol, &unk_1F599BDF0);
    objc_storeStrong(&v2->_driver_host_protocol, &unk_1F599AAB0);
    operator new();
  }

  return 0;
}

@end