@interface ACICameraProvider
- (ACICameraProvider)initWithStream:(void *)stream;
- (id).cxx_construct;
- (id)propertyForKey:(id)key;
- (int)registerListener:(id)listener;
- (int)start;
- (int)stop;
- (int)unregisterListener:(id)listener;
- (void)handleNewData:(void *)data from:(id)from;
@end

@implementation ACICameraProvider

- (ACICameraProvider)initWithStream:(void *)stream
{
  v4 = [(ACICameraProvider *)self init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    listeners = v4->_listeners;
    v4->_listeners = array;

    aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::setPtr(&v4->_stream, stream);
    v4->_state = 0;
    aci::ACIObjectSP<aci::camera::ProviderListener,ACICameraProvider * {__strong}>(v4);
  }

  return 0;
}

- (void)handleNewData:(void *)data from:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  if (((*(*data + 64))(data, a2) & 1) == 0)
  {
    v8 = _aciLogGeneral();
    if (!os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LOWORD(v23.value) = 0;
    v15 = "[ACIVERIFY]DataGeneric expected!";
    goto LABEL_22;
  }

  v6 = *(data + 6);
  if (!v6)
  {
    v8 = _aciLogGeneral();
    if (!os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LOWORD(v23.value) = 0;
    v15 = "[ACIVERIFY]Generic payload is empty!";
LABEL_22:
    p_super = &v8->super.super;
    v17 = 2;
    goto LABEL_16;
  }

  v7 = CFGetTypeID(*(data + 6));
  if (v7 != CVPixelBufferGetTypeID())
  {
    v8 = _aciLogGeneral();
    if (!os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(v23.value) = 138412290;
    *(&v23.value + 4) = CFCopyTypeIDDescription(v7);
    v15 = "The data type %@ not supported";
    p_super = &v8->super.super;
    v17 = 12;
LABEL_16:
    _os_log_impl(&dword_23C3F5000, p_super, OS_LOG_TYPE_ERROR, v15, &v23, v17);
    goto LABEL_17;
  }

  v8 = self->_listeners;
  objc_sync_enter(v8);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_listeners;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v14 = mach_continuous_time();
          CMClockMakeHostTimeFromSystemUnits(&v23, v14);
          [v13 pixelbufferCallback:self buffer:v6 time:&v23 metadata:{0, v19}];
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  Source = aci::ComponentGraph::getSource(*(self->_stream._ptr + 14));
  if (Source && (v6 = *(Source + 200)) != 0)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      uTF8String = [keyCopy UTF8String];
      v10 = aci::String::stringWithCString(uTF8String, v9);
      v11 = v10;
      v13 = v10;
      if (v10)
      {
        aci::Object::retain(v10);
      }

      aci::Dictionary::objectForKey(v7, v11);
      v7 = aci2nsObject();
      aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&v13);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)registerListener:(id)listener
{
  v11 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  if ([(NSMutableArray *)self->_listeners containsObject:listenerCopy])
  {
    v6 = _aciLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = listenerCopy;
      _os_log_impl(&dword_23C3F5000, v6, OS_LOG_TYPE_DEFAULT, "%@ listener already registered!", &v9, 0xCu);
    }
  }

  else
  {
    [(NSMutableArray *)self->_listeners addObject:listenerCopy];
  }

  objc_sync_exit(v5);

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)unregisterListener:(id)listener
{
  v11 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  if (([(NSMutableArray *)self->_listeners containsObject:listenerCopy]& 1) != 0)
  {
    [(NSMutableArray *)self->_listeners removeObject:listenerCopy];
  }

  else
  {
    v6 = _aciLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = listenerCopy;
      _os_log_impl(&dword_23C3F5000, v6, OS_LOG_TYPE_DEFAULT, "%@ listener not registered!", &v9, 0xCu);
    }
  }

  objc_sync_exit(v5);

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)start
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    CString = aci::String::getCString(*(self->_stream._ptr + 15));
    v11 = 136315138;
    *v12 = CString;
    _os_log_impl(&dword_23C3F5000, v3, OS_LOG_TYPE_DEFAULT, "ACICameraProvider::start key: %s", &v11, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_state == 1)
  {
    v6 = 0;
  }

  else
  {
    selfCopy->_state = 1;
    v6 = (*(*selfCopy->_stream._ptr + 88))(selfCopy->_stream._ptr);
    if (v6)
    {
      selfCopy->_state = 0;
    }
  }

  objc_sync_exit(selfCopy);

  v7 = _aciLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = aci::String::getCString(*(selfCopy->_stream._ptr + 15));
    v11 = 67109378;
    v12[0] = v6;
    LOWORD(v12[1]) = 2080;
    *(&v12[1] + 2) = v8;
    _os_log_impl(&dword_23C3F5000, v7, OS_LOG_TYPE_DEFAULT, "ACICameraProvider::start ret(%d) key: %s", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)stop
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    CString = aci::String::getCString(*(self->_stream._ptr + 15));
    v11 = 136315138;
    *v12 = CString;
    _os_log_impl(&dword_23C3F5000, v3, OS_LOG_TYPE_DEFAULT, "ACICameraProvider::stop key: %s", &v11, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_state)
  {
    selfCopy->_state = 0;
    v6 = (*(*selfCopy->_stream._ptr + 64))(selfCopy->_stream._ptr);
    if (v6)
    {
      selfCopy->_state = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  v7 = _aciLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = aci::String::getCString(*(selfCopy->_stream._ptr + 15));
    v11 = 67109378;
    v12[0] = v6;
    LOWORD(v12[1]) = 2080;
    *(&v12[1] + 2) = v8;
    _os_log_impl(&dword_23C3F5000, v7, OS_LOG_TYPE_DEFAULT, "ACICameraProvider::stop ret(%d) key: %s", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  return self;
}

@end