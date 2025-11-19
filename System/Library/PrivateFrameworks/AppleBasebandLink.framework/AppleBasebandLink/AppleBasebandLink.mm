void abb::link::XpcClientLink::create(xpc_object_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  if (MEMORY[0x245CBA150](*a1) == MEMORY[0x277D86478])
  {
    v4 = operator new(0x70uLL);
    v6 = *a1;
    v5 = v6;
    *a1 = xpc_null_create();
    abb::link::XpcClientLink::XpcClientLink(v4, &v6);
    std::shared_ptr<abb::link::XpcClientLink>::shared_ptr[abi:ne200100]<abb::link::XpcClientLink,0>(a2, v4);
    xpc_release(v5);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

atomic_ullong *abb::link::XpcClientLink::create@<X0>(__int128 *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = operator new(0x70uLL);
  abb::link::XpcClientLink::XpcClientLink(v4, a1);

  return std::shared_ptr<abb::link::XpcClientLink>::shared_ptr[abi:ne200100]<abb::link::XpcClientLink,0>(a2, v4);
}

uint64_t abb::link::XpcClientLink::XpcClientLink(uint64_t a1, xpc_endpoint_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285217838;
  *(a1 + 24) = 0;
  *(a1 + 24) = xpc_null_create();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 96) = xpc_null_create();
  if (MEMORY[0x245CBA150](*a2) == MEMORY[0x277D86478])
  {
    v4 = xpc_connection_create_from_endpoint(*a2);
    if (!v4)
    {
      v4 = xpc_null_create();
    }

    v5 = xpc_null_create();
    v6 = *(a1 + 96);
    *(a1 + 96) = v4;
    xpc_release(v6);
    xpc_release(v5);
  }

  *(a1 + 104) = 0;
  return a1;
}

uint64_t abb::link::XpcClientLink::XpcClientLink(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285217838;
  *(a1 + 24) = 0;
  v4 = xpc_null_create();
  *(a1 + 32) = 0u;
  *(a1 + 24) = v4;
  *(a1 + 48) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 80) = *(a2 + 2);
    *(a1 + 64) = v5;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = xpc_null_create();
  *(a1 + 104) = 0;
  return a1;
}

void sub_240114978(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    v5 = *v3;
    *v3 = 0;
    if (!v5)
    {
LABEL_3:
      MEMORY[0x245CB9E70](v2);
      v6 = *(v1 + 16);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = *v3;
    *v3 = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  (*(*v5 + 8))(v5);
  MEMORY[0x245CB9E70](v2);
  v6 = *(v1 + 16);
  if (!v6)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  std::__shared_weak_count::__release_weak(v6);
  _Unwind_Resume(a1);
}

void abb::link::XpcClientLink::~XpcClientLink(abb::link::XpcClientLink *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  *(this + 104) = 0;
  ctu::XpcClientHelper::setServer();
  xpc_release(*(this + 12));
  *(this + 12) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_7:
      v4 = *(this + 4);
      *(this + 4) = 0;
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(this + 5));
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
LABEL_8:
    (*(*v4 + 8))(v4);
  }

LABEL_9:
  MEMORY[0x245CB9E70](this + 24);
  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  abb::link::XpcClientLink::~XpcClientLink(this);

  operator delete(v1);
}

uint64_t abb::link::XpcClientLink::disconnect(abb::link::XpcClientLink *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  *(this + 104) = 0;

  return ctu::XpcClientHelper::setServer();
}

void abb::link::XpcClientLink::flush(abb::link::XpcClientLink *this, const group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v5 = xpc_null_create();
  global_queue = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 1174405120;
  handler[2] = ___ZNK3abb4link13XpcClientLink5flushERKN8dispatch5groupE_block_invoke;
  handler[3] = &__block_descriptor_tmp_0;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v8 = *(this + 3);
  v7 = (this + 24);
  if (v8 && MEMORY[0x245CBA150]() == MEMORY[0x277D86450])
  {
    xpc_connection_send_message_with_reply(*v7, v5, global_queue, handler);
  }

  xpc_release(v5);
  ctu::XpcClientHelper::flush(v7, a2);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }
}

void sub_240114D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  xpc_release(v15);
  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t abb::link::XpcClientLink::send(uint64_t a1, xpc_object_t *a2, NSObject *a3, void *a4)
{
  result = *(a1 + 24);
  if (result)
  {
    if (MEMORY[0x245CBA150]() == MEMORY[0x277D86450])
    {
      xpc_connection_send_message_with_reply(*(a1 + 24), *a2, a3, a4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

uint64_t abb::link::XpcClientLink::sendMessage(uint64_t a1, xpc_object_t *a2)
{
  result = *(a1 + 24);
  if (result)
  {
    if (MEMORY[0x245CBA150]() == MEMORY[0x277D86450])
    {
      xpc_connection_send_message(*(a1 + 24), *a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t abb::link::XpcClientLink::send(uint64_t a1, xpc_object_t *a2)
{
  result = *(a1 + 24);
  if (result)
  {
    if (MEMORY[0x245CBA150]() == MEMORY[0x277D86450])
    {
      xpc_connection_send_message(*(a1 + 24), *a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t abb::link::XpcClientLink::send(uint64_t a1, xpc_object_t *a2, uint64_t *a3, NSObject **a4, uint64_t a5)
{
  v10 = operator new(0x20uLL);
  v12 = (a5 + 24);
  v11 = *(a5 + 24);
  if (!v11)
  {
    v12 = v10 + 3;
    goto LABEL_5;
  }

  if (v11 != a5)
  {
    v10[3] = v11;
LABEL_5:
    *v12 = 0;
    goto LABEL_7;
  }

  v10[3] = v10;
  v13 = v10;
  (*(*v11 + 24))(v11, v10);
  v10 = v13;
LABEL_7:
  v14 = *a4;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 1174405120;
  handler[2] = ___ZNK3abb4link13XpcClientLink4sendERKN3xpc4dictENSt3__18weak_ptrIKvEERKN8dispatch5queueENS6_8functionIFvNS2_6objectEEEE_block_invoke;
  handler[3] = &__block_descriptor_tmp_1;
  v16 = *a3;
  v15 = a3[1];
  handler[4] = v10;
  handler[5] = v16;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 24) && MEMORY[0x245CBA150]() == MEMORY[0x277D86450])
  {
    xpc_connection_send_message_with_reply(*(a1 + 24), *a2, v14, handler);
    v17 = 1;
    v18 = v21;
    if (!v21)
    {
      return v17;
    }

    goto LABEL_12;
  }

  v17 = 0;
  v18 = v21;
  if (v21)
  {
LABEL_12:
    std::__shared_weak_count::__release_weak(v18);
  }

  return v17;
}

void sub_2401150E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3abb4link13XpcClientLink4sendERKN3xpc4dictENSt3__18weak_ptrIKvEERKN8dispatch5queueENS6_8functionIFvNS2_6objectEEEE_block_invoke(uint64_t a1, void *a2)
{
  __p = *(a1 + 32);
  v3 = *(a1 + 48);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v13 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (*(a1 + 40))
  {
    v7 = *(a1 + 32);
    object = a2;
    if (a2)
    {
      xpc_retain(a2);
      v8 = *(v7 + 24);
      if (v8)
      {
LABEL_6:
        (*(*v8 + 48))(v8, &object);
        xpc_release(object);
        object = 0;
        goto LABEL_7;
      }
    }

    else
    {
      object = xpc_null_create();
      v8 = *(v7 + 24);
      if (v8)
      {
        goto LABEL_6;
      }
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

LABEL_7:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_9:
  v9 = __p;
  if (__p)
  {
    v10 = *(__p + 3);
    if (v10 == __p)
    {
      (*(*v10 + 32))(v10);
    }

    else if (v10)
    {
      (*(*v10 + 40))(v10);
    }

    operator delete(v9);
  }
}

void sub_240115278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, void *a12)
{
  xpc_release(object);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a10);
  std::unique_ptr<std::function<void ()(xpc::object)>>::~unique_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<void const>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c25_ZTSNSt3__18weak_ptrIKvEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c25_ZTSNSt3__18weak_ptrIKvEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void abb::link::XpcClientLink::handleServerError(uint64_t a1, void **a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v2 + 40))(v2, &object);
  xpc_release(object);
}

void abb::link::XpcClientLink::handleMessage(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_dictionary_get_value(*a2, "ConnectLink"))
  {
    *(a1 + 104) = 1;
    v4 = *(a1 + 32);
    value = xpc_dictionary_get_value(*a2, "ConnectLink");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    (*(*v4 + 16))(v4, &object);
    xpc_release(object);
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    v8 = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      v8 = xpc_null_create();
    }

    (*(*v6 + 24))(v6, &v8);
    xpc_release(v8);
  }
}

void abb::link::XpcClientLink::connectInternal(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA150](v4) == MEMORY[0x277D86468])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = xpc_string_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "Name", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  if (*(a1 + 24) && MEMORY[0x245CBA150]() == MEMORY[0x277D86450])
  {
    xpc_connection_send_message(*(a1 + 24), v5);
  }

  xpc_release(v5);
}

atomic_ullong *abb::link::LocalClientLink::create@<X0>(atomic_ullong *a1@<X8>)
{
  v3 = operator new(0x68uLL);
  v3[2] = 0;
  v3[3] = 0;
  *v3 = &unk_2852178E0;
  v3[1] = &unk_285217940;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 96) = 0;

  return std::shared_ptr<abb::link::LocalClientLink>::shared_ptr[abi:ne200100]<abb::link::LocalClientLink,0>(a1, v3);
}

double abb::link::LocalClientLink::LocalClientLink(abb::link::LocalClientLink *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2852178E0;
  *(this + 1) = &unk_285217940;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 0;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2852178E0;
  *(this + 1) = &unk_285217940;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 0;
  return result;
}

void abb::link::LocalClientLink::~LocalClientLink(void **this)
{
  abb::link::LocalClientLink::disconnect(this);
  v2 = this[11];
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v3 = this[7];
  this[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[6];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[4];
  this[4] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[3];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  abb::link::LocalClientLink::~LocalClientLink(this);

  operator delete(v1);
}

uint64_t abb::link::LocalClientLink::disconnect(abb::link::LocalClientLink *this)
{
  result = *(this + 7);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  v3 = *(this + 4);
  if (v3)
  {
    object = xpc_null_create();
    (*(*v3 + 32))(v3, &object);
    xpc_release(object);
    object = 0;
    result = *(this + 4);
    *(this + 96) = 0;
    *(this + 4) = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *(this + 96) = 0;
  }

  return result;
}

void non-virtual thunk toabb::link::LocalClientLink::~LocalClientLink(void **this)
{
  abb::link::LocalClientLink::~LocalClientLink(this - 1);
}

{
  abb::link::LocalClientLink::~LocalClientLink(this - 1);

  operator delete(v1);
}

void abb::link::LocalClientLink::flush(abb::link::LocalClientLink *this, const group *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v18 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  object = xpc_null_create();
  v5 = *(this + 3);
  if (!v5 || (v6 = std::__shared_weak_count::lock(v5)) == 0)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = *(this + 2);
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
LABEL_9:
      v10 = v9;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = v8;
      v16 = v9;
      std::__shared_weak_count::__release_weak(v7);
      if (!atomic_fetch_add(v10 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v10 + 16))(v10);
        v11 = v10;
        goto LABEL_28;
      }

LABEL_12:
      if (!gr_name)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v15 = 0;
  v16 = 0;
  v11 = v7;
LABEL_28:
  std::__shared_weak_count::__release_weak(v11);
  if (gr_name)
  {
LABEL_13:
    dispatch_retain(gr_name);
    dispatch_group_enter(gr_name);
  }

LABEL_14:
  v19[0] = &unk_285217BB0;
  v19[1] = gr_name;
  v20 = v19;
  abb::link::LocalClientLink::send(this, &object, &v15, &v18, v19);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    v13 = v16;
    if (v16)
    {
LABEL_18:
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 40))(v20, v12);
    }

    v13 = v16;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  xpc_release(object);
  if (v18)
  {
    dispatch_release(v18);
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_240115C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, xpc_object_t object, dispatch_object_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t abb::link::LocalClientLink::send(uint64_t a1, void **a2, std::__shared_weak_count **a3, NSObject **a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 96) == 1)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      if (*(a1 + 56) && *(a1 + 88))
      {
        v9 = *a2;
        v25 = v9;
        if (v9)
        {
          xpc_retain(v9);
          v10 = a3[1];
          v26[0] = *a3;
          v26[1] = v10;
          if (!v10)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v25 = xpc_null_create();
          v10 = a3[1];
          v26[0] = *a3;
          v26[1] = v10;
          if (!v10)
          {
LABEL_8:
            v11 = *a4;
            object = v11;
            if (v11)
            {
              dispatch_retain(v11);
            }

            v12 = *(a5 + 24);
            if (v12)
            {
              if (v12 == a5)
              {
                v29 = v28;
                (*(*v12 + 24))(v12, v28);
              }

              else
              {
                v29 = *(a5 + 24);
                *(a5 + 24) = 0;
              }
            }

            else
            {
              v29 = 0;
            }

            v31 = 0;
            v20 = operator new(0x40uLL);
            *v20 = &unk_285217C40;
            *(v20 + 8) = *v26;
            v26[0] = 0;
            v26[1] = 0;
            v21 = object;
            *(v20 + 3) = object;
            if (v21)
            {
              dispatch_retain(v21);
            }

            v22 = v29;
            if (v29)
            {
              if (v29 == v28)
              {
                *(v20 + 7) = v20 + 32;
                (*(*v22 + 24))(v22);
              }

              else
              {
                *(v20 + 7) = v29;
                v29 = 0;
              }
            }

            else
            {
              *(v20 + 7) = 0;
            }

            v31 = v20;
            (*(*v7 + 24))(v7, &v25, v30);
            if (v31 == v30)
            {
              (*(*v31 + 32))(v31);
              v23 = v29;
              if (v29 != v28)
              {
LABEL_43:
                if (v23)
                {
                  (*(*v23 + 40))(v23);
                }

                goto LABEL_47;
              }
            }

            else
            {
              if (v31)
              {
                (*(*v31 + 40))();
              }

              v23 = v29;
              if (v29 != v28)
              {
                goto LABEL_43;
              }
            }

            (*(*v23 + 32))(v23);
LABEL_47:
            if (object)
            {
              dispatch_release(object);
            }

            if (v26[1])
            {
              std::__shared_weak_count::__release_weak(v26[1]);
            }

            xpc_release(v25);
            result = 1;
            v24 = *MEMORY[0x277D85DE8];
            return result;
          }
        }

        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_8;
      }
    }
  }

  v13 = *(a5 + 24);
  if (v13)
  {
    if (v13 == a5)
    {
      v33 = v32;
      (*(*v13 + 24))(v13, v32);
    }

    else
    {
      v33 = *(a5 + 24);
      *(a5 + 24) = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v14 = *a4;
  v15 = operator new(0x20uLL);
  v16 = v33;
  if (v33)
  {
    if (v33 == v32)
    {
      v15[3] = v15;
      v17 = v15;
      (*(*v16 + 24))(v16);
      v15 = v17;
    }

    else
    {
      v15[3] = v33;
      v33 = 0;
    }
  }

  else
  {
    v15[3] = 0;
  }

  dispatch_async_f(v14, v15, dispatch::async<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1,std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
  }

  else if (v33)
  {
    (*(*v33 + 40))();
  }

  result = 0;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240116154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::function<void ()(xpc::object)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

dispatch_object_t *abb::link::LocalClientLink::flush(dispatch::group const&)const::$_0::~$_0(dispatch_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_group_leave(v2);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

uint64_t abb::link::LocalClientLink::send(uint64_t a1, void **a2)
{
  if (*(a1 + 96) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2 || !*(a1 + 56) || !*(a1 + 88))
  {
    return 0;
  }

  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v2 + 16))(v2, &object);
  xpc_release(object);
  return 1;
}

void *abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)const::$_0::~$_0(void *a1)
{
  v2 = a1 + 3;
  v3 = a1[6];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[2];
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void abb::link::LocalClientLink::connectInternal(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v16 = v5;
    if (v5)
    {
      v6 = a1[5];
      v15 = v6;
      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = a1[3];
      if (!v7 || (v8 = a1[2], (v9 = std::__shared_weak_count::lock(v7)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v10 = v8 + 8;
      if (!v8)
      {
        v10 = 0;
      }

      v13 = v10;
      v14 = v9;
      abb::link::LocalLinkAccepter::handleNewClient(v6, a2, &v13);
      v11 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v5 = v16;
      if (v16)
      {
LABEL_12:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v12 = v5;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v12);
        }
      }
    }
  }
}

void sub_240116570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_240116594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void abb::link::LocalClientLink::handleServerMessage(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  if (a1[11])
  {
    v4 = a1[3];
    if (!v4 || (v5 = a1[2], (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = xpc_null_create();
    v9 = a1[11];
    v10 = operator new(0x20uLL);
    *v10 = v5;
    v10[1] = v7;
    v10[2] = a1;
    v10[3] = v3;
    v11 = xpc_null_create();
    dispatch_async_f(v9, v10, dispatch::async<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
    xpc_release(v11);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v8 = v3;
  }

  xpc_release(v8);
}

void abb::link::LocalClientLink::handleServerMessage(void *a1, void **a2, NSObject **a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v29[0] = a1;
  v29[1] = v7;
  *a2 = xpc_null_create();
  v8 = *a3;
  v30 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = *(a4 + 24);
  if (v9)
  {
    if (v9 == a4)
    {
      v32 = v31;
      (*(*v9 + 24))(v9, v31);
    }

    else
    {
      v32 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  if (!a1[11])
  {
    goto LABEL_29;
  }

  v10 = a1[3];
  if (!v10 || (v11 = a1[2], (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  *&v33 = v11;
  *(&v33 + 1) = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  *v34 = *v29;
  v14 = xpc_null_create();
  object = v30;
  v29[1] = v14;
  v30 = 0;
  if (v32)
  {
    if (v32 == v31)
    {
      v37 = v36;
      (*(*v32 + 24))();
    }

    else
    {
      v37 = v32;
      v32 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v15 = a1[11];
  v16 = operator new(0x48uLL);
  v17 = v33;
  v18 = *v34;
  v33 = 0uLL;
  *v16 = v17;
  v16[1] = v18;
  v19 = xpc_null_create();
  v20 = v37;
  *(v16 + 4) = object;
  v34[1] = v19;
  object = 0;
  if (v20)
  {
    if (v20 == v36)
    {
      *(v16 + 8) = v16 + 40;
      (*(*v20 + 24))(v20);
    }

    else
    {
      *(v16 + 8) = v20;
      v37 = 0;
    }
  }

  else
  {
    *(v16 + 8) = 0;
  }

  v27 = 0;
  v28 = 0;
  dispatch_async_f(v15, v16, dispatch::async<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0,std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&v27);
  std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&v28);
  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
    v22 = object;
    if (!object)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v37)
  {
    (*(*v37 + 40))(v37, v21);
  }

  v22 = object;
  if (object)
  {
LABEL_25:
    dispatch_release(v22);
  }

LABEL_26:
  xpc_release(v34[1]);
  v34[1] = 0;
  v23 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_38;
    }

LABEL_29:
    v24 = v32;
    if (v32 != v31)
    {
      goto LABEL_30;
    }

LABEL_39:
    (*(*v24 + 32))(v24);
    v25 = v30;
    if (!v30)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

LABEL_38:
  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  v24 = v32;
  if (v32 == v31)
  {
    goto LABEL_39;
  }

LABEL_30:
  if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  v25 = v30;
  if (v30)
  {
LABEL_33:
    dispatch_release(v25);
  }

LABEL_34:
  xpc_release(v29[1]);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_240116AD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::link::LocalClientLink::handleServerError(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  if (a1[11])
  {
    v4 = a1[3];
    if (!v4 || (v5 = a1[2], (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = xpc_null_create();
    v9 = a1[11];
    v10 = operator new(0x20uLL);
    *v10 = v5;
    v10[1] = v7;
    v10[2] = a1;
    v10[3] = v3;
    v11 = xpc_null_create();
    dispatch_async_f(v9, v10, dispatch::async<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0>(abb::link::LocalClientLink::handleServerError(xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0,dispatch_queue_s *::default_delete<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
    xpc_release(v11);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v8 = v3;
  }

  xpc_release(v8);
}

void abb::link::LocalClientLink::registerAccepter(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 48);
  *(a1 + 40) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C98D68, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

atomic_ullong *std::shared_ptr<abb::link::XpcClientLink>::shared_ptr[abi:ne200100]<abb::link::XpcClientLink,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_285217B10;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 8) = a2;
        *(a2 + 16) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_240116F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<abb::link::XpcClientLink>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<abb::link::XpcClientLink *,std::shared_ptr<abb::link::XpcClientLink>::__shared_ptr_default_delete<abb::link::XpcClientLink,abb::link::XpcClientLink>,std::allocator<abb::link::XpcClientLink>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abb::link::XpcClientLink *,std::shared_ptr<abb::link::XpcClientLink>::__shared_ptr_default_delete<abb::link::XpcClientLink,abb::link::XpcClientLink>,std::allocator<abb::link::XpcClientLink>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    abb::link::XpcClientLink::~XpcClientLink(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<abb::link::XpcClientLink *,std::shared_ptr<abb::link::XpcClientLink>::__shared_ptr_default_delete<abb::link::XpcClientLink,abb::link::XpcClientLink>,std::allocator<abb::link::XpcClientLink>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024011EE61)
  {
    if (((v2 & 0x800000024011EE61 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024011EE61))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024011EE61 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

abb::link::XpcClientLink **std::unique_ptr<abb::link::XpcClientLink>::~unique_ptr[abi:ne200100](abb::link::XpcClientLink **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    abb::link::XpcClientLink::~XpcClientLink(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void **std::unique_ptr<std::function<void ()(xpc::object)>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3 == v1)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

atomic_ullong *std::shared_ptr<abb::link::LocalClientLink>::shared_ptr[abi:ne200100]<abb::link::LocalClientLink,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_285217B60;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 16) = a2;
        *(a2 + 24) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 16) = a2;
      *(a2 + 24) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_24011724C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<abb::link::LocalClientLink>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<abb::link::LocalClientLink *,std::shared_ptr<abb::link::LocalClientLink>::__shared_ptr_default_delete<abb::link::LocalClientLink,abb::link::LocalClientLink>,std::allocator<abb::link::LocalClientLink>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abb::link::LocalClientLink *,std::shared_ptr<abb::link::LocalClientLink>::__shared_ptr_default_delete<abb::link::LocalClientLink,abb::link::LocalClientLink>,std::allocator<abb::link::LocalClientLink>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    abb::link::LocalClientLink::~LocalClientLink(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<abb::link::LocalClientLink *,std::shared_ptr<abb::link::LocalClientLink>::__shared_ptr_default_delete<abb::link::LocalClientLink,abb::link::LocalClientLink>,std::allocator<abb::link::LocalClientLink>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024011EF42)
  {
    if (((v2 & 0x800000024011EF42 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024011EF42))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024011EF42 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ***std::unique_ptr<abb::link::LocalClientLink>::~unique_ptr[abi:ne200100](void ***a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    abb::link::LocalClientLink::~LocalClientLink(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_285217BB0;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::~__func(void *__p)
{
  *__p = &unk_285217BB0;
  v2 = __p[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete(__p);
}

void *std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_285217BB0;
  v2[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_group_enter(v4);
    }
  }

  return v2;
}

void std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_285217BB0;
  a2[1] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v4 = a2[1];
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete(__p);
}

void std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  *a2 = xpc_null_create();
  xpc_release(v2);
}

uint64_t std::__function::__func<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0,std::allocator<abb::link::LocalClientLink::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3abb4link15LocalClientLink5flushERKN8dispatch5groupEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3abb4link15LocalClientLink5flushERKN8dispatch5groupEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3abb4link15LocalClientLink5flushERKN8dispatch5groupEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3abb4link15LocalClientLink5flushERKN8dispatch5groupEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1,std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_1>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  object = MEMORY[0x277D863F8];
  xpc_retain(MEMORY[0x277D863F8]);
  v2 = a1[3];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &object);
  xpc_release(object);
  v3 = a1[3];
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    operator delete(a1);
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(a1);
  }
}

void sub_240117748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<std::function<void ()(xpc::object)>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_285217C40;
  v2 = a1 + 4;
  v3 = a1[7];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(char *__p)
{
  *__p = &unk_285217C40;
  v2 = __p + 32;
  v3 = *(__p + 7);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(__p + 3);
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(__p + 3);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(void *a1)
{
  v2 = operator new(0x40uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_285217C40;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a1[3];
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a1[7];
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v6 != a1 + 4)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_8:
    v2[7] = v6;
    return v2;
  }

  v2[7] = v2 + 4;
  (*(*v6 + 24))(v6);
  return v2;
}

void sub_2401179E4(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    dispatch_release(v3);
    v4 = v1[2];
    if (!v4)
    {
LABEL_3:
      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[2];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v4);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_285217C40;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = a1[3];
  a2[3] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  result = a1[7];
  if (!result)
  {
    goto LABEL_8;
  }

  if (result != a1 + 4)
  {
    result = (*(*result + 16))(result);
LABEL_8:
    a2[7] = result;
    return result;
  }

  a2[7] = a2 + 4;
  return (*(*a1[7] + 24))(a1[7]);
}

void sub_240117B08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    dispatch_release(v3);
    v4 = *(v1 + 16);
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v4);
  _Unwind_Resume(exception_object);
}

void std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy(void *a1)
{
  v2 = a1 + 4;
  v3 = a1[7];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[2];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy_deallocate(char *__p)
{
  v2 = __p + 32;
  v3 = *(__p + 7);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(__p + 3);
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(__p + 3);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::operator()(void *a1, void **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = std::__shared_weak_count::lock(v4);
  v13 = v5;
  if (!v5)
  {
    goto LABEL_27;
  }

  if (!a1[1])
  {
    goto LABEL_25;
  }

  *&v16 = a1[1];
  *(&v16 + 1) = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
    v6 = a1[7];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    object = xpc_null_create();
    v6 = a1[7];
    if (!v6)
    {
LABEL_10:
      v19 = v6;
      goto LABEL_12;
    }
  }

  if (v6 != a1 + 4)
  {
    v6 = (*(*v6 + 16))(v6);
    goto LABEL_10;
  }

  v19 = v18;
  (*(*v6 + 24))(v6, v18);
LABEL_12:
  v7 = a1[3];
  v8 = operator new(0x38uLL);
  *v8 = v16;
  v16 = 0uLL;
  v8[2] = object;
  object = xpc_null_create();
  v9 = v19;
  if (v19)
  {
    if (v19 == v18)
    {
      v8[6] = v8 + 3;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[6] = v19;
      v19 = 0;
    }
  }

  else
  {
    v8[6] = 0;
  }

  v14 = 0;
  v15 = 0;
  dispatch_async_f(v7, v8, dispatch::async<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v14);
  std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v15);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  xpc_release(object);
  object = 0;
  v10 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v5 = v13;
  if (v13)
  {
LABEL_25:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_27:
  xpc_release(v3);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_240117F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3abb4link15LocalClientLink4sendERKN3xpc4dictENSt3__18weak_ptrIKvEERKN8dispatch5queueENS6_8functionIFvNS2_6objectEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3abb4link15LocalClientLink4sendERKN3xpc4dictENSt3__18weak_ptrIKvEERKN8dispatch5queueENS6_8functionIFvNS2_6objectEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3abb4link15LocalClientLink4sendERKN3xpc4dictENSt3__18weak_ptrIKvEERKN8dispatch5queueENS6_8functionIFvNS2_6objectEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3abb4link15LocalClientLink4sendERKN3xpc4dictENSt3__18weak_ptrIKvEERKN8dispatch5queueENS6_8functionIFvNS2_6objectEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (v3 == v1 + 24)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v4 = *(v1 + 8);
    if (v4)
    {
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *dispatch::async<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 16);
  object = v2;
  if (!v2)
  {
    object = xpc_null_create();
    v3 = *(a1 + 48);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  xpc_retain(v2);
  v3 = *(a1 + 48);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  (*(*v3 + 48))(v3, &object);
  xpc_release(object);
  return std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_240118208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::send(xpc::dict const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0::operator() const(xpc::object)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void *std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0 &&>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (xpc_dictionary_get_value(*(a1 + 24), "ConnectLink"))
  {
    *(v2 + 96) = 1;
    v3 = *(v2 + 56);
    value = xpc_dictionary_get_value(*(a1 + 24), "ConnectLink");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    (*(*v3 + 16))(v3, &object);
    xpc_release(object);
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    (*(*v5 + 24))(v5, &object);
    xpc_release(object);
  }

  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v7 = *(a1 + 8);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    operator delete(a1);
  }

  else
  {
    operator delete(a1);
  }
}

void sub_240118488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v3 = *(v1 + 64);
  if (v3 == v1 + 40)
  {
    (*(*v3 + 32))(v3);
    v4 = *(v1 + 32);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(v1 + 32);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  dispatch_release(v4);
LABEL_7:
  xpc_release(*(v1 + 24));
  *(v1 + 24) = 0;
  v5 = *(v1 + 8);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  operator delete(v1);
  return v2;
}

void *dispatch::async<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0,std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(v3 + 56);
  v13 = v2;
  if (v2)
  {
    xpc_retain(v2);
    v5 = a1[4];
    object = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = xpc_null_create();
  v5 = a1[4];
  object = v5;
  v13 = v7;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[8];
  if (!v6)
  {
LABEL_7:
    v15 = v6;
    goto LABEL_11;
  }

  if (v6 != a1 + 5)
  {
    v6 = (*(*v6 + 16))(v6);
    goto LABEL_7;
  }

  v15 = v14;
  (*(*v6 + 24))(v6, v14);
LABEL_11:
  (*(*v4 + 32))(v4, &v13, &object, v14);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
    v8 = object;
    if (!object)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  v8 = object;
  if (object)
  {
LABEL_15:
    dispatch_release(v8);
  }

LABEL_16:
  xpc_release(v13);
  result = std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2401187A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12)
{
  if (v12)
  {
    dispatch_release(v12);
  }

  xpc_release(object);
  std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0>(abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerMessage(xpc::dict,dispatch::queue,std::function<void ()(xpc::object)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2401187E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0>(abb::link::LocalClientLink::handleServerError(xpc::object)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0 &&>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0>(abb::link::LocalClientLink::handleServerError(xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0,dispatch_queue_s *::default_delete<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v3 + 56);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v4 + 40))(v4, &object);
  xpc_release(object);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v5 = *(a1 + 8);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    operator delete(a1);
  }

  else
  {
    operator delete(a1);
  }
}

void sub_24011899C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<void abb::link::LocalClientLink::execute<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0>(abb::link::LocalClientLink::handleServerError(xpc::object)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::link::LocalClientLink::handleServerError(xpc::object)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void abb::link::XpcServerLink::create(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  v7 = *a2;
  *a2 = xpc_null_create();
  *v6 = &unk_285217CC0;
  v8 = (v6 + 1);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a1, *(a1 + 8));
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *a1;
    v6[3] = *(a1 + 16);
  }

  v6[4] = 0;
  v6[5] = 0;
  *v6 = &unk_285217D08;
  v6[6] = 0;
  v6[7] = v7;
  v9 = xpc_null_create();
  if (*(a1 + 23) >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v6[8] = dispatch_queue_create(v10, 0);
  std::shared_ptr<abb::link::XpcServerLink>::shared_ptr[abi:ne200100]<abb::link::XpcServerLink,0>(a3, v6);
  xpc_release(v9);
}

void sub_240118AC4(_Unwind_Exception *a1)
{
  xpc_release(v2);
  if (v3)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *abb::link::XpcServerLink::XpcServerLink(void *a1, __int128 *a2, xpc_object_t *a3)
{
  *a1 = &unk_285217CC0;
  v6 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    v6->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  a1[4] = 0;
  a1[5] = 0;
  *a1 = &unk_285217D08;
  v8 = *a3;
  a1[6] = 0;
  a1[7] = v8;
  *a3 = xpc_null_create();
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  a1[8] = dispatch_queue_create(v9, 0);
  return a1;
}

{
  *a1 = &unk_285217CC0;
  v6 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    v6->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  a1[4] = 0;
  a1[5] = 0;
  *a1 = &unk_285217D08;
  v8 = *a3;
  a1[6] = 0;
  a1[7] = v8;
  *a3 = xpc_null_create();
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  a1[8] = dispatch_queue_create(v9, 0);
  return a1;
}

void abb::link::ServerLink::~ServerLink(void **this)
{
  *this = &unk_285217CC0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void abb::link::XpcServerLink::~XpcServerLink(abb::link::XpcServerLink *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(this + 7));
  v3 = *(this + 6);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_285217CC0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  abb::link::XpcServerLink::~XpcServerLink(this);

  operator delete(v1);
}

void abb::link::XpcServerLink::connectLink(uint64_t a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA150](v4) == MEMORY[0x277D86468])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *a2;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "ConnectLink", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  if (v5)
  {
    xpc_retain(v5);
    v8 = v5;
  }

  else
  {
    v8 = xpc_null_create();
  }

  if (MEMORY[0x245CBA150](*(a1 + 56)) == MEMORY[0x277D86450])
  {
    xpc_connection_send_message(*(a1 + 56), v8);
  }

  xpc_release(v8);
  xpc_release(v5);
}

void sub_240118F18(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void abb::link::XpcServerLink::sendMessage(uint64_t a1, void **a2)
{
  if (MEMORY[0x245CBA150](*(a1 + 56)) == MEMORY[0x277D86450])
  {
    v4 = *(a1 + 56);
    v5 = *a2;

    xpc_connection_send_message(v4, v5);
  }
}

uint64_t abb::link::XpcServerLink::sendMessage(uint64_t a1, void **a2, NSObject **a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x245CBA150](*(a1 + 56));
  if (result == MEMORY[0x277D86450])
  {
    v10 = *(a1 + 56);
    v11 = *a2;
    v12 = *a3;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = ___ZNK3abb4link13XpcServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENSt3__18functionIFvNS2_6objectEEEE_block_invoke;
    handler[3] = &__block_descriptor_tmp_1;
    v13 = *(a4 + 24);
    if (v13)
    {
      if (v13 == a4)
      {
        v16 = v15;
        (*(*v13 + 24))(v13, v15);
      }

      else
      {
        v16 = (*(*v13 + 16))(v13);
      }
    }

    else
    {
      v16 = 0;
    }

    xpc_connection_send_message_with_reply(v10, v11, v12, handler);
    result = v16;
    if (v16 == v15)
    {
      result = (*(*v16 + 32))(v16);
    }

    else if (v16)
    {
      result = (*(*v16 + 40))();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZNK3abb4link13XpcServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENSt3__18functionIFvNS2_6objectEEEE_block_invoke(uint64_t a1, xpc_object_t object)
{
  objecta = object;
  if (!object)
  {
    objecta = xpc_null_create();
    v3 = *(a1 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  xpc_retain(object);
  v3 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  (*(*v3 + 48))(v3, &objecta);
  xpc_release(objecta);
}

uint64_t __copy_helper_block_e8_32c39_ZTSNSt3__18functionIFvN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    if (result == a2 + 32)
    {
      *(a1 + 56) = a1 + 32;
      v4 = *(**(a2 + 56) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 56) = result;
    }
  }

  else
  {
    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_e8_32c39_ZTSNSt3__18functionIFvN3xpc6objectEEEE(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(a1 + 56);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void abb::link::XpcServerLink::sendMessage(uint64_t a1, void **a2, NSObject **a3, void **a4)
{
  if (MEMORY[0x245CBA150](*(a1 + 56)) == MEMORY[0x277D86450])
  {
    v8 = *(a1 + 56);
    v9 = *a2;
    v10 = *a3;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = ___ZNK3abb4link13XpcServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENS4_5blockIU13block_pointerFvNS2_6objectEEEE_block_invoke;
    handler[3] = &__block_descriptor_tmp_2;
    v11 = *a4;
    if (*a4)
    {
      v11 = _Block_copy(v11);
    }

    aBlock = v11;
    xpc_connection_send_message_with_reply(v8, v9, v10, handler);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_240119414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3abb4link13XpcServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENS4_5blockIU13block_pointerFvNS2_6objectEEEE_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 32);
  objecta = v3;
  v5 = xpc_null_create();
  (*(v4 + 16))(v4, &objecta);
  xpc_release(objecta);
  xpc_release(v5);
}

void sub_2401194B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void abb::link::XpcServerLink::disconnect(abb::link::XpcServerLink *this, const group *a2)
{
  if (MEMORY[0x245CBA150](*(this + 7)) == MEMORY[0x277D86450])
  {
    gr_name = a2->gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(gr_name);
    }

    v5 = *(this + 7);
    barrier[0] = MEMORY[0x277D85DD0];
    barrier[1] = 1174405120;
    barrier[2] = ___ZN3abb4link13XpcServerLink10disconnectERKN8dispatch5groupE_block_invoke;
    barrier[3] = &__block_descriptor_tmp_4;
    group = gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
      dispatch_group_enter(group);
    }

    xpc_connection_send_barrier(v5, barrier);
    v6 = xpc_null_create();
    v7 = xpc_null_create();
    v8 = *(this + 7);
    *(this + 7) = v6;
    xpc_release(v8);
    xpc_release(v7);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (gr_name)
    {
      dispatch_group_leave(gr_name);
      dispatch_release(gr_name);
    }
  }
}

void sub_240119684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void abb::link::XpcServerLink::handleClientMessage(void *a1, uint64_t a2, xpc_object_t *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v6 = xpc_null_create();
  }

  v7 = a1[8];
  v8 = operator new(0x20uLL);
  *v8 = a1;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  v9 = xpc_null_create();
  dispatch_async_f(v7, v8, dispatch::async<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  xpc_release(v9);
}

void abb::link::XpcServerLink::handleClientError(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[8];
  v5 = operator new(0x18uLL);
  *v5 = a1;
  v5[1] = v2;
  v5[2] = v3;

  dispatch_async_f(v4, v5, dispatch::async<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0>>)::{lambda(void *)#1}::__invoke);
}

atomic_ullong *abb::link::LocalServerLink::create@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  *v4 = &unk_285217CC0;
  v5 = (v4 + 1);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a1, *(a1 + 8));
    v6 = *(a1 + 23) < 0;
  }

  else
  {
    v6 = 0;
    *&v5->__r_.__value_.__l.__data_ = *a1;
    v4[3] = *(a1 + 16);
  }

  v4[5] = 0;
  v4[6] = 0;
  *v4 = &unk_285217DE0;
  v4[4] = &unk_285217E40;
  v4[7] = 0;
  v4[8] = 0;
  if (v6)
  {
    v7 = *a1;
  }

  else
  {
    v7 = a1;
  }

  v4[9] = dispatch_queue_create(v7, 0);

  return std::shared_ptr<abb::link::LocalServerLink>::shared_ptr[abi:ne200100]<abb::link::LocalServerLink,0>(a2, v4);
}

void *abb::link::LocalServerLink::LocalServerLink(void *a1, __int128 *a2)
{
  *a1 = &unk_285217CC0;
  v4 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  a1[5] = 0;
  a1[6] = 0;
  *a1 = &unk_285217DE0;
  a1[4] = &unk_285217E40;
  a1[7] = 0;
  a1[8] = 0;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  a1[9] = dispatch_queue_create(v6, 0);
  return a1;
}

{
  *a1 = &unk_285217CC0;
  v4 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  a1[5] = 0;
  a1[6] = 0;
  *a1 = &unk_285217DE0;
  a1[4] = &unk_285217E40;
  a1[7] = 0;
  a1[8] = 0;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  a1[9] = dispatch_queue_create(v6, 0);
  return a1;
}

void abb::link::LocalServerLink::~LocalServerLink(abb::link::LocalServerLink *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_285217CC0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_285217CC0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_285217CC0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
    v6 = this;
  }

  else
  {
    v6 = this;
  }

  operator delete(v6);
}

void non-virtual thunk toabb::link::LocalServerLink::~LocalServerLink(abb::link::LocalServerLink *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *(this - 4) = &unk_285217CC0;
  if (*(this - 1) < 0)
  {
    v6 = *(this - 3);

    operator delete(v6);
  }
}

{
  abb::link::LocalServerLink::~LocalServerLink((this - 32));
}

void abb::link::LocalServerLink::connectLink(uint64_t a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA150](v4) == MEMORY[0x277D86468])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *a2;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "ConnectLink", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  abb::link::LocalServerLink::sendMessage(a1, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void sub_240119F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void abb::link::LocalServerLink::sendMessage(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    object = *a2;
    *a2 = xpc_null_create();
    (*(*v2 + 16))(v2, &object);
    xpc_release(object);
  }
}

void abb::link::LocalServerLink::sendMessage(uint64_t a1, void **a2, NSObject **a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  if (v4)
  {
    v7 = *a2;
    v14 = v7;
    if (v7)
    {
      xpc_retain(v7);
      v8 = *a3;
      object = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v8 = *a3;
      object = v8;
      v14 = v10;
      if (!v8)
      {
LABEL_5:
        v9 = *(a4 + 24);
        if (v9)
        {
          if (v9 == a4)
          {
            v16 = v15;
            (*(*v9 + 24))(v9, v15);
LABEL_12:
            (*(*v4 + 24))(v4, &v14, &object, v15);
            if (v16 == v15)
            {
              (*(*v16 + 32))(v16);
              v11 = object;
              if (!object)
              {
                goto LABEL_17;
              }
            }

            else
            {
              if (v16)
              {
                (*(*v16 + 40))();
              }

              v11 = object;
              if (!object)
              {
                goto LABEL_17;
              }
            }

            dispatch_release(v11);
LABEL_17:
            xpc_release(v14);
            goto LABEL_18;
          }

          v9 = (*(*v9 + 16))(v9);
        }

        v16 = v9;
        goto LABEL_12;
      }
    }

    dispatch_retain(v8);
    goto LABEL_5;
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_24011A200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12)
{
  if (v12)
  {
    dispatch_release(v12);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void abb::link::LocalServerLink::sendMessage(uint64_t a1, xpc_object_t *a2, NSObject **a3, void **a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64))
  {
    v7 = *a2;
    v14 = v7;
    if (v7)
    {
      xpc_retain(v7);
      v8 = *a3;
      v13 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = xpc_null_create();
      v8 = *a3;
      v13 = v8;
      v14 = v7;
      if (!v8)
      {
LABEL_5:
        v9 = *a4;
        if (*a4)
        {
          v9 = _Block_copy(v9);
        }

        v15[0] = &unk_285218010;
        v15[1] = v9;
        v16 = v15;
        abb::link::LocalServerLink::sendMessage(a1, &v14, &v13, v15);
        if (v16 == v15)
        {
          (*(*v16 + 32))(v16);
          if (!v8)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v16)
          {
            (*(*v16 + 40))(v16, v10, v11);
          }

          if (!v8)
          {
            goto LABEL_12;
          }
        }

        dispatch_release(v8);
LABEL_12:
        xpc_release(v7);
        goto LABEL_13;
      }
    }

    dispatch_retain(v8);
    goto LABEL_5;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_24011A3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)const::$_0::~$_0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void abb::link::LocalServerLink::disconnect(abb::link::LocalServerLink *this, const group *a2)
{
  if (*(this + 8))
  {
    v3 = xpc_string_create("Local link connection is down");
    if (!v3)
    {
      v3 = xpc_null_create();
    }

    v4 = *(this + 8);
    object = v3;
    v5 = xpc_null_create();
    (*(*v4 + 32))(v4, &object);
    xpc_release(object);
    object = 0;
    v6 = *(this + 8);
    *(this + 8) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    xpc_release(v5);
  }
}

void sub_24011A518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void abb::link::LocalServerLink::handleClientMessage(void *a1, xpc_object_t *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = a1[9];
  v7 = operator new(0x20uLL);
  *v7 = a1;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  v8 = xpc_null_create();
  dispatch_async_f(v6, v7, dispatch::async<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  xpc_release(v8);
}

void abb::link::LocalServerLink::handleClientMessage(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  *&v11 = a1;
  *(&v11 + 1) = a1[5];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  object = *a2;
  *a2 = xpc_null_create();
  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      v16 = v15;
      (*(*v6 + 24))(v6, v15);
    }

    else
    {
      v16 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v7 = a1[9];
  v8 = operator new(0x40uLL);
  *v8 = v11;
  v8[2] = v12;
  v8[3] = object;
  objecta = xpc_null_create();
  v9 = v16;
  if (v16)
  {
    if (v16 == v15)
    {
      v8[7] = v8 + 4;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[7] = v16;
      v16 = 0;
    }
  }

  else
  {
    v8[7] = 0;
  }

  dispatch_async_f(v7, v8, dispatch::async<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))();
  }

  xpc_release(objecta);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_24011A804(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::link::LocalServerLink::handleClientError(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[9];
  v5 = operator new(0x18uLL);
  *v5 = a1;
  v5[1] = v2;
  v5[2] = v3;

  dispatch_async_f(v4, v5, dispatch::async<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
}

void non-virtual thunk toabb::link::LocalServerLink::handleClientError(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[5];
  v5 = operator new(0x18uLL);
  *v5 = a1 - 4;
  v5[1] = v2;
  v5[2] = v3;

  dispatch_async_f(v4, v5, dispatch::async<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
}

atomic_ullong *std::shared_ptr<abb::link::XpcServerLink>::shared_ptr[abi:ne200100]<abb::link::XpcServerLink,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_285217F70;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 32) = a2;
        *(a2 + 40) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 32) = a2;
      *(a2 + 40) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_24011AA7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<abb::link::XpcServerLink>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<abb::link::XpcServerLink *,std::shared_ptr<abb::link::XpcServerLink>::__shared_ptr_default_delete<abb::link::XpcServerLink,abb::link::XpcServerLink>,std::allocator<abb::link::XpcServerLink>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abb::link::XpcServerLink *,std::shared_ptr<abb::link::XpcServerLink>::__shared_ptr_default_delete<abb::link::XpcServerLink,abb::link::XpcServerLink>,std::allocator<abb::link::XpcServerLink>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    abb::link::XpcServerLink::~XpcServerLink(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<abb::link::XpcServerLink *,std::shared_ptr<abb::link::XpcServerLink>::__shared_ptr_default_delete<abb::link::XpcServerLink,abb::link::XpcServerLink>,std::allocator<abb::link::XpcServerLink>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024011F31FLL)
  {
    if (((v2 & 0x800000024011F31FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024011F31FLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024011F31FLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

abb::link::XpcServerLink **std::unique_ptr<abb::link::XpcServerLink>::~unique_ptr[abi:ne200100](abb::link::XpcServerLink **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    abb::link::XpcServerLink::~XpcServerLink(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *std::unique_ptr<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v13 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  if (a1[1])
  {
    v6 = *(v3 + 48);
    if (v6)
    {
      v7 = a1[3];
      object = v7;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v6 + 16))(v6, &object);
      xpc_release(object);
      object = 0;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_10:
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  xpc_release(v8[3]);
  v8[3] = 0;
  v9 = v8[2];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(v8);
}

void sub_24011AD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  object = 0;
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  if (a1[1])
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      v6 = v4;
      (*(*v5 + 32))(*(v3 + 48));
      v4 = v6;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v9);
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_7:
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  v8 = v7[2];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(v7);
}

void sub_24011AEB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<abb::link::LocalServerLink>::shared_ptr[abi:ne200100]<abb::link::LocalServerLink,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_285217FC0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 48);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 40) = a2;
        *(a2 + 48) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 40) = a2;
      *(a2 + 48) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_24011B09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<abb::link::LocalServerLink>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<abb::link::LocalServerLink *,std::shared_ptr<abb::link::LocalServerLink>::__shared_ptr_default_delete<abb::link::LocalServerLink,abb::link::LocalServerLink>,std::allocator<abb::link::LocalServerLink>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abb::link::LocalServerLink *,std::shared_ptr<abb::link::LocalServerLink>::__shared_ptr_default_delete<abb::link::LocalServerLink,abb::link::LocalServerLink>,std::allocator<abb::link::LocalServerLink>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 9);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v1 + 7);
    *(v1 + 7) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 6);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    *v1 = &unk_285217CC0;
    if (v1[31] < 0)
    {
      operator delete(*(v1 + 1));
      v6 = v1;
    }

    else
    {
      v6 = v1;
    }

    operator delete(v6);
  }
}

uint64_t std::__shared_ptr_pointer<abb::link::LocalServerLink *,std::shared_ptr<abb::link::LocalServerLink>::__shared_ptr_default_delete<abb::link::LocalServerLink,abb::link::LocalServerLink>,std::allocator<abb::link::LocalServerLink>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024011F400)
  {
    if (((v2 & 0x800000024011F400 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024011F400))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024011F400 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<abb::link::LocalServerLink>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 9);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 7);
    *(v1 + 7) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    *v1 = &unk_285217CC0;
    if (v1[31] < 0)
    {
      operator delete(*(v1 + 1));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_285218010;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(void *__p)
{
  *__p = &unk_285218010;
  v2 = __p[1];
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_285218010;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v2[1] = v3;
  return v2;
}

void *std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  *a2 = &unk_285218010;
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *(a1 + 8);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v4 + 16))(v4, &object);
  xpc_release(object);
  xpc_release(v3);
}

void sub_24011B584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0,std::allocator<abb::link::LocalServerLink::sendMessage(xpc::dict,dispatch::queue,dispatch::block<void({block_pointer})(xpc::object)>)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3abb4link15LocalServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENS4_5blockIU13block_pointerFvNS2_6objectEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3abb4link15LocalServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENS4_5blockIU13block_pointerFvNS2_6objectEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3abb4link15LocalServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENS4_5blockIU13block_pointerFvNS2_6objectEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3abb4link15LocalServerLink11sendMessageEN3xpc4dictEN8dispatch5queueENS4_5blockIU13block_pointerFvNS2_6objectEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v13 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  if (a1[1])
  {
    v6 = *(v3 + 56);
    if (v6)
    {
      v7 = a1[3];
      object = v7;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v6 + 16))(v6, &object);
      xpc_release(object);
      object = 0;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_10:
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  xpc_release(v8[3]);
  v8[3] = 0;
  v9 = v8[2];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(v8);
}

void sub_24011B7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  object = 0;
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 56);
    if (v3 == v1 + 32)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  if (!v2 || (v3 = *a1, v4 = std::__shared_weak_count::lock(v2), (v16 = v4) == 0))
  {
LABEL_19:
    v9 = a1;
    if (!a1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v5 = v4;
  if (a1[1])
  {
    v6 = *(v3 + 56);
    if (v6)
    {
      v7 = a1[3];
      object = v7;
      if (v7)
      {
        xpc_retain(v7);
        v8 = a1[7];
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        object = xpc_null_create();
        v8 = a1[7];
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      if (v8 == a1 + 4)
      {
        v18 = v17;
        (*(*v8 + 24))(v8, v17);
        goto LABEL_13;
      }

      v8 = (*(*v8 + 16))(v8);
LABEL_11:
      v18 = v8;
LABEL_13:
      (*(*v6 + 24))(v6, &object, v17);
      if (v18 == v17)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))();
      }

      xpc_release(object);
      object = 0;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v9 = a1;
  if (!a1)
  {
    goto LABEL_27;
  }

LABEL_20:
  v10 = v9[7];
  if (v10 == v9 + 4)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  xpc_release(v9[3]);
  v9[3] = 0;
  v11 = v9[2];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v9);
LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_24011BB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  xpc_release(v14);
  a11 = 0;
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a12);
  std::unique_ptr<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientMessage(xpc::dict,std::function<void ()(xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_24011BB8C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void dispatch::async<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0,std::default_delete<abb::link::LocalServerLink::handleClientError(xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  if (a1[1])
  {
    v5 = *(v3 + 56);
    if (v5)
    {
      v6 = v4;
      (*(*v5 + 32))(*(v3 + 56));
      v4 = v6;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v9);
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_7:
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  v8 = v7[2];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(v7);
}

void sub_24011BCAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0,std::default_delete<abb::link::XpcServerLink::handleClientError(xpc::connection const&,xpc::object const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *abb::link::XpcLinkAccepter::Configuration::Configuration(std::string *result, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    std::string::__init_copy_ctor_external(result, *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    result->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&result->__r_.__value_.__l.__data_ = v2;
  }

  return result;
}

{
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    std::string::__init_copy_ctor_external(result, *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    result->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&result->__r_.__value_.__l.__data_ = v2;
  }

  return result;
}

uint64_t abb::link::XpcLinkAccepter::Configuration::isEntitled(uint64_t *a1, void *a2)
{
  if (MEMORY[0x245CBA150](*a2) != MEMORY[0x277D86450])
  {
    return 0;
  }

  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_5;
    }

    return 1;
  }

  if (!a1[1])
  {
    return 1;
  }

LABEL_5:
  v5 = *a2;
  xpc_connection_get_audit_token();
  v6 = xpc_copy_entitlement_for_token();
  v7 = MEMORY[0x277D86468];
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CBA150](v6) == v7)
    {
      xpc_retain(v6);
      v8 = v6;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  if (MEMORY[0x245CBA150](v8) != v7)
  {
    goto LABEL_14;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (xpc_dictionary_get_value(v8, a1) && (v10 = xpc_dictionary_get_value(v8, a1), MEMORY[0x245CBA150](v10) == MEMORY[0x277D86448]))
  {
    value = xpc_dictionary_get_value(v8, a1);
    v9 = xpc_BOOL_get_value(value);
  }

  else
  {
LABEL_14:
    v9 = 0;
  }

  xpc_release(v8);
  return v9;
}

void abb::link::XpcLinkAccepter::create(xpc_object_t *a1@<X0>, dispatch_object_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  v18 = *a1;
  *a1 = xpc_null_create();
  object = *a2;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  abb::link::XpcLinkAccepter::XpcLinkAccepter(v8, &v18, &object, &__p);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  v9[1] = 0;
  v12 = v9 + 1;
  *v9 = &unk_2852181F8;
  v9[2] = 0;
  v9[3] = v8;
  a4[1] = v9;
  v13 = *(v8 + 2);
  if (!v13)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
    if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v13->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
    v14 = v9;
    std::__shared_weak_count::__release_weak(v13);
    v9 = v14;
    if (!atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_9:
      v15 = v9;
      (*(*v9 + 16))(v9, v10, v11);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v18);
}

void sub_24011C0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, dispatch_object_t object, xpc_object_t a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a17);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t abb::link::XpcLinkAccepter::XpcLinkAccepter(uint64_t a1, xpc_object_t *a2, void *a3, __int128 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285218090;
  *(a1 + 24) = *a2;
  *a2 = xpc_null_create();
  *(a1 + 32) = *a3;
  *a3 = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v7;
  }

  *(a1 + 64) = 0;
  object = xpc_null_create();
  MEMORY[0x245CB9E90](a1 + 72, &object);
  xpc_release(object);
  return a1;
}

void sub_24011C264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  v13 = *(v10 + 32);
  if (v13)
  {
    dispatch_release(v13);
    xpc::connection::~connection(v11);
    v14 = *(v10 + 16);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    xpc::connection::~connection(v11);
    v14 = *(v10 + 16);
    if (!v14)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void abb::link::XpcLinkAccepter::createClientLink(NSObject **this@<X0>, void *a2@<X8>)
{
  v3 = this;
  v2 = this[4];
  *a2 = 0;
  a2[1] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN8dispatch9sync_implIZN3abb4link15XpcLinkAccepter16createClientLinkEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = a2;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void abb::link::XpcLinkAccepter::startAccepting(abb::link::XpcLinkAccepter *this)
{
  v2 = *(this + 4);
  v3 = operator new(8uLL);
  *v3 = this;

  dispatch_async_f(v2, v3, dispatch::async<abb::link::XpcLinkAccepter::startAccepting(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::XpcLinkAccepter::startAccepting(void)::$_0,std::default_delete<abb::link::XpcLinkAccepter::startAccepting(void)::$_0>>)::{lambda(void *)#1}::__invoke);
}

uint64_t abb::link::XpcLinkAccepter::handleNewClient(uint64_t a1, xpc_connection_t *a2)
{
  if (MEMORY[0x245CBA150](*a2) != MEMORY[0x277D86450])
  {
    return 0;
  }

  pid = xpc_connection_get_pid(*a2);
  v5 = *a2;
  v27 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v27 = v5;
  }

  isEntitled = abb::link::XpcLinkAccepter::Configuration::isEntitled((a1 + 40), &v27);
  xpc_release(v5);
  v27 = 0;
  if ((isEntitled & 1) == 0)
  {
    return 0;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24.__r_.__value_.__s + 23) = 9;
  strcpy(&v24, "link.xpc.");
  std::to_string(&v23, pid);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v24, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v29 = v9->__r_.__value_.__r.__words[2];
  handler = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = *a2;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  abb::link::XpcServerLink::create(&handler, &object, &v25);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(handler);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    v13 = *(v25 + 56);
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_44:
    v13 = xpc_null_create();
    v14 = v25;
    v15 = *(v25 + 64);
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  operator delete(v24.__r_.__value_.__l.__data_);
  v13 = *(v25 + 56);
  if (!v13)
  {
    goto LABEL_44;
  }

LABEL_20:
  xpc_retain(v13);
  v14 = v25;
  v15 = *(v25 + 64);
  if (v15)
  {
LABEL_21:
    dispatch_retain(v15);
    v14 = v25;
  }

LABEL_22:
  v16 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
  }

  *&handler = MEMORY[0x277D85DD0];
  *(&handler + 1) = 1174405120;
  v29 = ___ZNK3ctu15XpcServerHelper12acceptClientIN3abb4link13XpcServerLinkEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
  v30 = &__block_descriptor_tmp_11;
  v31 = v14;
  v32 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v13;
  xpc_connection_set_event_handler(v13, &handler);
  xpc_connection_set_target_queue(v13, v15);
  xpc_connection_resume(v13);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  xpc_release(v13);
  v17 = *(a1 + 64);
  v20 = v25;
  v21 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v17 + 16))(v17, &v20);
  v18 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = v26;
  if (v26)
  {
    if (!atomic_fetch_add((v26 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

  return 1;
}

void sub_24011C788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void sub_24011C7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (a35)
  {
    std::__shared_weak_count::__release_weak(a35);
    if (!v37)
    {
LABEL_3:
      if (!v36)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v37)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v37);
  if (!v36)
  {
LABEL_5:
    xpc_release(v35);
    std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a24);
    _Unwind_Resume(a1);
  }

LABEL_4:
  dispatch_release(v36);
  goto LABEL_5;
}

void abb::link::LocalLinkAccepter::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  v5 = *a1;
  *a1 = 0;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_2852180C0;
  v4[3] = v5;
  v4[4] = 0;
  *a2 = v4;
  v6 = operator new(0x20uLL);
  v6[2] = 0;
  v6[1] = 0;
  *v6 = &unk_2852182A8;
  v6[3] = v4;
  a2[1] = v6;
  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
  v4[1] = v4;
  v4[2] = v6;
  if (!atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = v6;
    (*(*v6 + 16))();

    std::__shared_weak_count::__release_weak(v7);
  }
}

void *abb::link::LocalLinkAccepter::LocalLinkAccepter(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2852180C0;
  result[3] = *a2;
  *a2 = 0;
  result[4] = 0;
  return result;
}

{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2852180C0;
  result[3] = *a2;
  *a2 = 0;
  result[4] = 0;
  return result;
}

void abb::link::LocalLinkAccepter::createClientLink(NSObject **this@<X0>, void *a2@<X8>)
{
  v3 = this;
  v2 = this[3];
  *a2 = 0;
  a2[1] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN8dispatch9sync_implIZN3abb4link17LocalLinkAccepter16createClientLinkEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_12;
  block[4] = a2;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void abb::link::LocalLinkAccepter::handleNewClient(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *&v11 = a1;
    *(&v11 + 1) = v5;
    v12 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *a2;
      goto LABEL_6;
    }
  }

  else
  {
    *&v11 = a1;
    *(&v11 + 1) = a1[1];
    v12 = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
LABEL_6:
  v7 = a3[1];
  *&v14 = *a3;
  *(&v14 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1[3];
  v9 = operator new(0x40uLL);
  *&v9->__r_.__value_.__l.__data_ = v11;
  v9->__r_.__value_.__r.__words[2] = v12;
  v9[1] = __p;
  memset(&__p, 0, sizeof(__p));
  *&v9[2].__r_.__value_.__l.__data_ = v14;
  v14 = 0uLL;
  dispatch_async_f(v8, v9, dispatch::async<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0,std::default_delete<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0>>)::{lambda(void *)#1}::__invoke);
  v10 = *(&v14 + 1);
  if (!*(&v14 + 1) || atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_11:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_12:
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_24011CC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v11);
  _Unwind_Resume(exception_object);
}

void abb::link::XpcLinkAccepter::~XpcLinkAccepter(abb::link::XpcLinkAccepter *this)
{
  *this = &unk_285218090;
  MEMORY[0x245CB9EA0](this + 72);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  xpc_release(*(this + 3));
  *(this + 3) = 0;
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_285218090;
  MEMORY[0x245CB9EA0](this + 72);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  xpc_release(*(this + 3));
  *(this + 3) = 0;
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(this);
}

void abb::link::LocalLinkAccepter::~LocalLinkAccepter(abb::link::LocalLinkAccepter *this)
{
  *this = &unk_2852180C0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2852180C0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<abb::link::XpcLinkAccepter *,std::shared_ptr<abb::link::XpcLinkAccepter>::__shared_ptr_default_delete<abb::link::XpcLinkAccepter,abb::link::XpcLinkAccepter>,std::allocator<abb::link::XpcLinkAccepter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::link::XpcLinkAccepter *,std::shared_ptr<abb::link::XpcLinkAccepter>::__shared_ptr_default_delete<abb::link::XpcLinkAccepter,abb::link::XpcLinkAccepter>,std::allocator<abb::link::XpcLinkAccepter>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<abb::link::XpcLinkAccepter *,std::shared_ptr<abb::link::XpcLinkAccepter>::__shared_ptr_default_delete<abb::link::XpcLinkAccepter,abb::link::XpcLinkAccepter>,std::allocator<abb::link::XpcLinkAccepter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024011F711)
  {
    if (((v2 & 0x800000024011F711 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024011F711))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024011F711 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ___ZN8dispatch9sync_implIZN3abb4link15XpcLinkAccepter16createClientLinkEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(**(a1 + 40) + 24);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  object = xpc_endpoint_create(v2);
  if (!object)
  {
    object = xpc_null_create();
  }

  abb::link::XpcClientLink::create(&object, &v9);
  xpc_release(object);
  object = 0;
  v4 = v9;
  v3 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v5 = v10;
    if (v10)
    {
      if (!atomic_fetch_add((v10 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v6 = *(a1 + 32);
  v7 = v6[1];
  *v6 = v4;
  v6[1] = v3;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void dispatch::async<abb::link::XpcLinkAccepter::startAccepting(void)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::XpcLinkAccepter::startAccepting(void)::$_0,std::default_delete<abb::link::XpcLinkAccepter::startAccepting(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = (v2 + 72);
  ctu::XpcServerHelper::setListener();
  xpc_release(object);
  v5 = *(v2 + 32);
  if (v5)
  {
    dispatch_retain(*(v2 + 32));
  }

  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (MEMORY[0x245CBA150](*v4) == MEMORY[0x277D86450])
  {
    v8 = *v4;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu15XpcServerHelper13startListenerIN3abb4link15XpcLinkAccepterEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    handler[3] = &__block_descriptor_tmp_10;
    handler[4] = v4;
    handler[5] = v7;
    v11 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v8;
    xpc_connection_set_event_handler(v8, handler);
    xpc_connection_set_target_queue(*v4, v5);
    xpc_connection_resume(*v4);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  operator delete(a1);
}

void sub_24011D298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
    if (!v19)
    {
LABEL_3:
      if (!v18)
      {
LABEL_8:
        operator delete(v17);
        _Unwind_Resume(a1);
      }

LABEL_7:
      dispatch_release(v18);
      operator delete(v17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v19);
  if (!v18)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN3ctu15XpcServerHelper13startListenerIN3abb4link15XpcLinkAccepterEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[4];
  v14 = 0;
  v15 = 0;
  v4 = a1[6];
  if (v4)
  {
    v15 = std::__shared_weak_count::lock(v4);
    if (!v15)
    {
      return;
    }

    v6 = a1[5];
    v14 = v6;
    if (v6)
    {
      v7 = MEMORY[0x245CBA150](a2);
      v8 = MEMORY[0x277D86450];
      if (v7 != MEMORY[0x277D86450])
      {
        if (v7 == MEMORY[0x277D86480] && *ctu::XpcServerHelper::getListener(v3) == a1[7])
        {
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            a2 = xpc_null_create();
          }

          xpc_release(a2);
        }

        goto LABEL_21;
      }

      if (a2)
      {
        xpc_retain(a2);
        v13 = a2;
        v9 = a2;
      }

      else
      {
        v9 = xpc_null_create();
        v13 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x245CBA150](v9) == v8)
      {
        xpc_retain(v9);
        v10 = v9;
        goto LABEL_17;
      }

      v10 = xpc_null_create();
LABEL_16:
      v13 = v10;
LABEL_17:
      v11 = abb::link::XpcLinkAccepter::handleNewClient(v6, &v13);
      xpc_release(v10);
      v13 = 0;
      xpc_release(v9);
      if ((v11 & 1) == 0)
      {
        xpc_connection_cancel(a2);
      }
    }
  }

LABEL_21:
  v12 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);

    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_24011D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c51_ZTSNSt3__18weak_ptrIN3abb4link15XpcLinkAccepterEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c51_ZTSNSt3__18weak_ptrIN3abb4link15XpcLinkAccepterEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNK3ctu15XpcServerHelper12acceptClientIN3abb4link13XpcServerLinkEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v15 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = a1[4];
      v14[1] = v7;
      if (!v7)
      {
        goto LABEL_23;
      }

      v8 = MEMORY[0x245CBA150](a2);
      v9 = MEMORY[0x277D86468];
      if (v8 != MEMORY[0x277D86468])
      {
        if (v8 != MEMORY[0x277D86480])
        {
          goto LABEL_23;
        }

        v10 = a1[6];
        v14[0] = v10;
        if (v10)
        {
          xpc_retain(v10);
          object = a2;
          if (a2)
          {
LABEL_8:
            xpc_retain(a2);
LABEL_19:
            abb::link::XpcServerLink::handleClientError(v7);
            xpc_release(object);
            xpc_release(v14[0]);
LABEL_23:
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            return;
          }
        }

        else
        {
          object = a2;
          v14[0] = xpc_null_create();
          if (a2)
          {
            goto LABEL_8;
          }
        }

        object = xpc_null_create();
        goto LABEL_19;
      }

      v11 = a1[6];
      v14[0] = v11;
      if (v11)
      {
        xpc_retain(v11);
        if (a2)
        {
LABEL_11:
          xpc_retain(a2);
          object = a2;
          goto LABEL_14;
        }
      }

      else
      {
        v14[0] = xpc_null_create();
        if (a2)
        {
          goto LABEL_11;
        }
      }

      a2 = xpc_null_create();
      object = a2;
      if (!a2)
      {
        v12 = xpc_null_create();
        a2 = 0;
        goto LABEL_21;
      }

LABEL_14:
      if (MEMORY[0x245CBA150](a2) == v9)
      {
        xpc_retain(a2);
        goto LABEL_22;
      }

      v12 = xpc_null_create();
LABEL_21:
      object = v12;
LABEL_22:
      abb::link::XpcServerLink::handleClientMessage(v7, v14, &object);
      xpc_release(object);
      object = 0;
      xpc_release(a2);
      xpc_release(v14[0]);
      v6 = v15;
      if (!v15)
      {
        return;
      }

      goto LABEL_23;
    }
  }
}

void sub_24011D744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, char a11)
{
  xpc_release(object);
  xpc_release(a10);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3abb4link13XpcServerLinkEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3abb4link13XpcServerLinkEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_pointer<abb::link::LocalLinkAccepter *,std::shared_ptr<abb::link::LocalLinkAccepter>::__shared_ptr_default_delete<abb::link::LocalLinkAccepter,abb::link::LocalLinkAccepter>,std::allocator<abb::link::LocalLinkAccepter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::link::LocalLinkAccepter *,std::shared_ptr<abb::link::LocalLinkAccepter>::__shared_ptr_default_delete<abb::link::LocalLinkAccepter,abb::link::LocalLinkAccepter>,std::allocator<abb::link::LocalLinkAccepter>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<abb::link::LocalLinkAccepter *,std::shared_ptr<abb::link::LocalLinkAccepter>::__shared_ptr_default_delete<abb::link::LocalLinkAccepter,abb::link::LocalLinkAccepter>,std::allocator<abb::link::LocalLinkAccepter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024011F7F6)
  {
    if (((v2 & 0x800000024011F7F6 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024011F7F6))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024011F7F6 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ___ZN8dispatch9sync_implIZN3abb4link17LocalLinkAccepter16createClientLinkEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = **(a1 + 40);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x68uLL);
  v3[2] = 0;
  v3[3] = 0;
  *v3 = &unk_2852178E0;
  v3[1] = &unk_285217940;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 96) = 0;
  std::shared_ptr<abb::link::LocalClientLink>::shared_ptr[abi:ne200100]<abb::link::LocalClientLink,0>(&v12, v3);
  v4 = v12;
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 48);
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
    v4 = v12;
  }

  v8 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v9 = v13;
    if (v13)
    {
      if (!atomic_fetch_add((v13 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  v10 = *(a1 + 32);
  v11 = v10[1];
  *v10 = v4;
  v10[1] = v8;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

uint64_t *std::unique_ptr<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0,std::default_delete<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  v3 = *(v2 + 56);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(v2 + 47) < 0)
  {
LABEL_5:
    operator delete(*(v2 + 24));
  }

LABEL_6:
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v2);
  return a1;
}

void dispatch::async<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0,std::default_delete<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v34 = v4;
    if (v4)
    {
      if (!a1[1])
      {
        goto LABEL_49;
      }

      v31 = 0xAAAAAAAAAAAAAAAALL;
      v32 = 0xAAAAAAAAAAAAAAAALL;
      abb::link::LocalServerLink::create((a1 + 3), &v31);
      v5 = v31;
      v7 = a1[6];
      v6 = a1[7];
      v29 = v7;
      v30 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = operator new(0x18uLL);
      *v8 = &unk_2852182F8;
      v8[1] = v7;
      v8[2] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v5 + 64);
      *(v5 + 64) = v8;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v11 = a1[6];
      v10 = a1[7];
      if (v11)
      {
        v12 = v11 - 8;
      }

      else
      {
        v12 = 0;
      }

      v27 = v12;
      v28 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v31;
      v14 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);
      }

      v15 = operator new(0x18uLL);
      *v15 = &unk_285218348;
      v15[1] = v13;
      v15[2] = v14;
      v16 = *(v12 + 32);
      *(v12 + 32) = v15;
      if (v16)
      {
        (*(*v16 + 8))(v16);
        v13 = v31;
        v14 = v32;
      }

      v17 = *(v3 + 32);
      v25 = v13;
      v26 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v17 + 16))(v17, &v25);
      v18 = v26;
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v20 = v32;
      if (v32 && !atomic_fetch_add((v32 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v4 = v34;
      if (v34)
      {
LABEL_49:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v21 = v4;
          (v4->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v21);
        }
      }
    }
  }

  if (a1)
  {
    v22 = a1[7];
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((*(a1 + 47) & 0x80000000) == 0)
    {
LABEL_41:
      v23 = a1[2];
      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      operator delete(a1);
      return;
    }

    operator delete(a1[3]);
    goto LABEL_41;
  }
}

void sub_24011DECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](va2);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](va3);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](v2 - 64);
  std::unique_ptr<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0,std::default_delete<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24011DF30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](v2 - 64);
  std::unique_ptr<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0,std::default_delete<abb::link::LocalLinkAccepter::handleNewClient(std::string const&,std::shared_ptr<abb::link::ClientHandleBase>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t abb::link::ClientHandle<abb::link::ClientHandleBase>::~ClientHandle(uint64_t result)
{
  *result = &unk_2852182F8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void abb::link::ClientHandle<abb::link::ClientHandleBase>::~ClientHandle(std::__shared_weak_count **a1)
{
  *a1 = &unk_2852182F8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void abb::link::ClientHandle<abb::link::ClientHandleBase>::handleServerMessage(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    object[2] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      object[1] = v7;
      if (v7)
      {
        object[0] = *a2;
        *a2 = xpc_null_create();
        (*(*v7 + 16))(v7, object);
        xpc_release(object[0]);
        object[0] = 0;
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_24011E0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void abb::link::ClientHandle<abb::link::ClientHandleBase>::handleServerMessage(uint64_t a1, xpc_object_t *a2, dispatch_object_t *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v9 = std::__shared_weak_count::lock(v5);
  v16[2] = v9;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *(a1 + 8);
  v16[1] = v11;
  if (v11)
  {
    v16[0] = *a2;
    *a2 = xpc_null_create();
    object = *a3;
    *a3 = 0;
    v12 = *(a4 + 24);
    if (v12)
    {
      if (v12 == a4)
      {
        v18 = v17;
        (*(*v12 + 24))(v12, v17);
      }

      else
      {
        v18 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    (*(*v11 + 24))(v11, v16, &object, v17);
    if (v18 == v17)
    {
      (*(*v18 + 32))(v18);
      v13 = object;
      if (!object)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v18)
      {
        (*(*v18 + 40))();
      }

      v13 = object;
      if (!object)
      {
        goto LABEL_14;
      }
    }

    dispatch_release(v13);
LABEL_14:
    xpc_release(v16[0]);
    v16[0] = 0;
  }

  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_24011E324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, char a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::link::ClientHandle<abb::link::ClientHandleBase>::handleServerError(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    object[2] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      object[1] = v7;
      if (v7)
      {
        object[0] = *a2;
        *a2 = xpc_null_create();
        (*(*v7 + 32))(v7, object);
        xpc_release(object[0]);
        object[0] = 0;
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_24011E474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t abb::link::ServerHandle<abb::link::LocalServerLink>::~ServerHandle(uint64_t result)
{
  *result = &unk_285218348;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void abb::link::ServerHandle<abb::link::LocalServerLink>::~ServerHandle(std::__shared_weak_count **a1)
{
  *a1 = &unk_285218348;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void abb::link::ServerHandle<abb::link::LocalServerLink>::handleClientMessage(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    object[2] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      object[1] = v7;
      if (v7)
      {
        object[0] = *a2;
        *a2 = xpc_null_create();
        abb::link::LocalServerLink::handleClientMessage(v7, object);
        xpc_release(object[0]);
        object[0] = 0;
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_24011E628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void abb::link::ServerHandle<abb::link::LocalServerLink>::handleClientMessage(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    object[2] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      object[1] = v9;
      if (v9)
      {
        object[0] = *a2;
        *a2 = xpc_null_create();
        v10 = *(a3 + 24);
        if (v10)
        {
          if (v10 == a3)
          {
            v16 = v15;
            (*(*v10 + 24))(v10, v15);
          }

          else
          {
            v16 = *(a3 + 24);
            *(a3 + 24) = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        abb::link::LocalServerLink::handleClientMessage(v9, object, v15);
        if (v16 == v15)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16, v11, v12);
        }

        xpc_release(object[0]);
        object[0] = 0;
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24011E804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::link::ServerHandle<abb::link::LocalServerLink>::handleClientError(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        object = *a2;
        *a2 = xpc_null_create();
        abb::link::LocalServerLink::handleClientError(v7);
        xpc_release(object);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_24011E928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<void const>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}