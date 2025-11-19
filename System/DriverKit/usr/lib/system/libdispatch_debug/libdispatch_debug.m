void _os_eventlink_dispose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    free(*(a1 + 16));
  }

  if (*(a1 + 32) && *(a1 + 32) != -1)
  {
    mach_port_deallocate(mach_task_self_, *(a1 + 32));
  }

  if (*(a1 + 36))
  {
    if (*(a1 + 36) != -1)
    {
      mach_port_deallocate(mach_task_self_, *(a1 + 36));
    }
  }
}

void *_os_eventlink_create_internal(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = _os_object_alloc(_OS_os_eventlink_vtable, 0x30uLL, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    if (a1)
    {
      v9 = _dispatch_strdup_if_mutable(a1);
      if (v9 != a1)
      {
        v10[3] |= 1uLL;
      }

      v10[2] = v9;
    }

    return v10;
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    return 0;
  }
}

uint64_t os_eventlink_activate(uint64_t a1)
{
  v6 = a1;
  v5 = 0;
  if (!*(a1 + 32) || *(v6 + 32) == -1)
  {
    if (_os_eventlink_is_cancelled(*(v6 + 24)))
    {
      v5 = 89;
      v8 = 1;
      v9 = 1;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
      return v5;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      v3 = mach_eventlink_create();
      if (v3)
      {
        return _mach_error_to_errno(v3);
      }

      v1 = 0;
      atomic_compare_exchange_strong_explicit((v6 + 32), &v1, __b[4], memory_order_relaxed, memory_order_relaxed);
      if (!v1)
      {
        return _mach_error_to_errno(v3);
      }

      else
      {
        if (LODWORD(__b[4]) && LODWORD(__b[4]) != -1)
        {
          mach_port_deallocate(mach_task_self_, __b[4]);
        }

        if (HIDWORD(__b[4]) && HIDWORD(__b[4]) != -1)
        {
          mach_port_deallocate(mach_task_self_, HIDWORD(__b[4]));
        }

        return 22;
      }
    }
  }

  else
  {
    return v5;
  }
}

uint64_t _mach_error_to_errno(int a1)
{
  switch(a1)
  {
    case 0:
      v2 = 0;
      goto LABEL_15;
    case 4:
      v2 = 22;
      goto LABEL_15;
    case 13:
      v2 = 37;
LABEL_15:
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = v2;
      return v2;
    case 14:
      v2 = 53;
      goto LABEL_15;
    case 15:
    case 37:
      v2 = 89;
      goto LABEL_15;
    case 49:
      v2 = 60;
      goto LABEL_15;
  }

  return -1;
}

uint64_t os_eventlink_extract_remote_port(uint64_t a1, unsigned int *a2)
{
  if (!_os_eventlink_inactive(*(a1 + 32)))
  {
    if (_os_eventlink_is_cancelled(*(a1 + 24)))
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
      return 89;
    }

    v3 = __swp(0, (a1 + 36));
    if (v3 && v3 != -1)
    {
      *a2 = v3;
      return 0;
    }
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  return 22;
}

void *os_eventlink_create_with_port(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  internal = _os_eventlink_create_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!internal)
  {
    return 0;
  }

  if (mach_port_mod_refs(mach_task_self_, v10, 0, 1))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (*(internal + 8))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  *(internal + 8) = v10;
  return internal;
}

void *os_eventlink_create_remote_with_eventlink(const char *a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  name = 0;
  v10 = os_eventlink_extract_remote_port(a2, &name);
  if (v10)
  {
    v15 = 1;
    v16 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(StatusReg + 8) = v10;
    return 0;
  }

  else
  {
    v9 = os_eventlink_create_with_port(v13, name, v2, v3, v4, v5, v6, v7);
    mach_port_mod_refs(mach_task_self_, name, 0, -1);
    return v9;
  }
}

uint64_t os_eventlink_associate(uint64_t a1, uint64_t a2)
{
  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    if (a2 != 1)
    {
      _dispatch_thread_getspecific(3);
    }

    v2 = *(a1 + 32);
    v4 = mach_eventlink_associate();
    return _mach_error_to_errno(v4);
  }
}

uint64_t os_eventlink_disassociate(uint64_t a1)
{
  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    return 0;
  }

  else
  {
    v1 = *(a1 + 32);
    v3 = mach_eventlink_disassociate();
    if (v3 == 37)
    {
      return 0;
    }

    else
    {
      return _mach_error_to_errno(v3);
    }
  }
}

uint64_t os_eventlink_wait_until(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = _os_clockid_normalize_to_machabs(a2, a3);
  v4 = mach_absolute_time();
  return os_eventlink_wait_until_internal(a1, a2, v4 + v6, a4);
}

uint64_t _os_clockid_normalize_to_machabs(int a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 32)
  {
    return a2;
  }

  return v3;
}

uint64_t os_eventlink_wait_until_internal(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    v6 = *(a1 + 40);
    v4 = *(a1 + 32);
    v7 = mach_eventlink_wait_until();
    if (v7 || !a4)
    {
      if (v7 == 15 && !_os_eventlink_is_cancelled(*(a1 + 24)))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }
    }

    else
    {
      *a4 = *(a1 + 40) - v6;
    }

    return _mach_error_to_errno(v7);
  }
}

uint64_t os_eventlink_signal(uint64_t a1)
{
  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    v1 = *(a1 + 32);
    v3 = mach_eventlink_signal();
    return _mach_error_to_errno(v3);
  }
}

uint64_t os_eventlink_signal_and_wait_until_internal(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    v6 = *(a1 + 40);
    v4 = *(a1 + 32);
    v7 = mach_eventlink_signal_wait_until();
    if (v7 || !a4)
    {
      if (v7 == 15 && !_os_eventlink_is_cancelled(*(a1 + 24)))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }
    }

    else
    {
      *a4 = *(a1 + 40) - v6;
    }

    return _mach_error_to_errno(v7);
  }
}

uint64_t os_eventlink_signal_and_wait_until(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = _os_clockid_normalize_to_machabs(a2, a3);
  v4 = mach_absolute_time();
  return os_eventlink_signal_and_wait_until_internal(a1, a2, v4 + v6, a4);
}

uint64_t os_eventlink_cancel(uint64_t a1)
{
  result = _os_eventlink_is_cancelled(*(a1 + 24));
  if ((result & 1) == 0)
  {
    atomic_fetch_or_explicit((a1 + 24), 2uLL, memory_order_relaxed);
    name = *(a1 + 32);
    if (name)
    {
      if (name != -1)
      {
        if (mach_port_mod_refs(mach_task_self_, name, 0, 1))
        {
          _os_assert_log();
          _os_crash();
          __break(1u);
        }

        return mach_eventlink_destroy();
      }
    }
  }

  return result;
}

void _os_workgroup_xref_dispose(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v1[1](*v1);
    free(v1);
  }
}

uint64_t _os_workgroup_interval_xref_dispose(uint64_t result)
{
  if ((*(result + 24) & 8) != 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x1FF0);
  }

  return result;
}

void _os_workgroup_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 60))
  {
    _dispatch_abort(165, *(a1 + 60) == 0, a3, a4, a5, a6, a7, a8);
  }

  v9 = *(a1 + 24);
  if (_os_workgroup_has_backing_workinterval(a1))
  {
    if (mach_port_mod_refs(mach_task_self_, *(a1 + 40), 0, -1))
    {
      _os_assumes_log();
    }

    if (_os_workgroup_is_configurable(v9))
    {
      v8 = *(a1 + 32);
      if (work_interval_destroy())
      {
        _os_assumes_log();
      }
    }
  }

  if ((v9 & 4) != 0)
  {
    free(*(a1 + 16));
  }
}

uint64_t _os_workgroup_tsd_cleanup(uint64_t result)
{
  if (result)
  {
    __snprintf_chk(v1, 0x200uLL, 0, 0x200uLL, "BUG IN CLIENT: Thread exiting without leaving workgroup '%s'", *(result + 16));
    _os_crash();
    __break(1u);
    JUMPOUT(0x2248);
  }

  return result;
}

void _os_workgroup_join_token_tsd_cleanup(void *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    _os_workgroup_leave_update_wg(a1[2]);
    free(a1);
  }
}

void _os_workgroup_leave_update_wg(uint64_t a1)
{
  if (_os_workgroup_get_current() != a1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!atomic_fetch_add_explicit((a1 + 60), 0xFFFFFFFF, memory_order_relaxed))
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Joined count underflowed";
    __break(1u);
  }

  _os_workgroup_set_current(0);
}

uint64_t _os_workgroup_get_backing_workinterval(uint64_t a1)
{
  if (a1 && _os_workgroup_has_backing_workinterval(a1))
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t os_workgroup_interval_data_set_flags(_DWORD *a1, int a2)
{
  v3 = 0;
  if (!_os_workgroup_client_interval_data_is_valid(a1) || (a2 & 0xFFFFFFFE) != 0)
  {
    return 22;
  }

  else
  {
    a1[1] = a2;
  }

  return v3;
}

BOOL _os_workgroup_client_interval_data_is_valid(_DWORD *a1)
{
  v2 = 0;
  if (a1)
  {
    return _os_workgroup_client_interval_data_initialized(a1);
  }

  return v2;
}

uint64_t os_workgroup_interval_data_set_complexity(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  if (_os_workgroup_client_interval_data_is_valid(a1))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        *(a1 + 24) = 1;
      }

      else if (a2 == 2)
      {
        *(a1 + 24) = a3;
      }

      else
      {
        return 22;
      }
    }

    else
    {
      *(a1 + 24) = 0;
    }

    return v4;
  }

  else
  {
    return 22;
  }
}

uint64_t os_workgroup_interval_data_set_telemetry(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  if (_os_workgroup_telemetry_flavor_is_valid(a2) && (a2 != 1 || a4 == 40))
  {
    *(a1 + 16) = a2;
    *(a1 + 8) = a3;
    *(a1 + 18) = a4;
    return 0;
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

uint64_t os_workgroup_attr_set_interval_type(uint64_t a1, unsigned __int16 a2)
{
  v3 = 0;
  if (_os_workgroup_client_attr_is_valid(a1) && _os_workgroup_type_is_interval_type(a2))
  {
    *(a1 + 8) = a2;
  }

  else
  {
    return 22;
  }

  return v3;
}

BOOL _os_workgroup_client_attr_is_valid(_DWORD *a1)
{
  v2 = 0;
  if (a1)
  {
    return _os_workgroup_client_attr_initialized(a1);
  }

  return v2;
}

BOOL _os_workgroup_type_is_interval_type(unsigned __int16 a1)
{
  v2 = 0;
  if (a1)
  {
    return a1 <= 0xAu;
  }

  return v2;
}

uint64_t os_workgroup_attr_set_flags(_DWORD *a1, int a2)
{
  v3 = 0;
  if (_os_workgroup_client_attr_is_valid(a1))
  {
    a1[1] = a2;
  }

  else
  {
    return 22;
  }

  return v3;
}

uint64_t os_workgroup_attr_set_telemetry_flavor(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (_os_workgroup_client_attr_is_valid(a1) && _os_workgroup_telemetry_flavor_is_valid(a2))
  {
    *(a1 + 10) = a2;
  }

  else
  {
    return 22;
  }

  return v3;
}

__int16 *os_workgroup_interval_copy_current_4AudioToolbox()
{
  object = _os_workgroup_get_current();
  if (object)
  {
    if (_os_workgroup_type_is_audio_type(object[28]))
    {
      return os_retain(object);
    }

    else
    {
      return 0;
    }
  }

  return object;
}

BOOL _os_workgroup_type_is_audio_type(__int16 a1)
{
  v2 = 1;
  if (a1 != 4)
  {
    return a1 == 3;
  }

  return v2;
}

void *os_workgroup_create(const char *a1, _DWORD *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  work_interval = 0;
  memset(__b, 0, sizeof(__b));
  v12 = _os_workgroup_client_attr_resolve(__b, v12, &_os_workgroup_attr_default);
  if (v12)
  {
    if (_os_workgroup_type_is_default_type(*(v12 + 4)))
    {
      if (_os_workgroup_attr_is_propagating(v12))
      {
        v17 = 1;
        v20 = 1;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(StatusReg + 8) = 45;
        return 0;
      }

      else if (_os_workgroup_attr_has_telemetry_enabled(v12))
      {
        v18 = 1;
        v19 = 1;
        v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v26 + 8) = 45;
        return 0;
      }

      else
      {
        work_interval = _os_workgroup_create_work_interval(v12);
        if (work_interval)
        {
          v11 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL, v2, v3, v4, v5, v6, v7);
          v11[4] = work_interval;
          *(v11 + 10) = 0;
          v11[3] = 1;
          *(v11 + 28) = *(v12 + 4);
          _os_workgroup_set_name(v11, v13);
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v16 = 1;
      v21 = 1;
      v24 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v24 + 8) = 22;
      return 0;
    }
  }

  else
  {
    v15 = 1;
    v22 = 1;
    v23 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v23 + 8) = 22;
    return 0;
  }
}

_DWORD *_os_workgroup_client_attr_resolve(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a2)
  {
    if (!_os_workgroup_client_attr_is_valid(a2))
    {
      return 0;
    }

    memcpy(a1, a2, 0x40uLL);
    if (*a1 == 799564724)
    {
      if (!a1[1])
      {
        a1[1] = *(a3 + 4);
      }

      if (!*(a1 + 4))
      {
        *(a1 + 4) = *(a3 + 8);
      }
    }

    else if (*a1 != 799564740)
    {
      return 0;
    }

    *a1 = 2015762650;
  }

  else
  {
    memcpy(a1, a3, 0x40uLL);
  }

  if (!_os_workgroup_attr_is_resolved(a1))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    JUMPOUT(0x2D20);
  }

  return a1;
}

uint64_t _os_workgroup_create_work_interval(uint64_t a1)
{
  v3 = _wg_type_to_wi_flags(*(a1 + 8)) | 1;
  _os_workgroup_attr_is_differentiated(a1);
  _os_workgroup_attr_has_workload_id(a1);
  _os_workgroup_attr_has_telemetry_enabled(a1);
  *&v2[8] = 0;
  *v2 = work_interval_create();
  if (*v2)
  {
    return 0;
  }

  if ((work_interval_copy_port() & 0x80000000) == 0)
  {
    return *&v2[4];
  }

  work_interval_destroy();
  return 0;
}

void _os_workgroup_set_name(uint64_t a1, const char *a2)
{
  v4 = a2;
  if (a2)
  {
    v3 = _dispatch_strdup_if_mutable(a2);
    if (v3 != v4)
    {
      *(a1 + 24) |= 4uLL;
      v4 = v3;
    }
  }

  *(a1 + 16) = v4;
  v2 = *(a1 + 24);
  if (_os_workgroup_has_backing_workinterval(a1) && _os_workgroup_is_configurable(v2))
  {
    _os_workgroup_set_work_interval_name(a1, v4);
  }
}

void *os_workgroup_interval_create(const char *a1, int a2, _DWORD *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  work_interval = 0;
  memset(__b, 0, sizeof(__b));
  v13 = _os_workgroup_client_attr_resolve(__b, v13, &_os_workgroup_interval_attr_default);
  if (v13)
  {
    if (_os_workgroup_type_is_interval_type(*(v13 + 4)))
    {
      if (_os_workgroup_attr_is_differentiated(v13))
      {
        if (_os_workgroup_attr_is_propagating(v13))
        {
          v20 = 1;
          v21 = 1;
          StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          **(StatusReg + 8) = 45;
          return 0;
        }

        else
        {
          work_interval = _os_workgroup_create_work_interval(v13);
          if (work_interval)
          {
            v12 = _os_object_alloc(_OS_os_workgroup_interval_vtable, 0x50uLL, v3, v4, v5, v6, v7, v8);
            v12[4] = work_interval;
            *(v12 + 10) = 0;
            *(v12 + 16) = v14;
            v12[9] = work_interval_instance_alloc();
            *(v12 + 17) = 0;
            *(v12 + 28) = *(v13 + 4);
            v12[3] = 1;
            *(v12 + 22) = *(v13 + 5);
            _os_workgroup_set_name(v12, v15);
            return v12;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v19 = 1;
        v22 = 1;
        v27 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v27 + 8) = 22;
        return 0;
      }
    }

    else
    {
      v18 = 1;
      v23 = 1;
      v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v26 + 8) = 22;
      return 0;
    }
  }

  else
  {
    v17 = 1;
    v24 = 1;
    v25 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v25 + 8) = 22;
    return 0;
  }
}

void *os_workgroup_create_with_workload_id(const char *a1, const char *a2, _DWORD *a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = 0;
  work_interval = 0;
  v42 = &_os_workgroup_with_workload_id_attr_default;
  memset(__b, 0, sizeof(__b));
  v45 = _os_workgroup_client_attr_resolve(__b, v45, &_os_workgroup_with_workload_id_attr_default);
  if (v45)
  {
    v45 = _os_workgroup_workload_id_attr_resolve(v46, v45, v42);
    if (v45)
    {
      if (v45[1] == v42[1])
      {
        if (_os_workgroup_type_is_default_type(*(v45 + 4)))
        {
          if (_os_workgroup_attr_is_propagating(v45))
          {
            v39 = v45[1];
            _dispatch_log("BUG IN CLIENT of %s: Unsupported attribute flags: 0x%x", v24, v25, v26, v27, v28, v29, v30, "os_workgroup_create_with_workload_id");
            v53 = 1;
            v56 = 1;
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            **(StatusReg + 8) = 45;
            return 0;
          }

          else if (_os_workgroup_attr_has_telemetry_enabled(v45))
          {
            v54 = 1;
            v55 = 1;
            v66 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            **(v66 + 8) = 45;
            return 0;
          }

          else
          {
            work_interval = _os_workgroup_create_work_interval(v45);
            if (work_interval)
            {
              v44 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL, v31, v32, v33, v34, v35, v36);
              v44[4] = work_interval;
              *(v44 + 10) = 0;
              v44[3] = 1;
              *(v44 + 28) = *(v45 + 4);
              if (_os_workgroup_set_work_interval_workload_id(v44, v46, v45[3]))
              {
                _os_object_release(v44);
                return 0;
              }

              else
              {
                _os_workgroup_set_name(v44, v47);
                return v44;
              }
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
          v40 = *(v45 + 4);
          _dispatch_log("BUG IN CLIENT of %s: Non-default workload type: %s (%hd)", v17, v18, v19, v20, v21, v22, v23, "os_workgroup_create_with_workload_id");
          v52 = 1;
          v57 = 1;
          v64 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          **(v64 + 8) = 22;
          return 0;
        }
      }

      else
      {
        v38 = v45[1];
        _dispatch_log("BUG IN CLIENT of %s: Non-default attribute flags: 0x%x", v10, v11, v12, v13, v14, v15, v16, "os_workgroup_create_with_workload_id");
        v51 = 1;
        v58 = 1;
        v63 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v63 + 8) = 22;
        return 0;
      }
    }

    else
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", v10, v11, v12, v13, v14, v15, v16, "os_workgroup_create_with_workload_id");
      v50 = 1;
      v59 = 1;
      v62 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v62 + 8) = 22;
      return 0;
    }
  }

  else
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid attribute pointer", v3, v4, v5, v6, v7, v8, v9, "os_workgroup_create_with_workload_id");
    v49 = 1;
    v60 = 1;
    v61 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v61 + 8) = 22;
    return 0;
  }
}

uint64_t _os_workgroup_workload_id_attr_resolve(const char *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = _os_workgroup_lookup_type_from_workload_id(a1, (a2 + 12), &v5);
  if (!_os_workgroup_type_is_default_type(v4))
  {
    if (*(v7 + 8) == *(v6 + 8))
    {
      *(v7 + 8) = v4;
    }

    else if (*(v7 + 8) == v5)
    {
      *(v7 + 8) = v4;
    }

    else if (v4 != *(v7 + 8))
    {
      return 0;
    }

    return v7;
  }

  return v7;
}

uint64_t _os_workgroup_set_work_interval_workload_id(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 40) || *(a1 + 40) == -1)
  {
    v3 = *(a1 + 40);
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid workgroup port";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x372CLL);
  }

  if (a3)
  {
    v14 = a3 & 0xFFFFFFFE;
    __strlcpy_chk();
    _wg_type_to_wi_flags(*(a1 + 56));
    v4 = *(a1 + 40);
    v13 = __work_interval_ctl();
    if (v13 == -1)
    {
      v13 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v13)
      {
        _dispatch_bug(586, v13, v5, v6, v7, v8, v9, v10);
      }
    }

    if (v13 || (v14 & 1) != 0)
    {
      if (v13)
      {
        v12 = 0;
      }

      else
      {
        v12 = v14;
      }

      _dispatch_log("BUG IN CLIENT of %s: Unable to set kernel workload ID: %s (0x%x) -> %d (0x%x)", v13, v12, v6, v7, v8, v9, v10, "_os_workgroup_set_work_interval_workload_id");
      if (!v13)
      {
        return 37;
      }
    }

    else
    {
      *(a1 + 24) |= 0x10uLL;
    }

    return v13;
  }

  else
  {
    return 0;
  }
}

void *os_workgroup_interval_create_with_workload_id(const char *a1, const char *a2, int a3, _DWORD *a4)
{
  v57 = a1;
  v56 = a2;
  v55 = a3;
  v54 = a4;
  v53 = 0;
  work_interval = 0;
  v51 = &_os_workgroup_interval_attr_default;
  memset(__b, 0, sizeof(__b));
  v54 = _os_workgroup_client_attr_resolve(__b, v54, &_os_workgroup_interval_attr_default);
  if (v54)
  {
    v54 = _os_workgroup_workload_id_attr_resolve(v56, v54, v51);
    if (v54)
    {
      if (v54[1] == v51[1])
      {
        if (_os_workgroup_type_is_interval_type(*(v54 + 4)))
        {
          if (_os_workgroup_attr_is_differentiated(v54))
          {
            if (_os_workgroup_attr_is_propagating(v54))
            {
              v48 = v54[1];
              _dispatch_log("BUG IN CLIENT of %s: Unsupported attribute flags: 0x%x", v32, v33, v34, v35, v36, v37, v38, "os_workgroup_interval_create_with_workload_id");
              v64 = 1;
              v65 = 1;
              StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              **(StatusReg + 8) = 45;
              return 0;
            }

            else
            {
              work_interval = _os_workgroup_create_work_interval(v54);
              if (work_interval)
              {
                v53 = _os_object_alloc(_OS_os_workgroup_interval_vtable, 0x50uLL, v39, v40, v41, v42, v43, v44);
                v53[4] = work_interval;
                *(v53 + 10) = 0;
                *(v53 + 16) = v55;
                v53[9] = work_interval_instance_alloc();
                *(v53 + 17) = 0;
                *(v53 + 28) = *(v54 + 4);
                v53[3] = 1;
                *(v53 + 22) = *(v54 + 5);
                if (_os_workgroup_set_work_interval_workload_id(v53, v56, v54[3]))
                {
                  _os_object_release(v53);
                  return 0;
                }

                else
                {
                  _os_workgroup_set_name(v53, v57);
                  return v53;
                }
              }

              else
              {
                return 0;
              }
            }
          }

          else
          {
            v47 = v54[1];
            _dispatch_log("BUG IN CLIENT of %s: Invalid attribute flags: 0x%x", v25, v26, v27, v28, v29, v30, v31, "os_workgroup_interval_create_with_workload_id");
            v63 = 1;
            v66 = 1;
            v75 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            **(v75 + 8) = 22;
            return 0;
          }
        }

        else
        {
          v49 = *(v54 + 4);
          _dispatch_log("BUG IN CLIENT of %s: Invalid workload interval type: %s (%hd)", v18, v19, v20, v21, v22, v23, v24, "os_workgroup_interval_create_with_workload_id");
          v62 = 1;
          v67 = 1;
          v74 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          **(v74 + 8) = 22;
          return 0;
        }
      }

      else
      {
        v46 = v54[1];
        _dispatch_log("BUG IN CLIENT of %s: Non-default attribute flags: 0x%x", v11, v12, v13, v14, v15, v16, v17, "os_workgroup_interval_create_with_workload_id");
        v61 = 1;
        v68 = 1;
        v73 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v73 + 8) = 22;
        return 0;
      }
    }

    else
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", v11, v12, v13, v14, v15, v16, v17, "os_workgroup_interval_create_with_workload_id");
      v60 = 1;
      v69 = 1;
      v72 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v72 + 8) = 22;
      return 0;
    }
  }

  else
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid attribute pointer", v4, v5, v6, v7, v8, v9, v10, "os_workgroup_interval_create_with_workload_id");
    v59 = 1;
    v70 = 1;
    v71 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v71 + 8) = 22;
    return 0;
  }
}

int os_workgroup_join(os_workgroup_t wg, os_workgroup_join_token_t token_out)
{
  if (_os_workgroup_get_current())
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 37;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else
  {
    v6 = *(wg + 3);
    if ((v6 & 2) != 0)
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }

    else
    {
      v5 = 0;
      if (_os_workgroup_has_backing_workinterval(wg))
      {
        if (_os_workgroup_is_configurable(v6))
        {
          v2 = *(wg + 4);
          v5 = work_interval_join();
        }

        else
        {
          v3 = *(wg + 10);
          v5 = work_interval_join_port();
        }
      }

      if (v5)
      {
        return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        _os_workgroup_join_update_wg(wg, token_out);
        return 0;
      }
    }
  }
}

void os_workgroup_leave(os_workgroup_t wg, os_workgroup_join_token_t token)
{
  if (!_os_workgroup_join_token_initialized(token))
  {
    _os_crash();
    __break(1u);
  }

  v8 = *token->opaque;
  if (v8 != _dispatch_thread_getspecific(3))
  {
    _os_crash();
    __break(1u);
  }

  current = _os_workgroup_get_current();
  if (*&token->opaque[12] != current || current != wg)
  {
    _os_crash();
    __break(1u);
  }

  if (*&token->opaque[4])
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (_os_workgroup_has_backing_workinterval(wg) && work_interval_leave())
  {
    _dispatch_bug(1734, 0, v2, v3, v4, v5, v6, v7);
  }

  _os_workgroup_leave_update_wg(wg);
}

os_workgroup_parallel_t os_workgroup_parallel_create(const char *name, os_workgroup_attr_t attr)
{
  v12 = name;
  __src = attr;
  v10 = 0;
  memset(__b, 0, sizeof(__b));
  if (__src)
  {
    if (!_os_workgroup_client_attr_is_valid(__src))
    {
      v14 = 1;
      v23 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(StatusReg + 8) = 22;
      return 0;
    }

    memcpy(__b, __src, sizeof(__b));
    __src = __b;
    if (__b[0] == 799564724)
    {
      if (!*(__src + 1))
      {
        *(__src + 1) = 6;
      }

      if (!*(__src + 4))
      {
        *(__src + 4) = 64;
      }
    }

    else if (__b[0] != 799564740)
    {
      v15 = 1;
      v22 = 1;
      v25 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v25 + 8) = 22;
      return 0;
    }

    *__src = 2015762650;
  }

  else
  {
    memcpy(__b, &_os_workgroup_parallel_attr_default, sizeof(__b));
    __src = __b;
  }

  if (!_os_workgroup_attr_is_resolved(__src))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    JUMPOUT(0x4350);
  }

  if (_os_workgroup_type_is_parallel_type(*(__src + 4)))
  {
    if (_os_workgroup_attr_is_propagating(__src))
    {
      v17 = 1;
      v20 = 1;
      v27 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v27 + 8) = 45;
      return 0;
    }

    else if (_os_workgroup_attr_has_telemetry_enabled(__src))
    {
      v18 = 1;
      v19 = 1;
      v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v28 + 8) = 45;
      return 0;
    }

    else
    {
      v10 = _os_object_alloc(_OS_os_workgroup_parallel_vtable, 0x40uLL, v2, v3, v4, v5, v6, v7);
      v10[4] = 0;
      v10[3] = 1;
      *(v10 + 28) = *(__src + 4);
      _os_workgroup_set_name(v10, v12);
      return v10;
    }
  }

  else
  {
    v16 = 1;
    v21 = 1;
    v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v26 + 8) = 22;
    return 0;
  }
}

int os_workgroup_copy_port(os_workgroup_t wg, mach_port_t *mach_port_out)
{
  if (!wg)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!mach_port_out)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  *mach_port_out = 0;
  if ((*(wg + 3) & 2) != 0)
  {
    return 22;
  }

  if (!_os_workgroup_has_backing_workinterval(wg))
  {
    return 22;
  }

  if (mach_port_mod_refs(mach_task_self_, *(wg + 10), 0, 1))
  {
    _dispatch_bug(1467, 0, v2, v3, v4, v5, v6, v7);
    return 12;
  }

  else
  {
    *mach_port_out = *(wg + 10);
    return 0;
  }
}

os_workgroup_t os_workgroup_create_with_port(const char *name, mach_port_t mach_port)
{
  v13 = name;
  namea = mach_port;
  if (mach_port && namea != -1)
  {
    v11 = 0;
    if (_os_workgroup_get_wg_wi_types_from_port(namea, &v11, 0))
    {
      return 0;
    }

    else
    {
      v10 = mach_port_mod_refs(mach_task_self_, namea, 0, 1) == 0;
      v16 = v10;
      v15 = 1491;
      if (v10)
      {
        v9 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL, v2, v3, v4, v5, v6, v7);
        *(v9 + 10) = namea;
        *(v9 + 28) = v11;
        _os_workgroup_set_name(v9, v13);
        return v9;
      }

      else
      {
        _dispatch_bug(v15, v16, v2, v3, v4, v5, v6, v7);
        return 0;
      }
    }
  }

  else
  {
    v17 = 1;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0;
  }
}

uint64_t _os_workgroup_get_wg_wi_types_from_port(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  flags_from_port = work_interval_get_flags_from_port();
  if (flags_from_port)
  {
    return flags_from_port;
  }

  else
  {
    v6 = _wi_flags_to_wg_type(0);
    v5 = _wi_flags_to_wi_type(0);
    if (a2)
    {
      *a2 = v6;
    }

    if (a3)
    {
      *a3 = v5;
    }

    return 0;
  }
}

void *os_workgroup_create_with_workload_id_and_port(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a1;
  v43 = a2;
  name = a3;
  if (a3 && name != -1)
  {
    v41 = 0;
    v40 = 0;
    wg_wi_types_from_port = _os_workgroup_get_wg_wi_types_from_port(name, &v41, &v40);
    if (wg_wi_types_from_port)
    {
      _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", v8, v9, v10, v11, v12, v13, v14, "os_workgroup_create_with_workload_id_and_port");
      return 0;
    }

    else
    {
      v38 = 0;
      if (_os_workgroup_workload_id_is_valid_for_wi_type(v43, v40, &v38))
      {
        v37 = mach_port_mod_refs(mach_task_self_, name, 0, 1) == 0;
        v47 = v37;
        v46 = 1536;
        if (v37)
        {
          v36 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL, v22, v23, v24, v25, v26, v27);
          *(v36 + 10) = name;
          *(v36 + 28) = v41;
          wg_wi_types_from_port = _os_workgroup_set_work_interval_workload_id(v36, v43, v38);
          if (!wg_wi_types_from_port || wg_wi_types_from_port == 37)
          {
            _os_workgroup_set_name(v36, v44);
            return v36;
          }

          else
          {
            _os_object_release(v36);
            return 0;
          }
        }

        else
        {
          _dispatch_bug(v46, v47, v22, v23, v24, v25, v26, v27);
          _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", v28, v29, v30, v31, v32, v33, v34, "os_workgroup_create_with_workload_id_and_port");
          return 0;
        }
      }

      else
      {
        _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and port interval type: %s vs %hd", v15, v16, v17, v18, v19, v20, v21, "os_workgroup_create_with_workload_id_and_port");
        v49 = 1;
        v50 = 1;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(StatusReg + 8) = 22;
        return 0;
      }
    }
  }

  else
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", a2, a3, a4, a5, a6, a7, a8, "os_workgroup_create_with_workload_id_and_port");
    v48 = 1;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0;
  }
}

BOOL _os_workgroup_workload_id_is_valid_for_wi_type(const char *a1, int a2, unsigned int *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = _os_workgroup_lookup_type_from_workload_id(a1, a3, &v5);
  return _os_workgroup_type_is_default_type(v4) || _wg_type_to_wi_type(v5) == v7 || _wg_type_to_wi_type(v4) == v7;
}

os_workgroup_t os_workgroup_create_with_workgroup(const char *name, os_workgroup_t wg)
{
  if ((*(wg + 3) & 2) == 0)
  {
    v9 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL, v2, v3, v4, v5, v6, v7);
    *(v9 + 28) = *(wg + 28);
    if (_os_workgroup_has_backing_workinterval(wg))
    {
      if (mach_port_mod_refs(mach_task_self_, *(wg + 10), 0, 1))
      {
        free(v9);
        return 0;
      }

      *(v9 + 10) = *(wg + 10);
    }

    _os_workgroup_set_name(v9, name);
    return v9;
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  return 0;
}

void *os_workgroup_create_with_workload_id_and_workgroup(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v31 = *(a3 + 24);
  v32 = v31;
  v30 = v31;
  v33 = v31;
  if ((v31 & 2) != 0)
  {
    _dispatch_log("BUG IN CLIENT of %s: Workgroup already cancelled", a2, a3, a4, a5, a6, a7, a8, "os_workgroup_create_with_workload_id_and_workgroup");
    v38 = 1;
    v41 = 1;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0;
  }

  else
  {
    v29 = 0;
    v26 = v35;
    v8 = _wg_type_to_wi_type(*(v34 + 56));
    if (_os_workgroup_workload_id_is_valid_for_wi_type(v26, v8, &v29))
    {
      v28 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL, v10, v11, v12, v13, v14, v15);
      *(v28 + 28) = *(v34 + 56);
      if (_os_workgroup_has_backing_workinterval(v34))
      {
        if (mach_port_mod_refs(mach_task_self_, *(v34 + 40), 0, 1))
        {
          v24 = *(v34 + 40);
          _dispatch_log("BUG IN CLIENT of %s: Invalid workgroup port 0x%x", v16, v17, v18, v19, v20, v21, v22, "os_workgroup_create_with_workload_id_and_workgroup");
          free(v28);
          return 0;
        }

        *(v28 + 10) = *(v34 + 40);
        v27 = _os_workgroup_set_work_interval_workload_id(v28, v35, v29);
        if (v27 && v27 != 37)
        {
          _os_object_release(v28);
          return 0;
        }
      }

      _os_workgroup_set_name(v28, v36);
      return v28;
    }

    v25 = *(v34 + 56);
    _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and workgroup interval type: %s vs %hd", v9, v10, v11, v12, v13, v14, v15, "os_workgroup_create_with_workload_id_and_workgroup");
    v39 = 1;
    v40 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(StatusReg + 8) = 22;
    return 0;
  }
}

int os_workgroup_max_parallel_threads(os_workgroup_t wg, os_workgroup_mpt_attr_t attr)
{
  if (!wg)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (*(wg + 28) != 4 && *(wg + 28) != 3)
  {
    return pthread_qos_max_parallelism();
  }

  else
  {
    return pthread_time_constraint_max_parallelism();
  }
}

void _os_workgroup_join_update_wg(uint64_t a1, uint64_t a2)
{
  if (_os_workgroup_get_current())
  {
    __assert_rtn("_os_workgroup_join_update_wg", "workgroup.c", 1701, "cur_wg == NULL");
  }

  atomic_fetch_add_explicit((a1 + 60), 1u, memory_order_relaxed);
  __memset_chk();
  *a2 = 1298094680;
  *(a2 + 4) = _dispatch_thread_getspecific(3);
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  _os_workgroup_set_current(a1);
}

void _os_workgroup_set_current(uint64_t a1)
{
  if (a1)
  {
    _os_object_retain_internal(a1);
  }

  current = _os_workgroup_get_current();
  _dispatch_thread_setspecific(116, a1);
  if (current)
  {
    _os_object_release_internal(current);
  }
}

uint64_t os_workgroup_set_working_arena(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!is_mul_ok(4uLL, a3) || 4 * a3 >= 0xFFFFFFFFFFFFFFE8 || (v18 = malloc_type_calloc()) == 0)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else
  {
    v18[4] = a3;
    *v18 = a2;
    *(v18 + 1) = a4;
    v16 = 0;
    v15 = 0;
    v17 = *(a1 + 48);
    do
    {
      if (_wg_joined_cnt(v17, *(&v17 + 1)))
      {
        break;
      }

      _wg_arena(v17, *(&v17 + 1));
      v16 = v4;
      _X1 = *(&v17 + 1);
      _X2 = v18;
      __asm { CASP            X0, X1, X2, X3, [X8] }

      *&v12 = _X0;
      *(&v12 + 1) = *(&v17 + 1);
      v14 = _X0 == v17;
      if (_X0 != v17)
      {
        v17 = v12;
      }

      v15 = v14;
    }

    while (!v14);
    if (v15)
    {
      if (v16)
      {
        v16[1](*v16);
        free(v16);
      }

      return 0;
    }

    else
    {
      free(v18);
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }
}

__n128 _wg_arena(unint64_t a1, unint64_t a2)
{
  result.n128_u64[0] = a1;
  result.n128_u64[1] = a2;
  return result;
}

uint64_t os_workgroup_get_working_arena(uint64_t a1, unsigned int *a2)
{
  if (_os_workgroup_get_current() != a1)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x5718);
  }

  if (!*(a1 + 60))
  {
    _dispatch_abort(1813, *(a1 + 60) != 0, v2, v3, v4, v5, v6, v7);
  }

  v13 = *(a1 + 48);
  if (!v13)
  {
    return 0;
  }

  if (a2 && !*(v13 + 16))
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x57C0);
  }

  if (a2)
  {
    add_explicit = 0;
    v11 = 0;
    for (i = 0; i < *(v13 + 16); ++i)
    {
      v9 = *(v13 + 24 + 4 * i);
      if (v9 == _dispatch_thread_getspecific(3))
      {
        add_explicit = i;
        v11 = 1;
        break;
      }
    }

    if ((v11 & 1) == 0)
    {
      add_explicit = atomic_fetch_add_explicit((v13 + 20), 1u, memory_order_relaxed);
      if (add_explicit >= *(v13 + 16))
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x58C8);
      }

      *(v13 + 24 + 4 * add_explicit) = _dispatch_thread_getspecific(3);
    }

    *a2 = add_explicit;
  }

  return *v13;
}

int os_workgroup_interval_start(os_workgroup_interval_t wg, uint64_t start, uint64_t deadline, os_workgroup_interval_data_t data)
{
  if (_os_workgroup_get_current() != wg)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x5A20);
  }

  if (!_os_workgroup_interval_invalid_telemetry_request(wg, data) && deadline >= start && _start_time_is_in_past(*(wg + 16), start))
  {
    if (os_unfair_lock_trylock(wg + 17))
    {
      v11 = _os_workgroup_interval_data_complexity(data);
      v9 = 0;
      v8 = *(wg + 3);
      while (1)
      {
        if ((v8 & 0xA) != 0)
        {
          v9 = 22;
          goto LABEL_21;
        }

        if (!_os_workgroup_is_configurable(v8))
        {
          v9 = 1;
          goto LABEL_21;
        }

        if (v11 && !_os_workgroup_has_workload_id(v8))
        {
          break;
        }

        v4 = v8;
        v5 = v8;
        atomic_compare_exchange_strong_explicit((wg + 24), &v5, v8 | 8, memory_order_relaxed, memory_order_relaxed);
        if (v5 != v4)
        {
          v8 = v5;
        }

        if (v5 == v4)
        {
          goto LABEL_21;
        }
      }

      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
LABEL_21:
      if (v9)
      {
        os_unfair_lock_unlock(wg + 17);
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = v9;
        return v9;
      }

      else
      {
        v7 = *(wg + 9);
        work_interval_instance_clear();
        work_interval_instance_set_start();
        work_interval_instance_set_deadline();
        work_interval_instance_set_complexity();
        v10 = work_interval_instance_start();
        if (v10)
        {
          atomic_fetch_and_explicit((wg + 24), 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
        }

        else if (_os_workgroup_interval_data_telemetry_requested(data))
        {
          _os_workgroup_interval_copy_telemetry_data(wg, data);
        }

        os_unfair_lock_unlock(wg + 17);
        return v10;
      }
    }

    else
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

BOOL _os_workgroup_interval_invalid_telemetry_request(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (_os_workgroup_interval_data_telemetry_requested(a2))
  {
    return *(a2 + 16) != *(a1 + 44);
  }

  return v3;
}

BOOL _start_time_is_in_past(int a1, uint64_t a2)
{
  if (a1 == 32)
  {
    return a2 <= mach_absolute_time();
  }

  return v3;
}

uint64_t _os_workgroup_interval_data_complexity(uint64_t a1)
{
  v2 = 0;
  if (_os_workgroup_client_interval_data_is_valid(a1))
  {
    if (*(a1 + 4))
    {
      return 1;
    }

    else
    {
      return *(a1 + 24);
    }
  }

  return v2;
}

BOOL _os_workgroup_interval_data_telemetry_requested(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    return _os_workgroup_telemetry_flavor_is_valid(*(a1 + 16));
  }

  return v2;
}

uint64_t _os_workgroup_interval_copy_telemetry_data(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  memset(__b, 0, sizeof(__b));
  v2 = *(v7 + 72);
  result = work_interval_instance_get_telemetry_data();
  if (*(v6 + 16) == 1)
  {
    v4 = *(v6 + 8);
    *v4 = __b[0];
    v4[3] = __b[3];
    v4[4] = __b[4];
    v4[1] = __b[1];
    v4[2] = __b[2];
  }

  return result;
}

int os_workgroup_interval_update(os_workgroup_interval_t wg, uint64_t deadline, os_workgroup_interval_data_t data)
{
  if (_os_workgroup_get_current() != wg)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x60F8);
  }

  if (_os_workgroup_interval_invalid_telemetry_request(wg, data))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else if (os_unfair_lock_trylock(wg + 17))
  {
    v7 = _os_workgroup_interval_data_complexity(data);
    v6 = *(wg + 3);
    if (_os_workgroup_is_configurable(v6))
    {
      if ((!v7 || _os_workgroup_has_workload_id(v6)) && (v6 & 8) != 0)
      {
        v5 = *(wg + 9);
        work_interval_instance_set_deadline();
        work_interval_instance_set_complexity();
        v4 = work_interval_instance_update();
        if (v4)
        {
          v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        }

        else if (_os_workgroup_interval_data_telemetry_requested(data))
        {
          _os_workgroup_interval_copy_telemetry_data(wg, data);
        }

        os_unfair_lock_unlock(wg + 17);
        return v4;
      }

      else
      {
        os_unfair_lock_unlock(wg + 17);
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
        return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }
    }

    else
    {
      os_unfair_lock_unlock(wg + 17);
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 1;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

int os_workgroup_interval_finish(os_workgroup_interval_t wg, os_workgroup_interval_data_t data)
{
  if (_os_workgroup_get_current() != wg)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x64C0);
  }

  if (_os_workgroup_interval_invalid_telemetry_request(wg, data))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else if (os_unfair_lock_trylock(wg + 17))
  {
    v6 = _os_workgroup_interval_data_complexity(data);
    v5 = *(wg + 3);
    if (_os_workgroup_is_configurable(v5))
    {
      if ((!v6 || _os_workgroup_has_workload_id(v5)) && (v5 & 8) != 0)
      {
        v4 = *(wg + 9);
        if (*(wg + 16) == 32)
        {
          mach_absolute_time();
        }

        work_interval_instance_set_finish();
        work_interval_instance_set_complexity();
        v3 = work_interval_instance_finish();
        if (v3)
        {
          v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        }

        else
        {
          atomic_fetch_and_explicit((wg + 24), 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
          if (_os_workgroup_interval_data_telemetry_requested(data))
          {
            _os_workgroup_interval_copy_telemetry_data(wg, data);
          }
        }

        os_unfair_lock_unlock(wg + 17);
        return v3;
      }

      else
      {
        os_unfair_lock_unlock(wg + 17);
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
        return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }
    }

    else
    {
      os_unfair_lock_unlock(wg + 17);
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 1;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

uint64_t _os_workgroup_pthread_create_with_workgroup(pthread_t *a1, uint64_t a2, const pthread_attr_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = _dispatch_calloc_typed();
  _os_object_retain_internal(a2);
  *v7 = a2;
  v7[1] = a4;
  v7[2] = a5;
  v6 = pthread_create(a1, a3, _os_workgroup_pthread_start, v7);
  if (v6)
  {
    _os_object_release_internal(a2);
    free(v7);
  }

  return v6;
}

uint64_t _os_workgroup_pthread_start(void *a1)
{
  v9 = a1;
  v8 = a1;
  v7 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  free(a1);
  memset(&token_out, 0, sizeof(token_out));
  v3 = os_workgroup_join(v7, &token_out);
  if (v3)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: pthread_start os_workgroup_join failed";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x6A30);
  }

  v2 = v6(v5);
  os_workgroup_leave(v7, &token_out);
  _os_object_release_internal(v7);
  return v2;
}

BOOL _os_workgroup_client_attr_initialized(_DWORD *a1)
{
  v2 = 1;
  if (*a1 != 799564724)
  {
    return *a1 == 799564740;
  }

  return v2;
}

uint64_t _wg_type_to_wi_flags(__int16 a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        return 4;
      case 2:
        return 805306372;
      case 3:
        return 268435484;
      case 4:
        return 268435480;
      case 5:
        return 0x20000000;
      case 6:
        return 536870976;
      case 7:
        return 0x40000000;
      case 8:
        return 1342177344;
      case 9:
        return 1610612800;
      case 10:
        return 1879048256;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x6C68);
    }
  }

  else
  {
    return 4;
  }
}

void _os_workgroup_set_work_interval_name(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 40) || *(a1 + 40) == -1)
  {
    v2 = *(a1 + 40);
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid workgroup port";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0x6D20);
  }

  if (a2)
  {
    v10 = __strlcpy_chk();
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v3 = *(a1 + 40);
    if (__work_interval_ctl() == -1)
    {
      v11 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v11)
      {
        _dispatch_bug(544, v11, v4, v5, v6, v7, v8, v9);
      }
    }
  }
}

uint64_t _os_workgroup_lookup_type_from_workload_id(const char *a1, unsigned int *a2, __int16 *a3)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (!a1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Workload identifier must not be NULL";
    __break(1u);
    JUMPOUT(0x6EACLL);
  }

  for (i = 0; i < 4; ++i)
  {
    if (!strcasecmp(a1, (&_os_workgroup_workload_id_table)[2 * i]))
    {
      v7 = (&_os_workgroup_workload_id_table)[2 * i + 1];
      v6 = *(&_os_workgroup_workload_id_table + 8 * i + 5);
      if (_os_workgroup_type_is_default_type(v6))
      {
        v6 = v7;
      }

      v5 = *(&_os_workgroup_workload_id_table + 4 * i + 3) & 0xFFFFFFFA | 1;
      if (_os_workgroup_type_is_default_type(v7))
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Invalid workload ID type";
        qword_E42C0 = i;
        __break(1u);
        JUMPOUT(0x6FBCLL);
      }

      break;
    }
  }

  if (!v5)
  {
    v5 = 1;
  }

  *a2 = v5;
  *a3 = v6;
  return v7;
}

uint64_t _wi_flags_to_wg_type(int a1)
{
  v4 = (a1 & 4) != 0;
  v3 = _wi_flags_to_wi_type(a1);
  if (v3)
  {
    switch(v3)
    {
      case 268435456:
        if (v4)
        {
          return 3;
        }

        else
        {
          return 4;
        }

      case 536870912:
        return 5;
      case 805306368:
        return 2;
      case 1073741824:
        return 7;
      case 1342177280:
        return 8;
      case 1610612736:
        return 9;
      case 1879048192:
        return 10;
      default:
        __snprintf_chk(v7, 0x200uLL, 0, 0x200uLL, "BUG IN DISPATCH: Invalid wi flags = %u", a1);
        _os_crash();
        __break(1u);
        JUMPOUT(0x71A4);
    }
  }

  else
  {
    return 0;
  }
}

void dispatch_atfork_child(uint64_t a1)
{
  _os_object_atfork_prepare(a1);
  _voucher_atfork_child();
  _dispatch_event_loop_atfork_child();
  if (_dispatch_unsafe_fork)
  {
    _dispatch_child_of_unsafe_fork = 1;
  }

  _dispatch_queue_atfork_child(v1, v2, v3, v4, v5, v6, v7, v8);
  _dispatch_unsafe_fork = 0;
}

uint64_t _dispatch_sigmask()
{
  v8[9] = 4;
  v8[8] = 5;
  v8[7] = 7;
  v8[6] = 8;
  v8[5] = 10;
  v8[4] = 11;
  v8[3] = 12;
  v8[2] = 13;
  v8[1] = 27;
  v8[0] = -67116761;
  v7 = pthread_sigmask(1, v8, 0);
  v10 = v7;
  v9 = 108;
  if (v7)
  {
    _dispatch_bug(v9, v10, v0, v1, v2, v3, v4, v5);
  }

  return v7;
}

dispatch_queue_t dispatch_get_current_queue(void)
{
  v2 = _dispatch_thread_getspecific(20);
  if (v2)
  {
    return v2;
  }

  else
  {
    return &off_E0680;
  }
}

unint64_t _dispatch_queue_attr_to_info(uint64_t *a1)
{
  v5 = 0;
  if (a1)
  {
    if (a1 < &_dispatch_queue_attr_concurrent || a1 >= qword_DCA78)
    {
      v3 = 0;
      if (*a1)
      {
        v3 = *a1;
      }

      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue attribute";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x7818);
    }

    HIWORD(v6) = (((((a1 - &_dispatch_queue_attr_concurrent) >> 4) & 1) << 21) | (((((a1 - &_dispatch_queue_attr_concurrent) >> 4) & 2) == 0) << 20)) >> 16;
    BYTE1(v6) = -((((a1 - &_dispatch_queue_attr_concurrent) >> 4) >> 2) & 0xF);
    v4 = ((a1 - &_dispatch_queue_attr_concurrent) >> 4) >> 6;
    v1 = (v4 * 0x2492492492492493uLL) >> 64;
    LOBYTE(v6) = v4 - 7 * ((v1 + ((v4 - v1) >> 1)) >> 2);
    v4 /= 7uLL;
    return v6 & 0xFFF0FFFF | ((v4 - (((v4 / 3) & 0x7FFFFFFF) + 2 * (v4 / 3))) << 18) | (((v4 / 3) - (((v4 / 3 / 3) & 0x7FFFFFFF) + 2 * (v4 / 3 / 3))) << 16);
  }

  return v5;
}

dispatch_queue_attr_t dispatch_queue_attr_make_with_qos_class(dispatch_queue_attr_t attr, dispatch_qos_class_t qos_class, int relative_priority)
{
  v6 = relative_priority;
  if (qos_class == QOS_CLASS_UNSPECIFIED || qos_class == 5 || qos_class == QOS_CLASS_BACKGROUND || qos_class == QOS_CLASS_UTILITY || qos_class == QOS_CLASS_DEFAULT || qos_class == QOS_CLASS_USER_INITIATED || qos_class == QOS_CLASS_USER_INTERACTIVE)
  {
    v4 = 0;
    if (relative_priority >= -15)
    {
      v4 = relative_priority <= 0;
    }

    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return attr;
  }

  v5 = _dispatch_queue_attr_to_info(attr);
  switch(qos_class)
  {
    case 5u:
      v10 = 1;
      break;
    case 9u:
      v10 = 2;
      break;
    case 0x11u:
      v10 = 3;
      break;
    case 0x15u:
      v10 = 4;
      break;
    case 0x19u:
      v10 = 5;
      break;
    case 0x21u:
      v10 = 6;
      break;
    default:
      v10 = 0;
      break;
  }

  return _dispatch_queue_attr_from_info(v5 & 0xFFFF0000 | v10 | (v6 << 8));
}

char *dispatch_queue_attr_make_with_overcommit(uint64_t *a1, char a2)
{
  v3 = _dispatch_queue_attr_to_info(a1);
  if (a2)
  {
    v4 = v3 & 0xFFFCFFFF | 0x10000;
  }

  else
  {
    v4 = v3 & 0xFFFCFFFF | 0x20000;
  }

  return _dispatch_queue_attr_from_info(v4);
}

void _dispatch_object_no_invoke(uint64_t *a1)
{
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  v1 = *(v2 + 16);
  qword_E4290 = "BUG IN LIBDISPATCH: do_invoke called";
  qword_E42C0 = v1;
  __break(1u);
}

void _dispatch_object_no_dispose(uint64_t *a1)
{
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  v1 = *(v2 + 16);
  qword_E4290 = "BUG IN LIBDISPATCH: do_dispose called";
  qword_E42C0 = v1;
  __break(1u);
}

void _dispatch_queue_no_activate(uint64_t *a1)
{
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  v1 = *(v2 + 16);
  qword_E4290 = "BUG IN LIBDISPATCH: dq_activate called";
  qword_E42C0 = v1;
  __break(1u);
}

BOOL _dispatch_parse_BOOL(const char *a1)
{
  v2 = 1;
  if (strcasecmp(a1, "YES"))
  {
    v2 = 1;
    if (strcasecmp(a1, "Y"))
    {
      v2 = 1;
      if (strcasecmp(a1, "TRUE"))
      {
        return atoi(a1) != 0;
      }
    }
  }

  return v2;
}

BOOL _dispatch_getenv_BOOL(const char *a1, char a2)
{
  *&v3[4] = getenv(a1);
  if (*&v3[4])
  {
    *v3 = _dispatch_parse_BOOL(*&v3[4]);
  }

  else
  {
    *v3 = a2 & 1;
  }

  return *v3 != 0;
}

uint64_t _dispatch_build_init(size_t a1)
{
  v2[1] = a1;
  *v3 = 0x4100000001;
  v2[0] = 16;
  return sysctl(v3, 2u, &_dispatch_build, v2, 0, 0);
}

uint64_t _dispatch_continuation_get_function_symbol(uint64_t a1)
{
  if ((*a1 & 0x20) != 0)
  {
    v13 = *(a1 + 40);
    v10 = _Block_get_invoke_fn(v13);
    v11 = 0;
    if (v10)
    {
      v11 = v10;
    }

    if (v11 == _dispatch_block_special_invoke)
    {
      if (*(v13 + 32) != 3512316172)
      {
        v1 = *(v13 + 32);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
        qword_E42C0 = v1;
        __break(1u);
        JUMPOUT(0x83A8);
      }

      v14 = v13 + 32;
    }

    else
    {
      v14 = 0;
    }

    v8 = _Block_get_invoke_fn(*(v14 + 40));
    v9 = 0;
    if (v8)
    {
      v9 = v8;
    }

    v7 = 0;
    if (v9)
    {
      return v9;
    }

    return v7;
  }

  else if ((*a1 & 0x10) != 0)
  {
    v5 = _Block_get_invoke_fn(*(a1 + 40));
    v6 = 0;
    if (v5)
    {
      v6 = v5;
    }

    v4 = 0;
    if (v6)
    {
      return v6;
    }

    return v4;
  }

  else
  {
    v3 = 0;
    if (*(a1 + 32))
    {
      return *(a1 + 32);
    }

    return v3;
  }
}

uint64_t _Block_get_invoke_fn(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v2 = 0;
  if (v3)
  {
    return v3;
  }

  return v2;
}

void _dispatch_debugv(uint64_t *a1, const char *a2, va_list a3)
{
  v14 = _dispatch_uptime() - dispatch_log_basetime;
  v3 = _dispatch_thread_getspecific(0);
  v16 = __snprintf_chk(v23, 0x800uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%llu\t\t%p\t", v14, v3);
  if (v16 < 0)
  {
    v13 = 0;
  }

  else
  {
    if (v16 <= 0x800)
    {
      v12 = v16;
    }

    else
    {
      v12 = 2048;
    }

    v13 = v12;
  }

  if (a1)
  {
    v18 = v13 + _dispatch_object_debug2(a1, &v23[v13], 2048 - v13);
    if ((v18 + 2) >= 0x800)
    {
      _dispatch_abort(1447, (v18 + 2) < 0x800, v4, v5, v6, v7, v8, v9);
    }

    v23[v18] = 58;
    v10 = v18 + 1;
    v19 = v18 + 2;
    v23[v10] = 32;
    v23[v19] = 0;
  }

  else
  {
    v19 = v13 + __strlcpy_chk();
  }

  v17 = __vsnprintf_chk(&v23[v19], 2048 - v19, 0, 0xFFFFFFFFFFFFFFFFLL, a2, a3);
  if (v17 < 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

  v15 = v19 + v11;
  if ((v19 + v11) > 0x7FF)
  {
    v15 = 2047;
  }

  if (_dispatch_logv_pred != -1)
  {
    dispatch_once_f(&_dispatch_logv_pred, 0, _dispatch_logv_init);
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if (dispatch_logfile == -1)
    {
      _dispatch_syslog();
    }

    else
    {
      _dispatch_log_file(v23, v15);
    }
  }
}

uint64_t _dispatch_calloc_typed()
{
  while (1)
  {
    v1 = malloc_type_calloc();
    if (v1)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  return v1;
}

const char *_dispatch_strdup_if_mutable(const char *a1)
{
  strlen(a1);
  if (_dyld_is_memory_immutable())
  {
    return a1;
  }

  v8 = malloc_type_malloc();
  if (v8)
  {
    __memcpy_chk();
  }

  else
  {
    _dispatch_bug(1541, 0, v1, v2, v3, v4, v5, v6);
  }

  return v8;
}

void *_dispatch_Block_copy(const void *a1)
{
  if (!a1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: NULL was passed where a block should have been";
    __break(1u);
    JUMPOUT(0x8C28);
  }

  while (1)
  {
    v2 = _Block_copy(a1);
    if (v2)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  return v2;
}

void *_os_objc_alloc(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 8)
  {
    _dispatch_abort(1719, a2 >= 8, a3, a4, a5, a6, a7, a8);
  }

  while (1)
  {
    v10 = malloc_type_calloc();
    if (v10)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  v9 = 0;
  if (a1)
  {
    v9 = a1;
  }

  *v10 = v9;
  return v10;
}

void *_os_object_alloc_realized(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0x10)
  {
    _dispatch_abort(1737, a2 >= 0x10, a3, a4, a5, a6, a7, a8);
  }

  result = _os_objc_alloc(a1, a2, a3, a4, a5, a6, a7, a8);
  *(result + 2) = 1;
  *(result + 3) = 1;
  return result;
}

void *_os_object_alloc(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (!a1)
  {
    v9 = &_os_object_vtable;
  }

  return _os_object_alloc_realized(v9, a2, a3, a4, a5, a6, a7, a8);
}

void _os_object_xref_dispose(uint64_t a1)
{
  atomic_load_explicit((a1 + 12), memory_order_acquire);
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  if (*v2)
  {
    v1 = 0;
    if (*a1)
    {
      v1 = *a1;
    }

    (*v1)(a1);
  }

  else
  {
    _os_object_release_internal(a1);
  }
}

void _os_object_dispose(uint64_t *a1)
{
  atomic_load_explicit((a1 + 1), memory_order_acquire);
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  if (*(v2 + 8))
  {
    v1 = 0;
    if (*a1)
    {
      v1 = *a1;
    }

    (*(v1 + 8))(a1);
  }

  else
  {
    _os_object_dealloc(a1);
  }
}

void *__cdecl os_retain(void *object)
{
  if (object)
  {
    return _os_object_retain(object);
  }

  else
  {
    return 0;
  }
}

void os_release(void *object)
{
  if (object)
  {
    _os_object_release(object);
  }
}

uint64_t _dispatch_autorelease_pool_push()
{
  v1 = 0;
  if (_dispatch_begin_NSAutoReleasePool)
  {
    return _dispatch_begin_NSAutoReleasePool();
  }

  return v1;
}

uint64_t _dispatch_autorelease_pool_pop(uint64_t result)
{
  if (_dispatch_end_NSAutoReleasePool)
  {
    return _dispatch_end_NSAutoReleasePool(result);
  }

  return result;
}

uint64_t _dispatch_last_resort_autorelease_pool_push(uint64_t a1)
{
  result = _dispatch_autorelease_pool_push();
  *(a1 + 24) = result;
  return result;
}

uint64_t _dispatch_last_resort_autorelease_pool_pop(uint64_t a1)
{
  result = _dispatch_autorelease_pool_pop(*(a1 + 24));
  *(a1 + 24) = 0;
  return result;
}

uint64_t dispatch_mach_msg_get_context(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + ((*(a1 + 4) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (*(v3 + 4) >= 0x3Cu)
  {
    return *(v3 + 52);
  }

  return v2;
}

void _dispatch_mach_notify_port_destroyed(uint64_t a1, unsigned int a2)
{
  qword_E4290 = "BUG IN LIBDISPATCH: unexpected receipt of port-destroyed";
  qword_E42C0 = a2;
  __break(1u);
}

void _dispatch_mach_notify_no_senders(uint64_t a1, unsigned int a2)
{
  qword_E4290 = "BUG IN LIBDISPATCH: unexpected receipt of no-more-senders";
  qword_E42C0 = a2;
  __break(1u);
}

void _dispatch_mach_default_async_reply_handler()
{
  qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_mach_default_async_reply_handler called";
  qword_E42C0 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

uint64_t _dispatch_logv_init(uint64_t a1)
{
  v10 = a1;
  v9 = 1;
  result = getenv("LIBDISPATCH_LOG");
  __s1 = result;
  if (result)
  {
    result = strcmp(__s1, "YES");
    if (result)
    {
      result = strcmp(__s1, "NO");
      if (result)
      {
        result = strcmp(__s1, "syslog");
        if (result)
        {
          result = strcmp(__s1, "file");
          if (result)
          {
            result = strcmp(__s1, "stderr");
            if (!result)
            {
              v9 = 1;
              dispatch_logfile = 2;
            }
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        dispatch_log_disabled = 1;
      }
    }
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if ((v9 & 1) != 0 && dispatch_logfile == -1)
    {
      v2 = getpid();
      __snprintf_chk(v11, 0x400uLL, 0, 0x400uLL, "/var/tmp/libdispatch.%d.log", v2);
      result = open_NOCANCEL();
      dispatch_logfile = result;
    }

    if (dispatch_logfile != -1)
    {
      v7.tv_sec = 0;
      *&v7.tv_usec = 0;
      gettimeofday(&v7, 0);
      dispatch_log_basetime = _dispatch_uptime();
      v5 = dispatch_logfile;
      v6 = getprogname();
      if (v6)
      {
        v4 = v6;
      }

      else
      {
        v4 = &unk_BBE5B;
      }

      v3 = getpid();
      return dprintf(v5, "=== log file opened for %s[%u] at %ld.%06u ===\n", v4, v3, v7.tv_sec, v7.tv_usec);
    }
  }

  return result;
}

uint64_t _dispatch_log_file(uint64_t a1, uint64_t a2)
{
  *(a1 + a2) = 10;
  do
  {
    result = write_NOCANCEL();
  }

  while (result == -1 && **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) == 4);
  return result;
}

uint64_t _dispatch_logv_file(const char *a1, va_list a2)
{
  v2 = _dispatch_uptime();
  v6 = __snprintf_chk(v10, 0x800uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%llu\t", v2 - dispatch_log_basetime);
  if (v6 < 0)
  {
    v5 = 0;
  }

  else
  {
    if (v6 <= 0x800)
    {
      v4 = v6;
    }

    else
    {
      v4 = 2048;
    }

    v5 = v4;
  }

  result = __vsnprintf_chk(&v10[v5], 2048 - v5, 0, 0xFFFFFFFFFFFFFFFFLL, a1, a2);
  if ((result & 0x80000000) == 0)
  {
    v7 = v5 + result;
    if (v7 > 0x7FF)
    {
      v7 = 2047;
    }

    return _dispatch_log_file(v10, v7);
  }

  return result;
}

void _dispatch_vsyslog(char *a1, char *a2)
{
  v2[2] = a1;
  v2[1] = a2;
  v2[0] = 0;
  vasprintf(v2, a1, a2);
  if (v2[0])
  {
    _dispatch_syslog();
    free(v2[0]);
  }
}

uint64_t _dispatch_object_debug2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  return (*(v4 + 40))(a1, a2, a3);
}

uint64_t _os_object_retain_internal(uint64_t result)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0x9DC8);
  }

  return result;
}

uint64_t _os_object_retain_internal_n(uint64_t result, unsigned __int16 a2)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), a2, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0x9EB4);
  }

  return result;
}

void _os_object_release_internal(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 0x7FFFFFFF)
  {
    v2 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v2 < 1)
  {
    if (v2 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x9FE8);
    }

    v1 = *(a1 + 12);
    if (v1 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0xA038);
    }

    _os_object_dispose(a1);
  }
}

void _os_object_release_internal_n(uint64_t a1, unsigned __int16 a2)
{
  v3 = *(a1 + 8);
  if (v3 != 0x7FFFFFFF)
  {
    v3 = atomic_fetch_add_explicit((a1 + 8), -a2, memory_order_release) - a2;
  }

  if (v3 < 1)
  {
    if (v3 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA17CLL);
    }

    v2 = *(a1 + 12);
    if (v2 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0xA1CCLL);
    }

    _os_object_dispose(a1);
  }
}

uint64_t _os_object_retain(uint64_t result)
{
  add_explicit = *(result + 12);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0xA2B4);
  }

  return result;
}

uint64_t _os_object_retain_with_resurrect(uint64_t a1)
{
  add_explicit = *(a1 + 12);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 12), 1u, memory_order_relaxed);
  }

  if ((add_explicit + 1) <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an over-released object";
    __break(1u);
    JUMPOUT(0xA3A4);
  }

  if (!add_explicit)
  {
    _os_object_retain_internal(a1);
  }

  return a1;
}

void _os_object_release(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    if (v1 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA4FCLL);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 == 1)
  {
    _os_object_xref_dispose(a1);
  }
}

void _os_object_release_without_xref_dispose(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    if (v1 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA658);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 == 1)
  {
    _os_object_release_internal(a1);
  }
}

void dispatch_release(dispatch_object_t object)
{
  v1 = *(object + 3);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((object + 12), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    if (v1 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA84CLL);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 == 1)
  {
    atomic_load_explicit((object + 12), memory_order_acquire);
    _dispatch_xref_dispose(object);
  }
}

void _dispatch_xref_dispose(uint64_t a1)
{
  v10 = 0;
  if (*a1)
  {
    v10 = *a1;
  }

  if ((*(v10 + 16) & 0xF0) == 0x10)
  {
    _dispatch_queue_xref_dispose(a1);
    v9 = 0;
    if (*a1)
    {
      v9 = *a1;
    }

    v8 = *(v9 + 16);
    switch(v8)
    {
      case 275:
        _dispatch_source_xref_dispose(a1);
        break;
      case 531:
        _dispatch_channel_xref_dispose(a1);
        break;
      case 787:
        if ((*(a1 + 116) & 0x10) != 0)
        {
          *(*(a1 + 88) + 48) = 195952365;
        }

        break;
      case 395025:
        _dispatch_runloop_queue_xref_dispose(a1, v1, v2, v3, v4, v5, v6, v7);
        break;
    }
  }

  _dispatch_release_tailcall(a1);
}

void _dispatch_dispose(uint64_t *a1)
{
  v9 = a1;
  v8 = a1[3];
  v10 = a1;
  v4 = 0;
  if (a1[5])
  {
    v4 = a1[5];
  }

  v7 = v4;
  v6 = v9[4];
  v5 = 1;
  if (v9[2] != -1985229329)
  {
    v1 = v9[2];
    qword_E4290 = "BUG IN LIBDISPATCH: Release while enqueued";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0xAB58);
  }

  v3 = 0;
  if (v8)
  {
    v3 = v8[8] == (&dword_14 + 2);
  }

  if (v3)
  {
    v13 = 4;
    v12 = 0;
    v11 = 0;
    v8 = &off_E0600;
  }

  v2 = 0;
  if (*v9)
  {
    v2 = *v9;
  }

  (*(v2 + 32))(v9, &v5);
  if (v5)
  {
    _dispatch_object_finalize();
    _dispatch_object_dealloc(v9);
  }

  if (v7 && v6)
  {
    dispatch_channel_async_f(v8, v6, v7);
  }

  if (v8)
  {
    _dispatch_release_tailcall(v8);
  }
}

void *__cdecl dispatch_get_context(dispatch_object_t object)
{
  v2 = 0;
  if (*object)
  {
    v2 = *object;
  }

  if ((*(v2 + 16) & 0x40000) != 0)
  {
    return 0;
  }

  else
  {
    return *(object + 4);
  }
}

void dispatch_set_context(dispatch_object_t object, void *context)
{
  v2 = 0;
  if (*object)
  {
    v2 = *object;
  }

  if ((*(v2 + 16) & 0x40000) == 0)
  {
    *(object + 4) = context;
  }
}

void dispatch_set_finalizer_f(dispatch_object_t object, dispatch_function_t finalizer)
{
  v3 = 0;
  if (*object)
  {
    v3 = *object;
  }

  if ((*(v3 + 16) & 0x40000) == 0)
  {
    v2 = 0;
    if (finalizer)
    {
      v2 = finalizer;
    }

    *(object + 5) = v2;
  }
}

void dispatch_set_target_queue(dispatch_object_t object, dispatch_queue_t queue)
{
  v19 = queue;
  v18 = 1;
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v17 = 0;
    if (*object)
    {
      v17 = *object;
    }

    LOBYTE(v16) = 1;
    if ((*(v17 + 18) & 1) == 0)
    {
      v15 = 0;
      if (*object)
      {
        v15 = *object;
      }

      v16 = (*(v15 + 18) >> 1) & 1;
    }

    v18 = v16;
  }

  if ((v18 & 1) == 0)
  {
    v14 = 0;
    if (queue)
    {
      v14 = 0;
      if ((*(queue + 87) & 8) != 0)
      {
        if (*object >= 0x1000uLL)
        {
          v13 = 0;
          if (*object)
          {
            v13 = *object;
          }

          v12 = 1;
          if (*(v13 + 16) != 1)
          {
            v11 = 0;
            if (*object)
            {
              v11 = *object;
            }

            is_timer = 0;
            if (*(v11 + 16) == 19)
            {
              is_timer = _dispatch_source_is_timer(object);
            }

            v12 = is_timer;
          }

          v21 = v12 & 1;
        }

        else
        {
          v21 = 1;
        }

        v14 = v21 ^ 1;
      }
    }

    if (v14)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_E42C0 = object;
      __break(1u);
      JUMPOUT(0xB26CLL);
    }

    v9 = 0;
    if (*object)
    {
      v9 = *object;
    }

    if ((*(v9 + 16) & 0xF0) == 0x10)
    {
      _dispatch_lane_set_target_queue(object, v19, v2, v3, v4, v5, v6, v7);
    }

    else
    {
      v8 = 0;
      if (*object)
      {
        v8 = *object;
      }

      if (*(v8 + 16) == 4)
      {
        _dispatch_io_set_target_queue(object, v19);
      }

      else
      {
        if (!v19)
        {
          v19 = &off_E0600;
        }

        _dispatch_retain(v19);
        v22 = atomic_exchange_explicit((object + 24), v19, memory_order_release);
        if (v22)
        {
          _dispatch_release(v22);
        }
      }
    }
  }
}

void dispatch_activate(dispatch_object_t object)
{
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v9 = 0;
    if (*object)
    {
      v9 = *object;
    }

    if (*(v9 + 16) == 18)
    {
      _dispatch_workloop_activate(object, v1, v2, v3, v4, v5, v6, v7);
    }

    else
    {
      v8 = 0;
      if (*object)
      {
        v8 = *object;
      }

      if ((*(v8 + 16) & 0xF0) == 0x10)
      {
        _dispatch_lane_resume(object, 1);
      }
    }
  }
}

void dispatch_suspend(dispatch_object_t object)
{
  v7 = 1;
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v6 = 0;
    if (*object)
    {
      v6 = *object;
    }

    LOBYTE(v5) = 1;
    if ((*(v6 + 18) & 1) == 0)
    {
      v4 = 0;
      if (*object)
      {
        v4 = *object;
      }

      v5 = (*(v4 + 18) >> 1) & 1;
    }

    v7 = v5;
  }

  if ((v7 & 1) == 0)
  {
    v3 = 0;
    if (*object)
    {
      v3 = *object;
    }

    if ((*(v3 + 16) & 0xF0) == 0x10)
    {
      v2 = 0;
      if (*object)
      {
        v2 = *object;
      }

      v1 = 0;
      if (*(v2 + 16) == 18)
      {
        v1 = _dispatch_workloop_uses_bound_thread(object);
      }

      if (v1)
      {
        qword_E4290 = "API MISUSE: Object type does not support suspension";
        __break(1u);
        JUMPOUT(0xB794);
      }

      _dispatch_lane_suspend(object);
    }
  }
}

void dispatch_resume(dispatch_object_t object)
{
  v7 = 1;
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v6 = 0;
    if (*object)
    {
      v6 = *object;
    }

    LOBYTE(v5) = 1;
    if ((*(v6 + 18) & 1) == 0)
    {
      v4 = 0;
      if (*object)
      {
        v4 = *object;
      }

      v5 = (*(v4 + 18) >> 1) & 1;
    }

    v7 = v5;
  }

  if ((v7 & 1) == 0)
  {
    v3 = 0;
    if (*object)
    {
      v3 = *object;
    }

    if ((*(v3 + 16) & 0xF0) == 0x10)
    {
      v2 = 0;
      if (*object)
      {
        v2 = *object;
      }

      v1 = 0;
      if (*(v2 + 16) == 18)
      {
        v1 = _dispatch_workloop_uses_bound_thread(object);
      }

      if (v1)
      {
        qword_E4290 = "API MISUSE: Object type does not support resume";
        __break(1u);
        JUMPOUT(0xBA00);
      }

      _dispatch_lane_resume(object, 0);
    }
  }
}

uint64_t _dispatch_retain(uint64_t result)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0xBB04);
  }

  return result;
}

void _dispatch_release(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 0x7FFFFFFF)
  {
    v2 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v2 < 1)
  {
    if (v2 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xBC34);
    }

    v1 = *(a1 + 12);
    if (v1 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0xBC84);
    }

    _os_object_dispose(a1);
  }
}

void *_dispatch_block_create(void *a1, void *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v41 = v24;
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = a4;
  v50 = v24;
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = a4;
  v24[0] = 0;
  v24[1] = a1;
  v25 = 0;
  v26 = 0;
  v27 = a3;
  v28 = a2;
  v29 = a4;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1174405120;
  v12 = 0;
  v13 = ___dispatch_block_create_block_invoke;
  v14 = &__block_descriptor_tmp_1;
  v43 = v15;
  v42 = v24;
  v52 = v15;
  v51 = v24;
  v53 = v15;
  v15[0] = 3512316172;
  v15[1] = a1;
  v16 = 0;
  v17 = 0;
  v18 = a3;
  v19 = a2;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a2 && v19 != -1)
  {
    a1 = voucher_retain(v19);
  }

  if (v51[5])
  {
    a1 = _dispatch_Block_copy(v51[5]);
    v20 = a1;
  }

  if (*v51)
  {
    v21 = _dispatch_group_create_and_enter(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = _dispatch_Block_copy(&v10);
  v45 = v15;
  v54 = v15;
  v55 = v15;
  if (v15[0] == 3512316172)
  {
    if (v21)
    {
      if (!v17)
      {
        dispatch_group_leave(v21);
      }

      _os_object_release_without_xref_dispose(v21);
    }

    if (v22)
    {
      _os_object_release_internal_n(v22, 2u);
    }

    if (v20)
    {
      _Block_release(v20);
    }

    if (v19 && v19 != -1)
    {
      voucher_release(v19);
    }
  }

  v44 = v24;
  v56 = v24;
  v57 = v24;
  if (v24[0] == 3512316172)
  {
    if (v30)
    {
      if (!v26)
      {
        dispatch_group_leave(v30);
      }

      _os_object_release_without_xref_dispose(v30);
    }

    if (v31)
    {
      _os_object_release_internal_n(v31, 2u);
    }

    if (v29)
    {
      _Block_release(v29);
    }

    if (v28 && v28 != -1)
    {
      voucher_release(v28);
    }
  }

  return v9;
}

char *__copy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s(char *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 + 4;
  v8 = result + 32;
  *(result + 4) = 3512316172;
  *(result + 5) = a2[5];
  *(result + 12) = 0;
  *(result + 13) = 0;
  *(result + 7) = a2[7];
  *(result + 8) = a2[8];
  *(result + 9) = 0;
  *(result + 10) = 0;
  *(result + 11) = 0;
  *(result + 24) = 0;
  if (*(result + 8) && *(result + 8) != -1)
  {
    result = voucher_retain(*(result + 8));
  }

  if (v9[5])
  {
    result = _dispatch_Block_copy(v9[5]);
    *(v8 + 5) = result;
  }

  if (*v9)
  {
    result = _dispatch_group_create_and_enter(result, a2, a3, a4, a5, a6, a7, a8);
    *(v8 + 6) = result;
  }

  return result;
}

void __destroy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(a1 + 32) == 3512316172)
  {
    if (*(a1 + 80))
    {
      if (!*(a1 + 52))
      {
        dispatch_group_leave(*(a1 + 80));
      }

      _os_object_release_without_xref_dispose(*(v1 + 48));
    }

    if (*(v1 + 56))
    {
      _os_object_release_internal_n(*(v1 + 56), 2u);
    }

    if (*(v1 + 40))
    {
      _Block_release(*(v1 + 40));
    }

    if (*(v1 + 32))
    {
      if (*(v1 + 32) != -1)
      {
        voucher_release(*(v1 + 32));
      }
    }
  }
}

void _dispatch_sema4_create_slow(atomic_uint *a1, int a2)
{
  v8 = a1;
  policy = a2;
  semaphore = 0;
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  if (policy)
  {
    v4 = semaphore_create(mach_task_self_, &semaphore, policy, 0);
    if (v4 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xC558);
    }

    if (v4 == 15)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xC5A4);
    }

    if (v4)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0xC5ECLL);
    }

    v3 = 0;
    atomic_compare_exchange_strong_explicit(v8, &v3, semaphore, memory_order_relaxed, memory_order_relaxed);
    if (v3)
    {
      v5 = semaphore_destroy(mach_task_self_, semaphore);
      if (v5 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0xC6E8);
      }

      if (v5 == 15)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
        qword_E42C0 = 15;
        __break(1u);
        JUMPOUT(0xC734);
      }

      if (v5)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
        qword_E42C0 = v5;
        __break(1u);
        JUMPOUT(0xC77CLL);
      }
    }
  }

  else
  {
    v9 = 0;
    v14 = 9;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = *(StatusReg + 72);
    if (v9)
    {
      v18 = 9;
      v17 = 0;
      v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *(v19 + 72) = 0;
      v10 = v9;
    }

    else
    {
      v10 = _os_semaphore_create();
    }

    semaphore = v10;
    v2 = 0;
    atomic_compare_exchange_strong_explicit(v8, &v2, v10, memory_order_relaxed, memory_order_relaxed);
    if (v2)
    {
      v12 = semaphore;
      v11 = 0;
      v13 = 9;
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72);
      v16 = 9;
      v15 = semaphore;
      *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72) = semaphore;
      if (v11)
      {
        _os_semaphore_dispose();
      }
    }
  }
}

uint64_t _dispatch_sema4_dispose_slow(uint64_t result, int a2)
{
  semaphore = *result;
  *result = -1;
  if (a2)
  {
    result = semaphore_destroy(mach_task_self_, semaphore);
    if (result == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xC8B8);
    }

    if (result == 15)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xC904);
    }

    if (result)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
      qword_E42C0 = result;
      __break(1u);
      JUMPOUT(0xC94CLL);
    }
  }

  else
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72);
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72) = semaphore;
    if (v3)
    {
      return _os_semaphore_dispose();
    }
  }

  return result;
}

uint64_t _dispatch_sema4_signal(semaphore_t *a1, uint64_t a2)
{
  do
  {
    result = semaphore_signal(*a1);
    if (result == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xC9DCLL);
    }

    if (result == 15)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xCA28);
    }

    if (result)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
      qword_E42C0 = result;
      __break(1u);
      JUMPOUT(0xCA70);
    }

    --a2;
  }

  while (a2);
  return result;
}

uint64_t _dispatch_sema4_wait(semaphore_t *a1)
{
  do
  {
    result = semaphore_wait(*a1);
  }

  while (result == 14);
  if (result == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0xCB30);
  }

  if (result == 15)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
    qword_E42C0 = 15;
    __break(1u);
    JUMPOUT(0xCB7CLL);
  }

  if (result)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0xCBC4);
  }

  return result;
}

uint64_t _dispatch_sema4_timedwait(semaphore_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  do
  {
    v10 = _dispatch_timeout(a2, a2, a3, a4, a5, a6, a7, a8);
    v12.tv_sec = v10 / 0x3B9ACA00;
    v12.tv_nsec = v10 % 0x3B9ACA00;
    v8 = v12;
    v11 = semaphore_timedwait(*a1, v8);
  }

  while (v11 == 14);
  switch(v11)
  {
    case 49:
      return 1;
    case -301:
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xCCECLL);
    case 15:
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xCD38);
    default:
      if (v11)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
        qword_E42C0 = v11;
        __break(1u);
        JUMPOUT(0xCD80);
      }

      return 0;
  }
}

uint64_t _dispatch_wait_on_address(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2;
  v20 = _dispatch_timeout(a3, a2, a3, a4, a5, a6, a7, a8);
  if (v20)
  {
    if (v20 == -1)
    {
      return _dispatch_ulock_wait(a1, v23, 0);
    }

    else
    {
      do
      {
        if (v20 % 0x3E8)
        {
          v17 = v20 / 0x3E8 + 1;
        }

        else
        {
          v17 = v20 / 0x3E8;
        }

        v19 = v17;
        if (v17 > 0xFFFFFFFF)
        {
          v19 = 0xFFFFFFFFLL;
        }

        v18 = _dispatch_ulock_wait(a1, v23, v19);
        v16 = 0;
        if (v19 == 0xFFFFFFFFLL)
        {
          v16 = 0;
          if (v18 == 60)
          {
            v20 = _dispatch_timeout(a3, v8, v9, v10, v11, v12, v13, v14);
            v16 = v20 != 0;
          }
        }
      }

      while (v16);
      return v18;
    }
  }

  else
  {
    return 60;
  }
}

BOOL _dispatch_thread_event_wait_slow(_BOOL8 result)
{
  v10 = result;
  while (1)
  {
    explicit = atomic_load_explicit(v10, memory_order_acquire);
    if (!explicit)
    {
      break;
    }

    if (explicit != -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt thread event value";
      qword_E42C0 = explicit;
      __break(1u);
      JUMPOUT(0xD0A0);
    }

    v8 = _dispatch_ulock_wait(v10, 0xFFFFFFFF, 0);
    v7 = 1;
    if (v8)
    {
      v7 = 1;
      if (v8 != 14)
      {
        v7 = v8 == 4;
      }
    }

    result = v7;
    if (!v7)
    {
      _dispatch_abort(559, v7, v1, v2, v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t _dispatch_unfair_lock_lock_slow(atomic_uint *a1)
{
  result = _dispatch_thread_getspecific(3);
  v7 = result & 0xFFFFFFFC;
  v4 = result & 0xFFFFFFFC;
  while (1)
  {
    for (i = *a1; ; i = v3)
    {
      if ((i & 0xFFFFFFFC) != 0)
      {
        v5 = i | 1;
        if ((i | 1) == i)
        {
          break;
        }
      }

      else
      {
        v5 = v4;
      }

      v2 = i;
      v3 = i;
      atomic_compare_exchange_strong_explicit(a1, &v3, v5, memory_order_acquire, memory_order_acquire);
      if (v3 == v2)
      {
        break;
      }
    }

    if (((i ^ v7) & 0xFFFFFFFC) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: trying to lock recursively";
      __break(1u);
      JUMPOUT(0xD2B4);
    }

    if (v5 == v4)
    {
      return result;
    }

    result = _dispatch_unfair_lock_wait(a1, v5, 0);
    if (result == 66)
    {
      v4 |= 1u;
    }
  }
}

uint64_t _dispatch_unfair_lock_unlock_slow(uint64_t a1, unsigned int a2)
{
  result = _dispatch_thread_getspecific(3);
  if (((a2 ^ result) & 0xFFFFFFFC) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: lock not owned by current thread";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0xD3DCLL);
  }

  if (a2)
  {
    return _dispatch_unfair_lock_wake();
  }

  return result;
}

uint64_t _dispatch_once_wait(atomic_ullong *a1)
{
  result = _dispatch_thread_getspecific(3);
  v6 = result & 0xFFFFFFFC;
LABEL_2:
  for (i = *a1; i != -1; i = v3)
  {
    if ((i & 3) == 2)
    {
      __dmb(9u);
      if ((4 * MEMORY[0xFFFFFC180] - i + 2) >= 0x10)
      {
        *a1 = -1;
      }

      return result;
    }

    v4 = i | 1;
    if ((i | 1) != i)
    {
      v2 = i;
      v3 = i;
      atomic_compare_exchange_strong_explicit(a1, &v3, v4, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        continue;
      }
    }

    if (((i ^ v6) & 0xFFFFFFFC) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: trying to lock recursively";
      __break(1u);
      JUMPOUT(0xD640);
    }

    result = _dispatch_unfair_lock_wait(a1, v4, 0);
    goto LABEL_2;
  }

  return result;
}

uint64_t _dispatch_gate_broadcast_slow(uint64_t a1, unsigned int a2)
{
  if (((a2 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: lock not owned by current thread";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0xD6ECLL);
  }

  return _dispatch_unfair_lock_wake();
}

uint64_t _dlock_wait(uint64_t a1, unsigned int a2, int a3)
{
  while (1)
  {
    v5 = __ulock_wait();
    if (v5 >= 1)
    {
      return 66;
    }

    v4 = -v5;
    if (!v5)
    {
      return 0;
    }

    if (v4 != 4)
    {
      break;
    }

    if (a3)
    {
      return -v5;
    }
  }

  if (v4 != 14 && v4 != 60)
  {
    if (v4 != 105)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: ulock_wait() failed";
      qword_E42C0 = -v5;
      __break(1u);
      JUMPOUT(0xD8B8);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Owner in ulock is unknown - possible memory corruption";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0xD86CLL);
  }

  return -v5;
}

uint64_t _dlock_wake()
{
  result = __ulock_wake();
  if (result && result != -2)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: ulock_wake() failed";
    qword_E42C0 = -result;
    __break(1u);
    JUMPOUT(0xD968);
  }

  return result;
}

dispatch_semaphore_t dispatch_semaphore_create(intptr_t value)
{
  if (value < 0)
  {
    return 0;
  }

  v7 = _dispatch_object_alloc(_OS_dispatch_semaphore_vtable, 0x48uLL, v1, v2, v3, v4, v5, v6);
  v7[2] = -1985229329;
  v7[3] = &off_E0600;
  v7[6] = value;
  *(v7 + 16) = 0;
  v7[7] = value;
  return v7;
}

uint64_t _dispatch_semaphore_dispose(uint64_t result)
{
  if (*(result + 48) < *(result + 56))
  {
    v1 = *(result + 56) - *(result + 48);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Semaphore object deallocated while in use (current value < original value)";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0xDA94);
  }

  if (*(result + 64))
  {
    return _dispatch_sema4_dispose_slow(result + 64, 0);
  }

  return result;
}

uint64_t _dispatch_semaphore_signal_slow(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    _dispatch_sema4_create_slow((a1 + 64), 0);
  }

  _dispatch_sema4_signal((a1 + 64), 1);
  return 1;
}

intptr_t dispatch_semaphore_signal(dispatch_semaphore_t dsema)
{
  add_explicit = atomic_fetch_add_explicit((dsema + 48), 1uLL, memory_order_release);
  if ((add_explicit + 1) >= 1)
  {
    return 0;
  }

  if (add_explicit == 0x7FFFFFFFFFFFFFFFLL)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unbalanced call to dispatch_semaphore_signal()";
    qword_E42C0 = 0x8000000000000000;
    __break(1u);
    JUMPOUT(0xDC28);
  }

  return _dispatch_semaphore_signal_slow(dsema);
}

intptr_t dispatch_semaphore_wait(dispatch_semaphore_t dsema, dispatch_time_t timeout)
{
  if ((atomic_fetch_add_explicit((dsema + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_acquire) - 1) < 0)
  {
    return _dispatch_semaphore_wait_slow(dsema, timeout, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_semaphore_wait_slow(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 64))
  {
    _dispatch_sema4_create_slow((a1 + 64), 0);
  }

  if (a2 != -1)
  {
    if (a2 && (_dispatch_sema4_timedwait((a1 + 64), a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
    {
      return 0;
    }

    v12 = *(a1 + 48);
    while (v12 < 0)
    {
      v11 = v12;
      v8 = v12;
      v9 = v12;
      atomic_compare_exchange_strong_explicit((a1 + 48), &v9, v12 + 1, memory_order_relaxed, memory_order_relaxed);
      if (v9 != v8)
      {
        v11 = v9;
      }

      v12 = v11;
      if (v9 == v8)
      {
        return 49;
      }
    }
  }

  _dispatch_sema4_wait((a1 + 64));
  return 0;
}

dispatch_group_t dispatch_group_create(void)
{
  v7 = _dispatch_object_alloc(_OS_dispatch_group_vtable, 0x48uLL, v0, v1, v2, v3, v4, v5);
  *(v7 + 2) = -1985229329;
  *(v7 + 3) = &off_E0600;
  return v7;
}

void *_dispatch_group_create_and_enter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _dispatch_object_alloc(_OS_dispatch_group_vtable, 0x48uLL, a3, a4, a5, a6, a7, a8);
  v9[2] = -1985229329;
  v9[3] = &off_E0600;
  *(v9 + 12) = -4;
  _dispatch_retain(v9);
  return v9;
}

uint64_t _dispatch_group_dispose(uint64_t result)
{
  v2 = *(result + 48);
  if (v2)
  {
    v1 = *(result + 48);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Group object deallocated while in use";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0xE068);
  }

  return result;
}

intptr_t dispatch_group_wait(dispatch_group_t group, dispatch_time_t timeout)
{
  v11 = *(group + 6);
  do
  {
    if ((v11 & 0xFFFFFFFC) == 0)
    {
      __dmb(9u);
      return 0;
    }

    if (!timeout)
    {
      return 49;
    }

    v10 = v11 | 1;
    if (v11)
    {
      break;
    }

    v7 = v11;
    v8 = v11;
    atomic_compare_exchange_strong_explicit((group + 48), &v8, v10, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v7)
    {
      v11 = v8;
    }
  }

  while (v8 != v7);
  return _dispatch_group_wait_slow(group, HIDWORD(v10), timeout, v2, v3, v4, v5, v6);
}

uint64_t _dispatch_group_wait_slow(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  do
  {
    v9 = _dispatch_wait_on_address(a1 + 52, a2, a3, 0, a5, a6, a7, a8);
    if (a2 != atomic_load_explicit((a1 + 52), memory_order_acquire))
    {
      return 0;
    }
  }

  while (v9 != 60);
  return 49;
}

void dispatch_group_leave(dispatch_group_t group)
{
  add_explicit = atomic_fetch_add_explicit((group + 48), 4uLL, memory_order_release);
  if ((add_explicit & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v5 = add_explicit + 4;
    do
    {
      if ((v5 & 0xFFFFFFFC) != 0)
      {
        v6 = v5 & 0xFFFFFFFFFFFFFFFDLL;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      }

      if (v5 == v6)
      {
        break;
      }

      v3 = v5;
      v1 = v5;
      v2 = v5;
      atomic_compare_exchange_strong_explicit((group + 48), &v2, v6, memory_order_relaxed, memory_order_relaxed);
      if (v2 != v1)
      {
        v3 = v2;
      }

      v5 = v3;
    }

    while (v2 != v1);
    _dispatch_group_wake(group, v5, 1);
  }

  else if ((add_explicit & 0xFFFFFFFC) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unbalanced call to dispatch_group_leave()";
    qword_E42C0 = 0;
    __break(1u);
    JUMPOUT(0xE450);
  }
}

void _dispatch_group_wake(uint64_t a1, char a2, char a3)
{
  v13 = (a3 & 1) != 0;
  if ((a2 & 2) != 0)
  {
    v10 = *(a1 + 56);
    if (!v10)
    {
      v10 = _dispatch_wait_for_enqueuer((a1 + 56));
    }

    *(a1 + 56) = 0;
    v11 = atomic_exchange_explicit((a1 + 64), 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
    v12 = v10;
    do
    {
      v9 = v12[6];
      v8 = 0;
      if (v12 != v11)
      {
        v7 = v12[2];
        if (!v7)
        {
          v7 = _dispatch_wait_for_enqueuer(v12 + 2);
        }

        v8 = v7;
      }

      v3 = (v12[1] & 0x3FFF00uLL) >> 8;
      v4 = __clz(__rbit32(v3));
      if (v3)
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = 0;
      }

      v16 = *v12;
      v6 = 0;
      if (*v9)
      {
        v6 = *v9;
      }

      (*(v6 + 72))(v9, v12, v5);
      _dispatch_release(v9);
      v12 = v8;
    }

    while (v8);
    ++v13;
  }

  if (a2)
  {
    _dispatch_wake_by_address();
  }

  if (v13)
  {
    _dispatch_release_n(a1, v13);
  }
}

void dispatch_group_enter(dispatch_group_t group)
{
  add_explicit = atomic_fetch_add_explicit((group + 48), 0xFFFFFFFC, memory_order_acquire);
  if ((add_explicit & 0xFFFFFFFC) == 0)
  {
    _dispatch_retain(group);
  }

  if ((add_explicit & 0xFFFFFFFC) == 4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_group_enter()";
    qword_E42C0 = add_explicit;
    __break(1u);
    JUMPOUT(0xE89CLL);
  }
}

void dispatch_group_notify_f(dispatch_group_t group, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v23 = _dispatch_thread_getspecific(22);
  if (v23)
  {
    _dispatch_thread_setspecific(22, *(v23 + 16));
    v19 = v23;
  }

  else
  {
    v19 = _dispatch_continuation_alloc_from_heap();
  }

  *v19 = 260;
  v19[4] = work;
  v19[5] = context;
  v25 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v25 <= 0x10FF)
  {
    v26 = v25;
  }

  else
  {
    v26 = 4351;
  }

  v27 = _dispatch_thread_getspecific(28);
  if (v27)
  {
    os_retain(v27);
  }

  v19[3] = v27;
  _dispatch_thread_getspecific(0);
  v13 = v19[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v4, v5, v6, v7, v8, v9, v10, 589);
  v28 = v19[3];
  if (v28 != -1)
  {
    if (v28)
    {
      v14 = *(v28 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v24 = v26;
  if (v26 && (*(queue + 21) & 0x40000000) == 0 && (*(queue + 21) & 0xFFF) != 0)
  {
    v24 = 0;
  }

  v19[1] = v24;
  v19[6] = queue;
  _dispatch_retain(queue);
  v19[2] = 0;
  _dispatch_thread_setspecific(122, group + 64);
  v20 = atomic_exchange_explicit((group + 64), v19, memory_order_release);
  if (v20)
  {
    *(v20 + 16) = v19;
  }

  else
  {
    _dispatch_retain(group);
    *(group + 7) = v19;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v20)
  {
    v22 = *(group + 6);
    while (1)
    {
      v21 = v22 | 2;
      if (!v22)
      {
        break;
      }

      v11 = v22;
      v12 = v22;
      atomic_compare_exchange_strong_explicit((group + 48), &v12, v21, memory_order_release, memory_order_relaxed);
      if (v12 != v11)
      {
        v22 = v12;
      }

      if (v12 == v11)
      {
        return;
      }
    }

    _dispatch_group_wake(group, v21, 0);
  }
}

void dispatch_group_notify(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  v24 = _dispatch_thread_getspecific(22);
  if (v24)
  {
    _dispatch_thread_setspecific(22, *(v24 + 16));
    v19 = v24;
  }

  else
  {
    v19 = _dispatch_continuation_alloc_from_heap();
  }

  v23 = _dispatch_Block_copy(block);
  v14 = _Block_get_invoke_fn(block);
  v15 = 0;
  if (v14)
  {
    v15 = v14;
  }

  if (v15 == _dispatch_block_special_invoke)
  {
    *v19 = 276;
    v19[5] = v23;
    _dispatch_continuation_init_slow(v19, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v19 = 276;
    v19[4] = _dispatch_call_block_and_release;
    v19[5] = v23;
    v26 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v26 <= 0x10FF)
    {
      v27 = v26;
    }

    else
    {
      v27 = 4351;
    }

    v28 = _dispatch_thread_getspecific(28);
    if (v28)
    {
      os_retain(v28);
    }

    v19[3] = v28;
    _dispatch_thread_getspecific(0);
    v12 = v19[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
    v29 = v19[3];
    if (v29 != -1)
    {
      if (v29)
      {
        v13 = *(v29 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v25 = v27;
    if (v27 && (*(queue + 21) & 0x40000000) == 0 && (*(queue + 21) & 0xFFF) != 0)
    {
      v25 = 0;
    }

    v19[1] = v25;
  }

  v19[6] = queue;
  _dispatch_retain(queue);
  v19[2] = 0;
  _dispatch_thread_setspecific(122, group + 64);
  v20 = atomic_exchange_explicit((group + 64), v19, memory_order_release);
  if (v20)
  {
    *(v20 + 16) = v19;
  }

  else
  {
    _dispatch_retain(group);
    *(group + 7) = v19;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v20)
  {
    v22 = *(group + 6);
    while (1)
    {
      v21 = v22 | 2;
      if (!v22)
      {
        break;
      }

      v10 = v22;
      v11 = v22;
      atomic_compare_exchange_strong_explicit((group + 48), &v11, v21, memory_order_release, memory_order_relaxed);
      if (v11 != v10)
      {
        v22 = v11;
      }

      if (v11 == v10)
      {
        return;
      }
    }

    _dispatch_group_wake(group, v21, 0);
  }
}

void dispatch_group_async_f(dispatch_group_t group, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v23 = _dispatch_thread_getspecific(22);
  if (v23)
  {
    _dispatch_thread_setspecific(22, *(v23 + 16));
    v21 = v23;
  }

  else
  {
    v21 = _dispatch_continuation_alloc_from_heap();
  }

  *v21 = 268;
  v21[4] = work;
  v21[5] = context;
  v26 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v26 <= 0x10FF)
  {
    v27 = v26;
  }

  else
  {
    v27 = 4351;
  }

  v28 = _dispatch_thread_getspecific(28);
  if (v28)
  {
    os_retain(v28);
  }

  v21[3] = v28;
  _dispatch_thread_getspecific(0);
  v14 = v21[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v4, v5, v6, v7, v8, v9, v10, 589);
  v29 = v21[3];
  if (v29 != -1)
  {
    if (v29)
    {
      v16 = *(v29 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v25 = v27;
  v24 = 0;
  if (v27)
  {
    if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
    {
      v11 = v27 >> 8;
      v12 = __clz(__rbit32(v11));
      if (v11)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }

      v24 = v13;
    }

    else
    {
      v25 = 0;
    }
  }

  v21[1] = v25;
  dispatch_group_enter(group);
  v21[6] = group;
  v22 = *v21;
  v15 = 0;
  if (*queue)
  {
    v15 = *queue;
  }

  (*(v15 + 72))(queue, v21, v24);
}

void dispatch_group_async(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  v25 = _dispatch_thread_getspecific(22);
  if (v25)
  {
    _dispatch_thread_setspecific(22, *(v25 + 16));
    v21 = v25;
  }

  else
  {
    v21 = _dispatch_continuation_alloc_from_heap();
  }

  v22 = _dispatch_Block_copy(block);
  v16 = _Block_get_invoke_fn(block);
  v17 = 0;
  if (v16)
  {
    v17 = v16;
  }

  if (v17 == _dispatch_block_special_invoke)
  {
    *v21 = 284;
    v21[5] = v22;
    inited = _dispatch_continuation_init_slow(v21, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v21 = 284;
    v21[4] = _dispatch_call_block_and_release;
    v21[5] = v22;
    v28 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v28 <= 0x10FF)
    {
      v29 = v28;
    }

    else
    {
      v29 = 4351;
    }

    v30 = _dispatch_thread_getspecific(28);
    if (v30)
    {
      os_retain(v30);
    }

    v21[3] = v30;
    _dispatch_thread_getspecific(0);
    v13 = v21[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
    v31 = v21[3];
    if (v31 != -1)
    {
      if (v31)
      {
        v15 = *(v31 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v27 = v29;
    v26 = 0;
    if (v29)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v10 = v29 >> 8;
        v11 = __clz(__rbit32(v10));
        if (v10)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 0;
        }

        v26 = v12;
      }

      else
      {
        v27 = 0;
      }
    }

    v21[1] = v27;
    inited = v26;
  }

  dispatch_group_enter(group);
  v21[6] = group;
  v24 = *v21;
  v14 = 0;
  if (*queue)
  {
    v14 = *queue;
  }

  (*(v14 + 72))(queue, v21, inited);
}

void _dispatch_release_n(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (v3 != 0x7FFFFFFF)
  {
    v3 = atomic_fetch_add_explicit((a1 + 8), -a2, memory_order_release) - a2;
  }

  if (v3 < 1)
  {
    if (v3 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x10638);
    }

    v2 = *(a1 + 12);
    if (v2 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x10688);
    }

    _os_object_dispose(a1);
  }
}

void dispatch_once(dispatch_once_t *predicate, dispatch_block_t block)
{
  v4 = _Block_get_invoke_fn(block);
  function = 0;
  if (v4)
  {
    function = v4;
  }

  dispatch_once_f(predicate, block, function);
}

void dispatch_once_f(dispatch_once_t *predicate, void *context, dispatch_function_t function)
{
  explicit = atomic_load_explicit(predicate, memory_order_acquire);
  if (explicit != -1)
  {
    if ((explicit & 3) == 2)
    {
      if (4 * MEMORY[0xFFFFFC180] + 2 - explicit >= 0x10)
      {
        *predicate = -1;
      }
    }

    else
    {
      v8 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL;
      v3 = 0;
      atomic_compare_exchange_strong_explicit(predicate, &v3, v8, memory_order_relaxed, memory_order_relaxed);
      if (v3)
      {
        _dispatch_once_wait(predicate);
      }

      else
      {
        _dispatch_once_callout(predicate, context, function);
      }
    }
  }
}

uint64_t _dispatch_once_callout(atomic_ullong *a1, uint64_t a2, void (*a3)(void (**a1)(void)))
{
  if (a3 == _dispatch_call_block_and_release && a2)
  {
    _Block_get_invoke_fn(a2);
  }

  _dispatch_client_callout(a2, a3);
  result = _dispatch_thread_getspecific(3);
  v7 = atomic_exchange_explicit(a1, 4 * MEMORY[0xFFFFFC180] + 2, memory_order_release);
  if (v7 != (result & 0xFFFFFFFC))
  {
    return _dispatch_gate_broadcast_slow(a1, v7);
  }

  return result;
}

void dispatch_assert_queue_V2(dispatch_queue_t queue)
{
  v6 = 0;
  if (*queue)
  {
    v6 = *queue;
  }

  v7 = *(v6 + 16);
  v5 = 0;
  if (v7 != 17)
  {
    v5 = v7 != 18;
  }

  if (v5)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue()";
    qword_E42C0 = v7;
    __break(1u);
    JUMPOUT(0x10C7CLL);
  }

  v13 = *(queue + 7);
  if (((v13 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    v11 = queue;
    v10 = 0;
    v9 = 0;
    v14 = &v9;
    _dispatch_thread_getspecific_pair(20, &v9, 21, &v10, v1, v2, v3, v4);
    while (v9)
    {
      if (v9 == v11)
      {
        v12 = 1;
        goto LABEL_20;
      }

      v18 = &v9;
      v17 = v10;
      v16 = v9;
      if (v10)
      {
        v15 = *(v16 + 3);
        if (v15)
        {
          *v18 = v15;
          if (v16 == *v17)
          {
            v18[1] = v17[1];
          }
        }

        else
        {
          *v18 = *v17;
          v18[1] = v17[1];
        }
      }

      else
      {
        *v18 = *(v16 + 3);
      }
    }

    v12 = 0;
LABEL_20:
    if (!v12)
    {
      _dispatch_assert_queue_fail(queue, 1);
    }
  }
}

void _dispatch_assert_queue_fail(void *a1, char a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  v2 = &unk_BBE5B;
  if ((a2 & 1) == 0)
  {
    v2 = "not ";
  }

  v10 = v14[9];
  if (v10)
  {
    asprintf(&v12, "%sBlock was %sexpected to execute on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v2, v10, v14);
  }

  else
  {
    asprintf(&v12, "%sBlock was %sexpected to execute on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v2, &unk_BBE5B, v14);
  }

  v11 = v12;
  _dispatch_log("%s", v3, v4, v5, v6, v7, v8, v9, v12);
  qword_E4290 = v11;
  __break(1u);
}

void dispatch_assert_queue_not_V2(dispatch_queue_t queue)
{
  v6 = 0;
  if (*queue)
  {
    v6 = *queue;
  }

  v7 = *(v6 + 16);
  v5 = 0;
  if (v7 != 17)
  {
    v5 = v7 != 18;
  }

  if (v5)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue_not()";
    qword_E42C0 = v7;
    __break(1u);
    JUMPOUT(0x11028);
  }

  v13 = *(queue + 7);
  if (((v13 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0)
  {
    _dispatch_assert_queue_fail(queue, 0);
  }

  v11 = queue;
  v10 = 0;
  v9 = 0;
  v14 = &v9;
  _dispatch_thread_getspecific_pair(20, &v9, 21, &v10, v1, v2, v3, v4);
  while (v9)
  {
    if (v9 == v11)
    {
      v12 = 1;
      goto LABEL_21;
    }

    v18 = &v9;
    v17 = v10;
    v16 = v9;
    if (v10)
    {
      v15 = *(v16 + 3);
      if (v15)
      {
        *v18 = v15;
        if (v16 == *v17)
        {
          v18[1] = v17[1];
        }
      }

      else
      {
        *v18 = *v17;
        v18[1] = v17[1];
      }
    }

    else
    {
      *v18 = *(v16 + 3);
    }
  }

  v12 = 0;
LABEL_21:
  if (v12)
  {
    _dispatch_assert_queue_fail(queue, 0);
  }
}

void dispatch_assert_queue_barrier(dispatch_queue_t queue)
{
  dispatch_assert_queue_V2(queue);
  if (*(queue + 40) != 1 && (!*(queue + 3) || (*(queue + 7) & 0x40000000000000) == 0))
  {
    _dispatch_assert_queue_barrier_fail(queue);
  }
}

void _dispatch_assert_queue_barrier_fail(void *a1)
{
  v11 = a1;
  v10 = 0;
  v8 = a1[9];
  if (v8)
  {
    asprintf(&v10, "%sBlock was expected to act as a barrier on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v8, v11);
  }

  else
  {
    asprintf(&v10, "%sBlock was expected to act as a barrier on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", &unk_BBE5B, v11);
  }

  v9 = v10;
  _dispatch_log("%s", v1, v2, v3, v4, v5, v6, v7, v10);
  qword_E4290 = v9;
  __break(1u);
}

BOOL dispatch_verify_current_queue_4swiftonly(void *a1)
{
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  v8 = *(v7 + 16);
  v6 = 0;
  if (v8 != 17)
  {
    v6 = v8 != 18;
  }

  if (v6)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_am_i_on_queue_4swiftonly()";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0x11458);
  }

  v15 = a1[7];
  if (((v15 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    v13 = a1;
    v12 = 0;
    v11 = 0;
    v16 = &v11;
    _dispatch_thread_getspecific_pair(20, &v11, 21, &v12, v1, v2, v3, v4);
    while (v11)
    {
      if (v11 == v13)
      {
        v14 = 1;
        return v14 != 0;
      }

      v20 = &v11;
      v19 = v12;
      v18 = v11;
      if (v12)
      {
        v17 = v18[3];
        if (v17)
        {
          *v20 = v17;
          if (v18 == *v19)
          {
            v20[1] = v19[1];
          }
        }

        else
        {
          *v20 = *v19;
          v20[1] = v19[1];
        }
      }

      else
      {
        *v20 = v18[3];
      }
    }

    v14 = 0;
    return v14 != 0;
  }

  else
  {
    return 1;
  }
}

void _dispatch_set_priority_and_mach_voucher_slow(uint64_t a1, int a2)
{
  v19 = a1;
  v17 = 0;
  if (a1)
  {
    if (_dispatch_set_qos_class_enabled)
    {
      v16 = _dispatch_thread_getspecific(4);
      if (v19 != v16)
      {
        if ((v16 & 0x1000000) != 0)
        {
          v17 = 16;
          v19 |= _dispatch_thread_getspecific(25) & 0x80000000;
        }

        else
        {
          v19 |= v16 & 0x88000000;
        }

        if ((v16 & 0xFFFFFF) != 0)
        {
          v17 |= 1u;
        }

        v14 = qword_E0138;
        if (((v14 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Changing the QoS while on the manager queue";
          qword_E42C0 = v19;
          __break(1u);
          JUMPOUT(0x11850);
        }

        if ((BYTE3(v19) >> 1))
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Cannot raise oneself to manager";
          qword_E42C0 = v19;
          __break(1u);
          JUMPOUT(0x1189CLL);
        }

        if ((v16 & 0x2000000) != 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Cannot turn a manager thread into a normal one";
          qword_E42C0 = v16;
          __break(1u);
          JUMPOUT(0x118E4);
        }
      }
    }
  }

  if (a2 != -1)
  {
    v17 |= 2u;
  }

  v20 = _dispatch_thread_getspecific(29);
  if (v20)
  {
    _dispatch_abort(453, (v20 & 1) == 0, v2, v3, v4, v5, v6, v7);
  }

  if (v20 && (*(v20 + 53) & 2) != 0)
  {
    _dispatch_event_loop_drain(1u);
  }

  if (v17)
  {
    v15 = _pthread_set_properties_self();
    if (v15 == 22)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: _pthread_set_properties_self failed";
      qword_E42C0 = v19;
      __break(1u);
      JUMPOUT(0x119F0);
    }

    if (v15)
    {
      _dispatch_bug(230, v15, v8, v9, v10, v11, v12, v13);
    }
  }
}

uint64_t _dispatch_set_priority_and_voucher_slow(uint64_t a1, _DWORD *a2, char a3)
{
  v16 = -1;
  v15 = -1;
  if (a2 != -1)
  {
    v14 = (a3 & 4) != 0;
    v16 = _dispatch_thread_getspecific(28);
    if (v16 == a2 && (a3 & 2) != 0)
    {
      if (v14 && a2)
      {
        os_release(a2);
      }

      v16 = -1;
    }

    else
    {
      if (!v14 && a2)
      {
        os_retain(a2);
      }

      if (v16 == a2)
      {
        v20 = -1;
      }

      else
      {
        _dispatch_thread_setspecific(28, a2);
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", v3, v4, v5, v6, v7, v8, v9, 400);
        if (a2)
        {
          v13 = a2[8];
        }

        else
        {
          v13 = 0;
        }

        if (v16)
        {
          v12 = *(v16 + 32);
        }

        else
        {
          v12 = 0;
        }

        if (v13 == v12)
        {
          v11 = -1;
        }

        else
        {
          v11 = v13;
        }

        v20 = v11;
      }

      v15 = v20;
    }
  }

  if ((a3 & 8) == 0)
  {
    _dispatch_set_priority_and_mach_voucher_slow(a1, v15);
  }

  if (v16 != -1 && (a3 & 2) != 0)
  {
    if (v16)
    {
      os_release(v16);
    }

    return -1;
  }

  return v16;
}

void _dispatch_async_redirect_invoke(void *a1, uint64_t a2, unsigned int a3)
{
  v58 = a1;
  v57 = a2;
  v56 = a3;
  v55 = 0uLL;
  v54 = a1[7];
  v53 = a1[5];
  v46 = 0;
  if (a1[4])
  {
    v46 = a1[4];
  }

  v52 = v58[6];
  if (v53)
  {
    v56 = v56 & 0xFCFFFFFF | v53;
  }

  v50 = _dispatch_thread_getspecific(20);
  if (v46)
  {
    v128 = v46;
    v127 = _dispatch_thread_getspecific(25);
    v45 = 0;
    if (*v46)
    {
      v45 = *v46;
    }

    v130 = *(v45 + 16) & 0x10000;
    v129 = 1954;
    if (!v130)
    {
      _dispatch_abort(v129, 0, v3, v4, v5, v6, v7, v8);
    }

    v150 = *(v128 + 21);
    v149 = _dispatch_thread_getspecific(25);
    v150 = v150 & 0xFFF0FFFF | v149 & 0xF0000;
    _dispatch_thread_setspecific(25, v150);
    v126 = v128;
    v131 = v128;
    _dispatch_thread_setspecific(20, v128);
    v49 = v127;
    v141 = *(v52 + 84);
    v140 = _dispatch_thread_getspecific(25);
    v139 = v140;
    if (v140)
    {
      if ((v141 & 0xFFF) != 0)
      {
        v139 &= 0x880F0000;
        if ((v140 & 0xFFF) > (v141 & 0xFFFu))
        {
          v44 = v140 & 0xFFF;
        }

        else
        {
          v44 = v141 & 0xFFF;
        }

        v139 |= v44;
        v143 = v141 & 0xF000;
        v145 = v139 & 0xF00;
        if (v143 >> 12 > v145 >> 8)
        {
          v141 &= 0x4400F000u;
        }

        else
        {
          v141 &= 0x40000000u;
        }

        v139 |= v141;
      }

      else
      {
        if ((v139 & 0xFFF) != 0)
        {
          v139 |= 0x40000000u;
        }

        v142 = v141 & 0xF000;
        v144 = v139 & 0xF00;
        if (v142 >> 12 > v144 >> 8)
        {
          v139 = v139 & 0xFFFF0FFF | v141 & 0x400F000;
        }
      }
    }

    else
    {
      v139 = v141 & 0xFFF0FFFF;
    }

    _dispatch_thread_setspecific(25, v139);
  }

  else
  {
    v134 = *(v52 + 84);
    v133 = _dispatch_thread_getspecific(25);
    v132 = v133;
    if (v133)
    {
      if ((v134 & 0xFFF) != 0)
      {
        v132 &= 0x880F0000;
        if ((v133 & 0xFFF) > (v134 & 0xFFFu))
        {
          v43 = v133 & 0xFFF;
        }

        else
        {
          v43 = v134 & 0xFFF;
        }

        v132 |= v43;
        v136 = v134 & 0xF000;
        v138 = v132 & 0xF00;
        if (v136 >> 12 > v138 >> 8)
        {
          v134 &= 0x4400F000u;
        }

        else
        {
          v134 &= 0x40000000u;
        }

        v132 |= v134;
      }

      else
      {
        if ((v132 & 0xFFF) != 0)
        {
          v132 |= 0x40000000u;
        }

        v135 = v134 & 0xF000;
        v137 = v132 & 0xF00;
        if (v135 >> 12 > v137 >> 8)
        {
          v132 = v132 & 0xFFFF0FFF | v134 & 0x400F000;
        }
      }
    }

    else
    {
      v132 = v134 & 0xFFF0FFFF;
    }

    _dispatch_thread_setspecific(25, v132);
    v49 = v133;
  }

  v147 = v52;
  v146 = &v55;
  v153 = &v55;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v55, v9, v10, v11, v12, v13);
  _dispatch_thread_setspecific_pair(20, v147, 21, v146, v14, v15, v16, v17);
  v48 = v58;
  v64 = v58;
  v63 = 516;
  v62 = v58[3];
  v61 = 4;
  v86 = 1;
  v85 = 600;
  v58[3] = -1;
  if (v62 != -1)
  {
    v79 = 771817480;
    v78 = v62;
    v77 = v64;
    if (v62)
    {
      v42 = v78[8];
    }

    else
    {
      v42 = 0;
    }

    v76 = v42;
    v84 = v79;
    v83 = v42;
    v82 = v77;
    v81 = 0;
    v80 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v24, v25, v26, v27, v28, v29, v30, 607);
  }

  v68 = v64[1];
  v67 = v62;
  v66 = v61 | 2;
  v65 = 0;
  if (v68 != -1)
  {
    v115 = v68;
    v114 = v66;
    v113 = _dispatch_thread_getspecific(25);
    v121 = v113;
    v122 = v113 & 0xF00;
    v120 = v122 >> 8;
    v119 = v113;
    if (v122 >> 8)
    {
      v119 |= 1 << (v120 + 7);
    }

    v112 = v119;
    v123 = v119;
    v111 = v119 & 0xFFFFFF00;
    v41 = 1;
    if ((v114 & 1) == 0)
    {
      v41 = (v115 & 0x10000000) != 0;
    }

    v110 = v41;
    v117 = v115;
    v115 &= 0xFFFFFFu;
    if (v115)
    {
      if (v115 >= v111)
      {
        if (v110 || (v113 & 0x44000000) != 0)
        {
          v116 = v115;
        }

        else
        {
          v116 = v112;
        }
      }

      else
      {
        v116 = v112;
      }
    }

    else
    {
      v118 = v113 & 0xF000;
      v109 = v118 >> 12;
      if (v118 >> 12)
      {
        v125 = v109;
        v124 = 1 << (v109 + 7);
        v40 = v124 | 0xFF;
      }

      else
      {
        v40 = v112;
      }

      v116 = v40;
    }

    v65 = v116;
  }

  v72 = v65;
  v71 = v67;
  v70 = v66;
  v95 = v65;
  v108 = v65 != -1;
  v107 = 2409;
  if (v65 == -1)
  {
    _dispatch_abort(v107, v108, v18, v19, v20, v21, v22, v23);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v106 = v95;
    v105 = 4261412863;
    v104 = 0;
    v95 &= 0xFFFFFFFF02FFFFFFLL;
    v97 = _dispatch_thread_getspecific(4);
    v94 = v97;
    v93 = 0x1000000;
    v92 = 2281701376;
    if ((v97 & 0x1000000) != 0)
    {
      if (v95)
      {
        v39 = v95;
      }

      else
      {
        v103 = v94;
        v102 = v93;
        v101 = 0;
        v39 = v94 & (~v93 | 0xFFFFFF);
      }

      v96 = v39;
    }

    else
    {
      v100 = v94;
      v99 = v92;
      v98 = 0;
      v94 &= ~v92 | 0xFFFFFF;
      if (v95 == v94)
      {
        v96 = 0;
      }

      else
      {
        v96 = v95;
      }
    }
  }

  else
  {
    v96 = 0;
  }

  v72 = v96;
  if (v96)
  {
    goto LABEL_89;
  }

  if (v71 == -1)
  {
    v73 = -1;
    goto LABEL_90;
  }

  v38 = v71;
  if (v38 != _dispatch_thread_getspecific(28))
  {
LABEL_89:
    v73 = _dispatch_set_priority_and_voucher_slow(v72, v71, v70);
  }

  else
  {
    v69 = (v70 & 4) != 0;
    if ((v70 & 2) != 0)
    {
      if (v69 && v71)
      {
        object = v71;
        os_release(v71);
      }

      v71 = -1;
    }

    else if (!v69 && v71)
    {
      v75 = v71;
      os_retain(v71);
    }

    v73 = v71;
  }

LABEL_90:
  v89 = v48;
  v88 = _dispatch_thread_getspecific(22);
  if (v88)
  {
    v37 = *(v88 + 8) + 1;
  }

  else
  {
    v37 = 1;
  }

  v87 = v37;
  if (v37 <= _dispatch_continuation_cache_limit)
  {
    *(v89 + 16) = v88;
    *(v89 + 8) = v87;
    _dispatch_thread_setspecific(22, v89);
    v90 = 0;
  }

  else
  {
    v90 = v89;
  }

  v47 = v90;
  _dispatch_continuation_pop(v54, v57, v56, v52);
  if (v47)
  {
    _dispatch_continuation_free_to_cache_limit(v47);
  }

  v148 = &v55;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v55, v31, v32, v33, v34, v35);
  if (v46)
  {
    v91 = v50;
    _dispatch_thread_setspecific(20, v50);
  }

  v152 = v49;
  v151 = _dispatch_thread_getspecific(25);
  v152 &= 0xFFF0FFFF;
  v152 |= v151 & 0xF0000;
  _dispatch_thread_setspecific(25, v152);
  for (i = *(v52 + 24); ; i = *(i + 24))
  {
    v36 = 0;
    if (*(i + 24))
    {
      v36 = i != v50;
    }

    if (!v36)
    {
      break;
    }

    v59 = i;
    v60 = i;
    _dispatch_lane_non_barrier_complete(i, 0);
  }

  _dispatch_lane_non_barrier_complete(v52, 1u);
}

uint64_t _dispatch_workloop_stealer_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v26 = a1[3];
  a1[3] = -1;
  if (v26 != -1)
  {
    if (v26)
    {
      v20 = v26[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v8, v9, v10, v11, v12, v13, v14, 607);
  }

  v29 = a1[1];
  v28 = 0;
  if (v29 != -1)
  {
    v36 = _dispatch_thread_getspecific(25);
    v39 = (v36 & 0xF00) >> 8;
    v38 = v36;
    if (v39)
    {
      v38 = v36 | (1 << (v39 + 7));
    }

    if ((v29 & 0xFFFFFF) != 0)
    {
      if ((v29 & 0xFFFFFFuLL) >= (v38 & 0xFFFFFF00))
      {
        if ((v29 & 0x10000000) != 0 || (v36 & 0x44000000) != 0)
        {
          v37 = v29 & 0xFFFFFF;
        }

        else
        {
          v37 = v38;
        }
      }

      else
      {
        v37 = v38;
      }
    }

    else
    {
      v35 = (v36 & 0xF000) >> 12;
      if (v35)
      {
        v19 = (1 << (v35 + 7)) | 0xFF;
      }

      else
      {
        v19 = v38;
      }

      v37 = v19;
    }

    v28 = v37;
  }

  if (v28 == -1)
  {
    _dispatch_abort(2409, 0, a3, a4, a5, a6, a7, a8);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v33 = v28 & 0xFFFFFFFF02FFFFFFLL;
    v32 = _dispatch_thread_getspecific(4);
    if ((v32 & 0x1000000) != 0)
    {
      if (v33)
      {
        v18 = v28 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v18 = v32 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v34 = v18;
    }

    else if (v33 == (v32 & 0xFFFFFFFF77FFFFFFLL))
    {
      v34 = 0;
    }

    else
    {
      v34 = v28 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    goto LABEL_40;
  }

  if (v26 == -1)
  {
    goto LABEL_41;
  }

  if (v26 != _dispatch_thread_getspecific(28))
  {
LABEL_40:
    _dispatch_set_priority_and_voucher_slow(v34, v26, 6);
  }

  else if (v26)
  {
    os_release(v26);
  }

LABEL_41:
  v30 = _dispatch_thread_getspecific(22);
  if (v30)
  {
    v17 = *(v30 + 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17 <= _dispatch_continuation_cache_limit)
  {
    a1[2] = v30;
    *(a1 + 2) = v17;
    _dispatch_thread_setspecific(22, a1);
    v31 = 0;
  }

  else
  {
    v31 = a1;
  }

  v21 = a1[6];
  v16 = 0;
  if (*v21)
  {
    v16 = *v21;
  }

  result = (*(v16 + 48))(v21, a2, v23 | 1u);
  if (v31)
  {
    return _dispatch_continuation_free_to_cache_limit(v31);
  }

  return result;
}

uint64_t _dispatch_queue_override_invoke(void *a1, uint64_t a2, unsigned int a3)
{
  v56 = _dispatch_thread_getspecific(20);
  v54 = 4;
  v55 = a1[6];
  v96 = a1[7];
  v95 = _dispatch_thread_getspecific(25);
  v53 = 0;
  if (*v96)
  {
    v53 = *v96;
  }

  if ((*(v53 + 16) & 0x10000) == 0)
  {
    _dispatch_abort(1954, 0, v3, v4, v5, v6, v7, v8);
  }

  v97 = *(v96 + 84);
  v98 = v97 & 0xFFF0FFFF | _dispatch_thread_getspecific(25) & 0xF0000;
  _dispatch_thread_setspecific(25, v98);
  _dispatch_thread_setspecific(20, v96);
  v52 = 0;
  if (*a1)
  {
    v52 = *a1;
  }

  if (*(v52 + 16) == 1792)
  {
    a3 |= 1u;
    v54 = 516;
  }

  v60 = a1[3];
  a1[3] = -1;
  if (v60 != -1)
  {
    if (v60)
    {
      v51 = v60[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v15, v16, v17, v18, v19, v20, v21, 607);
  }

  v62 = a1[1];
  v61 = 0;
  if (v62 != -1)
  {
    v89 = _dispatch_thread_getspecific(25);
    v92 = (v89 & 0xF00) >> 8;
    v91 = v89;
    if (v92)
    {
      v91 = v89 | (1 << (v92 + 7));
    }

    if ((v62 & 0xFFFFFF) != 0)
    {
      if ((v62 & 0xFFFFFF) >= (v91 & 0xFFFFFF00))
      {
        if ((v62 & 0x10000000) != 0 || (v89 & 0x44000000) != 0)
        {
          v90 = v62 & 0xFFFFFF;
        }

        else
        {
          v90 = v91;
        }
      }

      else
      {
        v90 = v91;
      }
    }

    else
    {
      v88 = (v89 & 0xF000) >> 12;
      if (v88)
      {
        v50 = (1 << (v88 + 7)) | 0xFF;
      }

      else
      {
        v50 = v91;
      }

      v90 = v50;
    }

    v61 = v90;
  }

  if (v61 == -1)
  {
    _dispatch_abort(2409, 0, v9, v10, v11, v12, v13, v14);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v83 = v61 & 0xFFFFFFFF02FFFFFFLL;
    v82 = _dispatch_thread_getspecific(4);
    if ((v82 & 0x1000000) != 0)
    {
      if (v83)
      {
        v49 = v61 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v49 = v82 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v84 = v49;
    }

    else if (v83 == (v82 & 0xFFFFFFFF77FFFFFFLL))
    {
      v84 = 0;
    }

    else
    {
      v84 = v61 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v84 = 0;
  }

  if (v84)
  {
    goto LABEL_48;
  }

  if (v60 == -1)
  {
    goto LABEL_49;
  }

  if (v60 != _dispatch_thread_getspecific(28))
  {
LABEL_48:
    _dispatch_set_priority_and_voucher_slow(v84, v60, v54 & 4 | 2);
  }

  else if (v60)
  {
    os_release(v60);
  }

LABEL_49:
  v63 = _dispatch_thread_getspecific(22);
  if (v63)
  {
    v48 = *(v63 + 8) + 1;
  }

  else
  {
    v48 = 1;
  }

  if (v48 <= _dispatch_continuation_cache_limit)
  {
    a1[2] = v63;
    *(a1 + 2) = v48;
    _dispatch_thread_setspecific(22, a1);
    v64 = 0;
  }

  else
  {
    v64 = a1;
  }

  if (*v55 >= 0x1000uLL)
  {
    v47 = 0;
    if (*v55)
    {
      v47 = *v55;
    }

    if (*(v47 + 16) == 1)
    {
      v46 = 0;
      if (*v55)
      {
        v46 = *v55;
      }

      (*(v46 + 24))(v55, 0, (a3 >> 21) & 1);
    }

    else
    {
      v45 = 0;
      if (*v55)
      {
        v45 = *v55;
      }

      (*(v45 + 48))(v55, a2, a3);
    }

    goto LABEL_143;
  }

  v66 = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v66 = _dispatch_autorelease_pool_push();
  }

  v65 = *v55;
  v71 = v55[3];
  v70 = *v55 & 4;
  if (v70)
  {
    v55[3] = -1;
  }

  if (v71 != -1)
  {
    if (v71)
    {
      v44 = v71[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v28, v29, v30, v31, v32, v33, v34, 607);
  }

  v73 = v55[1];
  v72 = 0;
  if (v73 != -1)
  {
    v86 = _dispatch_thread_getspecific(25);
    v94 = (v86 & 0xF00) >> 8;
    v93 = v86;
    if (v94)
    {
      v93 = v86 | (1 << (v94 + 7));
    }

    if ((v73 & 0xFFFFFF) != 0)
    {
      if ((v73 & 0xFFFFFF) >= (v93 & 0xFFFFFF00))
      {
        if ((v73 & 0x10000000) != 0 || (v86 & 0x44000000) != 0)
        {
          v87 = v73 & 0xFFFFFF;
        }

        else
        {
          v87 = v93;
        }
      }

      else
      {
        v87 = v93;
      }
    }

    else
    {
      v85 = (v86 & 0xF000) >> 12;
      if (v85)
      {
        v43 = (1 << (v85 + 7)) | 0xFF;
      }

      else
      {
        v43 = v93;
      }

      v87 = v43;
    }

    v72 = v87;
  }

  if (v72 == -1)
  {
    _dispatch_abort(2409, 0, v22, v23, v24, v25, v26, v27);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v80 = v72 & 0xFFFFFFFF02FFFFFFLL;
    v79 = _dispatch_thread_getspecific(4);
    if ((v79 & 0x1000000) != 0)
    {
      if (v80)
      {
        v42 = v72 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v42 = v79 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v81 = v42;
    }

    else if (v80 == (v79 & 0xFFFFFFFF77FFFFFFLL))
    {
      v81 = 0;
    }

    else
    {
      v81 = v72 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v81 = 0;
  }

  if (v81)
  {
LABEL_109:
    _dispatch_set_priority_and_voucher_slow(v81, v71, v70 | 2);
    goto LABEL_110;
  }

  if (v71 != -1)
  {
    if (v71 == _dispatch_thread_getspecific(28))
    {
      if ((v70 & 4) != 0 && v71)
      {
        os_release(v71);
      }

      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_110:
  if ((v65 & 4) != 0)
  {
    v74 = _dispatch_thread_getspecific(22);
    if (v74)
    {
      v41 = *(v74 + 8) + 1;
    }

    else
    {
      v41 = 1;
    }

    if (v41 <= _dispatch_continuation_cache_limit)
    {
      v55[2] = v74;
      *(v55 + 2) = v41;
      _dispatch_thread_setspecific(22, v55);
      v75 = 0;
    }

    else
    {
      v75 = v55;
    }

    v67 = v75;
  }

  else
  {
    v67 = 0;
  }

  if ((v65 & 8) != 0)
  {
    group = v55[6];
    v40 = 0;
    if (*group)
    {
      v40 = *group;
    }

    if (*(v40 + 16) != 514)
    {
      v38 = 0;
      if (*group)
      {
        v38 = *group;
      }

      v35 = *(v38 + 16);
      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected object type";
      qword_E42C0 = v35;
      __break(1u);
      JUMPOUT(0x159B4);
    }

    v78 = v55[5];
    v77 = v55[4];
    if (v77 == _dispatch_call_block_and_release && v78)
    {
      _Block_get_invoke_fn(v78);
    }

    else
    {
      v39 = v55[4];
    }

    _dispatch_client_callout(v78, v77);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    dispatch_group_leave(group);
  }

  else
  {
    v69 = v55[5];
    v68 = v55[4];
    if (v68 == _dispatch_call_block_and_release && v69)
    {
      _Block_get_invoke_fn(v69);
    }

    else
    {
      v37 = v55[4];
    }

    _dispatch_client_callout(v69, v68);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  if (v67)
  {
    _dispatch_continuation_free_to_cache_limit(v67);
  }

  if (v66)
  {
    _dispatch_autorelease_pool_pop(v66);
  }

LABEL_143:
  if ((v54 & 0x200) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if (v64)
  {
    _dispatch_continuation_free_to_cache_limit(v64);
  }

  v99 = _dispatch_thread_getspecific(25);
  _dispatch_thread_setspecific(25, v95 & 0xFFF0FFFF | v99 & 0xF0000);
  return _dispatch_thread_setspecific(20, v56);
}

uint64_t _dispatch_continuation_free_to_cache_limit(void *a1)
{
  _dispatch_continuation_free_to_heap(a1);
  result = _dispatch_thread_getspecific(22);
  v5 = result;
  if (result)
  {
    v3 = *(result + 8) - _dispatch_continuation_cache_limit;
    if (v3 > 0)
    {
      do
      {
        v4 = v5[2];
        _dispatch_continuation_free_to_heap(v5);
        --v3;
        v2 = 0;
        if (v3)
        {
          v5 = v4;
          v2 = v4 != 0;
        }
      }

      while (v2);
      return _dispatch_thread_setspecific(22, v4);
    }
  }

  return result;
}

void _dispatch_continuation_pop_inline(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = HIWORD(a3);
  v29 = _dispatch_thread_getspecific(24);
  if (v29)
  {
    (*v29)(a4);
  }

  v30 = v31 << 16;
  if (*a1 >= 0x1000uLL)
  {
    v28 = 0;
    if (*a1)
    {
      v28 = *a1;
    }

    if (*(v28 + 16) == 1)
    {
      v27 = 0;
      if (*a1)
      {
        v27 = *a1;
      }

      (*(v27 + 24))(a1, 0, (v30 >> 21) & 1);
    }

    else
    {
      v26 = 0;
      if (*a1)
      {
        v26 = *a1;
      }

      (*(v26 + 48))(a1, a2, v30);
    }

    goto LABEL_91;
  }

  v36 = 0;
  if ((v30 & 0x1000000) != 0)
  {
    v36 = _dispatch_autorelease_pool_push();
  }

  v35 = *a1;
  v41 = a1[3];
  v40 = *a1 & 4;
  if (v40)
  {
    a1[3] = -1;
  }

  if (v41 != -1)
  {
    if (v41)
    {
      v25 = v41[8];
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v10, v11, v12, v13, v14, v15, v16, 607);
  }

  v43 = a1[1];
  v42 = 0;
  if (v43 != -1)
  {
    v53 = _dispatch_thread_getspecific(25);
    v56 = (v53 & 0xF00) >> 8;
    v55 = v53;
    if (v56)
    {
      v55 = v53 | (1 << (v56 + 7));
    }

    if ((v43 & 0xFFFFFF) != 0)
    {
      if ((v43 & 0xFFFFFFuLL) >= (v55 & 0xFFFFFF00))
      {
        if ((v43 & 0x10000000) != 0 || (v53 & 0x44000000) != 0)
        {
          v54 = v43 & 0xFFFFFF;
        }

        else
        {
          v54 = v55;
        }
      }

      else
      {
        v54 = v55;
      }
    }

    else
    {
      v52 = (v53 & 0xF000) >> 12;
      if (v52)
      {
        v24 = (1 << (v52 + 7)) | 0xFF;
      }

      else
      {
        v24 = v55;
      }

      v54 = v24;
    }

    v42 = v54;
  }

  if (v42 == -1)
  {
    _dispatch_abort(2409, 0, v4, v5, v6, v7, v8, v9);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v50 = v42 & 0xFFFFFFFF02FFFFFFLL;
    v49 = _dispatch_thread_getspecific(4);
    if ((v49 & 0x1000000) != 0)
    {
      if (v50)
      {
        v23 = v42 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v23 = v49 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v51 = v23;
    }

    else if (v50 == (v49 & 0xFFFFFFFF77FFFFFFLL))
    {
      v51 = 0;
    }

    else
    {
      v51 = v42 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v51 = 0;
  }

  if (v51)
  {
LABEL_57:
    _dispatch_set_priority_and_voucher_slow(v51, v41, v40 | 2);
    goto LABEL_58;
  }

  if (v41 != -1)
  {
    if (v41 == _dispatch_thread_getspecific(28))
    {
      if ((v40 & 4) != 0 && v41)
      {
        os_release(v41);
      }

      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_58:
  if ((v35 & 4) != 0)
  {
    v44 = _dispatch_thread_getspecific(22);
    if (v44)
    {
      v22 = *(v44 + 8) + 1;
    }

    else
    {
      v22 = 1;
    }

    if (v22 <= _dispatch_continuation_cache_limit)
    {
      a1[2] = v44;
      *(a1 + 2) = v22;
      _dispatch_thread_setspecific(22, a1);
      v45 = 0;
    }

    else
    {
      v45 = a1;
    }

    v37 = v45;
  }

  else
  {
    v37 = 0;
  }

  if ((v35 & 8) != 0)
  {
    group = a1[6];
    v21 = 0;
    if (*group)
    {
      v21 = *group;
    }

    if (*(v21 + 16) != 514)
    {
      v19 = 0;
      if (*group)
      {
        v19 = *group;
      }

      v17 = *(v19 + 16);
      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected object type";
      qword_E42C0 = v17;
      __break(1u);
      JUMPOUT(0x16F3CLL);
    }

    v48 = a1[5];
    v47 = a1[4];
    if (v47 == _dispatch_call_block_and_release && v48)
    {
      _Block_get_invoke_fn(v48);
    }

    else
    {
      v20 = a1[4];
    }

    _dispatch_client_callout(v48, v47);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    dispatch_group_leave(group);
  }

  else
  {
    v39 = a1[5];
    v38 = a1[4];
    if (v38 == _dispatch_call_block_and_release && v39)
    {
      _Block_get_invoke_fn(v39);
    }

    else
    {
      v18 = a1[4];
    }

    _dispatch_client_callout(v39, v38);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  if (v37)
  {
    _dispatch_continuation_free_to_cache_limit(v37);
  }

  if (v36)
  {
    _dispatch_autorelease_pool_pop(v36);
  }

LABEL_91:
  if (v29)
  {
    v29[1](a4);
  }
}

dispatch_block_t dispatch_block_create(dispatch_block_flags_t flags, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  else
  {
    return _dispatch_block_create_with_voucher_and_priority(flags, 0, 0, block, v2, v3, v4, v5);
  }
}

void *_dispatch_block_create_with_voucher_and_priority(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  if ((a1 & 0xA) != 0)
  {
    v23 = a1 | 0x40000000;
  }

  if ((v23 & 0x20) != 0)
  {
    v23 &= ~0x10uLL;
  }

  v22 = v23;
  if ((v23 & 0x80000000) == 0)
  {
    if ((v23 & 2) != 0)
    {
      a2 = 0;
      v22 = v23 | 0x80000000;
    }

    else if ((v23 & 0x40) != 0)
    {
      a2 = -1;
      v22 = v23 | 0x80000000;
    }

    else if ((v23 & 4) != 0)
    {
      a2 = -3;
      v22 = v23 | 0x80000000;
    }
  }

  if (a2 == -3)
  {
    a2 = _dispatch_thread_getspecific(28);
  }

  if ((v23 & 4) != 0 && (v22 & 0x40000000) == 0)
  {
    v25 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v25 <= 0x10FF)
    {
      v26 = v25;
    }

    else
    {
      v26 = 4351;
    }

    a3 = v26;
    v22 |= 0x40000000uLL;
  }

  v18 = _dispatch_block_create(v22, a2, a3, a4, a5, a6, a7, a8);
  v16 = _Block_get_invoke_fn(v18);
  v17 = 0;
  if (v16)
  {
    v17 = v16;
  }

  if (v17 == _dispatch_block_special_invoke)
  {
    if (v18[4] != 3512316172)
    {
      v14 = v18[4];
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v14;
      __break(1u);
      JUMPOUT(0x175ECLL);
    }

    v24 = (v18 + 4);
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    _dispatch_abort(429, 0, v8, v9, v10, v11, v12, v13);
  }

  _Block_get_invoke_fn(a4);
  _dispatch_thread_getspecific(4);
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  return v18;
}

dispatch_block_t dispatch_block_create_with_qos_class(dispatch_block_flags_t flags, dispatch_qos_class_t qos_class, int relative_priority, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  if (qos_class == QOS_CLASS_UNSPECIFIED || qos_class == 5 || qos_class == QOS_CLASS_BACKGROUND || qos_class == QOS_CLASS_UTILITY || qos_class == QOS_CLASS_DEFAULT || qos_class == QOS_CLASS_USER_INITIATED || qos_class == QOS_CLASS_USER_INTERACTIVE)
  {
    v10 = 0;
    if (relative_priority >= -15)
    {
      v10 = relative_priority <= 0;
    }

    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    return 0;
  }

  v4 = _pthread_qos_class_encode();
  return _dispatch_block_create_with_voucher_and_priority(flags | 0x40000000, 0, v4, block, v5, v6, v7, v8);
}

void *dispatch_block_create_with_voucher(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  else
  {
    return _dispatch_block_create_with_voucher_and_priority(a1 & 0xFFFFFFFF7FFFFFBFLL | 0x80000000, a2, 0, a3, a5, a6, a7, a8);
  }
}

void *dispatch_block_create_with_voucher_and_qos_class(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5)
{
  if ((a1 & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  if (!a3 || a3 == 5 || a3 == 9 || a3 == 17 || a3 == 21 || a3 == 25 || a3 == 33)
  {
    v11 = 0;
    if (a4 >= -15)
    {
      v11 = a4 <= 0;
    }

    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    return 0;
  }

  v5 = _pthread_qos_class_encode();
  return _dispatch_block_create_with_voucher_and_priority(a1 & 0xFFFFFFFF3FFFFFB7 | 0xC0000000, a2, v5, a5, v6, v7, v8, v9);
}

void dispatch_block_perform(dispatch_block_flags_t flags, dispatch_block_t block)
{
  v15 = flags;
  v14 = block;
  v16 = flags;
  if ((flags & 0xFFFFFF00) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid flags passed to dispatch_block_perform()";
    qword_E42C0 = v15;
    __break(1u);
    JUMPOUT(0x17BB0);
  }

  v17 = v15;
  if ((v15 & 0xA) != 0)
  {
    v17 |= 0x40000000uLL;
  }

  if ((v17 & 0x20) != 0)
  {
    v17 &= ~0x10uLL;
  }

  v15 = v17;
  v13 = -1;
  if ((v17 & 2) != 0)
  {
    v13 = 0;
    v15 |= 0x80000000uLL;
  }

  v12 = 0;
  v8[0] = 0xD159B10CuLL;
  *(&v8[0] + 1) = v15;
  v8[1] = 8uLL;
  v9 = v13;
  v10 = v14;
  v11 = 0uLL;
  _dispatch_block_invoke_direct(v8, block, v2, v3, v4, v5, v6, v7);
}

void _dispatch_block_invoke_direct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  if ((v15 >> 2))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v15;
    __break(1u);
    JUMPOUT(0x17D24);
  }

  if (v15)
  {
    goto LABEL_56;
  }

  v14 = 0;
  v18 = 0;
  if ((v16 & 0x40000000) != 0 && ((v16 & 0x20) != 0 || (v16 & 0x10) == 0))
  {
    v19 = *(a1 + 24) & 0xFFFFFFLL;
    v20 = _dispatch_thread_getspecific(4);
    if ((v20 & 0xFFFFFF) != 0 && (v20 & 0xFFFFFF) < v19)
    {
      v18 = v20 & 0xFFFFFF;
    }
  }

  if (v18)
  {
    v14 = *(a1 + 24);
  }

  v13 = -1;
  if ((v16 & 0x80000000) != 0)
  {
    v13 = *(a1 + 32);
  }

  if (v14 == -1)
  {
    _dispatch_abort(2409, 0, a3, a4, a5, a6, a7, a8);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v25 = v14 & 0xFFFFFFFF02FFFFFFLL;
    v24 = _dispatch_thread_getspecific(4);
    if ((v24 & 0x1000000) != 0)
    {
      if (v25)
      {
        v12 = v14 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v12 = v24 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v26 = v12;
    }

    else if (v25 == (v24 & 0xFFFFFFFF77FFFFFFLL))
    {
      v26 = 0;
    }

    else
    {
      v26 = v14 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    goto LABEL_33;
  }

  if (v13 == -1)
  {
    v21 = -1;
    goto LABEL_34;
  }

  if (v13 != _dispatch_thread_getspecific(28))
  {
LABEL_33:
    v21 = _dispatch_set_priority_and_voucher_slow(v26, v13, 0);
  }

  else
  {
    if (v13)
    {
      os_retain(v13);
    }

    v21 = v13;
  }

LABEL_34:
  *(a1 + 64) = _dispatch_thread_getspecific(3);
  v9 = *(a1 + 40);
  v10 = _Block_get_invoke_fn(v9);
  v11 = 0;
  if (v10)
  {
    v11 = v10;
  }

  if (v11 == _dispatch_call_block_and_release && v9)
  {
    _Block_get_invoke_fn(v9);
  }

  _dispatch_client_callout(v9, v11);
  if (_dispatch_set_qos_class_enabled)
  {
    v22 = _dispatch_thread_getspecific(4);
    if ((v22 & 0x1000000) != 0)
    {
      if ((v18 & 0x2FFFFFF) != 0)
      {
        v8 = v18 & 0x2FFFFFF;
      }

      else
      {
        v8 = v22 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v23 = v8;
    }

    else if ((v18 & 0x2FFFFFF) == (v22 & 0xFFFFFFFF77FFFFFFLL))
    {
      v23 = 0;
    }

    else
    {
      v23 = v18 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    goto LABEL_55;
  }

  if (v21 == -1)
  {
    goto LABEL_56;
  }

  if (v21 != _dispatch_thread_getspecific(28))
  {
LABEL_55:
    _dispatch_set_priority_and_voucher_slow(v23, v21, 6);
    goto LABEL_56;
  }

  if (v21)
  {
    os_release(v21);
  }

LABEL_56:
  if ((v15 & 8) == 0 && !atomic_fetch_add_explicit((a1 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void _dispatch_block_sync_invoke(uint64_t a1)
{
  v10 = _Block_get_invoke_fn(a1);
  v11 = 0;
  if (v10)
  {
    v11 = v10;
  }

  if (v11 == _dispatch_block_special_invoke)
  {
    if (*(a1 + 32) != 3512316172)
    {
      v1 = *(a1 + 32);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x187C0);
    }

    v16 = a1 + 32;
  }

  else
  {
    v16 = 0;
  }

  v14 = *(v16 + 16);
  if ((v14 >> 2))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v14;
    __break(1u);
    JUMPOUT(0x18834);
  }

  if (v14)
  {
    goto LABEL_50;
  }

  v13 = -1;
  if ((*(v16 + 8) & 0x80000000) != 0)
  {
    v17 = *(v16 + 32);
    v25 = _dispatch_thread_getspecific(25);
    v27 = (v25 & 0xF00) >> 8;
    v26 = v25;
    if (v27)
    {
      v26 = v25 | (1 << (v27 + 7));
    }

    v24 = (v25 & 0xF000) >> 12;
    if (v24)
    {
      v9 = (1 << (v24 + 7)) | 0xFF;
    }

    else
    {
      v9 = v26;
    }

    if (v9 == -1)
    {
      _dispatch_abort(2409, 0, v2, v3, v4, v5, v6, v7);
    }

    if (_dispatch_set_qos_class_enabled)
    {
      v22 = v9 & 0xFFFFFFFF02FFFFFFLL;
      v21 = _dispatch_thread_getspecific(4);
      if ((v21 & 0x1000000) != 0)
      {
        if (v22)
        {
          v8 = v9 & 0xFFFFFFFF02FFFFFFLL;
        }

        else
        {
          v8 = v21 & 0xFFFFFFFFFEFFFFFFLL;
        }

        v23 = v8;
      }

      else if (v22 == (v21 & 0xFFFFFFFF77FFFFFFLL))
      {
        v23 = 0;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFF02FFFFFFLL;
      }
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      if (v17 == -1)
      {
        v18 = -1;
LABEL_37:
        v13 = v18;
        goto LABEL_38;
      }

      if (v17 == _dispatch_thread_getspecific(28))
      {
        if (v17)
        {
          os_retain(v17);
        }

        v18 = v17;
        goto LABEL_37;
      }
    }

    v18 = _dispatch_set_priority_and_voucher_slow(v23, v17, 0);
    goto LABEL_37;
  }

LABEL_38:
  (*(*(v16 + 40) + 16))();
  if (_dispatch_set_qos_class_enabled)
  {
    v19 = _dispatch_thread_getspecific(4);
    if ((v19 & 0x1000000) != 0)
    {
      v20 = v19 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    goto LABEL_49;
  }

  if (v13 == -1)
  {
    goto LABEL_50;
  }

  if (v13 != _dispatch_thread_getspecific(28))
  {
LABEL_49:
    _dispatch_set_priority_and_voucher_slow(v20, v13, 6);
    goto LABEL_50;
  }

  if (v13)
  {
    os_release(v13);
  }

LABEL_50:
  if ((v14 & 8) == 0 && !atomic_fetch_add_explicit((v16 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(v16 + 48));
  }

  v12 = __swp(0, (v16 + 56));
  if (v12)
  {
    _dispatch_release_2(v12);
  }
}

void _dispatch_release_2(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 0x7FFFFFFF)
  {
    v2 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) - 2;
  }

  if (v2 < 1)
  {
    if (v2 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x19234);
    }

    v1 = *(a1 + 12);
    if (v1 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x19284);
    }

    _os_object_dispose(a1);
  }
}

void dispatch_block_cancel(dispatch_block_t block)
{
  v2 = _Block_get_invoke_fn(block);
  v3 = 0;
  if (v2)
  {
    v3 = v2;
  }

  if (v3 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v1 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x193A8);
    }

    v5 = block + 32;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_cancel()";
    __break(1u);
    JUMPOUT(0x193F0);
  }

  atomic_fetch_or_explicit((v5 + 16), 1u, memory_order_relaxed);
}

intptr_t dispatch_block_testcancel(dispatch_block_t block)
{
  v3 = _Block_get_invoke_fn(block);
  v4 = 0;
  if (v3)
  {
    v4 = v3;
  }

  if (v4 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v1 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x19570);
    }

    v6 = block + 32;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_testcancel()";
    __break(1u);
    JUMPOUT(0x195B8);
  }

  return *(v6 + 4) & 1;
}

intptr_t dispatch_block_wait(dispatch_block_t block, dispatch_time_t timeout)
{
  v10 = _Block_get_invoke_fn(block);
  v11 = 0;
  if (v10)
  {
    v11 = v10;
  }

  if (v11 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v2 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x196F0);
    }

    v20 = block + 32;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_wait()";
    __break(1u);
    JUMPOUT(0x19738);
  }

  v17 = atomic_fetch_or_explicit((v20 + 16), 2u, memory_order_relaxed);
  if ((v17 & 6) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be waited for more than once";
    qword_E42C0 = v17;
    __break(1u);
    JUMPOUT(0x197C8);
  }

  v16 = _dispatch_thread_getspecific(4);
  v15 = __swp(0, v20 + 14);
  if (v15)
  {
    v9 = 0;
    if (*v15)
    {
      v9 = *v15;
    }

    v3 = (v16 & 0x3FFF00uLL) >> 8;
    v4 = __clz(__rbit32(v3));
    if (v3)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    (*(v9 + 64))(v15, v5, 9);
  }

  v14 = *(v20 + 16);
  if (v14 && (_dispatch_set_qos_class_enabled & 1) != 0)
  {
    _pthread_qos_override_start_direct();
  }

  v13 = *(v20 + 5);
  v8 = 1;
  if (v13 <= 1)
  {
    v7 = 0;
    if (v14)
    {
      v7 = v15 != 0;
    }

    v8 = v7;
  }

  if (v8)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v13;
    __break(1u);
    JUMPOUT(0x199FCLL);
  }

  v12 = dispatch_group_wait(*(v20 + 6), timeout);
  if (v14 && (_dispatch_set_qos_class_enabled & 1) != 0)
  {
    _pthread_qos_override_end_direct();
  }

  if (v12)
  {
    atomic_fetch_and_explicit((v20 + 16), 0xFFFFFFFD, memory_order_relaxed);
  }

  else
  {
    atomic_fetch_or_explicit((v20 + 16), 4u, memory_order_relaxed);
  }

  return v12;
}

void dispatch_block_notify(dispatch_block_t block, dispatch_queue_t queue, dispatch_block_t notification_block)
{
  v4 = _Block_get_invoke_fn(block);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  if (v5 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v3 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x19C64);
    }

    v11 = block + 32;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_notify()";
    qword_E42C0 = block;
    __break(1u);
    JUMPOUT(0x19CBCLL);
  }

  v6 = *(v11 + 5);
  if (v6 >= 2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and observed";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x19D2CLL);
  }

  dispatch_group_notify(*(v11 + 6), queue, notification_block);
}

uint64_t _dispatch_continuation_init_slow(uint64_t *a1, unint64_t a2, int a3)
{
  v42 = a1[5];
  v32 = _Block_get_invoke_fn(v42);
  v33 = 0;
  if (v32)
  {
    v33 = v32;
  }

  if (v33 == _dispatch_block_special_invoke)
  {
    if (*(v42 + 32) != 3512316172)
    {
      v3 = *(v42 + 32);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x19E6CLL);
    }

    v43 = v42 + 32;
  }

  else
  {
    v43 = 0;
  }

  v37 = *(v43 + 8);
  v36 = *a1;
  _dispatch_retain_2(a2);
  v10 = 0;
  atomic_compare_exchange_strong_explicit((v43 + 56), &v10, a2, memory_order_relaxed, memory_order_relaxed);
  if (v10)
  {
    _dispatch_release_2(a2);
  }

  if ((v36 & 4) != 0)
  {
    a1[4] = _dispatch_block_async_invoke_and_release;
  }

  else
  {
    a1[4] = _dispatch_block_async_invoke;
  }

  v39 = a3 | v37;
  if ((v37 & 0x40000000) != 0)
  {
    v35 = *(v43 + 24) & 0xFFFFFFLL;
  }

  else if ((v39 & 0x40000000) != 0)
  {
    v35 = 0;
  }

  else
  {
    v49 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v49 <= 0x10FF)
    {
      v50 = v49;
    }

    else
    {
      v50 = 4351;
    }

    v35 = v50;
  }

  v45 = v35;
  if (v35)
  {
    if ((v39 & 0x20) != 0)
    {
      v45 = v35 | 0x10000000;
    }

    else if ((*(a2 + 84) & 0x40000000) == 0 && (*(a2 + 84) & 0xFFF) != 0)
    {
      v45 = 0;
    }
  }

  a1[1] = v45;
  if (v37)
  {
    v36 |= 2uLL;
  }

  if ((v37 & 0x80000000) != 0)
  {
    v34 = *(v43 + 32);
    if (!v34 || v34 == -1)
    {
      v31 = *(v43 + 32);
    }

    else
    {
      os_retain(v34);
      v31 = v34;
    }

    a1[3] = v31;
    _dispatch_thread_getspecific(0);
    v27 = a1[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v11, v12, v13, v14, v15, v16, v17, 770);
    v46 = a1[3];
    if (v46 != -1)
    {
      if (v46)
      {
        v30 = *(v46 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
LABEL_49:
        kdebug_trace();
      }
    }
  }

  else
  {
    v47 = 0;
    if (v39 < 0)
    {
      _dispatch_abort(583, v39 >= 0, v4, v5, v6, v7, v8, v9);
    }

    if ((v39 & 0x40) == 0)
    {
      v51 = _dispatch_thread_getspecific(28);
      if (v51)
      {
        os_retain(v51);
      }

      v47 = v51;
    }

    a1[3] = v47;
    _dispatch_thread_getspecific(0);
    v28 = a1[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v18, v19, v20, v21, v22, v23, v24, 589);
    v48 = a1[3];
    if (v48 != -1)
    {
      if (v48)
      {
        v29 = *(v48 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        goto LABEL_49;
      }
    }
  }

  *a1 = v36 | 0x20;
  v44 = (a1[1] & 0x3FFF00uLL) >> 8;
  v25 = __clz(__rbit32(v44));
  if (v44)
  {
    return v25 + 1;
  }

  else
  {
    return 0;
  }
}

void dispatch_barrier_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v19 = _dispatch_thread_getspecific(22);
  if (v19)
  {
    _dispatch_thread_setspecific(22, v19[2]);
    *v19 = 262;
    v19[4] = work;
    v19[5] = context;
    v23 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v23 <= 0x10FF)
    {
      v24 = v23;
    }

    else
    {
      v24 = 4351;
    }

    v25 = _dispatch_thread_getspecific(28);
    if (v25)
    {
      os_retain(v25);
    }

    v19[3] = v25;
    _dispatch_thread_getspecific(0);
    v13 = v19[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
    v22 = v19[3];
    if (v22 != -1)
    {
      if (v22)
      {
        v15 = *(v22 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v21 = v24;
    v20 = 0;
    if (v24)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v10 = v24 >> 8;
        v11 = __clz(__rbit32(v10));
        if (v10)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 0;
        }

        v20 = v12;
      }

      else
      {
        v21 = 0;
      }
    }

    v19[1] = v21;
    v14 = 0;
    if (*queue)
    {
      v14 = *queue;
    }

    (*(v14 + 72))(queue, v19, v20);
  }

  else
  {
    _dispatch_async_f_slow(queue, context, work, 0, 6);
  }
}

uint64_t _dispatch_async_f_slow(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v28 = _dispatch_continuation_alloc_from_heap();
  v34 = 0;
  *v28 = a5 | 0x100;
  v28[4] = a3;
  v28[5] = a2;
  if ((a4 & 0x40000000) == 0)
  {
    v40 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v40 <= 0x10FF)
    {
      v41 = v40;
    }

    else
    {
      v41 = 4351;
    }

    v34 = v41;
  }

  v37 = 0;
  if (a4 < 0)
  {
    _dispatch_abort(583, a4 >= 0, v5, v6, v7, v8, v9, v10);
  }

  if ((a4 & 0x40) == 0)
  {
    v42 = _dispatch_thread_getspecific(28);
    if (v42)
    {
      os_retain(v42);
    }

    v37 = v42;
  }

  v28[3] = v37;
  _dispatch_thread_getspecific(0);
  v25 = v28[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v11, v12, v13, v14, v15, v16, v17, 589);
  v38 = v28[3];
  if (v38 != -1)
  {
    if (v38)
    {
      v27 = *(v38 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v36 = v34;
  v35 = 0;
  if (v34)
  {
    if ((a4 & 0x20) != 0)
    {
      v36 = v34 | 0x10000000;
      v18 = (v34 | 0x10000000) >> 8;
      v19 = __clz(__rbit32(v18));
      if (v18)
      {
        v20 = v19 + 1;
      }

      else
      {
        v20 = 0;
      }

      v35 = v20;
    }

    else if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
    {
      v21 = v34 >> 8;
      v22 = __clz(__rbit32(v21));
      if (v21)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      v35 = v23;
    }

    else
    {
      v36 = 0;
    }
  }

  v28[1] = v36;
  v39 = *v28;
  v26 = 0;
  if (*a1)
  {
    v26 = *a1;
  }

  return (*(v26 + 72))(a1, v28, v35);
}

uint64_t _dispatch_barrier_async_detached_f(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = _dispatch_thread_getspecific(22);
  if (v12)
  {
    _dispatch_thread_setspecific(22, *(v12 + 16));
    v11 = v12;
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  *v11 = 262;
  v11[4] = a3;
  v11[5] = a2;
  v11[3] = -1;
  v11[1] = -1;
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  return (*(v7 + 72))(a1, v11, 0, v3, v4, v5);
}

void dispatch_barrier_async(dispatch_queue_t queue, dispatch_block_t block)
{
  v20 = _dispatch_thread_getspecific(22);
  if (v20)
  {
    _dispatch_thread_setspecific(22, *(v20 + 16));
    v19 = v20;
  }

  else
  {
    v19 = _dispatch_continuation_alloc_from_heap();
  }

  v21 = _dispatch_Block_copy(block);
  v15 = _Block_get_invoke_fn(block);
  v16 = 0;
  if (v15)
  {
    v16 = v15;
  }

  if (v16 == _dispatch_block_special_invoke)
  {
    *v19 = 278;
    v19[5] = v21;
    inited = _dispatch_continuation_init_slow(v19, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v19 = 278;
    v19[4] = _dispatch_call_block_and_release;
    v19[5] = v21;
    v26 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v26 <= 0x10FF)
    {
      v27 = v26;
    }

    else
    {
      v27 = 4351;
    }

    v28 = _dispatch_thread_getspecific(28);
    if (v28)
    {
      os_retain(v28);
    }

    v19[3] = v28;
    _dispatch_thread_getspecific(0);
    v12 = v19[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v2, v3, v4, v5, v6, v7, v8, 589);
    v25 = v19[3];
    if (v25 != -1)
    {
      if (v25)
      {
        v14 = *(v25 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v24 = v27;
    v23 = 0;
    if (v27)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v9 = v27 >> 8;
        v10 = __clz(__rbit32(v9));
        if (v9)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = 0;
        }

        v23 = v11;
      }

      else
      {
        v24 = 0;
      }
    }

    v19[1] = v24;
    inited = v23;
  }

  v13 = 0;
  if (*queue)
  {
    v13 = *queue;
  }

  (*(v13 + 72))(queue, v19, inited);
}

void dispatch_channel_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v19 = _dispatch_thread_getspecific(22);
  if (v19)
  {
    _dispatch_thread_setspecific(22, v19[2]);
    *v19 = 260;
    v19[4] = work;
    v19[5] = context;
    v24 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v24 <= 0x10FF)
    {
      v25 = v24;
    }

    else
    {
      v25 = 4351;
    }

    v26 = _dispatch_thread_getspecific(28);
    if (v26)
    {
      os_retain(v26);
    }

    v19[3] = v26;
    _dispatch_thread_getspecific(0);
    v13 = v19[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
    v22 = v19[3];
    if (v22 != -1)
    {
      if (v22)
      {
        v15 = *(v22 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v21 = v25;
    v20 = 0;
    if (v25)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v10 = v25 >> 8;
        v11 = __clz(__rbit32(v10));
        if (v10)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 0;
        }

        v20 = v12;
      }

      else
      {
        v21 = 0;
      }
    }

    v19[1] = v21;
    v23 = *v19;
    v14 = 0;
    if (*queue)
    {
      v14 = *queue;
    }

    (*(v14 + 72))(queue, v19, v20);
  }

  else
  {
    _dispatch_async_f_slow(queue, context, work, 0, 4);
  }
}

uint64_t dispatch_async_enforce_qos_class_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = _dispatch_thread_getspecific(22);
  if (!v20)
  {
    return _dispatch_async_f_slow(a1, a2, a3, 32, 4);
  }

  _dispatch_thread_setspecific(22, v20[2]);
  *v20 = 260;
  v20[4] = a3;
  v20[5] = a2;
  v27 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v27 <= 0x10FF)
  {
    v28 = v27;
  }

  else
  {
    v28 = 4351;
  }

  v29 = _dispatch_thread_getspecific(28);
  if (v29)
  {
    os_retain(v29);
  }

  v20[3] = v29;
  _dispatch_thread_getspecific(0);
  v14 = v20[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v4, v5, v6, v7, v8, v9, v10, 589);
  v25 = v20[3];
  if (v25 != -1)
  {
    if (v25)
    {
      v16 = *(v25 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v24 = v28;
  v23 = 0;
  if (v28)
  {
    v22 = (*(a1 + 84) & 0x40000000) != 0;
    v21 = (*(a1 + 84) & 0xFFF) != 0;
    v24 = v28 | 0x10000000;
    v11 = (v28 | 0x10000000uLL) >> 8;
    v12 = __clz(__rbit32(v11));
    if (v11)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    v23 = v13;
  }

  v20[1] = v24;
  v26 = *v20;
  v15 = 0;
  if (*a1)
  {
    v15 = *a1;
  }

  return (*(v15 + 72))(a1, v20, v23);
}

void dispatch_channel_async(dispatch_queue_t queue, dispatch_block_t block)
{
  v21 = _dispatch_thread_getspecific(22);
  if (v21)
  {
    _dispatch_thread_setspecific(22, *(v21 + 16));
    v20 = v21;
  }

  else
  {
    v20 = _dispatch_continuation_alloc_from_heap();
  }

  v22 = _dispatch_Block_copy(block);
  v15 = _Block_get_invoke_fn(block);
  v16 = 0;
  if (v15)
  {
    v16 = v15;
  }

  if (v16 == _dispatch_block_special_invoke)
  {
    *v20 = 276;
    v20[5] = v22;
    inited = _dispatch_continuation_init_slow(v20, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v20 = 276;
    v20[4] = _dispatch_call_block_and_release;
    v20[5] = v22;
    v27 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v27 <= 0x10FF)
    {
      v28 = v27;
    }

    else
    {
      v28 = 4351;
    }

    v29 = _dispatch_thread_getspecific(28);
    if (v29)
    {
      os_retain(v29);
    }

    v20[3] = v29;
    _dispatch_thread_getspecific(0);
    v12 = v20[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v2, v3, v4, v5, v6, v7, v8, 589);
    v26 = v20[3];
    if (v26 != -1)
    {
      if (v26)
      {
        v14 = *(v26 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v25 = v28;
    v24 = 0;
    if (v28)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v9 = v28 >> 8;
        v10 = __clz(__rbit32(v9));
        if (v9)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = 0;
        }

        v24 = v11;
      }

      else
      {
        v25 = 0;
      }
    }

    v20[1] = v25;
    inited = v24;
  }

  v19 = *v20;
  v13 = 0;
  if (*queue)
  {
    v13 = *queue;
  }

  (*(v13 + 72))(queue, v20, inited);
}

uint64_t _dispatch_barrier_trysync_or_async_f(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), unsigned int a4)
{
  v11 = _dispatch_thread_getspecific(3);
  v18 = (4096 - *(a1 + 80)) << 41;
  v16 = 0;
  v17 = *(a1 + 56);
  do
  {
    if (v17 != (v18 | v17 & 0x3000000000))
    {
      break;
    }

    v8 = v17;
    v9 = v17;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v11 & 0xFFFFFFFC | 0x60000000000002 | (((a4 & 1) != 0) << 58) | v17 & 0x3000000000, memory_order_acquire, memory_order_acquire);
    if (v9 != v8)
    {
      v17 = v9;
    }

    v16 = v9 == v8;
  }

  while (v9 != v8);
  if (!v16)
  {
    return _dispatch_barrier_async_detached_f(a1, a2, a3);
  }

  if (a4)
  {
    _dispatch_retain_2(a1);
  }

  return _dispatch_barrier_trysync_or_async_f_complete(a1, a2, a3, a4, v4, v5, v6, v7);
}

uint64_t _dispatch_retain_2(uint64_t result)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0x1D268);
  }

  return result;
}

uint64_t _dispatch_barrier_trysync_or_async_f_complete(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a4;
  v23 = 4;
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = 0uLL;
  v42 = a1;
  v41 = &v26;
  v44 = &v26;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v26, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v42, 21, v41, v8, v9, v10, v11);
  v36 = v28;
  v35 = v27;
  if (v27 == _dispatch_call_block_and_release && v36)
  {
    v21 = _Block_get_invoke_fn(v36);
    v22 = 0;
    if (v21)
    {
      v22 = v21;
    }

    v20 = v22;
  }

  else
  {
    v20 = v35;
  }

  v34 = v20;
  v38 = v36;
  v37 = v20;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  _dispatch_client_callout(v36, v35);
  v40 = v36;
  v39 = v34;
  v43 = &v26;
  v17 = _dispatch_thread_setspecific_packed_pair(20, 21, &v26, v12, v13, v14, v15, v16);
  if ((v24 & 1) != 0 && ((atomic_fetch_add_explicit((a1 + 56), 0xFC00000000000000, memory_order_relaxed) - 0x400000000000000) & 0xFF80000000000000) == 0)
  {
    v23 = 5;
  }

  v19 = 0;
  if (*a1)
  {
    v19 = *a1;
  }

  return (*(v19 + 64))(a1, 0, v23, v17);
}

void dispatch_barrier_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  *&v11[8] = 0;
  *v11 = _dispatch_thread_getspecific(3);
  v10 = 0;
  if (*queue)
  {
    v10 = *queue;
  }

  if (*(v10 + 16) != 17)
  {
    goto LABEL_7;
  }

  LOBYTE(v9) = 0;
  if ((*(queue + 20) & 0x1000000) != 0)
  {
    v9 = (BYTE2(*(queue + 20)) >> 2) & 1;
  }

  if ((v9 & 1) == 0)
  {
    v15 = 1;
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
    JUMPOUT(0x1D7C0);
  }

  v18 = (4096 - *(queue + 40)) << 41;
  v16 = 0;
  v17 = *(queue + 7);
  do
  {
    if (v17 != (v18 | v17 & 0x3000000000))
    {
      break;
    }

    v7 = v17;
    v8 = v17;
    atomic_compare_exchange_strong_explicit((queue + 56), &v8, *v11 & 0xFFFFFFFC | 0x60000000000002 | v17 & 0x3000000000, memory_order_acquire, memory_order_acquire);
    if (v8 != v7)
    {
      v17 = v8;
    }

    v16 = v8 == v7;
  }

  while (v8 != v7);
  if (v16)
  {
    if (*(*(queue + 3) + 24))
    {
      _dispatch_sync_recurse(queue, context, work, *&v11[4] | 2);
    }

    else
    {
      _dispatch_lane_barrier_sync_invoke_and_complete(queue, context, work, 0, v3, v4, v5, v6);
    }
  }

  else
  {
    _dispatch_sync_f_slow(queue, context, work, 2, queue, *&v11[4] | 2, v5, v6);
  }
}

void dispatch_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue + 40) == 1)
  {
    _dispatch_barrier_sync_f(queue, context, work, 0);
  }

  else
  {
    v10 = 0;
    if (*queue)
    {
      v10 = *queue;
    }

    if (*(v10 + 16) != 17)
    {
      goto LABEL_9;
    }

    LOBYTE(v9) = 0;
    if ((*(queue + 20) & 0x1000000) != 0)
    {
      v9 = (BYTE2(*(queue + 20)) >> 2) & 1;
    }

    if ((v9 & 1) == 0)
    {
      v11 = 1;
    }

    else
    {
LABEL_9:
      v11 = 0;
    }

    if ((v11 & 1) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
      __break(1u);
      JUMPOUT(0x1DBE8);
    }

    if (*(queue + 6))
    {
      v13 = 0;
    }

    else
    {
      for (i = *(queue + 7); ; i = v8)
      {
        if (i >> 54 || (i & 0x8000000000) != 0 || (i & 0x10000000000) != 0)
        {
          v13 = 0;
          goto LABEL_23;
        }

        v7 = i;
        v8 = i;
        atomic_compare_exchange_strong_explicit((queue + 56), &v8, i + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          break;
        }
      }

      v13 = 1;
    }

LABEL_23:
    if (v13)
    {
      if (*(*(queue + 3) + 24))
      {
        _dispatch_sync_recurse(queue, context, work, 0);
      }

      else
      {
        _dispatch_sync_invoke_and_complete(queue, context, work, 0, v3, v4, v5, v6);
      }
    }

    else
    {
      _dispatch_sync_f_slow(queue, context, work, 0, queue, 0, v5, v6);
    }
  }
}

void dispatch_barrier_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v4 = _Block_get_invoke_fn(block);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  if (v5 == _dispatch_block_special_invoke)
  {
    _dispatch_sync_block_with_privdata(queue, block, 18);
  }

  else
  {
    v2 = _Block_get_invoke_fn(block);
    v3 = 0;
    if (v2)
    {
      v3 = v2;
    }

    _dispatch_barrier_sync_f(queue, block, v3, 18);
  }
}

void _dispatch_sync_block_with_privdata(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = _Block_get_invoke_fn(a2);
  v18 = 0;
  if (v17)
  {
    v18 = v17;
  }

  if (v18 == _dispatch_block_special_invoke)
  {
    if (*(a2 + 32) != 3512316172)
    {
      v9 = *(a2 + 32);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v9;
      __break(1u);
      JUMPOUT(0x1E06CLL);
    }

    v31 = a2 + 32;
  }

  else
  {
    v31 = 0;
  }

  v21 = 0;
  v20 = *(v31 + 8);
  if (v20)
  {
    v23 = a3 | 0x22;
  }

  else
  {
    v23 = a3 | 0x20;
  }

  v26 = 0;
  if ((v20 & 0x40000000) != 0 && ((v20 & 0x20) != 0 || (v20 & 0x10) == 0))
  {
    v27 = *(v31 + 24) & 0xFFFFFFLL;
    v28 = _dispatch_thread_getspecific(4);
    if ((v28 & 0xFFFFFF) != 0 && (v28 & 0xFFFFFF) < v27)
    {
      v26 = v28 & 0xFFFFFF;
    }
  }

  if (v26)
  {
    v21 = *(v31 + 24);
  }

  v19 = -1;
  if ((v20 & 0x80000000) != 0)
  {
    v19 = *(v31 + 32);
  }

  if (v21 == -1)
  {
    _dispatch_abort(2409, 0, v3, v4, v5, v6, v7, v8);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v35 = v21 & 0xFFFFFFFF02FFFFFFLL;
    v34 = _dispatch_thread_getspecific(4);
    if ((v34 & 0x1000000) != 0)
    {
      if (v35)
      {
        v16 = v21 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v16 = v34 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v36 = v16;
    }

    else if (v35 == (v34 & 0xFFFFFFFF77FFFFFFLL))
    {
      v36 = 0;
    }

    else
    {
      v36 = v21 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
LABEL_40:
    v29 = _dispatch_set_priority_and_voucher_slow(v36, v19, 0);
    goto LABEL_41;
  }

  if (v19 != -1)
  {
    if (v19 == _dispatch_thread_getspecific(28))
    {
      if (v19)
      {
        os_retain(v19);
      }

      v29 = v19;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v29 = -1;
LABEL_41:
  _dispatch_retain_2(a1);
  v14 = 0;
  atomic_compare_exchange_strong_explicit((v31 + 56), &v14, a1, memory_order_relaxed, memory_order_relaxed);
  if (v14)
  {
    _dispatch_release_2(a1);
  }

  if ((v23 & 2) != 0)
  {
    _dispatch_barrier_sync_f(a1, a2, _dispatch_block_sync_invoke, v23);
  }

  else
  {
    _dispatch_sync_f(a1, a2, _dispatch_block_sync_invoke, v23, v10, v11, v12, v13);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v32 = _dispatch_thread_getspecific(4);
    if ((v32 & 0x1000000) != 0)
    {
      if ((v26 & 0x2FFFFFF) != 0)
      {
        v15 = v26 & 0x2FFFFFF;
      }

      else
      {
        v15 = v32 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v33 = v15;
    }

    else if ((v26 & 0x2FFFFFF) == (v32 & 0xFFFFFFFF77FFFFFFLL))
    {
      v33 = 0;
    }

    else
    {
      v33 = v26 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v33 = 0;
  }

  if (v33)
  {
    goto LABEL_62;
  }

  if (v29 == -1)
  {
    return;
  }

  if (v29 != _dispatch_thread_getspecific(28))
  {
LABEL_62:
    _dispatch_set_priority_and_voucher_slow(v33, v29, 6);
  }

  else if (v29)
  {
    os_release(v29);
  }
}

void _dispatch_barrier_sync_f(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4)
{
  v12 = _dispatch_thread_getspecific(3);
  v11 = 0;
  if (*a1)
  {
    v11 = *a1;
  }

  if (*(v11 + 16) != 17)
  {
    goto LABEL_7;
  }

  LOBYTE(v10) = 0;
  if ((*(a1 + 80) & 0x1000000) != 0)
  {
    v10 = (BYTE2(*(a1 + 80)) >> 2) & 1;
  }

  if ((v10 & 1) == 0)
  {
    v17 = 1;
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

  if ((v17 & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
    JUMPOUT(0x1EA20);
  }

  v20 = (4096 - *(a1 + 80)) << 41;
  v18 = 0;
  v19 = *(a1 + 56);
  do
  {
    if (v19 != (v20 | v19 & 0x3000000000))
    {
      break;
    }

    v8 = v19;
    v9 = v19;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v12 & 0xFFFFFFFC | 0x60000000000002 | v19 & 0x3000000000, memory_order_acquire, memory_order_acquire);
    if (v9 != v8)
    {
      v19 = v9;
    }

    v18 = v9 == v8;
  }

  while (v9 != v8);
  if (v18)
  {
    if (*(*(a1 + 24) + 24))
    {
      _dispatch_sync_recurse(a1, a2, a3, a4 | 2);
    }

    else
    {
      _dispatch_lane_barrier_sync_invoke_and_complete(a1, a2, a3, 0, v4, v5, v6, v7);
    }
  }

  else
  {
    _dispatch_sync_f_slow(a1, a2, a3, 2, a1, a4 | 2, v6, v7);
  }
}