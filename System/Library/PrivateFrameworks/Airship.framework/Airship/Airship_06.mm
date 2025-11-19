void ashp::async_notifier::cancel(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((lock[10]._os_unfair_lock_opaque & 0x100) == 0)
  {
    BYTE1(lock[10]._os_unfair_lock_opaque) = 1;
    if (LOBYTE(lock[10]._os_unfair_lock_opaque) == 1)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
      dispatch_source_cancel(*&lock[4]._os_unfair_lock_opaque);
      if (BYTE2(lock[10]._os_unfair_lock_opaque) == 1)
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v5, v6, v7);
        dispatch_resume(*&lock[4]._os_unfair_lock_opaque);
      }
    }
  }

  os_unfair_lock_unlock(lock);
}

void ashp::async_notifier::suspend(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((lock[10]._os_unfair_lock_opaque & 0x10000) == 0 && (lock[10]._os_unfair_lock_opaque & 0x100) == 0)
  {
    BYTE2(lock[10]._os_unfair_lock_opaque) = 1;
    if (LOBYTE(lock[10]._os_unfair_lock_opaque) == 1)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
      dispatch_suspend(*&lock[4]._os_unfair_lock_opaque);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v5, v6, v7);
      dispatch_source_merge_data(*&lock[4]._os_unfair_lock_opaque, 0);
    }
  }

  os_unfair_lock_unlock(lock);
}

void ashp::async_notifier::resume(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (BYTE2(lock[10]._os_unfair_lock_opaque) == 1 && (lock[10]._os_unfair_lock_opaque & 0x100) == 0)
  {
    BYTE2(lock[10]._os_unfair_lock_opaque) = 0;
    if (LOBYTE(lock[10]._os_unfair_lock_opaque) == 1)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
      dispatch_resume(*&lock[4]._os_unfair_lock_opaque);
    }
  }

  os_unfair_lock_unlock(lock);
}

void ashp::async_notifier::trigger(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[10]._os_unfair_lock_opaque)
  {
    if ((lock[10]._os_unfair_lock_opaque & 0x100) == 0 && (lock[10]._os_unfair_lock_opaque & 0x10000) == 0 && *&lock[6]._os_unfair_lock_opaque)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
      dispatch_source_merge_data(*&lock[4]._os_unfair_lock_opaque, 1uLL);
    }

    os_unfair_lock_unlock(lock);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x156, "trigger", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to use inactive object", "async_notifier.cpp", 0x156, "trigger", v5);
    _os_crash();
    __break(1u);
  }
}

uint64_t ashp::direct_buffer::get_paddr(ashp::direct_buffer *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 8, a2, a3, a4);
  v5 = *(this + 8);

  return ashp::devmem_mapping::get_paddr(v5);
}

uint64_t ashp::direct_buffer::map(ashp::direct_buffer *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = 3758097084;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 8, a2, a3, a4);
  v6 = *(this + 8);
  v7 = *(v6 + 16);
  ashp::optional<ashp::mock_hidable<ashp::devmem_mapping_manager>,void>::value(v7 + 584, v8, v9, v10);
  os_unfair_lock_lock((v7 + 584));
  v13 = *(v7 + 592);
  if (!v13)
  {
    v5 = 3758097112;
    goto LABEL_10;
  }

  v14 = *(v6 + 32);
  if (v14)
  {
    if (ashp::device_transport::is_memory_mapping_active(*(v7 + 592), v14))
    {
      v5 = 0;
      goto LABEL_10;
    }

    v13 = *(v7 + 592);
  }

  ashp::optional<ashp::memory_descriptor,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v6 + 24), v14, v11, v12);
  ashp::device_transport::create_memory_mapping(&v18, v13, *(v6 + 24));
  if (v18)
  {
    os_unfair_lock_lock((v6 + 8));
    v16 = *(v6 + 32);
    *(v6 + 32) = v18;
    v18 = 0;
    v19 = v16;
    ashp::owning_wrapper<ashp::device_transport::memory_mapping *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::memory_mapping>>::~owning_wrapper(&v19);
    os_unfair_lock_unlock((v6 + 8));
    v5 = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("device_memory.cpp", 0x7C, "refresh_mapping", v15);
  }

  ashp::owning_wrapper<ashp::device_transport::memory_mapping *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::memory_mapping>>::~owning_wrapper(&v18);
LABEL_10:
  os_unfair_lock_unlock((v7 + 584));
  return v5;
}

uint64_t ashp::direct_buffer::write(ashp::direct_buffer *this, const void *a2, unsigned int a3, const char *__len)
{
  v4 = *(this + 13);
  if (!v4)
  {
    return 3758097118;
  }

  if (__CFADD__(a3, __len) || a3 + __len > *(this + 28))
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_buffer.cpp", 0x39, "write", __len);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: out of bounds access to buffer", "direct_buffer.cpp", 0x39, "write", v6);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    memmove((v4 + a3), a2, __len);
    return 0;
  }

  return result;
}

uint64_t ashp::direct_buffer::read(ashp::direct_buffer *this, void *__dst, unsigned int a3, const char *__len)
{
  v4 = *(this + 13);
  if (!v4)
  {
    return 3758097118;
  }

  if (__CFADD__(a3, __len) || a3 + __len > *(this + 28))
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_buffer.cpp", 0x2E, "read", __len);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: out of bounds access to buffer", "direct_buffer.cpp", 0x2E, "read", v6);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    memmove(__dst, (v4 + a3), __len);
    return 0;
  }

  return result;
}

void ashp::direct_buffer::destroy(ashp::direct_buffer *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515D168;
    v6 = (this + 72);
    ashp::buffer_mapping::~buffer_mapping(this + 10, a2, a3, a4);
    ashp::refcounted_ptr<ashp::memory_descriptor,ashp::default_refcount_policy<ashp::memory_descriptor,void>::policy>::reset(v6);
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this + 8, v7, v8, v9);
    ashp::direct_client_object::~direct_client_object(this + 1, v10, v11, v12, v13);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

uint64_t ashp::direct_client::acipc_create_doorbell(ashp::direct_client *this, const __CFString *a2)
{
  (*(**(this + 3) + 40))(&v11);
  v12 = 0;
  v2 = v11;
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v12, v3, v4, v5);
  if (v2)
  {
    v10 = v11;
    v11 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v11, v6, v7, v8);
  return 0;
}

void sub_23ECEC450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, a2, a3, a4);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v6, v7, v8);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::acipc_create_memregion(ashp::direct_client *this, const __CFString *a2)
{
  (*(**(this + 3) + 32))(&v11);
  v12 = 0;
  v2 = v11;
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v12, v3, v4, v5);
  if (v2)
  {
    v10 = v11;
    v11 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v11, v6, v7, v8);
  return 0;
}

void sub_23ECEC674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, atomic_ullong a10, atomic_ullong a11, atomic_ullong a12)
{
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&a12, a2, a3, a4);
  os_unfair_lock_unlock(v15 + 4);
  ashp::acipc::memregion_controller::client_overrides::~client_overrides(v14, v17, v18, v19);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v13, v20, v21, v22);
  ashp::direct_client_object::~direct_client_object((v12 + 8), v23, v24, v25, v26);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a11, v27, v28, v29);
  MEMORY[0x23EF204E0](v12, 0x10E1C4099AF0B54);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a9, v30, v31, v32);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a10, v33, v34, v35);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::create_tr_controller(ashp::direct_client *this, const __CFString *a2)
{
  (*(**(this + 3) + 16))(&v11);
  v12[0] = 0;
  v2 = v11;
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v12, v3, v4, v5);
  if (v2)
  {
    v10 = v11;
    v11 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v11, v6, v7, v8);
  return 0;
}

void sub_23ECEC8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, atomic_ullong a10, atomic_ullong a11, char a12)
{
  ashp::acipc::tr_controller::client_overrides::~client_overrides(&a12, a2, a3, a4);
  ashp::acipc::tr_controller::client_overrides::~client_overrides((v12 + 88), v17, v18, v19);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v15, v20, v21, v22);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v14, v23, v24, v25);
  ashp::direct_client_object::~direct_client_object(v13, v26, v27, v28, v29);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a11, v30, v31, v32);
  MEMORY[0x23EF204E0](v12, 0x10E1C409E8C1369);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a9, v33, v34, v35);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a10, v36, v37, v38);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::create_cr_controller(ashp::direct_client *this, const __CFString *a2)
{
  (*(**(this + 3) + 24))(&v11);
  v12[0] = 0;
  v2 = v11;
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v12, v3, v4, v5);
  if (v2)
  {
    v10 = v11;
    v11 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v11, v6, v7, v8);
  return 0;
}

void sub_23ECECB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v33 = va_arg(va1, void);
  va_copy(va2, va1);
  v35 = va_arg(va2, void);
  va_copy(va3, va2);
  v37 = va_arg(va3, void);
  ashp::acipc::cr_controller::client_overrides::~client_overrides(va3, a2, a3, a4);
  ashp::acipc::cr_controller::client_overrides::~client_overrides(v9, v11, v12, v13);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v8, v14, v15, v16);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v7, v17, v18, v19);
  ashp::direct_client_object::~direct_client_object(v6, v20, v21, v22, v23);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va2, v24, v25, v26);
  MEMORY[0x23EF204E0](v5, 0x10E1C4086E6000ELL);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, v27, v28, v29);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v30, v31, v32);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::acipc_create_boot(ashp::direct_client *this, const __CFString *a2)
{
  (*(**(this + 3) + 8))(&v11);
  v12 = 0;
  v2 = v11;
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v12, v3, v4, v5);
  if (v2)
  {
    v10 = v11;
    v11 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v11, v6, v7, v8);
  return 0;
}

void sub_23ECECC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va2, a2, a3, a4);
  MEMORY[0x23EF204E0](v5, 0x10E1C40A11C1F1DLL);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, v7, v8, v9);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v10, v11, v12);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::interrupt_create(ashp::direct_client *this, const __CFString *a2, const char *a3)
{
  v5 = *(this + 3);
  os_unfair_lock_lock((v5 + 8));
  v10 = *(v5 + 16);
  if (!v10)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_client.cpp", 0x91, "create_interrupt", v9);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (*(v5 + 32) == 1)
  {
LABEL_9:
    ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x92, "create_interrupt", v8);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted access to terminated client", "driver_client.cpp", 0x92, "create_interrupt", v24);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  ashp::optional<ashp::interrupt_manager,void>::value(&v10[158], v6, v7, v8);
  ashp::interrupt_manager::get_vector_for_interrupt(&v27, v10 + 158, a2, a3, v11);
  if ((v27 & 0x100000000) != 0)
  {
    v15 = *(v5 + 16);
    ashp::optional<unsigned int,void>::value(&v27, v12, v13, v14);
    operator new();
  }

LABEL_10:
  ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x94, "create_interrupt", v14);
  v26 = 0;
  os_unfair_lock_unlock((v5 + 8));
  v27 = 0;
  v16 = v26;
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v27, v17, v18, v19);
  if (v16)
  {
    v25 = v26;
    v26 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v26, v20, v21, v22);
  return 0;
}

void sub_23ECECF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va2, a2, a3, a4);
  MEMORY[0x23EF204E0](v5, 0x10E1C407016C117);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, v7, v8, v9);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v10, v11, v12);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::buffer_create(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a3 >= 3)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_client.cpp", 0x72, "buffer_create", a4);
    return 0;
  }

  ashp::mappable_buffer::create(&v23, a2, a3, a4, a5);
  if ((v24 & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_client.cpp", 0x74, "buffer_create", v8);
    ashp::buffer_mapping::~buffer_mapping(&v23, v16, v17, v18);
    return 0;
  }

  v9 = *(a1 + 24);
  ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v23, v6, v7, v8);
  ashp::mappable_buffer::copy_descriptor(&v22, &v23, v10, v11, v12);
  os_unfair_lock_lock((v9 + 8));
  if (*(v9 + 32) != 1)
  {
    v14 = *(v9 + 16);
    v15 = v22;
    v22 = 0;
    v25 = v15;
    ashp::devmem_mapping::create();
  }

  ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x89, "create_device_memory_mapping", v13);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted access to terminated client", "driver_client.cpp", 0x89, "create_device_memory_mapping", v20);
  _os_crash();
  __break(1u);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "direct_client.cpp", 0x76, "buffer_create", v21);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECED2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v35 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  va_copy(va2, va1);
  v39 = va_arg(va2, void);
  v41 = va_arg(va2, void);
  va_copy(va3, va2);
  v42 = va_arg(va3, void);
  va_copy(va4, va3);
  v44 = va_arg(va4, void);
  v46 = va_arg(va4, void);
  v47 = va_arg(va4, void);
  ashp::buffer_mapping::~buffer_mapping((v5 + 80), a2, a3, a4);
  ashp::refcounted_ptr<ashp::memory_descriptor,ashp::default_refcount_policy<ashp::memory_descriptor,void>::policy>::reset(v7);
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v6, v10, v11, v12);
  ashp::direct_client_object::~direct_client_object((v5 + 8), v13, v14, v15, v16);
  ashp::buffer_mapping::~buffer_mapping(va4, v17, v18, v19);
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset((v8 - 56), v20, v21, v22);
  MEMORY[0x23EF204E0](v5, 0x10E1C40C2A69DA6);
  ashp::buffer_mapping::~buffer_mapping(va, v23, v24, v25);
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(va1, v26, v27, v28);
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(va2, v29, v30, v31);
  ashp::buffer_mapping::~buffer_mapping(va3, v32, v33, v34);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::get_exec_stage(ashp::direct_client *this)
{
  v1 = *(this + 1);
  os_unfair_lock_lock(v1 + 63);
  os_unfair_lock_opaque = v1[65]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 63);
  return os_unfair_lock_opaque;
}

uint64_t ashp::direct_client::create_exec_stage_monitor(ashp::direct_client *this)
{
  v1 = *(this + 3);
  os_unfair_lock_lock((v1 + 8));
  v4 = *(v1 + 16);
  if (v4)
  {
    if (*(v1 + 32) != 1)
    {
      ashp::monitor::create(&v7, v4, (v4 + 264));
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_client.cpp", 0x70, "create_exec_stage_monitor", v3);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x71, "create_exec_stage_monitor", v2);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted access to terminated client", "driver_client.cpp", 0x71, "create_exec_stage_monitor", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECED564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, a2, a3, a4);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v6, v7, v8);
  _Unwind_Resume(a1);
}

void sub_23ECED698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, a2, a3, a4);
  MEMORY[0x23EF204E0](v5, v6);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_client::create_resource_monitor(ashp::direct_client *this, const __CFString *a2, uint64_t a3)
{
  v5 = *(this + 3);
  os_unfair_lock_lock((v5 + 8));
  v10 = *(v5 + 16);
  if (!v10)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_client.cpp", 0x63, "create_resource_monitor", v9);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (*(v5 + 32) == 1)
  {
LABEL_9:
    ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x64, "create_resource_monitor", v8);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted access to terminated client", "driver_client.cpp", 0x64, "create_resource_monitor", v25);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  ashp::optional<ashp::acipc::tr_ring,void>::value(&v10[136], v6, v7, v8);
  v13 = ashp::driver_resource_manager::get(v10 + 136, a2, a3, v11);
  if (v13)
  {
    ashp::monitor::create(&v29, *(v5 + 16), (v13 + 56));
  }

LABEL_10:
  ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x66, "create_resource_monitor", v12);
  ashp::driver_client::create_resource_monitor(ashp::boxed::string,unsigned int)::$_0::operator()<>(v26);
  v29 = 0;
  os_unfair_lock_unlock((v5 + 8));
  v28 = 0;
  v16 = ashp::operator==<int,0>(&v29, &v28, v14, v15);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v28, v17, v18, v19);
  if (!v16)
  {
    v23 = v29;
    v29 = 0;
    v27 = v23;
    ashp::direct_monitor::create();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v29, v20, v21, v22);
  return 0;
}

void ashp::direct_client::release_resource(ashp::direct_client *this, const __CFString *a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(this + 3);
  os_unfair_lock_lock((v5 + 8));
  if (*(v5 + 32) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x58, "release_resource", v6);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted access to terminated client", "driver_client.cpp", 0x58, "release_resource", v16);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  owned_resource = ashp::driver_client::get_owned_resource(v5, a2, a3);
  v11 = owned_resource;
  if (owned_resource)
  {
    ashp::driver_resource::release(owned_resource, v5, v8, v9, v10);
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_resource,ashp::intrusive_list_link<ashp::driver_resource>,&ashp::driver_resource::_owner_link>::remove(v5 + 40, v11, v12, v13);
    goto LABEL_10;
  }

  log_level = ashp::detail::logging::get_log_level(0);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v18 = "driver_client.cpp";
      v19 = 1024;
      v20 = 90;
      v21 = 2082;
      v22 = "release_resource";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to get resource", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_9:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to get resource", "driver_client.cpp", 90, "release_resource");
      goto LABEL_10;
    }

LABEL_12:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_9;
  }

LABEL_10:
  os_unfair_lock_unlock((v5 + 8));
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::direct_client::acquire_resource(ashp::direct_client *this, const __CFString *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(this + 3);
  os_unfair_lock_lock((v5 + 8));
  if (!*(v5 + 16))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_client.cpp", 0x49, "acquire_resource", v7);
    _os_crash();
    __break(1u);
LABEL_28:
    ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x4B, "acquire_resource", v12);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted access to terminated client", "driver_client.cpp", 0x4B, "acquire_resource", v25);
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      v8 = CStringPtr;
    }

    else
    {
      v8 = "???";
    }
  }

  else
  {
    v8 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v29 = "driver_client.cpp";
      v30 = 1024;
      v31 = 74;
      v32 = 2082;
      v33 = "acquire_resource";
      v34 = 2080;
      v35 = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] acquiring resource %s", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] acquiring resource %s", "driver_client.cpp", 74, "acquire_resource", v8);
  }

  if (*(v5 + 32) == 1)
  {
    goto LABEL_28;
  }

  v13 = *(v5 + 16);
  ashp::optional<ashp::acipc::tr_ring,void>::value(&v13[136], v10, v11, v12);
  v15 = ashp::driver_resource_manager::get(v13 + 136, a2, a3, v14);
  v17 = v15;
  if (!v15)
  {
LABEL_29:
    ashp::detail::control_flow::log_guard_else_failure("driver_client.cpp", 0x4D, "acquire_resource", v16);
    ashp::driver_client::acquire_resource(ashp::boxed::string,unsigned int)::$_1::operator()<>(v26);
    v18 = 3758097090;
    goto LABEL_26;
  }

  os_unfair_lock_lock(v15);
  if (*&v17[6]._os_unfair_lock_opaque)
  {
    v18 = 3758097093;
    os_unfair_lock_unlock(v17);
    v20 = ashp::detail::logging::get_log_level(v19);
    if (v20 >= 1)
    {
      v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        *buf = 136446978;
        v29 = "driver_client.cpp";
        v30 = 1024;
        v31 = 79;
        v32 = 2082;
        v33 = "acquire_resource";
        v34 = 1024;
        LODWORD(v35) = -536870203;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] result=0x%x", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v20))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] result=0x%x", "driver_client.cpp", 79, "acquire_resource", -536870203);
    }
  }

  else
  {
    *&v17[6]._os_unfair_lock_opaque = v5;
    ashp::monitor_target::update_value(v17 + 14, 1);
    os_unfair_lock_unlock(v17);
    if (*&v17[12]._os_unfair_lock_opaque)
    {
      ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v21);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v27);
      _os_crash();
      __break(1u);
    }

    v18 = 0;
    v22 = *(v5 + 48);
    *&v17[8]._os_unfair_lock_opaque = *v22;
    *&v17[10]._os_unfair_lock_opaque = v22;
    *v22 = v17;
    *(v5 + 48) = v17 + 8;
    *&v17[12]._os_unfair_lock_opaque = v5 + 40;
  }

LABEL_26:
  os_unfair_lock_unlock((v5 + 8));
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

void ashp::direct_client::destroy(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    v6 = this;
    *&this->_os_unfair_lock_opaque = &unk_28515D210;
    os_unfair_lock_lock(this + 8);
    v7 = *(v6 + 5);
    os_unfair_lock_unlock(v6 + 8);
    if (v7)
    {
LABEL_20:
      ashp::direct_client::~direct_client()::$_0::operator()<>(v8);
      ashp::direct_client_object_manager::dump_list(v6 + 8, v35, v36, v37, v38);
      ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to destroy client with subordinate object handles", "direct_client.cpp", 0x35, "~direct_client", v39);
      _os_crash();
      __break(1u);
      goto LABEL_21;
    }

    ashp::driver_client::terminate(*(v6 + 3));
    v9 = *(v6 + 1);
    v10 = *(v6 + 3);
    os_unfair_lock_lock((v9 + 8));
    v15 = *(v9 + 3728);
    if (v15)
    {
      v7 = 0;
      v5 = (v9 + 3728);
      while (*(*(v9 + 3744) + 8 * v7) != v10)
      {
        if (v15 == ++v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v41 = 0;
      v6 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver.cpp", 0x66, "destroy_client", v14);
      _os_crash();
      __break(1u);
    }

    v40 = v7;
    v41 = 1;
    ashp::optional<unsigned long long,void>::value(&v40, v11, v12, v13);
    v19 = v7 + 1;
    if (v7 != -1)
    {
      v20 = *v5;
      if (*v5 >= v19)
      {
        if (*v5 > v19)
        {
          do
          {
            v21 = v7++;
            v22 = (*(v9 + 3744) + 8 * v21);
            v23 = *v22;
            *v22 = v22[1];
            v22[1] = 0;
            v43 = 0;
            ashp::owning_wrapper<ashp::driver_client *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::driver_client>>::~owning_wrapper(&v43);
            v42 = 0;
            v24 = v22[1];
            v22[1] = v23;
            v43 = v24;
            ashp::owning_wrapper<ashp::driver_client *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::driver_client>>::~owning_wrapper(&v43);
            ashp::owning_wrapper<ashp::driver_client *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::driver_client>>::~owning_wrapper(&v42);
            v20 = *(v9 + 3728);
          }

          while (v21 + 2 < v20);
        }

        if (v20 >= v7)
        {
          ashp::detail::dynamic_array::storage<ashp::owned_ptr<ashp::driver_client,ashp::polymorphic_deleter<ashp::driver_client>>>::reduce_size(v5, v7, v16, v17, v18);
          os_unfair_lock_unlock((v9 + 8));
          ashp::direct_client_object_manager::~direct_client_object_manager((v6 + 32), v25, v26, v27, v28);
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v6 + 2, v29, v30, v31);

LABEL_21:
          JUMPOUT(0x23EF204E0);
        }

        goto LABEL_19;
      }

LABEL_18:
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22C, "erase", v17);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22C, "erase", v33);
      _os_crash();
      __break(1u);
LABEL_19:
      v6 = "dynamic_array.hpp";
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x241, "truncate", v17);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted truncate to larger size", "dynamic_array.hpp", 0x241, "truncate", v34);
      v8 = _os_crash();
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22B, "erase", v17);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22B, "erase", v32);
  _os_crash();
  __break(1u);
  goto LABEL_18;
}

void ashp::direct_client::~direct_client()::$_0::operator()<>(ashp::detail::logging *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v4 = "direct_client.cpp";
      v5 = 1024;
      v6 = 51;
      v7 = 2082;
      v8 = "~direct_client";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] object manager list not empty; dumping direct client objects", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] object manager list not empty; dumping direct client objects", "direct_client.cpp", 51, "~direct_client");
  }

  v2 = *MEMORY[0x277D85DE8];
}

void ashp::client_interrupt::handle_terminate(os_unfair_lock_s *this)
{
  os_unfair_lock_unlock(this + 4);
  ashp::client_interrupt::cancel(this);

  os_unfair_lock_lock(this + 4);
}

void ashp::client_interrupt::cancel(ashp::client_interrupt *this)
{
  os_unfair_lock_lock(this + 24);
  if ((*(this + 184) & 1) == 0)
  {
    os_unfair_lock_lock(this + 4);
    *(this + 184) = 1;
    os_unfair_lock_unlock(this + 4);
    if (*(this + 168) == 1)
    {
      *(this + 168) = 0;
      ashp::interrupt::~interrupt(this + 14, v2, v3, v4, v5);
    }
  }

  os_unfair_lock_unlock(this + 24);
}

uint64_t ashp::interrupt::~interrupt(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *a1;
  if (*a1)
  {
    ashp::optional<ashp::interrupt_manager,void>::value(v5 + 632, a2, a3, a4);
    os_unfair_lock_lock((v5 + 632));
    pthread_rwlock_wrlock((v5 + 640));
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_resource,ashp::intrusive_list_link<ashp::driver_resource>,&ashp::driver_resource::_owner_link>::remove(v5 + 3200, a1, v7, v8);
    pthread_rwlock_unlock((v5 + 640));
    ashp::interrupt_manager::recompute_source_registration_and_suspension((v5 + 632));
    os_unfair_lock_unlock((v5 + 632));
    ashp::intrusive_list_link<ashp::interrupt>::~intrusive_list_link((a1 + 4), v9, v10, v11);
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(a1 + 2, v12, v13, v14);
    return a1;
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x1E, "~interrupt", a5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::intrusive_list_link<ashp::interrupt>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::interrupt_manager::recompute_source_registration_and_suspension(const os_unfair_lock *this)
{
  v47 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  v4 = *&this[642]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v4 + 8);
      v5 |= v7;
      if (*(v4 + 24))
      {
        v7 = 0;
      }

      v6 |= v7;
      v4 = *(v4 + 32);
    }

    while (v4);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  for (i = 0; i != 32; ++i)
  {
    if (*(ashp::static_array<ashp::optional<ashp::interrupt_manager::interrupt_context,void>,32ul>::operator[](&this[54], i, v2, v3) + 64) == 1)
    {
      v9 = ashp::static_array<ashp::optional<ashp::interrupt_manager::interrupt_context,void>,32ul>::operator[](&this[54], i, v2, v3);
      ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v9, v10, v11, v12);
      v15 = 1;
      if (((1 << i) & v5) == 0)
      {
        *buf = 0;
        v16 = ashp::operator==<int,0>((v9 + 56), buf, v13, v14);
        ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(buf, v17, v18, v19);
        v15 = !v16;
      }

      if (((1 << i) & v6) != 0 || (*buf = 0, v20 = ashp::operator==<int,0>((v9 + 56), buf, v13, v14), ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(buf, v21, v22, v23), !v20))
      {
        os_unfair_lock_assert_owner(this);
        if ((*(v9 + 17) & 1) == 0)
        {
          v26 = *(v9 + 16);
          *(v9 + 17) = 1;
          if (v26 == 1)
          {
            v27 = (*(**(v9 + 32) + 8))(*(v9 + 32));
            dispatch_resume(v27);
          }
        }
      }

      else
      {
        os_unfair_lock_assert_owner(this);
        if (*(v9 + 17) == 1)
        {
          v24 = *(v9 + 16);
          *(v9 + 17) = 0;
          if (v24 == 1)
          {
            v25 = (*(**(v9 + 32) + 8))(*(v9 + 32));
            dispatch_suspend(v25);
          }
        }
      }

      if (v15)
      {
        if ((*(v9 + 16) & 1) == 0 && *&this[52]._os_unfair_lock_opaque && *(v9 + 24) | *(v9 + 48))
        {
          os_unfair_lock_assert_owner(this);
          if (*&this[52]._os_unfair_lock_opaque)
          {
            if (*(v9 + 16) != 1)
            {
              if (*(v9 + 24) | *(v9 + 48))
              {
                v30 = *(v9 + 12);
                log_level = ashp::detail::logging::get_log_level(v28);
                if (log_level >= 4)
                {
                  log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (log_level)
                  {
                    *buf = 136446978;
                    *&buf[4] = "interrupt.cpp";
                    v41 = 1024;
                    v42 = 254;
                    v43 = 2082;
                    v44 = "connect_interrupt";
                    v45 = 1024;
                    v46 = v30;
                    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] adding interrupt source %u", buf, 0x22u);
                  }
                }

                if (ashp::detail::logging::get_log_level(log_level))
                {
                  if (airship_platform_get_global_logger::once != -1)
                  {
                    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                  }

                  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] adding interrupt source %u", "interrupt.cpp", 254, "connect_interrupt", v30);
                }

                if (*(v9 + 48))
                {
                  v35 = 48;
                }

                else
                {
                  v35 = 24;
                }

                if (*(v9 + 48))
                {
                  v36 = (v9 + 48);
                }

                else
                {
                  v36 = (v9 + 24);
                }

                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v36, v32, v33, v34);
                v37 = *(v9 + v35);
                operator new();
              }

LABEL_46:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0xFC, "connect_interrupt", v29);
              _os_crash();
              __break(1u);
            }
          }

          else
          {
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0xFA, "connect_interrupt", v29);
            _os_crash();
            __break(1u);
          }

          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0xFB, "connect_interrupt", v29);
          _os_crash();
          __break(1u);
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x13D, "connect_interrupt", v39);
          _os_crash();
          __break(1u);
          goto LABEL_46;
        }
      }

      else
      {
        ashp::interrupt_manager::disconnect_interrupt(this, v9);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_23ECEEAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

uint64_t ashp::static_array<ashp::optional<ashp::interrupt_manager::interrupt_context,void>,32ul>::operator[](uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (a2 < 0x20)
  {
    return a1 + 72 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("static_array.hpp", 0x36, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "static_array.hpp", 0x36, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::interrupt_manager::disconnect_interrupt(const os_unfair_lock *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  if (*(a2 + 16) == 1)
  {
    v4 = *(a2 + 12);
    log_level = ashp::detail::logging::get_log_level(v3);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v11 = "interrupt.cpp";
        v12 = 1024;
        v13 = 350;
        v14 = 2082;
        v15 = "disconnect_interrupt";
        v16 = 1024;
        v17 = v4;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] removing interrupt source %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] removing interrupt source %u", "interrupt.cpp", 350, "disconnect_interrupt", v4);
    }

    os_unfair_lock_lock(*(a2 + 40));
    v6 = *(a2 + 40);
    *(v6 + 8) = 0;
    os_unfair_lock_unlock(v6);
    *(a2 + 40) = 0;
    v7 = (*(**(a2 + 32) + 8))(*(a2 + 32));
    dispatch_source_cancel(v7);
    if ((*(a2 + 17) & 1) == 0)
    {
      dispatch_resume(v7);
    }

    *(a2 + 16) = 0;
    v8 = *(a2 + 32);
    if (v8)
    {
      (**v8)(v8);
      *(a2 + 32) = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void (****ashp::owning_wrapper<ashp::device_transport::interrupt_source *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::interrupt_source>>::~owning_wrapper(void (****a1)(void)))(void)
{
  v2 = *a1;
  if (v2)
  {
    (**v2)(v2);
    *a1 = 0;
  }

  return a1;
}

void ashp::interrupt_manager::connect_interrupt(ashp::interrupt_manager::interrupt_context *)::$_2::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::interrupt_manager::connect_interrupt(ashp::interrupt_manager::interrupt_context *)::$_1::__invoke(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x145, "operator()", a5);
    _os_crash();
    __break(1u);
LABEL_35:
    v10 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x312, "interrupt_occurred", v9);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  v6 = a1;
  os_unfair_lock_lock(a1);
  v5 = *(v6 + 1);
  if (!v5)
  {
    goto LABEL_31;
  }

  v10 = *(v6 + 4);
  if (v10 >= 0x20)
  {
    goto LABEL_35;
  }

  v11 = ashp::static_array<ashp::optional<ashp::interrupt_manager::interrupt_context,void>,32ul>::operator[](v5 + 216, *(v6 + 4), v7, v8);
  v15 = v11;
  if (*(v11 + 64) != 1)
  {
    goto LABEL_31;
  }

  ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v11, v12, v13, v14);
  v16 = *(v15 + 48);
  ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v15, v17, v18, v19);
  if (v16)
  {
    v23 = 48;
  }

  else
  {
    v23 = 24;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v15 + v23), v20, v21, v22);
  dispatch_assert_queue_V2(*(v15 + v23));
  pthread_rwlock_rdlock((v5 + 8));
  for (i = *(v5 + 2568); i; i = *(i + 32))
  {
    if ((*(i + 8) & (1 << v10)) != 0 && (*(i + 24) & 1) == 0 && *(i + 16))
    {
      v28 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((i + 16), v24, v25, v26);
      (*(*v28 + 16))();
    }
  }

  ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v15, v24, v25, v26);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v50, *(v15 + 56), v29, v30);
  pthread_rwlock_unlock((v5 + 8));
  if (v50)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v50, v31, v32, v33);
    (v50)[2](v50, v10);
    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  v35 = mach_continuous_time();
  os_unfair_lock_lock((v5 + 2592));
  if (*(v5 + 2596))
  {
    v38 = ashp::dynamic_array<ashp::debug::interrupt::interrupt_debug_info>::operator[]((v5 + 2616), *(v5 + 2600), v36, v37);
    *v38 = v35;
    *(v38 + 8) = v10;
    *(v38 + 10) = v34;
    v39 = *(v5 + 2600);
    v40 = __CFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      v42 = *(v5 + 2596);
    }

    else
    {
      v42 = 0;
    }

    *(v5 + 2600) = (v41 - v42) % *(v5 + 2596);
  }

  os_unfair_lock_unlock((v5 + 2592));
  v5 += 14 * v10;
  *(v5 + 2640) = v35;
  v47 = *(v5 + 2648) + 1;
  if (v47 << 31 >> 31 != v47)
  {
    log_level = ashp::detail::logging::get_log_level(v43);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v52 = "interrupt.cpp";
        v53 = 1024;
        v54 = 954;
        v55 = 2082;
        v56 = "update_interrupt_debug_state";
        v57 = 1024;
        v58 = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] msi stats overflow: resetting count for vector %u", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_29;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_28:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] msi stats overflow: resetting count for vector %u", "interrupt.cpp", 954, "update_interrupt_debug_state", v10);
LABEL_29:
      LODWORD(v47) = 0;
      goto LABEL_30;
    }

LABEL_36:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_28;
  }

LABEL_30:
  *(v5 + 2648) = v47;
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v50, v44, v45, v46);
LABEL_31:
  v49 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(v6);
}

void sub_23ECEF174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v7 + 648);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(va, v9, v10, v11);
  os_unfair_lock_unlock(v6);
  _Unwind_Resume(a1);
}

uint64_t ashp::dynamic_array<ashp::debug::interrupt::interrupt_debug_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 12 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::client_interrupt::destroy(ashp::client_interrupt *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515D2D0;
    if (*(this + 184))
    {
      if (*(this + 168) == 1)
      {
        *(this + 168) = 0;
        ashp::interrupt::~interrupt(this + 14, a2, a3, a4, a5);
      }

      ashp::driver_object::~driver_object(this, a2, a3, a4, a5);

LABEL_10:
      JUMPOUT(0x23EF204E0);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x42E, "~client_interrupt", a5);
  _os_crash();
  __break(1u);
  goto LABEL_10;
}

uint64_t ashp::interrupt::interrupt(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (a2)
  {
    ashp::optional<ashp::interrupt_manager,void>::value(a2 + 632, a2, a3, a4);
    os_unfair_lock_lock((a2 + 632));
    *(a1 + 8) = 0;
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16 = v8;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v16, v9, v10, v11);
    *(a1 + 24) = 1;
    pthread_rwlock_wrlock((a2 + 640));
    if (!*(a1 + 48))
    {
      v13 = *(a2 + 3208);
      *(a1 + 32) = *v13;
      *(a1 + 40) = v13;
      *v13 = a1;
      *(a2 + 3208) = v5;
      *(a1 + 48) = a2 + 3200;
      pthread_rwlock_unlock((a2 + 640));
      ashp::interrupt_manager::recompute_source_registration_and_suspension((a2 + 632));
      os_unfair_lock_unlock((a2 + 632));
      return a1;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x18, "interrupt", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v12);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v15);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECEF484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::intrusive_list_link<ashp::interrupt>::~intrusive_list_link(v5, a2, a3, a4);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(v4, v7, v8, v9);
  _Unwind_Resume(a1);
}

void ashp::interrupt_manager::set_handler_mask(os_unfair_lock_t lock, uint64_t a2, int a3)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (*(a2 + 8) != a3)
  {
    pthread_rwlock_wrlock(&lock[2]);
    *(a2 + 8) = a3;
    pthread_rwlock_unlock(&lock[2]);
    ashp::interrupt_manager::recompute_source_registration_and_suspension(lock);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_23ECEF540(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::interrupt_manager::set_handler_callback(os_unfair_lock_t lock, uint64_t a2, uint64_t a3)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  pthread_rwlock_wrlock(&lock[2]);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v12, a3, v6, v7);
  v8 = *(a2 + 16);
  *(a2 + 16) = v12;
  v12 = v8;
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v12, v9, v10, v11);
  pthread_rwlock_unlock(&lock[2]);
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }
}

void sub_23ECEF5E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::interrupt_manager::suspend_handler(os_unfair_lock_t lock, uint64_t a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    pthread_rwlock_wrlock(&lock[2]);
    *(a2 + 24) = 1;
    pthread_rwlock_unlock(&lock[2]);
    ashp::interrupt_manager::recompute_source_registration_and_suspension(lock);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_23ECEF674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::interrupt_manager::resume_handler(os_unfair_lock_t lock, uint64_t a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (*(a2 + 24) == 1)
  {
    pthread_rwlock_wrlock(&lock[2]);
    *(a2 + 24) = 0;
    pthread_rwlock_unlock(&lock[2]);
    ashp::interrupt_manager::recompute_source_registration_and_suspension(lock);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_23ECEF708(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::interrupt,ashp::intrusive_list_link<ashp::interrupt>,&ashp::interrupt::_manager_link>::~intrusive_list_impl(void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_resource,ashp::intrusive_list_link<ashp::driver_resource>,&ashp::driver_resource::_owner_link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::interrupt>::~intrusive_list_link(a1, i, a3, a4);
}

void ashp::unsafe_storage<ashp::interrupt_manager::interrupt_context>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 56), a2, a3, a4);
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 48), v5, v6, v7);
    ashp::owning_wrapper<ashp::device_transport::interrupt_source *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::interrupt_source>>::~owning_wrapper((a1 + 32));
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 24), v8, v9, v10);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(a1, v11, v12, v13);
  }
}

void ashp::interrupt_manager::~interrupt_manager(ashp::interrupt_manager *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(this + 321))
  {
LABEL_10:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x4F, "~interrupt_manager", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    for (i = 0; i != 2304; i += 72)
    {
      if (*(this + i + 280) == 1)
      {
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(this + i + 216, a2, a3, a4);
        if (*(this + i + 232) == 1)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x53, "~interrupt_manager", v7);
          _os_crash();
          __break(1u);
          goto LABEL_10;
        }
      }
    }

    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 327);
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::interrupt,ashp::intrusive_list_link<ashp::interrupt>,&ashp::interrupt::_manager_link>::~intrusive_list_impl(this + 321, v8, v9, v10);
    ashp::async_notifier::~async_notifier((this + 2520), v11, v12, v13);
    for (j = 2448; j != 144; j -= 72)
    {
      ashp::unsafe_storage<ashp::interrupt_manager::interrupt_context>::storage::reset(this + j, v14, v15, v16);
    }
  }
}

void ashp::interrupt_manager::get_vector_for_interrupt(uint64_t a1, os_unfair_lock_s *a2, const __CFString *a3, const char *a4, const char *a5)
{
  v5 = a4;
  if (a2)
  {
    os_unfair_lock_lock(a2);
  }

  v9 = 0;
  v10 = &a2[54];
  while (1)
  {
    if (*(v10 + 64) != 1)
    {
      goto LABEL_12;
    }

    ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v10, a2, a3, a4);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, v11, v12, v13);
    v14 = *v10;
    if (!*v10 || !a3)
    {
      break;
    }

    if (CFStringCompare(v14, a3, 0) == kCFCompareEqualTo)
    {
      goto LABEL_11;
    }

LABEL_12:
    ++v9;
    v10 += 72;
    if (v9 == 32)
    {
      if (a1)
      {
        *(a1 + 4) = 0;
LABEL_15:
        os_unfair_lock_unlock(a2);
        return;
      }

      goto LABEL_19;
    }
  }

  if (v14 || a3)
  {
    goto LABEL_12;
  }

LABEL_11:
  ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v10, a2, a3, a4);
  if (*(v10 + 8) != v5)
  {
    goto LABEL_12;
  }

  v18 = v9;
  v19 = 1;
  ashp::optional<unsigned long long,void>::value(&v18, a2, a3, a4);
  if (v9 >= 0x20)
  {
    goto LABEL_20;
  }

  ashp::optional<unsigned long long,void>::value(&v18, v15, v16, v17);
  if (a1)
  {
    *a1 = v18;
    *(a1 + 4) = 1;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x30B, "get_vector_for_interrupt", a5);
  _os_crash();
  __break(1u);
}

uint64_t ashp::driver_debug_object<ashp::debug::interrupt::interrupt_debug_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0xCuLL) || (result = 12 * v4, (12 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

uint64_t ashp::unsafe_storage<ashp::interrupt>::storage::emplace<ashp::driver *&>(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(a1 + 56) == 1)
  {
    *(a1 + 56) = 0;
    a1 = ashp::interrupt::~interrupt(a1, a2, a3, a4, a5);
  }

  result = ashp::interrupt::interrupt(a1, *a2, a3, a4, a5);
  *(result + 56) = 1;
  return result;
}

void ___ZN4ashp16client_interrupt8activateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 100));
  v5 = *(v1 + 176);
  if (v5)
  {
    ashp::async_notifier::trigger(v5, v2, v3, v4);
  }

  os_unfair_lock_unlock((v1 + 100));
}

void airship_centauri_alpha_tr_pool_create(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v4 + 3824, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::storage(&v7, v4 + 4104, v5, v6);
  operator new();
}

void sub_23ECF002C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>::link>::~intrusive_list_impl(v11, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>::~storage(v10 + 1, v13, v14, v15);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v16, v17, v18);
  ashp::direct_client_object::~direct_client_object(v9, v19, v20, v21, v22);
  MEMORY[0x23EF204E0](v9, 0x10E0C4075BE4DA0);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::~storage(va, v23, v24, v25, v26);
  _Unwind_Resume(a1);
}

void airship_centauri_alpha_tr_pool_destroy(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    for (i = 0; ; ++i)
    {
      v7 = *(a1 + 96);
      if (!v7)
      {
        break;
      }

      ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(a1 + 96, v7, a3, a4);
    }

    if (*(a1 + 72) == i)
    {
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>::link>::~intrusive_list_impl((a1 + 96), 0, a3, a4);
      ashp::detail::dynamic_array::storage<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>::~storage((a1 + 72), v8, v9, v10);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((a1 + 64), v11, v12, v13);
      ashp::direct_client_object::~direct_client_object(a1, v14, v15, v16, v17);

LABEL_11:
      JUMPOUT(0x23EF204E0);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0x92, "~ring_pool", a5);
  _os_crash();
  __break(1u);
  goto LABEL_11;
}

uint64_t airship_centauri_alpha_tr_pool_reserve(uint64_t a1, unsigned int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 56));
  if (*(a1 + 72) <= a2)
  {
    goto LABEL_14;
  }

  v8 = ashp::dynamic_array<ashp::acipc::messenger::message>::operator[]((a1 + 72), a2, v4, v5);
  if (*(v8 + 4) != a1 + 96 || *v8 != 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("ring_pool.cpp", 0x9C, "reserve", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: selector is not available", "ring_pool.cpp", 0x9C, "reserve", v17);
    _os_crash();
    __break(1u);
LABEL_14:
    v8 = "ring_pool.cpp";
    ashp::detail::control_flow::log_guard_else_failure("ring_pool.cpp", 0x9A, "reserve", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: selector is invalid", "ring_pool.cpp", 0x9A, "reserve", v18);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(a1 + 96, v8, v6, v7);
  ashp::centauri::ring_pool<airship_acipc_tr *>::create_handle(a1, *(v8 + 2), v8, v10);
  log_level = ashp::detail::logging::get_log_level(v11);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v13 = *(v8 + 2);
      *buf = 136446978;
      v20 = "ring_pool.cpp";
      v21 = 1024;
      v22 = 159;
      v23 = 2082;
      v24 = "reserve";
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reserve %u complete", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_12:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reserve %u complete", "ring_pool.cpp", 159, "reserve", *(v8 + 2));
      goto LABEL_13;
    }

LABEL_15:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_12;
  }

LABEL_13:
  v14 = *v8;
  os_unfair_lock_unlock((a1 + 56));
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t airship_centauri_alpha_tr_pool_reserve_next(uint64_t a1, _DWORD *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 56));
  v6 = (a1 + 96);
  v7 = *(a1 + 96);
  if (v7)
  {
    v8 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(v6, *(a1 + 96), v4, v5);
    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v10 = *(v7 + 8);
        *buf = 136446978;
        v17 = "ring_pool.cpp";
        v18 = 1024;
        v19 = 170;
        v20 = 2082;
        v21 = "reserve_next";
        v22 = 1024;
        v23 = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reserving ring with selector %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reserving ring with selector %u", "ring_pool.cpp", 170, "reserve_next", *(v7 + 8));
    }

    ashp::centauri::ring_pool<airship_acipc_tr *>::create_handle(a1, *(v7 + 8), v7, v11);
    v12 = *v7;
    if (*v7 && a2)
    {
      *a2 = *(v7 + 8);
    }
  }

  else
  {
    v13 = ashp::detail::logging::get_log_level(v6);
    if (v13 >= 1)
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        *buf = 136446722;
        v17 = "ring_pool.cpp";
        v18 = 1024;
        v19 = 169;
        v20 = 2082;
        v21 = "reserve_next";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no handles available in pool", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v13))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no handles available in pool", "ring_pool.cpp", 169, "reserve_next");
    }

    v12 = 0;
  }

  os_unfair_lock_unlock((a1 + 56));
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void airship_centauri_alpha_tr_pool_release(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 56));
  if (!a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0xB8, "release", v8);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  v9 = (*(*a2 + 152))(a2);
  v2 = ashp::dynamic_array<ashp::acipc::messenger::message>::operator[]((a1 + 72), v9, v10, v11);
  v3 = (*(*a2 + 152))(a2);
  log_level = ashp::detail::logging::get_log_level(v3);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v20 = "ring_pool.cpp";
      v21 = 1024;
      v22 = 186;
      v23 = 2082;
      v24 = "release";
      v25 = 1024;
      v26 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] releasing ring with selector %u", buf, 0x22u);
    }
  }

  v5 = 0x27E384000uLL;
  v4 = 0x27E384000uLL;
  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_8;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    ashp_log_helper::log(*(v4 + 2648), "[%s:%d:%s] releasing ring with selector %u", "ring_pool.cpp", 186, "release", v3);
LABEL_8:
    if (v2[4] == (a1 + 96))
    {
LABEL_19:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0xBB, "release", v15);
      _os_crash();
      __break(1u);
      goto LABEL_20;
    }

    if (*v2 == a2)
    {
      break;
    }

LABEL_20:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0xBC, "release", v15);
    _os_crash();
    __break(1u);
LABEL_21:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>::link>::insert_before(a1 + 96, v2, v13, v14);
  *v2 = 0;
  v16 = (*(*a2 + 136))(a2);
  v17 = ashp::detail::logging::get_log_level(v16);
  if (v17 >= 3)
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      *buf = 136446978;
      v20 = "ring_pool.cpp";
      v21 = 1024;
      v22 = 34;
      v23 = 2082;
      v24 = "destroy_handle";
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] destroying transfer ring handle for trid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v17))
  {
    if (*(v5 + 2728) != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(*(v4 + 2648), "[%s:%d:%s] destroying transfer ring handle for trid %hu", "ring_pool.cpp", 34, "destroy_handle", v16);
  }

  (**a2)(a2);
  os_unfair_lock_unlock((a1 + 56));
  v18 = *MEMORY[0x277D85DE8];
}

void airship_centauri_alpha_cr_pool_create(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v4 + 3824, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::storage(&v7, v4 + 4128, v5, v6);
  operator new();
}

void sub_23ECF0FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>::link>::~intrusive_list_impl(v11, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>::~storage(v10 + 1, v13, v14, v15);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v16, v17, v18);
  ashp::direct_client_object::~direct_client_object(v9, v19, v20, v21, v22);
  MEMORY[0x23EF204E0](v9, 0x10E0C4075BE4DA0);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::~storage(va, v23, v24, v25, v26);
  _Unwind_Resume(a1);
}

void airship_centauri_alpha_cr_pool_destroy(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    for (i = 0; ; ++i)
    {
      v7 = *(a1 + 96);
      if (!v7)
      {
        break;
      }

      ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(a1 + 96, v7, a3, a4);
    }

    if (*(a1 + 72) == i)
    {
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>::link>::~intrusive_list_impl((a1 + 96), 0, a3, a4);
      ashp::detail::dynamic_array::storage<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>::~storage((a1 + 72), v8, v9, v10);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((a1 + 64), v11, v12, v13);
      ashp::direct_client_object::~direct_client_object(a1, v14, v15, v16, v17);

LABEL_11:
      JUMPOUT(0x23EF204E0);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0x92, "~ring_pool", a5);
  _os_crash();
  __break(1u);
  goto LABEL_11;
}

uint64_t airship_centauri_alpha_cr_pool_reserve(uint64_t a1, unsigned int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 56));
  if (*(a1 + 72) <= a2)
  {
    goto LABEL_14;
  }

  v8 = ashp::dynamic_array<ashp::acipc::messenger::message>::operator[]((a1 + 72), a2, v4, v5);
  if (*(v8 + 4) != a1 + 96 || *v8 != 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("ring_pool.cpp", 0x9C, "reserve", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: selector is not available", "ring_pool.cpp", 0x9C, "reserve", v17);
    _os_crash();
    __break(1u);
LABEL_14:
    v8 = "ring_pool.cpp";
    ashp::detail::control_flow::log_guard_else_failure("ring_pool.cpp", 0x9A, "reserve", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: selector is invalid", "ring_pool.cpp", 0x9A, "reserve", v18);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(a1 + 96, v8, v6, v7);
  ashp::centauri::ring_pool<airship_acipc_cr *>::create_handle(a1, *(v8 + 2), v8, v10);
  log_level = ashp::detail::logging::get_log_level(v11);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v13 = *(v8 + 2);
      *buf = 136446978;
      v20 = "ring_pool.cpp";
      v21 = 1024;
      v22 = 159;
      v23 = 2082;
      v24 = "reserve";
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reserve %u complete", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_12:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reserve %u complete", "ring_pool.cpp", 159, "reserve", *(v8 + 2));
      goto LABEL_13;
    }

LABEL_15:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_12;
  }

LABEL_13:
  v14 = *v8;
  os_unfair_lock_unlock((a1 + 56));
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t airship_centauri_alpha_cr_pool_reserve_next(uint64_t a1, _DWORD *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 56));
  v6 = (a1 + 96);
  v7 = *(a1 + 96);
  if (v7)
  {
    v8 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(v6, *(a1 + 96), v4, v5);
    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v10 = *(v7 + 8);
        *buf = 136446978;
        v17 = "ring_pool.cpp";
        v18 = 1024;
        v19 = 170;
        v20 = 2082;
        v21 = "reserve_next";
        v22 = 1024;
        v23 = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reserving ring with selector %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reserving ring with selector %u", "ring_pool.cpp", 170, "reserve_next", *(v7 + 8));
    }

    ashp::centauri::ring_pool<airship_acipc_cr *>::create_handle(a1, *(v7 + 8), v7, v11);
    v12 = *v7;
    if (*v7 && a2)
    {
      *a2 = *(v7 + 8);
    }
  }

  else
  {
    v13 = ashp::detail::logging::get_log_level(v6);
    if (v13 >= 1)
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        *buf = 136446722;
        v17 = "ring_pool.cpp";
        v18 = 1024;
        v19 = 169;
        v20 = 2082;
        v21 = "reserve_next";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no handles available in pool", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v13))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no handles available in pool", "ring_pool.cpp", 169, "reserve_next");
    }

    v12 = 0;
  }

  os_unfair_lock_unlock((a1 + 56));
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void airship_centauri_alpha_cr_pool_release(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 56));
  if (!a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0xB8, "release", v8);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  v9 = (*(*a2 + 96))(a2);
  v2 = ashp::dynamic_array<ashp::acipc::messenger::message>::operator[]((a1 + 72), v9, v10, v11);
  v3 = (*(*a2 + 96))(a2);
  log_level = ashp::detail::logging::get_log_level(v3);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v20 = "ring_pool.cpp";
      v21 = 1024;
      v22 = 186;
      v23 = 2082;
      v24 = "release";
      v25 = 1024;
      v26 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] releasing ring with selector %u", buf, 0x22u);
    }
  }

  v5 = 0x27E384000uLL;
  v4 = 0x27E384000uLL;
  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_8;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    ashp_log_helper::log(*(v4 + 2648), "[%s:%d:%s] releasing ring with selector %u", "ring_pool.cpp", 186, "release", v3);
LABEL_8:
    if (v2[4] == (a1 + 96))
    {
LABEL_19:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0xBB, "release", v15);
      _os_crash();
      __break(1u);
      goto LABEL_20;
    }

    if (*v2 == a2)
    {
      break;
    }

LABEL_20:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_pool.cpp", 0xBC, "release", v15);
    _os_crash();
    __break(1u);
LABEL_21:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>::link>::insert_before(a1 + 96, v2, v13, v14);
  *v2 = 0;
  v16 = (*(*a2 + 80))(a2);
  v17 = ashp::detail::logging::get_log_level(v16);
  if (v17 >= 3)
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      *buf = 136446978;
      v20 = "ring_pool.cpp";
      v21 = 1024;
      v22 = 43;
      v23 = 2082;
      v24 = "destroy_handle";
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] destroying completion ring handle for crid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v17))
  {
    if (*(v5 + 2728) != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(*(v4 + 2648), "[%s:%d:%s] destroying completion ring handle for crid %hu", "ring_pool.cpp", 43, "destroy_handle", v16);
  }

  (**a2)(a2);
  os_unfair_lock_unlock((a1 + 56));
  v18 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::compute_hdrftr_size_fields(ashp::acipc *this, unsigned int a2, unsigned __int8 a3, const char *a4)
{
  if ((a2 & 3) != 0)
  {
    v9 = 25;
  }

  else
  {
    v5 = a2 >> 2;
    v6 = __clz(__rbit64(v5));
    if (v6 >= 4)
    {
      LOWORD(v6) = 4;
    }

    if (((a2 != 0) & a3) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v5 >> v7;
    if (v8 < 0x100)
    {
      if (this)
      {
        *this = v8 | (v7 << 8);
        *(this + 2) = 1;
        return;
      }

      goto LABEL_14;
    }

    v9 = 29;
  }

  ashp::detail::control_flow::log_guard_else_failure("acipc_types.cpp", v9, "compute_hdrftr_size_fields", a4);
  if (this)
  {
    *(this + 2) = 0;
    return;
  }

LABEL_14:
  __break(1u);
}

void ashp::acipc::transfer_queue::transfer::~transfer(ashp::acipc::transfer_queue::transfer *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(this + 56) == 1)
  {
    *(this + 56) = 0;
  }

  ashp::device_accessible_memory::release_obj((this + 8), a2, a3, a4, a5);
  *(this + 2) = 0;
}

uint64_t ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 80 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

{
  if (*a1 > a2)
  {
    return a1[2] + 80 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x1A2, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x1A2, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::transfer_queue::get_inorder_tag_for_enqueue(ashp::acipc::transfer_queue *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 28) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x9E, "get_inorder_tag_for_enqueue", a5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(this + 1);
    v6 = *(v5 + 8);
    LODWORD(v5) = *(v5 + 10) % v6 + *(this + 31) % v6;
    v7 = v5;
    if (v5 == v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    return ((v7 - v8) % v6);
  }

  return result;
}

void ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_0::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 80;
      v15 = 2082;
      v16 = "enqueue_transfer";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) index %hu exceeds size %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) index %hu exceeds size %hu", "transfer_queue.cpp", 80, "enqueue_transfer", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_1::operator()<unsigned short,unsigned short,unsigned int>(ashp::detail::logging *a1, unsigned __int16 *a2, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 82;
      v15 = 2082;
      v16 = "enqueue_transfer";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) transfer at index %hu is in state %u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) transfer at index %hu is in state %u", "transfer_queue.cpp", 82, "enqueue_transfer", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_2::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 88;
      v15 = 2082;
      v16 = "enqueue_transfer";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) free transfers %hu must exceed dead space size %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) free transfers %hu must exceed dead space size %hu", "transfer_queue.cpp", 88, "enqueue_transfer", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_3::operator()<unsigned short,unsigned int,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *a1;
      v6 = *a2;
      *buf = 136447490;
      v9 = "transfer_queue.cpp";
      v10 = 1024;
      v11 = 114;
      v12 = 2082;
      v13 = "enqueue_transfer";
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = 0xFFFFFF;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) transfer enqueue size %u exceeds maximum transfer size %u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) transfer enqueue size %u exceeds maximum transfer size %u", "transfer_queue.cpp", 114, "enqueue_transfer", *a1, *a2, 0xFFFFFF);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_4::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 120;
      v15 = 2082;
      v16 = "enqueue_transfer";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) transfer tag %hu does not match next in-order tag %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) transfer tag %hu does not match next in-order tag %hu", "transfer_queue.cpp", 120, "enqueue_transfer", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void *ashp::acipc::transfer_queue::move_transfers(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned __int16 a6)
{
  v164 = a6;
  v13 = mach_continuous_time();
  if (*(a1 + 28) == 1)
  {
    v163 = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v163, a2, v11, v12);
    v16 = 0;
    while (1)
    {
      v17 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a3, v14, v15);
      if (ashp::operator==<int,0>(&v163, (v17 + 4), v18, v19))
      {
        break;
      }

      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v163, v20, v21, v22);
      if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v163, v23, v24) != a4)
      {
        goto LABEL_53;
      }

      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v163, v25, v26, v27);
      *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v163, v29, v30) = a5;
      ++v16;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v163, v31, v32, v33);
      *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v163, v34, v35) + 72) = v13;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v163, v36, v37, v38);
      if (v163 == a3)
      {
        break;
      }

      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v163, v39, v21, v22);
      v163 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v163, v40, v41) + 4);
    }

    if (*ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a4, v21, v22) >= v16)
    {
      if (v164 == -1 || (ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v164, v79, v80, v81), *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v164, v83, v84) == a5))
      {
        v158 = a4;
        v86 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a2, v80, v81);
        v87 = *(v86 + 2);
        v163 = *(v86 + 2);
        v90 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a3, v88, v89);
        v94 = *(v90 + 4);
        v162 = *(v90 + 4);
        v95 = v164;
        v161 = v164;
        if (v164 == 0xFFFFLL)
        {
          v101 = (ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a5, v92, v93) + 2);
        }

        else
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v164, v91, v92, v93);
          v101 = (ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v164, v96, v97) + 4);
        }

        v157 = *v101;
        v160 = *v101;
        if (v87 == 0xFFFF)
        {
          v126 = (ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, v158, v99, v100) + 2);
        }

        else
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v163, v98, v99, v100);
          v126 = (ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v87, v121, v122) + 4);
        }

        *v126 = v94;
        if (v94 == 0xFFFF)
        {
          v42 = v158;
          v131 = (ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, v158, v124, v125) + 4);
        }

        else
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v162, v123, v124, v125);
          v131 = (ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v94, v127, v128) + 2);
          v42 = v158;
        }

        *v131 = v163;
        *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a2, v129, v130) + 2) = v95;
        *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a3, v132, v133) + 4) = v157;
        v159 = -1;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v159, a2, v134, v135);
        if (v95 == 0xFFFF)
        {
          v143 = (ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a5, v137, v138) + 2);
        }

        else
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v161, v136, v137, v138);
          v143 = (ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v95, v139, v140) + 4);
        }

        *v143 = v159;
        v159 = -1;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v159, a3, v141, v142);
        if (v157 == 0xFFFF)
        {
          v51 = a5;
          v149 = (ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a5, v145, v146) + 4);
        }

        else
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v160, v144, v145, v146);
          v149 = (ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v157, v147, v148) + 2);
          v51 = a5;
        }

        *v149 = v159;
LABEL_51:
        v150 = ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, v42, v119, v120);
        *v150 -= v16;
        v153 = ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, v51, v151, v152);
        *v153 += v16;
        result = ashp::static_array<unsigned long long,6ul>::operator[](a1 + 96, v51, v154, v155);
        *result = v13;
        return result;
      }

      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v163 = -1;
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v163, a2, v11, v12);
  v42 = a4;
  v45 = ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a4, v43, v44);
  if (!ashp::operator==<int,0>(&v163, (v45 + 2), v46, v47))
  {
LABEL_54:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x316, "move_transfers", v50);
    _os_crash();
    __break(1u);
    goto LABEL_55;
  }

  v51 = a5;
  v52 = ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a5, v48, v49);
  if (ashp::operator==<int,0>(&v164, (v52 + 4), v53, v54))
  {
    if (v164 != -1)
    {
      v59 = *(a1 + 16);
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v164, v55, v56, v57);
      v61 = v164 % v59;
      if (v59 != 1)
      {
        LOWORD(v61) = v61 + 1;
      }

      if (v61 % v59 != a2)
      {
        goto LABEL_58;
      }
    }

    v62 = *(a1 + 16);
    v63 = a3 % v62 + a2 / v62 * v62 - a2;
    if ((v63 & 0xFFFF0000) == 0)
    {
      LOWORD(v62) = 0;
    }

    v16 = v63 + v62 + 1;
    if (*ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a4, v56, v57) < v16)
    {
      goto LABEL_56;
    }

    if (!v16)
    {
LABEL_23:
      if (*ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a4, v64, v65) == v16)
      {
        *(ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a4, v73, v74) + 2) = -1;
        *(ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a4, v75, v76) + 4) = -1;
      }

      else
      {
        v102 = *(a1 + 16);
        v103 = a3 % v102;
        if (v102 != 1)
        {
          LOWORD(v103) = v103 + 1;
        }

        v104 = v103 % v102;
        if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v104, v73, v74) != a4)
        {
          goto LABEL_60;
        }

        v163 = -1;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v163, v104, v105, v106);
        v110 = ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a4, v108, v109);
        *(v110 + 2) = v163;
      }

      if (!*ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a5, v77, v78))
      {
        v163 = -1;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v163, a2, v111, v112);
        v115 = ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a5, v113, v114);
        *(v115 + 2) = v163;
      }

      v163 = -1;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v163, a3, v111, v112);
      v118 = ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](a1 + 56, a5, v116, v117);
      *(v118 + 4) = v163;
      goto LABEL_51;
    }

    v67 = 0;
    while (1)
    {
      v68 = *(a1 + 16);
      v69 = (a2 % v68 + v67 % *(a1 + 16));
      v70 = v69 == a2 % v68 + v67 % v68 ? 0 : *(a1 + 16);
      v71 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), ((v69 - v70) % v68), v64, v65);
      if (*v71 != a4)
      {
        break;
      }

      *v71 = a5;
      *(v71 + 9) = v13;
      if (++v67 >= v16)
      {
        goto LABEL_23;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x31F, "move_transfers", v72);
    _os_crash();
    __break(1u);
LABEL_53:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x2FF, "move_transfers", v28);
    _os_crash();
    __break(1u);
    goto LABEL_54;
  }

LABEL_55:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x317, "move_transfers", v58);
  _os_crash();
  __break(1u);
LABEL_56:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x31B, "move_transfers", v66);
  _os_crash();
  __break(1u);
LABEL_57:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x305, "move_transfers", v82);
  _os_crash();
  __break(1u);
LABEL_58:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x318, "move_transfers", v60);
  _os_crash();
  __break(1u);
LABEL_59:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x306, "move_transfers", v85);
  _os_crash();
  __break(1u);
LABEL_60:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x32C, "move_transfers", v107);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::transfer_queue::finish_queued_partial_chain(ashp::acipc::transfer_queue *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 33, a2, a3, a4);
  v5 = *(this + 33);
  v8 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 4, *(this + 33), v6, v7);
  if (*(this + 86) > 0xFFu)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0xB5, "finish_queued_partial_chain", v11);
    _os_crash();
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 46);
    if (*(this + 86))
    {
      v13 = 0;
      do
      {
        *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 4, v5, v9, v10) + 48) = v13;
        prev_transfer_in_queue = ashp::acipc::transfer_queue::get_prev_transfer_in_queue(this, 1u, v5, v14);
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&prev_transfer_in_queue, v15, v16, v17);
        v5 = prev_transfer_in_queue;
        ++v13;
        v18 = *(this + 86);
      }

      while (v18 > v13);
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    if (v5 == v12)
    {
      result = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 4, v12, v9, v10);
      *(result + 48) = v18;
      *(this + 86) = 0;
      return result;
    }
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0xBB, "finish_queued_partial_chain", v11);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::transfer_queue::get_prev_transfer_in_queue(uint64_t a1, unsigned int a2, uint64_t a3, const char *a4)
{
  v4 = a3;
  v7 = a3;
  if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a3, a3, a4) == a2)
  {
    if (*(a1 + 28) == 1)
    {
      return *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v7, v8, v9) + 2);
    }

    v11 = 0xFFFFLL;
    v20 = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v20, v4, v8, v9);
    if (!ashp::operator==<int,0>(&v20, (a1 + 6 * a2 + 58), v12, v13))
    {
      v16 = *(a1 + 16);
      v17 = (v4 % v16 + (*(a1 + 16) - 1) % *(a1 + 16));
      if (v17 == v4 % v16 + (v16 - 1) % v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a1 + 16);
      }

      v21 = -1;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v21, (v17 - v18) % v16, v14, v15);
      return v21;
    }

    return v11;
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x2E9, "get_prev_transfer_in_queue", v10);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL ashp::operator==<int,0>(__int16 *a1, __int16 *a2, uint64_t a3, const char *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = v5 == 0xFFFF && v4 == 0xFFFF;
  if (v4 != 0xFFFF && ~v5 != 0)
  {
    v9 = *ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(a1, a2, a3, a4);
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(a2, v10, v11, v12);
    return v9 == *a2;
  }

  return v6;
}

uint64_t ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (a2 < 6)
  {
    return a1 + 6 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("static_array.hpp", 0x36, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "static_array.hpp", 0x36, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::static_array<unsigned long long,6ul>::operator[](uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (a2 < 6)
  {
    return a1 + 8 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("static_array.hpp", 0x36, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "static_array.hpp", 0x36, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::transfer_queue::get_next_transfer_in_queue(uint64_t a1, unsigned int a2, uint64_t a3, const char *a4)
{
  v4 = a3;
  v7 = a3;
  if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a3, a3, a4) == a2)
  {
    if (*(a1 + 28) == 1)
    {
      return *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v7, v8, v9) + 4);
    }

    v11 = 0xFFFFLL;
    v19 = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v19, v4, v8, v9);
    if (!ashp::operator==<int,0>(&v19, (a1 + 6 * a2 + 60), v12, v13))
    {
      v16 = *(a1 + 16);
      v17 = v4 % v16;
      if (v16 != 1)
      {
        LOWORD(v17) = v17 + 1;
      }

      v20 = -1;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v20, v17 % v16, v14, v15);
      return v20;
    }

    return v11;
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x2DA, "get_next_transfer_in_queue", v10);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::transfer_queue::get_transfer_completion(unsigned short,airship_acipc_tr_transfer_completion *,void *,unsigned int,void *,unsigned int)const::$_0::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 240;
      v15 = 2082;
      v16 = "get_transfer_completion";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) index %hu exceeds size %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) index %hu exceeds size %hu", "transfer_queue.cpp", 240, "get_transfer_completion", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::get_transfer_completion(unsigned short,airship_acipc_tr_transfer_completion *,void *,unsigned int,void *,unsigned int)const::$_1::operator()<unsigned short,unsigned short,unsigned int>(ashp::detail::logging *a1, unsigned __int16 *a2, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 242;
      v15 = 2082;
      v16 = "get_transfer_completion";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) transfer at index %hu is in state %u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) transfer at index %hu is in state %u", "transfer_queue.cpp", 242, "get_transfer_completion", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::get_transfer_completion(unsigned short,airship_acipc_tr_transfer_completion *,void *,unsigned int,void *,unsigned int)const::$_2::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 251;
      v15 = 2082;
      v16 = "get_transfer_completion";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) offset %hu exceeds fetched transfer count %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) offset %hu exceeds fetched transfer count %hu", "transfer_queue.cpp", 251, "get_transfer_completion", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_0::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 286;
      v15 = 2082;
      v16 = "consume_transfers";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) first index %hu exceeds size %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) first index %hu exceeds size %hu", "transfer_queue.cpp", 286, "consume_transfers", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_1::operator()<unsigned short,unsigned short,unsigned int>(ashp::detail::logging *a1, unsigned __int16 *a2, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 288;
      v15 = 2082;
      v16 = "consume_transfers";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) transfer at index %hu is in state %u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) transfer at index %hu is in state %u", "transfer_queue.cpp", 288, "consume_transfers", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_2::operator()<unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *a1;
      v6 = *a2;
      *buf = 136447234;
      v9 = "transfer_queue.cpp";
      v11 = 290;
      v12 = 2082;
      v10 = 1024;
      v13 = "consume_transfers";
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) tag %hu must belong to first in chain", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) tag %hu must belong to first in chain", "transfer_queue.cpp", 290, "consume_transfers", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_3::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 302;
      v15 = 2082;
      v16 = "consume_transfers";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) attempt to consume %hu transfers, %hu fetched", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) attempt to consume %hu transfers, %hu fetched", "transfer_queue.cpp", 302, "consume_transfers", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::find_completion_target(ashp::acipc::transfer_queue::transfer_completion const&)const::$_0::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 324;
      v15 = 2082;
      v16 = "find_completion_target";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) index %hu exceeds size %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) index %hu exceeds size %hu", "transfer_queue.cpp", 324, "find_completion_target", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::find_completion_target(ashp::acipc::transfer_queue::transfer_completion const&)const::$_1::operator()<unsigned short,unsigned short,unsigned int>(ashp::detail::logging *a1, unsigned __int16 *a2, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 326;
      v15 = 2082;
      v16 = "find_completion_target";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) transfer at index %hu is in state %u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) transfer at index %hu is in state %u", "transfer_queue.cpp", 326, "find_completion_target", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::find_completion_target(ashp::acipc::transfer_queue::transfer_completion const&)const::$_2::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 333;
      v15 = 2082;
      v16 = "find_completion_target";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) seek %hu exceeds pending transfer count %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) seek %hu exceeds pending transfer count %hu", "transfer_queue.cpp", 333, "find_completion_target", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::transfer_queue::save_transfer_completion(uint64_t a1, unsigned int a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v9 = a2;
  v10 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), a2, a3, a4);
  if (*v10 != 2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x15B, "save_transfer_completion", v13);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v14 = (v7 >> 1) & 7;
  switch(v14)
  {
    case 3:
      if (!*(v10 + 48))
      {
        if (*(v10 + 40) != v6)
        {
          v15 = 357;
          goto LABEL_23;
        }

        break;
      }

LABEL_20:
      v15 = 356;
      goto LABEL_23;
    case 2:
      if (*(v10 + 40) < v6)
      {
        v15 = 360;
        goto LABEL_23;
      }

      break;
    case 1:
      if (!*(v10 + 48))
      {
        v15 = 352;
        goto LABEL_23;
      }

      if (*(v10 + 40) != v6)
      {
        v15 = 353;
LABEL_23:
        ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", v15, "save_transfer_completion", v12);
        return 0;
      }

      break;
  }

  *(v10 + 60) = v7;
  *(v10 + 62) = *(a5 + 6);
  *(v10 + 61) = *a5;
  v16 = *(a5 + 12);
  *(v10 + 64) = v6;
  *(v10 + 68) = v16;
  if (*(a1 + 144))
  {
    v17 = ashp::dynamic_array<unsigned char>::operator[]((a1 + 144), (*(a1 + 24) + *(a1 + 20)) * v9, v11, v12);
  }

  else
  {
    v17 = 0;
  }

  ashp::copy_and_zerofill(v17, *(a1 + 20), *(a5 + 16), *(a5 + 24), v13);
  if (*(a1 + 144))
  {
    v21 = ashp::dynamic_array<unsigned char>::operator[]((a1 + 144), *(a1 + 20) + (*(a1 + 24) + *(a1 + 20)) * v9, v18, v19);
  }

  else
  {
    v21 = 0;
  }

  ashp::copy_and_zerofill(v21, *(a1 + 24), *(a5 + 32), *(a5 + 40), v20);
  return 1;
}

unint64_t ashp::acipc::transfer_queue::complete_transfer(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = a1;
  v270 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28) == 1)
  {
    v6 = *(a2 + 2);
    v7 = *(a1 + 16);
    v8 = *(a1 + 30);
    v9 = v8 & v6;
    v260 = v8 & v6;
    if ((v8 & v6) >= v7)
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x144, "find_completion_target", a4);
      ashp::acipc::transfer_queue::find_completion_target(ashp::acipc::transfer_queue::transfer_completion const&)const::$_0::operator()<unsigned short,unsigned short,unsigned short>(v5, &v260, v5 + 8);
      goto LABEL_146;
    }

    if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 32), v8 & v6, a3, a4) != 2)
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x147, "find_completion_target", v11);
      *buf = *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v9, v243, v244);
      ashp::acipc::transfer_queue::find_completion_target(ashp::acipc::transfer_queue::transfer_completion const&)const::$_1::operator()<unsigned short,unsigned short,unsigned int>(v5, &v260, buf);
      goto LABEL_146;
    }

    LOWORD(v12) = v9;
  }

  else
  {
    v13 = *(a2 + 4);
    v14 = v13 != 0;
    v15 = v13 - 1;
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *buf = v16;
    if (v16 >= *(a1 + 68))
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x14E, "find_completion_target", a4);
      ashp::acipc::transfer_queue::find_completion_target(ashp::acipc::transfer_queue::transfer_completion const&)const::$_2::operator()<unsigned short,unsigned short,unsigned short>(v5, buf, v5 + 34);
      goto LABEL_146;
    }

    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value((a1 + 70), a2, a3, a4);
    v19 = v5[8];
    v20 = (v5[35] % v5[8] + v16 % v19);
    if (v20 == v5[35] % v19 + v16 % v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v5[8];
    }

    v12 = (v20 - v21) % v19;
    v9 = v12;
    if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v12, v17, v18) != 2)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x151, "find_completion_target", v22);
      _os_crash();
      __break(1u);
LABEL_148:
      v238 = 571;
      goto LABEL_130;
    }
  }

  v23 = *(a2 + 2);
  if (v23 != *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v9, v10, v11) + 44))
  {
    ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x153, "find_completion_target", v25);
    goto LABEL_146;
  }

  next_transfer_in_queue = -1;
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&next_transfer_in_queue, v12, v24, v25);
  v258 = next_transfer_in_queue;
  if (next_transfer_in_queue == 0xFFFF)
  {
LABEL_146:
    v238 = 554;
LABEL_130:
    ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", v238, "complete_transfer", v28);
    goto LABEL_131;
  }

  v29 = ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v258, v26, v27, v28);
  v33 = *(a2 + 4);
  if ((((*(a2 + 4) == 0) ^ (((*(a2 + 1) & 0xE) == 8) | *(a2 + 1))) & 1) == 0)
  {
    log_level = ashp::detail::logging::get_log_level(v29);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v38 = *v5;
        *buf = 136446978;
        v263 = "transfer_queue.cpp";
        v264 = 1024;
        v265 = 386;
        v266 = 2082;
        v267 = "multicomp_find_first_transfer";
        v268 = 1024;
        v269 = v38;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed to find first transfer", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed to find first transfer", "transfer_queue.cpp", 386, "multicomp_find_first_transfer", *v5);
    }

    v257 = -1;
LABEL_29:
    ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x22D, "complete_transfer", v31);
    ashp::acipc::transfer_queue::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_0::operator()<unsigned short>(v5);
LABEL_131:
    v237 = 0;
    v115 = 0;
    v86 = 0xFFFFLL;
    goto LABEL_132;
  }

  v34 = v258;
  if (!(((*(a2 + 1) & 0xE) == 8) | *(a2 + 1) & 1))
  {
    next_transfer_in_queue = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&next_transfer_in_queue, v258, v30, v31);
    v36 = next_transfer_in_queue;
    goto LABEL_36;
  }

  if (!*(a2 + 4))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x18A, "multicomp_find_first_transfer", v32);
    _os_crash();
    __break(1u);
LABEL_150:
    v5 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x248, "complete_transfer", v98);
    _os_crash();
    __break(1u);
    goto LABEL_151;
  }

  if (*(v5 + 28) == 1)
  {
    *buf = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, v258, v30, v31);
    v35 = v33 - 1;
    if (v33 == 1)
    {
      v36 = *buf;
    }

    else
    {
      v39 = 0;
      v40 = v35;
      do
      {
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v34, v30, v31);
        v260 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, *buf, v41, v42) + 2);
        if (v260 == 0xFFFF)
        {
          goto LABEL_135;
        }

        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v43, v44, v31);
        v47 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, *buf, v45, v46);
        if (!ashp::operator==<int,0>(&v260, (v47 + 6), v48, v49))
        {
          v241 = 403;
          goto LABEL_137;
        }

        v36 = v260;
        *buf = v260;
        ++v39;
      }

      while (v40 > v39);
    }
  }

  else
  {
    v36 = v5[35];
  }

  while (1)
  {
LABEL_36:
    v257 = v36;
    if (v36 == 0xFFFF)
    {
      goto LABEL_29;
    }

    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v258, v34, v30, v31);
    v52 = v258;
    v53 = (*(a2 + 1) >> 1) & 7;
    if (v53 == 4 || v53 == 2)
    {
      if (*(v5 + 28) == 1)
      {
        v54 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v258, v50, v51) + 48);
        *buf = -1;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, v52, v55, v56);
        if (v54)
        {
          v60 = 0;
          do
          {
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v57, v58, v59);
            v63 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, *buf, v61, v62);
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value((v63 + 4), v64, v65, v66);
            next_transfer_in_queue = -1;
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&next_transfer_in_queue, *(v63 + 4), v67, v68);
            *buf = next_transfer_in_queue;
            ++v60;
          }

          while (v54 > v60);
        }

        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v57, v58, v59);
        LOWORD(v52) = *buf;
      }

      else
      {
        v69 = v5[8];
        v70 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v258, v50, v51);
        v71 = (v52 % v69 + *(v70 + 48) % v69);
        if (v71 == v52 % v69 + *(v70 + 48) % v69)
        {
          v72 = 0;
        }

        else
        {
          v72 = v69;
        }

        v52 = (v71 - v72) % v69;
      }
    }

    if (ashp::operator==<int,0>(&v257, &v258, v50, v51))
    {
      break;
    }

    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v258, v73, v74, v75);
    *buf = ashp::acipc::transfer_queue::get_prev_transfer_in_queue(v5, 2u, v258, v185);
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v186, v187, v188);
    v189 = *buf;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v190, v191, v192);
    v195 = v257;
    v196 = *(a2 + 1);
    v197 = (v196 >> 1) & 7;
    if (v197 == 4)
    {
      v198 = 1;
      LOBYTE(v197) = 3;
    }

    else
    {
      if ((v196 & 1) == 0)
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x1BA, "multicomp_complete_prior_transfers", v194);
        result = _os_crash();
        __break(1u);
        return result;
      }

      if ((v196 & 0xC) == 4)
      {
        v198 = 1;
      }

      else
      {
        v198 = (*(a2 + 1) >> 1) & 7;
      }
    }

    *buf = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, v189, v193);
    next_transfer_in_queue = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&next_transfer_in_queue, v195, v214, v215);
    while (1)
    {
      if (ashp::operator==<int,0>(&next_transfer_in_queue, buf, v216, v217))
      {
        goto LABEL_49;
      }

      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v73, v74, v75);
      v223 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v218, v219) + 48) ? v198 : v197;
      v224 = *(a2 + 1);
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v220, v221, v222);
      v225 = next_transfer_in_queue;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v226, v227, v228);
      v231 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v229, v230);
      if ((ashp::acipc::transfer_queue::save_transfer_completion(v5, v225, v224 & 0xF1u | (2 * (v223 & 7)), *(v231 + 40), a2) & 1) == 0)
      {
        break;
      }

      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v232, v233, v234);
      next_transfer_in_queue = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, next_transfer_in_queue, v236);
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x1C2, "multicomp_complete_prior_transfers", v235);
    _os_crash();
    __break(1u);
LABEL_134:
    v5 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x1E6, "shortcomp_complete_subsequent_transfers", v212);
    _os_crash();
    __break(1u);
LABEL_135:
    v241 = 402;
LABEL_137:
    ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", v241, "multicomp_find_first_transfer", v31);
    v36 = 0xFFFF;
  }

LABEL_49:
  v76 = *(a2 + 1);
  if ((v76 & 0xE) == 8)
  {
    v77 = v76 & 0xF1 | 4;
  }

  else
  {
    v77 = *(a2 + 1);
  }

  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v258, v73, v74, v75);
  if ((ashp::acipc::transfer_queue::save_transfer_completion(v5, v258, v77, *(a2 + 8), a2) & 1) == 0)
  {
    goto LABEL_148;
  }

  *buf = -1;
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, v52, v78, v28);
  if (!ashp::operator==<int,0>(buf, &v258, v79, v80))
  {
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v258, v81, v82, v83);
    *buf = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, v258, v199);
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v200, v201, v202);
    v203 = *buf;
    *buf = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, v52, v204);
    next_transfer_in_queue = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&next_transfer_in_queue, v203, v205, v206);
    while (!ashp::operator==<int,0>(&next_transfer_in_queue, buf, v207, v208))
    {
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v81, v82, v83);
      if ((ashp::acipc::transfer_queue::save_transfer_completion(v5, next_transfer_in_queue, 0, 0, a2) & 1) == 0)
      {
        goto LABEL_134;
      }

      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v209, v210, v211);
      next_transfer_in_queue = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, next_transfer_in_queue, v213);
    }
  }

  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v81, v82, v83);
  v86 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v257, v84, v85) + 46);
  v256 = -1;
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v87, v88, v89);
  if (v86 == v257)
  {
    goto LABEL_58;
  }

  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v90, v91, v92);
  v256 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v257, v93, v94) + 6);
  if (v256 == 0xFFFF)
  {
    goto LABEL_150;
  }

  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v256, v95, v96, v97);
  if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v256, v99, v100) != 3)
  {
LABEL_151:
    ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x24B, "complete_transfer", v103);
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v256, v245, v246, v247);
    *buf = *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v256, v248, v249);
    ashp::acipc::transfer_queue::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_1::operator()<unsigned short,unsigned int>(v5, buf);
    goto LABEL_131;
  }

  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v256, v101, v102, v103);
  v106 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v256, v104, v105);
  v108 = *(a2 + 6);
  v107 = (a2 + 6);
  if (*(v106 + 62) != v108)
  {
    ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x24F, "complete_transfer", v92);
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v256, v250, v251, v252);
    v255 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v256, v253, v254);
    ashp::acipc::transfer_queue::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_2::operator()<unsigned short,unsigned short,unsigned short>(v5, (v255 + 62), v107);
    goto LABEL_131;
  }

LABEL_58:
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v90, v91, v92);
  v109 = v257;
  next_transfer_in_queue = v256;
  v260 = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, v52, v110);
  v259 = -1;
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v259, v109, v111, v112);
  v115 = 0;
  while (!ashp::operator==<int,0>(&v259, &v260, v113, v114))
  {
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v259, v116, v117, v118);
    v121 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v259, v119, v120);
    v124 = v121;
    v125 = (*(v121 + 60) >> 1) & 7;
    if (v125 > 2)
    {
      switch(v125)
      {
        case 3u:
          if (next_transfer_in_queue != -1)
          {
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v122, v123, v28);
            if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v139, v140) + 56))
            {
              v242 = 514;
              goto LABEL_128;
            }
          }

          v128 = (v124 + 56);
          v141 = *(v124 + 56);
          *(v124 + 52) = 2;
          if ((v141 & 1) == 0)
          {
            goto LABEL_74;
          }

          break;
        case 5u:
          if (next_transfer_in_queue != -1)
          {
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v122, v123, v28);
            if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v145, v146) + 56) == 1)
            {
              ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v122, v123, v28);
              v149 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v147, v148);
              *buf = 3;
              LOBYTE(v263) = 1;
              if (!ashp::operator==<int,0>(v149 + 52, buf, v150, v151))
              {
                v242 = 520;
                goto LABEL_128;
              }
            }
          }

          v128 = (v124 + 56);
          v152 = *(v124 + 56);
          *(v124 + 52) = 3;
          if ((v152 & 1) == 0)
          {
            goto LABEL_74;
          }

          break;
        case 6u:
          v128 = (v121 + 56);
          v129 = *(v121 + 56);
          *(v121 + 52) = 1;
          if ((v129 & 1) == 0)
          {
            goto LABEL_74;
          }

          break;
        default:
          goto LABEL_129;
      }
    }

    else
    {
      if (v125)
      {
        if (v125 == 1)
        {
          if (next_transfer_in_queue != -1)
          {
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v122, v123, v28);
            if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v142, v143) + 56))
            {
              v242 = 506;
              goto LABEL_128;
            }
          }

          if (*(v124 + 56))
          {
            *(v124 + 56) = 0;
          }

          if (!*(v124 + 48))
          {
            v242 = 533;
            goto LABEL_128;
          }

LABEL_88:
          v144 = v259;
          goto LABEL_98;
        }

        if (next_transfer_in_queue != -1)
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v122, v123, v28);
          if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v126, v127) + 56))
          {
            v242 = 510;
LABEL_128:
            ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", v242, "compute_io_status_for_transfers", v28);
LABEL_129:
            v238 = 595;
            goto LABEL_130;
          }
        }
      }

      else if (next_transfer_in_queue == -1 || (ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v122, v123, v28), v132 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v130, v131), *buf = 0, LOBYTE(v263) = 1, !ashp::operator==<int,0>(v132 + 52, buf, v133, v134)))
      {
        v242 = 502;
        goto LABEL_128;
      }

      v128 = (v124 + 56);
      v135 = *(v124 + 56);
      *(v124 + 52) = 0;
      if ((v135 & 1) == 0)
      {
LABEL_74:
        *v128 = 1;
      }
    }

    if (*(v124 + 48))
    {
      goto LABEL_88;
    }

    v136 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, *(v124 + 46), v123, v28);
    v137 = *(v124 + 56);
    v138 = *(v124 + 52);
    if (*(v136 + 56) == 1)
    {
      if (*(v124 + 56))
      {
        *(v136 + 52) = v138;
      }

      else
      {
        *(v136 + 56) = 0;
      }
    }

    else if (*(v124 + 56))
    {
      *(v136 + 52) = v138;
      *(v136 + 56) = 1;
    }

    ++v115;
    v144 = -1;
LABEL_98:
    next_transfer_in_queue = v144;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v259, v122, v123, v28);
    v259 = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, v259, v153);
  }

  *buf = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, v52, v118);
  for (i = v257; ; i = ashp::acipc::transfer_queue::get_next_transfer_in_queue(v5, 2u, next_transfer_in_queue, v170))
  {
    next_transfer_in_queue = i;
    if (ashp::operator==<int,0>(&next_transfer_in_queue, buf, v154, v155))
    {
      break;
    }

    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v157, v158, v159);
    v162 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, next_transfer_in_queue, v160, v161);
    ashp::device_accessible_memory::release_obj((v162 + 8), v163, v164, v165, v166);
    *(v162 + 16) = 0;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v167, v168, v169);
  }

  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v157, v158, v159);
  if (v115)
  {
    if (v86 != v257)
    {
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v256, v257, v171, v172);
      ashp::acipc::transfer_queue::move_transfers(v5, v86, v256, 3u, 4u, v5[42]);
    }

    if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v52, v171, v172) + 48))
    {
      v176 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](v5 + 4, v52, v174, v175) + 46);
      prev_transfer_in_queue = ashp::acipc::transfer_queue::get_prev_transfer_in_queue(v5, 2u, v176, v177);
      next_transfer_in_queue = prev_transfer_in_queue;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&next_transfer_in_queue, v179, v180, v181);
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v182, v183, v184);
      ashp::acipc::transfer_queue::move_transfers(v5, v257, prev_transfer_in_queue, 2u, 4u, v5[42]);
      ashp::acipc::transfer_queue::move_transfers(v5, v176, v52, 2u, 3u, v5[39]);
    }

    else
    {
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v257, v173, v174, v175);
      ashp::acipc::transfer_queue::move_transfers(v5, v257, v52, 2u, 4u, v5[42]);
    }
  }

  else
  {
    ashp::acipc::transfer_queue::move_transfers(v5, v257, v52, 2u, 3u, v256);
  }

  v237 = 1;
LABEL_132:
  v239 = *MEMORY[0x277D85DE8];
  return (v115 << 16) | (v86 << 32) | v237;
}

void ashp::acipc::transfer_queue::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v6 = "transfer_queue.cpp";
      v7 = 1024;
      v8 = 557;
      v9 = 2082;
      v10 = "complete_transfer";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) first transfer not found", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) first transfer not found", "transfer_queue.cpp", 557, "complete_transfer", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_1::operator()<unsigned short,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *a1;
      v6 = *a2;
      *buf = 136447234;
      v9 = "transfer_queue.cpp";
      v11 = 586;
      v12 = 2082;
      v10 = 1024;
      v13 = "complete_transfer";
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) predecessor state %u does not valid", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) predecessor state %u does not valid", "transfer_queue.cpp", 586, "complete_transfer", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_2::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 590;
      v15 = 2082;
      v16 = "complete_transfer";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) predecessor completion ID %hu does not equal completion ID %hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) predecessor completion ID %hu does not equal completion ID %hu", "transfer_queue.cpp", 590, "complete_transfer", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::transfer_queue::print_queue_stats(ashp::acipc::transfer_queue *this)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(this + 28))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 84);
  }

  v3 = *(this + 28) - v2;
  log_level = ashp::detail::logging::get_log_level(this);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *this;
      v6 = *(this + 31);
      v7 = *(this + 34);
      v8 = *(this + 40);
      v9 = *(this + 43);
      *buf = 136448258;
      v12 = "transfer_queue.cpp";
      v13 = 1024;
      v14 = 928;
      v15 = 2082;
      v16 = "print_queue_stats";
      v17 = 1024;
      v18 = v5;
      v19 = 1024;
      v20 = v3;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = v8;
      v27 = 1024;
      v28 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) free=%hu, queued=%hu, pending=%hu, completed=%hu, fetched=%hu", buf, 0x40u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) free=%hu, queued=%hu, pending=%hu, completed=%hu, fetched=%hu", "transfer_queue.cpp", 928, "print_queue_stats", *this, v3, *(this + 31), *(this + 34), *(this + 40), *(this + 43));
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::direct_tr_controller::consume_transfers(ashp::direct_tr_controller *this, unsigned int a2, int a3)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v6, v7, v8);
    v9 = ashp::acipc::tr_controller::consume_transfers(*(this + 10), a2, a3);
    os_unfair_lock_unlock(this + 16);
    return v9;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x281, "consume_transfers", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x281, "consume_transfers", v11);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_tr_controller::get_first_completed_tag(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    first_completed_tag = ashp::acipc::tr_controller::get_first_completed_tag(*(this + 10));
    v12 = first_completed_tag;
    if (first_completed_tag != 0xFFFF)
    {
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v12, v5, v6, v7);
      os_unfair_lock_unlock(this + 16);
      return first_completed_tag;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x277, "get_first_completed_tag", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x277, "get_first_completed_tag", v10);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x279, "get_first_completed_tag", v7);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to retrieve first completed tag of ring without completed transfers", "direct_tr_controller.cpp", 0x279, "get_first_completed_tag", v11);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::direct_tr_controller::get_completed_transfer_count(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    completed_transfer_count = ashp::acipc::tr_controller::get_completed_transfer_count(*(this + 10));
    os_unfair_lock_unlock(this + 16);
    return completed_transfer_count;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x26F, "get_completed_transfer_count", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x26F, "get_completed_transfer_count", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_tr_controller::get_transfer_completion(uint64_t a1, unsigned int a2, uint64_t a3, ashp *a4, unsigned int a5, ashp *a6, unsigned int a7)
{
  os_unfair_lock_lock((a1 + 64));
  if (*(a1 + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 80), v14, v15, v16);
    transfer_completion = ashp::acipc::tr_controller::get_transfer_completion(*(a1 + 80), a2, a3, a4, a5, a6, a7);
    os_unfair_lock_unlock((a1 + 64));
    return transfer_completion;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x267, "get_transfer_completion", v16);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x267, "get_transfer_completion", v19);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_tr_controller::get_first_free_tag(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    first_free_tag = ashp::acipc::tr_controller::get_first_free_tag(*(this + 10));
    v12 = first_free_tag;
    if (first_free_tag != 0xFFFF)
    {
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v12, v5, v6, v7);
      os_unfair_lock_unlock(this + 16);
      return first_free_tag;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x25C, "get_first_free_tag", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x25C, "get_first_free_tag", v10);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x25E, "get_first_free_tag", v7);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to retrieve first free tag of ring without free space", "direct_tr_controller.cpp", 0x25E, "get_first_free_tag", v11);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::direct_tr_controller::create_free_space_monitor(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 32) != 1)
  {
    ashp::acipc::ring_controller::create_monitor(&v21, (v5 + 648), *(v5 + 24), (v5 + 872));
  }

  ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0x1B8, "create_free_space_monitor", v6);
  ashp::acipc::tr_controller::create_free_space_monitor(void)::$_0::operator()<unsigned short>((v5 + 208));
  v21 = 0;
  os_unfair_lock_unlock((v5 + 16));
  v20 = 0;
  v9 = ashp::operator==<int,0>(&v21, &v20, v7, v8);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v20, v10, v11, v12);
  if (!v9)
  {
    v16 = *&this[2]._os_unfair_lock_opaque;
    v17 = v21;
    v21 = 0;
    v19 = v17;
    ashp::direct_monitor::create();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v21, v13, v14, v15);
  os_unfair_lock_unlock(this + 16);
  return 0;
}

void sub_23ECF5EC0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_tr_controller::get_free_space(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    free_space = ashp::acipc::tr_controller::get_free_space(*(this + 10));
    os_unfair_lock_unlock(this + 16);
    return free_space;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x24B, "get_free_space", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x24B, "get_free_space", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_tr_controller::enqueue_transfer(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, __int16 a10)
{
  os_unfair_lock_lock((a1 + 64));
  if ((*(a1 + 192) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x16C, "enqueue_transfer", v20);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x16C, "enqueue_transfer", v42);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (*(a1 + 196))
  {
LABEL_8:
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x16D, "enqueue_transfer", v20);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: mode must be AIRSHIP_ACIPC_TR_MODE_STANDARD", "direct_tr_controller.cpp", 0x16D, "enqueue_transfer", v43);
    result = _os_crash();
    __break(1u);
    return result;
  }

  LOWORD(v51) = a10;
  HIDWORD(v51) = a9;
  if (a2)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a2 + 64), v18, v19, v20);
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::refcounted_ptr(&v50, *(a2 + 64), v21, v22);
    v23 = v50;
  }

  else
  {
    v23 = 0;
  }

  v52 = 0;
  v50 = 0;
  v53 = v23;
  *&v54 = __PAIR64__(a4, a3);
  *(&v54 + 1) = a5;
  LODWORD(v55) = a6;
  *(&v55 + 1) = a7;
  v56 = a8;
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v50, v18, v19, v20);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 80), v24, v25, v26);
  v27 = *(a1 + 80);
  v44 = v51;
  v45 = 0;
  v46 = v23;
  ashp::device_accessible_memory::retain_obj(&v45, v28, v29, v30, v31);
  v47 = v54;
  v48 = v55;
  v49 = v56;
  v32 = ashp::acipc::tr_controller::enqueue_transfer(v27, &v44);
  ashp::device_accessible_memory::release_obj(&v45, v33, v34, v35, v36);
  v46 = 0;
  ashp::device_accessible_memory::release_obj(&v52, v37, v38, v39, v40);
  os_unfair_lock_unlock((a1 + 64));
  return v32;
}

void sub_23ECF61D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  ashp::acipc::tr_controller::transfer::~transfer(va, a2, a3, a4, a5);
  ashp::acipc::tr_controller::transfer::~transfer(va1, v8, v9, v10, v11);
  os_unfair_lock_unlock(v6 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_tr_controller::synthesize_reset_completions(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    v5 = ashp::acipc::tr_controller::synthesize_reset_completions(*(this + 10));
    os_unfair_lock_unlock(this + 16);
    return v5;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x163, "synthesize_reset_completions", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x163, "synthesize_reset_completions", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_tr_controller::reset(os_unfair_lock_s *this)
{
  v44 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if ((this[48]._os_unfair_lock_opaque & 1) == 0)
  {
    v5 = "direct_tr_controller.cpp";
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x14E, "reset", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x14E, "reset", v38);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_lock(v5 + 36);
  os_unfair_lock_lock(v5 + 4);
  if ((v5[632] & 1) == 0)
  {
LABEL_34:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x155, "reset", v7);
    _os_crash();
    __break(1u);
    goto LABEL_35;
  }

  if (*(v5 + 170))
  {
LABEL_35:
    v10 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x156, "reset", v7);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  if (v5[32] != 1)
  {
    v11 = ashp::acipc::ring_controller::compute_state((v5 + 648));
    if (v11 == 7)
    {
      *(v5 + 1457) = 0;
      ashp::acipc::ring_controller::reset((v5 + 648), v12, v13, v14, v15);
      ashp::unsafe_storage<ashp::acipc::transfer_queue>::reset(v5 + 146);
      if (v5[1160] == 1)
      {
        *(v5 + 1160) = 0;
      }

      if (v5[1530] == 1)
      {
        *(v5 + 1530) = 0;
      }

      ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v5 + 140, v16, v17, v18);
      *&buf[8] = 0;
      *&buf[16] = 0x200000000;
      *buf = 0;
      ashp::buffer_mapping::operator=((v5 + 1096), buf, v19, v20);
      ashp::buffer_mapping::~buffer_mapping(buf, v21, v22, v23);
      *(v5 + 1456) = 0;
      ashp::monitor_target::update_value(v5 + 218, 0);
      os_unfair_lock_lock(v5 + 37);
      ashp::monitor_target::update_value(v5 + 206, 0);
      os_unfair_lock_unlock(v5 + 37);
      v24 = ashp::acipc::ring_controller::compute_state((v5 + 648));
      ashp::acipc::tr_controller::update_state_monitor_target(v5, v24);
      log_level = ashp::detail::logging::get_log_level(v25);
      if (log_level >= 4)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v27 = *(v5 + 104);
          *buf = 136446978;
          *&buf[4] = "tr_controller.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 362;
          *&buf[18] = 2082;
          *&buf[20] = "reset";
          v40 = 1024;
          v41 = v27;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller reset", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller reset", "tr_controller.cpp", 362, "reset", *(v5 + 104));
      }

      os_unfair_lock_unlock(v5 + 4);
      v28 = *(v5 + 3);
      ashp::optional<ashp::acipc::ring_manager,void>::value(&v28[1066], v29, v30, v31);
      os_unfair_lock_lock(v28 + 1066);
      if (*(v5 + 115) == v5)
      {
        ashp::acipc::ring_manager::check_tr_settlement_tracking_for_tr(v28 + 1066, (v5 + 920));
        os_unfair_lock_unlock(v28 + 1066);
        os_unfair_lock_lock(v5 + 4);
        v10 = 0;
        goto LABEL_32;
      }

      v33 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x2E7, "flush_tr_settlement", v32);
      _os_crash();
      __break(1u);
    }

    else
    {
      LODWORD(v33) = v11;
      v34 = ashp::detail::logging::get_log_level(v11);
      if (v34 >= 2)
      {
        v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          v35 = *(v5 + 104);
          *buf = 136447234;
          *&buf[4] = "tr_controller.cpp";
          *&buf[14] = 345;
          *&buf[18] = 2082;
          *&buf[12] = 1024;
          *&buf[20] = "reset";
          v40 = 1024;
          v41 = v35;
          v42 = 1024;
          v43 = v33;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) invalid state %u", buf, 0x28u);
        }
      }

      LODWORD(v28) = -536870208;
      if (!ashp::detail::logging::get_log_level(v34))
      {
        v10 = 3758097112;
        goto LABEL_32;
      }

      if (airship_platform_get_global_logger::once == -1)
      {
        goto LABEL_30;
      }
    }

    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_30:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) invalid state %u", "tr_controller.cpp", 345, "reset", *(v5 + 104), v33);
    v10 = (v28 + 24);
    goto LABEL_32;
  }

  v8 = ashp::detail::logging::get_log_level(v6);
  if (v8 >= 2)
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = *(v5 + 104);
      *buf = 136446978;
      *&buf[4] = "tr_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      *&buf[18] = 2082;
      *&buf[20] = "reset";
      v40 = 1024;
      v41 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v10 = 3758097088;
  if (ashp::detail::logging::get_log_level(v8))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_10:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 343, "reset", *(v5 + 104));
      goto LABEL_32;
    }

LABEL_36:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_10;
  }

LABEL_32:
  os_unfair_lock_unlock(v5 + 4);
  os_unfair_lock_unlock(v5 + 36);
  os_unfair_lock_unlock(this + 16);
  v36 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23ECF686C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v2 + 36);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_tr_controller::create_sync_monitor(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
  ashp::acipc::tr_controller::create_sync_monitor(&v19, *(this + 10));
  v18 = 0;
  v7 = ashp::operator==<int,0>(&v19, &v18, v5, v6);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v18, v8, v9, v10);
  if (!v7)
  {
    v14 = *(this + 1);
    v15 = v19;
    v19 = 0;
    v17 = v15;
    ashp::direct_monitor::create();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v19, v11, v12, v13);
  os_unfair_lock_unlock(this + 16);
  return 0;
}

void sub_23ECF6960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, a2, a3, a4);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v7, v8, v9);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_tr_controller::sync(ashp::direct_tr_controller *this, char a2)
{
  os_unfair_lock_lock(this + 16);
  if ((*(this + 192) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x13C, "sync", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x13C, "sync", v7);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if (*(this + 49))
  {
LABEL_7:
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x13D, "sync", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: mode must be AIRSHIP_ACIPC_TR_MODE_STANDARD", "direct_tr_controller.cpp", 0x13D, "sync", v8);
    _os_crash();
    __break(1u);
    return;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v4, v5, v6);
  ashp::acipc::tr_controller::sync(*(this + 10), a2);

  os_unfair_lock_unlock(this + 16);
}

uint64_t ashp::direct_tr_controller::close(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    v5 = ashp::acipc::tr_controller::close(*(this + 10));
    os_unfair_lock_unlock(this + 16);
    return v5;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x134, "close", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x134, "close", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t ashp::direct_tr_controller::open(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    v5 = ashp::acipc::tr_controller::open(*(this + 10));
    os_unfair_lock_unlock(this + 16);
    return v5;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x12C, "open", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x12C, "open", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_tr_controller::create_state_monitor(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 32) != 1)
  {
    ashp::acipc::ring_controller::create_monitor(&v21, (v5 + 648), *(v5 + 24), (v5 + 776));
  }

  ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0x98, "create_state_monitor", v6);
  ashp::acipc::tr_controller::create_state_monitor(void)::$_0::operator()<unsigned short>((v5 + 208));
  v21 = 0;
  os_unfair_lock_unlock((v5 + 16));
  v20 = 0;
  v9 = ashp::operator==<int,0>(&v21, &v20, v7, v8);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v20, v10, v11, v12);
  if (!v9)
  {
    v16 = *&this[2]._os_unfair_lock_opaque;
    v17 = v21;
    v21 = 0;
    v19 = v17;
    ashp::direct_monitor::create();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v21, v13, v14, v15);
  os_unfair_lock_unlock(this + 16);
  return 0;
}

void sub_23ECF6D24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_tr_controller::get_state(os_unfair_lock_s *this, unsigned int *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if ((this[48]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x11B, "get_state", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive TR", "direct_tr_controller.cpp", 0x11B, "get_state", v19);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v5, v6, v7);
  v2 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v2 + 16));
  if ((*(v2 + 632) & 1) == 0)
  {
LABEL_24:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x86, "get_state", v9);
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  if (*(v2 + 32) == 1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v11 = *(v2 + 208);
        *buf = 136446978;
        v21 = "tr_controller.cpp";
        v22 = 1024;
        v23 = 138;
        v24 = 2082;
        v25 = "get_state";
        v26 = 1024;
        v27 = v11;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_12;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_11:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 138, "get_state", *(v2 + 208));
LABEL_12:
      v12 = 8;
      goto LABEL_22;
    }

LABEL_25:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_11;
  }

  v12 = ashp::acipc::ring_controller::compute_state((v2 + 648));
  v13 = ashp::acipc::ring_controller::compute_state_detail((v2 + 648));
  v14 = v13;
  if (a2)
  {
    *a2 = v13;
  }

  v15 = ashp::detail::logging::get_log_level(v13);
  if (v15 >= 4)
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      v16 = *(v2 + 208);
      *buf = 136447490;
      v21 = "tr_controller.cpp";
      v22 = 1024;
      v23 = 144;
      v24 = 2082;
      v25 = "get_state";
      v26 = 1024;
      v27 = v16;
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = v14;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller state=%u, detail=%u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(v15))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller state=%u, detail=%u", "tr_controller.cpp", 144, "get_state", *(v2 + 208), v12, v14);
  }

LABEL_22:
  os_unfair_lock_unlock((v2 + 16));
  os_unfair_lock_unlock(this + 16);
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23ECF70E4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_tr_controller::activate(ashp::direct_tr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 192) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x103, "activate", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to activate already-active TR", "direct_tr_controller.cpp", 0x103, "activate", v27);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    v5 = *(this + 10);
    ashp::acipc::tr_controller::client_overrides::client_overrides(&v28, (this + 88), v6, v7);
    v8 = ashp::acipc::tr_controller::set_client_overrides(v5, &v28);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v33, v9, v10, v11);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v32, v12, v13, v14);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v31, v15, v16, v17);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v30, v18, v19, v20);
    if (v29 == 1)
    {
      v29 = 0;
    }

    if ((v8 & 1) == 0)
    {
      v25 = 3758097090;
      goto LABEL_9;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v21, v22, v23);
    v25 = ashp::acipc::tr_controller::activate(*(this + 10));
    if (v25)
    {
LABEL_9:
      os_unfair_lock_unlock(this + 16);
      return v25;
    }

    if (*(this + 49) != 1)
    {
      v25 = 0;
      *(this + 192) = 1;
      goto LABEL_9;
    }
  }

  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: Unsupported mode: AIRSHIP_ACIPC_TR_MODE_BATCH (missing IOUserNetworkPacket)", "direct_tr_controller.cpp", 0x110, "activate", v24);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECF7280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::acipc::tr_controller::client_overrides::~client_overrides(va, a2, a3, a4);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_tr_controller::set_interrupt(os_unfair_lock_s *this, const __CFString *a2, int a3)
{
  LODWORD(v3) = a3;
  v63 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0xF9, "set_interrupt", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempt to reconfigure active TR", "direct_tr_controller.cpp", 0xF9, "set_interrupt", v43);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a2)
  {
LABEL_16:
    v3 = "direct_tr_controller.cpp";
    a2 = "set_interrupt";
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0xFA, "set_interrupt", v7);
    v40 = "BUG in client of Airship: interrupt cannot be NULL";
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: interrupt cannot be NULL", "direct_tr_controller.cpp", 0xFA, "set_interrupt", v44);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  ashp::boxed::symbol::with_str(&v45, a2, v6, v7);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v45, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v46, v45, v11, v12);
  v47 = v3;
  v50 = 0;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v48, v13, v14, v15);
  v16 = v46;
  v46 = 0;
  v48 = v16;
  v49 = v47;
  v50 = 1;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(buf, &v48, v17, v18);
  ashp::swap(&this[42], buf, v19, v20);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v21, v22, v23);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v48, v24, v25, v26);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v46, v27, v28, v29);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v45, v30, v31, v32);
  LODWORD(a2) = (*(*&this->_os_unfair_lock_opaque + 136))(this);
  ashp::optional<ashp::acipc::name_and_selector,void>::value(&this[42], v33, v34, v35);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[42]._os_unfair_lock_opaque, v36, v37, v38);
  CStringPtr = *&this[42]._os_unfair_lock_opaque;
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v40 = CStringPtr;
    }

    else
    {
      v40 = "???";
    }
  }

  else
  {
    v40 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      v52 = "direct_tr_controller.cpp";
      v53 = 1024;
      v54 = 252;
      v55 = 2082;
      v56 = "set_interrupt";
      v57 = 1024;
      v58 = a2;
      v59 = 2080;
      v60 = v40;
      v61 = 1024;
      v62 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) new interrupt %s[%u]", buf, 0x32u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_13:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) new interrupt %s[%u]", "direct_tr_controller.cpp", 252, "set_interrupt", a2, v40, v3);
      goto LABEL_14;
    }

LABEL_17:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_13;
  }

LABEL_14:
  os_unfair_lock_unlock(this + 16);
  v42 = *MEMORY[0x277D85DE8];
}

void ashp::direct_tr_controller::set_mode(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 64));
  if (*(a1 + 192) == 1)
  {
    v2 = "direct_tr_controller.cpp";
    v5 = "set_mode";
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0xF0, "set_mode", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempt to reconfigure active TR", "direct_tr_controller.cpp", 0xF0, "set_mode", v8);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v5 = (*(*a1 + 136))(a1);
  log_level = ashp::detail::logging::get_log_level(v5);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      v10 = "direct_tr_controller.cpp";
      v12 = 241;
      v13 = 2082;
      v11 = 1024;
      v14 = "set_mode";
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v2;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) new mode (%u)", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_7:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) new mode (%u)", "direct_tr_controller.cpp", 241, "set_mode", v5, v2);
      goto LABEL_8;
    }

LABEL_10:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 196) = v2;
  os_unfair_lock_unlock((a1 + 64));
  v7 = *MEMORY[0x277D85DE8];
}

void ashp::direct_tr_controller::set_doorbell_moderation(os_unfair_lock_s *this, int a2, int a3)
{
  LODWORD(v3) = a3;
  LODWORD(v4) = a2;
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    v3 = "direct_tr_controller.cpp";
    v4 = "set_doorbell_moderation";
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0xE6, "set_doorbell_moderation", v6);
    v7 = "BUG in client of Airship: attempt to reconfigure active TR";
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempt to reconfigure active TR", "direct_tr_controller.cpp", 0xE6, "set_doorbell_moderation", v10);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v7 = (*(*&this->_os_unfair_lock_opaque + 136))(this);
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      v12 = "direct_tr_controller.cpp";
      v13 = 1024;
      v14 = 231;
      v15 = 2082;
      v16 = "set_doorbell_moderation";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v4;
      v21 = 1024;
      v22 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) new doorbell interval (%u us), new leeway (%u us)", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_7:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) new doorbell interval (%u us), new leeway (%u us)", "direct_tr_controller.cpp", 231, "set_doorbell_moderation", v7, v4, v3);
      goto LABEL_8;
    }

LABEL_10:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_7;
  }

LABEL_8:
  this[40]._os_unfair_lock_opaque = v4;
  this[41]._os_unfair_lock_opaque = v3;
  os_unfair_lock_unlock(this + 16);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::direct_tr_controller::get_name(ashp::direct_tr_controller *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v16, *(*(this + 10) + 168), v5, v6);
  v7 = v16;
  v15 = v16;
  v16 = 0;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v15, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v16, v11, v12, v13);
  return v7;
}

void sub_23ECF7AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::direct_tr_controller::set_open_clientdata(os_unfair_lock_s *this, ashp::boxed::mutable_data *a2, unsigned int a3)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0xC5, "set_open_clientdata", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active TR", "direct_tr_controller.cpp", 0xC5, "set_open_clientdata", v24);
    _os_crash();
    __break(1u);
  }

  else
  {
    v28 = 0;
    if (a2)
    {
      ashp::boxed::mutable_data::with_capacity(&v27, a3);
      v9 = v27;
      v27 = v28;
      v28 = v9;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v27, v10, v11, v12);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v28, v13, v14, v15);
      ashp::boxed::mutable_data::append_bytes(v28, a2, a3, v16);
      a2 = v28;
      v28 = 0;
      v25 = a2;
      if (a2)
      {
        v25 = 0;
        v29 = a2;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v29, v6, v7, v8);
      }
    }

    else
    {
      v28 = 0;
      v25 = 0;
    }

    v17 = *&this[38]._os_unfair_lock_opaque;
    *&this[38]._os_unfair_lock_opaque = a2;
    v26 = v17;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v26, v6, v7, v8);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v25, v18, v19, v20);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v28, v21, v22, v23);
    os_unfair_lock_unlock(this + 16);
  }
}

void sub_23ECF7C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va1, v7, v8, v9);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_tr_controller::get_in_place(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *(*&this[20]._os_unfair_lock_opaque + 289);
  os_unfair_lock_unlock(this + 16);
  return v5;
}

uint64_t ashp::direct_tr_controller::get_out_of_order(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *(*&this[20]._os_unfair_lock_opaque + 288);
  os_unfair_lock_unlock(this + 16);
  return v5;
}

void ashp::direct_tr_controller::set_completion_group(os_unfair_lock_s *this, const __CFString *a2, int a3)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0xAF, "set_completion_group", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active TR", "direct_tr_controller.cpp", 0xAF, "set_completion_group", v33);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::boxed::symbol::with_str(&v34, a2, v6, v7);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v34, v8, v9, v10);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v35, v34, v11, v12);
    v36 = a3;
    v39 = 0;
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v37, v13, v14, v15);
    v16 = v35;
    v35 = 0;
    v37 = v16;
    v38 = v36;
    v39 = 1;
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v40, &v37, v17, v18);
    ashp::swap(&this[32], v40, v19, v20);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v40, v21, v22, v23);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v37, v24, v25, v26);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v35, v27, v28, v29);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v34, v30, v31, v32);
    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_tr_controller::get_completion_group(ashp::direct_tr_controller *this, unsigned int *a2)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 144) == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 128, v4, v5, v6);
    if (a2)
    {
      *a2 = *(this + 34);
    }

    ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 128, v7, v8, v9);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v23, *(this + 16), v10, v11);
    v15 = v23;
    if (v23)
    {
      v23 = 0;
      v25 = v15;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v25, v12, v13, v14);
    }

    v24 = v15;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v23, v12, v13, v14);
    v24 = 0;
    v25 = v15;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v25, v16, v17, v18);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v24, v19, v20, v21);
  }

  else
  {
    v15 = 0;
    if (a2)
    {
      *a2 = 0xFFFF;
    }
  }

  os_unfair_lock_unlock(this + 16);
  return v15;
}

void sub_23ECF7F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_tr_controller::set_completion_ring(os_unfair_lock_s *this, const __CFString *a2, int a3)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x96, "set_completion_ring", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active TR", "direct_tr_controller.cpp", 0x96, "set_completion_ring", v33);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::boxed::symbol::with_str(&v34, a2, v6, v7);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v34, v8, v9, v10);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v35, v34, v11, v12);
    v36 = a3;
    v39 = 0;
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v37, v13, v14, v15);
    v16 = v35;
    v35 = 0;
    v37 = v16;
    v38 = v36;
    v39 = 1;
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v40, &v37, v17, v18);
    ashp::swap(&this[26], v40, v19, v20);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v40, v21, v22, v23);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v37, v24, v25, v26);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v35, v27, v28, v29);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v34, v30, v31, v32);
    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_tr_controller::get_completion_ring(ashp::direct_tr_controller *this, unsigned int *a2)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 120) == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 104, v4, v5, v6);
    if (a2)
    {
      *a2 = *(this + 28);
    }

    ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 104, v7, v8, v9);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v23, *(this + 13), v10, v11);
    v15 = v23;
    if (v23)
    {
      v23 = 0;
      v25 = v15;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v25, v12, v13, v14);
    }

    v24 = v15;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v23, v12, v13, v14);
    v24 = 0;
    v25 = v15;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v25, v16, v17, v18);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v24, v19, v20, v21);
  }

  else
  {
    v15 = 0;
    if (a2)
    {
      *a2 = 0xFFFF;
    }
  }

  os_unfair_lock_unlock(this + 16);
  return v15;
}

void sub_23ECF8194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_tr_controller::get_nominal_transfer_size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *(*&this[20]._os_unfair_lock_opaque + 232);
  os_unfair_lock_unlock(this + 16);
  return v5;
}

void ashp::direct_tr_controller::set_completion_footer_size(os_unfair_lock_s *this, uint32_t a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x76, "set_completion_footer_size", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active TR", "direct_tr_controller.cpp", 0x76, "set_completion_footer_size", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    this[25]._os_unfair_lock_opaque = a2;

    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_tr_controller::get_completion_footer_size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  os_unfair_lock_opaque = this[25]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque;
}

void ashp::direct_tr_controller::set_transfer_footer_size(os_unfair_lock_s *this, uint32_t a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x67, "set_transfer_footer_size", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active TR", "direct_tr_controller.cpp", 0x67, "set_transfer_footer_size", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    this[24]._os_unfair_lock_opaque = a2;

    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_tr_controller::get_transfer_footer_size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  os_unfair_lock_opaque = this[24]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque;
}

void ashp::direct_tr_controller::set_backing_ring_size(os_unfair_lock_s *this, __int16 a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x58, "set_backing_ring_size", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active TR", "direct_tr_controller.cpp", 0x58, "set_backing_ring_size", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    LOWORD(this[23]._os_unfair_lock_opaque) = a2;

    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_tr_controller::get_backing_ring_size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  os_unfair_lock_opaque_low = LOWORD(this[23]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque_low;
}

void ashp::direct_tr_controller::set_size(os_unfair_lock_s *this, __int16 a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_tr_controller.cpp", 0x49, "set_size", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active TR", "direct_tr_controller.cpp", 0x49, "set_size", v6);
    _os_crash();
    __break(1u);
  }

  else
  {
    v5 = BYTE2(this[22]._os_unfair_lock_opaque);
    LOWORD(this[22]._os_unfair_lock_opaque) = a2;
    if ((v5 & 1) == 0)
    {
      BYTE2(this[22]._os_unfair_lock_opaque) = 1;
    }

    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_tr_controller::get_size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  v2 = 23;
  if (BYTE2(this[22]._os_unfair_lock_opaque))
  {
    v2 = 22;
  }

  os_unfair_lock_opaque_low = LOWORD(this[v2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque_low;
}

void ashp::direct_tr_controller::destroy(ashp::direct_tr_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515D308;
    v6 = (this + 80);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, a2, a3, a4);
    ashp::driver_object::terminate(*v6);
    ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v6, v7, v8, v9);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 168, v10, v11, v12);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 19, v13, v14, v15);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 128, v16, v17, v18);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 104, v19, v20, v21);
    if (*(this + 90) == 1)
    {
      *(this + 90) = 0;
    }

    ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v6, v22, v23, v24);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 9, v25, v26, v27);
    ashp::direct_client_object::~direct_client_object(this + 1, v28, v29, v30, v31);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

BOOL ashp::acipc::boot_controller::reap(ashp::acipc::boot_controller *this)
{
  os_unfair_lock_lock(this + 4);
  os_unfair_lock_assert_owner(this + 4);
  v2 = *(this + 118);
  if (v2 == 1)
  {
    os_unfair_lock_unlock(this + 4);
  }

  else
  {
    ashp::acipc::boot_controller::release_image_transfer_resources(this);
    os_unfair_lock_unlock(this + 4);
    ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(this + 1, v3, v4, v5);
  }

  return v2 != 1;
}

void ashp::acipc::boot_controller::release_image_transfer_resources(const os_unfair_lock *this)
{
  v38 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 4);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[50]._os_unfair_lock_opaque, v2, v3, v4);
  CStringPtr = *&this[50]._os_unfair_lock_opaque;
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v6 = CStringPtr;
    }

    else
    {
      v6 = "???";
    }
  }

  else
  {
    v6 = "(nil)";
  }

  if (*&this[150]._os_unfair_lock_opaque)
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      v29 = "boot_controller.cpp";
      v30 = 1024;
      v31 = 316;
      v32 = 2082;
      v33 = "release_image_transfer_resources";
      v34 = 2080;
      v35 = v6;
      v36 = 2080;
      v37 = v7;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) image valid : %s ", buf, 0x30u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) image valid : %s ", "boot_controller.cpp", 316, "release_image_transfer_resources", v6, v7);
  }

  v12 = *&this[150]._os_unfair_lock_opaque;
  *&this[150]._os_unfair_lock_opaque = 0;
  v27 = v12;
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v27, v9, v10, v11);
  v13 = *&this[152]._os_unfair_lock_opaque;
  *&this[152]._os_unfair_lock_opaque = 0;
  v26 = v13;
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v26, v14, v15, v16);
  v17 = this + 134;
  ashp::optional<ashp::interrupt,void>::value(v17, v18, v19, v20);
  v21 = *&v17->_os_unfair_lock_opaque;
  ashp::optional<ashp::interrupt_manager,void>::value(*&v17->_os_unfair_lock_opaque + 632, v22, v23, v24);
  ashp::interrupt_manager::suspend_handler(v21 + 158, v17);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_23ECF8994(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ashp::acipc::boot_controller::handle_terminate(ashp::acipc::boot_controller *this)
{
  os_unfair_lock_assert_owner(this + 4);
  v5 = *(this + 48);
  if (v5)
  {
    v6 = *(this + 50);
    v7 = 8 * v5;
    do
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v6, v2, v3, v4);
      v8 = *v6++;
      ashp::driver_object::terminate(v8);
      v7 -= 8;
    }

    while (v7);
  }

  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::reduce_size(this + 48, v2, v3, v4);
  os_unfair_lock_unlock(this + 4);
  ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(this + 1, v9, v10, v11);
  ashp::reaper_target::attempt_reap((this + 96));

  os_unfair_lock_lock(this + 4);
}

void ashp::acipc::boot_controller::destroy(ashp::acipc::boot_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v87 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v10 = this;
    *this = &unk_28515D608;
    v5 = (this + 96);
    *(this + 12) = &unk_28515D630;
    if (*(this + 592) == 1)
    {
      *(this + 592) = 0;
      ashp::interrupt::~interrupt(this + 67, a2, a3, a4, a5);
    }

    os_unfair_lock_lock(*(v10 + 60));
    v11 = *(v10 + 60);
    *(v11 + 8) = 0;
    os_unfair_lock_unlock(v11);
    *(v10 + 60) = 0;
    ashp::async_notifier::cancel(v10 + 122, v12, v13, v14);
    v7 = *(v10 + 3);
    v8 = 1052;
    ashp::optional<ashp::acipc::boot_manager,void>::value(&v7[1052], v15, v16, v17);
    os_unfair_lock_lock(v7 + 1052);
    v6 = v10 + 144;
    if (*(v10 + 18) == v10)
    {
      *(v10 + 18) = 0;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10 + 23, v18, v19, v20);
      CStringPtr = *(v10 + 23);
      if (CStringPtr)
      {
        CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
        if (CStringPtr)
        {
          v9 = CStringPtr;
        }

        else
        {
          v9 = "???";
        }
      }

      else
      {
        v9 = "(nil)";
      }

      log_level = ashp::detail::logging::get_log_level(CStringPtr);
      if (log_level >= 4)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          *buf = 136446978;
          v80 = "boot_manager.cpp";
          v81 = 1024;
          v82 = 104;
          v83 = 2082;
          v84 = "remove_controller";
          v85 = 2080;
          v86 = v9;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] removing boot controller for ipc stage %s", buf, 0x26u);
        }
      }

      if (!ashp::detail::logging::get_log_level(log_level))
      {
LABEL_16:
        ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(&v7[1058], v6, v24, v25);
        os_unfair_lock_unlock(&v7[v8]);
        if (v10[620] == 1)
        {
          v10[620] = 0;
        }

        ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v10 + 76, v26, v27, v28);
        ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v10 + 75, v29, v30, v31);
        if (v10[592] == 1)
        {
          v10[592] = 0;
          ashp::interrupt::~interrupt(v10 + 67, v32, v33, v34, v35);
        }

        ashp::async_notifier::~async_notifier((v10 + 488), v32, v33, v34);
        if (v10[464] == 1)
        {
          v10[464] = 0;
        }

        ashp::monitor_target::~monitor_target((v10 + 408), v36, v37, v38, v39);
        ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::~storage(v10 + 48, v40, v41, v42);
        ashp::detail::dynamic_array::storage<unsigned int>::~storage(v10 + 44, v43, v44, v45, v46);
        ashp::detail::dynamic_array::storage<unsigned int>::~storage(v10 + 41, v47, v48, v49, v50);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10 + 39, v51, v52, v53);
        ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(v10 + 36, v54, v55, v56, v57);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10 + 26, v58, v59, v60);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10 + 25, v61, v62, v63);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10 + 23, v64, v65, v66);
        ashp::intrusive_list_link<ashp::acipc::detail::boot_manager::controller_context>::~intrusive_list_link((v10 + 152), v67, v68, v69);
        ashp::reaper_target::~reaper_target(v5, v70, v71, v72, v73);
        ashp::driver_object::~driver_object(v10, v74, v75, v76, v77);
        v78 = *MEMORY[0x277D85DE8];

        JUMPOUT(0x23EF204E0);
      }

      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_15:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] removing boot controller for ipc stage %s", "boot_manager.cpp", 104, "remove_controller", v9);
        goto LABEL_16;
      }

LABEL_27:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_15;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  v10 = "BUG in Airship: ";
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_manager.cpp", 0x66, "remove_controller", v21);
  _os_crash();
  __break(1u);
  goto LABEL_27;
}

void sub_23ECF8DB0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4ashp5acipc15boot_controllerC2EPNS0_12acipc_driverENS0_6config19boot_ipc_stage_specE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2);
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    ashp::acipc::boot_controller::probe_image_response(v3);
  }

  os_unfair_lock_unlock(v2);
}

void ___ZN4ashp5acipc15boot_controllerC2EPNS0_12acipc_driverENS0_6config19boot_ipc_stage_specE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 32))
  {
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::acipc::boot_controller::probe_image_response(os_unfair_lock_s *this)
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((this[114]._os_unfair_lock_opaque & 1) == 0 && this[118]._os_unfair_lock_opaque == 1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[50]._os_unfair_lock_opaque, v2, v3, v4);
    CStringPtr = *&this[50]._os_unfair_lock_opaque;
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v6 = CStringPtr;
      }

      else
      {
        v6 = "???";
      }
    }

    else
    {
      v6 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v10 = "boot_controller.cpp";
        v11 = 1024;
        v12 = 350;
        v13 = 2082;
        v14 = "probe_image_response";
        v15 = 2080;
        v16 = v6;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) checking for image response", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) checking for image response", "boot_controller.cpp", 350, "probe_image_response", v6);
    }

    ashp::acipc::boot_controller::check_for_image_response(this);
  }

  os_unfair_lock_unlock(this + 4);
  v8 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::boot_controller::check_for_image_response(os_unfair_lock_s *this)
{
  v34 = *MEMORY[0x277D85DE8];
  ashp::detail::logging::ktrace_helper::ktrace_helper(v31, 102842444);
  os_unfair_lock_assert_owner(this + 4);
  if (LOBYTE(this[114]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x168, "check_for_image_response", v2);
    _os_crash();
    __break(1u);
    goto LABEL_45;
  }

  if (this[118]._os_unfair_lock_opaque != 1)
  {
LABEL_45:
    v20 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x169, "check_for_image_response", v2);
    _os_crash();
    __break(1u);
    goto LABEL_46;
  }

  v3 = *&this[6]._os_unfair_lock_opaque;
  v32 = this;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller24check_for_image_responseEvE3__2EEvT__block_invoke;
  *&buf[24] = &__block_descriptor_tmp_46;
  *&buf[32] = &v32;
  ashp::driver::with_device_transport(v3, buf);
  if ((this[155]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[50]._os_unfair_lock_opaque, v4, v5, v6);
    CStringPtr = *&this[50]._os_unfair_lock_opaque;
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v20 = CStringPtr;
      }

      else
      {
        v20 = "???";
      }
    }

    else
    {
      v20 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "boot_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 370;
        *&buf[18] = 2082;
        *&buf[20] = "check_for_image_response";
        *&buf[28] = 2080;
        *&buf[30] = v20;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) no image response code", buf, 0x26u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_43;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_28:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) no image response code", "boot_controller.cpp", 370, "check_for_image_response", v20);
      goto LABEL_43;
    }

LABEL_46:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_28;
  }

  v7 = ashp::optional<unsigned int,void>::value(&this[154], v4, v5, v6);
  os_unfair_lock_opaque = this[154]._os_unfair_lock_opaque;
  v13 = *&this[82]._os_unfair_lock_opaque;
  if (v13)
  {
    v14 = *&this[86]._os_unfair_lock_opaque;
    v15 = 4 * v13 - 4;
    do
    {
      v16 = *v14++;
      v17 = v16 != os_unfair_lock_opaque;
      v18 = v16 == os_unfair_lock_opaque || v15 == 0;
      v15 -= 4;
    }

    while (!v18);
  }

  else
  {
    v17 = 1;
  }

  v21 = *&this[88]._os_unfair_lock_opaque;
  if (v21)
  {
    v22 = *&this[92]._os_unfair_lock_opaque;
    v23 = 4 * v21;
    while (*v22 != os_unfair_lock_opaque)
    {
      ++v22;
      v23 -= 4;
      if (!v23)
      {
        goto LABEL_21;
      }
    }

    if (!v17)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x19D, "classify_image_response_code", v11);
      _os_crash();
      __break(1u);
    }

    v24 = 2;
  }

  else
  {
LABEL_21:
    v24 = 3;
  }

  if (v17)
  {
    v26 = v24;
  }

  else
  {
    v26 = 1;
  }

  this[156]._os_unfair_lock_opaque = v26;
  v27 = ashp::optional<unsigned int,void>::value(v7, v8, v9, v10);
  v28 = *v27;
  v29 = ashp::detail::logging::get_log_level(v27);
  if (v29 >= 3)
  {
    v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      *buf = 136447234;
      *&buf[4] = "boot_controller.cpp";
      *&buf[14] = 374;
      *&buf[18] = 2082;
      *&buf[12] = 1024;
      *&buf[20] = "check_for_image_response";
      *&buf[28] = 1024;
      *&buf[30] = v26;
      *&buf[34] = 1024;
      *&buf[36] = v28;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] image response %u, code %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v29))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] image response %u, code %u", "boot_controller.cpp", 374, "check_for_image_response", v26, v28);
  }

  if (this[156]._os_unfair_lock_opaque - 1 < 2)
  {
    this[118]._os_unfair_lock_opaque = 2;
    ashp::acipc::boot_controller::release_image_transfer_resources(this);
    ashp::acipc::boot_controller::recompute_state(this);
  }

LABEL_43:
  ashp::detail::logging::ktrace_helper::~ktrace_helper(v31);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_23ECF953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller24check_for_image_responseEvE3__2EEvT__block_invoke(uint64_t result, ashp::device_transport *this, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    v5 = **(result + 32);
    if (*(v5 + 280) == 4)
    {
      result = ashp::device_transport::mem_read32(this, *(v5 + 272), *(v5 + 276), a4);
      v6 = *(v5 + 620);
      *(v5 + 616) = result;
      if ((v6 & 1) == 0)
      {
        *(v5 + 620) = 1;
      }
    }

    else
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x16E, "operator()", a5);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void ashp::acipc::boot_controller::recompute_state(os_unfair_lock_s *this)
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 4);
  os_unfair_lock_assert_owner(this + 4);
  if (LOBYTE(this[114]._os_unfair_lock_opaque) == 1)
  {
    os_unfair_lock_assert_owner(this + 4);
    if (this[118]._os_unfair_lock_opaque == 1)
    {
      os_unfair_lock_opaque_low = 4;
    }

    else
    {
      os_unfair_lock_opaque_low = 5;
    }
  }

  else
  {
    os_unfair_lock_opaque = this[118]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque)
    {
      if (os_unfair_lock_opaque == 2)
      {
        os_unfair_lock_opaque_low = 3;
      }

      else
      {
        os_unfair_lock_opaque_low = 2;
      }
    }

    else
    {
      os_unfair_lock_opaque_low = LOBYTE(this[117]._os_unfair_lock_opaque);
    }
  }

  os_unfair_lock_lock(this + 102);
  buf[8] = 0;
  if (LOBYTE(this[112]._os_unfair_lock_opaque) == 1)
  {
    v1 = *&this[110]._os_unfair_lock_opaque;
    *buf = v1;
    buf[8] = 1;
  }

  os_unfair_lock_unlock(this + 102);
  ashp::optional<unsigned long long,void>::value(buf, v5, v6, v7);
  if (v1 != os_unfair_lock_opaque_low)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[50]._os_unfair_lock_opaque, v8, v9, v10);
    CStringPtr = *&this[50]._os_unfair_lock_opaque;
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
      }

      else
      {
        v12 = "???";
      }
    }

    else
    {
      v12 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136447490;
        *&buf[4] = "boot_controller.cpp";
        v18 = 1024;
        v19 = 550;
        v20 = 2082;
        v21 = "recompute_state";
        v22 = 2080;
        v23 = v12;
        v24 = 2048;
        v25 = v1;
        v26 = 2048;
        v27 = os_unfair_lock_opaque_low;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) old state=0x%llx, new state=0x%llx", buf, 0x3Au);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) old state=0x%llx, new state=0x%llx", "boot_controller.cpp", 550, "recompute_state", v12, v1, os_unfair_lock_opaque_low);
    }

    if (os_unfair_lock_opaque_low == 1 && v1)
    {
      if (v1 == 5)
      {
        v15 = 0;
LABEL_33:
        ashp::monitor_target::update_value(this + 102, v15);
        goto LABEL_34;
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x229, "recompute_state", v14);
      _os_crash();
      __break(1u);
    }

    else
    {
      if (os_unfair_lock_opaque_low != 5 || v1 == 4)
      {
LABEL_34:
        ashp::monitor_target::update_value(this + 102, os_unfair_lock_opaque_low);
        if (LOBYTE(this[8]._os_unfair_lock_opaque) == 1)
        {
          os_unfair_lock_assert_owner(this + 4);
          if (this[118]._os_unfair_lock_opaque != 1)
          {
            ashp::reaper_target::request_reap(&this[24]);
          }
        }

        goto LABEL_37;
      }

      if (v1 == 3)
      {
        v15 = 4;
        goto LABEL_33;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x22E, "recompute_state", v14);
    _os_crash();
    __break(1u);
  }

LABEL_37:
  v16 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::boot_controller::create_state_monitor(void)::$_0::operator()<>(ashp::detail::logging *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v4 = "boot_controller.cpp";
      v5 = 1024;
      v6 = 124;
      v7 = 2082;
      v8 = "create_state_monitor";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot controller is already terminated", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot controller is already terminated", "boot_controller.cpp", 124, "create_state_monitor");
  }

  v2 = *MEMORY[0x277D85DE8];
}

const __CFString **ashp::acipc::boot_controller::find_client_register(uint64_t a1, const __CFString *a2)
{
  os_unfair_lock_assert_owner((a1 + 16));
  v7 = *(a1 + 288);
  if (v7)
  {
    v8 = *(a1 + 304);
    for (i = 24 * v7; i; i -= 24)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v4, v5, v6);
      v4 = *v8;
      if (a2 && v4)
      {
        if (CFStringCompare(a2, v4, 0) == kCFCompareEqualTo)
        {
          return v8;
        }
      }

      else if (!a2 && !v4)
      {
        return v8;
      }

      v8 += 3;
    }
  }

  return 0;
}

pthread_rwlock_t **___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller13read_registerENS_5boxed6stringEjjPvE3__2EEvT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = **v2;
  if (a2)
  {
    v5 = *(*v2[1] + 8);
    v6 = *v2[2];
    v7 = *v2[3];
    v17 = (a2 + 8);
    pthread_rwlock_rdlock((a2 + 8));
    if (*(a2 + 208) == 1)
    {
      memset(v3, 255, v7);
      return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v17);
    }

    v11 = (v6 + v7);
    if (__CFADD__(v6, v7))
    {
      v7 = -v6;
      memset(&v3[v7], 255, v11);
    }

    v12 = 0;
    if ((v6 & 1) != 0 && v7)
    {
      *v3 = (*(*a2 + 40))(a2, v5, v6);
      v12 = 1;
    }

    v13 = v7 - v12;
    if (v7 - v12 >= 2 && ((v12 + v6) & 3) != 0)
    {
      *&v3[v12] = (*(*a2 + 48))(a2, v5);
      v12 |= 2u;
      v13 = v7 - v12;
    }

    if (v13 >= 4)
    {
      v15 = v12;
      v13 = v7 - v12;
      do
      {
        *&v3[v15] = (*(*a2 + 56))(a2, v5, (v6 + v15));
        v15 += 4;
        v13 -= 4;
      }

      while (v13 > 3);
      v12 = v15;
    }

    if (v13 >= 2)
    {
      *&v3[v12] = (*(*a2 + 48))(a2, v5, v12 + v6);
      v12 += 2;
    }

    if (v7 == v12)
    {
      return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v17);
    }

    v3[v12] = (*(*a2 + 40))(a2, v5, v12 + v6);
    if (v12 + 1 == v7)
    {
      return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v17);
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_transport.cpp", 0xB6, "mem_read", v16);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v8 = *v2[3];
    v9 = **v2;

    return memset(v3, 255, v8);
  }

  return result;
}

void sub_23ECF9D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller14write_registerENS_5boxed6stringEjjPKvE3__2EEvT__block_invoke(pthread_rwlock_t **result, uint64_t a2)
{
  if (a2)
  {
    v3 = result[4];
    v4 = *v3->__sig;
    v5 = *(**v3->__opaque + 8);
    v6 = **&v3->__opaque[8];
    v7 = **&v3->__opaque[16];
    v19 = (a2 + 8);
    pthread_rwlock_rdlock((a2 + 8));
    if (*(a2 + 208))
    {
      return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v19);
    }

    v8 = 0;
    v9 = v6 + v7;
    if (!__CFADD__(v6, v7))
    {
      v9 = 0;
    }

    v10 = v7 - v9;
    if ((v6 & 1) != 0 && v10)
    {
      (*(*a2 + 72))(a2, v5, v6, *v4);
      v8 = 1;
    }

    v11 = v8 + v6;
    v12 = v10 - v8;
    if (v10 - v8 >= 2 && (v11 & 3) != 0)
    {
      v14 = *&v4[v8];
      (*(*a2 + 80))(a2, v5);
      v8 |= 2u;
      v11 = v8 + v6;
      v12 = v10 - v8;
    }

    if (v12 >= 4 && (v11 & 7) != 0)
    {
      v16 = *&v4[v8];
      (*(*a2 + 88))(a2, v5);
      v8 |= 4u;
      v12 = v10 - v8;
    }

    if (v12 >= 8)
    {
      v17 = v8;
      v12 = v10 - v8;
      do
      {
        (*(*a2 + 96))(a2, v5, (v6 + v17), *&v4[v17]);
        v17 += 8;
        v12 -= 8;
      }

      while (v12 > 7);
      v8 = v17;
    }

    if (v12 >= 4)
    {
      (*(*a2 + 88))(a2, v5, v8 + v6, *&v4[v8]);
      v8 += 4;
    }

    if (v10 - v8 >= 2)
    {
      (*(*a2 + 80))(a2, v5, v8 + v6, *&v4[v8]);
      v8 += 2;
    }

    if (v10 == v8)
    {
      return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v19);
    }

    (*(*a2 + 72))(a2, v5, v8 + v6, v4[v8]);
    if (v8 + 1 == v10)
    {
      return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v19);
    }

    else
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_transport.cpp", 0xF9, "mem_write", v18);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void sub_23ECFA034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller10send_imageEPNS_14devmem_mappingEjjE3__7EEvT__block_invoke(pthread_rwlock_t **result, ashp::device_transport *this, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!this)
  {
    return result;
  }

  v5 = result[4];
  sig = v5->__sig;
  __dmb(0xBu);
  if (*(sig + 232) != 4)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x122, "operator()", a5);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  ashp::device_transport::mem_write32(this, *(sig + 224), *(sig + 228), **v5->__opaque);
  if (*(sig + 244) != 4)
  {
LABEL_11:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x125, "operator()", v8);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  ashp::device_transport::mem_write32(this, *(sig + 236), *(sig + 240), *(*v5->__opaque + 4));
  if (*(sig + 256) != 4)
  {
LABEL_12:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x128, "operator()", v9);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  ashp::device_transport::mem_write32(this, *(sig + 248), *(sig + 252), **&v5->__opaque[8]);
  if (*(sig + 268) != 4)
  {
LABEL_13:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x12A, "operator()", v10);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v11 = *(sig + 260);
  v12 = *(sig + 264);

  return ashp::device_transport::mem_write32(this, v11, v12, 1);
}

_BYTE *ashp::deferred_action<ashp::acipc::boot_controller::send_image(ashp::devmem_mapping *,unsigned int,unsigned int)::$_5>::~deferred_action(_BYTE *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a1[8] == 1)
  {
    v5 = (*a1 + 536);
    ashp::optional<ashp::interrupt,void>::value(v5, a2, a3, a4);
    v6 = *v5;
    ashp::optional<ashp::interrupt_manager,void>::value(&(*v5)[158], v7, v8, v9);
    ashp::interrupt_manager::suspend_handler(v6 + 158, v5);
    if (a1[8] == 1)
    {
      a1[8] = 0;
    }
  }

  return a1;
}

void ashp::acipc::boot_controller::stop(uint64_t a1, int a2)
{
  LODWORD(v3) = a2;
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 456) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x1C4, "stop", v8);
    _os_crash();
    __break(1u);
    goto LABEL_33;
  }

  if (*(a1 + 464) == 1)
  {
LABEL_33:
    v3 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x1C5, "stop", v8);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 200), v5, v6, v7);
  CStringPtr = *(a1 + 200);
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v2 = CStringPtr;
    }

    else
    {
      v2 = "???";
    }
  }

  else
  {
    v2 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v20 = "boot_controller.cpp";
      v21 = 1024;
      v22 = 454;
      v23 = 2082;
      v24 = "stop";
      v25 = 2080;
      v26 = v2;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) stopping boot controller", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_13:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) stopping boot controller", "boot_controller.cpp", 454, "stop", v2);
      goto LABEL_14;
    }

LABEL_34:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_13;
  }

LABEL_14:
  if (v3 == 1 && *(a1 + 472) == 1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 200), v11, v12, v13);
    v14 = *(a1 + 200);
    if (v14)
    {
      v14 = CFStringGetCStringPtr(v14, 0x8000100u);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = "???";
      }
    }

    else
    {
      v15 = "(nil)";
    }

    v16 = ashp::detail::logging::get_log_level(v14);
    if (v16 >= 4)
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        *buf = 136446978;
        v20 = "boot_controller.cpp";
        v21 = 1024;
        v22 = 462;
        v23 = 2082;
        v24 = "stop";
        v25 = 2080;
        v26 = v15;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) checking for image response", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(v16))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) checking for image response", "boot_controller.cpp", 462, "stop", v15);
    }

    ashp::acipc::boot_controller::check_for_image_response(a1);
  }

  *(a1 + 456) = 1;
  v17 = *(a1 + 464);
  *(a1 + 460) = v3;
  if ((v17 & 1) == 0)
  {
    *(a1 + 464) = 1;
  }

  ashp::acipc::boot_controller::recompute_state(a1);
  os_unfair_lock_unlock((a1 + 16));
  v18 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::boot_controller::set_available(os_unfair_lock_s *this, char a2)
{
  os_unfair_lock_lock(this + 4);
  LOBYTE(this[117]._os_unfair_lock_opaque) = a2;
  ashp::acipc::boot_controller::recompute_state(this);

  os_unfair_lock_unlock(this + 4);
}

uint64_t ashp::acipc::direct_doorbell::schedule_update_shared(os_unfair_lock_s *this, unsigned int a2, unsigned int a3)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v6, v7, v8);
  v9 = 3758097090;
  v10 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v10 + 96));
  if (*(v10 + 208) == 1)
  {
    if (*(v10 + 209) == 1)
    {
      if (*(v10 + 204))
      {
        v9 = ashp::acipc::doorbell_participant::schedule_doorbell_update((v10 + 104), a2, a3, 0);
      }
    }

    else
    {
      v9 = 3758097101;
    }
  }

  else
  {
    v9 = 3758097112;
  }

  os_unfair_lock_unlock((v10 + 96));
  os_unfair_lock_unlock(this + 16);
  return v9;
}

void sub_23ECFA720(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 24);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_doorbell::schedule_update(os_unfair_lock_s *this, unsigned int a2, unsigned int a3, int a4)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v8, v9, v10);
  v11 = 3758097101;
  v12 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v12 + 96));
  if (*(v12 + 208) == 1)
  {
    if (*(v12 + 209) == 1)
    {
      v11 = ashp::acipc::doorbell_participant::schedule_doorbell_update((v12 + 104), a2, a3, a4);
    }
  }

  else
  {
    v11 = 3758097112;
  }

  os_unfair_lock_unlock((v12 + 96));
  os_unfair_lock_unlock(this + 16);
  return v11;
}

void sub_23ECFA7F0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 24);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_doorbell::close(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = 3758097101;
  v6 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v6 + 96));
  if (*(v6 + 208) == 1)
  {
    if (*(v6 + 209) == 1)
    {
      ashp::acipc::doorbell_participant::deregister_doorbell((v6 + 104), v7, v8, v9, v10);
      v5 = 0;
      *(v6 + 209) = 0;
    }
  }

  else
  {
    v5 = 3758097112;
  }

  os_unfair_lock_unlock((v6 + 96));
  os_unfair_lock_unlock(this + 16);
  return v5;
}

void sub_23ECFA8A4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 24);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_doorbell::open(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 96));
  if (*(v5 + 208) == 1)
  {
    v9 = *(v5 + 24);
    ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v9[1316], v6, v7, v8);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 184), v10, v11, v12);
    v14 = ashp::acipc::doorbell_participant::register_doorbell((v5 + 104), v9 + 1316, *(v5 + 184), *(v5 + 192), v13);
    if (ashp::detail::control_flow::check_err_with_debug(v14, "doorbell_controller.cpp", 0x26, "open", v15))
    {
      v14 = 0;
      *(v5 + 209) = 1;
    }
  }

  else
  {
    v14 = 3758097112;
  }

  os_unfair_lock_unlock((v5 + 96));
  os_unfair_lock_unlock(this + 16);
  return v14;
}

void sub_23ECFA994(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 24);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_doorbell::activate(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 96));
  *(v5 + 208) = 1;
  os_unfair_lock_unlock((v5 + 96));
  os_unfair_lock_unlock(this + 16);
  return 0;
}

uint64_t ashp::acipc::direct_doorbell::get_width(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *(*&this[18]._os_unfair_lock_opaque + 203);
  os_unfair_lock_unlock(this + 16);
  return v5;
}

uint64_t ashp::acipc::direct_doorbell::get_offset(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *(*&this[18]._os_unfair_lock_opaque + 196);
  os_unfair_lock_unlock(this + 16);
  return v5;
}

uint64_t ashp::acipc::direct_doorbell::get_bank(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *(*&this[18]._os_unfair_lock_opaque + 202);
  os_unfair_lock_unlock(this + 16);
  return v5;
}

void ashp::acipc::direct_doorbell::destroy(ashp::acipc::direct_doorbell *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515D680;
    ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(this + 9, a2, a3, a4);
    ashp::direct_client_object::~direct_client_object(this + 1, v6, v7, v8, v9);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

uint64_t ashp::intrusive_list_link<ashp::devmem_mapping>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void (****ashp::owning_wrapper<ashp::device_transport::memory_mapping *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::memory_mapping>>::~owning_wrapper(void (****a1)(void)))(void)
{
  v2 = *a1;
  if (v2)
  {
    (**v2)(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t ashp::optional<ashp::mock_hidable<ashp::devmem_mapping_manager>,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 40) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

_DWORD *ashp::optional<ashp::memory_descriptor,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(_DWORD *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*result)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x7D, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x7D, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::devmem_mapping,ashp::intrusive_list_link<ashp::devmem_mapping>,&ashp::devmem_mapping::_manager_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2[7] == result)
  {
    v4 = a2[5];
    v5 = a2[6];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 40;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[5] = 0;
    a2[6] = 0;
    a2[7] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::devmem_mapping::get_paddr(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = *&this[8]._os_unfair_lock_opaque;
  if (!v2)
  {
    goto LABEL_4;
  }

  v4 = (*(*v2 + 8))(v2);
  if (v4 == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xA4, "emplace", v3);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to initialize optional with sentinel value", "optional.hpp", 0xA4, "emplace", v5);
    _os_crash();
    __break(1u);
LABEL_4:
    v4 = -1;
  }

  os_unfair_lock_unlock(this + 2);
  return v4;
}

void ashp::devmem_mapping_manager::~devmem_mapping_manager(ashp::devmem_mapping_manager *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *(this + 2);
  v5 = this + 16;
  if (v6)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.cpp", 0x3F, "~devmem_mapping_manager", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::intrusive_list_link<ashp::devmem_mapping>::~intrusive_list_link(v5, a2, a3, a4);
  }
}

void ashp::centauri::ring_pool<airship_acipc_cr *>::create_handle(uint64_t *a1, uint64_t a2, uint64_t *a3, const char *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1 + 8, a2, a3, a4);
  v8 = (*(*v7 + 72))(v7, a1[8], a2);
  *a3 = v8;
  v9 = (*(*v8 + 80))(v8);
  log_level = ashp::detail::logging::get_log_level(v9);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v13 = "ring_pool.cpp";
      v14 = 1024;
      v15 = 60;
      v16 = 2082;
      v17 = "create_handle";
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating handle for completion ring with crid %u", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating handle for completion ring with crid %u", "ring_pool.cpp", 60, "create_handle", v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>::~storage(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = result;
  if (*result)
  {
    v5 = 0;
    v6 = 16;
    while (1)
    {
      v7 = v4[2];
      if (!v7)
      {
        break;
      }

      result = ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>::~intrusive_list_link(v7 + v6, a2, a3, a4);
      ++v5;
      v6 += 40;
      if (v5 >= *v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *v4 = 0;
    v8 = v4[2];
    if (v8)
    {
      free(v8);
      v4[2] = 0;
    }

    return v4;
  }

  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>::link>::insert_before(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2[4])
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = *(result + 8);
    a2[2] = *v4;
    *v4 = a2;
    a2[3] = v4;
    *(result + 8) = a2 + 2;
    a2[4] = result;
  }

  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>::link>::~intrusive_list_impl(void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>::~intrusive_list_link(a1, i, a3, a4);
}

uint64_t ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_cr *>>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::centauri::ring_pool<airship_acipc_tr *>::create_handle(uint64_t *a1, uint64_t a2, uint64_t *a3, const char *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1 + 8, a2, a3, a4);
  v8 = (*(*v7 + 80))(v7, a1[8], a2);
  *a3 = v8;
  v9 = (*(*v8 + 136))(v8);
  log_level = ashp::detail::logging::get_log_level(v9);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v13 = "ring_pool.cpp";
      v14 = 1024;
      v15 = 52;
      v16 = 2082;
      v17 = "create_handle";
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating handle for transfer ring with trid %u", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating handle for transfer ring with trid %u", "ring_pool.cpp", 52, "create_handle", v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>::~storage(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = result;
  if (*result)
  {
    v5 = 0;
    v6 = 16;
    while (1)
    {
      v7 = v4[2];
      if (!v7)
      {
        break;
      }

      result = ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>::~intrusive_list_link(v7 + v6, a2, a3, a4);
      ++v5;
      v6 += 40;
      if (v5 >= *v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *v4 = 0;
    v8 = v4[2];
    if (v8)
    {
      free(v8);
      v4[2] = 0;
    }

    return v4;
  }

  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>,ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>,&ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>::link>::~intrusive_list_impl(void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>::~intrusive_list_link(a1, i, a3, a4);
}

uint64_t ashp::intrusive_list_link<ashp::centauri::detail::ring_pool::ring_instance<airship_acipc_tr *>>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

const char *airship_acipc_get_ipc_error_description(int a1)
{
  if (!a1)
  {
    return "no-error";
  }

  if ((a1 & (a1 - 1)) != 0)
  {
    return "multiple-errors";
  }

  if (a1 > 31)
  {
    if (a1 <= 127)
    {
      if (a1 == 32)
      {
        return "ipc-running-timeout";
      }

      if (a1 == 64)
      {
        return "bad-tr-ti-update";
      }
    }

    else
    {
      switch(a1)
      {
        case 128:
          return "bad-inplace-completion";
        case 256:
          return "bad-cr-hi-update";
        case 512:
          return "bad-cd";
      }
    }
  }

  else if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return "device-signalled error";
    }

    if (a1 == 2)
    {
      return "unexpected-transport-revocation";
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return "system-error";
      case 8:
        return "unexpected-ipc-status";
      case 16:
        return "unexpected-sleep-status";
    }
  }

  return "unknown-error";
}

void airship_acipc_tr_disconnect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::base::log_pre_crash_message("BUG in Airship: airship_acipc_tr_disconnect: not implemented", "acipc.cpp", 0x145, "airship_acipc_tr_disconnect", a5);
  _os_crash();
  __break(1u);
}

uint64_t ashp::acipc::doorbell_participant::register_doorbell(void *a1, os_unfair_lock_t lock, uint64_t a3, const char *a4, const char *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1[1])
  {
    LODWORD(v6) = a4;
    v7 = a3;
    *a1 = lock;
    if (lock)
    {
      os_unfair_lock_lock(lock);
    }

    if (LOBYTE(lock[62]._os_unfair_lock_opaque))
    {
      if (v7 && !a1[1])
      {
        v5 = 3758097090;
        v10 = *&lock[38]._os_unfair_lock_opaque;
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = *&lock[42]._os_unfair_lock_opaque;
        v12 = 144 * v10;
        while (1)
        {
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v11, lock, a3, a4);
          if (*v11)
          {
            if (CFStringCompare(*v11, v7, 0) == kCFCompareEqualTo && *(v11 + 56) == v6)
            {
              break;
            }
          }

          v11 += 144;
          v12 -= 144;
          if (!v12)
          {
            goto LABEL_14;
          }
        }

        if (!*(v11 + 44))
        {
          os_unfair_lock_assert_owner(lock);
          v5 = 3758097093;
          if (*(v11 + 96) || *(v11 + 120))
          {
LABEL_14:
            if (!lock)
            {
              goto LABEL_16;
            }

LABEL_15:
            os_unfair_lock_unlock(lock);
            goto LABEL_16;
          }
        }

        os_unfair_lock_assert_owner(lock);
        if (!*(v11 + 96) && !*(v11 + 120) && ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage(lock, v11))
        {
          ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::ensure_free_space(&lock[44]._os_unfair_lock_opaque, v17, v15, v16, v18);
          ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::emplace_back<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>(&lock[44], v11, v19, v20, v21);
        }

        ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::insert_before(v11 + 96, a1, v15, v16);
        a1[1] = v11;
        CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
        if (CStringPtr)
        {
          v7 = CStringPtr;
        }

        else
        {
          v7 = "???";
        }

        log_level = ashp::detail::logging::get_log_level(CStringPtr);
        if (log_level >= 4)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            *buf = 136447490;
            v25 = "doorbell_coordinator.cpp";
            v26 = 1024;
            v27 = 369;
            v28 = 2082;
            v29 = "add_participant";
            v30 = 2048;
            v31 = a1;
            v32 = 2080;
            v33 = v7;
            v34 = 1024;
            v35 = v6;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] participant 0x%llx added to doorbell %s[%u]", buf, 0x36u);
          }
        }

        if (!ashp::detail::logging::get_log_level(log_level))
        {
LABEL_31:
          v5 = 0;
          goto LABEL_14;
        }

        if (airship_platform_get_global_logger::once == -1)
        {
LABEL_30:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] participant 0x%llx added to doorbell %s[%u]", "doorbell_coordinator.cpp", 369, "add_participant", a1, v7, v6);
          goto LABEL_31;
        }

LABEL_37:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        goto LABEL_30;
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x15E, "add_participant", a5);
      _os_crash();
      __break(1u);
    }

    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x15D, "add_participant", a5);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  v5 = 0;
LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23ECFC8C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(a1);
  if (!a2)
  {
    return 0;
  }

  v8 = *(a1 + 240);
  v7 = (a1 + 240);
  if (!v8 || !*(a2 + 8))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a2 + 24);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v7, v4, v5, v6);
    v12 = *v7;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + v9), v13, v14, v15);
    v4 = *(v11 + 8 * v10);
    if (v12 && v4 != 0)
    {
      break;
    }

    if (!(v12 | v4))
    {
      return 1;
    }

LABEL_13:
    ++v10;
    v9 += 8;
    if (v10 >= *(a2 + 8))
    {
      return 0;
    }
  }

  if (CFStringCompare(v12, v4, 0))
  {
    goto LABEL_13;
  }

  return 1;
}

void ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::ensure_free_space(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *a1 + 1;
  if (*a1 == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = a1[1];
    if (v6 > v7)
    {
      if (v7 <= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = a1[1];
      }

      v9 = (*a1 - 8) < 0;
      if (v6 >= 9)
      {
        do
        {
          if (is_mul_ok(v8, 3uLL))
          {
            v8 = (3 * v8) >> 1;
          }

          else
          {
            v8 = *a1 + 1;
          }
        }

        while (v8 < v6);
      }

      if (v7 < v8)
      {

        ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::set_capacity(a1, v8, a3, a4, a5);
      }
    }
  }
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::emplace_back<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *result;
  if (*result >= result[1])
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", a5);
    result = _os_crash();
  }

  else
  {
    v6 = result[2];
    if (v6)
    {
      *(v6 + 8 * v5) = a2;
      *result = v5 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::insert_before(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2[8])
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = *(result + 8);
    a2[6] = *v4;
    *v4 = a2;
    a2[7] = v4;
    *(result + 8) = a2 + 6;
    a2[8] = result;
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (a2 >> 61)
  {
LABEL_13:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v12);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v7 = malloc_type_aligned_alloc(8uLL, 8 * a2, 0x2004093837F09uLL);
  if (!v7)
  {
LABEL_14:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v8);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v13);
    _os_crash();
    __break(1u);
    return;
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = 0;
    do
    {
      v7[v10] = *(a1[2] + 8 * v10);
      ++v10;
    }

    while (v9 != v10);
  }

  v11 = a1[2];
  a1[1] = a2;
  a1[2] = v7;
  if (v11)
  {

    free(v11);
  }
}

void ashp::acipc::doorbell_participant::deregister_doorbell(ashp::acipc::doorbell_participant *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!*(this + 1))
  {
    goto LABEL_42;
  }

  v6 = this;
  v7 = *this;
  if (*this)
  {
    os_unfair_lock_lock(*this);
  }

  if (*(v7 + 248))
  {
    v8 = *(v6 + 1);
    if (v8)
    {
      v5 = (v8 + 120);
      if (*(v6 + 8) == v8 + 120)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x17D, "remove_participant", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x17E, "remove_participant", a5);
  _os_crash();
  __break(1u);
LABEL_65:
  v8 = "BUG in Airship: ";
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x291, "cancel_participant", v22);
  _os_crash();
  __break(1u);
LABEL_66:
  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_20:
  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] removing participant 0x%llx from pending queue", "doorbell_coordinator.cpp", 387, "remove_participant", v6);
  while (1)
  {
    if (*(v7 + 248) == 3 || !ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage(v7, v8))
    {
      os_unfair_lock_assert_owner(v7);
      v23 = *(v6 + 1);
      if (*(v6 + 8) != v23 + 15)
      {
        goto LABEL_65;
      }

      v24 = *(v6 + 2);
      v25 = *(v6 + 3);
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove((v23 + 15), v6, v20, v21);
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::insert_before((v23 + 12), v6, v26, v27);
      *(v6 + 2) = -1;
      *(v6 + 3) = -1;
      is_valid_for_ipc_stage = ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage(v7, v23);
      if (is_valid_for_ipc_stage)
      {
        v30 = (*(v7 + 232))-- - 1;
        if (v30 >= 0x10000)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x29E, "cancel_participant", v29);
          _os_crash();
          __break(1u);
LABEL_68:
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22B, "erase", v33);
          ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22B, "erase", v51);
          _os_crash();
          __break(1u);
          goto LABEL_69;
        }
      }

      if (v24 != -1 && v25 != -1 && (v24 == v23[10] || v25 == v23[11]))
      {
        if (is_valid_for_ipc_stage)
        {
          v31 = v24 == *(v7 + 208) || v25 == *(v7 + 216);
        }

        else
        {
          v31 = 0;
        }

        v39 = -1;
        v23[10] = -1;
        v23[11] = -1;
        v40 = v23[15];
        if (v40)
        {
          v41 = -1;
          do
          {
            if (v40[2] < v41)
            {
              v41 = v40[2];
            }

            v23[10] = v41;
            if (v40[3] < v39)
            {
              v39 = v40[3];
            }

            v23[11] = v39;
            v40 = v40[6];
          }

          while (v40);
        }

        if (v31)
        {
          *(v7 + 208) = -1;
          *(v7 + 216) = -1;
          v42 = *(v7 + 176);
          if (v42)
          {
            v43 = *(v7 + 192);
            v44 = 8 * v42;
            v45 = -1;
            v46 = -1;
            do
            {
              v48 = *v43++;
              v47 = v48;
              v49 = *(v48 + 80);
              if (v49 < v46)
              {
                v46 = v49;
              }

              *(v7 + 208) = v46;
              v50 = *(v47 + 88);
              if (v50 < v45)
              {
                v45 = v50;
              }

              *(v7 + 216) = v45;
              v44 -= 8;
            }

            while (v44);
          }
        }
      }
    }

    else
    {
      if (*(v7 + 248) == 2)
      {
        ashp::timer::stop((v7 + 16), v16, v17, v18);
      }

      else if (*(v6 + 2) != -1)
      {
        goto LABEL_70;
      }

      ashp::acipc::doorbell_coordinator::process_pending(v7, 1, 1);
    }

LABEL_7:
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove((v8 + 96), v6, a3, a4);
    *(v6 + 1) = 0;
    os_unfair_lock_assert_owner(v7);
    if (*(v8 + 12) || *v5 || !ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage(v7, v8))
    {
      goto LABEL_41;
    }

    v6 = (v7 + 176);
    v13 = *(v7 + 176);
    if (v13)
    {
      break;
    }

LABEL_14:
    buf[8] = 0;
    v8 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x19B, "remove_participant", v12);
    this = _os_crash();
    __break(1u);
LABEL_15:
    log_level = ashp::detail::logging::get_log_level(this);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "doorbell_coordinator.cpp";
        v54 = 1024;
        v55 = 387;
        v56 = 2082;
        v57 = "remove_participant";
        v58 = 2048;
        v59 = v6;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] removing participant 0x%llx from pending queue", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        goto LABEL_66;
      }

      goto LABEL_20;
    }
  }

  v5 = 0;
  v14 = 0;
  while (*(*(v7 + 192) + 8 * v14) != v8)
  {
    ++v14;
    v5 -= 8;
    if (v13 == v14)
    {
      goto LABEL_14;
    }
  }

  *buf = v14;
  buf[8] = 1;
  ashp::optional<unsigned long long,void>::value(buf, v9, v10, v11);
  v35 = v14 + 1;
  if (v14 == -1)
  {
    goto LABEL_68;
  }

  v36 = -v5;
  if (*v6 < v35)
  {
LABEL_69:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22C, "erase", v33);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22C, "erase", v52);
    _os_crash();
    __break(1u);
LABEL_70:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x186, "remove_participant", v19);
    _os_crash();
    __break(1u);
  }

  if (*v6 > v35)
  {
    v37 = *v6 - 1;
    do
    {
      ++v14;
      *(*(v7 + 192) + v36) = vextq_s8(*(*(v7 + 192) + v36), *(*(v7 + 192) + v36), 8uLL);
      v36 += 8;
    }

    while (v37 != v14);
  }

  ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate((v7 + 176), v14, v32, v33, v34);
LABEL_41:
  os_unfair_lock_unlock(v7);
LABEL_42:
  v38 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::doorbell_coordinator::process_pending(uint64_t a1, uint64_t a2, int a3)
{
  ashp::detail::logging::ktrace_helper::ktrace_helper(v60, 102842692);
  os_unfair_lock_assert_owner(a1);
  v55 = a3;
  if (a3 == 2)
  {
    goto LABEL_81;
  }

  if (!*(a1 + 232))
  {
    ashp::acipc::doorbell_coordinator::change_state(a1, a3, 0);
    goto LABEL_78;
  }

  ashp::acipc::doorbell_coordinator::change_state(a1, 5, 0);
  v7 = mach_continuous_time();
  if (*(a1 + 248) != 5)
  {
LABEL_78:
    ashp::detail::logging::ktrace_helper::~ktrace_helper(v60);
    return;
  }

  v11 = v7;
  lock = a1;
  while (1)
  {
    if (!a2)
    {
      v12 = *(a1 + 208);
      if (v12 != -1)
      {
        v13 = *(a1 + 256);
        v14 = __CFADD__(v11, v13);
        v15 = v11 + v13;
        if (v14)
        {
          v15 = -1;
        }

        if (v12 > v15)
        {
          v16 = *(a1 + 216);
          v17 = v16 - v12;
          if (v16 < v12)
          {
            goto LABEL_80;
          }

          if (v17 != -1 && (mach_timebase_info(&info), is_mul_ok(v17, info.numer)))
          {
            v18 = v17 * info.numer / HIDWORD(*&info);
          }

          else
          {
            v18 = -1;
          }

          ashp::timer::start((a1 + 16), *(a1 + 208), v18, v9);
          ashp::acipc::doorbell_coordinator::change_state(a1, 2, 0);
          goto LABEL_75;
        }
      }
    }

    *(a1 + 208) = -1;
    *(a1 + 216) = -1;
    v19 = *(a1 + 176);
    if (v19)
    {
      v59 = 0;
      v20 = *(a1 + 192);
      v58 = &v20[v19];
      while (1)
      {
        v21 = *v20;
        v22 = (*v20 + 120);
        v23 = *v22;
        if (*v22)
        {
          if (a2)
          {
            goto LABEL_31;
          }

          v24 = *(v21 + 72);
          v25 = *(v21 + 48);
          v14 = __CFADD__(v24, v25);
          v26 = v24 + v25;
          if (v14)
          {
            v26 = -1;
          }

          v27 = *(a1 + 256);
          v14 = __CFADD__(v11, v27);
          v28 = v11 + v27;
          if (v14)
          {
            v28 = -1;
          }

          if (v26 <= v28)
          {
LABEL_31:
            v32 = *(v21 + 44);
            if (v32 > 1)
            {
              v33 = v11;
              if (v32 != 2)
              {
                v33 = 0;
                if (v32 == 3)
                {
                  v33 = *(v21 + 64);
                }
              }
            }

            else if (v32)
            {
              v33 = 0;
              if (v32 == 1)
              {
                v33 = *(v21 + 64) + 1;
              }
            }

            else
            {
              v33 = *(**(*(v21 + 128) + 8) + 40);
            }

            v57 = v33;
            v34 = 0;
            *(v21 + 80) = -1;
            *(v21 + 88) = -1;
            v35 = 1;
            do
            {
              ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove(v22, v23, v8, v9);
              ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::insert_before(v21 + 96, v23, v36, v37);
              v23[2] = -1;
              v23[3] = -1;
              v38 = v23[9];
              if (v38)
              {
                v35 &= (*(v38 + 16))(v38, a2);
              }

              if (a2 <= 1)
              {
                v23[4] = v11;
              }

              ++v34;
              v23 = *v22;
            }

            while (*v22);
            if (((a2 < 2) & v35) == 1)
            {
              *(v21 + 72) = v11;
              if (*(v21 + 40) == 2)
              {
                v39 = v57;
              }

              else
              {
                v39 = v57;
              }

              *(v21 + 64) = v39;
              *(v21 + 80) = -1;
              *(v21 + 88) = -1;
              v59 += v34;
              a1 = lock;
LABEL_51:
              v40 = *(v21 + 36);
              v41 = *(*v20 + 64);
              os_unfair_lock_assert_owner(a1);
              v42 = mach_continuous_time();
              os_unfair_lock_lock((a1 + 264));
              if (*(a1 + 268))
              {
                v45 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[]((a1 + 288), *(a1 + 272), v43, v44);
                *v45 = v42;
                *(v45 + 8) = v40;
                *(v45 + 12) = v41;
                v46 = *(a1 + 272);
                v14 = __CFADD__(v46, 1);
                v47 = v46 + 1;
                if (v14)
                {
                  v48 = *(a1 + 268);
                }

                else
                {
                  v48 = 0;
                }

                *(a1 + 272) = (v47 - v48) % *(a1 + 268);
              }

              os_unfair_lock_unlock((a1 + 264));
              v49 = *(a1 + 200);
              v66[0] = v21;
              v66[1] = v20;
              info = MEMORY[0x277D85DD0];
              v62 = 0x40000000;
              v63 = ___ZNK4ashp6driver21with_device_transportIZNS_5acipc20doorbell_coordinator15process_pendingENS2_6detail20doorbell_coordinator10flush_typeENS3_5stateEE3__0EEvT__block_invoke;
              v64 = &__block_descriptor_tmp_35;
              v65 = v66;
              ashp::driver::with_device_transport(v49, &info);
              goto LABEL_57;
            }

            v59 += v34;
            a1 = lock;
            if (a2 <= 1)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v29 = *(v21 + 80);
            v30 = *(a1 + 216);
            if (v29 >= *(a1 + 208))
            {
              v29 = *(a1 + 208);
            }

            *(a1 + 208) = v29;
            v31 = *(v21 + 88);
            if (v31 >= v30)
            {
              v31 = v30;
            }

            *(a1 + 216) = v31;
          }
        }

LABEL_57:
        if (++v20 == v58)
        {
          goto LABEL_60;
        }
      }
    }

    v59 = 0;
LABEL_60:
    v50 = *(a1 + 232);
    v14 = v50 >= v59;
    v51 = v50 - v59;
    *(a1 + 232) = v51;
    if (!v14 || HIWORD(v51))
    {
      break;
    }

    v53 = a2 != 2 && v59 != 0;
    if (v51)
    {
      v54 = 5;
    }

    else
    {
      v54 = v55;
    }

    ashp::acipc::doorbell_coordinator::change_state(a1, v54, v53);
LABEL_75:
    if (*(a1 + 248) != 5)
    {
      goto LABEL_78;
    }
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x277, "process_pending", v10);
  _os_crash();
  __break(1u);
LABEL_80:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x251, "process_pending", v10);
  _os_crash();
  __break(1u);
LABEL_81:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x244, "process_pending", v6);
  _os_crash();
  __break(1u);
}

void sub_23ECFD788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  _Unwind_Resume(a1);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2[8] == result)
  {
    v4 = a2[6];
    v5 = a2[7];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 48;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[6] = 0;
    a2[7] = 0;
    a2[8] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::doorbell_coordinator::change_state(uint64_t a1, int a2, int a3)
{
  os_unfair_lock_assert_owner(a1);
  if (*(a1 + 248) != a2 || a3 != 0)
  {
    v7 = mach_continuous_time();
    v8 = *(a1 + 208);
    v9 = *(a1 + 248);
    os_unfair_lock_lock((a1 + 312));
    if (*(a1 + 316))
    {
      v12 = ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::state_change_record>::operator[]((a1 + 336), *(a1 + 320), v10, v11);
      *v12 = v7;
      *(v12 + 8) = v8;
      *(v12 + 16) = a2;
      *(v12 + 17) = v9;
      *(v12 + 18) = a3;
      v13 = *(a1 + 320);
      v14 = __CFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        v16 = *(a1 + 316);
      }

      else
      {
        v16 = 0;
      }

      *(a1 + 320) = (v15 - v16) % *(a1 + 316);
    }

    os_unfair_lock_unlock((a1 + 312));
    *(a1 + 248) = a2;
  }
}

pthread_rwlock_t **___ZNK4ashp6driver21with_device_transportIZNS_5acipc20doorbell_coordinator15process_pendingENS2_6detail20doorbell_coordinator10flush_typeENS3_5stateEE3__0EEvT__block_invoke(pthread_rwlock_t **result, ashp::device_transport *a2)
{
  if (a2)
  {
    v3 = result[4];
    if (kdebug_is_enabled())
    {
      v4 = *(v3->__sig + 32);
      v5 = *(v3->__sig + 36);
      v6 = *(**v3->__opaque + 64);
      kdebug_trace();
    }

    v7 = *(v3->__sig + 32);
    v8 = *(v3->__sig + 36);
    v9 = *(**v3->__opaque + 64);
    if (*(v3->__sig + 40) == 2)
    {
      v10 = *(**v3->__opaque + 64);

      return ashp::device_transport::mem_write16(a2, v7, v8, v10);
    }

    else
    {

      return ashp::device_transport::mem_write32(a2, v7, v8, v9);
    }
  }

  return result;
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::state_change_record>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 19 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::doorbell_participant::schedule_doorbell_update(ashp::acipc::doorbell_participant *this, unsigned int a2, unsigned int a3, int a4)
{
  v46 = *MEMORY[0x277D85DE8];
  is_valid_for_ipc_stage = 3758097112;
  if (*(this + 1))
  {
    v9 = *this;
    ashp::detail::logging::ktrace_helper::ktrace_helper(v40, 102842688);
    if (v9)
    {
      os_unfair_lock_lock(v9);
    }

    if (*(v9 + 248) == 4)
    {
      goto LABEL_59;
    }

    if (!*(v9 + 248))
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x1A7, "schedule_update", v12);
      _os_crash();
      __break(1u);
      goto LABEL_62;
    }

    v13 = *(this + 1);
    *(this + 10) = a4;
    is_valid_for_ipc_stage = ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage(v9, v13);
    if (*(this + 8) != *(this + 1) + 120)
    {
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove((v13 + 12), this, v15, v16);
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::insert_before((v13 + 15), this, v17, v18);
      if (is_valid_for_ipc_stage)
      {
        ++*(v9 + 232);
      }
    }

    if (a2 == -1)
    {
      v26 = 0;
      *(this + 2) = -1;
      *(this + 3) = -1;
    }

    else
    {
      v19 = v13[6];
      v20 = v13[9];
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        v23 = -1;
      }

      else
      {
        v23 = v22;
      }

      mach_timebase_info(info);
      v24 = 1000 * a2;
      if (is_mul_ok(v24, *&info[4]))
      {
        v25 = v24 * *&info[4] / *info;
      }

      else
      {
        v25 = -1;
      }

      v27 = *(this + 4);
      mach_timebase_info(info);
      v28 = 1000 * a3;
      if (is_mul_ok(v28, *&info[4]))
      {
        v29 = v28 * *&info[4] / *info;
      }

      else
      {
        v29 = -1;
      }

      v30 = v25 + v27;
      if (__CFADD__(v25, v27))
      {
        v30 = -1;
      }

      v21 = __CFADD__(v30, v29);
      v31 = v30 + v29;
      if (v21)
      {
        v31 = -1;
      }

      if (v23 > v30)
      {
        v30 = v23;
      }

      if (v23 > v31)
      {
        v31 = v23;
      }

      *(this + 2) = v30;
      *(this + 3) = v31;
      if (v30 >= v13[10])
      {
        goto LABEL_34;
      }

      v13[10] = v30;
      if (!is_valid_for_ipc_stage)
      {
        if (v31 >= v13[11])
        {
          goto LABEL_58;
        }

        is_valid_for_ipc_stage = 0;
        v13[11] = v31;
        goto LABEL_59;
      }

      if (v30 >= *(v9 + 208))
      {
LABEL_34:
        v26 = 0;
      }

      else
      {
        *(v9 + 208) = v30;
        v26 = 1;
      }

      if (v31 < v13[11])
      {
        v13[11] = v31;
        if (is_valid_for_ipc_stage)
        {
          if (v31 < *(v9 + 216))
          {
            *(v9 + 216) = v31;
            v32 = *(v9 + 248);
            if (v32 != 3)
            {
              goto LABEL_51;
            }

LABEL_42:
            is_valid_for_ipc_stage = *(v9 + 200);
            v4 = 5768;
            os_unfair_lock_lock((is_valid_for_ipc_stage + 5768));
            if (*(is_valid_for_ipc_stage + 5772) == 1 && *(is_valid_for_ipc_stage + 5773) != 1)
            {
              *(is_valid_for_ipc_stage + 5773) = 1;
              ashp::async_notifier::trigger((*(is_valid_for_ipc_stage + 5776) + 16), v34, v35, v36);
              goto LABEL_57;
            }

            log_level = ashp::detail::logging::get_log_level(v33);
            if (log_level >= 2)
            {
              log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (log_level)
              {
                *info = 136446722;
                *&info[4] = "acipc_driver.cpp";
                v42 = 1024;
                v43 = 969;
                v44 = 2082;
                v45 = "traffic_wake";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cannot wake", info, 0x1Cu);
              }
            }

            if (!ashp::detail::logging::get_log_level(log_level))
            {
              goto LABEL_57;
            }

            if (airship_platform_get_global_logger::once == -1)
            {
LABEL_49:
              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] cannot wake", "acipc_driver.cpp", 969, "traffic_wake");
LABEL_57:
              os_unfair_lock_unlock((is_valid_for_ipc_stage + v4));
              goto LABEL_58;
            }

LABEL_62:
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            goto LABEL_49;
          }

          goto LABEL_41;
        }

        goto LABEL_59;
      }
    }

    if (is_valid_for_ipc_stage)
    {
LABEL_41:
      v32 = *(v9 + 248);
      if (v32 == 3)
      {
        goto LABEL_42;
      }

      if (v26)
      {
LABEL_51:
        if (v32 == 2)
        {
          ashp::timer::stop((v9 + 16), v14, v15, v16);
        }

        ashp::acipc::doorbell_coordinator::process_pending(v9, 0, 1);
      }

LABEL_58:
      is_valid_for_ipc_stage = 0;
    }

LABEL_59:
    os_unfair_lock_unlock(v9);
    ashp::detail::logging::ktrace_helper::~ktrace_helper(v40);
  }

  v38 = *MEMORY[0x277D85DE8];
  return is_valid_for_ipc_stage;
}

void sub_23ECFDE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  os_unfair_lock_unlock((v5 + v6));
  os_unfair_lock_unlock(v4);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  _Unwind_Resume(a1);
}

void ___ZN4ashp5acipc20doorbell_coordinatorC2EPNS0_12acipc_driverEP16dispatch_queue_s_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    os_unfair_lock_lock(*(v3 + 8));
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 248) == 2)
    {
      ashp::acipc::doorbell_coordinator::process_pending(v5, 0, 1);
    }

    os_unfair_lock_unlock(v4);
  }

  os_unfair_lock_unlock(v2);
}

void sub_23ECFDF28(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

void ___ZN4ashp5acipc20doorbell_coordinatorC2EPNS0_12acipc_driverEP16dispatch_queue_s_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 32))
  {
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = a1[2];
      if (!v7)
      {
        break;
      }

      v8 = v7 + v5;
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::~intrusive_list_impl((v7 + v5 + 120), a2, a3, a4);
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::~intrusive_list_impl((v8 + 96), v9, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v8 + 8), v12, v13, v14, v15);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v8, v16, v17, v18);
      ++v6;
      v5 += 144;
      if (v6 >= *a1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *a1 = 0;
    v19 = a1[2];
    if (v19)
    {
      free(v19);
      a1[2] = 0;
    }
  }
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::~intrusive_list_impl(void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::acipc::doorbell_participant>::~intrusive_list_link(a1, i, a3, a4);
}

void ashp::acipc::doorbell_coordinator::~doorbell_coordinator(ashp::acipc::doorbell_coordinator *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(this + 248) == 2)
  {
    ashp::timer::stop(this + 4, a2, a3, a4);
  }

  os_unfair_lock_lock(*(this + 1));
  v5 = *(this + 1);
  *(v5 + 8) = 0;
  os_unfair_lock_unlock(v5);
  *(this + 1) = 0;
  ashp::timer::cancel(this + 4, v6, v7, v8);
  v11 = *(this + 19);
  if (v11)
  {
    v12 = *(this + 21);
    v13 = v12 + 144 * v11;
    do
    {
      v15 = (v12 + 96);
      v14 = *(v12 + 96);
      if (v14)
      {
        do
        {
          ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove(v12 + 96, v14, v9, v10);
          v14 = *v15;
        }

        while (*v15);
      }

      v17 = (v12 + 120);
      v16 = *(v12 + 120);
      if (v16)
      {
        do
        {
          ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove(v12 + 120, v16, v9, v10);
          v16 = *v17;
        }

        while (*v17);
      }

      v12 += 144;
    }

    while (v12 != v13);
  }

  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 42);
  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 36);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 30, v18, v19, v20);
  ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::~storage(this + 22, v21, v22, v23, v24);
  ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context>::~storage(this + 19, v25, v26, v27);
  ashp::timer::~timer((this + 16), v28, v29, v30);
}

void ashp::acipc::doorbell_coordinator::suspend(os_unfair_lock_t lock, BOOL a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((LOBYTE(lock[62]._os_unfair_lock_opaque) | 4) == 4)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x11C, "suspend", a5);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  *info = 0;
  v6 = os_parse_boot_arg_int();
  if (LOBYTE(lock[62]._os_unfair_lock_opaque) == 3)
  {
LABEL_17:
    ashp::detail::control_flow::log_guard_else_failure("doorbell_coordinator.cpp", 0x129, "suspend", v7);
    goto LABEL_15;
  }

  log_level = ashp::detail::logging::get_log_level(v6);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *info = 136446722;
      *&info[4] = "doorbell_coordinator.cpp";
      v14 = 1024;
      v15 = 298;
      v16 = 2082;
      v17 = "suspend";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] suspending doorbell coordinator", info, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] suspending doorbell coordinator", "doorbell_coordinator.cpp", 298, "suspend");
  }

  if (LOBYTE(lock[62]._os_unfair_lock_opaque) == 2)
  {
    ashp::timer::stop(lock + 4, v9, v10, v11);
  }

  ashp::acipc::doorbell_coordinator::process_pending(lock, 1, 3);
LABEL_15:
  os_unfair_lock_unlock(lock);
  v12 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::doorbell_coordinator::resume(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[62]._os_unfair_lock_opaque) != 3)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x13E, "resume", a5);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v9 = "doorbell_coordinator.cpp";
      v10 = 1024;
      v11 = 320;
      v12 = 2082;
      v13 = "resume";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] resuming doorbell coordinator", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_9:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] resuming doorbell coordinator", "doorbell_coordinator.cpp", 320, "resume");
      goto LABEL_10;
    }

LABEL_12:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_9;
  }

LABEL_10:
  ashp::acipc::doorbell_coordinator::process_pending(lock, 0, 1);
  os_unfair_lock_unlock(lock);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::driver_debug_object<ashp::acipc::detail::doorbell_coordinator::state_change_record>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0x13uLL) || (result = 19 * v4, (19 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

BOOL ashp::detail::control_flow::check_err_with_debug(ashp::detail::control_flow *this, uint64_t a2, const char *a3, uint64_t a4, const char *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v9 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446978;
      v12 = a2;
      v13 = 1024;
      v14 = v9;
      v15 = 2082;
      v16 = a4;
      v17 = 2048;
      v18 = this;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%u:%{public}s] unexpected nonzero error code 0x%llx", &v11, 0x26u);
    }
  }

  result = this == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void ashp::detail::control_flow::log_guard_else_failure(ashp::detail::control_flow *this, const char *a2, uint64_t a3, const char *a4)
{
  v5 = a2;
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = this;
    v10 = 1024;
    v11 = v5;
    v12 = 2082;
    v13 = a3;
    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] unexpected GUARD_ELSE failure", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23ECFEE74(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 2);
  ashp::direct_client_object_manager::~direct_client_object_manager(v2, v6, v7, v8, v9);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v1 + 16), v10, v11, v12);
  MEMORY[0x23EF204E0](v1, v4);
  _Unwind_Resume(a1);
}

void ashp::driver::destroy(ashp::driver *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    ashp::driver::~driver(this, a2, a3, a4, a5);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::driver::~driver(ashp::driver *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  *this = &unk_28515D738;
  if ((*(this + 14) & 1) == 0)
  {
LABEL_29:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver.cpp", 0x2E, "~driver", a5);
    _os_crash();
    __break(1u);
    goto LABEL_30;
  }

  if (*(this + 536) == 1)
  {
    ashp::optional<ashp::mock_hidable<ashp::reaper>,void>::value(this + 424, a2, a3, a4);
    ashp::reaper::run(this + 106);
  }

  if (*(this + 384) == 1)
  {
    ashp::optional<ashp::acipc::tr_ring,void>::value(this + 352, a2, a3, a4);
    os_unfair_lock_lock(this + 88);
    v6 = *(this + 45);
    os_unfair_lock_unlock(this + 88);
    if (v6)
    {
      goto LABEL_31;
    }
  }

  if (*(this + 466))
  {
LABEL_30:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver.cpp", 0x37, "~driver", a5);
    _os_crash();
    __break(1u);
LABEL_31:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver.cpp", 0x35, "~driver", a5);
    _os_crash();
    __break(1u);
    return;
  }

  if (*(this + 3816) == 1)
  {
    *(this + 3816) = 0;
    ashp::state_dump_manager::~state_dump_manager((this + 3784), a2, a3, a4, a5);
  }

  if (*(this + 470))
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(this + 472);
      if (!v9)
      {
        break;
      }

      v10 = (v9 + v7);
      ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((v9 + v7 + 8), a2, a3, a4);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v11, v12, v13);
      ++v8;
      v7 += 16;
      if (v8 >= *(this + 470))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_13:
  *(this + 470) = 0;
  v14 = *(this + 472);
  if (v14)
  {
    free(v14);
    *(this + 472) = 0;
  }

  ashp::detail::dynamic_array::storage<ashp::owned_ptr<ashp::driver_client,ashp::polymorphic_deleter<ashp::driver_client>>>::reduce_size(this + 466, 0, a3, a4, a5);
  v19 = *(this + 468);
  if (v19)
  {
    free(v19);
    *(this + 468) = 0;
  }

  if (*(this + 3720) == 1)
  {
    *(this + 3720) = 0;
    ashp::interrupt_manager::~interrupt_manager((this + 632), v15, v16, v17, v18);
  }

  if (*(this + 624) == 1)
  {
    *(this + 624) = 0;
    ashp::devmem_mapping_manager::~devmem_mapping_manager((this + 584), v15, v16, v17, v18);
  }

  if (*(this + 576) == 1)
  {
    *(this + 576) = 0;
    ashp::detail::dynamic_array::storage<ashp::owned_ptr<ashp::driver_resource,ashp::typed_deleter<ashp::driver_resource>>>::~storage(this + 69, v15, v16, v17, v18);
  }

  if (*(this + 536) == 1)
  {
    *(this + 536) = 0;
    ashp::reaper::~reaper((this + 424));
  }

  ashp::driver_object_termination_list::~driver_object_termination_list((this + 392), v15, v16, v17, v18);
  if (*(this + 384) == 1)
  {
    *(this + 384) = 0;
    ashp::driver_object_manager::~driver_object_manager((this + 352), v20, v21, v22, v23);
  }

  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(this + 43, v20, v21, v22);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(this + 41, v24, v25, v26);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(this + 39, v27, v28, v29);
  ashp::monitor_target::~monitor_target((this + 264), v30, v31, v32, v33);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 2, v34, v35, v36);
}