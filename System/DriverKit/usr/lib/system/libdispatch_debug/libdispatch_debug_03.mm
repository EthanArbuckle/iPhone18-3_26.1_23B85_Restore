void _dispatch_apply_invoke_and_wait(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = 2;
  i = 0;
  v15 = 1;
  v14 = 1;
  v16 = 1;
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  v17 = add_explicit;
  v12 = add_explicit;
  v18 = add_explicit;
  v8 = add_explicit < *(a1 + 48);
  v23 = v8;
  v22 = 210;
  if (!v8)
  {
    _dispatch_abort(v22, v23, a3, a4, a5, a6, a7, a8);
  }

  v11[0] = v21;
  v11[1] = v20;
  v11[2] = v18;
  _dispatch_apply_set_attr_behavior(*(v21 + 56));
  v29 = (*(v21 + 32) + 8 * v18);
  v28 = v11;
  v27 = _dispatch_apply_invoke3;
  if (*v29 != -1)
  {
    dispatch_once_f(v29, v28, v27);
  }

  _dispatch_apply_clear_attr_behavior(*(v21 + 56));
  if ((v20 & 2) != 0)
  {
    for (i = 0; i < *(v21 + 48); ++i)
    {
      if (i != v18)
      {
        v26 = (*(v21 + 32) + 8 * i);
        v25 = 0;
        v24 = _dispatch_no_op;
        if (*v26 != -1)
        {
          dispatch_once_f(v26, v25, v24);
        }
      }
    }
  }

  if (atomic_fetch_add_explicit((v21 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v30 = v21;
    if (*(v21 + 32))
    {
      free(*(v30 + 32));
    }

    if (*(v30 + 56))
    {
      v9 = *(v30 + 56);
      dispatch_apply_attr_destroy();
      free(*(v30 + 56));
    }

    v31 = v30;
    v32 = v30;
    v35 = v30;
    v34 = _dispatch_thread_getspecific(22);
    if (v34)
    {
      v10 = *(v34 + 8) + 1;
    }

    else
    {
      v10 = 1;
    }

    v33 = v10;
    if (v10 <= _dispatch_continuation_cache_limit)
    {
      *(v35 + 16) = v34;
      *(v35 + 8) = v33;
      _dispatch_thread_setspecific(22, v35);
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    v32 = v36;
    if (v36)
    {
      _dispatch_continuation_free_to_cache_limit(v32);
    }
  }
}

dispatch_source_t dispatch_source_create(dispatch_source_type_t type, uintptr_t handle, uintptr_t mask, dispatch_queue_t queue)
{
  v24 = (*(type + 4))(type, handle, mask);
  if (!v24)
  {
    return 0;
  }

  v23 = _dispatch_object_alloc(_OS_dispatch_source_vtable, 0x78uLL, v4, v5, v6, v7, v8, v9);
  v22 = 0;
  if (*v24)
  {
    v22 = *v24;
  }

  if ((*(v22 + 10) >> 1))
  {
    v14 = 0x4000000;
  }

  else
  {
    v14 = 0x400000;
  }

  _dispatch_queue_init(v23, v14, 1, 0x180000000000000, v10, v11, v12, v13);
  *(v23 + 72) = "source";
  *(v23 + 88) = v24;
  *(v24 + 8) = ~v23;
  if (queue)
  {
    if ((*(queue + 87) & 8) != 0 && (*(v24 + 29) & 2) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target source to the cooperative root queue - not implemented";
      qword_E42C0 = v23;
      __break(1u);
      JUMPOUT(0x59E84);
    }

    _dispatch_retain(queue);
  }

  else
  {
    queue = &off_E0680;
  }

  *(v23 + 24) = queue;
  if ((*(v24 + 29) & 2) != 0 && (*(v24 + 30) & 0x10) != 0)
  {
    dispatch_source_set_timer(v23, 0, handle, 0xFFFFFFFFFFFFFFFFLL);
  }

  _dispatch_object_debug(v23, "%s", v15, v16, v17, v18, v19, v20, "dispatch_source_create");
  return v23;
}

void dispatch_source_set_timer(dispatch_source_t source, dispatch_time_t start, uint64_t interval, uint64_t leeway)
{
  v7 = *(source + 11);
  if ((*(v7 + 29) & 2) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Attempt to set timer on a non-timer source";
    qword_E42C0 = source;
    __break(1u);
    JUMPOUT(0x59FA4);
  }

  if ((*(v7 + 30) & 0x10) != 0)
  {
    v5 = _dispatch_interval_config_create(start, interval, leeway, v7);
  }

  else
  {
    v5 = _dispatch_timer_config_create(start, interval, leeway, v7);
  }

  if (_dispatch_timer_flags_to_clock(*(v7 + 30)) != v5[6] && *(v7 + 28) == -20)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Attempting to modify timer clock";
    __break(1u);
    JUMPOUT(0x5A04CLL);
  }

  v9 = v5[6];
  v6 = atomic_exchange_explicit((v7 + 104), v5, memory_order_release);
  if (v6)
  {
    free(v6);
  }

  v4 = 0;
  if (*source)
  {
    v4 = *source;
  }

  (*(v4 + 64))(source, 0, 2);
}

void _dispatch_source_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_dispose");
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v12 = __swp(0, (a1[11] + 56));
  if (v12)
  {
    _dispatch_source_handler_dispose(v12);
  }

  v11 = __swp(0, (a1[11] + 40));
  if (v11)
  {
    _dispatch_source_handler_dispose(v11);
  }

  v10 = __swp(0, (a1[11] + 48));
  if (v10)
  {
    _dispatch_source_handler_dispose(v10);
  }

  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;
  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t _dispatch_source_xref_dispose(uint64_t *a1)
{
  v4 = *(a1 + 20);
  v3 = 0;
  if ((v4 & 0x4000000) != 0)
  {
    v3 = 0;
    if ((v4 & 0x10000000) == 0)
    {
      v3 = *(a1[11] + 48) != 0;
    }
  }

  if (v3)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a source that has not been cancelled, but has a mandatory cancel handler";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x5AAF8);
  }

  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  return (*(v2 + 64))(a1, 0, 2);
}

uintptr_t dispatch_source_get_mask(dispatch_source_t source)
{
  v2 = *(source + 11);
  if ((*(source + 20) & 0x10000000) != 0)
  {
    return 0;
  }

  if ((*(v2 + 29) & 0x10) != 0)
  {
    return 0x80000000;
  }

  if ((*(v2 + 29) & 2) != 0)
  {
    return *(v2 + 30);
  }

  return *(v2 + 32);
}

uintptr_t dispatch_source_get_handle(dispatch_source_t source)
{
  v3 = *(source + 11);
  if (*(v3 + 28) != -20)
  {
    return *(v3 + 24);
  }

  v2 = _dispatch_timer_flags_to_clock(*(v3 + 30));
  if (!v2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 2;
  }

  if (v2 != 2)
  {
    return *(v3 + 24);
  }

  return 3;
}

uintptr_t dispatch_source_get_data(dispatch_source_t source)
{
  v3 = *(source + 11);
  if ((*(v3 + 29) & 0x10) != 0)
  {
    return 0x80000000;
  }

  if ((*(v3 + 29) & 4) != 0)
  {
    return *(v3 + 64);
  }

  else
  {
    return *(v3 + 64);
  }
}

uint64_t dispatch_source_get_extended_data(uint64_t a1, uintptr_t *a2, unint64_t a3)
{
  v8 = *(a1 + 88);
  if (a3 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  if (a3)
  {
    v6 = 0;
    if ((*(v8 + 29) & 4) != 0)
    {
      v5 = *(v8 + 64);
      data = v5;
      v6 = HIDWORD(v5);
    }

    else
    {
      data = dispatch_source_get_data(a1);
    }

    if (a3 >= 8)
    {
      *a2 = data;
    }

    if (a3 >= 0x10)
    {
      a2[1] = v6;
    }

    if (a3 > 0x10)
    {
      __memset_chk();
    }
  }

  return v4;
}

void dispatch_source_merge_data(dispatch_source_t source, uintptr_t value)
{
  v5 = *(source + 11);
  if ((*(source + 20) & 0x10800000) == 0)
  {
    v4 = *(v5 + 28);
    switch(v4)
    {
      case -23:
        *(v5 + 72) = value;
        break;
      case -22:
        atomic_fetch_or_explicit((v5 + 72), value, memory_order_relaxed);
        break;
      case -21:
        atomic_fetch_add_explicit((v5 + 72), value, memory_order_relaxed);
        break;
      default:
        v2 = *(v5 + 28);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid source type";
        qword_E42C0 = v2;
        __break(1u);
        JUMPOUT(0x5B0E8);
    }

    v3 = 0;
    if (*source)
    {
      v3 = *source;
    }

    (*(v3 + 64))(source, 0, 2);
  }
}

void _dispatch_source_set_handler(unint64_t a1, const void *a2, uint64_t a3, char a4)
{
  v43 = a4 & 1;
  v56 = _dispatch_thread_getspecific(22);
  if (v56)
  {
    _dispatch_thread_setspecific(22, *(v56 + 16));
    v53 = v56;
  }

  else
  {
    v53 = _dispatch_continuation_alloc_from_heap();
  }

  if (a2)
  {
    v42 = 0;
    if (a3)
    {
      v42 = 4;
    }

    if (v43)
    {
      v55 = _dispatch_Block_copy(a2);
      v36 = _Block_get_invoke_fn(a2);
      v37 = 0;
      if (v36)
      {
        v37 = v36;
      }

      if (v37 == _dispatch_block_special_invoke)
      {
        *v53 = v42 | 0x110;
        v53[5] = v55;
        _dispatch_continuation_init_slow(v53, a1, 1073741888);
      }

      else
      {
        v34 = _Block_get_invoke_fn(a2);
        v35 = 0;
        if (v34)
        {
          v35 = v34;
        }

        v54 = v35;
        if ((v42 & 4) != 0)
        {
          v54 = _dispatch_call_block_and_release;
        }

        *v53 = v42 | 0x110;
        v53[4] = v54;
        v53[5] = v55;
        v53[3] = 0;
        _dispatch_thread_getspecific(0);
        v27 = v53[3];
        _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v11, v12, v13, v14, v15, v16, v17, 589);
        v57 = v53[3];
        if (v57 != -1)
        {
          if (v57)
          {
            v33 = *(v57 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        v53[1] = 0;
      }
    }

    else
    {
      v32 = *(a1 + 32);
      *v53 = v42 | 0x140;
      v53[4] = a2;
      v53[5] = v32;
      v53[3] = 0;
      _dispatch_thread_getspecific(0);
      v28 = v53[3];
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v18, v19, v20, v21, v22, v23, v24, 589);
      v58 = v53[3];
      if (v58 != -1)
      {
        if (v58)
        {
          v31 = *(v58 + 32);
        }

        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v53[1] = 0;
    }
  }

  else
  {
    *v53 = 256;
    v53[4] = 0;
  }

  for (i = *(a1 + 56); ; i = v26)
  {
    if ((~i & 0x180000000000000) != 0)
    {
      v48 = 0;
      goto LABEL_39;
    }

    v25 = i;
    v26 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v26, i + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v26 == v25)
    {
      break;
    }
  }

  LOBYTE(v30) = 1;
  if ((i & 0xFF80000000000000) != 0)
  {
    v30 = (HIBYTE(i) >> 1) & 1;
  }

  if (v30)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
    __break(1u);
    JUMPOUT(0x5BEBCLL);
  }

  v48 = 1;
LABEL_39:
  if (v48 == 1)
  {
    v49 = v53;
    if (v53[4])
    {
      if ((*v53 & 0x40) != 0)
      {
        v53[5] = *(a1 + 32);
      }
    }

    else
    {
      v51 = _dispatch_thread_getspecific(22);
      if (v51)
      {
        v29 = *(v51 + 8) + 1;
      }

      else
      {
        v29 = 1;
      }

      if (v29 <= _dispatch_continuation_cache_limit)
      {
        v53[2] = v51;
        *(v53 + 2) = v29;
        _dispatch_thread_setspecific(22, v53);
        v52 = 0;
      }

      else
      {
        v52 = v53;
      }

      if (v52)
      {
        _dispatch_continuation_free_to_cache_limit(v52);
      }

      v49 = 0;
    }

    v50 = atomic_exchange_explicit((*(a1 + 88) + 8 * a3 + 40), v49, memory_order_release);
    if (v50)
    {
      _dispatch_source_handler_dispose(v50);
    }

    _dispatch_lane_resume(a1, 0);
  }

  else
  {
    v38 = *(a1 + 80);
    if ((HIBYTE(v38) >> 2))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change a handler of this source after it has been activated";
      qword_E42C0 = a3;
      __break(1u);
      JUMPOUT(0x5C100);
    }

    if ((v38 & 0x10000000) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      if (a3 == 2)
      {
        _dispatch_bug_deprecated("Setting registration handler after the source has been activated", v4, v5, v6, v7, v8, v9, v10);
      }

      else if (!a2)
      {
        _dispatch_bug_deprecated("Clearing handler after the source has been activated", v4, v5, v6, v7, v8, v9, v10);
      }
    }

    v53[6] = a3;
    _dispatch_barrier_trysync_or_async_f(a1, v53, _dispatch_source_set_handler_slow, 0);
  }
}

void dispatch_source_set_event_handler_f(dispatch_source_t source, dispatch_function_t handler)
{
  v2 = 0;
  if (handler)
  {
    v2 = handler;
  }

  _dispatch_source_set_handler(source, v2, 0, 0);
}

void dispatch_source_set_mandatory_cancel_handler(uint64_t a1, void *a2)
{
  v4 = *(a1 + 80);
  do
  {
    if ((v4 & 0xFBBFFFFF | 0x4000000) == v4)
    {
      break;
    }

    v2 = v4;
    v3 = v4;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v3, v4 & 0xFBBFFFFF | 0x4000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v4 = v3;
    }
  }

  while (v3 != v2);
  dispatch_source_set_cancel_handler(a1, a2);
}

void dispatch_source_set_cancel_handler_f(dispatch_source_t source, dispatch_function_t handler)
{
  v2 = 0;
  if (handler)
  {
    v2 = handler;
  }

  _dispatch_source_set_handler(source, v2, 1, 0);
}

void dispatch_source_set_mandatory_cancel_handler_f(uint64_t a1, void (__cdecl *a2)(void *))
{
  v4 = *(a1 + 80);
  do
  {
    if ((v4 & 0xFBBFFFFF | 0x4000000) == v4)
    {
      break;
    }

    v2 = v4;
    v3 = v4;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v3, v4 & 0xFBBFFFFF | 0x4000000, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v4 = v3;
    }
  }

  while (v3 != v2);
  dispatch_source_set_cancel_handler_f(a1, a2);
}

void dispatch_source_set_registration_handler_f(dispatch_source_t source, dispatch_function_t handler)
{
  v2 = 0;
  if (handler)
  {
    v2 = handler;
  }

  _dispatch_source_set_handler(source, v2, 2, 0);
}

BOOL _dispatch_source_will_reenable_kevent_4NW(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (((v3 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_source_will_reenable_kevent_4NW not called from within the event handler";
    __break(1u);
    JUMPOUT(0x5C704);
  }

  v5 = *(*(a1 + 88) + 16);
  v2 = 0;
  if (v5)
  {
    v2 = 0;
    if ((v5 & 1) == 0)
    {
      return (v5 & 2) == 0;
    }
  }

  return v2;
}

void _dispatch_source_activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = 0;
  v22 = *(a1 + 88);
  v21 = 0;
  v20 = 0;
  v28 = a1;
  v26 = *(a1 + 80);
  v27 = v26;
  v25 = v26;
  if ((HIBYTE(v26) >> 4))
  {
    *(v24 + 116) |= 1u;
    _dispatch_source_refs_finalize_unregistration(v24, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v33 = v22;
    v32 = 0;
    v30 = *(v22 + 40);
    v31 = v30;
    v29 = v30;
    v23 = v30;
    if (v30)
    {
      v38 = v23;
      v37 = 0;
      v66 = v23;
      if (*v23 > 0xFFF)
      {
        v18 = 0;
        if (*v38)
        {
          v18 = *v38;
        }

        if ((*(v18 + 16) & 0xF0) == 0x10)
        {
          v35 = *(v38 + 20);
          v36 = v35;
          v34 = v35;
          v37 = v35;
          v39 = (v35 & 0x80000) != 0;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = (*v38 & 2) != 0;
      }

      if (v39)
      {
        v51 = v24;
        v50 = 0x80000;
        v48 = 0x80000;
        v47 = 0x80000;
        v49 = 0x80000;
        v43 = 0x80000;
        v42 = 0x80000;
        v44 = 0x80000;
        v41 = atomic_fetch_or_explicit((v24 + 80), 0x80000u, memory_order_relaxed);
        v45 = v41;
        v40 = v41;
        v46 = v41 | 0x80000;
      }

      if ((*(v23 + 11) & 0x10) != 0)
      {
        goto LABEL_17;
      }

      v52 = *(v24 + 84);
      v17 = 0;
      if ((v52 & 0x20000000) == 0)
      {
        v17 = (v52 & 0x44000FFF) != 0;
      }

      if (!v17)
      {
LABEL_17:
        v55 = v23[1];
        v54 = 0;
        v65 = (v55 & 0x20000000) == 0;
        v64 = 458;
        if ((v55 & 0x20000000) != 0)
        {
          _dispatch_abort(v64, v65, a3, a4, a5, a6, a7, a8);
        }

        v53 = v55;
        v63 = (v55 & 0x3FFF00) >> 8;
        v8 = (v55 & 0x3FFF00) >> 8;
        v9 = __clz(__rbit32(v8));
        if (v8)
        {
          v10 = v9 + 1;
        }

        else
        {
          v10 = 0;
        }

        v53 |= v10 << 8;
        *(v24 + 84) = v53;
      }

      if ((*v23 & 0x40) != 0)
      {
        v23[5] = *(v24 + 32);
      }
    }

    else
    {
      _dispatch_bug_deprecated("dispatch source activated with no event handler set", a2, a3, a4, a5, a6, a7, a8);
    }

    _dispatch_lane_activate(v24);
    if (((*(v22 + 29) & 1) != 0 || (*(v22 + 29) & 2) != 0) && (*(v24 + 116) & 1) == 0)
    {
      v21 = _dispatch_queue_compute_priority_and_wlh(v24, &v20);
      if (v21)
      {
        v56 = v20;
        if (v20 && v56 != -4)
        {
          v16 = 0;
          if (*v56)
          {
            v16 = *v56;
          }

          if (*(v16 + 16) == 18)
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
        }

        v19 = v57;
        if (v57 && *(v22 + 28) == -20 && *(v22 + 24) <= 5u)
        {
          if (!v57[6])
          {
            v19[6] = _dispatch_calloc_typed();
          }

          *(v22 + 29) |= 1u;
          v59 = v20;
          if (v20)
          {
            if (v59 != -4)
            {
              v58 = v59;
              v78 = v59;
              v75 = 1;
              v74 = 1;
              v76 = 1;
              v70 = 1;
              v69 = 1;
              v71 = 1;
              add_explicit = atomic_fetch_add_explicit((v59 + 96), 1u, memory_order_relaxed);
              v72 = add_explicit;
              v67 = add_explicit;
              v73 = add_explicit + v76;
              v77 = add_explicit + v76;
              if ((add_explicit + v76) <= 0)
              {
                qword_E4290 = "API MISUSE: Resurrection of an object";
                __break(1u);
                JUMPOUT(0x5CDE4);
              }
            }
          }

          v62 = v22;
          v61 = v20;
          v60 = 0;
          v83 = v22;
          v82 = v20;
          v81 = v20;
          v80 = v20;
          *(v22 + 16) = v20;
          v79 = v81;
        }

        _dispatch_source_install(v24, v20, v21, v11, v12, v13, v14, v15);
      }
    }
  }
}

void _dispatch_source_refs_finalize_unregistration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = *(a1 + 80); ; i = v9)
  {
    if ((i & 0x1FFFFFFF | 0x80000000) == i)
    {
      v12 = i;
      goto LABEL_7;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v9, i & 0x1FFFFFFF | 0x80000000, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      break;
    }
  }

  v12 = i;
LABEL_7:
  if ((v12 & 0x80000000) != 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Source finalized twice";
    qword_E42C0 = v12;
    __break(1u);
    JUMPOUT(0x5CFD4);
  }

  if ((v12 & 0x20000000) != 0)
  {
    _dispatch_wake_by_address();
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_refs_finalize_unregistration");
  _dispatch_release_tailcall(a1);
}

void _dispatch_source_install(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a3;
  v20 = *(a1 + 88);
  if (*(a1 + 116))
  {
    _dispatch_abort(665, (*(a1 + 116) & 1) == 0, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 116) = *(a1 + 116) & 0xFFFE | 1;
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_install");
  if ((_dispatch_unote_register(v20, a2, v21, v8, v9, v10, v11, v12) & 1) == 0)
  {
    _dispatch_source_refs_finalize_unregistration(a1, v13, v14, v15, v16, v17, v18, v19);
  }
}

void _dispatch_source_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a1;
  v60 = a2;
  i = a3;
  v58 = 8;
  v57 = _dispatch_source_invoke2;
  v56 = a1;
  v55[8] = 0;
  *v55 = (a3 & 1) == 0;
  v54 = 0;
  if ((a3 & 3) == 0)
  {
    *(v56 + 16) = -1985229329;
    v53 = _dispatch_thread_getspecific(20);
    v52 = v56;
    v71 = v53;
    v70 = v56;
    v69 = 0;
    v68 = 0;
    v138 = v53;
    v137 = v56;
  }

  i |= v58;
  if ((i & 2) != 0)
  {
    v54 = 0x40020000000001;
  }

  else
  {
    v85 = v56;
    v84 = i;
    v83 = (*(v56 + 80) - 1) << 41;
    v189 = _dispatch_thread_getspecific(3);
    v82 = v189 & 0xFFFFFFFC | 0x20000000000000;
    v80 = 0;
    v79 = 0;
    v78 = 0;
    v81 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v81 |= 0x4000000000uLL;
      v78 = 0;
    }

    else if ((v84 & 0x40000) != 0)
    {
      v78 = 0x4000000000;
    }

    else
    {
      v81 |= 0x4000000000uLL;
      v78 = 1;
    }

    v90 = (v84 & 2) == 0;
    v89 = 1331;
    if ((v84 & 2) != 0)
    {
      _dispatch_abort(v89, v90, v8, v9, v10, v11, v12, v13);
    }

    v142 = _dispatch_thread_getspecific(25);
    v148 = v142 & 0xF00;
    v141 = v148 >> 8;
    v151 = v142 & 0xF000;
    v140 = v151 >> 12;
    v154 = v142 & 0xF0000;
    v139 = (v142 & 0xF0000u) >> 16;
    if (v148 >> 8 <= v151 >> 12)
    {
      v44 = v140;
    }

    else
    {
      v44 = v141;
    }

    if (v44 <= v139)
    {
      v42 = v139;
    }

    else
    {
      if (v141 <= v140)
      {
        v43 = v140;
      }

      else
      {
        v43 = v141;
      }

      v42 = v43;
    }

    v77 = v42;
LABEL_22:
    v76 = 0;
    v75 = (v85 + 56);
    v80 = *(v85 + 56);
    do
    {
      v79 = v80;
      if ((v80 & v81) != 0)
      {
        if (!v78)
        {
          break;
        }

        v79 ^= v78;
      }

      else
      {
        v144 = v80;
        v143 = v77;
        v155 = v80;
        v41 = 0;
        if ((v80 & 0x1000000000) != 0)
        {
          v157 = v144 & 0x700000000;
          v41 = v143 < (v144 & 0x700000000) >> 32;
        }

        if (v41)
        {
          v146 = v80;
          v156 = v80 & 0x700000000;
          v145 = (v80 & 0x700000000) >> 32;
          v160 = _dispatch_thread_getspecific(3);
          v159 = v145;
          if (_dispatch_set_qos_class_enabled)
          {
            v162 = v159;
            v161 = 0;
            if (v159)
            {
              v161 = 1 << (v162 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v164 = v145;
          v163 = _dispatch_thread_getspecific(25);
          v165 = v163 & 0xF0000;
          if (v145 > (v163 & 0xF0000) >> 16)
          {
            v163 = v163 & 0xFFF0FFFF | (v164 << 16);
            _dispatch_thread_setspecific(25, v163);
          }

          v77 = v145;
          goto LABEL_22;
        }

        v79 = v79 & 0x7700000001 | v82;
        v147 = v80;
        if ((v80 & 0x10000000000) != 0 || v80 + v83 < 0x20000000000000)
        {
          v79 |= 0x40000000000000uLL;
        }
      }

      v74 = v79;
      v16 = v80;
      v17 = v80;
      atomic_compare_exchange_strong_explicit(v75, &v17, v79, memory_order_acquire, memory_order_acquire);
      if (v17 != v16)
      {
        v80 = v17;
      }

      v73 = v17 == v16;
      v76 = v17 == v16;
    }

    while (v17 != v16);
    v72 = v76;
    v88 = (v80 & v78) == v78;
    v87 = 1364;
    if ((v80 & v78) != v78)
    {
      _dispatch_abort(v87, v88, v14, v15, a5, a6, a7, a8);
    }

    if ((v80 & v81) != 0)
    {
      v86 = 0;
    }

    else
    {
      v79 &= v78 | 0x60000000000000;
      v80 &= 0x3FFE0000000000uLL;
      v86 = v79 - v80;
    }

    v54 = v86;
  }

  if (v54)
  {
    v51 = 0;
    if ((i & 0x40000) != 0)
    {
      v51 = 0;
    }

    else
    {
      v93 = *(v56 + 84);
      v92 = _dispatch_thread_getspecific(25);
      v91 = v92;
      if (v92)
      {
        if ((v93 & 0xFFF) != 0)
        {
          v91 &= 0x880F0000;
          if ((v92 & 0xFFF) > (v93 & 0xFFFu))
          {
            v40 = v92 & 0xFFF;
          }

          else
          {
            v40 = v93 & 0xFFF;
          }

          v91 |= v40;
          v152 = v93 & 0xF000;
          v149 = v91 & 0xF00;
          if (v152 >> 12 > v149 >> 8)
          {
            v93 &= 0x4400F000u;
          }

          else
          {
            v93 &= 0x40000000u;
          }

          v91 |= v93;
        }

        else
        {
          if ((v91 & 0xFFF) != 0)
          {
            v91 |= 0x40000000u;
          }

          v153 = v93 & 0xF000;
          v150 = v91 & 0xF00;
          if (v153 >> 12 > v150 >> 8)
          {
            v91 = v91 & 0xFFFF0FFF | v93 & 0x400F000;
          }
        }
      }

      else
      {
        v91 = v93 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v91);
      v51 = v92;
    }

    if ((i & 0x100000) != 0)
    {
      v65 = v61;
      v63 = *(v61 + 80);
      v64 = v63;
      v62 = v63;
      if ((v63 & 0x400000) != 0)
      {
        v105 = v61;
        v104 = 0x400000;
        v102 = -4194305;
        v101 = -4194305;
        v103 = -4194305;
        v97 = -4194305;
        v96 = -4194305;
        v98 = -4194305;
        v95 = atomic_fetch_and_explicit((v61 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v99 = v95;
        v94 = v95;
        v100 = v95 & 0xFFBFFFFF;
      }
    }

    v50 = v56;
    v108 = v56;
    v107 = i;
    v171 = v56;
    v170 = 256;
    v177 = 1;
    v176 = 738;
    v175 = v56;
    v173 = *(v56 + 80);
    v174 = v173;
    v172 = v173;
    v169 = v173 & 0x30000;
    v106 = (v173 & 0x30000) << 8;
    if (v106)
    {
      v107 = v107 & 0xFCFFFFFF | v106;
    }

    for (i = v107; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v60);
      }

      v49 = v56;
      *&v55[1] = v57(v56, v60, i, &v54);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v48 = 0uLL;
        v110 = v56;
        v109 = &v48;
        v178 = &v48;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v48, v19, a5, a6, a7, a8);
        _dispatch_thread_setspecific_pair(20, v110, 21, v109, v20, v21, v22, v23);
        _dispatch_last_resort_autorelease_pool_pop(v60);
        v111 = &v48;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v48, v24, v25, v26, v27, v28);
      }

      v67 = *&v55[1] != 1;
      v66 = 2026;
      if (*&v55[1] == 1)
      {
        _dispatch_abort(v66, v67, v18, v19, a5, a6, a7, a8);
      }

      v39 = 0;
      if (*&v55[1])
      {
        v39 = *&v55[1] != -1;
      }

      if (v39)
      {
        break;
      }

      v131 = v56;
      v130 = v54;
      v129 = *&v55[1] == 0;
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = (v56 + 56);
      v128 = *(v56 + 56);
      do
      {
        v127 = (v128 - v130) & 0xFFFFFFF700000001;
        v133 = v128;
        if ((v128 & 0xFF80000000000000) == 0)
        {
          v179 = v128;
          if ((v128 & 0x8000000000) != 0)
          {
            v123 = 0x8000000000;
            v122 = 0x8000000000;
            v124 = 0x8000000000;
            v118 = 0x8000000000;
            v117 = 0x8000000000;
            v119 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v131 + 56), 0x8000000000uLL, memory_order_acquire);
            v120 = xor_explicit;
            v115 = xor_explicit;
            v121 = xor_explicit ^ v124;
            v132 = 0;
            goto LABEL_101;
          }

          if (v129)
          {
            v127 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v127 |= 0x8000000000uLL;
          }
        }

        v114 = v127;
        v29 = v128;
        v30 = v128;
        atomic_compare_exchange_strong_explicit(v125, &v30, v127, memory_order_release, memory_order_relaxed);
        if (v30 != v29)
        {
          v128 = v30;
        }

        v113 = v30 == v29;
        v126 = v30 == v29;
      }

      while (v30 != v29);
      v112 = v126;
      v180 = v128;
      v181 = v128;
      v38 = 0;
      if ((v128 & 0x1000000000) != 0)
      {
        v38 = (v180 & 0x800000000) != 0;
      }

      if (v38)
      {
        v158 = v128 & 0x700000000;
        v167 = (v128 & 0x700000000uLL) >> 32;
        v166 = _dispatch_thread_getspecific(25);
        v168 = v166 & 0xF0000;
        if (v167 > (v166 & 0xF0000) >> 16)
        {
          v166 &= 0xFFF0FFFF;
          v166 |= v167 << 16;
          _dispatch_thread_setspecific(25, v166);
        }
      }

      v132 = 1;
LABEL_101:
      if (v132)
      {
        v54 = 0;
        *&v55[1] = 0;
        break;
      }

      *&v55[1] = _dispatch_thread_getspecific(20);
      v37 = 0;
      if (**&v55[1])
      {
        v37 = **&v55[1];
      }

      if (*(v37 + 16) & 0x10000) == 0 && (v55[0])
      {
        break;
      }
    }

    if ((i & 0x40000) == 0)
    {
      v135 = v51;
      v134 = _dispatch_thread_getspecific(25);
      v135 &= 0xFFF0FFFF;
      v135 |= v134 & 0xF0000;
      _dispatch_thread_setspecific(25, v135);
    }
  }

  if (v55[0])
  {
    v136 = v56;
    v182 = v56;
    v187 = 772079660;
    v186 = v56;
    v185 = 0;
    v184 = 0;
    v183 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v188 = v136;
  }

  if (*&v55[1])
  {
    _dispatch_queue_invoke_finish(v56, v60, *&v55[1], v54, a5, a6, a7, a8);
  }

  else
  {
    _dispatch_release_2_tailcall(v56);
  }

  if ((a3 & 0x100000) != 0)
  {
    v46 = _dispatch_thread_getspecific(27);
    v45 = *(v46 + 48);
    if (v45)
    {
      if (*(v45 + 6))
      {
        _dispatch_event_loop_drain_timers(*(v46 + 48), 6u, v31, v32, v33, v34, v35, v36);
      }
    }
  }
}

uint64_t _dispatch_source_invoke2(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v39 = 0;
  v38 = _dispatch_thread_getspecific(20);
  v37 = *(a1 + 88);
  v31 = 0;
  if ((a3 & 0x40000) == 0)
  {
    v52 = _dispatch_thread_getspecific(29);
    if (v52)
    {
      _dispatch_abort(453, (v52 & 1) == 0, v5, v6, v7, v8, v9, v10);
    }

    if (v52)
    {
      v50 = *(v52 + 24);
    }

    else
    {
      v50 = -4;
    }

    v49 = *(v37 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = 0;
    if (v49)
    {
      v30 = 0;
      if (v49 != -4)
      {
        v30 = v49 != v50;
      }
    }

    v31 = v30;
  }

  if (v31)
  {
    _dispatch_source_handle_wlh_change(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  if (*(a1 + 48))
  {
    v42 = a3 | 0x4000000;
    v39 = _dispatch_lane_serial_drain(a1, a2, v42, a4, v7, v8, v9, v10);
    a3 = v42 & 0xFBFFFFFF;
  }

  v35 = &_dispatch_mgr_q;
  v34 = 0;
  if (*(v37 + 29))
  {
    v35 = *(a1 + 24);
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    if (v38 != v35)
    {
      return v35;
    }

    v33 = 0x2000000;
    if ((a3 & 0x10000) != 0)
    {
      v33 = _dispatch_thread_getspecific(25);
    }

    v53 = _dispatch_thread_getspecific(29);
    if (v53)
    {
      _dispatch_abort(453, (v53 & 1) == 0, v11, v12, v13, v14, v15, v16);
    }

    if (v53)
    {
      _dispatch_source_install(a1, *(v53 + 24), v33, v12, v13, v14, v15, v16);
    }

    else
    {
      _dispatch_source_install(a1, -4, v33, v12, v13, v14, v15, v16);
    }
  }

  if ((*(a1 + 56) & 0xFF80000000000000) != 0)
  {
    return *(a1 + 24);
  }

  v29 = 0;
  if ((*(v37 + 29) & 2) != 0)
  {
    v29 = *(v37 + 104) != 0;
  }

  if (v29 && (*(a1 + 80) & 0x10800000) == 0)
  {
    if (v38 != v35)
    {
      return v35;
    }

    _dispatch_timer_unote_configure(*(a1 + 88));
  }

  if (*(v37 + 56))
  {
    if (v38 != *(a1 + 24))
    {
      return *(a1 + 24);
    }

    _dispatch_source_registration_callout(a1, v38, a3);
  }

  if ((*(v37 + 16) & 2) != 0)
  {
    _dispatch_source_refs_unregister(a1, 5u, v5, v6, v7, v8, v9, v10);
  }

  v36 = *(a1 + 80);
  if ((v36 & 0x10800000) == 0 && *(v37 + 72))
  {
    if (v38 != *(a1 + 24))
    {
      return *(a1 + 24);
    }

    _dispatch_source_latch_and_call(a1, v38, a3, v6, v7, v8, v9, v10);
    v36 = *(a1 + 80);
    if ((v36 & 0x90000000) == 0)
    {
      v28 = 1;
      if (!*(v38 + 24))
      {
        v28 = *(v38 + 84) >= 0;
      }

      v34 = v28;
    }

    *(a1 + 116) = *(a1 + 116) & 0xFFFD | 2;
  }

  if ((v36 & 0x10800000) == 0 || v36 < 0)
  {
    goto LABEL_65;
  }

  if ((*(v37 + 29) & 2) == 0 || (*(v37 + 16)) && v38 != v35)
  {
    return v35;
  }

  v32 = 1;
  if ((v36 & 0x40000000) == 0)
  {
    v32 = 3;
  }

  _dispatch_source_refs_unregister(a1, v32, v5, v6, v7, v8, v9, v10);
  v36 = *(a1 + 80);
  if (v36 < 0)
  {
LABEL_65:
    if ((v36 & 0x10800000) != 0 && v36 < 0)
    {
      if (v38 != *(a1 + 24) && (*(v37 + 40) || *(v37 + 48) || *(v37 + 56)))
      {
        v39 = *(a1 + 24);
      }

      else
      {
        _dispatch_source_cancel_callout(a1, v38, a3);
        v36 = *(a1 + 80);
      }

      v34 = 0;
    }

    if ((v36 & 0x10800000) == 0)
    {
      if ((*(v37 + 29) & 2) != 0)
      {
        if (*(v37 + 104))
        {
          v46 = 1;
        }

        else
        {
          v47 = *(v37 + 16);
          v25 = 0;
          if (v47)
          {
            v25 = 0;
            if ((v47 & 1) == 0)
            {
              v25 = (v47 & 2) == 0;
            }
          }

          v46 = v25 && *(v37 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
        }
      }

      else
      {
        v48 = *(v37 + 16);
        v26 = 0;
        if (v48)
        {
          v26 = 0;
          if ((v48 & 1) == 0)
          {
            v26 = (v48 & 2) == 0;
          }
        }

        v46 = v26;
      }

      if (v46)
      {
        if (v38 != v35)
        {
          return v35;
        }

        if ((*(a1 + 56) & 0xFF80000000000000) != 0)
        {
          return *(a1 + 24);
        }

        if ((*(v37 + 29) & 1) != 0 && (*(v37 + 16) & 0xFFFFFFFFFFFFFFFCLL) == 0xFFFFFFFFFFFFFFFCLL)
        {
          if ((*(a1 + 116) & 2) != 0)
          {
            *(a1 + 116) &= ~2u;
            _dispatch_unote_resume(v37, v4, v5, v6, v7, v8, v9, v10);
          }

          if (v34)
          {
            return *(a1 + 24);
          }
        }

        else
        {
          _dispatch_unote_resume(v37, v4, v5, v6, v7, v8, v9, v10);
          if (!v34)
          {
            v51 = _dispatch_thread_getspecific(29);
            if (v51)
            {
              _dispatch_abort(453, (v51 & 1) == 0, v17, v18, v19, v20, v21, v22);
            }

            v24 = 0;
            if (_dispatch_thread_getspecific(5))
            {
              v24 = 0;
              if (v51)
              {
                v24 = 0;
                if (*(v51 + 24) != -4)
                {
                  v24 = (*(v37 + 16) & 0xFFFFFFFFFFFFFFFCLL) == *(v51 + 24);
                }
              }
            }

            if (v24)
            {
              _dispatch_event_loop_drain(1u);
            }
          }
        }
      }
    }

    return v39;
  }

  if (v39)
  {
    return v39;
  }

  else
  {
    return -1;
  }
}

void _dispatch_source_wakeup(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 88);
  v12 = &_dispatch_mgr_q;
  *&v11[8] = 0;
  *v11 = *(a1 + 80);
  if (*(v13 + 29))
  {
    v12 = (&dword_0 + 1);
  }

  if (*(a1 + 116))
  {
    if ((*v11 & 0x10800000) != 0)
    {
      goto LABEL_55;
    }

    v10 = 0;
    if ((*(v13 + 29) & 2) != 0)
    {
      v10 = *(v13 + 104) != 0;
    }

    if (!v10)
    {
LABEL_55:
      if (*(v13 + 56))
      {
        *&v11[4] = 1;
      }

      else if ((*(v13 + 16) & 2) != 0)
      {
        *&v11[4] = 1;
      }

      else if ((*v11 & 0x10800000) != 0 || !*(v13 + 72))
      {
        if ((*v11 & 0x10800000) == 0 || (*v11 & 0x80000000) != 0)
        {
          if ((*v11 & 0x10800000) != 0 && (*v11 & 0x80000000) != 0 && (*(v13 + 40) || *(v13 + 48) || *(v13 + 56)))
          {
            *&v11[4] = 1;
          }

          else if ((*v11 & 0x10800000) == 0)
          {
            if ((*(v13 + 29) & 2) != 0)
            {
              if (*(v13 + 104))
              {
                v14 = 1;
              }

              else
              {
                v15 = *(v13 + 16);
                v8 = 0;
                if (v15)
                {
                  v8 = 0;
                  if ((v15 & 1) == 0)
                  {
                    v8 = (v15 & 2) == 0;
                  }
                }

                v14 = v8 && *(v13 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
              }
            }

            else
            {
              v16 = *(v13 + 16);
              v9 = 0;
              if (v16)
              {
                v9 = 0;
                if ((v16 & 1) == 0)
                {
                  v9 = (v16 & 2) == 0;
                }
              }

              v14 = v9;
            }

            if (v14)
            {
              *&v11[4] = v12;
            }
          }
        }

        else if (*(v13 + 29) & 2) == 0 || (*(v13 + 16))
        {
          if ((*v11 & 0x40000000) == 0 || (a3 & 0x10) != 0)
          {
            *&v11[4] = v12;
          }
        }

        else
        {
          *&v11[4] = 1;
        }
      }

      else
      {
        *&v11[4] = 1;
      }
    }

    else
    {
      *&v11[4] = v12;
    }
  }

  else
  {
    *&v11[4] = v12;
  }

  if (!*&v11[4])
  {
    *&v11[4] = *(a1 + 48) != 0;
  }

  if (*&v11[4] == 1 && *(a1 + 24) == &_dispatch_mgr_q)
  {
    *&v11[4] = &_dispatch_mgr_q;
  }

  _dispatch_queue_wakeup(a1, a2, a3, *&v11[4], a5, a6, a7, a8);
}

void dispatch_source_cancel(dispatch_source_t source)
{
  _dispatch_object_debug(source, "%s", v1, v2, v3, v4, v5, v6, "dispatch_source_cancel");
  _dispatch_retain_2(source);
  if ((atomic_fetch_or_explicit((source + 80), 0x10000000u, memory_order_release) & 0x10000000) != 0)
  {
    _dispatch_release_2_tailcall(source);
  }

  else
  {
    v7 = 0;
    if (*source)
    {
      v7 = *source;
    }

    (*(v7 + 64))(source, 0, 3);
  }
}

void dispatch_source_cancel_and_wait(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *(a1 + 88);
  if (*(v35 + 48))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Source has a cancel handler";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x5FAB8);
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "dispatch_source_cancel_and_wait");
  for (i = *(a1 + 80); ; i = v9)
  {
    v36 = i | 0x10000000;
    if ((i & 0x20000000) != 0)
    {
      break;
    }

    if ((i & 0x80000000) == 0 && ((i & 0x40000000) != 0 || (*(v35 + 29) & 2) != 0 || (*(v35 + 29) & 1) == 0))
    {
      v36 = i | 0x30000000;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v9, v36, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      break;
    }
  }

  if ((i & 0x800000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Dispatch source used after last release";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x5FC2CLL);
  }

  if ((i & 0x80000000) == 0)
  {
    if ((v36 & 0x20000000) == 0)
    {
      v34 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000000;
      for (j = *(a1 + 56); ; j = v17)
      {
        v29 = 0;
        if (!(j >> 53))
        {
          v29 = (j & 0xFFFFFFFC) == 0;
        }

        if (v29)
        {
          v32 = j & 0x7700000001 | v34;
        }

        else
        {
          if ((i & 0x10000000) != 0)
          {
            break;
          }

          v32 = j | 0x8000000000;
        }

        v16 = j;
        v17 = j;
        atomic_compare_exchange_strong((a1 + 56), &v17, v32);
        if (v17 == v16)
        {
          break;
        }
      }

      if ((j & 0xFF80000000000000) != 0)
      {
        if (j >> 58)
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Source is suspended";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x5FE28);
        }

        dispatch_activate(a1);
        return;
      }

      v28 = 0;
      if (!(j >> 53))
      {
        v28 = (j & 0xFFFFFFFC) == 0;
      }

      if (v28)
      {
        if (!(HIBYTE(*(a1 + 80)) >> 7))
        {
          _dispatch_source_refs_unregister(a1, 3u, v10, v11, v12, v13, v14, v15);
        }

        if (HIBYTE(*(a1 + 80)) >> 7)
        {
          _dispatch_source_cancel_callout(a1, 0, 0);
        }

        v27 = 0;
        if (*a1)
        {
          v27 = *a1;
        }

        (*(v27 + 64))(a1, 0, 20);
LABEL_47:
        v31 = *(a1 + 80);
        while (1)
        {
          while (1)
          {
            if (HIBYTE(v31) >> 7)
            {
              return;
            }

            if (((HIBYTE(v31) >> 5) & 1) == 0)
            {
              break;
            }

LABEL_54:
            _dispatch_wait_on_address(a1 + 80, v31, 0xFFFFFFFFFFFFFFFFLL, 0, v18, v19, v20, v21);
            v31 = *(a1 + 80);
          }

          v30 = v31;
          v24 = v31;
          v25 = v31;
          atomic_compare_exchange_strong_explicit((a1 + 80), &v25, v31 | 0x20000000, memory_order_relaxed, memory_order_relaxed);
          if (v25 != v24)
          {
            v30 = v25;
          }

          v31 = v30;
          if (v25 == v24)
          {
            v31 = v30 | 0x20000000;
            goto LABEL_54;
          }
        }
      }

      if (((j ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_source_cancel_and_wait called from a source handler";
        qword_E42C0 = a1;
        __break(1u);
        JUMPOUT(0x6001CLL);
      }
    }

    v39 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
    v22 = __clz(__rbit32(v39));
    if (v39)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = 0;
    }

    v26 = 0;
    if (*a1)
    {
      v26 = *a1;
    }

    (*(v26 + 64))(a1, v23, 2);
    dispatch_activate(a1);
    goto LABEL_47;
  }
}

void _dispatch_source_refs_unregister(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_source_refs_unregister");
  if (_dispatch_unote_unregister(*(a1 + 88), a2, v8, v9, v10, v11, v12, v13))
  {
    _dispatch_source_refs_finalize_unregistration(a1, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v23 = *(a1 + 80);
    do
    {
      if ((v23 & 0xC0000000) != 0)
      {
        break;
      }

      v21 = v23;
      v22 = v23;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v22, v23 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
      if (v22 != v21)
      {
        v23 = v22;
      }
    }

    while (v22 != v21);
  }
}

void _dispatch_source_cancel_callout(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 88);
  v3 = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v3 = _dispatch_autorelease_pool_push();
  }

  v4 = __swp(0, (v5 + 48));
  *(v5 + 72) = 0;
  *(v5 + 64) = 0;
  v10 = __swp(0, (v5 + 40));
  if (v10)
  {
    _dispatch_source_handler_dispose(v10);
  }

  v9 = __swp(0, (v5 + 56));
  if (v9)
  {
    _dispatch_source_handler_dispose(v9);
  }

  if (v4)
  {
    if ((*(a1 + 80) & 0x10000000) != 0)
    {
      if ((*v4 & 0x40) != 0)
      {
        *(v4 + 40) = *(a1 + 32);
      }

      __dmb(9u);
      _dispatch_continuation_pop(v4, 0, a3 & 0xFEFFFFFF, a2);
    }

    else
    {
      _dispatch_source_handler_dispose(v4);
    }
  }

  if (v3)
  {
    _dispatch_autorelease_pool_pop(v3);
  }
}

uint64_t _dispatch_source_merge_evt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = BYTE1(a2);
  v27 = a4;
  v26 = ~*(a1 + 8);
  if ((a2 & 0x100) == 0 && !*(a1 + 16) && (*(a1 + 29) & 2) == 0)
  {
    _dispatch_source_refs_finalize_unregistration(v26, a2, a3, a4, a5, a6, a7, a8);
  }

  if ((v28 >> 1))
  {
    if ((*(v26 + 80) & 0x4000000) != 0)
    {
      v8 = *(a1 + 24);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports or file descriptors)";
      qword_E42C0 = v8;
      __break(1u);
      JUMPOUT(0x60748);
    }

    _dispatch_bug_kevent_vanished(a1, a2, a3, a4, a5, a6, a7, a8);
    *(a1 + 72) = 0;
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tkevent-source[%p]: merged kevent[%p]", v9, v10, v11, v12, v13, v14, v15, 1209);
  _dispatch_object_debug(v26, "%s", v16, v17, v18, v19, v20, v21, "_dispatch_source_merge_evt");
  v25 = 0;
  if (*v26)
  {
    v25 = *v26;
  }

  v30 = (v27 & 0x3FFF00) >> 8;
  v22 = __clz(__rbit32(v30));
  if (v30)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 0;
  }

  return (*(v25 + 64))(v26, v23, 51);
}

uint64_t _dispatch_interval_config_create(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = (*(a4 + 30) & 0x20) != 0;
  v8 = _dispatch_calloc_typed();
  *(v8 + 24) = 0;
  if (a1 == -1)
  {
    *v8 = 0x7FFFFFFFFFFFFFFFLL;
    *(v8 + 16) = 0x7FFFFFFFFFFFFFFFLL;
    *(v8 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    return v8;
  }

  else
  {
    if (a1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Start value is not DISPATCH_TIME_NOW or DISPATCH_TIME_FOREVER";
      __break(1u);
      JUMPOUT(0x60978);
    }

    if (!a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Setting interval to 0";
      __break(1u);
      JUMPOUT(0x609B0);
    }

    v4 = 1892160075;
    if (!v9)
    {
      v4 = 31536000000;
    }

    if (a2 > v4)
    {
      v13 = 31536000000000000;
    }

    else
    {
      v5 = 1000000;
      if (v9)
      {
        v5 = 16666666;
      }

      v13 = a2 * v5;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v18 = _dispatch_host_time_nano2mach(v13);
    }

    else if (v13)
    {
      if (v13 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v13 >= 0x5555555555555555)
        {
          v18 = 3 * (v13 / 0x7D);
        }

        else
        {
          v6 = (3 * v13 * 0x624DD2F1A9FBE77uLL) >> 64;
          v18 = (v6 + ((3 * v13 - v6) >> 1)) >> 6;
        }
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = 0;
    }

    v15 = (_dispatch_uptime() + v18) / v18 * v18;
    if (a3 > 0x3E8)
    {
      if (a3 != -1)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Passing an invalid leeway";
        __break(1u);
        JUMPOUT(0x60BB8);
      }

      if (v9)
      {
        if (_dispatch_host_time_nano2mach)
        {
          v17 = _dispatch_host_time_nano2mach(16666666);
        }

        else
        {
          v17 = (((0x2FAF07E * 0x624DD2F1A9FBE77uLL) >> 64) + ((49999998 - ((0x2FAF07E * 0x624DD2F1A9FBE77uLL) >> 64)) >> 1)) >> 6;
        }

        v11 = v17;
      }

      else
      {
        v11 = v18 >> 1;
      }
    }

    else
    {
      v11 = v18 * a3 / 0x3E8;
    }

    *(v8 + 24) = 0;
    *v8 = v15;
    *(v8 + 8) = v15 + v11;
    *(v8 + 16) = v18;
    return v8;
  }
}

uint64_t _dispatch_timer_config_create(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = _dispatch_calloc_typed();
  if (v18)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (v19 != -1)
    {
      _dispatch_bug_deprecated("Setting timer interval to 0 requests a 1ns timer, did you mean FOREVER (a one-shot timer)?", v4, v5, v6, v7, v8, v9, v10);
    }

    v18 = 1;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = 0;
  v13 = 0;
  if (v19 == -1)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = _dispatch_timer_flags_to_clock(*(v16 + 30));
  }

  else
  {
    v28 = v19;
    v27 = 1;
    v26 = &v14;
    v25 = &v13;
    v24 = 0;
    if (v19 == 0x8000000000000000)
    {
      *v26 = 1;
      *v25 = _dispatch_monotonic_time();
    }

    else if (v19 == -2)
    {
      *v26 = 2;
      *v25 = _dispatch_get_nanoseconds();
    }

    else if (v19)
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        if ((v28 & 0x4000000000000000) != 0)
        {
          *v26 = 2;
          v24 = -v28;
        }

        else
        {
          *v26 = 1;
          v24 = v28 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        *v26 = 0;
        v24 = v28;
      }

      if (v24 > 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = -1;
      }

      else
      {
        v12 = v24;
      }

      *v25 = v12;
    }

    else
    {
      *v26 = 0;
      *v25 = _dispatch_uptime();
    }
  }

  if (v14 != 2)
  {
    v22 = v18;
    if (_dispatch_host_time_nano2mach)
    {
      v23 = _dispatch_host_time_nano2mach(v22);
    }

    else if (v22)
    {
      if (v22 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v22 >= 0x5555555555555555)
        {
          v23 = 3 * (v22 / 0x7D);
        }

        else
        {
          v23 = 3 * v22 / 0x7D;
        }
      }

      else
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v23 = 0;
    }

    v18 = v23;
    if (!v23)
    {
      v18 = 1;
    }

    v20 = v17;
    if (_dispatch_host_time_nano2mach)
    {
      v21 = _dispatch_host_time_nano2mach(v20);
    }

    else if (v20)
    {
      if (v20 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v20 < 0x5555555555555555)
        {
          v21 = 3 * v20 / 0x7D;
        }

        else
        {
          v21 = 3 * (v20 / 0x7D);
        }
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v21 = 0;
    }

    v17 = v21;
  }

  if (v18 < 0x7FFFFFFFFFFFFFFFLL && v17 > v18 / 2)
  {
    v17 = v18 / 2;
  }

  *(v15 + 24) = v14;
  *v15 = v13;
  *(v15 + 16) = v18;
  if (v13 + v17 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v15 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v15 + 8) = v13 + v17;
  }

  return v15;
}

void dispatch_after_f(dispatch_time_t when, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v34 = 0;
  if (work)
  {
    v34 = work;
  }

  v52 = when;
  queuea = queue;
  v50 = context;
  block = v34;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  if (when == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_after called with 'when' == infinity";
    __break(1u);
    JUMPOUT(0x612ECLL);
  }

  v44 = _dispatch_timeout(v52, queue, context, work, v4, v5, v6, v7);
  if (v44)
  {
    v45 = _dispatch_after_leeway(v44);
    if (v45 <= 0xF423F)
    {
      v45 = 1000000;
    }

    if (v45 >= 0xDF8475801)
    {
      v45 = 60000000000;
    }

    v46 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queuea);
    v47 = *(v46 + 11);
    v62 = _dispatch_thread_getspecific(22);
    if (v62)
    {
      _dispatch_thread_setspecific(22, *(v62 + 16));
    }

    v53 = v62;
    if (v62)
    {
      v54 = v53;
    }

    else
    {
      v54 = _dispatch_continuation_alloc_from_heap();
    }

    v43 = v54;
    v42 = queuea;
    v32 = 0;
    if (block)
    {
      v32 = block;
    }

    v61 = v42;
    v60 = v43;
    v59 = v50;
    v58 = v32;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    *v43 = 256;
    v60[4] = v58;
    v60[5] = v59;
    if ((v57 & 0x40000000) == 0)
    {
      v77 = 1;
      v80 = _dispatch_thread_getspecific(4);
      v81 = v80;
      v78 = v80 & 0xFFFFFF;
      v85 = 5;
      v84 = 4096;
      if (v78 <= 0x10FF)
      {
        v79 = v78;
      }

      else
      {
        v83 = 5;
        v82 = 4096;
        v79 = 4351;
      }

      v55 = v79;
    }

    v65 = v60;
    v64 = v57;
    v63 = 0;
    v67 = v57 >= 0;
    v66 = 583;
    if (v57 < 0)
    {
      _dispatch_abort(v66, v67, v8, v9, v10, v11, v12, v13);
    }

    if ((v64 & 0x40) == 0)
    {
      v86 = _dispatch_thread_getspecific(28);
      if (v86)
      {
        v96 = v86;
        os_retain(v86);
      }

      v63 = v86;
    }

    v65[3] = v63;
    _dispatch_thread_getspecific(0);
    v29 = v65[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v14, v15, v16, v17, v18, v19, v20, 589);
    v21 = v65[3];
    v90 = 771817476;
    v89 = v21;
    v88 = v65;
    if (v21 != -1)
    {
      v31 = v89 ? *(v89 + 32) : 0;
      v87 = v31;
      v95 = v90;
      v94 = v31;
      v93 = v88;
      v92 = 0;
      v91 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v76 = v61;
    v75 = v60;
    v74 = v55;
    v73 = v57;
    v72 = 0;
    v71 = v61;
    if (v55)
    {
      v70 = (v73 & 0x20) != 0;
      v69 = (*(v71 + 21) & 0x40000000) != 0;
      v68 = (*(v71 + 21) & 0xFFF) != 0;
      if ((v73 & 0x20) != 0)
      {
        v74 |= 0x10000000uLL;
        v97 = v74 >> 8;
        v22 = v74 >> 8;
        v23 = __clz(__rbit32(v22));
        if (v22)
        {
          v24 = v23 + 1;
        }

        else
        {
          v24 = 0;
        }

        v72 = v24;
      }

      else if (v69 || !v68)
      {
        v98 = v74 >> 8;
        v25 = v74 >> 8;
        v26 = __clz(__rbit32(v25));
        if (v25)
        {
          v27 = v26 + 1;
        }

        else
        {
          v27 = 0;
        }

        v72 = v27;
      }

      else
      {
        v74 = 0;
      }
    }

    v75[1] = v74;
    v43[6] = v46;
    v41 = queuea;
    v40 = v43;
    v109 = queuea;
    v108 = v43;
    v107 = 0;
    v106 = 0;
    v111 = queuea;
    v110 = v43;
    v39 = v43;
    v38 = v43;
    *(v47 + 40) = v43;
    v37 = v39;
    v36 = 0;
    v35 = 0;
    v105 = v52;
    v104 = 0;
    v103 = &v36;
    v102 = &v35;
    v101 = 0;
    if ((v52 & 0x8000000000000000) != 0)
    {
      if ((v105 & 0x4000000000000000) != 0)
      {
        *v103 = 2;
        v101 = -v105;
      }

      else
      {
        *v103 = 1;
        v101 = v105 & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *v103 = 0;
      v101 = v105;
    }

    if (v101 >> 62)
    {
      v30 = -1;
    }

    else
    {
      v30 = v101;
    }

    *v102 = v30;
    if (v36 != 2)
    {
      v99 = v45;
      if (_dispatch_host_time_nano2mach)
      {
        v100 = _dispatch_host_time_nano2mach(v99);
      }

      else if (v99)
      {
        if (v99 < 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v99 >= 0x5555555555555555)
          {
            v100 = 3 * (v99 / 0x7D);
          }

          else
          {
            v28 = (3 * v99 * 0x624DD2F1A9FBE77uLL) >> 64;
            v100 = (v28 + ((3 * v99 - v28) >> 1)) >> 6;
          }
        }

        else
        {
          v100 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v100 = 0;
      }

      v45 = v100;
    }

    *(v47 + 30) |= _dispatch_timer_flags_from_clock(v36);
    *(v47 + 80) = v35;
    *(v47 + 96) = -1;
    *(v47 + 88) = v35 + v45;
    dispatch_activate(v46);
  }

  else
  {
    worka = 0;
    if (block)
    {
      worka = block;
    }

    dispatch_channel_async_f(queuea, v50, worka);
  }
}

void dispatch_after(dispatch_time_t when, dispatch_queue_t queue, dispatch_block_t block)
{
  v53 = when;
  queuea = queue;
  v51 = 0;
  blocka = block;
  v49 = 1;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  if (when == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_after called with 'when' == infinity";
    __break(1u);
    JUMPOUT(0x6266CLL);
  }

  v45 = _dispatch_timeout(v53, queue, block, v3, v4, v5, v6, v7);
  if (v45)
  {
    v46 = _dispatch_after_leeway(v45);
    if (v46 <= 0xF423F)
    {
      v46 = 1000000;
    }

    if (v46 >= 0xDF8475801)
    {
      v46 = 60000000000;
    }

    v47 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queuea);
    v48 = *(v47 + 11);
    v71 = _dispatch_thread_getspecific(22);
    if (v71)
    {
      _dispatch_thread_setspecific(22, *(v71 + 16));
    }

    v54 = v71;
    if (v71)
    {
      v55 = v54;
    }

    else
    {
      v55 = _dispatch_continuation_alloc_from_heap();
    }

    v44 = v55;
    v43 = queuea;
    v62 = queuea;
    v61 = v55;
    v60 = blocka;
    v59 = 0;
    v57 = _dispatch_Block_copy(blocka);
    v58 = 272;
    v72 = blocka;
    v34 = _Block_get_invoke_fn(blocka);
    v35 = 0;
    if (v34)
    {
      v35 = v34;
    }

    if (v35 == _dispatch_block_special_invoke)
    {
      *v61 = v58;
      v61[5] = v57;
      inited = _dispatch_continuation_init_slow(v61, v62, v59);
    }

    else
    {
      v32 = _Block_get_invoke_fn(v60);
      v33 = 0;
      if (v32)
      {
        v33 = v32;
      }

      v56 = v33;
      v70 = v62;
      v69 = v61;
      v68 = v57;
      v67 = v33;
      v66 = v59;
      v65 = v58;
      v64 = 0;
      *v61 = v58 | 0x100;
      v69[4] = v67;
      v69[5] = v68;
      if ((v66 & 0x40000000) == 0)
      {
        v87 = 1;
        v90 = _dispatch_thread_getspecific(4);
        v91 = v90;
        v88 = v90 & 0xFFFFFF;
        v95 = 5;
        v94 = 4096;
        if (v88 <= 0x10FF)
        {
          v89 = v88;
        }

        else
        {
          v93 = 5;
          v92 = 4096;
          v89 = 4351;
        }

        v64 = v89;
      }

      v75 = v69;
      v74 = v66;
      v73 = 0;
      v77 = v66 >= 0;
      v76 = 583;
      if (v66 < 0)
      {
        _dispatch_abort(v76, v77, v8, v9, v10, v11, v12, v13);
      }

      if ((v74 & 0x40) == 0)
      {
        v96 = _dispatch_thread_getspecific(28);
        if (v96)
        {
          object = v96;
          os_retain(v96);
        }

        v73 = v96;
      }

      v75[3] = v73;
      _dispatch_thread_getspecific(0);
      v29 = v75[3];
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v14, v15, v16, v17, v18, v19, v20, 589);
      v21 = v75[3];
      v100 = 771817476;
      v99 = v21;
      v98 = v75;
      if (v21 != -1)
      {
        v31 = v99 ? *(v99 + 32) : 0;
        v97 = v31;
        v105 = v100;
        v104 = v31;
        v103 = v98;
        v102 = 0;
        v101 = 0;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v86 = v70;
      v85 = v69;
      v84 = v64;
      v83 = v66;
      v82 = 0;
      v81 = v70;
      if (v64)
      {
        v80 = (v83 & 0x20) != 0;
        v79 = (*(v81 + 21) & 0x40000000) != 0;
        v78 = (*(v81 + 21) & 0xFFF) != 0;
        if ((v83 & 0x20) != 0)
        {
          v84 |= 0x10000000uLL;
          v107 = v84 >> 8;
          v22 = v84 >> 8;
          v23 = __clz(__rbit32(v22));
          if (v22)
          {
            v24 = v23 + 1;
          }

          else
          {
            v24 = 0;
          }

          v82 = v24;
        }

        else if (v79 || !v78)
        {
          v108 = v84 >> 8;
          v25 = v84 >> 8;
          v26 = __clz(__rbit32(v25));
          if (v25)
          {
            v27 = v26 + 1;
          }

          else
          {
            v27 = 0;
          }

          v82 = v27;
        }

        else
        {
          v84 = 0;
        }
      }

      v85[1] = v84;
      inited = v82;
    }

    v44[6] = v47;
    v42 = queuea;
    v41 = v44;
    v119 = queuea;
    v118 = v44;
    v117 = 0;
    v116 = 0;
    v121 = queuea;
    v120 = v44;
    v40 = v44;
    v39 = v44;
    *(v48 + 40) = v44;
    v38 = v40;
    v37 = 0;
    v36 = 0;
    v115 = v53;
    v114 = 0;
    v113 = &v37;
    v112 = &v36;
    v111 = 0;
    if ((v53 & 0x8000000000000000) != 0)
    {
      if ((v115 & 0x4000000000000000) != 0)
      {
        *v113 = 2;
        v111 = -v115;
      }

      else
      {
        *v113 = 1;
        v111 = v115 & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *v113 = 0;
      v111 = v115;
    }

    if (v111 >> 62)
    {
      v30 = -1;
    }

    else
    {
      v30 = v111;
    }

    *v112 = v30;
    if (v37 != 2)
    {
      v109 = v46;
      if (_dispatch_host_time_nano2mach)
      {
        v110 = _dispatch_host_time_nano2mach(v109);
      }

      else if (v109)
      {
        if (v109 < 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v109 >= 0x5555555555555555)
          {
            v110 = 3 * (v109 / 0x7D);
          }

          else
          {
            v28 = (3 * v109 * 0x624DD2F1A9FBE77uLL) >> 64;
            v110 = (v28 + ((3 * v109 - v28) >> 1)) >> 6;
          }
        }

        else
        {
          v110 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v110 = 0;
      }

      v46 = v110;
    }

    *(v48 + 30) |= _dispatch_timer_flags_from_clock(v37);
    *(v48 + 80) = v36;
    *(v48 + 96) = -1;
    *(v48 + 88) = v36 + v46;
    dispatch_activate(v47);
  }

  else
  {
    dispatch_channel_async(queuea, blocka);
  }
}

uint64_t _dispatch_source_handler_dispose(uint64_t a1)
{
  if ((*a1 & 0x10) != 0)
  {
    _Block_release(*(a1 + 40));
  }

  if (*(a1 + 24))
  {
    os_release(*(a1 + 24));
    *(a1 + 24) = -1;
  }

  result = _dispatch_thread_getspecific(22);
  if (result)
  {
    v2 = *(result + 8) + 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2 <= _dispatch_continuation_cache_limit)
  {
    *(a1 + 16) = result;
    *(a1 + 8) = v2;
    result = _dispatch_thread_setspecific(22, a1);
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (v4)
  {
    return _dispatch_continuation_free_to_cache_limit(v4);
  }

  return result;
}

uint64_t _dispatch_source_set_handler_slow(uint64_t a1)
{
  result = _dispatch_thread_getspecific(20);
  v11 = result;
  v9 = 0;
  if (*result)
  {
    v9 = *result;
  }

  if (*(v9 + 16) != 275)
  {
    _dispatch_abort(323, *(v9 + 16) == 275, v2, v3, v4, v5, v6, v7);
  }

  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  v13 = a1;
  if (*(a1 + 32))
  {
    if ((*a1 & 0x40) != 0)
    {
      *(a1 + 40) = *(result + 32);
    }
  }

  else
  {
    result = _dispatch_thread_getspecific(22);
    if (result)
    {
      v8 = *(result + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 <= _dispatch_continuation_cache_limit)
    {
      *(a1 + 16) = result;
      *(a1 + 8) = v8;
      result = _dispatch_thread_setspecific(22, a1);
      v15 = 0;
    }

    else
    {
      v15 = a1;
    }

    if (v15)
    {
      result = _dispatch_continuation_free_to_cache_limit(v15);
    }

    v13 = 0;
  }

  v14 = atomic_exchange_explicit((*(v11 + 88) + 40 + 8 * v10), v13, memory_order_release);
  if (v14)
  {
    return _dispatch_source_handler_dispose(v14);
  }

  return result;
}

void _dispatch_source_handle_wlh_change(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = atomic_fetch_or_explicit((a1 + 80), 0x8000000u, memory_order_relaxed);
  if ((v8 & 0x400000) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after source was activated";
    __break(1u);
    JUMPOUT(0x63DB8);
  }

  if ((v8 & 0x8000000) == 0)
  {
    _dispatch_bug_deprecated("Changing target queue hierarchy after source was activated", a2, a3, a4, a5, a6, a7, a8);
  }
}

void _dispatch_source_registration_callout(uint64_t a1, uint64_t a2, int a3)
{
  v4 = __swp(0, (*(a1 + 88) + 56));
  if ((*(a1 + 80) & 0x10800000) != 0)
  {
    v3 = 0;
    if ((a3 & 0x1000000) != 0)
    {
      v3 = _dispatch_autorelease_pool_push();
    }

    _dispatch_source_handler_dispose(v4);
    if (v3)
    {
      _dispatch_autorelease_pool_pop(v3);
    }
  }

  else
  {
    if ((*v4 & 0x40) != 0)
    {
      *(v4 + 40) = *(a1 + 32);
    }

    _dispatch_continuation_pop(v4, 0, a3, a2);
  }
}

void _dispatch_source_latch_and_call(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3;
  v15 = *(a1 + 88);
  v14 = *(v15 + 5);
  v13 = __swp(0, v15 + 18);
  if ((*(v15 + 29) & 2) != 0)
  {
    *(v15 + 30);
  }

  v11 = 0;
  if (*v15)
  {
    v11 = *v15;
  }

  v10 = *(v11 + 9);
  if (v10 == 3)
  {
    *(v15 + 8) = ~v13;
  }

  else if (v10 == 5)
  {
    if (v13)
    {
      v20 = v13 >> 1;
      v21 = *(a1 + 88);
      if (*(v21 + 80) < 0x7FFFFFFFFFFFFFFFuLL)
      {
        v9 = *(v21 + 24) / 3u;
        if (v9)
        {
          v22 = v9 == 1 ? _dispatch_monotonic_time() : _dispatch_get_nanoseconds();
        }

        else
        {
          v22 = _dispatch_uptime();
        }

        if (v22 >= *(v21 + 80))
        {
          v24 = (v22 - *(v21 + 80)) / *(v21 + 96) + 1;
          if (v24 + v20 > 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = 0x7FFFFFFFFFFFFFFFLL - v20;
          }

          if (*(v21 + 96) >= 0x7FFFFFFFFFFFFFFFuLL)
          {
            *(v21 + 80) = -1;
            *(v21 + 88) = -1;
          }

          else
          {
            v23 = v24 * *(v21 + 96);
            *(v21 + 80) += v23;
            *(v21 + 88) += v23;
          }

          v20 += v24;
        }
      }

      *(v15 + 8) = v20;
    }

    else
    {
      *(v15 + 8) = v13 >> 1;
    }
  }

  else
  {
    if (!v13 && *(v15 + 28) == -23)
    {
      return;
    }

    *(v15 + 8) = v13;
  }

  if (v14)
  {
    if (v13)
    {
      if (*(v15 + 28) == -14)
      {
        _dispatch_continuation_get_function_symbol(v14);
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      _dispatch_continuation_pop(v14, 0, v16, a2);
      if (*(v15 + 28) == -14 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      if ((*(v15 + 29) & 2) != 0)
      {
        if (v13)
        {
          v8 = 0;
          if ((*(v15 + 29) & 2) != 0)
          {
            v8 = *(v15 + 13) != 0;
          }

          if (v8)
          {
            _dispatch_timer_unote_configure(*(a1 + 88));
          }
        }

        if ((*(v15 + 30) & 0x40) != 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          v12 = 0;
          if ((v16 & 0x1000000) != 0)
          {
            v12 = _dispatch_autorelease_pool_push();
          }

          v19 = __swp(0, v15 + 10);
          if (v19)
          {
            _dispatch_source_handler_dispose(v19);
          }

          if (v12)
          {
            _dispatch_autorelease_pool_pop(v12);
          }

          dispatch_release(a1);
        }
      }
    }

    else
    {
      _dispatch_bug(591, v13 != 0, a3, a4, a5, a6, a7, a8);
    }
  }

  else if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }
}

uint64_t _dispatch_trace_timer_function(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    return *(v3 + 32);
  }

  else
  {
    return 0;
  }
}

unint64_t _dispatch_after_leeway(unint64_t a1)
{
  v1 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
  v2 = __clz(__rbit32(v1));
  if (v1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3 <= 3)
  {
    return a1 / 0xA;
  }

  if (v3 != 5 && v3 != 4)
  {
    return a1 / 0x14;
  }

  return a1 / 0xF;
}

uint64_t _dispatch_wait_for_enqueuer(unint64_t *a1)
{
  v4 = 10;
  while (1)
  {
    v1 = v4--;
    if (v1 <= 0)
    {
      break;
    }

    v2 = __ldxr(a1);
    if (v2)
    {
      __clrex();
      return v2;
    }

    __wfe();
  }

  return __DISPATCH_WAIT_FOR_ENQUEUER__(a1);
}

uint64_t __DISPATCH_WAIT_FOR_ENQUEUER__(uint64_t a1)
{
  v2 = 0;
  while (!*a1)
  {
    ++v2;
    _pthread_yield_to_enqueuer_4dispatch();
  }

  return *a1;
}

void *dispatch_mach_hooks_install_4libxpc(void *result)
{
  if (*result <= 2uLL)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: trying to install hooks with unsupported version";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0x64D7CLL);
  }

  v1 = &_dispatch_mach_xpc_hooks_default;
  atomic_compare_exchange_strong_explicit(&_dispatch_mach_xpc_hooks, &v1, result, memory_order_relaxed, memory_order_relaxed);
  if (v1 != &_dispatch_mach_xpc_hooks_default)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_hooks_install_4libxpc called twice";
    qword_E42C0 = _dispatch_mach_xpc_hooks;
    __break(1u);
    JUMPOUT(0x64E58);
  }

  return result;
}

uint64_t *dispatch_mach_create(const char *a1, uint64_t (***a2)(), const void *a3)
{
  v10 = _dispatch_Block_copy(a3);
  v11 = _Block_get_invoke_fn(v10);
  v12 = 0;
  if (v11)
  {
    v12 = v11;
  }

  v7 = 0;
  if (v12)
  {
    v7 = v12;
  }

  return _dispatch_mach_create(a1, a2, v10, v7, 1, v3, v4, v5);
}

uint64_t *_dispatch_mach_create(const char *a1, uint64_t (***a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v31 = a5;
  v29 = 0x400000;
  if (a1)
  {
    v28 = _dispatch_strdup_if_mutable(a1);
    if (v28 != v35)
    {
      v29 = 6291456;
      v35 = v28;
    }
  }

  v27 = _dispatch_object_alloc(_OS_dispatch_mach_vtable, 0x88uLL, a3, a4, a5, a6, a7, a8);
  _dispatch_queue_init(v27, v29, 1, 0x180000000000000, v8, v9, v10, v11);
  v27[9] = v35;
  *(v27 + 58) = *(v27 + 58) & 0xFFEF | (8 * (v31 & 2));
  *(v27 + 58) = *(v27 + 58) & 0xFF7F | (32 * (v31 & 4));
  v30 = off_DD430(&_dispatch_mach_type_recv, 0, 0);
  if ((*(v30 + 29) & 1) == 0)
  {
    _dispatch_abort(140, 0, v12, v13, v14, v15, v16, v17);
  }

  *(v30 + 8) = ~v27;
  v25 = 0;
  if (a4)
  {
    v25 = a4;
  }

  *(v30 + 40) = v25;
  *(v30 + 48) = a3;
  *(v30 + 29) = *(v30 + 29) & 0xBF | ((v31 & 1) << 6);
  if ((*(v27 + 58) & 0x80) != 0)
  {
    *(v30 + 32) |= 0x200u;
  }

  v27[11] = v30;
  v26 = off_DD370(&_dispatch_mach_type_send, 0, 9);
  *(v26 + 8) = ~v27;
  v27[15] = v26;
  if (a2)
  {
    if ((*(a2 + 87) & 8) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x65284);
    }

    _dispatch_retain(a2);
  }

  else
  {
    a2 = &off_E0680;
  }

  v27[3] = a2;
  _dispatch_object_debug(v27, "%s", v18, v19, v20, v21, v22, v23, "_dispatch_mach_create");
  return v27;
}

void _dispatch_mach_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_mach_dispose");
  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;
  _dispatch_unote_dispose(a1[15], 0);
  a1[15] = 0;
  if (a1[16])
  {
    _dispatch_unote_dispose(a1[16], 0);
    a1[16] = 0;
  }

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t dispatch_mach_request_no_senders(uint64_t result)
{
  *(result + 116) |= 0x20u;
  v2 = *(result + 56);
  if ((~v2 & 0x180000000000000) != 0)
  {
    v1 = *(result + 56);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0x654ECLL);
  }

  return result;
}

uint64_t dispatch_mach_notify_no_senders(uint64_t result, char a2)
{
  *(result + 116) |= 0x20u;
  *(result + 116) = *(result + 116) & 0xFFBF | ((a2 & 1) << 6);
  v3 = *(result + 56);
  if ((~v3 & 0x180000000000000) != 0)
  {
    v2 = *(result + 56);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x655B4);
  }

  return result;
}

uint64_t dispatch_mach_set_flags(uint64_t result, char a2)
{
  *(result + 116) = *(result + 116) & 0xFF7F | ((a2 & 1) << 7);
  v3 = *(result + 56);
  if ((~v3 & 0x180000000000000) != 0)
  {
    v2 = *(result + 56);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x6566CLL);
  }

  return result;
}

void dispatch_mach_connect(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 120);
  if (a2 && a2 != -1)
  {
    *(*(a1 + 88) + 24) = a2;
  }

  *(v9 + 92) = a3;
  if (a3 && a3 != -1)
  {
    if (a4)
    {
      dispatch_retain(a4);
      *(a4 + 48) = _dispatch_mach_checkin_options();
      *(v9 + 96) = _dispatch_mach_msg_get_remote_port(a4);
    }

    *(v9 + 48) = a4;
  }

  if ((*(a1 + 116) & 0x20) != 0 && !*(v9 + 48))
  {
    _dispatch_mach_arm_no_senders(a1, 0);
  }

  v8 = atomic_fetch_and_explicit((v9 + 88), 0x7FFFFFFFu, memory_order_relaxed);
  if (!(HIBYTE(v8) >> 7))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Channel already connected";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0x65814);
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "dispatch_mach_connect");
  dispatch_activate(a1);
}

void _dispatch_mach_arm_no_senders(uint64_t a1, char a2)
{
  v19 = a1;
  v18 = a2;
  v17 = *(*(a1 + 88) + 24);
  previous = 0;
  if (v17 && v17 != -1)
  {
    v14 = mach_port_request_notification(mach_task_self_, v17, 70, ((*(v19 + 116) >> 6) & 1) == 0, v17, 0x15u, &previous);
    if (v14 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x65990);
    }

    v23 = v14;
    v22 = 261;
    if (v14)
    {
      _dispatch_bug(v22, v23, v2, v3, v4, v5, v6, v7);
    }
  }

  if (previous)
  {
    if ((v18 & 1) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Mach port notification collision";
      qword_E42C0 = previous;
      __break(1u);
      JUMPOUT(0x65A24);
    }

    v15 = mach_port_deallocate(mach_task_self_, previous);
    if (v15 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x65A88);
    }

    v21 = v15;
    v20 = 269;
    if (v15)
    {
      _dispatch_bug(v20, v21, v8, v9, v10, v11, v12, v13);
    }
  }
}

void _dispatch_mach_merge_msg(uint64_t a1, unsigned int a2, mach_msg_header_t *a3, unsigned int a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  if ((a2 & 0x200) != 0)
  {
    v7 = *(a1 + 24);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
    qword_E42C0 = v7;
    __break(1u);
    JUMPOUT(0x65B50);
  }

  _dispatch_thread_getspecific(0);
  msgh_remote_port = a3->msgh_remote_port;
  msgh_id = a3->msgh_id;
  msgh_local_port = a3->msgh_local_port;
  _dispatch_log("%u\t%p\tmachport[0x%08x]: received msg id 0x%x, reply on 0x%08x", v8, v9, v10, v11, v12, v13, v14, 685);
  v50 = ~*(a1 + 8);
  if ((HIBYTE(*(79 - *(a1 + 8))) >> 4))
  {
    _dispatch_thread_getspecific(0);
    v43 = a3->msgh_remote_port;
    v41 = a3->msgh_id;
    v38 = a3->msgh_local_port;
    _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", v17, v18, v19, v20, v21, v22, v23, 690);
    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }
  }

  else if (a3->msgh_id == 70 && (*(115 - *(a1 + 8)) & 0x20) != 0)
  {
    is_kernel = _dispatch_mach_msg_sender_is_kernel(a3);
    if (is_kernel)
    {
      v60 = _dispatch_thread_getspecific(22);
      if (v60)
      {
        _dispatch_thread_setspecific(22, *(v60 + 16));
        v58 = v60;
      }

      else
      {
        v58 = _dispatch_continuation_alloc_from_heap();
      }

      *v58 = 260;
      v58[4] = _dispatch_mach_no_senders_invoke;
      v58[5] = v50;
      v58[3] = 0;
      _dispatch_thread_getspecific(0);
      v39 = v58[3];
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v30, v31, v32, v33, v34, v35, v36, 589);
      v61 = v58[3];
      if (v61 != -1)
      {
        if (v61)
        {
          v47 = *(v61 + 32);
        }

        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v58[1] = 0;
      v59 = *v58;
      v46 = 0;
      if (*v50)
      {
        v46 = *v50;
      }

      (*(v46 + 72))(v50, v58, 0);
    }

    else
    {
      _dispatch_bug(696, is_kernel, v24, v25, v26, v27, v28, v29);
    }

    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }
  }

  else
  {
    recv = _dispatch_mach_msg_create_recv(a3, a4, a5, 0, a2, a6, v15, v16);
    _dispatch_mach_handle_or_push_received_msg(v50, recv, a7);
  }

  v45 = 1;
  if ((*(a1 + 16) & 2) == 0)
  {
    v45 = ((*(v50 + 60) << 32) & 0x180000000000000) == 0x80000000000000;
  }

  if (v45)
  {
    v44 = 0;
    if (*v50)
    {
      v44 = *v50;
    }

    (*(v44 + 64))(v50, 0, 51);
  }

  else
  {
    _dispatch_release_2_tailcall(v50);
  }
}

uint64_t _dispatch_mach_no_senders_invoke(uint64_t result)
{
  if ((*(result + 80) & 0x10000000) == 0)
  {
    v2 = *(result + 88);
    v1 = 0;
    if (*(v2 + 40))
    {
      v1 = *(v2 + 40);
    }

    return _dispatch_client_callout4(*(v2 + 48), 13, 0, 0, v1);
  }

  return result;
}

void *_dispatch_mach_msg_create_recv(_DWORD *a1, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a5;
  v32 = a6;
  if (a4)
  {
    v41 = (*a1 & 0x1F0000u) >> 16;
    v40 = a1[4];
    if ((v41 == 19 || v41 == 17) && v40)
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] clear %s", v8, v9, v10, v11, v12, v13, v14, 520);
      if (v41 == 17)
      {
        _voucher_dealloc_mach_voucher(v40);
      }

      a1[4] = 0;
      *a1 &= 0xFFE0FFFF;
    }

    v33 = *(a4 + 40);
    v30 = *(a4 + 56);
    *(a4 + 56) = 0;
  }

  else
  {
    v30 = _voucher_create_with_mach_msgv(a1, a3, a3, 0, a5, a6, a7, a8);
    if ((v32 & 0xFFFFFFu) <= 0x10FFuLL)
    {
      v38 = v32 & 0xFFFFFF;
    }

    else
    {
      v38 = 4351;
    }

    v33 = v38;
  }

  v31 = dispatch_mach_msg_create(a1, a2, (v34 & 0x10000) != 0, 0, a5, a6, a7, a8);
  if ((v34 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v31[8] = v30;
  v31[7] = v33;
  if (a4)
  {
    v29 = *(a4 + 48);
  }

  else
  {
    v29 = 0;
  }

  v31[4] = v29;
  _dispatch_mach_msg_set_reason(v31, 0, 2, v15, v16, v17, v18, v19);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] create", v20, v21, v22, v23, v24, v25, v26, 655);
  v39 = v31[8];
  if (v39 != -1)
  {
    if (v39)
    {
      v28 = *(v39 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  return v31;
}

void _dispatch_mach_handle_or_push_received_msg(uint64_t a1, dispatch_object_s *a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  reason = _dispatch_mach_msg_get_reason(a2, &v12);
  if (reason != 2 && (*(v15 + 116) & 0x10) != 0 && ((*(&dword_8 + _dispatch_mach_xpc_hooks))(*(*(v15 + 88) + 48), reason, v14, v12) & 1) != 0)
  {
    *(v14 + 2) = -1985229329;
    dispatch_release(v14);
  }

  else
  {
    v19 = v15;
    v18 = v14;
    v17 = 0;
    v16 = 0;
    v23 = v15;
    v22 = v14;
    v20 = v13 & 0x3FFF00;
    v20 >>= 8;
    v8 = __clz(__rbit32(v20));
    if (v20)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v9)
    {
      v21 = *(v15 + 84);
      v21 &= 0xF00u;
      v10 = v21 >> 8;
    }

    _dispatch_lane_push(v15, v14, v10, v3, v4, v5, v6, v7);
  }
}

void _dispatch_mach_reply_merge_msg(uint64_t a1, unsigned int a2, mach_msg_header_t *a3, unsigned int a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v46 = ~*(a1 + 8);
  v45 = (*(79 - *(a1 + 8)) & 0x10000000) != 0;
  recv = 0;
  _dispatch_thread_getspecific(0);
  msgh_local_port = a3->msgh_local_port;
  msgh_id = a3->msgh_id;
  msgh_remote_port = a3->msgh_remote_port;
  _dispatch_log("%u\t%p\tmachport[0x%08x]: received msg id 0x%x, reply on 0x%08x", v7, v8, v9, v10, v11, v12, v13, 746);
  if (!v45)
  {
    recv = _dispatch_mach_msg_create_recv(a3, a4, a5, a1, a2, a6, v14, v15);
  }

  if (recv)
  {
    v43 = 0;
    if ((*(v46 + 116) & 0x10) != 0 && *(recv + 4))
    {
      v54 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(*(recv + 4));
      if (!v54)
      {
        v54 = v46;
      }

      v43 = v54;
    }

    if (v43)
    {
      v55 = _dispatch_mach_msg_async_reply_wrap(recv, v46);
      v41 = 0;
      if (*v43)
      {
        v41 = *v43;
      }

      v19 = (*(recv + 7) & 0x3FFF00uLL) >> 8;
      v20 = __clz(__rbit32(v19));
      if (v19)
      {
        v21 = v20 + 1;
      }

      else
      {
        v21 = 0;
      }

      (*(v41 + 72))(v43, v55, v21, v16, v17, v18);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v46, recv, a7);
    }
  }

  else
  {
    _dispatch_thread_getspecific(0);
    v36 = a3->msgh_local_port;
    v38 = a3->msgh_id;
    v40 = a3->msgh_remote_port;
    _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", v28, v29, v30, v31, v32, v33, v34, 764);
    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }
  }

  v42 = 101;
  if (v45)
  {
    v42 = 117;
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    _dispatch_abort(774, (*(a1 + 16) & 2) != 0, v22, v23, v24, v25, v26, v27);
  }

  _dispatch_mach_reply_unregister(v46, a1, v42);
}

void _dispatch_mach_reply_unregister(uint64_t a1, uint64_t a2, char a3)
{
  v43 = 0;
  if (*a2)
  {
    v43 = *a2;
  }

  v48 = *(a1 + 120);
  v47 = (a3 & 0x10) != 0;
  v46 = 0;
  _dispatch_thread_getspecific(0);
  v42 = *(a2 + 24);
  v39 = *(a2 + 48);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: unregistering for%s reply%s, ctxt %p", v3, v4, v5, v6, v7, v8, v9, 364);
  if ((a3 & 0x20) != 0)
  {
    v54 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v23 = 0;
    atomic_compare_exchange_strong_explicit((v48 + 40), &v23, v54, memory_order_acquire, memory_order_acquire);
    if (v23)
    {
      _dispatch_unfair_lock_lock_slow((v48 + 40));
    }

    _dispatch_mach_reply_list_remove_locked(a2, v16, v17, v18, v19, v20, v21, v22);
    if (!*(v48 + 56) && *(v48 + 88))
    {
      v46 = 1;
    }

    v55 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v56 = atomic_exchange_explicit((v48 + 40), 0, memory_order_release);
    if (v56 != v55)
    {
      _dispatch_unfair_lock_unlock_slow(v48 + 40, v56);
    }
  }

  if (!*(a2 + 16) || (_dispatch_unote_unregister(a2, a3 & 0xF, v10, v11, v12, v13, v14, v15) & 1) != 0)
  {
    reply_disconnected = 0;
    v44 = 0;
    if (v47)
    {
      if ((*(a1 + 116) & 0x10) != 0 && *(a2 + 48))
      {
        v52 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(*(a2 + 48));
        if (!v52)
        {
          v52 = a1;
        }

        v44 = v52;
      }

      if (v44)
      {
        v26 = 12;
      }

      else
      {
        v26 = 7;
      }

      reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(0, a2, v26, v11, v12, v13, v14, v15);
      if (*(a2 + 56))
      {
        _dispatch_abort(396, *(a2 + 56) == 0, v27, v28, v29, v30, v31, v32);
      }
    }

    else if (*(a2 + 56))
    {
      os_release(*(a2 + 56));
      *(a2 + 56) = 0;
    }

    if (v43 != -2)
    {
      _dispatch_unote_dispose(a2, 1);
    }

    if (reply_disconnected)
    {
      if (v44)
      {
        v53 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
        v41 = 0;
        if (*v44)
        {
          v41 = *v44;
        }

        v36 = (*(reply_disconnected + 7) & 0x3FFF00uLL) >> 8;
        v37 = __clz(__rbit32(v36));
        if (v36)
        {
          v38 = v37 + 1;
        }

        else
        {
          v38 = 0;
        }

        (*(v41 + 72))(v44, v53, v38, v33, v34, v35);
      }

      else
      {
        _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0);
      }
    }

    if ((a3 & 0x40) != 0)
    {
      if (v46)
      {
        v40 = 0;
        if (*a1)
        {
          v40 = *a1;
        }

        (*(v40 + 64))(a1, 0, 3);
      }

      else
      {
        _dispatch_release_2_tailcall(a1);
      }
    }
  }

  else
  {
    if (v43 == -2)
    {
      _dispatch_abort(377, 0, v24, v11, v12, v13, v14, v15);
    }

    if (a3 < 0)
    {
      v25 = *(v48 + 56);
      *(a2 + 64) = v25;
      if (v25)
      {
        *(*(v48 + 56) + 72) = a2 + 64;
      }

      *(v48 + 56) = a2;
      *(a2 + 72) = v48 + 56;
    }
  }
}

double _dispatch_mach_send_barrier_drain_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v43 = _dispatch_thread_getspecific(20);
  v48 = v43;
  v49 = v43;
  v42 = v43;
  v44 = v43;
  v41 = 516;
  v40 = 0uLL;
  v50 = &v40;
  _dispatch_thread_getspecific_pair(20, &v40, 21, &v40.n128_u64[1], v3, v4, v5, v6);
  v77 = v50->n128_u64[1];
  _dispatch_thread_setspecific_packed_pair(20, 21, v77, v7, v8, v9, v10, v11);
  v39 = v47;
  v37 = v41;
  v54 = v47;
  v53 = v41;
  v52 = *(v47 + 24);
  v51 = v41 & 4;
  v56 = 1;
  v55 = 600;
  if ((v41 & 4) != 0)
  {
    *(v54 + 24) = -1;
  }

  if (v52 != -1)
  {
    v70 = 771817480;
    v69 = v52;
    v68 = v54;
    if (v52)
    {
      v36 = v69[8];
    }

    else
    {
      v36 = 0;
    }

    v67 = v36;
    v75 = v70;
    v74 = v36;
    v73 = v68;
    v72 = 0;
    v71 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v18, v19, v20, v21, v22, v23, v24, 607);
  }

  v81 = *(v54 + 8);
  v80 = v52;
  v79 = v51 | 2;
  v78 = 0;
  if (v81 != -1)
  {
    v88 = v81;
    v87 = v79;
    v86 = _dispatch_thread_getspecific(25);
    v101 = v86;
    v104 = v86 & 0xF00;
    v100 = v104 >> 8;
    v99 = v86;
    if (v104 >> 8)
    {
      v99 |= 1 << (v100 + 7);
    }

    v85 = v99;
    v102 = v99;
    v84 = v99 & 0xFFFFFF00;
    v35 = 1;
    if ((v87 & 1) == 0)
    {
      v35 = (v88 & 0x10000000) != 0;
    }

    v83 = v35;
    v90 = v88;
    v88 &= 0xFFFFFFu;
    if (v88)
    {
      if (v88 >= v84)
      {
        if (v83 || (v86 & 0x44000000) != 0)
        {
          v89 = v88;
        }

        else
        {
          v89 = v85;
        }
      }

      else
      {
        v89 = v85;
      }
    }

    else
    {
      v103 = v86 & 0xF000;
      v82 = v103 >> 12;
      if (v103 >> 12)
      {
        v92 = v82;
        v91 = 1 << (v82 + 7);
        v34 = v91 | 0xFF;
      }

      else
      {
        v34 = v85;
      }

      v89 = v34;
    }

    v78 = v89;
  }

  v96 = v78;
  v95 = v80;
  v94 = v79;
  v108 = v78;
  v111 = v78 != -1;
  v110 = 2409;
  if (v78 == -1)
  {
    _dispatch_abort(v110, v111, v12, v13, v14, v15, v16, v17);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v122 = v108;
    v121 = 4261412863;
    v120 = 0;
    v108 &= 0xFFFFFFFF02FFFFFFLL;
    v112 = _dispatch_thread_getspecific(4);
    v107 = v112;
    v106 = 0x1000000;
    v105 = 2281701376;
    if ((v112 & 0x1000000) != 0)
    {
      if (v108)
      {
        v33 = v108;
      }

      else
      {
        v116 = v107;
        v115 = v106;
        v114 = 0;
        v33 = v107 & (~v106 | 0xFFFFFF);
      }

      v109 = v33;
    }

    else
    {
      v119 = v107;
      v118 = v105;
      v117 = 0;
      v107 &= ~v105 | 0xFFFFFF;
      if (v108 == v107)
      {
        v109 = 0;
      }

      else
      {
        v109 = v108;
      }
    }
  }

  else
  {
    v109 = 0;
  }

  v96 = v109;
  if (v109)
  {
    goto LABEL_52;
  }

  if (v95 == -1)
  {
    v97 = -1;
    goto LABEL_53;
  }

  v32 = v95;
  if (v32 != _dispatch_thread_getspecific(28))
  {
LABEL_52:
    v97 = _dispatch_set_priority_and_voucher_slow(v96, v95, v94);
  }

  else
  {
    v93 = (v94 & 4) != 0;
    if ((v94 & 2) != 0)
    {
      if (v93 && v95)
      {
        v113 = v95;
        os_release(v95);
      }

      v95 = -1;
    }

    else if (!v93 && v95)
    {
      object = v95;
      os_retain(v95);
    }

    v97 = v95;
  }

LABEL_53:
  if ((v37 & 0x200) == 0)
  {
    v60 = v44;
    v59 = v47;
    v58 = 0;
    v57 = 0;
    v124 = v44;
    v123 = v47;
  }

  if ((v37 & 4) != 0)
  {
    v63 = v39;
    v62 = _dispatch_thread_getspecific(22);
    if (v62)
    {
      v31 = *(v62 + 8) + 1;
    }

    else
    {
      v31 = 1;
    }

    v61 = v31;
    if (v31 <= _dispatch_continuation_cache_limit)
    {
      *(v63 + 16) = v62;
      *(v63 + 8) = v61;
      _dispatch_thread_setspecific(22, v63);
      v64 = 0;
    }

    else
    {
      v64 = v63;
    }

    v38 = v64;
  }

  else
  {
    v38 = 0;
  }

  _dispatch_mach_send_invoke(v44, v45, 6u);
  if ((v37 & 0x200) == 0)
  {
    v65 = v39;
    v125 = v39;
    v130 = 772079660;
    v129 = v39;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v131 = v65;
  }

  if (v38)
  {
    _dispatch_continuation_free_to_cache_limit(v38);
  }

  v66 = &v40;
  v76 = &v40;
  *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v40, v25, v26, v27, v28, v29).n128_u64[0];
  return result;
}

uint64_t _dispatch_mach_send_invoke(uint64_t a1, int a2, unsigned int a3)
{
  v20 = *(a1 + 120);
  v19 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v16 = 0xFFFFFFFFLL;
  v15 = 0;
  if ((a3 & 2) != 0)
  {
    v16 = 0x10FFFFFFFFLL;
    v15 = 0x1000000000;
  }

  else if ((a3 & 4) == 0)
  {
    v16 = 0x10FFFFFFFFLL;
  }

  result = _dispatch_thread_getspecific(25);
  v24 = (result & 0xF000) >> 12;
  if ((result & 0xF00) >> 8 > v24)
  {
    v13 = (result & 0xF00) >> 8;
  }

  else
  {
    v13 = (result & 0xF000) >> 12;
  }

  if (v13 <= (result & 0xF0000) >> 16)
  {
    v11 = (result & 0xF0000) >> 16;
  }

  else
  {
    if ((result & 0xF00) >> 8 > v24)
    {
      v12 = (result & 0xF00) >> 8;
    }

    else
    {
      v12 = (result & 0xF000) >> 12;
    }

    v11 = v12;
  }

  v14 = v11;
LABEL_15:
  v18 = *(v20 + 64);
  do
  {
    if ((v18 & v16) == v15)
    {
      if (v14 < (v18 & 0x700000000uLL) >> 32)
      {
        v25 = (v18 & 0x700000000uLL) >> 32;
        _dispatch_thread_getspecific(3);
        if (_dispatch_set_qos_class_enabled)
        {
          _pthread_workqueue_override_start_direct();
        }

        result = _dispatch_thread_getspecific(25);
        if (v25 > (result & 0xF0000) >> 16)
        {
          result = _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | (v25 << 16));
        }

        v14 = (v18 & 0x700000000uLL) >> 32;
        goto LABEL_15;
      }

      v17 = (v18 | v19) & 0xFFFFFFC7FFFFFFFFLL;
    }

    else
    {
      if ((a3 & 1) == 0)
      {
        break;
      }

      v17 = v18 | 0x2000000000;
    }

    v9 = v18;
    v10 = v18;
    atomic_compare_exchange_strong_explicit((v20 + 64), &v10, v17, memory_order_acquire, memory_order_acquire);
    if (v10 != v9)
    {
      v18 = v10;
    }
  }

  while (v10 != v9);
  if ((v18 & v16) == v15)
  {
    return _dispatch_mach_send_drain(a1, a2, a3, v4, v5, v6, v7, v8);
  }

  return result;
}

void _dispatch_mach_notification_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  v3 = ~*(a1 + 8);
  if ((a3 & *(a1 + 32)) != 0)
  {
    _dispatch_mach_send_invoke(v3, 0x40000, 1u);
  }

  _dispatch_release_2_tailcall(v3);
}

uint64_t dispatch_mach_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    _dispatch_abort(1915, a3, a3, a4, a5, a6, a7, a8);
  }

  result = _dispatch_mach_send_msg(a1, a2, 0, a3 & 0xFFFF0000);
  if (((result ^ 1) & 1) == 0)
  {
    _dispatch_abort(1918, (result ^ 1) & 1, v9, v10, v11, v12, v13, v14);
  }

  return result;
}

uint64_t _dispatch_mach_send_msg(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v49 = *(a1 + 120);
  if (*(a2 + 16) != -1985229329)
  {
    v4 = *(a2 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Message already enqueued";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x69408);
  }

  if ((*(a1 + 116) & 0x10) != 0 && (a4 & 4) == 0 && _dispatch_mach_msg_get_reply_port(a2))
  {
    v59 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(*(a2 + 32));
    if (!v59)
    {
      v59 = a1;
    }

    if (!v59)
    {
      _dispatch_abort(1839, 0, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((a4 & 0x40000) != 0)
  {
    *(a2 + 56) = 0;
  }

  else
  {
    v56 = 1;
    if ((a4 & 4) != 0)
    {
      v56 = 3;
    }

    v60 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if ((v56 & 2) != 0 || v60 <= 0x10FF)
    {
      v61 = v60;
    }

    else
    {
      v61 = 4351;
    }

    *(a2 + 56) = v61;
  }

  v62 = _dispatch_thread_getspecific(28);
  if (v62)
  {
    os_retain(v62);
  }

  *(a2 + 64) = v62;
  _dispatch_thread_getspecific(0);
  v40 = *(a2 + 64);
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] set", v11, v12, v13, v14, v15, v16, v17, 1856);
  v57 = a4 | _dispatch_mach_send_options();
  *(a2 + 48) = v57;
  dispatch_retain(a2);
  v54 = (*(a2 + 56) & 0x3FFF00uLL) >> 8;
  v18 = __clz(__rbit32(v54));
  if (v54)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 0;
  }

  v48 = v19;
  msg = _dispatch_mach_msg_get_msg(a2);
  *(a2 + 52) = _dispatch_mach_msg_get_reply_port(a2);
  v44 = 0;
  if (v57)
  {
    v44 = 8;
  }

  if ((*msg & 0x1F) != 0x12 || *(a2 + 52) || *(v49 + 88) || (*(a1 + 80) & 0x10000000) != 0)
  {
    v55 = *(a2 + 64);
    if (v55 != -1)
    {
      if (v55)
      {
        v42 = *(v55 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v43 = a2;
    if (a3)
    {
      v43 = a3;
    }

    v45 = _dispatch_mach_send_push_and_trydrain(a1, v43, v48, v44);
  }

  else
  {
    if (a3)
    {
      _dispatch_abort(1888, a3 == 0, v20, v21, v22, v23, v24, v25);
    }

    v46 = _dispatch_mach_msg_send(a1, a2, 0, 0, v44);
    if (!v46)
    {
      _dispatch_abort(1890, v46, v26, v27, v28, v29, v30, v31);
    }

    v45 = (v46 & 2) != 0;
  }

  if (v45)
  {
    _dispatch_thread_getspecific(0);
    v41 = *(a2 + 64);
    _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] clear", v32, v33, v34, v35, v36, v37, v38, 1901);
    if (*(a2 + 64))
    {
      os_release(*(a2 + 64));
    }

    *(a2 + 64) = 0;
    *(a2 + 16) = -1985229329;
    dispatch_release(a2);
  }

  return v45 & 1;
}

uint64_t dispatch_mach_send_with_result(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  if (a4)
  {
    v12 = v15;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_E42C0 = v15;
    __break(1u);
    JUMPOUT(0x69A84);
  }

  v20 = v16;
  v19 = 1930;
  if (v16)
  {
    _dispatch_abort(v19, v20, a3, 0, a5, a6, a7, a8);
  }

  v16 = (HIWORD(v16) << 16) | 1;
  result = _dispatch_mach_send_msg(v18, v17, 0, v16);
  v11 = result;
  v10 = 10;
  v9 = 0;
  if (result)
  {
    result = _dispatch_mach_msg_get_reason(v17, &v9);
    v10 = result;
  }

  *v14 = v10;
  *v13 = v9;
  return result;
}

uint64_t _dispatch_mach_msg_get_reason(uint64_t a1, int *a2)
{
  v4 = *(a1 + 48);
  if ((v4 & 0xFC000000) == 0xF8000000 && ((v4 >> 14) & 0xFFF) == 0x3E0)
  {
    *a2 = 0;
    return v4 & 0x3FFF;
  }

  else
  {
    *a2 = v4;
    v2 = 4;
    if (!v4)
    {
      return 3;
    }

    return v2;
  }
}

uint64_t dispatch_mach_send_and_wait_for_reply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  v23 = a3;
  v22 = 2003;
  if (a3)
  {
    _dispatch_abort(v22, v23, a3, a4, a5, a6, a7, a8);
  }

  v17 &= 0xFFFF0000;
  v15 = _dispatch_mach_send_and_wait_for_reply(v19, v18, v17, &v16);
  v21 = (v16 ^ 1) & 1;
  v20 = 2007;
  if (((v16 ^ 1) & 1) == 0)
  {
    _dispatch_abort(v20, v21, v8, v9, v10, v11, v12, v13);
  }

  return v15;
}

uint64_t _dispatch_mach_send_and_wait_for_reply(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v98 = a1;
  v97 = a2;
  v96 = a3;
  v95 = a4;
  v83 = 0u;
  v94 = 0;
  v93 = 0u;
  v92 = 0u;
  memset(v91, 0, sizeof(v91));
  v84 = v91;
  *&v91[0] = -2;
  *&v92 = *(a2 + 32);
  LODWORD(v94) = _dispatch_thread_getspecific(3);
  v90 = v91;
  v89 = 0;
  v87 = v97;
  reply_port = _dispatch_mach_msg_get_reply_port(v97);
  if (!reply_port)
  {
    reply_port = _dispatch_get_thread_reply_port();
    msg = _dispatch_mach_msg_get_msg(v97);
    v10 = ((*msg >> 8) & 0x1F) == 21;
    v100 = ((*msg >> 8) & 0x1F) == 21;
    v99 = 1965;
    if (!v10)
    {
      _dispatch_abort(v99, v100, v4, v5, v6, v7, v8, v9);
    }

    msg[3] = reply_port;
    v90[30] = 1;
  }

  v96 |= 4u;
  v82 = 1;
  v90 = _dispatch_calloc_typed();
  __copy_assignment_8_8_S_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128_tv640w32(v90, v91);
  v85[0] = 1;
  v85[1] = -1;
  v85[2] = 0;
  v85[3] = -1;
  v85[4] = 0;
  v85[5] = 0;
  v85[6] = v97;
  v85[7] = v90;
  v11 = _dispatch_mach_send_msg(v98, v97, v85, v96);
  *v95 = v11;
  if (v90[30])
  {
    _dispatch_clear_thread_reply_port(reply_port);
    v89 = *(*(v98 + 120) + 92);
  }

  v80 = v66;
  v119 = v98;
  v118 = v90;
  v117 = reply_port;
  v116 = v89;
  v81 = 0;
  if (reply_port)
  {
    v81 = v117 != -1;
  }

  if (!v81)
  {
    v115 = v117;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid reply port";
    qword_E42C0 = v117;
    __break(1u);
    JUMPOUT(0x69F38);
  }

  v114 = v118[6];
  v113 = 0;
  v112 = 0;
  *&v111[8] = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v79 = &vm_page_mask;
  *v111 = (vm_page_mask + 0x4000) & ~vm_page_mask;
  v78 = &v66[-((*v111 + 15) & 0x1FFFFFFF0)];
  bzero(v78, *v111);
  v113 = v78;
  v125 = v78;
  v124 = *v111;
  for (i = ((v78 + vm_page_size) & ~*v79); i < v125 + v124; i += vm_page_size)
  {
    *i = 0;
  }

  v108 = 117440526;
  if (v116 && v116 != -1)
  {
    v107 = v116;
    v108 |= 0x4000u;
  }

  if ((*(v119 + 116) & 0x80) != 0)
  {
    v108 |= 0x200u;
  }

  while (1)
  {
    v72 = 0;
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: MACH_RCV_MSG %s", v12, v13, v14, v15, v16, v17, v18, 824);
    v109 = mach_msg(v113, v108, 0, *v111, v117, 0, v107);
    *&v111[4] = v113;
    v76 = _dispatch_thread_getspecific(v72);
    v75 = v117;
    v74 = *v111;
    v73 = v108;
    mach_error_string(v109);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: MACH_RCV_MSG (size %u, opts 0x%x) returned: %s - 0x%x", v19, v20, v21, v22, v23, v24, v25, 831);
    v77 = v109;
    if (!v109)
    {
      break;
    }

    if (v77 == 268451842)
    {
      goto LABEL_34;
    }

    if (v77 != 268451844)
    {
      if (v77 != 268451846 && v77 != 268451849)
      {
        v102 = v109;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from mach_msg_receive";
        qword_E42C0 = v109;
        __break(1u);
        JUMPOUT(0x6A50CLL);
      }

LABEL_34:
      v71 = _dispatch_thread_getspecific(0);
      v69 = v114;
      v70 = v117;
      mach_error_string(v109);
      _dispatch_log("%u\t%p\tmachport[0x%08x]: sync reply port destroyed, ctxt %p: %s - 0x%x", v39, v40, v41, v42, v43, v44, v45, 858);
      if (*(v118 + 30))
      {
        _dispatch_destruct_reply_port();
      }

LABEL_52:
      free(v112);
      v120 = 0;
      goto LABEL_53;
    }

    if (v113->msgh_size >= 0xFFFFFFBC)
    {
      msgh_size = v113->msgh_size;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message";
      qword_E42C0 = msgh_size;
      __break(1u);
      JUMPOUT(0x6A280);
    }

    if ((v108 & 4) == 0)
    {
      v64 = v113->msgh_size;
      _dispatch_log("BUG in libdispatch client: dispatch_mach_send_and_wait_for_reply: dropped message too large to fit in memory: id = 0x%x, size = %u", v26, v27, v28, v29, v30, v31, v32, v113->msgh_id);
      goto LABEL_41;
    }

    v110 = v113->msgh_size + 68;
    v112 = malloc_type_malloc();
    v105 = v112;
    v122 = v112;
    v121 = 840;
    if (!v112)
    {
      _dispatch_bug(v121, 0, v33, v34, v35, v36, v37, v38);
    }

    v104 = v105;
    if (v105)
    {
      v113 = v112;
      *v111 = v110;
    }

    v108 |= 0x100u;
    v108 &= ~4u;
  }

  msgh_remote_port = v113->msgh_remote_port;
  _dispatch_thread_getspecific(0);
  v65 = v113->msgh_remote_port;
  v63 = v113->msgh_size;
  msgh_id = v113->msgh_id;
  msgh_local_port = v113->msgh_local_port;
  _dispatch_log("%u\t%p\tmachport[0x%08x]: received msg id 0x%x, size = %u, reply on 0x%08x", v47, v48, v49, v50, v51, v52, v53, 870);
  *v111 = v113->msgh_size + 68;
  if (v112)
  {
    if (*v111 < v110)
    {
      v103 = malloc_type_realloc();
      if (v103)
      {
        v112 = v103;
        v113 = v103;
      }
    }
  }

LABEL_41:
  _dispatch_mach_msg_reply_received(v119, v118, v113->msgh_local_port);
  v113->msgh_local_port = 0;
  v58 = *(v119 + 80);
  v68 = 1;
  if ((v58 & 0x10000000) == 0)
  {
    v68 = v109 != 0;
  }

  if (v68)
  {
    if (!v109)
    {
      mach_msg_destroy(v113);
    }

    goto LABEL_52;
  }

  *&v101[8] = 0;
  *v101 = v112 != 0;
  *&v101[4] = dispatch_mach_msg_create(v113, *v111, *v101, 0, v54, v55, v56, v57);
  if (!v112 || v113 != *&v111[4])
  {
    v67 = *&v111[4];
    v59 = _dispatch_mach_msg_get_msg(*&v101[4]);
    v130 = 771948548;
    v129 = v67;
    v128 = v59;
    v127 = 0;
    v126 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  *(*&v101[4] + 32) = v114;
  v120 = *&v101[4];
LABEL_53:
  v97 = v120;
  free(v90);
  return v97;
}

uint64_t dispatch_mach_send_with_result_and_wait_for_reply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  if (a4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_E42C0 = v15;
    __break(1u);
    JUMPOUT(0x6A738);
  }

  v12 = 0;
  v11 = 0;
  v20 = v16;
  v19 = 2023;
  if (v16)
  {
    _dispatch_abort(v19, v20, a3, 0, a5, a6, a7, a8);
  }

  v16 = HIWORD(v16) << 16;
  v16 |= 1u;
  v11 = _dispatch_mach_send_and_wait_for_reply(v18, v17, v16, &v12);
  reason = 10;
  v9 = 0;
  if (v12)
  {
    reason = _dispatch_mach_msg_get_reason(v17, &v9);
  }

  *v14 = reason;
  *v13 = v9;
  return v11;
}

uint64_t dispatch_mach_send_with_result_and_async_reply_4libxpc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  if (a4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_E42C0 = v16;
    __break(1u);
    JUMPOUT(0x6A868);
  }

  if ((*(v19 + 116) & 0x10) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_send_with_result_and_wait_for_reply is XPC only";
    __break(1u);
    JUMPOUT(0x6A8A4);
  }

  v21 = v17;
  v20 = 2053;
  if (v17)
  {
    _dispatch_abort(v20, v21, a3, 0, a5, a6, a7, a8);
  }

  v17 = (HIWORD(v17) << 16) | 1;
  v12 = v18;
  if (!_dispatch_mach_msg_get_reply_port(v18))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Reply port needed for async send with reply";
    __break(1u);
    JUMPOUT(0x6A930);
  }

  result = _dispatch_mach_send_msg(v19, v18, 0, v17);
  v11 = result;
  v10 = 10;
  v9 = 0;
  if (result)
  {
    result = _dispatch_mach_msg_get_reason(v18, &v9);
    v10 = result;
  }

  *v15 = v10;
  *v14 = v9;
  return result;
}

uint64_t _dispatch_mach_msg_get_reply_port(uint64_t a1)
{
  msg = _dispatch_mach_msg_get_msg(a1);
  v2 = msg[3];
  if (v2 && v2 != -1 && (*msg & 0x1F00u) >> 8 == 21)
  {
    return msg[3];
  }

  else
  {
    return 0;
  }
}

void dispatch_mach_reconnect(uint64_t a1, unsigned int a2, dispatch_object_s *a3)
{
  v5 = a3;
  v4 = *(a1 + 120);
  atomic_fetch_add_explicit((v4 + 88), 1u, memory_order_relaxed);
  if (a2 && a2 != -1 && a3)
  {
    dispatch_retain(a3);
    *(v5 + 48) = _dispatch_mach_checkin_options();
    *(v4 + 96) = _dispatch_mach_msg_get_remote_port(v5);
  }

  else
  {
    if (a3 != -1)
    {
      v5 = 0;
    }

    *(v4 + 96) = 0;
  }

  v9 = _dispatch_thread_getspecific(22);
  if (v9)
  {
    _dispatch_thread_setspecific(22, *(v9 + 16));
    v8 = v9;
  }

  else
  {
    v8 = _dispatch_continuation_alloc_from_heap();
  }

  *v8 = 260;
  v3 = 0;
  if (_dispatch_mach_reconnect_invoke)
  {
    v3 = _dispatch_mach_reconnect_invoke;
  }

  *(v8 + 32) = v3;
  *(v8 + 40) = v8;
  *(v8 + 48) = v5;
  *(v8 + 56) = a2;
  *(v8 + 24) = -1;
  *(v8 + 8) = -1;
  _dispatch_mach_send_push(a1, v8, 0);
}

BOOL _dispatch_mach_reconnect_invoke(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a2;
  v41 = a1;
  v40 = a1;
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_mach_reconnect_invoke");
  v39 = v41[15];
  v38 = v39;
  v50 = v39;
  v48 = *(v39 + 16);
  v49 = v48;
  v47 = v48;
  v51 = v48;
  if (v48)
  {
    v82 = v41;
    v81 = 5;
    dispatch_assert_queue_V2(&_dispatch_mgr_q);
    v80 = v41[15];
    _dispatch_unote_unregister(v80, 5, v13, v14, v15, v16, v17, v18);
    *(v41[15] + 24) = 0;
  }

  if (*(v39 + 92) && *(v39 + 92) != -1)
  {
    _dispatch_mach_msg_disconnected(v41, 0, *(v39 + 92), v8, v9, v10, v11, v12);
    *(v39 + 92) = 0;
  }

  if (*(v39 + 48))
  {
    v37 = *(v39 + 48);
    _dispatch_mach_msg_not_sent(v41, v37, 0);
    *(v39 + 48) = 0;
  }

  *(v41 + 59) &= ~1u;
  i = 0;
  v35 = 0;
  v34 = 0;
  v32 = -112;
  v46 = v41;
  v44 = *(v41 + 20);
  v45 = v44;
  v43 = v44;
  if ((v44 & 0x40000000) == 0)
  {
    v32 = -110;
  }

  v65 = (v39 + 40);
  v67 = _dispatch_thread_getspecific(3);
  v64 = v67 & 0xFFFFFFFC;
  v63 = 0;
  v62 = 0;
  v60 = v67 & 0xFFFFFFFC;
  v59 = v67 & 0xFFFFFFFC;
  v61 = v67 & 0xFFFFFFFC;
  v19 = 0;
  atomic_compare_exchange_strong_explicit((v39 + 40), &v19, v67 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    v63 = v19;
  }

  v58 = v19 == 0;
  v62 = v19 == 0;
  v57 = v62;
  if (v19)
  {
    _dispatch_unfair_lock_lock_slow(v65);
  }

  v30 = v34;
  v34 = *(v39 + 56);
  *(v39 + 56) = v30;
  if (v34)
  {
    *(v34 + 72) = &v34;
  }

  v31 = *(v39 + 56);
  if (v31)
  {
    *(v31 + 72) = v39 + 56;
  }

  for (i = v34; ; i = v35)
  {
    v27 = 0;
    if (i)
    {
      v35 = *(i + 64);
      v27 = 1;
    }

    if ((v27 & 1) == 0)
    {
      break;
    }

    *(i + 72) = 0;
    _dispatch_mach_reply_unregister(v41, i, v32);
  }

  v33 = *(v39 + 56) == 0;
  v66 = v39 + 40;
  v76 = (v39 + 40);
  v75 = 0;
  v78 = _dispatch_thread_getspecific(3);
  v74 = v78 & 0xFFFFFFFC;
  v71 = 0;
  v70 = 0;
  v72 = 0;
  v69 = atomic_exchange_explicit(v76, 0, memory_order_release);
  v73 = v69;
  v68 = v69;
  v75 = v69;
  if (v69 == v74)
  {
    v77 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(v76, v75);
    v79 = v75;
    v77 = (v75 & 2) != 0;
  }

  if (v33)
  {
    v29 = v42[7];
    v28 = v42[6];
    v52 = v42;
    v55 = v42;
    v54 = _dispatch_thread_getspecific(22);
    if (v54)
    {
      v26 = *(v54 + 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    v53 = v26;
    if (v26 <= _dispatch_continuation_cache_limit)
    {
      v55[2] = v54;
      *(v55 + 2) = v53;
      _dispatch_thread_setspecific(22, v55);
      v56 = 0;
    }

    else
    {
      v56 = v55;
    }

    v52 = v56;
    if (v56)
    {
      _dispatch_continuation_free_to_cache_limit(v52);
    }

    if (v28 == -1)
    {
      *(v41 + 59) = *(v41 + 59) & 0xFFFD | 2;
      v28 = 0;
    }

    if ((*(v41 + 59) & 2) != 0)
    {
      if (v29 && v29 != -1)
      {
        _dispatch_mach_msg_disconnected(v41, 0, v29, v20, v21, v22, v23, v24);
      }

      if (v28)
      {
        _dispatch_mach_msg_not_sent(v41, v28, 0);
      }
    }

    else
    {
      *(v39 + 92) = v29;
      *(v39 + 48) = v28;
    }

    atomic_fetch_add_explicit((v39 + 88), 0xFFFFFFFF, memory_order_relaxed);
  }

  return v33;
}

void _dispatch_mach_send_push(uint64_t a1, void **a2, unsigned int a3)
{
  v17 = *(a1 + 120);
  v14 = 0;
  LODWORD(v12) = 0;
  v11 = 0;
  if (*a2 > 0xFFF)
  {
    v10 = 0;
    if (*a2)
    {
      v10 = *a2;
    }

    v11 = v10 == &unk_DCD08;
  }

  a2[2] = 0;
  _dispatch_thread_setspecific(122, v17 + 72);
  v13 = atomic_exchange_explicit((v17 + 72), a2, memory_order_release);
  if (v13)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  _dispatch_retain_n_unsafe(a1, v3);
  if (v13)
  {
    *(v13 + 16) = a2;
  }

  else
  {
    *(v17 + 80) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (v13)
  {
    v16 = *(v17 + 64);
    do
    {
      v22 = v16;
      if ((v16 & 0x700000000) < a3 << 32)
      {
        v22 = v16 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v15 = v22;
      if (v16 == v22)
      {
        break;
      }

      v6 = v16;
      v7 = v16;
      atomic_compare_exchange_strong_explicit((v17 + 64), &v7, v22, memory_order_relaxed, memory_order_relaxed);
      if (v7 != v6)
      {
        v16 = v7;
      }
    }

    while (v7 != v6);
  }

  else
  {
    v14 = 0xA000000000;
    v12 = 2;
    if (v11)
    {
      v14 = 0xB000000000;
    }

    v16 = *(v17 + 64);
    do
    {
      v23 = v16;
      if ((v16 & 0x700000000) < a3 << 32)
      {
        v23 = v16 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v15 = v23 | v14;
      v4 = v16;
      v5 = v16;
      atomic_compare_exchange_strong_explicit((v17 + 64), &v5, v23 | v14, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v16 = v5;
      }
    }

    while (v5 != v4);
    if (((v16 ^ v15) & 0x8000000000) == 0)
    {
      _dispatch_release_2_no_dispose(a1);
    }
  }

  v19 = (v15 & 0x700000000) >> 32;
  if ((v16 & 0xFFFFFFFC) != 0)
  {
    v24 = v16 | 3;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    if (v16 & 0x700000000) < v19 << 32 && (_dispatch_set_qos_class_enabled)
    {
      _pthread_workqueue_override_start_direct_check_owner();
    }

    goto LABEL_49;
  }

  if ((v14 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, v19);
LABEL_49:
    _dispatch_release_2_tailcall(a1);
    return;
  }

  if (v12 || *(v17 + 88) || (*(a1 + 80) & 0x10000000) != 0)
  {
    v9 = 0;
    if (*a1)
    {
      v9 = *a1;
    }

    (*(v9 + 64))(a1, v19, v12 | 1);
  }

  else
  {
    if ((v16 & 0x1000000000) == 0)
    {
      goto LABEL_49;
    }

    v8 = 0;
    if (*a1)
    {
      v8 = *a1;
    }

    (*(v8 + 64))(a1, v19, 1);
  }
}

uint64_t dispatch_mach_get_checkin_port(uint64_t a1)
{
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    return -1;
  }

  else
  {
    return *(*(a1 + 120) + 96);
  }
}

BOOL dispatch_mach_can_handoff_4libxpc()
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "mach_msg")
    {
      v3 = i;
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:
  v1 = 0;
  if (v3)
  {
    v1 = 0;
    if (v3[2])
    {
      return *(v3[2] + 56) == 0;
    }
  }

  return v1;
}

void dispatch_mach_handoff_reply_f(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v17 = _dispatch_mach_handoff_context(a2);
  v16 = v17[2];
  _dispatch_mach_handoff_set_wlh(v16, a1);
  _dispatch_retain(a1);
  v17[3] = a1;
  *v16 = 260;
  v16[4] = a4;
  v16[5] = a3;
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

  v16[3] = v25;
  _dispatch_thread_getspecific(0);
  v14 = v16[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v4, v5, v6, v7, v8, v9, v10, 589);
  v26 = v16[3];
  if (v26 != -1)
  {
    if (v26)
    {
      v15 = *(v26 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v22 = v24;
  v21 = 0;
  if (v24)
  {
    if ((*(a1 + 84) & 0x40000000) != 0 || (*(a1 + 84) & 0xFFF) == 0)
    {
      v11 = v24 >> 8;
      v12 = __clz(__rbit32(v11));
      if (v11)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }

      v21 = v13;
    }

    else
    {
      v22 = 0;
    }
  }

  v16[1] = v22;
  *(v17 + 8) = v21;
  *v16 = &unk_DCE58;
}

void *_dispatch_mach_handoff_context(unsigned int a1)
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "mach_msg")
    {
      v6 = i;
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:
  if (!v6 || !v6[2])
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Trying to handoff IPC from non IPC context";
    __break(1u);
    JUMPOUT(0x6C338);
  }

  v2 = 0;
  if (*v6[2])
  {
    v2 = *v6[2];
  }

  if (*(v2 + 16) == 515)
  {
    v6[2] = _dispatch_calloc_typed();
    v3 = v6[2];
    *(v3 + 72) = 1;
  }

  else
  {
    v3 = v6[2];
    atomic_fetch_add_explicit((v3 + 72), 1u, memory_order_relaxed);
  }

  if (*(v3 + 56))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Calling dispatch_mach_handoff_reply multiple times from the same context";
    __break(1u);
    JUMPOUT(0x6C308);
  }

  *(v3 + 56) = a1;
  return v6;
}

uint64_t _dispatch_mach_handoff_set_wlh(uint64_t result, uint64_t a2)
{
  v4 = result;
  while (*(a2 + 24))
  {
    if ((*(a2 + 80) & 0x400000) != 0)
    {
      v5 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
      v2 = 0;
      atomic_compare_exchange_strong_explicit((a2 + 100), &v2, v5, memory_order_acquire, memory_order_acquire);
      if (v2)
      {
        _dispatch_unfair_lock_lock_slow((a2 + 100));
      }

      atomic_fetch_and_explicit((a2 + 80), 0xFFBFFFFF, memory_order_relaxed);
      result = _dispatch_thread_getspecific(3);
      v6 = atomic_exchange_explicit((a2 + 100), 0, memory_order_release);
      if (v6 == (result & 0xFFFFFFFC))
      {
        v7 = 0;
      }

      else
      {
        result = _dispatch_unfair_lock_unlock_slow(a2 + 100, v6);
        v7 = (v6 & 2) != 0;
      }

      if (v7)
      {
        result = _dispatch_thread_getspecific(25);
        if (!((result & 0xF0000) >> 16))
        {
          result = _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | 0x10000);
        }
      }
    }

    if ((*(a2 + 56) & 0x2000000000) != 0)
    {
      *(v4 + 64) = a2;
      return result;
    }

    a2 = *(a2 + 24);
  }

  *(v4 + 64) = 0;
  return result;
}

void dispatch_mach_handoff_reply(unint64_t a1, unsigned int a2, const void *a3)
{
  v18 = _dispatch_mach_handoff_context(a2);
  v17 = v18[2];
  _dispatch_mach_handoff_set_wlh(v17, a1);
  _dispatch_retain(a1);
  v18[3] = a1;
  v21 = _dispatch_Block_copy(a3);
  v15 = _Block_get_invoke_fn(a3);
  v16 = 0;
  if (v15)
  {
    v16 = v15;
  }

  if (v16 == _dispatch_block_special_invoke)
  {
    *v17 = 276;
    v17[5] = v21;
    inited = _dispatch_continuation_init_slow(v17, a1, 0);
  }

  else
  {
    _Block_get_invoke_fn(a3);
    *v17 = 276;
    v17[4] = _dispatch_call_block_and_release;
    v17[5] = v21;
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

    v17[3] = v27;
    _dispatch_thread_getspecific(0);
    v13 = v17[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
    v28 = v17[3];
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
    v23 = 0;
    if (v26)
    {
      if ((*(a1 + 84) & 0x40000000) != 0 || (*(a1 + 84) & 0xFFF) == 0)
      {
        v10 = v26 >> 8;
        v11 = __clz(__rbit32(v10));
        if (v10)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 0;
        }

        v23 = v12;
      }

      else
      {
        v24 = 0;
      }
    }

    v17[1] = v24;
    inited = v23;
  }

  *(v18 + 8) = inited;
  v17[6] = *v17;
  *v17 = &unk_DCE58;
}

void _dispatch_mach_ipc_handoff_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a1;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0;
  __b[1] = "mach_msg";
  __b[2] = v39;
  __b[3] = 0;
  LODWORD(__b[4]) = 0;
  v37 = _dispatch_thread_getspecific(20);
  v36 = v42[6];
  v35 = v42[7];
  v34 = __swp(0, (v39 + 64));
  if (v34)
  {
    if (v34)
    {
      v34 = ~v34;
    }

    else
    {
      _dispatch_sync_ipc_handoff_begin(v34, v35, v39 + 64);
    }
  }

  v42[2] = -1985229329;
  v42[7] = 0;
  v54 = __b;
  __b[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v54);
  v33 = v42;
  v46 = v42;
  v45 = v36;
  v44 = v42[3];
  v43 = v36 & 4;
  v48 = 1;
  v47 = 600;
  if ((v36 & 4) != 0)
  {
    v46[3] = -1;
  }

  if (v44 != -1)
  {
    v68 = 771817480;
    v67 = v44;
    v66 = v46;
    if (v44)
    {
      v31 = v67[8];
    }

    else
    {
      v31 = 0;
    }

    v65 = v31;
    v73 = v68;
    v72 = v31;
    v71 = v66;
    v70 = 0;
    v69 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v9, v10, v11, v12, v13, v14, v15, 607);
  }

  v77 = v46[1];
  v76 = v44;
  v75 = v43 | 2;
  v74 = 0;
  if (v77 != -1)
  {
    v84 = v77;
    v83 = v75;
    v82 = _dispatch_thread_getspecific(25);
    v97 = v82;
    v100 = v82 & 0xF00;
    v96 = v100 >> 8;
    v95 = v82;
    if (v100 >> 8)
    {
      v95 |= 1 << (v96 + 7);
    }

    v81 = v95;
    v98 = v95;
    v80 = v95 & 0xFFFFFF00;
    v30 = 1;
    if ((v83 & 1) == 0)
    {
      v30 = (v84 & 0x10000000) != 0;
    }

    v79 = v30;
    v86 = v84;
    v84 &= 0xFFFFFFu;
    if (v84)
    {
      if (v84 >= v80)
      {
        if (v79 || (v82 & 0x44000000) != 0)
        {
          v85 = v84;
        }

        else
        {
          v85 = v81;
        }
      }

      else
      {
        v85 = v81;
      }
    }

    else
    {
      v99 = v82 & 0xF000;
      v78 = v99 >> 12;
      if (v99 >> 12)
      {
        v88 = v78;
        v87 = 1 << (v78 + 7);
        v29 = v87 | 0xFF;
      }

      else
      {
        v29 = v81;
      }

      v85 = v29;
    }

    v74 = v85;
  }

  v92 = v74;
  v91 = v76;
  v90 = v75;
  v104 = v74;
  v107 = v74 != -1;
  v106 = 2409;
  if (v74 == -1)
  {
    _dispatch_abort(v106, v107, v3, v4, v5, v6, v7, v8);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v118 = v104;
    v117 = 4261412863;
    v116 = 0;
    v104 &= 0xFFFFFFFF02FFFFFFLL;
    v108 = _dispatch_thread_getspecific(4);
    v103 = v108;
    v102 = 0x1000000;
    v101 = 2281701376;
    if ((v108 & 0x1000000) != 0)
    {
      if (v104)
      {
        v28 = v104;
      }

      else
      {
        v112 = v103;
        v111 = v102;
        v110 = 0;
        v28 = v103 & (~v102 | 0xFFFFFF);
      }

      v105 = v28;
    }

    else
    {
      v115 = v103;
      v114 = v101;
      v113 = 0;
      v103 &= ~v101 | 0xFFFFFF;
      if (v104 == v103)
      {
        v105 = 0;
      }

      else
      {
        v105 = v104;
      }
    }
  }

  else
  {
    v105 = 0;
  }

  v92 = v105;
  if (v105)
  {
    goto LABEL_56;
  }

  if (v91 == -1)
  {
    v93 = -1;
    goto LABEL_57;
  }

  v27 = v91;
  if (v27 != _dispatch_thread_getspecific(28))
  {
LABEL_56:
    v93 = _dispatch_set_priority_and_voucher_slow(v92, v91, v90);
  }

  else
  {
    v89 = (v90 & 4) != 0;
    if ((v90 & 2) != 0)
    {
      if (v89 && v91)
      {
        v109 = v91;
        os_release(v91);
      }

      v91 = -1;
    }

    else if (!v89 && v91)
    {
      object = v91;
      os_retain(v91);
    }

    v93 = v91;
  }

LABEL_57:
  if ((v36 & 0x200) == 0)
  {
    v52 = v37;
    v51 = v42;
    v50 = 0;
    v49 = 0;
    v120 = v37;
    v119 = v42;
  }

  v32 = 0;
  if ((v40 & 0x1000000) != 0)
  {
    v32 = _dispatch_autorelease_pool_push();
  }

  v16 = v42[4];
  v61 = v42[5];
  v60 = v16;
  if (v16 == _dispatch_call_block_and_release && v61)
  {
    v25 = _Block_get_invoke_fn(v61);
    v26 = 0;
    if (v25)
    {
      v26 = v25;
    }

    v24 = v26;
  }

  else
  {
    v24 = v60;
  }

  v59 = v24;
  v129 = v61;
  v128 = v24;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  _dispatch_client_callout(v61, v60);
  v131 = v61;
  v130 = v59;
  if (v32)
  {
    _dispatch_autorelease_pool_pop(v32);
  }

  if ((v36 & 0x200) == 0)
  {
    v53 = v33;
    v121 = v33;
    v126 = 772079660;
    v125 = v33;
    v124 = 0;
    v123 = 0;
    v122 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v127 = v53;
  }

  v62 = __b;
  v23 = _dispatch_thread_getspecific(23) == __b;
  v64 = v23;
  v63 = 449;
  if (!v23)
  {
    _dispatch_abort(v63, v64, v17, v18, v19, v20, v21, v22);
  }

  _dispatch_thread_setspecific(23, *v62);
  if (__b[3])
  {
    _dispatch_mach_ipc_handoff_async(__b);
  }

  else
  {
    _dispatch_ipc_handoff_release(v39);
  }

  if (v34)
  {
    _dispatch_sync_ipc_handoff_end(v34, v35);
  }
}

void _dispatch_mach_ipc_handoff_async(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(v5 + 56);
  v3 = *(v5 + 64);
  v7 = *(v5 + 48);
  v2 = 0;
  if (**(a1 + 24))
  {
    v2 = **(a1 + 24);
  }

  (*(v2 + 72))(*(a1 + 24), *(a1 + 16), *(a1 + 32));
  if (v3)
  {
    _dispatch_sync_ipc_handoff_begin(v3, v4, v5 + 64);
    v1 = v3;
    atomic_compare_exchange_strong_explicit((v5 + 64), &v1, ~v3, memory_order_relaxed, memory_order_relaxed);
  }

  _dispatch_ipc_handoff_release(v5);
  _dispatch_release_tailcall(*(a1 + 24));
}

void _dispatch_ipc_handoff_release(uint64_t a1)
{
  if (!atomic_fetch_add_explicit((a1 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(a1);
  }
}

double _dispatch_mach_msg_invoke(dispatch_object_s *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v58 = 0uLL;
  v64 = &v58;
  _dispatch_thread_getspecific_pair(20, &v58, 21, &v58.n128_u64[1], a5, a6, a7, a8);
  v104 = v64->n128_u64[1];
  _dispatch_thread_setspecific_packed_pair(20, 21, v104, v8, v9, v10, v11, v12);
  v62 = v64->n128_u64[0];
  v63 = v62;
  v80 = v61;
  v79 = v59;
  v78 = v62;
  v77 = 0;
  v76 = 0;
  reason = _dispatch_mach_msg_get_reason(v61, &v76);
  v74 = 7;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0;
  __b[1] = "mach_msg";
  __b[2] = v80;
  __b[3] = 0;
  LODWORD(__b[4]) = 0;
  v90 = __b;
  __b[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v90);
  v72 = v78;
  v71 = v80;
  v88 = v78;
  v87 = v80;
  v86 = 0;
  v85 = 0;
  v151 = v78;
  v150 = v80;
  v77 = *(v78 + 88);
  *(v80 + 2) = -1985229329;
  v13 = *(v80 + 8);
  v97 = 771817488;
  v96 = v13;
  v95 = v80;
  if (v13 != -1)
  {
    v57 = v96 ? *(v96 + 32) : 0;
    v94 = v57;
    v102 = v97;
    v101 = v57;
    v100 = v95;
    v99 = 0;
    v98 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  _dispatch_thread_getspecific(0);
  v48 = *(v80 + 8);
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] adopt", v14, v15, v16, v17, v18, v19, v20, 2467);
  v27 = *(v80 + 8);
  v108 = *(v80 + 7);
  v107 = v27;
  v106 = v74;
  v105 = 0;
  if (v108 != -1)
  {
    v115 = v108;
    v114 = v106;
    v113 = _dispatch_thread_getspecific(25);
    v128 = v113;
    v131 = v113 & 0xF00;
    v127 = v131 >> 8;
    v126 = v113;
    if (v131 >> 8)
    {
      v126 |= 1 << (v127 + 7);
    }

    v112 = v126;
    v129 = v126;
    v111 = v126 & 0xFFFFFF00;
    v56 = 1;
    if ((v114 & 1) == 0)
    {
      v56 = (v115 & 0x10000000) != 0;
    }

    v110 = v56;
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
      v130 = v113 & 0xF000;
      v109 = v130 >> 12;
      if (v130 >> 12)
      {
        v119 = v109;
        v118 = 1 << (v109 + 7);
        v55 = v118 | 0xFF;
      }

      else
      {
        v55 = v112;
      }

      v116 = v55;
    }

    v105 = v116;
  }

  v123 = v105;
  v122 = v107;
  v121 = v106;
  v135 = v105;
  v138 = v105 != -1;
  v137 = 2409;
  if (v105 == -1)
  {
    _dispatch_abort(v137, v138, v21, v22, v23, v24, v25, v26);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v149 = v135;
    v148 = 4261412863;
    v147 = 0;
    v135 &= 0xFFFFFFFF02FFFFFFLL;
    v139 = _dispatch_thread_getspecific(4);
    v134 = v139;
    v133 = 0x1000000;
    v132 = 2281701376;
    if ((v139 & 0x1000000) != 0)
    {
      if (v135)
      {
        v54 = v135;
      }

      else
      {
        v143 = v134;
        v142 = v133;
        v141 = 0;
        v54 = v134 & (~v133 | 0xFFFFFF);
      }

      v136 = v54;
    }

    else
    {
      v146 = v134;
      v145 = v132;
      v144 = 0;
      v134 &= ~v132 | 0xFFFFFF;
      if (v135 == v134)
      {
        v136 = 0;
      }

      else
      {
        v136 = v135;
      }
    }
  }

  else
  {
    v136 = 0;
  }

  v123 = v136;
  if (v136)
  {
    goto LABEL_49;
  }

  if (v122 == -1)
  {
    v124 = -1;
    goto LABEL_50;
  }

  v53 = v122;
  if (v53 != _dispatch_thread_getspecific(28))
  {
LABEL_49:
    v124 = _dispatch_set_priority_and_voucher_slow(v123, v122, v121);
  }

  else
  {
    v120 = (v121 & 4) != 0;
    if ((v121 & 2) != 0)
    {
      if (v120 && v122)
      {
        v140 = v122;
        os_release(v122);
      }

      v122 = -1;
    }

    else if (!v120 && v122)
    {
      object = v122;
      os_retain(v122);
    }

    v124 = v122;
  }

LABEL_50:
  *(v80 + 8) = 0;
  v70 = 0;
  if ((v79 & 0x1000000) != 0)
  {
    v70 = _dispatch_autorelease_pool_push();
  }

  if ((v79 & 4) != 0)
  {
    _dispatch_client_callout3(*(v77 + 48), reason, v80, *(&dword_18 + _dispatch_mach_xpc_hooks));
  }

  else
  {
    if ((*(v78 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v78);
    }

    if (reason == 2 && (v69 = v78, v84 = v78, v82 = *(v78 + 80), v83 = v82, v81 = v82, (v82 & 0x10000000) != 0))
    {
      msg = _dispatch_mach_msg_get_msg(v80);
      _dispatch_thread_getspecific(0);
      msgh_local_port = msg->msgh_local_port;
      msgh_id = msg->msgh_id;
      msgh_remote_port = msg->msgh_remote_port;
      _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", v28, v29, v30, v31, v32, v33, v34, 2492);
      mach_msg_destroy(msg);
    }

    else
    {
      v52 = 0;
      if (*(v77 + 40))
      {
        v52 = *(v77 + 40);
      }

      _dispatch_client_callout4(*(v77 + 48), reason, v80, v76, v52);
    }
  }

  if (v70)
  {
    _dispatch_autorelease_pool_pop(v70);
  }

  v67 = v80;
  v89 = v80;
  v152 = v80;
  v157 = 772079660;
  v156 = v80;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v158 = v89;
  v66 = v80;
  dispatch_release(v80);
  v91 = __b;
  v41 = _dispatch_thread_getspecific(23) == __b;
  v93 = v41;
  v92 = 449;
  if (!v41)
  {
    _dispatch_abort(v92, v93, v35, v36, v37, v38, v39, v40);
  }

  _dispatch_thread_setspecific(23, *v91);
  if (__b[3])
  {
    _dispatch_mach_ipc_handoff_async(__b);
  }

  v65 = &v58;
  v103 = &v58;
  *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v58, v42, v43, v44, v45, v46).n128_u64[0];
  return result;
}

double _dispatch_mach_barrier_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = 0uLL;
  v45 = a1[7];
  v43 = a1[6];
  v74 = a1;
  v37 = 0;
  if (*a1)
  {
    v37 = *a1;
  }

  v42 = *(v37 + 16);
  if (v42 == 1024)
  {
    v50 = &v46;
    _dispatch_thread_getspecific_pair(20, &v46, 21, &v46.n128_u64[1], a5, a6, a7, a8);
    v85 = v50->n128_u64[1];
    _dispatch_thread_setspecific_packed_pair(20, 21, v85, v8, v9, v10, v11, v12);
  }

  v44 = *(v45 + 88);
  if (((*(v45 + 116) >> 2) & 1) == 0)
  {
    v41 = 0;
    if ((v47 & 0x1000000) != 0)
    {
      v41 = _dispatch_autorelease_pool_push();
    }

    _dispatch_mach_connect_invoke(v45);
    if (v41)
    {
      _dispatch_autorelease_pool_pop(v41);
    }
  }

  v40 = v49;
  v54 = v49;
  v53 = v43;
  v52 = v49[3];
  v51 = v43 & 4;
  v56 = 1;
  v55 = 600;
  if ((v43 & 4) != 0)
  {
    v54[3] = -1;
  }

  if (v52 != -1)
  {
    v78 = 771817480;
    v77 = v52;
    v76 = v54;
    if (v52)
    {
      v36 = v77[8];
    }

    else
    {
      v36 = 0;
    }

    v75 = v36;
    v83 = v78;
    v82 = v36;
    v81 = v76;
    v80 = 0;
    v79 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v13, v14, v15, v16, v17, v18, v19, 607);
  }

  v89 = v54[1];
  v88 = v52;
  v87 = v51 | 2;
  v86 = 0;
  if (v89 != -1)
  {
    v96 = v89;
    v95 = v87;
    v94 = _dispatch_thread_getspecific(25);
    v109 = v94;
    v112 = v94 & 0xF00;
    v108 = v112 >> 8;
    v107 = v94;
    if (v112 >> 8)
    {
      v107 |= 1 << (v108 + 7);
    }

    v93 = v107;
    v110 = v107;
    v92 = v107 & 0xFFFFFF00;
    v35 = 1;
    if ((v95 & 1) == 0)
    {
      v35 = (v96 & 0x10000000) != 0;
    }

    v91 = v35;
    v98 = v96;
    v96 &= 0xFFFFFFu;
    if (v96)
    {
      if (v96 >= v92)
      {
        if (v91 || (v94 & 0x44000000) != 0)
        {
          v97 = v96;
        }

        else
        {
          v97 = v93;
        }
      }

      else
      {
        v97 = v93;
      }
    }

    else
    {
      v111 = v94 & 0xF000;
      v90 = v111 >> 12;
      if (v111 >> 12)
      {
        v100 = v90;
        v99 = 1 << (v90 + 7);
        v34 = v99 | 0xFF;
      }

      else
      {
        v34 = v93;
      }

      v97 = v34;
    }

    v86 = v97;
  }

  v104 = v86;
  v103 = v88;
  v102 = v87;
  v116 = v86;
  v119 = v86 != -1;
  v118 = 2409;
  if (v86 == -1)
  {
    _dispatch_abort(v118, v119, a3, a4, a5, a6, a7, a8);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v130 = v116;
    v129 = 4261412863;
    v128 = 0;
    v116 &= 0xFFFFFFFF02FFFFFFLL;
    v120 = _dispatch_thread_getspecific(4);
    v115 = v120;
    v114 = 0x1000000;
    v113 = 2281701376;
    if ((v120 & 0x1000000) != 0)
    {
      if (v116)
      {
        v33 = v116;
      }

      else
      {
        v124 = v115;
        v123 = v114;
        v122 = 0;
        v33 = v115 & (~v114 | 0xFFFFFF);
      }

      v117 = v33;
    }

    else
    {
      v127 = v115;
      v126 = v113;
      v125 = 0;
      v115 &= ~v113 | 0xFFFFFF;
      if (v116 == v115)
      {
        v117 = 0;
      }

      else
      {
        v117 = v116;
      }
    }
  }

  else
  {
    v117 = 0;
  }

  v104 = v117;
  if (v117)
  {
    goto LABEL_61;
  }

  if (v103 == -1)
  {
    v105 = -1;
    goto LABEL_62;
  }

  v32 = v103;
  if (v32 != _dispatch_thread_getspecific(28))
  {
LABEL_61:
    v105 = _dispatch_set_priority_and_voucher_slow(v104, v103, v102);
  }

  else
  {
    v101 = (v102 & 4) != 0;
    if ((v102 & 2) != 0)
    {
      if (v101 && v103)
      {
        v121 = v103;
        os_release(v103);
      }

      v103 = -1;
    }

    else if (!v101 && v103)
    {
      object = v103;
      os_retain(v103);
    }

    v105 = v103;
  }

LABEL_62:
  if ((v43 & 0x200) == 0)
  {
    v60 = v45;
    v59 = v49;
    v58 = 0;
    v57 = 0;
    v132 = v45;
    v131 = v49;
  }

  if ((v43 & 4) != 0)
  {
    v63 = v40;
    v62 = _dispatch_thread_getspecific(22);
    if (v62)
    {
      v31 = *(v62 + 8) + 1;
    }

    else
    {
      v31 = 1;
    }

    v61 = v31;
    if (v31 <= _dispatch_continuation_cache_limit)
    {
      *(v63 + 16) = v62;
      *(v63 + 8) = v61;
      _dispatch_thread_setspecific(22, v63);
      v64 = 0;
    }

    else
    {
      v64 = v63;
    }

    v39 = v64;
  }

  else
  {
    v39 = 0;
  }

  v38 = 0;
  if ((v47 & 0x1000000) != 0)
  {
    v38 = _dispatch_autorelease_pool_push();
  }

  v20 = v49[4];
  v73 = v49[5];
  v72 = v20;
  if (v20 == _dispatch_call_block_and_release && v73)
  {
    v29 = _Block_get_invoke_fn(v73);
    v30 = 0;
    if (v29)
    {
      v30 = v29;
    }

    v28 = v30;
  }

  else
  {
    v28 = v72;
  }

  v71 = v28;
  v141 = v73;
  v140 = v28;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  _dispatch_client_callout(v73, v72);
  v143 = v73;
  v142 = v71;
  v27 = 0;
  if (*(v44 + 40))
  {
    v27 = *(v44 + 40);
  }

  _dispatch_client_callout4(*(v44 + 48), 6, 0, 0, v27);
  if (v38)
  {
    _dispatch_autorelease_pool_pop(v38);
  }

  if ((v43 & 0x200) == 0)
  {
    v65 = v40;
    v133 = v40;
    v138 = 772079660;
    v137 = v40;
    v136 = 0;
    v135 = 0;
    v134 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v139 = v65;
  }

  if (v39)
  {
    _dispatch_continuation_free_to_cache_limit(v39);
  }

  if (v42 == 1024)
  {
    v66 = &v46;
    v84 = &v46;
    *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v46, v21, v22, v23, v24, v25).n128_u64[0];
  }

  return result;
}

uint64_t _dispatch_mach_connect_invoke(uint64_t a1)
{
  v3 = *(a1 + 88);
  v2 = 0;
  if (*(v3 + 40))
  {
    v2 = *(v3 + 40);
  }

  result = _dispatch_client_callout4(*(v3 + 48), 1, 0, 0, v2);
  *(a1 + 116) = *(a1 + 116) & 0xFFFB | 4;
  return result;
}

void dispatch_mach_send_barrier_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = _dispatch_thread_getspecific(22);
  if (v20)
  {
    _dispatch_thread_setspecific(22, *(v20 + 16));
    v18 = v20;
  }

  else
  {
    v18 = _dispatch_continuation_alloc_from_heap();
  }

  *v18 = 260;
  *(v18 + 32) = a3;
  *(v18 + 40) = a2;
  v22 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v22 <= 0x10FF)
  {
    v23 = v22;
  }

  else
  {
    v23 = 4351;
  }

  v24 = _dispatch_thread_getspecific(28);
  if (v24)
  {
    os_retain(v24);
  }

  *(v18 + 24) = v24;
  _dispatch_thread_getspecific(0);
  v12 = *(v18 + 24);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
  v25 = *(v18 + 24);
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

  v21 = v23;
  if (v23 && (*(a1 + 84) & 0x40000000) == 0 && (*(a1 + 84) & 0xFFF) != 0)
  {
    v21 = 0;
  }

  *(v18 + 8) = v21;
  *(v18 + 48) = *v18;
  *(v18 + 56) = a1;
  v13 = 0;
  if (&unk_DCD08)
  {
    v13 = &unk_DCD08;
  }

  *v18 = v13;
  v19 = (*(v18 + 8) & 0x3FFF00uLL) >> 8;
  v10 = __clz(__rbit32(v19));
  if (v19)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  _dispatch_mach_send_push(a1, v18, v11);
}

void dispatch_mach_send_barrier(unint64_t a1, const void *a2)
{
  v21 = _dispatch_thread_getspecific(22);
  if (v21)
  {
    _dispatch_thread_setspecific(22, *(v21 + 16));
    v18 = v21;
  }

  else
  {
    v18 = _dispatch_continuation_alloc_from_heap();
  }

  v19 = _dispatch_Block_copy(a2);
  v14 = _Block_get_invoke_fn(a2);
  v15 = 0;
  if (v14)
  {
    v15 = v14;
  }

  if (v15 == _dispatch_block_special_invoke)
  {
    *v18 = 276;
    v18[5] = v19;
    _dispatch_continuation_init_slow(v18, a1, 0);
  }

  else
  {
    _Block_get_invoke_fn(a2);
    *v18 = 276;
    v18[4] = _dispatch_call_block_and_release;
    v18[5] = v19;
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

    v18[3] = v25;
    _dispatch_thread_getspecific(0);
    v11 = v18[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v2, v3, v4, v5, v6, v7, v8, 589);
    v26 = v18[3];
    if (v26 != -1)
    {
      if (v26)
      {
        v13 = *(v26 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v22 = v24;
    if (v24 && (*(a1 + 84) & 0x40000000) == 0 && (*(a1 + 84) & 0xFFF) != 0)
    {
      v22 = 0;
    }

    v18[1] = v22;
  }

  v18[6] = *v18;
  v18[7] = a1;
  v12 = 0;
  if (&unk_DCD08)
  {
    v12 = &unk_DCD08;
  }

  *v18 = v12;
  v20 = (v18[1] & 0x3FFF00uLL) >> 8;
  v9 = __clz(__rbit32(v20));
  if (v20)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  _dispatch_mach_send_push(a1, v18, v10);
}

uint64_t dispatch_mach_receive_barrier_f(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = _dispatch_thread_getspecific(22);
  if (v22)
  {
    _dispatch_thread_setspecific(22, *(v22 + 16));
    v21 = v22;
  }

  else
  {
    v21 = _dispatch_continuation_alloc_from_heap();
  }

  *v21 = 260;
  v21[4] = a3;
  v21[5] = a2;
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

  v21[3] = v27;
  _dispatch_thread_getspecific(0);
  v14 = v21[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
  v28 = v21[3];
  if (v28 != -1)
  {
    if (v28)
    {
      v17 = *(v28 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v24 = v26;
  v23 = 0;
  if (v26)
  {
    if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
    {
      v10 = v26 >> 8;
      v11 = __clz(__rbit32(v10));
      if (v10)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 0;
      }

      v23 = v12;
    }

    else
    {
      v24 = 0;
    }
  }

  v21[1] = v24;
  v21[6] = *v21;
  v21[7] = a1;
  v16 = 0;
  if (&unk_DCD40)
  {
    v16 = &unk_DCD40;
  }

  *v21 = v16;
  v15 = 0;
  if (*a1)
  {
    v15 = *a1;
  }

  return (*(v15 + 72))(a1, v21, v23);
}

uint64_t dispatch_mach_receive_barrier(unint64_t a1, const void *a2)
{
  v24 = _dispatch_thread_getspecific(22);
  if (v24)
  {
    _dispatch_thread_setspecific(22, *(v24 + 16));
    v21 = v24;
  }

  else
  {
    v21 = _dispatch_continuation_alloc_from_heap();
  }

  v22 = _dispatch_Block_copy(a2);
  v17 = _Block_get_invoke_fn(a2);
  v18 = 0;
  if (v17)
  {
    v18 = v17;
  }

  if (v18 == _dispatch_block_special_invoke)
  {
    *v21 = 276;
    v21[5] = v22;
    inited = _dispatch_continuation_init_slow(v21, a1, 0);
  }

  else
  {
    _Block_get_invoke_fn(a2);
    *v21 = 276;
    v21[4] = _dispatch_call_block_and_release;
    v21[5] = v22;
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

    v21[3] = v29;
    _dispatch_thread_getspecific(0);
    v13 = v21[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v2, v3, v4, v5, v6, v7, v8, 589);
    v30 = v21[3];
    if (v30 != -1)
    {
      if (v30)
      {
        v16 = *(v30 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v26 = v28;
    v25 = 0;
    if (v28)
    {
      if ((*(a1 + 84) & 0x40000000) != 0 || (*(a1 + 84) & 0xFFF) == 0)
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

        v25 = v11;
      }

      else
      {
        v26 = 0;
      }
    }

    v21[1] = v26;
    inited = v25;
  }

  v21[6] = *v21;
  v21[7] = a1;
  v15 = 0;
  if (&unk_DCD40)
  {
    v15 = &unk_DCD40;
  }

  *v21 = v15;
  v14 = 0;
  if (*a1)
  {
    v14 = *a1;
  }

  return (*(v14 + 72))(a1, v21, inited);
}

void dispatch_mach_cancel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "dispatch_mach_cancel");
  _dispatch_retain(a1);
  if ((atomic_fetch_or_explicit((a1 + 80), 0x10000000u, memory_order_relaxed) & 0x10000000) == 0)
  {
    dispatch_mach_reconnect(a1, 0, 0xFFFFFFFFFFFFFFFFLL);
  }

  _dispatch_release_tailcall(a1);
}

void _dispatch_mach_activate(uint64_t a1)
{
  v8 = a1;
  v7 = 0;
  v6 = 0;
  _dispatch_lane_activate(a1);
  if ((*(v8 + 116) & 1) == 0)
  {
    v7 = _dispatch_queue_compute_priority_and_wlh(v8, &v6);
    if (v7)
    {
      _dispatch_mach_install(v8, v6, v7, v1, v2, v3, v4, v5);
    }
  }
}

uint64_t _dispatch_mach_install(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = result;
  v17 = a3;
  v16 = (*(result + 80) & 0x10000000) != 0;
  v15 = *(result + 88);
  if (*(result + 116))
  {
    _dispatch_abort(2673, (*(result + 116) & 1) == 0, a3, a4, a5, a6, a7, a8);
  }

  *(result + 116) |= 1u;
  v14 = *(*(result + 120) + 88);
  if (HIBYTE(v14) >> 7)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Channel never connected";
    qword_E42C0 = v14;
    __break(1u);
    JUMPOUT(0x72218);
  }

  if (!*(result + 84))
  {
    *(result + 84) = a3;
  }

  if (!v16 && (*(result + 116) & 0x10) != 0)
  {
    result = (*(&stru_20.cmd + _dispatch_mach_xpc_hooks))(*(v15 + 48));
    if (result)
    {
      v13 = off_DD4B0(&_dispatch_xpc_type_sigterm, 15, 0);
      *(v13 + 8) = ~v19;
      *(v19 + 128) = v13;
      result = _dispatch_unote_register(*(v19 + 128), a2, v17, v8, v9, v10, v11, v12);
    }
  }

  if (!v16 && *(v15 + 24))
  {
    if ((*(v15 + 29) & 1) == 0)
    {
      _dispatch_abort(2701, *(v15 + 29) & 1, a3, a4, a5, a6, a7, a8);
    }

    return _dispatch_unote_register(v15, a2, v17, a4, a5, a6, a7, a8);
  }

  return result;
}

void _dispatch_mach_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v51 = a2;
  i = a3;
  v49 = 8;
  v48 = _dispatch_mach_invoke2;
  v47 = a1;
  v46[8] = 0;
  *v46 = (a3 & 1) == 0;
  v45 = 0;
  if ((a3 & 3) == 0)
  {
    *(v47 + 16) = -1985229329;
    v44 = _dispatch_thread_getspecific(20);
    v43 = v47;
    v62 = v44;
    v61 = v47;
    v60 = 0;
    v59 = 0;
    v66 = v44;
    v65 = v47;
  }

  i |= v49;
  if ((i & 2) != 0)
  {
    v45 = 0x40020000000001;
  }

  else
  {
    v99 = v47;
    v98 = i;
    v97 = (*(v47 + 80) - 1) << 41;
    v105 = _dispatch_thread_getspecific(3);
    v96 = v105 & 0xFFFFFFFC | 0x20000000000000;
    v94 = 0;
    v93 = 0;
    v92 = 0;
    v95 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v95 |= 0x4000000000uLL;
      v92 = 0;
    }

    else if ((v98 & 0x40000) != 0)
    {
      v92 = 0x4000000000;
    }

    else
    {
      v95 |= 0x4000000000uLL;
      v92 = 1;
    }

    v104 = (v98 & 2) == 0;
    v103 = 1331;
    if ((v98 & 2) != 0)
    {
      _dispatch_abort(v103, v104, v8, v9, v10, v11, v12, v13);
    }

    v109 = _dispatch_thread_getspecific(25);
    v111 = v109 & 0xF00;
    v108 = v111 >> 8;
    v110 = v109 & 0xF000;
    v107 = v110 >> 12;
    v115 = v109 & 0xF0000;
    v106 = (v109 & 0xF0000u) >> 16;
    if (v111 >> 8 > v110 >> 12)
    {
      v38 = v108;
    }

    else
    {
      v38 = v107;
    }

    if (v38 <= v106)
    {
      v36 = v106;
    }

    else
    {
      if (v108 <= v107)
      {
        v37 = v107;
      }

      else
      {
        v37 = v108;
      }

      v36 = v37;
    }

    v91 = v36;
LABEL_22:
    v90 = 0;
    v89 = (v99 + 56);
    v94 = *(v99 + 56);
    do
    {
      v93 = v94;
      if ((v94 & v95) != 0)
      {
        if (!v92)
        {
          break;
        }

        v93 ^= v92;
      }

      else
      {
        v164 = v94;
        v163 = v91;
        v167 = v94;
        v35 = 0;
        if ((v94 & 0x1000000000) != 0)
        {
          v165 = v164 & 0x700000000;
          v35 = v163 < (v164 & 0x700000000) >> 32;
        }

        if (v35)
        {
          v113 = v94;
          v114 = v94 & 0x700000000;
          v112 = (v94 & 0x700000000) >> 32;
          v117 = _dispatch_thread_getspecific(3);
          v116 = v112;
          if (_dispatch_set_qos_class_enabled)
          {
            v119 = v116;
            v118 = 0;
            if (v116)
            {
              v118 = 1 << (v119 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v121 = v112;
          v120 = _dispatch_thread_getspecific(25);
          v122 = v120 & 0xF0000;
          if (v112 > (v120 & 0xF0000) >> 16)
          {
            v120 = v120 & 0xFFF0FFFF | (v121 << 16);
            _dispatch_thread_setspecific(25, v120);
          }

          v91 = v112;
          goto LABEL_22;
        }

        v93 = v93 & 0x7700000001 | v96;
        v166 = v94;
        if ((v94 & 0x10000000000) != 0 || v94 + v97 < 0x20000000000000)
        {
          v93 |= 0x40000000000000uLL;
        }
      }

      v88 = v93;
      v16 = v94;
      v17 = v94;
      atomic_compare_exchange_strong_explicit(v89, &v17, v93, memory_order_acquire, memory_order_acquire);
      if (v17 != v16)
      {
        v94 = v17;
      }

      v87 = v17 == v16;
      v90 = v17 == v16;
    }

    while (v17 != v16);
    v86 = v90;
    v102 = (v94 & v92) == v92;
    v101 = 1364;
    if ((v94 & v92) != v92)
    {
      _dispatch_abort(v101, v102, v14, v15, a5, a6, a7, a8);
    }

    if ((v94 & v95) != 0)
    {
      v100 = 0;
    }

    else
    {
      v93 &= v92 | 0x60000000000000;
      v94 &= 0x3FFE0000000000uLL;
      v100 = v93 - v94;
    }

    v45 = v100;
  }

  if (v45)
  {
    v42 = 0;
    if ((i & 0x40000) != 0)
    {
      v42 = 0;
    }

    else
    {
      v125 = *(v47 + 84);
      v124 = _dispatch_thread_getspecific(25);
      v123 = v124;
      if (v124)
      {
        if ((v125 & 0xFFF) != 0)
        {
          v123 &= 0x880F0000;
          if ((v124 & 0xFFF) > (v125 & 0xFFFu))
          {
            v34 = v124 & 0xFFF;
          }

          else
          {
            v34 = v125 & 0xFFF;
          }

          v123 |= v34;
          v127 = v125 & 0xF000;
          v129 = v123 & 0xF00;
          if (v127 >> 12 > v129 >> 8)
          {
            v125 &= 0x4400F000u;
          }

          else
          {
            v125 &= 0x40000000u;
          }

          v123 |= v125;
        }

        else
        {
          if ((v123 & 0xFFF) != 0)
          {
            v123 |= 0x40000000u;
          }

          v126 = v125 & 0xF000;
          v128 = v123 & 0xF00;
          if (v126 >> 12 > v128 >> 8)
          {
            v123 = v123 & 0xFFFF0FFF | v125 & 0x400F000;
          }
        }
      }

      else
      {
        v123 = v125 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v123);
      v42 = v124;
    }

    if ((i & 0x100000) != 0)
    {
      v56 = v52;
      v54 = *(v52 + 80);
      v55 = v54;
      v53 = v54;
      if ((v54 & 0x400000) != 0)
      {
        v85 = v52;
        v84 = 0x400000;
        v82 = -4194305;
        v81 = -4194305;
        v83 = -4194305;
        v77 = -4194305;
        v76 = -4194305;
        v78 = -4194305;
        v75 = atomic_fetch_and_explicit((v52 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v79 = v75;
        v74 = v75;
        v80 = v75 & 0xFFBFFFFF;
      }
    }

    v41 = v47;
    v132 = v47;
    v131 = i;
    v170 = v47;
    v169 = 256;
    v176 = 1;
    v175 = 738;
    v174 = v47;
    v172 = *(v47 + 80);
    v173 = v172;
    v171 = v172;
    v168 = v172 & 0x30000;
    v130 = (v172 & 0x30000) << 8;
    if (v130)
    {
      v131 = v131 & 0xFCFFFFFF | v130;
    }

    for (i = v131; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v51);
      }

      v40 = v47;
      *&v46[1] = v48(v47, v51, i, &v45);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v39 = 0uLL;
        v134 = v47;
        v133 = &v39;
        v177 = &v39;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v39, v19, a5, a6, a7, a8);
        _dispatch_thread_setspecific_pair(20, v134, 21, v133, v20, v21, v22, v23);
        _dispatch_last_resort_autorelease_pool_pop(v51);
        v64 = &v39;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v39, v24, v25, v26, v27, v28);
      }

      v58 = *&v46[1] != 1;
      v57 = 2026;
      if (*&v46[1] == 1)
      {
        _dispatch_abort(v57, v58, v18, v19, a5, a6, a7, a8);
      }

      v33 = 0;
      if (*&v46[1])
      {
        v33 = *&v46[1] != -1;
      }

      if (v33)
      {
        break;
      }

      v154 = v47;
      v153 = v45;
      v152 = *&v46[1] == 0;
      v151 = 0;
      v150 = 0;
      v149 = 0;
      v148 = (v47 + 56);
      v151 = *(v47 + 56);
      do
      {
        v150 = (v151 - v153) & 0xFFFFFFF700000001;
        v156 = v151;
        if ((v151 & 0xFF80000000000000) == 0)
        {
          v178 = v151;
          if ((v151 & 0x8000000000) != 0)
          {
            v146 = 0x8000000000;
            v145 = 0x8000000000;
            v147 = 0x8000000000;
            v141 = 0x8000000000;
            v140 = 0x8000000000;
            v142 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v154 + 56), 0x8000000000uLL, memory_order_acquire);
            v143 = xor_explicit;
            v138 = xor_explicit;
            v144 = xor_explicit ^ v147;
            v155 = 0;
            goto LABEL_101;
          }

          if (v152)
          {
            v150 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v150 |= 0x8000000000uLL;
          }
        }

        v137 = v150;
        v29 = v151;
        v30 = v151;
        atomic_compare_exchange_strong_explicit(v148, &v30, v150, memory_order_release, memory_order_relaxed);
        if (v30 != v29)
        {
          v151 = v30;
        }

        v136 = v30 == v29;
        v149 = v30 == v29;
      }

      while (v30 != v29);
      v135 = v149;
      v179 = v151;
      v180 = v151;
      v32 = 0;
      if ((v151 & 0x1000000000) != 0)
      {
        v32 = (v179 & 0x800000000) != 0;
      }

      if (v32)
      {
        v157 = v151 & 0x700000000;
        v159 = (v151 & 0x700000000uLL) >> 32;
        v158 = _dispatch_thread_getspecific(25);
        v160 = v158 & 0xF0000;
        if (v159 > (v158 & 0xF0000) >> 16)
        {
          v158 &= 0xFFF0FFFF;
          v158 |= v159 << 16;
          _dispatch_thread_setspecific(25, v158);
        }
      }

      v155 = 1;
LABEL_101:
      if (v155)
      {
        v45 = 0;
        *&v46[1] = 0;
        break;
      }

      *&v46[1] = _dispatch_thread_getspecific(20);
      v31 = 0;
      if (**&v46[1])
      {
        v31 = **&v46[1];
      }

      if (*(v31 + 16) & 0x10000) == 0 && (v46[0])
      {
        break;
      }
    }

    if ((i & 0x40000) == 0)
    {
      v162 = v42;
      v161 = _dispatch_thread_getspecific(25);
      v162 &= 0xFFF0FFFF;
      v162 |= v161 & 0xF0000;
      _dispatch_thread_setspecific(25, v162);
    }
  }

  if (v46[0])
  {
    v63 = v47;
    v67 = v47;
    v72 = 772079660;
    v71 = v47;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v73 = v63;
  }

  if (*&v46[1])
  {
    _dispatch_queue_invoke_finish(v47, v51, *&v46[1], v45, a5, a6, a7, a8);
  }

  else
  {
    _dispatch_release_2_tailcall(v47);
  }
}

uint64_t _dispatch_mach_invoke2(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v39 = 0;
  v38 = _dispatch_thread_getspecific(20);
  v37 = *(a1 + 120);
  v36 = *(a1 + 88);
  v32 = 0;
  if ((a3 & 0x40000) == 0)
  {
    v32 = 0;
    if (v36)
    {
      v49 = _dispatch_thread_getspecific(29);
      if (v49)
      {
        _dispatch_abort(453, (v49 & 1) == 0, v5, v6, v7, v8, v9, v10);
      }

      if (v49)
      {
        v46 = *(v49 + 24);
      }

      else
      {
        v46 = -4;
      }

      v45 = *(v36 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      v31 = 0;
      if (v45)
      {
        v31 = 0;
        if (v45 != -4)
        {
          v31 = v45 != v46;
        }
      }

      v32 = v31;
    }
  }

  if (v32)
  {
    _dispatch_mach_handle_wlh_change(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  if ((*(a1 + 116) & 1) == 0)
  {
    if ((a3 & 0x40000) != 0)
    {
      return *(a1 + 24);
    }

    v34 = 0x2000000;
    if ((a3 & 0x10000) != 0)
    {
      v34 = _dispatch_thread_getspecific(25);
    }

    v50 = _dispatch_thread_getspecific(29);
    if (v50)
    {
      _dispatch_abort(453, (v50 & 1) == 0, v11, v12, v13, v14, v15, v16);
    }

    if (v50)
    {
      _dispatch_mach_install(a1, *(v50 + 24), v34, v12, v13, v14, v15, v16);
    }

    else
    {
      _dispatch_mach_install(a1, -4, v34, v12, v13, v14, v15, v16);
    }
  }

  if (!*(a1 + 48))
  {
    goto LABEL_28;
  }

  if (v38 != *(a1 + 24))
  {
    v39 = *(a1 + 24);
    goto LABEL_28;
  }

  while (1)
  {
    while (1)
    {
      v39 = _dispatch_lane_serial_drain(a1, a2, a3, a4, v7, v8, v9, v10);
LABEL_28:
      v35 = *(a1 + 80);
      if (v39 || (v35 & 0x10000000) != 0)
      {
        break;
      }

      v47 = *(v36 + 16);
      v30 = 0;
      if (v47)
      {
        v30 = 0;
        if ((v47 & 1) == 0)
        {
          v30 = (v47 & 2) == 0;
        }
      }

      if (!v30)
      {
        break;
      }

      _dispatch_unote_resume(v36, v4, v5, v6, v7, v8, v9, v10);
      if (v38 == *(a1 + 24) && !v38[3] && !*(v37 + 72) && (*(v38 + 21) & 0x80000000) != 0)
      {
        v48 = _dispatch_thread_getspecific(29);
        if (v48)
        {
          _dispatch_abort(453, (v48 & 1) == 0, v17, v18, v19, v20, v21, v22);
        }

        v29 = 0;
        if (_dispatch_thread_getspecific(5))
        {
          v29 = 0;
          if (v48)
          {
            v29 = 0;
            if (*(v48 + 24) != -4)
            {
              v29 = (*(v36 + 16) & 0xFFFFFFFFFFFFFFFCLL) == *(v48 + 24);
            }
          }
        }

        if (v29)
        {
          _dispatch_event_loop_drain(1u);
          if (*(a1 + 48))
          {
            continue;
          }
        }
      }

      v35 = *(a1 + 80);
      break;
    }

    if (*(v37 + 72))
    {
      if ((*(v37 + 30) & 1) == 0 || *(v37 + 88))
      {
        if (*(v37 + 88))
        {
          v28 = *(v37 + 16) != 0;
        }

        else
        {
          v28 = *(a1 + 118) & 1;
        }

        v27 = 0;
        if (v28)
        {
          v27 = v38 != &_dispatch_mgr_q;
        }

        if (v27)
        {
          if (v39)
          {
            return v39;
          }

          else
          {
            return &_dispatch_mgr_q;
          }
        }

        v33 = 0;
        if (v38 != &_dispatch_mgr_q)
        {
          v33 = 4;
        }

        _dispatch_mach_send_invoke(a1, a3, v33);
        if (!v39 && *(a1 + 48))
        {
          v39 = *(a1 + 24);
        }
      }

      if (!v39 && *(v37 + 72))
      {
        v39 = -1;
      }
    }

    if ((v35 & 0x10000000) == 0)
    {
      return v39;
    }

    if ((v35 & 0x80000000) == 0 && !_dispatch_mach_cancel(a1, v4, v5, v6, v7, v8, v9, v10))
    {
      if (v39)
      {
        return v39;
      }

      else
      {
        return -1;
      }
    }

    if ((*(a1 + 116) & 8) != 0)
    {
      return v39;
    }

    if (v38 != *(a1 + 24))
    {
      break;
    }

    if ((*(a1 + 56) & 0xFF80000000000000) != 0)
    {
      return *(a1 + 24);
    }

    if (!*(a1 + 48))
    {
      _dispatch_mach_cancel_invoke(a1, a3);
      return v39;
    }
  }

  if (v39)
  {
    return v39;
  }

  else
  {
    return *(a1 + 24);
  }
}

void _dispatch_mach_wakeup(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 120);
  *&v9[8] = 0;
  *v9 = *(a1 + 80);
  if (*(a1 + 116))
  {
    if (*(a1 + 48))
    {
      *&v9[4] = 1;
    }

    else if (*(v10 + 72))
    {
      if ((*(v10 + 64) & 0xFFFFFFFC) == 0 && ((*(v10 + 30) & 1) == 0 || *(v10 + 88)))
      {
        if (*(v10 + 88))
        {
          v8 = *(v10 + 16) != 0;
        }

        else
        {
          v8 = *(a1 + 118) & 1;
        }

        if (v8)
        {
          *&v9[4] = &_dispatch_mgr_q;
        }

        else
        {
          *&v9[4] = 1;
        }
      }
    }

    else if (((*v9 & 0x10000000) == 0 || (*v9 & 0x40000000) == 0 || (a3 & 0x10) != 0) && (*v9 & 0x10000000) != 0 && (*(a1 + 116) & 8) == 0)
    {
      *&v9[4] = 1;
    }
  }

  else
  {
    *&v9[4] = 1;
  }

  if (*&v9[4] == 1 && *(a1 + 24) == &_dispatch_mgr_q)
  {
    *&v9[4] = &_dispatch_mgr_q;
  }

  _dispatch_queue_wakeup(a1, a2, a3, *&v9[4], a5, a6, a7, a8);
}

uint64_t _dispatch_xpc_sigterm_merge_evt(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = ~*(a1 + 8);
  _dispatch_barrier_async_detached_f(v9, v9, _dispatch_mach_sigterm_invoke);
  v8 = 0;
  if (*v9)
  {
    v8 = *v9;
  }

  v4 = (*&a4 & 0x3FFF00uLL) >> 8;
  v5 = __clz(__rbit32(v4));
  if (v4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  return (*(v8 + 64))(v9, v6, 19);
}

uint64_t _dispatch_mach_sigterm_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _dispatch_unote_unregister(*(a1 + 128), 5, a3, a4, a5, a6, a7, a8);
  if ((*(a1 + 80) & 0x10000000) == 0)
  {
    v10 = *(a1 + 88);
    v9 = 0;
    if (*(v10 + 40))
    {
      v9 = *(v10 + 40);
    }

    return _dispatch_client_callout4(*(v10 + 48), 11, 0, 0, v9);
  }

  return result;
}

void *dispatch_mach_msg_create(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a3;
  v10 = 1;
  if (a2 >= 0x18)
  {
    v9 = 0;
    if (a3)
    {
      v9 = a1 == 0;
    }

    v10 = v9;
  }

  if (v10)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Empty message";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0x745ACLL);
  }

  v11 = 96;
  if (!a3)
  {
    v11 = a2 + 88;
    if (a2 - 8 >= 0xFFFFFFFFFFFFFFA0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Message size too large";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x7462CLL);
    }
  }

  v12 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, v11, a3, a4, a5, a6, a7, a8);
  if (v14)
  {
    v12[11] = a1;
  }

  else if (a1)
  {
    __memcpy_chk();
  }

  v12[2] = -1985229329;
  v12[3] = &off_E0600;
  *(v12 + 18) = v14;
  v12[10] = a2;
  if (a4)
  {
    *a4 = _dispatch_mach_msg_get_msg(v12);
  }

  return v12;
}

uint64_t _dispatch_mach_msg_get_msg(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return *(a1 + 88);
  }

  else
  {
    return a1 + 88;
  }
}

void _dispatch_mach_msg_dispose(uint64_t a1)
{
  if (*(a1 + 64))
  {
    os_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    if (v7 == 1)
    {
      free(*(a1 + 88));
    }

    else if (v7 == 2)
    {
      v8 = mach_vm_deallocate(mach_task_self_, *(a1 + 88), *(a1 + 80));
      if (v8)
      {
        _dispatch_bug(3009, v8, v1, v2, v3, v4, v5, v6);
      }
    }
  }
}

uint64_t dispatch_mach_msg_get_msg(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  return _dispatch_mach_msg_get_msg(a1);
}

uint64_t _dispatch_mach_msg_async_reply_invoke(void *a1, uint64_t a2, int a3)
{
  v44 = a1[7];
  v55 = a1[6];
  v54 = a3 | 4;
  v53 = v44;
  v52 = 0;
  v51 = 0;
  reason = _dispatch_mach_msg_get_reason(v55, &v51);
  v49 = 7;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0;
  __b[1] = "mach_msg";
  __b[2] = v55;
  __b[3] = 0;
  LODWORD(__b[4]) = 0;
  v65 = __b;
  __b[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v65);
  v63 = v53;
  v62 = v55;
  v61 = 0;
  v60 = 0;
  v129 = v53;
  v128 = v55;
  v52 = *(v53 + 88);
  v55[2] = -1985229329;
  v3 = v55[8];
  v77 = 771817488;
  v76 = v3;
  v75 = v55;
  if (v3 != -1)
  {
    v43 = v76 ? *(v76 + 32) : 0;
    v74 = v43;
    v82 = v77;
    v81 = v43;
    v80 = v75;
    v79 = 0;
    v78 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  _dispatch_thread_getspecific(0);
  v33 = v55[8];
  _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] adopt", v4, v5, v6, v7, v8, v9, v10, 2467);
  v17 = v55[8];
  v86 = v55[7];
  v85 = v17;
  v84 = v49;
  v83 = 0;
  if (v86 != -1)
  {
    v93 = v86;
    v92 = v84;
    v91 = _dispatch_thread_getspecific(25);
    v106 = v91;
    v109 = v91 & 0xF00;
    v105 = v109 >> 8;
    v104 = v91;
    if (v109 >> 8)
    {
      v104 |= 1 << (v105 + 7);
    }

    v90 = v104;
    v107 = v104;
    v89 = v104 & 0xFFFFFF00;
    v42 = 1;
    if ((v92 & 1) == 0)
    {
      v42 = (v93 & 0x10000000) != 0;
    }

    v88 = v42;
    v95 = v93;
    v93 &= 0xFFFFFFu;
    if (v93)
    {
      if (v93 >= v89)
      {
        if (v88 || (v91 & 0x44000000) != 0)
        {
          v94 = v93;
        }

        else
        {
          v94 = v90;
        }
      }

      else
      {
        v94 = v90;
      }
    }

    else
    {
      v108 = v91 & 0xF000;
      v87 = v108 >> 12;
      if (v108 >> 12)
      {
        v97 = v87;
        v96 = 1 << (v87 + 7);
        v41 = v96 | 0xFF;
      }

      else
      {
        v41 = v90;
      }

      v94 = v41;
    }

    v83 = v94;
  }

  v101 = v83;
  v100 = v85;
  v99 = v84;
  v113 = v83;
  v116 = v83 != -1;
  v115 = 2409;
  if (v83 == -1)
  {
    _dispatch_abort(v115, v116, v11, v12, v13, v14, v15, v16);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v127 = v113;
    v126 = 4261412863;
    v125 = 0;
    v113 &= 0xFFFFFFFF02FFFFFFLL;
    v117 = _dispatch_thread_getspecific(4);
    v112 = v117;
    v111 = 0x1000000;
    v110 = 2281701376;
    if ((v117 & 0x1000000) != 0)
    {
      if (v113)
      {
        v40 = v113;
      }

      else
      {
        v121 = v112;
        v120 = v111;
        v119 = 0;
        v40 = v112 & (~v111 | 0xFFFFFF);
      }

      v114 = v40;
    }

    else
    {
      v124 = v112;
      v123 = v110;
      v122 = 0;
      v112 &= ~v110 | 0xFFFFFF;
      if (v113 == v112)
      {
        v114 = 0;
      }

      else
      {
        v114 = v113;
      }
    }
  }

  else
  {
    v114 = 0;
  }

  v101 = v114;
  if (v114)
  {
    goto LABEL_49;
  }

  if (v100 == -1)
  {
    v102 = -1;
    goto LABEL_50;
  }

  v39 = v100;
  if (v39 != _dispatch_thread_getspecific(28))
  {
LABEL_49:
    v102 = _dispatch_set_priority_and_voucher_slow(v101, v100, v99);
  }

  else
  {
    v98 = (v99 & 4) != 0;
    if ((v99 & 2) != 0)
    {
      if (v98 && v100)
      {
        v118 = v100;
        os_release(v100);
      }

      v100 = -1;
    }

    else if (!v98 && v100)
    {
      object = v100;
      os_retain(v100);
    }

    v102 = v100;
  }

LABEL_50:
  v55[8] = 0;
  v47 = 0;
  if ((v54 & 0x1000000) != 0)
  {
    v47 = _dispatch_autorelease_pool_push();
  }

  if ((v54 & 4) != 0)
  {
    _dispatch_client_callout3(*(v52 + 48), reason, v55, *(&dword_18 + _dispatch_mach_xpc_hooks));
  }

  else
  {
    if ((*(v53 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v53);
    }

    if (reason == 2 && (v59 = v53, v57 = *(v53 + 80), v58 = v57, v56 = v57, (v57 & 0x10000000) != 0))
    {
      msg = _dispatch_mach_msg_get_msg(v55);
      _dispatch_thread_getspecific(0);
      msgh_local_port = msg->msgh_local_port;
      msgh_id = msg->msgh_id;
      msgh_remote_port = msg->msgh_remote_port;
      _dispatch_log("%u\t%p\tmachport[0x%08x]: drop msg id 0x%x, reply on 0x%08x", v18, v19, v20, v21, v22, v23, v24, 2492);
      mach_msg_destroy(msg);
    }

    else
    {
      v38 = 0;
      if (*(v52 + 40))
      {
        v38 = *(v52 + 40);
      }

      _dispatch_client_callout4(*(v52 + 48), reason, v55, v51, v38);
    }
  }

  if (v47)
  {
    _dispatch_autorelease_pool_pop(v47);
  }

  v64 = v55;
  v130 = v55;
  v135 = 772079660;
  v134 = v55;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v136 = v64;
  dispatch_release(v55);
  v66 = __b;
  v31 = _dispatch_thread_getspecific(23) == __b;
  v68 = v31;
  v67 = 449;
  if (!v31)
  {
    _dispatch_abort(v67, v68, v25, v26, v27, v28, v29, v30);
  }

  _dispatch_thread_setspecific(23, *v66);
  if (__b[3])
  {
    _dispatch_mach_ipc_handoff_async(__b);
  }

  _dispatch_release(a1[7]);
  v69 = a1;
  v72 = a1;
  result = _dispatch_thread_getspecific(22);
  v71 = result;
  if (result)
  {
    v37 = *(v71 + 8) + 1;
  }

  else
  {
    v37 = 1;
  }

  v70 = v37;
  if (v37 <= _dispatch_continuation_cache_limit)
  {
    v72[2] = v71;
    *(v72 + 2) = v70;
    result = _dispatch_thread_setspecific(22, v72);
    v73 = 0;
  }

  else
  {
    v73 = v72;
  }

  v69 = v73;
  if (v73)
  {
    return _dispatch_continuation_free_to_cache_limit(v69);
  }

  return result;
}

uint64_t dispatch_mach_msg_get_filter_policy_id(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Filter id should be non-NULL";
    qword_E42C0 = 0;
    __break(1u);
    JUMPOUT(0x75748);
  }

  result = dispatch_mach_msg_get_msg(a1, 0);
  if (!result)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Messsage should be non-NULL";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x757A0);
  }

  v5 = (result + ((*(result + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v5)
  {
    v3 = *v5;
    qword_E4290 = "BUG IN LIBDISPATCH: Trailer format is invalid";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x75808);
  }

  if (v5[1] < 0x44)
  {
    v4 = v5[1];
    qword_E4290 = "BUG IN LIBDISPATCH: Trailer doesn't contain filter policy id";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x75878);
  }

  *a2 = v5[15];
  return result;
}

uint64_t dispatch_mig_server(uint64_t a1, uint64_t a2, uint64_t (*a3)(mach_msg_header_t *, mach_msg_header_t *))
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v58 = 117442818;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 1000;
  v49 = 0;
  v48 = 0;
  v47 = a2 + 68;
  v46 = *(a1 + 88);
  v35 = &v28[-((a2 + 83) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v35, a2 + 68);
  v55 = v35;
  v35[1].msgh_remote_port = 0;
  v71 = v55;
  v70 = v47;
  for (i = ((v55 + vm_page_size) & ~vm_page_mask); i < v71 + v70; i += vm_page_size)
  {
    *i = 0;
  }

  v34 = &v28[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v34, v47);
  v54 = v34;
  v34->msgh_size = 0;
  v68 = v54;
  v67 = v47;
  for (j = ((v54 + vm_page_size) & ~vm_page_mask); j < v68 + v67; j += vm_page_size)
  {
    *j = 0;
  }

  v58 |= 4u;
  v57 = v58;
  while (1)
  {
    v44 = v61;
    v65 = v61;
    v63 = *(v61 + 80);
    v64 = v63;
    v62 = v63;
    v45 = v63;
    v42 = *(v61 + 56);
    v43 = v42;
    v41 = v42;
    v72 = v42;
    if ((v42 & 0xFF80000000000000) != 0 || (v45 & 0x10000000) != 0 || (--v50, !v50))
    {
      v58 &= ~2u;
      v57 &= ~2u;
      if ((v57 & 1) == 0)
      {
        break;
      }
    }

    v53 = mach_msg(v54, v57, v54->msgh_size, v47, *(v46 + 24), 0, 0);
    v57 = v58;
    if (v53)
    {
      v33 = v53;
      if (v53 != 268435460 && v53 != 268435459)
      {
        if (v33 != 268451842)
        {
          if (v33 == 268451843)
          {
            if (v54->msgh_remote_port || (v48 & 1) != 0)
            {
              return 0;
            }
          }

          else
          {
            if (v33 == 268451844)
            {
              v57 &= 0xFFFFFFFA;
              v40 = v54->msgh_size + 68;
              v39 = malloc_type_malloc();
              if (v39)
              {
                v47 = v40;
                v54 = v39;
              }

              if (!mach_msg(v54, v57, 0, v47, *(v46 + 24), 0, 0))
              {
                msgh_id = v54->msgh_id;
                msgh_size = v54->msgh_size;
                _dispatch_log("BUG in libdispatch client: dispatch_mig_server received message larger than requested size %zd: id = 0x%x, size = %d", v10, v11, v12, v13, v14, v15, v16, v60);
                mach_msg_destroy(v54);
              }

              if (v39)
              {
                free(v39);
              }
            }

            _dispatch_bug_mach_client("dispatch_mig_server: mach_msg() failed", v53);
          }
        }
      }

      else
      {
        _dispatch_mig_consume_unsent_message(v54, v3, v4, v5, v6, v7, v8, v9);
      }

      return v53;
    }

    if ((v57 & 2) == 0)
    {
      return v53;
    }

    if (v51)
    {
      v51 = 0;
    }

    v48 = 1;
    v56 = v55;
    v55 = v54;
    v54 = v56;
    v74 = voucher_create_with_mach_msg(v55, v3, v4, v5, v6, v7, v8, v9);
    v77 = v74;
    v76 = _dispatch_thread_getspecific(28);
    v86 = v76;
    v85 = v77;
    if (v76 == v77)
    {
      v87 = -1;
    }

    else
    {
      if (v86)
      {
        v84 = 0;
        v83 = 0;
      }

      _dispatch_thread_setspecific(28, v85);
      if (v85)
      {
        v82 = 0;
        v81 = 0;
      }

      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", v17, v18, v19, v20, v21, v22, v23, 400);
      if (v85)
      {
        v32 = *(v85 + 32);
      }

      else
      {
        v32 = 0;
      }

      v80 = v32;
      if (v86)
      {
        v31 = *(v86 + 8);
      }

      else
      {
        v31 = 0;
      }

      v79 = v31;
      if (v80 == v31)
      {
        v30 = -1;
      }

      else
      {
        v30 = v80;
      }

      v87 = v30;
    }

    v78 = v87;
    if (v87 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v78);
    }

    v73 = v76;
    if (v76)
    {
      v75 = v73;
      os_release(v73);
    }

    v24 = v54;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    *&v54->msgh_bits = 0u;
    *&v24->msgh_voucher_port = v38;
    v49 = v59(v55, v54);
    if (v49)
    {
      v52 = _dispatch_mig_return_code(v54);
    }

    else
    {
      v52 = -303;
    }

    v29 = v52;
    if (v52 == -305)
    {
      v54->msgh_remote_port = 0;
    }

    else if (v29)
    {
      v55->msgh_remote_port = 0;
      mach_msg_destroy(v55);
    }

    if (v54->msgh_remote_port)
    {
      v57 |= 1u;
      if ((v54->msgh_bits & 0x1F) != 0x12)
      {
        v57 |= 0x10u;
      }
    }
  }

  return v53;
}

void _dispatch_mig_consume_unsent_message(mach_msg_header_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  msgh_local_port = a1->msgh_local_port;
  if (msgh_local_port && msgh_local_port != -1)
  {
    v9 = 0;
    v8 = (a1->msgh_bits >> 8) & 0x1F;
    if (v8 == 16)
    {
      v9 = mach_port_mod_refs(mach_task_self_, msgh_local_port, 1u, -1);
    }

    else if (v8 == 18 || v8 == 17)
    {
      v9 = mach_port_deallocate(mach_task_self_, msgh_local_port);
    }

    if (v9 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x761B8);
    }

    if (v9)
    {
      _dispatch_bug(3179, v9, a3, a4, a5, a6, a7, a8);
    }
  }

  mach_msg_destroy(a1);
}

uint64_t _dispatch_mig_return_code(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return a1[8];
  }
}

uint64_t dispatch_mach_mig_demux(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38[3] = a4;
  v26 = 0;
  v38[0] = 0;
  v38[1] = "mach_mig_demux";
  v38[2] = a1;
  msg = dispatch_mach_msg_get_msg(a4, 0);
  msgh_id = msg->msgh_id;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v35 = _dispatch_mach_mig_resolve(msgh_id, v40, v39);
  if (v35)
  {
    v43 = v38;
    v24 = 23;
    v38[0] = _dispatch_thread_getspecific(23);
    _dispatch_thread_setspecific(23, v43);
    v33 = *(v35 + 32) + 68;
    v25 = &v21 - ((v33 + 15) & 0x1FFFFFFF0);
    bzero(v25, v33);
    v34 = v25;
    v49 = v25;
    v48 = v33;
    for (i = (&v25[vm_page_size] & ~vm_page_mask); i < &v49[v48]; i += vm_page_size)
    {
      *i = 0;
    }

    v4 = v34;
    LODWORD(v30) = msg->msgh_bits & 0x1F;
    DWORD1(v30) = 36;
    *(&v30 + 1) = msg->msgh_remote_port;
    LODWORD(v31) = 0;
    HIDWORD(v31) = msgh_id + 100;
    v5 = v30;
    *(v34 + 2) = v31;
    *v4 = v5;
    (*(v35 + 8))(msg, v34);
    v23 = _dispatch_mig_return_code(v34);
    if (v23 == -305)
    {
      v34[2] = 0;
    }

    else if (v23)
    {
      msg->msgh_remote_port = 0;
      mach_msg_destroy(msg);
    }

    if (v34[2])
    {
      v29 = 1;
      if ((*v34 & 0x1F) != 0x12)
      {
        v29 |= 0x10u;
      }

      v32 = mach_msg(v34, v29, v34[1], 0, 0, 0, 0);
      v22 = v32;
      if (v32)
      {
        if ((v22 - 268435459) >= 2)
        {
          if (v32 == -301)
          {
            v28 = -301;
            qword_E4290 = "MIG_REPLY_MISMATCH";
            qword_E42C0 = -301;
            __break(1u);
            JUMPOUT(0x765B8);
          }

          v27 = v32;
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux: mach_msg(MACH_SEND_MSG) failed";
          qword_E42C0 = v32;
          __break(1u);
          JUMPOUT(0x765F4);
        }

        _dispatch_mig_consume_unsent_message(v34, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    v44 = v38;
    v19 = _dispatch_thread_getspecific(23) == v38;
    v46 = v19;
    v45 = 449;
    if (!v19)
    {
      _dispatch_abort(v45, v46, v13, v14, v15, v16, v17, v18);
    }

    _dispatch_thread_setspecific(23, *v44);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_mach_mig_resolve(int a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (i >= a3)
    {
      return 0;
    }

    if (*(*(a2 + 8 * i) + 8) <= a1 && a1 < *(*(a2 + 8 * i) + 12))
    {
      break;
    }
  }

  if (*(*(a2 + 8 * i) + 32 + 40 * (a1 - *(*(a2 + 8 * i) + 8)) + 8))
  {
    return *(a2 + 8 * i) + 32 + 40 * (a1 - *(*(a2 + 8 * i) + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch_mach_mig_demux_get_context()
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "mach_mig_demux")
    {
      v2 = i;
      goto LABEL_7;
    }
  }

  v2 = 0;
LABEL_7:
  if (!v2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_mig_demux_get_context not called from dispatch_mach_mig_demux context";
    __break(1u);
    JUMPOUT(0x76868);
  }

  return v2[2];
}

uint64_t _dispatch_mach_msg_set_reason(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
  {
    _dispatch_abort(606, a3 & 0xFFFFFFFFFFFFC000, a3, a4, a5, a6, a7, a8);
  }

  if (!a2 && a3)
  {
    v8 = a3 | 0xF8F80000;
  }

  else
  {
    v8 = a2;
  }

  *(result + 48) = v8;
  return result;
}

uint64_t _dispatch_mach_reply_list_remove_locked(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(result + 72))
  {
    _dispatch_abort(319, *(result + 72) != 0, a3, a4, a5, a6, a7, a8);
  }

  if (*(result + 64))
  {
    *(*(result + 64) + 72) = *(result + 72);
  }

  **(result + 72) = *(result + 64);
  *(result + 64) = -1;
  *(result + 72) = -1;
  *(result + 72) = 0;
  return result;
}

void *_dispatch_mach_msg_create_reply_disconnected(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a1;
  v26 = 0;
  if (a1)
  {
    v23 = *(v27 + 52);
  }

  else
  {
    v23 = *(v29 + 24);
  }

  v25 = v23;
  if (v23)
  {
    if (v29 && (v24[1] = v29, v35 = v29, v33 = *(v29 + 16), v34 = v33, v32 = v33, (v36 = v33) == 0) && (*(v29 + 30) & 1) != 0)
    {
      if (*(v29 + 56))
      {
        os_release(*(v29 + 56));
        *(v29 + 56) = 0;
      }

      _dispatch_destruct_reply_port();
      return 0;
    }

    else
    {
      v24[0] = 0;
      v26 = dispatch_mach_msg_create(0, 0x18uLL, 0, v24, a5, a6, a7, a8);
      *(v24[0] + 12) = v25;
      if (v27)
      {
        v26[7] = *(v27 + 56);
        v26[4] = *(v27 + 32);
        v26[8] = *(v27 + 64);
        if (v26[8])
        {
          v37 = v26[8];
          os_retain(v37);
        }
      }

      else
      {
        v26[7] = *(v29 + 40);
        v26[4] = *(v29 + 48);
        v26[8] = *(v29 + 56);
        *(v29 + 56) = 0;
      }

      _dispatch_mach_msg_set_reason(v26, 0, v28, v8, v9, v10, v11, v12);
      _dispatch_thread_getspecific(0);
      v21 = *(v24[0] + 12);
      v22 = v26[4];
      _dispatch_log("%u\t%p\tmachport[0x%08x]: reply disconnected, ctxt %p", v13, v14, v15, v16, v17, v18, v19, 1014);
      return v26;
    }
  }

  else
  {
    if (!v27 && *(v29 + 56))
    {
      os_release(*(v29 + 56));
      *(v29 + 56) = 0;
    }

    return 0;
  }
}

void _dispatch_destruct_reply_port()
{
  v6 = thread_destruct_special_reply_port();
  if (v6 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x76CF0);
  }

  if (v6)
  {
    _dispatch_bug(524, v6, v0, v1, v2, v3, v4, v5);
  }
}

uint64_t _dispatch_mach_send_drain(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a3;
  v42 = *(a1 + 120);
  v38 = (*(v42 + 64) & 0x700000000uLL) >> 32;
  v34 = 0;
  v33 = 0;
  do
  {
LABEL_2:
    if (!*(v42 + 72))
    {
      v37 = *(v42 + 64);
      do
      {
        if ((v37 & 0x2000000000) != 0)
        {
          v36 = v37 & 0xFFFFFFC7FFFFFFFFLL;
        }

        else
        {
          v36 = 0;
        }

        v10 = v37;
        v11 = v37;
        atomic_compare_exchange_strong_explicit((v42 + 64), &v11, v36, memory_order_release, memory_order_relaxed);
        if (v11 != v10)
        {
          v37 = v11;
        }
      }

      while (v11 != v10);
      goto LABEL_83;
    }

    v32 = *(v42 + 80);
    if (!v32)
    {
      v32 = _dispatch_wait_for_enqueuer((v42 + 80));
    }

    v39 = v32;
    while (1)
    {
      v31 = v43;
      v43 &= ~8u;
      v30 = v39[2];
      *(v42 + 80) = v30;
      if (!v30)
      {
        v29 = *(v42 + 72);
        while (v39 == (v29 & 0xFFFFFFFFFFFFFFF8))
        {
          v8 = v29;
          v9 = v29;
          atomic_compare_exchange_strong_explicit((v42 + 72), &v9, 0, memory_order_release, memory_order_relaxed);
          if (v9 != v29)
          {
            v29 = v9;
          }

          if (v9 == v8)
          {
            goto LABEL_16;
          }
        }

        v28 = v39[2];
        if (!v28)
        {
          v28 = _dispatch_wait_for_enqueuer(v39 + 2);
        }

        v30 = v28;
        *(v42 + 80) = v28;
      }

LABEL_16:
      v26 = 0;
      if (*v39 > 0xFFFuLL)
      {
        v25 = 0;
        if (*v39)
        {
          v25 = *v39;
        }

        v26 = *(v25 + 16) == 768;
      }

      if (v26)
      {
        if ((v43 & 4) == 0)
        {
          goto LABEL_60;
        }

        _dispatch_continuation_pop(v39, 0, a2, a1);
        goto LABEL_50;
      }

      if (*v39 <= 0xFFFuLL && (*v39 & 1) != 0)
      {
        v40 = v39[6];
        v41 = v39[7];
        goto LABEL_35;
      }

      if (*v39 > 0xFFFuLL)
      {
        break;
      }

      if (*(v42 + 16) && _dispatch_thread_getspecific(20) != &_dispatch_mgr_q)
      {
        *(a1 + 118) = *(a1 + 118) & 0xFFFE | 1;
        v33 |= 2u;
        goto LABEL_60;
      }

      if (!_dispatch_mach_reconnect_invoke(a1, v39, a3, a4, a5, a6, a7, a8))
      {
        goto LABEL_60;
      }

LABEL_50:
      v39 = v30;
      if (!v30)
      {
        goto LABEL_2;
      }
    }

    v40 = v39;
    v41 = 0;
LABEL_35:
    v47 = *(v40 + 8);
    if (v47 != -1)
    {
      if (v47)
      {
        v24 = *(v47 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v23 = 1;
    if (!*(v42 + 88))
    {
      v23 = (*(a1 + 80) & 0x10000000) != 0;
    }

    if (v23)
    {
      _dispatch_mach_msg_not_sent(a1, v40, v41);
      goto LABEL_50;
    }

    v35 = _dispatch_mach_msg_send(a1, v40, v41, v38, v31);
    if (v35)
    {
      if ((v35 & 2) != 0)
      {
        v34 = 1;
      }

      goto LABEL_50;
    }

    if (*(a1 + 118))
    {
      v33 |= 2u;
    }

LABEL_60:
    v39[2] = v30;
    v22 = 0;
    if (!v30)
    {
      v12 = 0;
      atomic_compare_exchange_strong_explicit((v42 + 72), &v12, v39, memory_order_release, memory_order_relaxed);
      v22 = v12 != 0;
    }

    if (v22)
    {
      v27 = *(v42 + 80);
      if (!v27)
      {
        v27 = _dispatch_wait_for_enqueuer((v42 + 80));
      }

      v39[2] = v27;
    }

    *(v42 + 80) = v39;
    v21 = 0;
    if (*v39 > 0xFFFuLL)
    {
      v20 = 0;
      if (*v39)
      {
        v20 = *v39;
      }

      v21 = *(v20 + 16) == 768;
    }

    if (v21)
    {
      v37 = *(v42 + 64);
      do
      {
        v36 = v37 & 0xFFFFFFC700000000 | 0x3000000000;
        v13 = v37;
        v14 = v37;
        atomic_compare_exchange_strong_explicit((v42 + 64), &v14, v36, memory_order_release, memory_order_relaxed);
        if (v14 != v13)
        {
          v37 = v14;
        }
      }

      while (v14 != v13);
    }

    else
    {
      v37 = *(v42 + 64);
      do
      {
        if ((v37 & 0x2800000000) != 0)
        {
          v36 = v37 & 0xFFFFFFC7FFFFFFFFLL;
        }

        else
        {
          v36 = v37 & 0xFFFFFFDF00000000 | 0x2000000000;
        }

        v15 = v37;
        v16 = v37;
        atomic_compare_exchange_strong_explicit((v42 + 64), &v16, v36, memory_order_release, memory_order_relaxed);
        if (v16 != v15)
        {
          v37 = v16;
        }
      }

      while (v16 != v15);
    }

LABEL_83:
    if ((v37 & 0x800000000) != 0)
    {
      v49 = (v37 & 0x700000000uLL) >> 32;
      v48 = _dispatch_thread_getspecific(25);
      if (v49 > (v48 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v48 & 0xFFF0FFFF | (v49 << 16));
      }
    }

    v38 = (v36 & 0x700000000) >> 32;
  }

  while (v36);
  if ((v36 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, v38);
    v46 = v34 & 1;
  }

  else
  {
    if (!v36 && (*(a1 + 118) & 2) != 0 && (*(a1 + 116) & 8) == 0)
    {
      v33 |= 0x12u;
    }

    if (((v37 ^ v36) & 0x8000000000) != 0)
    {
      if (v33)
      {
        v33 |= 1u;
      }

      else
      {
        _dispatch_release_2(a1);
      }
    }

    if (v33)
    {
      v19 = 0;
      if (*a1)
      {
        v19 = *a1;
      }

      if (*(a1 + 118))
      {
        v18 = (v36 & 0x700000000) >> 32;
      }

      else
      {
        v18 = 0;
      }

      (*(v19 + 64))(a1, v18, v33);
    }

    v46 = v34;
  }

  return v46 & 1;
}