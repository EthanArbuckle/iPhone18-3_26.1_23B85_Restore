void dispatch_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v8 = _Block_get_invoke_fn(block);
  v9 = 0;
  if (v8)
  {
    v9 = v8;
  }

  if (v9 == _dispatch_block_special_invoke)
  {
    _dispatch_sync_block_with_privdata(queue, block, 16);
  }

  else
  {
    v6 = _Block_get_invoke_fn(block);
    v7 = 0;
    if (v6)
    {
      v7 = v6;
    }

    _dispatch_sync_f(queue, block, v7, 16, v2, v3, v4, v5);
  }
}

void _dispatch_sync_f(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 80) == 1)
  {
    _dispatch_barrier_sync_f(a1, a2, a3, a4);
  }

  else
  {
    v11 = 0;
    if (*a1)
    {
      v11 = *a1;
    }

    if (*(v11 + 16) != 17)
    {
      goto LABEL_9;
    }

    LOBYTE(v10) = 0;
    if ((*(a1 + 80) & 0x1000000) != 0)
    {
      v10 = (BYTE2(*(a1 + 80)) >> 2) & 1;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 1;
    }

    else
    {
LABEL_9:
      v12 = 0;
    }

    if ((v12 & 1) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
      __break(1u);
      JUMPOUT(0x1EF74);
    }

    if (*(a1 + 48))
    {
      v14 = 0;
    }

    else
    {
      for (i = *(a1 + 56); ; i = v9)
      {
        if (i >> 54 || (i & 0x8000000000) != 0 || (i & 0x10000000000) != 0)
        {
          v14 = 0;
          goto LABEL_23;
        }

        v8 = i;
        v9 = i;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v9, i + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          break;
        }
      }

      v14 = 1;
    }

LABEL_23:
    if (v14)
    {
      if (*(*(a1 + 24) + 24))
      {
        _dispatch_sync_recurse(a1, a2, a3, a4);
      }

      else
      {
        _dispatch_sync_invoke_and_complete(a1, a2, a3, 0, a5, a6, a7, a8);
      }
    }

    else
    {
      _dispatch_sync_f_slow(a1, a2, a3, 0, a1, a4, a7, a8);
    }
  }
}

void dispatch_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue + 3))
  {
    v8 = 128;
    if (*(queue + 40) == 1)
    {
      v8 = 130;
    }

    _dispatch_async_and_wait_f(queue, context, work, v8);
  }

  else
  {
    _dispatch_sync_function_invoke(queue, context, work, v3, v4, v5, v6, v7);
  }
}

double _dispatch_sync_function_invoke(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0uLL;
  v37 = a1;
  v36 = &v21;
  v39 = &v21;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v21, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v37, 21, v36, v8, v9, v10, v11);
  v31 = v23;
  v30 = v22;
  if (v22 == _dispatch_call_block_and_release && v31)
  {
    v19 = _Block_get_invoke_fn(v31);
    v20 = 0;
    if (v19)
    {
      v20 = v19;
    }

    v18 = v20;
  }

  else
  {
    v18 = v30;
  }

  v29 = v18;
  v33 = v31;
  v32 = v18;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  _dispatch_client_callout(v31, v30);
  v35 = v31;
  v34 = v29;
  v38 = &v21;
  *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v21, v12, v13, v14, v15, v16).n128_u64[0];
  return result;
}

void _dispatch_async_and_wait_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v15 = _dispatch_thread_getspecific(4);
  v10 = v15;
  v9 = _dispatch_thread_getspecific(3);
  memset(__b, 0, sizeof(__b));
  __b[0] = v11;
  __b[1] = v15 | 0x10000000;
  __b[2] = 0;
  __b[3] = _dispatch_thread_getspecific(28);
  __b[4] = _dispatch_async_and_wait_invoke;
  __b[5] = __b;
  __b[6] = 0;
  __b[7] = v14;
  __b[8] = v12;
  __b[9] = v13;
  memset(&__b[10], 0, 20);
  HIDWORD(__b[12]) = v9;
  LOWORD(__b[13]) = 0;
  BYTE2(__b[13]) = 0;
  _dispatch_async_and_wait_recurse(v14, __b, v9, v11, v4, v5, v6, v7);
}

void dispatch_barrier_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue + 3))
  {
    _dispatch_async_and_wait_f(queue, context, work, 130);
  }

  else
  {
    _dispatch_sync_function_invoke(queue, context, work, v3, v4, v5, v6, v7);
  }
}

void dispatch_barrier_async_and_wait(dispatch_queue_t queue, dispatch_block_t block)
{
  if (*(queue + 3))
  {
    v4 = _Block_get_invoke_fn(block);
    v5 = 0;
    if (v4)
    {
      v5 = v4;
    }

    if (v5 == _dispatch_block_special_invoke)
    {
      _dispatch_async_and_wait_block_with_privdata(queue, block, 146);
    }

    else
    {
      v2 = _Block_get_invoke_fn(block);
      v3 = 0;
      if (v2)
      {
        v3 = v2;
      }

      _dispatch_async_and_wait_f(queue, block, v3, 146);
    }
  }

  else
  {
    dispatch_barrier_sync(queue, block);
  }
}

void _dispatch_async_and_wait_block_with_privdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v35 = a2;
  v48 = a2;
  v10 = _Block_get_invoke_fn(a2);
  v11 = 0;
  if (v10)
  {
    v11 = v10;
  }

  if (v11 == _dispatch_block_special_invoke)
  {
    v34 = v35 + 32;
    v33 = (v35 + 32);
    if (*(v35 + 32) != 3512316172)
    {
      v3 = *v33;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x1F920);
    }

    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  v21 = v36;
  v20 = v36[1];
  v19 = 0;
  v18 = 0;
  if (v36[1])
  {
    v22 |= 0x22uLL;
  }

  else
  {
    v22 |= 0x20uLL;
  }

  v4 = v21[3];
  v29 = v20;
  v28 = v4;
  v27 = 0;
  v26 = 0;
  if ((v20 & 0x40000000) != 0 && ((v29 & 0x20) != 0 || (v29 & 0x10) == 0))
  {
    v32 = v28;
    v28 &= 0xFFFFFFuLL;
    v30 = _dispatch_thread_getspecific(4);
    v31 = v30;
    v27 = v30 & 0xFFFFFF;
    if ((v30 & 0xFFFFFF) != 0 && v27 < v28)
    {
      v26 = v27;
    }
  }

  if (v26)
  {
    v19 = v21[3];
  }

  else
  {
    v25 = _dispatch_thread_getspecific(4);
    v19 = v25;
  }

  if ((*(v21 + 11) & 0x80) != 0)
  {
    v18 = v21[4];
  }

  else
  {
    v18 = _dispatch_thread_getspecific(28);
  }

  v47 = v21;
  v46 = v24;
  v45 = v24;
  _dispatch_retain_2(v24);
  v44 = 0;
  v43 = 0;
  v41 = v24;
  v40 = v24;
  v42 = v24;
  v5 = 0;
  atomic_compare_exchange_strong_explicit((v21 + 7), &v5, v24, memory_order_relaxed, memory_order_relaxed);
  if (v5)
  {
    v44 = v5;
  }

  v39 = v5 == 0;
  v43 = v5 == 0;
  v38 = v43;
  if (v5)
  {
    v37 = v46;
    _dispatch_release_2(v46);
  }

  v17 = _dispatch_thread_getspecific(3);
  v12[0] = v22;
  v12[1] = v19 | 0x10000000;
  v12[2] = 0;
  v12[3] = v18;
  v12[4] = _dispatch_async_and_wait_invoke;
  v12[5] = v12;
  v12[6] = 0;
  v12[7] = v24;
  v12[8] = _dispatch_block_sync_invoke;
  v12[9] = v23;
  v13 = 0uLL;
  v14 = 0;
  v15 = v17;
  v16 = 0;
  _dispatch_async_and_wait_recurse(v24, v12, v17, v22, v6, v7, v8, v9);
}

void dispatch_async_and_wait(dispatch_queue_t queue, dispatch_block_t block)
{
  if (*(queue + 3))
  {
    v6 = 144;
    if (*(queue + 40) == 1)
    {
      v6 = 146;
    }

    v4 = _Block_get_invoke_fn(block);
    v5 = 0;
    if (v4)
    {
      v5 = v4;
    }

    if (v5 == _dispatch_block_special_invoke)
    {
      _dispatch_async_and_wait_block_with_privdata(queue, block, v6);
    }

    else
    {
      v2 = _Block_get_invoke_fn(block);
      v3 = 0;
      if (v2)
      {
        v3 = v2;
      }

      _dispatch_async_and_wait_f(queue, block, v3, v6);
    }
  }

  else
  {
    dispatch_sync(queue, block);
  }
}

void dispatch_queue_set_specific(dispatch_queue_t queue, const void *key, void *context, dispatch_function_t destructor)
{
  if (key)
  {
    v11 = *(queue + 11);
    v9 = 0;
    if (*queue)
    {
      v9 = *queue;
    }

    if (*(v9 + 16) == 17)
    {
      v8 = 0;
      if (*queue)
      {
        v8 = *queue;
      }

      v7 = 1;
      if (*(v8 + 16) != 394769)
      {
        v6 = 0;
        if (*queue)
        {
          v6 = *queue;
        }

        v7 = (*(v6 + 18) & 2) == 0;
      }

      v16 = v7;
    }

    else
    {
      v5 = 0;
      if (*queue)
      {
        v5 = *queue;
      }

      v16 = *(v5 + 16) == 18;
    }

    if (!v16)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue doesn't support dispatch_queue_set_specific";
      __break(1u);
      JUMPOUT(0x20048);
    }

    if (!context || v11)
    {
      if (!v11)
      {
        return;
      }
    }

    else
    {
      _dispatch_queue_init_specific(queue);
      v11 = *(queue + 11);
    }

    v17 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v4 = 0;
    atomic_compare_exchange_strong_explicit(v11, &v4, v17, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      _dispatch_unfair_lock_lock_slow(v11);
    }

    for (i = *(v11 + 8); i; i = i[3])
    {
      if (*i == key)
      {
        v19 = i;
        goto LABEL_29;
      }
    }

    v19 = 0;
LABEL_29:
    if (v19)
    {
      if (v19[2])
      {
        _dispatch_barrier_async_detached_f(&off_E0600, v19[1], v19[2]);
      }

      if (context)
      {
        v19[1] = context;
        v19[2] = destructor;
      }

      else
      {
        if (v19[3])
        {
          *(v19[3] + 32) = v19[4];
        }

        else
        {
          *(v11 + 16) = v19[4];
        }

        *v19[4] = v19[3];
        v19[3] = -1;
        v19[4] = -1;
        free(v19);
      }
    }

    else if (context)
    {
      v10 = _dispatch_calloc_typed();
      *v10 = key;
      v10[1] = context;
      v10[2] = destructor;
      v10[3] = 0;
      v10[4] = *(v11 + 16);
      **(v11 + 16) = v10;
      *(v11 + 16) = v10 + 3;
    }

    v20 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v21 = atomic_exchange_explicit(v11, 0, memory_order_release);
    if (v21 != v20)
    {
      _dispatch_unfair_lock_unlock_slow(v11, v21);
    }
  }
}

void _dispatch_queue_init_specific(uint64_t a1)
{
  v2 = _dispatch_calloc_typed();
  v2[1] = 0;
  v2[2] = v2 + 1;
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 88), &v1, v2, memory_order_release, memory_order_relaxed);
  if (v1)
  {
    _dispatch_queue_specific_head_dispose(v2);
  }
}

void *__cdecl dispatch_queue_get_specific(dispatch_queue_t queue, const void *key)
{
  if (!key)
  {
    return 0;
  }

  v12 = *(queue + 11);
  v11 = 0;
  v9 = 0;
  if (*queue)
  {
    v9 = *queue;
  }

  if (*(v9 + 16) == 17)
  {
    v8 = 0;
    if (*queue)
    {
      v8 = *queue;
    }

    v7 = 1;
    if (*(v8 + 16) != 394769)
    {
      v6 = 0;
      if (*queue)
      {
        v6 = *queue;
      }

      v7 = (*(v6 + 16) & 0x20000) == 0;
    }

    v14 = v7;
  }

  else
  {
    v5 = 0;
    if (*queue)
    {
      v5 = *queue;
    }

    v14 = *(v5 + 16) == 18;
  }

  v4 = 0;
  if (v14)
  {
    v4 = v12 != 0;
  }

  if (v4)
  {
    v15 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v2 = 0;
    atomic_compare_exchange_strong_explicit(v12, &v2, v15, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      _dispatch_unfair_lock_lock_slow(v12);
    }

    for (i = *(v12 + 8); i; i = i[3])
    {
      if (*i == key)
      {
        v17 = i;
        goto LABEL_27;
      }
    }

    v17 = 0;
LABEL_27:
    if (v17)
    {
      v11 = v17[1];
    }

    v18 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v19 = atomic_exchange_explicit(v12, 0, memory_order_release);
    if (v19 != v18)
    {
      _dispatch_unfair_lock_unlock_slow(v12, v19);
    }
  }

  return v11;
}

void *__cdecl dispatch_get_specific(const void *key)
{
  *(&v11 + 1) = key;
  *&v11 = _dispatch_thread_getspecific(20);
  v10 = 0;
  if (v11 != 0)
  {
    do
    {
      v13 = *(v11 + 88);
      v12 = 0;
      v9 = 0;
      if (*v11)
      {
        v9 = *v11;
      }

      if (*(v9 + 16) == 17)
      {
        v8 = 0;
        if (*v11)
        {
          v8 = *v11;
        }

        v7 = 1;
        if (*(v8 + 16) != 394769)
        {
          v6 = 0;
          if (*v11)
          {
            v6 = *v11;
          }

          v7 = (*(v6 + 16) & 0x20000) == 0;
        }

        v14 = v7;
      }

      else
      {
        v5 = 0;
        if (*v11)
        {
          v5 = *v11;
        }

        v14 = *(v5 + 16) == 18;
      }

      v4 = 0;
      if (v14)
      {
        v4 = v13 != 0;
      }

      if (v4)
      {
        v15 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
        v1 = 0;
        atomic_compare_exchange_strong_explicit(v13, &v1, v15, memory_order_acquire, memory_order_acquire);
        if (v1)
        {
          _dispatch_unfair_lock_lock_slow(v13);
        }

        for (i = *(v13 + 8); i; i = i[3])
        {
          if (*i == *(&v11 + 1))
          {
            v17 = i;
            goto LABEL_26;
          }
        }

        v17 = 0;
LABEL_26:
        if (v17)
        {
          v12 = v17[1];
        }

        v18 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
        v19 = atomic_exchange_explicit(v13, 0, memory_order_release);
        if (v19 != v18)
        {
          _dispatch_unfair_lock_unlock_slow(v13, v19);
        }
      }

      v10 = v12;
      *&v11 = *(v11 + 24);
      v3 = 0;
      if (!v12)
      {
        v3 = v11 != 0;
      }
    }

    while (v3);
  }

  return v10;
}

uint64_t dispatch_queue_set_label_nocopy(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != 0x7FFFFFFF)
  {
    if ((BYTE2(*(result + 80)) >> 5))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change label for this queue";
      qword_E42C0 = result;
      __break(1u);
      JUMPOUT(0x20F48);
    }

    *(result + 72) = a2;
  }

  return result;
}

uint64_t _dispatch_queue_compute_priority_and_wlh(uint64_t a1, uint64_t *a2)
{
  v19 = *(a1 + 84);
  v17 = v19 & 0xFFF;
  v16 = (v19 & 0xF000) >> 12;
  v15 = *(a1 + 24);
  v14 = -4;
  if ((*(a1 + 56) & 0x2000000000) != 0)
  {
    v14 = a1;
  }

  while (1)
  {
    v10 = 0;
    if (*v15)
    {
      v10 = *v15;
    }

    if ((v10[2] & 0x10000) != 0)
    {
LABEL_44:
      v5 = 0;
      if (v15 >= &_dispatch_root_queues)
      {
        v5 = v15 < &unk_E0A80;
      }

      v4 = 1;
      if (!v5)
      {
        v4 = *(v15 + 64) == 22;
      }

      if (v4)
      {
        v11 = *(v15 + 84);
        if (!v16)
        {
          v16 = (*(v15 + 84) & 0xF000u) >> 12;
        }

        if (v17 < (*(v15 + 84) & 0xFFFu))
        {
          v17 = *(v15 + 84) & 0xFFF;
        }

        v18 = v17 | *(v15 + 84) & 0x88000000;
        if ((v19 & 0x40000000) != 0 || (v19 & 0xFFF) == 0)
        {
          v18 |= v19 & 0x40000000;
          if (v16 > (v18 & 0xF00) >> 8)
          {
            if (v16)
            {
              v3 = (v16 << 12) & 0xF000 | 0x4000000;
            }

            else
            {
              v3 = 0;
            }

            v18 |= v3;
          }
        }

        if (a2)
        {
          *a2 = v14;
        }

        return v18;
      }

      else
      {
        if (a2)
        {
          *a2 = -4;
        }

        return 0x2000000;
      }
    }

    if (v15 == &_dispatch_mgr_q)
    {
      if (a2)
      {
        *a2 = -4;
      }

      return 0x2000000;
    }

    v9 = 0;
    if ((*(v15 + 80) & 0x40000) != 0)
    {
      v9 = (*(v15 + 80) & 0x1000000) == 0;
    }

    if (v9)
    {
      if (a2)
      {
        *a2 = -4;
      }

      return *(v15 + 84);
    }

    if ((*(v15 + 56) & 0xFF80000000000000) != 0)
    {
      v8 = 0;
      if (*a1)
      {
        v8 = *a1;
      }

      *(v8 + 16);
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      if (a2)
      {
        *a2 = 0;
      }

      return 0;
    }

    if ((*(v15 + 56) & 0x2000000000) == 0)
    {
      break;
    }

    v14 = v15;
    v7 = 0;
    if (*v15)
    {
      v7 = *v15;
    }

    if (*(v7 + 16) == 18)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }

LABEL_38:
    v12 = *(v15 + 84);
    v15 = *(v15 + 24);
    if ((v12 & 0x20000000) != 0)
    {
      goto LABEL_44;
    }

    if (!v16)
    {
      v16 = (v12 & 0xF000) >> 12;
    }

    v13 = v12 & 0xFFF;
    if (v17 < v13)
    {
      v17 = v13;
    }
  }

  if ((*(v15 + 80) & 0x400000) == 0)
  {
    goto LABEL_38;
  }

  v6 = 0;
  if (*a1)
  {
    v6 = *a1;
  }

  *(v6 + 16);
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

void dispatch_set_qos_class_floor(dispatch_object_t object, dispatch_qos_class_t qos_class, int relative_priority)
{
  v5 = 0;
  if (*object)
  {
    v5 = *object;
  }

  if ((*(v5 + 16) & 0xF0) != 0x10)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_set_qos_class_floor called on invalid object type";
    __break(1u);
    JUMPOUT(0x21888);
  }

  v4 = 0;
  if (*object)
  {
    v4 = *object;
  }

  if (*(v4 + 16) == 18)
  {
    dispatch_workloop_set_qos_class_floor(object, qos_class, relative_priority, 0);
  }

  else
  {
    switch(qos_class)
    {
      case 5u:
        v7 = 1;
        break;
      case 9u:
        v7 = 2;
        break;
      case 0x11u:
        v7 = 3;
        break;
      case 0x15u:
        v7 = 4;
        break;
      case 0x19u:
        v7 = 5;
        break;
      case 0x21u:
        v7 = 6;
        break;
      default:
        v7 = 0;
        break;
    }

    if (v7)
    {
      v3 = (relative_priority - 1) | ((v7 & 0xF) << 8);
    }

    else
    {
      v3 = 0;
    }

    v6 = v3;
    if (v3)
    {
      v6 = v3 | 0x40000000;
    }

    *(object + 21) = v6 | *(object + 21) & 0xBFFFF000;
    v8 = *(object + 7);
    if ((~v8 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
      qword_E42C0 = v8;
      __break(1u);
      JUMPOUT(0x21AECLL);
    }
  }
}

uint64_t dispatch_workloop_set_qos_class_floor(uint64_t result, int a2, char a3, char a4)
{
  v7 = result;
  v9 = *(result + 56);
  if ((~v9 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x21BA4);
  }

  if (!*(result + 200))
  {
    result = _dispatch_calloc_typed();
    *(v7 + 200) = result;
  }

  switch(a2)
  {
    case 5:
      v8 = 1;
      break;
    case 9:
      v8 = 2;
      break;
    case 17:
      v8 = 3;
      break;
    case 21:
      v8 = 4;
      break;
    case 25:
      v8 = 5;
      break;
    case 33:
      v8 = 6;
      break;
    default:
      v8 = 0;
      break;
  }

  if (v8)
  {
    *(*(v7 + 200) + 4) = (a3 - 1) | ((v8 & 0xF) << 8);
    **(v7 + 200) |= 8u;
  }

  else
  {
    *(*(v7 + 200) + 4) = 0;
    **(v7 + 200) &= ~8u;
  }

  if (a4)
  {
    *(*(v7 + 200) + 16) = 2;
    **(v7 + 200) |= 2u;
  }

  else
  {
    **(v7 + 200) &= ~2u;
  }

  return result;
}

uint64_t dispatch_set_qos_class(uint64_t a1, int a2, char a3)
{
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  if ((*(v7 + 16) & 0xF0) != 0x10)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  result = a1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v6 = 0;
  if (*a1)
  {
    v6 = v5;
  }

  if (*(v6 + 16) == 18)
  {
LABEL_7:
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_set_qos_class called on invalid object type";
    __break(1u);
    JUMPOUT(0x21EA4);
  }

  switch(a2)
  {
    case 5:
      v9 = 1;
      break;
    case 9:
      v9 = 2;
      break;
    case 17:
      v9 = 3;
      break;
    case 21:
      v9 = 4;
      break;
    case 25:
      v9 = 5;
      break;
    case 33:
      v9 = 6;
      break;
    default:
      v9 = 0;
      break;
  }

  if (v9)
  {
    v4 = (a3 - 1) | ((v9 & 0xF) << 8);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 84) = v4 | *(a1 + 84) & 0xBFFFF000;
  v10 = *(a1 + 56);
  if ((~v10 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v10;
    __break(1u);
    JUMPOUT(0x22070);
  }

  return result;
}

uint64_t dispatch_set_qos_class_fallback(uint64_t a1, int a2)
{
  v2 = *a1;
  v5 = *a1;
  result = a1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v6 = 0;
  if (v2)
  {
    v6 = v5;
  }

  if ((*(v6 + 16) & 0xF0) != 0x10)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_set_qos_class_fallback called on invalid object type";
    __break(1u);
    JUMPOUT(0x22114);
  }

  switch(a2)
  {
    case 5:
      v9 = 1;
      break;
    case 9:
      v9 = 2;
      break;
    case 17:
      v9 = 3;
      break;
    case 21:
      v9 = 4;
      break;
    case 25:
      v9 = 5;
      break;
    case 33:
      v9 = 6;
      break;
    default:
      v9 = 0;
      break;
  }

  if (v9)
  {
    v4 = ((v9 & 0xF) << 12) | 0x4000000;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 84) = v4 | *(a1 + 84) & 0xFBFF0FFF;
  v10 = *(a1 + 56);
  if ((~v10 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v10;
    __break(1u);
    JUMPOUT(0x222D8);
  }

  return result;
}

uint64_t *_dispatch_lane_create_with_target(const char *a1, uint64_t *a2, uint64_t (***a3)(), char a4)
{
  v41 = _dispatch_queue_attr_to_info(a2);
  v40 = v41;
  v39 = BYTE2(v41) & 3;
  if ((v41 & 0x30000) != 0 && a3 && a3[3])
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify both overcommit and a non-global target queue";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x223CCLL);
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v34 = 0;
  if (*a3)
  {
    v34 = *a3;
  }

  if (v34[2] == (&loc_50310 + 1))
  {
    if ((v41 & 0x30000) == 0)
    {
      if ((*(a3 + 87) & 0x80) != 0)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }
    }

    if (!v41)
    {
      v40 = (*(a3 + 21) & 0xF00u) >> 8;
    }

    a3 = 0;
  }

  else
  {
LABEL_17:
    if (a3 && (*(a3 + 87) & 8) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target object to cooperative root queue - not implemented";
      qword_E42C0 = a3;
      __break(1u);
      JUMPOUT(0x22528);
    }

    if (!a3 || a3[3])
    {
      if ((v41 & 0x30000) == 0)
      {
        if ((v41 >> 20))
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        v39 = v10;
      }
    }

    else if ((v41 & 0x30000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot specify an overcommit attribute and use this kind of target queue";
      qword_E42C0 = a3;
      __break(1u);
      JUMPOUT(0x2258CLL);
    }
  }

  if (!a3)
  {
    if (v40)
    {
      v33 = v40;
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 6)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
      qword_E42C0 = v33;
      __break(1u);
      JUMPOUT(0x22684);
    }

    v45 = 0;
    if (((2 * (v39 == 1)) & 2) != 0)
    {
      v45 = 1;
    }

    else if (((2 * (v39 == 1)) & 4) != 0)
    {
      v45 = 2;
    }

    a3 = &(&_dispatch_root_queues)[16 * (3 * v33 + v45 - 3)];
    if (!a3)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue attribute";
      qword_E42C0 = v40;
      __break(1u);
      JUMPOUT(0x22730);
    }
  }

  if ((a4 & 1) != 0 && ((v41 & 0x200000) != 0 || ((v41 >> 18) & 3) != 0))
  {
    a4 = 0;
  }

  if (a4)
  {
    v11 = 0x400000;
  }

  else
  {
    v11 = 0;
  }

  v37 = v11;
  if ((v41 & 0x100000) != 0)
  {
    v38 = _OS_dispatch_queue_concurrent_vtable;
  }

  else
  {
    v38 = _OS_dispatch_queue_serial_vtable;
  }

  v32 = (v41 >> 18) & 3;
  if (v32 == 1)
  {
    v37 = v11 | 0x10000;
  }

  else if (v32 == 2)
  {
    v37 = v11 | 0x20000;
  }

  if (a1)
  {
    v36 = _dispatch_strdup_if_mutable(a1);
    if (v36 != a1)
    {
      v37 |= 0x200000u;
      a1 = v36;
    }
  }

  v35 = _dispatch_object_alloc(v38, 0x78uLL, v4, v5, v6, v7, v8, v9);
  if ((v41 >> 21))
  {
    v16 = 0x180000000000000;
  }

  else
  {
    v16 = 0;
  }

  if ((v41 >> 20))
  {
    v17 = 4094;
  }

  else
  {
    v17 = 1;
  }

  _dispatch_queue_init(v35, v37, v17, v16, v12, v13, v14, v15);
  v35[9] = a1;
  if (v41)
  {
    v31 = (BYTE1(v41) - 1) | ((v41 & 0xF) << 8);
  }

  else
  {
    v31 = 0;
  }

  *(v35 + 21) = v31;
  if (v39 == 1)
  {
    *(v35 + 21) |= 0x80000000;
  }

  if ((v41 & 0x200000) == 0)
  {
    _dispatch_queue_priority_inherit_from_target(v35, a3);
    _dispatch_lane_inherit_wlh_from_target(v35, a3, v18, v19, v20, v21, v22, v23);
  }

  _dispatch_retain(a3);
  v35[3] = a3;
  _dispatch_object_debug(v35, "%s", v24, v25, v26, v27, v28, v29, "_dispatch_lane_create_with_target");
  return v35;
}

void _dispatch_lane_class_dispose(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue while items are enqueued";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0x22AB4);
  }

  *(a1 + 104) = 512;
  *(a1 + 48) = 512;
  v5 = *(a1 + 56);
  v4 = (4096 - *(a1 + 80)) << 41;
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  if (*(v3 + 18))
  {
    v4 = 0x60000000000000;
  }

  if ((*(a1 + 56) & 0xFFFFFF48FFFFFFFFLL) != v4)
  {
    if ((*(a1 + 56) & 0xFFFFFFFC) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Premature release of a locked queue";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x22C14);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a queue with corrupt state";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x22C50);
  }

  _dispatch_queue_dispose(a1, a2);
}

void _dispatch_queue_dispose(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 72) && (*(a1 + 80) & 0x200000) != 0)
  {
    free(*(a1 + 72));
  }

  v3 = __swp(0x200u, (a1 + 88));
  if (v3)
  {
    _dispatch_queue_specific_head_dispose(v3);
  }

  if (*(a1 + 96))
  {
    _dispatch_object_finalize();
    *a2 = 0;
    *(a1 + 72) = "<released queue, pending free>";
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
    v5 = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
    if (v5 < 0)
    {
      if (v5 <= -2)
      {
        qword_E4290 = "API MISUSE: Over-release of an object";
        __break(1u);
        JUMPOUT(0x22E9CLL);
      }

      *(a1 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(a1);
    }
  }

  else
  {
    *(a1 + 56) = 0xDEAD000000000000;
  }
}

void _dispatch_lane_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_lane_dispose");
  v10 = a1[8];
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t _dispatch_queue_xref_dispose(uint64_t result)
{
  v3 = *(result + 56);
  if ((v3 & 0xFF80000000000000) != 0)
  {
    v2 = *(result + 56);
    if ((v3 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of an inactive object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x23040);
    }

    v1 = *(result + 56);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a suspended object";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x2307CLL);
  }

  atomic_fetch_or_explicit((result + 80), 0x800000u, memory_order_relaxed);
  return result;
}

uint64_t _dispatch_lane_suspend(uint64_t result)
{
  v3 = *(result + 56);
  do
  {
    if (v3 >= 0xFC00000000000000)
    {
      return _dispatch_lane_suspend_slow(result);
    }

    v1 = v3;
    v2 = v3;
    atomic_compare_exchange_strong_explicit((result + 56), &v2, v3 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v2 != v1)
    {
      v3 = v2;
    }
  }

  while (v2 != v1);
  if ((v3 & 0xFF80000000000000) == 0)
  {
    return _dispatch_retain_2(result);
  }

  return result;
}

uint64_t _dispatch_lane_suspend_slow(uint64_t a1)
{
  v11 = (a1 + 100);
  v10 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v11, &v1, v10, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(v11);
  }

  v7 = 0x7C00000000000000;
  if (!*(a1 + 112))
  {
    v7 = 0x7A00000000000000;
  }

  for (i = *(a1 + 56); ; i = v3)
  {
    if (i < v7)
    {
      v16 = (a1 + 100);
      v6 = _dispatch_thread_getspecific(3);
      v15 = atomic_exchange_explicit(v16, 0, memory_order_release);
      if (v15 == (v6 & 0xFFFFFFFC))
      {
        v17 = 0;
      }

      else
      {
        _dispatch_unfair_lock_unlock_slow(v16, v15);
        v17 = (v15 & 2) != 0;
      }

      if (v17)
      {
        v12 = _dispatch_thread_getspecific(25);
        if (!((v12 & 0xF0000u) >> 16))
        {
          _dispatch_thread_setspecific(25, v12 & 0xFFF0FFFF | 0x10000);
        }
      }

      return _dispatch_lane_suspend(a1);
    }

    v2 = i;
    v3 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v3, i - v7, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      break;
    }
  }

  v4 = *(a1 + 112);
  *(a1 + 112) = v4 + 32;
  if (v4 >= 0xFFFFFFE0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_suspend()";
    __break(1u);
    JUMPOUT(0x23454);
  }

  result = _dispatch_thread_getspecific(3);
  v13 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
  if (v13 == (result & 0xFFFFFFFC))
  {
    v14 = 0;
  }

  else
  {
    result = _dispatch_unfair_lock_unlock_slow(a1 + 100, v13);
    v14 = (v13 & 2) != 0;
  }

  if (v14)
  {
    result = _dispatch_thread_getspecific(25);
    if (!((result & 0xF0000) >> 16))
    {
      return _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | 0x10000);
    }
  }

  return result;
}

void _dispatch_lane_resume(uint64_t a1, int a2)
{
  v17 = (*(a1 + 80) - 1) << 41;
  v16 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000002;
  v9 = 0;
  if (*a1)
  {
    v9 = *a1;
  }

  v15 = *(v9 + 16) == 19;
  if (a2 == 1)
  {
    for (i = *(a1 + 56); (~i & 0x180000000000000) == 0; i = v3)
    {
      if (i >> 58)
      {
        v11 = i - 0x80000000000000;
      }

      else
      {
        v11 = i - 0x100000000000000;
      }

      v2 = i;
      v3 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v3, v11, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      for (i = *(a1 + 56); ; i = v7)
      {
        if (v15 && i >> 55 == 3)
        {
          v11 = i - 0x100000000000000;
        }

        else
        {
          v13 = i - 0x400000000000000;
          if (i < 0x400000000000000)
          {
            if ((i & 0x200000000000000) == 0)
            {
              if ((~i & 0x180000000000000) == 0)
              {
                qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an inactive object";
                qword_E42C0 = a1;
                __break(1u);
                JUMPOUT(0x23F10);
              }

              qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Over-resume of an object";
              qword_E42C0 = a1;
              __break(1u);
              JUMPOUT(0x23F4CLL);
            }

            _dispatch_lane_resume_slow(a1);
            return;
          }

          if ((v13 & 0x180000000000000) == 0x100000000000000)
          {
            v11 = i - 0x480000000000000;
          }

          else if (v13 >> 53)
          {
            v11 = v13 | 0x8000000000;
          }

          else if ((i & 0xFFFFFFFC) != 0)
          {
            v11 = v13 | 0x8000000000;
          }

          else if (v15 || (v13 & 0x10000000000) == 0 && (v13 + v17) >> 53)
          {
            v11 = v13 & 0xFFFFFFF000000001;
          }

          else
          {
            v11 = v13 & 0x7700000001 | v16;
          }
        }

        v6 = i;
        v7 = i;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v7, v11, memory_order_release, memory_order_relaxed);
        if (v7 == v6)
        {
          goto LABEL_45;
        }
      }
    }

    for (i = *(a1 + 56); ; i = v5)
    {
      if ((i & 0x180000000000000) == 0)
      {
        _dispatch_release_2_tailcall(a1);
        return;
      }

      v12 = i - 0x80000000000000;
      if ((i - 0x80000000000000) >> 53)
      {
        v11 = v12 | 0x8000000000;
      }

      else
      {
        v11 = (i & 0xFFFFFFFC) != 0 ? v12 | 0x8000000000 : v12 & 0xFFFFFFF000000001;
      }

      v4 = i;
      v5 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v11, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        break;
      }
    }

    if ((v11 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt activation state";
      qword_E42C0 = a1;
      __break(1u);
      JUMPOUT(0x23AB4);
    }

LABEL_45:
    if ((v11 & 0x180000000000000) == 0x80000000000000)
    {
      _dispatch_lane_resume_activate(a1);
      return;
    }

    if ((v11 & 0xFF80000000000000) == 0)
    {
      v10 = 1;
      if (((i ^ v11) & 0x40000000000000) != 0)
      {
        v10 = 5;
      }

      else if (v11 >> 53)
      {
        if ((i & 0x2000000000) != 0)
        {
          _dispatch_event_loop_assert_not_owned(a1);
        }

        _dispatch_release_2(a1);
        return;
      }

      v8 = 0;
      if (*a1)
      {
        v8 = *a1;
      }

      (*(v8 + 64))(a1, (i & 0x700000000) >> 32, v10);
    }
  }
}

uint64_t _dispatch_lane_resume_slow(uint64_t a1)
{
  v11 = (a1 + 100);
  v10 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v11, &v1, v10, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(v11);
  }

  v7 = 0x7C00000000000000;
  v6 = *(a1 + 112);
  if (v6)
  {
    if (v6 == 32)
    {
      v7 = 0x7A00000000000000;
    }

    v8 = *(a1 + 56);
    while (!__CFADD__(v8, v7))
    {
      v3 = v8;
      v4 = v8;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v8 + v7, memory_order_relaxed, memory_order_relaxed);
      if (v4 != v3)
      {
        v8 = v4;
      }

      if (v4 == v3)
      {
        *(a1 + 112) -= 32;
        result = _dispatch_thread_getspecific(3);
        v13 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
        if (v13 == (result & 0xFFFFFFFC))
        {
          v14 = 0;
        }

        else
        {
          result = _dispatch_unfair_lock_unlock_slow(a1 + 100, v13);
          v14 = (v13 & 2) != 0;
        }

        if (v14)
        {
          result = _dispatch_thread_getspecific(25);
          if (!((result & 0xF0000) >> 16))
          {
            return _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | 0x10000);
          }
        }

        return result;
      }
    }
  }

  v15 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v16 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(a1 + 100, v16);
    v17 = (v16 & 2) != 0;
  }

  if (v17)
  {
    v12 = _dispatch_thread_getspecific(25);
    if (!((v12 & 0xF0000u) >> 16))
    {
      _dispatch_thread_setspecific(25, v12 & 0xFFF0FFFF | 0x10000);
    }
  }

  return _dispatch_lane_resume(a1, 0);
}

uint64_t _dispatch_lane_resume_activate(uint64_t *a1)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  v3 = 0;
  if (*(v4 + 56))
  {
    v3 = *(v4 + 56);
  }

  if (v3)
  {
    v2 = 0;
    if (*a1)
    {
      v2 = *a1;
    }

    (*(v2 + 56))(a1);
  }

  return _dispatch_lane_resume(a1, 2);
}

const char *__cdecl dispatch_queue_get_label(dispatch_queue_t queue)
{
  v5 = queue;
  if (!queue)
  {
    v4 = _dispatch_thread_getspecific(20);
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = &off_E0680;
    }

    v5 = v3;
  }

  if (*(v5 + 9))
  {
    return *(v5 + 9);
  }

  else
  {
    return &unk_BBE5B;
  }
}

dispatch_qos_class_t dispatch_queue_get_qos_class(dispatch_queue_t queue, int *relative_priority_ptr)
{
  v4 = (*(queue + 21) & 0xF00u) >> 8;
  if (relative_priority_ptr)
  {
    if (v4)
    {
      v5 = *(queue + 21);
      if ((v5 & 0xF00) != 0)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = 0;
      }

      v3 = v6;
    }

    else
    {
      v3 = 0;
    }

    *relative_priority_ptr = v3;
  }

  switch(v4)
  {
    case 1u:
      return 5;
    case 2u:
      return 9;
    case 3u:
      return 17;
    case 4u:
      return 21;
    case 5u:
      return 25;
    case 6u:
      return 33;
  }

  return 0;
}

uint64_t dispatch_queue_get_threadid_4wdt(uint64_t *a1, __uint64_t *a2)
{
  *a2 = 0;
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  v5 = *(v3 + 16);
  if (v5 == 273 || v5 == 131090 || v5 == 394769)
  {
    if ((a1[7] & 0xFFFFFFFC) != 0)
    {
      v8 = a1[7] | 3;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v4 = pthread_from_mach_thread_np(v8);
      if (v4)
      {
        return pthread_threadid_np(v4, a2);
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 22;
  }
}

uint64_t dispatch_queue_set_width(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  v5 = *(v4 + 16);
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  if (*(v3 + 16) != 17)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x24A78);
  }

  if (v5 != 529)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot set width of a serial queue";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x24AC4);
  }

  if ((a2 & 0x80000000) != 0)
  {
    return _dispatch_barrier_async_detached_f(a1, a2, _dispatch_lane_set_width);
  }

  else
  {
    return _dispatch_barrier_trysync_or_async_f(a1, a2, _dispatch_lane_set_width, 1u);
  }
}

void _dispatch_lane_set_width(int a1)
{
  v20 = _dispatch_thread_getspecific(20);
  if ((a1 & 0x80000000) == 0)
  {
    if (a1)
    {
      v18 = a1;
    }

    else
    {
      v18 = 1;
    }

    v21 = v18;
    goto LABEL_33;
  }

  v7 = (_dispatch_thread_getspecific(4) & 0x3FFF00) >> 8;
  v8 = __clz(__rbit32(v7));
  if (v7)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  switch(a1)
  {
    case -3:
      goto LABEL_27;
    case -2:
      v27 = 0;
      if (v9)
      {
        v27 = pthread_qos_max_parallelism();
      }

      if (v27 <= 0)
      {
        v28 = MEMORY[0xFFFFFC035];
      }

      else
      {
        v28 = v27;
      }

      v21 = v28;
      break;
    case -1:
      v25 = 0;
      if (v9)
      {
        v25 = pthread_qos_max_parallelism();
      }

      if (v25 <= 0)
      {
        v26 = MEMORY[0xFFFFFC036];
      }

      else
      {
        v26 = v25;
      }

      if (MEMORY[0xFFFFFC034] < v26)
      {
        v26 = MEMORY[0xFFFFFC034];
      }

      v21 = v26;
      break;
    default:
LABEL_27:
      v23 = 0;
      if (v9)
      {
        v23 = pthread_qos_max_parallelism();
      }

      if (v23 <= 0)
      {
        v24 = MEMORY[0xFFFFFC036];
      }

      else
      {
        v24 = v23;
      }

      v21 = v24;
      break;
  }

LABEL_33:
  if (v21 > 0xFFEuLL)
  {
    LOWORD(v21) = 4094;
  }

  v19 = *(v20 + 80);
  do
  {
    v10 = v19;
    v11 = v19;
    atomic_compare_exchange_strong_explicit((v20 + 80), &v11, v19 & 0xFFFF0000 | v21, memory_order_relaxed, memory_order_relaxed);
    if (v11 != v10)
    {
      v19 = v11;
    }
  }

  while (v11 != v10);
  _dispatch_lane_inherit_wlh_from_target(v20, *(v20 + 24), v1, v2, v3, v4, v5, v6);
  _dispatch_object_debug(v20, "%s", v12, v13, v14, v15, v16, v17, "_dispatch_lane_set_width");
}

void _dispatch_lane_set_target_queue(unint64_t a1, uint64_t (***a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  if (!a2)
  {
    v14 = &(&_dispatch_root_queues)[16 * ((*(a1 + 80) == 1) + 9)];
  }

  for (i = *(a1 + 56); ; i = v9)
  {
    if ((~i & 0x180000000000000) != 0)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, i + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      break;
    }
  }

  LOBYTE(v12) = 1;
  if ((i & 0xFF80000000000000) != 0)
  {
    v12 = (HIBYTE(i) >> 1) & 1;
  }

  if (v12)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
    __break(1u);
    JUMPOUT(0x25BC4);
  }

  v17 = 1;
LABEL_13:
  if (v17 == 1)
  {
    _dispatch_retain(v14);
    v18 = atomic_exchange_explicit((a1 + 24), v14, memory_order_release);
    if (v18)
    {
      _dispatch_release(v18);
    }

    _dispatch_lane_resume(a1, 0);
  }

  else
  {
    if (((BYTE2(*(a1 + 80)) >> 6) & 1) == 0)
    {
      if ((*(a1 + 80) & 0x100000) != 0)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of a queue already targeted by other dispatch objects";
        __break(1u);
        JUMPOUT(0x25D20);
      }

      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
      __break(1u);
      JUMPOUT(0x25D4CLL);
    }

    v10 = *a1;
    v11 = 0;
    if (*a1)
    {
      v11 = *a1;
    }

    v13 = *(v11 + 16);
    if (v13 == 17)
    {
      if ((*(a1 + 80) & 0x100000) != 0)
      {
        _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects", v10, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      if (*(v11 + 16) != 19)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected dispatch object type";
        qword_E42C0 = v13;
        __break(1u);
        JUMPOUT(0x25ED0);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      _dispatch_bug_deprecated("Changing the target of a source after it has been activated", v10, a3, a4, a5, a6, a7, a8);
    }

    _dispatch_retain(v14);
    _dispatch_barrier_trysync_or_async_f(a1, v14, _dispatch_lane_legacy_set_target_queue, 1u);
  }
}

void _dispatch_lane_legacy_set_target_queue(unint64_t a1)
{
  v23 = _dispatch_thread_getspecific(20);
  v21 = *(v23 + 24);
  if ((*(v23 + 80) & 0x100000) != 0)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    _dispatch_bug_deprecated("Changing the target of a queue already targeted by other dispatch objects", v1, v2, v3, v4, v5, v6, v7);
  }

  v22 = _dispatch_queue_priority_inherit_from_target(v23, a1);
  _dispatch_lane_inherit_wlh_from_target(v23, v22, v8, v9, v10, v11, v12, v13);
  v25 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v14 = 0;
  atomic_compare_exchange_strong_explicit((v23 + 100), &v14, v25, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    _dispatch_unfair_lock_lock_slow((v23 + 100));
  }

  if (((BYTE2(*(v23 + 80)) >> 6) & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change the target of this object after it has been activated";
    __break(1u);
    JUMPOUT(0x26194);
  }

  *(v23 + 24) = v22;
  v27 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v28 = atomic_exchange_explicit((v23 + 100), 0, memory_order_release);
  if (v28 == v27)
  {
    v29 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(v23 + 100, v28);
    v29 = (v28 & 2) != 0;
  }

  if (v29)
  {
    v26 = _dispatch_thread_getspecific(25);
    if (!((v26 & 0xF0000u) >> 16))
    {
      _dispatch_thread_setspecific(25, v26 & 0xFFF0FFFF | 0x10000);
    }
  }

  _dispatch_object_debug(v23, "%s", v15, v16, v17, v18, v19, v20, "_dispatch_lane_legacy_set_target_queue");
  _dispatch_release_tailcall(v21);
}

void _dispatch_return_to_kernel()
{
  v7 = _dispatch_thread_getspecific(29);
  if (v7)
  {
    _dispatch_abort(453, (v7 & 1) == 0, v0, v1, v2, v3, v4, v5);
  }

  v6 = 0;
  if (v7)
  {
    v6 = *(v7 + 24) != -4;
  }

  if (v6)
  {
    if ((*(v7 + 53) & 4) == 0)
    {
      _dispatch_abort(3664, (*(v7 + 53) & 4) != 0, v0, v1, v2, v3, v4, v5);
    }

    _dispatch_event_loop_drain(1u);
  }

  else
  {
    _dispatch_thread_setspecific(5, 0);
  }
}

uint64_t _dispatch_lane_serial_drain(uint64_t *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a1;
  v43 = a2;
  v42 = a3 & 0xFFFDFFFF;
  v41 = a4;
  v40 = 1;
  v39 = a1[3];
  v38 = 0uLL;
  v34 = *a4;
  if (!a1[6])
  {
    return 0;
  }

  v156 = v44;
  v155 = &v38;
  v160 = &v38;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v38, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v156, 21, v155, v8, v9, v10, v11);
  if ((v40 & 1) != 0 || (v46 = v34, (v34 & 0x40000000000000) != 0))
  {
    v35 = 0x40000000000000;
  }

  else
  {
    v35 = v34 & 0x3FFE0000000000;
  }

  if ((v42 & 0x10) != 0 && _dispatch_thread_getspecific(5))
  {
    _dispatch_return_to_kernel();
  }

  v89 = v44;
  v88 = (v44 + 13);
  v87 = 0;
  v85 = v44[13];
  v86 = v85;
  v84 = v85;
  v87 = v85;
  if (!v85)
  {
    v87 = _dispatch_wait_for_enqueuer(v88);
  }

  v83 = v87;
  v37 = v87;
  while (1)
  {
    v47 = v44[7];
    if ((v47 & 0xFF80000000000000) != 0 || v39 != v44[3])
    {
      break;
    }

    if (v40)
    {
      goto LABEL_40;
    }

    v62 = v37;
    v61 = 0;
    v152 = v37;
    if (*v37 > 0xFFFuLL)
    {
      v32 = 0;
      if (*v62)
      {
        v32 = *v62;
      }

      if ((*(v32 + 16) & 0xF0) == 0x10)
      {
        v59 = *(v62 + 20);
        v60 = v59;
        v58 = v59;
        v61 = v59;
        v63 = (v59 & 0x80000) != 0;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = (*v62 & 2) != 0;
    }

    if (v63)
    {
LABEL_40:
      if ((v40 & 1) == 0 && v35 != 0x40000000000000)
      {
        v172 = v44;
        v171 = v35;
        v170 = 0;
        v169 = 0;
        v168 = ((*(v44 + 40) - 1) << 41) | 0x10000000000;
        v167 = 0;
        v166 = (v44 + 7);
        v170 = v44[7];
        do
        {
          v169 = v170 - v171;
          v174 = v170;
          if ((v170 & 0x10000000000) == 0)
          {
            v169 += v168;
          }

          v173 = v169;
          if (!(v169 >> 53))
          {
            v169 += 0x20000000000;
            v169 += 0x40000000000000;
            v169 -= 0x10000000000;
          }

          v169 &= ~0x8000000000uLL;
          v165 = v169;
          v19 = v170;
          v20 = v170;
          atomic_compare_exchange_strong_explicit(v166, &v20, v169, memory_order_acquire, memory_order_acquire);
          if (v20 != v19)
          {
            v170 = v20;
          }

          v164 = v20 == v19;
          v167 = v20 == v19;
        }

        while (v20 != v19);
        v163 = v167;
        if ((v169 & 0x40000000000000) == 0)
        {
          goto LABEL_125;
        }

        v35 = 0x40000000000000;
      }

      v175 = v37;
      v177 = v37;
      if (*v37 >= 0x1000uLL)
      {
        v176 = 0;
      }

      else
      {
        v176 = *v175 & 1;
      }

      if (v176 == 1 && (v42 & 0x80000) == 0)
      {
        *(v43 + 8) = v37;
        if ((v42 & 8) != 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
          __break(1u);
          JUMPOUT(0x2769CLL);
        }

        v157 = &v38;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v38, v13, v14, v15, v16, v17);
        return v44[3];
      }

      v119 = v44;
      v118 = v37;
      v117 = v37;
      v116 = 0;
      v115 = 0;
      v114 = 0;
      v112 = v37[2];
      v113 = v112;
      v111 = v112;
      v116 = v112;
      v110 = v112;
      v109 = v112;
      v44[13] = v112;
      v108 = v110;
      if (!v116)
      {
        v105 = 0;
        v106 = 0;
        v107 = v119 + 6;
        v104 = 0;
        v103 = (v119 + 6);
        v114 = v119[6];
        while (1)
        {
          v151 = v114;
          if (v117 != (v114 & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          v115 = 0;
          v93 = 0;
          v21 = v114;
          v22 = v114;
          atomic_compare_exchange_strong_explicit(v103, &v22, 0, memory_order_release, memory_order_relaxed);
          if (v22 != v21)
          {
            v114 = v22;
          }

          v92 = v22 == v21;
          v104 = v22 == v21;
          if (v22 == v21)
          {
            goto LABEL_67;
          }
        }

        v102 = v117;
        v101 = 0;
        v99 = v117[2];
        v100 = v99;
        v98 = v99;
        v101 = v99;
        if (!v99)
        {
          v101 = _dispatch_wait_for_enqueuer(v102 + 2);
        }

        v97 = v101;
        v116 = v101;
        v96 = v101;
        v95 = v101;
        v119[13] = v101;
        v94 = v96;
LABEL_67:
        v91 = v104;
      }

      v90 = v116;
      v36 = v116;
LABEL_106:
      _dispatch_continuation_pop_inline(v37, v43, v42, v44);
      goto LABEL_13;
    }

    if (v35 == 0x40000000000000)
    {
      atomic_fetch_xor_explicit((v44 + 7), 0x40000000000000uLL, memory_order_release);
      v35 = *(v44 + 40) << 41;
    }

    else if (!v35)
    {
      v54 = v37;
      v154 = v37;
      if (*v37 < 0x1000uLL && (*v54 & 0x81) != 0)
      {
        v188 = v44;
        v186 = 0x20000000000;
        v185 = 0x20000000000;
        v187 = 0x20000000000;
        v181 = 0x20000000000;
        v180 = 0x20000000000;
        v182 = 0x20000000000;
        add_explicit = atomic_fetch_add_explicit((v44 + 7), 0x20000000000uLL, memory_order_relaxed);
        v183 = add_explicit;
        v178 = add_explicit;
        v184 = add_explicit + v187;
      }

      else
      {
        v71 = v44;
        v70 = 0;
        v69 = 0;
        v68 = 0;
        v67 = (v44 + 7);
        v70 = v44[7];
        do
        {
          v73 = v70;
          v31 = 1;
          if (!(v70 >> 53))
          {
            v75 = v70;
            v31 = 1;
            if ((v70 & 0x8000000000) == 0)
            {
              v74 = v70;
              v31 = BYTE5(v70) & 1;
            }
          }

          if (v31)
          {
            v72 = 0;
            goto LABEL_87;
          }

          v69 = v70 + 0x20000000000;
          v66 = v70 + 0x20000000000;
          v23 = v70;
          v24 = v70;
          atomic_compare_exchange_strong_explicit(v67, &v24, v70 + 0x20000000000, memory_order_acquire, memory_order_acquire);
          if (v24 != v23)
          {
            v70 = v24;
          }

          v65 = v24 == v23;
          v68 = v24 == v23;
        }

        while (v24 != v23);
        v64 = v68;
        v72 = v68;
LABEL_87:
        if (!v72)
        {
LABEL_125:
          *v41 &= 0x4000000001uLL;
          v158 = &v38;
          _dispatch_thread_setspecific_packed_pair(20, 21, &v38, v13, v14, v15, v16, v17);
          return -1;
        }
      }

      v35 = 0x20000000000;
    }

    v149 = v44;
    v148 = v37;
    v147 = v37;
    v146 = 0;
    v145 = 0;
    v144 = 0;
    v142 = v37[2];
    v143 = v142;
    v141 = v142;
    v146 = v142;
    v140 = v142;
    v139 = v142;
    v44[13] = v142;
    v138 = v140;
    if (!v146)
    {
      v135 = 0;
      v136 = 0;
      v137 = v149 + 6;
      v134 = 0;
      v133 = (v149 + 6);
      v144 = v149[6];
      while (1)
      {
        v150 = v144;
        if (v147 != (v144 & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v145 = 0;
        v123 = 0;
        v25 = v144;
        v26 = v144;
        atomic_compare_exchange_strong_explicit(v133, &v26, 0, memory_order_release, memory_order_relaxed);
        if (v26 != v25)
        {
          v144 = v26;
        }

        v122 = v26 == v25;
        v134 = v26 == v25;
        if (v26 == v25)
        {
          goto LABEL_98;
        }
      }

      v132 = v147;
      v131 = 0;
      v129 = v147[2];
      v130 = v129;
      v128 = v129;
      v131 = v129;
      if (!v129)
      {
        v131 = _dispatch_wait_for_enqueuer(v132 + 2);
      }

      v127 = v131;
      v146 = v131;
      v126 = v131;
      v125 = v131;
      v149[13] = v131;
      v124 = v126;
LABEL_98:
      v121 = v134;
    }

    v120 = v146;
    v36 = v146;
    v56 = v37;
    v153 = v37;
    if (*v37 < 0x1000uLL && (*v56 & 0x81) != 0)
    {
      v35 -= 0x20000000000;
      _dispatch_non_barrier_waiter_redirect_or_wake(v44, v37, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      if ((v42 & 0x20000) == 0)
      {
        goto LABEL_106;
      }

      v35 -= 0x20000000000;
      v50 = v44;
      v51 = *(v44 + 15) << 32;
      v51 &= 0x700000000uLL;
      _dispatch_continuation_redirect_push(v44, v37, HIDWORD(v51));
    }

LABEL_13:
    v18 = *(v43 + 8) == 0;
    v49 = *(v43 + 8) == 0;
    v48 = 3860;
    if (!v18)
    {
      _dispatch_abort(v48, v49, v27, v13, v14, v15, v16, v17);
    }

    v37 = v36;
    if (!v36)
    {
      if (!v44[6])
      {
        break;
      }

      v82 = v44;
      v81 = (v44 + 13);
      v80 = 0;
      v78 = v44[13];
      v79 = v78;
      v77 = v78;
      v80 = v78;
      if (!v78)
      {
        v80 = _dispatch_wait_for_enqueuer(v81);
      }

      v76 = v80;
      v37 = v80;
    }

    if (_dispatch_thread_getspecific(5))
    {
      _dispatch_return_to_kernel();
    }

    if ((v40 & 1) == (*(v44 + 40) == 1))
    {
      v33 = 0;
      if ((v42 & 0x4000000) == 0)
      {
        v162 = v43;
        v161 = _dispatch_thread_getspecific(120);
        v33 = v161 & 1;
      }

      if ((v33 & 1) == 0)
      {
        if ((v42 & 0x100000) == 0)
        {
          continue;
        }

        v52 = _dispatch_thread_getspecific(27);
        v53 = *(v52 + 60) << 32;
        v53 &= 0x700000000uLL;
        if (HIDWORD(v53) <= *(v52 + 100))
        {
          continue;
        }
      }
    }

    break;
  }

  if (v35 == 0x40000000000000)
  {
    v35 = (*(v44 + 40) << 41) + 0x40000000000000;
  }

  if (v37)
  {
    v194 = v44;
    v193 = v35;
    v192 = v37;
    v191 = *(v44 + 40);
    v190 = 0;
    if (v191 >= 2u)
    {
      v189 = v192;
      v199 = v192;
      v198 = 0;
      v201 = v192;
      if (*v192 > 0xFFFuLL)
      {
        v30 = 0;
        if (*v199)
        {
          v30 = *v199;
        }

        if ((*(v30 + 16) & 0xF0) == 0x10)
        {
          v196 = *(v199 + 20);
          v197 = v196;
          v195 = v196;
          v198 = v196;
          v200 = (v196 & 0x80000) != 0;
        }

        else
        {
          v200 = 0;
        }
      }

      else
      {
        v200 = (*v199 & 2) != 0;
      }

      if (v200)
      {
        v190 = ((v191 - 1) << 41) + 0x10000000000;
        v193 -= v190;
      }
    }

    v35 = v193;
  }

  *v41 &= 0x4000000001uLL;
  *v41 |= v35;
  v159 = &v38;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v38, v13, v14, v15, v16, v17);
  if (v37)
  {
    return v44[3];
  }

  else
  {
    return 0;
  }
}

void _dispatch_queue_invoke_finish(uint64_t a1, uint64_t a2, uint64_t (***a3)(), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a2 + 8);
  v16 = *(a2 + 16);
  if (v17)
  {
    *(v17 + 106) = *(v17 + 106) & 0x7F | 0x80;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v18 = a4 & 0x4000000001;
    if (v16)
    {
      _dispatch_workloop_drain_barrier_waiter(a1, v17, v16, 1u, v18, a6, a7, a8);
    }

    else
    {
      _dispatch_lane_drain_barrier_waiter(a1, v17, 1u, v18, a5, a6, a7, a8);
    }
  }

  else
  {
    v12 = 1;
    if (a3 == &_dispatch_mgr_q)
    {
      v12 = 0x4000000000;
    }

    v14 = *(a1 + 56);
    do
    {
      v13 = (v14 - a4) & 0xFFFFFF7700000001 | 0x8000000000;
      if (v13 < 0x20000000000000 && (v13 & 0x4000000001) == 0)
      {
        v13 |= v12;
      }

      v8 = v14;
      v9 = v14;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v13, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        v14 = v9;
      }
    }

    while (v9 != v8);
    v15 = v14 - a4;
    v11 = 0;
    if ((v15 & 0x1000000000) != 0)
    {
      v11 = (v15 & 0x800000000) != 0;
    }

    if (v11)
    {
      v22 = (v13 & 0x700000000) >> 32;
      v21 = _dispatch_thread_getspecific(25);
      if (v22 > (v21 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v21 & 0xFFF0FFFF | (v22 << 16));
      }
    }

    if (((v15 ^ v13) & v12) != 0)
    {
      if ((v13 & 0x4000000001) == 0)
      {
        _dispatch_abort(4036, (v13 & 0x4000000001) != 0, a3, a4, a5, a6, a7, a8);
      }

      if ((v13 & 0x2000000000) != 0)
      {
        _dispatch_event_loop_poke(a1, v13, 1, a4, a5, a6, a7, a8);
      }

      else
      {
        v10 = 0;
        if (*a3)
        {
          v10 = *a3;
        }

        (v10[9])(a3, a1, (v13 & 0x700000000) >> 32);
      }
    }

    else
    {
      _dispatch_release_2_tailcall(a1);
    }
  }
}

void _dispatch_workloop_drain_barrier_waiter(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *(a2 + 100) & 0xFFFFFFFC;
  v15 = *(a2 + 16);
  *(a1 + 104 + 8 * (a3 - 1)) = v15;
  if (!v15)
  {
    v13 = (a1 + 152 + 8 * (a3 - 1));
    v14 = *v13;
    while (a2 == (v14 & 0xFFFFFFFFFFFFFFF8))
    {
      v8 = v14;
      v9 = v14;
      atomic_compare_exchange_strong_explicit(v13, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v14)
      {
        v14 = v9;
      }

      if (v9 == v8)
      {
        goto LABEL_11;
      }
    }

    v12 = *(a2 + 16);
    if (!v12)
    {
      v12 = _dispatch_wait_for_enqueuer((a2 + 16));
    }

    v15 = v12;
    *(a1 + 104 + 8 * (a3 - 1)) = v12;
  }

LABEL_11:
  v16 = v15 != 0;
LABEL_12:
  if (!v16)
  {
    for (i = 6; ; --i)
    {
      if (!i)
      {
        v27 = 0;
        goto LABEL_19;
      }

      if (*(a1 + 152 + 8 * (i - 1)))
      {
        break;
      }
    }

    v27 = 1;
LABEL_19:
    v16 = v27;
  }

  v18 = *(a1 + 56);
  do
  {
    if ((v18 & 0x2000000000) != 0 && (v18 & 2) != 0 && (v18 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_12;
    }

    v17 = v18 & 0xFFFFFF7700000001 | v19;
    if ((v18 & 0x2000000000) != 0)
    {
      if (!v16)
      {
        if ((v18 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_12;
        }

        v17 = v18 & 0xFFFFFF7000000000 | v19 & 0xFFFFFFF8FFFFFFFELL;
      }
    }

    else
    {
      v17 -= a5;
    }

    v10 = v18;
    v11 = v18;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v11, v17, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      v18 = v11;
    }
  }

  while (v11 != v10);
  _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a4, v18, v17, a6, a7, a8);
}

void _dispatch_lane_drain_barrier_waiter(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a2 + 100) & 0xFFFFFFFC;
  v22 = *(a2 + 16);
  *(a1 + 104) = v22;
  if (!v22)
  {
    v21 = *(a1 + 48);
    while (a2 == (v21 & 0xFFFFFFFFFFFFFFF8))
    {
      v8 = v21;
      v9 = v21;
      atomic_compare_exchange_strong_explicit((a1 + 48), &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        v21 = v9;
      }

      if (v9 == v8)
      {
        goto LABEL_10;
      }
    }

    v20 = *(a2 + 16);
    if (!v20)
    {
      v20 = _dispatch_wait_for_enqueuer((a2 + 16));
    }

    v22 = v20;
    *(a1 + 104) = v20;
  }

LABEL_10:
  v15 = v22;
LABEL_11:
  v13 = *(a1 + 56);
  do
  {
    if ((v13 & 0x2000000000) != 0 && (v13 & 2) != 0 && (v13 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_11;
    }

    v12 = v13 & 0xFFFFFF7700000001 | v14;
    if ((v13 & 0x2000000000) != 0)
    {
      if (!v15)
      {
        if ((v13 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v15 = *(a1 + 104);
          goto LABEL_11;
        }

        v12 = v13 & 0xFFFFFF7000000000 | v14 & 0xFFFFFFF8FFFFFFFELL;
      }
    }

    else
    {
      v12 -= a4;
    }

    v10 = v13;
    v11 = v13;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v11, v12, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      v13 = v11;
    }
  }

  while (v11 != v10);
  _dispatch_barrier_waiter_redirect_or_wake(a1, a2, a3, v13, v12, a6, a7, a8);
}

void _dispatch_lane_activate(uint64_t a1)
{
  v9 = *(a1 + 24);
  v8 = *(a1 + 84);
  if ((v8 & 0xF000) >> 12 <= ((v8 & 0xF00) >> 8) || (v8 & 0xF00) >> 8 && (v8 & 0x40000000) == 0)
  {
    *(a1 + 84) = v8 & 0xFBFF0FFF;
  }

  v1 = _dispatch_queue_priority_inherit_from_target(a1, v9);
  _dispatch_lane_inherit_wlh_from_target(a1, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t (***_dispatch_queue_priority_inherit_from_target(uint64_t a1, unint64_t a2))()
{
  v9 = a2;
  v8 = *(a1 + 84);
  v6 = 0;
  if ((v8 & 0x20000000) == 0)
  {
    v6 = (v8 & 0x44000FFF) != 0;
  }

  if (v6)
  {
    v5 = 0;
    if (a2 >= &_dispatch_root_queues)
    {
      v5 = a2 < &unk_E0A80;
    }

    if (v5)
    {
      v7 = (*(a1 + 84) & 0xF00u) >> 8;
      if (!v7)
      {
        v7 = 4;
      }

      v12 = 2 * (v8 >> 31);
      v4 = 1;
      if (v7)
      {
        v4 = v7 > 6;
      }

      if (v4)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
        qword_E42C0 = v7;
        __break(1u);
        JUMPOUT(0x28DD8);
      }

      v11 = 0;
      if ((v12 & 2) != 0)
      {
        v11 = 1;
      }

      else if ((v12 & 4) != 0)
      {
        v11 = 2;
      }

      return &(&_dispatch_root_queues)[16 * (3 * v7 + v11 - 3)];
    }

    return v9;
  }

  else
  {
    v3 = 0;
    if (a2 >= &_dispatch_root_queues)
    {
      v3 = a2 < &unk_E0A80;
    }

    if (v3)
    {
      v8 = *(a2 + 84) | 0x20000000;
    }

    else if ((v8 & 0x20000000) != 0)
    {
      v8 &= 0xFBFF0FFF;
    }

    *(a1 + 84) = v8;
    return a2;
  }
}

void _dispatch_lane_inherit_wlh_from_target(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  if (*a2)
  {
    v21 = *a2;
  }

  if ((*(v21 + 16) & 0x10000) != 0)
  {
    if (_dispatch_base_lane_is_wlh(a1, a2, a3, a4, a5, a6, a7, a8))
    {
      v24 = 0x2000000000;
    }

    else
    {
      v24 = 0x1000000000;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = *(a1 + 56);
  do
  {
    v25 = v26 & 0xFFFFFFCFFFFFFFFFLL | v24;
    if (v26 == v25)
    {
      break;
    }

    v8 = v26;
    v9 = v26;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v25, memory_order_relaxed, memory_order_relaxed);
    if (v9 != v8)
    {
      v26 = v9;
    }
  }

  while (v9 != v8);
  if ((v26 & 0x2000000000) != 0 && (v25 & 0x2000000000) == 0)
  {
    v29 = _dispatch_thread_getspecific(29);
    if (v29)
    {
      _dispatch_abort(453, (v29 & 1) == 0, v10, v11, v12, v13, v14, v15);
    }

    if (v29 && *(v29 + 24) == a1)
    {
      _dispatch_event_loop_leave_immediate(v25);
    }
  }

  v20 = 0;
  if (*a2)
  {
    v20 = *a2;
  }

  if ((*(v20 + 16) & 0x10000) == 0)
  {
    v23 = 0;
    v22 = 0;
    v19 = 0;
    if (*a2)
    {
      v19 = *a2;
    }

    if (*(v19 + 16) == 18)
    {
      v23 = 0x400000;
      v18 = 0;
      if (*(a2 + 24) >= &_dispatch_root_queues)
      {
        v18 = *(a2 + 24) < &unk_E0A80;
      }

      if (!v18)
      {
        v22 = 0x1000000;
        if (_dispatch_workloop_uses_bound_thread(a2))
        {
          v22 = 17039360;
        }
      }
    }

    else
    {
      v22 = *(a2 + 80) & 0x1000000;
      if (v22)
      {
        v22 = *(a2 + 80) & 0x1040000;
      }
    }

    if (v23)
    {
      v30 = *(a2 + 80);
      do
      {
        if (((v30 | 0x100000) & ~v23) == v30)
        {
          break;
        }

        v16 = v30;
        v17 = v30;
        atomic_compare_exchange_strong_explicit((a2 + 80), &v17, (v30 | 0x100000) & ~v23, memory_order_relaxed, memory_order_relaxed);
        if (v17 != v16)
        {
          v30 = v17;
        }
      }

      while (v17 != v16);
    }

    else
    {
      atomic_fetch_or_explicit((a2 + 80), 0x100000u, memory_order_relaxed);
    }

    if (v22)
    {
      atomic_fetch_or_explicit((a1 + 80), v22, memory_order_relaxed);
    }
  }
}

void _dispatch_lane_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v51 = a2;
  i = a3;
  v49 = 0;
  v48 = _dispatch_lane_invoke2;
  v47 = a1;
  v46[8] = 0;
  *v46 = (a3 & 1) == 0;
  v45 = 0;
  if ((a3 & 3) == 0)
  {
    *(v47 + 16) = -1985229329;
    v44 = _dispatch_thread_getspecific(20);
    v43 = v47;
    v74 = v44;
    v73 = v47;
    v72 = 0;
    v71 = 0;
    v173 = v44;
    v172 = v47;
  }

  i |= v49;
  if ((i & 2) != 0)
  {
    v45 = 0x40020000000001;
  }

  else
  {
    v102 = v47;
    v101 = i;
    v100 = (*(v47 + 80) - 1) << 41;
    v115 = _dispatch_thread_getspecific(3);
    v99 = v115 & 0xFFFFFFFC | 0x20000000000000;
    v97 = 0;
    v96 = 0;
    v95 = 0;
    v98 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v98 |= 0x4000000000uLL;
      v95 = 0;
    }

    else if ((v101 & 0x40000) != 0)
    {
      v95 = 0x4000000000;
    }

    else
    {
      v98 |= 0x4000000000uLL;
      v95 = 1;
    }

    v108 = (v101 & 2) == 0;
    v107 = 1331;
    if ((v101 & 2) != 0)
    {
      _dispatch_abort(v107, v108, v8, v9, v10, v11, v12, v13);
    }

    v112 = _dispatch_thread_getspecific(25);
    v114 = v112 & 0xF00;
    v111 = v114 >> 8;
    v113 = v112 & 0xF000;
    v110 = v113 >> 12;
    v116 = v112 & 0xF0000;
    v109 = (v112 & 0xF0000u) >> 16;
    if (v114 >> 8 > v113 >> 12)
    {
      v38 = v111;
    }

    else
    {
      v38 = v110;
    }

    if (v38 <= v109)
    {
      v36 = v109;
    }

    else
    {
      if (v111 <= v110)
      {
        v37 = v110;
      }

      else
      {
        v37 = v111;
      }

      v36 = v37;
    }

    v94 = v36;
LABEL_22:
    v93 = 0;
    v92 = (v102 + 56);
    v97 = *(v102 + 56);
    do
    {
      v96 = v97;
      if ((v97 & v98) != 0)
      {
        if (!v95)
        {
          break;
        }

        v96 ^= v95;
      }

      else
      {
        v150 = v97;
        v149 = v94;
        v152 = v97;
        v35 = 0;
        if ((v97 & 0x1000000000) != 0)
        {
          v151 = v150 & 0x700000000;
          v35 = v149 < (v150 & 0x700000000) >> 32;
        }

        if (v35)
        {
          v154 = v97;
          v155 = v97 & 0x700000000;
          v153 = (v97 & 0x700000000) >> 32;
          v159 = _dispatch_thread_getspecific(3);
          v158 = v153;
          if (_dispatch_set_qos_class_enabled)
          {
            v161 = v158;
            v160 = 0;
            if (v158)
            {
              v160 = 1 << (v161 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v157 = v153;
          v156 = _dispatch_thread_getspecific(25);
          v162 = v156 & 0xF0000;
          if (v153 > (v156 & 0xF0000) >> 16)
          {
            v156 = v156 & 0xFFF0FFFF | (v157 << 16);
            _dispatch_thread_setspecific(25, v156);
          }

          v94 = v153;
          goto LABEL_22;
        }

        v96 = v96 & 0x7700000001 | v99;
        v104 = v97;
        if ((v97 & 0x10000000000) != 0 || v97 + v100 < 0x20000000000000)
        {
          v96 |= 0x40000000000000uLL;
        }
      }

      v91 = v96;
      v16 = v97;
      v17 = v97;
      atomic_compare_exchange_strong_explicit(v92, &v17, v96, memory_order_acquire, memory_order_acquire);
      if (v17 != v16)
      {
        v97 = v17;
      }

      v90 = v17 == v16;
      v93 = v17 == v16;
    }

    while (v17 != v16);
    v89 = v93;
    v106 = (v97 & v95) == v95;
    v105 = 1364;
    if ((v97 & v95) != v95)
    {
      _dispatch_abort(v105, v106, v14, v15, a5, a6, a7, a8);
    }

    if ((v97 & v98) != 0)
    {
      v103 = 0;
    }

    else
    {
      v96 &= v95 | 0x60000000000000;
      v97 &= 0x3FFE0000000000uLL;
      v103 = v96 - v97;
    }

    v45 = v103;
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
      v78 = *(v47 + 84);
      v77 = _dispatch_thread_getspecific(25);
      v76 = v77;
      if (v77)
      {
        if ((v78 & 0xFFF) != 0)
        {
          v76 &= 0x880F0000;
          if ((v77 & 0xFFF) > (v78 & 0xFFFu))
          {
            v34 = v77 & 0xFFF;
          }

          else
          {
            v34 = v78 & 0xFFF;
          }

          v76 |= v34;
          v80 = v78 & 0xF000;
          v82 = v76 & 0xF00;
          if (v80 >> 12 > v82 >> 8)
          {
            v78 &= 0x4400F000u;
          }

          else
          {
            v78 &= 0x40000000u;
          }

          v76 |= v78;
        }

        else
        {
          if ((v76 & 0xFFF) != 0)
          {
            v76 |= 0x40000000u;
          }

          v79 = v78 & 0xF000;
          v81 = v76 & 0xF00;
          if (v79 >> 12 > v81 >> 8)
          {
            v76 = v76 & 0xFFFF0FFF | v78 & 0x400F000;
          }
        }
      }

      else
      {
        v76 = v78 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v76);
      v42 = v77;
    }

    if ((i & 0x100000) != 0)
    {
      v56 = v52;
      v54 = *(v52 + 80);
      v55 = v54;
      v53 = v54;
      if ((v54 & 0x400000) != 0)
      {
        v68 = v52;
        v67 = 0x400000;
        v65 = -4194305;
        v64 = -4194305;
        v66 = -4194305;
        v60 = -4194305;
        v59 = -4194305;
        v61 = -4194305;
        v58 = atomic_fetch_and_explicit((v52 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v62 = v58;
        v57 = v58;
        v63 = v58 & 0xFFBFFFFF;
      }
    }

    v41 = v47;
    v119 = v47;
    v118 = i;
    v165 = v47;
    v164 = 256;
    v171 = 1;
    v170 = 738;
    v169 = v47;
    v167 = *(v47 + 80);
    v168 = v167;
    v166 = v167;
    v163 = v167 & 0x30000;
    v117 = (v167 & 0x30000) << 8;
    if (v117)
    {
      v118 = v118 & 0xFCFFFFFF | v117;
    }

    for (i = v118; ; i |= 0x10u)
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
        v84 = v47;
        v83 = &v39;
        v88 = &v39;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v39, v19, a5, a6, a7, a8);
        _dispatch_thread_setspecific_pair(20, v84, 21, v83, v20, v21, v22, v23);
        _dispatch_last_resort_autorelease_pool_pop(v51);
        v85 = &v39;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v39, v24, v25, v26, v27, v28);
      }

      v70 = *&v46[1] != 1;
      v69 = 2026;
      if (*&v46[1] == 1)
      {
        _dispatch_abort(v69, v70, v18, v19, a5, a6, a7, a8);
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

      v139 = v47;
      v138 = v45;
      v137 = *&v46[1] == 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v133 = (v47 + 56);
      v136 = *(v47 + 56);
      do
      {
        v135 = (v136 - v138) & 0xFFFFFFF700000001;
        v141 = v136;
        if ((v136 & 0xFF80000000000000) == 0)
        {
          v142 = v136;
          if ((v136 & 0x8000000000) != 0)
          {
            v131 = 0x8000000000;
            v130 = 0x8000000000;
            v132 = 0x8000000000;
            v126 = 0x8000000000;
            v125 = 0x8000000000;
            v127 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v139 + 56), 0x8000000000uLL, memory_order_acquire);
            v128 = xor_explicit;
            v123 = xor_explicit;
            v129 = xor_explicit ^ v132;
            v140 = 0;
            goto LABEL_101;
          }

          if (v137)
          {
            v135 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v135 |= 0x8000000000uLL;
          }
        }

        v122 = v135;
        v29 = v136;
        v30 = v136;
        atomic_compare_exchange_strong_explicit(v133, &v30, v135, memory_order_release, memory_order_relaxed);
        if (v30 != v29)
        {
          v136 = v30;
        }

        v121 = v30 == v29;
        v134 = v30 == v29;
      }

      while (v30 != v29);
      v120 = v134;
      v144 = v136;
      v147 = v136;
      v32 = 0;
      if ((v136 & 0x1000000000) != 0)
      {
        v32 = (v144 & 0x800000000) != 0;
      }

      if (v32)
      {
        v143 = v136 & 0x700000000;
        v146 = (v136 & 0x700000000uLL) >> 32;
        v145 = _dispatch_thread_getspecific(25);
        v148 = v145 & 0xF0000;
        if (v146 > (v145 & 0xF0000) >> 16)
        {
          v145 &= 0xFFF0FFFF;
          v145 |= v146 << 16;
          _dispatch_thread_setspecific(25, v145);
        }
      }

      v140 = 1;
LABEL_101:
      if (v140)
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
      v87 = v42;
      v86 = _dispatch_thread_getspecific(25);
      v87 &= 0xFFF0FFFF;
      v87 |= v86 & 0xF0000;
      _dispatch_thread_setspecific(25, v87);
    }
  }

  if (v46[0])
  {
    v75 = v47;
    v174 = v47;
    v179 = 772079660;
    v178 = v47;
    v177 = 0;
    v176 = 0;
    v175 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v180 = v75;
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

uint64_t _dispatch_lane_invoke2(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v9 = *(a1 + 24);
  if (_dispatch_thread_getspecific(20) != v9)
  {
    return v9;
  }

  if (*(a1 + 80) == 1)
  {
    return _dispatch_lane_serial_drain(a1, a2, a3, a4, v4, v5, v6, v7);
  }

  return _dispatch_lane_concurrent_drain(a1, a2, a3, a4, v4, v5, v6, v7);
}

uint64_t dispatch_workloop_copy_current()
{
  v3 = _dispatch_thread_getspecific(27);
  if (v3 && v3 != -4)
  {
    v1 = 0;
    if (*v3)
    {
      v1 = *v3;
    }

    if (*(v1 + 16) == 18)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v4);
  return v4;
}

BOOL _dispatch_workloop_should_yield_4NW()
{
  v3 = _dispatch_thread_getspecific(27);
  if (v3 && v3 != -4)
  {
    v1 = 0;
    if (*v3)
    {
      v1 = *v3;
    }

    if (*(v1 + 16) == 18)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 && ((*(v4 + 15) << 32) & 0x700000000) >> 32 > *(v4 + 100);
}

uint64_t *_dispatch_workloop_create(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v21 = 0x10000;
  if (a1)
  {
    v20 = _dispatch_strdup_if_mutable(a1);
    if (v20 != v24)
    {
      v21 = 2162688;
      v24 = v20;
    }
  }

  if (_dispatch_kevent_workqueue_enabled)
  {
    v25 = 0x2000000000;
  }

  else
  {
    v25 = 0x1000000000;
  }

  v23 = a2 | v25;
  v19 = _dispatch_object_alloc(_OS_dispatch_workloop_vtable, 0xD0uLL, a3, a4, a5, a6, a7, a8);
  _dispatch_queue_init(v19, v21, 1, v23, v8, v9, v10, v11);
  v19[9] = v24;
  v19[3] = &off_E0680;
  if ((v23 & 0x180000000000000) == 0)
  {
    *(v19 + 21) = -2080358400;
  }

  _dispatch_object_debug(v19, "%s", v12, v13, v14, v15, v16, v17, "_dispatch_workloop_create");
  return v19;
}

void dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop, dispatch_autorelease_frequency_t frequency)
{
  if (frequency == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    for (i = *(workloop + 20); (i & 0xFFFCFFFF | 0x10000) != i; i = v3)
    {
      v2 = i;
      v3 = i;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v3, i & 0xFFFCFFFF | 0x10000, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        break;
      }
    }
  }

  else
  {
    for (j = *(workloop + 20); (j & 0xFFFCFFFF | 0x20000) != j; j = v5)
    {
      v4 = j;
      v5 = j;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v5, j & 0xFFFCFFFF | 0x20000, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = *(workloop + 7);
  if ((~v6 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x2B154);
  }
}

uint64_t dispatch_workloop_set_scheduler_priority(uint64_t result, int a2, char a3)
{
  v5 = result;
  v6 = *(result + 56);
  if ((~v6 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x2B200);
  }

  if (!*(result + 200))
  {
    result = _dispatch_calloc_typed();
    *(v5 + 200) = result;
  }

  if (a2)
  {
    *(*(v5 + 200) + 8) = a2;
    **(v5 + 200) |= 1u;
  }

  else
  {
    *(*(v5 + 200) + 8) = 0;
    **(v5 + 200) &= ~1u;
  }

  if (a3)
  {
    *(*(v5 + 200) + 16) = 2;
    **(v5 + 200) |= 2u;
  }

  else
  {
    **(v5 + 200) &= ~2u;
  }

  return result;
}

uint64_t dispatch_workloop_set_uses_bound_thread(uint64_t a1)
{
  if (_dispatch_workloop_bound_thread_pred != -1)
  {
    dispatch_once_f(&_dispatch_workloop_bound_thread_pred, 0, _dispatch_workloop_bound_thread_init_once);
  }

  if (_dispatch_thread_bound_kqwl_enabled)
  {
    v4 = *(a1 + 56);
    if ((~v4 & 0x180000000000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0x2B40CLL);
    }

    if (!*(a1 + 200))
    {
      *(a1 + 200) = _dispatch_calloc_typed();
    }

    **(a1 + 200) |= 0x40u;
    return 0;
  }

  else
  {
    return -1;
  }
}

void dispatch_workloop_set_os_workgroup(dispatch_workloop_t workloop, os_workgroup_t workgroup)
{
  v5 = *(workloop + 7);
  if ((~v5 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x2B524);
  }

  if (!*(workloop + 25))
  {
    *(workloop + 25) = _dispatch_calloc_typed();
  }

  v2 = *(*(workloop + 25) + 32);
  if (v2)
  {
    _os_object_release(v2);
  }

  _os_object_retain(workgroup);
  *(*(workloop + 25) + 32) = workgroup;
}

uint64_t dispatch_workloop_set_cpupercent(uint64_t result, char a2, int a3)
{
  v5 = result;
  v6 = *(result + 56);
  if ((~v6 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x2B698);
  }

  if (!*(result + 200))
  {
    result = _dispatch_calloc_typed();
    *(v5 + 200) = result;
  }

  if ((**(v5 + 200) & 9) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: workloop qos class or priority must be set before cpupercent";
    __break(1u);
    JUMPOUT(0x2B724);
  }

  *(*(v5 + 200) + 20) = a2;
  *(*(v5 + 200) + 24) = a3;
  **(v5 + 200) |= 4u;
  return result;
}

__n128 _dispatch_workloop_set_observer_hooks_4IOHID(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 56);
  if ((~v5 & 0x180000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch queue/source property setter called after activation";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x2B808);
  }

  if (!*(a1 + 200))
  {
    *(a1 + 200) = _dispatch_calloc_typed();
  }

  result = *a2;
  *(*(a1 + 200) + 40) = *a2;
  **(a1 + 200) |= 0x20u;
  return result;
}

void _dispatch_workloop_dispose(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *(a1 + 56);
  if (_dispatch_kevent_workqueue_enabled)
  {
    v27 = 0x2000000000;
  }

  else
  {
    v27 = 0x1000000000;
  }

  if (v24 != (v27 | 0x1FFE0000000000))
  {
    if ((v24 & 0xFFFFFFFC) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a locked workloop";
      qword_E42C0 = v24;
      __break(1u);
      JUMPOUT(0x2B970);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop with corrupt state";
    qword_E42C0 = v24;
    __break(1u);
    JUMPOUT(0x2B9ACLL);
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_workloop_dispose");
  for (i = 0; i < 6; ++i)
  {
    if (*(a1 + 8 * i + 152))
    {
      v22 = *(a1 + 8 * i + 152);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a workloop while items are enqueued";
      qword_E42C0 = v22;
      __break(1u);
      JUMPOUT(0x2BA6CLL);
    }

    *(a1 + 8 * i + 152) = 512;
    *(a1 + 8 * i + 104) = 512;
  }

  if (*(a1 + 48))
  {
    for (j = 0; j <= 5; ++j)
    {
      if (*(*(a1 + 48) + 32 * j))
      {
        _dispatch_abort(4614, *(*(a1 + 48) + 32 * j) == 0, v8, v9, v10, v11, v12, v13);
      }
    }

    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  if (*(a1 + 200))
  {
    if ((**(a1 + 200) & 0x10) != 0)
    {
      v20 = _pthread_workloop_destroy();
      if (v20)
      {
        _dispatch_bug(4623, v20, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  if (*(a1 + 200))
  {
    if (*(*(a1 + 200) + 32))
    {
      _os_object_release(*(*(a1 + 200) + 32));
    }

    free(*(a1 + 200));
  }

  _dispatch_queue_dispose(a1, a2);
}

void _dispatch_workloop_activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_fetch_and_explicit((a1 + 56), 0xFEFFFFFFFFFFFFFFLL, memory_order_relaxed) & 0x180000000000000) == 0x180000000000000)
  {
    if (*(a1 + 200))
    {
      _dispatch_workloop_activate_attributes(a1);
    }

    if (!*(a1 + 84))
    {
      *(a1 + 84) = 67125248;
    }

    *(a1 + 84) |= 0x80000000;
    atomic_fetch_and_explicit((a1 + 56), 0xFF7FFFFFFFFFFFFFLL, memory_order_relaxed);
    _dispatch_workloop_wakeup(a1, 0, 1, a4, a5, a6, a7, a8);
  }
}

uint64_t _dispatch_workloop_activate_attributes(uint64_t a1)
{
  v14 = *(a1 + 200);
  memset(&v16, 0, sizeof(v16));
  pthread_attr_init(&v16);
  if ((*v14 & 8) != 0)
  {
    *(a1 + 84) |= *(v14 + 4) | 0x40000000;
  }

  if (*v14)
  {
    pthread_attr_setschedparam(&v16, (v14 + 8));
    *(a1 + 24) = &_dispatch_custom_workloop_root_queue;
  }

  if (*(v14 + 32))
  {
    *(a1 + 24) = &_dispatch_custom_workloop_root_queue;
    if (_os_workgroup_get_backing_workinterval(*(v14 + 32)))
    {
      pthread_attr_setworkinterval_np();
    }
  }

  if ((*v14 & 0x40) != 0)
  {
    if (_dispatch_root_queues_pred != -1)
    {
      dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
    }

    *(a1 + 24) = &_dispatch_custom_workloop_overcommit_root_queue;
  }

  if ((*v14 & 2) != 0)
  {
    pthread_attr_setschedpolicy(&v16, *(v14 + 16));
  }

  if ((*v14 & 4) != 0)
  {
    v1 = *(v14 + 20);
    v2 = *(v14 + 24);
    pthread_attr_setcpupercent_np();
  }

  v12 = 0;
  if (*(a1 + 200))
  {
    v12 = (**(a1 + 200) & 0x47) != 0;
  }

  v11 = 1;
  if (!v12)
  {
    v10 = 0;
    if (*(a1 + 200))
    {
      v10 = 0;
      if (*(*(a1 + 200) + 32))
      {
        v10 = _os_workgroup_get_backing_workinterval(*(*(a1 + 200) + 32)) != 0;
      }
    }

    v11 = v10;
  }

  if (v11)
  {
    v13 = _pthread_workloop_create();
    if (v13)
    {
      switch(v13)
      {
        case '!':
          if ((*v14 & 0x40) == 0)
          {
            _dispatch_abort(4566, 0, v3, v4, v5, v6, v7, v8);
          }

          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Process has too many threads.";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x2C12CLL);
        case '-':
          _dispatch_workloop_activate_tg_unsupported_fallback(a1);
          break;
        case 'N':
          _dispatch_workloop_activate_simulator_fallback(a1, &v16, v3, v4, v5, v6, v7, v8);
          break;
        default:
          _dispatch_abort(4571, v13, v3, v4, v5, v6, v7, v8);
      }
    }

    else
    {
      *v14 |= 0x10u;
    }
  }

  return pthread_attr_destroy(&v16);
}

void _dispatch_workloop_wakeup(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 >> 2))
  {
    _dispatch_workloop_barrier_complete(a1, a2, a3);
    return;
  }

  if ((a3 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid way to wake up a workloop";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x2C21CLL);
  }

  if ((a3 >> 3))
  {
    goto LABEL_39;
  }

  for (i = *(a1 + 56); ; i = v9)
  {
    v14 = i;
    if ((i & 0x700000000uLL) < a2 << 32)
    {
      v14 = i & 0xFFFFFFF8FFFFFFFFLL | (a2 << 32);
      if ((v14 & 0x1000000000) != 0)
      {
        v14 |= 0x800000000uLL;
      }
    }

    v11 = v14;
    if ((v14 & 0x700000000) >> 32)
    {
      v11 = v14 | 1;
    }

    if ((a3 & 2) != 0)
    {
      v11 |= 0x8000000000uLL;
    }

    else if (v11 == i)
    {
      goto LABEL_39;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v11, memory_order_release, memory_order_relaxed);
    if (v9 == v8)
    {
      break;
    }
  }

  if ((i & 0xFF80000000000000) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Waking up an inactive workloop";
    qword_E42C0 = i;
    __break(1u);
    JUMPOUT(0x2C418);
  }

  if ((i ^ v11))
  {
    v13 = *(a1 + 24);
    if ((a3 & 1) == 0)
    {
      _dispatch_abort(1937, a3 & 1, a3, a4, a5, a6, a7, a8);
    }

    if ((v11 & 0x2000000000) != 0)
    {
      _dispatch_event_loop_poke(a1, v11, 1, a4, a5, a6, a7, a8);
    }

    else
    {
      v10 = 0;
      if (*v13)
      {
        v10 = *v13;
      }

      (*(v10 + 72))(v13, a1, (v11 & 0x700000000uLL) >> 32);
    }

    return;
  }

  if (((i ^ v11) & 0x700000000) == 0)
  {
LABEL_39:
    _dispatch_release_2_tailcall(a1);
    return;
  }

  if ((v11 & 0xFF80000000000000) != 0 || (v11 & 0x4000000000) != 0 || (v11 & 1) == 0 && (v11 & 0xFFFFFFFC) == 0)
  {
    _dispatch_abort(5358, 0, a3, a4, a5, a6, a7, a8);
  }

  if ((v11 & 0x2000000000) != 0)
  {
    _dispatch_event_loop_poke(a1, v11, a3 | 0x80000000, a4, a5, a6, a7, a8);
  }

  else
  {
    _dispatch_queue_wakeup_with_override_slow(a1, v11, a3);
  }
}

void _dispatch_workloop_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v51 = a2;
  i = a3 & 0xFFEDFFFF | 0x100000;
  v49 = 0;
  v48 = _dispatch_workloop_invoke2;
  v47 = a1;
  v46[8] = 0;
  *v46 = (a3 & 1) == 0;
  v45 = 0;
  if ((a3 & 3) == 0)
  {
    *(v47 + 16) = -1985229329;
    v44 = _dispatch_thread_getspecific(20);
    v43 = v47;
    v74 = v44;
    v73 = v47;
    v72 = 0;
    v71 = 0;
    v173 = v44;
    v172 = v47;
  }

  i |= v49;
  if ((i & 2) != 0)
  {
    v45 = 0x40020000000001;
  }

  else
  {
    v102 = v47;
    v101 = i;
    v100 = (*(v47 + 80) - 1) << 41;
    v115 = _dispatch_thread_getspecific(3);
    v99 = v115 & 0xFFFFFFFC | 0x20000000000000;
    v97 = 0;
    v96 = 0;
    v95 = 0;
    v98 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v98 |= 0x4000000000uLL;
      v95 = 0;
    }

    else if ((v101 & 0x40000) != 0)
    {
      v95 = 0x4000000000;
    }

    else
    {
      v98 |= 0x4000000000uLL;
      v95 = 1;
    }

    v108 = (v101 & 2) == 0;
    v107 = 1331;
    if ((v101 & 2) != 0)
    {
      _dispatch_abort(v107, v108, v8, v9, v10, v11, v12, v13);
    }

    v112 = _dispatch_thread_getspecific(25);
    v114 = v112 & 0xF00;
    v111 = v114 >> 8;
    v113 = v112 & 0xF000;
    v110 = v113 >> 12;
    v116 = v112 & 0xF0000;
    v109 = (v112 & 0xF0000u) >> 16;
    if (v114 >> 8 > v113 >> 12)
    {
      v38 = v111;
    }

    else
    {
      v38 = v110;
    }

    if (v38 <= v109)
    {
      v36 = v109;
    }

    else
    {
      if (v111 <= v110)
      {
        v37 = v110;
      }

      else
      {
        v37 = v111;
      }

      v36 = v37;
    }

    v94 = v36;
LABEL_22:
    v93 = 0;
    v92 = (v102 + 56);
    v97 = *(v102 + 56);
    do
    {
      v96 = v97;
      if ((v97 & v98) != 0)
      {
        if (!v95)
        {
          break;
        }

        v96 ^= v95;
      }

      else
      {
        v150 = v97;
        v149 = v94;
        v152 = v97;
        v35 = 0;
        if ((v97 & 0x1000000000) != 0)
        {
          v151 = v150 & 0x700000000;
          v35 = v149 < (v150 & 0x700000000) >> 32;
        }

        if (v35)
        {
          v154 = v97;
          v155 = v97 & 0x700000000;
          v153 = (v97 & 0x700000000) >> 32;
          v159 = _dispatch_thread_getspecific(3);
          v158 = v153;
          if (_dispatch_set_qos_class_enabled)
          {
            v161 = v158;
            v160 = 0;
            if (v158)
            {
              v160 = 1 << (v161 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v157 = v153;
          v156 = _dispatch_thread_getspecific(25);
          v162 = v156 & 0xF0000;
          if (v153 > (v156 & 0xF0000) >> 16)
          {
            v156 = v156 & 0xFFF0FFFF | (v157 << 16);
            _dispatch_thread_setspecific(25, v156);
          }

          v94 = v153;
          goto LABEL_22;
        }

        v96 = v96 & 0x7700000001 | v99;
        v104 = v97;
        if ((v97 & 0x10000000000) != 0 || v97 + v100 < 0x20000000000000)
        {
          v96 |= 0x40000000000000uLL;
        }
      }

      v91 = v96;
      v16 = v97;
      v17 = v97;
      atomic_compare_exchange_strong_explicit(v92, &v17, v96, memory_order_acquire, memory_order_acquire);
      if (v17 != v16)
      {
        v97 = v17;
      }

      v90 = v17 == v16;
      v93 = v17 == v16;
    }

    while (v17 != v16);
    v89 = v93;
    v106 = (v97 & v95) == v95;
    v105 = 1364;
    if ((v97 & v95) != v95)
    {
      _dispatch_abort(v105, v106, v14, v15, a5, a6, a7, a8);
    }

    if ((v97 & v98) != 0)
    {
      v103 = 0;
    }

    else
    {
      v96 &= v95 | 0x60000000000000;
      v97 &= 0x3FFE0000000000uLL;
      v103 = v96 - v97;
    }

    v45 = v103;
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
      v78 = *(v47 + 84);
      v77 = _dispatch_thread_getspecific(25);
      v76 = v77;
      if (v77)
      {
        if ((v78 & 0xFFF) != 0)
        {
          v76 &= 0x880F0000;
          if ((v77 & 0xFFF) > (v78 & 0xFFFu))
          {
            v34 = v77 & 0xFFF;
          }

          else
          {
            v34 = v78 & 0xFFF;
          }

          v76 |= v34;
          v80 = v78 & 0xF000;
          v82 = v76 & 0xF00;
          if (v80 >> 12 > v82 >> 8)
          {
            v78 &= 0x4400F000u;
          }

          else
          {
            v78 &= 0x40000000u;
          }

          v76 |= v78;
        }

        else
        {
          if ((v76 & 0xFFF) != 0)
          {
            v76 |= 0x40000000u;
          }

          v79 = v78 & 0xF000;
          v81 = v76 & 0xF00;
          if (v79 >> 12 > v81 >> 8)
          {
            v76 = v76 & 0xFFFF0FFF | v78 & 0x400F000;
          }
        }
      }

      else
      {
        v76 = v78 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v76);
      v42 = v77;
    }

    if ((i & 0x100000) != 0)
    {
      v56 = v52;
      v54 = *(v52 + 80);
      v55 = v54;
      v53 = v54;
      if ((v54 & 0x400000) != 0)
      {
        v68 = v52;
        v67 = 0x400000;
        v65 = -4194305;
        v64 = -4194305;
        v66 = -4194305;
        v60 = -4194305;
        v59 = -4194305;
        v61 = -4194305;
        v58 = atomic_fetch_and_explicit((v52 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v62 = v58;
        v57 = v58;
        v63 = v58 & 0xFFBFFFFF;
      }
    }

    v41 = v47;
    v119 = v47;
    v118 = i;
    v165 = v47;
    v164 = 256;
    v171 = 1;
    v170 = 738;
    v169 = v47;
    v167 = *(v47 + 80);
    v168 = v167;
    v166 = v167;
    v163 = v167 & 0x30000;
    v117 = (v167 & 0x30000) << 8;
    if (v117)
    {
      v118 = v118 & 0xFCFFFFFF | v117;
    }

    for (i = v118; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v51);
      }

      v40 = v47;
      *&v46[1] = (v48)(v47, v51, i, &v45);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v39 = 0uLL;
        v84 = v47;
        v83 = &v39;
        v88 = &v39;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v39, v19, a5, a6, a7, a8);
        _dispatch_thread_setspecific_pair(20, v84, 21, v83, v20, v21, v22, v23);
        _dispatch_last_resort_autorelease_pool_pop(v51);
        v85 = &v39;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v39, v24, v25, v26, v27, v28);
      }

      v70 = *&v46[1] != 1;
      v69 = 2026;
      if (*&v46[1] == 1)
      {
        _dispatch_abort(v69, v70, v18, v19, a5, a6, a7, a8);
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

      v139 = v47;
      v138 = v45;
      v137 = *&v46[1] == 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v133 = (v47 + 56);
      v136 = *(v47 + 56);
      do
      {
        v135 = (v136 - v138) & 0xFFFFFFF700000001;
        v141 = v136;
        if ((v136 & 0xFF80000000000000) == 0)
        {
          v142 = v136;
          if ((v136 & 0x8000000000) != 0)
          {
            v131 = 0x8000000000;
            v130 = 0x8000000000;
            v132 = 0x8000000000;
            v126 = 0x8000000000;
            v125 = 0x8000000000;
            v127 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v139 + 56), 0x8000000000uLL, memory_order_acquire);
            v128 = xor_explicit;
            v123 = xor_explicit;
            v129 = xor_explicit ^ v132;
            v140 = 0;
            goto LABEL_101;
          }

          if (v137)
          {
            v135 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v135 |= 0x8000000000uLL;
          }
        }

        v122 = v135;
        v29 = v136;
        v30 = v136;
        atomic_compare_exchange_strong_explicit(v133, &v30, v135, memory_order_release, memory_order_relaxed);
        if (v30 != v29)
        {
          v136 = v30;
        }

        v121 = v30 == v29;
        v134 = v30 == v29;
      }

      while (v30 != v29);
      v120 = v134;
      v144 = v136;
      v147 = v136;
      v32 = 0;
      if ((v136 & 0x1000000000) != 0)
      {
        v32 = (v144 & 0x800000000) != 0;
      }

      if (v32)
      {
        v143 = v136 & 0x700000000;
        v146 = (v136 & 0x700000000uLL) >> 32;
        v145 = _dispatch_thread_getspecific(25);
        v148 = v145 & 0xF0000;
        if (v146 > (v145 & 0xF0000) >> 16)
        {
          v145 &= 0xFFF0FFFF;
          v145 |= v146 << 16;
          _dispatch_thread_setspecific(25, v145);
        }
      }

      v140 = 1;
LABEL_101:
      if (v140)
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
      v87 = v42;
      v86 = _dispatch_thread_getspecific(25);
      v87 &= 0xFFF0FFFF;
      v87 |= v86 & 0xF0000;
      _dispatch_thread_setspecific(25, v87);
    }
  }

  if (v46[0])
  {
    v75 = v47;
    v174 = v47;
    v179 = 772079660;
    v178 = v47;
    v177 = 0;
    v176 = 0;
    v175 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v180 = v75;
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

uint64_t _dispatch_workloop_invoke2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  v33 = *(a1 + 200);
  v32 = 0uLL;
  if (v33 && (*v33 & 0x20) != 0)
  {
    v52 = v33 + 10;
    _dispatch_thread_setspecific(24, (v33 + 10));
  }

  v43 = v37;
  v42 = &v32;
  v46 = &v32;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v32, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v43, 21, v42, v8, v9, v10, v11);
  do
  {
LABEL_5:
      ;
    }

    if (!i)
    {
      *v34 = (*v34 & 1) + 0x40020000000000;
      v45 = &v32;
      _dispatch_thread_setspecific_packed_pair(20, 21, &v32, v12, v13, v14, v15, v16);
      v51 = 0;
      _dispatch_thread_setspecific(24, 0);
      return 0;
    }

    v73 = v37;
    v72 = i;
    v71 = 0;
    v70 = 0;
    v79 = i;
    v69 = i << 32;
    v68 = 0;
    v67 = (v37 + 56);
    v71 = *(v37 + 56);
    do
    {
      if ((v71 & 0x700000000uLL) <= v69)
      {
        v74 = 1;
        goto LABEL_24;
      }

      v76 = v71;
      if ((v71 & 0x8000000000) != 0)
      {
        v65 = 0x8000000000;
        v64 = 0x8000000000;
        v66 = 0x8000000000;
        v60 = 0x8000000000;
        v59 = 0x8000000000;
        v61 = 0x8000000000;
        xor_explicit = atomic_fetch_xor_explicit((v73 + 56), 0x8000000000uLL, memory_order_acquire);
        v62 = xor_explicit;
        v57 = xor_explicit;
        v63 = xor_explicit ^ v66;
        v74 = 0;
        goto LABEL_24;
      }

      v70 = v71 & 0xFFFFFFF8FFFFFFFFLL | v69;
      v56 = v70;
      v17 = v71;
      v18 = v71;
      atomic_compare_exchange_strong_explicit(v67, &v18, v70, memory_order_relaxed, memory_order_relaxed);
      if (v18 != v17)
      {
        v71 = v18;
      }

      v55 = v18 == v17;
      v68 = v18 == v17;
    }

    while (v18 != v17);
    v54 = v68;
    v75 = _dispatch_thread_getspecific(29);
    v78 = (v75 & 1) == 0;
    v77 = 453;
    if (v75)
    {
      _dispatch_abort(v77, v78, v19, v12, v13, v14, v15, v16);
    }

    v53 = v75;
    if (v75)
    {
      *(v53 + 53) = *(v53 + 53) & 0xFD | 2;
      _dispatch_return_to_kernel();
    }

    v74 = 1;
LABEL_24:
    ;
  }

  while ((v74 & 1) == 0);
  *(v37 + 100) = i;
  v29 = (v37 + 104 + 8 * (i - 1));
  v28 = *v29;
  if (!*v29)
  {
    v28 = _dispatch_wait_for_enqueuer(v29);
  }

  v31 = v28;
  while (1)
  {
    v47 = v31;
    v49 = v31;
    if (*v31 <= 0xFFFuLL && (*v47 & 1) != 0)
    {
      break;
    }

    v27 = v31[2];
    *(v37 + 104 + 8 * (i - 1)) = v27;
    if (!v27)
    {
      v25 = (v37 + 152 + 8 * (i - 1));
      v26 = *v25;
      while (1)
      {
        v41 = v26;
        if (v31 != (v26 & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v20 = v26;
        v21 = v26;
        atomic_compare_exchange_strong_explicit(v25, &v21, 0, memory_order_release, memory_order_relaxed);
        if (v21 != v26)
        {
          v26 = v21;
        }

        if (v21 == v20)
        {
          goto LABEL_43;
        }
      }

      v24 = v31[2];
      if (!v24)
      {
        v24 = _dispatch_wait_for_enqueuer(v31 + 2);
      }

      v27 = v24;
      *(v37 + 104 + 8 * (i - 1)) = v24;
    }

LABEL_43:
    if (_dispatch_thread_getspecific(5))
    {
      _dispatch_return_to_kernel();
    }

    _dispatch_continuation_pop_inline(v31, v36, v35, v37);
    i = *(v37 + 100);
    v31 = v27;
    v23 = 0;
    if (v27)
    {
      v39 = v37;
      v40 = *(v37 + 60) << 32;
      v40 &= 0x700000000uLL;
      v23 = HIDWORD(v40) <= i;
    }

    if (!v23)
    {
      goto LABEL_5;
    }
  }

  *(v36 + 16) = i;
  *(v36 + 8) = v31;
  *(v37 + 100) = 0;
  v44 = &v32;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v32, v12, v13, v14, v15, v16);
  v50 = 0;
  _dispatch_thread_setspecific(24, 0);
  return *(v37 + 24);
}

void _dispatch_workloop_barrier_complete(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v20 = 0;
LABEL_2:
  for (i = 6; i; --i)
  {
    if (*(a1 + 152 + 8 * (i - 1)))
    {
      v18 = (a1 + 104 + 8 * (i - 1));
      v17 = *v18;
      if (!*v18)
      {
        v17 = _dispatch_wait_for_enqueuer(v18);
      }

      if (*v17 <= 0xFFFuLL && (*v17 & 0x81) != 0)
      {
        _dispatch_workloop_drain_barrier_waiter(a1, v17, i, a3, 0);
        return;
      }

      v20 = 1;
    }
  }

  v14 = 0;
  if (v20)
  {
    v14 = (a3 & 1) == 0;
  }

  if (v14)
  {
    _dispatch_retain_2(a1);
    a3 |= 1u;
  }

LABEL_18:
  v16 = *(a1 + 56);
  do
  {
    if ((v16 & 0x2000000000) != 0 && (v16 & 2) != 0 && (v16 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_18;
    }

    v28 = v16;
    v27 = a2 << 32;
    if ((v16 & 0x700000000) < v27)
    {
      v28 = v16 & 0xFFFFFFF8FFFFFFFFLL | v27;
      if (v16 & 0x1000000000 | v27 & 0x1000000000)
      {
        v28 |= 0x800000000uLL;
      }
    }

    if (v20)
    {
      v15 = (v28 - 0x40020000000000) & 0xFFFFFFF700000000 | 1;
    }

    else
    {
      if ((v16 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        goto LABEL_2;
      }

      if ((v16 & 0x2000000000) != 0)
      {
        v15 = (v28 - 0x40020000000000) & 0xFFFFFFF000000000;
      }

      else
      {
        v15 = (v28 - 0x40020000000000) & 0xFFFFFFF000000001;
      }
    }

    v3 = v16;
    v4 = v16;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v15, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      v16 = v4;
    }
  }

  while (v4 != v3);
  v11 = ((v16 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0;
  if (!v11)
  {
    _dispatch_abort(4884, v11, v5, v6, v7, v8, v9, v10);
  }

  if ((v16 & 0x4000000000) != 0)
  {
    _dispatch_abort(4885, (v16 & 0x4000000000) == 0, v5, v6, v7, v8, v9, v10);
  }

  if ((v16 & 0x2000000000) != 0)
  {
    if ((v15 & 0x4000000000) != 0)
    {
      _dispatch_abort(4902, (v15 & 0x4000000000) == 0, v5, v6, v7, v8, v9, v10);
    }

    if ((v16 & 1) != 0 || (v15 & 1) != 0 || (v16 & 2) == 0)
    {
      _dispatch_event_loop_end_ownership(a1, v16, v15, a3, v7, v8, v9, v10);
      return;
    }

    _dispatch_event_loop_assert_not_owned(a1);
    goto LABEL_84;
  }

  v13 = 0;
  if ((v16 & 0x1000000000) != 0)
  {
    v13 = (v16 & 0x800000000) != 0;
  }

  if (v13)
  {
    v25 = (v16 & 0x700000000) >> 32;
    v24 = _dispatch_thread_getspecific(25);
    if (v25 > (v24 & 0xF0000u) >> 16)
    {
      _dispatch_thread_setspecific(25, v24 & 0xFFF0FFFF | (v25 << 16));
    }
  }

  if (!v20)
  {
    goto LABEL_84;
  }

  if ((v16 ^ v15))
  {
    if ((v15 & 0x4000000001) == 0)
    {
      _dispatch_abort(4921, (v15 & 0x4000000001) != 0, v5, v6, v7, v8, v9, v10);
    }

    v26 = *(a1 + 24);
    if ((a3 & 1) == 0)
    {
      _dispatch_abort(1937, a3 & 1, v5, v6, v7, v8, v9, v10);
    }

    if ((v15 & 0x2000000000) != 0)
    {
      _dispatch_event_loop_poke(a1, v15, 1, v6, v7, v8, v9, v10);
    }

    else
    {
      v12 = 0;
      if (*v26)
      {
        v12 = *v26;
      }

      (*(v12 + 72))(v26, a1, (v15 & 0x700000000) >> 32, v6, v7, v8);
    }

    return;
  }

  if ((v15 & 0xFF80000000000000) != 0 || (v15 & 0x4000000000) != 0 || (v15 & 1) == 0 && (v15 & 0xFFFFFFFC) == 0)
  {
LABEL_84:
    if (a3)
    {
      _dispatch_release_2_tailcall(a1);
    }

    return;
  }

  v30 = (v15 & 0xFF80000000000000) == 0 && (v15 & 0x4000000000) == 0 && ((v15 & 1) != 0 || (v15 & 0xFFFFFFFC) != 0);
  if (!v30)
  {
    _dispatch_abort(5358, v30, v5, v6, v7, v8, v9, v10);
  }

  if ((v15 & 0x2000000000) != 0)
  {
    _dispatch_event_loop_poke(a1, v15, a3 | 0x80000000, v6, v7, v8, v9, v10);
  }

  else
  {
    _dispatch_queue_wakeup_with_override_slow(a1, v15, a3);
  }
}

void _dispatch_workloop_push(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
  {
    _dispatch_workloop_push_waiter(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (a3 < (*(a1 + 84) & 0xF00u) >> 8)
    {
      v9 = (*(a1 + 84) & 0xF00u) >> 8;
    }

    if (!v9)
    {
      v9 = (*(a1 + 84) & 0xF000u) >> 12;
    }

    a2[2] = 0;
    _dispatch_thread_setspecific(122, a1 + 152 + 8 * (v9 - 1));
    v8 = atomic_exchange_explicit((a1 + 152 + 8 * (v9 - 1)), a2, memory_order_release);
    if (v8)
    {
      *(v8 + 16) = a2;
    }

    else
    {
      _dispatch_retain_2_unsafe(a1);
      *(a1 + 104 + 8 * (v9 - 1)) = a2;
    }

    _dispatch_thread_setspecific(122, 0);
    if (!v8)
    {
      _dispatch_workloop_wakeup(a1, v9, 3);
    }
  }
}

void _dispatch_workloop_push_waiter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a3;
  v40 = *(a2 + 8);
  if ((v40 & 0x20000000) != 0)
  {
    _dispatch_abort(458, (*(a2 + 8) & 0x20000000) == 0, a3, a4, a5, a6, a7, a8);
  }

  v8 = (v40 & 0x3FFF00uLL) >> 8;
  v9 = __clz(__rbit32(v8));
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  if (a3 < ((v10 << 8) & 0xF00) >> 8)
  {
    v33 = ((v10 << 8) & 0xF00) >> 8;
  }

  if (!v33)
  {
    v33 = 4;
  }

  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, a1 + 152 + 8 * (v33 - 1));
  v32 = atomic_exchange_explicit((a1 + 152 + 8 * (v33 - 1)), a2, memory_order_release);
  if (v32)
  {
    *(v32 + 16) = a2;
  }

  else
  {
    *(a1 + 104 + 8 * (v33 - 1)) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v32)
  {
    if ((*a2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    v36 = *(a1 + 24);
    v22 = 0;
    if (v36 >= &_dispatch_root_queues)
    {
      v22 = v36 < &unk_E0A80;
    }

    if (v22)
    {
LABEL_19:
      v30 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000002;
      v29 = *(a1 + 56);
      do
      {
        v38 = v29;
        v37 = v33 << 32;
        if ((v29 & 0x700000000) < v37)
        {
          v38 = v29 & 0xFFFFFFF8FFFFFFFFLL | v37;
          if (v29 & 0x1000000000 | v37 & 0x1000000000)
          {
            v38 |= 0x800000000uLL;
          }
        }

        v28 = v38 | 0x8000000000;
        if ((v29 & 0xFFFFFFFC) == 0 && (v29 & 0x4000000001) == 0)
        {
          v28 = v38 & 0x7700000001 | v30;
        }

        v17 = v29;
        v18 = v29;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v18, v28, memory_order_release, memory_order_relaxed);
        if (v18 != v17)
        {
          v29 = v18;
        }
      }

      while (v18 != v17);
      if ((v28 & 0x2000000000) != 0 && *(a2 + 48) != -4)
      {
        v21 = *(a2 + 100);
        *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (v21 == _dispatch_thread_getspecific(3)));
      }

      if (((v29 ^ v28) & 0x40000000000000) != 0)
      {
        if ((*(a2 + 106) & 4) == 0)
        {
          goto LABEL_50;
        }

        v27 = (a1 + 104 + 8 * (v33 - 1));
        v26 = *v27;
        if (!*v27)
        {
          v26 = _dispatch_wait_for_enqueuer(v27);
        }

        if (v26 == a2)
        {
          *(a2 + 106) = *(a2 + 106) & 0xF7 | 8;
          if ((*a2 & 0x80) != 0)
          {
            *(a2 + 56) = a1;
          }

          v25 = *(a2 + 16);
          *(a1 + 104 + 8 * (v33 - 1)) = v25;
          if (!v25)
          {
            v24 = *(a1 + 152 + 8 * (v33 - 1));
            while (a2 == (v24 & 0xFFFFFFFFFFFFFFF8))
            {
              v19 = v24;
              v20 = v24;
              atomic_compare_exchange_strong_explicit((a1 + 152 + 8 * (v33 - 1)), &v20, 0, memory_order_release, memory_order_relaxed);
              if (v20 != v24)
              {
                v24 = v20;
              }

              if (v20 == v19)
              {
                return;
              }
            }

            v23 = *(a2 + 16);
            if (!v23)
            {
              v23 = _dispatch_wait_for_enqueuer((a2 + 16));
            }

            *(a1 + 104 + 8 * (v33 - 1)) = v23;
          }
        }

        else
        {
LABEL_50:
          _dispatch_workloop_barrier_complete(a1, v33, 0);
        }
      }

      else if (((v29 ^ v28) & 0x700000000) != 0)
      {
        if ((v28 & 0xFF80000000000000) != 0 || (v28 & 0x4000000000) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = (v28 & 1) != 0 || (v28 & 0x2000000000) == 0 && (v28 & 0xFFFFFFFC) != 0;
        }

        if (v41)
        {
          v39 = (v28 & 0xFF80000000000000) == 0 && (v28 & 0x4000000000) == 0 && ((v28 & 1) != 0 || (v28 & 0xFFFFFFFC) != 0);
          if (!v39)
          {
            _dispatch_abort(5358, v39, v11, v12, v13, v14, v15, v16);
          }

          if ((v28 & 0x2000000000) != 0)
          {
            _dispatch_event_loop_poke(a1, v28, 0x80000000, v12, v13, v14, v15, v16);
          }

          else
          {
            _dispatch_queue_wakeup_with_override_slow(a1, v28, 0);
          }
        }
      }
    }

    else
    {
      *(a2 + 56) = a1;
      *a2 &= ~0x80uLL;
      _dispatch_retain_2_unsafe(a1);
      _dispatch_workloop_wakeup(a1, v33, 3);
    }
  }
}

uint64_t dispatch_thread_get_current_override_qos_floor()
{
  v5 = 0;
  v0 = _dispatch_thread_getspecific(25);
  v7 = (v0 & 0xF000) >> 12;
  if ((v0 & 0xF00) >> 8 > v7)
  {
    v4 = (v0 & 0xF00) >> 8;
  }

  else
  {
    v4 = (v0 & 0xF000) >> 12;
  }

  if (v4 <= (v0 & 0xF0000) >> 16)
  {
    v2 = (v0 & 0xF0000) >> 16;
  }

  else
  {
    if ((v0 & 0xF00) >> 8 > v7)
    {
      v3 = (v0 & 0xF00) >> 8;
    }

    else
    {
      v3 = (v0 & 0xF000) >> 12;
    }

    v2 = v3;
  }

  if (v2 != 15)
  {
    LODWORD(v5) = 1;
    switch(v2)
    {
      case 1u:
        v6 = 5;
        break;
      case 2u:
        v6 = 9;
        break;
      case 3u:
        v6 = 17;
        break;
      case 4u:
        v6 = 21;
        break;
      case 5u:
        v6 = 25;
        break;
      case 6u:
        v6 = 33;
        break;
      default:
        v6 = 0;
        break;
    }

    HIDWORD(v5) = v6;
  }

  return v5;
}

uint64_t dispatch_thread_override_self(int a1)
{
  switch(a1)
  {
    case 5:
      v2 = 1;
      break;
    case 9:
      v2 = 2;
      break;
    case 17:
      v2 = 3;
      break;
    case 21:
      v2 = 4;
      break;
    case 25:
      v2 = 5;
      break;
    case 33:
      v2 = 6;
      break;
    default:
      v2 = 0;
      break;
  }

  _dispatch_thread_getspecific(3);
  if (_dispatch_set_qos_class_enabled)
  {
    _pthread_workqueue_override_start_direct();
  }

  v3 = _dispatch_thread_getspecific(25);
  if (v2 > (v3 & 0xF0000u) >> 16)
  {
    _dispatch_thread_setspecific(25, v3 & 0xFFF0FFFF | (v2 << 16));
  }

  return 0;
}

uint64_t dispatch_lock_override_start_with_debounce()
{
  if (_dispatch_set_qos_class_enabled)
  {
    return _pthread_workqueue_override_start_direct_check_owner();
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch_lock_override_end(int a1)
{
  switch(a1)
  {
    case 5:
      v2 = 1;
      break;
    case 9:
      v2 = 2;
      break;
    case 17:
      v2 = 3;
      break;
    case 21:
      v2 = 4;
      break;
    case 25:
      v2 = 5;
      break;
    case 33:
      v2 = 6;
      break;
    default:
      v2 = 0;
      break;
  }

  v3 = _dispatch_thread_getspecific(25);
  if (v2 > (v3 & 0xF0000u) >> 16)
  {
    _dispatch_thread_setspecific(25, v3 & 0xFFF0FFFF | (v2 << 16));
  }

  return 0;
}

void _dispatch_queue_wakeup(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a3;
  v23 = a4;
  v19 = 1;
  if (a4 == -1)
  {
    _dispatch_abort(5417, 0, a3, -1, a5, a6, a7, a8);
  }

  if (a4 && (a3 & 1) == 0)
  {
    _dispatch_retain_2(a1);
    v24 |= 1u;
  }

  if ((v24 & 4) != 0)
  {
    v17 = 0;
    if (*a1)
    {
      v17 = *a1;
    }

    if (*(v17 + 16) != 19)
    {
      _dispatch_abort(5435, *(v17 + 16) == 19, a3, a4, a5, a6, a7, a8);
    }

    v31 = a2;
    if (!a2)
    {
      v31 = (*(a1 + 84) & 0xF000u) >> 12;
    }

    if (v31 > (*(a1 + 84) & 0xF00u) >> 8)
    {
      v16 = v31;
    }

    else
    {
      v16 = (*(a1 + 84) & 0xF00u) >> 8;
    }

    _dispatch_lane_class_barrier_complete(a1, v16, v24, v23, 0x40020000000000);
    return;
  }

  if (v23)
  {
    if (v23 == &_dispatch_mgr_q)
    {
      v19 = 0x4000000000;
    }

    v30 = a2;
    if (!a2)
    {
      v30 = (*(a1 + 84) & 0xF000u) >> 12;
    }

    if (v30 <= (*(a1 + 84) & 0xF00u) >> 8)
    {
      v15 = (*(a1 + 84) & 0xF00u) >> 8;
    }

    else
    {
      v15 = v30;
    }

    v21 = *(a1 + 56);
    do
    {
      v29 = v21;
      v28 = v15 << 32;
      if ((v21 & 0x700000000) < v28)
      {
        v29 = v21 & 0xFFFFFFF8FFFFFFFFLL | v28;
        if (v21 & 0x1000000000 | v28 & 0x1000000000)
        {
          v29 |= 0x800000000uLL;
        }
      }

      v20 = v29;
      if ((v24 & 0x20) != 0 && (v21 & 0x180000000000000) == 0x80000000000000)
      {
        v20 = v29 & 0xFF7FFFFFFFFFFFFFLL;
      }

      v14 = 0;
      if ((v20 & 0xFF80000000000000) == 0)
      {
        v14 = 0;
        if ((v21 & 0x4000000001) == 0)
        {
          v13 = 1;
          if ((v21 & 0xFFFFFFFC) != 0)
          {
            v13 = v19 != 0x4000000000;
          }

          v14 = v13;
        }
      }

      if (v14)
      {
        v20 |= v19;
      }

      if ((v24 & 2) != 0)
      {
        v20 |= 0x8000000000uLL;
      }

      else if (v20 == v21)
      {
        goto LABEL_98;
      }

      v8 = v21;
      v9 = v21;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v20, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        v21 = v9;
      }
    }

    while (v9 != v8);
LABEL_66:
    if (((v21 ^ v20) & v19) != 0)
    {
      if (v23 == (&dword_0 + 1))
      {
        v18 = *(a1 + 24);
      }

      else
      {
        v18 = v23;
      }

      if ((v20 & 0x4000000001) == 0)
      {
        _dispatch_abort(5576, (v20 & 0x4000000001) != 0, a3, a4, a5, a6, a7, a8);
      }

      if ((v24 & 1) == 0)
      {
        _dispatch_abort(1937, v24 & 1, a3, a4, a5, a6, a7, a8);
      }

      if ((v20 & 0x2000000000) != 0)
      {
        _dispatch_event_loop_poke(a1, v20, 1, a4, a5, a6, a7, a8);
      }

      else
      {
        v12 = 0;
        if (*v18)
        {
          v12 = *v18;
        }

        (v12[9])(v18, a1, (v20 & 0x700000000) >> 32, a4);
      }

      return;
    }

    if (((v21 ^ v20) & 0x700000000) != 0 && (v20 & 0xFF80000000000000) == 0 && (v20 & 0x4000000000) == 0 && ((v20 & 1) != 0 || (v20 & 0xFFFFFFFC) != 0))
    {
      if ((v20 & 0xFF80000000000000) != 0 || (v20 & 0x4000000000) != 0 || (v20 & 1) == 0 && (v20 & 0xFFFFFFFC) == 0)
      {
        _dispatch_abort(5358, 0, a3, a4, a5, a6, a7, a8);
      }

      if ((v20 & 0x2000000000) != 0)
      {
        _dispatch_event_loop_poke(a1, v20, v24 | 0x80000000, a4, a5, a6, a7, a8);
      }

      else
      {
        _dispatch_queue_wakeup_with_override_slow(a1, v20, v24);
      }

      return;
    }
  }

  else if (a2)
  {
    v21 = *(a1 + 56);
    while ((v21 & 0xFFFFFFFC) != 0 || (v21 & 0x4000000001) != 0)
    {
      v27 = v21;
      v26 = a2 << 32;
      if ((v21 & 0x700000000) < v26)
      {
        v27 = v21 & 0xFFFFFFF8FFFFFFFFLL | v26;
        if (v21 & 0x1000000000 | v26 & 0x1000000000)
        {
          v27 |= 0x800000000uLL;
        }
      }

      v20 = v27;
      if ((v21 & 0x2000000000) != 0 && (v21 & 0xFF80000000000000) == 0 && (v21 & 0x4000000000) == 0)
      {
        v20 = v27 | 1;
      }

      if (v20 == v21)
      {
        break;
      }

      v10 = v21;
      v11 = v21;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v11, v20, memory_order_relaxed, memory_order_relaxed);
      if (v11 != v10)
      {
        v21 = v11;
      }

      if (v11 == v10)
      {
        v23 = (&dword_0 + 1);
        if (((v21 ^ v20) & 1) != 0 && (v24 & 1) == 0)
        {
          _dispatch_retain_2(a1);
          v24 |= 1u;
        }

        goto LABEL_66;
      }
    }
  }

LABEL_98:
  if (v24)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

void _dispatch_lane_class_barrier_complete(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t (***a4)(), uint64_t a5)
{
  if (a4 == &_dispatch_mgr_q)
  {
    v18 = &_dispatch_mgr_q;
    v19 = 0x4000000000;
  }

  else if (a4)
  {
    if (a4 == (&dword_0 + 1))
    {
      v17 = *(a1 + 24);
    }

    else
    {
      v17 = a4;
    }

    v18 = v17;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

LABEL_9:
  v21 = *(a1 + 56);
  do
  {
    if ((v21 & 0x2000000000) != 0 && (v21 & 2) != 0 && (v21 & 0x800000001) != 0)
    {
      _dispatch_event_loop_ensure_ownership(a1);
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_9;
    }

    v31 = v21 - a5;
    v30 = a2 << 32;
    if (((v21 - a5) & 0x700000000uLL) < v30)
    {
      v31 = v31 & 0xFFFFFFF8FFFFFFFFLL | v30;
      if ((v31 & 0x1000000000) != 0)
      {
        v31 |= 0x800000000uLL;
      }
    }

    v20 = v31 & 0xFFFFFFF700000001;
    if ((v21 & 0xFF80000000000000) != 0)
    {
      if ((v21 & 0x2000000000) != 0)
      {
        v20 = v31 & 0xFFFFFFF700000000;
      }
    }

    else if (v19)
    {
      if ((v21 & 0x4000000001) == 0)
      {
        v20 |= v19;
      }
    }

    else
    {
      if ((v21 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        v25 = a3 | 4;
        v16 = 0;
        if (*a1)
        {
          v16 = *a1;
        }

        (*(v16 + 64))(a1, a2, v25);
        return;
      }

      v20 = v31 & 0xFFFFFFF000000001;
    }

    v5 = v21;
    v6 = v21;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v6, v20, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      v21 = v6;
    }
  }

  while (v6 != v5);
  v22 = v21 - a5;
  v13 = ((v22 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0;
  if (!v13)
  {
    _dispatch_abort(1448, v13, v7, v8, v9, v10, v11, v12);
  }

  if ((v22 & 0x4000000000) != 0)
  {
    _dispatch_abort(1449, (v22 & 0x4000000000) == 0, v7, v8, v9, v10, v11, v12);
  }

  if ((v22 & 0x2000000000) == 0)
  {
    v15 = 0;
    if ((v22 & 0x1000000000) != 0)
    {
      v15 = (v22 & 0x800000000) != 0;
    }

    if (v15)
    {
      v29 = (v22 & 0x700000000uLL) >> 32;
      v28 = _dispatch_thread_getspecific(25);
      if (v29 > (v28 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v28 & 0xFFF0FFFF | (v29 << 16));
      }
    }

    if (v18)
    {
      if (((v22 ^ v20) & v19) != 0)
      {
        if ((v20 & 0x4000000001) == 0)
        {
          _dispatch_abort(1488, (v20 & 0x4000000001) != 0, v7, v8, v9, v10, v11, v12);
        }

        if ((a3 & 1) == 0)
        {
          _dispatch_abort(1937, a3 & 1, v7, v8, v9, v10, v11, v12);
        }

        if ((v20 & 0x2000000000) != 0)
        {
          _dispatch_event_loop_poke(a1, v20, 1, v8, v9, v10, v11, v12);
        }

        else
        {
          v14 = 0;
          if (*v18)
          {
            v14 = *v18;
          }

          (v14[9])(v18, a1, (v20 & 0x700000000) >> 32, v8, v9, v10);
        }

        return;
      }

      if ((v20 & 0xFF80000000000000) == 0 && (v20 & 0x4000000000) == 0 && ((v20 & 1) != 0 || (v20 & 0xFFFFFFFC) != 0))
      {
        v32 = (v20 & 0xFF80000000000000) == 0 && (v20 & 0x4000000000) == 0 && ((v20 & 1) != 0 || (v20 & 0xFFFFFFFC) != 0);
        if (!v32)
        {
          _dispatch_abort(5358, v32, v7, v8, v9, v10, v11, v12);
        }

        if ((v20 & 0x2000000000) != 0)
        {
          _dispatch_event_loop_poke(a1, v20, a3 | 0x80000000, v8, v9, v10, v11, v12);
        }

        else
        {
          _dispatch_queue_wakeup_with_override_slow(a1, v20, a3);
        }

        return;
      }
    }

    if ((a3 & 1) == 0)
    {
      return;
    }

LABEL_83:
    _dispatch_release_2_tailcall(a1);
    return;
  }

  if ((v20 & 0x4000000000) != 0)
  {
    _dispatch_abort(1466, (v20 & 0x4000000000) == 0, v7, v8, v9, v10, v11, v12);
  }

  if ((v22 & 1) != 0 || (v20 & 1) != 0 || (v22 & 2) == 0)
  {
    _dispatch_event_loop_end_ownership(a1, v22, v20, a3, v9, v10, v11, v12);
    return;
  }

  _dispatch_event_loop_assert_not_owned(a1);
  if (a3)
  {
    goto LABEL_83;
  }
}

void _dispatch_lane_wakeup(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 4) != 0)
  {
    _dispatch_lane_barrier_complete(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, *(a1 + 48) != 0, a5, a6, a7, a8);
  }
}

void _dispatch_lane_barrier_complete(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  if (*(a1 + 48) && (*(a1 + 56) & 0xFF80000000000000) == 0)
  {
    v18 = *(a1 + 104);
    if (!v18)
    {
      v18 = _dispatch_wait_for_enqueuer((a1 + 104));
    }

    v10 = 1;
    if (*(a1 + 80) != 1)
    {
      if (*v18 > 0xFFFuLL)
      {
        v9 = 0;
        if (*v18)
        {
          v9 = *v18;
        }

        v17 = (*(v9 + 16) & 0xF0) == 0x10 && (*(v18 + 80) & 0x80000) != 0;
      }

      else
      {
        v17 = (*v18 & 2) != 0;
      }

      v10 = v17;
    }

    if (v10)
    {
      if (*v18 <= 0xFFFuLL && (*v18 & 0x81) != 0)
      {
        _dispatch_lane_drain_barrier_waiter(a1, v18, a3, 0, a5, a6, a7, a8);
        return;
      }
    }

    else if (*(a1 + 80) > 1u)
    {
      if (*v18 > 0xFFFuLL)
      {
        v8 = 0;
        if (*v18)
        {
          v8 = *v18;
        }

        v16 = (*(v8 + 16) & 0xF0) == 0x10 && (*(v18 + 80) & 0x80000) != 0;
      }

      else
      {
        v16 = (*v18 & 2) != 0;
      }

      if (!v16)
      {
        _dispatch_lane_drain_non_barriers(a1, v18, a3, a4, a5, a6, a7, a8);
        return;
      }
    }

    if ((a3 & 1) == 0)
    {
      _dispatch_retain_2(a1);
      a3 |= 1u;
    }

    v12 = (&dword_0 + 1);
  }

  _dispatch_lane_class_barrier_complete(a1, a2, a3, v12, (*(a1 + 80) << 41) + 0x40000000000000);
}

void _dispatch_lane_push(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
  {
    _dispatch_lane_push_waiter(a1, a2, a3);
  }

  else
  {
    if (*(a1 + 8) == 0x7FFFFFFF)
    {
      _dispatch_abort(5726, *(a1 + 8) != 0x7FFFFFFF, a3, a4, a5, a6, a7, a8);
    }

    if (a3 > (*(a1 + 84) & 0xF00u) >> 8)
    {
      v15 = a3;
    }

    else
    {
      v15 = 0;
    }

    a2[2] = 0;
    _dispatch_thread_setspecific(122, a1 + 48);
    v10 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
    if (v10)
    {
      v16 = ((*(a1 + 60) << 32) & 0x700000000) >> 32;
      v9 = 1;
      if (v16)
      {
        v9 = v16 < v15;
      }

      if (v9)
      {
        _dispatch_retain_2_unsafe(a1);
        v11 = 1;
      }
    }

    else
    {
      _dispatch_retain_2_unsafe(a1);
      v11 = 3;
    }

    if (v10)
    {
      *(v10 + 16) = a2;
    }

    else
    {
      *(a1 + 104) = a2;
    }

    _dispatch_thread_setspecific(122, 0);
    if (v11)
    {
      v8 = 0;
      if (*a1)
      {
        v8 = *a1;
      }

      (*(v8 + 64))(a1, v15, v11);
    }
  }
}

void _dispatch_lane_push_waiter(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (*(a2 + 48) != -4)
  {
    a3 = 0;
  }

  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, a1 + 48);
  v39 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v39)
  {
    *(v39 + 16) = a2;
  }

  else
  {
    *(a1 + 104) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (v39)
  {
    if (a3)
    {
      v26 = *(a1 + 56);
      while (1)
      {
        v31 = v26;
        v30 = a3 << 32;
        if ((v26 & 0x700000000) < v30)
        {
          v31 = v26 & 0xFFFFFFF8FFFFFFFFLL | v30;
          if (v26 & 0x1000000000 | v30 & 0x1000000000)
          {
            v31 |= 0x800000000uLL;
          }
        }

        v24 = v31;
        if (v26 == v31)
        {
          break;
        }

        v14 = v26;
        v15 = v26;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v15, v31, memory_order_relaxed, memory_order_relaxed);
        if (v15 != v14)
        {
          v26 = v15;
        }

        if (v15 == v14)
        {
          if ((v31 & 0xFF80000000000000) != 0 || (v31 & 0x4000000000) != 0)
          {
            v40 = 0;
          }

          else
          {
            v40 = (v31 & 1) != 0 || (v31 & 0x2000000000) == 0 && (v31 & 0xFFFFFFFC) != 0;
          }

          if (!v40)
          {
            return;
          }

          v35 = (v31 & 0xFF80000000000000) == 0 && (v31 & 0x4000000000) == 0 && ((v31 & 1) != 0 || (v31 & 0xFFFFFFFC) != 0);
          if (!v35)
          {
            _dispatch_abort(5358, v35, v3, v4, v5, v6, v7, v8);
          }

          if ((v31 & 0x2000000000) == 0)
          {
            _dispatch_queue_wakeup_with_override_slow(a1, v31, 0);
            return;
          }

          goto LABEL_76;
        }
      }
    }
  }

  else
  {
    if ((*(a1 + 80) & 0x40000) == 0 || (*(a1 + 80) & 0x1000000) != 0)
    {
      if ((*a2 & 0x80) != 0)
      {
        v21 = 1;
        if ((*(a1 + 80) & 0x1000000) == 0)
        {
          v20 = 0;
          if ((*(a1 + 56) & 0x3000000000) != 0)
          {
            v19 = 0;
            if (*(a1 + 24) >= &_dispatch_root_queues)
            {
              v19 = *(a1 + 24) < &unk_E0A80;
            }

            v20 = !v19;
          }

          v21 = v20;
        }

        v42 = v21 & 1;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      *a2 &= ~0x80uLL;
      *(a2 + 56) = a1;
      v18 = 0;
      if (*a1)
      {
        v18 = *a1;
      }

      (*(v18 + 64))(a1, a3, 2);
    }

    else
    {
      v23 = (*(a1 + 80) - 1) << 41;
      v22 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x60000000000002;
      v25 = *(a1 + 56);
      do
      {
        v33 = v25;
        v32 = a3 << 32;
        if ((v25 & 0x700000000) < v32)
        {
          v33 = v25 & 0xFFFFFFF8FFFFFFFFLL | v32;
          if (v25 & 0x1000000000 | v32 & 0x1000000000)
          {
            v33 |= 0x800000000uLL;
          }
        }

        v24 = v33 | 0x8000000000;
        v17 = 1;
        if ((v25 & 0xFFFFFFFC) == 0)
        {
          v17 = v25 >= 0x20000000000000;
        }

        if (!v17 && ((v25 & 0x2000000000) == 0 || (v25 & 0x4000000001) == 0) && ((v25 & 0x10000000000) != 0 || (v24 + v23) < 0x20000000000000))
        {
          v24 = v33 & 0x7700000001 | v22;
        }

        v10 = v25;
        v11 = v25;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v11, v24, memory_order_release, memory_order_relaxed);
        if (v11 != v10)
        {
          v25 = v11;
        }
      }

      while (v11 != v10);
      if ((v25 & 0x2000000000) != 0 && *(a2 + 48) != -4)
      {
        v16 = *(a2 + 100);
        *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (v16 == _dispatch_thread_getspecific(3)));
      }

      if (((v25 ^ v24) & 0x40000000000000) != 0)
      {
        if ((*(a2 + 106) & 4) != 0 && *(a1 + 104) == a2)
        {
          *(a2 + 106) = *(a2 + 106) & 0xF7 | 8;
          if ((*a2 & 0x80) != 0)
          {
            *(a2 + 56) = a1;
          }

          v38 = *(a2 + 16);
          *(a1 + 104) = v38;
          if (!v38)
          {
            v37 = *(a1 + 48);
            while (a2 == (v37 & 0xFFFFFFFFFFFFFFF8))
            {
              v12 = v37;
              v13 = v37;
              atomic_compare_exchange_strong_explicit((a1 + 48), &v13, 0, memory_order_release, memory_order_relaxed);
              if (v13 != v12)
              {
                v37 = v13;
              }

              if (v13 == v12)
              {
                return;
              }
            }

            v36 = *(a2 + 16);
            if (!v36)
            {
              v36 = _dispatch_wait_for_enqueuer((a2 + 16));
            }

            *(a1 + 104) = v36;
          }
        }

        else
        {
          _dispatch_lane_barrier_complete(a1, a3, 0, v4, v5, v6, v7, v8);
        }
      }

      else if (((v25 ^ v24) & 0x700000000) != 0)
      {
        if ((v24 & 0xFF80000000000000) != 0 || (v24 & 0x4000000000) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = (v24 & 1) != 0 || (v24 & 0x2000000000) == 0 && (v24 & 0xFFFFFFFC) != 0;
        }

        if (v41)
        {
          v34 = (v24 & 0xFF80000000000000) == 0 && (v24 & 0x4000000000) == 0 && ((v24 & 1) != 0 || (v24 & 0xFFFFFFFC) != 0);
          if (!v34)
          {
            _dispatch_abort(5358, v34, v9, v4, v5, v6, v7, v8);
          }

          if ((v24 & 0x2000000000) != 0)
          {
LABEL_76:
            _dispatch_event_loop_poke(a1, v24, 0x80000000, v4, v5, v6, v7, v8);
          }

          else
          {
            _dispatch_queue_wakeup_with_override_slow(a1, v24, 0);
          }
        }
      }
    }
  }
}

void _dispatch_lane_concurrent_push(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  if ((*(a1 + 87) & 8) != 0)
  {
    if (*a2 >= 0x1000uLL)
    {
      v15 = 0;
      if (*a2)
      {
        v15 = *a2;
      }

      v14 = 1;
      if (*(v15 + 16) != 1)
      {
        v13 = 0;
        if (*a2)
        {
          v13 = *a2;
        }

        is_timer = 0;
        if (*(v13 + 16) == 19)
        {
          is_timer = _dispatch_source_is_timer(a2);
        }

        v14 = is_timer;
      }

      v21 = v14 & 1;
    }

    else
    {
      v21 = 1;
    }

    v16 = v21 ^ 1;
  }

  if (v16)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0x3435CLL);
  }

  if (*(a1 + 48))
  {
    goto LABEL_40;
  }

  if (*a2 < 0x1000uLL && (*a2 & 0x81) != 0)
  {
    goto LABEL_40;
  }

  if (*a2 > 0xFFFuLL)
  {
    v11 = 0;
    if (*a2)
    {
      v11 = *a2;
    }

    v22 = (*(v11 + 16) & 0xF0) == 0x10 && (*(a2 + 80) & 0x80000) != 0;
  }

  else
  {
    v22 = (*a2 & 2) != 0;
  }

  if (v22)
  {
    goto LABEL_40;
  }

  for (i = *(a1 + 56); ; i = v9)
  {
    v10 = 1;
    if (!(i >> 53))
    {
      v10 = 1;
      if ((i & 0x8000000000) == 0)
      {
        v10 = BYTE5(i) & 1;
      }
    }

    if (v10)
    {
      v24 = 0;
      goto LABEL_38;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, i + 0x20000000000, memory_order_acquire, memory_order_acquire);
    if (v9 == v8)
    {
      break;
    }
  }

  v24 = 1;
LABEL_38:
  if (v24 != 1)
  {
LABEL_40:
    _dispatch_lane_push(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    _dispatch_continuation_redirect_push(a1, a2, a3);
  }
}

uint64_t _dispatch_continuation_redirect_push(uint64_t a1, void *a2, unsigned int a3)
{
  v10 = a2;
  v6 = 0;
  if (*a2 > 0xFFFuLL)
  {
    v5 = 0;
    if (*a2)
    {
      v5 = *a2;
    }

    v6 = *(v5 + 16) == 256;
  }

  if (v6)
  {
    if (!a2[5])
    {
      a2[5] = (*(a1 + 80) & 0x30000u) << 8;
    }
  }

  else
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

    v10[2] = 0;
    *v11 = &unk_DCC98;
    v11[4] = 0;
    v11[5] = (*(a1 + 80) & 0x30000u) << 8;
    v11[6] = a1;
    v11[7] = v10;
    v11[3] = -1;
    v11[1] = -1;
    _dispatch_retain_2(a1);
    v10 = v11;
  }

  v7 = *(a1 + 24);
  if (!a3)
  {
    a3 = (*(v7 + 21) & 0xF00u) >> 8;
  }

  v4 = 0;
  if (*v7)
  {
    v4 = *v7;
  }

  return (*(v4 + 72))(v7, v10, a3);
}

uint64_t dispatch_async_swift_job(uint64_t *a1, uint64_t *a2, int a3)
{
  v5 = 0;
  if (*a2)
  {
    v5 = *a2;
  }

  v6 = *(v5 + 16);
  if (v6 != 1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Used Swift only SPI to enqueue non-Swift runtime objects into dispatch";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x34AC0);
  }

  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  switch(a3)
  {
    case 5:
      v7 = 1;
      break;
    case 9:
      v7 = 2;
      break;
    case 17:
      v7 = 3;
      break;
    case 21:
      v7 = 4;
      break;
    case 25:
      v7 = 5;
      break;
    case 33:
      v7 = 6;
      break;
    default:
      v7 = 0;
      break;
  }

  return (*(v4 + 72))(a1, a2, v7);
}

uint64_t _dispatch_channel_xref_dispose(uint64_t a1)
{
  if (*(*(a1 + 88) + 24) && (*(a1 + 80) & 0x10000000) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Release of a channel that has not been cancelled, but has a cancel acknowledgement callback";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x34D08);
  }

  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  return (*(v2 + 64))(a1, 0, 2);
}

void _dispatch_channel_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v51 = a2;
  i = a3;
  v49 = 8;
  v48 = _dispatch_channel_invoke2;
  v47 = a1;
  v46[8] = 0;
  *v46 = (a3 & 1) == 0;
  v45 = 0;
  if ((a3 & 3) == 0)
  {
    *(v47 + 16) = -1985229329;
    v44 = _dispatch_thread_getspecific(20);
    v43 = v47;
    v74 = v44;
    v73 = v47;
    v72 = 0;
    v71 = 0;
    v173 = v44;
    v172 = v47;
  }

  i |= v49;
  if ((i & 2) != 0)
  {
    v45 = 0x40020000000001;
  }

  else
  {
    v102 = v47;
    v101 = i;
    v100 = (*(v47 + 80) - 1) << 41;
    v115 = _dispatch_thread_getspecific(3);
    v99 = v115 & 0xFFFFFFFC | 0x20000000000000;
    v97 = 0;
    v96 = 0;
    v95 = 0;
    v98 = 0xFFE00000FFFFFFFCLL;
    if (i)
    {
      v98 |= 0x4000000000uLL;
      v95 = 0;
    }

    else if ((v101 & 0x40000) != 0)
    {
      v95 = 0x4000000000;
    }

    else
    {
      v98 |= 0x4000000000uLL;
      v95 = 1;
    }

    v108 = (v101 & 2) == 0;
    v107 = 1331;
    if ((v101 & 2) != 0)
    {
      _dispatch_abort(v107, v108, v8, v9, v10, v11, v12, v13);
    }

    v112 = _dispatch_thread_getspecific(25);
    v114 = v112 & 0xF00;
    v111 = v114 >> 8;
    v113 = v112 & 0xF000;
    v110 = v113 >> 12;
    v116 = v112 & 0xF0000;
    v109 = (v112 & 0xF0000u) >> 16;
    if (v114 >> 8 > v113 >> 12)
    {
      v38 = v111;
    }

    else
    {
      v38 = v110;
    }

    if (v38 <= v109)
    {
      v36 = v109;
    }

    else
    {
      if (v111 <= v110)
      {
        v37 = v110;
      }

      else
      {
        v37 = v111;
      }

      v36 = v37;
    }

    v94 = v36;
LABEL_22:
    v93 = 0;
    v92 = (v102 + 56);
    v97 = *(v102 + 56);
    do
    {
      v96 = v97;
      if ((v97 & v98) != 0)
      {
        if (!v95)
        {
          break;
        }

        v96 ^= v95;
      }

      else
      {
        v150 = v97;
        v149 = v94;
        v152 = v97;
        v35 = 0;
        if ((v97 & 0x1000000000) != 0)
        {
          v151 = v150 & 0x700000000;
          v35 = v149 < (v150 & 0x700000000) >> 32;
        }

        if (v35)
        {
          v154 = v97;
          v155 = v97 & 0x700000000;
          v153 = (v97 & 0x700000000) >> 32;
          v159 = _dispatch_thread_getspecific(3);
          v158 = v153;
          if (_dispatch_set_qos_class_enabled)
          {
            v161 = v158;
            v160 = 0;
            if (v158)
            {
              v160 = 1 << (v161 + 7);
            }

            _pthread_workqueue_override_start_direct();
          }

          v157 = v153;
          v156 = _dispatch_thread_getspecific(25);
          v162 = v156 & 0xF0000;
          if (v153 > (v156 & 0xF0000) >> 16)
          {
            v156 = v156 & 0xFFF0FFFF | (v157 << 16);
            _dispatch_thread_setspecific(25, v156);
          }

          v94 = v153;
          goto LABEL_22;
        }

        v96 = v96 & 0x7700000001 | v99;
        v104 = v97;
        if ((v97 & 0x10000000000) != 0 || v97 + v100 < 0x20000000000000)
        {
          v96 |= 0x40000000000000uLL;
        }
      }

      v91 = v96;
      v16 = v97;
      v17 = v97;
      atomic_compare_exchange_strong_explicit(v92, &v17, v96, memory_order_acquire, memory_order_acquire);
      if (v17 != v16)
      {
        v97 = v17;
      }

      v90 = v17 == v16;
      v93 = v17 == v16;
    }

    while (v17 != v16);
    v89 = v93;
    v106 = (v97 & v95) == v95;
    v105 = 1364;
    if ((v97 & v95) != v95)
    {
      _dispatch_abort(v105, v106, v14, v15, a5, a6, a7, a8);
    }

    if ((v97 & v98) != 0)
    {
      v103 = 0;
    }

    else
    {
      v96 &= v95 | 0x60000000000000;
      v97 &= 0x3FFE0000000000uLL;
      v103 = v96 - v97;
    }

    v45 = v103;
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
      v78 = *(v47 + 84);
      v77 = _dispatch_thread_getspecific(25);
      v76 = v77;
      if (v77)
      {
        if ((v78 & 0xFFF) != 0)
        {
          v76 &= 0x880F0000;
          if ((v77 & 0xFFF) > (v78 & 0xFFFu))
          {
            v34 = v77 & 0xFFF;
          }

          else
          {
            v34 = v78 & 0xFFF;
          }

          v76 |= v34;
          v80 = v78 & 0xF000;
          v82 = v76 & 0xF00;
          if (v80 >> 12 > v82 >> 8)
          {
            v78 &= 0x4400F000u;
          }

          else
          {
            v78 &= 0x40000000u;
          }

          v76 |= v78;
        }

        else
        {
          if ((v76 & 0xFFF) != 0)
          {
            v76 |= 0x40000000u;
          }

          v79 = v78 & 0xF000;
          v81 = v76 & 0xF00;
          if (v79 >> 12 > v81 >> 8)
          {
            v76 = v76 & 0xFFFF0FFF | v78 & 0x400F000;
          }
        }
      }

      else
      {
        v76 = v78 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v76);
      v42 = v77;
    }

    if ((i & 0x100000) != 0)
    {
      v56 = v52;
      v54 = *(v52 + 80);
      v55 = v54;
      v53 = v54;
      if ((v54 & 0x400000) != 0)
      {
        v68 = v52;
        v67 = 0x400000;
        v65 = -4194305;
        v64 = -4194305;
        v66 = -4194305;
        v60 = -4194305;
        v59 = -4194305;
        v61 = -4194305;
        v58 = atomic_fetch_and_explicit((v52 + 80), 0xFFBFFFFF, memory_order_relaxed);
        v62 = v58;
        v57 = v58;
        v63 = v58 & 0xFFBFFFFF;
      }
    }

    v41 = v47;
    v119 = v47;
    v118 = i;
    v165 = v47;
    v164 = 256;
    v171 = 1;
    v170 = 738;
    v169 = v47;
    v167 = *(v47 + 80);
    v168 = v167;
    v166 = v167;
    v163 = v167 & 0x30000;
    v117 = (v167 & 0x30000) << 8;
    if (v117)
    {
      v118 = v118 & 0xFCFFFFFF | v117;
    }

    for (i = v118; ; i |= 0x10u)
    {
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        _dispatch_last_resort_autorelease_pool_push(v51);
      }

      v40 = v47;
      *&v46[1] = (v48)(v47, v51, i, &v45);
      if ((i & 2) != 0 && (i & 0x1000000) == 0)
      {
        v39 = 0uLL;
        v84 = v47;
        v83 = &v39;
        v88 = &v39;
        _dispatch_thread_getspecific_packed_pair(20, 21, &v39, v19, a5, a6, a7, a8);
        _dispatch_thread_setspecific_pair(20, v84, 21, v83, v20, v21, v22, v23);
        _dispatch_last_resort_autorelease_pool_pop(v51);
        v85 = &v39;
        _dispatch_thread_setspecific_packed_pair(20, 21, &v39, v24, v25, v26, v27, v28);
      }

      v70 = *&v46[1] != 1;
      v69 = 2026;
      if (*&v46[1] == 1)
      {
        _dispatch_abort(v69, v70, v18, v19, a5, a6, a7, a8);
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

      v139 = v47;
      v138 = v45;
      v137 = *&v46[1] == 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v133 = (v47 + 56);
      v136 = *(v47 + 56);
      do
      {
        v135 = (v136 - v138) & 0xFFFFFFF700000001;
        v141 = v136;
        if ((v136 & 0xFF80000000000000) == 0)
        {
          v142 = v136;
          if ((v136 & 0x8000000000) != 0)
          {
            v131 = 0x8000000000;
            v130 = 0x8000000000;
            v132 = 0x8000000000;
            v126 = 0x8000000000;
            v125 = 0x8000000000;
            v127 = 0x8000000000;
            xor_explicit = atomic_fetch_xor_explicit((v139 + 56), 0x8000000000uLL, memory_order_acquire);
            v128 = xor_explicit;
            v123 = xor_explicit;
            v129 = xor_explicit ^ v132;
            v140 = 0;
            goto LABEL_101;
          }

          if (v137)
          {
            v135 &= 0xFFFFFFF8FFFFFFFFLL;
          }

          else
          {
            v135 |= 0x8000000000uLL;
          }
        }

        v122 = v135;
        v29 = v136;
        v30 = v136;
        atomic_compare_exchange_strong_explicit(v133, &v30, v135, memory_order_release, memory_order_relaxed);
        if (v30 != v29)
        {
          v136 = v30;
        }

        v121 = v30 == v29;
        v134 = v30 == v29;
      }

      while (v30 != v29);
      v120 = v134;
      v144 = v136;
      v147 = v136;
      v32 = 0;
      if ((v136 & 0x1000000000) != 0)
      {
        v32 = (v144 & 0x800000000) != 0;
      }

      if (v32)
      {
        v143 = v136 & 0x700000000;
        v146 = (v136 & 0x700000000uLL) >> 32;
        v145 = _dispatch_thread_getspecific(25);
        v148 = v145 & 0xF0000;
        if (v146 > (v145 & 0xF0000) >> 16)
        {
          v145 &= 0xFFF0FFFF;
          v145 |= v146 << 16;
          _dispatch_thread_setspecific(25, v145);
        }
      }

      v140 = 1;
LABEL_101:
      if (v140)
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
      v87 = v42;
      v86 = _dispatch_thread_getspecific(25);
      v87 &= 0xFFF0FFFF;
      v87 |= v86 & 0xF0000;
      _dispatch_thread_setspecific(25, v87);
    }
  }

  if (v46[0])
  {
    v75 = v47;
    v174 = v47;
    v179 = 772079660;
    v178 = v47;
    v177 = 0;
    v176 = 0;
    v175 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v180 = v75;
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

uint64_t _dispatch_channel_invoke2(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a1[11];
  v22 = a1;
  v23 = 0;
  v24 = a2;
  v25 = a3 & 0xFFFDFFFF;
  v26 = 0;
  v27 = 0uLL;
  v75 = a1;
  v74 = &v22 + 8;
  v77 = &v22 + 8;
  _dispatch_thread_getspecific_packed_pair(20, 21, (&v22 + 8), a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v75, 21, v74, v8, v9, v10, v11);
  if (_dispatch_channel_invoke_cancel_check(v32, &v22, v28))
  {
    do
    {
      v21 = v27;
      if (!v27)
      {
        if (!v32[6])
        {
          break;
        }

        v41 = v32;
        v40 = v32 + 13;
        v39 = 0;
        v37 = v32[13];
        v38 = v37;
        v36 = v37;
        v39 = v37;
        if (!v37)
        {
          v39 = _dispatch_wait_for_enqueuer(v40);
        }

        v35 = v39;
        v21 = v39;
      }

      v78 = v21;
      v80 = v21;
      if (*v21 >= 0x1000uLL)
      {
        v79 = 0;
      }

      else
      {
        v79 = *v78 & 1;
      }

      if (v79)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: sync waiter found on channel";
        __break(1u);
        JUMPOUT(0x3634CLL);
      }

      v33 = v21;
      v73 = v21;
      if (*v21 < 0x1000uLL && (*v33 & 0x400) != 0)
      {
        *&v27 = v21;
        BYTE8(v27) = 0;
        v20 = 0;
        if ((v25 & 0x1000000) != 0)
        {
          v20 = _dispatch_autorelease_pool_push();
        }

        if ((*(v28 + 16))(v32, &v22, v32[4]))
        {
          if ((BYTE8(v27) & 1) == 0)
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Channel didn't call dispatch_channel_drain";
            __break(1u);
            JUMPOUT(0x36434);
          }
        }

        else
        {
          v26 = -1;
        }

        if (v20)
        {
          _dispatch_autorelease_pool_pop(v20);
        }
      }

      else
      {
        v71 = v32;
        v70 = v21;
        v69 = v21;
        v68 = 0;
        v67 = 0;
        v66 = 0;
        v64 = v21[2];
        v65 = v64;
        v63 = v64;
        v68 = v64;
        v62 = v64;
        v61 = v64;
        v32[13] = v64;
        v60 = v62;
        if (!v68)
        {
          v57 = 0;
          v58 = 0;
          v59 = v71 + 6;
          v56 = 0;
          v55 = (v71 + 6);
          v66 = v71[6];
          while (1)
          {
            v72 = v66;
            if (v69 != (v66 & 0xFFFFFFFFFFFFFFF8))
            {
              break;
            }

            v67 = 0;
            v45 = 0;
            v17 = v66;
            v18 = v66;
            atomic_compare_exchange_strong_explicit(v55, &v18, 0, memory_order_release, memory_order_relaxed);
            if (v18 != v17)
            {
              v66 = v18;
            }

            v44 = v18 == v17;
            v56 = v18 == v17;
            if (v18 == v17)
            {
              goto LABEL_35;
            }
          }

          v54 = v69;
          v53 = 0;
          v51 = v69[2];
          v52 = v51;
          v50 = v51;
          v53 = v51;
          if (!v51)
          {
            v53 = _dispatch_wait_for_enqueuer(v54 + 2);
          }

          v49 = v53;
          v68 = v53;
          v48 = v53;
          v47 = v53;
          v71[13] = v53;
          v46 = v48;
LABEL_35:
          v43 = v56;
        }

        v42 = v68;
        *&v27 = v68;
        _dispatch_continuation_pop_inline(v21, v31, v30, v32);
        if ((_dispatch_channel_invoke_checks(v32, &v22, v28) & 1) == 0)
        {
          break;
        }
      }
    }

    while (!v26);
  }

  v76 = &v22 + 8;
  _dispatch_thread_setspecific_packed_pair(20, 21, (&v22 + 8), v12, v13, v14, v15, v16);
  return v26;
}

uint64_t dispatch_channel_foreach_work_item_peek_f(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  if (*(result + 56))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Called peek after drain";
    __break(1u);
    JUMPOUT(0x36768);
  }

  v5 = *result;
  for (i = *(result + 48); *i < 0x1000uLL && (*i & 0x400) != 0; i = v3)
  {
    result = a3(a2, i[5]);
    if ((result & 1) == 0 || i == *(v5 + 48))
    {
      break;
    }

    v3 = i[2];
    if (!v3)
    {
      result = _dispatch_wait_for_enqueuer(i + 2);
      v3 = result;
    }
  }

  return result;
}

void dispatch_channel_drain_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a1;
  v61 = a2;
  v60 = a3;
  v59 = *a1;
  v58 = *(v59 + 88);
  v57 = 0;
  v56 = 1028;
  v55 = 0;
  if (*(a1 + 56))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Called drain twice in the same invoke";
    __break(1u);
    JUMPOUT(0x36934);
  }

  *(v62 + 56) = 1;
  do
  {
    v57 = *(v62 + 48);
    if (!v57)
    {
      if (!*(v59 + 48))
      {
        break;
      }

      v114 = v59;
      v113 = (v59 + 104);
      v112 = 0;
      v110 = *(v59 + 104);
      v111 = v110;
      v109 = v110;
      v112 = v110;
      if (!v110)
      {
        v112 = _dispatch_wait_for_enqueuer(v113);
      }

      v108 = v112;
      v57 = v112;
    }

    v106 = v57;
    v181 = v57;
    if (*v57 >= 0x1000uLL || (*v106 & 0x400) == 0)
    {
      break;
    }

    v144 = v59;
    v143 = v57;
    v142 = v57;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v137 = v57[2];
    v138 = v137;
    v136 = v137;
    v141 = v137;
    v135 = v137;
    v134 = v137;
    *(v59 + 104) = v137;
    v133 = v135;
    if (!v141)
    {
      v130 = 0;
      v131 = 0;
      v132 = v144 + 48;
      v129 = 0;
      v128 = (v144 + 48);
      v139 = *(v144 + 48);
      while (1)
      {
        v180 = v139;
        if (v142 != (v139 & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v140 = 0;
        v118 = 0;
        v8 = v139;
        v9 = v139;
        atomic_compare_exchange_strong_explicit(v128, &v9, 0, memory_order_release, memory_order_relaxed);
        if (v9 != v8)
        {
          v139 = v9;
        }

        v117 = v9 == v8;
        v129 = v9 == v8;
        if (v9 == v8)
        {
          goto LABEL_22;
        }
      }

      v127 = v142;
      v126 = 0;
      v124 = v142[2];
      v125 = v124;
      v123 = v124;
      v126 = v124;
      if (!v124)
      {
        v126 = _dispatch_wait_for_enqueuer(v127 + 2);
      }

      v122 = v126;
      v141 = v126;
      v121 = v126;
      v120 = v126;
      *(v144 + 104) = v126;
      v119 = v121;
LABEL_22:
      v116 = v129;
    }

    v115 = v141;
    *(v62 + 48) = v141;
    v102 = v57;
    v103 = v57;
    v53 = v57;
    v51 = v56;
    v148 = v57;
    v147 = v56;
    v146 = v57[3];
    v145 = v56 & 4;
    v170 = 1;
    v169 = 600;
    if ((v56 & 4) != 0)
    {
      v148[3] = -1;
    }

    if (v146 != -1)
    {
      v163 = 771817480;
      v162 = v146;
      v161 = v148;
      if (v146)
      {
        v46 = v162[8];
      }

      else
      {
        v46 = 0;
      }

      v160 = v46;
      v168 = v163;
      v167 = v46;
      v166 = v161;
      v165 = 0;
      v164 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", v10, v11, v12, v13, v14, v15, v16, 607);
    }

    v152 = v148[1];
    v151 = v146;
    v150 = v145 | 2;
    v149 = 0;
    if (v152 != -1)
    {
      v205 = v152;
      v204 = v150;
      v203 = _dispatch_thread_getspecific(25);
      v211 = v203;
      v212 = v203 & 0xF00;
      v210 = v212 >> 8;
      v209 = v203;
      if (v212 >> 8)
      {
        v209 |= 1 << (v210 + 7);
      }

      v202 = v209;
      v213 = v209;
      v201 = v209 & 0xFFFFFF00;
      LOBYTE(v45) = 1;
      if ((v204 & 1) == 0)
      {
        v45 = (BYTE3(v205) >> 4) & 1;
      }

      v200 = v45;
      v207 = v205;
      v205 &= 0xFFFFFFuLL;
      if (v205)
      {
        if (v205 >= v201)
        {
          if ((v200 & 1) != 0 || (v203 & 0x44000000) != 0)
          {
            v206 = v205;
          }

          else
          {
            v206 = v202;
          }
        }

        else
        {
          v206 = v202;
        }
      }

      else
      {
        v208 = v203 & 0xF000;
        v199 = v208 >> 12;
        if (v208 >> 12)
        {
          v215 = v199;
          v214 = 1 << (v199 + 7);
          v44 = v214 | 0xFF;
        }

        else
        {
          v44 = v202;
        }

        v206 = v44;
      }

      v149 = v206;
    }

    v156 = v149;
    v155 = v151;
    v154 = v150;
    v185 = v149;
    v198 = v149 != -1;
    v197 = 2409;
    if (v149 == -1)
    {
      _dispatch_abort(v197, v198, a3, a4, a5, a6, a7, a8);
    }

    if (_dispatch_set_qos_class_enabled)
    {
      v196 = v185;
      v195 = 4261412863;
      v194 = 0;
      v185 &= 0xFFFFFFFF02FFFFFFLL;
      v187 = _dispatch_thread_getspecific(4);
      v184 = v187;
      v183 = 0x1000000;
      v182 = 2281701376;
      if ((v187 & 0x1000000) != 0)
      {
        if (v185)
        {
          v43 = v185;
        }

        else
        {
          v193 = v184;
          v192 = v183;
          v191 = 0;
          v43 = v184 & (~v183 | 0xFFFFFF);
        }

        v186 = v43;
      }

      else
      {
        v190 = v184;
        v189 = v182;
        v188 = 0;
        v184 &= ~v182 | 0xFFFFFF;
        if (v185 == v184)
        {
          v186 = 0;
        }

        else
        {
          v186 = v185;
        }
      }
    }

    else
    {
      v186 = 0;
    }

    v156 = v186;
    if (v186)
    {
      goto LABEL_74;
    }

    if (v155 != -1)
    {
      v42 = v155;
      if (v42 == _dispatch_thread_getspecific(28))
      {
        v153 = (v154 & 4) != 0;
        if ((v154 & 2) != 0)
        {
          if (v153 && v155)
          {
            object = v155;
            os_release(v155);
          }

          v155 = -1;
        }

        else if (!v153 && v155)
        {
          v159 = v155;
          os_retain(v155);
        }

        v157 = v155;
        goto LABEL_75;
      }

LABEL_74:
      v157 = _dispatch_set_priority_and_voucher_slow(v156, v155, v154);
      goto LABEL_75;
    }

    v157 = -1;
LABEL_75:
    if ((v51 & 0x200) == 0)
    {
      v100 = v57;
      v101 = v57;
      v174 = v59;
      v173 = v57;
      v172 = 0;
      v171 = 0;
      v230 = v59;
      v229 = v57;
    }

    if ((v51 & 4) != 0)
    {
      v177 = v53;
      v176 = _dispatch_thread_getspecific(22);
      if (v176)
      {
        v41 = *(v176 + 8) + 1;
      }

      else
      {
        v41 = 1;
      }

      v175 = v41;
      if (v41 <= _dispatch_continuation_cache_limit)
      {
        *(v177 + 16) = v176;
        *(v177 + 8) = v175;
        _dispatch_thread_setspecific(22, v177);
        v178 = 0;
      }

      else
      {
        v178 = v177;
      }

      v52 = v178;
    }

    else
    {
      v52 = 0;
    }

    v50 = 0;
    if (*(v62 + 35))
    {
      v50 = _dispatch_autorelease_pool_push();
    }

    v98 = v57;
    v99 = v57;
    v54 = v60(v61, v57[5], &v55) ^ 1;
    if (v50)
    {
      _dispatch_autorelease_pool_pop(v50);
    }

    if ((v51 & 0x200) == 0)
    {
      v179 = v53;
      v231 = v53;
      v236 = 772079660;
      v235 = v53;
      v234 = 0;
      v233 = 0;
      v232 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v237 = v179;
    }

    if (v52)
    {
      _dispatch_continuation_free_to_cache_limit(v52);
    }
  }

  while ((v54 & 1) == 0 && (_dispatch_channel_invoke_checks(v59, v62, v58) & 1) != 0);
  if (v55)
  {
    v88 = _dispatch_thread_getspecific(22);
    if (v88)
    {
      _dispatch_thread_setspecific(22, *(v88 + 16));
    }

    v86 = v88;
    if (v88)
    {
      v87 = v86;
    }

    else
    {
      v87 = _dispatch_continuation_alloc_from_heap();
    }

    v49 = v87;
    v69 = v59;
    v68 = v87;
    v67 = v55;
    v66 = 0;
    v65 = 0;
    v64 = v56;
    v63 = 0;
    *v87 = v56 | 0x100;
    v68[4] = v66;
    v68[5] = v67;
    if ((v65 & 0x40000000) == 0)
    {
      v217 = 0;
      v216 = 1;
      v219 = _dispatch_thread_getspecific(4);
      v220 = v219;
      v217 = v219 & 0xFFFFFF;
      if ((v216 & 2) != 0 || (v224 = 5, v223 = 4096, v217 <= 0x10FF))
      {
        v218 = v217;
      }

      else
      {
        v222 = 5;
        v221 = 4096;
        v218 = 4351;
      }

      v63 = v218;
    }

    v81 = v68;
    v80 = v65;
    v79 = 0;
    v105 = v65 >= 0;
    v104 = 583;
    if (v65 < 0)
    {
      _dispatch_abort(v104, v105, v17, v18, v19, v20, v21, v22);
    }

    if ((v80 & 0x40) == 0)
    {
      v227 = _dispatch_thread_getspecific(28);
      if (v227)
      {
        v228 = v227;
        os_retain(v227);
      }

      v79 = v227;
    }

    v81[3] = v79;
    _dispatch_thread_getspecific(0);
    v38 = v81[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v23, v24, v25, v26, v27, v28, v29, 589);
    v30 = v81[3];
    v85 = 771817476;
    v84 = v30;
    v83 = v81;
    if (v30 != -1)
    {
      v40 = v84 ? *(v84 + 32) : 0;
      v82 = v40;
      v93 = v85;
      v92 = v40;
      v91 = v83;
      v90 = 0;
      v89 = 0;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v78 = v69;
    v77 = v68;
    v76 = v63;
    v75 = v65;
    v74 = 0;
    v73 = v69;
    if (v63)
    {
      v72 = (v75 & 0x20) != 0;
      v71 = (*(v73 + 84) & 0x40000000) != 0;
      v70 = (*(v73 + 84) & 0xFFF) != 0;
      if ((v75 & 0x20) != 0)
      {
        v76 |= 0x10000000uLL;
        v225 = v76 >> 8;
        v31 = v76 >> 8;
        v32 = __clz(__rbit32(v31));
        if (v31)
        {
          v33 = v32 + 1;
        }

        else
        {
          v33 = 0;
        }

        v74 = v33;
      }

      else if (v71 || !v70)
      {
        v226 = v76 >> 8;
        v34 = v76 >> 8;
        v35 = __clz(__rbit32(v34));
        if (v34)
        {
          v36 = v35 + 1;
        }

        else
        {
          v36 = 0;
        }

        v74 = v36;
      }

      else
      {
        v76 = 0;
      }
    }

    v77[1] = v76;
    v96 = v49;
    v97 = v49;
    v48 = *(v62 + 48);
    *(v49 + 16) = v48;
    v39 = 0;
    if (!v48)
    {
      v37 = 0;
      atomic_compare_exchange_strong_explicit((v59 + 48), &v37, v49, memory_order_release, memory_order_relaxed);
      v39 = v37 != 0;
    }

    if (v39)
    {
      v47 = *(v59 + 104);
      if (!v47)
      {
        v47 = _dispatch_wait_for_enqueuer((v59 + 104));
      }

      *(v49 + 16) = v47;
    }

    *(v59 + 104) = v49;
    v94 = v49;
    v95 = v49;
    *(v62 + 48) = v49;
  }
}

uint64_t _dispatch_channel_invoke_checks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_dispatch_channel_invoke_cancel_check(a1, a2, a3))
  {
    if (_dispatch_thread_getspecific(5))
    {
      _dispatch_return_to_kernel();
    }

    if ((*(a2 + 32) & 0x100000) != 0 && (v7 = _dispatch_thread_getspecific(27), ((*(v7 + 60) << 32) & 0x700000000) >> 32 > *(v7 + 100)))
    {
      *(a2 + 40) = *(a1 + 24);
      v6 = 0;
    }

    else
    {
      v8 = *(a2 + 24);
      if (_dispatch_thread_getspecific(120))
      {
        *(a2 + 40) = *(a1 + 24);
        v6 = 0;
      }

      else if ((*(a1 + 56) & 0xFF80000000000000) != 0)
      {
        *(a2 + 40) = *(a1 + 24);
        v6 = 0;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t dispatch_channel_foreach_work_item_peek(uint64_t a1, uint64_t a2)
{
  v4 = _Block_get_invoke_fn(a2);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  v3 = 0;
  if (v5)
  {
    v3 = v5;
  }

  return dispatch_channel_foreach_work_item_peek_f(a1, a2, v3);
}

void dispatch_channel_drain(uint64_t a1, uint64_t a2)
{
  v8 = _Block_get_invoke_fn(a2);
  v9 = 0;
  if (v8)
  {
    v9 = v8;
  }

  v7 = 0;
  if (v9)
  {
    v7 = v9;
  }

  dispatch_channel_drain_f(a1, a2, v7, v2, v3, v4, v5, v6);
}

void _dispatch_channel_wakeup(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v8 = 0;
  if ((*(*(a1 + 88) + 8))(a1, *(a1 + 32)))
  {
    if (*(a1 + 48))
    {
      _dispatch_queue_wakeup(a1, a2, a3, 1, v3, v4, v5, v6);
    }

    else
    {
      if ((*(a1 + 80) & 0x10000000) != 0)
      {
        v8 = (*(a1 + 116) & 8) == 0;
      }

      _dispatch_queue_wakeup(a1, a2, a3, v8, v3, v4, v5, v6);
    }
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, -1, v3, v4, v5, v6);
  }
}

uint64_t *dispatch_channel_create(const char *a1, uint64_t (***a2)(), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v16 = 0x4000000;
  if (!*a4)
  {
    v8 = *a4;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unsupported callbacks version";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0x3855CLL);
  }

  if (a1)
  {
    v15 = _dispatch_strdup_if_mutable(a1);
    if (v15 != v20)
    {
      v16 = 69206016;
      v20 = v15;
    }
  }

  if (a2)
  {
    _dispatch_retain(a2);
  }

  else
  {
    a2 = &off_E0680;
  }

  v14 = _dispatch_object_alloc(_OS_dispatch_channel_vtable, 0x78uLL, a3, a4, a5, a6, a7, a8);
  _dispatch_queue_init(v14, v16, 1, 0x180000000000000, v9, v10, v11, v12);
  v14[9] = v20;
  v14[3] = a2;
  v14[11] = a4;
  v14[4] = a3;
  if (!a4[3])
  {
    *(v14 + 58) |= 8u;
    --*(v14 + 2);
  }

  return v14;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _dispatch_queue_init(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 0xFE7FFFCFFFFFFFFFLL) != 0)
  {
    _dispatch_abort(1231, (a4 & 0xFE7FFFCFFFFFFFFFLL) == 0, a3, a4, a5, a6, a7, a8);
  }

  if ((a4 & 0x180000000000000) != 0)
  {
    *(a1 + 2) += 2;
    v8 = 0;
    if (*a1)
    {
      v8 = *a1;
    }

    if (*(v8 + 16) == 19)
    {
      ++*(a1 + 2);
    }
  }

  a1[2] = -1985229329;
  *(a1 + 20) = a2 | a3;
  a1[7] = ((4096 - a3) << 41) | a4;
  a1[8] = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
}

uint64_t dispatch_channel_enqueue(uint64_t a1, uint64_t a2)
{
  v18 = _dispatch_thread_getspecific(22);
  if (!v18)
  {
    return _dispatch_channel_enqueue_slow(a1, a2);
  }

  _dispatch_thread_setspecific(22, v18[2]);
  *v18 = 1284;
  v18[4] = 0;
  v18[5] = a2;
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
  v13 = v18[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v3, v4, v5, v6, v7, v8, v9, 589);
  v21 = v18[3];
  if (v21 != -1)
  {
    if (v21)
    {
      v15 = *(v21 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v20 = v24;
  v19 = 0;
  if (v24)
  {
    if ((*(a1 + 84) & 0x40000000) != 0 || (*(a1 + 84) & 0xFFF) == 0)
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

      v19 = v12;
    }

    else
    {
      v20 = 0;
    }
  }

  v18[1] = v20;
  v22 = *v18;
  v14 = 0;
  if (*a1)
  {
    v14 = *a1;
  }

  return (*(v14 + 72))(a1, v18, v19);
}

uint64_t _dispatch_channel_enqueue_slow(uint64_t *a1, uint64_t a2)
{
  v16 = _dispatch_continuation_alloc_from_heap();
  *v16 = 1284;
  v16[4] = 0;
  v16[5] = a2;
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
  v13 = v16[3];
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v2, v3, v4, v5, v6, v7, v8, 589);
  v21 = v16[3];
  if (v21 != -1)
  {
    if (v21)
    {
      v15 = *(v21 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v20 = v24;
  v19 = 0;
  if (v24)
  {
    if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
    {
      v9 = v24 >> 8;
      v10 = __clz(__rbit32(v9));
      if (v9)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = 0;
      }

      v19 = v11;
    }

    else
    {
      v20 = 0;
    }
  }

  v16[1] = v20;
  v22 = *v16;
  v14 = 0;
  if (*a1)
  {
    v14 = *a1;
  }

  return (*(v14 + 72))(a1, v16, v19);
}

uint64_t dispatch_channel_wakeup(uint64_t *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v4 = 1;
      break;
    case 9:
      v4 = 2;
      break;
    case 17:
      v4 = 3;
      break;
    case 21:
      v4 = 4;
      break;
    case 25:
      v4 = 5;
      break;
    case 33:
      v4 = 6;
      break;
    default:
      v4 = 0;
      break;
  }

  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  return (*(v3 + 64))(a1, v4, 2);
}

void _dispatch_mgr_queue_push(uint64_t a1, void *a2)
{
  if (*a2 < 0x1000uLL && (*a2 & 0x81) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Waiter pushed onto manager";
    __break(1u);
    JUMPOUT(0x39528);
  }

  a2[2] = 0;
  _dispatch_thread_setspecific(122, a1 + 48);
  v11 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v11)
  {
    *(v11 + 16) = a2;
  }

  else
  {
    *(a1 + 104) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v11)
  {
    v7 = atomic_fetch_or_explicit((a1 + 56), 0x8000000000uLL, memory_order_release);
    if (((v7 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
    {
      _dispatch_event_loop_poke(-8, 0, 0, v2, v3, v4, v5, v6);
    }
  }
}

void _dispatch_mgr_thread()
{
  if (_dispatch_kevent_workqueue_enabled)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Manager queue invoked with kevent workqueue enabled";
    __break(1u);
    JUMPOUT(0x39800);
  }

  _dispatch_thread_setspecific(20, &_dispatch_mgr_q);
  _dispatch_mgr_priority_init();
  v4 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL | 0x40020000000000;
  for (i = qword_E0138; ; i = v1)
  {
    v3 = 1;
    if (!(i >> 53))
    {
      v3 = (i & 0xFFFFFFFC) != 0;
    }

    if (v3)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
      qword_E42C0 = i;
      __break(1u);
      JUMPOUT(0x39924);
    }

    v0 = i;
    v1 = i;
    atomic_compare_exchange_strong_explicit(&qword_E0138, &v1, i & 0x7700000001 | v4, memory_order_acquire, memory_order_acquire);
    if (v1 == v0)
    {
      v2 = pthread_self();
      pthread_get_stackaddr_np(v2);
      __memset_chk();
      _dispatch_mgr_invoke();
    }
  }
}

void _dispatch_mgr_priority_init()
{
  v11 = off_E00A0;
  __attr = off_E00A0;
  v9 = 0;
  v8 = pthread_attr_getschedparam(off_E00A0, &v9);
  v13 = v8;
  v12 = 6319;
  if (v8)
  {
    _dispatch_bug(v12, v13, v0, v1, v2, v3, v4, v5);
  }

  __qos_class[1] = v8;
  __qos_class[0] = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(__attr, __qos_class, 0);
  if (dword_E467C > __qos_class[0] && (_dispatch_set_qos_class_enabled & 1) != 0)
  {
    pthread_set_qos_class_self_np(dword_E467C, 0);
    v6 = _dispatch_mgr_sched_qos2prio(dword_E467C);
    if (v6 > v9.sched_priority)
    {
      v9.sched_priority = v6;
    }
  }

  if (_dispatch_mgr_sched > v9.sched_priority)
  {
    _dispatch_mgr_priority_apply();
  }
}

void _dispatch_mgr_invoke()
{
  v20 = 0uLL;
  v21 = 0;
  v22 = -4;
  v23 = 0;
  v24 = &v26;
  v25 = 0x100000;
  v35 = _dispatch_thread_getspecific(29);
  v19 = 1;
  if (v35)
  {
    v19 = v35 & 1;
  }

  v37 = v19 & 1;
  v36 = 475;
  if ((v19 & 1) == 0)
  {
    _dispatch_abort(v36, v37, v0, v1, v2, v3, v4, v5);
  }

  if ((v35 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v32 = _dispatch_thread_getspecific(29);
    v18 = 1;
    if (v32)
    {
      v18 = v32 & 1;
    }

    v34 = v18 & 1;
    v33 = 475;
    if ((v18 & 1) == 0)
    {
      _dispatch_abort(v33, v34, v6, v7, v8, v9, v10, v11);
    }

    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected contents in DDI TSD";
    qword_E42C0 = v32 & 0xFFFFFFFFFFFFFFFELL;
    __break(1u);
    JUMPOUT(0x39D48);
  }

  v38 = &v20;
  v40 = (&v20 & 1) == 0;
  v39 = 443;
  if (&v20)
  {
    _dispatch_abort(v39, v40, v0, v1, v2, v3, v4, v5);
  }

  _dispatch_thread_setspecific(29, v38);
  while (1)
  {
    _dispatch_mgr_queue_drain();
    if (byte_E4436)
    {
      _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u, v12, v13, v14, v15, v16, v17);
    }

    v31 = &_dispatch_mgr_q;
    v28 = qword_E0130;
    v29 = qword_E0130;
    v27 = qword_E0130;
    v30 = qword_E0130;
    _dispatch_event_loop_drain(qword_E0130 != 0);
  }
}

void _dispatch_kevent_workqueue_init()
{
  if (_dispatch_root_queues_pred != -1)
  {
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  if (_dispatch_kevent_workqueue_enabled)
  {
    if (_dispatch_mgr_sched_pred != -1)
    {
      dispatch_once_f(&_dispatch_mgr_sched_pred, 0, _dispatch_mgr_sched_init);
    }

    v8 = _dispatch_mgr_sched;
    v7 = 0;
    if (dword_E467C)
    {
      v7 = _pthread_qos_class_encode();
    }

    if (v8 > dword_E4680)
    {
      v7 = v8 | 0x20000000;
    }

    if (v7)
    {
      v6 = _pthread_workqueue_set_event_manager_priority();
      if (v6)
      {
        _dispatch_bug(6573, v6, v0, v1, v2, v3, v4, v5);
      }
    }
  }
}

uint64_t _dispatch_mgr_sched_init(uint64_t a1)
{
  v26 = a1;
  v25 = 0;
  v24 = off_E00A0;
  v23 = pthread_attr_init(off_E00A0);
  v32 = v23;
  v31 = 6222;
  if (v23)
  {
    _dispatch_bug(v31, v32, v1, v2, v3, v4, v5, v6);
  }

  v22 = pthread_attr_getschedpolicy(v24, &dword_E4684);
  v30 = v22;
  v29 = 6224;
  if (v22)
  {
    _dispatch_bug(v29, v30, v7, v8, v9, v10, v11, v12);
  }

  v21 = pthread_attr_getschedparam(v24, &v25);
  v28 = v21;
  v27 = 6225;
  if (v21)
  {
    _dispatch_bug(v27, v28, v13, v14, v15, v16, v17, v18);
  }

  result = qos_class_main();
  v20 = result;
  if (result == 21)
  {
    v20 = 25;
  }

  if (v20)
  {
    dword_E467C = v20;
    result = _dispatch_mgr_sched_qos2prio(v20);
    v25.sched_priority = result;
  }

  dword_E4680 = v25.sched_priority;
  _dispatch_mgr_sched = v25.sched_priority;
  return result;
}

void _dispatch_root_queue_poke(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    v11 = 0;
    if (*a1)
    {
      v11 = *a1;
    }

    v10 = 1;
    if (v11[2] != (&loc_50310 + 1))
    {
      v9 = 0;
      if (*a1)
      {
        v9 = *a1;
      }

      v10 = v9[2] == (&loc_50910 + 1);
    }

    if (!v10 || (v8 = 0, atomic_compare_exchange_strong_explicit((a1 + 112), &v8, a2, memory_order_release, memory_order_relaxed), !v8))
    {
      _dispatch_root_queue_poke_slow(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

void _dispatch_root_queue_poke_slow(uint64_t (***a1)(), signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = a1;
  v84 = a2;
  v83 = a3;
  v82 = a2;
  v81 = 78;
  v97 = &_dispatch_root_queues_pred;
  v96 = 0;
  v95 = _dispatch_root_queues_init_once;
  if (_dispatch_root_queues_pred != -1)
  {
    dispatch_once_f(v97, v96, v95);
  }

  v94 = 3;
  v93 = v85;
  v92 = v84;
  v32 = 0;
  if (*v85)
  {
    v32 = *v85;
  }

  if (v32[2] == (&loc_50310 + 1))
  {
    v106 = *(v85 + 21);
    v105 = 0;
    v104 = 0;
    if ((v106 & 0x4000000) != 0)
    {
      v104 = v106 & 0x8E000000 | 0xFFLL;
      v105 = (v106 & 0xF000) >> 12;
      v109 = v105 != 0;
      v108 = 523;
      if (!v105)
      {
        _dispatch_abort(v108, v109, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      v104 = v106 & 0x8E0000FF;
      v105 = (v106 & 0xF00) >> 8;
      if (!v105)
      {
        v107 = v104;
LABEL_13:
        v80 = _pthread_workqueue_addthreads();
        v91 = v80;
        v90 = 6912;
        if (v80)
        {
          _dispatch_bug(v90, v91, v8, v9, v10, v11, v12, v13);
        }

        v79 = v80;
        return;
      }
    }

    v107 = v104 | (1 << (v105 + 7));
    goto LABEL_13;
  }

  v31 = 0;
  if (*v85)
  {
    v31 = *v85;
  }

  if (v31[2] == (&loc_50910 + 1))
  {
    v100 = *(v85 + 21);
    v99 = 0;
    v98 = 0;
    if ((v100 & 0x4000000) != 0)
    {
      v98 = v100 & 0x8E000000 | 0xFFLL;
      v99 = (v100 & 0xF000) >> 12;
      v103 = v99 != 0;
      v102 = 523;
      if (!v99)
      {
        _dispatch_abort(v102, v103, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      v98 = v100 & 0x8E0000FF;
      v99 = (v100 & 0xF00) >> 8;
      if (!v99)
      {
        v101 = v98;
LABEL_26:
        v78 = _pthread_workqueue_add_cooperativethreads();
        v89 = v78;
        v88 = 6920;
        if (v78)
        {
          _dispatch_bug(v88, v89, v14, v15, v16, v17, v18, v19);
        }

        v77 = v78;
        return;
      }
    }

    v101 = v98 | (1 << (v99 + 7));
    goto LABEL_26;
  }

  v76 = v85[4];
  v30 = 0;
  if (v76[9])
  {
    v30 = v76[9];
  }

  if (v30)
  {
    while (dispatch_semaphore_signal((v76 + 9)))
    {
      if (!--v82)
      {
        return;
      }
    }
  }

  if (*(v85 + 21) < 0)
  {
    v73 = v82;
    v72 = v82;
    v74 = v82;
    v68 = v82;
    v67 = v82;
    v69 = v82;
    add_explicit = atomic_fetch_add_explicit((v85 + 14), v82, memory_order_relaxed);
    v70 = add_explicit;
    v65 = add_explicit;
    v71 = add_explicit + v82;
  }

  else
  {
    v64 = 0;
    v63 = 0;
    v61 = v82;
    v60 = v82;
    v62 = v82;
    v20 = 0;
    atomic_compare_exchange_strong_explicit((v85 + 14), &v20, v82, memory_order_relaxed, memory_order_relaxed);
    if (v20)
    {
      v64 = v20;
    }

    v59 = v20 == 0;
    v63 = v20 == 0;
    v58 = v63;
    if (v20)
    {
      return;
    }
  }

  v57 = 0;
  v56 = 0;
  v54 = *(v85 + 25);
  v55 = v54;
  v53 = v54;
  v56 = v54;
  while (1)
  {
    if (v56 >= v83)
    {
      v29 = v56 - v83;
    }

    else
    {
      v29 = 0;
    }

    v57 = v29;
    if (v82 > v29)
    {
      v51 = v82 - v57;
      v50 = v82 - v57;
      v52 = v82 - v57;
      v46 = v82 - v57;
      v45 = v82 - v57;
      v47 = v82 - v57;
      v44 = atomic_fetch_add_explicit((v85 + 14), v57 - v82, memory_order_relaxed);
      v48 = v44;
      v43 = v44;
      v49 = v44 - (v82 - v57);
      v82 = v57;
    }

    if (!v82)
    {
      break;
    }

    v42 = v56;
    v41 = 0;
    v39 = v56 - v82;
    v38 = v56 - v82;
    v40 = v56 - v82;
    v21 = v56;
    v22 = v56;
    atomic_compare_exchange_strong_explicit((v85 + 100), &v22, v56 - v82, memory_order_acquire, memory_order_acquire);
    if (v22 != v21)
    {
      v42 = v22;
    }

    v37 = v22 == v56;
    v41 = v22 == v56;
    v56 = v42;
    v36 = v22 == v21;
    if (v22 == v21)
    {
      v35 = v76;
      v34 = 0;
      v33 = &v34;
      if (v85 == &_dispatch_mgr_root_queue)
      {
        v33 = _dispatch_mgr_root_queue_init();
      }

      do
      {
        _dispatch_retain(v85);
        while (1)
        {
          v81 = pthread_create(v33, v35, _dispatch_worker_thread, v85);
          if (!v81)
          {
            break;
          }

          if (v81 != 35)
          {
            v87 = v81;
            v86 = 6979;
            _dispatch_bug(6979, v81, v23, v24, v25, v26, v27, v28);
          }

          _dispatch_temporary_resource_shortage();
        }

        --v82;
      }

      while (v82);
      return;
    }
  }
}

void _dispatch_root_queue_poke_and_wakeup(uint64_t a1, signed int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  if (*a1)
  {
    v13 = *a1;
  }

  v12 = 1;
  if (v13[2] != (&loc_50310 + 1))
  {
    v11 = 0;
    if (*a1)
    {
      v11 = *a1;
    }

    v12 = v11[2] == (&loc_50910 + 1);
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = *(a1 + 112);
  do
  {
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      v10 = a2;
    }

    v8 = v14;
    v9 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 112), &v9, v10, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v14 = v9;
    }
  }

  while (v9 != v8);
  if (v14 <= 0)
  {
LABEL_16:
    _dispatch_root_queue_poke_slow(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void _dispatch_root_queue_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 8) == 0)
  {
    v3 = *(a1 + 84);
    qword_E4290 = "BUG IN LIBDISPATCH: Don't try to wake up or override a root queue";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x3AEA0);
  }

  if (a3)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

void _dispatch_root_queue_push(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v37 = _dispatch_thread_getspecific(29);
  if (v37)
  {
    _dispatch_abort(453, (v37 & 1) == 0, v3, v4, v5, v6, v7, v8);
  }

  v29 = 0;
  if (v37)
  {
    v29 = *(v37 + 52);
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  v33 = *(v37 + 8);
  v32 = *(a1 + 84) & 0x80000000;
  v28 = 1;
  if (v33)
  {
    v28 = *(a1 + 84) < 0;
  }

  if (!v28)
  {
    goto LABEL_13;
  }

  v31 = *v37;
  v30 = *(v37 + 16);
  *v37 = a1;
  *(v37 + 8) = a2;
  *(v37 + 16) = a3;
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tdeferring item %p, rq %p, qos %d", v9, v10, v11, v12, v13, v14, v15, 7660);
  if (v32)
  {
    *(v37 + 52) = 0;
  }

  if (v33)
  {
    a3 = v30;
    a1 = v31;
    a2 = v33;
LABEL_13:
    v27 = 0;
    if ((*(a1 + 87) & 8) != 0)
    {
      if (*a2 >= 0x1000)
      {
        v26 = 0;
        if (*a2)
        {
          v26 = *a2;
        }

        v25 = 1;
        if (*(v26 + 16) != 1)
        {
          v24 = 0;
          if (*a2)
          {
            v24 = *a2;
          }

          is_timer = 0;
          if (*(v24 + 16) == 19)
          {
            is_timer = _dispatch_source_is_timer(a2);
          }

          v25 = is_timer;
        }

        v38 = v25 & 1;
      }

      else
      {
        v38 = 1;
      }

      v27 = v38 ^ 1;
    }

    if (v27)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x3B24CLL);
    }

    v40 = (*(a1 + 84) & 0xF000u) >> 12;
    if (v40)
    {
      v22 = 0;
      if (a3)
      {
        v22 = a3 != v40;
      }

      v41 = v22;
    }

    else
    {
      v39 = (*(a1 + 84) & 0xF00u) >> 8;
      v21 = 0;
      if (v39)
      {
        v21 = a3 > v39;
      }

      v41 = v21;
    }

    if (v41)
    {
      _dispatch_root_queue_push_override(a1, a2, a3);
    }

    else
    {
      a2[2] = 0;
      _dispatch_thread_setspecific(122, a1 + 48);
      v42 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
      if (v42)
      {
        *(v42 + 16) = a2;
      }

      else
      {
        *(a1 + 104) = a2;
      }

      _dispatch_thread_setspecific(122, 0);
      if (!v42)
      {
        _dispatch_root_queue_poke_and_wakeup(a1, 1, 0, v16, v17, v18, v19, v20);
      }
    }
  }
}

void _dispatch_root_queue_push_override(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v14 = 0;
  if ((*(a1 + 87) & 0x80) != 0)
  {
    v14 = 2;
  }

  else if ((*(a1 + 87) & 8) != 0)
  {
    v14 = 4;
  }

  v11 = 1;
  if (a3)
  {
    v11 = a3 > 6;
  }

  if (v11)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x3B5B8);
  }

  v20 = 0;
  if ((v14 & 2) != 0)
  {
    v20 = 1;
  }

  else if ((v14 & 4) != 0)
  {
    v20 = 2;
  }

  v13 = &(&_dispatch_root_queues)[16 * (3 * a3 + v20 - 3)];
  v12 = a2;
  v10 = 0;
  if (*a2 >= 0x1000)
  {
    v9 = 0;
    if (*a2)
    {
      v9 = *a2;
    }

    v10 = *(v9 + 16) == 256;
  }

  if (v10)
  {
    v8 = 0;
    if (a1)
    {
      v8 = a1;
    }

    a2[4] = v8;
  }

  else
  {
    v18 = _dispatch_thread_getspecific(22);
    if (v18)
    {
      _dispatch_thread_setspecific(22, *(v18 + 16));
      v17 = v18;
    }

    else
    {
      v17 = _dispatch_continuation_alloc_from_heap();
    }

    v12 = v17;
    *v17 = &unk_DCE20;
    v17[5] = v17;
    v17[7] = a1;
    v17[6] = a2;
    v17[1] = -1;
    v17[3] = -1;
  }

  *(v12 + 16) = 0;
  _dispatch_thread_setspecific(122, (v13 + 6));
  v19 = atomic_exchange_explicit((v13 + 6), v12, memory_order_release);
  if (v19)
  {
    *(v19 + 16) = v12;
  }

  else
  {
    v13[13] = v12;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v19)
  {
    _dispatch_root_queue_poke_and_wakeup(v13, 1, 0, v3, v4, v5, v6, v7);
  }
}