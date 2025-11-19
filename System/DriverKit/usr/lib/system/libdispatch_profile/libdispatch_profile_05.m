void dispatch_activate(dispatch_object_t object)
{
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v1 = *(*object + 16);
    if (v1 == 18)
    {
      _dispatch_workloop_activate(object);
    }

    else if ((v1 & 0xF0) == 0x10)
    {
      _dispatch_lane_resume(object, 1);
    }
  }
}

size_t _dispatch_object_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = snprintf(__str, __size, "xref = %d, ref = %d, ", *(a1 + 12), *(a1 + 8));
  v5 = v4;
  if (v4 >= __size)
  {
    v5 = __size;
  }

  if (v4 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void dispatch_release_cold_1(int a1, atomic_uint *a2, char *a3)
{
  if (a1 == 1)
  {
    atomic_load_explicit(a2, memory_order_acquire);
    _dispatch_xref_dispose(a3);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void _dispatch_dispose_cold_1(uint64_t *a1)
{
  v1 = *a1;
  qword_78298 = "BUG IN LIBDISPATCH: Release while enqueued";
  qword_782C8 = v1;
  __break(1u);
}

void dispatch_set_target_queue_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_set_target_queue_cold_3(uint64_t a1, unint64_t a2)
{
  v2 = atomic_exchange_explicit((a1 + 24), a2, memory_order_release);
  if (v2)
  {
    if (*(v2 + 8) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        if (add_explicit == 1)
        {
          _os_object_dispose(v2);
        }

        else
        {
          qword_78298 = "API MISUSE: Over-release of an object";
          __break(1u);
        }
      }
    }
  }
}

uint64_t _dispatch_sema4_timedwait(semaphore_t *a1, unint64_t a2)
{
  do
  {
    v4 = _dispatch_timeout(a2);
    v6.tv_sec = v4 / 0x3B9ACA00;
    v6.tv_nsec = v4 % 0x3B9ACA00;
    result = semaphore_timedwait(*a1, v6);
  }

  while (result == 14);
  if (result == 49)
  {
    return result == 49;
  }

  if (result == -301)
  {
    qword_78298 = "MIG_REPLY_MISMATCH";
    qword_782C8 = -301;
    __break(1u);
  }

  if (!result)
  {
    return result == 49;
  }

  if (result == 15)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
    qword_782C8 = 15;
    __break(1u);
  }

  qword_78298 = "BUG IN LIBDISPATCH: mach semaphore API failure";
  qword_782C8 = result;
  __break(1u);
  return result;
}

void _dispatch_sema4_create_slow_cold_2()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
  qword_782C8 = 15;
  __break(1u);
}

void _dispatch_sema4_create_slow_cold_3()
{
  qword_78298 = "MIG_REPLY_MISMATCH";
  qword_782C8 = -301;
  __break(1u);
}

void _dispatch_sema4_create_slow_cold_4(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: mach semaphore API failure";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_thread_event_wait_slow_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt thread event value";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_unfair_lock_unlock_slow_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: lock not owned by current thread";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_once_wait_cold_1(uint64_t a1, atomic_ullong *a2, int a3, void *a4)
{
  if ((a1 & 3) == 2)
  {
    __dmb(9u);
    if ((4 * MEMORY[0xFFFFFC180] - a1 - 14) > 0xFFFFFFFFFFFFFFEFLL)
    {
      return 0;
    }

    else
    {
      result = 0;
      *a2 = -1;
    }
  }

  else
  {
    v5 = a1;
    if ((a1 | 1) == a1 || (v6 = a1, atomic_compare_exchange_strong_explicit(a2, &v6, a1 | 1, memory_order_relaxed, memory_order_relaxed), *a4 = v6, v5 = a1 | 1, v6 == a1))
    {
      if (((a1 ^ a3) & 0xFFFFFFFC) != 0)
      {
        _dlock_wait(a2, v5, 0);
        return 1;
      }

      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: trying to lock recursively";
      __break(1u);
    }

    return 2;
  }

  return result;
}

void _dlock_wait_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Owner in ulock is unknown - possible memory corruption";
  qword_782C8 = a1;
  __break(1u);
}

void _dlock_wait_cold_2(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: ulock_wait() failed";
  qword_782C8 = -a1;
  __break(1u);
}

void _dlock_wake_cold_1(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: ulock_wake() failed";
  qword_782C8 = -a1;
  __break(1u);
}

uint64_t _dispatch_semaphore_debug(uint64_t a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "%s[%p] = { ", *(*a1 + 24), a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + _dispatch_object_debug_attr(a1, &__str[v8], __size - v8);
  v10 = snprintf(&__str[v9], __size - v9, "port = 0x%x, ", *(a1 + 64));
  v11 = v10;
  if (__size - v9 < v10)
  {
    v11 = __size - v9;
  }

  if (v10 < 0)
  {
    v11 = 0;
  }

  v12 = v11 + v9;
  v13 = __size - (v11 + v9);
  v14 = *(a1 + 48);
  v15 = snprintf(&__str[v12], v13, "value = %ld, orig = %ld }", v14, *(a1 + 56));
  v16 = v15;
  if (v13 < v15)
  {
    v16 = v13;
  }

  if (v15 < 0)
  {
    v16 = 0;
  }

  return v16 + v12;
}

size_t _dispatch_group_debug(void *a1, char *__str, size_t __size)
{
  v6 = a1[6];
  v7 = snprintf(__str, __size, "%s[%p] = { ", *(*a1 + 24), a1);
  v8 = v7;
  if (v7 >= __size)
  {
    v8 = __size;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + _dispatch_object_debug_attr(a1, &__str[v9], __size - v9);
  v11 = __size - v10;
  v12 = snprintf(&__str[v10], v11, "count = %u, gen = %d, waiters = %d, notifs = %d }", -(v6 & 0xFFFFFFFC) >> 2, HIDWORD(v6), v6 & 1, (v6 >> 1) & 1);
  v13 = v12;
  if (v11 < v12)
  {
    v13 = v11;
  }

  if (v12 < 0)
  {
    v13 = 0;
  }

  return v13 + v10;
}

intptr_t dispatch_group_wait(dispatch_group_t group, dispatch_time_t timeout)
{
  v3 = *(group + 6);
  result = 49;
  while ((v3 & 0xFFFFFFFC) != 0)
  {
    if (!timeout)
    {
      return result;
    }

    v5 = v3;
    if ((v3 & 1) == 0)
    {
      atomic_compare_exchange_strong_explicit((group + 48), &v3, v3 | 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v5)
      {
        continue;
      }
    }

    return _dispatch_group_wait_slow(group, HIDWORD(v5), timeout);
  }

  result = 0;
  __dmb(9u);
  return result;
}

void _dispatch_semaphore_dispose_cold_1(void *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Semaphore object deallocated while in use (current value < original value)";
  qword_782C8 = v2;
  __break(1u);
}

void _dispatch_group_dispose_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Group object deallocated while in use";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_group_leave_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unbalanced call to dispatch_group_leave()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_group_enter_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_group_enter()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_group_notify_cold_3(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0;
  *(a3 + 976) = a2 + 64;
  v3 = atomic_exchange_explicit((a2 + 64), a1, memory_order_release);
  if (v3)
  {
    *(v3 + 16) = a1;
    *(a3 + 976) = 0;
  }

  else if (*(a2 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) > 0)
  {
    *(a2 + 56) = a1;
    *(a3 + 976) = 0;
    v4 = *(a2 + 48);
    while (1)
    {
      v5 = v4 | 2;
      if (!v4)
      {
        break;
      }

      v6 = v4;
      atomic_compare_exchange_strong_explicit((a2 + 48), &v6, v5, memory_order_release, memory_order_relaxed);
      v7 = v6 == v4;
      v4 = v6;
      if (v7)
      {
        return;
      }
    }

    _dispatch_group_wake(a2, v5, 0);
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void _dispatch_async_redirect_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 48);
  v8 = a3 & 0xFCFFFFFF | *(a1 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = (StatusReg + 20);
  v10 = StatusReg[20];
  if (v6)
  {
    v12 = StatusReg[25];
    v13 = *(v6 + 84);
    v14 = v13 & 0xFFF0FFFF | ((WORD1(v12) & 0xF) << 16);
    StatusReg[20] = v6;
    v15 = *(v7 + 84);
    if (v14)
    {
      v16 = v15 >> 12;
      if ((v15 & 0xFFF) != 0)
      {
        v17 = v13 & 0x88000000 | ((WORD1(v12) & 0xF) << 16) & 0x880F0000;
        v18 = v13 & 0xFFF;
        if (v18 <= (*(v7 + 84) & 0xFFFu))
        {
          v18 = *(v7 + 84) & 0xFFF;
        }

        if (v16 <= v18 >> 8)
        {
          v19 = 0x40000000;
        }

        else
        {
          v19 = 1140912128;
        }

        v20 = v19 & v15;
        v21 = v17 | v18;
LABEL_21:
        v25 = v21 | v20;
        goto LABEL_32;
      }

      if ((v13 & 0xFFF) != 0)
      {
        v26 = v14 | 0x40000000;
      }

      else
      {
        v26 = v13 & 0xFFF0FFFF | ((WORD1(v12) & 0xF) << 16);
      }

      v25 = v26 & 0xFFFF0FFF | v15 & 0x400F000;
      if (v16 <= ((v26 >> 8) & 0xF))
      {
        v25 = v26;
      }

      goto LABEL_32;
    }

LABEL_74:
    v25 = v15 & 0xFFF0FFFF;
    goto LABEL_32;
  }

  v15 = *(v7 + 84);
  v12 = StatusReg[25];
  if (!v12)
  {
    goto LABEL_74;
  }

  v22 = v15 >> 12;
  v23 = *(v7 + 84) & 0xFFF;
  if ((v15 & 0xFFF) != 0)
  {
    if ((v12 & 0xFFFu) > v23)
    {
      v23 = v12 & 0xFFF;
    }

    if (v22 <= v23 >> 8)
    {
      v24 = 0x40000000;
    }

    else
    {
      v24 = 1140912128;
    }

    v20 = v24 & v15;
    v21 = v12 & 0x880F0000 | v23;
    goto LABEL_21;
  }

  v27 = v12 | 0x40000000;
  if ((v12 & 0xFFF) == 0)
  {
    v27 = StatusReg[25];
  }

  v25 = v27 & 0xFFFF0FFF | v15 & 0x400F000;
  if (v22 <= ((v27 >> 8) & 0xF))
  {
    v25 = v27;
  }

LABEL_32:
  StatusReg[25] = v25;
  v49 = *v11;
  StatusReg[20] = v7;
  StatusReg[21] = &v49;
  v28 = *(a1 + 24);
  *(a1 + 24) = -1;
  v29 = v28 == -1 || v28 == -1;
  if (!v29)
  {
    if (v28)
    {
      v30 = *(v28 + 32);
    }

    OUTLINED_FUNCTION_8();
    if (v31)
    {
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_25();
      kdebug_trace();
    }
  }

  v32 = *(a1 + 8);
  if (v32 == -1)
  {
    v39 = 0;
  }

  else
  {
    v33 = StatusReg[25];
    if (((v33 >> 8) & 0xF) != 0)
    {
      v34 = 1 << ((BYTE1(v33) & 0xFu) + 7);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34 | StatusReg[25];
    if ((v32 & 0xFFFFFF) != 0)
    {
      OUTLINED_FUNCTION_31();
      if (v29)
      {
        v39 = v36;
      }

      else
      {
        v39 = v37;
      }

      if (v37 < v38)
      {
        v39 = v36;
      }
    }

    else
    {
      OUTLINED_FUNCTION_27();
    }
  }

  v40 = OUTLINED_FUNCTION_20(v39);
  v42 = StatusReg[4];
  if ((v42 & 0x1000000) != 0)
  {
    if (v40)
    {
LABEL_82:
      v47 = v28;
      v48 = v41;
      _dispatch_set_priority_and_voucher_slow(v40, v47, 6);
      v41 = v48;
      goto LABEL_59;
    }

    v40 = v42 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    if (v29)
    {
      goto LABEL_55;
    }
  }

  if (v40)
  {
    goto LABEL_82;
  }

LABEL_55:
  if (v28 == -1)
  {
    goto LABEL_59;
  }

  if (StatusReg[28] != v28)
  {
    v40 = 0;
    goto LABEL_82;
  }

  if (v28)
  {
    v11 = (StatusReg + 20);
    if (atomic_fetch_add_explicit((v28 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      qword_78298 = "API MISUSE: Voucher over-release";
      __break(1u);
      return;
    }
  }

LABEL_59:
  v43 = StatusReg[22];
  if (v43)
  {
    OUTLINED_FUNCTION_40(v43);
  }

  else
  {
    v44 = 1;
  }

  if (v44 > _dispatch_continuation_cache_limit)
  {
    _dispatch_continuation_pop(v5, a2, v41, v7);
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v43;
    *(a1 + 8) = v44;
    StatusReg[22] = a1;
    _dispatch_continuation_pop(v5, a2, v41, v7);
  }

  *v11 = v49;
  if (v6)
  {
    *v11 = v10;
  }

  StatusReg[25] = StatusReg[25] & 0xF0000 | v12 & 0xFFF0FFFF;
  v45 = *(v7 + 24);
  if (*(v45 + 24) && v45 != v10)
  {
    do
    {
      _dispatch_lane_non_barrier_complete(v45, 0);
      v45 = *(v45 + 24);
      if (*(v45 + 24))
      {
        v46 = v45 == v10;
      }

      else
      {
        v46 = 1;
      }
    }

    while (!v46);
  }

  _dispatch_lane_non_barrier_complete(v7, 1);
}

void _dispatch_workloop_stealer_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 24);
  *(a1 + 24) = -1;
  v7 = v6 == -1 || v6 == -1;
  if (!v7)
  {
    if (v6)
    {
      v8 = *(v6 + 32);
    }

    OUTLINED_FUNCTION_8();
    if (v9)
    {
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_25();
      kdebug_trace();
    }
  }

  v10 = *(a1 + 8);
  if (v10 == -1)
  {
    v13 = 0;
  }

  else
  {
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    if (((v11 >> 8) & 0xF) != 0)
    {
      v12 = 1 << ((BYTE1(v11) & 0xFu) + 7);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v11;
    if ((v10 & 0xFFFFFF) != 0)
    {
      if ((v10 & 0xFFFFFFuLL) >= (v12 & 0xFFFFFF00))
      {
        OUTLINED_FUNCTION_34();
        if (!v7)
        {
          v13 = v14;
        }
      }
    }

    else if (v11 >> 12)
    {
      v13 = (256 << ((v11 >> 12) - 1)) | 0xFF;
    }
  }

  v15 = OUTLINED_FUNCTION_20(v13);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = StatusReg[4];
  if ((v17 & 0x1000000) != 0)
  {
    if (v15)
    {
LABEL_44:
      _dispatch_set_priority_and_voucher_slow(v15, v6, 6);
      goto LABEL_26;
    }

    v15 = v17 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    if (v7)
    {
      goto LABEL_22;
    }
  }

  if (v15)
  {
    goto LABEL_44;
  }

LABEL_22:
  if (v6 == -1)
  {
    goto LABEL_26;
  }

  if (StatusReg[28] != v6)
  {
    v15 = 0;
    goto LABEL_44;
  }

  if (v6 && atomic_fetch_add_explicit((v6 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_26:
  v18 = StatusReg[22];
  if (v18)
  {
    OUTLINED_FUNCTION_40(v18);
  }

  else
  {
    v19 = 1;
  }

  v20 = a1;
  if (v19 <= _dispatch_continuation_cache_limit)
  {
    v20 = 0;
    *(a1 + 16) = v18;
    *(a1 + 8) = v19;
    StatusReg[22] = a1;
  }

  (*(**(a1 + 48) + 48))(*(a1 + 48), a2, a3 | 1u);
  if (v20)
  {

    _dispatch_continuation_free_to_cache_limit(v20);
  }
}

void _dispatch_queue_override_invoke(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = a1[6];
  v8 = a1[7];
  v59 = StatusReg[25];
  v60 = StatusReg[20];
  StatusReg[25] = *(v8 + 84) & 0xFFF0FFFF | ((WORD1(v59) & 0xF) << 16);
  StatusReg[20] = v8;
  v9 = *(*a1 + 16);
  LODWORD(v10) = v9 == 1792;
  v11 = a1[3];
  a1[3] = -1;
  v12 = v11 == -1 || v11 == -1;
  if (!v12)
  {
    if (v11)
    {
      v13 = *(v11 + 32);
    }

    OUTLINED_FUNCTION_8();
    if (v14)
    {
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_25();
      kdebug_trace();
    }
  }

  v15 = a1[1];
  if (v15 == -1)
  {
    v22 = 0;
  }

  else
  {
    v16 = StatusReg[25];
    if (((v16 >> 8) & 0xF) != 0)
    {
      v17 = 1 << ((BYTE1(v16) & 0xFu) + 7);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 | StatusReg[25];
    if ((v15 & 0xFFFFFF) != 0)
    {
      OUTLINED_FUNCTION_31();
      if (v12)
      {
        v22 = v19;
      }

      else
      {
        v22 = v20;
      }

      if (v20 < v21)
      {
        v22 = v19;
      }
    }

    else
    {
      OUTLINED_FUNCTION_27();
    }
  }

  v23 = OUTLINED_FUNCTION_20(v22);
  v24 = StatusReg[4];
  if ((v24 & 0x1000000) != 0)
  {
    if (v23)
    {
LABEL_97:
      _dispatch_set_priority_and_voucher_slow(v23, v11, 6);
      goto LABEL_28;
    }

    v23 = v24 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    if (v12)
    {
      goto LABEL_24;
    }
  }

  if (v23)
  {
    goto LABEL_97;
  }

LABEL_24:
  if (v11 == -1)
  {
    goto LABEL_28;
  }

  if (StatusReg[28] != v11)
  {
    v23 = 0;
    goto LABEL_97;
  }

  if (v11)
  {
    LODWORD(v25) = atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (v25 <= 1)
    {
      qword_78298 = "API MISUSE: Voucher over-release";
      __break(1u);
      goto LABEL_110;
    }
  }

  while (1)
  {
LABEL_28:
    v26 = StatusReg[22];
    if (v26)
    {
      OUTLINED_FUNCTION_40(v26);
    }

    else
    {
      v27 = 1;
    }

    v11 = a1;
    if (v27 <= _dispatch_continuation_cache_limit)
    {
      v11 = 0;
      a1[2] = v26;
      *(a1 + 2) = v27;
      StatusReg[22] = a1;
    }

    v25 = *v7;
    if (*v7 >= 0x1000uLL)
    {
      v28 = *v7;
      if (*(v25 + 16) == 1)
      {
        (*(v25 + 24))(v7, 0, (a3 >> 21) & 1);
      }

      else
      {
        (*(v25 + 48))(v7, a2, v10 | a3);
      }

      v29 = v60;
      goto LABEL_87;
    }

    if ((a3 & 0x1000000) != 0)
    {
      a3 = _dispatch_autorelease_pool_push();
      v25 = *v7;
    }

    else
    {
      a3 = 0;
    }

    a2 = v7[3];
    if ((v25 & 4) != 0)
    {
      v7[3] = -1;
    }

    if (a2 != -1 && a2 != -1)
    {
      if (a2)
      {
        v31 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_8();
      if (v32)
      {
LABEL_110:
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_25();
        kdebug_trace();
      }
    }

    v10 = v25 & 4;
    v33 = v7[1];
    if (v33 == -1)
    {
      v36 = 0;
    }

    else
    {
      v34 = StatusReg[25];
      v35 = ((v34 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v34) & 0xFu) + 7) : 0;
      v36 = v35 | StatusReg[25];
      if ((v33 & 0xFFFFFF) != 0)
      {
        if ((v33 & 0xFFFFFFuLL) >= (v35 & 0xFFFFFF00))
        {
          OUTLINED_FUNCTION_34();
          if (!v12)
          {
            v36 = v37;
          }
        }
      }

      else if (v34 >> 12)
      {
        v36 = (256 << ((v34 >> 12) - 1)) | 0xFF;
      }
    }

    v38 = OUTLINED_FUNCTION_20(v36);
    v39 = StatusReg[4];
    if ((v39 & 0x1000000) != 0)
    {
      if (v38)
      {
        goto LABEL_114;
      }

      v38 = v39 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (v12)
      {
        goto LABEL_63;
      }
    }

    if (v38)
    {
      goto LABEL_114;
    }

LABEL_63:
    if (a2 == -1)
    {
      goto LABEL_68;
    }

    if (StatusReg[28] != a2)
    {
      break;
    }

    if ((v25 & 4) == 0)
    {
      goto LABEL_68;
    }

    if (!a2)
    {
      goto LABEL_68;
    }

    v10 = v25 & 4;
    if (atomic_fetch_add_explicit((a2 + 12), 0xFFFFFFFF, memory_order_relaxed) > 1)
    {
      goto LABEL_68;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    OUTLINED_FUNCTION_38();
    if (v55)
    {
      v56 = *(v55 + 32);
      v57 = *(v55 + 40);
    }
  }

  v38 = 0;
LABEL_114:
  _dispatch_set_priority_and_voucher_slow(v38, a2, v10 | 2);
LABEL_68:
  if (v10)
  {
    v41 = StatusReg[22];
    if (v41)
    {
      OUTLINED_FUNCTION_40(v41);
    }

    else
    {
      v42 = 1;
    }

    v40 = v7;
    if (v42 <= _dispatch_continuation_cache_limit)
    {
      v40 = 0;
      v7[2] = v41;
      *(v7 + 2) = v42;
      StatusReg[22] = v7;
    }
  }

  else
  {
    v40 = 0;
  }

  if ((v25 & 8) == 0)
  {
    v44 = v7[4];
    v43 = v7[5];
    if (v43)
    {
      v45 = v7[4];
      if (v44 == _dispatch_call_block_and_release)
      {
        if (*(v43 + 16))
        {
          v46 = *(v43 + 16);
          OUTLINED_FUNCTION_33();
        }
      }
    }

    _dispatch_client_callout(v43, v44);
    OUTLINED_FUNCTION_8();
    if (v47)
    {
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_82;
  }

  v49 = v7[6];
  v50 = *(*v49 + 16);
  if (v50 == 514)
  {
    v52 = v7[4];
    v51 = v7[5];
    if (v51)
    {
      v53 = v7[4];
      if (v52 == _dispatch_call_block_and_release)
      {
        if (*(v51 + 16))
        {
          v54 = *(v51 + 16);
        }
      }
    }

    _dispatch_client_callout(v51, v52);
    OUTLINED_FUNCTION_8();
    if (v58)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v49);
LABEL_82:
    if (v40)
    {
      _dispatch_continuation_free_to_cache_limit(v40);
    }

    v29 = v60;
    if (a3)
    {
      _dispatch_autorelease_pool_pop();
    }

    ++StatusReg[26];
LABEL_87:
    if (v9 != 1792 && (OUTLINED_FUNCTION_8(), v48))
    {
      OUTLINED_FUNCTION_11();
      kdebug_trace();
      if (!v11)
      {
        goto LABEL_90;
      }
    }

    else if (!v11)
    {
LABEL_90:
      StatusReg[25] = StatusReg[25] & 0xF0000 | v59 & 0xFFF0FFFF;
      StatusReg[20] = v29;
      return;
    }

    _dispatch_continuation_free_to_cache_limit(v11);
    goto LABEL_90;
  }

  qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
  qword_782C8 = v50;
  __break(1u);
}

unint64_t _dispatch_lane_set_width(int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 160);
  if (a1 < 0)
  {
    v3 = (*(StatusReg + 32) >> 8) & 0x3FFF;
    v4 = __clz(__rbit32(v3));
    if (a1 == -1)
    {
      if (!v3)
      {
        goto LABEL_9;
      }

      if (v4 <= 5)
      {
        v6 = dword_4A834[v4];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_9:
        a1 = MEMORY[0xFFFFFC036];
      }

      if (a1 >= MEMORY[0xFFFFFC034])
      {
        a1 = MEMORY[0xFFFFFC034];
      }
    }

    else if (a1 == -2)
    {
      if (!v3)
      {
        goto LABEL_7;
      }

      if (v4 <= 5)
      {
        v5 = dword_4A834[v4];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_7:
        a1 = MEMORY[0xFFFFFC035];
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_11;
      }

      if (v4 <= 5)
      {
        v7 = dword_4A834[v4];
      }

      a1 = pthread_qos_max_parallelism();
      if (a1 <= 0)
      {
LABEL_11:
        a1 = MEMORY[0xFFFFFC036];
      }
    }
  }

  else if (a1 <= 1)
  {
    a1 = 1;
  }

  if (a1 >= 0xFFE)
  {
    v8 = 4094;
  }

  else
  {
    v8 = a1;
  }

  v9 = *(v2 + 80);
  v10 = v9;
  do
  {
    atomic_compare_exchange_strong_explicit((v2 + 80), &v10, v9 & 0xFFFF0000 | v8, memory_order_relaxed, memory_order_relaxed);
    v11 = v10 == v9;
    v9 = v10;
  }

  while (!v11);
  v12 = *(v2 + 24);

  return _dispatch_lane_inherit_wlh_from_target(v2, v12);
}

size_t _dispatch_queue_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v6 = *(a1 + 24);
  v7 = &unk_4BF93;
  if (v6 && v6[9])
  {
    v7 = v6[9];
  }

  v8 = *(a1 + 56);
  v9 = snprintf(__str, __size, "sref = %d, target = %s[%p], width = 0x%x, state = 0x%016llx", *(a1 + 96) + 1, v7, v6, *(a1 + 80), v8);
  v11 = v9;
  if (v9 >= __size)
  {
    v11 = __size;
  }

  if (v9 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8 >> 55)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", suspended = %d");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v13 = 0;
    }

    v12 += v13;
  }

  v14 = ", inactive";
  switch((v8 >> 55) & 3)
  {
    case 1uLL:
      v14 = ", activating";
      goto LABEL_16;
    case 2uLL:
      v14 = ", activated";
      goto LABEL_16;
    case 3uLL:
LABEL_16:
      OUTLINED_FUNCTION_30(v9, v10, v14);
      OUTLINED_FUNCTION_13();
      if (v9 < 0)
      {
        v15 = 0;
      }

      v12 += v15;
      break;
    default:
      break;
  }

  if ((v8 & 0x4000000001) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", enqueued");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v16 = 0;
    }

    v12 += v16;
  }

  if ((v8 & 0x8000000000) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", dirty");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v17 = 0;
    }

    v12 += v17;
  }

  if ((v8 & 0x700000000) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", max qos %d");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v18 = 0;
    }

    v12 += v18;
  }

  if (v8 >= 4)
  {
    v19 = v8 | 3;
  }

  else
  {
    v19 = 0;
  }

  if (v8 >= 4 && ((*(a1 + 80) & 0x40000) == 0 || (*(a1 + 80) & 0x1000000) != 0))
  {
    OUTLINED_FUNCTION_30(v9, v10, ", draining on 0x%x");
    OUTLINED_FUNCTION_13();
    if (v9 < 0)
    {
      v20 = 0;
    }

    v12 += v20;
  }

  if ((v8 & 0x40000000000000) != 0)
  {
    OUTLINED_FUNCTION_30(v9, v10, ", in-barrier");
    OUTLINED_FUNCTION_13();
    if (v26 < 0)
    {
      v24 = 0;
    }

    v22 = v8 & 0x10000000000;
  }

  else
  {
    v21 = (v8 >> 41) & 0x1FFF;
    v22 = v8 & 0x10000000000;
    if (!v22)
    {
      v23 = v21 + *(a1 + 80) - 4096;
    }

    OUTLINED_FUNCTION_30(v9, v10, ", in-flight = %d");
    OUTLINED_FUNCTION_13();
    if (v25 < 0)
    {
      v24 = 0;
    }
  }

  v27 = v24 + v12;
  if (v22)
  {
    v28 = snprintf(&__str[v27], __size - v27, ", pending-barrier");
    v29 = v28;
    if (__size - v27 < v28)
    {
      v29 = __size - v27;
    }

    if (v28 < 0)
    {
      v29 = 0;
    }

    v27 += v29;
  }

  if ((*(a1 + 80) & 0x40000) != 0 && (*(a1 + 80) & 0x1000000) == 0)
  {
    v30 = __size - v27;
    v31 = snprintf(&__str[v27], v30, ", thread = 0x%x ", v19);
    v32 = v31;
    if (v30 < v31)
    {
      v32 = v30;
    }

    if (v31 < 0)
    {
      v32 = 0;
    }

    v27 += v32;
  }

  return v27;
}

uint64_t _dispatch_queue_debug(void *a1, char *__str, size_t __size)
{
  v6 = a1[9];
  if (!v6)
  {
    v6 = *(*a1 + 24);
  }

  v7 = snprintf(__str, __size, "%s[%p] = { ", v6, a1);
  v8 = v7;
  if (v7 >= __size)
  {
    v8 = __size;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + _dispatch_object_debug_attr(a1, &__str[v9], __size - v9);
  v11 = v10 + _dispatch_queue_debug_attr(a1, &__str[v10], __size - v10);
  v12 = __size - v11;
  v13 = snprintf(&__str[v11], v12, "}");
  v14 = v13;
  if (v12 < v13)
  {
    v14 = v12;
  }

  if (v13 < 0)
  {
    v14 = 0;
  }

  return v14 + v11;
}

unint64_t _dispatch_lane_inherit_wlh_from_target(uint64_t a1, unint64_t a2)
{
  if (*(*a2 + 18))
  {
    if (_dispatch_kevent_workqueue_enabled == 1 && (*(*a1 + 16) == 133137 || (*(*a1 + 16) != 19 || (*(*(a1 + 88) + 29) & 0x20) != 0) && *(a1 + 80) == 1 && (a2 >= &_dispatch_root_queues ? (v6 = &qword_74A80 > a2) : (v6 = 0), v6)))
    {
      v5 = 0x2000000000;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 0x1000000000;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v7 = *(a1 + 56);
  while (1)
  {
    v8 = v7;
    result = v7 & 0xFFFFFFCFFFFFFFFFLL | v5;
    if (v7 == result)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((a1 + 56), &v7, result, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v8)
    {
      goto LABEL_17;
    }
  }

  result = v7;
LABEL_17:
  if ((v8 & 0x2000000000) == 0)
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
    if (v10)
    {
      if (*(v10 + 24) == a1)
      {
        result = _dispatch_event_loop_leave_immediate(result);
      }
    }
  }

  if ((*(*a2 + 16) & 0x10000) == 0)
  {
    if (*(*a2 + 16) == 18)
    {
      v11 = *(a2 + 24);
      if (v11 < &_dispatch_root_queues || v11 >= &qword_74A80)
      {
        v13 = *(a2 + 200);
        v14 = 0x1000000;
        if (v13)
        {
          if ((*v13 & 0x40) != 0)
          {
            v14 = 17039360;
          }

          else
          {
            v14 = 0x1000000;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a2 + 80);
      do
      {
        v16 = v15 & 0xFFAFFFFF | 0x100000;
        if (v16 == v15)
        {
          break;
        }

        v17 = v15;
        atomic_compare_exchange_strong_explicit((a2 + 80), &v17, v16, memory_order_relaxed, memory_order_relaxed);
        v18 = v17 == v15;
        v15 = v17;
      }

      while (!v18);
    }

    else
    {
      v14 = *(a2 + 80) & 0x1000000;
      if (v14)
      {
        v14 = *(a2 + 80) & 0x1040000;
      }

      atomic_fetch_or_explicit((a2 + 80), 0x100000u, memory_order_relaxed);
    }

    if (v14)
    {
      atomic_fetch_or_explicit((a1 + 80), v14, memory_order_relaxed);
    }
  }

  return result;
}

size_t _dispatch_channel_debug()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = v2[20];
  v6 = snprintf(v5, v0, "%s[%p] = { ", *(*v2 + 24), v2);
  v7 = v6;
  if (v6 >= v0)
  {
    v7 = v0;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + _dispatch_object_debug_attr(v3, (v1 + v8), v0 - v8);
  v10 = _dispatch_queue_debug_attr(v3, (v1 + v9), v0 - v9);
  v11 = "cancelled, ";
  v12 = &unk_4BF93;
  if ((v4 & 0x10000000) == 0)
  {
    v11 = &unk_4BF93;
  }

  v13 = "needs-event, ";
  if ((v4 & 0x40000000) == 0)
  {
    v13 = &unk_4BF93;
  }

  if (v4 < 0)
  {
    v12 = "deleted, ";
  }

  v21 = v13;
  v22 = v12;
  v20 = v11;
  v14 = OUTLINED_FUNCTION_32();
  v17 = snprintf(v14, v15, v16, v20, v21, v22);
  v18 = v17;
  if (v17 >= v0)
  {
    v18 = v0;
  }

  if (v17 < 0)
  {
    v18 = 0;
  }

  return v9 + v18 + v10;
}

uint64_t _dispatch_runloop_root_queue_create_4CF(const char *a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 32);
  v5 = _dispatch_object_alloc(_OS_dispatch_queue_runloop_vtable, 120);
  v6 = v5;
  *(v5 + 16) = -1985229329;
  *(v5 + 80) = 262145;
  *(v5 + 56) = 0x1FFE1000000000;
  add_explicit = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v5 + 24) = &off_74680;
  v8 = "runloop-queue";
  if (a1)
  {
    v8 = a1;
  }

  *(v5 + 64) = add_explicit;
  *(v5 + 72) = v8;
  if ((v4 & 0x22000000) == 0 && (v4 & 0x3F00) != 0)
  {
    v9 = (__clz(__rbit32((v4 >> 8) & 0x3FFF)) << 8) + 256;
    if (((v4 >> 8) & 0x3FFF) == 0)
    {
      v9 = 0;
    }

    *(v5 + 84) = v9 & 0xFFFFFF00 | v4;
  }

  _dispatch_runloop_queue_handle_init(v5);
  v10 = *(v6 + 80);
  v11 = *(v6 + 56);
  v12 = v11;
  do
  {
    atomic_compare_exchange_strong_explicit((v6 + 56), &v12, v11 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == v11;
    v11 = v12;
  }

  while (!v13);
  return v6;
}

uint64_t libdispatch_init()
{
  if (_dispatch_getenv_BOOL("LIBDISPATCH_STRICT", 0))
  {
    _dispatch_mode |= 1u;
  }

  if (_dispatch_getenv_BOOL("LIBDISPATCH_COOPERATIVE_POOL_STRICT", 0))
  {
    _dispatch_mode |= 4u;
  }

  if (getenv("LIBDISPATCH_DISABLE_KEVENT_WQ"))
  {
    _dispatch_kevent_workqueue_enabled = 0;
  }

  HIDWORD(v1) = qos_class_main() - 5;
  LODWORD(v1) = HIDWORD(v1);
  v0 = v1 >> 2;
  if (v0 > 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_4A8F0[v0];
  }

  dword_74054 = v2;
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  pthread_key_init_np();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = &_dispatch_main_q;
  v4 = qword_74038;
  v5 = qword_74038;
  do
  {
    atomic_compare_exchange_strong_explicit(&qword_74038, &v5, v4 & 0xFFFFFFFF00000003 | (4 * ((StatusReg[3] >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
  if ((~*(StatusReg + 50) & 0xF0000) != 0)
  {
    StatusReg[25] = StatusReg[25] | 0xF0000;
  }

  v7 = _dispatch_time_init();
  v8 = _dispatch_vtable_init(v7);
  _dispatch_vtable_init(v8);
  _voucher_init();

  return _workgroup_init();
}

uint64_t dispatch_assert_queue_V2_cold_1(uint64_t result, void *a2)
{
  v2 = *(result + 160);
  v3 = v2 == 0;
  if (v2)
  {
    v4 = v2 == a2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(result + 168);
    do
    {
      v6 = v2[3];
      if (v5)
      {
        if (!v6)
        {
          v6 = *v5;
LABEL_11:
          v5 = v5[1];
          goto LABEL_12;
        }

        if (v2 == *v5)
        {
          goto LABEL_11;
        }
      }

LABEL_12:
      v3 = v6 == 0;
      if (v6)
      {
        v7 = v6 == a2;
      }

      else
      {
        v7 = 1;
      }

      v2 = v6;
    }

    while (!v7);
  }

  if (v3)
  {
    _dispatch_assert_queue_fail(a2, 1);
  }

  return result;
}

void dispatch_assert_queue_V2_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_assert_queue_not_V2_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue_not()";
  qword_782C8 = a1;
  __break(1u);
}

void *dispatch_assert_queue_barrier_cold_1(void *result)
{
  if (!result[3] || (result[7] & 0x40000000000000) == 0)
  {
    _dispatch_assert_queue_barrier_fail(result);
  }

  return result;
}

void dispatch_verify_current_queue_4swiftonly_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_am_i_on_queue_4swiftonly()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_perform_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid flags passed to dispatch_block_perform()";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_block_invoke_direct_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_block_invoke_direct_cold_3()
{
  OUTLINED_FUNCTION_16();
  if (*(v2 + 160))
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_15();
  _dispatch_client_callout(v0, v1);
  return OUTLINED_FUNCTION_15();
}

uint64_t _dispatch_block_sync_invoke_cold_4(uint64_t a1, uint64_t a2)
{
  if (a1 == -1)
  {
    return 1;
  }

  if (*(a2 + 224) != a1)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  add_explicit = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_relaxed);
  result = 0;
  if (add_explicit > 1)
  {
    return 1;
  }

  qword_78298 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

void _dispatch_block_sync_invoke_cold_5(uint64_t a1, char *a2)
{
  if (a1 == 2)
  {
    OUTLINED_FUNCTION_26(a1, a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void dispatch_block_wait_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be waited for more than once";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_wait_cold_4(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_notify()";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_block_notify_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and observed";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_queue_set_label_nocopy_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change label for this queue";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_queue_compute_priority_and_wlh_cold_1()
{
  OUTLINED_FUNCTION_16();
  v3 = *(*v2 + 16);
  if (MEMORY[0xFFFFFC100])
  {
    OUTLINED_FUNCTION_25();
    kdebug_trace();
    if (!v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v1)
  {
LABEL_3:
    *v1 = 0;
  }

LABEL_4:
  *v0 = 0;
}

void dispatch_set_qos_class_floor_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_1(uint64_t *a1)
{
  v1 = *a1;
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue while items are enqueued";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_lane_class_dispose_cold_2(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue with corrupt state";
    qword_782C8 = a1;
    __break(1u);
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Premature release of a locked queue";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_queue_xref_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0x180000000000000) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a suspended object";
    qword_782C8 = a1;
    __break(1u);
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of an inactive object";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_queue_set_width_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot set width of a serial queue";
  qword_782C8 = a1;
  __break(1u);
}

_DWORD *_dispatch_lane_set_target_queue_cold_1(_DWORD *result, uint64_t a2)
{
  if ((result[20] & 0x400000) == 0)
  {
    if ((result[20] & 0x100000) != 0)
    {
      goto LABEL_17;
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
    __break(1u);
    goto LABEL_16;
  }

  v2 = a2;
  v3 = *(*result + 16);
  if (v3 == 17)
  {
    if ((result[20] & 0x100000) != 0)
    {
      v8 = "Changing the target of a queue already targeted by other dispatch objects";
      goto LABEL_13;
    }

    while (*(v2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed) <= 0)
    {
LABEL_16:
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
LABEL_17:
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of a queue already targeted by other dispatch objects";
      __break(1u);
LABEL_18:
      OUTLINED_FUNCTION_11();
      kdebug_trace();
LABEL_11:
      v8 = "Changing the target of a source after it has been activated";
LABEL_13:
      _dispatch_bug_deprecated(v8);
    }

    v4 = OUTLINED_FUNCTION_32();

    return _dispatch_barrier_trysync_or_async_f(v4, v5, v6, 1);
  }

  else
  {
    if (v3 == 19)
    {
      OUTLINED_FUNCTION_8();
      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
    qword_782C8 = v3;
    __break(1u);
  }

  return result;
}

void _dispatch_lane_set_target_queue_cold_4(uint64_t a1, unint64_t a2)
{
  v3 = atomic_exchange_explicit((a1 + 24), a2, memory_order_release);
  if (v3)
  {
    if (*(v3 + 8) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release);
      if (add_explicit <= 1)
      {
        if (add_explicit != 1)
        {
          qword_78298 = "API MISUSE: Over-release of an object";
          __break(1u);
          return;
        }

        _os_object_dispose(v3);
      }
    }
  }

  _dispatch_lane_resume(a1, 0);
}

void _dispatch_lane_legacy_set_target_queue_cold_1()
{
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects");
}

void _dispatch_lane_legacy_set_target_queue_cold_2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  _dispatch_unfair_lock_unlock_slow(a1, a2);
  if ((v4 & 2) != 0)
  {
    v5 = *(a3 + 200);
    if ((v5 & 0xF0000) == 0)
    {
      OUTLINED_FUNCTION_35(v5);
    }
  }
}

void _dispatch_queue_invoke_finish_cold_1(uint64_t (***a1)(), uint64_t a2, uint64_t a3)
{
  v3 = 0x4000000000;
  if (a1 != &_dispatch_mgr_q)
  {
    v3 = 1;
  }

  v4 = *(a2 + 56);
  v5 = v4;
  do
  {
    v6 = v4 - a3;
    if (((v4 - a3) & 0xFFE0004000000001) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7 | (v4 - a3) & 0xFFFFFF7700000001;
    atomic_compare_exchange_strong_explicit((a2 + 56), &v5, v8 | 0x8000000000, memory_order_release, memory_order_relaxed);
    v9 = v5 == v4;
    v4 = v5;
  }

  while (!v9);
  v10 = HIDWORD(v6) & 7;
  if ((~v6 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = *(StatusReg + 200);
    if ((HIWORD(v12) & 0xF) < v10)
    {
      *(StatusReg + 200) = v12 & 0xFFF0FFFF | (v10 << 16);
    }
  }

  if (((v8 ^ v6) & v3) != 0)
  {
    if ((v6 & 0x2000000000) != 0)
    {

      _dispatch_event_loop_poke(a2, v8 | 0x8000000000, (&dword_0 + 1));
    }

    else
    {
      v13 = (*a1)[9];
      v14 = OUTLINED_FUNCTION_32();

      v15(v14);
    }
  }

  else
  {

    _os_object_release_internal_n(a2, 2);
  }
}

void _dispatch_queue_priority_inherit_from_target_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_1(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFC) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop with corrupt state";
    qword_782C8 = a1;
    __break(1u);
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a locked workloop";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_dispose_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop while items are enqueued";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_activate_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Process has too many threads.";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_workloop_activate_cold_3(const sched_param **a1, uint64_t a2)
{
  v3 = *a1;
  memset(&v9, 0, sizeof(v9));
  pthread_attr_init(&v9);
  sched_priority = v3->sched_priority;
  if (v3->sched_priority)
  {
    pthread_attr_setschedparam(&v9, v3 + 1);
    sched_priority = v3->sched_priority;
    if ((v3->sched_priority & 2) == 0)
    {
LABEL_3:
      if ((sched_priority & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((sched_priority & 2) == 0)
  {
    goto LABEL_3;
  }

  pthread_attr_setschedpolicy(&v9, v3[2].sched_priority);
  if ((v3->sched_priority & 4) != 0)
  {
LABEL_4:
    v5 = v3[2].__opaque[0];
    v6 = v3[3].sched_priority;
    pthread_attr_setcpupercent_np();
  }

LABEL_5:
  v7 = _pthread_workloop_create();
  if (v7)
  {
    if (v7 == 45)
    {
      _dispatch_workloop_activate_simulator_fallback(a2, &v9.__sig);
    }
  }

  else
  {
    v3->sched_priority |= 0x10u;
  }

  return pthread_attr_destroy(&v9);
}

void _dispatch_workloop_activate_cold_4(uint64_t a1, atomic_ullong *a2)
{
  v2 = *(a1 + 84);
  if (v2)
  {
    v3 = v2 | 0x80000000;
  }

  else
  {
    v3 = -2080358400;
  }

  *(a1 + 84) = v3;
  atomic_fetch_and_explicit(a2, 0xFF7FFFFFFFFFFFFFLL, memory_order_relaxed);
  _dispatch_workloop_wakeup(a1, 0, 1);
}

uint64_t _dispatch_workloop_wakeup_cold_1(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = OUTLINED_FUNCTION_32();

  return v3(v2);
}

uint64_t _dispatch_workloop_wakeup_cold_2(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if ((a1 & 0x700000000) == 0)
  {
    return 1;
  }

  if ((a2 & 0x2000000000) != 0)
  {
    _dispatch_event_loop_poke(a3, a2, (a4 | 0x80000000));
  }

  else
  {
    _dispatch_queue_wakeup_with_override_slow(a3, a2, a4);
  }

  return 0;
}

void _dispatch_workloop_wakeup_cold_3(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Waking up an inactive workloop";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_wakeup_cold_4(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid way to wake up a workloop";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_workloop_invoke_cold_1(uint64_t (***a1)(), uint64_t *a2)
{
  v3 = &unk_4BF93;
  if (a1 && a1[9])
  {
    v3 = a1[9];
  }

  v4 = *a2;
  if (*a2 < 0x1000)
  {
    OUTLINED_FUNCTION_10(a1, v3, a2);
    if ((v11 & 1) == 0)
    {
      if ((v11 & 0x10) != 0)
      {
        if (*(v10 + 16))
        {
          v16 = *(v10 + 16);
          OUTLINED_FUNCTION_33();
        }
      }

      else
      {
        v12 = *(v9 + 32);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(v4 + 24);
    if (*(v4 + 16) != 19 || a1 == &_dispatch_mgr_q)
    {
      v8 = a2[4];
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
      v13 = *(a2[11] + 40);
      if (v13)
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 40);
      }
    }
  }
}

uint64_t _dispatch_workloop_invoke_cold_2(unsigned int *a1)
{
  result = OUTLINED_FUNCTION_28(a1);
  if ((HIWORD(*v1) & 0xFu) < v2)
  {
    *v1 = *v1 & 0xFFF0FFFF | (v2 << 16);
  }

  return result;
}

void _dispatch_workloop_invoke_cold_3(uint64_t a1)
{
  if (*a1)
  {
    *(*a1 + 53) |= 2u;
    _dispatch_return_to_kernel();
  }
}

uint64_t _dispatch_workloop_invoke_cold_5(void **a1, uint64_t *a2, char a3, uint64_t a4)
{
  v4 = a4;
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = &unk_4BF93;
  }

  v7 = *a2;
  if (*a2 < 0x1000)
  {
    OUTLINED_FUNCTION_14();
    if ((v15 & 1) == 0)
    {
      if ((v15 & 0x10) != 0)
      {
        if (*(v13 + 16))
        {
          v18 = *(v13 + 16);
        }
      }

      else
      {
        v16 = *(v14 + 32);
      }
    }
  }

  else
  {
    v8 = *a2;
    v9 = *(v7 + 24);
    if ((a3 & 1) != 0 && *(v7 + 16) == 19)
    {
      v10 = *(a2[11] + 40);
      if (v10)
      {
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
      }
    }

    else
    {
      v17 = a2[4];
      OUTLINED_FUNCTION_0_1();
    }
  }

  return OUTLINED_FUNCTION_43(v6, v4);
}

void _dispatch_workloop_invoke_cold_6()
{
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 16);
  if (v6 == 514)
  {
    OUTLINED_FUNCTION_9(v4);
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v7)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v8 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v8, v9);
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v6;
    __break(1u);
  }
}

uint64_t _dispatch_workloop_invoke_cold_7(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_workloop_invoke_cold_12()
{
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 16);
  if (v6 == 514)
  {
    OUTLINED_FUNCTION_9(v4);
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v7)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v8 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v8, v9);
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v6;
    __break(1u);
  }
}

uint64_t _dispatch_workloop_invoke_cold_13(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t _dispatch_workloop_barrier_complete_cold_2(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = OUTLINED_FUNCTION_32();

  return v3(v2);
}

uint64_t _dispatch_workloop_barrier_complete_cold_3(unint64_t a1, uint64_t a2, int a3)
{
  result = 1;
  if ((a1 & 0xFF80004000000000) == 0 && (a1 & 0xFFFFFFFD) != 0)
  {
    if ((a1 & 0x2000000000) != 0)
    {
      _dispatch_event_loop_poke(a2, a1, (a3 | 0x80000000));
    }

    else
    {
      _dispatch_queue_wakeup_with_override_slow(a2, a1, a3);
    }

    return 0;
  }

  return result;
}

void dispatch_async_swift_job_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Used Swift only SPI to enqueue non-Swift runtime objects into dispatch";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_channel_xref_dispose_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a channel that has not been cancelled, but has a cancel acknowledgement callback";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_channel_invoke_cold_1(uint64_t (***a1)(), uint64_t *a2)
{
  v3 = &unk_4BF93;
  if (a1 && a1[9])
  {
    v3 = a1[9];
  }

  v4 = *a2;
  if (*a2 < 0x1000)
  {
    OUTLINED_FUNCTION_10(a1, v3, a2);
    if ((v11 & 1) == 0)
    {
      if ((v11 & 0x10) != 0)
      {
        if (*(v10 + 16))
        {
          v16 = *(v10 + 16);
          OUTLINED_FUNCTION_33();
        }
      }

      else
      {
        v12 = *(v9 + 32);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(v4 + 24);
    if (*(v4 + 16) != 19 || a1 == &_dispatch_mgr_q)
    {
      v8 = a2[4];
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
      v13 = *(a2[11] + 40);
      if (v13)
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 40);
      }
    }
  }
}

void _dispatch_channel_invoke_cold_7()
{
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 16);
  if (v6 == 514)
  {
    OUTLINED_FUNCTION_9(v4);
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v7)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v8 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v8, v9);
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v6;
    __break(1u);
  }
}

uint64_t _dispatch_channel_invoke_cold_8(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_channel_invoke_cold_14()
{
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 16);
  if (v6 == 514)
  {
    OUTLINED_FUNCTION_9(v4);
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v7)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v8 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v8, v9);
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v6;
    __break(1u);
  }
}

uint64_t _dispatch_channel_invoke_cold_15(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void dispatch_channel_create_cold_2()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unsupported callbacks version";
  qword_782C8 = 0;
  __break(1u);
}

void _dispatch_mgr_queue_push_cold_1(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a1 + 104) = a2;
  *a3 = 0;
  if (((atomic_fetch_or_explicit((a1 + 56), 0x8000000000uLL, memory_order_release) ^ *(a4 + 24)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_event_loop_poke(-8, 0, 0);
  }
}

void _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID_cold_1(unsigned __int16 a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue type";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_runloop_root_queue_perform_4CF_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_runloop_root_queue_perform_4CF_cold_5(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 72))
  {
    v3 = *(a1 + 72);
  }

  else
  {
    v3 = &unk_4BF93;
  }

  v4 = *a2;
  if (*a2 < 0x1000)
  {
    OUTLINED_FUNCTION_10(a1, v3, a2);
    if ((v12 & 1) == 0)
    {
      if ((v12 & 0x10) != 0)
      {
        if (*(v11 + 16))
        {
          v17 = *(v11 + 16);
          OUTLINED_FUNCTION_33();
        }
      }

      else
      {
        v13 = *(v10 + 32);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(v4 + 24);
    v7 = *(v4 + 16);
    if (a1 != &_dispatch_mgr_q && v7 == 19)
    {
      v14 = *(a2[11] + 40);
      if (v14)
      {
        v15 = *(v14 + 32);
        v16 = *(v14 + 40);
      }
    }

    else
    {
      v9 = a2[4];
      OUTLINED_FUNCTION_0_1();
    }
  }
}

void _dispatch_runloop_root_queue_perform_4CF_cold_6()
{
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 16);
  if (v6 == 514)
  {
    OUTLINED_FUNCTION_9(v4);
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v7)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v8 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v8, v9);
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v6;
    __break(1u);
  }
}

uint64_t _dispatch_runloop_root_queue_perform_4CF_cold_7(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_main_queue_drain_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called from the wrong thread";
  qword_782C8 = a1;
  __break(1u);
}

dispatch_queue_s *_dispatch_main_queue_drain_cold_7(uint64_t *a1)
{
  if (off_74048)
  {
    v2 = off_74048;
  }

  else
  {
    v2 = &unk_4BF93;
  }

  v3 = *a1;
  if (*a1 < 0x1000)
  {
    OUTLINED_FUNCTION_10(v1, v2, a1);
    if ((v11 & 1) == 0)
    {
      if ((v11 & 0x10) != 0)
      {
        if (*(v10 + 16))
        {
          v14 = *(v10 + 16);
          OUTLINED_FUNCTION_33();
        }
      }

      else
      {
        v12 = *(v9 + 32);
      }
    }
  }

  else
  {
    v4 = *a1;
    v5 = *(v3 + 24);
    if (*(v3 + 16) == 19)
    {
      v6 = *(a1[11] + 40);
      if (v6)
      {
        v7 = *(v6 + 32);
        v8 = *(v6 + 40);
      }
    }

    else
    {
      v13 = a1[4];
      OUTLINED_FUNCTION_0_1();
    }
  }

  return &_dispatch_main_q;
}

void _dispatch_main_queue_drain_cold_8()
{
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 16);
  if (v6 == 514)
  {
    OUTLINED_FUNCTION_9(v4);
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v7)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v8 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v8, v9);
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v6;
    __break(1u);
  }
}

uint64_t _dispatch_main_queue_drain_cold_9(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_queue_cleanup_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch queue is running";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_deferred_items_cleanup_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit with unhandled deferred items";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_queue_atfork_child_cold_1()
{
  v0 = qword_74038;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = v0;
  do
  {
    atomic_compare_exchange_strong_explicit(&qword_74038, &v2, v0 & 0xFFFFFFFF00000003 | (4 * ((*(StatusReg + 24) >> 2) & 0x3FFFFFFFLL)), memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v0;
    v0 = v2;
  }

  while (!v3);
}

uint64_t _dispatch_async_and_wait_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t _dispatch_queue_specific_head_dispose_slow_cold_1()
{
  if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160))
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_mgr_queue_drain_cold_3(int a1, uint64_t a2)
{
  if (a1 == 1)
  {
    _voucher_xref_dispose(a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }
}

void _dispatch_worker_thread_cold_1(uint64_t a1, char *a2)
{
  if (a1 == 1)
  {
    OUTLINED_FUNCTION_26(a1, a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void _dispatch_worker_thread_cold_2(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Pending thread request underflow";
  qword_782C8 = a1 - 1;
  __break(1u);
}

void _dispatch_root_queue_drain_cold_5()
{
  OUTLINED_FUNCTION_41();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = *(v3 + 16);
  if (v4 == 514)
  {
    v5 = *(v2 + 32);
    if (*(v2 + 40))
    {
      if (*(v2 + 32) == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v6)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v7 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v7, v8);
    OUTLINED_FUNCTION_8();
    if (v9)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v4;
    __break(1u);
  }
}

uint64_t _dispatch_root_queue_drain_cold_6(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_root_queues_init_once_cold_2(int a1, int a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: Root queue initialization failed";
  qword_782C8 = a2 | (a1 << 16);
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_3()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  qword_78298 = "BUG IN LIBDISPATCH: Unable to limit cooperative pool size";
  qword_782C8 = v0;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_4(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Missing Kevent WORKQ support";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_root_queues_init_once_cold_5(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: QoS Maintenance support required";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_root_queue_drain_deferred_item_cold_2(uint64_t (***a1)(), uint64_t *a2)
{
  if (a1[9])
  {
    v3 = a1[9];
  }

  else
  {
    v3 = &unk_4BF93;
  }

  v4 = *a2;
  if (*a2 < 0x1000)
  {
    OUTLINED_FUNCTION_10(a1, v3, a2);
    if ((v11 & 1) == 0)
    {
      if ((v11 & 0x10) != 0)
      {
        if (*(v10 + 16))
        {
          v16 = *(v10 + 16);
          OUTLINED_FUNCTION_33();
        }
      }

      else
      {
        v12 = *(v9 + 32);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(v4 + 24);
    if (*(v4 + 16) != 19 || a1 == &_dispatch_mgr_q)
    {
      v8 = a2[4];
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
      v13 = *(a2[11] + 40);
      if (v13)
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 40);
      }
    }
  }
}

void _dispatch_root_queue_drain_deferred_item_cold_3()
{
  OUTLINED_FUNCTION_41();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 16);
  if (v6 == 514)
  {
    OUTLINED_FUNCTION_9(v4);
    if (v1)
    {
      if (v2 == _dispatch_call_block_and_release)
      {
        OUTLINED_FUNCTION_23();
        if (v7)
        {
          OUTLINED_FUNCTION_33();
        }
      }
    }

    v8 = OUTLINED_FUNCTION_15();
    _dispatch_client_callout(v8, v9);
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      OUTLINED_FUNCTION_6();
    }

    dispatch_group_leave(v0);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
    qword_782C8 = v6;
    __break(1u);
  }
}

uint64_t _dispatch_root_queue_drain_deferred_item_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_1_1();
}

void _dispatch_root_queue_drain_deferred_wlh_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid wlh state";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_3(dispatch_queue_s *a1, dispatch_queue_s *a2, void *context)
{
  if (a1 == a2)
  {
    v4 = _dispatch_apply_serial;
  }

  else
  {
    v4 = _dispatch_apply_redirect;
  }

  dispatch_sync_f(a1, context, v4);
}

uint64_t _dispatch_apply_with_attr_f_cold_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = 0;
    if (a2 == a3)
    {
      break;
    }

    a2 = *(a2 + 16);
  }

  while (a2);
  return result;
}

void _dispatch_apply_with_attr_f_cold_6(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: attribute's properties are invalid or meaningless on this system";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_apply_with_attr_f_cold_8(uint64_t a1, uint64_t a2, void *context)
{
  if (((*(a1 + 56) ^ *(a2 + 24)) & 0xFFFFFFFC) != 0)
  {
    dispatch_async_and_wait_f(a1, context, _dispatch_apply_serial);
  }

  else
  {
    _dispatch_apply_serial(context);
  }
}

void dispatch_apply_attr_set_parallelism_cold_2()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: 0 is an invalid threads_per_cluster value";
  qword_782C8 = 0;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_3(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_cluster value, only acceptable value is 1";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_4(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_entity value for CPU entity";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_apply_attr_set_parallelism_cold_5(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unknown entity";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t dispatch_apply_attr_query_cold_3(uint64_t a1, unint64_t *a2)
{
  result = pthread_qos_max_parallelism();
  if (result < 1)
  {
    result = MEMORY[0xFFFFFC036];
  }

  v5 = result;
  if (*(a1 + 8))
  {
    result = pthread_qos_max_parallelism();
    if (result < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = (result * *(a1 + 8));
    }
  }

  else
  {
    v6 = -1;
  }

  if (v6 >= v5)
  {
    v6 = v5;
  }

  *a2 = v6;
  return result;
}

uint64_t _dispatch_source_debug(void *a1, char *__str, size_t __size)
{
  v5 = a1[11];
  v6 = snprintf(__str, __size, "%s[%p] = { ", *(*a1 + 24), a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_0_2();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_0_2();
  v16 = v12 + _dispatch_source_debug_attr(v13, v14, v15);
  v17 = *(v5 + 29);
  if ((v17 & 2) != 0)
  {
    v23 = OUTLINED_FUNCTION_0_2();
    v16 += _dispatch_timer_debug_attr(v23, v24, v25);
    v17 = *(v5 + 29);
  }

  v18 = __size - v16;
  if (v17)
  {
    v19 = " (direct)";
  }

  else
  {
    v19 = &unk_4BF93;
  }

  v20 = snprintf(&__str[v16], v18, "kevent = %p%s, filter = %s }", v5, v19, **v5);
  v21 = v20;
  if (v18 < v20)
  {
    v21 = v18;
  }

  if (v20 < 0)
  {
    v21 = 0;
  }

  return v21 + v16;
}

size_t _dispatch_source_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 88);
  v6 = *(a1 + 80);
  v7 = *(v5 + 16);
  if (v4)
  {
    v8 = v4[9];
    if (!v8)
    {
      v8 = &unk_4BF93;
    }
  }

  else
  {
    v8 = &unk_4BF93;
  }

  v9 = v7 != 0;
  v10 = v7 & 1;
  v11 = "cancelled, ";
  if ((v6 & 0x10000000) == 0)
  {
    v11 = &unk_4BF93;
  }

  v12 = "needs-event, ";
  if ((v6 & 0x40000000) == 0)
  {
    v12 = &unk_4BF93;
  }

  if (v6 < 0)
  {
    v13 = "deleted, ";
  }

  else
  {
    v13 = &unk_4BF93;
  }

  v14 = snprintf(__str, __size, "target = %s[%p], ident = 0x%x, mask = 0x%x, pending_data = 0x%llx, registered = %d, armed = %d, %s%s%s", v8, v4, *(v5 + 24), *(v5 + 32), *(v5 + 72), v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14 >= __size)
  {
    v15 = __size;
  }

  if (v14 >= 0)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

size_t _dispatch_timer_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = snprintf(__str, __size, "timer = { target = 0x%llx, deadline = 0x%llx, interval = 0x%llx, flags = 0x%x }, ", *(*(a1 + 88) + 80), *(*(a1 + 88) + 88), *(*(a1 + 88) + 96), *(*(a1 + 88) + 30));
  v5 = v4;
  if (v4 >= __size)
  {
    v5 = __size;
  }

  if (v4 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void dispatch_source_create_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target source to the cooperative root queue - not implemented";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_source_xref_dispose_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Release of a source that has not been cancelled, but has a mandatory cancel handler";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_source_merge_data_cold_2(char a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid source type";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_source_cancel_cold_2(uint64_t a1)
{
  if ((atomic_fetch_or_explicit((a1 + 80), 0x10000000u, memory_order_release) & 0x10000000) != 0)
  {
    _os_object_release_internal_n(a1, 2);
  }

  else
  {
    (*(*a1 + 64))(a1, 0, 3);
  }
}

void dispatch_source_cancel_and_wait_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Source has a cancel handler";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_source_cancel_and_wait_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Dispatch source used after last release";
  qword_782C8 = a1;
  __break(1u);
}

_DWORD *dispatch_source_cancel_and_wait_cold_3(_DWORD *result, int a2, uint64_t a3)
{
  if (((a2 ^ *result) & 0xFFFFFFFC) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_source_cancel_and_wait called from a source handler";
    qword_782C8 = a3;
    __break(1u);
  }

  return result;
}

uint64_t dispatch_source_cancel_and_wait_cold_4(_DWORD *a1, uint64_t (*a2)(void))
{
  if ((*a1 & 0x80000000) == 0)
  {
    _dispatch_source_refs_unregister(a2, 3);
  }

  if ((*a1 & 0x80000000) != 0)
  {
    _dispatch_source_cancel_callout(a2, 0, 0);
  }

  v4 = *(*a2 + 64);

  return v4(a2, 0, 20);
}

uint64_t dispatch_source_cancel_and_wait_cold_5(uint64_t result, atomic_uint *a2)
{
  v3 = result;
  do
  {
    if ((v3 & 0x20000000) != 0 || (v4 = v3, atomic_compare_exchange_strong_explicit(a2, &v4, v3 | 0x20000000, memory_order_relaxed, memory_order_relaxed), v5 = v4 == v3, LODWORD(v3) = v3 | 0x20000000, v5))
    {
      result = _dispatch_wait_on_address(a2, v3, 0xFFFFFFFFFFFFFFFFLL);
      v4 = *a2;
    }

    v3 = v4;
  }

  while ((v4 & 0x80000000) == 0);
  return result;
}

void dispatch_source_cancel_and_wait_cold_6(unint64_t a1, dispatch_object_t object)
{
  if (a1 >> 58)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Source is suspended";
    qword_782C8 = object;
    __break(1u);
  }

  else
  {
    dispatch_activate(object);
  }
}

void _dispatch_source_merge_evt_cold_1(int a1, uint64_t a2)
{
  if ((a1 & 0x4000000) != 0)
  {
    v3 = *(a2 + 24);
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports or file descriptors)";
    qword_782C8 = v3;
    __break(1u);
  }

  else
  {
    _dispatch_bug_kevent_vanished(a2);
    *(a2 + 72) = 0;
  }
}

uint64_t dispatch_after_cold_2(uint64_t result, uint64_t *a2)
{
  if (*(result + 72))
  {
    v3 = *(result + 72);
  }

  v4 = *a2;
  if (*a2 < 0x1000)
  {
    v10 = a2[5];
    if ((v4 & 1) == 0)
    {
      if ((v4 & 0x10) != 0)
      {
        if (*(v10 + 16))
        {
          v15 = *(v10 + 16);
        }
      }

      else
      {
        v11 = a2[4];
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(v4 + 24);
    v7 = *(v4 + 16);
    if (result != &_dispatch_mgr_q && v7 == 19)
    {
      v12 = *(a2[11] + 40);
      if (v12)
      {
        v13 = *(v12 + 32);
        v14 = *(v12 + 40);
      }
    }

    else
    {
      v9 = a2[4];
    }
  }

  return result;
}

uint64_t _dispatch_mach_handoff_set_wlh(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 24);
  if (*(a2 + 24))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      if ((*(a2 + 80) & 0x400000) != 0)
      {
        v6 = 0;
        v7 = (a2 + 100);
        atomic_compare_exchange_strong_explicit((a2 + 100), &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v6)
        {
          v19 = result;
          v15 = StatusReg;
          v17 = a2;
          v11 = (a2 + 100);
          v13 = v2;
          _dispatch_unfair_lock_lock_slow(a2 + 100);
          v2 = v13;
          StatusReg = v15;
          v7 = v11;
          a2 = v17;
          result = v19;
        }

        atomic_fetch_and_explicit((a2 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v8 = *(StatusReg + 24) & 0xFFFFFFFC;
        v9 = atomic_exchange_explicit(v7, 0, memory_order_release);
        if (v9 != v8)
        {
          v18 = result;
          v14 = StatusReg;
          v16 = a2;
          v10 = v9;
          v12 = v2;
          _dispatch_unfair_lock_unlock_slow(v7, v9);
          v2 = v12;
          StatusReg = v14;
          a2 = v16;
          result = v18;
          if ((v10 & 2) != 0 && (*(v14 + 200) & 0xF0000) == 0)
          {
            *(v14 + 200) = *(v14 + 200) & 0xFFF0FFFFLL | 0x10000;
          }
        }
      }

      if ((*(a2 + 56) & 0x2000000000) != 0)
      {
        break;
      }

      a2 = *v2;
      v4 = *v2;
      v5 = *(v4 + 24);
      v2 = (v4 + 24);
      if (!v5)
      {
        a2 = 0;
        break;
      }
    }
  }

  else
  {
    a2 = 0;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t *dispatch_mach_handoff_reply(unint64_t a1, unsigned int a2, void *a3)
{
  v7 = _dispatch_mach_handoff_context(a2);
  v8 = *(v7 + 16);
  _dispatch_mach_handoff_set_wlh(v8, a1);
  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
    goto LABEL_24;
  }

  *(v7 + 24) = a1;
  v9 = _dispatch_Block_copy(a3);
  v10 = a3[2];
  if (v10)
  {
    if (v10 != _dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_22:
    *v8 = 276;
    v8[5] = v9;
    result = _dispatch_continuation_init_slow(v8, a1, 0);
    goto LABEL_20;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_22;
  }

LABEL_5:
  *v8 = 276;
  v8[4] = _dispatch_call_block_and_release;
  v8[5] = v9;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v4 >= 0x10FF)
  {
    v3 = 4351;
  }

  else
  {
    v3 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v12 = *(StatusReg + 224);
  if (!v12 || (result = 0, atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) > 0))
  {
    v8[3] = v12;
    if (v12 == -1)
    {
      goto LABEL_14;
    }

    if (v12)
    {
      v14 = *(v12 + 32);
    }

    if (!MEMORY[0xFFFFFC100])
    {
LABEL_14:
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_24:
    kdebug_trace();
    if (!v4)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15 = *(a1 + 84);
    if ((v15 & 0x40000000) != 0 || (v15 & 0xFFF) == 0)
    {
      result = (__clz(__rbit32(v3 >> 8)) + 1);
      goto LABEL_19;
    }

LABEL_17:
    result = 0;
    v3 = 0;
LABEL_19:
    v8[1] = v3;
LABEL_20:
    *(v7 + 32) = result;
    v8[6] = *v8;
    *v8 = &unk_70E18;
    return result;
  }

  qword_78298 = "API MISUSE: Voucher resurrection";
  __break(1u);
  return result;
}

void _dispatch_mach_ipc_handoff_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v32[1] = "mach_msg";
  v32[2] = a1;
  v33 = 0;
  v34 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[20];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  __swp(v3, (a1 + 64));
  if (v3)
  {
    if (v3)
    {
      v3 = ~v3;
    }

    else
    {
      _dispatch_sync_ipc_handoff_begin(v3, v9, a1 + 64);
    }
  }

  *(a1 + 16) = -1985229329;
  *(a1 + 56) = 0;
  v32[0] = StatusReg[23];
  StatusReg[23] = v32;
  v10 = *(a1 + 24);
  *(a1 + 24) = -1;
  if (v10 != -1 && v10 != -1)
  {
    if (v10)
    {
      v12 = *(v10 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v13 = *(a1 + 8);
  if (v13 == -1)
  {
    v20 = 0;
  }

  else
  {
    v14 = StatusReg[25];
    if (((v14 >> 8) & 0xF) != 0)
    {
      v15 = 256 << ((BYTE1(v14) & 0xFu) - 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    v17 = v13 & 0xFFFFFF;
    if ((v13 & 0xFFFFFF) != 0)
    {
      v18 = v15 & 0xFFFFFF00;
      if ((v14 & 0x44000000) == 0 && (*(a1 + 8) & 0x10000000) == 0)
      {
        v20 = v16;
      }

      else
      {
        v20 = v13 & 0xFFFFFF;
      }

      if (v17 < v18)
      {
        v20 = v16;
      }
    }

    else if (v14 >> 12)
    {
      v20 = (256 << ((v14 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v20 = v15 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    }
  }

  v21 = v20 & 0xFFFFFFFF02FFFFFFLL;
  v22 = StatusReg[4];
  if ((v22 & 0x1000000) != 0)
  {
    if (v21)
    {
LABEL_61:
      _dispatch_set_priority_and_voucher_slow(v21, v10, 6);
      goto LABEL_34;
    }

    v21 = v22 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v21 == (v22 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_30;
  }

  if (v21)
  {
    goto LABEL_61;
  }

LABEL_30:
  if (v10 == -1)
  {
    goto LABEL_34;
  }

  if (StatusReg[28] != v10)
  {
    v21 = 0;
    goto LABEL_61;
  }

  if (v10)
  {
    if (atomic_fetch_add_explicit((v10 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      qword_78298 = "API MISUSE: Voucher over-release";
      __break(1u);
      v29 = *(a1 + 40);
      if (((v10 + 12) & 1) == 0)
      {
        if (((v10 + 12) & 0x10) != 0)
        {
          if (*(v29 + 16))
          {
            v31 = *(v29 + 16);
          }
        }

        else
        {
          v30 = *(a1 + 32);
        }
      }
    }
  }

LABEL_34:
  if ((a3 & 0x1000000) != 0)
  {
    v23 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v23 = 0;
  }

  v25 = *(a1 + 32);
  v24 = *(a1 + 40);
  if (v24)
  {
    v26 = *(a1 + 32);
    if (v25 == _dispatch_call_block_and_release)
    {
      if (*(v24 + 16))
      {
        v27 = *(v24 + 16);
      }
    }
  }

  _dispatch_client_callout(v24, v25);
  if (v23)
  {
    _dispatch_autorelease_pool_pop();
  }

  if ((v8 & 0x200) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v28 = v33;
  StatusReg[23] = v32[0];
  if (v28)
  {
    _dispatch_mach_ipc_handoff_async(v32);
  }

  else if (!atomic_fetch_add_explicit((a1 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(a1);
  }

  if (v3)
  {
    _dispatch_sync_ipc_handoff_end(v3, v9);
  }
}

uint64_t _dispatch_mach_msg_debug(unsigned int *a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "%s[%p] = { ", *(*a1 + 24), a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = a1 + 22;
  v14 = snprintf(&__str[v12], __size - v12, "opts/err = 0x%x, msgh[%p] = { ", a1[12], a1 + 22);
  v16 = v14;
  if (__size - v12 < v14)
  {
    v16 = __size - v12;
  }

  if (v14 < 0)
  {
    v16 = 0;
  }

  if (a1[18])
  {
    v13 = *v13;
  }

  v17 = v16 + v12;
  if (v13[5])
  {
    v36 = v13[5];
    OUTLINED_FUNCTION_4_0(v14, v15, "id 0x%x, ");
    OUTLINED_FUNCTION_1_2();
    if (v14 < 0)
    {
      v18 = 0;
    }

    v17 += v18;
  }

  if (v13[1])
  {
    v36 = v13[1];
    OUTLINED_FUNCTION_4_0(v14, v15, "size %u, ");
    OUTLINED_FUNCTION_1_2();
    if (v14 < 0)
    {
      v19 = 0;
    }

    v17 += v19;
  }

  v20 = *v13;
  if (*v13)
  {
    v36 = (v20 >> 8) & 0x1F;
    v37 = v20 & 0x1F;
    OUTLINED_FUNCTION_4_0(v14, v15, "bits <l %u, r %u");
    OUTLINED_FUNCTION_1_2();
    if (v21 < 0)
    {
      v23 = 0;
    }

    v24 = v23 + v17;
    if ((*v13 & 0xFFE0E0E0) != 0)
    {
      v36 = *v13 & 0xFFE0E0E0;
      OUTLINED_FUNCTION_4_0(v21, v22, ", o 0x%x");
      OUTLINED_FUNCTION_1_2();
      if (v21 < 0)
      {
        v25 = 0;
      }

      v24 += v25;
    }

    OUTLINED_FUNCTION_4_0(v21, v22, ">, ");
    OUTLINED_FUNCTION_1_2();
    if (v14 < 0)
    {
      v26 = 0;
    }

    v17 = v26 + v24;
  }

  v27 = v13[2];
  if (v13[3])
  {
    if (v27)
    {
      v36 = v13[3];
      v37 = v13[2];
      v28 = "local 0x%x, remote 0x%x";
    }

    else
    {
      v36 = v13[3];
      v28 = "local 0x%x";
    }
  }

  else if (v27)
  {
    v36 = v13[2];
    v28 = "remote 0x%x";
  }

  else
  {
    v28 = "no ports";
  }

  OUTLINED_FUNCTION_4_0(v14, v15, v28);
  OUTLINED_FUNCTION_1_2();
  if (v30 < 0)
  {
    v29 = 0;
  }

  v31 = v29 + v17;
  v32 = __size - (v29 + v17);
  v33 = snprintf(&__str[v29 + v17], v32, " } }", v36, v37);
  v34 = v33;
  if (v32 < v33)
  {
    v34 = v32;
  }

  if (v33 < 0)
  {
    v34 = 0;
  }

  return v34 + v31;
}

uint64_t _dispatch_mach_debug(const void *a1, char *__str, size_t __size)
{
  v5 = *(a1 + 9);
  if (!v5 || (*(a1 + 58) & 8) != 0)
  {
    v5 = *(*a1 + 24);
  }

  v6 = snprintf(__str, __size, "%s[%p] = { ", v5, a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_3_0();
  v16 = v12 + _dispatch_mach_debug_attr(v13, v14, v15);
  v17 = __size - v16;
  v18 = snprintf(&__str[v16], v17, "}");
  v19 = v18;
  if (v17 < v18)
  {
    v19 = v17;
  }

  if (v18 < 0)
  {
    v19 = 0;
  }

  return v19 + v16;
}

size_t _dispatch_mach_debug_attr(uint64_t a1, char *__str, size_t __size)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 120);
  v6 = &unk_4BF93;
  if (v4)
  {
    v7 = v4[9];
    if (!v7)
    {
      v7 = &unk_4BF93;
    }
  }

  else
  {
    v7 = &unk_4BF93;
  }

  if (*(v5 + 30))
  {
    v8 = " (armed)";
  }

  else
  {
    v8 = &unk_4BF93;
  }

  if (*(v5 + 48))
  {
    v6 = " (pending)";
  }

  v9 = snprintf(__str, __size, "target = %s[%p], receive = 0x%x, send = 0x%x, send-possible = 0x%x%s, checkin = 0x%x%s, send state = %016llx, disconnected = %d, canceled = %d ", v7, v4, *(*(a1 + 88) + 24), *(v5 + 92), *(v5 + 24), v8, *(v5 + 96), v6, *(v5 + 64), *(v5 + 88), (*(a1 + 80) >> 28) & 1);
  v10 = v9;
  if (v9 >= __size)
  {
    v10 = __size;
  }

  if (v9 >= 0)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void dispatch_mach_hooks_install_4libxpc_cold_1()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_hooks_install_4libxpc called twice";
  qword_782C8 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

void dispatch_mach_hooks_install_4libxpc_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: trying to install hooks with unsupported version";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_create_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_connect_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Channel already connected";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_arm_no_senders_cold_2(char a1, mach_port_name_t a2)
{
  if (a1)
  {
    v2 = mach_port_deallocate(mach_task_self_, a2);
    if (v2 == -301)
    {
      qword_78298 = "MIG_REPLY_MISMATCH";
      qword_782C8 = -301;
      __break(1u);
    }

    if (v2)
    {
      _dispatch_bug(269, v2);
    }
  }

  else
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Mach port notification collision";
    qword_782C8 = a2;
    __break(1u);
  }
}

void _dispatch_mach_merge_msg_cold_1(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_mach_reply_merge_msg_cold_1(uint64_t (***a1)(), uint64_t *a2)
{
  if (a1[9])
  {
    v3 = a1[9];
  }

  v4 = *a2;
  if (*a2 < 0x1000)
  {
    v9 = a2[5];
    if ((v4 & 1) == 0)
    {
      if ((v4 & 0x10) != 0)
      {
        if (*(v9 + 16))
        {
          v14 = *(v9 + 16);
        }
      }

      else
      {
        v10 = a2[4];
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(v4 + 24);
    if (*(v4 + 16) != 19 || a1 == &_dispatch_mgr_q)
    {
      v8 = a2[4];
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      v11 = *(a2[11] + 40);
      if (v11)
      {
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);
      }
    }
  }
}

void _dispatch_mach_send_and_wait_for_reply_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Reply received on unexpected port";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_4(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_5(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from mach_msg_receive";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_send_and_wait_for_reply_cold_6(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid reply port";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_install_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Channel never connected";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Message size too large";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_create_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Empty message";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_mach_msg_dispose_cold_1(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
  }
}

void dispatch_mach_msg_get_filter_policy_id_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Messsage should be non-NULL";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_2(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Trailer format is invalid";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_3(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Trailer doesn't contain filter policy id";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_mach_msg_get_filter_policy_id_cold_4()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Filter id should be non-NULL";
  qword_782C8 = 0;
  __break(1u);
}

void dispatch_mach_mig_demux_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux: mach_msg(MACH_SEND_MSG) failed";
  qword_782C8 = a1;
  __break(1u);
}

void *_dispatch_mach_msg_async_reply_wrap_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 176);
  if (result)
  {
    *(StatusReg + 176) = result[2];
  }

  else
  {
    result = _dispatch_continuation_alloc_from_heap();
  }

  *a3 = result;
  result[6] = a1;
  result[7] = a2;
  *result = &unk_70D38;
  result[1] = -1;
  result[3] = -1;
  return result;
}

uint64_t _dispatch_event_loop_drain_timers_cold_2(void *a1, void *a2)
{
  *a1 = 0;
  a2[9] = 2;
  return (*(*a2 + 48))(a2, 16, 0, 0);
}

uint64_t _dispatch_event_loop_drain_timers_cold_4()
{
  if (MEMORY[0xFFFFFC100])
  {
    return kdebug_trace();
  }

  return result;
}

uint64_t _dispatch_event_loop_drain_timers_cold_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  return ~*(a1 + 8);
}

uint64_t _dispatch_event_loop_drain_timers_cold_6(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if (v1)
    {
      v2 = *(v1 + 32);
    }

    return ~*(result + 8);
  }

  return result;
}

void _dispatch_unote_unregister_direct(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v7 = 2;
  if (v4 <= 0xFFFFFFFFFFFFFFFBLL && v6 != 0)
  {
    if (*(v6 + 24) == v5)
    {
      a2 |= 5u;
      v7 = 6;
    }

    else
    {
      v7 = 2;
    }
  }

  if ((v4 & 2) != 0 && (a2 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    a1[2] = 0;
    return;
  }

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    a2 |= 4u;
    v9 = 6;
  }

  v10 = v9 <= 3 && (a2 & 2) == 0;
  if (v10 || (_dispatch_kq_unote_update(v5, a1, v9), (v11 & 1) == 0))
  {
LABEL_10:
    if ((a2 & 4) != 0)
    {
      qword_78298 = "BUG IN LIBDISPATCH: Unregistration failed";
      __break(1u);
    }
  }
}

void _dispatch_sync_ipc_handoff_begin_cold_1(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_unote_dispose_defer_cold_1(unsigned __int16 a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Disposing a direct unote while deferring an event";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_free_deferred_unotes_cold_1(unsigned __int16 a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_1(int *a1)
{
  v1 = *a1;
  qword_78298 = "BUG IN LIBDISPATCH: Broken priority";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_2(unsigned int *a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*a1 << 32) | 2;
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = v2;
  __break(1u);
}

void _dispatch_event_loop_leave_immediate_cold_3(uint64_t *a1)
{
  v1 = *a1;
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_leave_deferred_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_2(uint64_t a1, unsigned __int16 a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = (a2 << 16) | (a1 << 32) | 2;
  __break(1u);
}

void _dispatch_event_loop_cancel_waiter_cold_3(uint64_t a1)
{
  v1 = *(a1 + 64);
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_1(uint64_t a1)
{
  v1 = *(a1 + 12);
  qword_78298 = "BUG IN LIBDISPATCH: Broken priority";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_event_loop_wake_owner_cold_2(uint64_t a1, unsigned __int16 a2)
{
  v2 = (a2 << 16) | (*(a1 + 24) << 32) | 2;
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = v2;
  __break(1u);
}

void _dispatch_event_loop_wait_for_ownership_cold_4(uint64_t a1, unsigned __int16 a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
  qword_782C8 = (a1 << 32) | (a2 << 16) | 2;
  __break(1u);
}

void _dispatch_event_loop_end_ownership_cold_6(int a1, char *a2)
{
  if (a1 < 0)
  {
    vars0 = v2;
    vars8 = v3;
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }

  else
  {
    _os_object_dispose(a2);
  }
}

void _dispatch_mach_host_port_init_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Could not get unprivileged host port";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_kevent_mach_msg_recv_cold_3(uint64_t result, uint64_t a2)
{
  if ((result & 0x210) != 0)
  {
    v2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  else
  {
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
  }

  *(a2 + 16) = v2;
  return result;
}

void _dispatch_kevent_mach_msg_recv_cold_4(uint64_t a1)
{
  v1 = *(a1 + 20);
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Received message with MACH_PORT_NULL msgh_local_port";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_kevent_mach_msg_recv_cold_5(unsigned int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message received";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t (***_dispatch_kq_init_cold_2(uint64_t (***result)()))()
{
  if (result && result[9])
  {
    v1 = result[9];
  }

  if (_dispatch_mgr_q < 0x1000)
  {
    if ((_dispatch_mgr_q & 1) == 0 && (_dispatch_mgr_q & 0x10) != 0 && *(off_74128[0] + &dword_10))
    {
      v7 = *(off_74128[0] + &dword_10);
    }
  }

  else
  {
    v2 = _dispatch_mgr_q[3];
    if (*(_dispatch_mgr_q + 16) == 19 && result != &_dispatch_mgr_q)
    {
      v4 = *(off_74158[0] + stru_20.segname);
      if (v4)
      {
        v5 = *(v4 + 32);
        v6 = *(v4 + 40);
      }
    }
  }

  return result;
}

void _dispatch_kq_init_cold_3()
{
  v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v0 != 4)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Failed to initalize workqueue kevent";
    qword_782C8 = v0;
    __break(1u);
  }
}

uint64_t _dispatch_kevent_mach_notify_resume_cold_3(unsigned int a1, mach_port_name_t *a2, _DWORD *a3)
{
  _dispatch_bug(3048, a1);
  result = mach_port_deallocate(mach_task_self_, *a2);
  *a3 = result;
  if (result == -301)
  {
    qword_78298 = "MIG_REPLY_MISMATCH";
    qword_782C8 = -301;
    __break(1u);
  }

  if (result)
  {
    return 1;
  }

  return result;
}

BOOL voucher_activity_should_send_strings()
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v0 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    return 0;
  }

  return firehose_buffer_should_send_strings(v0);
}

size_t voucher_kvoucher_debug(ipc_space_read_t a1, mach_port_name_t a2, uint64_t a3, unint64_t a4, unint64_t a5, const char *a6, size_t a7)
{
  bzero(recipes, 0x2000uLL);
  *object_addr = 0;
  *recipesCnt = 0x2000;
  if (mach_port_kernel_object(a1, a2, object_addr, &object_addr[1]) || object_addr[0] != 37)
  {
    if (a6)
    {
      OUTLINED_FUNCTION_9_0();
      snprintf((a3 + a5), a7, "%s", v106);
      OUTLINED_FUNCTION_13();
      if (v97 < 0)
      {
        v96 = 0;
      }

      a5 += v96;
    }

    if (a4 >= a5)
    {
      v98 = a4 - a5;
    }

    else
    {
      v98 = 0;
    }

    v99 = snprintf((a3 + a5), v98, "Invalid voucher: 0x%x\n");
    goto LABEL_116;
  }

  v15 = mach_voucher_debug_info(a1, a2, recipes, recipesCnt);
  if (v15)
  {
    v16 = v15;
    if (v15 != 46)
    {
      if (a6)
      {
        OUTLINED_FUNCTION_9_0();
        snprintf((a3 + a5), a7, "%s", v106);
        OUTLINED_FUNCTION_13();
        if (v101 < 0)
        {
          v100 = 0;
        }

        a5 += v100;
      }

      if (a4 >= a5)
      {
        v98 = a4 - a5;
      }

      else
      {
        v98 = 0;
      }

      mach_error_string(v16);
      v99 = snprintf((a3 + a5), v98, "Voucher: 0x%x Failed to get contents %s\n");
      goto LABEL_116;
    }
  }

  if (!*recipesCnt)
  {
    if (a6)
    {
      OUTLINED_FUNCTION_9_0();
      snprintf((a3 + a5), a7, "%s", v106);
      OUTLINED_FUNCTION_13();
      if (v103 < 0)
      {
        v102 = 0;
      }

      a5 += v102;
    }

    if (a4 >= a5)
    {
      v98 = a4 - a5;
    }

    else
    {
      v98 = 0;
    }

    v99 = snprintf((a3 + a5), v98, "Voucher: 0x%x has no contents\n");
LABEL_116:
    v104 = v99;
    if (v98 < v99)
    {
      v104 = v98;
    }

    if (v99 < 0)
    {
      v104 = 0;
    }

    return v104 + a5;
  }

  if (a6)
  {
    if (a4 >= a5)
    {
      v17 = a4 - a5;
    }

    else
    {
      v17 = 0;
    }

    v18 = snprintf((a3 + a5), v17, "%s", a6);
    v19 = v18;
    if (v17 < v18)
    {
      v19 = v17;
    }

    if (v18 < 0)
    {
      v19 = 0;
    }

    a5 += v19;
  }

  if (a4 >= a5)
  {
    v20 = a4 - a5;
  }

  else
  {
    v20 = 0;
  }

  v21 = snprintf((a3 + a5), v20, "Voucher: 0x%x\n", object_addr[1]);
  v22 = v21;
  if (v20 < v21)
  {
    v22 = v20;
  }

  if (v21 < 0)
  {
    v22 = 0;
  }

  v23 = v22 + a5;
  if (*recipesCnt)
  {
    v111 = a7;
    v112 = a6;
    v24 = 0;
    while (1)
    {
      v25 = &recipes[v24];
      if (*&recipes[v24])
      {
        break;
      }

LABEL_90:
      v24 = (v24 + *(v25 + 3) + 16);
      if (*recipesCnt <= v24)
      {
        return v23;
      }
    }

    if (a6)
    {
      OUTLINED_FUNCTION_5_0();
      snprintf((a3 + v23), v7, "%s", a6);
      OUTLINED_FUNCTION_2_1();
      if (v27 < 0)
      {
        v26 = 0;
      }

      v23 += v26;
      v28 = *v25;
    }

    v29 = OUTLINED_FUNCTION_4_1();
    snprintf(v29, v30, "Key: %u, ", v107);
    OUTLINED_FUNCTION_2_1();
    if (v32 < 0)
    {
      v31 = 0;
    }

    v33 = v31 + v23;
    v34 = *(v25 + 1);
    v35 = OUTLINED_FUNCTION_7_0();
    snprintf(v35, v36, "Command: %u, ", v108);
    OUTLINED_FUNCTION_3_1();
    if (v38 < 0)
    {
      v37 = 0;
    }

    v39 = v37 + v33;
    v40 = *(v25 + 2);
    v41 = OUTLINED_FUNCTION_7_0();
    snprintf(v41, v42, "Previous voucher: 0x%x, ", v109);
    OUTLINED_FUNCTION_3_1();
    if (v44 < 0)
    {
      v43 = 0;
    }

    v45 = v43 + v39;
    v46 = *(v25 + 3);
    v47 = OUTLINED_FUNCTION_7_0();
    snprintf(v47, v48, "Content size: %u\n", v110);
    OUTLINED_FUNCTION_3_1();
    if (v50 < 0)
    {
      v49 = 0;
    }

    v7 = v49 + v45;
    if (*v25 == 3)
    {
      if (a6)
      {
        v57 = OUTLINED_FUNCTION_10_0();
        snprintf(v57, v58, "%s", v107);
        OUTLINED_FUNCTION_3_1();
        if (v60 < 0)
        {
          v59 = 0;
        }

        v7 += v59;
      }

      v61 = OUTLINED_FUNCTION_6_0();
      snprintf(v61, v62, "RESOURCE ACCOUNTING INFO: %s");
      goto LABEL_49;
    }

    if (*v25 == 2)
    {
      if (a6)
      {
        v51 = OUTLINED_FUNCTION_10_0();
        snprintf(v51, v52, "%s", v107);
        OUTLINED_FUNCTION_3_1();
        if (v54 < 0)
        {
          v53 = 0;
        }

        v7 += v53;
      }

      v55 = OUTLINED_FUNCTION_6_0();
      snprintf(v55, v56, "IMPORTANCE INFO: %s");
LABEL_49:
      OUTLINED_FUNCTION_3_1();
      if (v64 < 0)
      {
        v63 = 0;
      }

      v23 = v63 + v7;
      goto LABEL_86;
    }

    v65 = a6;
    if (*(v25 + 3) >= v111)
    {
      v66 = v111;
    }

    else
    {
      v66 = *(v25 + 3);
    }

    if (a4 >= v7)
    {
      v67 = a4 - v7;
    }

    else
    {
      v67 = 0;
    }

    snprintf((a3 + v7), v67, "%s%s:\n", v65, "Recipe Contents");
    OUTLINED_FUNCTION_3_1();
    if (v69 < 0)
    {
      v68 = 0;
    }

    v23 = v68 + v7;
    if (v66)
    {
      v70 = 0;
      v71 = v25 + 16;
      do
      {
        v72 = v70 & 0xF;
        if ((v70 & 0xF) == 0)
        {
          if (v70)
          {
            OUTLINED_FUNCTION_5_0();
            v73 = OUTLINED_FUNCTION_4_1();
            snprintf(v73, v74, "  %s\n", v107);
            OUTLINED_FUNCTION_2_1();
            if (v76 < 0)
            {
              v75 = 0;
            }

            v23 += v75;
          }

          OUTLINED_FUNCTION_5_0();
          snprintf((a3 + v23), v7, "%s  %04lx ", v112, v70);
          OUTLINED_FUNCTION_2_1();
          if (v78 < 0)
          {
            v77 = 0;
          }

          v23 += v77;
        }

        OUTLINED_FUNCTION_5_0();
        v79 = v71[v70];
        v80 = OUTLINED_FUNCTION_4_1();
        snprintf(v80, v81, " %02x", v107);
        OUTLINED_FUNCTION_2_1();
        if (v83 < 0)
        {
          v82 = 0;
        }

        v23 += v82;
        v84 = v71[v70];
        if ((v84 - 127) < 0xFFFFFFA1)
        {
          LOBYTE(v84) = 46;
        }

        recipes[v72 + 0x2000] = v84;
        ++v70;
      }

      while (v66 != v70);
      recipes[v72 + 8193] = 0;
      if ((v66 & 0xF) == 0)
      {
        a6 = v112;
LABEL_86:
        if (*(a3 + v23 - 1) != 10)
        {
          OUTLINED_FUNCTION_5_0();
          snprintf(v93, v7, "\n");
          OUTLINED_FUNCTION_2_1();
          if (v95 < 0)
          {
            v94 = 0;
          }

          v23 += v94;
        }

        goto LABEL_90;
      }

      v85 = v66 + 1;
      do
      {
        OUTLINED_FUNCTION_5_0();
        snprintf((a3 + v23), v7, "   ");
        OUTLINED_FUNCTION_2_1();
        if (v87 < 0)
        {
          v86 = 0;
        }

        v23 += v86;
      }

      while ((v85++ & 0xF) != 0);
      OUTLINED_FUNCTION_5_0();
      v89 = OUTLINED_FUNCTION_4_1();
      snprintf(v89, v90, "  %s\n", v107);
      OUTLINED_FUNCTION_2_1();
      if (v92 < 0)
      {
        v91 = 0;
      }

      v23 += v91;
    }

    a6 = v112;
    goto LABEL_86;
  }

  return v23;
}

void _voucher_xref_dispose_cold_3(int a1, char *a2)
{
  if (a1 == 1)
  {
    _os_object_dispose(a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void _voucher_task_mach_voucher_init_cold_1(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Could not create task mach voucher";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_insert_cold_3(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_insert_cold_4(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_create_with_mach_msgv_cold_1(unsigned int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid msg aux data size.";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _voucher_create_with_mach_voucher_cold_4(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 32);
  v3 = *a2;
  return result;
}

void voucher_decrement_importance_count4CF_cold_2(uint64_t a1, int a2)
{
  _dispatch_bug(766, a1);
  if (a2 == 5)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Voucher importance count underflow";
    qword_782C8 = a1;
    __break(1u);
  }
}

void _voucher_activity_debug_channel_init_cold_2(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Couldn't get debug control port";
  qword_782C8 = a1;
  __break(1u);
}

void _voucher_process_can_use_arbitrary_personas_init_cold_2(int a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: mach_voucher_attr_command(BANK_PERSONA_ADOPT_ANY) failed";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t voucher_copy_with_persona_mach_voucher_cold_1(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  return a2;
}

void voucher_activity_initialize_4libtrace_cold_1()
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: voucher_activity_initialize_4libtrace called twice";
  qword_782C8 = _voucher_libtrace_hooks;
  __break(1u);
}

void voucher_activity_initialize_4libtrace_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: unsupported vah_version";
  qword_782C8 = a1;
  __break(1u);
}

void voucher_activity_create_with_data_2_cold_4(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Absurd publen";
  qword_782C8 = a1;
  __break(1u);
}

void voucher_activity_flush_cold_2(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Allocation should always fail";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_buffer_create_cold_1()
{
  qword_78298 = "BUG IN LIBDISPATCH: Invalid values for MADVISE_CHUNK_COUNT / CHUNK_SIZE";
  qword_782C8 = 0x4000;
  __break(1u);
}

void firehose_buffer_create_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_3(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_10(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to register with logd";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_client_reconnect_cold_12(uint64_t a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid size for the firehose buffer";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t firehose_buffer_tracepoint_reserve_slow_cold_1(uint64_t a1, char a2, mach_port_context_t a3, void *a4, uint64_t *a5)
{
  v10 = a3 + (*(a1 + 12) << 7) + 640;
  v11 = *v10;
  if (((*v10 >> 40) & 0x40) != 0)
  {
    v13 = v11 & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(v11) | 0xC0u) << 40);
    for (i = *v10; ; v13 = i & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(i) | 0xC0u) << 40))
    {
      atomic_compare_exchange_strong_explicit(v10, &i, v13, memory_order_relaxed, memory_order_relaxed);
      if (i == v11)
      {
        break;
      }

      v11 = i;
    }
  }

  else
  {
    *(v10 + 8) = mach_continuous_time();
    v11 = *v10;
    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, *v10 & 0xFFFF00FFFFFFFFFDLL | (((WORD2(*v10) >> 8) | 0xC0u) << 40), memory_order_release, memory_order_relaxed);
    while (v12 != v11)
    {
      v11 = v12;
      atomic_compare_exchange_strong_explicit(v10, &v12, v12 & 0xFFFF00FFFFFFFFFDLL | ((BYTE5(v12) | 0xC0u) << 40), memory_order_release, memory_order_relaxed);
    }
  }

  v15 = *(v10 + 8);
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    _dispatch_gate_broadcast_slow(v10, v11);
    goto LABEL_10;
  }

  if ((v11 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  *(a1 + 13) = a2;
  result = firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(a3, a1, a4);
  *a5 = result;
  return result;
}

void firehose_drain_notifications_once_cold_1(int a1)
{
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: firehose_drain_notifications_once() failed";
  qword_782C8 = a1;
  __break(1u);
}

void firehose_drain_notifications_once_cold_2(uint64_t a1)
{
  v1 = *(a1 + 20);
  qword_78298 = "BUG IN LIBDISPATCH: firehose_mig_server doesn't handle replies";
  qword_782C8 = v1;
  __break(1u);
}

size_t _dispatch_io_debug(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_10_1(a1);
  v20 = *(v4 + 24);
  v21 = v3;
  OUTLINED_FUNCTION_12_0(v3, v5, "%s[%p] = { ");
  OUTLINED_FUNCTION_4_2();
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_3_2();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_3_2();
  v15 = v12 + _dispatch_io_debug_attr(v13, v14);
  v16 = v1 - v15;
  v17 = snprintf((v2 + v15), v16, "}", v20, v21);
  v18 = v17;
  if (v16 < v17)
  {
    v18 = v16;
  }

  if (v17 < 0)
  {
    v18 = 0;
  }

  return v18 + v15;
}

uint64_t _dispatch_io_debug_attr(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 120);
  if (v2)
  {
    v4 = *(v2 + 72);
  }

  *(a1 + 72);
  *(a1 + 104);
  v16 = *(a1 + 96);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v13 = *(a1 + 64);
  v11 = *(a1 + 24);
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  v9 = *(a1 + 112);
  v8 = *(a1 + 128);
  OUTLINED_FUNCTION_12_0(*(a1 + 144), a2, "type = %s, fd = 0x%lx, %sfd_entry = %p, queue = %p, target = %s[%p], barrier_queue = %p, barrier_group = %p, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ");
  OUTLINED_FUNCTION_4_2();
  if (v6 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

size_t _dispatch_operation_debug(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_10_1(a1);
  v20 = *(v4 + 24);
  v21 = v3;
  OUTLINED_FUNCTION_12_0(v3, v5, "%s[%p] = { ");
  OUTLINED_FUNCTION_4_2();
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_3_2();
  v12 = v8 + _dispatch_object_debug_attr(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_3_2();
  v15 = v12 + _dispatch_operation_debug_attr(v13, v14);
  v16 = v1 - v15;
  v17 = snprintf((v2 + v15), v16, "}", v20, v21);
  v18 = v17;
  if (v16 < v17)
  {
    v18 = v16;
  }

  if (v17 < 0)
  {
    v18 = 0;
  }

  return v18 + v15;
}

uint64_t _dispatch_operation_debug_attr(uint64_t a1, char *a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 144);
  if (v5)
  {
    v6 = *v5;
  }

  if (v3 && *(v3 + 72))
  {
    v7 = *(v3 + 72);
  }

  if (v4)
  {
    v8 = *(v4 + 72);
  }

  *(a1 + 56);
  *(a1 + 64);
  *(a1 + 96);
  v22 = *(a1 + 88);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v19 = *(a1 + 184);
  v17 = *(a1 + 216);
  v18 = *(a1 + 200) + *(a1 + 208);
  v16 = *(a1 + 104);
  v15 = *(a1 + 24);
  v13 = *(a1 + 136);
  v14 = *(a1 + 48);
  v12 = *(a1 + 144);
  OUTLINED_FUNCTION_12_0(*(a1 + 120), a2, "type = %s %s, fd = 0x%lx, fd_entry = %p, channel = %p, queue = %p -> %s[%p], target = %s[%p], offset = %lld, length = %zu, done = %zu, undelivered = %zu, flags = %u, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ");
  OUTLINED_FUNCTION_4_2();
  if (v10 >= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void __dispatch_io_create_block_invoke_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_11_0(a1);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_5_1(v1);
    if (v4 ^ v5 | v2)
    {
      if (v2)
      {
        _os_object_dispose(v3);
      }

      else
      {
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }
}

void __dispatch_io_create_with_path_block_invoke_cold_2(int a1, char *a2)
{
  if (a1 == 1)
  {
    _os_object_dispose(a2);
  }

  else
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

void __dispatch_io_create_with_path_block_invoke_cold_3(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_11_0(a1);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_5_1(v1);
    if (v4 ^ v5 | v2)
    {
      if (v2)
      {
        _os_object_dispose(v3);
      }

      else
      {
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }
}

void __dispatch_io_create_with_io_block_invoke_cold_2(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_8_0(a1);
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_5_1(v3);
    if (v6 ^ v7 | v4)
    {
      if (!v4)
      {
        goto LABEL_14;
      }

      _os_object_dispose(v5);
    }
  }

  if (*(*v1 + 8) == v2)
  {
    return;
  }

  v9 = OUTLINED_FUNCTION_5_1(*v1);
  if (!(v6 ^ v7 | v8))
  {
    return;
  }

  if (!v8)
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
LABEL_14:
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  _os_object_dispose(v9);
}

void __dispatch_io_create_with_io_block_invoke_2_cold_5(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_8_0(a1);
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_5_1(v3);
    if (v6 ^ v7 | v4)
    {
      if (!v4)
      {
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
        goto LABEL_14;
      }

      _os_object_dispose(v5);
    }
  }

  if (*(*v1 + 8) == v2)
  {
    return;
  }

  v9 = OUTLINED_FUNCTION_5_1(*v1);
  if (!(v6 ^ v7 | v8))
  {
    return;
  }

  if (!v8)
  {
LABEL_14:
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  _os_object_dispose(v9);
}

void dispatch_io_set_high_water_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  OUTLINED_FUNCTION_9_1(v6, v7, v8, v9);
}

void dispatch_io_set_low_water_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  OUTLINED_FUNCTION_9_1(v6, v7, v8, v9);
}

void dispatch_io_set_interval_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[3] = &__block_descriptor_tmp_23;
  v7[4] = v6;
  v7[5] = v8;
  v7[6] = v9;
  dispatch_channel_async(v10, v7);
}

void _dispatch_io_set_target_queue_cold_2(uint64_t a1, void ***a2)
{
  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) > 0)
  {
    v2 = OUTLINED_FUNCTION_0_4(a1, a2);
    OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
    OUTLINED_FUNCTION_6_1(v4, v5);
    OUTLINED_FUNCTION_9_1(v6, v7, v8, v9);
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void dispatch_io_close_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[3] = &__block_descriptor_tmp_100;
  v7[4] = v6;
  dispatch_channel_async(v8, v7);
}

void dispatch_io_close_cold_4(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(0x40000000), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[3] = &__block_descriptor_tmp_27;
  v7[4] = v6;
  dispatch_channel_async(v8, v7);
}

void dispatch_io_barrier_cold_2(uint64_t a1, void ***a2)
{
  v2 = OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_7_1(COERCE_DOUBLE(1107296256), v2, v3);
  OUTLINED_FUNCTION_6_1(v4, v5);
  v7[4] = v8;
  v7[5] = v6;
  v7[3] = &__block_descriptor_tmp_36;
  dispatch_channel_async(v9, v7);
}

uint64_t _dispatch_operation_create_cold_4(uint64_t result, uint64_t a2)
{
  *(result + 136) = a2;
  v2 = *(a2 + 72);
  v3 = *(a2 + 88);
  *(result + 96) = *(a2 + 104);
  *(result + 64) = v2;
  *(result + 80) = v3;
  v4 = *(a2 + 24);
  do
  {
    v5 = v4;
    v4 = *(v4 + 24);
  }

  while (v4);
  *(result + 24) = v5;
  return result;
}

void _dispatch_operation_dispose_cold_2(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 176);
  if (v3 && !*(a1 + 56))
  {
    free(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 128);

  _Block_release(v7);
}

void ___dispatch_io_stop_block_invoke_2_cold_2(void ***block, void **a2)
{
  v3 = _dispatch_io_fds_lockq;
  *block = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___dispatch_io_stop_block_invoke_3;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a2;
  dispatch_channel_async(v3, block);
}

void _dispatch_fd_entry_cleanup_operations_cold_2(uint64_t a1, uint64_t a2, void ***a3, void **a4)
{
  dispatch_suspend(*(a1 + 64));
  v8 = *(*a2 + 72);
  *a3 = _NSConcreteStackBlock;
  a3[1] = 0x40000000;
  a3[2] = ___dispatch_fd_entry_cleanup_operations_block_invoke;
  a3[3] = &__block_descriptor_tmp_101;
  a3[4] = a1;
  a3[5] = a4;
  dispatch_channel_async(v8, a3);
}

void _dispatch_operation_should_enqueue_cold_2(uint64_t a1, dispatch_queue_t queue, int64_t *a3)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    v6 = dispatch_time(0, *a3);
    dispatch_source_set_timer(v3, v6, *a3, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___dispatch_operation_timer_block_invoke;
    v7[3] = &__block_descriptor_tmp_116;
    v7[4] = v3;
    v7[5] = a1;
    dispatch_source_set_event_handler(v3, v7);
    *(a1 + 152) = v3;
  }

  dispatch_resume(v3);
}

dispatch_queue_t _dispatch_disk_init_cold_2(int a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = qword_78280;
  v9 = _dispatch_object_alloc(_OS_dispatch_disk_vtable, 8 * qword_78280 + 136);
  *a4 = v9;
  *(v9 + 16) = -1985229329;
  *(v9 + 12) = 0;
  *(v9 + 128) = v8;
  *(v9 + 24) = &off_74600;
  *(v9 + 104) = a1;
  *(v9 + 48) = 0;
  *(v9 + 56) = v9 + 48;
  *(v9 + 64) = 0;
  snprintf(a2, 0x2DuLL, "com.apple.libdispatch-io.deviceq.%d", a1);
  result = dispatch_queue_create(a2, 0);
  *(v9 + 72) = result;
  v11 = *a3;
  *(v9 + 112) = *a3;
  if (v11)
  {
    *(v11 + 120) = v9 + 112;
  }

  *a3 = v9;
  *(v9 + 120) = a3;
  return result;
}

void ___dispatch_operation_deliver_data_block_invoke_cold_2(uint64_t a1, dispatch_object_s **a2)
{
  dispatch_resume(*(*(a1 + 56) + 64));
  v3 = *a2;

  dispatch_release(v3);
}

dispatch_data_s *dispatch_data_create_alloc(unint64_t a1, void *a2)
{
  if (!a1)
  {
    v5 = 0;
    result = &_dispatch_data_empty;
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 < 0xFFFFFFFFFFFFFFB0)
  {
    result = _dispatch_object_alloc(_OS_dispatch_data_vtable, a1 + 80);
    *(result + 9) = 0;
    *(result + 3) = &off_74600;
    *(result + 2) = -1985229329;
  }

  else
  {
    result = 0;
  }

  v5 = result + 80;
  *(result + 7) = &__block_literal_global_4154;
  *(result + 8) = a1;
  *(result + 6) = result + 80;
  if (a2)
  {
LABEL_6:
    *a2 = v5;
  }

  return result;
}

uint64_t _dispatch_data_debug(uint64_t a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "data[%p] = { ", a1);
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v10)
  {
    snprintf(&__str[v8], __size - v8, "composite, size = %zd, num_records = %zd ", *(a1 + 64), v10);
    OUTLINED_FUNCTION_13();
    if (v12 < 0)
    {
      v11 = 0;
    }

    v13 = v11 + v8;
    if (*(a1 + 48))
    {
      snprintf(&__str[v13], __size - v13, ", flatbuf = %p ", *(a1 + 48));
      OUTLINED_FUNCTION_13();
      if (v15 < 0)
      {
        v14 = 0;
      }

      v13 += v14;
    }

    v16 = 0;
    v17 = (a1 + 96);
    do
    {
      v18 = snprintf(&__str[v13], __size - v13, "record[%zd] = { from = %zd, length = %zd, data_object = %p }, ", v16, *(v17 - 1), *v17, *(v17 - 2));
      v19 = v18;
      if (__size - v13 < v18)
      {
        v19 = __size - v13;
      }

      if (v18 < 0)
      {
        v19 = 0;
      }

      v13 += v19;
      ++v16;
      v17 += 3;
    }

    while (*(a1 + 72) > v16);
  }

  else
  {
    snprintf(&__str[v8], __size - v8, "leaf, size = %zd, buf = %p ", *(a1 + 64), *(a1 + 48));
    OUTLINED_FUNCTION_13();
    if (v21 < 0)
    {
      v20 = 0;
    }

    v13 = v20 + v8;
  }

  v22 = __size - v13;
  v23 = snprintf(&__str[v13], v22, "}");
  v24 = v23;
  if (v22 < v23)
  {
    v24 = v22;
  }

  if (v23 < 0)
  {
    v24 = 0;
  }

  return v24 + v13;
}

dispatch_data_t dispatch_data_create_map(dispatch_data_t data, const void **buffer_ptr, size_t *size_ptr)
{
  v5 = *(data + 8);
  if (!v5)
  {
    v11 = 0;
    v6 = &_dispatch_data_empty;
    if (buffer_ptr)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v6 = data;
  v7 = *(data + 9);
  if (v7 == 1)
  {
    v9 = *(data + 10);
    v8 = *(data + 11);
    if (!*(v9 + 9))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    v9 = data;
    if (!v7)
    {
LABEL_4:
      v10 = *(v9 + 6);
      goto LABEL_5;
    }
  }

  v10 = *(v9 + 6);
  if (v10)
  {
LABEL_5:
    if (v10)
    {
      v11 = (v10 + v8);
      dispatch_retain(data);
      if (!buffer_ptr)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v12 = _dispatch_data_flatten(data);
  v11 = v12;
  if (v12)
  {
    v6 = dispatch_data_create(v12, v5, 0, &__block_literal_global);
    if (!buffer_ptr)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
  if (buffer_ptr)
  {
LABEL_14:
    *buffer_ptr = v11;
  }

LABEL_15:
  if (size_ptr)
  {
    *size_ptr = v5;
  }

  return v6;
}

char *dispatch_data_get_flattened_bytes_4libxpc(void *a1)
{
  if (!a1[8])
  {
    return 0;
  }

  v1 = a1;
  v2 = a1[9];
  if (v2 == 1)
  {
    v1 = a1[10];
    v3 = a1[11];
    if (!*(v1 + 72))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if (!v2)
    {
LABEL_4:
      v4 = *(v1 + 48);
      goto LABEL_5;
    }
  }

  v4 = *(v1 + 48);
  if (v4)
  {
LABEL_5:
    if (v4)
    {
      return (v4 + v3);
    }
  }

  result = _dispatch_data_flatten(v1);
  if (result)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit((v1 + 48), &v6, result, memory_order_release, memory_order_relaxed);
    if (v6)
    {
      free(result);
      result = v6;
    }

    result += v3;
  }

  return result;
}

void dispatch_data_create_subrange_cold_1(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
  qword_782C8 = a1;
  __break(1u);
}

void dispatch_data_copy_region_cold_1(uint64_t a1, uint64_t a2)
{
  qword_78298 = "BUG IN LIBDISPATCH: dispatch_data_copy_region out of bounds";
  qword_782C8 = a1 + a2;
  __break(1u);
}

uint64_t dispatch_time_to_nsecs(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  switch(a1)
  {
    case 0x8000000000000000:
      a1 = mach_continuous_time();
LABEL_11:
      v6 = 2;
      goto LABEL_16;
    case 0xFFFFFFFFFFFFFFFELL:
      a1 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      break;
    case 0xFFFFFFFFFFFFFFFFLL:
      v5 = 0;
      *a2 = 0;
      goto LABEL_21;
    case 0uLL:
      a1 = mach_absolute_time();
LABEL_15:
      v6 = 1;
LABEL_16:
      *a2 = v6;
      if (_dispatch_host_time_mach2nano)
      {
        a1 = _dispatch_host_time_mach2nano(a1);
      }

      else if (a1)
      {
        OUTLINED_FUNCTION_0_5();
        if (!v8 & v7)
        {
          v5 = 1;
          a1 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_1_3();
        if (!(!v8 & v7))
        {
          v5 = 1;
          a1 = 125 * v9 / 3;
          goto LABEL_21;
        }

        a1 = OUTLINED_FUNCTION_2_3(v9);
      }

      goto LABEL_8;
    default:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (a1 >> 62)
        {
          a1 = -1;
        }

        goto LABEL_15;
      }

      if ((a1 & 0x4000000000000000) == 0)
      {
        a1 &= 0x3FFFFFFFFFFFFFFFuLL;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_3_3();
      if (v8)
      {
        a1 = -v11;
      }

      else
      {
        a1 = v12;
      }

      break;
  }

  *a2 = 3;
LABEL_8:
  v5 = 1;
LABEL_21:
  *a3 = a1;
  return v5;
}

uint64_t dispatch_time_from_nsec(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a2;
  }

  if (_dispatch_host_time_nano2mach)
  {
    v5 = _dispatch_host_time_nano2mach(v4);
  }

  else if (a2 > 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (a2 >= 0x5555555555555555)
  {
    v5 = 3 * (v4 / 0x7D);
  }

  else
  {
    v5 = 3 * v4 / 0x7D;
  }

  if (v5 > 0x3FFFFFFFFFFFFFFELL)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v5 | 0x8000000000000000;
  if (v5 > 0x3FFFFFFFFFFFFFFELL)
  {
    v7 = -1;
  }

  v8 = -1;
  if (a2 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v8 = -v4;
  }

  if (a1 == 2)
  {
    v8 = v7;
  }

  if (a1 == 1)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

unint64_t _dispatch_timeout(unint64_t result)
{
  v1 = result == 0x8000000000000000 || result == 0;
  if (v1)
  {
    return 0;
  }

  if (result == -1)
  {
    return result;
  }

  if (result == -2)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    if ((result & 0x4000000000000000) != 0)
    {
      OUTLINED_FUNCTION_3_3();
      if (v1)
      {
        v9 = -v7;
      }

      else
      {
        v9 = v8;
      }

      v10 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      if (v9 >= v10)
      {
        return v9 - v10;
      }

      else
      {
        return 0;
      }
    }

    v2 = result & 0x3FFFFFFFFFFFFFFFLL;
    v3 = mach_continuous_time();
  }

  else
  {
    v2 = result >> 62 ? -1 : result;
    v3 = mach_absolute_time();
  }

  if (v2 <= v3)
  {
    return 0;
  }

  v4 = _dispatch_host_time_mach2nano;
  if (_dispatch_host_time_mach2nano)
  {

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    if (!v1 & v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_1_3();
      if (v5)
      {
        return OUTLINED_FUNCTION_2_3(v6);
      }

      else
      {
        return 125 * v6 / 3;
      }
    }
  }
}

unint64_t _dispatch_mach_host_time_mach2nano(unint64_t result)
{
  v1 = result;
  if (result)
  {
    if ((_dispatch_host_time_data_1 & 1) == 0)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v1 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v2 = v1 * *&_dispatch_host_time_data_0 + 0.5;
        if (v2 < 9.22337204e18)
        {
          return v2;
        }
      }
    }
  }

  return result;
}

unint64_t _dispatch_mach_host_time_nano2mach(unint64_t result)
{
  v1 = result;
  if (result)
  {
    if ((_dispatch_host_time_data_1 & 1) == 0)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v1 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v2 = v1 / *&_dispatch_host_time_data_0 + 0.5;
        if (v2 < 9.22337204e18)
        {
          return v2;
        }
      }
    }
  }

  return result;
}

uint64_t _dispatch_time_init_cold_1(uint64_t result, unsigned int a2)
{
  *&_dispatch_host_time_data_0 = result / a2;
  _dispatch_host_time_data_1 = result == a2;
  _dispatch_host_time_mach2nano = _dispatch_mach_host_time_mach2nano;
  _dispatch_host_time_nano2mach = _dispatch_mach_host_time_nano2mach;
  return result;
}

uint64_t dispatch_benchmark_f(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (dispatch_benchmark_f_pred == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  dispatch_once_f(&dispatch_benchmark_f_pred, &dispatch_benchmark_f_bdata, _dispatch_benchmark_init);
  if (!a1)
  {
    return 0;
  }

LABEL_3:
  mach_absolute_time();
  v6 = a1;
  do
  {
    a3(a2);
    --v6;
  }

  while (v6);
  mach_absolute_time();
  return __udivti3() - qword_74AE0;
}