uint64_t aci::CVBufferDummyFactory::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::CVBufferDummyFactory::classTypeInfo(void)::ti)
  {
    return MEMORY[0x282137690]();
  }

  return result;
}

uint64_t aci::CVBufferDummyFactory::freeData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  return 0;
}

uint64_t aci::CVBufferDummyFactory::acquireData(aci::CVBufferDummyFactory *this, __CVBuffer *a2)
{
  v3 = aci::Factory::acquireData(this);
  *(v3 + 48) = a2;
  if (a2)
  {
    CVBufferRetain(a2);
  }

  return v3;
}

void aci::CVBufferDummyFactory::~CVBufferDummyFactory(aci::Object **this)
{
  *this = (MEMORY[0x277CE47B0] + 16);
  v2 = (this + 3);
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 11);
  std::mutex::~mutex(v2);
}

{
  *this = (MEMORY[0x277CE47B0] + 16);
  v2 = (this + 3);
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 11);
  std::mutex::~mutex(v2);

  JUMPOUT(0x23EED02D0);
}

aci::Object **aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

void aci::DataGeneric<__CVBuffer *,&(CVBufferRetain),&(CVBufferRelease)>::~DataGeneric(uint64_t a1)
{
  aci::DataGeneric<__CVBuffer *,&(CVBufferRetain),&(CVBufferRelease)>::~DataGeneric(a1);

  JUMPOUT(0x23EED02D0);
}

aci::Object **aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::DataGeneric<__CVBuffer *,&(CVBufferRetain),&(CVBufferRelease)>::~DataGeneric(uint64_t a1)
{
  *a1 = &unk_284F03848;
  CVBufferRelease(*(a1 + 48));
  *(a1 + 48) = 0;
  *a1 = MEMORY[0x277CE4788] + 16;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((a1 + 32));
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP((a1 + 16));
  return a1;
}

uint64_t aci::camera::Device::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::camera::Device::classTypeInfo(void)::ti)
  {
    return MEMORY[0x282137668]();
  }

  return result;
}

void aci::camera::Device::Device(aci::camera::Device *this, const char *a2)
{
  v4 = aci::Object::Object(this, 0);
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  *v4 = &unk_284F038A0;
  v4[5] = a2;
  v5 = v4 + 5;
  if (aci::Device::instance)
  {
    (*(*aci::Device::instance + 24))(aci::Device::instance);
    a2 = *v5;
  }

  aci::Device::instance = this;
  v6 = strlen(a2);
  if (strncmp(a2, "cvpSource", v6))
  {
    if (!strncmp(a2, "xpcSource", v6))
    {
      aci::ACIObjectSP<aci::camera::XPCSourceManager>();
    }

    v7 = _aciLogGeneral();
    aci::camera::Device::Device(v7, v5);

    __assert_rtn("Device", "ACICameraManager.mm", 43, "false");
  }

  aci::ACIObjectSP<aci::camera::CVPSourceManager>();
}

void sub_23C3F652C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9, aci::Object *a10)
{
  aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(&a10);
  aci::SP<aci::camera::CVPSourceManager,&(void ACISPRetain<aci::camera::CVPSourceManager>(aci::camera::CVPSourceManager &)),&(void ACISPRelease<aci::camera::CVPSourceManager>(aci::camera::CVPSourceManager &))>::~SP(&a9);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(v11);
  aci::Device::~Device(v10);
  _Unwind_Resume(a1);
}

uint64_t aci::camera::Manager::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::camera::Manager::classTypeInfo(void)::ti)
  {
    return MEMORY[0x282137698]();
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::Manager::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::camera::Manager::classTypeInfo(void)::ti)
  {
    return MEMORY[0x282137698](result);
  }

  return result;
}

void aci::camera::Manager::Manager(aci::camera::Manager *this, const char *a2, char a3)
{
  v5 = (aci::Object::Object(this, 0) + 16);
  aci::Streamer::Streamer(v5);
  *this = &unk_284F038E8;
  *(this + 2) = &unk_284F03948;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 40) = a3;
  if (aci::Manager::instance)
  {
    (*(*aci::Manager::instance + 24))(aci::Manager::instance);
  }

  aci::Manager::instance = this;
  aci::ACIObjectSP<aci::camera::Device,char const*>();
}

void sub_23C3F67E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::camera::XPCProvider,&(void ACISPRetain<aci::camera::XPCProvider>(aci::camera::XPCProvider &)),&(void ACISPRelease<aci::camera::XPCProvider>(aci::camera::XPCProvider &))>::~SP(va);
  aci::SP<aci::camera::XPCProvider,&(void ACISPRetain<aci::camera::XPCProvider>(aci::camera::XPCProvider &)),&(void ACISPRelease<aci::camera::XPCProvider>(aci::camera::XPCProvider &))>::~SP(v4);
  aci::SP<aci::camera::Device,&(void ACISPRetain<aci::camera::Device>(aci::camera::Device &)),&(void ACISPRelease<aci::camera::Device>(aci::camera::Device &))>::~SP(v3);
  *(v2 + 16) = MEMORY[0x277CE47D0] + 16;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP((v2 + 24));
  _Unwind_Resume(a1);
}

aci::Object **aci::camera::Manager::constructStreams(aci::camera::Manager *this)
{
  v1 = *(*(this + 6) + 16);
  v6 = v1;
  if (v1)
  {
    aci::Object::retain(v1);
    (*(*v1 + 56))(v1);
    v2 = (*(*v6 + 72))(v6);
    *buf = v2;
    if (v2)
    {
      aci::Object::retain(v2);
    }

    aci::Array::enumerateObjectsUsingBlock();
    aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(buf);
  }

  else
  {
    v3 = _aciLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23C3F5000, v3, OS_LOG_TYPE_ERROR, "[ACIVERIFY]No source manager found!", buf, 2u);
    }
  }

  return aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(&v6);
}

aci::Dictionary *aci::_ACIDynamicCast<aci::Dictionary,aci::Object>(aci::Dictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Dictionary::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

aci::Object **aci::camera::Manager::constructStreamBySourceProperties(aci::camera::Manager *this, aci::Dictionary *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(this + 6) + 16);
  v9 = v2;
  if (v2)
  {
    aci::Object::retain(v2);
    (*(*v2 + 64))(&v8, v2, a2);
    if (v8)
    {
      operator new();
    }

    v7 = _aciLogGeneral();
    aci::camera::Manager::constructStreamBySourceProperties(v7);
    aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(&v8);
  }

  else
  {
    v4 = _aciLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23C3F5000, v4, OS_LOG_TYPE_ERROR, "[ACIVERIFY]No source manager found!", buf, 2u);
    }
  }

  result = aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(&v9);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C3F6E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9, aci::Object *a10, aci::Object *a11, aci::Object *a12, aci::Object *a13, aci::Object *a14, uint64_t a15, uint64_t a16, aci::Object *a17)
{
  aci::SP<aci::Stream,&(void ACISPRetain<aci::Stream>(aci::Stream &)),&(void ACISPRelease<aci::Stream>(aci::Stream &))>::~SP(&a17);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(&a9);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a10);
  aci::SP<aci::Sink,&(void ACISPRetain<aci::Sink>(aci::Sink &)),&(void ACISPRelease<aci::Sink>(aci::Sink &))>::~SP(&a11);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(&a12);
  aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(&a13);
  aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(&a14);
  _Unwind_Resume(a1);
}

id aci::camera::Manager::availableCameraKeys(aci::Dictionary **this)
{
  aci::Dictionary::allKeys(&v3, this[3]);
  v1 = aci2nsArray();
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(&v3);

  return v1;
}

void sub_23C3F70B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  _Unwind_Resume(a1);
}

uint64_t aci::camera::ProviderListener::castToClass(uint64_t a1, uint64_t a2)
{
  if (a2 != &aci::camera::ProviderListener::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::camera::ProviderListener,aci::Object,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::StreamListenerProtocol>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::camera::ProviderListener::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::camera::ProviderListener::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::camera::ProviderListener,aci::Object,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::StreamListenerProtocol>(result, a2);
  }

  return result;
}

void sub_23C3F71D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::camera::ProviderListener,&(void ACISPRetain<aci::camera::ProviderListener>(aci::camera::ProviderListener &)),&(void ACISPRelease<aci::camera::ProviderListener>(aci::camera::ProviderListener &))>::~SP(va);

  _Unwind_Resume(a1);
}

void sub_23C3F7270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x23EED02D0](v10, 0x1081C40EE4F9096);

  _Unwind_Resume(a1);
}

aci::StreamListenerProtocol *aci::_ACIDynamicCast<aci::StreamListenerProtocol,aci::camera::ProviderListener>(aci::StreamListenerProtocol *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::StreamListenerProtocol::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

void sub_23C3F7788(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23C3F78A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23C3F7E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::camera::Manager,&(void ACISPRetain<aci::camera::Manager>(aci::camera::Manager &)),&(void ACISPRelease<aci::camera::Manager>(aci::camera::Manager &))>::~SP(va);

  _Unwind_Resume(a1);
}

void aci::camera::Device::~Device(aci::Object **this)
{
  *this = &unk_284F038A0;
  v2 = this + 3;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 4);
  *this = (MEMORY[0x277CE4798] + 16);
  aci::SP<aci::Env,&(void ACISPRetain<aci::Env>(aci::Env &)),&(void ACISPRelease<aci::Env>(aci::Env &))>::~SP(v2);
  aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(this + 2);
}

{
  *this = &unk_284F038A0;
  v2 = this + 3;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 4);
  *this = (MEMORY[0x277CE4798] + 16);
  aci::SP<aci::Env,&(void ACISPRetain<aci::Env>(aci::Env &)),&(void ACISPRelease<aci::Env>(aci::Env &))>::~SP(v2);
  aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(this + 2);

  JUMPOUT(0x23EED02D0);
}

void aci::camera::Manager::~Manager(aci::camera::Manager *this)
{
  *this = &unk_284F038E8;
  *(this + 2) = &unk_284F03948;
  aci::SP<aci::camera::XPCProvider,&(void ACISPRetain<aci::camera::XPCProvider>(aci::camera::XPCProvider &)),&(void ACISPRelease<aci::camera::XPCProvider>(aci::camera::XPCProvider &))>::~SP(this + 7);
  aci::SP<aci::camera::Device,&(void ACISPRetain<aci::camera::Device>(aci::camera::Device &)),&(void ACISPRelease<aci::camera::Device>(aci::camera::Device &))>::~SP(this + 6);
  *(this + 2) = MEMORY[0x277CE47D0] + 16;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 3);
}

{
  *this = &unk_284F038E8;
  *(this + 2) = &unk_284F03948;
  aci::SP<aci::camera::XPCProvider,&(void ACISPRetain<aci::camera::XPCProvider>(aci::camera::XPCProvider &)),&(void ACISPRelease<aci::camera::XPCProvider>(aci::camera::XPCProvider &))>::~SP(this + 7);
  aci::SP<aci::camera::Device,&(void ACISPRetain<aci::camera::Device>(aci::camera::Device &)),&(void ACISPRelease<aci::camera::Device>(aci::camera::Device &))>::~SP(this + 6);
  *(this + 2) = MEMORY[0x277CE47D0] + 16;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 3);

  JUMPOUT(0x23EED02D0);
}

void aci::camera::ProviderListener::~ProviderListener(id *this)
{
  objc_destroyWeak(this + 3);
}

{
  objc_destroyWeak(this + 3);

  JUMPOUT(0x23EED02D0);
}

void aci::camera::ProviderListener::onNewData(id *this, aci::Data *a2, aci::String *a3)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained handleNewData:a2 from:@"na"];
}

void aci::Device::~Device(aci::Object **this)
{
  *this = (MEMORY[0x277CE4798] + 16);
  v1 = this + 2;
  aci::SP<aci::Env,&(void ACISPRetain<aci::Env>(aci::Env &)),&(void ACISPRelease<aci::Env>(aci::Env &))>::~SP(this + 3);
  aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(v1);
}

aci::Object **aci::SP<aci::Env,&(void ACISPRetain<aci::Env>(aci::Env &)),&(void ACISPRelease<aci::Env>(aci::Env &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::camera::CVPSourceManager,&(void ACISPRetain<aci::camera::CVPSourceManager>(aci::camera::CVPSourceManager &)),&(void ACISPRelease<aci::camera::CVPSourceManager>(aci::camera::CVPSourceManager &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::SourceManager *aci::_ACIDynamicCast<aci::SourceManager,aci::camera::CVPSourceManager>(aci::SourceManager *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::SourceManager::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

aci::Object **aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::setPtr(aci::Object **a1, aci::Object *this)
{
  v3 = *a1;
  if (v3 != this)
  {
    if (v3)
    {
      aci::Object::release(v3);
    }

    *a1 = this;
    if (this)
    {
      aci::Object::retain(this);
    }
  }

  return a1;
}

aci::Object **aci::SP<aci::camera::XPCSourceManager,&(void ACISPRetain<aci::camera::XPCSourceManager>(aci::camera::XPCSourceManager &)),&(void ACISPRelease<aci::camera::XPCSourceManager>(aci::camera::XPCSourceManager &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::camera::Device,&(void ACISPRetain<aci::camera::Device>(aci::camera::Device &)),&(void ACISPRelease<aci::camera::Device>(aci::camera::Device &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::camera::XPCProvider,&(void ACISPRetain<aci::camera::XPCProvider>(aci::camera::XPCProvider &)),&(void ACISPRelease<aci::camera::XPCProvider>(aci::camera::XPCProvider &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Sink,&(void ACISPRetain<aci::Sink>(aci::Sink &)),&(void ACISPRelease<aci::Sink>(aci::Sink &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Stream,&(void ACISPRetain<aci::Stream>(aci::Stream &)),&(void ACISPRelease<aci::Stream>(aci::Stream &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::camera::ProviderListener,aci::Object,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::StreamListenerProtocol>(uint64_t a1, uint64_t a2)
{
  result = aci::Object::castToClass();
  if (!result)
  {

    return MEMORY[0x282137640](a1 + 16, a2);
  }

  return result;
}

id *aci::camera::ProviderListener::ProviderListener(id *this, ACICameraProvider *a2)
{
  v3 = a2;
  aci::Object::Object(this, 0);
  *this = &unk_284F03990;
  this[2] = &unk_284F039E0;
  objc_initWeak(this + 3, v3);

  return this;
}

aci::Object **aci::SP<aci::camera::ProviderListener,&(void ACISPRetain<aci::camera::ProviderListener>(aci::camera::ProviderListener &)),&(void ACISPRelease<aci::camera::ProviderListener>(aci::camera::ProviderListener &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::camera::Manager,&(void ACISPRetain<aci::camera::Manager>(aci::camera::Manager &)),&(void ACISPRelease<aci::camera::Manager>(aci::camera::Manager &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::camera::CVPSource::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::camera::CVPSource::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376B8]();
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::CVPSource::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::camera::CVPSource::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376B8](result);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::camera::CVPSource::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376B8](result);
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::CVPSource::className(aci::camera::CVPSource *this)
{
  return aci::camera::CVPSource::classTypeInfo(void)::ti;
}

{
  return aci::camera::CVPSource::classTypeInfo(void)::ti;
}

uint64_t aci::camera::CVPSource::CVPSource(uint64_t a1, uint64_t a2, aci::Dictionary *a3)
{
  v5 = aci::Component::Component(a1, a3);
  *v5 = &unk_284F03A08;
  *(v5 + 16) = &unk_284F03A68;
  *(v5 + 120) = &unk_284F03AA8;
  *(v5 + 3608) = a2;
  v6 = aci::Dictionary::objectForKey(*(v5 + 96), "channelId");
  v7 = aci::_ACIDynamicCast<aci::Number,aci::Object>(v6);
  if (v7)
  {
    *(a1 + 3616) = *(v7 + 6);
    v8 = aci::Dictionary::objectForKey(*(a1 + 96), "outputId");
    v9 = aci::_ACIDynamicCast<aci::Number,aci::Object>(v8);
    if (v9)
    {
      *(a1 + 3620) = *(v9 + 6);
      v10 = *(a1 + 3600);
      operator new();
    }

    v13 = _aciLogGeneral();
    aci::camera::CVPSource::CVPSource(v13, &v14);
  }

  else
  {
    v12 = _aciLogGeneral();
    aci::camera::CVPSource::CVPSource(v12, &v14);
  }

  return a1;
}

aci::Number *aci::_ACIDynamicCast<aci::Number,aci::Object>(aci::Number *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Number::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t aci::camera::CVPSource::start(aci::camera::CVPSource *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CString = aci::String::getCString(*(*(this + 25) + 24));
    v4 = *(this + 904);
    v5 = *(this + 905);
    v13 = 136316418;
    v14 = "virtual ACIErrorCode aci::camera::CVPSource::start()";
    v15 = 1024;
    v16 = 30;
    v17 = 2080;
    v18 = CString;
    v19 = 2048;
    v20 = this;
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&dword_23C3F5000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d[%s@%p] ch: %d, output: %d", &v13, 0x32u);
  }

  v6 = *(this + 451);
  v7 = *(this + 904);
  v8 = *(this + 905);
  if (ACICVPDeviceRegisterCallback())
  {
    aci::camera::CVPSource::start(this + 904, this + 905);
LABEL_9:
    result = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  v9 = *(this + 451);
  v10 = *(this + 904);
  if (ACICVPDeviceStartChannel())
  {
    aci::camera::CVPSource::start(this + 904, this + 905);
    goto LABEL_9;
  }

  result = aci::Controller::start((this + 120));
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aci::camera::CVPSource::stop(aci::camera::CVPSource *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CString = aci::String::getCString(*(*(this + 25) + 24));
    v4 = *(this + 904);
    v5 = *(this + 905);
    v11 = 136316418;
    v12 = "virtual ACIErrorCode aci::camera::CVPSource::stop()";
    v13 = 1024;
    v14 = 40;
    v15 = 2080;
    v16 = CString;
    v17 = 2048;
    v18 = this;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_23C3F5000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d[%s@%p] ch: %d, output: %d", &v11, 0x32u);
  }

  v6 = aci::Controller::stop((this + 120));
  v7 = *(this + 451);
  v8 = *(this + 904);
  if (ACICVPDeviceStopChannel())
  {
    aci::camera::CVPSource::stop(this + 904, this);
    v6 = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void aci::camera::CVPSource::~CVPSource(aci::camera::CVPSource *this)
{
  aci::Component::~Component(this);

  JUMPOUT(0x23EED02D0);
}

void aci::Component::~Component(aci::Component *this)
{
  *this = MEMORY[0x277CE47D8] + 16;
  *(this + 2) = MEMORY[0x277CE47D8] + 96;
  *(this + 15) = MEMORY[0x277CE47D8] + 160;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 450);
  std::mutex::~mutex((this + 3536));
  for (i = 0; i != -1664; i -= 104)
  {
    MEMORY[0x23EECFFE0](this + i + 3496);
    std::mutex::~mutex((this + i + 3432));
  }

  v3 = 1664;
  do
  {
    MEMORY[0x23EECFFE0](this + v3 + 168);
    std::mutex::~mutex((this + v3 + 104));
    v3 -= 104;
  }

  while (v3);
  aci::SP<aci::ComponentSpec,&(void ACISPRetain<aci::ComponentSpec>(aci::ComponentSpec &)),&(void ACISPRelease<aci::ComponentSpec>(aci::ComponentSpec &))>::~SP(this + 25);
  *(this + 15) = MEMORY[0x277CE4778] + 16;
  std::recursive_mutex::~recursive_mutex((this + 136));
  *(this + 2) = MEMORY[0x277CE47C0] + 16;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

aci::Object **aci::SP<aci::ComponentSpec,&(void ACISPRetain<aci::ComponentSpec>(aci::ComponentSpec &)),&(void ACISPRelease<aci::ComponentSpec>(aci::ComponentSpec &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xEu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t aci::camera::CVPSourceManager::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::camera::CVPSourceManager::classTypeInfo(void)::ti)
  {
    return MEMORY[0x282137638]();
  }

  return result;
}

aci::camera::CVPSourceManager *aci::camera::CVPSourceManager::CVPSourceManager(aci::camera::CVPSourceManager *this)
{
  *aci::SourceManager::SourceManager(this) = &unk_284F03AF8;
  v2 = MEMORY[0x23EECFD80]();
  *(this + 3) = v2;
  if (!v2)
  {
    v4 = _aciLogGeneral();
    aci::camera::CVPSourceManager::CVPSourceManager(v4);
  }

  return this;
}

void sub_23C3F9018(_Unwind_Exception *a1)
{
  *v1 = MEMORY[0x277CE4780] + 16;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v1 + 16));
  _Unwind_Resume(a1);
}

void aci::camera::CVPSourceManager::discoverSources(aci::camera::CVPSourceManager *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v26 = 0;
  if (!*(this + 3))
  {
    *(this + 3) = MEMORY[0x23EECFD80]();
  }

  v2 = *MEMORY[0x277CE4760];
  if (ACICVPDeviceCopyProperty())
  {
    v3 = 1;
  }

  else
  {
    v3 = v26 == 0;
  }

  if (v3)
  {
    v17 = _aciLogGeneral();
    aci::camera::CVPSourceManager::discoverSources(v17, buf);
    v5 = *buf;
  }

  else
  {
    v4 = _aciLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_23C3F5000, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    [v26 objectForKeyedSubscript:*MEMORY[0x277CE4768]];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v5 = v23 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v7 = *v23;
      v8 = *MEMORY[0x277CE4770];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:v8];
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
          if (v12)
          {
            v13 = *v19;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                *buf = ns2aciDictionary(*(*(&v18 + 1) + 8 * j));
                v15 = *(this + 2);
                aci::Array::addObject();
                aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(buf);
              }

              v12 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
            }

            while (v12);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v6);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C3F9390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::camera::CVPSource,&(void ACISPRetain<aci::camera::CVPSource>(aci::camera::CVPSource &)),&(void ACISPRelease<aci::camera::CVPSource>(aci::camera::CVPSource &))>::~SP(va);
  _Unwind_Resume(a1);
}

void aci::camera::CVPSourceManager::~CVPSourceManager(aci::Object **this)
{
  *this = (MEMORY[0x277CE4780] + 16);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 2);
}

{
  *this = (MEMORY[0x277CE4780] + 16);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 2);

  JUMPOUT(0x23EED02D0);
}

aci::Object **aci::SP<aci::camera::CVPSource,&(void ACISPRetain<aci::camera::CVPSource>(aci::camera::CVPSource &)),&(void ACISPRelease<aci::camera::CVPSource>(aci::camera::CVPSource &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Component *aci::_ACIDynamicCast<aci::Component,aci::camera::CVPSource>(aci::Component *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Component::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

void sub_23C3F9684(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t aci::camera::XPCAccountReceiver::castToClass(uint64_t a1, uint64_t a2)
{
  if (a2 != &aci::camera::XPCAccountReceiver::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::camera::XPCAccountReceiver,aci::Object,aci::ServiceReceiverProtocol>::castToClass<aci::Object,aci::ServiceReceiverProtocol>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::camera::XPCAccountReceiver::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::camera::XPCAccountReceiver::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::camera::XPCAccountReceiver,aci::Object,aci::ServiceReceiverProtocol>::castToClass<aci::Object,aci::ServiceReceiverProtocol>(result, a2);
  }

  return result;
}

aci::camera::XPCAccountReceiver *aci::camera::XPCAccountReceiver::XPCAccountReceiver(aci::camera::XPCAccountReceiver *this, NSXPCListenerEndpoint *a2)
{
  v3 = a2;
  aci::Object::Object(this, 0);
  *this = &unk_284F03B58;
  *(this + 2) = &unk_284F03BB0;
  *(this + 3) = 0;
  v4 = [[ACIXPCAccountReceiver alloc] initWithEndpoint:v3];
  v5 = *(this + 3);
  *(this + 3) = v4;

  return this;
}

void sub_23C3F99C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(va);

  _Unwind_Resume(a1);
}

void sub_23C3F9ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ACIXPCAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

aci::Service *aci::_ACIDynamicCast<aci::Service,aci::Object>(aci::Service *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Service::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

void sub_23C3F9C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);

  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  _Unwind_Resume(a1);
}

void sub_23C3F9F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9, aci::Object *a10, aci::Object *a11)
{
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a9);
  aci::SP<aci::camera::XPCAccountReceiver,&(void ACISPRetain<aci::camera::XPCAccountReceiver>(aci::camera::XPCAccountReceiver &)),&(void ACISPRelease<aci::camera::XPCAccountReceiver>(aci::camera::XPCAccountReceiver &))>::~SP(&a10);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a11);

  _Unwind_Resume(a1);
}

void sub_23C3F9FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x23EED02D0](v10, 0x1081C40EE4F9096);

  _Unwind_Resume(a1);
}

void sub_23C3FA200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, aci::Object *);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(va);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(va1);

  _Unwind_Resume(a1);
}

void sub_23C3FA3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a9);

  _Unwind_Resume(a1);
}

void sub_23C3FA57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a9);

  _Unwind_Resume(a1);
}

void sub_23C3FA730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a9);

  _Unwind_Resume(a1);
}

void sub_23C3FA8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a9);

  _Unwind_Resume(a1);
}

void sub_23C3FAA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a9);

  _Unwind_Resume(a1);
}

void sub_23C3FAC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, aci::Object *a9)
{
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(&a9);

  _Unwind_Resume(a1);
}

void sub_23C3FAF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ACIXPCProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23C3FB11C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23C3FB400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t permissibleClasses(void)
{
  v13 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v13 setWithObjects:{v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

uint64_t aci::camera::XPCService::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::camera::XPCService::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376A0]();
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::XPCService::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::camera::XPCService::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376A0](result);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::camera::XPCService::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376A0](result);
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::XPCService::className(aci::camera::XPCService *this)
{
  return aci::camera::XPCService::classTypeInfo(void)::ti;
}

{
  return aci::camera::XPCService::classTypeInfo(void)::ti;
}

void aci::camera::XPCService::onNewData(aci::camera::XPCService *this, aci::Data *a2, aci::String *a3)
{
  if (((*(*a2 + 64))(a2) & 1) == 0)
  {
    v7 = _aciLogGeneral();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v10 = "[ACIVERIFY]DataGeneric expected!";
LABEL_12:
    _os_log_impl(&dword_23C3F5000, v7, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_5;
  }

  v5 = *(a2 + 6);
  if (!v5)
  {
    v7 = _aciLogGeneral();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v10 = "[ACIVERIFY]Generic payload is empty!";
    goto LABEL_12;
  }

  v6 = CFGetTypeID(v5);
  if (v6 != CVPixelBufferGetTypeID())
  {
    v7 = _aciLogGeneral();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v10 = "[ACIVERIFY]PixelBuffer is expected!";
    goto LABEL_12;
  }

  v7 = CVPixelBufferGetIOSurface(v5);
  v8 = objc_opt_new();
  [v8 setObject:v7 forKeyedSubscript:@"content"];
  v9 = *(this + 17);
  v11 = v8;
  aci::Dictionary::enumerateKeysAndObjectsUsingBlock();

LABEL_5:
}

aci::ServiceReceiverProtocol *aci::_ACIDynamicCast<aci::ServiceReceiverProtocol,aci::Object>(aci::ServiceReceiverProtocol *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::ServiceReceiverProtocol::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t aci::camera::XPCProvider::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::camera::XPCProvider::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376A8]();
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::XPCProvider::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::camera::XPCProvider::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376A8](result);
  }

  return result;
}

aci::camera::XPCProvider *aci::camera::XPCProvider::XPCProvider(aci::camera::XPCProvider *this, aci::Streamer *a2)
{
  v3 = aci::Provider::Provider();
  *v3 = &unk_284F03C20;
  v3[2] = &unk_284F03CD8;
  v3[17] = 0;
  v4 = [[ACIXPCProvider alloc] initWithProvider:this];
  v5 = *(this + 17);
  *(this + 17) = v4;

  return this;
}

void sub_23C3FBE7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::camera::XPCService,&(void ACISPRetain<aci::camera::XPCService>(aci::camera::XPCService &)),&(void ACISPRelease<aci::camera::XPCService>(aci::camera::XPCService &))>::~SP(va);
  _Unwind_Resume(a1);
}

void aci::camera::XPCAccountReceiver::~XPCAccountReceiver(id *this)
{
}

{

  JUMPOUT(0x23EED02D0);
}

void aci::camera::XPCService::~XPCService(aci::camera::XPCService *this)
{
  *this = MEMORY[0x277CE47B8] + 16;
  *(this + 2) = MEMORY[0x277CE47B8] + 104;
  *(this + 15) = MEMORY[0x277CE47B8] + 168;
  aci::SP<aci::Stream,&(void ACISPRetain<aci::Stream>(aci::Stream &)),&(void ACISPRelease<aci::Stream>(aci::Stream &))>::~SP(this + 18);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 17);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 16);
  *(this + 2) = MEMORY[0x277CE47C0] + 16;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

{
  *this = MEMORY[0x277CE47B8] + 16;
  *(this + 2) = MEMORY[0x277CE47B8] + 104;
  *(this + 15) = MEMORY[0x277CE47B8] + 168;
  aci::SP<aci::Stream,&(void ACISPRetain<aci::Stream>(aci::Stream &)),&(void ACISPRelease<aci::Stream>(aci::Stream &))>::~SP(this + 18);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 17);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 16);
  *(this + 2) = MEMORY[0x277CE47C0] + 16;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x23EED02D0);
}

void aci::camera::XPCProvider::~XPCProvider(aci::camera::XPCProvider *this)
{
  *this = MEMORY[0x277CE47C8] + 16;
  *(this + 2) = MEMORY[0x277CE47C8] + 200;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 15);
  *(this + 2) = MEMORY[0x277CE47C0] + 16;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

{

  *this = MEMORY[0x277CE47C8] + 16;
  *(this + 2) = MEMORY[0x277CE47C8] + 200;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 15);
  *(this + 2) = MEMORY[0x277CE47C0] + 16;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x23EED02D0);
}

void aci::Provider::~Provider(aci::Provider *this)
{
  *this = MEMORY[0x277CE47C8] + 16;
  *(this + 2) = MEMORY[0x277CE47C8] + 200;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 15);
  *(this + 2) = MEMORY[0x277CE47C0] + 16;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

uint64_t aci::MetaType<aci::camera::XPCAccountReceiver,aci::Object,aci::ServiceReceiverProtocol>::castToClass<aci::Object,aci::ServiceReceiverProtocol>(uint64_t a1, uint64_t a2)
{
  result = aci::Object::castToClass();
  if (!result)
  {

    return MEMORY[0x282137648](a1 + 16, a2);
  }

  return result;
}

aci::Object **aci::SP<aci::camera::XPCAccountReceiver,&(void ACISPRetain<aci::camera::XPCAccountReceiver>(aci::camera::XPCAccountReceiver &)),&(void ACISPRelease<aci::camera::XPCAccountReceiver>(aci::camera::XPCAccountReceiver &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::Provider,&(void ACISPRetain<aci::Provider>(aci::Provider &)),&(void ACISPRelease<aci::Provider>(aci::Provider &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::Object **aci::SP<aci::camera::XPCService,&(void ACISPRetain<aci::camera::XPCService>(aci::camera::XPCService &)),&(void ACISPRelease<aci::camera::XPCService>(aci::camera::XPCService &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_23C3FC8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t aci::camera::XPCSourceManager::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::camera::XPCSourceManager::classTypeInfo(void)::ti)
  {
    return MEMORY[0x282137638]();
  }

  return result;
}

aci::camera::XPCSourceManager *aci::camera::XPCSourceManager::XPCSourceManager(aci::camera::XPCSourceManager *this)
{
  v2 = aci::SourceManager::SourceManager(this);
  *v2 = &unk_284F03E18;
  v2[3] = 0;
  v3 = [[ACIXPCSourceManager alloc] initWithDelegate:this];
  v4 = *(this + 3);
  *(this + 3) = v3;

  return this;
}

void sub_23C3FCA4C(_Unwind_Exception *a1)
{
  *v1 = MEMORY[0x277CE4780] + 16;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v1 + 16));
  _Unwind_Resume(a1);
}

void aci::camera::XPCSourceManager::discoverSources(id *this)
{
  v2 = [this[3] allServiceProps];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN3aci6camera16XPCSourceManager15discoverSourcesEv_block_invoke;
  v3[3] = &__block_descriptor_40_e25_v32__0__NSString_8Q16_B24l;
  v3[4] = this;
  [v2 enumerateObjectsUsingBlock:v3];
}

void ___ZN3aci6camera16XPCSourceManager15discoverSourcesEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = ns2aciJSONDict(v3);
  v7 = v5;
  if (v5)
  {
    aci::Object::retain(v5);
  }

  v6 = *(v4 + 16);
  aci::Array::addObject();
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(&v7);
}

void sub_23C3FCB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(va);

  _Unwind_Resume(a1);
}

void aci::camera::XPCSourceManager::sourceByProps(id *this, aci::Dictionary *a2)
{
  v2 = [this[3] connection];
  aci::ACIObjectSP<aci::camera::XPCSource,NSXPCConnection * {__strong},aci::Dictionary *>(v2);
}

void sub_23C3FCC20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::camera::XPCSource,&(void ACISPRetain<aci::camera::XPCSource>(aci::camera::XPCSource &)),&(void ACISPRelease<aci::camera::XPCSource>(aci::camera::XPCSource &))>::~SP(va);

  _Unwind_Resume(a1);
}

void sub_23C3FCCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x23EED02D0](v10, 0x10A1C40E1B889C9);

  _Unwind_Resume(a1);
}

void aci::camera::XPCSourceManager::~XPCSourceManager(aci::camera::XPCSourceManager *this)
{
  *this = MEMORY[0x277CE4780] + 16;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 2);
}

{

  *this = MEMORY[0x277CE4780] + 16;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 2);

  JUMPOUT(0x23EED02D0);
}

aci::Object **aci::SP<aci::camera::XPCSource,&(void ACISPRetain<aci::camera::XPCSource>(aci::camera::XPCSource &)),&(void ACISPRelease<aci::camera::XPCSource>(aci::camera::XPCSource &))>::~SP(aci::Object **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

void sub_23C3FD090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ACIXPCController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL aci::camera::XPCSource::handleNewContent(aci::camera::XPCSource *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"content"];

  if (!v4)
  {
    v11 = _aciLogGeneral();
    aci::camera::XPCSource::handleNewContent(v11);
LABEL_10:
    v8 = 0;
    goto LABEL_8;
  }

  v5 = aci::Component::acquireData(this);
  v6 = v5;
  if (!v5 || ((*(*v5 + 64))(v5) & 1) == 0)
  {
    goto LABEL_10;
  }

  pixelBufferOut = 0;
  v7 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v4, 0, &pixelBufferOut);
  v8 = v7 == 0;
  if (v7)
  {
    v12 = _aciLogGeneral();
    aci::camera::XPCSource::handleNewContent(v12);
  }

  else
  {
    v9 = pixelBufferOut;
    *(v6 + 6) = pixelBufferOut;
    if (v9)
    {
      CVBufferRetain(v9);
    }

    aci::Component::write(this, v6);
    aci::Data::relinquish(v6);
  }

LABEL_8:

  return v8;
}

void sub_23C3FD510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23C3FD7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t aci::camera::XPCSource::castToClass(uint64_t result, uint64_t *a2)
{
  if (a2 != &aci::camera::XPCSource::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376B8](result);
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::XPCSource::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::camera::XPCSource::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376B8](result);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::camera::XPCSource::classTypeInfo(void)::ti)
  {
    return MEMORY[0x2821376B8](result);
  }

  return result;
}

uint64_t non-virtual thunk toaci::camera::XPCSource::className(aci::camera::XPCSource *this)
{
  return aci::camera::XPCSource::classTypeInfo(void)::ti;
}

{
  return aci::camera::XPCSource::classTypeInfo(void)::ti;
}

void aci::camera::XPCSource::XPCSource(aci::camera::XPCSource *this, NSXPCConnection *a2, aci::Dictionary *a3)
{
  v5 = a2;
  aci::Component::Component(this, a3);
  *this = &unk_284F03E98;
  *(this + 2) = &unk_284F03EF8;
  *(this + 15) = &unk_284F03F38;
  *(this + 451) = 0;
  v6 = [[ACIXPCController alloc] initWithDelegate:this connection:v5];
  v7 = *(this + 451);
  *(this + 451) = v6;

  v8 = *(this + 450);
  operator new();
}

void sub_23C3FDB44(_Unwind_Exception *a1)
{
  MEMORY[0x23EED02D0](v3, 0x10A1C406DEA3C2ELL);

  aci::Component::~Component(v2);
  _Unwind_Resume(a1);
}

uint64_t aci::camera::XPCSource::start(id *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "virtual ACIErrorCode aci::camera::XPCSource::start()";
    v9 = 1024;
    v10 = 136;
    _os_log_impl(&dword_23C3F5000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d", &v7, 0x12u);
  }

  v3 = [this[451] start];
  if (v3)
  {
    v4 = v3;
    aci::camera::XPCSource::start();
  }

  else
  {
    v4 = aci::Controller::start((this + 15));
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void aci::camera::XPCSource::~XPCSource(id *this)
{

  aci::Component::~Component(this);
}

{

  aci::Component::~Component(this);

  JUMPOUT(0x23EED02D0);
}

uint64_t ___ZN3aci6camera7Manager16constructStreamsEv_block_invoke(uint64_t a1, aci::Dictionary *a2)
{
  v2 = *(a1 + 32);
  v3 = aci::_ACIDynamicCast<aci::Dictionary,aci::Object>(a2);
  if (v3)
  {
    aci::camera::Manager::constructStreamBySourceProperties(v2, v3);
  }

  return 0;
}

void aci::camera::Device::Device(NSObject *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v9 = *a2;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void aci::camera::Manager::constructStreamBySourceProperties(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

aci::camera::CVPSource *aci::camera::CVPSource::OnNewBuffer(aci::camera::CVPSource *this, __CVBuffer *a2, __CVBuffer *a3)
{
  if (this)
  {
    return aci::camera::CVPSource::onNewBuffer(this, a2);
  }

  return this;
}

uint64_t aci::camera::CVPSource::onNewBuffer(aci::camera::CVPSource *this, __CVBuffer *a2)
{
  result = aci::Component::acquireData(this);
  if (result)
  {
    v5 = result;
    result = (*(*result + 64))(result);
    if (result)
    {
      *(v5 + 6) = a2;
      if (a2)
      {
        CVBufferRetain(a2);
      }

      aci::Component::write(this, v5);
      aci::Data::relinquish(v5);
      return 1;
    }
  }

  return result;
}

void aci::camera::CVPSource::CVPSource(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2(&dword_23C3F5000, v4, v5, "[ACIVERIFY]outputId not found props!", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2(&dword_23C3F5000, v4, v5, "[ACIVERIFY]channelId not found props!", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

void aci::camera::CVPSource::start(unsigned int *a1, unsigned int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = *a2;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_23C3F5000, v7, v8, "[ACIVERIFY]Register callback to Output(%d, %d) failed!", v9, v10, v11, v12, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = *a2;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_23C3F5000, v7, v8, "[ACIVERIFY]Start channel(%d, %d) failed!", v9, v10, v11, v12, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void aci::camera::CVPSource::stop(unsigned int *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = *(a2 + 3620);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_23C3F5000, v7, v8, "[ACIVERIFY]Stop channel(%d, %d) failed!", v9, v10, v11, v12, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void aci::camera::CVPSourceManager::CVPSourceManager(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_23C3F5000, a1, OS_LOG_TYPE_ERROR, "[ACIVERIFY]Create CVP Device failed!", v2, 2u);
  }
}

void aci::camera::CVPSourceManager::discoverSources(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C3F5000, a1, OS_LOG_TYPE_ERROR, "[ACIVERIFY]Get device configuration failed!", v4, 2u);
  }

  *a2 = a1;
}

uint64_t ___ZN3aci6camera10XPCService9onNewDataEPNS_4DataEPNS_6StringE_block_invoke(uint64_t a1, uint64_t a2, aci::ServiceReceiverProtocol *a3)
{
  v4 = aci::_ACIDynamicCast<aci::ServiceReceiverProtocol,aci::Object>(a3);
  if (v4)
  {
    (*(*v4 + 16))(v4, *(a1 + 32), 0, 0);
  }

  return 0;
}

uint64_t aci::camera::XPCSource::stop(id *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "virtual ACIErrorCode aci::camera::XPCSource::stop()";
    v10 = 1024;
    v11 = 143;
    _os_log_impl(&dword_23C3F5000, v2, OS_LOG_TYPE_DEFAULT, "%s:%d", &v8, 0x12u);
  }

  v3 = aci::Controller::stop((this + 15));
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [this[451] stop];
    if (v4)
    {
      v7 = _aciLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 67109120;
        LODWORD(v9) = v4;
        _os_log_impl(&dword_23C3F5000, v7, OS_LOG_TYPE_ERROR, "[ACIVERIFY]XPCControler stop failed! errCode: %d", &v8, 8u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void aci::camera::XPCSource::handleNewContent(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void aci::camera::XPCSource::start()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = _aciLogGeneral();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void operator new()
{
    ;
  }
}