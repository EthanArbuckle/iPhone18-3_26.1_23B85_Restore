uint64_t _pthread_globals_init(uint64_t result)
{
  for (i = 0; i < 7u; ++i)
  {
    *(result + 272 + 2 * i) = -1;
    *(result + 286 + 2 * i) = -1;
    *(result + 300 + 2 * i) = -1;
  }

  return result;
}

int pthread_attr_destroy(pthread_attr_t *a1)
{
  v2 = 22;
  if (a1->__sig == 1414022209)
  {
    if (!*&a1->__opaque[40] || *&a1->__opaque[40] == -1)
    {
      a1->__sig = 0;
      return 0;
    }

    else
    {
      v2 = mach_port_mod_refs(mach_task_self_, *&a1->__opaque[40], 0, -1);
      if (!v2)
      {
        a1->__sig = 0;
      }
    }
  }

  return v2;
}

int pthread_attr_getdetachstate(const pthread_attr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = a1->__opaque[32];
    return 0;
  }

  return v3;
}

int pthread_attr_getinheritsched(const pthread_attr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = BYTE1(*&a1->__opaque[32]);
    return 0;
  }

  return v3;
}

int pthread_attr_getschedparam(const pthread_attr_t *a1, sched_param *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    if ((*&a1->__opaque[32] >> 24))
    {
      *a2 = *&a1->__opaque[24];
    }

    else
    {
      a2->sched_priority = default_priority;
      *a2->__opaque = 10;
    }

    return 0;
  }

  return v3;
}

int pthread_attr_getschedpolicy(const pthread_attr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = BYTE2(*&a1->__opaque[32]);
    return 0;
  }

  return v3;
}

int pthread_attr_setdetachstate(pthread_attr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209 && (a2 == 1 || a2 == 2))
  {
    *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFFFFFF00 | a2;
    return 0;
  }

  return v3;
}

int pthread_attr_setinheritsched(pthread_attr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209 && (a2 == 1 || a2 == 2))
  {
    *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFFFF00FFLL | (a2 << 8);
    return 0;
  }

  return v3;
}

int pthread_attr_setschedparam(pthread_attr_t *a1, const sched_param *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *&a1->__opaque[24] = *a2;
    *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFEFFFFFFLL | 0x1000000;
    return 0;
  }

  return v3;
}

int pthread_attr_setschedpolicy(pthread_attr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209 && (a2 == 1 || a2 == 2 || a2 == 4))
  {
    if (a2 != 2 && a2 != 4)
    {
      *&a1->__opaque[32] &= ~0x8000000uLL;
    }

    *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFF00FFFFLL | (a2 << 16);
    *&a1->__opaque[32] = *&a1->__opaque[32] & 0xFFFFFFFFFBFFFFFFLL | 0x4000000;
    return 0;
  }

  return v3;
}

int pthread_attr_setscope(pthread_attr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    if (a2 == 1)
    {
      return 0;
    }

    else if (a2 == 2)
    {
      return 45;
    }
  }

  return v3;
}

int pthread_attr_getscope(const pthread_attr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = 1;
    return 0;
  }

  return v3;
}

int pthread_attr_getstackaddr(const pthread_attr_t *a1, void **a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = *&a1->__opaque[8];
    return 0;
  }

  return v3;
}

int pthread_attr_setstackaddr(pthread_attr_t *a1, void *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209 && (a2 & vm_page_mask) == 0)
  {
    *&a1->__opaque[8] = a2;
    *&a1->__opaque[32] &= ~0x10000000uLL;
    *a1->__opaque = 0;
    return 0;
  }

  return v3;
}

int pthread_attr_getstacksize(const pthread_attr_t *a1, size_t *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = _pthread_attr_stacksize(a1);
    return 0;
  }

  return v3;
}

uint64_t _pthread_attr_stacksize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return 0x80000;
  }
}

int pthread_attr_setstacksize(pthread_attr_t *a1, size_t a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209 && (a2 & vm_page_mask) == 0 && a2 >= 0x4000)
  {
    *&a1->__opaque[16] = a2;
    return 0;
  }

  return v3;
}

int pthread_attr_getstack(const pthread_attr_t *a1, void **a2, size_t *a3)
{
  v4 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = (*&a1->__opaque[8] - *&a1->__opaque[16]);
    *a3 = _pthread_attr_stacksize(a1);
    return 0;
  }

  return v4;
}

int pthread_attr_setstack(pthread_attr_t *a1, void *a2, size_t a3)
{
  v4 = 22;
  if (a1->__sig == 1414022209 && (a2 & vm_page_mask) == 0 && (a3 & vm_page_mask) == 0 && a3 >= 0x4000)
  {
    *&a1->__opaque[8] = a2 + a3;
    *&a1->__opaque[16] = a3;
    return 0;
  }

  return v4;
}

int pthread_attr_setguardsize(pthread_attr_t *a1, size_t a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209 && (a2 & vm_page_mask) == 0)
  {
    *&a1->__opaque[32] &= ~0x10000000uLL;
    *a1->__opaque = a2;
    return 0;
  }

  return v3;
}

int pthread_attr_getguardsize(const pthread_attr_t *a1, size_t *a2)
{
  v3 = 22;
  if (a1->__sig == 1414022209)
  {
    *a2 = _pthread_attr_guardsize(a1);
    return 0;
  }

  return v3;
}

vm_size_t _pthread_attr_guardsize(uint64_t a1)
{
  if ((*(a1 + 40) >> 28))
  {
    return vm_page_size;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t pthread_attr_setcpupercent_np(void *a1, int a2, unint64_t a3)
{
  v4 = 22;
  if (*a1 == 1414022209 && a2 < 255 && a3 < 0x1FFFFFF && ((a1[5] >> 26) & 1) != 0 && (BYTE2(a1[5]) == 2 || BYTE2(a1[5]) == 4))
  {
    a1[5] = a1[5] & 0xFFFFFF00FFFFFFFFLL | (a2 << 32);
    a1[5] = a1[5] & 0xFFFFFFFFFFLL | ((a3 & 0xFFFFFF) << 40);
    a1[5] = a1[5] & 0xFFFFFFFFF7FFFFFFLL | 0x8000000;
    return 0;
  }

  return v4;
}

uint64_t pthread_attr_setworkinterval_np(uint64_t a1, mach_port_name_t a2)
{
  v3 = 22;
  if (*a1 == 1414022209)
  {
    if (a2)
    {
      if (a2 != -1)
      {
        v3 = mach_port_mod_refs(mach_task_self_, a2, 0, 1);
        if (!v3)
        {
          *(a1 + 48) = a2;
        }
      }
    }
  }

  return v3;
}

uint64_t _pthread_deallocate(uint64_t result, char a2)
{
  v2 = result;
  if (result != _main_thread_ptr)
  {
    if ((a2 & 1) == 0)
    {
      _pthread_introspection_thread_destroy(result);
    }

    result = mach_vm_deallocate(mach_task_self_, *(v2 + 192), *(v2 + 200));
    if (result)
    {
      qword_28028 = "BUG IN LIBPTHREAD: Unable to deallocate stack";
      qword_28058 = result;
      __break(0xB001u);
    }
  }

  return result;
}

uint64_t _pthread_introspection_thread_destroy(uint64_t result)
{
  if (_pthread_introspection_hook)
  {
    return _pthread_introspection_hook_callout_thread_destroy(result);
  }

  return result;
}

void _pthread_start(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if ((HIBYTE(a6) >> 5))
  {
    qword_28028 = "BUG IN LIBPTHREAD: kernel without PTHREAD_START_SUSPENDED support";
    qword_28058 = a6;
    __break(0xB001u);
  }

  if ((a6 & 0x10000000) == 0)
  {
    qword_28028 = "BUG IN LIBPTHREAD: thread_set_tsd_base() wasn't called by the kernel";
    qword_28058 = a6;
    __break(0xB001u);
  }

  v8 = 0;
  if (a2)
  {
    v8 = a2 != -1;
  }

  if (!v8)
  {
    qword_28028 = "BUG IN LIBPTHREAD: Assertion failed: MACH_PORT_VALID(kport)";
    __break(0xB001u);
  }

  if (*(a1 + 248) != a2)
  {
    qword_28028 = "BUG IN LIBPTHREAD: Assertion failed: _pthread_tsd_slot(self, MACH_THREAD_SELF) == kport";
    __break(0xB001u);
  }

  if ((*a1 ^ _pthread_ptr_munge_token) != a1)
  {
    abort_with_reason();
  }

  _pthread_markcancel_if_canceled(a1);
  *(a1 + 216) = __thread_selfid();
  if (*(a1 + 216) == -1)
  {
    qword_28028 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
  }

  v10 = *(a1 + 248);
  v7 = 0;
  if (v10)
  {
    v7 = v10 != -1;
  }

  if (!v7)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak";
    qword_28058 = v10;
    __break(0xB001u);
  }

  _pthread_introspection_thread_start(a1);
  v6 = (*(a1 + 144))(*(a1 + 152));
  _pthread_exit(a1, v6);
}

void _pthread_exit(unint64_t a1, uint64_t a2)
{
  __disable_threadsignal();
  _pthread_setcancelstate_exit(a1);
  while (1)
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      break;
    }

    (*v2)(*(v2 + 8));
    *(a1 + 8) = *(v2 + 16);
  }

  _pthread_tsd_cleanup(a1);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72);
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72) = 0;
  if (v5)
  {
    _os_semaphore_dispose();
  }

  _pthread_terminate_invoke(a1, a2);
  pthread_is_threaded_np();
}

mach_port_t pthread_mach_thread_np(pthread_t a1)
{
  v3 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v5 = 0;
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = StatusReg;
  if (a1 == (StatusReg - 224))
  {
    v9 = v7;
    v8 = v7->__sig ^ _pthread_ptr_munge_token;
    if (v8 != v7)
    {
      abort_with_reason();
    }

    v4 = 1;
    v5 = *&v7->__opaque[232];
  }

  else
  {
    v13 = v7;
    i = 0;
    if (v7)
    {
      v17 = &_pthread_list_lock;
      os_unfair_lock_lock_with_options();
      for (i = __pthread_head; ; i = *(i + 2))
      {
        if (!i)
        {
          v18 = &_pthread_list_lock;
          os_unfair_lock_unlock(&_pthread_list_lock);
          v14 = 0;
          goto LABEL_15;
        }

        if (i == v13)
        {
          break;
        }
      }

      v16 = i;
      v15 = *i ^ _pthread_ptr_munge_token;
      if (v15 != i)
      {
        abort_with_reason();
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

LABEL_15:
    if (v14)
    {
      v5 = *&v7->__opaque[232];
      v4 = 1;
      lock = &_pthread_list_lock;
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    else
    {
      v4 = 0;
    }
  }

  if (v6)
  {
    *v6 = v5;
  }

  return v2;
}

pthread_t pthread_from_mach_thread_np(mach_port_t a1)
{
  os_unfair_lock_lock_with_options();
    ;
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  return i;
}

size_t pthread_get_stacksize_np(pthread_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 3;
  }

  if (a1 == (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) || a1 == _main_thread_ptr)
  {
    v3 = *&a1->__opaque[160] - *&a1->__opaque[168];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    for (i = __pthread_head; ; i = *(i + 2))
    {
      if (!i)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
        v7 = 0;
        goto LABEL_14;
      }

      if (i == a1)
      {
        break;
      }
    }

    if ((*i ^ _pthread_ptr_munge_token) != i)
    {
      abort_with_reason();
    }

    v7 = 1;
LABEL_14:
    if (v7)
    {
      v3 = *&a1->__opaque[160] - *&a1->__opaque[168];
      os_unfair_lock_unlock(&_pthread_list_lock);
    }
  }

  if (v3)
  {
    return v3;
  }

  else
  {
    return 0x80000;
  }
}

void *__cdecl pthread_get_stackaddr_np(pthread_t a1)
{
  if (a1 == (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224) || a1 == _main_thread_ptr)
  {
    return *&a1->__opaque[160];
  }

  if (a1)
  {
    os_unfair_lock_lock_with_options();
    for (i = __pthread_head; ; i = *(i + 2))
    {
      if (!i)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
        v6 = 0;
        goto LABEL_14;
      }

      if (i == a1)
      {
        break;
      }
    }

    if ((*i ^ _pthread_ptr_munge_token) != i)
    {
      abort_with_reason();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_14:
  if ((v6 & 1) == 0)
  {
    return &dword_0 + 3;
  }

  v2 = *&a1->__opaque[160];
  os_unfair_lock_unlock(&_pthread_list_lock);
  return v2;
}

int pthread_threadid_np(pthread_t a1, __uint64_t *a2)
{
  v4 = 0;
  v3 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
  if (!a2)
  {
    return 22;
  }

  if (a1 && a1 != v3)
  {
    os_unfair_lock_lock_with_options();
    for (i = __pthread_head; ; i = *i->__opaque)
    {
      if (!i)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
        v9 = 0;
        goto LABEL_14;
      }

      if (i == a1)
      {
        break;
      }
    }

    if ((i->__sig ^ _pthread_ptr_munge_token) != i)
    {
      abort_with_reason();
    }

    v9 = 1;
LABEL_14:
    if (v9)
    {
      *a2 = *&a1->__opaque[200];
      if (!*a2)
      {
        v4 = _pthread_threadid_slow(a1, a2);
      }

      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    else
    {
      return 3;
    }
  }

  else
  {
    *a2 = *(v3 + 216);
  }

  return v4;
}

uint64_t _pthread_threadid_slow(uint64_t a1, void *a2)
{
  v9 = a1;
  v8 = a2;
  thread_info_outCnt = 6;
  v6 = *(a1 + 248);
  *thread_info_out = 0;
  v4 = 0;
  v5 = 0;
  if (thread_info(v6, 4u, thread_info_out, &thread_info_outCnt) || !*thread_info_out)
  {
    return 22;
  }

  else
  {
    *v8 = *thread_info_out;
    *(v9 + 216) = *thread_info_out;
    return 0;
  }
}

uint64_t pthread_cpu_number_np(unint64_t *a1)
{
  if (a1)
  {
    *a1 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
    return 0;
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

int pthread_getname_np(pthread_t a1, char *a2, size_t a3)
{
  if (a1 == (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224))
  {
    _platform_strlcpy();
    return 0;
  }

  else
  {
    if (a1)
    {
      os_unfair_lock_lock_with_options();
      for (i = __pthread_head; ; i = *(i + 2))
      {
        if (!i)
        {
          os_unfair_lock_unlock(&_pthread_list_lock);
          v7 = 0;
          goto LABEL_13;
        }

        if (i == a1)
        {
          break;
        }
      }

      if ((*i ^ _pthread_ptr_munge_token) != i)
      {
        abort_with_reason();
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

LABEL_13:
    if (v7)
    {
      _platform_strlcpy();
      os_unfair_lock_unlock(&_pthread_list_lock);
      return 0;
    }

    else
    {
      return 3;
    }
  }
}

int pthread_setname_np(const char *a1)
{
  v3 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
  v2 = 0;
  if (a1)
  {
    v2 = _platform_strlen();
  }

  if ((*v3 ^ _pthread_ptr_munge_token) != v3)
  {
    abort_with_reason();
  }

  getpid();
  v4 = __proc_info();
  if (!v4)
  {
    if (v2)
    {
      _platform_strlcpy();
    }

    else
    {
      _platform_bzero();
    }
  }

  return v4;
}

uint64_t _pthread_create(mach_vm_address_t *a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = 0;
  v11 = 0;
  v10 = a5 & 1;
  name = 0;
  v8 = 0;
  if (a2)
  {
    if (*v16 != 1414022209)
    {
      return 22;
    }
  }

  else
  {
    v16 = "ADHT";
  }

  v7 = 0x1000000;
  if ((*(v16 + 10) & 0x1000000) != 0)
  {
    v6 = 0;
    v20 = v16;
    v19 = &v6;
    if ((*(v16 + 10) & 0x1000000) != 0)
    {
      *v19 = *(v20 + 4);
    }

    else
    {
      *v19 = default_priority;
      *(v19 + 1) = 10;
    }

    v7 |= 0x2000000u;
    v7 |= *(v16 + 42) << 16;
    v7 |= v6;
  }

  else if (*(v16 + 4))
  {
    v7 |= 0x8000000 | *(v16 + 8) & 0xFFFFFF;
  }

  if ((v13 & 2) != 0)
  {
    v7 |= 0x20000000u;
  }

  __is_threaded = 1;
  v12 = _pthread_allocate(v16, (&v10 + 1), v10 & 1);
  if (v12)
  {
    if (v10)
    {
      name = mach_thread_self();
    }

    else
    {
      v21 = 3;
      v25 = 3;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      name = *(StatusReg + 24);
    }

    *(v12 + 152) = v14;
    *(v12 + 144) = v15;
    v29 = v12;
    v28 = name;
    v27 = v10 & 1;
    v35 = &_pthread_list_lock;
    v34 = name;
    os_unfair_lock_lock_no_tsd();
    *(v29 + 16) = 0;
    *(v29 + 24) = off_2C008;
    *off_2C008 = v29;
    off_2C008 = (v29 + 16);
    ++_pthread_count;
    v39 = &_pthread_list_lock;
    v38 = v28;
    os_unfair_lock_unlock_no_tsd();
    if ((v27 & 1) == 0)
    {
      _pthread_introspection_thread_create(v29);
    }

    if (__bsdthread_create() == -1)
    {
      v22 = 1;
      v23 = 1;
      v24 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      if (**(v24 + 8) == 24)
      {
        qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak";
        __break(0xB001u);
      }

      v31 = v12;
      v30 = name;
      v33 = &_pthread_list_lock;
      v32 = name;
      os_unfair_lock_lock_no_tsd();
      if (*(v31 + 16))
      {
        *(*(v31 + 16) + 24) = *(v31 + 24);
      }

      else
      {
        off_2C008 = *(v31 + 24);
      }

      **(v31 + 24) = *(v31 + 16);
      --_pthread_count;
      v37 = &_pthread_list_lock;
      v36 = v30;
      os_unfair_lock_unlock_no_tsd();
      _pthread_deallocate(v12, v10 & 1);
      v12 = 0;
      v8 = 35;
    }

    if (v10)
    {
      mach_port_deallocate(mach_task_self_, name);
    }

    *v17 = v12;
    return v8;
  }

  else
  {
    return 35;
  }
}

uint64_t pthread_install_workgroup_functions_np(uint64_t result)
{
  if (_pthread_workgroup_functions)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: workgroup functions already installed";
    qword_28058 = _pthread_workgroup_functions;
    __break(0xB001u);
  }

  _pthread_workgroup_functions = result;
  return result;
}

uint64_t pthread_create_with_workgroup_np(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!_pthread_workgroup_functions)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: workgroup functions not yet installed";
    __break(0xB001u);
  }

  return (*(_pthread_workgroup_functions + 8))(a1, a2, a3, a4, a5);
}

int pthread_detach(pthread_t a1)
{
  v4 = 0;
  v3 = 0;
  v2 = 0;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    for (i = __pthread_head; ; i = *(i + 2))
    {
      if (!i)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
        v9 = 0;
        goto LABEL_11;
      }

      if (i == a1)
      {
        break;
      }
    }

    if ((*i ^ _pthread_ptr_munge_token) != i)
    {
      abort_with_reason();
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  if ((v9 & 1) == 0)
  {
    return 3;
  }

  if (a1->__opaque[33])
  {
    if (*&a1->__opaque[36] == -1)
    {
      v3 = 1;
    }

    else
    {
      a1->__opaque[33] &= ~1u;
      if (*&a1->__opaque[16])
      {
        _pthread_joiner_prepost_wake(a1);
        v2 = 1;
      }
    }
  }

  else
  {
    v4 = 22;
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  if (v3)
  {
    pthread_join_NOCANCEL(a1, 0);
  }

  else if (v2)
  {
    _pthread_joiner_wake();
  }

  return v4;
}

uint64_t _pthread_joiner_wake()
{
  while (1)
  {
    result = __ulock_wake();
    if (!result || result == -2)
    {
      break;
    }

    if (result != -4)
    {
      qword_28028 = "BUG IN LIBPTHREAD: pthread_join() wake failure";
      qword_28058 = -result;
      __break(0xB001u);
    }
  }

  return result;
}

int pthread_kill(pthread_t a1, int a2)
{
  v6 = a1;
  v5 = a2;
  if (a2 < 0 || v5 > 32)
  {
    return 22;
  }

  v4 = 0;
  v11 = v6;
  v10 = &v4;
  v9 = 0;
  v8 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v15 = StatusReg;
  if (v6 == (StatusReg - 224))
  {
    v13 = v11;
    v12 = v11->__sig ^ _pthread_ptr_munge_token;
    if (v12 != v11)
    {
      abort_with_reason();
    }

    v8 = 1;
    v9 = *&v11->__opaque[232];
  }

  else
  {
    v17 = v11;
    i = 0;
    if (v11)
    {
      v21 = &_pthread_list_lock;
      os_unfair_lock_lock_with_options();
      for (i = __pthread_head; ; i = *(i + 2))
      {
        if (!i)
        {
          v22 = &_pthread_list_lock;
          os_unfair_lock_unlock(&_pthread_list_lock);
          v18 = 0;
          goto LABEL_18;
        }

        if (i == v17)
        {
          break;
        }
      }

      v20 = i;
      v19 = *i ^ _pthread_ptr_munge_token;
      if (v19 != i)
      {
        abort_with_reason();
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

LABEL_18:
    if (v18)
    {
      v9 = *&v11->__opaque[232];
      v8 = 1;
      lock = &_pthread_list_lock;
      os_unfair_lock_unlock(&_pthread_list_lock);
    }

    else
    {
      v8 = 0;
    }
  }

  if (v10)
  {
    *v10 = v9;
  }

  if ((v8 & 1) == 0)
  {
    return 3;
  }

  v3 = __pthread_kill();
  if (v3 == -1)
  {
    v24 = 1;
    v25 = 1;
    v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    return **(v26 + 8);
  }

  return v3;
}

void pthread_exit(void *a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = (StatusReg - 224);
  if ((*(StatusReg - 146) & 0x400) != 0)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: pthread_exit() called from a thread not created by pthread_create()";
    __break(0xB001u);
  }

  if ((*v1 ^ _pthread_ptr_munge_token) != v1)
  {
    abort_with_reason();
  }

  _pthread_exit(v1, a1);
}

int pthread_getschedparam(pthread_t a1, int *a2, sched_param *a3)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    for (i = __pthread_head; ; i = *(i + 2))
    {
      if (!i)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
        v10 = 0;
        goto LABEL_11;
      }

      if (i == a1)
      {
        break;
      }
    }

    if ((*i ^ _pthread_ptr_munge_token) != i)
    {
      abort_with_reason();
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    return 3;
  }

  if (a2)
  {
    *a2 = a1->__opaque[32];
  }

  if (a3)
  {
    *a3 = *&a1->__opaque[40];
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  return 0;
}

int pthread_setschedparam(pthread_t a1, int a2, const sched_param *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = StatusReg;
  if (a1 == (StatusReg - 224) || v9 == _main_thread_ptr)
  {
    v12 = v9;
    v11 = v9->__sig ^ _pthread_ptr_munge_token;
    if (v11 != v9)
    {
      abort_with_reason();
    }

    v6 = *&v9->__opaque[232];
  }

  else
  {
    v5 = 0;
    v16 = v9;
    v15 = &v6;
    v14 = 0;
    v13 = 0;
    v49 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = v49;
    if (v9 == (v49 - 224))
    {
      v18 = v16;
      v17 = v16->__sig ^ _pthread_ptr_munge_token;
      if (v17 != v16)
      {
        abort_with_reason();
      }

      v13 = 1;
      v14 = *&v16->__opaque[232];
    }

    else
    {
      v25 = v16;
      i = 0;
      if (v16)
      {
        v29 = &_pthread_list_lock;
        os_unfair_lock_lock_with_options();
        for (i = __pthread_head; ; i = *(i + 2))
        {
          if (!i)
          {
            v30 = &_pthread_list_lock;
            os_unfair_lock_unlock(&_pthread_list_lock);
            v26 = 0;
            goto LABEL_20;
          }

          if (i == v25)
          {
            break;
          }
        }

        v28 = i;
        v27 = *i ^ _pthread_ptr_munge_token;
        if (v27 != i)
        {
          abort_with_reason();
        }

        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

LABEL_20:
      if (v26)
      {
        v14 = *&v16->__opaque[232];
        v13 = 1;
        lock = &_pthread_list_lock;
        os_unfair_lock_unlock(&_pthread_list_lock);
      }

      else
      {
        v13 = 0;
      }
    }

    if (v15)
    {
      *v15 = v14;
    }

    if ((v13 & 1) == 0)
    {
      return 3;
    }
  }

  v46 = v9;
  v45 = v6;
  v44 = v8;
  v43 = v7;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  if ((*&v9->__opaque[62] & 0x400) == 0)
  {
    switch(v44)
    {
      case 1:
        LODWORD(v41) = v43->sched_priority;
        v40 = &v41;
        v39 = 1;
        break;
      case 2:
        HIDWORD(v41) = v43->sched_priority;
        LODWORD(v42) = *v43->__opaque;
        v40 = &v41 + 1;
        v39 = 2;
        break;
      case 4:
        HIDWORD(v42) = v43->sched_priority;
        v40 = &v42 + 1;
        v39 = 1;
        break;
      default:
        v47 = 22;
        goto LABEL_40;
    }

    v38 = thread_policy(v45, v44, v40, v39, 1);
    if (v38)
    {
      v3 = 22;
    }

    else
    {
      v3 = 0;
    }

    v47 = v3;
    goto LABEL_40;
  }

  v47 = 45;
LABEL_40:
  if (!v47)
  {
    if (v5)
    {
      v19 = &_pthread_list_lock;
      os_unfair_lock_lock_with_options();
    }

    else
    {
      v32 = v9;
      j = 0;
      if (v9)
      {
        v36 = &_pthread_list_lock;
        os_unfair_lock_lock_with_options();
        for (j = __pthread_head; ; j = *(j + 2))
        {
          if (!j)
          {
            v37 = &_pthread_list_lock;
            os_unfair_lock_unlock(&_pthread_list_lock);
            v33 = 0;
            goto LABEL_54;
          }

          if (j == v32)
          {
            break;
          }
        }

        v35 = j;
        v34 = *j ^ _pthread_ptr_munge_token;
        if (v34 != j)
        {
          abort_with_reason();
        }

        v33 = 1;
      }

      else
      {
        v33 = 0;
      }

LABEL_54:
      if ((v33 & 1) == 0)
      {
        return 3;
      }
    }

    v9->__opaque[32] = v8;
    *&v9->__opaque[40] = *v7;
    v21 = &_pthread_list_lock;
    os_unfair_lock_unlock(&_pthread_list_lock);
    return 0;
  }

  return v47;
}

uint64_t _pthread_set_self(uint64_t a1)
{
  *(a1 + 216) = __thread_selfid();
  if (*(a1 + 216) == -1)
  {
    qword_28028 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
  }

  return _thread_set_tsd_base();
}

int pthread_once(pthread_once_t *a1, void (*a2)(void))
{
  v4 = a1;
  v3[2] = a2;
  v3[0] = a1;
  v3[1] = a2;
  do
  {
    opaque = v4->__opaque;
    v9 = v3;
    v8 = __pthread_once_handler;
    explicit = atomic_load_explicit(v4->__opaque, memory_order_acquire);
    v7 = explicit;
    v5 = explicit;
    if (explicit != -1)
    {
      _os_once();
    }
  }

  while (v4->__sig == 816954554);
  return 0;
}

uint64_t __pthread_once_handler(uint64_t a1)
{
  v8 = a1;
  v7 = a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = StatusReg;
  v3 = StatusReg - 224;
  v2 = 0;
  if (&__os_once_reset)
  {
    v2 = &__os_once_reset;
  }

  v4 = v2;
  v5 = *v7 + 8;
  v6 = *(StatusReg - 216);
  *(StatusReg - 216) = &v4;
  result = (*(v7 + 8))();
  *(v3 + 8) = v6;
  **v7 = 1330529093;
  return result;
}

int pthread_setconcurrency(int a1)
{
  if (a1 < 0)
  {
    return 22;
  }

  pthread_concurrency = a1;
  return 0;
}

uint64_t __pthread_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  if (a1)
  {
    exitf = v27[1];
    if (*v27 >= 2uLL)
    {
      _pthread_malloc = v27[2];
      _pthread_free = v27[3];
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = StatusReg;
  v23 = StatusReg - 224;
  if (StatusReg == 224)
  {
    qword_28028 = "BUG IN LIBPTHREAD: PTHREAD_SELF TSD not initialized";
    __break(0xB001u);
  }

  _main_thread_ptr = v23;
  v30 = v23;
  v29 = v23;
  *v23 = v23 ^ _pthread_ptr_munge_token;
  v22 = 0;
  host_info_outCnt[1] = 5;
  host_info_outCnt[0] = 8;
  v20 = 0u;
  *host_info_out = 0u;
  host = mach_host_self();
  v22 = host_info(host, 5, host_info_out, host_info_outCnt);
  if (v22)
  {
    v17[1] = v22;
    qword_28028 = "BUG IN LIBPTHREAD: host_info() failed";
    qword_28058 = v22;
    __break(0xB001u);
  }

  default_priority = host_info_out[3];
  min_priority = BYTE8(v20);
  max_priority = BYTE12(v20);
  mach_port_deallocate(mach_task_self_, host);
  v17[0] = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  if (!parse_main_stack_params(v25, v17, &v16, &v15, &v14) || !v17[0] || !v16)
  {
    v13 = 8;
    v12 = 0x3B00000001;
    if (__sysctl())
    {
      v17[0] = 0x16FE00000;
    }

    v16 = 1032192;
    v15 = 0;
    v14 = 0;
  }

  parse_ptr_munge_params(v26, v25);
  v31 = 0;
  v51 = 4;
  v50 = 0;
  v49 = 0;
  v48 = 2303;
  v37 = v23;
  v36 = "ADHT";
  v35 = v17[0];
  v34 = v16;
  v33 = v15;
  v32 = v14;
  v41 = v23;
  v40 = v23;
  *v23 = v23 ^ _pthread_ptr_munge_token;
  *(v37 + 224) = v37;
  *(v37 + 232) = v37 + 172;
  if ((*(v36 + 10) & 0x1000000) != 0)
  {
    v47 = 0;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    *(v37 + 256) = 0;
  }

  else
  {
    *(v37 + 256) = *(v36 + 4);
  }

  *(v37 + 280) = _pthread_ptr_munge_token;
  *(v37 + 49) = *(v37 + 49) & 0xFB | (4 * (*(v36 + 2) != 0));
  v43 = v37 + 72;
  v42 = 0;
  *(v37 + 72) = 0;
  *(v37 + 176) = v35;
  *(v37 + 184) = v35 - v34;
  *(v37 + 192) = v33;
  *(v37 + 200) = v32;
  v4 = _pthread_attr_guardsize(v36);
  *(v37 + 208) = v4;
  v5 = *(v37 + 49) & 0xFE;
  if (v36[40] == 1)
  {
    ++v5;
  }

  *(v37 + 49) = v5;
  *(v37 + 78) = v36[41];
  *(v37 + 48) = BYTE2(*(v36 + 5));
  *(v37 + 78) = *(v37 + 78) & 0xFDFF | ((v36[43] & 1) << 9);
  v39 = v36;
  v38 = v37 + 56;
  if ((*(v36 + 10) & 0x1000000) != 0)
  {
    *v38 = *(v39 + 4);
  }

  else
  {
    *v38 = default_priority;
    *(v38 + 4) = 10;
  }

  *(v37 + 166) = 3;
  *(v23 + 49) |= 1u;
  v11 = 0;
  parse_main_thread_port(v25, &v11);
  _pthread_main_thread_init(v23, v11);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  _pthread_bsdthread_init(v9);
  _pthread_key_global_init();
  _pthread_mutex_global_init(v26, v9);
  v8 = _simple_getenv();
  if (v8)
  {
    pthread_yield_to_zero = *v8 == 49;
  }

  v7 = _simple_getenv();
  if (v7)
  {
    pthread_has_sec_transition = *v7 == 49;
  }

  return 0;
}

uint64_t parse_main_stack_params(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = _simple_getenv();
  if (v12)
  {
    v11 = 0;
    v10 = v12;
    v5 = _pthread_strtoul(v12, &v10, 16);
    *v16 = v5;
    if (*v10 == 44)
    {
      v6 = _pthread_strtoul(v10 + 1, &v10, 16);
      *v15 = v6;
      if (*v10 == 44)
      {
        v7 = _pthread_strtoul(v10 + 1, &v10, 16);
        *v14 = v7;
        if (*v10 == 44)
        {
          v8 = _pthread_strtoul(v10 + 1, &v10, 16);
          *v13 = v8;
          if (*v10 == 44 || !*v10)
          {
            v11 = 1;
          }
        }
      }
    }

    _platform_strlen();
    _platform_bzero();
    return v11;
  }

  else
  {
    return 0;
  }
}

char *parse_ptr_munge_params(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v4 = 0;
  v3 = 0;
  v5 = _simple_getenv();
  if (v5)
  {
    v3 = _pthread_strtoul(v5, &v4, 16);
    _platform_strlen();
    _platform_bzero();
  }

  result = _simple_getenv();
  v5 = result;
  if (result)
  {
    result = _pthread_strtoul(v5, &v4, 16);
    if (result)
    {
      v3 = result;
    }
  }

  _pthread_ptr_munge_token = v3;
  *_main_thread_ptr = _main_thread_ptr ^ v3;
  return result;
}

char *parse_main_thread_port(uint64_t a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  v4 = 0;
  result = _simple_getenv();
  v5 = result;
  if (result)
  {
    v3 = _pthread_strtoul(v5, &v4, 16);
    *v6 = v3;
    _platform_strlen();
    return _platform_bzero();
  }

  return result;
}

void *_pthread_main_thread_init(uint64_t a1, int a2)
{
  v7 = a1;
  v6 = a2;
  __pthread_head = 0;
  off_2C008 = &__pthread_head;
  v11 = &_pthread_list_lock;
  v10 = 0;
  _pthread_list_lock._os_unfair_lock_opaque = 0;
  v9 = a1 + 72;
  v8 = 0;
  *(a1 + 72) = 0;
  v7[1] = 0;
  v7[4] = 0;
  *(v7 + 13) = 0;
  if (v6)
  {
    *(v7 + 62) = v6;
  }

  else
  {
    *(v7 + 62) = mach_thread_self();
  }

  name = 0;
  *&v4.flags = xmmword_1CD58;
  v4.reserved[1] = 0;
  mach_port_construct(mach_task_self_, &v4, 0, &name);
  *(v7 + 60) = name;
  *(v7 + 72) = 0;
  *(v7 + 74) = 0;
  v2 = __pthread_head;
  v7[2] = __pthread_head;
  if (v2)
  {
    *(&dword_18 + __pthread_head) = v7 + 2;
  }

  else
  {
    off_2C008 = (v7 + 2);
  }

  __pthread_head = v7;
  v7[3] = &__pthread_head;
  _pthread_count = 1;
  return _pthread_introspection_thread_start(v7);
}

uint64_t _pthread_bsdthread_init(uint64_t a1)
{
  _platform_bzero();
  *a1 = 56;
  *(a1 + 8) = 160;
  *(a1 + 28) = 40;
  *(a1 + 24) = 224;
  *(a1 + 32) = 24;
  *(a1 + 48) = 392;
  *(a1 + 52) = 960;
  v1 = *(a1 + 8);
  result = __bsdthread_register();
  if (result >= 1)
  {
    if ((~result & 0x4000001E) != 0)
    {
      qword_28028 = "BUG IN LIBPTHREAD: Missing required kernel support";
      qword_28058 = result;
      __break(0xB001u);
    }

    __pthread_supported_features = result;
  }

  v7 = *(a1 + 16);
  v6 = 0;
  if ((v7 & 0x22000000) == 0)
  {
    v6 = (v7 & 0x3F00) != 0;
  }

  if (v6)
  {
    v3 = (v7 & 0x3F00) >> 8;
    v4 = __clz(__rbit32(v3));
    if (v3)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = _pthread_set_main_qos(v7);
    *(_main_thread_ptr + 256) = v7;
  }

  if (*(a1 + 36))
  {
    __pthread_stack_hint = *(a1 + 36);
  }

  if (__libdispatch_workerfunction)
  {
    return __workq_open();
  }

  return result;
}

void *_pthread_introspection_thread_start(void *result)
{
  if (_pthread_introspection_hook)
  {
    return _pthread_introspection_hook_callout_thread_start(result);
  }

  return result;
}

uint64_t _pthread_main_thread_postfork_init(uint64_t a1)
{
  _pthread_main_thread_init(a1, 0);
  result = __thread_selfid();
  *(a1 + 216) = result;
  if (*(a1 + 216) == -1)
  {
    qword_28028 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
  }

  return result;
}

void sched_yield(void)
{
  if (pthread_yield_to_zero)
  {
    swtch_pri(0);
  }

  else
  {
    thread_switch(0, 0, 0);
  }
}

uint64_t _pthread_yield_to_enqueuer_4dispatch(uint64_t a1, uint64_t a2, mach_msg_timeout_t a3)
{
  thread_name = 0;
  os_unfair_lock_lock_with_options();
  for (i = __pthread_head; i; i = *(i + 2))
  {
    if (a2)
    {
      if (*&i[2 * a1 + 56] == a2)
      {
        thread_name = i[62];
        break;
      }
    }

    else if (*&i[2 * a1 + 56])
    {
      thread_name = i[62];
      break;
    }
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  thread_switch(thread_name, 4, a3);
  return 0;
}

uint64_t pthread_current_stack_contains_np(unint64_t a1, uint64_t a2)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 40);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 48);
  if (v6 == v5)
  {
    return -45;
  }

  else if (__CFADD__(a1, a2))
  {
    return -22;
  }

  else
  {
    v4 = 0;
    if (v6 <= a1)
    {
      return a1 + a2 <= v5;
    }

    return v4;
  }
}

void _pthread_clear_qos_tsd(int a1)
{
  if (a1 && *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) != a1)
  {
    os_unfair_lock_lock_with_options();
    for (i = __pthread_head; i; i = *(i + 2))
    {
      if (a1 == i[62])
      {
        *(i + 32) = 0;
        break;
      }
    }

    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  else
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) = 0;
  }
}

uint64_t pthread_stack_frame_decode_np(uint64_t *a1, void *a2)
{
  if (a2)
  {
    *a2 = a1[1];
  }

  v3 = *a1;
  if (pthread_has_sec_transition)
  {
    return v3 & 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v3 & 0xFFFFFFFFFFFFFFLL;
  }
}

uint64_t _pthread_wqthread(unint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if ((a5 & 0x20000) == 0)
  {
    _pthread_wqthread_setup(a1, a2, a3, a5);
  }

  if ((a5 & 0x800000) != 0)
  {
    *(a1 + 164) = 1;
    v12 = 67111167;
  }

  else
  {
    *(a1 + 164) = 0;
    v17 = 0;
    if ((a5 & 0x80000) != 0)
    {
      v17 = 0x1000000;
    }

    if ((a5 & 0x100000) != 0)
    {
      v18 = v17 | 0x2000000;
    }

    else
    {
      if ((a5 & 0x10000) != 0)
      {
        v17 |= 0x80000000uLL;
      }

      if ((a5 & 0x4000) != 0)
      {
        v19 = BYTE3(v17) << 24;
        if (a5 && a5 <= 6u)
        {
          v19 |= (1 << (a5 + 7)) | 0xFF;
        }

        v17 = v19;
      }

      else if ((a5 & 0x8000) != 0)
      {
        v17 |= 0xFFFFLL | a5 & 0xFFF;
      }

      else
      {
        qword_28028 = "BUG IN LIBPTHREAD: Missing priority";
        qword_28058 = a5;
        __break(0xB001u);
      }

      v18 = v17;
    }

    v12 = v18;
  }

  *(a1 + 256) = v12;
  v11 = v12;
  if ((a5 & 0x1000000) != 0)
  {
    v11 = v12 | 0x8000000;
  }

  if (a6 == -1)
  {
    _pthread_wqthread_exit(a1);
  }

  if ((a5 & 0x400000) != 0)
  {
    v10 = 0;
    if (__libdispatch_workloopfunction)
    {
      v10 = __libdispatch_workloopfunction;
    }

    *(a1 + 144) = v10;
    *(a1 + 152) = a4;
    *(a1 + 160) = a6;
    __libdispatch_workloopfunction();
  }

  if ((a5 & 0x80000) != 0)
  {
    v9 = 0;
    if (__libdispatch_keventfunction)
    {
      v9 = __libdispatch_keventfunction;
    }

    *(a1 + 144) = v9;
    *(a1 + 152) = a4;
    *(a1 + 160) = a6;
    __libdispatch_keventfunction();
  }

  v8 = 0;
  if (__libdispatch_workerfunction)
  {
    v8 = __libdispatch_workerfunction;
  }

  *(a1 + 144) = v8;
  *(a1 + 152) = v11;
  *(a1 + 160) = 0;
  if (__workq_newapi)
  {
    __libdispatch_workerfunction(v11);
  }

  else
  {
    _pthread_wqthread_legacy_worker_wrap(v11);
  }

  result = __workq_kernreturn();
  v7 = *(a1 + 172);
  qword_28028 = "BUG IN LIBPTHREAD: __workq_kernreturn returned";
  qword_28058 = v7;
  return result;
}

void *_pthread_wqthread_setup(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v12 = a3 - vm_page_size;
  v11 = ((vm_page_size + a1 - 1) & -vm_page_size) + ((vm_page_mask + 6368) & ~vm_page_mask) - (a3 - vm_page_size);
  *a1 = a1 ^ _pthread_ptr_munge_token;
  *(a1 + 224) = a1;
  *(a1 + 232) = a1 + 172;
  *(a1 + 256) = 2303;
  *(a1 + 280) = _pthread_ptr_munge_token;
  *(a1 + 49) &= ~4u;
  *(a1 + 72) = 0;
  *(a1 + 176) = a1;
  *(a1 + 184) = a3;
  *(a1 + 192) = v12;
  *(a1 + 200) = v11;
  *(a1 + 208) = _pthread_attr_guardsize("ADHT");
  v4 = *(a1 + 49) & 0xFE;
  if (unk_1CD98 == 1)
  {
    ++v4;
  }

  *(a1 + 49) = v4;
  *(a1 + 78) = unk_1CD99;
  *(a1 + 48) = 1;
  *(a1 + 78) = *(a1 + 78) & 0xFDFF | ((unk_1CD9B & 1) << 9);
  *(a1 + 56) = default_priority;
  *(a1 + 60) = 10;
  *(a1 + 166) = 3;
  *(a1 + 248) = a2;
  *(a1 + 78) |= 0x400u;
  *(a1 + 78) &= ~0x800u;
  *(a1 + 49) &= ~1u;
  if ((a4 & 0x200000) == 0)
  {
    qword_28028 = "BUG IN LIBPTHREAD: thread_set_tsd_base() wasn't called by the kernel";
    qword_28058 = a4;
    __break(0xB001u);
  }

  *(a1 + 216) = __thread_selfid();
  if (*(a1 + 216) == -1)
  {
    qword_28028 = "BUG IN LIBPTHREAD: failed to set thread_id";
    __break(0xB001u);
  }

  os_unfair_lock_lock_no_tsd();
  *(a1 + 16) = 0;
  *(a1 + 24) = off_2C008;
  *off_2C008 = a1;
  off_2C008 = (a1 + 16);
  ++_pthread_count;
  os_unfair_lock_unlock_no_tsd();
  _pthread_introspection_thread_create(a1);
  v10 = *(a1 + 248);
  v6 = 0;
  if (v10)
  {
    v6 = v10 != -1;
  }

  if (!v6)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak";
    qword_28058 = v10;
    __break(0xB001u);
  }

  return _pthread_introspection_thread_start(a1);
}

void _pthread_wqthread_exit(unint64_t a1)
{
  v5 = *(a1 + 256);
  v4 = 0;
  if ((v5 & 0x22000000) == 0)
  {
    v4 = (v5 & 0x3F00) != 0;
  }

  if (v4)
  {
    v1 = (v5 & 0x3F00) >> 8;
    v2 = __clz(__rbit32(v1));
    if (v1)
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = 0;
    }

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || v6 > 4u)
  {
    *(a1 + 256) = 2303;
  }

  _pthread_exit(a1, 0);
}

void *_pthread_wqthread_legacy_worker_wrap(uint64_t a1)
{
  result = __libdispatch_workerfunction;
  v6 = 0;
  if (__libdispatch_workerfunction)
  {
    v6 = __libdispatch_workerfunction;
  }

  v5 = 0;
  if ((a1 & 0x22000000) == 0)
  {
    v5 = (a1 & 0x3F00) != 0;
  }

  if (v5)
  {
    v2 = (a1 & 0x3F00) >> 8;
    v3 = __clz(__rbit32(v2));
    if (v2)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  switch(v8)
  {
    case 2:
      return (v6)(3, a1 < 0, 0);
    case 3:
      return (v6)(2, a1 < 0, 0);
    case 4:
      *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) = 4351;
      return v6(1, a1 < 0);
    case 5:
      return (v6)(0, a1 < 0, 0);
    default:
      qword_28028 = "BUG IN LIBPTHREAD: Invalid pthread priority for the legacy interface";
      qword_28058 = a1;
      __break(0xB001u);
      break;
  }

  return result;
}

uint64_t pthread_workqueue_setup(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    v3 = *(a1 + 4);
    if (v3 == 1)
    {
      v4 = 40;
    }

    else
    {
      if (v3 != 2)
      {
        return 22;
      }

      v4 = 48;
    }

    if (a1 && a2 >= v4)
    {
      if (!*a1 && *(a1 + 4))
      {
        if (__libdispatch_workerfunction)
        {
          return 16;
        }

        else
        {
          __workq_newapi = 1;
          v5 = *(a1 + 32);
          v6 = *(a1 + 40);
          if (__workq_kernreturn() == -1)
          {
            return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          }

          else
          {
            __libdispatch_keventfunction = *(a1 + 8);
            __libdispatch_workloopfunction = *(a1 + 16);
            __libdispatch_workerfunction = *(a1 + 24);
            __workq_open();
            if (!__is_threaded)
            {
              __is_threaded = 1;
            }

            return 0;
          }
        }
      }

      else
      {
        return 45;
      }
    }

    else
    {
      return 22;
    }
  }

  else
  {
    return 22;
  }
}

uint64_t _pthread_workqueue_init_with_workloop(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  __b[0] = 0;
  __b[1] = 2;
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v10 = a4;
  v11 = 0;
  return pthread_workqueue_setup(__b, 0x30uLL);
}

uint64_t pthread_workqueue_setdispatch_np(uint64_t a1)
{
  v6 = a1;
  memset(__b, 0, sizeof(__b));
  HIDWORD(__b[0]) = 2;
  v4 = 0;
  if (v6)
  {
    v4 = v6;
  }

  v3 = 0;
  if (v4)
  {
    v3 = v4;
  }

  v2 = 0;
  if (v3)
  {
    v2 = v3;
  }

  __b[3] = v2;
  return pthread_workqueue_setup(__b, 0x30uLL);
}

uint64_t _pthread_workqueue_supported()
{
  if (!__pthread_supported_features)
  {
    qword_28028 = "BUG IN LIBPTHREAD: libpthread has not been initialized";
    __break(0xB001u);
  }

  return __pthread_supported_features;
}

uint64_t pthread_workqueue_addthreads_np(__int16 a1, char a2)
{
  if (__libdispatch_workerfunction)
  {
    v3 = 0;
    if (a2)
    {
      v3 = 0x80000000;
    }

    _pthread_qos_class_encode_workqueue(a1 & 0xFFF, v3);
    v4 = __workq_kernreturn();
    if (v4 == -1)
    {
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }

    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t _pthread_workqueue_addthreads()
{
  if (__libdispatch_workerfunction)
  {
    v1 = __workq_kernreturn();
    if (v1 == -1)
    {
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }

    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t _pthread_workqueue_add_cooperativethreads()
{
  if (__libdispatch_workerfunction)
  {
    v1 = __workq_kernreturn();
    if (v1 == -1)
    {
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }

    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t _pthread_workqueue_set_event_manager_priority()
{
  v1 = __workq_kernreturn();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t _pthread_workloop_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  __b = 36;
  v6 = 0;
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a3 && (v14 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    if ((*(v13 + 40) >> 24))
    {
      v6 |= 1u;
      v8 = *(v13 + 32);
    }

    if ((*(v13 + 40) >> 26))
    {
      v6 |= 2u;
      v9 = BYTE2(*(v13 + 40));
    }

    if ((*(v13 + 40) >> 27))
    {
      v6 |= 4u;
      v10 = BYTE4(*(v13 + 40));
      v11 = *(v13 + 40) >> 40;
    }

    if (*(v13 + 48) && *(v13 + 48) != -1)
    {
      v6 |= 8u;
      v12 = *(v13 + 48);
    }

    if (v14)
    {
      v6 |= 0x10u;
    }

    v4 = __kqueue_workloop_ctl();
    if (v4 == -1)
    {
      v17 = 1;
      v18 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      return **(StatusReg + 8);
    }

    return v4;
  }

  else
  {
    return 22;
  }
}

uint64_t _pthread_workloop_destroy()
{
  v1 = __kqueue_workloop_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

pthread_introspection_hook_t pthread_introspection_hook_install(pthread_introspection_hook_t hook)
{
  v4 = 0;
  if (hook)
  {
    v4 = hook;
  }

  v2 = _pthread_atomic_xchg_ptr(&_pthread_introspection_hook, v4);
  v3 = 0;
  if (v2)
  {
    return v2;
  }

  return v3;
}

mach_vm_address_t _pthread_allocate(uint64_t a1, mach_vm_address_t *a2, char a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  address = __pthread_stack_hint;
  v10 = 0;
  if (*(a1 + 24))
  {
    v10 = *(v20 + 24) < 0x4000uLL;
  }

  if (v10)
  {
    v3 = *(v20 + 24);
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Stack size in attrs is too small";
    qword_28058 = v3;
    __break(0xB001u);
  }

  if ((*(v20 + 16) & vm_page_mask) != 0)
  {
    v4 = *(v20 + 16);
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Unaligned stack addr in attrs";
    qword_28058 = v4;
    __break(0xB001u);
  }

  if (*(v20 + 16))
  {
    size = (vm_page_mask + 6368) & ~vm_page_mask;
    v15 = 0;
    v13 = 0;
    v14 = *(v20 + 24);
    v5 = mach_vm_map(mach_task_self_, &address, size, vm_page_size - 1, 503316481, 0, 0, 0, 3, 7, 1u);
  }

  else
  {
    v15 = _pthread_attr_guardsize(v20);
    v14 = _pthread_attr_stacksize(v20) + 12288;
    v13 = v14 + v15;
    size = (v14 + v15 + ((vm_page_mask + 6368) & ~vm_page_mask) + vm_page_mask) & ~vm_page_mask;
    v5 = mach_vm_map(mach_task_self_, &address, size, vm_page_size - 1, 503316481, 0, 0, 0, 3, 7, 1u);
  }

  v12 = v5;
  if (v5)
  {
    v12 = mach_vm_allocate(mach_task_self_, &address, size, 503316481);
  }

  else if (__syscall_logger && (v18 & 1) == 0)
  {
    __syscall_logger(503316624, mach_task_self_, size, 0, address, 0);
  }

  if (v12)
  {
    *v19 = 0;
    return 0;
  }

  else
  {
    if (__syscall_logger && (v18 & 1) == 0)
    {
      __syscall_logger(503316496, mach_task_self_, size, 0, address, 0);
    }

    if (v15)
    {
      mach_vm_protect(mach_task_self_, address, v15, 0, 0);
    }

    v11 = address + v13;
    if (*(v20 + 16))
    {
      *v19 = *(v20 + 16);
    }

    else
    {
      *v19 = v11;
    }

    v6 = *v19;
    v27 = v11;
    v26 = v20;
    v25 = v6;
    v24 = v14;
    v23 = address;
    v22 = size;
    v31 = v11;
    v30 = v11;
    *v11 = v11 ^ _pthread_ptr_munge_token;
    *(v27 + 224) = v27;
    *(v27 + 232) = v27 + 172;
    if ((*(v26 + 40) & 0x1000000) != 0)
    {
      v37 = 0;
      v36 = 0;
      v35 = 0;
      v34 = 0;
      *(v27 + 256) = 0;
    }

    else
    {
      *(v27 + 256) = *(v26 + 32);
    }

    *(v27 + 280) = _pthread_ptr_munge_token;
    *(v27 + 49) = *(v27 + 49) & 0xFB | (4 * (*(v26 + 16) != 0));
    v33 = v27 + 72;
    v32 = 0;
    *(v27 + 72) = 0;
    *(v27 + 176) = v25;
    *(v27 + 184) = v25 - v24;
    *(v27 + 192) = v23;
    *(v27 + 200) = v22;
    v7 = _pthread_attr_guardsize(v26);
    *(v27 + 208) = v7;
    v8 = *(v27 + 49) & 0xFE;
    if (*(v26 + 40) == 1)
    {
      ++v8;
    }

    *(v27 + 49) = v8;
    *(v27 + 78) = *(v26 + 41);
    *(v27 + 48) = BYTE2(*(v26 + 40));
    *(v27 + 78) = *(v27 + 78) & 0xFDFF | ((*(v26 + 43) & 1) << 9);
    v29 = v26;
    v28 = v27 + 56;
    if ((*(v26 + 40) & 0x1000000) != 0)
    {
      *v28 = *(v29 + 32);
    }

    else
    {
      *v28 = default_priority;
      *(v28 + 4) = 10;
    }

    *(v27 + 166) = 3;
    return v11;
  }
}

uint64_t _pthread_introspection_thread_create(uint64_t result)
{
  if (_pthread_introspection_hook)
  {
    return _pthread_introspection_hook_callout_thread_create(result);
  }

  return result;
}

uint64_t _pthread_introspection_call_hook(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg - 224;
  v5 = *(StatusReg - 174);
  *(v6 + 50) = a1;
  result = _pthread_introspection_hook(a1, a2, a3, a4);
  *(v6 + 50) = v5;
  return result;
}

uint64_t _pthread_terminate_invoke(unint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  if ((&vars0 & ~(vm_page_size - 1)) == (a1 & ~(vm_page_size - 1)))
  {
    v6 = v5;
    bzero(v5, 0x3000uLL);
    v7 = v6;
  }

  v2 = _pthread_terminate(v9, v8);
  return _pthread_terminate(v2, v3);
}

uint64_t _pthread_terminate(unint64_t a1, uint64_t a2)
{
  _pthread_introspection_thread_terminate(a1);
  v10 = *(a1 + 192);
  v9 = *(a1 + 200);
  if (a1 <= v10 || a1 >= *(a1 + 192) + *(a1 + 200))
  {
    if (a1 == _main_thread_ptr)
    {
      v3 = *(a1 + 176);
      pthread_get_stacksize_np(a1);
      _pthread_current_stack_address();
    }
  }

  else
  {
    v7 = (a1 - v10) & -vm_page_size;
    *(a1 + 192) += v7;
    *(a1 + 200) -= v7;
  }

  v6 = *(a1 + 248);
  v5 = 0;
  v4 = 0;
  _pthread_dealloc_special_reply_port(a1);
  _pthread_dealloc_reply_port(a1);
  os_unfair_lock_lock_with_options();
  *(a1 + 52) = -1;
  *(a1 + 40) = a2;
  v8 = --_pthread_count < 1;
  if (*(a1 + 32))
  {
    _pthread_joiner_prepost_wake(a1);
    v4 = 1;
  }

  if (*(a1 + 49))
  {
    v5 = 1;
    *(a1 + 49) |= 2u;
  }

  else
  {
    if (*(a1 + 16))
    {
      *(*(a1 + 16) + 24) = *(a1 + 24);
    }

    else
    {
      off_2C008 = *(a1 + 24);
    }

    **(a1 + 24) = *(a1 + 16);
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  if (v4)
  {
    _pthread_joiner_wake();
    os_unfair_lock_lock_with_options();
    if (*(a1 + 32))
    {
      *(a1 + 49) |= 2u;
      v5 = 1;
    }

    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  if ((v5 & 1) == 0 && a1 != _main_thread_ptr)
  {
    _pthread_introspection_thread_destroy(a1);
  }

  if (v8)
  {
    exitf(0);
  }

  result = __bsdthread_terminate();
  qword_28028 = "BUG IN LIBPTHREAD: thread didn't terminate";
  qword_28058 = a1;
  __break(0xB001u);
  return result;
}

void *_pthread_introspection_thread_terminate(void *result)
{
  if (_pthread_introspection_hook)
  {
    return _pthread_introspection_hook_callout_thread_terminate(result);
  }

  return result;
}

int *_pthread_current_stack_address()
{
  result = &v1;
  v1 = 0;
  return result;
}

uint64_t _pthread_dealloc_special_reply_port(uint64_t result)
{
  if (*(result + 288))
  {
    *(result + 288) = 0;
    return thread_destruct_special_reply_port();
  }

  return result;
}

void _pthread_dealloc_reply_port(uint64_t a1)
{
  reply_port = *(a1 + 240);
  if (reply_port)
  {
    mig_dealloc_reply_port(reply_port);
  }
}

uint64_t _pthread_introspection_hook_callout_thread_terminate(void *a1)
{
  if (a1 == _main_thread_ptr)
  {
    return _pthread_introspection_call_hook(3u, a1, a1[23] - a1[26], a1[22] - a1[23] + a1[26]);
  }

  else
  {
    return _pthread_introspection_call_hook(3u, a1, a1[24], a1[25] - ((vm_page_mask + 6368) & ~vm_page_mask));
  }
}

uint64_t _pthread_strtoul(char *a1, void *a2, int a3)
{
  i = a1;
  v5 = 0;
  if ((a3 == 16 || !a3) && a1 && *a1 == 48 && a1[1] == 120)
  {
    for (i = a1 + 2; ; ++i)
    {
      v4 = *i;
      if (*i < 48 || v4 > 57)
      {
        if (v4 < 97 || v4 > 102)
        {
          if (v4 < 65 || v4 > 70)
          {
            break;
          }

          v5 = 16 * v5 + v4 - 55;
        }

        else
        {
          v5 = 16 * v5 + v4 - 87;
        }
      }

      else
      {
        v5 = 16 * v5 + v4 - 48;
      }
    }
  }

  *a2 = i;
  return v5;
}

uint64_t _pthread_introspection_hook_callout_thread_start(void *a1)
{
  if (a1 == _main_thread_ptr)
  {
    return _pthread_introspection_call_hook(2u, a1, a1[23] - a1[26], a1[22] - a1[23] + a1[26]);
  }

  else
  {
    return _pthread_introspection_call_hook(2u, a1, a1[24], a1[25] - ((vm_page_mask + 6368) & ~vm_page_mask));
  }
}

uint64_t _pthread_setcancelstate_exit(uint64_t result)
{
  v3 = *(result + 166);
  do
  {
    v1 = v3;
    v2 = v3;
    atomic_compare_exchange_strong_explicit((result + 166), &v2, v3 & 0xFFDC | 0x22, memory_order_relaxed, memory_order_relaxed);
    if (v1 != v2)
    {
      v3 = v2;
    }
  }

  while (v1 != v2);
  return result;
}

int pthread_cancel(pthread_t a1)
{
  if (a1 == (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224))
  {
    if ((a1->__sig ^ _pthread_ptr_munge_token) != a1)
    {
      abort_with_reason();
    }

    v9 = 1;
    v10 = *&a1->__opaque[232];
  }

  else
  {
    if (a1)
    {
      v1 = 0;
      atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v1)
      {
        os_unfair_lock_lock_with_options();
      }

      for (i = __pthread_head; i; i = *(i + 2))
      {
        if (i == a1)
        {
          if ((*i ^ _pthread_ptr_munge_token) != i)
          {
            abort_with_reason();
          }

          v14 = 1;
          goto LABEL_19;
        }
      }

      v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v3 = v2;
      atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v3, 0, memory_order_release, memory_order_relaxed);
      if (v3 != v2)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_19:
    if (v14)
    {
      v11 = *&a1->__opaque[232];
      v9 = 1;
      v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v5 = v4;
      atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        os_unfair_lock_unlock(&_pthread_list_lock);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  if ((v9 & 1) == 0)
  {
    return 3;
  }

  if ((*&a1->__opaque[62] & 0x400) != 0)
  {
    return 45;
  }

  if ((atomic_fetch_or_explicit(&a1->__opaque[150], 0x10u, memory_order_relaxed) & 1) != 0 && *&a1->__opaque[232])
  {
    __pthread_markcancel();
  }

  return 0;
}

int pthread_setcancelstate(int a1, int *a2)
{
  v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
  if ((*v5 ^ _pthread_ptr_munge_token) != v5)
  {
    abort_with_reason();
  }

  if (a1 > 1)
  {
    return 22;
  }

  __pthread_canceled();
  v9 = *(v5 + 166);
  do
  {
    v2 = v9;
    v3 = v9;
    atomic_compare_exchange_strong_explicit((v5 + 166), &v3, v9 & 0xFFFE | a1, memory_order_relaxed, memory_order_relaxed);
    if (v2 != v3)
    {
      v9 = v3;
    }
  }

  while (v2 != v3);
  if (a2)
  {
    *a2 = v9 & 1;
  }

  return 0;
}

int pthread_setcanceltype(int a1, int *a2)
{
  v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
  if ((*v5 ^ _pthread_ptr_munge_token) != v5)
  {
    abort_with_reason();
  }

  if (a1 != 2 && a1)
  {
    return 22;
  }

  v9 = *(v5 + 166);
  do
  {
    v2 = v9;
    v3 = v9;
    atomic_compare_exchange_strong_explicit((v5 + 166), &v3, v9 & 0xFFFD | a1, memory_order_relaxed, memory_order_relaxed);
    if (v2 != v3)
    {
      v9 = v3;
    }
  }

  while (v2 != v3);
  if (a2)
  {
    *a2 = v9 & 2;
  }

  return 0;
}

void pthread_testcancel(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v0 = atomic_load((StatusReg - 58));
  if ((v0 & 0x11) == 0x11)
  {
    if ((*(StatusReg - 224) ^ _pthread_ptr_munge_token) != StatusReg - 224)
    {
      abort_with_reason();
    }

    *(StatusReg - 59) = 1;
    pthread_exit(&dword_0 + 1);
  }
}

uint64_t _pthread_markcancel_if_canceled(uint64_t result)
{
  v1 = atomic_load((result + 166));
  if ((v1 & 0x11) == 0x11)
  {
    return __pthread_markcancel();
  }

  return result;
}

uint64_t _pthread_exit_if_canceled(uint64_t result)
{
  v2 = result;
  if (result == 4)
  {
    result = __pthread_canceled();
    if (!result)
    {
      v1 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
      if ((*v1 ^ _pthread_ptr_munge_token) != v1)
      {
        abort_with_reason();
      }

      *(v1 + 168) = v2;
      *(v1 + 165) = 1;
      pthread_exit(&dword_0 + 1);
    }
  }

  return result;
}

int pthread_sigmask(int a1, const sigset_t *a2, sigset_t *a3)
{
  v4 = 0;
  if (__pthread_sigmask() == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v4;
}

uint64_t _pthread_joiner_prepost_wake(uint64_t a1)
{
  v5 = *(a1 + 32);
  v4 = 0;
  if (*(a1 + 49))
  {
    v4 = *(v5 + 20);
    *(a1 + 49) &= ~1u;
  }

  else
  {
    v1 = *(a1 + 32);
    *(v5 + 24) = 1;
    *(a1 + 32) = 0;
  }

  if (*(v5 + 8))
  {
    v7 = 17;
    v2 = atomic_load((a1 + 166));
    if ((v2 & v7) == 0x11)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 40);
    }

    **(v5 + 8) = v6;
  }

  return v4;
}

uint64_t _pthread_join(uint64_t a1, uint64_t *a2, int a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = StatusReg;
  v13 = (StatusReg - 224);
  v11[0] = StatusReg - 224;
  v11[1] = a2;
  v12 = 0uLL;
  v10 = 0;
  v30 = a1;
  i = 0;
  if (a1)
  {
    v45 = &_pthread_list_lock;
    v52 = &_pthread_list_lock;
    v51 = 327680;
    v53 = 3;
    v54 = 3;
    v55 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v50 = *(v55 + 24);
    v49 = 0;
    v48 = v50;
    v47 = v50;
    v3 = 0;
    atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v3, v50, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      v49 = v3;
    }

    v46 = v3 == 0;
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    for (i = __pthread_head; i; i = *(i + 2))
    {
      if (i == v30)
      {
        v33 = i;
        v32 = *i ^ _pthread_ptr_munge_token;
        if (v32 != i)
        {
          abort_with_reason();
        }

        v31 = 1;
        goto LABEL_19;
      }
    }

    v36 = &_pthread_list_lock;
    v76 = &_pthread_list_lock;
    v77 = 3;
    v78 = 3;
    v79 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v75 = *(v79 + 24);
    v74 = 0;
    v73 = v75;
    v72 = 0;
    v4 = v75;
    v5 = v75;
    atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      v73 = v5;
    }

    v71 = v5 == v75;
    if (v5 != v75)
    {
      os_unfair_lock_unlock(v76);
    }

    v31 = 0;
  }

  else
  {
    v31 = 0;
  }

LABEL_19:
  if (v31)
  {
    v20 = v13;
    v19 = *v13 ^ _pthread_ptr_munge_token;
    if (v19 != v13)
    {
      abort_with_reason();
    }

    if ((*(v16 + 49) & 1) != 0 && !*(v16 + 32))
    {
      if (v16 == v13 || v13[4] && *v13[4] == v16)
      {
        v10 = 11;
      }

      else if (*(v16 + 52) == -1)
      {
        if (*(v16 + 16))
        {
          *(*(v16 + 16) + 24) = *(v16 + 24);
        }

        else
        {
          off_2C008 = *(v16 + 24);
        }

        **(v16 + 24) = *(v16 + 16);
        if ((*(v16 + 49) & 2) == 0)
        {
          qword_28028 = "BUG IN LIBPTHREAD: Assertion failed: thread->tl_joiner_cleans_up";
          __break(0xB001u);
        }

        *(v16 + 49) &= ~1u;
        if (v15)
        {
          v21 = v16;
          v28 = v16;
          v27 = 17;
          v6 = atomic_load((v16 + 166));
          v24 = v6;
          v25 = v6;
          v23 = v6;
          v26 = v6;
          if ((v27 & ~v6) != 0)
          {
            v22 = *(v21 + 40);
          }

          else
          {
            v22 = 1;
          }

          *v15 = v22;
        }
      }

      else
      {
        LODWORD(v12) = *(v16 + 248);
        *(v16 + 52) = v12;
        *(v16 + 32) = v11;
        if ((*(v16 + 49) & 4) != 0)
        {
          v34 = 0;
          v43 = 9;
          v44 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v34 = *(v44 + 72);
          if (v34)
          {
            v60 = 9;
            v59 = 0;
            v61 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            *(v61 + 72) = 0;
            v35 = v34;
          }

          else
          {
            v35 = _os_semaphore_create();
          }

          DWORD1(v12) = v35;
        }
      }
    }

    else
    {
      v10 = 22;
    }

    v37 = &_pthread_list_lock;
    v67 = &_pthread_list_lock;
    v68 = 3;
    v69 = 3;
    v70 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v66 = *(v70 + 24);
    v65 = 0;
    v64 = v66;
    v63 = 0;
    v7 = v66;
    v8 = v66;
    atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      v64 = v8;
    }

    v62 = v8 == v7;
    if (v8 != v7)
    {
      os_unfair_lock_unlock(v67);
    }

    if (!v10)
    {
      if (v12)
      {
        v10 = _pthread_joiner_wait(v16, v11, v14);
      }

      else
      {
        _pthread_deallocate(v16, 0);
      }
    }

    if (!v10 && DWORD1(v12) && (BYTE8(v12) & 1) == 0)
    {
        ;
      }
    }

    if (DWORD1(v12))
    {
      v39 = DWORD1(v12);
      v38 = 0;
      v41 = 9;
      v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = *(v42 + 72);
      v57 = 9;
      v56 = DWORD1(v12);
      v58 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *(v58 + 72) = DWORD1(v12);
      if (v38)
      {
        _os_semaphore_dispose();
      }
    }

    return v10;
  }

  else
  {
    return 3;
  }
}

uint64_t _pthread_joiner_wait(uint64_t a1, _BYTE *a2, int a3)
{
  v12 = (a1 + 52);
  while (1)
  {
    explicit = atomic_load_explicit(v12, memory_order_acquire);
    if (explicit == -1)
    {
      break;
    }

    if (explicit != *(a2 + 4))
    {
      qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: pthread_join() state corruption";
      qword_28058 = explicit;
      __break(0xB001u);
    }

    v3 = *(a2 + 4);
    if (-__ulock_wait() == 4)
    {
      v9 = 0;
      if (a3 == 2)
      {
        v16 = 17;
        v4 = atomic_load((*a2 + 166));
        v9 = (v16 & ~v4) == 0;
      }

      if (v9 && _pthread_joiner_abort_wait(a1, a2))
      {
        *(*a2 + 165) = &dword_0 + 1;
        pthread_exit(&dword_0 + 1);
      }
    }
  }

  v10 = 0;
  v5 = 0;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v5, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((a2[24] & 1) == 0)
  {
    if (*(a1 + 32) != a2)
    {
      qword_28028 = "BUG IN LIBPTHREAD: Assertion failed: thread->tl_join_ctx == ctx";
      __break(0xB001u);
    }

    *(a1 + 32) = 0;
    v10 = (*(a1 + 49) & 2) != 0;
  }

  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  if (v10)
  {
    _pthread_deallocate(a1, 0);
  }

  return 0;
}

uint64_t pthread_join_NOCANCEL(uint64_t a1, uint64_t *a2)
{
  _pthread_testcancel_if_cancelable_variant();
  v2 = _pthread_conformance();
  return _pthread_join(a1, a2, v2);
}

uint64_t sigwait_NOCANCEL()
{
  v1 = 0;
  _pthread_testcancel_if_cancelable_variant();
  if (__sigwait() == -1)
  {
    v1 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    _pthread_testcancel_if_cancelable_variant();
    if (v1 == 4)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t _pthread_joiner_abort_wait(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*(a2 + 24) & 1) == 0 && *(a1 + 52) != -1)
  {
    if (*(a1 + 32) != a2)
    {
      qword_28028 = "BUG IN LIBPTHREAD: Assertion failed: thread->tl_join_ctx == ctx";
      __break(0xB001u);
    }

    *(a1 + 32) = 0;
    *(a1 + 52) = 0;
    v6 = 1;
  }

  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit(&_pthread_list_lock, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  return v6 & 1;
}

int pthread_condattr_init(pthread_condattr_t *a1)
{
  a1->__sig = 1129202753;
  *a1->__opaque = *a1->__opaque & 0xFFFFFFFC | 2;
  return 0;
}

int pthread_condattr_getpshared(const pthread_condattr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1129202753)
  {
    *a2 = *a1->__opaque & 3;
    return 0;
  }

  return v3;
}

int pthread_condattr_setpshared(pthread_condattr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1129202753 && (a2 == 2 || a2 == 1))
  {
    *a1->__opaque = *a1->__opaque & 0xFFFFFFFC | a2 & 3;
    return 0;
  }

  return v3;
}

uint64_t _pthread_cond_wait(uint64_t a1, pthread_mutex_t *a2, uint64_t *a3, int a4, int a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v19 = a2;
  if ((a2->__sig & 0xFFFFFFFDLL) != 0x4D555458)
  {
    v20 = v16;
    if ((v16->__sig & 0xFFFFFFF0) != 0x32AAABA0)
    {
      return 22;
    }
  }

  v21 = v16;
  v8 = (*&v16->__opaque[4] & 0x4000) != 0;
  if (v8)
  {
    v5 = 1129270854;
  }

  else
  {
    v5 = 1129270853;
  }

  v7 = v5;
  v27 = v17;
  v26 = &v7;
  v23 = *v17;
  v24 = v23;
  v22 = v23;
  v25 = v23;
  if (v23 == 1018212795)
  {
    v28 = _pthread_cond_check_init_slow(v27, v26);
  }

  else
  {
    v35 = v27;
    v34 = v25;
    v33 = v26;
    v32 = 0;
    if (v25 == 1129270852)
    {
      if (*v33 != 1129270852)
      {
        v31 = *v33;
        v30 = v31;
        *v35 = v31;
        v29 = v31;
      }
    }

    else if (v25 - 1129270853 < 2)
    {
      if (*v33 == 1129270852)
      {
        *v33 = v34;
      }

      else if (*v33 != v34)
      {
        qword_28028 = "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use";
        __break(0xB001u);
      }
    }

    else
    {
      v32 = 22;
    }

    v28 = v32;
  }

  v12 = v28;
  if (v28)
  {
    return v12;
  }

  if (v13 == 2)
  {
    pthread_testcancel();
  }

  if (v15)
  {
    if (v15[1] < 0 || v15[1] >= 0x3B9ACA00)
    {
      return 22;
    }

    if (v14)
    {
      v10 = *v15;
      v11 = v15[1];
      if (!v10 && !v11)
      {
        v9 = 1;
      }

      goto LABEL_40;
    }

    __gettimeofday();
    if (*v15)
    {
      if (*v15 >= 0)
      {
        goto LABEL_34;
      }
    }

    else if (v15[1] > 0)
    {
LABEL_34:
      v11 = v15[1];
      v10 = *v15;
      if (v11 < 0)
      {
        v11 += 1000000000;
        --v10;
      }

      goto LABEL_40;
    }

    v9 = 1;
  }

LABEL_40:
  if (v8 || !*(v17 + 2) || *(v17 + 2) == v16)
  {
    if (v9)
    {
      v12 = pthread_mutex_unlock(v16);
      if (v12)
      {
        return v12;
      }

      else
      {
        v12 = pthread_mutex_lock(v16);
        if (v12)
        {
          return v12;
        }

        else
        {
          return 60;
        }
      }
    }

    else if (v8)
    {
      return _pthread_ulock_cond_wait(v17, v16, &v10, v13);
    }

    else
    {
      return _pthread_psynch_cond_wait(v17, v16, &v10, v13);
    }
  }

  else
  {
    return 22;
  }
}

int pthread_cond_destroy(pthread_cond_t *a1)
{
  v22 = a1;
  v21 = 22;
  sig = a1->__sig;
  v19 = sig;
  v17 = sig;
  v20 = sig;
  if (sig == 1018212795 || sig == 1129270852)
  {
LABEL_25:
    LODWORD(v22->__sig) = 0;
    return 0;
  }

  if (sig != 1129270853)
  {
    if (sig != 1129270854)
    {
      return v21;
    }

    goto LABEL_25;
  }

  opaque = v22->__opaque;
  v36 = v22->__opaque;
  v35 = 327680;
  v37 = 3;
  v38 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v34 = *(StatusReg + 24);
  v33 = 0;
  v32 = v34;
  v31 = v34;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v22->__opaque, &v1, v34, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v33 = v1;
  }

  v30 = v1 == 0;
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v28 = v22;
  v27 = &v11;
  v26 = &v10;
  v25 = &v9;
  v24 = &v8;
  if ((*&v22->__opaque[4] & 0x20000000) != 0)
  {
    *v26 = &v28->__opaque[20];
    *v24 = &v28->__opaque[24];
    *v25 = &v28->__opaque[16];
  }

  else
  {
    *v26 = &v28->__opaque[16];
    *v24 = &v28->__opaque[20];
    *v25 = &v28->__opaque[24];
  }

  *v27 = *v26;
  do
  {
    v14 = *v10;
    v13 = *v9;
    v12 = *v8;
    if ((v14 & 0xFFFFFF00) != (v12 & 0xFFFFFF00))
    {
      break;
    }

    v16 = (v12 << 32) | v14;
    v15 = v16;
    v2 = v16;
    v3 = v16;
    atomic_compare_exchange_strong(v11, &v3, v16);
  }

  while (v3 != v2);
  v7 = (v12 & 2) != 0;
  if ((v12 & 2) != 0)
  {
    *&v22->__opaque[4];
  }

  LODWORD(v22->__sig) = 0;
  v21 = 0;
  v29 = v22->__opaque;
  v45 = v22->__opaque;
  v46 = 3;
  v47 = 3;
  v48 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v44 = *(v48 + 24);
  v43 = 0;
  v42 = v44;
  v41 = 0;
  v4 = v44;
  v5 = v44;
  atomic_compare_exchange_strong_explicit(v22->__opaque, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    v42 = v5;
  }

  v40 = v5 == v4;
  if (v5 != v4)
  {
    os_unfair_lock_unlock(v45);
  }

  if (v7)
  {
    __psynch_cvclrprepost();
  }

  return v21;
}

int pthread_cond_broadcast(pthread_cond_t *a1)
{
  v17 = a1;
  v16 = 1;
  v15 = 0;
  v14 = 1129270852;
  v24 = a1;
  v23 = &v14;
  sig = a1->__sig;
  v21 = sig;
  v19 = sig;
  v22 = sig;
  if (sig == 1018212795)
  {
    v25 = _pthread_cond_check_init_slow(v24, v23);
  }

  else
  {
    v98 = v24;
    v97 = v22;
    v96 = v23;
    v95 = 0;
    if (v22 == 1129270852)
    {
      if (*v96 != 1129270852)
      {
        v94 = *v96;
        v93 = v94;
        LODWORD(v98->__sig) = v94;
        v92 = v94;
      }
    }

    else if (v22 - 1129270853 < 2)
    {
      if (*v96 == 1129270852)
      {
        *v96 = v97;
      }

      else if (*v96 != v97)
      {
        qword_28028 = "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use";
        __break(0xB001u);
      }
    }

    else
    {
      v95 = 22;
    }

    v25 = v95;
  }

  if (v25 || v14 == 1129270852)
  {
    return v25;
  }

  if (v14 != 1129270853)
  {
    if (v14 == 1129270854)
    {
      v89 = v17;
      v88 = v16 & 1;
      v87 = v15;
      v91 = v17;
      v86 = &v91->__opaque[4 * ((*&v91->__opaque[4] >> 29) & 1) + 16];
      v85 = 0;
      v84 = 0;
      v83 = 0;
      v82 = v86;
      v85 = *v86;
      do
      {
        if (!WORD2(v85) || WORD2(v85) == HIWORD(v85))
        {
          return 0;
        }

        LODWORD(v81) = v85 + 1;
        WORD2(v81) = WORD2(v85);
        if (v88)
        {
          v12 = WORD2(v85);
        }

        else
        {
          if (HIWORD(v85) + 1 < WORD2(v85))
          {
            v11 = HIWORD(v85) + 1;
          }

          else
          {
            v11 = WORD2(v85);
          }

          v12 = v11;
        }

        HIWORD(v81) = v12;
        v84 = v81;
        v80 = v81;
        v7 = v85;
        v8 = v85;
        atomic_compare_exchange_strong_explicit(v82, &v8, v81, memory_order_release, memory_order_relaxed);
        if (v8 != v7)
        {
          v85 = v8;
        }

        v79 = v8 == v7;
        v83 = v8 == v7;
      }

      while (v8 != v7);
      v78 = v83;
      if (HIWORD(v85) < WORD2(v85))
      {
        v77 = 16777217;
        if (v88)
        {
          v77 |= 0x100u;
        }

        else if (v87)
        {
          v77 |= 0x200u;
        }

        while (1)
        {
          v76 = __ulock_wake();
          if ((v76 & 0x80000000) == 0)
          {
            break;
          }

          v10 = -v76;
          if (v76 == -2)
          {
            break;
          }

          if (v10 != 4)
          {
            if (v10 != 37)
            {
              v75 = -v76;
              qword_28028 = "BUG IN LIBPTHREAD: ulock_wake failure";
              qword_28058 = v75;
              __break(0xB001u);
              return 0;
            }

            if (!v87)
            {
              qword_28028 = "BUG IN LIBPTHREAD: EALREADY from ulock_wake";
              __break(0xB001u);
            }

            return pthread_cond_broadcast(v89);
          }
        }
      }

      return 0;
    }

    else
    {
      qword_28028 = "BUG IN LIBPTHREAD: impossible cond signature";
      qword_28058 = v14;
      __break(0xB001u);
    }

    return v18;
  }

  v68 = v17;
  v67 = v16 & 1;
  v66 = v15;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v74 = v17;
  v73 = &v57;
  v72 = &v56;
  v71 = &v55;
  v70 = &v54;
  if ((*&v17->__opaque[4] & 0x20000000) != 0)
  {
    *v72 = &v74->__opaque[20];
    *v70 = &v74->__opaque[24];
    *v71 = &v74->__opaque[16];
  }

  else
  {
    *v72 = &v74->__opaque[16];
    *v70 = &v74->__opaque[20];
    *v71 = &v74->__opaque[24];
  }

  *v73 = *v72;
  v50 = 0;
  do
  {
    v50 = 0;
    v60 = *v56;
    v59 = *v55;
    v58 = *v54;
    v64 = 0;
    v63 = 0;
    if ((v60 & 0xFFFFFF00) == (v58 & 0xFFFFFF00) || !v66 && (v60 & 0xFFFFFF00) == (v59 & 0xFFFFFF00))
    {
      v62 = v58 << 32;
      v62 |= v60;
      v61 = v62;
      v49 = v62;
      v48 = 0;
      v46 = v62;
      v45 = v62;
      v47 = v62;
      v1 = v62;
      v2 = v62;
      atomic_compare_exchange_strong(v57, &v2, v62);
      if (v2 != v1)
      {
        v49 = v2;
      }

      v44 = v2 == v1;
      v48 = v2 == v1;
      v43 = v48;
      if (v2 == v1)
      {
        return 0;
      }

      v50 = 1;
    }

    else
    {
      if (v66)
      {
        break;
      }

      if (is_seqhigher(v58 & 0xFFFFFF00, v60 & 0xFFFFFF00))
      {
        if (++v53 > 0x2000)
        {
          return 35;
        }

LABEL_45:
        sched_yield();
        v50 = 1;
        goto LABEL_52;
      }

      if (is_seqhigher(v59 & 0xFFFFFF00, v60 & 0xFFFFFF00))
      {
        if (++v52 > 0x2000)
        {
          if (v51)
          {
            return 35;
          }

          v42 = v59;
          v41 = 0;
          v39 = v58 & 0xFFFFFF00;
          v38 = v58 & 0xFFFFFF00;
          v40 = v58 & 0xFFFFFF00;
          v3 = v59;
          v4 = v59;
          atomic_compare_exchange_strong(v55, &v4, v58 & 0xFFFFFF00);
          if (v4 != v3)
          {
            v42 = v4;
          }

          v37 = v4 == v3;
          v41 = v4 == v3;
          v36 = v41;
          if (v4 == v3)
          {
            v51 = 1;
            v52 = 0;
          }
        }

        goto LABEL_45;
      }

      if (is_seqlower(v59 & 0xFFFFFF00, v58 & 0xFFFFFF00))
      {
        v63 = v58 & 0xFFFFFF00;
      }

      else
      {
        v63 = v59 & 0xFFFFFF00;
      }

      if (v67)
      {
        v64 = diff_genseq(v60, v63);
        v63 = v60 & 0xFFFFFF00;
      }

      else
      {
        v63 += 256;
      }
    }

LABEL_52:
    v13 = 1;
    if ((v50 & 1) == 0)
    {
      v35 = v59;
      v34 = 0;
      v32 = v63;
      v31 = v63;
      v33 = v63;
      v5 = v59;
      v6 = v59;
      atomic_compare_exchange_strong(v55, &v6, v63);
      if (v6 != v5)
      {
        v35 = v6;
      }

      v30 = v6 == v5;
      v34 = v6 == v5;
      v29 = v34;
      v13 = v6 != v5;
    }
  }

  while (v13);
  v28 = 0;
  if (*&v68->__opaque[4] >> 30 == 1)
  {
    v28 |= 0x10u;
  }

  v27 = v60 | (v58 << 32);
  if (v67)
  {
    v26 = v64 | (v59 << 32);
    v65 = __psynch_cvbroad();
  }

  else
  {
    v65 = __psynch_cvsignal();
  }

  if (v65 != -1 && v65)
  {
    _pthread_cond_updateval(v68, 0, 0, v65);
  }

  return 0;
}

int pthread_cond_signal_thread_np(pthread_cond_t *a1, pthread_t a2)
{
  v15 = 0;
  if (a2)
  {
    v15 = pthread_mach_thread_np(a2);
  }

  v20 = a1;
  v19 = 0;
  v18 = v15;
  v17 = 1129270852;
  v27 = a1;
  v26 = &v17;
  sig = a1->__sig;
  v24 = sig;
  v22 = sig;
  v25 = sig;
  if (sig == 1018212795)
  {
    v28 = _pthread_cond_check_init_slow(v27, v26);
  }

  else
  {
    v101 = v27;
    v100 = v25;
    v99 = v26;
    v98 = 0;
    if (v25 == 1129270852)
    {
      if (*v99 != 1129270852)
      {
        v97 = *v99;
        v96 = v97;
        LODWORD(v101->__sig) = v97;
        v95 = v97;
      }
    }

    else if (v100 - 1129270853 < 2)
    {
      if (*v99 == 1129270852)
      {
        *v99 = v100;
      }

      else if (*v99 != v100)
      {
        qword_28028 = "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use";
        __break(0xB001u);
      }
    }

    else
    {
      v98 = 22;
    }

    v28 = v98;
  }

  if (v28 || v17 == 1129270852)
  {
    return v28;
  }

  if (v17 != 1129270853)
  {
    if (v17 == 1129270854)
    {
      v92 = v20;
      v91 = v19 & 1;
      v90 = v18;
      v94 = v20;
      v89 = &v94->__opaque[4 * ((*&v94->__opaque[4] >> 29) & 1) + 16];
      v88 = 0;
      v87 = 0;
      v86 = 0;
      v85 = v89;
      v88 = *v89;
      do
      {
        if (!WORD2(v88) || WORD2(v88) == HIWORD(v88))
        {
          return 0;
        }

        LODWORD(v84) = v88 + 1;
        WORD2(v84) = WORD2(v88);
        if (v91)
        {
          v13 = WORD2(v88);
        }

        else
        {
          if (HIWORD(v88) + 1 < WORD2(v88))
          {
            v12 = HIWORD(v88) + 1;
          }

          else
          {
            v12 = WORD2(v88);
          }

          v13 = v12;
        }

        HIWORD(v84) = v13;
        v87 = v84;
        v83 = v84;
        v8 = v88;
        v9 = v88;
        atomic_compare_exchange_strong_explicit(v85, &v9, v84, memory_order_release, memory_order_relaxed);
        if (v9 != v8)
        {
          v88 = v9;
        }

        v82 = v9 == v8;
        v86 = v9 == v8;
      }

      while (v9 != v8);
      v81 = v86;
      if (HIWORD(v88) < WORD2(v88))
      {
        v80 = 16777217;
        if (v91)
        {
          v80 |= 0x100u;
        }

        else if (v90)
        {
          v80 |= 0x200u;
        }

        while (1)
        {
          v79 = __ulock_wake();
          if ((v79 & 0x80000000) == 0)
          {
            break;
          }

          v11 = -v79;
          if (v79 == -2)
          {
            break;
          }

          if (v11 != 4)
          {
            if (v11 != 37)
            {
              v78 = -v79;
              qword_28028 = "BUG IN LIBPTHREAD: ulock_wake failure";
              qword_28058 = v78;
              __break(0xB001u);
              return 0;
            }

            if (!v90)
            {
              qword_28028 = "BUG IN LIBPTHREAD: EALREADY from ulock_wake";
              __break(0xB001u);
            }

            return pthread_cond_broadcast(v92);
          }
        }
      }

      return 0;
    }

    else
    {
      qword_28028 = "BUG IN LIBPTHREAD: impossible cond signature";
      qword_28058 = v17;
      __break(0xB001u);
    }

    return v21;
  }

  v71 = v20;
  v70 = v19 & 1;
  v69 = v18;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v77 = v20;
  v76 = &v60;
  v75 = &v59;
  v74 = &v58;
  v73 = &v57;
  if ((*&v20->__opaque[4] & 0x20000000) != 0)
  {
    *v75 = &v77->__opaque[20];
    *v73 = &v77->__opaque[24];
    *v74 = &v77->__opaque[16];
  }

  else
  {
    *v75 = &v77->__opaque[16];
    *v73 = &v77->__opaque[20];
    *v74 = &v77->__opaque[24];
  }

  *v76 = *v75;
  v53 = 0;
  do
  {
    v53 = 0;
    v63 = *v59;
    v62 = *v58;
    v61 = *v57;
    v67 = 0;
    v66 = 0;
    if ((v63 & 0xFFFFFF00) == (v61 & 0xFFFFFF00) || !v69 && (v63 & 0xFFFFFF00) == (v62 & 0xFFFFFF00))
    {
      v65 = v61 << 32;
      v65 |= v63;
      v64 = v65;
      v52 = v65;
      v51 = 0;
      v49 = v65;
      v48 = v65;
      v50 = v65;
      v2 = v65;
      v3 = v65;
      atomic_compare_exchange_strong(v60, &v3, v65);
      if (v3 != v2)
      {
        v52 = v3;
      }

      v47 = v3 == v2;
      v51 = v3 == v2;
      v46 = v51;
      if (v3 == v2)
      {
        return 0;
      }

      v53 = 1;
    }

    else
    {
      if (v69)
      {
        break;
      }

      if (is_seqhigher(v61 & 0xFFFFFF00, v63 & 0xFFFFFF00))
      {
        if (++v56 > 0x2000)
        {
          return 35;
        }

LABEL_47:
        sched_yield();
        v53 = 1;
        goto LABEL_54;
      }

      if (is_seqhigher(v62 & 0xFFFFFF00, v63 & 0xFFFFFF00))
      {
        if (++v55 > 0x2000)
        {
          if (v54)
          {
            return 35;
          }

          v45 = v62;
          v44 = 0;
          v42 = v61 & 0xFFFFFF00;
          v41 = v61 & 0xFFFFFF00;
          v43 = v61 & 0xFFFFFF00;
          v4 = v62;
          v5 = v62;
          atomic_compare_exchange_strong(v58, &v5, v61 & 0xFFFFFF00);
          if (v5 != v4)
          {
            v45 = v5;
          }

          v40 = v5 == v4;
          v44 = v5 == v4;
          v39 = v44;
          if (v5 == v4)
          {
            v54 = 1;
            v55 = 0;
          }
        }

        goto LABEL_47;
      }

      if (is_seqlower(v62 & 0xFFFFFF00, v61 & 0xFFFFFF00))
      {
        v66 = v61 & 0xFFFFFF00;
      }

      else
      {
        v66 = v62 & 0xFFFFFF00;
      }

      if (v70)
      {
        v67 = diff_genseq(v63, v66);
        v66 = v63 & 0xFFFFFF00;
      }

      else
      {
        v66 += 256;
      }
    }

LABEL_54:
    v14 = 1;
    if ((v53 & 1) == 0)
    {
      v38 = v62;
      v37 = 0;
      v35 = v66;
      v34 = v66;
      v36 = v66;
      v6 = v62;
      v7 = v62;
      atomic_compare_exchange_strong(v58, &v7, v66);
      if (v7 != v6)
      {
        v38 = v7;
      }

      v33 = v7 == v6;
      v37 = v7 == v6;
      v32 = v37;
      v14 = v7 != v6;
    }
  }

  while (v14);
  v31 = 0;
  if (*&v71->__opaque[4] >> 30 == 1)
  {
    v31 |= 0x10u;
  }

  v30 = v63 | (v61 << 32);
  if (v70)
  {
    v29 = v67 | (v62 << 32);
    v68 = __psynch_cvbroad();
  }

  else
  {
    v68 = __psynch_cvsignal();
  }

  if (v68 != -1 && v68)
  {
    _pthread_cond_updateval(v71, 0, 0, v68);
  }

  return 0;
}

int pthread_cond_signal(pthread_cond_t *a1)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v14 = 1129270852;
  v24 = a1;
  v23 = &v14;
  sig = a1->__sig;
  v21 = sig;
  v19 = sig;
  v22 = sig;
  if (sig == 1018212795)
  {
    v25 = _pthread_cond_check_init_slow(v24, v23);
  }

  else
  {
    v98 = v24;
    v97 = v22;
    v96 = v23;
    v95 = 0;
    if (v22 == 1129270852)
    {
      if (*v96 != 1129270852)
      {
        v94 = *v96;
        v93 = v94;
        LODWORD(v98->__sig) = v94;
        v92 = v94;
      }
    }

    else if (v22 - 1129270853 < 2)
    {
      if (*v96 == 1129270852)
      {
        *v96 = v97;
      }

      else if (*v96 != v97)
      {
        qword_28028 = "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use";
        __break(0xB001u);
      }
    }

    else
    {
      v95 = 22;
    }

    v25 = v95;
  }

  if (v25 || v14 == 1129270852)
  {
    return v25;
  }

  if (v14 != 1129270853)
  {
    if (v14 == 1129270854)
    {
      v89 = v17;
      v88 = v16 & 1;
      v87 = v15;
      v91 = v17;
      v86 = &v91->__opaque[4 * ((*&v91->__opaque[4] >> 29) & 1) + 16];
      v85 = 0;
      v84 = 0;
      v83 = 0;
      v82 = v86;
      v85 = *v86;
      do
      {
        if (!WORD2(v85) || WORD2(v85) == HIWORD(v85))
        {
          return 0;
        }

        LODWORD(v81) = v85 + 1;
        WORD2(v81) = WORD2(v85);
        if (v88)
        {
          v12 = WORD2(v85);
        }

        else
        {
          if (HIWORD(v85) + 1 < WORD2(v85))
          {
            v11 = HIWORD(v85) + 1;
          }

          else
          {
            v11 = WORD2(v85);
          }

          v12 = v11;
        }

        HIWORD(v81) = v12;
        v84 = v81;
        v80 = v81;
        v7 = v85;
        v8 = v85;
        atomic_compare_exchange_strong_explicit(v82, &v8, v81, memory_order_release, memory_order_relaxed);
        if (v8 != v7)
        {
          v85 = v8;
        }

        v79 = v8 == v7;
        v83 = v8 == v7;
      }

      while (v8 != v7);
      v78 = v83;
      if (HIWORD(v85) < WORD2(v85))
      {
        v77 = 16777217;
        if (v88)
        {
          v77 |= 0x100u;
        }

        else if (v87)
        {
          v77 |= 0x200u;
        }

        while (1)
        {
          v76 = __ulock_wake();
          if ((v76 & 0x80000000) == 0)
          {
            break;
          }

          v10 = -v76;
          if (v76 == -2)
          {
            break;
          }

          if (v10 != 4)
          {
            if (v10 != 37)
            {
              v75 = -v76;
              qword_28028 = "BUG IN LIBPTHREAD: ulock_wake failure";
              qword_28058 = v75;
              __break(0xB001u);
              return 0;
            }

            if (!v87)
            {
              qword_28028 = "BUG IN LIBPTHREAD: EALREADY from ulock_wake";
              __break(0xB001u);
            }

            return pthread_cond_broadcast(v89);
          }
        }
      }

      return 0;
    }

    else
    {
      qword_28028 = "BUG IN LIBPTHREAD: impossible cond signature";
      qword_28058 = v14;
      __break(0xB001u);
    }

    return v18;
  }

  v68 = v17;
  v67 = v16 & 1;
  v66 = v15;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v74 = v17;
  v73 = &v57;
  v72 = &v56;
  v71 = &v55;
  v70 = &v54;
  if ((*&v17->__opaque[4] & 0x20000000) != 0)
  {
    *v72 = &v74->__opaque[20];
    *v70 = &v74->__opaque[24];
    *v71 = &v74->__opaque[16];
  }

  else
  {
    *v72 = &v74->__opaque[16];
    *v70 = &v74->__opaque[20];
    *v71 = &v74->__opaque[24];
  }

  *v73 = *v72;
  v50 = 0;
  do
  {
    v50 = 0;
    v60 = *v56;
    v59 = *v55;
    v58 = *v54;
    v64 = 0;
    v63 = 0;
    if ((v60 & 0xFFFFFF00) == (v58 & 0xFFFFFF00) || !v66 && (v60 & 0xFFFFFF00) == (v59 & 0xFFFFFF00))
    {
      v62 = v58 << 32;
      v62 |= v60;
      v61 = v62;
      v49 = v62;
      v48 = 0;
      v46 = v62;
      v45 = v62;
      v47 = v62;
      v1 = v62;
      v2 = v62;
      atomic_compare_exchange_strong(v57, &v2, v62);
      if (v2 != v1)
      {
        v49 = v2;
      }

      v44 = v2 == v1;
      v48 = v2 == v1;
      v43 = v48;
      if (v2 == v1)
      {
        return 0;
      }

      v50 = 1;
    }

    else
    {
      if (v66)
      {
        break;
      }

      if (is_seqhigher(v58 & 0xFFFFFF00, v60 & 0xFFFFFF00))
      {
        if (++v53 > 0x2000)
        {
          return 35;
        }

LABEL_45:
        sched_yield();
        v50 = 1;
        goto LABEL_52;
      }

      if (is_seqhigher(v59 & 0xFFFFFF00, v60 & 0xFFFFFF00))
      {
        if (++v52 > 0x2000)
        {
          if (v51)
          {
            return 35;
          }

          v42 = v59;
          v41 = 0;
          v39 = v58 & 0xFFFFFF00;
          v38 = v58 & 0xFFFFFF00;
          v40 = v58 & 0xFFFFFF00;
          v3 = v59;
          v4 = v59;
          atomic_compare_exchange_strong(v55, &v4, v58 & 0xFFFFFF00);
          if (v4 != v3)
          {
            v42 = v4;
          }

          v37 = v4 == v3;
          v41 = v4 == v3;
          v36 = v41;
          if (v4 == v3)
          {
            v51 = 1;
            v52 = 0;
          }
        }

        goto LABEL_45;
      }

      if (is_seqlower(v59 & 0xFFFFFF00, v58 & 0xFFFFFF00))
      {
        v63 = v58 & 0xFFFFFF00;
      }

      else
      {
        v63 = v59 & 0xFFFFFF00;
      }

      if (v67)
      {
        v64 = diff_genseq(v60, v63);
        v63 = v60 & 0xFFFFFF00;
      }

      else
      {
        v63 += 256;
      }
    }

LABEL_52:
    v13 = 1;
    if ((v50 & 1) == 0)
    {
      v35 = v59;
      v34 = 0;
      v32 = v63;
      v31 = v63;
      v33 = v63;
      v5 = v59;
      v6 = v59;
      atomic_compare_exchange_strong(v55, &v6, v63);
      if (v6 != v5)
      {
        v35 = v6;
      }

      v30 = v6 == v5;
      v34 = v6 == v5;
      v29 = v34;
      v13 = v6 != v5;
    }
  }

  while (v13);
  v28 = 0;
  if (*&v68->__opaque[4] >> 30 == 1)
  {
    v28 |= 0x10u;
  }

  v27 = v60 | (v58 << 32);
  if (v67)
  {
    v26 = v64 | (v59 << 32);
    v65 = __psynch_cvbroad();
  }

  else
  {
    v65 = __psynch_cvsignal();
  }

  if (v65 != -1 && v65)
  {
    _pthread_cond_updateval(v68, 0, 0, v65);
  }

  return 0;
}

uint64_t _pthread_ulock_cond_wait(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a4 == 2;
  v37 = 0;
  if (*a3 || v40[1])
  {
    v36 = v40[1] & 0x3FFFFFFF;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v4 = *v40;
    v5 = *v40 < 0;
    if (*v40 < 0)
    {
      v4 = -v4;
    }

    v6 = (v4 * 0x3B9ACA00uLL) >> 64;
    v7 = 1000000000 * v4;
    if (*v40 >= 0)
    {
      v8 = 1000000000 * v4;
    }

    else
    {
      v8 = -1000000000 * v4;
    }

    if (!v7)
    {
      v5 = 0;
    }

    if (v6)
    {
      v5 = 1;
    }

    v35 = v8;
    v47 = v5;
    v34 = v5;
    v9 = __CFADD__(v36, v8);
    v10 = v36 + v8;
    v11 = v9;
    v37 = v10;
    v46 = v11;
    v33 = v11 & 1;
    v32 = v34 | v11 & 1;
    v45 = v32 != 0;
    if (v34 | v11 & 1)
    {
      v37 = -1;
    }
  }

  v44 = v42;
  v31 = (v44 + 4 * ((*(v44 + 12) >> 29) & 1) + 24);
  v28 = 0x100000000;
  v27 = 0x100000000;
  v29 = 0x100000000;
  v23 = 0x100000000;
  v22 = 0x100000000;
  v24 = 0x100000000;
  add_explicit = atomic_fetch_add_explicit(v31, 0x100000000uLL, memory_order_relaxed);
  v25 = add_explicit;
  v20 = add_explicit;
  v26 = add_explicit + 0x100000000;
  v30 = add_explicit + 0x100000000;
  v19 = _pthread_mutex_ulock_unlock(v41);
  if (v19)
  {
    return _pthread_ulock_cond_wait_complete(v31, 0, v19);
  }

  while (1)
  {
    v18 = 16777217;
    if (v38)
    {
      v17[0] = v42;
      v17[1] = v41;
      v16 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v48 = StatusReg;
      v14 = StatusReg - 224;
      v15[0] = _pthread_ulock_cond_cleanup;
      v15[1] = v17;
      v16 = *(StatusReg - 216);
      *(v14 + 8) = v15;
      v19 = __ulock_wait2();
      pthread_testcancel();
      *(v14 + 8) = v16;
    }

    else
    {
      v19 = __ulock_wait2();
    }

    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v13 = -v19;
    if (v19 == -4)
    {
      v19 = 0;
      return _pthread_ulock_cond_wait_complete(v31, v41, v19);
    }

    if (v13 != 14)
    {
      break;
    }

LABEL_31:
    if (*v31 != v30)
    {
      return _pthread_ulock_cond_wait_complete(v31, v41, v19);
    }
  }

  if (v13 != 60)
  {
    qword_28028 = "BUG IN LIBPTHREAD: ulock_wait failure";
    qword_28058 = -v19;
    __break(0xB001u);
LABEL_30:
    v19 = 0;
    goto LABEL_31;
  }

  v19 = 60;
  return _pthread_ulock_cond_wait_complete(v31, v41, v19);
}

uint64_t _pthread_psynch_cond_wait(uint64_t a1, pthread_mutex_t *a2, uint64_t *a3, int a4)
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v51 = a1;
  v50 = &v31;
  v49 = &v30;
  v48 = &v29;
  v47 = &v28;
  if ((*(a1 + 12) & 0x20000000) != 0)
  {
    *v49 = (v51 + 28);
    *v47 = (v51 + 32);
    *v48 = (v51 + 24);
  }

  else
  {
    *v49 = (v51 + 24);
    *v47 = (v51 + 28);
    *v48 = (v51 + 32);
  }

  *v50 = *v49;
  do
  {
    v37 = *v30;
    v36 = *v29;
    v35 = *v28;
    v27 = (v35 << 32) | v37;
    v32 = v35 & 3;
    v33 = v35 & 0xFFFFFF00;
    v34 = v37 + 256;
    v26 = ((v35 & 0xFFFFFF00) << 32) | (v37 + 256);
    v22 = v27;
    v21 = 0;
    v19 = v26;
    v18 = v26;
    v20 = v26;
    v4 = v27;
    v5 = v27;
    atomic_compare_exchange_strong(v31, &v5, v26);
    if (v5 != v4)
    {
      v22 = v5;
    }

    v17 = v5 == v27;
    v21 = v5 == v27;
    v16 = v21;
  }

  while (v5 != v27);
  *(v45 + 16) = v44;
  v15 = _pthread_mutex_droplock(v44, &v39, &v23, &v41, &v40);
  if (v15)
  {
    return 22;
  }

  else
  {
    if ((v39 & 0x1000) != 0)
    {
      v25 = v41 | (v40 << 32);
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v39 &= ~0x2000u;
    v24 = v34 | ((v33 | v32) << 32);
    if (v42 == 2)
    {
      v14 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v52 = StatusReg;
      v12 = StatusReg - 224;
      v13[0] = _pthread_psynch_cond_cleanup;
      v13[1] = v45;
      v14 = *(StatusReg - 216);
      *(v12 + 8) = v13;
      v6 = *v43;
      v7 = v43[1];
      v38 = __psynch_cvwait();
      pthread_testcancel();
      *(v12 + 8) = v14;
    }

    else
    {
      v8 = *v43;
      v9 = v43[1];
      v38 = __psynch_cvwait();
    }

    if (v38 == -1)
    {
      v54 = 1;
      v55 = 1;
      v56 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = **(v56 + 8);
      if (v11 == 4)
      {
        v15 = 0;
      }

      else if (v11 == 60)
      {
        v15 = 60;
      }

      else
      {
        v15 = 22;
      }

      _pthread_cond_updateval(v45, v44, v11, 0);
    }

    else if (v38)
    {
      _pthread_cond_updateval(v45, v44, 0, v38);
    }

    pthread_mutex_lock(v44);
    return v15;
  }
}

int pthread_cond_init(pthread_cond_t *a1, const pthread_condattr_t *a2)
{
  *a1->__opaque = 0;
  v9 = a1;
  v8 = a2;
  v7 = 1129270852;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  *&a1->__opaque[8] = 0;
  v9[6] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[3] &= 0xE0000000;
  v9[3] = v9[3] & 0xDFFFFFFF | ((((v9 + 24) & 7) != 0) << 29);
  v14 = v9;
  v13 = &v6;
  v12 = &v5;
  v11 = &v4;
  v10 = &v3;
  if ((v9[3] & 0x20000000) != 0)
  {
    *v12 = (v14 + 7);
    *v10 = v14 + 8;
    *v11 = (v14 + 6);
  }

  else
  {
    *v12 = (v14 + 6);
    *v10 = v14 + 7;
    *v11 = (v14 + 8);
  }

  *v13 = *v12;
  *v3 = 1;
  if (v8)
  {
    v9[3] = v9[3] & 0x3FFFFFFF | (*v8->__opaque << 30);
  }

  else
  {
    v9[3] = v9[3] & 0x3FFFFFFF | 0x80000000;
  }

  result = 0;
  v9[1] = 0;
  atomic_store(v7, v9);
  return result;
}

BOOL is_seqhigher(int a1, int a2)
{
  v4 = a1 & 0xFFFFFF00;
  v3 = a2 & 0xFFFFFF00;
  if ((a1 & 0xFFFFFF00) <= (a2 & 0xFFFFFF00))
  {
    return v3 - v4 > 0x7FFFFF80;
  }

  else
  {
    return v4 - v3 < 0x7FFFFF80;
  }
}

BOOL is_seqlower(int a1, int a2)
{
  v4 = a1 & 0xFFFFFF00;
  v3 = a2 & 0xFFFFFF00;
  if ((a1 & 0xFFFFFF00) >= (a2 & 0xFFFFFF00))
  {
    return v4 - v3 > 0x7FFFFF80;
  }

  else
  {
    return v3 - v4 < 0x7FFFFF80;
  }
}

uint64_t diff_genseq(int a1, int a2)
{
  if ((a1 & 0xFFFFFF00) == (a2 & 0xFFFFFF00))
  {
    return 0;
  }

  else
  {
    return (a1 & 0xFFFFFF00) - (a2 & 0xFFFFFF00);
  }
}

uint64_t _pthread_cond_updateval(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (a3)
  {
    v19 = 256;
    if ((v20 & 0x100) != 0)
    {
      v19 |= 1u;
    }

    if ((v20 & 0x200) != 0)
    {
      v19 |= 2u;
    }
  }

  v27 = v22;
  v26 = &v10;
  v25 = &v9;
  v24 = &v8;
  v23 = &v7;
  if ((*(v22 + 12) & 0x20000000) != 0)
  {
    *v25 = v27 + 7;
    *v23 = v27 + 8;
    *v24 = (v27 + 6);
  }

  else
  {
    *v25 = v27 + 6;
    *v23 = v27 + 7;
    *v24 = (v27 + 8);
  }

  *v26 = *v25;
  do
  {
    v13 = *v9;
    v12 = *v8;
    v11 = *v7;
    v16 = 0;
    v18 = 0;
    result = diff_genseq(v13, v11);
    v17 = result;
    v15 = v11 << 32;
    v15 |= v13;
    if (result || (v19 & 2) != 0)
    {
      v16 = (v11 & 0xFFFFFF00) + (v19 & 0xFFFFFF00);
      v16 |= v11 & 3 | v19 & 3;
      if ((v16 & 0xFFFFFF00) == (v13 & 0xFFFFFF00) && (v16 & 3) == 3)
      {
        v16 &= ~2u;
        v18 = 1;
      }

      v14 = v16 << 32;
      v14 |= v13;
    }

    else
    {
      v14 = v15;
    }

    v5 = v15;
    v6 = v15;
    atomic_compare_exchange_strong(v10, &v6, v14);
  }

  while (v6 != v5);
  if (v17 && (v16 & 0xFFFFFF00) == (v13 & 0xFFFFFF00))
  {
    *(v22 + 16) = 0;
  }

  if (v18)
  {
    *(v22 + 12);
    return __psynch_cvclrprepost();
  }

  return result;
}

uint64_t _pthread_cond_check_init_slow(uint64_t a1, unsigned int *a2)
{
  v29 = a1 + 8;
  v28 = 327680;
  v30 = 3;
  v31 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 24);
  v26 = 0;
  v25 = v27;
  v24 = v27;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v2, v27, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v26 = v2;
  }

  v23 = v2 == 0;
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = *a1;
  if (*a1 == 1018212795)
  {
    v3 = *a2;
    v17 = a1;
    v16 = 0;
    v15 = v3;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    *(a1 + 16) = 0;
    v17[6] = 0;
    v17[7] = 0;
    v17[8] = 0;
    v17[3] &= 0xE0000000;
    v17[3] = v17[3] & 0xDFFFFFFF | ((((v17 + 24) & 7) != 0) << 29);
    v22 = v17;
    v21 = &v14;
    v20 = &v13;
    v19 = &v12;
    v18 = &v11;
    if ((v17[3] & 0x20000000) != 0)
    {
      *v20 = (v22 + 7);
      *v18 = v22 + 8;
      *v19 = (v22 + 6);
    }

    else
    {
      *v20 = (v22 + 6);
      *v18 = v22 + 7;
      *v19 = (v22 + 8);
    }

    *v21 = *v20;
    *v11 = 1;
    if (v16)
    {
      v17[3] = v17[3] & 0x3FFFFFFF | (*(v16 + 8) << 30);
    }

    else
    {
      v17[3] = v17[3] & 0x3FFFFFFF | 0x80000000;
    }

    v17[1] = 0;
    atomic_store(v15, v17);
    v8 = 0;
  }

  else
  {
    v48 = a1;
    v47 = v7;
    v46 = a2;
    v45 = 0;
    if (v7 == 1129270852)
    {
      if (*v46 != 1129270852)
      {
        v44 = *v46;
        v43 = v44;
        *v48 = v44;
        v42 = v44;
      }
    }

    else if (v47 - 1129270853 < 2)
    {
      if (*v46 == 1129270852)
      {
        *v46 = v47;
      }

      else if (*v46 != v47)
      {
        qword_28028 = "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use";
        __break(0xB001u);
      }
    }

    else
    {
      v45 = 22;
    }

    v8 = v45;
  }

  v38 = (a1 + 8);
  v39 = 3;
  v40 = 3;
  v41 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(v41 + 24);
  v36 = 0;
  v35 = v37;
  v34 = 0;
  v4 = v37;
  v5 = v37;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    v35 = v5;
  }

  v33 = v5 == v4;
  if (v5 != v4)
  {
    os_unfair_lock_unlock(v38);
  }

  return v8;
}

uint64_t _pthread_ulock_cond_wait_complete(atomic_ullong *a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    _pthread_mutex_ulock_lock(a2, 0);
  }

  v8 = *a1;
  do
  {
    LODWORD(v7) = v8;
    if (HIWORD(v8))
    {
      v6 = HIWORD(v8) - 1;
    }

    else
    {
      v6 = 0;
    }

    HIWORD(v7) = v6;
    v3 = v8;
    v4 = v8;
    WORD2(v7) = WORD2(v8) - 1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v7, memory_order_acquire, memory_order_acquire);
    if (v4 != v3)
    {
      v8 = v4;
    }
  }

  while (v4 != v3);
  return a3;
}

uint64_t _pthread_psynch_cond_cleanup(uint64_t result)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg - 59))
  {
    v1 = *(result + 16);
    result = _pthread_cond_updateval(result, v1, *(StatusReg - 56), 0);
    if (v1)
    {
      return pthread_mutex_lock(v1);
    }
  }

  return result;
}

_BYTE *_pthread_mutex_global_init(uint64_t a1, uint64_t a2)
{
  v9 = 2;
  if (*(a2 + 44))
  {
    v8 = *(a2 + 44);
    if (_pthread_mutex_policy_validate(v8))
    {
      v9 = _pthread_mutex_policy_to_opt(v8);
    }
  }

  v6 = _simple_getenv();
  if (v6)
  {
    v5 = *v6 - 48;
    if (_pthread_mutex_policy_validate(v5))
    {
      v9 = _pthread_mutex_policy_to_opt(v5);
    }
  }

  if (v9 != __pthread_mutex_default_opt_policy)
  {
    __pthread_mutex_default_opt_policy = v9;
  }

  v4 = 0;
  v7 = _simple_getenv();
  if (v7)
  {
    v4 = *v7 == 49;
  }

  else if (*(a2 + 44))
  {
    v4 = (*(a2 + 44) & 0x100) != 0;
  }

  if (v4 != (__pthread_mutex_use_ulock & 1))
  {
    __pthread_mutex_use_ulock = v4;
  }

  v3 = 0;
  result = _simple_getenv();
  if (result)
  {
    v3 = *result == 49;
  }

  else if (*(a2 + 44))
  {
    v3 = (*(a2 + 44) & 0x200) != 0;
  }

  if (v3 != (__pthread_mutex_ulock_adaptive_spin & 1))
  {
    __pthread_mutex_ulock_adaptive_spin = v3;
  }

  return result;
}

BOOL _pthread_mutex_policy_validate(int a1)
{
  v2 = 0;
  if ((a1 & 0x80000000) == 0)
  {
    return a1 < 4;
  }

  return v2;
}

uint64_t _pthread_mutex_policy_to_opt(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL mutex_seq_atomic_cmpxchgv_relaxed(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_relaxed, memory_order_relaxed);
  if (v4 != v3)
  {
    v6 = v4;
  }

  *a2 = v6;
  return v4 == v3;
}

BOOL mutex_seq_atomic_cmpxchgv_acquire(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_acquire, memory_order_acquire);
  if (v4 != v3)
  {
    v6 = v4;
  }

  *a2 = v6;
  return v4 == v3;
}

BOOL mutex_seq_atomic_cmpxchgv_release(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    v6 = v4;
  }

  *a2 = v6;
  return v4 == v3;
}

int pthread_mutex_init(pthread_mutex_t *a1, const pthread_mutexattr_t *a2)
{
  *a1->__opaque = 0;
  v12 = a1;
  v11 = a2;
  v10 = 7;
  *&a1->__opaque[4] = 0;
  *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFDFFF | 0x2000;
  if (v11)
  {
    if (v11->__sig != 1297373249)
    {
      return 22;
    }

    *&v12->__opaque[8] = *v11->__opaque;
    *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFFFC | *&v11->__opaque[4] & 3;
    *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFE3F | (((*&v11->__opaque[4] >> 6) & 7) << 6);
    *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFFF3 | (4 * ((*&v11->__opaque[4] >> 2) & 3));
    *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFFCF | (16 * ((*&v11->__opaque[4] >> 4) & 3));
  }

  else
  {
    switch(v10)
    {
      case 1:
        *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFFF3 | 4;
        break;
      case 2:
        *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFFF3 | 8;
        break;
      case 3:
      case 7:
        *&v12->__opaque[4] &= 0xFFFFFFF3;
        break;
      default:
        return 22;
    }

    *&v12->__opaque[8] = 0;
    *&v12->__opaque[4] &= 0xFFFFFFFC;
    if (v10 == 3)
    {
      *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFE3F | 0x80;
    }

    else
    {
      *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFE3F | ((__pthread_mutex_default_opt_policy & 7) << 6);
    }

    *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFFFCF | 0x20;
  }

  *&v12->__opaque[10] = 0;
  v9 = 1297437784;
  if (((*&v12->__opaque[4] >> 2) & 3) == 0)
  {
    v18 = v12;
    if (((*&v12->__opaque[4] >> 6) & 7) == 1 || (v19 = v12, ((*&v12->__opaque[4] >> 6) & 7) == 2))
    {
      v9 = _pthread_mutex_sig_fast;
    }
  }

  if (((*&v12->__opaque[4] >> 2) & 3) == 0 && ((*&v12->__opaque[4] >> 6) & 7) == 2 && ((*&v12->__opaque[4] >> 4) & 3) == 2 && v9 == _pthread_mutex_sig_fast)
  {
    *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFBFFF | ((__pthread_mutex_use_ulock & 1) << 14);
  }

  else
  {
    *&v12->__opaque[4] &= ~0x4000u;
  }

  if ((*&v12->__opaque[4] & 0x4000) != 0)
  {
    v2 = v12;
    *&v12->__opaque[16] = -1;
    *&v2->__opaque[24] = -1;
    *&v2->__opaque[32] = -1;
    v8 = 0;
    *&v12->__opaque[16] = 0;
  }

  else
  {
    v15 = v12;
    v14 = &v7;
    v7 = (&v12->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
    v17 = v12;
    v16 = &v6;
    v6 = (&v12->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
    if (v6 != &v12->__opaque[16])
    {
      *&v12->__opaque[4] = *&v12->__opaque[4] & 0xFFFFF7FF | 0x800;
      *&v12->__opaque[16] = -1;
    }

    *&v12->__opaque[32] = -1;
    *v6 = 0;
    *v7 = 0;
  }

  v5 = v9;
  *&v12->__opaque[40] = ~v12;
  *&v12->__opaque[48] = v5;
  *&v12->__opaque[52] = v5;
  *&v12->__opaque[12] = v5;
  v4 = v12;
  HIDWORD(v12->__sig) = HIDWORD(v9);
  atomic_store(v9, v4);
  return 0;
}

int pthread_mutex_getprioceiling(const pthread_mutex_t *a1, int *a2)
{
  v7 = 22;
  if ((a1->__sig & 0xFFFFFFFDLL) == 0x4D555458)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit(a1->__opaque, &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    *a2 = *&a1->__opaque[8];
    v7 = 0;
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(a1->__opaque, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(a1->__opaque);
    }
  }

  return v7;
}

int pthread_mutex_setprioceiling(pthread_mutex_t *a1, int a2, int *a3)
{
  v7 = 22;
  if ((a1->__sig & 0xFFFFFFFDLL) == 0x4D555458)
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(a1->__opaque, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    if (a2 >= -999 && a2 <= 999)
    {
      *a3 = *&a1->__opaque[8];
      *&a1->__opaque[8] = a2;
      v7 = 0;
    }

    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(a1->__opaque, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      os_unfair_lock_unlock(a1->__opaque);
    }
  }

  return v7;
}

int pthread_mutexattr_getprioceiling(const pthread_mutexattr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249)
  {
    *a2 = *a1->__opaque;
    return 0;
  }

  return v3;
}

int pthread_mutexattr_getprotocol(const pthread_mutexattr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249)
  {
    *a2 = *&a1->__opaque[4] & 3;
    return 0;
  }

  return v3;
}

int pthread_mutexattr_getpolicy_np(const pthread_mutexattr_t *a1, int *a2)
{
  v4 = 22;
  if (a1->__sig == 1297373249)
  {
    v3 = (*&a1->__opaque[4] >> 6) & 7;
    if (v3 == 1)
    {
      *a2 = 1;
      return 0;
    }

    else if (v3 == 2)
    {
      *a2 = 3;
      return 0;
    }
  }

  return v4;
}

int pthread_mutexattr_gettype(const pthread_mutexattr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249)
  {
    *a2 = (*&a1->__opaque[4] >> 2) & 3;
    return 0;
  }

  return v3;
}

int pthread_mutexattr_getpshared(const pthread_mutexattr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249)
  {
    *a2 = (*&a1->__opaque[4] >> 4) & 3;
    return 0;
  }

  return v3;
}

int pthread_mutexattr_init(pthread_mutexattr_t *a1)
{
  result = 0;
  *a1->__opaque = 0;
  *&a1->__opaque[4] &= 0xFFFFFFFC;
  *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFE3F | ((__pthread_mutex_default_opt_policy & 7) << 6);
  *&a1->__opaque[4] &= 0xFFFFFFF3;
  a1->__sig = 1297373249;
  *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFFCF | 0x20;
  return result;
}

int pthread_mutexattr_setprioceiling(pthread_mutexattr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249 && a2 >= -999 && a2 <= 999)
  {
    *a1->__opaque = a2;
    return 0;
  }

  return v3;
}

int pthread_mutexattr_setprotocol(pthread_mutexattr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249 && a2 <= 2)
  {
    *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFFFC | a2 & 3;
    return 0;
  }

  return v3;
}

int pthread_mutexattr_setpolicy_np(pthread_mutexattr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249)
  {
    if (a2 == 1)
    {
      *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFE3F | 0x40;
      return 0;
    }

    else if (a2 == 3)
    {
      *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFE3F | 0x80;
      return 0;
    }
  }

  return v3;
}

int pthread_mutexattr_settype(pthread_mutexattr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249 && a2 <= 2)
  {
    *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFFF3 | (4 * (a2 & 3));
    return 0;
  }

  return v3;
}

int pthread_mutexattr_setpshared(pthread_mutexattr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1297373249 && (a2 == 2 || a2 == 1))
  {
    *&a1->__opaque[4] = *&a1->__opaque[4] & 0xFFFFFFCF | (16 * (a2 & 3));
    return 0;
  }

  return v3;
}

uint64_t _pthread_mutex_fairshare_lock_slow(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v27 = a1;
  v26 = &v11;
  v11 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v10 = 0;
  v9 = 0;
  v29 = v11;
  v28 = &v10;
  v10 = *v11;
  v31 = a1;
  v30 = &v8;
  v8 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg - 8);
  v38 = a1;
  v37 = a2 & 1;
  v36 = v8;
  if (((*(a1 + 12) >> 2) & 3) != 0)
  {
    v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = *(v42 - 8);
    v33 = *v36;
    v34 = v33;
    v32 = v33;
    if (v33 == v35)
    {
      v40 = v38;
      if (((*(v38 + 12) >> 2) & 3) == 2)
      {
        if (HIWORD(*(v38 + 12)) == 0xFFFF)
        {
          v39 = -35;
        }

        else
        {
          *(v38 + 12) = *(v38 + 12) | ((HIWORD(*(v38 + 12)) + 1) << 16);
          v39 = HIWORD(*(v38 + 12));
        }
      }

      else if (v37)
      {
        v39 = -16;
      }

      else
      {
        v39 = -11;
      }
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v13 = v39;
  if (v39 <= 0)
  {
    if ((v13 & 0x80000000) != 0)
    {
      return -v13;
    }

    else
    {
      do
      {
        v9 = v10;
        v7 = *v8;
        v5 = (v10 & 2) == 0;
        if ((v14 & 1) == 0 || (v10 & 2) == 0)
        {
          LODWORD(v9) = v9 + 256;
          LODWORD(v9) = v9 | 3;
        }

        v25 = v11;
        v24 = &v10;
        v23 = &v9;
        v22 = v10;
        v21 = 0;
        v19 = v9;
        v18 = v9;
        v20 = v9;
        v2 = v10;
        v3 = v10;
        atomic_compare_exchange_strong_explicit(v11, &v3, v9, memory_order_acquire, memory_order_acquire);
        if (v3 != v2)
        {
          v22 = v3;
        }

        v17 = v3 == v2;
        v21 = v3 == v2;
        *v24 = v22;
        v16 = v21;
      }

      while (!v21);
      if (v5)
      {
        *v8 = v6;
        v13 = 0;
      }

      else if (v14)
      {
        v13 = 16;
      }

      else
      {
        v13 = _pthread_mutex_fairshare_lock_wait(v15, v9, v7);
      }

      if (!v13)
      {
        v41 = v15;
        if (((*(v15 + 12) >> 2) & 3) == 2)
        {
          *(v15 + 12) = *(v15 + 12) | 0x10000;
        }
      }
    }
  }

  else
  {
    v12 = 1;
    return 0;
  }

  return v13;
}

uint64_t _pthread_mutex_fairshare_lock_wait(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a2;
  v11 = a1;
  v10 = a3;
  v14 = a1;
  v13 = &v9;
  v9 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg - 8);
  do
  {
    do
    {
      v3 = *(v11 + 12);
      v7 = __psynch_mutexwait();
      v10 = *v9;
    }

    while (v7 == -1);
    v26 = v11;
    v25 = v8;
    v43 = v11;
    v24 = ((*(v11 + 12) >> 6) & 7) == 2;
    v23 = 1;
    v38 = v11;
    v37 = &v22;
    v22 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
    v21 = 0;
    v20 = 0;
    v40 = v22;
    v39 = &v21;
    v21 = *v22;
    v42 = v11;
    v41 = &v19;
    v19 = ((v11 + 31) & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v20 = v21;
      if (v24)
      {
        v23 = (v21 & 2) == 0;
      }

      else if ((v21 & 3) == 3)
      {
        break;
      }

      LODWORD(v20) = v20 | 3;
      v36 = v22;
      v35 = &v21;
      v34 = &v20;
      v33 = v21;
      v32 = 0;
      v30 = v20;
      v29 = v20;
      v31 = v20;
      v4 = v21;
      v5 = v21;
      atomic_compare_exchange_strong_explicit(v22, &v5, v20, memory_order_acquire, memory_order_acquire);
      if (v5 != v4)
      {
        v33 = v5;
      }

      v28 = v5 == v4;
      v32 = v5 == v4;
      *v35 = v33;
      v27 = v32;
    }

    while (!v32);
    if (v23)
    {
      v18 = v25;
      v17 = v25;
      *v19 = v25;
      v16 = v18;
    }
  }

  while (!v23);
  return 0;
}

uint64_t _pthread_mutex_fairshare_unlock_slow(uint64_t a1)
{
  v11 = a1;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v40 = a1;
  v39 = &v8;
  v38 = 0;
  v37 = &v9;
  v36 = &v9 + 1;
  v35 = *(a1 + 12);
  v35 &= ~0x1000u;
  v53 = a1;
  v52 = &v34;
  v34 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v33 = 0;
  v32 = 0;
  v55 = v34;
  v54 = &v33;
  v33 = *v34;
  v57 = a1;
  v56 = &v31;
  v31 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v30 = 0;
  v29 = 0;
  v63 = a1;
  v62 = v31;
  if (((*(a1 + 12) >> 2) & 3) != 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v61 = *(StatusReg - 8);
    v59 = *v62;
    v60 = v59;
    v58 = v59;
    if (v59 == v61)
    {
      v65 = v63;
      v64 = ((*(v63 + 12) >> 2) & 3) == 2 && (v1 = (HIWORD(*(v63 + 12)) - 1), *(v63 + 12) = *(v63 + 12) | (v1 << 16), v1);
    }

    else
    {
      v64 = -1;
    }
  }

  else
  {
    v64 = 0;
  }

  v28 = v64;
  if (v64 <= 0)
  {
    if (v28 < 0)
    {
      v41 = -v28;
    }

    else
    {
      v27 = 0;
      v26 = 0;
      do
      {
        v32 = v33;
        v24 = *v31;
        v25 = v24;
        v23 = v24;
        v30 = v24;
        v27 = 0;
        v26 = 0;
        if (diff_genseq(v33, SHIDWORD(v33)))
        {
          HIDWORD(v32) += 256;
          if ((v33 & 0xFFFFFF00) == (HIDWORD(v32) & 0xFFFFFF00))
          {
            LODWORD(v32) = v32 & 0xFFFFFFFC;
            v27 = 1;
            v29 = 0;
          }

          else
          {
            v29 = -1;
            v35 |= 0x1000u;
          }

          if (v29 != v30)
          {
            v21 = v30;
            v20 = 0;
            v18 = v29;
            v17 = v29;
            v19 = v29;
            v2 = v30;
            v3 = v30;
            atomic_compare_exchange_strong_explicit(v31, &v3, v29, memory_order_relaxed, memory_order_relaxed);
            if (v3 != v2)
            {
              v21 = v3;
            }

            v16 = v3 == v2;
            v20 = v3 == v2;
            v15 = v20;
            if (v3 != v2)
            {
              _pthread_mutex_corruption_abort();
            }
          }
        }

        else
        {
          v26 = 1;
        }

        if (v27 & 1) != 0 || (v26)
        {
          v35 &= ~0x1000u;
        }

        v51 = v34;
        v50 = &v33;
        v49 = &v32;
        v48 = v33;
        v47 = 0;
        v45 = v32;
        v44 = v32;
        v46 = v32;
        v4 = v33;
        v5 = v33;
        atomic_compare_exchange_strong_explicit(v34, &v5, v32, memory_order_release, memory_order_relaxed);
        if (v5 != v4)
        {
          v48 = v5;
        }

        v43 = v5 == v4;
        v47 = v5 == v4;
        *v50 = v48;
        v42 = v47;
      }

      while (!v47);
      if (v37)
      {
        *v37 = v32;
      }

      if (v36)
      {
        *v36 = HIDWORD(v32);
      }

      if (v38)
      {
        *v38 = v40;
      }

      if (v39)
      {
        *v39 = v35;
      }

      v41 = 0;
    }
  }

  else
  {
    if (v39)
    {
      *v39 = v35;
    }

    v41 = 0;
  }

  v10 = v41;
  if (v41)
  {
    return v10;
  }

  else if ((v8 & 0x1000) != 0)
  {
    return _pthread_mutex_fairshare_unlock_drop(v11, v9, v8);
  }

  else
  {
    v14 = v11;
    v13 = &v7;
    v7 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
    return 0;
  }
}

uint64_t _pthread_mutex_fairshare_unlock_drop(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a2;
  v9 = a1;
  v8 = a3;
  v7 = 0;
  v6 = 0;
  v13 = a1;
  v12 = &v5;
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v5;
  v6 = __psynch_mutexdrop();
  if (v6 == -1)
  {
    v14 = 1;
    v15 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = **(StatusReg + 8);
    if (v7 == 4)
    {
      v7 = 0;
    }

    if (v7)
    {
      qword_28028 = "BUG IN LIBPTHREAD: __psynch_mutexdrop failed";
      qword_28058 = v7;
      __break(0xB001u);
    }

    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t _pthread_mutex_ulock_lock(uint64_t a1, char a2)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v5 = 0;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 24), &v2, v6, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v5 = v2;
  }

  v4 = 0;
  if (v2)
  {
    if (a2)
    {
      return 16;
    }

    else
    {
      return _pthread_mutex_ulock_lock_slow(a1, v6, v5);
    }
  }

  return v4;
}

uint64_t _pthread_mutex_ulock_lock_slow(uint64_t a1, unsigned int a2, int a3)
{
  v14 = 0;
  do
  {
    v13 = 0;
    do
    {
      v12 = a3 & 0xFFFFFFFC;
      if (v13)
      {
        v12 = -4;
        v13 = 0;
      }

      v11 = a3;
      v3 = a3;
      v4 = a3;
      atomic_compare_exchange_strong_explicit((a1 + 24), &v4, v12 | 1, memory_order_relaxed, memory_order_relaxed);
      if (v4 != v3)
      {
        v11 = v4;
      }

      a3 = v11;
      if (v4 == v3)
      {
        v10 = __ulock_wait();
        if (v10 < 0)
        {
          v7 = -v10;
          if (v10 != -4 && v7 != 14)
          {
            if (v7 == 105)
            {
              v13 = 1;
              continue;
            }

            qword_28028 = "BUG IN LIBPTHREAD: ulock_wait failure";
            qword_28058 = v10;
            __break(0xB001u);
          }
        }

        else if (v10 >= 1)
        {
          v14 = 1;
        }

        a3 = *(a1 + 24);
      }
    }

    while (a3);
    v9 = a2;
    if (v14)
    {
      v9 = a2 | 1;
    }

    v8 = 0;
    v5 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 24), &v5, v9, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      v8 = v5;
    }

    a3 = v8;
  }

  while (v5);
  return 0;
}

uint64_t _pthread_mutex_ulock_unlock(uint64_t a1)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v3 = atomic_exchange_explicit((a1 + 24), 0, memory_order_release);
  v2 = 0;
  if (v3 != v4)
  {
    return _pthread_mutex_ulock_unlock_slow(a1, v4, v3);
  }

  return v2;
}

uint64_t _pthread_mutex_ulock_unlock_slow(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    if ((a3 & 0xFFFFFFFC) == a2)
    {
      if ((a3 & 1) == 0)
      {
        qword_28028 = "BUG IN LIBPTHREAD: unlock_slow without orig_waiters";
        __break(0xB001u);
      }

LABEL_7:
      while (1)
      {
        v4 = __ulock_wake();
        if ((v4 & 0x80000000) == 0 || v4 == -2)
        {
          break;
        }

        if (-v4 != 4)
        {
          qword_28028 = "BUG IN LIBPTHREAD: ulock_wake failure";
          qword_28058 = -v4;
          __break(0xB001u);
          return 0;
        }
      }
    }

    else if (a3)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t _pthread_mutex_firstfit_unlock_slow(uint64_t a1)
{
  v8[1] = a1;
  v8[0] = 0;
  v7 = 0;
  v32 = a1;
  v31 = &v7;
  v30 = 0;
  v29 = v8;
  v28 = v8 + 1;
  v27 = *(a1 + 12) & 0xFFFFEFFF;
  v26 = 0;
  v45 = a1;
  v44 = &v25;
  v25 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v24 = 0;
  v23 = 0;
  v47 = v25;
  v46 = &v24;
  v24 = *v25;
  v49 = a1;
  v48 = &v22;
  v22 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v21 = 0;
  v55 = a1;
  v54 = v22;
  if (((*(a1 + 12) >> 2) & 3) != 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v53 = *(StatusReg - 8);
    v51 = *v54;
    v52 = v51;
    v50 = v51;
    if (v51 == v53)
    {
      v57 = v55;
      v56 = ((*(v55 + 12) >> 2) & 3) == 2 && (v1 = (HIWORD(*(v55 + 12)) - 1), *(v55 + 12) = *(v55 + 12) | (v1 << 16), v1);
    }

    else
    {
      v56 = -1;
    }
  }

  else
  {
    v56 = 0;
  }

  v20 = v56;
  if (v56 <= 0)
  {
    if (v20 < 0)
    {
      v33 = -v20;
    }

    else
    {
      do
      {
        v23 = v24;
        v18 = *v22;
        v19 = v18;
        v17 = v18;
        v21 = v18;
        v26 = diff_genseq(v24, SHIDWORD(v24)) > 0;
        LODWORD(v23) = v23 & 0xFFFFFFFD;
        if (v26)
        {
          HIDWORD(v23) += 256;
        }

        if (v21)
        {
          v16 = v21;
          v15 = 0;
          v13 = 0;
          v12 = 0;
          v14 = 0;
          v2 = v21;
          v3 = v21;
          atomic_compare_exchange_strong_explicit(v22, &v3, 0, memory_order_relaxed, memory_order_relaxed);
          if (v3 != v2)
          {
            v16 = v3;
          }

          v11 = v3 == v2;
          v15 = v3 == v2;
          v10 = v15;
          if (v3 != v2)
          {
            _pthread_mutex_corruption_abort();
          }
        }

        v43 = v25;
        v42 = &v24;
        v41 = &v23;
        v40 = v24;
        v39 = 0;
        v37 = v23;
        v36 = v23;
        v38 = v23;
        v4 = v24;
        v5 = v24;
        atomic_compare_exchange_strong_explicit(v25, &v5, v23, memory_order_release, memory_order_relaxed);
        if (v5 != v4)
        {
          v40 = v5;
        }

        v35 = v5 == v4;
        v39 = v5 == v4;
        *v42 = v40;
        v34 = v39;
      }

      while (!v39);
      if (v26)
      {
        v27 |= 0x1000u;
      }

      if (v29)
      {
        *v29 = v23;
      }

      if (v28)
      {
        *v28 = HIDWORD(v23);
      }

      if (v30)
      {
        *v30 = v32;
      }

      if (v31)
      {
        *v31 = v27;
      }

      v33 = 0;
    }
  }

  else
  {
    if (v31)
    {
      *v31 = v27;
    }

    v33 = 0;
  }

  if (v33)
  {
    return v33;
  }

  else if ((v7 & 0x1000) != 0)
  {
    return _pthread_mutex_firstfit_wake();
  }

  else
  {
    return 0;
  }
}

uint64_t _pthread_mutex_firstfit_wake()
{
  if (__psynch_mutexdrop() == -1)
  {
    v1 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v1 == 4)
    {
      v1 = 0;
    }

    if (v1)
    {
      qword_28028 = "BUG IN LIBPTHREAD: __psynch_mutexdrop failed";
      qword_28058 = v1;
      __break(0xB001u);
    }

    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t _pthread_mutex_firstfit_lock_slow(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v27 = a1;
  v26 = &v11;
  v11 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v10 = 0;
  v9 = 0;
  v29 = v11;
  v28 = &v10;
  v10 = *v11;
  v31 = a1;
  v30 = &v8;
  v8 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg - 8);
  v38 = a1;
  v37 = a2 & 1;
  v36 = v8;
  if (((*(a1 + 12) >> 2) & 3) != 0)
  {
    v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = *(v42 - 8);
    v33 = *v36;
    v34 = v33;
    v32 = v33;
    if (v33 == v35)
    {
      v40 = v38;
      if (((*(v38 + 12) >> 2) & 3) == 2)
      {
        if (HIWORD(*(v38 + 12)) == 0xFFFF)
        {
          v39 = -35;
        }

        else
        {
          *(v38 + 12) = *(v38 + 12) | ((HIWORD(*(v38 + 12)) + 1) << 16);
          v39 = HIWORD(*(v38 + 12));
        }
      }

      else if (v37)
      {
        v39 = -16;
      }

      else
      {
        v39 = -11;
      }
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v13 = v39;
  if (v39 <= 0)
  {
    if ((v13 & 0x80000000) != 0)
    {
      return -v13;
    }

    else
    {
      do
      {
        v9 = v10;
        v7 = *v8;
        v5 = (v10 & 2) == 0;
        if ((v14 & 1) == 0 || (v10 & 2) == 0)
        {
          if ((v10 & 2) != 0)
          {
            LODWORD(v9) = v9 + 256;
          }

          else
          {
            LODWORD(v9) = v9 | 2;
          }
        }

        v25 = v11;
        v24 = &v10;
        v23 = &v9;
        v22 = v10;
        v21 = 0;
        v19 = v9;
        v18 = v9;
        v20 = v9;
        v2 = v10;
        v3 = v10;
        atomic_compare_exchange_strong_explicit(v11, &v3, v9, memory_order_acquire, memory_order_acquire);
        if (v3 != v2)
        {
          v22 = v3;
        }

        v17 = v3 == v2;
        v21 = v3 == v2;
        *v24 = v22;
        v16 = v21;
      }

      while (!v21);
      if (v5)
      {
        *v8 = v6;
        v13 = 0;
      }

      else if (v14)
      {
        v13 = 16;
      }

      else
      {
        v13 = _pthread_mutex_firstfit_lock_wait(v15, v9, v7);
      }

      if (!v13)
      {
        v41 = v15;
        if (((*(v15 + 12) >> 2) & 3) == 2)
        {
          *(v15 + 12) = *(v15 + 12) | 0x10000;
        }
      }
    }
  }

  else
  {
    v12 = 1;
    return 0;
  }

  return v13;
}

uint64_t _pthread_mutex_firstfit_lock_wait(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v11 = a1;
  v10 = a3;
  v12[2] = a1;
  v12[1] = &v9;
  v9 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg - 8);
  do
  {
    do
    {
      v3 = *(v11 + 12);
      v7 = __psynch_mutexwait();
      v10 = *v9;
    }

    while (v7 == -1);
    v24 = v11;
    v23 = v8;
    v22 = v12;
    v21 = 0;
    v36 = v11;
    v35 = &v20;
    v20 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
    v19 = 0;
    v18 = 0;
    v38 = v20;
    v37 = &v19;
    v19 = *v20;
    v40 = v11;
    v39 = &v17;
    v17 = ((v11 + 31) & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v18 = v19;
      v21 = (v19 & 2) == 0;
      if ((v19 & 2) != 0)
      {
        LODWORD(v18) = v18 + 256;
      }

      else
      {
        LODWORD(v18) = v18 | 2;
      }

      v34 = v20;
      v33 = &v19;
      v32 = &v18;
      v31 = v19;
      v30 = 0;
      v28 = v18;
      v27 = v18;
      v29 = v18;
      v4 = v19;
      v5 = v19;
      atomic_compare_exchange_strong_explicit(v20, &v5, v18, memory_order_acquire, memory_order_acquire);
      if (v5 != v4)
      {
        v31 = v5;
      }

      v26 = v5 == v4;
      v30 = v5 == v4;
      *v33 = v31;
      v25 = v30;
    }

    while (!v30);
    if (v21)
    {
      v16 = v23;
      v15 = v23;
      *v17 = v23;
      v14 = v16;
    }

    if (v22)
    {
      *v22 = v18;
    }
  }

  while (!v21);
  return 0;
}

uint64_t _pthread_mutex_droplock(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v87 = a1;
  if (((*(a1 + 12) >> 6) & 7) == 1)
  {
    v29 = a1;
    v28 = a2;
    v27 = a3;
    v26 = a4;
    v25 = a5;
    v24 = *(a1 + 12);
    v24 &= ~0x1000u;
    v42 = a1;
    v41 = &v23;
    v23 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
    v22 = 0;
    v21 = 0;
    v44 = v23;
    v43 = &v22;
    v22 = *v23;
    v46 = a1;
    v45 = &v20;
    v20 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
    v102 = a1;
    v101 = v20;
    if (((*(a1 + 12) >> 2) & 3) != 0)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v100 = *(StatusReg - 8);
      v98 = *v101;
      v99 = v98;
      v97 = v98;
      if (v98 == v100)
      {
        v104 = v102;
        v103 = ((*(v102 + 12) >> 2) & 3) == 2 && (v5 = (HIWORD(*(v102 + 12)) - 1), *(v102 + 12) = *(v102 + 12) | (v5 << 16), v5);
      }

      else
      {
        v103 = -1;
      }
    }

    else
    {
      v103 = 0;
    }

    if (v103 <= 0)
    {
      if (v103 < 0)
      {
        return -v103;
      }

      else
      {
        do
        {
          v21 = v22;
          v19 = *v20;
          v17 = 0;
          v16 = 0;
          if (diff_genseq(v22, SHIDWORD(v22)))
          {
            HIDWORD(v21) += 256;
            if ((v22 & 0xFFFFFF00) == (HIDWORD(v21) & 0xFFFFFF00))
            {
              LODWORD(v21) = v21 & 0xFFFFFFFC;
              v17 = 1;
              v18 = 0;
            }

            else
            {
              v18 = -1;
              v24 |= 0x1000u;
            }

            if (v18 != v19)
            {
              v6 = v19;
              atomic_compare_exchange_strong_explicit(v20, &v6, v18, memory_order_relaxed, memory_order_relaxed);
              if (v6 != v19)
              {
                _pthread_mutex_corruption_abort();
              }
            }
          }

          else
          {
            v16 = 1;
          }

          if (v17 & 1) != 0 || (v16)
          {
            v24 &= ~0x1000u;
          }

          v40 = v23;
          v39 = &v22;
          v38 = &v21;
          v37 = v22;
          v36 = 0;
          v34 = v21;
          v33 = v21;
          v35 = v21;
          v7 = v22;
          v8 = v22;
          atomic_compare_exchange_strong_explicit(v23, &v8, v21, memory_order_release, memory_order_relaxed);
          if (v8 != v7)
          {
            v37 = v8;
          }

          v32 = v8 == v7;
          v36 = v8 == v7;
          *v39 = v37;
          v31 = v36;
        }

        while (!v36);
        if (v26)
        {
          *v26 = v21;
        }

        if (v25)
        {
          *v25 = HIDWORD(v21);
        }

        if (v27)
        {
          *v27 = v29;
        }

        if (v28)
        {
          *v28 = v24;
        }

        return 0;
      }
    }

    else
    {
      if (v28)
      {
        *v28 = v24;
      }

      return 0;
    }
  }

  else
  {
    v69 = a1;
    v68 = a2;
    v67 = a3;
    v66 = a4;
    v65 = a5;
    v64 = *(a1 + 12) & 0xFFFFEFFF;
    v63 = 0;
    v82 = a1;
    v81 = &v62;
    v62 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
    v61 = 0;
    v60 = 0;
    v84 = v62;
    v83 = &v61;
    v61 = *v62;
    v86 = a1;
    v85 = &v59;
    v59 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
    v58 = 0;
    v93 = a1;
    v92 = v59;
    if (((*(a1 + 12) >> 2) & 3) != 0)
    {
      v96 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v91 = *(v96 - 8);
      v89 = *v92;
      v90 = v89;
      v88 = v89;
      if (v89 == v91)
      {
        v95 = v93;
        v94 = ((*(v93 + 12) >> 2) & 3) == 2 && (v9 = (HIWORD(*(v93 + 12)) - 1), *(v93 + 12) = *(v93 + 12) | (v9 << 16), v9);
      }

      else
      {
        v94 = -1;
      }
    }

    else
    {
      v94 = 0;
    }

    v57 = v94;
    if (v94 <= 0)
    {
      if (v57 < 0)
      {
        return -v57;
      }

      else
      {
        do
        {
          v60 = v61;
          v55 = *v59;
          v56 = v55;
          v54 = v55;
          v58 = v55;
          v63 = diff_genseq(v61, SHIDWORD(v61)) > 0;
          LODWORD(v60) = v60 & 0xFFFFFFFD;
          if (v63)
          {
            HIDWORD(v60) += 256;
          }

          if (v58)
          {
            v53 = v58;
            v52 = 0;
            v50 = 0;
            v49 = 0;
            v51 = 0;
            v10 = v58;
            v11 = v58;
            atomic_compare_exchange_strong_explicit(v59, &v11, 0, memory_order_relaxed, memory_order_relaxed);
            if (v11 != v10)
            {
              v53 = v11;
            }

            v48 = v11 == v58;
            v52 = v11 == v58;
            v47 = v52;
            if (v11 != v58)
            {
              _pthread_mutex_corruption_abort();
            }
          }

          v80 = v62;
          v79 = &v61;
          v78 = &v60;
          v77 = v61;
          v76 = 0;
          v74 = v60;
          v73 = v60;
          v75 = v60;
          v12 = v61;
          v13 = v61;
          atomic_compare_exchange_strong_explicit(v62, &v13, v60, memory_order_release, memory_order_relaxed);
          if (v13 != v12)
          {
            v77 = v13;
          }

          v72 = v13 == v12;
          v76 = v13 == v12;
          *v79 = v77;
          v71 = v76;
        }

        while (!v76);
        if (v63)
        {
          v64 |= 0x1000u;
        }

        if (v66)
        {
          *v66 = v60;
        }

        if (v65)
        {
          *v65 = HIDWORD(v60);
        }

        if (v67)
        {
          *v67 = v69;
        }

        if (v68)
        {
          *v68 = v64;
        }

        return 0;
      }
    }

    else
    {
      if (v68)
      {
        *v68 = v64;
      }

      return 0;
    }
  }
}

uint64_t _pthread_mutex_lock_init_slow(uint64_t a1, char a2)
{
  if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458)
  {
    v6 = 0;
  }

  else
  {
    v6 = _pthread_mutex_check_init_slow(a1);
  }

  if (v6)
  {
    return v6;
  }

  else if (((*(a1 + 12) >> 6) & 7) == 1)
  {
    return _pthread_mutex_fairshare_lock_slow(a1, a2 & 1);
  }

  else if ((*(a1 + 12) >> 14))
  {
    return _pthread_mutex_ulock_lock(a1, a2 & 1);
  }

  else
  {
    return _pthread_mutex_firstfit_lock_slow(a1, a2 & 1);
  }
}

int pthread_mutex_unlock(pthread_mutex_t *a1)
{
  v8 = a1;
  v28 = a1;
  if (a1->__sig != 1297437786)
  {
    return _pthread_mutex_unlock_init_slow(v8);
  }

  v26 = v8;
  if (((*&v8->__opaque[4] >> 6) & 7) == 1)
  {
    return _pthread_mutex_fairshare_unlock(v8);
  }

  v27 = v8;
  if ((*&v8->__opaque[4] >> 14))
  {
    return _pthread_mutex_ulock_unlock(v8);
  }

  v25 = v8;
  v24 = &v7;
  v7 = (&v8->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
  v21 = v8;
  v20 = &v6;
  v6 = (&v8->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
  v5 = 0;
  v4 = 0;
  v23 = v6;
  v22 = &v5;
  v5 = *v6;
  *v7 = 0;
  do
  {
    v4 = v5;
    if (diff_genseq(v5, SHIDWORD(v5)))
    {
      return _pthread_mutex_firstfit_unlock_slow(v8);
    }

    LODWORD(v4) = v4 & 0xFFFFFFFD;
    v19 = v6;
    v18 = &v5;
    v17 = &v4;
    v16 = v5;
    v15 = 0;
    v13 = v4;
    v12 = v4;
    v14 = v4;
    v1 = v5;
    v2 = v5;
    atomic_compare_exchange_strong_explicit(v6, &v2, v4, memory_order_release, memory_order_relaxed);
    if (v2 != v1)
    {
      v16 = v2;
    }

    v11 = v2 == v1;
    v15 = v2 == v1;
    *v18 = v16;
    v10 = v15;
  }

  while (!v15);
  return 0;
}

uint64_t _pthread_mutex_unlock_init_slow(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458)
  {
    v4 = 0;
  }

  else
  {
    v4 = _pthread_mutex_check_init_slow(a1);
  }

  if (v4)
  {
    return v4;
  }

  else if (((*(a1 + 12) >> 6) & 7) == 1)
  {
    return _pthread_mutex_fairshare_unlock_slow(a1);
  }

  else if ((*(a1 + 12) >> 14))
  {
    return _pthread_mutex_ulock_unlock(a1);
  }

  else
  {
    return _pthread_mutex_firstfit_unlock_slow(a1);
  }
}

uint64_t _pthread_mutex_fairshare_unlock(uint64_t a1)
{
  v8 = a1;
  v25 = a1;
  v24 = &v7;
  v7 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v21 = a1;
  v20 = &v6;
  v6 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v5 = 0;
  *&v4[4] = 0;
  v23 = v6;
  v22 = &v5;
  v5 = *v6;
  *v4 = diff_genseq(v5, SHIDWORD(v5));
  if (*v4)
  {
    *v7 = 0;
    do
    {
      *&v4[4] = v5;
      *&v4[8] = HIDWORD(v5) + 256;
      if ((v5 & 0xFFFFFF00) != ((HIDWORD(v5) + 256) & 0xFFFFFF00))
      {
        return _pthread_mutex_fairshare_unlock_slow(v8);
      }

      *&v4[4] &= 0xFFFFFFFC;
      v19 = v6;
      v18 = &v5;
      v17 = &v4[4];
      v16 = v5;
      v15 = 0;
      v13 = *&v4[4];
      v12 = *&v4[4];
      v14 = *&v4[4];
      v1 = v5;
      v2 = v5;
      atomic_compare_exchange_strong_explicit(v6, &v2, *&v4[4], memory_order_release, memory_order_relaxed);
      if (v2 != v1)
      {
        v16 = v2;
      }

      v11 = v2 == v1;
      v15 = v2 == v1;
      *v18 = v16;
      v10 = v15;
    }

    while (!v15);
    return 0;
  }

  else
  {
    return 0;
  }
}

int pthread_mutex_lock(pthread_mutex_t *a1)
{
  if (a1->__sig != 1297437786)
  {
    return _pthread_mutex_lock_init_slow(a1, 0);
  }

  if (((*&a1->__opaque[4] >> 6) & 7) == 1)
  {
    return _pthread_mutex_fairshare_lock(a1, 0);
  }

  if ((*&a1->__opaque[4] & 0x4000) != 0)
  {
    return _pthread_mutex_ulock_lock(a1, 0);
  }

  v12 = a1;
  v11 = 0;
  v29 = a1;
  v28 = &v10;
  v10 = (&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg - 8);
  v25 = a1;
  v24 = &v8;
  v8 = (&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
  v7 = 0;
  v6 = 0;
  v27 = v8;
  v26 = &v7;
  v7 = *v8;
  if ((v7 & 2) != 0)
  {
    return _pthread_mutex_firstfit_lock_slow(v12, v11 & 1);
  }

  do
  {
    v6 = v7;
    v5 = (v7 & 2) == 0;
    if ((v11 & 1) != 0 && (v7 & 2) != 0)
    {
      __dmb(9u);
      return 16;
    }

    if ((v7 & 2) != 0)
    {
      return _pthread_mutex_firstfit_lock_slow(v12, v11 & 1);
    }

    LODWORD(v6) = v6 | 2;
    v23 = v8;
    v22 = &v7;
    v21 = &v6;
    v20 = v7;
    v19 = 0;
    v17 = v6;
    v16 = v6;
    v18 = v6;
    v1 = v7;
    v2 = v7;
    atomic_compare_exchange_strong_explicit(v8, &v2, v6, memory_order_acquire, memory_order_acquire);
    if (v2 != v1)
    {
      v20 = v2;
    }

    v15 = v2 == v1;
    v19 = v2 == v1;
    *v22 = v20;
    v14 = v19;
  }

  while (!v19);
  if (v5)
  {
    *v10 = v9;
    return 0;
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      __break(1u);
      JUMPOUT(0x130F8);
    }

    return 16;
  }
}

int pthread_mutex_trylock(pthread_mutex_t *a1)
{
  if (a1->__sig != 1297437786)
  {
    return _pthread_mutex_lock_init_slow(a1, 1);
  }

  if (((*&a1->__opaque[4] >> 6) & 7) == 1)
  {
    return _pthread_mutex_fairshare_lock(a1, 1);
  }

  if ((*&a1->__opaque[4] & 0x4000) != 0)
  {
    return _pthread_mutex_ulock_lock(a1, 1);
  }

  v12 = a1;
  v11 = 1;
  v29 = a1;
  v28 = &v10;
  v10 = (&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg - 8);
  v25 = a1;
  v24 = &v8;
  v8 = (&a1->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
  v7 = 0;
  v6 = 0;
  v27 = v8;
  v26 = &v7;
  v7 = *v8;
  do
  {
    v6 = v7;
    v5 = (v7 & 2) == 0;
    if ((v11 & 1) != 0 && (v7 & 2) != 0)
    {
      __dmb(9u);
      return 16;
    }

    if ((v7 & 2) != 0)
    {
      return _pthread_mutex_firstfit_lock_slow(v12, v11 & 1);
    }

    LODWORD(v6) = v6 | 2;
    v23 = v8;
    v22 = &v7;
    v21 = &v6;
    v20 = v7;
    v19 = 0;
    v17 = v6;
    v16 = v6;
    v18 = v6;
    v1 = v7;
    v2 = v7;
    atomic_compare_exchange_strong_explicit(v8, &v2, v6, memory_order_acquire, memory_order_acquire);
    if (v2 != v1)
    {
      v20 = v2;
    }

    v15 = v2 == v1;
    v19 = v2 == v1;
    *v22 = v20;
    v14 = v19;
  }

  while (!v19);
  if (v5)
  {
    *v10 = v9;
    return 0;
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      __break(1u);
      JUMPOUT(0x13460);
    }

    return 16;
  }
}

int pthread_mutex_destroy(pthread_mutex_t *a1)
{
  v9 = a1;
  v8 = 22;
  opaque = a1->__opaque;
  v27 = a1->__opaque;
  v26 = 327680;
  v28 = 3;
  v29 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v25 = *(StatusReg + 24);
  v24 = 0;
  v23 = v25;
  v22 = v25;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(a1->__opaque, &v1, v25, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v24 = v1;
  }

  v21 = v1 == 0;
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v10 = v9;
  if ((v9->__sig & 0xFFFFFFFDLL) == 0x4D555458)
  {
    v8 = 16;
    v19 = v9;
    if ((*&v9->__opaque[4] & 0x4000) == 0 || *&v9->__opaque[16])
    {
      v14 = v9;
      v13 = &v7;
      v7 = (&v9->__opaque[31] & 0xFFFFFFFFFFFFFFF8);
      v6 = 0;
      v16 = v7;
      v15 = &v6;
      v6 = *v7;
      v18 = v9;
      v17 = &v5;
      v5 = (&v9->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
      if (!*v5 && (v6 & 0xFFFFFF00) == (HIDWORD(v6) & 0xFFFFFF00))
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v20 = v9;
    if ((v9->__sig & 0xFFFFFFF0) == 0x32AAABA0)
    {
      v8 = 0;
    }
  }

  if (!v8)
  {
    v9->__sig = 0;
  }

  v12 = v9->__opaque;
  v36 = v9->__opaque;
  v37 = 3;
  v38 = 3;
  v39 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v35 = *(v39 + 24);
  v34 = 0;
  v33 = v35;
  v32 = 0;
  v2 = v35;
  v3 = v35;
  atomic_compare_exchange_strong_explicit(v9->__opaque, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    v33 = v3;
  }

  v31 = v3 == v2;
  if (v3 != v2)
  {
    os_unfair_lock_unlock(v36);
  }

  return v8;
}

int pthread_mutexattr_destroy(pthread_mutexattr_t *a1)
{
  if (a1->__sig != 1297373249)
  {
    return 22;
  }

  a1->__sig = 0;
  return 0;
}

uint64_t _pthread_mutex_check_init_slow(uint64_t a1)
{
  v7 = 22;
  v29 = a1;
  if ((*a1 & 0xFFFFFFF0) == 0x32AAABA0)
  {
    v21 = a1 + 8;
    v36 = a1 + 8;
    v35 = 327680;
    v37 = 3;
    v38 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = *(StatusReg + 24);
    v33 = 0;
    v32 = v34;
    v31 = v34;
    v1 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 8), &v1, v34, memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      v33 = v1;
    }

    v30 = v1 == 0;
    if (v1)
    {
      os_unfair_lock_lock_with_options();
    }

    v28 = a1;
    if ((*a1 & 0xFFFFFFF0) != 0x32AAABA0)
    {
      v20 = a1;
      if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458)
      {
        v7 = 0;
      }

      goto LABEL_42;
    }

    v2 = *a1 & 0xF;
    v17 = a1;
    v16 = 0;
    v15 = v2;
    *(a1 + 12) = 0;
    *(v17 + 12) = *(v17 + 12) & 0xFFFFDFFF | 0x2000;
    if (v16)
    {
      if (*v16 != 1297373249)
      {
        v18 = 22;
LABEL_39:
        v7 = v18;
LABEL_42:
        v22 = a1 + 8;
        v45 = (a1 + 8);
        v46 = 3;
        v47 = 3;
        v48 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v44 = *(v48 + 24);
        v43 = 0;
        v42 = v44;
        v41 = 0;
        v4 = v44;
        v5 = v44;
        atomic_compare_exchange_strong_explicit((a1 + 8), &v5, 0, memory_order_release, memory_order_relaxed);
        if (v5 != v4)
        {
          v42 = v5;
        }

        v40 = v5 == v4;
        if (v5 != v4)
        {
          os_unfair_lock_unlock(v45);
        }

        return v7;
      }

      *(v17 + 16) = *(v16 + 8);
      *(v17 + 12) = *(v17 + 12) & 0xFFFFFFFC | *(v16 + 12) & 3;
      *(v17 + 12) = *(v17 + 12) & 0xFFFFFE3F | (((*(v16 + 12) >> 6) & 7) << 6);
      *(v17 + 12) = *(v17 + 12) & 0xFFFFFFF3 | (4 * ((*(v16 + 12) >> 2) & 3));
      *(v17 + 12) = *(v17 + 12) & 0xFFFFFFCF | (16 * ((*(v16 + 12) >> 4) & 3));
    }

    else
    {
      switch(v15)
      {
        case 1:
          *(v17 + 12) = *(v17 + 12) & 0xFFFFFFF3 | 4;
          break;
        case 2:
          *(v17 + 12) = *(v17 + 12) & 0xFFFFFFF3 | 8;
          break;
        case 3:
        case 7:
          *(v17 + 12) &= 0xFFFFFFF3;
          break;
        default:
          v18 = 22;
          goto LABEL_39;
      }

      *(v17 + 16) = 0;
      *(v17 + 12) &= 0xFFFFFFFC;
      if (v15 == 3)
      {
        *(v17 + 12) = *(v17 + 12) & 0xFFFFFE3F | 0x80;
      }

      else
      {
        *(v17 + 12) = *(v17 + 12) & 0xFFFFFE3F | ((__pthread_mutex_default_opt_policy & 7) << 6);
      }

      *(v17 + 12) = *(v17 + 12) & 0xFFFFFFCF | 0x20;
    }

    *(v17 + 18) = 0;
    v14 = 1297437784;
    if (((*(v17 + 12) >> 2) & 3) == 0)
    {
      v27 = v17;
      if (((*(v17 + 12) >> 6) & 7) == 1 || (v49 = v17, ((*(v17 + 12) >> 6) & 7) == 2))
      {
        v14 = _pthread_mutex_sig_fast;
      }
    }

    if (((*(v17 + 12) >> 2) & 3) == 0 && ((*(v17 + 12) >> 6) & 7) == 2 && ((*(v17 + 12) >> 4) & 3) == 2 && v14 == _pthread_mutex_sig_fast)
    {
      *(v17 + 12) = *(v17 + 12) & 0xFFFFBFFF | ((__pthread_mutex_use_ulock & 1) << 14);
    }

    else
    {
      *(v17 + 12) &= ~0x4000u;
    }

    if ((*(v17 + 12) & 0x4000) != 0)
    {
      v3 = v17;
      *(v17 + 24) = -1;
      *(v3 + 32) = -1;
      *(v3 + 40) = -1;
      v13 = 0;
      *(v17 + 24) = 0;
    }

    else
    {
      v24 = v17;
      v23 = &v12;
      v12 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
      v26 = v17;
      v25 = &v11;
      v11 = ((v17 + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v11 != (v17 + 24))
      {
        *(v17 + 12) = *(v17 + 12) & 0xFFFFF7FF | 0x800;
        *(v17 + 24) = -1;
      }

      *(v17 + 40) = -1;
      *v11 = 0;
      *v12 = 0;
    }

    v10 = v14;
    *(v17 + 48) = ~v17;
    *(v17 + 56) = v10;
    *(v17 + 60) = v10;
    *(v17 + 20) = v10;
    v9 = v17;
    *(v17 + 4) = HIDWORD(v14);
    atomic_store(v14, v9);
    v18 = 0;
    goto LABEL_39;
  }

  v19 = a1;
  if ((*a1 & 0xFFFFFFFDLL) == 0x4D555458)
  {
    return 0;
  }

  return v7;
}

uint64_t _pthread_mutex_fairshare_lock(uint64_t a1, char a2)
{
  v12 = a1;
  v11 = a2;
  v29 = a1;
  v28 = &v10;
  v10 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg - 8);
  v25 = a1;
  v24 = &v8;
  v8 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v7 = 0;
  v6 = 0;
  v27 = v8;
  v26 = &v7;
  v7 = *v8;
  if ((v7 & 2) != 0)
  {
    return _pthread_mutex_fairshare_lock_slow(v12, v11 & 1);
  }

  else
  {
    do
    {
      v6 = v7;
      v5 = (v7 & 2) == 0;
      if ((v11 & 1) == 0 || (v7 & 2) == 0)
      {
        if ((v7 & 2) != 0)
        {
          return _pthread_mutex_fairshare_lock_slow(v12, v11 & 1);
        }

        LODWORD(v6) = v6 + 256;
        LODWORD(v6) = v6 | 3;
      }

      v23 = v8;
      v22 = &v7;
      v21 = &v6;
      v20 = v7;
      v19 = 0;
      v17 = v6;
      v16 = v6;
      v18 = v6;
      v2 = v7;
      v3 = v7;
      atomic_compare_exchange_strong_explicit(v8, &v3, v6, memory_order_acquire, memory_order_acquire);
      if (v3 != v2)
      {
        v20 = v3;
      }

      v15 = v3 == v2;
      v19 = v3 == v2;
      *v22 = v20;
      v14 = v19;
    }

    while (!v19);
    if (v5)
    {
      *v10 = v9;
      return 0;
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        __break(1u);
        JUMPOUT(0x14238);
      }

      return 16;
    }
  }
}

void *__cdecl malloc(size_t __size)
{
  if (_pthread_malloc)
  {
    return _pthread_malloc(__size);
  }

  else
  {
    return 0;
  }
}

void free(void *a1)
{
  if (_pthread_free)
  {
    _pthread_free(a1);
  }
}

uint64_t _pthread_qos_class_to_thread_qos(int a1)
{
  switch(a1)
  {
    case 5:
      return 1;
    case 9:
      return 2;
    case 17:
      return 3;
    case 21:
      return 4;
    case 25:
      return 5;
    case 33:
      return 6;
    default:
      return 0;
  }
}

int pthread_attr_set_qos_class_np(pthread_attr_t *__attr, qos_class_t __qos_class, int __relative_priority)
{
  v5 = __relative_priority;
  v4 = _pthread_validate_qos_class_and_relpri(__qos_class, __relative_priority);
  if (__attr->__sig != 1414022209 || ((*&__attr->__opaque[32] >> 24) & 1) != 0)
  {
    return 22;
  }

  v8 = 0;
  if (v4 && v4 < 7u)
  {
    v8 = (1 << (v4 + 7)) | (v5 - 1);
  }

  *&__attr->__opaque[24] = v8;
  *&__attr->__opaque[32] = *&__attr->__opaque[32] & 0xFFFFFFFFFDFFFFFFLL | 0x2000000;
  *&__attr->__opaque[32] &= ~0x1000000uLL;
  return 0;
}

uint64_t _pthread_validate_qos_class_and_relpri(int a1, int a2)
{
  if (a2 <= 0 && a2 >= -15)
  {
    return _pthread_qos_class_to_thread_qos(a1);
  }

  else
  {
    return 0;
  }
}

int pthread_attr_get_qos_class_np(pthread_attr_t *__attr, qos_class_t *__qos_class, int *__relative_priority)
{
  if (__attr->__sig != 1414022209)
  {
    return 22;
  }

  if ((*&__attr->__opaque[32] >> 25))
  {
    _pthread_priority_split(*&__attr->__opaque[24], __qos_class, __relative_priority);
  }

  else
  {
    _pthread_priority_split(0, __qos_class, __relative_priority);
  }

  return 0;
}

uint64_t _pthread_priority_split(uint64_t result, _DWORD *a2, int *a3)
{
  v10 = result;
  v7 = 0;
  if ((result & 0x22000000) == 0)
  {
    v7 = (result & 0x3F00) != 0;
  }

  if (v7)
  {
    v3 = (result & 0x3F00) >> 8;
    v4 = __clz(__rbit32(v3));
    if (v3)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  if (a2)
  {
    result = _pthread_qos_class_from_thread_qos(v11);
    *a2 = result;
  }

  if (a3)
  {
    v6 = 0;
    if ((v10 & 0x22000000) == 0)
    {
      v6 = (v10 & 0x3F00) != 0;
    }

    if (v6)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
  }

  return result;
}

int pthread_set_qos_class_self_np(qos_class_t __qos_class, int __relative_priority)
{
  v4 = __relative_priority;
  v3 = _pthread_validate_qos_class_and_relpri(__qos_class, __relative_priority);
  if (!v3)
  {
    return 22;
  }

  v6 = 0;
  if (v3 < 7u)
  {
    LODWORD(v6) = (1 << (v3 + 7)) | (v4 - 1);
  }

  return _pthread_set_properties_self(1, v6);
}

uint64_t _pthread_set_properties_self(int a1, int a2)
{
  v7 = a1;
  v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
  v3 = 0;
  if ((*v5 ^ _pthread_ptr_munge_token) != v5)
  {
    abort_with_reason();
  }

  if ((*(v5 + 164) & 1) == 0 || (v7 & 0x2D) == 0 || (a1 & 0xFFFFFFD2) != 0)
  {
    v3 = __bsdthread_ctl();
  }

  if ((v7 & 1) != 0 && (!v3 || **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) == 2))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) = a2 & 0xFF403FFF;
  }

  if (v3)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v3;
}

uint64_t pthread_set_qos_class_np(void *a1, qos_class_t a2, int a3)
{
  if (a1 == (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224))
  {
    if ((*a1 ^ _pthread_ptr_munge_token) != a1)
    {
      abort_with_reason();
    }

    return pthread_set_qos_class_self_np(a2, a3);
  }

  else
  {
    return 1;
  }
}

qos_class_t qos_class_self(void)
{
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  v4 = 0;
  if ((v5 & 0x22000000) == 0)
  {
    v4 = (v5 & 0x3F00) != 0;
  }

  if (!v4)
  {
    return _pthread_qos_class_from_thread_qos(0);
  }

  v0 = (v5 & 0x3F00) >> 8;
  v1 = __clz(__rbit32(v0));
  if (v0)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  return _pthread_qos_class_from_thread_qos(v2);
}

uint64_t _pthread_qos_class_from_thread_qos(unsigned __int8 a1)
{
  if (a1 < 7u)
  {
    return _pthread_qos_class_from_thread_qos_thread_qos_to_qos_class[a1];
  }

  else
  {
    return 0;
  }
}

qos_class_t qos_class_main(void)
{
  v4 = 0;
  if ((_main_qos & 0x22000000) == 0)
  {
    v4 = (_main_qos & 0x3F00) != 0;
  }

  if (!v4)
  {
    return _pthread_qos_class_from_thread_qos(0);
  }

  v0 = (_main_qos & 0x3F00) >> 8;
  v1 = __clz(__rbit32(v0));
  if (v0)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  return _pthread_qos_class_from_thread_qos(v2);
}

uint64_t _pthread_qos_class_encode(int a1, char a2, int a3)
{
  v7 = _pthread_qos_class_to_thread_qos(a1);
  v6 = a3 & 0xFF000000;
  if (v7 && v7 < 7u)
  {
    v6 |= (1 << (v7 + 7)) | (a2 - 1);
  }

  return v6;
}

uint64_t _pthread_qos_class_decode(uint64_t a1, int *a2, void *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = 0;
  _pthread_priority_split(a1, &v4, a2);
  if (v5)
  {
    *v5 = v7 & 0xFF000000;
  }

  return v4;
}

uint64_t _pthread_qos_class_and_override_encode(int a1, char a2, int a3, int a4)
{
  v5 = _pthread_qos_class_to_thread_qos(a1);
  v10 = _pthread_qos_class_to_thread_qos(a4);
  v11 = a3 & 0xFF000000;
  if (v5 && v5 < 7u)
  {
    v11 |= (1 << (v5 + 7)) | (a2 - 1);
  }

  v9 = v11;
  if (v10 && v10 < 7u)
  {
    return v11 | (1 << (v10 + 13)) | 0x800000;
  }

  return v9;
}

uint64_t _pthread_qos_class_and_override_decode(int a1, int *a2, void *a3, _DWORD *a4)
{
  v13 = 0;
  if ((a1 & 0x22000000) == 0)
  {
    v13 = (a1 & 0x3F00) != 0;
  }

  if (v13)
  {
    v4 = (a1 & 0x3F00) >> 8;
    v5 = __clz(__rbit32(v4));
    if (v4)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 0;
    }

    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  v12 = 0;
  if ((a1 & 0x22000000) == 0)
  {
    v12 = 0;
    if ((a1 & 0x800000) != 0)
    {
      v12 = (a1 & 0x3FC000) != 0;
    }
  }

  if (v12)
  {
    v7 = (a1 & 0x3FC000u) >> 14;
    v8 = __clz(__rbit32(v7));
    if (v7)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  if (a4)
  {
    *a4 = _pthread_qos_class_from_thread_qos(v18);
  }

  if (a3)
  {
    *a3 = a1 & 0xFF000000;
  }

  if (a2)
  {
    v11 = 0;
    if ((a1 & 0x22000000) == 0)
    {
      v11 = (a1 & 0x3F00) != 0;
    }

    if (v11)
    {
      v19 = a1 + 1;
    }

    else
    {
      v19 = 0;
    }

    *a2 = v19;
  }

  return _pthread_qos_class_from_thread_qos(v17);
}

uint64_t _pthread_sched_pri_decode(int a1, void *a2)
{
  if (a2)
  {
    *a2 = a1 & 0xDF000000;
  }

  if ((a1 & 0x20000000) != 0)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _pthread_qos_class_encode_workqueue(int a1, int a2)
{
  v3 = 0;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v3 = 4;
        break;
      case 2:
        goto LABEL_9;
      case 3:
        v3 = 2;
        break;
      case 128:
LABEL_9:
        v3 = 3;
        break;
      default:
        qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Invalid priority";
        qword_28058 = a1;
        __break(0xB001u);
        break;
    }
  }

  else
  {
    v3 = 6;
  }

  v4 = HIBYTE(a2) << 24;
  if (v3 && v3 <= 6u)
  {
    v4 |= (1 << (v3 + 7)) | 0xFF;
  }

  return v4;
}

pthread_override_t pthread_override_qos_class_start_np(pthread_t __pthread, qos_class_t __qos_class, int __relative_priority)
{
  v14 = __pthread;
  v13 = __qos_class;
  v12 = __relative_priority;
  v11 = 0;
  v10[4] = 0;
  v9 = 0;
  v8 = 1;
  *v10 = _pthread_validate_qos_class_and_relpri(__qos_class, __relative_priority);
  if (!v10[0])
  {
    return 0;
  }

  address = malloc(0x20uLL);
  if (address || (address = vm_page_size, v8 = 0, (*&v10[1] = mach_vm_allocate(mach_task_self_, &address, (vm_page_size + 31) & ~(vm_page_size - 1), 1241513985)) == 0))
  {
    v11 = address;
    *address = 1870030194;
    *(v11 + 1) = v14;
    v3 = pthread_mach_thread_np(v14);
    *(v11 + 1) = v3;
    v19 = v10[0];
    v18 = v12;
    v17 = 0;
    v16 = 0;
    if (v10[0] && v19 < 7u)
    {
      LODWORD(v16) = v16 | (1 << (v19 + 7));
      LODWORD(v16) = v16 | (v18 - 1);
    }

    *(v11 + 2) = v16;
    *(v11 + 24) = v8 & 1;
    *&v10[1] = mach_port_mod_refs(mach_task_self_, *(v11 + 1), 0, 1);
    if (*&v10[1])
    {
      v9 = 22;
    }

    if (!v9)
    {
      v4 = *(v11 + 1);
      v5 = *(v11 + 2);
      v9 = __bsdthread_ctl();
      if (v9)
      {
        mach_port_mod_refs(mach_task_self_, *(v11 + 1), 0, -1);
      }
    }

    if (v9)
    {
      if (v8)
      {
        free(v11);
      }

      else
      {
        mach_vm_deallocate(mach_task_self_, address, (vm_page_size + 31) & ~(vm_page_size - 1));
      }

      return 0;
    }

    return v11;
  }

  else
  {
    v20 = 1;
    v21 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(StatusReg + 8) = 12;
    return 0;
  }
}

int pthread_override_qos_class_end_np(pthread_override_t __override)
{
  if (_pthread_atomic_xchg_uint32_relaxed(__override, 0x7265766Fu) != 1870030194)
  {
    __break(1u);
    JUMPOUT(0x15864);
  }

  v1 = *(__override + 1);
  v3 = __bsdthread_ctl();
  if (v3 == -1)
  {
    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  if (v3 == 14)
  {
    v3 = 0;
  }

  if (mach_port_mod_refs(mach_task_self_, *(__override + 1), 0, -1))
  {
    v3 = 22;
  }

  if (*(__override + 24))
  {
    free(__override);
  }

  else if (mach_vm_deallocate(mach_task_self_, __override, (vm_page_size + 31) & ~(vm_page_size - 1)))
  {
    return 22;
  }

  return v3;
}

uint64_t _pthread_qos_override_start_direct()
{
  v1 = __bsdthread_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t _pthread_qos_override_end_direct()
{
  v1 = __bsdthread_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t _pthread_workqueue_override_start_direct()
{
  v1 = __bsdthread_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t _pthread_workqueue_override_start_direct_check_owner(int a1, uint64_t a2, int *a3)
{
  if (!_pthread_workqueue_override_start_direct_check_owner_kernel_supports_owner_check)
  {
    a3 = 0;
  }

  while (1)
  {
    while (1)
    {
      v4 = __bsdthread_ctl();
      if (v4 == -1)
      {
        v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      if (!a3 || v4 != 22)
      {
        break;
      }

      if (a3 % 4)
      {
        return 22;
      }

      _pthread_workqueue_override_start_direct_check_owner_kernel_supports_owner_check = 0;
      a3 = 0;
    }

    if (!a3 || v4 != 14)
    {
      break;
    }

    if (ulock_owner_value_to_port_name(*a3) != a1)
    {
      return 70;
    }
  }

  return v4;
}

uint64_t _pthread_workqueue_override_reset()
{
  v1 = __bsdthread_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t _pthread_workqueue_asynchronous_override_add()
{
  v1 = __bsdthread_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t _pthread_workqueue_asynchronous_override_reset_self()
{
  v1 = __bsdthread_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t _pthread_workqueue_asynchronous_override_reset_all_self()
{
  v1 = __bsdthread_ctl();
  if (v1 == -1)
  {
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  return v1;
}

uint64_t pthread_qos_max_parallelism(int a1, uint64_t a2)
{
  v7 = a1;
  if (!a1)
  {
    v7 = 21;
  }

  v5 = _pthread_qos_class_to_thread_qos(v7);
  if (!v5 || (a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return -1;
  }

  else
  {
    v4 = 1;
    if (_os_alloc_once_table[32] == -1)
    {
      v9 = _os_alloc_once_table[33];
    }

    else
    {
      v9 = _os_alloc_once();
    }

    v3 = (v9 + 272 + 2 * v5);
    if (a2)
    {
      v4 = 0;
      if (_os_alloc_once_table[32] == -1)
      {
        v10 = _os_alloc_once_table[33];
      }

      else
      {
        v10 = _os_alloc_once();
      }

      v3 = (v10 + 286 + 2 * v5);
    }

    else if ((a2 & 2) != 0)
    {
      v4 = 4;
      if (_os_alloc_once_table[32] == -1)
      {
        v11 = _os_alloc_once_table[33];
      }

      else
      {
        v11 = _os_alloc_once();
      }

      v3 = (v11 + 300 + 2 * v5);
    }

    if (*v3 == 0xFFFF)
    {
      *v3 = _pthread_workqueue_parallelism_for_priority(v5, v4);
    }

    return *v3;
  }
}

uint64_t _pthread_workqueue_parallelism_for_priority(uint64_t a1, char a2)
{
  v3 = __bsdthread_ctl();
  if (v3 == -1)
  {
    v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v4 != 22 && v4 != 45)
    {
      qword_28028 = "BUG IN LIBPTHREAD: qos_max_parallelism failed";
      qword_28058 = v4;
      __break(0xB001u);
    }

    if (a2)
    {
      return MEMORY[0xFFFFFC036];
    }

    else if ((a2 & 4) != 0)
    {
      if (v4 != 45)
      {
        __break(1u);
        JUMPOUT(0x16358);
      }

      return 0;
    }

    else
    {
      return MEMORY[0xFFFFFC035];
    }
  }

  else
  {
    return v3;
  }
}

uint64_t pthread_time_constraint_max_parallelism(char a1)
{
  v3 = 1;
  if (_os_alloc_once_table[32] == -1)
  {
    v6 = _os_alloc_once_table[33];
  }

  else
  {
    v6 = _os_alloc_once();
  }

  v2 = (v6 + 272);
  if (a1)
  {
    v3 = 0;
    if (_os_alloc_once_table[32] == -1)
    {
      v7 = _os_alloc_once_table[33];
    }

    else
    {
      v7 = _os_alloc_once();
    }

    v2 = (v7 + 286);
  }

  else if ((a1 & 2) != 0)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return -1;
  }

  if (*v2 == 0xFFFF)
  {
    *v2 = _pthread_workqueue_parallelism_for_priority(0, v3 | 2u);
  }

  return *v2;
}

int posix_spawnattr_set_qos_class_np(posix_spawnattr_t *__attr, qos_class_t __qos_class)
{
  if (__qos_class == 5 || __qos_class == QOS_CLASS_BACKGROUND || __qos_class == QOS_CLASS_UTILITY)
  {
    return posix_spawnattr_set_qos_clamp_np();
  }

  else
  {
    return 22;
  }
}

int posix_spawnattr_get_qos_class_np(const posix_spawnattr_t *__attr, qos_class_t *__qos_class)
{
  if (!__qos_class)
  {
    return 22;
  }

  qos_clamp_np = posix_spawnattr_get_qos_clamp_np();
  if (qos_clamp_np)
  {
    return qos_clamp_np;
  }

  *__qos_class = QOS_CLASS_UNSPECIFIED;
  return 0;
}

int pthread_rwlockattr_init(pthread_rwlockattr_t *a1)
{
  a1->__sig = 1381452865;
  *a1->__opaque = 2;
  return 0;
}

int pthread_rwlockattr_destroy(pthread_rwlockattr_t *a1)
{
  a1->__sig = 0;
  result = 0;
  *a1->__opaque = 0;
  return result;
}

int pthread_rwlockattr_getpshared(const pthread_rwlockattr_t *a1, int *a2)
{
  v3 = 22;
  if (a1->__sig == 1381452865)
  {
    *a2 = *a1->__opaque;
    return 0;
  }

  return v3;
}

int pthread_rwlockattr_setpshared(pthread_rwlockattr_t *a1, int a2)
{
  v3 = 22;
  if (a1->__sig == 1381452865 && (a2 == 2 || a2 == 1))
  {
    *a1->__opaque = a2;
    return 0;
  }

  return v3;
}

int pthread_rwlock_destroy(pthread_rwlock_t *a1)
{
  v14 = 0;
  opaque = a1->__opaque;
  v39 = 327680;
  v41 = 3;
  v42 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = *(StatusReg + 24);
  v37 = 0;
  v36 = v38;
  v35 = v38;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(a1->__opaque, &v1, v38, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v37 = v1;
  }

  v34 = v1 == 0;
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  if (a1->__sig == 1381452875)
  {
    v19 = a1;
    v18 = 0;
    v23 = a1;
    v22 = &v17;
    v17 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
    v16 = 0uLL;
    v33 = v17;
    v32 = &v16;
    v31 = 3;
    v16 = *v17;
    do
    {
      v30 = *v32;
      v29 = 0;
      v27 = *v32;
      v26 = v27;
      v28 = v27;
      _X1 = *(&v30 + 1);
      _KR00_16 = v27;
      __asm { CASP            X0, X1, X2, X3, [X8] }

      *&v9 = _X0;
      *(&v9 + 1) = *(&v30 + 1);
      v13 = _X0 == v30;
      if ((_X0 ^ v30) != 0)
      {
        v30 = v9;
      }

      v25 = v13;
      v29 = v13;
      *v32 = v30;
      v24 = v29;
    }

    while (!v29);
    if ((v16 & 0xFFFFFF00) != DWORD2(v16))
    {
      v18 = 16;
    }

    v14 = v18;
  }

  else
  {
    v20 = a1;
    if (a1->__sig != 766030772)
    {
      v14 = 22;
    }
  }

  if (!v14)
  {
    a1->__sig = 0;
  }

  v21 = a1->__opaque;
  v49 = a1->__opaque;
  v50 = 3;
  v51 = 3;
  v52 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = *(v52 + 24);
  v47 = 0;
  v46 = v48;
  v45 = 0;
  v10 = v48;
  v11 = v48;
  atomic_compare_exchange_strong_explicit(a1->__opaque, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    v46 = v11;
  }

  v44 = v11 == v10;
  if (v11 != v10)
  {
    os_unfair_lock_unlock(v49);
  }

  return v14;
}

int pthread_rwlock_init(pthread_rwlock_t *a1, const pthread_rwlockattr_t *a2)
{
  v14 = 0;
  if (a2 && a2->__sig != 1381452865)
  {
    v14 = 22;
  }

  if (!v14 && a1->__sig == 1381452875)
  {
    v20 = a1;
    v19 = 0;
    v39 = a1;
    v38 = &v18;
    v18 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
    v17 = 0uLL;
    v49 = v18;
    v48 = &v17;
    v47 = 3;
    v17 = *v18;
    do
    {
      v46 = *v48;
      v45 = 0;
      v43 = *v48;
      v42 = v43;
      v44 = v43;
      _X1 = *(&v46 + 1);
      _KR00_16 = v43;
      __asm { CASP            X0, X1, X2, X3, [X8] }

      *&v9 = _X0;
      *(&v9 + 1) = *(&v46 + 1);
      v13 = _X0 == v46;
      if ((_X0 ^ v46) != 0)
      {
        v46 = v9;
      }

      v41 = v13;
      v45 = v13;
      *v48 = v46;
      v40 = v45;
    }

    while (!v45);
    if ((v17 & 0xFFFFFF00) != DWORD2(v17))
    {
      v19 = 16;
    }

    v14 = v19;
  }

  if (!v14)
  {
    opaque = a1->__opaque;
    v21 = 0;
    *a1->__opaque = 0;
    v35 = a1;
    v34 = a2;
    v51 = a1;
    v50 = &v33;
    v33 = (&a1->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
    v37 = a1;
    v36 = &v32;
    v32 = (&a1->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
    if (v33 != &a1->__opaque[16])
    {
      *&v35->__opaque[4] = *&v35->__opaque[4] & 0xDFFFFFFF | 0x20000000;
      *&v35->__opaque[16] = -1;
    }

    if (v32 != &v35->__opaque[24])
    {
      v10 = v35;
      *&v35->__opaque[24] = -1;
      *&v10->__opaque[32] = -1;
    }

    v11 = v35;
    *&v35->__opaque[40] = -1;
    *&v11->__opaque[48] = -1;
    *v33 = 0;
    *&v31 = 0x1000000C0;
    DWORD2(v31) = 0;
    *v32 = v31;
    if (v34 && *v34->__opaque == 1)
    {
      *&v35->__opaque[4] = *&v35->__opaque[4] & 0x3FFFFFFF | 0x40000000;
      *&v35->__opaque[8] = 16;
    }

    else
    {
      *&v35->__opaque[4] = *&v35->__opaque[4] & 0x3FFFFFFF | 0x80000000;
      *&v35->__opaque[8] = 32;
    }

    v30 = 1381452875;
    _platform_bzero();
    v29 = v30;
    v28 = ~v35;
    *&v35->__opaque[56] = ~v35;
    *&v35->__opaque[188] = v29;
    *&v35->__opaque[12] = v29;
    v27 = v35;
    v26 = &v30;
    HIDWORD(v35->__sig) = HIDWORD(v30);
    v25 = *v26;
    v24 = v25;
    atomic_store(v25, v27);
    v23 = v25;
    return 0;
  }

  return v14;
}

uint64_t _pthread_rwlock_lock_slow(void *a1, char a2, char a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = 0;
  v33 = a1;
  v32 = 0;
  v35 = a1;
  if (*a1 == 1381452875)
  {
    v34 = v32;
  }

  else
  {
    v34 = _pthread_rwlock_check_init_slow(v33);
  }

  v27 = v34;
  if (v34)
  {
    return v27;
  }

  else
  {
    v37 = v30;
    v36 = &v26;
    v26 = ((v30 + 47) & 0xFFFFFFFFFFFFFFF0);
    v25 = 0uLL;
    v24 = 0uLL;
    v57 = v26;
    v56 = &v25;
    v55 = 3;
    v25 = *v26;
    do
    {
      v54 = *v56;
      v53 = 0;
      v51 = *v56;
      v50 = v51;
      v52 = v51;
      _X1 = *(&v54 + 1);
      _KR00_16 = v51;
      __asm { CASP            X0, X1, X2, X3, [X8] }

      *&v10 = _X0;
      *(&v10 + 1) = *(&v54 + 1);
      v19 = _X0 == v54;
      if ((_X0 ^ v54) != 0)
      {
        v54 = v10;
      }

      v49 = v19;
      v53 = v19;
      *v56 = v54;
      v48 = v53;
    }

    while (!v53);
    v59 = v30;
    v58 = &v23;
    v23 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = *(StatusReg - 8);
    if ((v25 & 2) != 0 && *v23 == v22)
    {
      return 11;
    }

    else
    {
      do
      {
        v21 = 0;
        while (1)
        {
          v24 = v25;
          if (v29)
          {
            v20 = (v25 & 5) == 0;
          }

          else
          {
            v20 = (v25 & 0x40) != 0;
          }

          if ((v28 & 1) != 0 && !v20)
          {
            goto LABEL_37;
          }

          if (!v20)
          {
            break;
          }

          if ((v29 & 1) == 0)
          {
            LODWORD(v24) = v24 & 0xFFFFFF00;
            LODWORD(v24) = v24 | 0x83;
            goto LABEL_31;
          }

          if (diff_genseq(v25, SDWORD2(v25)) < 0xFFFFFF00)
          {
            LODWORD(v24) = v24 & 0xFFFFFFBF;
LABEL_31:
            LODWORD(v24) = v24 + 256;
            DWORD1(v24) += 256;
            goto LABEL_37;
          }

          if (++v21 > 1024)
          {
            return 35;
          }

          sched_yield();
          v47 = v26;
          v46 = &v25;
          v45 = 3;
          v25 = *v26;
          do
          {
            v44 = *v46;
            v43 = 0;
            v41 = *v46;
            v40 = v41;
            v42 = v41;
            _X1 = *(&v44 + 1);
            _KR10_16 = v41;
            __asm { CASP            X0, X1, X2, X3, [X8] }

            *&v14 = _X0;
            *(&v14 + 1) = *(&v44 + 1);
            v18 = _X0 == v44;
            if ((_X0 ^ v44) != 0)
            {
              v44 = v14;
            }

            v39 = v18;
            v43 = v18;
            *v46 = v44;
            v38 = v43;
          }

          while (!v43);
        }

        if (v29)
        {
          LODWORD(v24) = v24 & 0xFFFFFFBF;
        }

        else
        {
          LODWORD(v24) = v24 | 5;
        }

        LODWORD(v24) = v24 + 256;
        if (BYTE4(v25))
        {
          DWORD1(v24) = BYTE4(v24) & 0xFE;
          DWORD1(v24) |= v25 & 0xFFFFFF00;
        }

LABEL_37:
        v72 = v26;
        v71 = &v25;
        v70 = &v24;
        v69 = 1;
        v68 = 0;
        v67 = 0;
        v66 = v25;
        v65 = 0;
        v63 = v24;
        v62 = v24;
        v64 = v24;
        v15 = v25;
        v16 = v25;
        atomic_compare_exchange_strong_explicit(v26, &v16, v24, memory_order_acquire, memory_order_acquire);
        if (v16 != v15)
        {
          v66 = v16;
        }

        v61 = v16 == v15;
        v65 = v16 == v15;
        *v71 = v66;
        v60 = v65;
        v68 = v65;
        if (v65)
        {
          v67 = 1;
        }
      }

      while (!v67);
      if (v20)
      {
        if ((v29 & 1) == 0)
        {
          *v23 = v22;
        }

        return 0;
      }

      else if (v28)
      {
        return 16;
      }

      else
      {
        return _pthread_rwlock_lock_wait(v30, v29 & 1);
      }
    }
  }
}