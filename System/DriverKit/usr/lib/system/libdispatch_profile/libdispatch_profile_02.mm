void _dispatch_mgr_root_queue_init()
{
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(&_dispatch_mgr_sched_pred, 0, _dispatch_mgr_sched_init);
  }

  v0 = off_740A0;
  v5 = 0;
  v1 = pthread_attr_setdetachstate(off_740A0, 2);
  if (v1)
  {
    _dispatch_bug(6257, v1);
  }

  v2 = pthread_attr_setstacksize(v0, 0x10000uLL);
  if (v2)
  {
    _dispatch_bug(6259, v2);
  }

  if (dword_7873C)
  {
    v3 = pthread_attr_set_qos_class_np(v0, dword_7873C, 0);
    if (v3)
    {
      _dispatch_bug(6266, v3);
    }
  }

  v5.sched_priority = _dispatch_mgr_sched;
  if (_dispatch_mgr_sched > dword_78740)
  {
    v4 = pthread_attr_setschedparam(v0, &v5);
    if (v4)
    {
      _dispatch_bug(6272, v4);
    }
  }
}

uint64_t _dispatch_worker_thread(uint64_t a1)
{
  v2 = *(a1 + 32);
  add_explicit = atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
  if (add_explicit <= 0)
  {
    _dispatch_worker_thread_cold_2(add_explicit);
  }

  if (*(v2 + 144))
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 192) = v2 + 144;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    pthread_setname_np(v4);
  }

  v5 = *(v2 + 64);
  if (v5)
  {
    (*(v5 + 16))();
  }

  _dispatch_sigmask();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 32);
  v8 = *(a1 + 84);
  if ((v8 & 0x46000FFF) == 0)
  {
    v9 = v8 & 0x80000000;
    if ((v7 & 0x22000000) != 0 || (v7 & 0x3F00) == 0)
    {
      v8 = v9 | 0xF0000;
    }

    else
    {
      v10 = (__clz(__rbit32((v7 >> 8) & 0x3FFF)) << 8) + 256;
      if (((v7 >> 8) & 0x3FFF) == 0)
      {
        v10 = 0;
      }

      v8 = v7 & 0x8C0000FF | v9 | v10;
    }
  }

  v11 = v7 & 0xFFFFFFFF02FFFFFFLL;
  if (v7 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 & 0xFFFFFFFF02FFFFFFLL;
  }

  do
  {
    _dispatch_root_queue_drain(a1, v8, 0x20000);
    v13 = *(StatusReg + 32);
    if ((v13 & 0x1000000) != 0)
    {
      v14 = v11;
      if (v12)
      {
        goto LABEL_28;
      }

      v14 = v13 & 0xFFFFFFFFFEFFFFFFLL;
LABEL_25:
      if (v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    v14 = v12;
    if (v12 != (v13 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_25;
    }

LABEL_20:
    if (!*(StatusReg + 224))
    {
      goto LABEL_21;
    }

    v14 = 0;
LABEL_28:
    _dispatch_set_priority_and_voucher_slow(v14, 0, 6);
LABEL_21:
    v15 = dispatch_time(0, 5000000000);
  }

  while (!dispatch_semaphore_wait((v2 + 72), v15));
  atomic_fetch_add_explicit((a1 + 100), 1u, memory_order_release);
  _dispatch_root_queue_poke(a1, 1, 0);
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    v16 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    if (v16 <= 1)
    {
      _dispatch_worker_thread_cold_1(v16, a1);
    }
  }

  return 0;
}

uint64_t _dispatch_root_queue_drain(uint64_t a1, unsigned int a2, unsigned int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 160) = a1;
  *(StatusReg + 200) = a2;
  v7 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v7)
  {
    if (v7 == -4)
    {
      _dispatch_main_queue_drain_cold_3();
    }

    add_explicit = atomic_fetch_add_explicit((v7 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _dispatch_runloop_root_queue_perform_4CF_cold_2();
      }

      *(v7 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v7);
    }
  }

  *(StatusReg + 216) = -4;
  memset(v38, 0, sizeof(v38));
  _dispatch_last_resort_autorelease_pool_push(v38);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_root_queue_drain_cold_3();
  }

  v37 = mach_absolute_time();
  v9 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = __swp(v3, (a1 + 104));
        if (v3)
        {
          break;
        }

        atomic_compare_exchange_strong_explicit((a1 + 104), &v10, 0, memory_order_relaxed, memory_order_relaxed);
        if (v10 == -1)
        {
          if (!*(a1 + 48))
          {
            goto LABEL_99;
          }

          v34 = _dispatch_root_queue_head_tail_quiesced;
          goto LABEL_82;
        }
      }

      if (v3 != -1)
      {
        break;
      }

      v34 = _dispatch_root_queue_mediator_is_gone;
LABEL_82:
      if (!__DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(a1, v34))
      {
        goto LABEL_99;
      }
    }

    v11 = v3 + 2;
    v12 = v3[2];
    if (v12)
    {
      goto LABEL_12;
    }

    *(a1 + 104) = 0;
    v35 = v3;
    atomic_compare_exchange_strong_explicit((a1 + 48), &v35, 0, memory_order_release, memory_order_relaxed);
    if (v35 != v3)
    {
      v12 = *v11;
      if (!*v11)
      {
        v12 = _dispatch_wait_for_enqueuer(v11);
      }

LABEL_12:
      *(a1 + 104) = v12;
      _dispatch_root_queue_poke(a1, 1, 0);
    }

    if (v9)
    {
      _pthread_workqueue_override_reset();
    }

    v13 = *(StatusReg + 192);
    if (v13)
    {
      (*v13)(a1);
    }

    v14 = *v3;
    if (*v3 < 0x1000uLL)
    {
      if ((a3 & 0x1000000) != 0)
      {
        v16 = _dispatch_autorelease_pool_push();
        v14 = *v3;
      }

      else
      {
        v16 = 0;
      }

      v18 = v3[3];
      if ((v14 & 4) != 0)
      {
        v3[3] = -1;
      }

      if (v18 != -1)
      {
        if (v18)
        {
          v19 = *(v18 + 32);
        }

        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v20 = v3[1];
      if (v20 == -1)
      {
        v23 = 0;
      }

      else
      {
        v21 = *(StatusReg + 200);
        if (((v21 >> 8) & 0xF) != 0)
        {
          v22 = 1 << ((BYTE1(v21) & 0xFu) + 7);
        }

        else
        {
          v22 = 0;
        }

        v23 = v22 | *(StatusReg + 200);
        if ((v20 & 0xFFFFFF) != 0)
        {
          if ((v20 & 0xFFFFFFuLL) >= (v22 & 0xFFFFFF00) && ((v21 & 0x44000000) != 0 || (v3[1] & 0x10000000) != 0))
          {
            v23 = v20 & 0xFFFFFF;
          }
        }

        else if (v21 >> 12)
        {
          v23 = (256 << ((v21 >> 12) - 1)) | 0xFF;
        }
      }

      v25 = v23 & 0x7FFFFFFF02FFFFFFLL;
      v26 = *(StatusReg + 32);
      if ((v26 & 0x1000000) != 0)
      {
        if (v25)
        {
          goto LABEL_96;
        }

        v25 = v26 & 0xFFFFFFFFFEFFFFFFLL;
      }

      else if (v25 == (v26 & 0xFFFFFFFF76FFFFFFLL))
      {
LABEL_53:
        if (v18 == -1)
        {
          goto LABEL_58;
        }

        if (*(StatusReg + 224) == v18)
        {
          if ((v14 & 4) != 0 && v18 && atomic_fetch_add_explicit((v18 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
          {
            _dispatch_block_invoke_direct_cold_4();
          }

LABEL_58:
          if ((v14 & 4) == 0)
          {
            v27 = 0;
            if ((v14 & 8) == 0)
            {
              goto LABEL_60;
            }

LABEL_75:
            _dispatch_root_queue_drain_cold_5();
            if (v27)
            {
              goto LABEL_76;
            }

            goto LABEL_68;
          }

          v32 = *(StatusReg + 176);
          if (v32)
          {
            v33 = *(v32 + 8) + 1;
          }

          else
          {
            v33 = 1;
          }

          if (v33 > _dispatch_continuation_cache_limit)
          {
            v27 = v3;
            if ((v14 & 8) != 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v27 = 0;
            v3[2] = v32;
            *(v3 + 2) = v33;
            *(StatusReg + 176) = v3;
            if ((v14 & 8) != 0)
            {
              goto LABEL_75;
            }
          }

LABEL_60:
          v28 = v3[4];
          v29 = v3[5];
          if (v29)
          {
            v30 = v3[4];
            if (v28 == _dispatch_call_block_and_release)
            {
              if (*(v29 + 16))
              {
                v31 = *(v29 + 16);
              }
            }
          }

          _dispatch_client_callout(v29, v28);
          if (!MEMORY[0xFFFFFC100])
          {
            if (!v27)
            {
              goto LABEL_68;
            }

LABEL_76:
            _dispatch_continuation_free_to_cache_limit(v27);
            if (!v16)
            {
LABEL_70:
              ++*(StatusReg + 208);
              if (v13)
              {
                goto LABEL_24;
              }

              goto LABEL_25;
            }

LABEL_69:
            _dispatch_autorelease_pool_pop();
            goto LABEL_70;
          }

          _dispatch_workloop_invoke_cold_8();
          if (v27)
          {
            goto LABEL_76;
          }

LABEL_68:
          if (!v16)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        v25 = 0;
LABEL_96:
        _dispatch_set_priority_and_voucher_slow(v25, v18, v14 & 4 | 2);
        goto LABEL_58;
      }

      if (v25)
      {
        goto LABEL_96;
      }

      goto LABEL_53;
    }

    v15 = *v3;
    if (*(v14 + 16) == 1)
    {
      (*(v14 + 24))(v3, 0, (a3 >> 21) & 1);
    }

    else
    {
      (*(v14 + 48))(v3, v38, a3 & 0xFFFF0000);
    }

    if (v13)
    {
LABEL_24:
      v13[1](a1);
    }

LABEL_25:
    v17 = WORD1(*(StatusReg + 200)) & 0xF;
    if (v17)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
      v9 = v17 != 15;
    }

    else
    {
      v9 = 0;
    }

    if (*(StatusReg + 960))
    {
      break;
    }

    *(StatusReg + 960) = 0;
  }

LABEL_99:
  _dispatch_queue_merge_stats(v37, 1);
  result = _dispatch_last_resort_autorelease_pool_pop(v38);
  *(StatusReg + 216) = 0;
  *(StatusReg + 40) = 0;
  *(StatusReg + 200) = 0;
  *(StatusReg + 160) = 0;
  return result;
}

BOOL __DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = 0;
  v5 = 500;
LABEL_2:
  v6 = -80;
  do
  {
    if (__CFADD__(v6++, 1))
    {
      if ((v4 & 1) == 0)
      {
        atomic_fetch_add_explicit((a1 + 112), 1u, memory_order_release);
      }

      thread_switch(0, 3, v5);
      v8 = a2(a1);
      if (!v8)
      {
        v9 = (v5 >> 4) & 0x7FFFFFF;
        v5 *= 2;
        v4 = 1;
        if (v9 < 0xC35)
        {
          goto LABEL_2;
        }

        v8 = 0;
      }

      goto LABEL_12;
    }

    __yield();
    v8 = a2(a1);
  }

  while (!v8);
  if ((v4 & 1) == 0)
  {
    return v8 == 1;
  }

LABEL_12:
  atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
  if (*(a1 + 48))
  {
    v8 = 1;
  }

  else if (!v8)
  {
    _dispatch_root_queue_poke(a1, 1, 0);
    v8 = 0;
  }

  return v8 == 1;
}

uint64_t _dispatch_root_queue_head_tail_quiesced(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if ((*(a1 + 104) != 0) != (*(a1 + 48) == 0))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void _dispatch_mgr_priority_raise(pthread_attr_t *a1)
{
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(&_dispatch_mgr_sched_pred, 0, _dispatch_mgr_sched_init);
  }

  v13 = 0;
  v2 = pthread_attr_getschedparam(a1, &v13);
  if (v2)
  {
    _dispatch_bug(6350, v2);
  }

  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(a1, &__qos_class, 0);
  v3 = __qos_class;
  if (__qos_class)
  {
    sched_priority = _dispatch_mgr_sched_qos2prio(__qos_class);
    v13.sched_priority = sched_priority;
    v5 = dword_7873C;
    do
    {
      if (v5 >= v3)
      {
        break;
      }

      v6 = v5;
      atomic_compare_exchange_strong_explicit(&dword_7873C, &v6, v3, memory_order_relaxed, memory_order_relaxed);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
  }

  else
  {
    sched_priority = v13.sched_priority;
  }

  v8 = _dispatch_mgr_sched;
  while (v8 < sched_priority)
  {
    v9 = v8;
    atomic_compare_exchange_strong_explicit(&_dispatch_mgr_sched, &v9, sched_priority, memory_order_relaxed, memory_order_relaxed);
    v7 = v9 == v8;
    v8 = v9;
    if (v7)
    {
      if (_dispatch_root_queues_pred != -1)
      {
        dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
      }

      if (_dispatch_kevent_workqueue_enabled == 1)
      {
        if (sched_priority > dword_78740 || __qos_class && _pthread_qos_class_encode())
        {
          v11 = _pthread_workqueue_set_event_manager_priority();
          if (v11)
          {
            _dispatch_bug(6382, v11);
          }
        }
      }

      else if (qword_78748)
      {
        v14 = 0;
        do
        {
          v14.sched_priority = _dispatch_mgr_sched;
          if (_dispatch_mgr_sched > dword_78740)
          {
            v10 = pthread_setschedparam(qword_78748, dword_78744, &v14);
            if (v10)
            {
              _dispatch_bug(6296, v10);
            }
          }
        }

        while (_dispatch_mgr_sched > v14.sched_priority);
      }

      return;
    }
  }
}

uint64_t _dispatch_main_queue_update_priority_from_thread()
{
  v0 = qword_74038;
  if (qword_74038 >= 4)
  {
    result = qword_74038 | 3;
  }

  else
  {
    result = 0;
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32);
  v3 = v2;
  v4 = (v2 >> 8) & 0x3FFF;
  v5 = __clz(__rbit32(v4));
  if (v4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v3 | (v6 << 8);
  v8 = HIDWORD(v0) & 7;
  v9 = (dword_74054 >> 8) & 0xF;
  dword_74054 = v7;
  if (v9 < v8 && v4 == 0)
  {
    return _pthread_qos_override_end_direct();
  }

  if (v9 < v8 && v8 <= v6)
  {
    return _pthread_qos_override_end_direct();
  }

  if (v9 >= v8 && v8 > v6)
  {
    return _pthread_qos_override_start_direct();
  }

  return result;
}

uint64_t _dispatch_root_queues_init_once()
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  v0 = _pthread_workqueue_supported();
  v1 = v0;
  if ((v0 & 0x10) == 0)
  {
    _dispatch_root_queues_init_once_cold_5(v0);
  }

  v4 = 0x200000000;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 64;
  v9 = 72;
  if (_dispatch_kevent_workqueue_enabled)
  {
    if ((v0 & 0x80) != 0)
    {
      v7 = _dispatch_worker_thread2;
      v5 = _dispatch_kevent_worker_thread;
      v6 = _dispatch_workloop_worker_thread;
    }

    else
    {
      if ((v0 & 0x40) == 0)
      {
        _dispatch_root_queues_init_once_cold_4(v0);
      }

      v7 = _dispatch_worker_thread2;
      v5 = _dispatch_kevent_worker_thread;
    }
  }

  else
  {
    v7 = _dispatch_worker_thread2;
  }

  result = pthread_workqueue_setup();
  if (result)
  {
    _dispatch_root_queues_init_once_cold_2(result, v1);
  }

  if ((_dispatch_mode & 4) != 0)
  {
    v3 = -1;
    result = sysctlbyname("kern.wq_limit_cooperative_threads", 0, 0, &v3, 4uLL);
    if (result)
    {
      _dispatch_root_queues_init_once_cold_3();
    }
  }

  return result;
}

uint64_t _dispatch_worker_thread2(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[120] = 0;
  StatusReg[4] = a1 & 0xFFFFFFFF88FFFFFFLL;
  if ((a1 & 0x8000000) != 0)
  {
    v2 = 2293760;
  }

  else
  {
    v2 = 196608;
  }

  v3 = __clz(__rbit32((a1 >> 8) & 0x3FFF));
  if (((a1 >> 8) & 0x3FFF) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 - 7 <= 0xFFFFFFF9)
  {
    _dispatch_queue_priority_inherit_from_target_cold_1(v4);
  }

  v5 = 3 * v4;
  if ((a1 & 0x88000000) == 0x80000000)
  {
    v6 = -2;
  }

  else
  {
    v6 = (a1 >> 26) | 0xFFFFFFFD;
  }

  v7 = &(&_dispatch_root_queues)[16 * (v6 + v5)];
  atomic_fetch_add_explicit((v7 + 14), 0xFFFFFFFF, memory_order_acquire);
  v8 = (StatusReg[29] & 0xFFFFFFFFFFFFFFFELL);
  if (v8)
  {
    _dispatch_free_deferred_unotes(v8);
    StatusReg[29] = 0;
  }

  result = _dispatch_root_queue_drain(v7, *(v7 + 21), v2);
  v10 = StatusReg[4];
  if ((v10 & 0x1000000) != 0)
  {
    result = v10 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v10 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      goto LABEL_20;
    }
  }

  if (StatusReg[28])
  {
    result = 0;
LABEL_20:
    result = _dispatch_set_priority_and_voucher_slow(result, 0, 14);
  }

  StatusReg[120] = 0;
  return result;
}

void _dispatch_kevent_worker_thread(void **a1, unsigned int *a2)
{
  if (a1 && a2)
  {
    if (!*a2)
    {
      return;
    }

    v3 = a1;
    if (!*a1)
    {
      return;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = StatusReg[27] & 0xFFFFFFFFFFFFFFFELL;
    if (v5)
    {
      if (v5 != -4)
      {
        add_explicit = atomic_fetch_add_explicit((v5 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit > 0)
        {
          goto LABEL_10;
        }

        if ((add_explicit & 0x80000000) == 0)
        {
          *(v5 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v5);
          goto LABEL_10;
        }

        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
      }

      qword_78298 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
      __break(1u);
      return;
    }

LABEL_10:
    StatusReg[27] = -4;
    v7 = *v3;
    StatusReg[120] = 0;
    v18 = 0;
    v20 = 0;
    v17 = 0u;
    v19 = -4;
    v21 = v7;
    v22 = 0;
    v8 = StatusReg[4];
    if ((v8 & 0x2000000) != 0)
    {
      v9 = StatusReg[4] & 0xFE000000;
      if ((v8 & 0x20000000) == 0)
      {
        v9 = StatusReg[4];
      }

      StatusReg[4] = v9 & 0xFFFFFFFFFEFFFFFFLL;
      StatusReg[25] = 34537472;
      StatusReg[20] = &_dispatch_mgr_q;
      v10 = qword_74138;
      v11 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
      while ((v10 & 0xFFE00000FFFFFFFCLL) == 0)
      {
        v12 = v10;
        atomic_compare_exchange_strong_explicit(&qword_74138, &v12, v11 | v10 & 0x7700000001, memory_order_acquire, memory_order_acquire);
        v13 = v12 == v10;
        v10 = v12;
        if (v13)
        {
          v3 = 0;
          v19 = -4;
          goto LABEL_21;
        }
      }

      qword_78298 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
      qword_782C8 = v10;
      __break(1u);
    }

    else
    {
      StatusReg[4] = v8 & 0xFFFFFFFF88FFFFFFLL | 0x1000000;
      BYTE4(v22) = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v3 = mach_absolute_time();
LABEL_21:
      v5 = StatusReg[29] & 0xFFFFFFFFFFFFFFFELL;
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    _dispatch_free_deferred_unotes(v5);
LABEL_22:
    StatusReg[29] = &v17;
    _dispatch_event_loop_merge(v7, *a2);
    if ((v8 & 0x2000000) != 0)
    {
      _dispatch_mgr_queue_drain();
      if (byte_7843E)
      {
        _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9);
      }

      v14 = qword_74138;
      do
      {
        v15 = v14;
        atomic_compare_exchange_strong_explicit(&qword_74138, &v14, (v14 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      }

      while (v14 != v15);
      StatusReg[25] = 0;
      StatusReg[20] = 0;
      if ((v15 & 0x8000000000) != 0)
      {
        _dispatch_event_loop_poke(-8, 0, 0);
      }
    }

    else if (*(&v17 + 1))
    {
      if (v19 == -4)
      {
        StatusReg[29] = 0;
        _dispatch_root_queue_drain_deferred_item(&v17, v3);
      }

      else
      {
        _dispatch_root_queue_drain_deferred_wlh(&v17, v3);
      }
    }

    if (v20)
    {
      v16 = v20 | 1;
    }

    else
    {
      v16 = 0;
    }

    StatusReg[29] = v16;
    if ((v8 & 0x2000000) == 0 && !*(&v17 + 1))
    {
      _dispatch_queue_merge_stats(v3, 1);
    }

    StatusReg[120] = 0;
    *a2 = v22;
    StatusReg[27] = 0;
    StatusReg[5] = 0;
    return;
  }

  _dispatch_bug(6827, 0);
}

void _dispatch_workloop_worker_thread(uint64_t *a1, void **a2, unsigned int *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = *a1;
    if (*a1)
    {
      if (!*a3 || !*a2)
      {
        return;
      }

      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = StatusReg[27] & 0xFFFFFFFFFFFFFFFELL;
      if (v8 == -4)
      {
        goto LABEL_86;
      }

      if (v8 == v6)
      {
LABEL_15:
        StatusReg[27] = v6;
        v10 = *a2;
        StatusReg[120] = 0;
        v29 = 0;
        v31 = 0;
        v28 = 0u;
        v30 = v6;
        v32 = v10;
        v33 = 0;
        if (v6 == -4)
        {
          v11 = 0;
          v12 = 0;
          memset(&v27, 0, sizeof(v27));
          goto LABEL_35;
        }

        if (*(*v6 + 16) == 131090 && (v13 = *(v6 + 200)) != 0)
        {
          v14 = *v13;
          memset(&v27, 0, sizeof(v27));
          if ((v14 & 0x40) != 0)
          {
            v8 = *(v6 + 72);
            if (!v8 || StatusReg[124] || (v8 = pthread_setname_np(v8), v11 = 1, StatusReg[124] = 1, (v13 = *(v6 + 200)) != 0))
            {
              if (*(v13 + 4) && !StatusReg[115])
              {
                v11 = 1;
                v3 = _dispatch_calloc_typed();
                _os_workgroup_join_update_wg(*(*(v6 + 200) + 32), v3);
                v12 = 0;
                StatusReg[115] = v3;
              }

              else
              {
                v12 = 0;
                v11 = 1;
              }

LABEL_35:
              v16 = StatusReg[4];
              if ((v16 & 0x2000000) != 0)
              {
                v17 = StatusReg[4] & 0xFE000000;
                if ((v16 & 0x20000000) == 0)
                {
                  v17 = StatusReg[4];
                }

                StatusReg[4] = v17 & 0xFFFFFFFFFEFFFFFFLL;
                StatusReg[25] = 34537472;
                StatusReg[20] = &_dispatch_mgr_q;
                v18 = qword_74138;
                v19 = StatusReg[3] & 0xFFFFFFFCLL | 0x40020000000000;
                while ((v18 & 0xFFE00000FFFFFFFCLL) == 0)
                {
                  v20 = v18;
                  atomic_compare_exchange_strong_explicit(&qword_74138, &v20, v19 | v18 & 0x7700000001, memory_order_acquire, memory_order_acquire);
                  v21 = v20 == v18;
                  v18 = v20;
                  if (v21)
                  {
                    v3 = 0;
                    v30 = -4;
                    goto LABEL_50;
                  }
                }

                qword_78298 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
                qword_782C8 = v18;
                __break(1u);
              }

              else
              {
                v22 = v16 & 0xFFFFFFFF88FFFFFFLL;
                if (v6 == -4)
                {
                  v22 = v16 & 0xFFFFFFFF88FFFFFFLL | 0x1000000;
                }

                StatusReg[4] = v22;
                if (v6 == -4)
                {
                  BYTE4(v33) = 1;
                }

                if (MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v3 = mach_absolute_time();
LABEL_50:
                v8 = StatusReg[29] & 0xFFFFFFFFFFFFFFFELL;
                if (!v8)
                {
                  goto LABEL_51;
                }
              }

              _dispatch_free_deferred_unotes(v8);
LABEL_51:
              StatusReg[29] = &v28;
              _dispatch_event_loop_merge(v10, *a3);
              if ((v16 & 0x2000000) != 0)
              {
                _dispatch_mgr_queue_drain();
                if (byte_7843E)
                {
                  _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9);
                }

                v23 = qword_74138;
                do
                {
                  v24 = v23;
                  atomic_compare_exchange_strong_explicit(&qword_74138, &v23, (v23 & 0xFFFFFFF000000001) - 0x40020000000000, memory_order_release, memory_order_relaxed);
                }

                while (v23 != v24);
                StatusReg[25] = 0;
                StatusReg[20] = 0;
                if ((v24 & 0x8000000000) != 0)
                {
                  _dispatch_event_loop_poke(-8, 0, 0);
                }
              }

              else if (*(&v28 + 1))
              {
                if (v30 == -4)
                {
                  StatusReg[29] = 0;
                  _dispatch_root_queue_drain_deferred_item(&v28, v3);
                }

                else
                {
                  _dispatch_root_queue_drain_deferred_wlh(&v28, v3);
                }
              }

              if (v12)
              {
                v25 = v11;
              }

              else
              {
                v25 = 1;
              }

              if ((v25 & 1) == 0)
              {
                os_workgroup_leave(v12, &v27);
              }

              if (v31)
              {
                v26 = v31 | 1;
              }

              else
              {
                v26 = 0;
              }

              StatusReg[29] = v26;
              if ((v16 & 0x2000000) == 0 && !*(&v28 + 1))
              {
                _dispatch_queue_merge_stats(v3, 1);
              }

              StatusReg[5] = 0;
              StatusReg[120] = 0;
              *a3 = v33;
              StatusReg[27] = v6 | 1;
              return;
            }

LABEL_33:
            v12 = 0;
            goto LABEL_35;
          }
        }

        else
        {
          memset(&v27, 0, sizeof(v27));
        }

        if (*(*v6 + 16) != 131090)
        {
          goto LABEL_32;
        }

        v15 = *(v6 + 200);
        if (!v15)
        {
          goto LABEL_32;
        }

        v12 = *(v15 + 32);
        if (!v12 || (v8 = os_workgroup_join(*(v15 + 32), &v27), !v8))
        {
          v11 = 0;
          goto LABEL_35;
        }

        if (v8 == 22)
        {
LABEL_32:
          v11 = 0;
          goto LABEL_33;
        }

LABEL_87:
        qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
        qword_782C8 = v8;
        __break(1u);
        return;
      }

      if (v8)
      {
        add_explicit = atomic_fetch_add_explicit((v8 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
            qword_78298 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_85:
            qword_78298 = "API MISUSE: Resurrection of an object";
            __break(1u);
LABEL_86:
            qword_78298 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
            __break(1u);
            goto LABEL_87;
          }

          *(v8 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v8);
        }
      }

      if (v6 == -4 || (atomic_fetch_add_explicit((v6 + 96), 1u, memory_order_relaxed) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_85;
    }

    _dispatch_bug(6849, 0);

    _dispatch_kevent_worker_thread(a2, a3);
  }

  else
  {

    _dispatch_bug(6846, 0);
  }
}

unint64_t _dispatch_root_queue_drain_deferred_item(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = v4;
  memset(v32, 0, sizeof(v32));
  _dispatch_last_resort_autorelease_pool_push(v32);
  StatusReg[25] = *(v4 + 84);
  v6 = a1[1];
  v7 = StatusReg[24];
  if (v7)
  {
    (*v7)(v4);
  }

  v8 = *v6;
  if (*v6 < 0x1000uLL)
  {
    v10 = v6[3];
    if ((v8 & 4) != 0)
    {
      v6[3] = -1;
    }

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

    v13 = v6[1];
    if (v13 == -1)
    {
      v20 = 0;
    }

    else
    {
      v14 = StatusReg[25];
      if (((v14 >> 8) & 0xF) != 0)
      {
        v15 = 1 << ((BYTE1(v14) & 0xFu) + 7);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 | StatusReg[25];
      v17 = v13 & 0xFFFFFF;
      if ((v13 & 0xFFFFFF) != 0)
      {
        v18 = v15 & 0xFFFFFF00;
        if ((v14 & 0x44000000) == 0 && (v6[1] & 0x10000000) == 0)
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
        v20 = v15 | StatusReg[25];
      }
    }

    v23 = v20 & 0x7FFFFFFF02FFFFFFLL;
    v24 = StatusReg[4];
    if ((v24 & 0x1000000) != 0)
    {
      if (v23)
      {
        goto LABEL_75;
      }

      v23 = v24 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v23 == (v24 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_39:
      if (v10 == -1)
      {
        goto LABEL_44;
      }

      if (StatusReg[28] == v10)
      {
        if ((v8 & 4) != 0 && v10 && atomic_fetch_add_explicit((v10 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
        {
          _dispatch_block_invoke_direct_cold_4();
        }

LABEL_44:
        if ((v8 & 4) != 0)
        {
          v26 = StatusReg[22];
          if (v26)
          {
            v27 = *(v26 + 8) + 1;
          }

          else
          {
            v27 = 1;
          }

          v25 = v6;
          if (v27 <= _dispatch_continuation_cache_limit)
          {
            v25 = 0;
            v6[2] = v26;
            *(v6 + 2) = v27;
            StatusReg[22] = v6;
          }
        }

        else
        {
          v25 = 0;
        }

        if ((v8 & 8) != 0)
        {
          _dispatch_root_queue_drain_deferred_item_cold_3();
        }

        else
        {
          v29 = v6[4];
          v28 = v6[5];
          if (v28)
          {
            v30 = v6[4];
            if (v29 == _dispatch_call_block_and_release)
            {
              if (*(v28 + 16))
              {
                v31 = *(v28 + 16);
              }
            }
          }

          _dispatch_client_callout(v28, v29);
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_8();
          }
        }

        if (v25)
        {
          _dispatch_continuation_free_to_cache_limit(v25);
        }

        ++StatusReg[26];
        if (v7)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v23 = 0;
LABEL_75:
      _dispatch_set_priority_and_voucher_slow(v23, v10, v8 & 4 | 2);
      goto LABEL_44;
    }

    if (v23)
    {
      goto LABEL_75;
    }

    goto LABEL_39;
  }

  v9 = *v6;
  if (*(v8 + 16) == 1)
  {
    (*(v8 + 24))(v6, 0, 0);
  }

  else
  {
    (*(v8 + 48))(v6, v32, 196608);
  }

  if (v7)
  {
LABEL_32:
    v7[1](v4);
  }

LABEL_33:
  _dispatch_queue_merge_stats(a2, 1);
  result = _dispatch_last_resort_autorelease_pool_pop(v32);
  StatusReg[25] = 0;
  StatusReg[20] = 0;
  v22 = StatusReg[4];
  if ((v22 & 0x1000000) != 0)
  {
    result = v22 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v22 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
    }
  }

  if (StatusReg[28])
  {
    result = 0;
    return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
  }

  return result;
}

unint64_t _dispatch_root_queue_drain_deferred_wlh(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  StatusReg[20] = v5;
  StatusReg[25] = *(v5 + 84) | 0xF0000;
  v7 = *(a1 + 53) | 4;
  memset(v17, 0, sizeof(v17));
  *(a1 + 53) = v7;
  v8 = 196610;
  while (2)
  {
    v9 = StatusReg[3] & 0xFFFFFFFCLL;
    v10 = *(v4 + 56);
    while (1)
    {
      v11 = v10;
      if (v10 >> 55)
      {
        v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_6;
      }

      if ((v10 & 0xFFFFFFFC) != 0)
      {
        break;
      }

      v12 = v9 | v10 & 0x7700000001 | 0x60000000000000;
LABEL_6:
      atomic_compare_exchange_strong_explicit((v4 + 56), &v10, v12, memory_order_acquire, memory_order_acquire);
      if (v10 == v11)
      {
        goto LABEL_12;
      }
    }

    if ((v10 & 2) != 0)
    {
      v12 = v10 | 0x800000000;
      goto LABEL_6;
    }

    v12 = v10;
LABEL_12:
    if ((v11 & 0x6000000001) != 0x2000000001)
    {
      _dispatch_root_queue_drain_deferred_wlh_cold_1(v11);
    }

    if ((v11 & 0xFF800000FFFFFFFCLL) != 0)
    {
      v14 = *(v4 + 8);
      if (v12 >> 55)
      {
        if (v14 != 0x7FFFFFFF && atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFE, memory_order_release) <= 2)
        {
          _dispatch_runloop_root_queue_perform_4CF_cold_2();
        }
      }

      else if (v14 != 0x7FFFFFFF && atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
      {
        _dispatch_runloop_root_queue_perform_4CF_cold_2();
      }

      goto LABEL_26;
    }

    (*(*v4 + 48))(v4, v17, v8);
    if (*(a1 + 53))
    {
      v12 = *(v4 + 56);
      if ((v12 & 0x2000000000) != 0)
      {
        if (v12)
        {
          if (*(v4 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed) <= 0)
          {
            dispatch_set_target_queue_cold_2();
          }

          v13 = *(v4 + 24);
          v8 = 196626;
          continue;
        }

LABEL_26:
        _dispatch_event_loop_leave_deferred(a1, v12);
      }
    }

    break;
  }

  result = _dispatch_queue_merge_stats(a2, 1);
  StatusReg[25] = 0;
  StatusReg[20] = 0;
  v16 = StatusReg[4];
  if ((v16 & 0x1000000) != 0)
  {
    result = v16 & 0xFFFFFFFFFEFFFFFFLL;
    if ((v16 & 0xFFFFFFFFFEFFFFFFLL) != 0)
    {
      return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
    }
  }

  if (StatusReg[28])
  {
    result = 0;
    return _dispatch_set_priority_and_voucher_slow(result, 0, 14);
  }

  return result;
}

void _dispatch_queue_cleanup2()
{
  v0 = qword_74038;
  v1 = qword_74038;
  do
  {
    atomic_compare_exchange_strong_explicit(&qword_74038, &v1, (v0 & 0xFFFFFF7FFFFFFFFFLL) + 0x40020000000000, memory_order_acquire, memory_order_acquire);
    v2 = v1 == v0;
    v0 = v1;
  }

  while (!v2);
  atomic_fetch_and_explicit(&dword_74050, 0xFFFBFFFF, memory_order_relaxed);
  _dispatch_lane_barrier_complete(&_dispatch_main_q, 0, 0);
  if (_dispatch_program_is_probably_callback_driven == 1)
  {
    memset(&v5, 0, sizeof(v5));
    pthread_attr_init(&v5);
    pthread_attr_setdetachstate(&v5, 2);
    v4 = 0;
    v3 = pthread_create(&v4, &v5, _dispatch_sig_thread, 0);
    if (v3)
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to create signal thread";
      qword_782C8 = v3;
      __break(1u);
    }

    pthread_attr_destroy(&v5);
    sleep_NOCANCEL();
  }

  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, &_dispatch_main_q, _dispatch_runloop_queue_handle_init);
  }

  _dispatch_runloop_queue_handle_dispose(&_dispatch_main_q);
}

void _dispatch_sig_thread()
{
  v0 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v0);
  bzero(&vars0, stackaddr_np - &vars0);
  _dispatch_sigsuspend();
}

void _dispatch_sigsuspend()
{
  pthread_sigmask(3, &_dispatch_sigsuspend_mask, 0);
  while (1)
  {
    sigsuspend_NOCANCEL();
  }
}

uint64_t OUTLINED_FUNCTION_5()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_28(unsigned int *a1)
{
  v2 = *a1;

  return _pthread_workqueue_override_start_direct();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return _dispatch_client_callout(v0, v1);
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 + v5), v4, a3);
}

uint64_t OUTLINED_FUNCTION_43@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _dispatch_apply_invoke(a2, a1, v2);
}

void _dispatch_apply_invoke(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context[1] = 0;
  context[2] = 0;
  context[0] = a1;
  _dispatch_apply_set_attr_behavior(*(a1 + 56));
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56));
  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      v8 = *(v7 + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v7;
      *(a1 + 8) = v8;
      *(StatusReg + 176) = a1;
    }
  }
}

void _dispatch_apply_redirect_invoke(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context = a1;
  v10 = xmmword_4A930;
  _dispatch_apply_set_attr_behavior(*(a1 + 56));
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56));
  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      v8 = *(v7 + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v7;
      *(a1 + 8) = v8;
      *(StatusReg + 176) = a1;
    }
  }
}

void _dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, uint64_t (***a3)(), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return;
  }

  v8 = a3;
  if (a2 && (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL))
  {
    _dispatch_apply_with_attr_f_cold_1(a2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = StatusReg + 184;
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    if (*(v12 + 8) == "apply")
    {
      v13 = *(v12 + 16);
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_10:
  v14 = (StatusReg + 160);
  if (!a3)
  {
    if (!*(StatusReg + 160))
    {
      goto LABEL_24;
    }

    v15 = *(StatusReg + 160);
    do
    {
      v8 = v15;
      v15 = v15[3];
      if (!v15)
      {
        break;
      }
    }

    while (v15 != &_dispatch_custom_workloop_root_queue && v15 != &_dispatch_custom_workloop_overcommit_root_queue);
    if (v8 >= &_dispatch_root_queues && v8 < &qword_74A80)
    {
LABEL_24:
      v18 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
      if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
      {
        v19 = v18 + 1;
      }

      else
      {
        v19 = 4;
      }

      if (v19 - 7 <= 0xFFFFFFF9)
      {
        _dispatch_queue_priority_inherit_from_target_cold_1(v19);
      }

      v8 = &(&_dispatch_root_queues)[16 * (3 * v19 - 3)];
    }
  }

  v50 = *(StatusReg + 160);
  v20 = *(v8 + 21);
  v21 = v20 >> 12;
  v22 = (v20 >> 8) & 0xF;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v8[3])
  {
    v30 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v23 = v30 + 1;
    }

    else
    {
      v23 = 0;
    }

    if (a2)
    {
      goto LABEL_34;
    }

LABEL_57:
    if (!v23 || (v31 = pthread_qos_max_parallelism(), v31 <= 0))
    {
      v31 = MEMORY[0xFFFFFC036];
    }

    if (v31 >= MEMORY[0xFFFFFC034])
    {
      v27 = MEMORY[0xFFFFFC034];
    }

    else
    {
      v27 = v31;
    }

    if (v13)
    {
      if (v13 >= v27)
      {
        v27 = 1;
      }

      else
      {
        if (v13 > v27)
        {
          goto LABEL_125;
        }

        v27 = v27 / v13;
      }

      if (v13 >= 0xFFFF || a1 >= 0xFFFF)
      {
        v29 = 0xFFFFLL;
      }

      else
      {
        v29 = v13 * a1;
      }
    }

    else
    {
      v29 = a1;
      if (!v27)
      {
        goto LABEL_125;
      }
    }

    goto LABEL_64;
  }

  if (!a2)
  {
    goto LABEL_57;
  }

LABEL_34:
  if (*a2 != -1592086528 || (*(a2 + 16) ^ a2) != 0xFFFFFFFFFFFFFFFFLL)
  {
    _dispatch_apply_with_attr_f_cold_1(a2);
  }

  if (!v13)
  {
    if (!v23 || (v24 = pthread_qos_max_parallelism(), v24 <= 0))
    {
      v24 = MEMORY[0xFFFFFC036];
    }

    if (v24 >= MEMORY[0xFFFFFC034])
    {
      v25 = MEMORY[0xFFFFFC034];
    }

    else
    {
      v25 = v24;
    }

    if (*(a2 + 8))
    {
      if ((v23 - 1) <= 5)
      {
        v26 = dword_4A950[v23 - 1];
      }

      v28 = pthread_qos_max_parallelism();
      if (v28 < 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = (v28 * *(a2 + 8));
      }
    }

    else
    {
      v27 = -1;
    }

    if (v27 >= v25)
    {
      v27 = v25;
    }

    if (v27)
    {
      v29 = 0xFFFFLL;
      goto LABEL_64;
    }

LABEL_125:
    _dispatch_apply_with_attr_f_cold_6(a2);
  }

  v29 = 0xFFFFLL;
  v27 = 1;
LABEL_64:
  if (v27 >= a1)
  {
    v32 = a1;
  }

  else
  {
    v32 = v27;
  }

  memset(v53, 0, 32);
  if (a5)
  {
    v33 = a5;
  }

  else
  {
    v33 = 0;
  }

  v53[4] = v33;
  v53[5] = a4;
  v53[6] = a6;
  v53[7] = v8;
  v34 = *(StatusReg + 176);
  if (v34)
  {
    *(StatusReg + 176) = *(v34 + 16);
  }

  else
  {
    v34 = _dispatch_continuation_alloc_from_heap();
  }

  *(v34 + 8) = 0;
  *(v34 + 16) = a1;
  *(v34 + 24) = v29;
  *(v34 + 44) = v32;
  *(v34 + 52) = 0;
  if (a2)
  {
    v35 = _dispatch_calloc_typed();
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0u;
    *(v35 + 8) = *(a2 + 8);
    *(v35 + 16) = ~v35;
    v36 = *(a2 + 4);
    *v35 = -1592086528;
    *(v35 + 4) = v36;
  }

  else
  {
    v35 = 0;
  }

  *(v34 + 56) = v35;
  *(v34 + 32) = 0;
  *v34 = v53;
  *(v34 + 40) = 0;
  v37 = v8[3];
  if (v37 == &_dispatch_custom_workloop_root_queue || v37 == &_dispatch_custom_workloop_overcommit_root_queue)
  {
    _dispatch_apply_with_attr_f_cold_8(v8, StatusReg, v34);
  }

  else if (v32 < 2 || *(v8 + 40) == 1)
  {
    dispatch_sync_f(v8, v34, _dispatch_apply_serial);
  }

  else if (v37)
  {
    _dispatch_apply_with_attr_f_cold_3(v8, v50, v34);
  }

  else
  {
    v52 = *v14;
    *(StatusReg + 160) = v8;
    *(StatusReg + 168) = &v52;
    v38 = *(v34 + 44);
    v39 = v38 - 1;
    if (v38 < 2)
    {
      v41 = 0;
      v40 = 0;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = *(StatusReg + 32) | 0x10000000;
      v49 = v38 - 1;
      v43 = v38 - 1;
      do
      {
        v44 = v40;
        v40 = *(StatusReg + 176);
        if (v40)
        {
          *(StatusReg + 176) = v40[2];
        }

        else
        {
          v40 = _dispatch_continuation_alloc_from_heap();
        }

        *v40 = (&stru_B8 + 76);
        v40[4] = _dispatch_apply_invoke;
        v40[5] = v34;
        v45 = *(StatusReg + 224);
        if (v45 && atomic_fetch_add_explicit((v45 + 12), 1u, memory_order_relaxed) <= 0)
        {
          dispatch_group_notify_cold_1();
        }

        v40[3] = v45;
        if (v45 != -1)
        {
          if (v45)
          {
            v46 = *(v45 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        v40[1] = v42;
        v40[2] = v44;
        if (!v41)
        {
          v41 = v40;
        }

        --v43;
      }

      while (v43);
      v38 = *(v34 + 44);
      v14 = (StatusReg + 160);
      v39 = v49;
    }

    *(v34 + 48) = v38;
    *(v34 + 32) = _dispatch_calloc_typed();
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_apply_with_attr_f_cold_5(v8, v40, v41);
    }

    *(v41 + 16) = 0;
    *(StatusReg + 976) = v8 + 6;
    v47 = atomic_exchange_explicit((v8 + 6), v41, memory_order_release);
    if (v47)
    {
      *(v47 + 16) = v40;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v8[13] = v40;
      *(StatusReg + 976) = 0;
      _dispatch_root_queue_poke_and_wakeup(v8, v39, 0);
    }

    _dispatch_apply_invoke_and_wait(v34);
    *v14 = v52;
  }
}

void dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  _dispatch_apply_with_attr_f(a1, a2, 0, a3, v4, 2);
}

void dispatch_apply(size_t iterations, dispatch_queue_t queue, void *block)
{
  v5 = _dispatch_Block_copy(block);
  v6 = v5;
  if (v5[2])
  {
    v7 = v5[2];
  }

  else
  {
    v7 = 0;
  }

  dispatch_apply_f(iterations, queue, v5, v7);

  _Block_release(v6);
}

void dispatch_apply_with_attr(unint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = _dispatch_Block_copy(aBlock);
  v6 = v5;
  if (v5[2])
  {
    v7 = v5[2];
  }

  else
  {
    v7 = 0;
  }

  _dispatch_apply_with_attr_f(a1, a2, 0, v5, v7, 2);

  _Block_release(v6);
}

double dispatch_apply_attr_init(unint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = -1592086528;
  *(a1 + 16) = ~a1;
  return result;
}

double dispatch_apply_attr_destroy(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t dispatch_apply_attr_set_parallelism(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == -1 || a2 == 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        dispatch_apply_attr_set_parallelism_cold_2();
      }

      dispatch_apply_attr_set_parallelism_cold_3(a3);
    }

    if (result && (*result != -1592086528 || (*(result + 16) ^ result) != 0xFFFFFFFFFFFFFFFFLL))
    {
      _dispatch_apply_with_attr_f_cold_1(result);
    }

    *(result + 8) = 1;
  }

  else
  {
    if (a2 != 1)
    {
      dispatch_apply_attr_set_parallelism_cold_5(a2);
    }

    if (a3 != 1)
    {
      dispatch_apply_attr_set_parallelism_cold_4(a3);
    }
  }

  return result;
}

unint64_t dispatch_apply_attr_query(unint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg + 184;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 8) == "apply")
    {
      v6 = *(v5 + 16);
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = *(StatusReg + 160);
  if (!v7)
  {
    goto LABEL_18;
  }

  do
  {
    v8 = v7;
    v7 = v7[3];
    if (!v7)
    {
      break;
    }

    v9 = v7 == &_dispatch_custom_workloop_root_queue || v7 == &_dispatch_custom_workloop_overcommit_root_queue;
  }

  while (!v9);
  if (v8 >= &_dispatch_root_queues && v8 < &qword_74A80)
  {
LABEL_18:
    v11 = (*(StatusReg + 32) >> 8) & 0x3FFF;
    v9 = v11 == 0;
    v12 = __clz(__rbit32(v11));
    if (v9)
    {
      result = 4;
    }

    else
    {
      result = v12 + 1;
    }

    if ((result - 7) <= 0xFFFFFFF9)
    {
      _dispatch_queue_priority_inherit_from_target_cold_1(result);
    }

    v8 = &(&_dispatch_root_queues)[16 * (3 * result - 3)];
  }

  v13 = *(v8 + 21);
  v14 = v13 >> 12;
  v15 = (v13 >> 8) & 0xF;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  switch(a2)
  {
    case 0:
      return dispatch_apply_attr_query(v3, 1) != 0;
    case 1:
      if ((a3 & 1) == 0)
      {
        if (v3)
        {
          if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
          {
            _dispatch_apply_with_attr_f_cold_1(v3);
          }

          dispatch_apply_attr_query_cold_3(v3, &v22);
          return v22;
        }

        else
        {
          LODWORD(result) = pthread_qos_max_parallelism();
          if (result <= 0)
          {
            LODWORD(result) = MEMORY[0xFFFFFC036];
          }

          return result;
        }
      }

      if (v3)
      {
        if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
        {
          _dispatch_apply_with_attr_f_cold_1(v3);
        }

LABEL_42:
        if (!v6)
        {
          if (v16 <= 2 && !v16 || (v17 = pthread_qos_max_parallelism(), v17 <= 0))
          {
            v17 = MEMORY[0xFFFFFC036];
          }

          if (v17 >= MEMORY[0xFFFFFC034])
          {
            v18 = MEMORY[0xFFFFFC034];
          }

          else
          {
            v18 = v17;
          }

          if (*(v3 + 8))
          {
            if ((v16 - 1) <= 5)
            {
              v19 = dword_4A950[v16 - 1];
            }

            v21 = pthread_qos_max_parallelism();
            if (v21 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = (v21 * *(v3 + 8));
            }
          }

          else
          {
            v20 = -1;
          }

          if (v20 >= v18)
          {
            return v18;
          }

          else
          {
            return v20;
          }
        }

        return 1;
      }

      break;
    case 2:
      if (v3)
      {
        if (*v3 != -1592086528 || (*(v3 + 16) ^ v3) != 0xFFFFFFFFFFFFFFFFLL)
        {
          _dispatch_apply_with_attr_f_cold_1(v3);
        }

        goto LABEL_42;
      }

      break;
    default:
      return result;
  }

  if (v16 <= 2 && !v16 || (LODWORD(result) = pthread_qos_max_parallelism(), result <= 0))
  {
    LODWORD(result) = MEMORY[0xFFFFFC036];
  }

  if (result >= MEMORY[0xFFFFFC034])
  {
    result = MEMORY[0xFFFFFC034];
  }

  else
  {
    result = result;
  }

  if (v6)
  {
    if (v6 < result)
    {
      return result / v6;
    }

    return 1;
  }

  return result;
}

uint64_t _dispatch_apply_set_attr_behavior(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      result = __bsdthread_ctl();
      if (result)
      {
        result = __error();
        if (*result != 45)
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

_BYTE *_dispatch_apply_invoke3(_BYTE *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  add_explicit = atomic_fetch_add_explicit((*result + 8), 1uLL, memory_order_relaxed);
  v24 = v2;
  if (add_explicit >= v2)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v6 = *v1;
  v7 = *(*v1 + 32);
  v25 = *(*v1 + 40);
  *&v26 = 0;
  v8 = *(v6 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  --*(StatusReg + 208);
  v10 = v1[3];
  v27[1] = "apply";
  v27[2] = v10;
  v11 = *(StatusReg + 184);
  v27[0] = v11;
  *(StatusReg + 184) = v27;
  *(&v26 + 1) = 0;
  if (result[8])
  {
    v12 = *(*v1 + 56);
    v26 = *(StatusReg + 160);
    *(StatusReg + 160) = v12;
    *(StatusReg + 168) = &v26;
    LODWORD(v11) = *(v12 + 84);
    v13 = *(StatusReg + 200);
    if (v13)
    {
      v14 = v11 & 0xFFF;
      if ((v11 & 0xFFF) != 0)
      {
        if ((v13 & 0xFFFu) > v14)
        {
          v14 = v13 & 0xFFF;
        }

        if (v11 >> 12 <= v14 >> 8)
        {
          v15 = 0x40000000;
        }

        else
        {
          v15 = 1140912128;
        }

        LODWORD(v11) = v13 & 0x880F0000 | v14 | v15 & v11;
      }

      else
      {
        v16 = v13 | 0x40000000;
        if ((v13 & 0xFFF) == 0)
        {
          v16 = *(StatusReg + 200);
        }

        v17 = v11 >> 12;
        LODWORD(v11) = v16 & 0xFFFF0FFF | v11 & 0x400F000;
        if (v17 <= ((v16 >> 8) & 0xF))
        {
          LODWORD(v11) = v16;
        }
      }
    }

    else
    {
LABEL_37:
      LODWORD(v11) = v11 & 0xFFF0FFFF;
    }

    *(StatusReg + 200) = v11;
    v5 = v13 & 0xFFF0FFFF;
  }

  v22 = v5;
  v18 = *(v1 + 10);
  v23 = v4;
  do
  {
    if ((v18 & 0x1000000) != 0)
    {
      v19 = _dispatch_autorelease_pool_push();
      if (v8)
      {
LABEL_19:
        if (v7)
        {
          v20 = v7;
        }

        else
        {
          v20 = 0;
        }

        result = _dispatch_client_callout2(v25, add_explicit, v20);
        goto LABEL_29;
      }
    }

    else
    {
      v19 = 0;
      if (v8)
      {
        goto LABEL_19;
      }
    }

    if ((v8 & 2) == 0)
    {
      LODWORD(v13) = v8;
      qword_78298 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
      qword_782C8 = v8;
      __break(1u);
      goto LABEL_37;
    }

    if (v7)
    {
      v21 = v7;
    }

    else
    {
      v21 = 0;
    }

    result = _dispatch_client_callout3_a(v25, add_explicit, *(v4 + 4), v21);
    v4 = v23;
LABEL_29:
    ++*(StatusReg + 208);
    LODWORD(v11) = 1;
    add_explicit = atomic_fetch_add_explicit((v1 + 1), 1uLL, memory_order_relaxed);
    if (v19)
    {
      result = _dispatch_autorelease_pool_pop();
    }
  }

  while (add_explicit < v24);
  if (v4[8])
  {
    *(StatusReg + 200) = *(StatusReg + 200) & 0xF0000 | v22;
    *(StatusReg + 160) = v26;
  }

  *(StatusReg + 184) = v27[0];
  return result;
}

uint64_t _dispatch_apply_clear_attr_behavior(uint64_t result)
{
  if (result && *(result + 8))
  {
    result = __bsdthread_ctl();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

void _dispatch_apply_serial(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  --*(StatusReg + 208);
  v5 = v2[7];
  if (v5)
  {
    do
    {
      v6 = *(v5 + 80);
      v5 = *(v5 + 24);
      if (v5)
      {
        v7 = (v6 & 0x30000) == 0;
      }

      else
      {
        v7 = 0;
      }
    }

    while (v7);
    v8 = (v6 & 0x10000) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 0;
  if (v3 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v3;
  }

  do
  {
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = _dispatch_autorelease_pool_push();
    }

    v12 = v2[6];
    if (v12)
    {
      if (v2[4])
      {
        v14 = v2[4];
      }

      else
      {
        v14 = 0;
      }

      _dispatch_client_callout2(v2[5], v9, v14);
    }

    else
    {
      if ((v12 & 2) == 0)
      {
        qword_78298 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
        qword_782C8 = v12;
        __break(1u);
        return;
      }

      if (v2[4])
      {
        v13 = v2[4];
      }

      else
      {
        v13 = 0;
      }

      _dispatch_client_callout3_a(v2[5], v9, 0, v13);
    }

    ++*(StatusReg + 208);
    if (v11)
    {
      _dispatch_autorelease_pool_pop();
    }

    ++v9;
  }

  while (v10 != v9);
  v15 = *(a1 + 32);
  if (v15)
  {
    free(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v16[2] = 0u;
    v16[3] = 0u;
    *v16 = 0u;
    v16[1] = 0u;
    free(*(a1 + 56));
  }

  v17 = *(StatusReg + 176);
  if (v17)
  {
    v18 = *(v17 + 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18 > _dispatch_continuation_cache_limit)
  {

    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v17;
    *(a1 + 8) = v18;
    *(StatusReg + 176) = a1;
  }
}

void _dispatch_apply_redirect(uint64_t a1)
{
  v1 = (*(a1 + 44) - 1);
  v2 = *(*a1 + 56);
  add_explicit = v2;
  while (1)
  {
    if (*(add_explicit + 80) != 1)
    {
      v4 = *(add_explicit + 56);
      while ((v4 & 0x20000000000000) == 0)
      {
        LODWORD(v5) = 4096 - ((v4 >> 41) & 0xFFF);
        if (v5 >= v1)
        {
          v5 = v1;
        }

        else
        {
          v5 = v5;
        }

        v6 = v4;
        atomic_compare_exchange_strong_explicit((add_explicit + 56), &v6, v4 + (v5 << 41), memory_order_relaxed, memory_order_relaxed);
        v7 = v6 == v4;
        v4 = v6;
        if (v7)
        {
          goto LABEL_10;
        }
      }
    }

    v5 = 0;
LABEL_10:
    v8 = (v1 - v5);
    if (v1 <= v5)
    {
      goto LABEL_11;
    }

    if (v2 != add_explicit)
    {
      v9 = v2;
      do
      {
        atomic_fetch_add_explicit((v9 + 56), 0xFFFFFE0000000000 * v8, memory_order_relaxed);
        v9 = *(v9 + 24);
      }

      while (v9 != add_explicit);
    }

    if (!v5)
    {
      break;
    }

    *(a1 + 44) -= v8;
    v1 = v5;
LABEL_11:
    if (!*(a1 + 40))
    {
      *(a1 + 40) = (*(add_explicit + 80) << 8) & 0x3000000;
    }

    add_explicit = *(add_explicit + 24);
    if (!*(add_explicit + 24))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = *(a1 + 44);
      v12 = v11 - 1;
      v23 = a1;
      v22 = v11 - 1;
      if (v11 < 2)
      {
        v14 = 0;
        v13 = 0;
LABEL_38:
        *(a1 + 48) = v11;
        *(a1 + 32) = _dispatch_calloc_typed();
        if (!MEMORY[0xFFFFFC100])
        {
          goto LABEL_39;
        }
      }

      else
      {
        v20 = v1;
        v21 = add_explicit;
        v13 = 0;
        v14 = 0;
        v1 = StatusReg[4] | 0x10000000;
        while (1)
        {
          v15 = v13;
          v13 = StatusReg[22];
          if (v13)
          {
            StatusReg[22] = v13[2];
          }

          else
          {
            v13 = _dispatch_continuation_alloc_from_heap();
            a1 = v23;
          }

          *v13 = 260;
          v13[4] = _dispatch_apply_redirect_invoke;
          v13[5] = a1;
          v16 = StatusReg[28];
          if (v16)
          {
            add_explicit = atomic_fetch_add_explicit((v16 + 12), 1u, memory_order_relaxed);
            a1 = v23;
            if (add_explicit <= 0)
            {
              break;
            }
          }

          v13[3] = v16;
          if (v16 != -1)
          {
            if (v16)
            {
              v17 = *(v16 + 32);
            }

            if (MEMORY[0xFFFFFC100])
            {
              kdebug_trace();
              a1 = v23;
            }
          }

          v13[1] = v1;
          v13[2] = v15;
          if (!v14)
          {
            v14 = v13;
          }

          if (!--v12)
          {
            v11 = *(a1 + 44);
            v1 = v20;
            add_explicit = v21;
            goto LABEL_38;
          }
        }

        qword_78298 = "API MISUSE: Voucher resurrection";
        __break(1u);
      }

      v19 = v13;
      do
      {
        if (v19 == v14)
        {
          break;
        }

        v19 = v19[2];
      }

      while (v19);
LABEL_39:
      *(v14 + 16) = 0;
      StatusReg[122] = add_explicit + 48;
      v18 = atomic_exchange_explicit((add_explicit + 48), v14, memory_order_release);
      if (v18)
      {
        *(v18 + 16) = v13;
        StatusReg[122] = 0;
      }

      else
      {
        *(add_explicit + 104) = v13;
        StatusReg[122] = 0;
        _dispatch_root_queue_poke_and_wakeup(add_explicit, v22, 0);
      }

      _dispatch_apply_invoke_and_wait(v23);
      for (; v2 != add_explicit; v2 = *(v2 + 24))
      {
        atomic_fetch_add_explicit((v2 + 56), 0xFFFFFE0000000000 * v1, memory_order_relaxed);
      }

      return;
    }
  }

  _dispatch_apply_serial(a1);
}

void _dispatch_apply_invoke_and_wait(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 52), 1u, memory_order_relaxed);
  context = a1;
  v16 = xmmword_4A940;
  _dispatch_apply_set_attr_behavior(*(a1 + 56));
  v3 = (*(a1 + 32) + 8 * add_explicit);
  if (*v3 != -1)
  {
    dispatch_once_f(v3, &context, _dispatch_apply_invoke3);
  }

  _dispatch_apply_clear_attr_behavior(*(a1 + 56));
  v4 = *(a1 + 48);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 8 * add_explicit;
    do
    {
      if (v7 != v5)
      {
        v8 = *(a1 + 32);
        if (*(v8 + v5) != -1)
        {
          dispatch_once_f((v8 + v5), 0, _dispatch_no_op);
        }

        v4 = *(a1 + 48);
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v4);
  }

  if (atomic_fetch_add_explicit((a1 + 44), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v10[2] = 0u;
      v10[3] = 0u;
      *v10 = 0u;
      v10[1] = 0u;
      free(*(a1 + 56));
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = *(StatusReg + 176);
    if (v12)
    {
      v13 = *(v12 + 8) + 1;
    }

    else
    {
      v13 = 1;
    }

    if (v13 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v12;
      *(a1 + 8) = v13;
      *(StatusReg + 176) = a1;
    }
  }

  v14 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  ++*(v14 + 208);
}

dispatch_source_t dispatch_source_create(dispatch_source_type_t type, uintptr_t handle, uintptr_t mask, dispatch_queue_t queue)
{
  v6 = (*(type + 4))(type, handle, mask);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = _dispatch_object_alloc(_OS_dispatch_source_vtable, 120);
  v9 = v8;
  v10 = *(*v7 + 10);
  *(v8 + 8) += 2;
  if (*(*v8 + 16) == 19)
  {
    ++*(v8 + 8);
  }

  *(v8 + 16) = -1985229329;
  if ((v10 & 2) != 0)
  {
    v11 = 67108865;
  }

  else
  {
    v11 = 4194305;
  }

  *(v8 + 80) = v11;
  *(v8 + 56) = 0x19FFE0000000000;
  *(v8 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v8 + 72) = "source";
  *(v8 + 88) = v7;
  *(v7 + 8) = ~v8;
  if (queue)
  {
    if ((*(queue + 87) & 8) != 0 && (*(v7 + 29) & 2) == 0)
    {
      dispatch_source_create_cold_1(v8);
    }

    if (*(queue + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((queue + 8), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
    queue = &off_74680;
  }

  *(v8 + 24) = queue;
  if ((*(v7 + 29) & 2) != 0 && (*(v7 + 30) & 0x10) != 0)
  {
    dispatch_source_set_timer(v8, 0, handle, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v9;
}

void dispatch_source_set_timer(dispatch_source_t source, dispatch_time_t start, uint64_t interval, uint64_t leeway)
{
  v9 = *(source + 11);
  if ((*(v9 + 29) & 2) == 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Attempt to set timer on a non-timer source";
    qword_782C8 = source;
    __break(1u);
    goto LABEL_51;
  }

  v5 = leeway;
  v6 = start;
  v11 = *(v9 + 30);
  if ((v11 & 0x10) != 0)
  {
    v13 = _dispatch_calloc_typed();
    v4 = v13;
    *(v13 + 24) = 0;
    if (v6)
    {
      if (v6 != -1)
      {
        goto LABEL_97;
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;
      *v13 = 0x7FFFFFFFFFFFFFFFLL;
      v16 = 8;
      v17 = 16;
      interval = 0x7FFFFFFFFFFFFFFFLL;
LABEL_49:
      *(v4 + v17) = v15;
      *(v4 + v16) = interval;
      v11 = *(v4 + 24);
      goto LABEL_75;
    }

    if (interval)
    {
      v18 = 16666666;
      v19 = 1892160075;
      if ((v11 & 0x20) == 0)
      {
        v19 = 31536000000;
        v18 = 1000000;
      }

      v20 = v18 * interval;
      if (v19 >= interval)
      {
        v13 = v20;
      }

      else
      {
        v13 = 31536000000000000;
      }

      v7 = &_dispatch_host_time_nano2mach;
      v14 = _dispatch_host_time_nano2mach;
      if (!_dispatch_host_time_nano2mach)
      {
        if (v13 > 0x7FFFFFFFFFFFFFFELL)
        {
          interval = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v13 > 0x5555555555555554)
        {
          interval = 3 * (v13 / 0x7D);
        }

        else
        {
          v21 = (3 * v13 * 0x624DD2F1A9FBE77uLL) >> 64;
          interval = (v21 + ((3 * v13 - v21) >> 1)) >> 6;
        }

        goto LABEL_26;
      }
    }

    else
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Setting interval to 0";
      __break(1u);
    }

    interval = v14(v13);
LABEL_26:
    v6 = mach_absolute_time();
    if (v5 > 0x3E8)
    {
      if (v5 != -1)
      {
        goto LABEL_98;
      }

      if ((v11 & 0x20) != 0)
      {
        if (*v7)
        {
          v22 = (*v7)(16666666);
        }

        else
        {
          v22 = 399999;
        }
      }

      else
      {
        v22 = interval >> 1;
      }
    }

    else
    {
      v22 = interval * v5 / 0x3E8;
    }

    v25 = (v6 + interval) / interval * interval;
    *(v4 + 24) = 0;
    *v4 = v25;
    v15 = v22 + v25;
    v16 = 16;
    v17 = 8;
    goto LABEL_49;
  }

  v4 = _dispatch_calloc_typed();
  if (interval)
  {
    if (interval >= 0x7FFFFFFFFFFFFFFFLL)
    {
      interval = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v6 != -1)
    {
      goto LABEL_9;
    }

LABEL_55:
    v11 = (*(v9 + 30) >> 2) & 3;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_56;
  }

LABEL_51:
  if (v6 == -1)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    interval = 1;
    goto LABEL_55;
  }

  _dispatch_bug_deprecated("Setting timer interval to 0 requests a 1ns timer, did you mean FOREVER (a one-shot timer)?");
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  interval = 1;
LABEL_9:
  if (v6 == 0x8000000000000000)
  {
    v11 = 1;
    v12 = mach_continuous_time();
    goto LABEL_57;
  }

  if (v6 == -2)
  {
    v12 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v11 = 2;
    goto LABEL_68;
  }

  if (v6)
  {
    v23 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x4000000000000000) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    if ((v6 & 0x4000000000000000) != 0)
    {
      v23 = -v6;
    }

    if (v6 < 0)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    if (v6 >= 0)
    {
      v23 = v6;
    }

    if (v23 >> 62)
    {
      v12 = -1;
    }

    else
    {
      v12 = v23;
    }

LABEL_56:
    if (v11 == 2)
    {
      goto LABEL_68;
    }

    goto LABEL_57;
  }

  v12 = mach_absolute_time();
  v11 = 0;
LABEL_57:
  v6 = 0x5555555555555554;
  if (_dispatch_host_time_nano2mach)
  {
    v7 = v12;
    v32 = _dispatch_host_time_nano2mach(interval);
    if (v32 <= 1)
    {
      interval = 1;
    }

    else
    {
      interval = v32;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v5 = _dispatch_host_time_nano2mach(v5);
      v12 = v7;
      goto LABEL_68;
    }

    goto LABEL_99;
  }

  if (interval > 0x7FFFFFFFFFFFFFFELL)
  {
    interval = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = (3 * interval * 0x624DD2F1A9FBE77uLL) >> 64;
    v27 = (v26 + ((3 * interval - v26) >> 1)) >> 6;
    if (interval > 0x5555555555555554)
    {
      v27 = 3 * (interval / 0x7D);
    }

    if (v27 <= 1)
    {
      interval = 1;
    }

    else
    {
      interval = v27;
    }
  }

  while (1)
  {
    if (v5)
    {
      if (v5 > 0x7FFFFFFFFFFFFFFELL)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v5 > v6)
      {
        v5 = 3 * (v5 / 0x7D);
      }

      else
      {
        v28 = (3 * v5 * 0x624DD2F1A9FBE77uLL) >> 64;
        v5 = (v28 + ((3 * v5 - v28) >> 1)) >> 6;
      }
    }

LABEL_68:
    v29 = interval >> 1;
    if (v5 < interval >> 1)
    {
      v29 = v5;
    }

    if (interval >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v5;
    }

    *(v4 + 24) = v11;
    v30 = v29 + v12;
    if (v30 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *v4 = v12;
    *(v4 + 8) = v30;
    *(v4 + 16) = interval;
LABEL_75:
    if (v11 == ((*(v9 + 30) >> 2) & 3) || *(v9 + 28) != 236)
    {
      break;
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Attempting to modify timer clock";
    __break(1u);
LABEL_97:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Start value is not DISPATCH_TIME_NOW or DISPATCH_TIME_FOREVER";
    __break(1u);
LABEL_98:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Passing an invalid leeway";
    __break(1u);
LABEL_99:
    v12 = v7;
  }

  v31 = atomic_exchange_explicit((v9 + 104), v4, memory_order_release);
  if (v31)
  {
    free(v31);
  }

  (*(*source + 64))(source, 0, 2);
}

void _dispatch_source_dispose(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  if (MEMORY[0xFFFFFC100])
  {
    a1 = _dispatch_source_dispose_cold_1();
  }

  __swp(a1, (*(v3 + 88) + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (*(v3 + 88) + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (*(v3 + 88) + 48));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  _dispatch_unote_dispose(*(v3 + 88), 0);
  *(v3 + 88) = 0;

  _dispatch_lane_class_dispose(v3, a2);
}

uint64_t _dispatch_source_xref_dispose(uint64_t a1)
{
  v2 = *(a1 + 80);
  if ((v2 & 0x14000000) == 0x4000000 && *(*(a1 + 88) + 48))
  {
    _dispatch_source_xref_dispose_cold_1(v2);
  }

  v3 = *(*a1 + 64);

  return v3();
}

uintptr_t dispatch_source_get_mask(dispatch_source_t source)
{
  v1 = *(source + 11);
  if ((*(source + 20) & 0x10000000) != 0)
  {
    return 0;
  }

  if ((*(v1 + 29) & 0x10) != 0)
  {
    return 0x80000000;
  }

  if ((*(v1 + 29) & 2) != 0)
  {
    return *(v1 + 30);
  }

  return *(v1 + 32);
}

uintptr_t dispatch_source_get_handle(dispatch_source_t source)
{
  v1 = *(source + 11);
  if (*(v1 + 28) != 236)
  {
    return *(v1 + 24);
  }

  v2 = (*(v1 + 30) >> 2) & 3;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 3;
    }

    return *(v1 + 24);
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uintptr_t dispatch_source_get_data(dispatch_source_t source)
{
  v1 = *(source + 11);
  v2 = *(v1 + 29);
  if ((v2 & 0x10) != 0)
  {
    return 0x80000000;
  }

  v3 = *(v1 + 64);
  if ((v2 & 4) != 0)
  {
    return v3;
  }

  else
  {
    return v3;
  }
}

uint64_t dispatch_source_get_extended_data(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 88);
    if ((*(v4 + 29) & 4) != 0)
    {
      v7 = *(v4 + 64);
      v6 = v7;
      v5 = HIDWORD(v7);
    }

    else
    {
      v5 = 0;
      v6 = (*(v4 + 29) & 0x10) != 0 ? 0x80000000 : *(v4 + 64);
    }

    if (a3 >= 8)
    {
      *a2 = v6;
      if (a3 >= 0x10)
      {
        a2[1] = v5;
        if (a3 != 16)
        {
          bzero(a2 + 2, a3 - 16);
        }
      }
    }
  }

  if (a3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return a3;
  }
}

void dispatch_source_merge_data(dispatch_source_t source, uintptr_t value)
{
  if ((*(source + 20) & 0x10800000) == 0)
  {
    v2 = *(source + 11);
    v3 = *(v2 + 28);
    switch(v3)
    {
      case 233:
        *(v2 + 72) = value;
        break;
      case 234:
        atomic_fetch_or_explicit((v2 + 72), value, memory_order_relaxed);
        break;
      case 235:
        atomic_fetch_add_explicit((v2 + 72), value, memory_order_relaxed);
        break;
      default:
        dispatch_source_merge_data_cold_2(*(v2 + 28));
    }

    dispatch_source_merge_data_cold_1(source);
  }
}

void _dispatch_source_set_handler(unint64_t a1, uint64_t (**aBlock)(), uint64_t a3, int a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 176);
  if (!v9)
  {
    v9 = _dispatch_continuation_alloc_from_heap();
    if (aBlock)
    {
      goto LABEL_3;
    }

LABEL_16:
    *v9 = 256;
    v9[4] = 0;
    goto LABEL_17;
  }

  *(StatusReg + 176) = v9[2];
  if (!aBlock)
  {
    goto LABEL_16;
  }

LABEL_3:
  v10 = 4 * (a3 != 0);
  if (!a4)
  {
    v16 = *(a1 + 32);
    *v9 = v10 | 0x140;
    v9[4] = aBlock;
    v9[5] = v16;
LABEL_13:
    v9[3] = 0;
    if (MEMORY[0xFFFFFC100])
    {
LABEL_44:
      kdebug_trace();
    }

    v9[1] = 0;
    goto LABEL_17;
  }

  v11 = _dispatch_Block_copy(aBlock);
  v12 = v10 | 0x110;
  v13 = aBlock[2];
  if (v13)
  {
    v14 = aBlock[2];
    if (v13 != _dispatch_block_special_invoke)
    {
      v15 = aBlock[2];
LABEL_10:
      if (a3)
      {
        v15 = _dispatch_call_block_and_release;
      }

      *v9 = v12;
      v9[4] = v15;
      v9[5] = v11;
      goto LABEL_13;
    }
  }

  else if (_dispatch_block_special_invoke)
  {
    v15 = 0;
    goto LABEL_10;
  }

  *v9 = v12;
  v9[5] = v11;
  _dispatch_continuation_init_slow(v9, a1, 1073741888);
LABEL_17:
  v17 = *(a1 + 56);
  do
  {
    if ((~v17 & 0x180000000000000) != 0)
    {
      v22 = *(a1 + 80);
      if ((v22 & 0x4000000) != 0)
      {
        qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change a handler of this source after it has been activated";
        qword_782C8 = a3;
        __break(1u);
      }

      else
      {
        if ((v22 & 0x10000000) != 0)
        {
LABEL_40:
          v9[6] = a3;

          _dispatch_barrier_trysync_or_async_f(a1, v9, _dispatch_source_set_handler_slow, 0);
          return;
        }

        if (!MEMORY[0xFFFFFC100])
        {
LABEL_38:
          if (a3 == 2 || !aBlock)
          {
            if (a3 == 2)
            {
              v23 = "Setting registration handler after the source has been activated";
            }

            else
            {
              v23 = "Clearing handler after the source has been activated";
            }

            _dispatch_bug_deprecated(v23);
          }

          goto LABEL_40;
        }
      }

      kdebug_trace();
      goto LABEL_38;
    }

    v18 = v17;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v17, v17 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
  }

  while (v17 != v18);
  if ((v18 & 0x200000000000000) != 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
    __break(1u);
    goto LABEL_44;
  }

  if (v9[4])
  {
    if ((*v9 & 0x40) != 0)
    {
      v9[5] = *(a1 + 32);
    }
  }

  else
  {
    v19 = *(StatusReg + 176);
    if (v19)
    {
      v20 = *(v19 + 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v20 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(v9);
    }

    else
    {
      v9[2] = v19;
      *(v9 + 2) = v20;
      *(StatusReg + 176) = v9;
    }

    v9 = 0;
  }

  v21 = atomic_exchange_explicit((*(a1 + 88) + 8 * a3 + 40), v9, memory_order_release);
  if (v21)
  {
    _dispatch_source_handler_dispose(v21);
  }

  _dispatch_lane_resume(a1, 0);
}

void dispatch_source_set_mandatory_cancel_handler(unint64_t a1, uint64_t (**a2)())
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2 & 0xFBBFFFFF | 0x4000000;
    if (v3 == v2)
    {
      break;
    }

    v4 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  _dispatch_source_set_handler(a1, a2, 1, 1);
}

void dispatch_source_set_mandatory_cancel_handler_f(unint64_t a1, uint64_t (**a2)())
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2 & 0xFBBFFFFF | 0x4000000;
    if (v3 == v2)
    {
      break;
    }

    v4 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  _dispatch_source_set_handler(a1, a2, 1, 0);
}

BOOL _dispatch_source_will_reenable_kevent_4NW(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (((v1 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_source_will_reenable_kevent_4NW_cold_1();
  }

  v2 = *(*(a1 + 88) + 16);
  return (v2 & 3) == 0 && v2 != 0;
}

void _dispatch_source_activate(uint64_t a1)
{
  v2 = *(a1 + 88);
  v11 = 0;
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    _dispatch_source_activate_cold_1(a1);
    return;
  }

  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = *v3;
    if (*v3 < 0x1000)
    {
      if ((v4 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((*(v4 + 16) & 0xF0) != 0x10 || (v3[10] & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    atomic_fetch_or_explicit((a1 + 80), 0x80000u, memory_order_relaxed);
LABEL_9:
    v5 = v3[1];
    if ((v5 & 0x10000000) != 0 || (v6 = *(a1 + 84), (v6 & 0x20000000) != 0) || (v6 & 0x44000FFF) == 0)
    {
      v7 = (__clz(__rbit32((v5 >> 8) & 0x3FFF)) << 8) + 256;
      if (((v5 >> 8) & 0x3FFF) == 0)
      {
        v7 = 0;
      }

      *(a1 + 84) = v7 & 0xFFFFFF00 | v3[1];
    }

    if ((*v3 & 0x40) != 0)
    {
      v3[5] = *(a1 + 32);
    }

    goto LABEL_17;
  }

  _dispatch_bug_deprecated("dispatch source activated with no event handler set");
LABEL_17:
  _dispatch_lane_activate(a1);
  if ((*(v2 + 29) & 3) != 0 && (*(a1 + 116) & 1) == 0)
  {
    v8 = _dispatch_queue_compute_priority_and_wlh(a1, &v11);
    if (v8)
    {
      v9 = v8;
      v10 = v11;
      if (v11 != -4 && v11 && *(*v11 + 16) == 18 && *(v2 + 28) == 236 && *(v2 + 24) <= 5u)
      {
        if (!v11[6])
        {
          *(v10 + 48) = _dispatch_calloc_typed();
          v10 = v11;
        }

        *(v2 + 29) |= 1u;
        if (v10 != -4 && v10 && (atomic_fetch_add_explicit((v10 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
        {
          dispatch_set_target_queue_cold_2();
        }

        *(v2 + 16) = v10;
      }

      _dispatch_source_install(a1, v10, v9);
    }
  }
}

void _dispatch_source_refs_finalize_unregistration(uint64_t a1)
{
  v4 = *(a1 + 80);
  v2 = (a1 + 80);
  v3 = v4;
  do
  {
    v5 = v3;
    v6 = v3 & 0x1FFFFFFF | 0x80000000;
    if (v6 == v3)
    {
      goto LABEL_10;
    }

    atomic_compare_exchange_strong_explicit(v2, &v3, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v5);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_10:
    qword_78298 = "BUG IN LIBDISPATCH: Source finalized twice";
    qword_782C8 = v5;
    __break(1u);
    return;
  }

  if ((v5 & 0x20000000) != 0)
  {
    _dispatch_wake_by_address();
  }

  _os_object_release_internal(a1);
}

void _dispatch_source_install(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 88);
  *(a1 + 116) |= 1u;
  _dispatch_unote_register(v4, a2, a3);
  if ((v5 & 1) == 0)
  {

    _dispatch_source_refs_finalize_unregistration(a1);
  }
}

void _dispatch_source_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v170 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  }

  if ((a3 & 2) != 0)
  {
    v170 = 0x40020000000001;
    v8 = a3 & 0x40000;
    goto LABEL_5;
  }

  v130 = (*(a1 + 80) << 41) - 0x20000000000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v132 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v8 = a3 & 0x40000;
  if ((a3 & 0x40000) != 0)
  {
    v133 = 0x4000000000;
  }

  else
  {
    v133 = 1;
  }

  v134 = 0xFFE00000FFFFFFFCLL;
  if ((a3 & 0x40000) == 0)
  {
    v134 = 0xFFE00040FFFFFFFCLL;
  }

  if (a3)
  {
    v135 = 0xFFE00040FFFFFFFCLL;
  }

  else
  {
    v135 = v134;
  }

  v136 = *(StatusReg + 200);
  v137 = (v136 >> 8) & 0xF;
  v138 = v136 >> 12;
  v139 = HIWORD(v136) & 0xF;
  if (v137 <= v138)
  {
    v137 = v138;
  }

  if (v137 > v139)
  {
    v139 = v137;
  }

  v3 = 0x20000000000000;
  while (2)
  {
    v140 = *(a1 + 56);
    while ((v140 & v135) != 0)
    {
      if ((a3 & 1) != 0 || (v146 = v140, atomic_compare_exchange_strong_explicit((a1 + 56), &v146, v140 ^ v133, memory_order_acquire, memory_order_acquire), v146 == v140))
      {
        v36 = 0;
        v170 = 0;
        goto LABEL_342;
      }

      v140 = v146;
LABEL_378:
      v3 = 0x20000000000000;
    }

    if ((v140 & 0x1000000000) != 0)
    {
      v141 = HIDWORD(v140) & 7;
      if (v141 > v139)
      {
        v147 = *(StatusReg + 24);
        v168 = v130;
        _pthread_workqueue_override_start_direct();
        v3 = 0x20000000000000;
        v130 = v168;
        v148 = *(StatusReg + 200);
        v139 = v141;
        if ((HIWORD(v148) & 0xF) < v141)
        {
          *(StatusReg + 200) = v148 & 0xFFF0FFFF | (v141 << 16);
          v139 = v141;
        }

        continue;
      }
    }

    break;
  }

  v142 = (v140 >> 40) & 1;
  if (!((v130 + v140) >> 53))
  {
    LODWORD(v142) = 1;
  }

  if (v142)
  {
    v143 = 0x60000000000000;
  }

  else
  {
    v143 = 0x20000000000000;
  }

  v144 = v140 & 0x7700000001 | v132 | v143;
  v145 = v140;
  atomic_compare_exchange_strong_explicit((a1 + 56), &v145, v144, memory_order_acquire, memory_order_acquire);
  if (v145 != v140)
  {
    v140 = v145;
    goto LABEL_378;
  }

  v149 = 0x60000000000000;
  if ((a3 & 1) == 0)
  {
    v149 = v133 | 0x60000000000000;
  }

  v170 = (v144 & v149) - (v140 & 0x3FFE0000000000);
  if (!v170)
  {
    v36 = 0;
    goto LABEL_342;
  }

LABEL_5:
  if (v8)
  {
    v166 = 0;
  }

  else
  {
    v9 = *(a1 + 84);
    v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = *(v10 + 200);
    if (v11)
    {
      v12 = v9 >> 12;
      v13 = v9 & 0xFFF;
      if ((v9 & 0xFFF) != 0)
      {
        if ((v11 & 0xFFFu) > v13)
        {
          v13 = v11 & 0xFFF;
        }

        v3 = 1140912128;
        if (v12 <= v13 >> 8)
        {
          v14 = 0x40000000;
        }

        else
        {
          v14 = 1140912128;
        }

        v15 = v11 & 0x880F0000 | v13 | v14 & v9;
      }

      else
      {
        v16 = v11 | 0x40000000;
        if ((v11 & 0xFFF) == 0)
        {
          v16 = *(v10 + 200);
        }

        v15 = v16 & 0xFFFF0FFF | v9 & 0x400F000;
        if (v12 <= ((v16 >> 8) & 0xF))
        {
          v15 = v16;
        }
      }
    }

    else
    {
      v15 = v9 & 0xFFF0FFFF;
    }

    *(v10 + 200) = v15;
    v166 = v11 & 0xFFF0FFFF;
  }

  v17 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  v18 = *(a1 + 80);
  if (((v18 << 8) & 0x3000000) != 0)
  {
    v17 = (v18 << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v163 = v17 | 0x10;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v167 = v20;
  v162 = v19;
  while (2)
  {
    while (2)
    {
      v21 = v17;
      if ((v17 & 0x1000002) != 2)
      {
        v28 = *(v20 + 160);
        v29 = *(a1 + 88);
        v164 = v28;
        if ((v17 & 0x40000) == 0)
        {
          v30 = *(v20 + 232);
          v31 = v30 ? *(v30 + 24) : -4;
          v41 = *(v29 + 16) & 0xFFFFFFFFFFFFFFFCLL;
          if (v41 == -4)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41 == 0;
            v34 = *(v29 + 16) < 0;
          }

          if (!v42 && v31 != v41)
          {
            _dispatch_source_handle_wlh_change(a1);
            v28 = v164;
          }
        }

        if (*(a1 + 48))
        {
          v44 = _dispatch_lane_serial_drain(a1, a2, v21 | 0x4000000, &v170);
          v28 = v164;
          v36 = v44;
          v45 = v21 & 0xFBFFFFFF;
        }

        else
        {
          v36 = 0;
          v45 = v21;
        }

        v46 = &_dispatch_mgr_q;
        if (*(v29 + 29))
        {
          v46 = *(a1 + 24);
        }

        v47 = a2;
        if ((*(a1 + 116) & 1) == 0)
        {
          if (v28 != v46)
          {
LABEL_66:
            v36 = v46;
            goto LABEL_177;
          }

          v51 = v45;
          if ((v45 & 0x10000) != 0)
          {
            v52 = *(v20 + 200);
          }

          else
          {
            v52 = 0x2000000;
          }

          v53 = *(v20 + 232);
          if (v53)
          {
            v54 = *(v53 + 24);
          }

          else
          {
            v54 = -4;
          }

          _dispatch_source_install(a1, v54, v52);
          v28 = v164;
          v45 = v51;
        }

        if (*(a1 + 56) >> 55)
        {
LABEL_213:
          v36 = *(a1 + 24);
          goto LABEL_177;
        }

        if ((*(v29 + 29) & 2) != 0 && *(v29 + 104) && (*(a1 + 80) & 0x10800000) == 0)
        {
          if (v28 != v46)
          {
            goto LABEL_66;
          }

          v59 = v45;
          _dispatch_timer_unote_configure(*(a1 + 88));
          v45 = v59;
          v28 = v164;
        }

        if (*(v29 + 56))
        {
          v57 = v36;
          v36 = *(a1 + 24);
          if (v28 != v36)
          {
            goto LABEL_177;
          }

          __swp(v36, (*(a1 + 88) + 56));
          if ((*(a1 + 80) & 0x10800000) != 0)
          {
            v58 = v45;
            if ((v45 & 0x1000000) != 0)
            {
              _dispatch_autorelease_pool_push();
              _dispatch_source_handler_dispose(v36);
              _dispatch_autorelease_pool_pop();
            }

            else
            {
              _dispatch_source_handler_dispose(v36);
            }

            v36 = v57;
            v28 = v164;
            v45 = v58;
          }

          else
          {
            if ((*v36 & 0x40) != 0)
            {
              *(v36 + 40) = *(a1 + 32);
            }

            v73 = v36;
            v74 = v45;
            _dispatch_continuation_pop(v73, 0, v45, v164);
            v45 = v74;
            v28 = v164;
            v36 = v57;
          }
        }

        if ((*(v29 + 16) & 2) != 0)
        {
          v75 = v45;
          _dispatch_source_refs_unregister(a1, 5);
          v45 = v75;
          v28 = v164;
        }

        v76 = *(a1 + 80);
        v77 = v76 & 0x10800000;
        if ((v76 & 0x10800000) != 0)
        {
          v78 = 0;
          goto LABEL_145;
        }

        if (!*(v29 + 72))
        {
          v78 = 0;
          goto LABEL_200;
        }

        v161 = v36;
        v36 = *(a1 + 24);
        if (v28 != v36)
        {
          goto LABEL_177;
        }

        v81 = v45;
        v82 = *(a1 + 88);
        v83 = *(v82 + 40);
        __swp(v3, (v82 + 72));
        if ((*(v82 + 29) & 2) != 0 && (*(v82 + 30) & 0x40) != 0)
        {
          v28 = v164;
        }

        v84 = *(*v82 + 9);
        if (v84 == 3)
        {
          v85 = ~v3;
        }

        else if (v84 == 5)
        {
          v85 = v3 >> 1;
          if (v3)
          {
            v86 = *(a1 + 88);
            v88 = *(v86 + 80);
            v87 = (v86 + 80);
            if (v88 <= 0x7FFFFFFFFFFFFFFELL)
            {
              v89 = *(*(a1 + 88) + 24) / 3u;
              v156 = v87;
              v159 = v3;
              v154 = *(a1 + 88);
              if (v89 == 2)
              {
                v90 = clock_gettime_nsec_np(_CLOCK_REALTIME);
              }

              else
              {
                v90 = v89 == 1 ? mach_continuous_time() : mach_absolute_time();
              }

              v3 = v159;
              v28 = v164;
              if (v90 >= *v156)
              {
                v119 = v154[12];
                v120 = (v90 - *v156) / v119;
                if ((v120 + 1 + v85) >= 0)
                {
                  v121 = v120 + 1;
                }

                else
                {
                  v121 = v85 ^ 0x7FFFFFFFFFFFFFFFLL;
                }

                if (v119 > 0x7FFFFFFFFFFFFFFELL)
                {
                  *v156 = -1;
                  v156[1] = -1;
                }

                else
                {
                  v122 = v121 * v119;
                  v123 = v122 + *v156;
                  v124 = v154[11] + v122;
                  v154[10] = v123;
                  v154[11] = v124;
                }

                v85 += v121;
              }
            }
          }
        }

        else
        {
          v85 = v3;
          if (!v3)
          {
            if (*(v82 + 28) == 233)
            {
              goto LABEL_328;
            }

            *(v82 + 64) = 0;
            if (v83)
            {
              goto LABEL_276;
            }

            goto LABEL_310;
          }
        }

        *(v82 + 64) = v85;
        if (v83)
        {
          if (v3)
          {
            v110 = v3;
            if (*(v82 + 28) == 242)
            {
              _dispatch_continuation_get_function_symbol(v83);
              v28 = v164;
              if (MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
                v28 = v164;
              }
            }

            _dispatch_continuation_pop(v83, 0, v81, v28);
            if (*(v82 + 28) == 242 && MEMORY[0xFFFFFC100])
            {
              v111 = kdebug_trace();
            }

            v28 = v164;
            v45 = v81;
            if ((*(v82 + 29) & 2) != 0)
            {
              if ((v110 & 1) != 0 && *(v82 + 104))
              {
                _dispatch_timer_unote_configure(*(a1 + 88));
                v45 = v81;
                v28 = v164;
              }

              if ((*(v82 + 30) & 0x40) != 0)
              {
                if (MEMORY[0xFFFFFC100])
                {
                  v111 = kdebug_trace();
                  if ((v81 & 0x1000000) == 0)
                  {
                    goto LABEL_263;
                  }
                }

                else if ((v45 & 0x1000000) == 0)
                {
LABEL_263:
                  v112 = 0;
LABEL_322:
                  __swp(v111, (v82 + 40));
                  if (v111)
                  {
                    _dispatch_source_handler_dispose(v111);
                  }

                  if (v112)
                  {
                    _dispatch_autorelease_pool_pop();
                  }

                  dispatch_release(a1);
                  goto LABEL_327;
                }

                v111 = _dispatch_autorelease_pool_push();
                v112 = v111;
                goto LABEL_322;
              }
            }

LABEL_328:
            v76 = *(a1 + 80);
            if ((v76 & 0x90000000) != 0)
            {
              v78 = 0;
              v36 = v161;
            }

            else
            {
              v36 = v161;
              if (*(v28 + 24))
              {
                v78 = 1;
              }

              else
              {
                v78 = *(v28 + 84) >= 0;
              }
            }

            *(a1 + 116) |= 2u;
            v77 = v76 & 0x10800000;
            if ((v76 & 0x10800000) == 0)
            {
LABEL_154:
              if (v77 && (v76 & 0x80000000) != 0)
              {
                if (v28 != *(a1 + 24) && (*(v29 + 40) || *(v29 + 48) || *(v29 + 56)))
                {
                  v78 = 0;
                  v36 = *(a1 + 24);
                }

                else
                {
                  _dispatch_source_cancel_callout(a1, v28, v45);
                  v28 = v164;
                  v78 = 0;
                  v76 = *(a1 + 80);
                }
              }

LABEL_200:
              if ((v76 & 0x10800000) != 0)
              {
                goto LABEL_177;
              }

              if ((*(v29 + 29) & 2) != 0)
              {
                if (!*(v29 + 104))
                {
                  v104 = *(v29 + 16);
                  if (!v104 || (v104 & 3) != 0 || *(v29 + 80) > 0x7FFFFFFFFFFFFFFEuLL)
                  {
                    goto LABEL_177;
                  }
                }
              }

              else
              {
                v100 = *(v29 + 16);
                if (!v100 || (v100 & 3) != 0)
                {
                  goto LABEL_177;
                }
              }

              v101 = v36;
              v36 = v46;
              if (v28 != v46)
              {
                goto LABEL_177;
              }

              if (!(*(a1 + 56) >> 55))
              {
                v36 = v101;
                if ((*(v29 + 29) & 1) == 0 || *(v29 + 16) < 0xFFFFFFFFFFFFFFFCLL)
                {
                  _dispatch_unote_resume(v29);
                  if (!v78)
                  {
                    if (v167[5])
                    {
                      v107 = v167[29];
                      if (v107)
                      {
                        v108 = *(v107 + 24);
                        if (v108 != -4 && v108 == (*(v29 + 16) & 0xFFFFFFFFFFFFFFFCLL))
                        {
                          _dispatch_event_loop_drain(1);
                        }
                      }
                    }
                  }

                  goto LABEL_177;
                }

                v102 = *(a1 + 116);
                if ((v102 & 2) != 0)
                {
                  *(a1 + 116) = v102 & 0xFFFD;
                  _dispatch_unote_resume(v29);
                }

                if (!v78)
                {
                  goto LABEL_177;
                }
              }

              goto LABEL_213;
            }

LABEL_145:
            if ((v76 & 0x80000000) == 0)
            {
              if ((*(v29 + 29) & 2) == 0 || (*(v29 + 16)) && v28 != v46)
              {
                goto LABEL_66;
              }

              v79 = v45;
              if (v76 >> 30)
              {
                v80 = 1;
              }

              else
              {
                v80 = 3;
              }

              _dispatch_source_refs_unregister(a1, v80);
              v76 = *(a1 + 80);
              if ((v76 & 0x80000000) == 0)
              {
                if (!v36)
                {
                  v36 = -1;
                }

                goto LABEL_177;
              }

              v77 = v76 & 0x10800000;
              v28 = v164;
              v45 = v79;
            }

            goto LABEL_154;
          }

LABEL_276:
          _dispatch_bug(591, 0);
LABEL_327:
          v28 = v164;
          v45 = v81;
          goto LABEL_328;
        }

LABEL_310:
        v45 = v81;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
          v45 = v81;
          v28 = v164;
        }

        goto LABEL_328;
      }

      resort_autorelease_pool_push = _dispatch_last_resort_autorelease_pool_push(a2);
      v24 = *(v19 + 160);
      v25 = *(a1 + 88);
      if ((v21 & 0x40000) == 0)
      {
        v26 = *(v19 + 232);
        v27 = v26 ? *(v26 + 24) : -4;
        v32 = *(v25 + 16) & 0xFFFFFFFFFFFFFFFCLL;
        if (v32 == -4)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32 == 0;
          v34 = *(v25 + 16) < 0;
        }

        if (!v33 && v27 != v32)
        {
          _dispatch_source_handle_wlh_change(a1);
        }
      }

      v160 = (v19 + 160);
      if (*(a1 + 48))
      {
        resort_autorelease_pool_push = _dispatch_lane_serial_drain(a1, a2, v21 | 0x4000000, &v170);
        v36 = resort_autorelease_pool_push;
        v37 = v21 & 0xFAFFFFFF;
      }

      else
      {
        v36 = 0;
        v37 = v21;
      }

      v165 = v25;
      v38 = *(v25 + 29);
      v39 = &_dispatch_mgr_q;
      if (v38)
      {
        v39 = *(a1 + 24);
      }

      v40 = v165;
      if ((*(a1 + 116) & 1) == 0)
      {
        if (v24 != v39)
        {
          goto LABEL_49;
        }

        if ((v37 & 0x10000) != 0)
        {
          v48 = *(v19 + 200);
        }

        else
        {
          v48 = 0x2000000;
        }

        v49 = *(v19 + 232);
        if (v49)
        {
          v50 = *(v49 + 24);
        }

        else
        {
          v50 = -4;
        }

        _dispatch_source_install(a1, v50, v48);
      }

      if (*(a1 + 56) >> 55)
      {
        goto LABEL_198;
      }

      if ((*(v165 + 29) & 2) != 0 && *(v165 + 104) && (*(a1 + 80) & 0x10800000) == 0)
      {
        if (v24 == v39)
        {
          _dispatch_timer_unote_configure(*(a1 + 88));
          goto LABEL_81;
        }

        goto LABEL_49;
      }

LABEL_81:
      if (!*(v165 + 56))
      {
        goto LABEL_104;
      }

      v55 = v24;
      v56 = v36;
      v36 = *(a1 + 24);
      if (v55 == v36)
      {
        __swp(resort_autorelease_pool_push, (*(a1 + 88) + 56));
        if ((*(a1 + 80) & 0x10800000) != 0)
        {
          _dispatch_source_handler_dispose(resort_autorelease_pool_push);
          v36 = v56;
        }

        else
        {
          v36 = v56;
          if ((*resort_autorelease_pool_push & 0x40) != 0)
          {
            resort_autorelease_pool_push[5] = *(a1 + 32);
          }

          _dispatch_continuation_pop(resort_autorelease_pool_push, 0, v37, v55);
        }

        v24 = v55;
        v40 = v165;
LABEL_104:
        if ((*(v40 + 16) & 2) != 0)
        {
          _dispatch_source_refs_unregister(a1, 5);
        }

        v60 = *(a1 + 80);
        v61 = v60 & 0x10800000;
        if ((v60 & 0x10800000) != 0)
        {
          v62 = 0;
          goto LABEL_108;
        }

        if (!*(v40 + 72))
        {
          v62 = 0;
          goto LABEL_175;
        }

        v155 = v36;
        v36 = *(a1 + 24);
        if (v24 == v36)
        {
          v64 = *(a1 + 88);
          v65 = *(v64 + 40);
          __swp(v23, (v64 + 72));
          v153 = v65;
          if ((*(v64 + 29) & 2) != 0)
          {
            *(v64 + 30);
          }

          v66 = *(*v64 + 9);
          v152 = v23;
          if (v66 == 3)
          {
            v67 = ~v23;
            v40 = v165;
            goto LABEL_237;
          }

          v40 = v165;
          if (v66 == 5)
          {
            v67 = v23 >> 1;
            if (v23)
            {
              v68 = *(a1 + 88);
              v70 = *(v68 + 80);
              v69 = (v68 + 80);
              if (v70 <= 0x7FFFFFFFFFFFFFFELL)
              {
                v71 = *(*(a1 + 88) + 24) / 3u;
                v158 = v23 >> 1;
                v150 = *(a1 + 88);
                v151 = v69;
                if (v71 == 2)
                {
                  v72 = clock_gettime_nsec_np(_CLOCK_REALTIME);
                }

                else
                {
                  v72 = v71 == 1 ? mach_continuous_time() : mach_absolute_time();
                }

                v23 = v152;
                v65 = v153;
                v67 = v158;
                if (v72 >= *v151)
                {
                  v113 = v150[12];
                  v114 = (v72 - *v151) / v113;
                  if ((v114 + 1 + v158) >= 0)
                  {
                    v115 = v114 + 1;
                  }

                  else
                  {
                    v115 = v158 ^ 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if (v113 > 0x7FFFFFFFFFFFFFFELL)
                  {
                    *v151 = -1;
                    v151[1] = -1;
                  }

                  else
                  {
                    v116 = v115 * v113;
                    v117 = v116 + *v151;
                    v118 = v150[11] + v116;
                    v150[10] = v117;
                    v150[11] = v118;
                  }

                  v67 = v115 + v158;
                }
              }
            }

LABEL_237:
            *(v64 + 64) = v67;
            if (v65)
            {
              if (v23)
              {
                if (*(v64 + 28) == 242)
                {
                  _dispatch_continuation_get_function_symbol(v65);
                  v65 = v153;
                  if (MEMORY[0xFFFFFC100])
                  {
                    kdebug_trace();
                    v65 = v153;
                  }
                }

                _dispatch_continuation_pop(v65, 0, v37, v24);
                if (*(v64 + 28) == 242 && MEMORY[0xFFFFFC100])
                {
                  v109 = kdebug_trace();
                }

                if ((*(v64 + 29) & 2) != 0)
                {
                  if ((v152 & 1) != 0 && *(v64 + 104))
                  {
                    _dispatch_timer_unote_configure(*(a1 + 88));
                  }

                  if ((*(v64 + 30) & 0x40) != 0)
                  {
                    if (MEMORY[0xFFFFFC100])
                    {
                      v109 = kdebug_trace();
                    }

                    __swp(v109, (v64 + 40));
                    if (v109)
                    {
                      _dispatch_source_handler_dispose(v109);
                    }

                    dispatch_release(a1);
                  }
                }

                goto LABEL_267;
              }

LABEL_266:
              _dispatch_bug(591, 0);
              goto LABEL_267;
            }

LABEL_308:
            if (MEMORY[0xFFFFFC100])
            {
              kdebug_trace();
            }
          }

          else
          {
            v67 = v23;
            if (v23)
            {
              goto LABEL_237;
            }

            if (*(v64 + 28) != 233)
            {
              *(v64 + 64) = 0;
              if (v65)
              {
                goto LABEL_266;
              }

              goto LABEL_308;
            }
          }

LABEL_267:
          v60 = *(a1 + 80);
          if ((v60 & 0x90000000) != 0)
          {
            v62 = 0;
            v36 = v155;
          }

          else
          {
            v36 = v155;
            if (*(v24 + 24))
            {
              v62 = 1;
            }

            else
            {
              v62 = *(v24 + 84) >= 0;
            }
          }

          *(a1 + 116) |= 2u;
          v61 = v60 & 0x10800000;
          if ((v60 & 0x10800000) == 0)
          {
LABEL_117:
            if (v61 && (v60 & 0x80000000) != 0)
            {
              if (v24 != *(a1 + 24) && (*(v40 + 40) || *(v40 + 48) || *(v40 + 56)))
              {
                v62 = 0;
                v36 = *(a1 + 24);
              }

              else
              {
                _dispatch_source_cancel_callout(a1, v24, v37);
                v62 = 0;
                v60 = *(a1 + 80);
              }
            }

LABEL_175:
            if ((v60 & 0x10800000) != 0)
            {
              goto LABEL_176;
            }

            if ((*(v40 + 29) & 2) != 0)
            {
              if (!*(v40 + 104))
              {
                v103 = *(v40 + 16);
                if (!v103 || (v103 & 3) != 0 || *(v40 + 80) > 0x7FFFFFFFFFFFFFFEuLL)
                {
                  goto LABEL_176;
                }
              }
            }

            else
            {
              v96 = *(v40 + 16);
              if (!v96 || (v96 & 3) != 0)
              {
                goto LABEL_176;
              }
            }

            v97 = v36;
            v36 = v39;
            if (v24 != v39)
            {
              goto LABEL_176;
            }

            if (!(*(a1 + 56) >> 55))
            {
              v98 = v62;
              v36 = v97;
              if ((*(v40 + 29) & 1) == 0 || *(v165 + 16) < 0xFFFFFFFFFFFFFFFCLL)
              {
                _dispatch_unote_resume(v165);
                if (!v98)
                {
                  if (*(v19 + 40))
                  {
                    v105 = *(v19 + 232);
                    if (v105)
                    {
                      v106 = *(v105 + 24);
                      if (v106 != -4 && v106 == (*(v165 + 16) & 0xFFFFFFFFFFFFFFFCLL))
                      {
                        _dispatch_event_loop_drain(1);
                      }
                    }
                  }
                }

                goto LABEL_176;
              }

              v99 = *(a1 + 116);
              if ((v99 & 2) != 0)
              {
                *(a1 + 116) = v99 & 0xFFFD;
                _dispatch_unote_resume(v165);
              }

              if (!v98)
              {
                goto LABEL_176;
              }
            }

LABEL_198:
            v36 = *(a1 + 24);
            goto LABEL_176;
          }

LABEL_108:
          if ((v60 & 0x80000000) != 0)
          {
            goto LABEL_117;
          }

          if ((*(v40 + 29) & 2) != 0 && (*(v40 + 16) & 1) == 0 || v24 == v39)
          {
            v157 = v62;
            if (v60 >> 30)
            {
              v63 = 1;
            }

            else
            {
              v63 = 3;
            }

            _dispatch_source_refs_unregister(a1, v63);
            v60 = *(a1 + 80);
            if ((v60 & 0x80000000) != 0)
            {
              v61 = v60 & 0x10800000;
              v62 = v157;
              goto LABEL_117;
            }

            if (!v36)
            {
              v36 = -1;
            }

            goto LABEL_176;
          }

LABEL_49:
          v36 = v39;
        }
      }

LABEL_176:
      v169 = *v160;
      *(v19 + 160) = a1;
      *(v19 + 168) = &v169;
      v47 = a2;
      _dispatch_last_resort_autorelease_pool_pop(a2);
      *v160 = v169;
LABEL_177:
      if ((v36 + 1) > 1)
      {
LABEL_339:
        if ((v21 & 0x40000) == 0)
        {
LABEL_340:
          v128 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          *(v128 + 200) = *(v128 + 200) & 0xF0000 | v166;
        }

        goto LABEL_341;
      }

      v91 = v170;
      v92 = *(a1 + 56);
      v20 = v167;
      while (2)
      {
        v93 = v92;
        v94 = v92 - v91;
        v95 = v94 & 0xFFFFFFF700000001;
        if (v93 >> 55)
        {
LABEL_183:
          v92 = v93;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v92, v95, memory_order_release, memory_order_relaxed);
          if (v92 == v93)
          {
            if ((~v93 & 0x1800000000) == 0)
            {
              v125 = HIDWORD(v93) & 7;
              v126 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v127 = *(v126 + 200);
              if ((HIWORD(v127) & 0xF) < v125)
              {
                *(v126 + 200) = v127 & 0xFFF0FFFF | (v125 << 16);
              }
            }

            v36 = 0;
            v170 = 0;
            goto LABEL_339;
          }

          continue;
        }

        break;
      }

      if ((v93 & 0x8000000000) == 0)
      {
        if (v36)
        {
          v95 = v94 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v95 = v94 & 0xFFFFFFF000000001;
        }

        goto LABEL_183;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v36 = v167[20];
      v17 = v163;
      a2 = v47;
      v19 = v162;
      if (a3)
      {
        continue;
      }

      break;
    }

    v17 = v163;
    if ((*(*v36 + 16) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

  if ((v21 & 0x40000) == 0)
  {
    goto LABEL_340;
  }

LABEL_341:
  a2 = v47;
LABEL_342:
  if ((a3 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v36)
    {
      goto LABEL_348;
    }

LABEL_345:
    _dispatch_queue_invoke_finish(a1, a2, v36, v170);
    if ((a3 & 0x100000) != 0)
    {
LABEL_349:
      v129 = *(*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216) + 48);
      if (v129)
      {
        if (*(v129 + 6))
        {
          _dispatch_event_loop_drain_timers(v129, 6u);
        }
      }
    }
  }

  else
  {
    if (v36)
    {
      goto LABEL_345;
    }

LABEL_348:
    _os_object_release_internal_n(a1, 2);
    if ((a3 & 0x100000) != 0)
    {
      goto LABEL_349;
    }
  }
}

void _dispatch_source_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 80);
  v5 = *(v3 + 29);
  v6 = &_dispatch_mgr_q;
  if (*(a1 + 116))
  {
    v7 = (v4 & 0x10800000) != 0 || (v5 & 2) == 0;
    if (v7 || !*(v3 + 104))
    {
      if (*(v3 + 56) | *(v3 + 16) & 2)
      {
        goto LABEL_14;
      }

      if ((v4 & 0x10800000) != 0)
      {
        if ((v4 & 0x80000000) != 0)
        {
          if (!*(v3 + 40) && !*(v3 + 48) && !*(v3 + 56))
          {
            goto LABEL_23;
          }
        }

        else if (*(v3 + 29) & 2) == 0 || (*(v3 + 16))
        {
          if ((a3 & 0x10) != 0 || !(v4 >> 30))
          {
            goto LABEL_7;
          }

          goto LABEL_23;
        }
      }

      else if (!*(v3 + 72))
      {
        if ((*(v3 + 29) & 2) != 0)
        {
          if (*(v3 + 104))
          {
            goto LABEL_7;
          }

          v12 = *(v3 + 16);
          if (v12)
          {
            if ((v12 & 3) == 0 && *(v3 + 80) < 0x7FFFFFFFFFFFFFFFuLL)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          v10 = *(v3 + 16);
          if (v10)
          {
            v11 = (v10 & 3) == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
            goto LABEL_7;
          }
        }

LABEL_23:
        if (!*(a1 + 48))
        {
          v6 = 0;
          goto LABEL_12;
        }
      }

LABEL_14:
      if (*(a1 + 24) != &_dispatch_mgr_q)
      {
        v6 = (&dword_0 + 1);
      }

      goto LABEL_12;
    }
  }

LABEL_7:
  v8 = v5 & 1;
  if (&_dispatch_mgr_q == (&dword_0 + 1) || v8 != 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  _dispatch_queue_wakeup(a1, a2, a3, v6);
}

void dispatch_source_cancel(dispatch_source_t source)
{
  if (*(source + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((source + 8), 2u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_source_cancel_cold_2(source);
}

void dispatch_source_cancel_and_wait(char *object)
{
  v2 = *(object + 11);
  if (*(v2 + 48))
  {
    dispatch_source_cancel_and_wait_cold_1(object);
  }

  v4 = (object + 80);
  v3 = *(object + 20);
  do
  {
    v5 = v3;
    v6 = v3 | 0x10000000;
    if ((v3 & 0x20000000) != 0)
    {
      break;
    }

    if ((v3 & 0x80000000) == 0 && (v3 >> 30 || (*(v2 + 29) & 3) != 1))
    {
      v6 = v3 | 0x30000000;
    }

    atomic_compare_exchange_strong_explicit(v4, &v3, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v5);
  if ((v5 & 0x800000) != 0)
  {
    dispatch_source_cancel_and_wait_cold_2(object);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return;
  }

  if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 24);
  v13 = (StatusReg + 24);
  v15 = v14 & 0xFFFFFFFC;
  v16 = *(object + 7);
  while (1)
  {
    v17 = v16;
    if ((v16 & 0xFFE00000FFFFFFFCLL) != 0)
    {
      break;
    }

    v18 = v15 | v16 & 0x7700000001 | 0x60000000000000;
LABEL_22:
    atomic_compare_exchange_strong((object + 56), &v16, v18);
    if (v16 == v17)
    {
      goto LABEL_26;
    }
  }

  if ((v5 & 0x10000000) == 0)
  {
    v18 = v16 | 0x8000000000;
    goto LABEL_22;
  }

LABEL_26:
  if (v17 >> 55)
  {
    dispatch_source_cancel_and_wait_cold_6(v17, object);
  }

  else
  {
    if ((v17 & 0x600000FFFFFFFCLL) == 0)
    {
      dispatch_source_cancel_and_wait_cold_4(object + 20, object);
      goto LABEL_16;
    }

    dispatch_source_cancel_and_wait_cold_3(v13, v17, object);
LABEL_12:
    v8 = (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) >> 8) & 0x3FFF;
    v7 = v8 == 0;
    v9 = __clz(__rbit32(v8));
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 + 1;
    }

    (*(*object + 64))(object, v10, 2);
    dispatch_activate(object);
LABEL_16:
    v11 = *v4;
    if ((v11 & 0x80000000) == 0)
    {
      dispatch_source_cancel_and_wait_cold_5(v11, (object + 80));
    }
  }
}

void _dispatch_source_refs_unregister(uint64_t a1, char a2)
{
  _dispatch_unote_unregister(*(a1 + 88), a2);
  if (v3)
  {

    _dispatch_source_refs_finalize_unregistration(a1);
  }

  else
  {
    v4 = *(a1 + 80);
    do
    {
      if (v4 >> 30)
      {
        break;
      }

      v5 = v4;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v5, v4 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

void _dispatch_source_cancel_callout(uint64_t (*a1)(void), uint64_t a2, int a3)
{
  v6 = a1;
  v7 = *(a1 + 11);
  if ((a3 & 0x1000000) != 0)
  {
    a1 = _dispatch_autorelease_pool_push();
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  __swp(v3, (v7 + 48));
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  __swp(a1, (v7 + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (v7 + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  if (!v3)
  {
LABEL_11:
    if (!v8)
    {
      return;
    }

    goto LABEL_12;
  }

  if ((*(v6 + 20) & 0x10000000) == 0)
  {
    _dispatch_source_handler_dispose(v3);
    goto LABEL_11;
  }

  if ((*v3 & 0x40) != 0)
  {
    v3[5] = *(v6 + 4);
  }

  __dmb(9u);
  _dispatch_continuation_pop(v3, 0, a3 & 0xFEFFFFFF, a2);
  if (v8)
  {
LABEL_12:

    _dispatch_autorelease_pool_pop();
  }
}

uint64_t _dispatch_source_merge_evt(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  v7 = ~*(a1 + 8);
  if ((a2 & 0x100) == 0 && !*(a1 + 16) && (*(a1 + 29) & 2) == 0)
  {
    _dispatch_source_refs_finalize_unregistration(~*(a1 + 8));
  }

  if ((a2 & 0x200) != 0)
  {
    _dispatch_source_merge_evt_cold_1(v7[20], a1);
  }

  v8 = *(*v7 + 64);
  v9 = __clz(__rbit32((a4 >> 8) & 0x3FFF));
  if (((a4 >> 8) & 0x3FFF) != 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  return v8(v7, v10, 51);
}

void dispatch_after_f(dispatch_time_t when, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (when == -1)
  {
    return;
  }

  v7 = when;
  v9 = _dispatch_timeout(when);
  if (v9)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 > 5)
    {
      v13 = 20;
    }

    else
    {
      v13 = qword_4A968[v12];
    }

    v15 = v9 / v13;
    if (v15 <= 0xF4240)
    {
      v15 = 1000000;
    }

    if (v15 >= 0xDF8475800)
    {
      v16 = 60000000000;
    }

    else
    {
      v16 = v15;
    }

    v17 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queue);
    v18 = *(v17 + 11);
    v19 = *(StatusReg + 176);
    if (v19)
    {
      *(StatusReg + 176) = v19[2];
      if (work)
      {
LABEL_19:
        v20 = work;
        goto LABEL_26;
      }
    }

    else
    {
      v19 = _dispatch_continuation_alloc_from_heap();
      if (work)
      {
        goto LABEL_19;
      }
    }

    v20 = 0;
LABEL_26:
    *v19 = 256;
    v19[4] = v20;
    v19[5] = context;
    v21 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v21 >= 0x10FF)
    {
      v22 = 4351;
    }

    else
    {
      v22 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v23 = *(StatusReg + 224);
    if (v23 && atomic_fetch_add_explicit((v23 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
      v29 = v19[5];
      if (((v23 + 12) & 1) == 0)
      {
        if (((v23 + 12) & 0x10) != 0)
        {
          if (*(v29 + 16))
          {
            v31 = *(v29 + 16);
          }
        }

        else
        {
          v30 = v19[4];
        }
      }

LABEL_42:
      *(v18 + 40) = v19;
      if ((v7 & 0x8000000000000000) != 0)
      {
        if ((v7 & 0x4000000000000000) != 0)
        {
          if (-v7 >> 62)
          {
            v7 = -1;
          }

          else
          {
            v7 = -v7;
          }

          v27 = 2;
LABEL_50:
          *(v18 + 30) |= 4 * v27;
          *(v18 + 80) = v7;
          *(v18 + 88) = v16 + v7;
          *(v18 + 96) = -1;

          dispatch_activate(v17);
          return;
        }

        v7 &= 0x3FFFFFFFFFFFFFFFuLL;
        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      if (v7 >> 62)
      {
        v7 = -1;
      }

      if (_dispatch_host_time_nano2mach)
      {
        v16 = _dispatch_host_time_nano2mach(v16);
      }

      else
      {
        v28 = (3 * v16 * 0x624DD2F1A9FBE77uLL) >> 64;
        v16 = (v28 + ((3 * v16 - v28) >> 1)) >> 6;
      }

      goto LABEL_50;
    }

    v19[3] = v23;
    if (v23 == -1)
    {
      goto LABEL_35;
    }

    if (v23)
    {
      v24 = *(v23 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v21)
      {
        goto LABEL_36;
      }
    }

    else
    {
LABEL_35:
      if (v21)
      {
LABEL_36:
        v25 = (*(queue + 21) >> 30) & 1;
        if ((*(queue + 21) & 0xFFF) == 0)
        {
          v25 = 1;
        }

        if (v25)
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_41;
      }
    }

    v26 = 0;
LABEL_41:
    v19[1] = v26;
    v19[6] = v17;
    goto LABEL_42;
  }

  if (work)
  {
    v14 = work;
  }

  else
  {
    v14 = 0;
  }

  dispatch_channel_async_f(queue, context, v14);
}

void dispatch_after(dispatch_time_t when, dispatch_queue_t queue, dispatch_block_t block)
{
  if (when == -1)
  {
    return;
  }

  v5 = when;
  v6 = _dispatch_timeout(when);
  if (v6)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9 > 5)
    {
      v10 = 20;
    }

    else
    {
      v10 = qword_4A968[v9];
    }

    v11 = v6 / v10;
    if (v11 <= 0xF4240)
    {
      v11 = 1000000;
    }

    if (v11 >= 0xDF8475800)
    {
      v12 = 60000000000;
    }

    else
    {
      v12 = v11;
    }

    v13 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queue);
    v14 = *(v13 + 11);
    v15 = *(StatusReg + 176);
    if (v15)
    {
      *(StatusReg + 176) = v15[2];
    }

    else
    {
      v15 = _dispatch_continuation_alloc_from_heap();
    }

    v16 = _dispatch_Block_copy(block);
    v17 = *(block + 2);
    if (v17)
    {
      if (v17 != _dispatch_block_special_invoke)
      {
        v18 = *(block + 2);
        goto LABEL_25;
      }
    }

    else if (_dispatch_block_special_invoke)
    {
      v18 = 0;
LABEL_25:
      *v15 = 272;
      v15[4] = v18;
      v15[5] = v16;
      v19 = *(StatusReg + 32) & 0xFFFFFFLL;
      if (v19 >= 0x10FF)
      {
        v20 = 4351;
      }

      else
      {
        v20 = *(StatusReg + 32) & 0xFFFFFFLL;
      }

      v21 = *(StatusReg + 224);
      if (v21 && atomic_fetch_add_explicit((v21 + 12), 1u, memory_order_relaxed) <= 0)
      {
        dispatch_group_notify_cold_1();
      }

      v15[3] = v21;
      if (v21 == -1)
      {
        goto LABEL_34;
      }

      if (v21)
      {
        v22 = *(v21 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
        if (v19)
        {
          goto LABEL_35;
        }
      }

      else
      {
LABEL_34:
        if (v19)
        {
LABEL_35:
          v23 = (*(queue + 21) >> 30) & 1;
          if ((*(queue + 21) & 0xFFF) == 0)
          {
            v23 = 1;
          }

          if (v23)
          {
            v24 = v20;
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_40;
        }
      }

      v24 = 0;
LABEL_40:
      v15[1] = v24;
      goto LABEL_41;
    }

    *v15 = 272;
    v15[5] = v16;
    _dispatch_continuation_init_slow(v15, queue, 0);
LABEL_41:
    v15[6] = v13;
    *(v14 + 40) = v15;
    if ((v5 & 0x8000000000000000) != 0)
    {
      if ((v5 & 0x4000000000000000) != 0)
      {
        if (-v5 >> 62)
        {
          v5 = -1;
        }

        else
        {
          v5 = -v5;
        }

        v25 = 2;
LABEL_49:
        *(v14 + 30) |= 4 * v25;
        *(v14 + 80) = v5;
        *(v14 + 88) = v12 + v5;
        *(v14 + 96) = -1;

        dispatch_activate(v13);
        return;
      }

      v5 &= 0x3FFFFFFFFFFFFFFFuLL;
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }

    if (v5 >> 62)
    {
      v5 = -1;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v12 = _dispatch_host_time_nano2mach(v12);
    }

    else
    {
      v26 = (3 * v12 * 0x624DD2F1A9FBE77uLL) >> 64;
      v12 = (v26 + ((3 * v12 - v26) >> 1)) >> 6;
    }

    goto LABEL_49;
  }

  dispatch_channel_async(queue, block);
}

void _dispatch_source_handler_dispose(uint64_t a1)
{
  if ((*a1 & 0x10) != 0)
  {
    _Block_release(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      if (add_explicit != 1)
      {
        qword_78298 = "API MISUSE: Voucher over-release";
        __break(1u);
        return;
      }

      _voucher_xref_dispose(v2);
    }

    *(a1 + 24) = -1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 176);
  if (v5)
  {
    v6 = *(v5 + 8) + 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6 > _dispatch_continuation_cache_limit)
  {

    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v5;
    *(a1 + 8) = v6;
    *(StatusReg + 176) = a1;
  }
}

void _dispatch_source_set_handler_slow(unint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 160);
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (*(a1 + 32))
  {
    if ((*a1 & 0x40) != 0)
    {
      *(a1 + 40) = *(v2 + 32);
    }
  }

  else
  {
    v4 = *(StatusReg + 176);
    if (v4)
    {
      v5 = *(v4 + 8) + 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v4;
      *(a1 + 8) = v5;
      *(StatusReg + 176) = a1;
    }

    a1 = 0;
  }

  v6 = atomic_exchange_explicit((*(v2 + 88) + 8 * v3 + 40), a1, memory_order_release);
  if (v6)
  {

    _dispatch_source_handler_dispose(v6);
  }
}

void _dispatch_source_handle_wlh_change(uint64_t a1)
{
  v1 = atomic_fetch_or_explicit((a1 + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) != 0)
  {
    if ((v1 & 0x8000000) == 0)
    {
      _dispatch_bug_deprecated("Changing target queue hierarchy after source was activated");
    }
  }

  else
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after source was activated";
    __break(1u);
  }
}

uint64_t _dispatch_wait_for_enqueuer(unint64_t *a1)
{
  v1 = -10;
  while (1)
  {
    v2 = __ldxr(a1);
    if (v2)
    {
      break;
    }

    __wfe();
    if (__CFADD__(v1++, 1))
    {
      return __DISPATCH_WAIT_FOR_ENQUEUER__(a1);
    }
  }

  __clrex();
  return v2;
}

uint64_t __DISPATCH_WAIT_FOR_ENQUEUER__(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = 1;
    do
    {
      _pthread_yield_to_enqueuer_4dispatch();
      result = *a1;
      ++v3;
    }

    while (!*a1);
  }

  return result;
}

void dispatch_mach_hooks_install_4libxpc(void *a1)
{
  if (*a1 <= 2uLL)
  {
    dispatch_mach_hooks_install_4libxpc_cold_2(a1);
  }

  v1 = &_dispatch_mach_xpc_hooks_default;
  atomic_compare_exchange_strong_explicit(&_dispatch_mach_xpc_hooks, &v1, a1, memory_order_relaxed, memory_order_relaxed);
  if (v1 != &_dispatch_mach_xpc_hooks_default)
  {
    dispatch_mach_hooks_install_4libxpc_cold_1();
  }
}

uint64_t dispatch_mach_create(const char *a1, uint64_t (***a2)(), void *aBlock)
{
  v5 = _dispatch_Block_copy(aBlock);
  if (v5[2])
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  return _dispatch_mach_create(a1, a2, v5, v6, 1u);
}

uint64_t _dispatch_mach_create(const char *a1, uint64_t (***a2)(), uint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = 4194305;
  if (a1)
  {
    v11 = _dispatch_strdup_if_mutable(a1);
    if (v11 == a1)
    {
      v9 = 4194305;
    }

    else
    {
      v9 = 6291457;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = _dispatch_object_alloc(_OS_dispatch_mach_vtable, 136);
  v13 = v12;
  *(v12 + 8) += 2;
  if (*(*v12 + 16) == 19)
  {
    ++*(v12 + 8);
  }

  *(v12 + 16) = -1985229329;
  *(v12 + 80) = v9;
  *(v12 + 56) = 0x19FFE0000000000;
  *(v12 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v12 + 72) = v11;
  *(v12 + 116) = (8 * a5) & 0x10 | (((a5 >> 2) & 1) << 7) | *(v12 + 116) & 0xFF6F;
  v14 = off_713F0(&_dispatch_mach_type_recv, 0, 0);
  v15 = *(v14 + 29);
  *(v14 + 8) = ~v13;
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  *(v14 + 40) = v16;
  *(v14 + 48) = a3;
  *(v14 + 29) = v15 & 0xBF | ((a5 & 1) << 6);
  if ((*(v13 + 116) & 0x80) != 0)
  {
    *(v14 + 32) |= 0x200u;
  }

  *(v13 + 88) = v14;
  v17 = off_71330(&_dispatch_mach_type_send, 0, 9);
  *(v17 + 8) = ~v13;
  *(v13 + 120) = v17;
  if (a2)
  {
    if ((*(a2 + 87) & 8) != 0)
    {
      _dispatch_mach_create_cold_1(a2);
    }

    if (*(a2 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 1), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
    a2 = &off_74680;
  }

  *(v13 + 24) = a2;
  return v13;
}

void _dispatch_mach_dispose(uint64_t *a1, _BYTE *a2)
{
  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;
  _dispatch_unote_dispose(a1[15], 0);
  a1[15] = 0;
  v4 = a1[16];
  if (v4)
  {
    _dispatch_unote_dispose(v4, 0);
    a1[16] = 0;
  }

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t dispatch_mach_request_no_senders(uint64_t a1)
{
  *(a1 + 116) |= 0x20u;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t dispatch_mach_notify_no_senders(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 96;
  }

  else
  {
    v2 = 32;
  }

  *(a1 + 116) = v2 | *(a1 + 116) & 0xFF9F;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t dispatch_mach_set_flags(uint64_t a1, char a2)
{
  *(a1 + 116) = *(a1 + 116) & 0xFF7F | ((a2 & 1) << 7);
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

void dispatch_mach_connect(void *object, int a2, int a3, char *a4)
{
  v6 = object[15];
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    *(object[11] + 24) = a2;
  }

  *(v6 + 92) = a3;
  if ((a3 - 1) <= 0xFFFFFFFD)
  {
    if (a4)
    {
      dispatch_retain(a4);
      *(a4 + 12) = 0x40000;
      v7 = a4 + 88;
      if (*(a4 + 18))
      {
        v7 = *v7;
      }

      *(v6 + 96) = *(v7 + 2);
    }

    *(v6 + 48) = a4;
  }

  if ((*(object + 58) & 0x20) != 0 && !*(v6 + 48))
  {
    _dispatch_mach_arm_no_senders(object, 0);
  }

  v8 = atomic_fetch_and_explicit((v6 + 88), 0x7FFFFFFFu, memory_order_relaxed);
  if ((v8 & 0x80000000) == 0)
  {
    dispatch_mach_connect_cold_1(v8);
  }

  dispatch_activate(object);
}

void _dispatch_mach_arm_no_senders(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 88) + 24);
  previous = 0;
  if (v3 - 1 <= 0xFFFFFFFD)
  {
    v4 = mach_port_request_notification(mach_task_self_, v3, 70, (*(a1 + 116) & 0x40) == 0, v3, 0x15u, &previous);
    if (v4 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v4)
    {
      _dispatch_bug(261, v4);
    }

    if (previous)
    {
      _dispatch_mach_arm_no_senders_cold_2(a2, previous);
    }
  }
}

void _dispatch_mach_merge_msg(uint64_t a1, unsigned int a2, mach_msg_header_t *a3, unsigned int a4, unsigned int *a5, int a6, unsigned int a7)
{
  if ((a2 & 0x200) != 0)
  {
    _dispatch_mach_merge_msg_cold_1(a1);
  }

  v10 = ~*(a1 + 8);
  if ((*(79 - *(a1 + 8)) & 0x10000000) == 0)
  {
    if (a3->msgh_id != 70 || (*(115 - *(a1 + 8)) & 0x20) == 0)
    {
      v14 = _voucher_create_with_mach_msgv(&a3->msgh_bits, a5);
      if ((*&a6 & 0xFFFFFFuLL) >= 0x10FF)
      {
        v15 = 4351;
      }

      else
      {
        v15 = *&a6 & 0xFFFFFFLL;
      }

      v16 = dispatch_mach_msg_create(a3, a4, HIWORD(a2) & 1, 0);
      if ((a2 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      *(v16 + 56) = v15;
      *(v16 + 64) = v14;
      *(v16 + 32) = 0;
      *(v16 + 48) = -117964798;
      if (v14 != -1)
      {
        if (v14)
        {
          v17 = *(v14 + 32);
        }

        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      _dispatch_mach_handle_or_push_received_msg(v10, v16, a7);
      goto LABEL_17;
    }

    if (_dispatch_mach_msg_sender_is_kernel(a3))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = *(StatusReg + 176);
      if (v19)
      {
        *(StatusReg + 176) = v19[2];
      }

      else
      {
        v19 = _dispatch_continuation_alloc_from_heap();
      }

      *v19 = 260;
      v19[4] = _dispatch_mach_no_senders_invoke;
      v19[5] = v10;
      v19[3] = 0;
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_mach_merge_msg_cold_3();
      }

      v19[1] = 0;
      (*(*v10 + 72))(v10, v19, 0);
    }

    else
    {
      _dispatch_mach_merge_msg_cold_2();
    }
  }

  mach_msg_destroy(a3);
  if ((a2 & 0x10000) != 0)
  {
    free(a3);
  }

LABEL_17:
  if ((*(a1 + 16) & 2) != 0 || (*(v10 + 60) & 0x1800000) == 0x800000)
  {
    _dispatch_mach_merge_msg_cold_4(v10);
  }

  else
  {

    _os_object_release_internal_n(v10, 2);
  }
}

uint64_t _dispatch_mach_no_senders_invoke(uint64_t result)
{
  if ((*(result + 80) & 0x10000000) == 0)
  {
    v1 = *(result + 88);
    if (*(v1 + 40))
    {
      v2 = *(v1 + 40);
    }

    else
    {
      v2 = 0;
    }

    result = _dispatch_client_callout4(*(v1 + 48), 13, 0, 0, v2);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  ++*(StatusReg + 208);
  return result;
}

void _dispatch_mach_handle_or_push_received_msg(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 48);
  v7 = 3;
  if (v6)
  {
    v7 = 4;
  }

  if ((v6 & 0xFFFFC000) == 0xF8F80000)
  {
    v8 = v6 & 0x3FFF;
  }

  else
  {
    v8 = v7;
  }

  if (v8 != 2 && (*(a1 + 116) & 0x10) != 0 && ((*(&dword_8 + _dispatch_mach_xpc_hooks))(*(*(a1 + 88) + 48)) & 1) != 0)
  {
    *(a2 + 16) = -1985229329;

    dispatch_release(a2);
  }

  else
  {
    v9 = (a3 >> 8) & 0x3FFF;
    if (v9)
    {
      v10 = __clz(__rbit32(v9)) + 1;
    }

    else
    {
      v10 = (*(a1 + 84) >> 8) & 0xF;
    }

    _dispatch_lane_push(a1, a2, v10);
  }
}

void _dispatch_mach_reply_merge_msg(uint64_t a1, unsigned int a2, mach_msg_header_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = ~*(a1 + 8);
  if ((*(79 - *(a1 + 8)) & 0x10000000) != 0)
  {
    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }

    v28 = 117;
  }

  else
  {
    msgh_bits = a3->msgh_bits;
    v14 = HIWORD(a3->msgh_bits) & 0x1F;
    msgh_voucher_port = a3->msgh_voucher_port;
    if ((v14 == 17 || v14 == 19) && msgh_voucher_port != 0)
    {
      if (v14 == 17)
      {
        _voucher_dealloc_mach_voucher(msgh_voucher_port);
        msgh_bits = a3->msgh_bits;
      }

      a3->msgh_voucher_port = 0;
      a3->msgh_bits = msgh_bits & 0xFFE0FFFF;
    }

    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    *(a1 + 56) = 0;
    v20 = dispatch_mach_msg_create(a3, a4, HIWORD(a2) & 1, 0);
    if ((a2 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    *(v20 + 56) = v18;
    *(v20 + 64) = v19;
    *(v20 + 32) = *(a1 + 48);
    *(v20 + 48) = -117964798;
    if (v19 != -1)
    {
      if (v19)
      {
        v21 = *(v19 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    if ((*(v10 + 116) & 0x10) != 0 && *(v20 + 32))
    {
      v22 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v10;
      }

      v24 = _dispatch_mach_msg_async_reply_wrap(v20, v10);
      v25 = *v23 + 72;
      v26 = __clz(__rbit32((*(v20 + 56) >> 8) & 0x3FFF));
      if (((*(v20 + 56) >> 8) & 0x3FFF) != 0)
      {
        v27 = v26 + 1;
      }

      else
      {
        v27 = 0;
      }

      (*(*v23 + 72))(v23, v24, v27);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v10, v20, a7);
    }

    v28 = 101;
  }

  v29 = *(a1 + 16);

  _dispatch_mach_reply_unregister(v10, a1, v28);
}

void _dispatch_mach_reply_unregister(char *a1, void *a2, char a3)
{
  if (*a2)
  {
    v6 = *a2 == -2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 15);
  if ((a3 & 0x20) != 0)
  {
    v9 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((v7 + 40), &v9, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      _dispatch_unfair_lock_lock_slow(v7 + 40);
    }

    v11 = a2[8];
    v12 = a2[9];
    if (v11)
    {
      *(v11 + 72) = v12;
    }

    *v12 = v11;
    a2[9] = 0;
    if (*(v7 + 56))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 88) != 0;
    }

    v13 = *(StatusReg + 24) & 0xFFFFFFFC;
    v14 = atomic_exchange_explicit((v7 + 40), 0, memory_order_release);
    if (v14 != v13)
    {
      _dispatch_unfair_lock_unlock_slow(v7 + 40, v14);
    }
  }

  else
  {
    v8 = 0;
  }

  if (!a2[2] || (_dispatch_unote_unregister(a2, a3 & 0xF), (v15 & 1) != 0))
  {
    if ((a3 & 0x10) != 0)
    {
      if ((*(a1 + 58) & 0x10) != 0 && a2[6])
      {
        v19 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
        if (v19)
        {
          v16 = v19;
        }

        else
        {
          v16 = a1;
        }
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v23 = 12;
      }

      else
      {
        v23 = 7;
      }

      reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(0, a2, v23);
      if (v6)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = a2[7];
      if (v16)
      {
        add_explicit = atomic_fetch_add_explicit((v16 + 12), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 1)
        {
          if (add_explicit != 1)
          {
            qword_78298 = "API MISUSE: Voucher over-release";
            __break(1u);
            return;
          }

          _voucher_xref_dispose(v16);
        }

        v16 = 0;
        reply_disconnected = 0;
        a2[7] = 0;
        if (v6)
        {
LABEL_37:
          if (reply_disconnected)
          {
            if (!v16)
            {
              _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0);
              if ((a3 & 0x40) == 0)
              {
                return;
              }

              goto LABEL_46;
            }

            v24 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
            v25 = *v16 + 72;
            v26 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
            if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
            {
              v27 = v26 + 1;
            }

            else
            {
              v27 = 0;
            }

            (*(*v16 + 72))(v16, v24, v27);
          }

          if ((a3 & 0x40) == 0)
          {
            return;
          }

LABEL_46:
          if (v8)
          {
            v28 = *(*a1 + 64);

            v28(a1, 0, 3);
          }

          else
          {

            _os_object_release_internal_n(a1, 2);
          }

          return;
        }
      }

      else
      {
        reply_disconnected = 0;
        if (v6)
        {
          goto LABEL_37;
        }
      }
    }

    _dispatch_unote_dispose(a2, 1);
    goto LABEL_37;
  }

  if (a3 < 0)
  {
    v22 = *(v7 + 56);
    v21 = (v7 + 56);
    v20 = v22;
    a2[8] = v22;
    if (v22)
    {
      *(v20 + 72) = a2 + 8;
    }

    *v21 = a2;
    a2[9] = v21;
  }
}

void _dispatch_mach_send_barrier_drain_invoke(void *a1, uint64_t a2, unsigned int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[20];
  v7 = StatusReg[21];
  *(StatusReg + 10) = *v7;
  v8 = a1[3];
  a1[3] = -1;
  if (v8 != -1 && v8 != -1)
  {
    if (v8)
    {
      v10 = *(v8 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  v11 = a1[1];
  if (v11 == -1)
  {
    v14 = 0;
  }

  else
  {
    v12 = StatusReg[25];
    if (((v12 >> 8) & 0xF) != 0)
    {
      v13 = 256 << ((BYTE1(v12) & 0xFu) - 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    if ((v11 & 0xFFFFFF) != 0)
    {
      if ((v11 & 0xFFFFFFuLL) >= (v13 & 0xFFFFFF00) && ((v12 & 0x44000000) != 0 || (a1[1] & 0x10000000) != 0))
      {
        v14 = v11 & 0xFFFFFF;
      }
    }

    else if (v12 >> 12)
    {
      v14 = (256 << ((v12 >> 12) - 1)) | 0xFF;
    }
  }

  v16 = v14 & 0xFFFFFFFF02FFFFFFLL;
  v17 = StatusReg[4];
  if ((v17 & 0x1000000) != 0)
  {
    if (v16)
    {
LABEL_42:
      _dispatch_set_priority_and_voucher_slow(v16, v8, 6);
      goto LABEL_28;
    }

    v16 = v17 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v16 == (v17 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    goto LABEL_42;
  }

LABEL_24:
  if (v8 == -1)
  {
    goto LABEL_28;
  }

  if (StatusReg[28] != v8)
  {
    v16 = 0;
    goto LABEL_42;
  }

  if (v8 && atomic_fetch_add_explicit((v8 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_28:
  v18 = StatusReg[22];
  if (v18)
  {
    v19 = *(v18 + 8) + 1;
  }

  else
  {
    v19 = 1;
  }

  if (v19 > _dispatch_continuation_cache_limit)
  {
    _dispatch_mach_send_invoke(v6, a3, 6);
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    a1[2] = v18;
    *(a1 + 2) = v19;
    StatusReg[22] = a1;
    _dispatch_mach_send_invoke(v6, a3, 6);
  }

  StatusReg[20] = v6;
  StatusReg[21] = v7;
}

void _dispatch_mach_send_invoke(unint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 120);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v9 = 0xFFFFFFFFLL;
  if ((a3 & 4) == 0)
  {
    v9 = 0x10FFFFFFFFLL;
  }

  v10 = (a3 & 2) << 35;
  if ((a3 & 2) != 0)
  {
    v11 = 0x10FFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(StatusReg + 200);
  v13 = (v12 >> 8) & 0xF;
  v14 = v12 >> 12;
  v15 = HIWORD(v12) & 0xF;
  if (v13 <= v14)
  {
    v13 = v14;
  }

  if (v13 > v15)
  {
    v15 = v13;
  }

LABEL_10:
  for (i = *(v6 + 64); ; i = v18)
  {
    if ((i & v11) != v10)
    {
      if ((a3 & 1) == 0)
      {
        return;
      }

      v18 = i;
      atomic_compare_exchange_strong_explicit((v6 + 64), &v18, i | 0x2000000000, memory_order_acquire, memory_order_acquire);
      if (v18 == i)
      {
        return;
      }

      continue;
    }

    v17 = HIDWORD(i) & 7;
    if (v15 < v17)
    {
      v19 = *(StatusReg + 24);
      _pthread_workqueue_override_start_direct();
      v20 = *(StatusReg + 200);
      v15 = v17;
      if ((HIWORD(v20) & 0xF) < v17)
      {
        *(StatusReg + 200) = v20 & 0xFFF0FFFF | (v17 << 16);
        v15 = v17;
      }

      goto LABEL_10;
    }

    v18 = i;
    atomic_compare_exchange_strong_explicit((v6 + 64), &v18, i & 0xFFFFFFC7FFFFFFFFLL | v8, memory_order_acquire, memory_order_acquire);
    if (v18 == i)
    {
      break;
    }
  }

  _dispatch_mach_send_drain(a1, a2, a3);
}

void _dispatch_mach_notification_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if ((*(a1 + 32) & a3) != 0)
  {
    _dispatch_mach_send_invoke(~v3, 0x40000u, 1);
  }

  _os_object_release_internal_n(~v3, 2);
}

uint64_t _dispatch_mach_send_msg(unint64_t a1, void *object, dispatch_object_s *a3, int a4)
{
  v11 = *(a1 + 120);
  if (object[2] == -1985229329)
  {
    v6 = a4;
    v5 = a3;
    v4 = a1;
    if ((a4 & 0x40000) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL;
      v13 = 4351;
      if (v12 < 0x10FF)
      {
        v13 = v12;
      }

      if ((a4 & 4) == 0)
      {
        v12 = v13;
      }
    }

    object[7] = v12;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 224);
    if (!v7)
    {
      goto LABEL_12;
    }

    add_explicit = atomic_fetch_add_explicit((v7 + 12), 1u, memory_order_relaxed);
  }

  else
  {
    v26 = object[2];
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Message already enqueued";
    qword_782C8 = v26;
    __break(1u);
  }

  if (add_explicit <= 0)
  {
    qword_78298 = "API MISUSE: Voucher resurrection";
    __break(1u);
    goto LABEL_42;
  }

LABEL_12:
  object[8] = v7;
  *(object + 12) = v6 | (((*(StatusReg + 32) & 0x300) != 0) << 18);
  dispatch_retain(object);
  v14 = __clz(__rbit32((*(object + 14) >> 8) & 0x3FFF));
  if (((*(object + 14) >> 8) & 0x3FFF) != 0)
  {
    v7 = v14 + 1;
  }

  else
  {
    v7 = 0;
  }

  v15 = (object + 11);
  if (*(object + 18))
  {
    v15 = *v15;
  }

  v16 = *v15;
  if ((*v15 & 0x1F00) != 0x1500 || (*(v15 + 3) - 1) >= 0xFFFFFFFE)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v15 + 3);
  }

  *(object + 13) = v18;
  v6 = 8 * (v6 & 1);
  if ((v16 & 0x1F) != 0x12 || v18 || *(v11 + 88) || (*(v4 + 80) & 0x10000000) != 0)
  {
    v22 = object[8];
    if (v22 == -1)
    {
      goto LABEL_35;
    }

    if (v22)
    {
      v23 = *(v22 + 32);
    }

    if (!MEMORY[0xFFFFFC100])
    {
LABEL_35:
      if (v5)
      {
        v24 = v5;
      }

      else
      {
        v24 = object;
      }

      _dispatch_mach_send_push_and_trydrain(v4, v24, v7, v6);
      if (v25)
      {
        goto LABEL_28;
      }

      return 0;
    }

LABEL_42:
    kdebug_trace();
    goto LABEL_35;
  }

  if ((_dispatch_mach_msg_send(v4, object, 0, 0, v6) & 2) == 0)
  {
    return 0;
  }

LABEL_28:
  v19 = object[8];
  if (!v19)
  {
    goto LABEL_30;
  }

  v20 = atomic_fetch_add_explicit((v19 + 12), 0xFFFFFFFF, memory_order_relaxed);
  result = 0;
  if (v20 > 1)
  {
    goto LABEL_30;
  }

  if (v20 == 1)
  {
    _voucher_xref_dispose(v19);
LABEL_30:
    object[8] = 0;
    object[2] = -1985229329;
    dispatch_release(object);
    return 1;
  }

  qword_78298 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

unint64_t dispatch_mach_send_with_result(unint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_782C8 = a4;
    __break(1u);
  }

  else
  {
    result = _dispatch_mach_send_msg(result, a2, 0, a3 & 0xFFFF0000 | 1);
    if (result)
    {
      v11 = *(a2 + 48);
      v12 = v11 & 0x3FFF;
      v13 = 3;
      if (v11)
      {
        v13 = 4;
      }

      if ((v11 & 0xFFFFC000) == 0xF8F80000)
      {
        v11 = 0;
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v11 = 0;
      v14 = 10;
    }

    *a5 = v14;
    *a6 = v11;
  }

  return result;
}

uint64_t _dispatch_mach_send_and_wait_for_reply(unint64_t a1, void *object, int a3, _BYTE *a4)
{
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = -2;
  *(&v59 + 1) = object[4];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  DWORD2(v61) = *(StatusReg + 24);
  v9 = *(object + 18);
  v10 = (object + 11);
  v11 = object + 11;
  if (v9)
  {
    v11 = *v10;
  }

  v12 = v11[3];
  if (v12 - 1 > 0xFFFFFFFD || (*v11 & 0x1F00) != 0x1500)
  {
    v12 = *(StatusReg + 64);
    if (!v12)
    {
      special_reply_port = thread_get_special_reply_port();
      *(StatusReg + 64) = special_reply_port;
      if (special_reply_port + 1 < 2)
      {
        _dispatch_mach_send_and_wait_for_reply_cold_1();
      }

      v12 = special_reply_port;
      v9 = *(object + 18);
    }

    if (v9)
    {
      v10 = *v10;
    }

    *(v10 + 3) = v12;
    BYTE6(v58) = 1;
  }

  v49 = xmmword_4A9A0;
  v50 = 0;
  v51 = -1;
  v52 = 0;
  v53 = 0;
  v54 = object;
  v55 = &v56;
  *a4 = _dispatch_mach_send_msg(a1, object, &v49, a3 | 4u);
  if (BYTE6(v58) == 1)
  {
    if (v12 == *(StatusReg + 64))
    {
      *(StatusReg + 64) = 0;
    }

    v14 = *(*(a1 + 120) + 92);
  }

  else
  {
    v14 = 0;
  }

  if (v12 + 1 <= 1)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_6(v12);
  }

  v48 = &v45;
  v46 = *(&v59 + 1);
  v15 = ~vm_page_mask;
  v16 = (vm_page_mask + 0x4000) & ~vm_page_mask;
  v17 = (&v45 - ((v16 + 15) & 0x1FFFFFFF0));
  bzero(v17, v16);
  for (i = (v15 & (v17 + vm_page_size)); i < v17 + v16; i += vm_page_size)
  {
    *i = 0;
  }

  LODWORD(v19) = 0;
  v20 = 0;
  if (v14 - 1 >= 0xFFFFFFFE)
  {
    v21 = 117440526;
  }

  else
  {
    v21 = 117456910;
  }

  if (v14 - 1 >= 0xFFFFFFFE)
  {
    v22 = 0;
  }

  else
  {
    v22 = v14;
  }

  v47 = a1;
  v23 = v21 & 0xFFFFFDFF | (((*(a1 + 116) >> 7) & 1) << 9);
  while (1)
  {
    v24 = mach_msg(v17, v23, 0, v16, v12, 0, v22);
    v25 = v24;
    if (v24 != 268451844)
    {
      break;
    }

    msgh_size = v17->msgh_size;
    if (msgh_size >= 0xFFFFFFBC)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_4(msgh_size);
    }

    if ((v23 & 4) == 0)
    {
      _dispatch_log("BUG in libdispatch client: dispatch_mach_send_and_wait_for_reply: dropped message too large to fit in memory: id = 0x%x, size = %u", v17->msgh_id, msgh_size);
      goto LABEL_45;
    }

    v19 = msgh_size + 68;
    v27 = malloc_type_malloc();
    v20 = v27;
    v28 = v19;
    if (!v27)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_2();
      v27 = v17;
      v28 = v16;
    }

    v23 = v23 & 0xFFFFFEFB | 0x100;
    v16 = v28;
    v17 = v27;
  }

  if ((v24 - 268451842) <= 7 && ((1 << (v24 - 2)) & 0x91) != 0)
  {
    if (BYTE6(v58) == 1)
    {
      _dispatch_destruct_reply_port();
    }

    goto LABEL_37;
  }

  if (v24)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_5(v24);
  }

  LODWORD(v16) = v17->msgh_size + 68;
  if (v20 && v16 < v19)
  {
    v30 = malloc_type_realloc();
    if (v30)
    {
      v20 = v30;
      v31 = v30;
    }

    else
    {
      v31 = v17;
    }
  }

  else
  {
LABEL_45:
    v31 = v17;
  }

  v32 = 0;
  msgh_local_port = v31->msgh_local_port;
  v34 = (*(v47 + 120) + 40);
  atomic_compare_exchange_strong_explicit(v34, &v32, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    _dispatch_unfair_lock_lock_slow(v34);
  }

  v35 = v61;
  if (v61)
  {
    v36 = *(&v60 + 1);
    if (*(&v60 + 1))
    {
      *(*(&v60 + 1) + 72) = v61;
    }

    *v35 = v36;
    *&v61 = 0;
  }

  v37 = *(StatusReg + 24) & 0xFFFFFFFC;
  v38 = atomic_exchange_explicit(v34, 0, memory_order_release);
  if (v38 != v37)
  {
    _dispatch_unfair_lock_unlock_slow(v34, v38);
  }

  if (BYTE6(v58) == 1)
  {
    if (v58 != msgh_local_port)
    {
      if ((msgh_local_port - 1) < 0xFFFFFFFE || v35)
      {
        _dispatch_mach_send_and_wait_for_reply_cold_3(msgh_local_port);
      }

      goto LABEL_64;
    }

    if (!v35 || *(StatusReg + 64))
    {
LABEL_64:
      _dispatch_destruct_reply_port();
      goto LABEL_65;
    }

    *(StatusReg + 64) = msgh_local_port;
  }

  else if ((msgh_local_port - 1) <= 0xFFFFFFFD && v35)
  {
    v39 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
    *(v39 + 16) = -1985229329;
    *(v39 + 24) = &off_74600;
    *(v39 + 72) = 0;
    *(v39 + 80) = 24;
    *(v39 + 100) = msgh_local_port;
    v41 = *(&v59 + 1);
    v40 = v60;
    *&v60 = 0;
    *(v39 + 56) = v59;
    *(v39 + 64) = v40;
    *(v39 + 32) = v41;
    *(v39 + 48) = -117964791;
    _dispatch_mach_handle_or_push_received_msg(v47, v39, 0);
  }

LABEL_65:
  v31->msgh_local_port = 0;
  if (*(v47 + 80) & 0x10000000 | v25)
  {
    if (!v25)
    {
      mach_msg_destroy(v31);
    }

LABEL_37:
    free(v20);
    return 0;
  }

  v42 = dispatch_mach_msg_create(v31, v16, v20 != 0, 0);
  v29 = v42;
  if (!v20 || v31 != v17)
  {
    if (*(v42 + 72))
    {
      v43 = *(v42 + 88);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  *(v29 + 32) = v46;
  return v29;
}

unint64_t dispatch_mach_send_with_result_and_wait_for_reply(unint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_782C8 = a4;
    __break(1u);
  }

  else
  {
    v15 = 0;
    result = _dispatch_mach_send_and_wait_for_reply(result, a2, a3 & 0xFFFF0000 | 1, &v15);
    if (v15 == 1)
    {
      v11 = *(a2 + 48);
      v12 = v11 & 0x3FFF;
      v13 = 3;
      if (v11)
      {
        v13 = 4;
      }

      if ((v11 & 0xFFFFC000) == 0xF8F80000)
      {
        v11 = 0;
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v11 = 0;
      v14 = 10;
    }

    *a5 = v14;
    *a6 = v11;
  }

  return result;
}

unint64_t dispatch_mach_send_with_result_and_async_reply_4libxpc(unint64_t result, _DWORD *object, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_782C8 = a4;
    __break(1u);
    goto LABEL_16;
  }

  if ((*(result + 116) & 0x10) == 0)
  {
LABEL_16:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_send_with_result_and_wait_for_reply is XPC only";
    __break(1u);
LABEL_17:
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Reply port needed for async send with reply";
    __break(1u);
    return result;
  }

  v9 = (object + 22);
  if (object[18])
  {
    v9 = *v9;
  }

  if ((*(v9 + 3) - 1) > 0xFFFFFFFD || (*v9 & 0x1F00) != 0x1500)
  {
    goto LABEL_17;
  }

  result = _dispatch_mach_send_msg(result, object, 0, a3 & 0xFFFF0000 | 1);
  if (result)
  {
    v10 = object[12];
    v11 = v10 & 0x3FFF;
    v12 = 3;
    if (v10)
    {
      v12 = 4;
    }

    if ((v10 & 0xFFFFC000) == 0xF8F80000)
    {
      v10 = 0;
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v10 = 0;
    v13 = 10;
  }

  *a5 = v13;
  *a6 = v10;
  return result;
}

void dispatch_mach_reconnect(uint64_t a1, unsigned int a2, dispatch_object_t object)
{
  v3 = object;
  v6 = *(a1 + 120);
  atomic_fetch_add_explicit((v6 + 88), 1u, memory_order_relaxed);
  if (a2 - 1 > 0xFFFFFFFD || object == 0)
  {
    v8 = 0;
    if (object == -1)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    dispatch_retain(object);
    *(v3 + 48) = 0x40000;
    v9 = v3 + 88;
    if (*(v3 + 72))
    {
      v9 = *v9;
    }

    v8 = *(v9 + 8);
  }

  *(v6 + 96) = v8;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 176);
  if (v11)
  {
    *(StatusReg + 176) = *(v11 + 16);
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  *(v11 + 40) = v11;
  *(v11 + 48) = v3;
  *(v11 + 56) = a2;
  *(v11 + 24) = -1;
  *(v11 + 32) = _dispatch_mach_reconnect_invoke;
  *v11 = xmmword_4A9B0;

  _dispatch_mach_send_push(a1, v11, 0);
}

BOOL _dispatch_mach_reconnect_invoke(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  if (*(v4 + 16))
  {
    _dispatch_unote_unregister(*(a1 + 120), 5);
    *(*(a1 + 120) + 24) = 0;
  }

  v5 = *(v4 + 92);
  if ((v5 + 1) >= 2)
  {
    v6 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
    *(v6 + 16) = -1985229329;
    *(v6 + 24) = &off_74600;
    *(v6 + 72) = 0;
    *(v6 + 80) = 24;
    *(v6 + 96) = v5;
    *(v6 + 48) = -117964793;
    _dispatch_mach_handle_or_push_received_msg(a1, v6, 0);
    *(v4 + 92) = 0;
  }

  v7 = *(v4 + 48);
  if (v7)
  {
    _dispatch_mach_msg_not_sent(a1, v7, 0);
    *(v4 + 48) = 0;
  }

  v8 = 0;
  *(a1 + 118) &= ~1u;
  v24 = 0;
  if ((*(a1 + 80) & 0x40000000) != 0)
  {
    v9 = -112;
  }

  else
  {
    v9 = -110;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v4 + 40), &v8, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    _dispatch_unfair_lock_lock_slow(v4 + 40);
  }

  v11 = v24;
  v24 = *(v4 + 56);
  v12 = v24;
  *(v4 + 56) = v11;
  if (v12)
  {
    v12[9] = &v24;
    do
    {
      v13 = v12[8];
      v12[9] = 0;
      _dispatch_mach_reply_unregister(a1, v12, v9);
      v12 = v13;
    }

    while (v13);
    v11 = *(v4 + 56);
  }

  v14 = *(StatusReg + 24) & 0xFFFFFFFC;
  v15 = atomic_exchange_explicit((v4 + 40), 0, memory_order_release);
  if (v15 != v14)
  {
    _dispatch_unfair_lock_unlock_slow(v4 + 40, v15);
    if (v11)
    {
      return v11 == 0;
    }

LABEL_18:
    v16 = *(StatusReg + 176);
    if (v16)
    {
      v17 = *(v16 + 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = *(a2 + 56);
    v19 = *(a2 + 48);
    if (v17 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a2);
    }

    else
    {
      *(a2 + 16) = v16;
      *(a2 + 8) = v17;
      *(StatusReg + 176) = a2;
    }

    v20 = *(a1 + 118);
    if (v19 == -1)
    {
      v19 = 0;
      v21 = v20 | 2;
      *(a1 + 118) = v21;
      if ((v21 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v20 & 2) == 0)
    {
LABEL_25:
      *(v4 + 92) = v18;
      *(v4 + 48) = v19;
LABEL_31:
      atomic_fetch_add_explicit((v4 + 88), 0xFFFFFFFF, memory_order_relaxed);
      return v11 == 0;
    }

    if ((v18 - 1) <= 0xFFFFFFFD)
    {
      v22 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
      *(v22 + 16) = -1985229329;
      *(v22 + 24) = &off_74600;
      *(v22 + 72) = 0;
      *(v22 + 80) = 24;
      *(v22 + 96) = v18;
      *(v22 + 48) = -117964793;
      _dispatch_mach_handle_or_push_received_msg(a1, v22, 0);
    }

    if (v19)
    {
      _dispatch_mach_msg_not_sent(a1, v19, 0);
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  return v11 == 0;
}

void _dispatch_mach_send_push(char *a1, void **a2, uint64_t a3)
{
  v4 = *(a1 + 15);
  v5 = 0xA000000000;
  if (*a2 >= 0x1000 && *a2 == &unk_70CC8)
  {
    v5 = 0xB000000000;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v4 + 72;
  v7 = atomic_exchange_explicit((v4 + 72), a2, memory_order_release);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  atomic_fetch_add_explicit((a1 + 8), v8, memory_order_relaxed);
  v9 = a3 << 32;
  if (v7)
  {
    *(v7 + 16) = a2;
    *(StatusReg + 976) = 0;
    v10 = *(v4 + 64);
    while (1)
    {
      v11 = v10;
      v12 = v9 | v10 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      if ((v10 & 0x700000000) >= v9)
      {
        v12 = v10;
      }

      if (v10 == v12)
      {
        break;
      }

      v5 = 0;
      atomic_compare_exchange_strong_explicit((v4 + 64), &v10, v12, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    v5 = 0;
    v12 = v10;
  }

  else
  {
    *(v4 + 80) = a2;
    *(StatusReg + 976) = 0;
    v14 = *(v4 + 64);
    do
    {
      v11 = v14;
      if ((v14 & 0x700000000) >= v9)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9 | v14 & 0xFFFFFF50FFFFFFFFLL | 0x800000000;
      }

      v12 = v15 | v5;
      atomic_compare_exchange_strong_explicit((v4 + 64), &v14, v12, memory_order_release, memory_order_relaxed);
    }

    while (v14 != v11);
    if ((v11 & 0x8000000000) != 0 && *(a1 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) <= 2)
    {
      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
      return;
    }
  }

LABEL_13:
  if (v11 >= 4)
  {
    if ((v11 & 0x700000000) < (v12 & 0x700000000))
    {
      _pthread_workqueue_override_start_direct_check_owner();
    }
  }

  else if ((v5 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, BYTE4(v12) & 7);
  }

  else
  {
    if (!v7 || *(v4 + 88) || (*(a1 + 20) & 0x10000000) != 0)
    {
      v13 = *(*a1 + 64);
      goto LABEL_27;
    }

    if ((v11 & 0x1000000000) != 0)
    {
      v13 = *(*a1 + 64);
LABEL_27:

      v13();
      return;
    }
  }

  _os_object_release_internal_n(a1, 2);
}

uint64_t dispatch_mach_get_checkin_port(uint64_t a1)
{
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 120) + 96);
  }
}

BOOL dispatch_mach_can_handoff_4libxpc()
{
  v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  while (1)
  {
    v0 = *v0;
    if (!v0)
    {
      break;
    }

    if (*(v0 + 8) == "mach_msg")
    {
      v1 = *(v0 + 16);
      if (v1)
      {
        return *(v1 + 56) == 0;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t dispatch_mach_handoff_reply_f(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = _dispatch_mach_handoff_context(a2);
  v8 = *(v7 + 16);
  result = _dispatch_mach_handoff_set_wlh(v8, a1);
  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  *(v7 + 24) = a1;
  *v8 = 260;
  v8[4] = a4;
  v8[5] = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v11 >= 0x10FF)
  {
    v12 = 4351;
  }

  else
  {
    v12 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v13 = *(StatusReg + 224);
  if (v13)
  {
    result = 0;
    if (atomic_fetch_add_explicit((v13 + 12), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_group_notify_cold_1();
    }
  }

  v8[3] = v13;
  if (v13 == -1)
  {
    goto LABEL_12;
  }

  if (v13)
  {
    v14 = *(v13 + 32);
  }

  if (MEMORY[0xFFFFFC100])
  {
    result = kdebug_trace();
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_12:
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v15 = *(a1 + 84);
  if ((v15 & 0x40000000) != 0 || (v15 & 0xFFF) == 0)
  {
    v16 = __clz(__rbit32(v12 >> 8)) + 1;
    goto LABEL_17;
  }

LABEL_15:
  v16 = 0;
  v12 = 0;
LABEL_17:
  v8[1] = v12;
  *(v7 + 32) = v16;
  *v8 = &unk_70E18;
  return result;
}

unint64_t _dispatch_mach_handoff_context(unsigned int a1)
{
  v2 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  while (*(v2 + 8) != "mach_msg");
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_10:
    _dispatch_mach_handoff_context_cold_2();
  }

  if (*(*v3 + 16) == 515)
  {
    v3 = _dispatch_calloc_typed();
    *(v2 + 16) = v3;
    *(v3 + 72) = 1;
  }

  else
  {
    atomic_fetch_add_explicit((v3 + 72), 1u, memory_order_relaxed);
  }

  if (*(v3 + 56))
  {
    _dispatch_mach_handoff_context_cold_1();
  }

  *(v3 + 56) = a1;
  return v2;
}

void _dispatch_mach_ipc_handoff_async(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  (*(**(a1 + 24) + 72))(*(a1 + 24), v2, *(a1 + 32));
  if (v4)
  {
    _dispatch_sync_ipc_handoff_begin(v4, v3, v2 + 64);
    atomic_compare_exchange_strong_explicit((v2 + 64), &v5, ~v4, memory_order_relaxed, memory_order_relaxed);
  }

  if (!atomic_fetch_add_explicit((v2 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(v2);
  }

  v6 = *(a1 + 24);

  _os_object_release_internal(v6);
}

void _dispatch_mach_msg_invoke(uint64_t a1, uint64_t a2, int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[20];
  v7 = StatusReg[21];
  *(StatusReg + 10) = *v7;
  v8 = *(a1 + 48);
  v9 = v8 & 0xFFFFC000;
  v10 = 3;
  if (v8)
  {
    v10 = 4;
  }

  if (v9 == -117964800)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v9 == -117964800)
  {
    v12 = v8 & 0x3FFF;
  }

  else
  {
    v12 = v10;
  }

  v31 = 0;
  v32 = 0;
  v30[1] = "mach_msg";
  v30[2] = a1;
  v30[0] = StatusReg[23];
  StatusReg[23] = v30;
  while (1)
  {
    v13 = *(v6 + 88);
    *(a1 + 16) = -1985229329;
    v14 = *(a1 + 64);
    if (v14 != -1)
    {
      v15 = *(a1 + 64);
      if (v14)
      {
        v16 = *(v14 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
        v14 = *(a1 + 64);
      }
    }

    v17 = *(a1 + 56);
    if (v17 == -1)
    {
      v20 = 0;
    }

    else
    {
      v18 = StatusReg[25];
      v19 = ((v18 >> 8) & 0xF) != 0 ? 256 << ((BYTE1(v18) & 0xFu) - 1) : 0;
      v20 = v17 & 0xFFFFFF;
      if (v20)
      {
        if (v20 < (v19 & 0xFFFFFF00))
        {
          v20 = v19 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
        }
      }

      else
      {
        v20 = v18 >> 12 ? (256 << ((v18 >> 12) - 1)) | 0xFF : v19 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
      }
    }

    v21 = v20 & 0xFFFFFFFF02FFFFFFLL;
    v22 = StatusReg[4];
    if ((v22 & 0x1000000) != 0)
    {
      if (v21)
      {
        goto LABEL_60;
      }

      v21 = v22 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v21 == (v22 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_26;
    }

    if (v21)
    {
      goto LABEL_60;
    }

LABEL_26:
    if (v14 == -1)
    {
      goto LABEL_30;
    }

    if (StatusReg[28] != v14)
    {
      break;
    }

    if (!v14 || atomic_fetch_add_explicit((v14 + 12), 0xFFFFFFFF, memory_order_relaxed) > 1)
    {
      goto LABEL_30;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    v27 = *(*(a1 + 88) + 40);
    if (v27)
    {
      v28 = *(v27 + 32);
      v29 = *(v27 + 40);
    }
  }

  v21 = 0;
LABEL_60:
  _dispatch_set_priority_and_voucher_slow(v21, v14, 7);
LABEL_30:
  v23 = 0;
  *(a1 + 64) = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v23 = _dispatch_autorelease_pool_push();
  }

  if ((a3 & 4) != 0)
  {
    _dispatch_client_callout3(*(v13 + 48), v12, a1, *(&dword_18 + _dispatch_mach_xpc_hooks));
  }

  else
  {
    if ((*(v6 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v6);
    }

    if (v12 == 2 && (*(v6 + 80) & 0x10000000) != 0)
    {
      v25 = (a1 + 88);
      if (*(a1 + 72))
      {
        v25 = *&v25->msgh_bits;
      }

      mach_msg_destroy(v25);
    }

    else
    {
      if (*(v13 + 40))
      {
        v24 = *(v13 + 40);
      }

      else
      {
        v24 = 0;
      }

      _dispatch_client_callout4(*(v13 + 48), v12, a1, v11, v24);
    }
  }

  ++StatusReg[26];
  if (v23)
  {
    _dispatch_autorelease_pool_pop();
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  dispatch_release(a1);
  v26 = v31;
  StatusReg[23] = v30[0];
  if (v26)
  {
    _dispatch_mach_ipc_handoff_async(v30);
  }

  StatusReg[20] = v6;
  StatusReg[21] = v7;
}

void _dispatch_mach_barrier_invoke(void *a1, uint64_t a2, int a3)
{
  v6 = a1[6];
  v5 = a1[7];
  v7 = *(*a1 + 16);
  if (v7 == 1024)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = *(StatusReg + 168);
    v38 = *(StatusReg + 160);
    *(StatusReg + 160) = *v37;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v9 = *(v5 + 88);
  if ((*(v5 + 116) & 4) == 0)
  {
    if ((a3 & 0x1000000) != 0)
    {
      _dispatch_autorelease_pool_push();
      _dispatch_mach_connect_invoke(v5);
      _dispatch_autorelease_pool_pop();
    }

    else
    {
      _dispatch_mach_connect_invoke(v5);
    }
  }

  v10 = a1[3];
  a1[3] = -1;
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

  v13 = a1[1];
  if (v13 == -1)
  {
    v21 = 0;
  }

  else
  {
    v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    if (((v14 >> 8) & 0xF) != 0)
    {
      v15 = 256 << ((BYTE1(v14) & 0xFu) - 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF00 | v14;
    v17 = v13 & 0xFFFFFF;
    if ((v13 & 0xFFFFFF) != 0)
    {
      v18 = v15 & 0xFFFFFF00;
      v19 = v13 & 0x10000000;
      if ((v14 & 0x44000000) == 0 && v19 == 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v17 < v18)
      {
        v21 = v16;
      }
    }

    else if (v14 >> 12)
    {
      v21 = (256 << ((v14 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFFF00 | v14;
    }
  }

  v22 = v21 & 0xFFFFFFFF02FFFFFFLL;
  v23 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = v23[4];
  if ((v24 & 0x1000000) != 0)
  {
    if (v22)
    {
LABEL_67:
      _dispatch_set_priority_and_voucher_slow(v22, v10, 6);
      goto LABEL_34;
    }

    v22 = v24 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v22 == (v24 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_30;
  }

  if (v22)
  {
    goto LABEL_67;
  }

LABEL_30:
  if (v10 == -1)
  {
    goto LABEL_34;
  }

  if (v23[28] != v10)
  {
    v22 = 0;
    goto LABEL_67;
  }

  if (v10)
  {
    if (atomic_fetch_add_explicit((v10 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      qword_78298 = "API MISUSE: Voucher over-release";
      __break(1u);
      v34 = a1[5];
      if (((v10 + 12) & 1) == 0)
      {
        if (((v10 + 12) & 0x10) != 0)
        {
          if (*(v34 + 16))
          {
            v36 = *(v34 + 16);
          }
        }

        else
        {
          v35 = a1[4];
        }
      }
    }
  }

LABEL_34:
  v25 = v23[22];
  if (v25)
  {
    v26 = *(v25 + 8) + 1;
  }

  else
  {
    v26 = 1;
  }

  v27 = a1;
  if (v26 <= _dispatch_continuation_cache_limit)
  {
    v27 = 0;
    a1[2] = v25;
    *(a1 + 2) = v26;
    v23[22] = a1;
  }

  if ((a3 & 0x1000000) != 0)
  {
    v28 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v28 = 0;
  }

  v30 = a1[4];
  v29 = a1[5];
  if (v29)
  {
    v31 = a1[4];
    if (v30 == _dispatch_call_block_and_release)
    {
      if (*(v29 + 16))
      {
        v32 = *(v29 + 16);
      }
    }
  }

  _dispatch_client_callout(v29, v30);
  if (*(v9 + 40))
  {
    v33 = *(v9 + 40);
  }

  else
  {
    v33 = 0;
  }

  _dispatch_client_callout4(*(v9 + 48), 6, 0, 0, v33);
  if (v28)
  {
    _dispatch_autorelease_pool_pop();
  }

  if ((v6 & 0x200) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v27)
    {
      goto LABEL_54;
    }
  }

  else if (!v27)
  {
    goto LABEL_54;
  }

  _dispatch_continuation_free_to_cache_limit(v27);
LABEL_54:
  if (v7 == 1024)
  {
    v23[20] = v38;
    v23[21] = v37;
  }
}

uint64_t _dispatch_mach_connect_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (*(v2 + 40))
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  result = _dispatch_client_callout4(*(v2 + 48), 1, 0, 0, v3);
  *(a1 + 116) |= 4u;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  ++*(StatusReg + 208);
  return result;
}

void dispatch_mach_send_barrier_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = *(v7 + 16);
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  *v7 = 260;
  *(v7 + 32) = a3;
  *(v7 + 40) = a2;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  if (v8 >= 0x10FF)
  {
    v9 = 4351;
  }

  else
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (!v10 || atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) > 0)
  {
    *(v7 + 24) = v10;
    if (v10 == -1)
    {
      goto LABEL_12;
    }

    if (v10)
    {
      v11 = *(v10 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_12:
      if (v8)
      {
LABEL_13:
        v12 = (*(a1 + 84) >> 30) & 1;
        if ((*(a1 + 84) & 0xFFF) == 0)
        {
          v12 = 1;
        }

        if (v12)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_18;
      }
    }

    v13 = 0;
LABEL_18:
    *(v7 + 8) = v13;
    *(v7 + 48) = *v7;
    *(v7 + 56) = a1;
    *v7 = &unk_70CC8;
    goto LABEL_19;
  }

  qword_78298 = "API MISUSE: Voucher resurrection";
  __break(1u);
  v16 = *(v7 + 40);
  if (((v10 + 12) & 1) == 0)
  {
    if (((v10 + 12) & 0x10) != 0)
    {
      if (*(v16 + 16))
      {
        v18 = *(v16 + 16);
      }
    }

    else
    {
      v17 = *(v7 + 32);
    }
  }

LABEL_19:
  v14 = __clz(__rbit32((*(v7 + 8) >> 8) & 0x3FFF));
  if (((*(v7 + 8) >> 8) & 0x3FFF) != 0)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 0;
  }

  _dispatch_mach_send_push(a1, v7, v15);
}

void dispatch_mach_send_barrier(unint64_t a1, uint64_t (**aBlock)())
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v6 = _dispatch_Block_copy(aBlock);
  v7 = aBlock[2];
  if (v7)
  {
    v8 = aBlock[2];
    if (v7 != _dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_29:
    *v5 = 276;
    v5[5] = v6;
    _dispatch_continuation_init_slow(v5, a1, 0);
    goto LABEL_21;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_29;
  }

LABEL_5:
  *v5 = 276;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = v6;
  v9 = StatusReg[4] & 0xFFFFFFLL;
  if (v9 >= 0x10FF)
  {
    v10 = 4351;
  }

  else
  {
    v10 = StatusReg[4] & 0xFFFFFFLL;
  }

  v11 = StatusReg[28];
  if (!v11 || atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed) > 0)
  {
    v5[3] = v11;
    if (v11 == -1)
    {
      goto LABEL_14;
    }

    if (v11)
    {
      v12 = *(v11 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_14:
      if (v9)
      {
LABEL_15:
        v13 = (*(a1 + 84) >> 30) & 1;
        if ((*(a1 + 84) & 0xFFF) == 0)
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_20;
      }
    }

    v14 = 0;
LABEL_20:
    v5[1] = v14;
LABEL_21:
    v5[6] = *v5;
    v5[7] = a1;
    *v5 = &unk_70CC8;
    goto LABEL_22;
  }

  qword_78298 = "API MISUSE: Voucher resurrection";
  __break(1u);
  v17 = v5[5];
  if (((v11 + 12) & 1) == 0)
  {
    if (((v11 + 12) & 0x10) != 0)
    {
      if (*(v17 + 16))
      {
        v19 = *(v17 + 16);
      }
    }

    else
    {
      v18 = v5[4];
    }
  }

LABEL_22:
  v15 = __clz(__rbit32((*(v5 + 2) >> 8) & 0x3FFF));
  if (((*(v5 + 2) >> 8) & 0x3FFF) != 0)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  _dispatch_mach_send_push(a1, v5, v16);
}

uint64_t dispatch_mach_receive_barrier_f(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  *v7 = 260;
  v7[4] = a3;
  v7[5] = a2;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  if (v8 >= 0x10FF)
  {
    v9 = 4351;
  }

  else
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10)
  {
    result = 0;
    if (atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
      return result;
    }
  }

  v7[3] = v10;
  if (v10 == -1)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = *(v10 + 32);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_12:
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v13 = a1[21];
  if ((v13 & 0x40000000) != 0 || (v13 & 0xFFF) == 0)
  {
    v14 = __clz(__rbit32(v9 >> 8)) + 1;
    goto LABEL_17;
  }

LABEL_15:
  v14 = 0;
  v9 = 0;
LABEL_17:
  v7[6] = *v7;
  v7[7] = a1;
  *v7 = &unk_70D00;
  v7[1] = v9;
  v15 = *(*a1 + 72);

  return v15(a1, v7, v14);
}

uint64_t dispatch_mach_receive_barrier(_DWORD *a1, uint64_t (**aBlock)())
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v6 = _dispatch_Block_copy(aBlock);
  v7 = aBlock[2];
  if (v7)
  {
    if (v7 != _dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_24:
    *v5 = 276;
    v5[5] = v6;
    inited = _dispatch_continuation_init_slow(v5, a1, 0);
    goto LABEL_20;
  }

  if (!_dispatch_block_special_invoke)
  {
    goto LABEL_24;
  }

LABEL_5:
  *v5 = 276;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = v6;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  if (v8 >= 0x10FF)
  {
    v9 = 4351;
  }

  else
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10)
  {
    result = 0;
    if (atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
      return result;
    }
  }

  v5[3] = v10;
  if (v10 == -1)
  {
    goto LABEL_14;
  }

  if (v10)
  {
    v12 = *(v10 + 32);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_14:
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v13 = a1[21];
  if ((v13 & 0x40000000) != 0 || (v13 & 0xFFF) == 0)
  {
    inited = (__clz(__rbit32(v9 >> 8)) + 1);
    goto LABEL_19;
  }

LABEL_17:
  inited = 0;
  v9 = 0;
LABEL_19:
  v5[1] = v9;
LABEL_20:
  v5[6] = *v5;
  v5[7] = a1;
  *v5 = &unk_70D00;
  v15 = *(*a1 + 72);

  return v15(a1, v5, inited);
}

void dispatch_mach_cancel(uint64_t a1)
{
  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) > 0)
  {
    if ((atomic_fetch_or_explicit((a1 + 80), 0x10000000u, memory_order_relaxed) & 0x10000000) == 0)
    {
      dispatch_mach_reconnect(a1, 0, 0xFFFFFFFFFFFFFFFFLL);
    }

    _os_object_release_internal(a1);
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void _dispatch_mach_activate(uint64_t a1)
{
  _dispatch_lane_activate(a1);
  if ((*(a1 + 116) & 1) == 0)
  {
    v3 = 0;
    v2 = _dispatch_queue_compute_priority_and_wlh(a1, &v3);
    if (v2)
    {
      _dispatch_mach_install(a1, v3, v2);
    }
  }
}

void _dispatch_mach_install(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 116);
  *(a1 + 116) = v6 | 1;
  v7 = *(*(a1 + 120) + 88);
  if ((v7 & 0x80000000) != 0)
  {
    _dispatch_mach_install_cold_1(v7);
  }

  if (*(a1 + 84))
  {
    if ((v4 & 0x10000000) != 0)
    {
      return;
    }
  }

  else
  {
    *(a1 + 84) = a3;
    if ((v4 & 0x10000000) != 0)
    {
      return;
    }
  }

  if ((v6 & 0x10) != 0 && (*(&stru_20.cmd + _dispatch_mach_xpc_hooks))(*(v5 + 48)))
  {
    v10 = off_71470(&_dispatch_xpc_type_sigterm, 15, 0);
    *(v10 + 8) = ~a1;
    *(a1 + 128) = v10;
    _dispatch_unote_register(v10, a2, a3);
  }

  if (*(v5 + 24))
  {

    _dispatch_unote_register(v5, a2, a3);
  }
}

void _dispatch_mach_invoke(unint64_t a1, uint64_t a2, int a3)
{
  v91 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  }

  if ((a3 & 2) != 0)
  {
    v91 = 0x40020000000001;
    v6 = a3 & 0x40000;
  }

  else
  {
    v66 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v68 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v6 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v69 = 0x4000000000;
    }

    else
    {
      v69 = 1;
    }

    v70 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v70 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v71 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v71 = v70;
    }

    v72 = *(StatusReg + 200);
    v73 = (v72 >> 8) & 0xF;
    v74 = v72 >> 12;
    v75 = HIWORD(v72) & 0xF;
    if (v73 <= v74)
    {
      v73 = v74;
    }

    if (v73 > v75)
    {
      v75 = v73;
    }

LABEL_223:
    for (i = *(a1 + 56); ; i = v81)
    {
      while ((i & v71) != 0)
      {
        if ((a3 & 1) != 0 || (v82 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v82, i ^ v69, memory_order_acquire, memory_order_acquire), v82 == i))
        {
          v38 = 0;
          v91 = 0;
          goto LABEL_204;
        }

        i = v82;
      }

      if ((i & 0x1000000000) != 0)
      {
        v77 = HIDWORD(i) & 7;
        if (v77 > v75)
        {
          v83 = *(StatusReg + 24);
          _pthread_workqueue_override_start_direct();
          v84 = *(StatusReg + 200);
          v75 = v77;
          if ((HIWORD(v84) & 0xF) < v77)
          {
            *(StatusReg + 200) = v84 & 0xFFF0FFFF | (v77 << 16);
            v75 = v77;
          }

          goto LABEL_223;
        }
      }

      v78 = (i >> 40) & 1;
      if (!((v66 + i) >> 53))
      {
        LODWORD(v78) = 1;
      }

      v79 = v78 ? 0x60000000000000 : 0x20000000000000;
      v80 = i & 0x7700000001 | v68 | v79;
      v81 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v81, v80, memory_order_acquire, memory_order_acquire);
      if (v81 == i)
      {
        break;
      }
    }

    v85 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v85 = v69 | 0x60000000000000;
    }

    v91 = (v80 & v85) - (i & 0x3FFE0000000000);
    if (!v91)
    {
      v38 = 0;
      goto LABEL_204;
    }
  }

  if (v6)
  {
    v88 = 0;
  }

  else
  {
    v7 = *(a1 + 84);
    v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = *(v8 + 200);
    if (v9)
    {
      v10 = v7 & 0xFFF;
      if ((v7 & 0xFFF) != 0)
      {
        if ((v9 & 0xFFFu) > v10)
        {
          v10 = v9 & 0xFFF;
        }

        if (v7 >> 12 <= v10 >> 8)
        {
          v11 = 0x40000000;
        }

        else
        {
          v11 = 1140912128;
        }

        v12 = v9 & 0x880F0000 | v10 | v11 & v7;
      }

      else
      {
        v13 = v9 | 0x40000000;
        if ((v9 & 0xFFF) == 0)
        {
          v13 = *(v8 + 200);
        }

        v14 = v7 >> 12;
        v12 = v13 & 0xFFFF0FFF | v7 & 0x400F000;
        if (v14 <= ((v13 >> 8) & 0xF))
        {
          v12 = v13;
        }
      }
    }

    else
    {
      v12 = v7 & 0xFFF0FFFF;
    }

    *(v8 + 200) = v12;
    v88 = v9 & 0xFFF0FFFF;
  }

  v15 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v15 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v87 = v15 | 0x10;
  v16 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v86 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (2)
  {
    while (2)
    {
      v17 = v15;
      if ((v15 & 0x1000002) != 2)
      {
        v24 = *(v16 + 160);
        v25 = *(a1 + 120);
        v26 = *(a1 + 88);
        if ((v15 & 0x40000) == 0 && v26)
        {
          v27 = *(v16 + 232);
          v28 = v27 ? *(v27 + 24) : -4;
          v39 = v26[2] & 0xFFFFFFFFFFFFFFFCLL;
          if (v39 == -4)
          {
            v40 = 1;
          }

          else
          {
            v40 = v39 == 0;
            v31 = v26[2] < 0;
          }

          if (!v40 && v28 != v39)
          {
            _dispatch_mach_handle_wlh_change(a1);
          }
        }

        if ((*(a1 + 116) & 1) == 0)
        {
          if ((v17 & 0x40000) != 0)
          {
            v38 = *(a1 + 24);
            goto LABEL_138;
          }

          if ((v17 & 0x10000) != 0)
          {
            v59 = *(v16 + 200);
          }

          else
          {
            v59 = 0x2000000;
          }

          v60 = *(v16 + 232);
          if (v60)
          {
            v61 = *(v60 + 24);
          }

          else
          {
            v61 = -4;
          }

          _dispatch_mach_install(a1, v61, v59);
          ++*(v16 + 208);
        }

        if (!*(a1 + 48))
        {
          v42 = 0;
          goto LABEL_95;
        }

        v42 = *(a1 + 24);
        if (v24 != v42)
        {
          goto LABEL_95;
        }

        while (1)
        {
          while (1)
          {
            v42 = _dispatch_lane_serial_drain(a1, a2, v17, &v91);
LABEL_95:
            v43 = *(a1 + 80);
            if (!v42 && (v43 & 0x10000000) == 0 && v26[2] && (v26[2] & 3) == 0)
            {
              break;
            }

LABEL_107:
            if (!*(v25 + 72))
            {
              goto LABEL_119;
            }

            if ((*(v25 + 30) & 1) == 0 || *(v25 + 88))
            {
              if (*(v25 + 88))
              {
                v45 = *(v25 + 16) != 0;
              }

              else
              {
                v45 = *(a1 + 118) & 1;
              }

              if (v45 && v24 != &_dispatch_mgr_q)
              {
                if (v42)
                {
                  v38 = v42;
                }

                else
                {
                  v38 = &_dispatch_mgr_q;
                }

                goto LABEL_138;
              }

              _dispatch_mach_send_invoke(a1, v17, 4 * (v24 != &_dispatch_mgr_q));
              if (v42)
              {
                goto LABEL_119;
              }

              if (!*(a1 + 48))
              {
                goto LABEL_133;
              }

              v42 = *(a1 + 24);
            }

            if (!v42)
            {
LABEL_133:
              if (*(v25 + 72))
              {
                v42 = -1;
              }

              else
              {
                v42 = 0;
              }

              if ((v43 & 0x10000000) == 0)
              {
                goto LABEL_137;
              }

              goto LABEL_120;
            }

LABEL_119:
            if ((v43 & 0x10000000) == 0)
            {
              goto LABEL_137;
            }

LABEL_120:
            if ((v43 & 0x80000000) == 0)
            {
              _dispatch_mach_cancel(a1);
              if ((v46 & 1) == 0)
              {
                if (v42)
                {
                  v38 = v42;
                }

                else
                {
                  v38 = -1;
                }

                goto LABEL_138;
              }
            }

            if ((*(a1 + 116) & 8) != 0)
            {
              goto LABEL_137;
            }

            v38 = *(a1 + 24);
            if (v24 != v38)
            {
              if (v42)
              {
                v38 = v42;
              }

              goto LABEL_138;
            }

            if (*(a1 + 56) >> 55)
            {
              goto LABEL_138;
            }

            if (!*(a1 + 48))
            {
              _dispatch_mach_cancel_invoke(a1, v17);
LABEL_137:
              v38 = v42;
              goto LABEL_138;
            }
          }

          _dispatch_unote_resume(v26);
          if (v24 == *(a1 + 24) && !v24[3] && !*(v25 + 72) && (*(v24 + 21) & 0x80000000) != 0)
          {
            if (*(v16 + 40))
            {
              v54 = *(v16 + 232);
              if (v54)
              {
                v55 = *(v54 + 24);
                if (v55 != -4 && v55 == (v26[2] & 0xFFFFFFFFFFFFFFFCLL))
                {
                  _dispatch_event_loop_drain(1);
                  if (*(a1 + 48))
                  {
                    continue;
                  }
                }
              }
            }
          }

          v43 = *(a1 + 80);
          goto LABEL_107;
        }
      }

      _dispatch_last_resort_autorelease_pool_push(a2);
      v19 = (v16 + 160);
      v18 = *(v16 + 160);
      v20 = *(a1 + 120);
      v21 = *(a1 + 88);
      if ((v17 & 0x40000) == 0 && v21)
      {
        v22 = *(v16 + 232);
        v23 = v22 ? *(v22 + 24) : -4;
        v29 = v21[2] & 0xFFFFFFFFFFFFFFFCLL;
        if (v29 == -4)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29 == 0;
          v31 = v21[2] < 0;
        }

        if (!v30 && v23 != v29)
        {
          _dispatch_mach_handle_wlh_change(a1);
        }
      }

      if ((*(a1 + 116) & 1) == 0)
      {
        if ((v17 & 0x40000) != 0)
        {
          v38 = *(a1 + 24);
          goto LABEL_132;
        }

        if ((v17 & 0x10000) != 0)
        {
          v56 = *(v16 + 200);
        }

        else
        {
          v56 = 0x2000000;
        }

        v57 = *(v16 + 232);
        if (v57)
        {
          v58 = *(v57 + 24);
        }

        else
        {
          v58 = -4;
        }

        _dispatch_mach_install(a1, v58, v56);
        ++*(v16 + 208);
      }

      if (!*(a1 + 48))
      {
        v33 = 0;
        goto LABEL_49;
      }

      v33 = *(a1 + 24);
      if (v18 != v33)
      {
        goto LABEL_49;
      }

      while (1)
      {
        while (1)
        {
          v33 = _dispatch_lane_serial_drain(a1, a2, v17, &v91);
LABEL_49:
          v34 = *(a1 + 80);
          if (v33 || (v34 & 0x10000000) != 0)
          {
            break;
          }

          if (!v21[2] || (v21[2] & 3) != 0)
          {
            break;
          }

          _dispatch_unote_resume(v21);
          if (v18 == *(a1 + 24) && !v18[3] && !*(v20 + 72) && (*(v18 + 21) & 0x80000000) != 0)
          {
            if (*(v16 + 40))
            {
              v52 = *(v16 + 232);
              if (v52)
              {
                v53 = *(v52 + 24);
                if (v53 != -4 && v53 == (v21[2] & 0xFFFFFFFFFFFFFFFCLL))
                {
                  _dispatch_event_loop_drain(1);
                  if (*(a1 + 48))
                  {
                    continue;
                  }
                }
              }
            }
          }

          v34 = *(a1 + 80);
          break;
        }

        if (!*(v20 + 72))
        {
          goto LABEL_73;
        }

        if ((*(v20 + 30) & 1) != 0 && !*(v20 + 88))
        {
          goto LABEL_72;
        }

        if (*(v20 + 88))
        {
          v36 = *(v20 + 16) != 0;
        }

        else
        {
          v36 = *(a1 + 118) & 1;
        }

        if (v36 && v18 != &_dispatch_mgr_q)
        {
          if (v33)
          {
            v38 = v33;
          }

          else
          {
            v38 = &_dispatch_mgr_q;
          }

          goto LABEL_132;
        }

        _dispatch_mach_send_invoke(a1, v17, 4 * (v18 != &_dispatch_mgr_q));
        if (v33)
        {
LABEL_73:
          if ((v34 & 0x10000000) == 0)
          {
            goto LABEL_131;
          }

          goto LABEL_74;
        }

        if (*(a1 + 48))
        {
          v33 = *(a1 + 24);
LABEL_72:
          if (v33)
          {
            goto LABEL_73;
          }
        }

        if (*(v20 + 72))
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        if ((v34 & 0x10000000) == 0)
        {
          goto LABEL_131;
        }

LABEL_74:
        if ((v34 & 0x80000000) == 0)
        {
          _dispatch_mach_cancel(a1);
          if ((v37 & 1) == 0)
          {
            if (v33)
            {
              v38 = v33;
            }

            else
            {
              v38 = -1;
            }

            goto LABEL_132;
          }
        }

        if ((*(a1 + 116) & 8) != 0)
        {
          goto LABEL_131;
        }

        v38 = *(a1 + 24);
        if (v18 != v38)
        {
          break;
        }

        if (*(a1 + 56) >> 55)
        {
          goto LABEL_132;
        }

        if (!*(a1 + 48))
        {
          _dispatch_mach_cancel_invoke(a1, v17);
LABEL_131:
          v38 = v33;
          goto LABEL_132;
        }
      }

      if (v33)
      {
        v38 = v33;
      }

LABEL_132:
      v90 = *v19;
      *(v16 + 160) = a1;
      *(v16 + 168) = &v90;
      _dispatch_last_resort_autorelease_pool_pop(a2);
      *v19 = v90;
LABEL_138:
      if ((v38 + 1) > 1)
      {
        goto LABEL_202;
      }

      v47 = v91;
      v48 = *(a1 + 56);
      while (2)
      {
        v49 = v48;
        v50 = v48 - v47;
        v51 = v50 & 0xFFFFFFF700000001;
        if (v49 >> 55)
        {
LABEL_144:
          v48 = v49;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v48, v51, memory_order_release, memory_order_relaxed);
          if (v48 == v49)
          {
            if ((~v49 & 0x1800000000) == 0)
            {
              v62 = HIDWORD(v49) & 7;
              v63 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v64 = *(v63 + 200);
              if ((HIWORD(v64) & 0xF) < v62)
              {
                *(v63 + 200) = v64 & 0xFFF0FFFF | (v62 << 16);
              }
            }

            v38 = 0;
            v91 = 0;
            goto LABEL_202;
          }

          continue;
        }

        break;
      }

      if ((v49 & 0x8000000000) == 0)
      {
        if (v38)
        {
          v51 = v50 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v51 = v50 & 0xFFFFFFF000000001;
        }

        goto LABEL_144;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v38 = *(v86 + 160);
      v15 = v87;
      if (a3)
      {
        continue;
      }

      break;
    }

    v15 = v87;
    if ((*(*v38 + 16) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_202:
  if ((v17 & 0x40000) == 0)
  {
    v65 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v65 + 200) = *(v65 + 200) & 0xF0000 | v88;
  }

LABEL_204:
  if ((a3 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v38)
    {
      goto LABEL_209;
    }

LABEL_207:
    _dispatch_queue_invoke_finish(a1, a2, v38, v91);
  }

  else
  {
    if (v38)
    {
      goto LABEL_207;
    }

LABEL_209:
    _os_object_release_internal_n(a1, 2);
  }
}