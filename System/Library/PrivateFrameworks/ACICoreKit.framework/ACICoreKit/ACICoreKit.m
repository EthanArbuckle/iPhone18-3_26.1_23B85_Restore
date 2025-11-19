uint64_t aci::Array::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Array::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

uint64_t aci::Array::Array(uint64_t a1, uint64_t a2, unint64_t a3)
{
  aci::Object::Object(a1);
  *v6 = &unk_284F05418;
  v6[2] = 0;
  v7 = (v6 + 2);
  v6[3] = 0;
  v6[4] = 0;
  std::vector<aci::Object *>::__init_with_size[abi:ne200100]<aci::Object * const*,aci::Object * const*>((v6 + 2), a2, a2 + 8 * a3, a3);
  v8 = *v7;
  v9 = *(a1 + 24);
  while (v8 != v9)
  {
    aci::Object::retain(*v8++);
  }

  return a1;
}

void sub_23C4048DC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void aci::Array::~Array(aci::Array *this)
{
  *this = &unk_284F05418;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      aci::Object::release(*v2++);
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  *(this + 3) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

{
  aci::Array::~Array(this);

  JUMPOUT(0x23EED06D0);
}

atomic_uint *aci::Array::removeAllObjects(atomic_uint *this)
{
  v1 = this;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      this = aci::Object::release(v4);
    }

    while (v2 != v3);
    v2 = *(v1 + 2);
  }

  *(v1 + 3) = v2;
  return this;
}

uint64_t aci::Array::containsObject(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v2 + 8;
  do
  {
    result = (*(**(v5 - 8) + 32))(*(v5 - 8), a2);
    if (result)
    {
      break;
    }

    v7 = v5 == v3;
    v5 += 8;
  }

  while (!v7);
  return result;
}

void aci::Array::addObject(aci::Array *this, aci::Object *a2)
{
  aci::Object::retain(a2);
  v5 = *(this + 3);
  v4 = *(this + 4);
  if (v5 >= v4)
  {
    v7 = *(this + 2);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<aci::Object *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<aci::Object *>>(this + 16, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(this + 2);
    v14 = *(this + 3) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v6;
    *(this + 4) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 3) = v6;
}

uint64_t aci::Array::enumerateObjectsUsingBlock(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24) - *(result + 16);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 >> 3;
    v7 = 1;
    do
    {
      result = (*(a2 + 16))(a2, *(*(v4 + 16) + 8 * v5), v7 - 1);
      if (result)
      {
        break;
      }

      v5 = v7++;
    }

    while (v6 > v5);
  }

  return result;
}

{
  v2 = *(result + 24) - *(result + 16);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 >> 3;
    v7 = 1;
    do
    {
      result = std::function<BOOL ()(aci::Object *,unsigned int)>::operator()(a2, *(*(v4 + 16) + 8 * v5), v7 - 1);
      if (result)
      {
        break;
      }

      v5 = v7++;
    }

    while (v6 > v5);
  }

  return result;
}

uint64_t std::function<BOOL ()(aci::Object *,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t std::vector<aci::Object *>::__init_with_size[abi:ne200100]<aci::Object * const*,aci::Object * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<aci::Object *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C404D20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<aci::Object *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<aci::Object *>>(a1, a2);
  }

  std::vector<aci::Object *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<aci::Object *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

uint64_t aci::Controller::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Controller::classTypeInfo(void)::ti)
  {
    return 0;
  }

  return result;
}

uint64_t aci::Controller::activateWithBlock(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 16));
  if (*(a1 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(a2 + 16))(a2);
    if (!v4)
    {
      *(a1 + 8) = 3;
    }
  }

  std::recursive_mutex::unlock((a1 + 16));
  return v4;
}

uint64_t aci::Controller::deactivateWithBlock(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    if (v4 < 4 || (v5 = (*(*a1 + 40))(a1), !v5))
    {
      v5 = (*(a2 + 16))(a2);
      if (!v5)
      {
        *(a1 + 8) = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::recursive_mutex::unlock((a1 + 16));
  return v5;
}

uint64_t aci::Controller::prepareWithBlock(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 16));
  v4 = *(a1 + 8);
  if (v4 > 5)
  {
    v5 = 0;
  }

  else if (v4 || (v5 = (*(*a1 + 16))(a1), !v5))
  {
    v5 = (*(a2 + 16))(a2);
    if (!v5)
    {
      *(a1 + 8) = 6;
    }
  }

  std::recursive_mutex::unlock((a1 + 16));
  return v5;
}

uint64_t aci::Controller::unprepareWithBlock(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 16));
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    v5 = 0;
  }

  else if (v4 < 7 || (v5 = (*(*a1 + 56))(a1), !v5))
  {
    v5 = (*(a2 + 16))(a2);
    *(a1 + 8) = 3;
  }

  std::recursive_mutex::unlock((a1 + 16));
  return v5;
}

uint64_t aci::Controller::startWithBlock(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    if (v4 == 9)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v5 = (*(*a1 + 16))(a1);
    if (v5)
    {
      goto LABEL_10;
    }

    v4 = *(a1 + 8);
  }

  if (v4 != 3 || (v5 = (*(*a1 + 32))(a1), !v5))
  {
    v5 = (*(a2 + 16))(a2);
    if (!v5)
    {
      *(a1 + 8) = 9;
    }
  }

LABEL_10:
  std::recursive_mutex::unlock((a1 + 16));
  return v5;
}

uint64_t aci::Controller::stopWithBlock(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 16));
  if (*(a1 + 8) == 9)
  {
    v4 = (*(a2 + 16))(a2);
    if (!v4)
    {
      *(a1 + 8) = 6;
    }
  }

  else
  {
    v4 = 0;
  }

  std::recursive_mutex::unlock((a1 + 16));
  return v4;
}

uint64_t aci::SourceManager::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::SourceManager::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

void aci::SourceManager::SourceManager(aci::SourceManager *this)
{
  aci::Object::Object(this);
  *v1 = &unk_284F055F8;
  v1[2] = 0;
  aci::ACIObjectSP<aci::Array>();
}

void sub_23C405454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v2);
  _Unwind_Resume(a1);
}

atomic_uint **aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

atomic_uint **aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::setPtr(atomic_uint **a1, atomic_uint *this)
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

uint64_t aci::ServiceReceiverProtocol::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::ServiceReceiverProtocol::classTypeInfo(void)::ti)
  {
    return 0;
  }

  return result;
}

uint64_t aci::Service::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Service::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::Activity,aci::StreamListenerProtocol>(a1, a2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Service::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::Activity,aci::StreamListenerProtocol>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::Service::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Service::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::Activity,aci::StreamListenerProtocol>(result, a2);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::Service::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::Activity,aci::StreamListenerProtocol>(result, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::Service::className(aci::Service *this)
{
  return aci::Service::classTypeInfo(void)::ti;
}

{
  return aci::Service::classTypeInfo(void)::ti;
}

uint64_t (**aci::Service::getSpec(aci::Service *this))(void, uint64_t *)
{
  Source = aci::ComponentGraph::getSource(*(*(this + 18) + 112), 0);
  if (!Source)
  {
    aci::Service::getSpec(&v3);
    return v3;
  }

  result = Source[25];
  if (!result)
  {
    aci::Service::getSpec(&v3);
    return v3;
  }

  return result;
}

aci::Object *aci::_ACIDynamicCast<aci::Object,aci::ServiceReceiverProtocol>(aci::Object *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Object::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

void aci::Service::onNewData(aci::Service *this, aci::Data *a2, aci::String *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "virtual void aci::Service::onNewData(Data *, String *)";
    v7 = 1024;
    v8 = 119;
    _os_log_impl(&dword_23C404000, v3, OS_LOG_TYPE_DEFAULT, " === %s:%d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void aci::Service::~Service(aci::Service *this)
{
  *this = &unk_284F05658;
  *(this + 2) = &unk_284F056B0;
  *(this + 15) = &unk_284F056F0;
  aci::SP<aci::Stream,&(void ACISPRetain<aci::Stream>(aci::Stream &)),&(void ACISPRelease<aci::Stream>(aci::Stream &))>::~SP(this + 18);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 17);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 16);
  *(this + 2) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

{
  *this = &unk_284F05658;
  *(this + 2) = &unk_284F056B0;
  *(this + 15) = &unk_284F056F0;
  aci::SP<aci::Stream,&(void ACISPRetain<aci::Stream>(aci::Stream &)),&(void ACISPRelease<aci::Stream>(aci::Stream &))>::~SP(this + 18);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 17);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 16);
  *(this + 2) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x23EED06D0);
}

void aci::Activity::~Activity(atomic_uint **this)
{
  *this = &unk_284F05DA0;
  v2 = (this + 2);
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 12);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 11);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 10);
  std::mutex::~mutex(v2);
}

atomic_uint **aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

atomic_uint **aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

atomic_uint **aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::Activity,aci::StreamListenerProtocol>(uint64_t a1, uint64_t *a2)
{
  result = aci::Object::castToClass(a1, a2);
  if (!result)
  {

    return aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Activity,aci::StreamListenerProtocol>(a1, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Service::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::Activity,aci::StreamListenerProtocol>(result, a2);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::Service::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Object,aci::Activity,aci::StreamListenerProtocol>(result, a2);
  }

  return result;
}

uint64_t aci::MetaType<aci::Service,aci::Object,aci::Activity,aci::StreamListenerProtocol>::castToClass<aci::Activity,aci::StreamListenerProtocol>(uint64_t a1, uint64_t *a2)
{
  result = aci::Activity::castToClass(a1 + 16, a2);
  if (!result)
  {

    return aci::StreamListenerProtocol::castToClass(a1 + 120, a2);
  }

  return result;
}

void aci::Activity::Activity(aci::Activity *this)
{
  *this = &unk_284F05DA0;
  *(this + 2) = 0;
  *(this + 2) = 850045863;
  *(this + 88) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  aci::ACIObjectSP<aci::Array>();
}

void sub_23C405E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP((v2 + 96));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v4);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP((v2 + 80));
  std::mutex::~mutex(v3);
  _Unwind_Resume(a1);
}

atomic_uint **aci::SP<aci::Stream,&(void ACISPRetain<aci::Stream>(aci::Stream &)),&(void ACISPRelease<aci::Stream>(aci::Stream &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t *OUTLINED_FUNCTION_1()
{
  result = *(v0 + 144);
  v2 = *result;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x12u);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t aci::ComponentSpec::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::ComponentSpec::classTypeInfo(void)::ti)
  {
    return aci::Spec::castToClass(a1, a2);
  }

  return a1;
}

void aci::ComponentSpec::description(aci::String **this)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  aci::fourccToStr(*(this + 12), &v5, 5uLL);
  v2 = (*(*this + 1))(this);
  CString = aci::String::getCString(this[3]);
  snprintf(__str, 0x100uLL, "[%s]%-20s: %6lu x %-6lu %4s", v2, CString, this[4], this[5], &v5);
  aci::String::stringWithCString(__str, v4);
}

uint64_t aci::ComponentGraph::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::ComponentGraph::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::ComponentGraph::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::ComponentGraph::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::ComponentGraph::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(result, a2);
  }

  return result;
}

void aci::ComponentGraph::ComponentGraph(aci::ComponentGraph *this)
{
  v1 = aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::MetaType(this);
  *v1 = &unk_284F057F8;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  v1[2] = &unk_284F05870;
  v1[16] = 0;
  v1[17] = 850045863;
  *(v1 + 9) = 0u;
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  v1[24] = 0;
  aci::ACIObjectSP<aci::Array>();
}

void sub_23C40624C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(va);
  std::mutex::~mutex(v6);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(v5);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v2 + 120));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v4);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v2 + 104));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v3);
  *(v2 + 16) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((v2 + 32));
  _Unwind_Resume(a1);
}

void *aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::MetaType(void *a1)
{
  aci::Object::Object(a1);
  *(v2 + 16) = &unk_284F055A8;
  MEMORY[0x23EED0660](v2 + 32);
  *a1 = &unk_284F05AA8;
  a1[2] = &unk_284F05AF0;
  return a1;
}

uint64_t aci::ComponentGraph::activate(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph8activateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_11_0;
  v2[4] = this;
  return aci::Controller::activateWithBlock(this + 16, v2);
}

uint64_t ___ZN3aci14ComponentGraph8activateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  aci::Array::enumerateObjectsUsingBlock(v1[15], &__block_literal_global_0);
  v2 = *(v9 + 6);
  if (!v2)
  {
    v3 = v1[14];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN3aci14ComponentGraph8activateEv_block_invoke_6;
    v7[3] = &unk_278BBC4F0;
    v7[4] = &v8;
    aci::Array::enumerateObjectsUsingBlock(v3, v7);
    v2 = *(v9 + 6);
    if (!v2)
    {
      v4 = v1[13];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = ___ZN3aci14ComponentGraph8activateEv_block_invoke_8;
      v6[3] = &unk_278BBC518;
      v6[4] = &v8;
      aci::Array::enumerateObjectsUsingBlock(v4, v6);
      v2 = *(v9 + 6);
    }
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

aci::Controller *aci::_ACIDynamicCast<aci::Controller,aci::Object>(aci::Controller *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Controller::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::ComponentGraph::activate(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph8activateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_11_0;
  v2[4] = this - 16;
  return aci::Controller::activateWithBlock(this, v2);
}

uint64_t aci::ComponentGraph::deactivate(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph10deactivateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_19;
  v2[4] = this;
  return aci::Controller::deactivateWithBlock(this + 16, v2);
}

uint64_t ___ZN3aci14ComponentGraph10deactivateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  aci::Array::enumerateObjectsUsingBlock(v1[15], &__block_literal_global_14);
  v2 = *(v9 + 6);
  if (!v2)
  {
    v3 = v1[14];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN3aci14ComponentGraph10deactivateEv_block_invoke_15;
    v7[3] = &unk_278BBC580;
    v7[4] = &v8;
    aci::Array::enumerateObjectsUsingBlock(v3, v7);
    v2 = *(v9 + 6);
    if (!v2)
    {
      v4 = v1[13];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = ___ZN3aci14ComponentGraph10deactivateEv_block_invoke_17;
      v6[3] = &unk_278BBC5A8;
      v6[4] = &v8;
      aci::Array::enumerateObjectsUsingBlock(v4, v6);
      v2 = *(v9 + 6);
    }
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

uint64_t non-virtual thunk toaci::ComponentGraph::deactivate(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph10deactivateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_19;
  v2[4] = this - 16;
  return aci::Controller::deactivateWithBlock(this, v2);
}

uint64_t aci::ComponentGraph::prepare(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph7prepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_27;
  v2[4] = this;
  return aci::Controller::prepareWithBlock(this + 16, v2);
}

uint64_t ___ZN3aci14ComponentGraph7prepareEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  aci::Array::enumerateObjectsUsingBlock(v1[15], &__block_literal_global_22);
  v2 = *(v9 + 6);
  if (!v2)
  {
    v3 = v1[14];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN3aci14ComponentGraph7prepareEv_block_invoke_23;
    v7[3] = &unk_278BBC610;
    v7[4] = &v8;
    aci::Array::enumerateObjectsUsingBlock(v3, v7);
    v2 = *(v9 + 6);
    if (!v2)
    {
      v4 = v1[13];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = ___ZN3aci14ComponentGraph7prepareEv_block_invoke_25;
      v6[3] = &unk_278BBC638;
      v6[4] = &v8;
      aci::Array::enumerateObjectsUsingBlock(v4, v6);
      v2 = *(v9 + 6);
    }
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

uint64_t non-virtual thunk toaci::ComponentGraph::prepare(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph7prepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_27;
  v2[4] = this - 16;
  return aci::Controller::prepareWithBlock(this, v2);
}

uint64_t aci::ComponentGraph::unprepare(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph9unprepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_35;
  v2[4] = this;
  return aci::Controller::unprepareWithBlock(this + 16, v2);
}

uint64_t ___ZN3aci14ComponentGraph9unprepareEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  aci::Array::enumerateObjectsUsingBlock(v1[15], &__block_literal_global_30);
  v2 = *(v9 + 6);
  if (!v2)
  {
    v3 = v1[14];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN3aci14ComponentGraph9unprepareEv_block_invoke_31;
    v7[3] = &unk_278BBC6A0;
    v7[4] = &v8;
    aci::Array::enumerateObjectsUsingBlock(v3, v7);
    v2 = *(v9 + 6);
    if (!v2)
    {
      v4 = v1[13];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = ___ZN3aci14ComponentGraph9unprepareEv_block_invoke_33;
      v6[3] = &unk_278BBC6C8;
      v6[4] = &v8;
      aci::Array::enumerateObjectsUsingBlock(v4, v6);
      v2 = *(v9 + 6);
    }
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

uint64_t non-virtual thunk toaci::ComponentGraph::unprepare(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph9unprepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_35;
  v2[4] = this - 16;
  return aci::Controller::unprepareWithBlock(this, v2);
}

uint64_t aci::ComponentGraph::start(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph5startEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_43;
  v2[4] = this;
  return aci::Controller::startWithBlock(this + 16, v2);
}

uint64_t ___ZN3aci14ComponentGraph5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  aci::Array::enumerateObjectsUsingBlock(v1[15], &__block_literal_global_38);
  v2 = *(v9 + 6);
  if (!v2)
  {
    v3 = v1[14];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN3aci14ComponentGraph5startEv_block_invoke_39;
    v7[3] = &unk_278BBC730;
    v7[4] = &v8;
    aci::Array::enumerateObjectsUsingBlock(v3, v7);
    v2 = *(v9 + 6);
    if (!v2)
    {
      v4 = v1[13];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = ___ZN3aci14ComponentGraph5startEv_block_invoke_41;
      v6[3] = &unk_278BBC758;
      v6[4] = &v8;
      aci::Array::enumerateObjectsUsingBlock(v4, v6);
      v2 = *(v9 + 6);
    }
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

uint64_t non-virtual thunk toaci::ComponentGraph::start(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph5startEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_43;
  v2[4] = this - 16;
  return aci::Controller::startWithBlock(this, v2);
}

uint64_t aci::ComponentGraph::stop(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph4stopEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_51;
  v2[4] = this;
  return aci::Controller::stopWithBlock(this + 16, v2);
}

uint64_t ___ZN3aci14ComponentGraph4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  aci::Array::enumerateObjectsUsingBlock(v1[15], &__block_literal_global_46);
  v2 = *(v9 + 6);
  if (!v2)
  {
    v3 = v1[14];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN3aci14ComponentGraph4stopEv_block_invoke_47;
    v7[3] = &unk_278BBC7C0;
    v7[4] = &v8;
    aci::Array::enumerateObjectsUsingBlock(v3, v7);
    v2 = *(v9 + 6);
    if (!v2)
    {
      v4 = v1[13];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = ___ZN3aci14ComponentGraph4stopEv_block_invoke_49;
      v6[3] = &unk_278BBC7E8;
      v6[4] = &v8;
      aci::Array::enumerateObjectsUsingBlock(v4, v6);
      v2 = *(v9 + 6);
    }
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

uint64_t non-virtual thunk toaci::ComponentGraph::stop(aci::ComponentGraph *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci14ComponentGraph4stopEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_51;
  v2[4] = this - 16;
  return aci::Controller::stopWithBlock(this, v2);
}

uint64_t aci::ComponentGraph::addSources(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<aci::Component *>::__init_with_size[abi:ne200100]<aci::Component * const*,aci::Component * const*>(&v7, a2, a2 + 8 * a3, a3);
  v4 = v7;
  v5 = v8;
  if (v7 != v8)
  {
    do
    {
      aci::Array::addObject(*(a1 + 104), *v4++);
    }

    while (v4 != v5);
    v4 = v7;
  }

  if (v4)
  {
    v8 = v4;
    operator delete(v4);
  }

  return 0;
}

void sub_23C407150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t aci::ComponentGraph::addFilters(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<aci::Component *>::__init_with_size[abi:ne200100]<aci::Component * const*,aci::Component * const*>(&v7, a2, a2 + 8 * a3, a3);
  v4 = v7;
  v5 = v8;
  if (v7 != v8)
  {
    do
    {
      aci::Array::addObject(*(a1 + 112), *v4++);
    }

    while (v4 != v5);
    v4 = v7;
  }

  if (v4)
  {
    v8 = v4;
    operator delete(v4);
  }

  return 0;
}

void sub_23C4071F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t aci::ComponentGraph::addSinks(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<aci::Component *>::__init_with_size[abi:ne200100]<aci::Component * const*,aci::Component * const*>(&v7, a2, a2 + 8 * a3, a3);
  v4 = v7;
  v5 = v8;
  if (v7 != v8)
  {
    do
    {
      aci::Array::addObject(*(a1 + 120), *v4++);
    }

    while (v4 != v5);
    v4 = v7;
  }

  if (v4)
  {
    v8 = v4;
    operator delete(v4);
  }

  return 0;
}

void sub_23C407290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***aci::ComponentGraph::getSource(aci::Array **this, unint64_t a2))(void, uint64_t *)
{
  v2 = aci::Array::objectAtIndex(this[13], a2);

  return aci::_ACIDynamicCast<aci::Component,aci::Object>(v2);
}

uint64_t (***aci::_ACIDynamicCast<aci::Component,aci::Object>(uint64_t (***result)(void, uint64_t *)))(void, uint64_t *)
{
  if (result)
  {
    return (**result)(result, &aci::Component::classTypeInfo(void)::ti);
  }

  return result;
}

uint64_t (***aci::ComponentGraph::getFilter(aci::Array **this, unint64_t a2))(void, uint64_t *)
{
  v2 = aci::Array::objectAtIndex(this[14], a2);

  return aci::_ACIDynamicCast<aci::Component,aci::Object>(v2);
}

uint64_t (***aci::ComponentGraph::getSink(aci::Array **this, unint64_t a2))(void, uint64_t *)
{
  v2 = aci::Array::objectAtIndex(this[15], a2);

  return aci::_ACIDynamicCast<aci::Component,aci::Object>(v2);
}

void aci::ComponentGraph::connect(aci::ComponentGraph *this, aci::Component *a2, Category a3, aci::Component *a4, Category a5)
{
  v5 = a5;
  v7 = a3;
  v11 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 136));
  snprintf(__str, 0x80uLL, "%p#%d.%p#%d", a2, v7, a4, v5);
  aci::String::stringWithCString(__str, v9);
}

void sub_23C4074D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, atomic_uint *);
  va_copy(va2, va1);
  v10 = va_arg(va2, atomic_uint *);
  aci::SP<aci::Port,&(void ACISPRetain<aci::Port>(aci::Port &)),&(void ACISPRelease<aci::Port>(aci::Port &))>::~SP(va);
  aci::SP<aci::Port,&(void ACISPRetain<aci::Port>(aci::Port &)),&(void ACISPRelease<aci::Port>(aci::Port &))>::~SP(va2);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(va1);
  std::mutex::unlock((v6 + 136));
  _Unwind_Resume(a1);
}

void aci::ComponentGraph::connectionKey(aci::ComponentGraph *this, aci::Component *a2, Category a3, aci::Component *a4, Category a5)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%p#%d.%p#%d", a2, a3, a4, a5);
  aci::String::stringWithCString(__str, v5);
}

aci::Port *aci::_ACIDynamicCast<aci::Port,aci::Object>(aci::Port *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Port::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

void aci::ComponentGraph::disconnect(aci::ComponentGraph *this, aci::Component *a2, Category a3, aci::Component *a4, Category a5)
{
  v5 = a5;
  v7 = a3;
  v11 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 136));
  snprintf(__str, 0x80uLL, "%p#%d.%p#%d", a2, v7, a4, v5);
  aci::String::stringWithCString(__str, v9);
}

uint64_t aci::Component::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Component::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Object,aci::Activity,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Component::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Object,aci::Activity,aci::Controller>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::Component::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Component::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Object,aci::Activity,aci::Controller>(result, a2);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::Component::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Object,aci::Activity,aci::Controller>(result, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::Component::className(aci::Component *this)
{
  return aci::Component::classTypeInfo(void)::ti;
}

{
  return aci::Component::classTypeInfo(void)::ti;
}

void sub_23C407B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v2 + 3600));
  std::mutex::~mutex((v2 + 3536));
  std::array<aci::Component::Ports,16ul>::~array(v2 + 1872);
  std::array<aci::Component::Ports,16ul>::~array(v2 + 208);
  aci::SP<aci::ComponentSpec,&(void ACISPRetain<aci::ComponentSpec>(aci::ComponentSpec &)),&(void ACISPRelease<aci::ComponentSpec>(aci::ComponentSpec &))>::~SP(v3);
  aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::~MetaType(v2);
  _Unwind_Resume(a1);
}

aci::String *aci::_ACIDynamicCast<aci::String,aci::Object>(aci::String *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::String::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
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

uint64_t std::array<aci::Component::Ports,16ul>::~array(uint64_t a1)
{
  v2 = 1664;
  do
  {
    aci::Array::~Array((a1 + v2 - 40));
    std::mutex::~mutex((a1 + v2 - 104));
    v2 -= 104;
  }

  while (v2);
  return a1;
}

uint64_t aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 120) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((a1 + 136));
  *(a1 + 16) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP((a1 + 112));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((a1 + 104));
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  return a1;
}

{
  *(a1 + 120) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((a1 + 136));
  *(a1 + 16) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP((a1 + 112));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((a1 + 104));
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  return a1;
}

uint64_t aci::Component::Ports::attachPort(std::mutex *this, aci::Port *a2)
{
  std::mutex::lock(this);
  if ((aci::Array::containsObject(&this[1], a2) & 1) == 0)
  {
    aci::Array::addObject(&this[1], a2);
  }

  std::mutex::unlock(this);
  return 0;
}

uint64_t aci::Component::Ports::detachPort(aci::Component::Ports *this, atomic_uint *a2)
{
  std::mutex::lock(this);
  if (aci::Array::containsObject(this + 64, a2))
  {
    aci::Array::removeObject(this + 8, a2);
  }

  std::mutex::unlock(this);
  return 0;
}

uint64_t aci::Component::write(aci::Component *this, aci::Data *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a3 == -1)
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = this + 1936;
    v8 = 16;
    while (1)
    {
      v13[0] = v6;
      v13[1] = 0x40000000;
      v13[2] = ___ZN3aci9Component5writeEPNS_4DataEi_block_invoke;
      v13[3] = &unk_278BBC830;
      v13[4] = &v14;
      v13[5] = a2;
      aci::Array::enumerateObjectsUsingBlock(v7, v13);
      v5 = *(v15 + 6);
      if (v5)
      {
        break;
      }

      v7 += 104;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a3 >= 16)
  {
    v11 = _aciLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = a3;
      _os_log_impl(&dword_23C404000, v11, OS_LOG_TYPE_ERROR, "[ACIVERIFY]Can't find port category(%d)!", buf, 8u);
    }

    v5 = 4294967289;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___ZN3aci9Component5writeEPNS_4DataEi_block_invoke_56;
    v12[3] = &unk_278BBC858;
    v12[4] = &v14;
    v12[5] = a2;
    aci::Array::enumerateObjectsUsingBlock(this + 104 * a3 + 1936, v12);
    v5 = *(v15 + 6);
    if (!v5)
    {
LABEL_8:
      v5 = 0;
    }
  }

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23C4081EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

aci::Factory *aci::_ACIDynamicCast<aci::Factory,aci::Object>(aci::Factory *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Factory::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

void aci::ComponentSpec::~ComponentSpec(atomic_uint **this)
{
  *this = &unk_284F05A60;
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 3);
  *this = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 2);
}

{
  *this = &unk_284F05A60;
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 3);
  *this = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 2);

  JUMPOUT(0x23EED06D0);
}

void aci::ComponentGraph::~ComponentGraph(aci::ComponentGraph *this)
{
  *this = &unk_284F057F8;
  *(this + 2) = &unk_284F05870;
  std::mutex::~mutex((this + 136));
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 16);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 15);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 12);
  *(this + 2) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((this + 32));
}

{
  *this = &unk_284F057F8;
  *(this + 2) = &unk_284F05870;
  std::mutex::~mutex((this + 136));
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 16);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 15);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 12);
  *(this + 2) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((this + 32));

  JUMPOUT(0x23EED06D0);
}

void aci::Component::~Component(aci::Component *this)
{
  aci::Component::~Component(this);

  JUMPOUT(0x23EED06D0);
}

{
  *this = &unk_284F05980;
  *(this + 2) = &unk_284F059D0;
  *(this + 15) = &unk_284F05A10;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 450);
  std::mutex::~mutex((this + 3536));
  for (i = 0; i != -1664; i -= 104)
  {
    aci::Array::~Array((this + i + 3496));
    std::mutex::~mutex((this + i + 3432));
  }

  v3 = 1664;
  do
  {
    aci::Array::~Array((this + v3 + 168));
    std::mutex::~mutex((this + v3 + 104));
    v3 -= 104;
  }

  while (v3);
  aci::SP<aci::ComponentSpec,&(void ACISPRetain<aci::ComponentSpec>(aci::ComponentSpec &)),&(void ACISPRelease<aci::ComponentSpec>(aci::ComponentSpec &))>::~SP(this + 25);
  *(this + 15) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((this + 136));
  *(this + 2) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

uint64_t aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(uint64_t a1, uint64_t *a2)
{
  result = aci::Object::castToClass(a1, a2);
  if (!result)
  {

    return aci::Controller::castToClass(a1 + 16, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::ComponentGraph::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::castToClass<aci::Object,aci::Controller>(result, a2);
  }

  return result;
}

uint64_t aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 16) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((a1 + 32));
  return a1;
}

void aci::MetaType<aci::ComponentGraph,aci::Object,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 16) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((a1 + 32));

  JUMPOUT(0x23EED06D0);
}

uint64_t std::vector<aci::Component *>::__init_with_size[abi:ne200100]<aci::Component * const*,aci::Component * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<aci::Object *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C4087EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **aci::SP<aci::Port,&(void ACISPRetain<aci::Port>(aci::Port &)),&(void ACISPRelease<aci::Port>(aci::Port &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Object,aci::Activity,aci::Controller>(uint64_t a1, uint64_t *a2)
{
  result = aci::Object::castToClass(a1, a2);
  if (!result)
  {

    return aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Activity,aci::Controller>(a1, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Component::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Object,aci::Activity,aci::Controller>(result, a2);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::Component::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Object,aci::Activity,aci::Controller>(result, a2);
  }

  return result;
}

uint64_t aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::castToClass<aci::Activity,aci::Controller>(uint64_t a1, uint64_t *a2)
{
  result = aci::Activity::castToClass(a1 + 16, a2);
  if (!result)
  {

    return aci::Controller::castToClass(a1 + 120, a2);
  }

  return result;
}

void aci::Activity::Activity(aci::Activity *this, aci::Dictionary *a2)
{
  *this = &unk_284F05DA0;
  *(this + 2) = 0;
  *(this + 2) = 850045863;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = a2;
  if (a2)
  {
    aci::Object::retain(a2);
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  aci::ACIObjectSP<aci::Array>();
}

void aci::MetaType<aci::Component,aci::Object,aci::Activity,aci::Controller>::~MetaType(uint64_t a1)
{
  *(a1 + 120) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((a1 + 136));
  *(a1 + 16) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP((a1 + 112));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((a1 + 104));
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP((a1 + 96));
  std::mutex::~mutex((a1 + 32));

  JUMPOUT(0x23EED06D0);
}

atomic_uint **aci::SP<aci::ComponentSpec,&(void ACISPRetain<aci::ComponentSpec>(aci::ComponentSpec &)),&(void ACISPRelease<aci::ComponentSpec>(aci::ComponentSpec &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

aci::ComponentSpec *aci::ComponentSpec::ComponentSpec(aci::ComponentSpec *this, aci::String *a2, uint64_t a3, uint64_t a4, int a5, aci::Dictionary *a6)
{
  v11 = aci::Spec::Spec(this, a6);
  *v11 = &unk_284F05A60;
  *(v11 + 3) = a2;
  if (a2)
  {
    aci::Object::retain(a2);
  }

  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 12) = a5;
  return this;
}

void sub_23C408C08(_Unwind_Exception *a1)
{
  *v1 = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP((v1 + 16));
  _Unwind_Resume(a1);
}

aci::Spec *aci::Spec::Spec(aci::Spec *this, aci::Dictionary *a2)
{
  aci::Object::Object(this);
  *v4 = &unk_284F05FA8;
  v4[2] = a2;
  if (a2)
  {
    aci::Object::retain(a2);
  }

  return this;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result)
{
  *(*(*(v1 + 32) + 8) + 24) = result;
  v2 = *(*(*(v1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL OUTLINED_FUNCTION_5_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t aci::SinkAgentProtocol::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::SinkAgentProtocol::classTypeInfo(void)::ti)
  {
    return 0;
  }

  return result;
}

uint64_t aci::Sink::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Sink::classTypeInfo(void)::ti)
  {
    return aci::Component::castToClass(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::Sink::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Sink::classTypeInfo(void)::ti)
  {
    return aci::Component::castToClass(result, a2);
  }

  return result;
}

{
  result = a1 - 120;
  if (a2 != &aci::Sink::classTypeInfo(void)::ti)
  {
    return aci::Component::castToClass(result, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::Sink::className(aci::Sink *this)
{
  return aci::Sink::classTypeInfo(void)::ti;
}

{
  return aci::Sink::classTypeInfo(void)::ti;
}

void sub_23C408E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  std::mutex::~mutex((v2 + 3616));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v2 + 3608));
  aci::Component::~Component(v2);
  _Unwind_Resume(a1);
}

uint64_t aci::Sink::registerSinkAgent(aci::Sink *this, aci::SinkAgentProtocol *a2)
{
  v4 = aci::_ACIDynamicCast<aci::Object,aci::SinkAgentProtocol>(a2);
  if (v4)
  {
    v5 = v4;
    std::mutex::lock((this + 3616));
    v6 = *(this + 451);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___ZN3aci4Sink17registerSinkAgentEPNS_17SinkAgentProtocolE_block_invoke;
    v8[3] = &__block_descriptor_tmp_1;
    v8[4] = a2;
    aci::Array::enumerateObjectsUsingBlock(v6, v8);
    aci::Array::addObject(*(this + 451), v5);
    std::mutex::unlock((this + 3616));
    return 0;
  }

  else
  {
    aci::Sink::registerSinkAgent(&v9);
    return v9;
  }
}

aci::Object *aci::_ACIDynamicCast<aci::Object,aci::SinkAgentProtocol>(aci::Object *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Object::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t (***aci::_ACIDynamicCast<aci::SinkAgentProtocol,aci::Object>(uint64_t (***result)(void, uint64_t *)))(void, uint64_t *)
{
  if (result)
  {
    return (**result)(result, &aci::SinkAgentProtocol::classTypeInfo(void)::ti);
  }

  return result;
}

uint64_t aci::Sink::unregisterSinkAgent(aci::Sink *this, aci::SinkAgentProtocol *a2)
{
  v3 = aci::_ACIDynamicCast<aci::Object,aci::SinkAgentProtocol>(a2);
  if (v3)
  {
    v4 = v3;
    std::mutex::lock((this + 3616));
    aci::Array::removeObject(*(this + 451), v4);
    std::mutex::unlock((this + 3616));
    return 0;
  }

  else
  {
    aci::Sink::registerSinkAgent(&v6);
    return v6;
  }
}

uint64_t aci::Sink::process(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 3616));
  v4 = *(a1 + 3608);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZN3aci4Sink7processEPNS_4DataEi_block_invoke;
  v6[3] = &__block_descriptor_tmp_3;
  v6[4] = a2;
  aci::Array::enumerateObjectsUsingBlock(v4, v6);
  std::mutex::unlock((a1 + 3616));
  return 0;
}

void aci::Sink::~Sink(aci::Sink *this)
{
  *this = &unk_284F05C18;
  *(this + 2) = &unk_284F05C68;
  *(this + 15) = &unk_284F05CA8;
  std::mutex::~mutex((this + 3616));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 451);

  aci::Component::~Component(this);
}

{
  *this = &unk_284F05C18;
  *(this + 2) = &unk_284F05C68;
  *(this + 15) = &unk_284F05CA8;
  std::mutex::~mutex((this + 3616));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 451);
  aci::Component::~Component(this);

  JUMPOUT(0x23EED06D0);
}

uint64_t aci::Activity::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Activity::classTypeInfo(void)::ti)
  {
    return 0;
  }

  return result;
}

uint64_t ___ZN3aci8Activity10initializeEv_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v2 = aci::_ACIDynamicCast<aci::Activity,aci::Object>(a2);
  if (v2 && ((*v2)[2])(v2))
  {
    ___ZN3aci8Activity10initializeEv_block_invoke_cold_1();
  }

  return 0;
}

uint64_t (***aci::_ACIDynamicCast<aci::Activity,aci::Object>(uint64_t (***result)(void, uint64_t *)))(void, uint64_t *)
{
  if (result)
  {
    return (**result)(result, &aci::Activity::classTypeInfo(void)::ti);
  }

  return result;
}

uint64_t ___ZN3aci8Activity12deinitializeEv_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v2 = aci::_ACIDynamicCast<aci::Activity,aci::Object>(a2);
  if (v2 && ((*v2)[3])(v2))
  {
    ___ZN3aci8Activity12deinitializeEv_block_invoke_cold_1();
  }

  return 0;
}

uint64_t ___ZN3aci8Activity6resumeEv_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v2 = aci::_ACIDynamicCast<aci::Activity,aci::Object>(a2);
  if (v2 && ((*v2)[4])(v2))
  {
    ___ZN3aci8Activity6resumeEv_block_invoke_cold_1();
  }

  return 0;
}

uint64_t ___ZN3aci8Activity7suspendEv_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v2 = aci::_ACIDynamicCast<aci::Activity,aci::Object>(a2);
  if (v2 && ((*v2)[5])(v2))
  {
    ___ZN3aci8Activity7suspendEv_block_invoke_cold_1();
  }

  return 0;
}

uint64_t aci::Activity::attachChild(aci::Activity *this, atomic_uint **a2)
{
  std::mutex::lock((this + 16));
  v4 = aci::_ACIDynamicCast<aci::Object,aci::Activity>(a2);
  if (!v4)
  {
    __assert_rtn("attachChild", "ACIActivity.cpp", 74, "ao != nullptr");
  }

  v5 = aci::Array::containsObject(*(this + 11), v4);
  if ((v5 & 1) == 0)
  {
    v6 = aci::_ACIDynamicCast<aci::Object,aci::Activity>(this);
    if (!v6)
    {
      __assert_rtn("attachChild", "ACIActivity.cpp", 77, "co != nullptr");
    }

    aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::setPtr(a2 + 12, v6);
    aci::Array::addObject(*(this + 11), v4);
  }

  std::mutex::unlock((this + 16));
  return v5 ^ 1u;
}

aci::Object *aci::_ACIDynamicCast<aci::Object,aci::Activity>(aci::Object *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Object::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

void aci::Activity::detachChild(aci::Activity *this, atomic_uint **a2)
{
  std::mutex::lock((this + 16));
  v4 = aci::_ACIDynamicCast<aci::Object,aci::Activity>(a2);
  if (!v4)
  {
    __assert_rtn("detachChild", "ACIActivity.cpp", 86, "ao != nullptr");
  }

  if (aci::Array::containsObject(*(this + 11), v4))
  {
    v5 = a2[12];
    if (v5)
    {
      aci::Object::release(v5);
      a2[12] = 0;
    }

    aci::Array::removeObject(*(this + 11), v4);
  }

  std::mutex::unlock((this + 16));
}

void aci::ActivityManager::addActivity(aci::ActivityManager *this, aci::Activity *a2)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = *this;
  if (*this != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        return;
      }
    }
  }

  if (v6 != v5)
  {
    v7 = *(this + 2);
    if (v5 >= v7)
    {
      v9 = (v5 - v4) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<aci::Object *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<aci::Object *>>(this, v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = *(this + 1) - *this;
      v15 = v13 - v14;
      memcpy(v13 - v14, *this, v14);
      v16 = *this;
      *this = v15;
      *(this + 1) = v8;
      *(this + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    *(this + 1) = v8;
  }
}

uint64_t aci::Env::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Env::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

uint64_t aci::Factory::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Factory::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

void aci::Factory::Factory(aci::Factory *this, int a2)
{
  aci::Object::Object(this);
  *v3 = &unk_284F05E38;
  *(v3 + 24) = 850045863;
  *(v3 + 104) = 0;
  *(v3 + 16) = a2;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  aci::ACIObjectSP<aci::Array>();
}

void sub_23C40986C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(v4);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v2 + 88));
  std::mutex::~mutex(v3);
  _Unwind_Resume(a1);
}

uint64_t aci::Factory::acquireData(aci::Factory *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  std::mutex::lock((this + 24));
  v2 = *(this + 13);
  if (!v2)
  {
    v4 = (this + 96);
    v3 = *(this + 12);
    if (v3 && aci::Data::isFree(v3))
    {
      aci::Data::reserve(*v4);
    }

    else
    {
      v5 = *(this + 11);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = ___ZN3aci7Factory11acquireDataEv_block_invoke;
      v13[3] = &unk_278BBC940;
      v13[4] = &v14;
      aci::Array::enumerateObjectsUsingBlock(v5, v13);
      v6 = v15[3];
      if (v6)
      {
        aci::Data::reserve(v6);
      }

      else
      {
        if (aci::Array::count(*(this + 11)) >= *(this + 4))
        {
          v11 = _aciLogGeneral();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = aci::Array::count(*(this + 11));
            aci::Factory::acquireData(this + 4, buf, v12, v11);
          }

          __assert_rtn("acquireData", "ACIFactory.cpp", 35, "false");
        }

        v7 = (*(*this + 104))(this);
        v8 = v15;
        v15[3] = v7;
        if (!v7)
        {
          v2 = 0;
          goto LABEL_10;
        }

        *(this + 12) = v7;
        aci::Array::addObject(*(this + 11), v8[3]);
        aci::Data::reserve(v15[3]);
      }

      v4 = v15 + 3;
    }

    v2 = *v4;
  }

LABEL_10:
  std::mutex::unlock((this + 24));
  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_23C409A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

aci::Data *aci::_ACIDynamicCast<aci::Data,aci::Object>(aci::Data *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Data::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t aci::Factory::push(uint64_t a1, atomic_uint **a2)
{
  std::mutex::lock((a1 + 24));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::setPtr((a1 + 104), *a2);
  std::mutex::unlock((a1 + 24));
  return 0;
}

void aci::Factory::pop(aci::Factory *this@<X0>, uint64_t *a2@<X8>)
{
  std::mutex::lock((this + 24));
  v4 = *(this + 13);
  *a2 = v4;
  if (v4)
  {
    aci::Object::retain(v4);
    v5 = *(this + 13);
    if (v5)
    {
      aci::Object::release(v5);
      *(this + 13) = 0;
    }
  }

  std::mutex::unlock((this + 24));
}

void sub_23C409C00(_Unwind_Exception *a1)
{
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(v2);
  std::mutex::unlock((v1 + 24));
  _Unwind_Resume(a1);
}

void aci::Factory::~Factory(atomic_uint **this)
{
  *this = &unk_284F05E38;
  v2 = (this + 3);
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 11);
  std::mutex::~mutex(v2);
}

{
  *this = &unk_284F05E38;
  v2 = (this + 3);
  aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(this + 13);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 11);
  std::mutex::~mutex(v2);

  JUMPOUT(0x23EED06D0);
}

atomic_uint **aci::SP<aci::Data,&(void ACISPRetain<aci::Data>(aci::Data &)),&(void ACISPRelease<aci::Data>(aci::Data &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::Object::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Object::classTypeInfo(void)::ti)
  {
    return 0;
  }

  return result;
}

void aci::Object::Object(uint64_t a1)
{
  *a1 = &unk_284F05EC0;
  atomic_store(1u, (a1 + 8));
}

{
  *a1 = &unk_284F05EC0;
  atomic_store(1u, (a1 + 8));
}

atomic_uint *aci::Object::release(atomic_uint *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v2 = this;
    (*(*this + 40))(this);
    v3 = *(*v2 + 24);

    return v3(v2);
  }

  return this;
}

void aci::Object::description(aci::Object *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  v2 = (*(*this + 8))(this);
  snprintf(__str, 0x80uLL, "%s#%p", v2, this);
  aci::String::stringWithCString(__str, v3);
}

uint64_t aci::Data::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Data::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

atomic_uint *aci::Data::relinquish(atomic_uint *this)
{
  if (atomic_fetch_add(this + 6, 0xFFFFFFFF) == 1)
  {
    return (*(*this + 56))();
  }

  return this;
}

void aci::Data::~Data(atomic_uint **this)
{
  *this = &unk_284F05F08;
  v1 = this + 2;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 4);
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(v1);
}

{
  *this = &unk_284F05F08;
  v1 = this + 2;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 4);
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(v1);

  JUMPOUT(0x23EED06D0);
}

uint64_t aci::Number::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Number::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

uint64_t aci::Spec::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Spec::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

void aci::Spec::~Spec(atomic_uint **this)
{
  *this = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 2);
}

{
  *this = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 2);

  JUMPOUT(0x23EED06D0);
}

uint64_t aci::Manager::castToClass(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a2 != &aci::Manager::classTypeInfo(void)::ti)
  {
    v4 = aci::Object::castToClass(a1, a2);
    v5 = v2 + 16;
    if (a2 != &aci::Streamer::classTypeInfo(void)::ti)
    {
      v5 = 0;
    }

    if (v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v2;
}

uint64_t non-virtual thunk toaci::Manager::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Manager::classTypeInfo(void)::ti)
  {
    result = aci::Object::castToClass(result, a2);
    if (a2 == &aci::Streamer::classTypeInfo(void)::ti)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }

    if (!result)
    {
      return v5;
    }
  }

  return result;
}

uint64_t aci::Streamer::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Streamer::classTypeInfo(void)::ti)
  {
    return 0;
  }

  return result;
}

void aci::Streamer::Streamer(aci::Streamer *this)
{
  *this = &unk_284F05FF0;
  *(this + 1) = 0;
  aci::ACIObjectSP<aci::Dictionary>();
}

void sub_23C40A350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(va);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(v2);
  _Unwind_Resume(a1);
}

aci::Stream *aci::Streamer::getStream(aci::Dictionary **this, const aci::Object *a2)
{
  v2 = aci::Dictionary::objectForKey(this[1], a2);

  return aci::_ACIDynamicCast<aci::Stream,aci::Object>(v2);
}

aci::Stream *aci::_ACIDynamicCast<aci::Stream,aci::Object>(aci::Stream *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Stream::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t _aciLogGeneral()
{
  if (atomic_load_explicit(&_aciLogGeneral::once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&_aciLogGeneral::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<_aciLogGeneral::$_0 &&>>);
  }

  return _aciLogGeneral::aciLogGeneral;
}

os_log_t std::__call_once_proxy[abi:ne200100]<std::tuple<_aciLogGeneral::$_0 &&>>()
{
  result = os_log_create(aciLogSubsystem, aciLogCategoryGeneral);
  _aciLogGeneral::aciLogGeneral = result;
  return result;
}

uint64_t aci::Dictionary::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Dictionary::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

void aci::Dictionary::Dictionary(aci::Dictionary *this)
{
  aci::Object::Object(this);
  *v1 = &unk_284F060A0;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
}

{
  aci::Object::Object(this);
  *v1 = &unk_284F060A0;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
}

aci::Dictionary *aci::Dictionary::Dictionary(aci::Dictionary *a1, uint64_t a2, unint64_t a3)
{
  aci::Object::Object(a1);
  *v6 = &unk_284F060A0;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = 0;
  std::vector<std::pair<aci::Object *,aci::Object *>>::reserve(v6 + 2, a3);
  if (a3)
  {
    v7 = (a2 + 8);
    v8 = 16 * a3;
    do
    {
      aci::Dictionary::setObject(a1, *v7, *(v7 - 1));
      v7 += 2;
      v8 -= 16;
    }

    while (v8);
  }

  return a1;
}

void sub_23C40A63C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<aci::Object *,aci::Object *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<aci::Object *,aci::Object *>>>(result, a2);
    }

    std::vector<aci::Object *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void aci::Dictionary::setObject(aci::Dictionary *this, atomic_uint *a2, aci::Object *a3)
{
  v7 = *(this + 2);
  v8 = *(this + 3);
  v6 = (this + 16);
  while (v7 != v8)
  {
    if ((*(**v7 + 32))(*v7, a3))
    {
      aci::Object::release(v7[1]);
      v7[1] = a2;

      aci::Object::retain(a2);
      return;
    }

    v7 += 2;
  }

  aci::Object::retain(a3);
  aci::Object::retain(a2);
  v10 = *(this + 3);
  v9 = *(this + 4);
  if (v10 >= v9)
  {
    v12 = (v10 - *v6) >> 4;
    v13 = v12 + 1;
    if ((v12 + 1) >> 60)
    {
      std::vector<aci::Object *>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - *v6;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<aci::Object *,aci::Object *>>>(v6, v15);
    }

    v16 = (16 * v12);
    *v16 = a3;
    v16[1] = a2;
    v11 = 16 * v12 + 16;
    v17 = *(this + 2);
    v18 = *(this + 3) - v17;
    v19 = (16 * v12 - v18);
    memcpy(v19, v17, v18);
    v20 = *(this + 2);
    *(this + 2) = v19;
    *(this + 3) = v11;
    *(this + 4) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = a3;
    v10[1] = a2;
    v11 = (v10 + 2);
  }

  *(this + 3) = v11;
}

uint64_t aci::Dictionary::objectForKey(aci::Dictionary *this, const aci::Object *a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    return 0;
  }

  while (((*(**v2 + 32))(*v2, a2) & 1) == 0)
  {
    v2 += 2;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return v2[1];
}

uint64_t aci::Dictionary::objectForKey(aci::Dictionary *this, const char *a2)
{
  aci::Object::Object(v7);
  v7[0] = &unk_284F060E8;
  v7[2] = a2;
  v4 = *(this + 2);
  v5 = *(this + 3);
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((*(**v4 + 32))(*v4, v7))
    {
      break;
    }

    v4 += 2;
  }

  return v4[1];
}

atomic_uint *aci::Dictionary::removeObject(atomic_uint *this, const aci::Object *a2)
{
  v2 = *(this + 2);
  if (v2 != *(this + 3))
  {
    v4 = this;
    for (i = -v2; ; i -= 16)
    {
      this = (*(**v2 + 32))(*v2, a2);
      if (this)
      {
        break;
      }

      v2 += 2;
      if (v2 == *(v4 + 3))
      {
        return this;
      }
    }

    aci::Object::release(*v2);
    this = aci::Object::release(v2[1]);
    v6 = -i;
    v7 = 16 - i;
    v8 = *(v4 + 3);
    if (16 - i == v8)
    {
      v9 = -i;
    }

    else
    {
      v9 = -i;
      do
      {
        v10 = *(v9 + 16);
        v9 += 16;
        v11 = *(v6 + 24);
        *v6 = v10;
        *(v6 + 8) = v11;
        v7 += 16;
        v6 = v9;
      }

      while (v7 != v8);
    }

    *(v4 + 3) = v9;
  }

  return this;
}

atomic_uint *aci::Dictionary::removeObject(atomic_uint *this, const char *a2)
{
  aci::Object::Object(v5);
  v5[0] = &unk_284F060E8;
  v5[2] = a2;
  return aci::Dictionary::removeObject(this, v5);
}

atomic_uint *aci::Dictionary::removeAllObjects(atomic_uint *this)
{
  v1 = *(this + 2);
  if (v1 != *(this + 3))
  {
    v2 = this;
    do
    {
      aci::Object::release(*v1);
      this = aci::Object::release(*(v1 + 8));
      v3 = v1 + 16;
      v4 = *(v2 + 3);
      if (v1 + 16 == v4)
      {
        v6 = v1;
      }

      else
      {
        v5 = v1 + 16;
        v6 = v1;
        do
        {
          v7 = *(v6 + 16);
          v6 += 16;
          v8 = *(v1 + 24);
          *v1 = v7;
          *(v1 + 8) = v8;
          v5 += 16;
          v1 = v6;
        }

        while (v5 != v4);
      }

      *(v2 + 3) = v6;
      v1 = v3;
    }

    while (v3 != v6);
  }

  return this;
}

uint64_t aci::Dictionary::enumerateKeysAndObjectsUsingBlock(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24) - *(result + 16);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 >> 4;
    v7 = 1;
    do
    {
      result = (*(a2 + 16))(a2, *(*(v4 + 16) + 16 * v5), *(*(v4 + 16) + 16 * v5 + 8));
      if (result)
      {
        break;
      }

      v5 = v7++;
    }

    while (v6 > v5);
  }

  return result;
}

void aci::Dictionary::~Dictionary(aci::Dictionary *this)
{
  *this = &unk_284F060A0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284F060A0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EED06D0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<aci::Object *,aci::Object *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t aci::String::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::String::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

aci::StringCopy *aci::StringCopy::StringCopy(aci::StringCopy *this, const char *a2)
{
  aci::Object::Object(this);
  v4[2] = a2;
  *v4 = &unk_284F06138;
  if (a2)
  {
    v5 = strlen(a2);
    v6 = malloc_type_calloc(v5 + 1, 1uLL, 0x100004077774924uLL);
    if (!v6)
    {
      aci::StringCopy::StringCopy();
    }

    v7 = v6;
    memmove(v6, a2, v5);
    *(this + 2) = v7;
  }

  return this;
}

uint64_t aci::StringCopy::free(aci::StringCopy *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    free(v2);
  }

  return aci::Object::free(this);
}

uint64_t aci::Device::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Device::classTypeInfo(void)::ti)
  {
    return aci::Object::castToClass(a1, a2);
  }

  return a1;
}

void aci::Device::~Device(atomic_uint **this)
{
  *this = &unk_284F06188;
  v1 = this + 2;
  aci::SP<aci::Env,&(void ACISPRetain<aci::Env>(aci::Env &)),&(void ACISPRelease<aci::Env>(aci::Env &))>::~SP(this + 3);
  aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(v1);
}

{
  *this = &unk_284F06188;
  v1 = this + 2;
  aci::SP<aci::Env,&(void ACISPRetain<aci::Env>(aci::Env &)),&(void ACISPRelease<aci::Env>(aci::Env &))>::~SP(this + 3);
  aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(v1);

  JUMPOUT(0x23EED06D0);
}

atomic_uint **aci::SP<aci::Env,&(void ACISPRetain<aci::Env>(aci::Env &)),&(void ACISPRelease<aci::Env>(aci::Env &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

atomic_uint **aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::StreamSpec::castToClass(aci::ComponentSpec *a1, uint64_t *a2)
{
  if (aci::ComponentSpec::classTypeInfo(a1) == a2)
  {
    return a1;
  }

  return aci::Spec::castToClass(a1, a2);
}

void aci::StreamSpec::StreamSpec(aci::StreamSpec *this, aci::Dictionary *a2)
{
  v2 = aci::Spec::Spec(this, a2);
  *v2 = &unk_284F061D0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  aci::ACIObjectSP<aci::Array>();
}

void sub_23C40B308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v5);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v4);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v3);
  *v2 = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP((v2 + 16));
  _Unwind_Resume(a1);
}

aci::ComponentSpec *aci::StreamSpec::sourceSpecAtIndex(aci::Array **this, unint64_t a2)
{
  v2 = aci::Array::objectAtIndex(this[3], a2);

  return aci::_ACIDynamicCast<aci::ComponentSpec,aci::Object>(v2);
}

aci::ComponentSpec *aci::_ACIDynamicCast<aci::ComponentSpec,aci::Object>(aci::ComponentSpec *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::ComponentSpec::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

aci::ComponentSpec *aci::StreamSpec::filterSpecAtIndex(aci::Array **this, unint64_t a2)
{
  v2 = aci::Array::objectAtIndex(this[4], a2);

  return aci::_ACIDynamicCast<aci::ComponentSpec,aci::Object>(v2);
}

aci::ComponentSpec *aci::StreamSpec::sinkSpecAtIndex(aci::Array **this, unint64_t a2)
{
  v2 = aci::Array::objectAtIndex(this[5], a2);

  return aci::_ACIDynamicCast<aci::ComponentSpec,aci::Object>(v2);
}

uint64_t aci::StreamListenerProtocol::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::StreamListenerProtocol::classTypeInfo(void)::ti)
  {
    return 0;
  }

  return result;
}

uint64_t aci::Stream::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Stream::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Object,aci::Controller,aci::SinkAgentProtocol>(a1, a2);
  }

  return a1;
}

uint64_t aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Stream::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Object,aci::Controller,aci::SinkAgentProtocol>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::Stream::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Stream::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Object,aci::Controller,aci::SinkAgentProtocol>(result, a2);
  }

  return result;
}

{
  result = a1 - 96;
  if (a2 != &aci::Stream::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Object,aci::Controller,aci::SinkAgentProtocol>(result, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::Stream::className(aci::Stream *this)
{
  return aci::Stream::classTypeInfo(void)::ti;
}

{
  return aci::Stream::classTypeInfo(void)::ti;
}

void aci::Stream::Stream(void *a1, atomic_uint *a2)
{
  v3 = aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::MetaType(a1);
  *v3 = &unk_284F06218;
  v3[2] = &unk_284F06298;
  *(v3 + 13) = 0u;
  v3[12] = &unk_284F062E8;
  *(v3 + 15) = 0u;
  v3[18] = 850045863;
  *(v3 + 19) = 0u;
  *(v3 + 21) = 0u;
  *(v3 + 23) = 0u;
  v3[25] = 0;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::setPtr(v3 + 15, a2);
  aci::ACIObjectSP<aci::StreamSpec>();
}

void sub_23C40B6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(&a12);
  std::mutex::~mutex(a9);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v12 + 128));
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(v14);
  aci::SP<aci::ComponentGraph,&(void ACISPRetain<aci::ComponentGraph>(aci::ComponentGraph &)),&(void ACISPRelease<aci::ComponentGraph>(aci::ComponentGraph &))>::~SP((v12 + 112));
  aci::SP<aci::StreamSpec,&(void ACISPRetain<aci::StreamSpec>(aci::StreamSpec &)),&(void ACISPRelease<aci::StreamSpec>(aci::StreamSpec &))>::~SP(v13);
  *(v12 + 16) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((v12 + 32));
  _Unwind_Resume(a1);
}

void *aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::MetaType(void *a1)
{
  aci::Object::Object(a1);
  *(v2 + 16) = &unk_284F055A8;
  MEMORY[0x23EED0660](v2 + 32);
  *a1 = &unk_284F06338;
  a1[2] = &unk_284F06380;
  a1[12] = &unk_284F063D0;
  return a1;
}

aci::Sink *aci::_ACIDynamicCast<aci::Sink,aci::Component>(aci::Sink *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Sink::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t aci::Stream::activate(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream8activateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_4;
  v2[4] = this;
  return aci::Controller::activateWithBlock(this + 16, v2);
}

uint64_t non-virtual thunk toaci::Stream::activate(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream8activateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_4;
  v2[4] = this - 16;
  return aci::Controller::activateWithBlock(this, v2);
}

uint64_t aci::Stream::deactivate(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream10deactivateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_4_0;
  v2[4] = this;
  return aci::Controller::deactivateWithBlock(this + 16, v2);
}

uint64_t non-virtual thunk toaci::Stream::deactivate(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream10deactivateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_4_0;
  v2[4] = this - 16;
  return aci::Controller::deactivateWithBlock(this, v2);
}

uint64_t aci::Stream::prepare(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream7prepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_5_0;
  v2[4] = this;
  return aci::Controller::prepareWithBlock(this + 16, v2);
}

uint64_t non-virtual thunk toaci::Stream::prepare(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream7prepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_5_0;
  v2[4] = this - 16;
  return aci::Controller::prepareWithBlock(this, v2);
}

uint64_t aci::Stream::unprepare(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream9unprepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_6;
  v2[4] = this;
  return aci::Controller::unprepareWithBlock(this + 16, v2);
}

uint64_t non-virtual thunk toaci::Stream::unprepare(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream9unprepareEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_6;
  v2[4] = this - 16;
  return aci::Controller::unprepareWithBlock(this, v2);
}

uint64_t aci::Stream::start(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream5startEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_7_0;
  v2[4] = this;
  return aci::Controller::startWithBlock(this + 16, v2);
}

uint64_t non-virtual thunk toaci::Stream::start(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream5startEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_7_0;
  v2[4] = this - 16;
  return aci::Controller::startWithBlock(this, v2);
}

uint64_t aci::Stream::stop(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream4stopEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_8_1;
  v2[4] = this;
  return aci::Controller::stopWithBlock(this + 16, v2);
}

uint64_t non-virtual thunk toaci::Stream::stop(aci::Stream *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3aci6Stream4stopEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_8_1;
  v2[4] = this - 16;
  return aci::Controller::stopWithBlock(this, v2);
}

void aci::Stream::onNewData(aci::Stream *this, aci::Data *a2, aci::String *a3)
{
  std::mutex::lock((this + 144));
  v6 = *(this + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN3aci6Stream9onNewDataEPNS_4DataEPNS_6StringE_block_invoke;
  v7[3] = &__block_descriptor_tmp_10;
  v7[4] = a2;
  v7[5] = a3;
  aci::Array::enumerateObjectsUsingBlock(v6, v7);
  std::mutex::unlock((this + 144));
}

uint64_t (***aci::_ACIDynamicCast<aci::StreamListenerProtocol,aci::Object>(uint64_t (***result)(void, uint64_t *)))(void, uint64_t *)
{
  if (result)
  {
    return (**result)(result, &aci::StreamListenerProtocol::classTypeInfo(void)::ti);
  }

  return result;
}

uint64_t aci::Stream::registerStreamListener(aci::Stream *this, aci::StreamListenerProtocol *a2)
{
  v4 = aci::_ACIDynamicCast<aci::Object,aci::StreamListenerProtocol>(a2);
  if (v4)
  {
    v5 = v4;
    std::mutex::lock((this + 144));
    v6 = *(this + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___ZN3aci6Stream22registerStreamListenerEPNS_22StreamListenerProtocolE_block_invoke;
    v8[3] = &__block_descriptor_tmp_11_1;
    v8[4] = a2;
    aci::Array::enumerateObjectsUsingBlock(v6, v8);
    aci::Array::addObject(*(this + 16), v5);
    std::mutex::unlock((this + 144));
    return 0;
  }

  else
  {
    aci::Stream::registerStreamListener(&v9);
    return v9;
  }
}

aci::Object *aci::_ACIDynamicCast<aci::Object,aci::StreamListenerProtocol>(aci::Object *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Object::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

uint64_t aci::Stream::unregisterStreamListener(aci::Stream *this, aci::StreamListenerProtocol *a2)
{
  v3 = aci::_ACIDynamicCast<aci::Object,aci::StreamListenerProtocol>(a2);
  if (v3)
  {
    v4 = v3;
    std::mutex::lock((this + 144));
    aci::Array::removeObject(*(this + 16), v4);
    std::mutex::unlock((this + 144));
    return 0;
  }

  else
  {
    aci::Stream::registerStreamListener(&v6);
    return v6;
  }
}

void aci::StreamSpec::~StreamSpec(atomic_uint **this)
{
  *this = &unk_284F061D0;
  v2 = this + 3;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 5);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 4);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v2);
  *this = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 2);
}

{
  *this = &unk_284F061D0;
  v2 = this + 3;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 5);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 4);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v2);
  *this = &unk_284F05FA8;
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 2);

  JUMPOUT(0x23EED06D0);
}

void aci::Stream::~Stream(aci::Stream *this)
{
  *this = &unk_284F06218;
  *(this + 2) = &unk_284F06298;
  *(this + 12) = &unk_284F062E8;
  std::mutex::~mutex((this + 144));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 16);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 15);
  aci::SP<aci::ComponentGraph,&(void ACISPRetain<aci::ComponentGraph>(aci::ComponentGraph &)),&(void ACISPRelease<aci::ComponentGraph>(aci::ComponentGraph &))>::~SP(this + 14);
  aci::SP<aci::StreamSpec,&(void ACISPRetain<aci::StreamSpec>(aci::StreamSpec &)),&(void ACISPRelease<aci::StreamSpec>(aci::StreamSpec &))>::~SP(this + 13);
  *(this + 2) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((this + 32));
}

{
  *this = &unk_284F06218;
  *(this + 2) = &unk_284F06298;
  *(this + 12) = &unk_284F062E8;
  std::mutex::~mutex((this + 144));
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 16);
  aci::SP<aci::String,&(void ACISPRetain<aci::String>(aci::String &)),&(void ACISPRelease<aci::String>(aci::String &))>::~SP(this + 15);
  aci::SP<aci::ComponentGraph,&(void ACISPRetain<aci::ComponentGraph>(aci::ComponentGraph &)),&(void ACISPRelease<aci::ComponentGraph>(aci::ComponentGraph &))>::~SP(this + 14);
  aci::SP<aci::StreamSpec,&(void ACISPRetain<aci::StreamSpec>(aci::StreamSpec &)),&(void ACISPRelease<aci::StreamSpec>(aci::StreamSpec &))>::~SP(this + 13);
  *(this + 2) = &unk_284F055A8;
  std::recursive_mutex::~recursive_mutex((this + 32));

  JUMPOUT(0x23EED06D0);
}

uint64_t aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Object,aci::Controller,aci::SinkAgentProtocol>(uint64_t a1, uint64_t *a2)
{
  result = aci::Object::castToClass(a1, a2);
  if (!result)
  {

    return aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Controller,aci::SinkAgentProtocol>(a1, a2);
  }

  return result;
}

uint64_t non-virtual thunk toaci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Stream::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Object,aci::Controller,aci::SinkAgentProtocol>(result, a2);
  }

  return result;
}

{
  result = a1 - 96;
  if (a2 != &aci::Stream::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Object,aci::Controller,aci::SinkAgentProtocol>(result, a2);
  }

  return result;
}

uint64_t aci::MetaType<aci::Stream,aci::Object,aci::Controller,aci::SinkAgentProtocol>::castToClass<aci::Controller,aci::SinkAgentProtocol>(uint64_t a1, uint64_t *a2)
{
  result = aci::Controller::castToClass(a1 + 16, a2);
  if (!result)
  {

    return aci::SinkAgentProtocol::castToClass(a1 + 96, a2);
  }

  return result;
}

atomic_uint **aci::SP<aci::StreamSpec,&(void ACISPRetain<aci::StreamSpec>(aci::StreamSpec &)),&(void ACISPRelease<aci::StreamSpec>(aci::StreamSpec &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

atomic_uint **aci::SP<aci::ComponentGraph,&(void ACISPRetain<aci::ComponentGraph>(aci::ComponentGraph &)),&(void ACISPRelease<aci::ComponentGraph>(aci::ComponentGraph &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::Provider::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Provider::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Provider,aci::Object,aci::Activity>::castToClass<aci::Object,aci::Activity>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::Provider::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Provider::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Provider,aci::Object,aci::Activity>::castToClass<aci::Object,aci::Activity>(result, a2);
  }

  return result;
}

void sub_23C40C794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(va);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(v3);
  aci::Activity::~Activity(v2);
  _Unwind_Resume(a1);
}

aci::Service *aci::Provider::getService(aci::Array **this, unint64_t a2)
{
  v2 = aci::Array::objectAtIndex(this[15], a2);

  return aci::_ACIDynamicCast<aci::Service,aci::Object>(v2);
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

uint64_t aci::Provider::serviceForKey(aci::Provider *this, aci::String *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 15);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3aci8Provider13serviceForKeyEPNS_6StringE_block_invoke;
  v5[3] = &unk_278BBCA68;
  v5[4] = &v6;
  v5[5] = a2;
  aci::Array::enumerateObjectsUsingBlock(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_23C40C904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK3aci8Provider13serviceForKeyEPNS_6StringE_block_invoke(uint64_t a1, aci::Service *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = aci::_ACIDynamicCast<aci::Service,aci::Object>(a2);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (!v3)
  {
    ___ZNK3aci8Provider13serviceForKeyEPNS_6StringE_block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  v5 = *(**(v3 + 128) + 56);

  return v5();
}

uint64_t aci::Provider::discoverServices(aci::Provider *this)
{
  (*(**(this + 16) + 16))(&v4);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN3aci8Provider16discoverServicesEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_4_1;
  v3[4] = this;
  aci::Array::enumerateObjectsUsingBlock(v4, v3);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(&v4);
  return 1;
}

uint64_t ___ZN3aci8Provider16discoverServicesEv_block_invoke(uint64_t a1, aci::Stream *a2)
{
  v2 = *(a1 + 32);
  v3 = aci::_ACIDynamicCast<aci::Stream,aci::Object>(a2);
  if (v3)
  {
    (*(*v2 + 13))(&v5, v2, v3);
    aci::Array::addObject(v2[15], v5);
    aci::SP<aci::Service,&(void ACISPRetain<aci::Service>(aci::Service &)),&(void ACISPRelease<aci::Service>(aci::Service &))>::~SP(&v5);
  }

  return 0;
}

void sub_23C40CAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  aci::SP<aci::Service,&(void ACISPRetain<aci::Service>(aci::Service &)),&(void ACISPRelease<aci::Service>(aci::Service &))>::~SP(va);
  _Unwind_Resume(a1);
}

void aci::Provider::allServiceProps(aci::Provider *this)
{
  v1[0] = 0;
  v1[1] = v1;
  v1[2] = 0x3002000000;
  v1[3] = __Block_byref_object_copy_;
  v1[4] = __Block_byref_object_dispose_;
  aci::ACIObjectSP<aci::Array>();
}

void sub_23C40CC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP((v7 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return aci::Object::retain(result);
  }

  return result;
}

void aci::Provider::~Provider(aci::Provider *this)
{
  *this = &unk_284F063F8;
  *(this + 2) = &unk_284F064B0;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 15);
  *(this + 2) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

{
  *this = &unk_284F063F8;
  *(this + 2) = &unk_284F064B0;
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 15);
  *(this + 2) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x23EED06D0);
}

uint64_t aci::MetaType<aci::Provider,aci::Object,aci::Activity>::castToClass<aci::Object,aci::Activity>(uint64_t a1, uint64_t *a2)
{
  result = aci::Object::castToClass(a1, a2);
  if (!result)
  {

    return aci::Activity::castToClass(a1 + 16, a2);
  }

  return result;
}

atomic_uint **aci::SP<aci::Service,&(void ACISPRetain<aci::Service>(aci::Service &)),&(void ACISPRelease<aci::Service>(aci::Service &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::Port::castToClass(uint64_t a1, uint64_t *a2)
{
  if (a2 != &aci::Port::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Provider,aci::Object,aci::Activity>::castToClass<aci::Object,aci::Activity>(a1, a2);
  }

  return a1;
}

uint64_t non-virtual thunk toaci::Port::castToClass(uint64_t a1, uint64_t *a2)
{
  result = a1 - 16;
  if (a2 != &aci::Port::classTypeInfo(void)::ti)
  {
    return aci::MetaType<aci::Provider,aci::Object,aci::Activity>::castToClass<aci::Object,aci::Activity>(result, a2);
  }

  return result;
}

void sub_23C40CFE0(_Unwind_Exception *a1)
{
  aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(v3);
  aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(v2);
  aci::Activity::~Activity(v1);
  _Unwind_Resume(a1);
}

void aci::Port::~Port(aci::Port *this)
{
  *this = &unk_284F064F0;
  *(this + 2) = &unk_284F06538;
  aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(this + 16);
  aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(this + 15);
  *(this + 2) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));
}

{
  *this = &unk_284F064F0;
  *(this + 2) = &unk_284F06538;
  aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(this + 16);
  aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(this + 15);
  *(this + 2) = &unk_284F05DA0;
  aci::SP<aci::Object,&(void ACISPRetain<aci::Object>(aci::Object &)),&(void ACISPRelease<aci::Object>(aci::Object &))>::~SP(this + 14);
  aci::SP<aci::Array,&(void ACISPRetain<aci::Array>(aci::Array &)),&(void ACISPRelease<aci::Array>(aci::Array &))>::~SP(this + 13);
  aci::SP<aci::Dictionary,&(void ACISPRetain<aci::Dictionary>(aci::Dictionary &)),&(void ACISPRelease<aci::Dictionary>(aci::Dictionary &))>::~SP(this + 12);
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x23EED06D0);
}

atomic_uint **aci::SP<aci::Component,&(void ACISPRetain<aci::Component>(aci::Component &)),&(void ACISPRelease<aci::Component>(aci::Component &))>::~SP(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    aci::Object::release(v2);
  }

  return a1;
}

uint64_t aci::fourccToStr(aci *this, void *a2, size_t a3)
{
  v5 = this;
  bzero(a2, a3);
  return snprintf(a2, a3, "%c%c%c%c", HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5);
}

atomic_uint ***aci::Array::removeObject(atomic_uint ***this, atomic_uint *a2)
{
  v2 = this;
  v4 = this[2];
  v3 = this[3];
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        return this;
      }
    }
  }

  if (v4 != v3)
  {
    this = aci::Object::release(*v4);
    v5 = v2[3];
    v6 = v5 - (v4 + 1);
    if (v5 != v4 + 1)
    {
      this = memmove(v4, v4 + 1, v5 - (v4 + 1));
    }

    v2[3] = (v4 + v6);
  }

  return this;
}

atomic_uint *aci::Array::removeLastObject(atomic_uint *this)
{
  v1 = *(this + 3);
  if (v1 != *(this + 2))
  {
    v2 = *v1;
    *(this + 3) = v1 - 1;
    return aci::Object::release(v2);
  }

  return this;
}

atomic_uint *aci::Array::removeObjectAtIndex(atomic_uint *this, unint64_t a2)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3 != v4 && (v3 - v4) >> 3 > a2)
  {
    v6 = this;
    v7 = &v4[8 * a2];
    v8 = *v7;
    v9 = v3 - (v7 + 1);
    if (v3 != (v7 + 1))
    {
      memmove(v7, v7 + 1, v3 - (v7 + 1));
    }

    *(v6 + 3) = v7 + v9;

    return aci::Object::release(v8);
  }

  return this;
}

uint64_t aci::Array::objectAtIndex(aci::Array *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (a2 >= (*(this + 3) - v2) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t aci::Array::lastObject(aci::Array *this)
{
  v1 = *(this + 3);
  if (v1 == *(this + 2))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t aci::Service::subscribe(aci::Dictionary **this, aci::String *a2, aci::ServiceReceiverProtocol *a3)
{
  v5 = aci::_ACIDynamicCast<aci::Object,aci::ServiceReceiverProtocol>(a3);
  if (v5)
  {
    v6 = v5;
    if (!aci::Dictionary::objectForKey(this[17], a2))
    {
      aci::Dictionary::setObject(this[17], v6, a2);
    }

    return 0;
  }

  else
  {
    v8 = _aciLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
    }

    return 4294967284;
  }
}

uint64_t aci::Service::unsubscribe(atomic_uint **this, aci::String *a2)
{
  if (aci::Dictionary::objectForKey(this[17], a2))
  {
    aci::Dictionary::removeObject(this[17], a2);
  }

  return 0;
}

uint64_t aci::Service::start(aci::Service *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_23C404000, v3, v4, "%s:%d", v5, v6, v7, v8, v24);
  }

  if (*(this + 38) > 8)
  {
    v15 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3();
    if (v9)
    {
      v15 = 0;
      *(this + 40) = 9;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_7();
      v12 = aci::Stream::registerStreamListener(v10, v11);
      if (v12)
      {
        v15 = v12;
        v18 = _aciLogGeneral();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_4();
          _os_log_impl(v19, v20, v21, v22, v23, 8u);
        }
      }

      else
      {
        v13 = OUTLINED_FUNCTION_1();
        v15 = (*(v14 + 88))(v13);
        if (!v15)
        {
          *(this + 38) = 9;
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t aci::Service::stop(aci::Service *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_23C404000, v3, v4, "%s:%d", v5, v6, v7, v8, v25);
  }

  if (*(this + 38) < 7)
  {
    v15 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3();
    if (v16)
    {
      v15 = 0;
      *(this + 40) = 6;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_7();
      v11 = aci::Stream::unregisterStreamListener(v9, v10);
      if (v11)
      {
        v15 = v11;
        v19 = _aciLogGeneral();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_4();
          _os_log_impl(v20, v21, v22, v23, v24, 8u);
        }
      }

      else
      {
        v12 = OUTLINED_FUNCTION_1();
        v14 = (*(v13 + 96))(v12);
        v15 = v14;
        if (v14)
        {
          v16 = v14 == -8;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          *(this + 38) = 6;
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t aci::Service::prepare(aci::Service *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_23C404000, v4, v5, "%s:%d", v6, v7, v8, v9, v16);
  }

  OUTLINED_FUNCTION_6();
  if (v10 > 5)
  {
    result = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3();
  if (v11)
  {
    v1 = (this + 160);
    goto LABEL_9;
  }

  v12 = OUTLINED_FUNCTION_1();
  result = (*(v13 + 72))(v12);
  if (!result)
  {
LABEL_9:
    result = 0;
    *v1 = 6;
  }

LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aci::Service::unprepare(aci::Service *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_23C404000, v4, v5, "%s:%d", v6, v7, v8, v9, v18);
  }

  v10 = OUTLINED_FUNCTION_7();
  aci::Stream::unregisterStreamListener(v10, v11);
  OUTLINED_FUNCTION_6();
  if (v12 < 4)
  {
    result = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3();
  if (v16)
  {
    result = 0;
    v1 = (this + 160);
LABEL_10:
    *v1 = 3;
    goto LABEL_11;
  }

  v13 = OUTLINED_FUNCTION_1();
  result = (*(v14 + 80))(v13);
  if (result)
  {
    v16 = result == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aci::Service::activate(aci::Service *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_23C404000, v4, v5, "%s:%d", v6, v7, v8, v9, v16);
  }

  OUTLINED_FUNCTION_6();
  if (v10 > 2)
  {
    result = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3();
  if (v11)
  {
    v1 = (this + 160);
    goto LABEL_9;
  }

  v12 = OUTLINED_FUNCTION_1();
  result = (*(v13 + 56))(v12);
  if (!result)
  {
LABEL_9:
    result = 0;
    *v1 = 3;
  }

LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aci::Service::deactivate(aci::Service *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_23C404000, v4, v5, "%s:%d", v6, v7, v8, v9, v18);
  }

  v10 = OUTLINED_FUNCTION_7();
  aci::Stream::unregisterStreamListener(v10, v11);
  OUTLINED_FUNCTION_6();
  if (v12 < 1)
  {
    result = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3();
  if (v16)
  {
    result = 0;
    v1 = (this + 160);
LABEL_10:
    *v1 = 0;
    goto LABEL_11;
  }

  v13 = OUTLINED_FUNCTION_1();
  result = (*(v14 + 64))(v13);
  if (result)
  {
    v16 = result == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void aci::Service::getSpec(void *a1)
{
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8(&dword_23C404000, v3, v4, "[ACIVERIFY]Can't find source spec!", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

{
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8(&dword_23C404000, v3, v4, "[ACIVERIFY]Can't find source!", v5, v6, v7, v8, 0);
  }

  *a1 = 0;
}

uint64_t ___ZN3aci14ComponentGraph8activateEv_block_invoke_2(uint64_t a1, aci::Controller *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = aci::_ACIDynamicCast<aci::Controller,aci::Object>(a2);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_1_0(result);
    result = (*(v4 + 16))(v3);
    if (result)
    {
      v6 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v6))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v7, v8, "[ACIVERIFY]Activate component(%p) failed", v9, v10, v11, v12, v13);
      }

      result = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN3aci14ComponentGraph8activateEv_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 16))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Activate component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph8activateEv_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 16))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Activate component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph10deactivateEv_block_invoke_2(uint64_t a1, aci::Controller *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = aci::_ACIDynamicCast<aci::Controller,aci::Object>(a2);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_1_0(result);
    result = (*(v4 + 24))(v3);
    if (result)
    {
      v6 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v6))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v7, v8, "[ACIVERIFY]Deactivate component(%p) failed", v9, v10, v11, v12, v13);
      }

      result = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN3aci14ComponentGraph10deactivateEv_block_invoke_15(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 24))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Deactivate component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph10deactivateEv_block_invoke_17(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 24))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Deactivate component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph7prepareEv_block_invoke_2(uint64_t a1, aci::Controller *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = aci::_ACIDynamicCast<aci::Controller,aci::Object>(a2);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_1_0(result);
    result = (*(v4 + 32))(v3);
    if (result)
    {
      v6 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v6))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v7, v8, "[ACIVERIFY]Prepare component(%p) failed", v9, v10, v11, v12, v13);
      }

      result = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN3aci14ComponentGraph7prepareEv_block_invoke_23(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 32))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Prepare component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph7prepareEv_block_invoke_25(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 32))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Prepare component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph9unprepareEv_block_invoke_2(uint64_t a1, aci::Controller *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = aci::_ACIDynamicCast<aci::Controller,aci::Object>(a2);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_1_0(result);
    result = (*(v4 + 40))(v3);
    if (result)
    {
      v6 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v6))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v7, v8, "[ACIVERIFY]Unprepare component(%p) failed", v9, v10, v11, v12, v13);
      }

      result = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN3aci14ComponentGraph9unprepareEv_block_invoke_31(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 40))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Unprepare component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph9unprepareEv_block_invoke_33(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 40))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Unprepare component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph5startEv_block_invoke_2(uint64_t a1, aci::Controller *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = aci::_ACIDynamicCast<aci::Controller,aci::Object>(a2);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_1_0(result);
    result = (*(v4 + 48))(v3);
    if (result)
    {
      v6 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v6))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v7, v8, "[ACIVERIFY]Start component(%p) failed", v9, v10, v11, v12, v13);
      }

      result = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN3aci14ComponentGraph5startEv_block_invoke_39(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 48))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Start component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph5startEv_block_invoke_41(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 48))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Start component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph4stopEv_block_invoke_2(uint64_t a1, aci::Controller *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = aci::_ACIDynamicCast<aci::Controller,aci::Object>(a2);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_1_0(result);
    result = (*(v4 + 56))(v3);
    if (result)
    {
      v6 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v6))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v7, v8, "[ACIVERIFY]Stop component(%p) failed", v9, v10, v11, v12, v13);
      }

      result = 1;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN3aci14ComponentGraph4stopEv_block_invoke_47(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 56))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Stop component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ___ZN3aci14ComponentGraph4stopEv_block_invoke_49(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_0(a1, a2);
  v4 = aci::_ACIDynamicCast<aci::Controller,aci::Object>(v3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_1_0(v4);
    v7 = (*(v6 + 56))(v5);
    OUTLINED_FUNCTION_0_0(v7);
    if (v8)
    {
      v11 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v11))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v12, v13, "[ACIVERIFY]Stop component(%p) failed", v14, v15, v16, v17, v18);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t aci::Component::attachOutPort(aci::Component *this, aci::Port *a2, int a3)
{
  result = 4294967294;
  if (a2)
  {
    if (a3 <= 15)
    {
      OUTLINED_FUNCTION_6_0();
      aci::Component::Ports::attachPort((v4 + 1872), v5);
      return 0;
    }
  }

  return result;
}

uint64_t aci::Component::attachInPort(aci::Component *this, aci::Port *a2, int a3)
{
  result = 4294967294;
  if (a2)
  {
    if (a3 <= 15)
    {
      OUTLINED_FUNCTION_6_0();
      aci::Component::Ports::attachPort((v4 + 208), v5);
      return 0;
    }
  }

  return result;
}

uint64_t aci::Component::detachOutPort(aci::Component *this, aci::Port *a2, int a3)
{
  result = 4294967294;
  if (a2)
  {
    if (a3 <= 15)
    {
      OUTLINED_FUNCTION_6_0();
      aci::Component::Ports::detachPort((v4 + 1872), v5);
      return 0;
    }
  }

  return result;
}

uint64_t aci::Component::detachInPort(aci::Component *this, aci::Port *a2, int a3)
{
  result = 4294967294;
  if (a2)
  {
    if (a3 <= 15)
    {
      OUTLINED_FUNCTION_6_0();
      aci::Component::Ports::detachPort((v4 + 208), v5);
      return 0;
    }
  }

  return result;
}

aci::Port *___ZN3aci9Component5writeEPNS_4DataEi_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_4_0(a1, a2);
  result = aci::_ACIDynamicCast<aci::Port,aci::Object>(v4);
  if (result)
  {
    v6 = aci::Port::write(result, *(a1 + 40));
    OUTLINED_FUNCTION_0_0(v6);
    if (v7)
    {
      v9 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v9))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v10, v11, "[ACIVERIFY]Write data to port(%p) failed!", v12, v13, v14, v15, v16);
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

aci::Port *___ZN3aci9Component5writeEPNS_4DataEi_block_invoke_56(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_4_0(a1, a2);
  result = aci::_ACIDynamicCast<aci::Port,aci::Object>(v4);
  if (result)
  {
    v6 = aci::Port::write(result, *(a1 + 40));
    OUTLINED_FUNCTION_0_0(v6);
    if (v7)
    {
      v9 = _aciLogGeneral();
      if (OUTLINED_FUNCTION_5_0(v9))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_2_0(&dword_23C404000, v10, v11, "[ACIVERIFY]Write data to port(%p) failed!", v12, v13, v14, v15, v16);
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

aci::Factory *aci::Component::acquireData(aci::Array **this, int a2)
{
  v2 = aci::Array::objectAtIndex(this[450], a2);
  result = aci::_ACIDynamicCast<aci::Factory,aci::Object>(v2);
  if (result)
  {
    v4 = *(*result + 56);

    return v4();
  }

  return result;
}

uint64_t (***___ZN3aci4Sink17registerSinkAgentEPNS_17SinkAgentProtocolE_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *)))(void, uint64_t *)
{
  result = aci::_ACIDynamicCast<aci::SinkAgentProtocol,aci::Object>(a2);
  if (result)
  {
    return (result != *(a1 + 32));
  }

  return result;
}

uint64_t ___ZN3aci4Sink7processEPNS_4DataEi_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v3 = aci::_ACIDynamicCast<aci::SinkAgentProtocol,aci::Object>(a2);
  if (v3)
  {
    ((*v3)[2])(v3, *(a1 + 32), 0);
  }

  return 0;
}

void aci::Sink::registerSinkAgent(_DWORD *a1)
{
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8(&dword_23C404000, v3, v4, "[ACIVERIFY]Agent is not a valid aci::Object!", v5, v6, v7, v8, 0);
  }

  *a1 = -12;
}

uint64_t aci::Activity::initialize(aci::Activity *this)
{
  if (*(this + 2) <= 0)
  {
    v2 = OUTLINED_FUNCTION_0_1(this);
    aci::Array::enumerateObjectsUsingBlock(v2, &__block_literal_global_1);
    *(v1 + 8) = 1;
  }

  return 0;
}

uint64_t aci::Activity::deinitialize(aci::Activity *this)
{
  if (*(this + 2) >= 1)
  {
    v2 = OUTLINED_FUNCTION_0_1(this);
    aci::Array::enumerateObjectsUsingBlock(v2, &__block_literal_global_6);
    *(v1 + 8) = 0;
  }

  return 0;
}

uint64_t aci::Activity::resume(aci::Activity *this)
{
  if (*(this + 2) <= 1)
  {
    v2 = OUTLINED_FUNCTION_0_1(this);
    aci::Array::enumerateObjectsUsingBlock(v2, &__block_literal_global_10_0);
    *(v1 + 8) = 2;
  }

  return 0;
}

uint64_t aci::Activity::suspend(aci::Activity *this)
{
  if (*(this + 2) >= 2)
  {
    v2 = OUTLINED_FUNCTION_0_1(this);
    aci::Array::enumerateObjectsUsingBlock(v2, &__block_literal_global_14_0);
    *(v1 + 8) = 2;
  }

  return 0;
}

aci::Data *___ZN3aci7Factory11acquireDataEv_block_invoke(uint64_t a1, aci::Data *a2)
{
  result = aci::_ACIDynamicCast<aci::Data,aci::Object>(a2);
  if (result)
  {
    v4 = result;
    result = aci::Data::isFree(result);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = v4;
      return 1;
    }
  }

  return result;
}

void aci::Factory::acquireData(int *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *a1;
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_impl(&dword_23C404000, log, OS_LOG_TYPE_ERROR, "[ACIVERIFY]Factory data count(%ld) exceeds max count(%d)", buf, 0x12u);
}

const char *aci::String::getLength(aci::String *this)
{
  result = *(this + 2);
  if (result)
  {
    return strlen(result);
  }

  return result;
}

BOOL aci::String::isEqualToCString(aci::String *this, const char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v3 = *(this + 2);
  v4 = strlen(__s);
  return strncmp(__s, v3, v4) == 0;
}

uint64_t aci::String::isEqual(aci::String *this, const aci::Object *a2)
{
  if (aci::Object::isEqual(this, a2))
  {
    return 1;
  }

  result = aci::_ACIDynamicCast<aci::String,aci::Object>(a2);
  if (result)
  {
    v5 = *(*this + 56);

    return v5(this, result);
  }

  return result;
}

uint64_t ___ZN3aci6Stream9onNewDataEPNS_4DataEPNS_6StringE_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *))
{
  v3 = aci::_ACIDynamicCast<aci::StreamListenerProtocol,aci::Object>(a2);
  if (v3)
  {
    ((*v3)[2])(v3, *(a1 + 32), *(a1 + 40));
  }

  return 0;
}

uint64_t (***___ZN3aci6Stream22registerStreamListenerEPNS_22StreamListenerProtocolE_block_invoke(uint64_t a1, uint64_t (***a2)(void, uint64_t *)))(void, uint64_t *)
{
  result = aci::_ACIDynamicCast<aci::StreamListenerProtocol,aci::Object>(a2);
  if (result)
  {
    return (result != *(a1 + 32));
  }

  return result;
}

void aci::Stream::registerStreamListener(_DWORD *a1)
{
  v2 = _aciLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8(&dword_23C404000, v3, v4, "[ACIVERIFY]Listener is not a valid aci::Object!", v5, v6, v7, v8, 0);
  }

  *a1 = -12;
}

uint64_t aci::Provider::initialize(aci::Provider *this)
{
  if (!*(this + 16))
  {
    return 4294967285;
  }

  (*(*this + 88))(this);
  (*(*this + 96))(this);

  return aci::Activity::initialize((this + 16));
}

uint64_t aci::Provider::deinitialize(atomic_uint **this)
{
  v2 = aci::Activity::deinitialize((this + 2));
  if (!v2)
  {
    aci::Array::removeAllObjects(this[15]);
  }

  return v2;
}

uint64_t ___ZN3aci8Provider15allServicePropsEv_block_invoke(uint64_t a1, aci::Service *a2)
{
  v3 = aci::_ACIDynamicCast<aci::Service,aci::Object>(a2);
  if (v3)
  {
    v4 = (*(*v3 + 56))(v3);
    if (v4)
    {
      aci::Array::addObject(*(*(*(a1 + 32) + 8) + 40), *(v4 + 16));
    }
  }

  return 0;
}

uint64_t aci::Provider::startService(aci::Provider *this, aci::String *a2)
{
  v2 = aci::Provider::serviceForKey(this, a2);
  if (!v2)
  {
    return 4294967289;
  }

  return aci::Service::start(v2);
}

uint64_t aci::Provider::stopService(aci::Provider *this, aci::String *a2)
{
  v2 = aci::Provider::serviceForKey(this, a2);
  if (!v2)
  {
    return 4294967289;
  }

  return aci::Service::stop(v2);
}

uint64_t aci::Provider::prepareService(aci::Provider *this, aci::String *a2)
{
  v2 = aci::Provider::serviceForKey(this, a2);
  if (!v2)
  {
    return 4294967289;
  }

  return aci::Service::prepare(v2);
}

uint64_t aci::Provider::unprepareService(aci::Provider *this, aci::String *a2)
{
  v2 = aci::Provider::serviceForKey(this, a2);
  if (!v2)
  {
    return 4294967289;
  }

  return aci::Service::unprepare(v2);
}

uint64_t aci::Provider::activateService(aci::Provider *this, aci::String *a2)
{
  v2 = aci::Provider::serviceForKey(this, a2);
  if (!v2)
  {
    return 4294967289;
  }

  return aci::Service::activate(v2);
}

uint64_t aci::Provider::deactivateService(aci::Provider *this, aci::String *a2)
{
  v2 = aci::Provider::serviceForKey(this, a2);
  if (!v2)
  {
    return 4294967289;
  }

  return aci::Service::deactivate(v2);
}

uint64_t aci::Port::write(aci::Port *this, aci::Data *a2)
{
  if (*(this + 38) != 1)
  {
    return 4294967236;
  }

  v3 = *(this + 16);
  if (v3)
  {
    ++*(this + 18);
    if (v3[32] == 9)
    {
      v4 = *(this + 35);
      v5 = *(*v3 + 56);

      return v5();
    }

    else
    {
      return 4294967256;
    }
  }

  else
  {
    v7 = _aciLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23C404000, v7, OS_LOG_TYPE_ERROR, "[ACIVERIFY]No downstream component", v8, 2u);
    }

    return 4294967234;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}