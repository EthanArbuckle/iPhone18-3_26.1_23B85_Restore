unint64_t _dispatch_lane_activate(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 84);
  v4 = (v3 >> 8) & 0xF;
  if (v3 >> 12 <= v4 || (v3 & 0x40000000) == 0 && v4)
  {
    *(a1 + 84) = v3 & 0xFBFF0FFF;
  }

  v5 = _dispatch_queue_priority_inherit_from_target(a1, v2);

  return _dispatch_lane_inherit_wlh_from_target(a1, v5);
}

uint64_t (***_dispatch_queue_priority_inherit_from_target(uint64_t a1, unint64_t a2))()
{
  v2 = *(a1 + 84);
  v4 = a2 >= &_dispatch_root_queues && a2 < &qword_74A80;
  if ((v2 & 0x20000000) != 0 || (v2 & 0x44000FFF) == 0)
  {
    if (v4)
    {
      v2 = *(a2 + 84) | 0x20000000;
    }

    else if ((v2 & 0x20000000) != 0)
    {
      v2 &= 0xFBFF0FFF;
    }

    *(a1 + 84) = v2;
  }

  else if (v4)
  {
    if (((v2 >> 8) & 0xF) != 0)
    {
      v5 = (v2 >> 8) & 0xF;
    }

    else
    {
      v5 = 4;
    }

    if (v5 - 7 <= 0xFFFFFFF9)
    {
      _dispatch_queue_priority_inherit_from_target_cold_1(v5);
    }

    return &(&_dispatch_root_queues)[16 * (3 * v5 + (v2 >> 31) - 3)];
  }

  return a2;
}

void _dispatch_lane_invoke(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v57 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  }

  if ((a3 & 2) != 0)
  {
    v57 = 0x40020000000001;
    v7 = a3 & 0x40000;
  }

  else
  {
    v36 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v7 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v39 = 0x4000000000;
    }

    else
    {
      v39 = 1;
    }

    if ((a3 & 0x40001) == 0x40000)
    {
      v40 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v40 = 0xFFE00040FFFFFFFCLL;
    }

    v41 = *(StatusReg + 200);
    v42 = (v41 >> 8) & 0xF;
    v43 = v41 >> 12;
    v44 = HIWORD(v41) & 0xF;
    if (v42 <= v43)
    {
      v42 = v43;
    }

    if (v42 > v44)
    {
      v44 = v42;
    }

LABEL_73:
    for (i = *(a1 + 56); ; i = v50)
    {
      while ((i & v40) != 0)
      {
        if ((a3 & 1) != 0 || (v51 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v51, i ^ v39, memory_order_acquire, memory_order_acquire), v51 == i))
        {
          v23 = 0;
          v57 = 0;
          goto LABEL_56;
        }

        i = v51;
      }

      if ((i & 0x1000000000) != 0)
      {
        v46 = HIDWORD(i) & 7;
        if (v46 > v44)
        {
          v52 = *(StatusReg + 24);
          v55 = v36;
          _pthread_workqueue_override_start_direct();
          v36 = v55;
          v53 = *(StatusReg + 200);
          v44 = v46;
          if ((HIWORD(v53) & 0xF) < v46)
          {
            *(StatusReg + 200) = v53 & 0xFFF0FFFF | (v46 << 16);
            v44 = v46;
          }

          goto LABEL_73;
        }
      }

      v47 = (i >> 40) & 1;
      if (!((v36 + i) >> 53))
      {
        LODWORD(v47) = 1;
      }

      v48 = v47 ? 0x60000000000000 : 0x20000000000000;
      v49 = i & 0x7700000001 | v38 | v48;
      v50 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v50, v49, memory_order_acquire, memory_order_acquire);
      if (v50 == i)
      {
        break;
      }
    }

    v54 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v54 = v39 | 0x60000000000000;
    }

    v57 = (v49 & v54) - (i & 0x3FFE0000000000);
    if (!v57)
    {
      v23 = 0;
      goto LABEL_56;
    }
  }

  if (v7)
  {
    v8 = 0;
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

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
  v8 = v11 & 0xFFF0FFFF;
  if ((a3 & 0x100000) != 0)
  {
LABEL_21:
    if ((*(a1 + 80) & 0x400000) != 0)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }
  }

LABEL_23:
  v17 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFFF;
  if (((*(a1 + 80) << 8) & 0x3000000) == 0)
  {
    v17 = a3;
  }

  v18 = v17 | 0x10;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_26:
  v21 = v17;
  if ((v17 & 0x1000002) == 2)
  {
    v22 = v18;
    _dispatch_last_resort_autorelease_pool_push(a2);
    v23 = *(a1 + 24);
    v24 = (v19 + 160);
    if (*(v19 + 160) == v23)
    {
      if (*(a1 + 80) == 1)
      {
        v25 = _dispatch_lane_serial_drain(a1, a2, v21, &v57);
      }

      else
      {
        v25 = _dispatch_lane_concurrent_drain(a1, a2, v21, &v57);
      }

      v23 = v25;
    }

    v56 = *v24;
    *(v19 + 160) = a1;
    *(v19 + 168) = &v56;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *v24 = v56;
    v18 = v22;
  }

  else
  {
    v23 = *(a1 + 24);
    if (*(v20 + 160) == v23)
    {
      if (*(a1 + 80) == 1)
      {
        v26 = _dispatch_lane_serial_drain(a1, a2, v17, &v57);
      }

      else
      {
        v26 = _dispatch_lane_concurrent_drain(a1, a2, v17, &v57);
      }

      v23 = v26;
    }
  }

  if (v23 + 1 <= 1)
  {
    v27 = v57;
    v28 = *(a1 + 56);
    while (1)
    {
      v29 = v28;
      v30 = v28 - v27;
      v31 = v30 & 0xFFFFFFF700000001;
      if (!(v29 >> 55))
      {
        if ((v29 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v23 = *(v20 + 160);
          v17 = v18;
          if (a3)
          {
            goto LABEL_26;
          }

          v17 = v18;
          if (((*v23)[2] & 0x10000) != 0)
          {
            goto LABEL_26;
          }

          break;
        }

        if (v23)
        {
          v31 = v30 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v31 = v30 & 0xFFFFFFF000000001;
        }
      }

      v28 = v29;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v28, v31, memory_order_release, memory_order_relaxed);
      if (v28 == v29)
      {
        if ((~v29 & 0x1800000000) == 0)
        {
          v32 = HIDWORD(v29) & 7;
          v33 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v34 = *(v33 + 200);
          if ((HIWORD(v34) & 0xF) < v32)
          {
            *(v33 + 200) = v34 & 0xFFF0FFFF | (v32 << 16);
          }
        }

        v23 = 0;
        v57 = 0;
        break;
      }
    }
  }

  if ((v21 & 0x40000) == 0)
  {
    v35 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v35 + 200) = *(v35 + 200) & 0xF0000 | v8;
  }

LABEL_56:
  if ((a3 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (v23)
    {
      goto LABEL_59;
    }
  }

  else if (v23)
  {
LABEL_59:
    _dispatch_queue_invoke_finish(a1, a2, v23, v57);
    return;
  }

  _os_object_release_internal_n(a1, 2);
}

uint64_t dispatch_workloop_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  if (v1 || *(*v0 + 16) != 18)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v0);
  return v0;
}

BOOL _dispatch_workloop_should_yield_4NW()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  v1 = v0 == -4 || v0 == 0;
  return !v1 && *(*v0 + 16) == 18 && (*(v0 + 60) & 7u) > *(v0 + 100);
}

uint64_t _dispatch_workloop_create(const char *a1, uint64_t a2)
{
  v3 = 65537;
  if (a1)
  {
    v5 = _dispatch_strdup_if_mutable(a1);
    if (v5 == a1)
    {
      v3 = 65537;
    }

    else
    {
      v3 = 2162689;
    }
  }

  else
  {
    v5 = 0;
  }

  if (_dispatch_kevent_workqueue_enabled)
  {
    v6 = 0x2000000000;
  }

  else
  {
    v6 = 0x1000000000;
  }

  result = _dispatch_object_alloc(_OS_dispatch_workloop_vtable, 208);
  if ((a2 & 0x180000000000000) != 0)
  {
    *(result + 8) += 2;
    if (*(*result + 16) == 19)
    {
      ++*(result + 8);
    }
  }

  *(result + 16) = -1985229329;
  *(result + 80) = v3;
  *(result + 56) = v6 | a2 | 0x1FFE0000000000;
  *(result + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(result + 72) = v5;
  *(result + 24) = &off_74680;
  if ((a2 & 0x180000000000000) == 0)
  {
    *(result + 84) = -2080358400;
  }

  return result;
}

void dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop, dispatch_autorelease_frequency_t frequency)
{
  v2 = *(workloop + 20);
  if (frequency == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    do
    {
      v3 = v2 & 0xFFFCFFFF | 0x10000;
      if (v3 == v2)
      {
        break;
      }

      v4 = v2;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v2;
      v2 = v4;
    }

    while (!v5);
  }

  else
  {
    do
    {
      v6 = v2 & 0xFFFCFFFF | 0x20000;
      if (v6 == v2)
      {
        break;
      }

      v7 = v2;
      atomic_compare_exchange_strong_explicit((workloop + 80), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      v5 = v7 == v2;
      v2 = v7;
    }

    while (!v5);
  }

  v8 = *(workloop + 7);
  if ((~v8 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v8);
  }
}

_DWORD *dispatch_workloop_set_scheduler_priority(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (result)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    result[2] = 0;
    v8 = *result & 0xFFFFFFFE;
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    result[4] = 2;
    v9 = v8 | 2;
    goto LABEL_10;
  }

  result = _dispatch_calloc_typed();
  *(a1 + 200) = result;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  result[2] = a2;
  v8 = *result | 1;
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = v8 & 0xFFFFFFFD;
LABEL_10:
  *result = v9;
  return result;
}

uint64_t dispatch_workloop_set_uses_bound_thread(uint64_t a1)
{
  if (_dispatch_workloop_bound_thread_pred != -1)
  {
    dispatch_workloop_set_uses_bound_thread_cold_1();
  }

  if (_dispatch_thread_bound_kqwl_enabled != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 56);
  if ((~v2 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v2);
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    v3 = _dispatch_calloc_typed();
    *(a1 + 200) = v3;
  }

  v4 = 0;
  *v3 |= 0x40u;
  return v4;
}

void dispatch_workloop_set_os_workgroup(dispatch_workloop_t workloop, os_workgroup_t workgroup)
{
  v3 = *(workloop + 7);
  if ((~v3 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v3);
  }

  v5 = *(workloop + 25);
  if (!v5)
  {
    v5 = _dispatch_calloc_typed();
    *(workloop + 25) = v5;
  }

  v6 = *(v5 + 32);
  if (v6)
  {
    _os_object_release(v6);
  }

  _os_object_retain(workgroup);
  *(*(workloop + 25) + 32) = workgroup;
}

uint64_t dispatch_workloop_set_cpupercent(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 56);
  if ((~v4 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v4);
  }

  result = *(a1 + 200);
  if (!result)
  {
    result = _dispatch_calloc_typed();
    *(a1 + 200) = result;
  }

  v8 = *result;
  if ((*result & 9) == 0)
  {
    dispatch_workloop_set_cpupercent_cold_2();
  }

  *(result + 20) = a2;
  *(result + 24) = a3;
  *result = v8 | 4;
  return result;
}

__n128 _dispatch_workloop_set_observer_hooks_4IOHID(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 56);
  if ((~v3 & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(v3);
  }

  v5 = *(a1 + 200);
  if (!v5)
  {
    v5 = _dispatch_calloc_typed();
    *(a1 + 200) = v5;
  }

  result = *a2;
  *(v5 + 40) = *a2;
  **(a1 + 200) |= 0x20u;
  return result;
}

void _dispatch_workloop_dispose(void *a1, _BYTE *a2)
{
  v3 = a1[7];
  v4 = 0x1FFE1000000000;
  if (_dispatch_kevent_workqueue_enabled)
  {
    v4 = 0x1FFE2000000000;
  }

  if (v3 != v4)
  {
    _dispatch_workloop_dispose_cold_1(v3);
  }

  for (i = 0; i != 6; ++i)
  {
    v7 = &a1[i];
    v8 = a1[i + 19];
    if (v8)
    {
      _dispatch_workloop_dispose_cold_2(v8);
    }

    v7[19] = 512;
    v7[13] = 512;
  }

  v9 = a1[6];
  if (v9)
  {
    free(v9);
    a1[6] = 0;
  }

  v10 = a1[25];
  if (v10)
  {
    if ((*v10 & 0x10) != 0)
    {
      v11 = _pthread_workloop_destroy();
      if (v11)
      {
        _dispatch_bug(4623, v11);
      }
    }

    v12 = a1[25];
    if (v12)
    {
      if (v12[4])
      {
        _os_object_release(v12[4]);
        v12 = a1[25];
      }

      free(v12);
    }
  }

  _dispatch_queue_dispose(a1, a2);
}

void _dispatch_workloop_activate(uint64_t a1)
{
  v1 = (a1 + 56);
  if ((~atomic_fetch_and_explicit((a1 + 56), 0xFEFFFFFFFFFFFFFFLL, memory_order_relaxed) & 0x180000000000000) == 0)
  {
    v3 = (a1 + 200);
    v4 = *(a1 + 200);
    if (!v4)
    {
LABEL_21:
      _dispatch_workloop_activate_cold_4(a1, v1);
      return;
    }

    memset(&v13, 0, sizeof(v13));
    pthread_attr_init(&v13);
    v5 = *v4;
    if ((*v4 & 8) != 0)
    {
      *(a1 + 84) |= v4[1] | 0x40000000;
    }

    if (v5)
    {
      pthread_attr_setschedparam(&v13, v4 + 1);
      *(a1 + 24) = &_dispatch_custom_workloop_root_queue;
    }

    v6 = *(v4 + 4);
    if (v6)
    {
      *(a1 + 24) = &_dispatch_custom_workloop_root_queue;
      if (_os_workgroup_get_backing_workinterval(v6))
      {
        pthread_attr_setworkinterval_np();
      }
    }

    v7 = *v4;
    if ((*v4 & 0x40) != 0)
    {
      if (_dispatch_root_queues_pred != -1)
      {
        _dispatch_workloop_activate_cold_1();
      }

      *(a1 + 24) = &_dispatch_custom_workloop_overcommit_root_queue;
      v7 = *v4;
      if ((*v4 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_17;
    }

    pthread_attr_setschedpolicy(&v13, v4[4]);
    v7 = *v4;
LABEL_17:
    if ((v7 & 4) != 0)
    {
      v8 = *(v4 + 20);
      v9 = v4[6];
      pthread_attr_setcpupercent_np();
    }

    v10 = *v3;
    if (*v3)
    {
      if ((v10->sched_priority & 0x47) != 0 || (v11 = v10[4]) != 0 && _os_workgroup_get_backing_workinterval(v11))
      {
        v12 = _pthread_workloop_create();
        if (v12 <= 44)
        {
          if (v12)
          {
            if (v12 == 33)
            {
              _dispatch_workloop_activate_cold_2(a1);
            }
          }

          else
          {
            *v4 |= 0x10u;
          }
        }

        else if (v12 == 45)
        {
          _dispatch_workloop_activate_cold_3(v3, a1);
        }

        else if (v12 == 78)
        {
          _dispatch_workloop_activate_simulator_fallback(a1, &v13.__sig);
        }
      }
    }

    pthread_attr_destroy(&v13);
    goto LABEL_21;
  }
}

void _dispatch_workloop_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 4) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_workloop_wakeup_cold_4(a3);
    }

    if ((a3 & 8) == 0)
    {
      v4 = *(a1 + 56);
      v5 = a2 << 32;
      do
      {
        v6 = v4;
        v7 = v4 & 0x700000000;
        v8 = v6 & 0xFFFFFFF8FFFFFFFFLL | v5;
        if (v6 & 0x1000000000 | v5 & 0x1000000000)
        {
          v8 |= 0x800000000uLL;
        }

        if (v7 < v5)
        {
          v9 = v8;
        }

        else
        {
          v9 = v6;
        }

        v10 = v9 | ((v9 & 0x700000000) != 0);
        if ((a3 & 2) != 0)
        {
          v10 |= 0x8000000000uLL;
        }

        else if (v10 == v6)
        {
          goto LABEL_27;
        }

        v4 = v6;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v10, memory_order_release, memory_order_relaxed);
      }

      while (v4 != v6);
      if (v6 >> 55)
      {
        _dispatch_workloop_wakeup_cold_3(v6);
      }

      v11 = v10 ^ v6;
      if (v11)
      {
        if ((v10 & 0x2000000000) != 0)
        {

          _dispatch_event_loop_poke(a1, v10, (&dword_0 + 1));
        }

        else
        {
          _dispatch_workloop_wakeup_cold_1(*(a1 + 24));
        }

        return;
      }

      if ((_dispatch_workloop_wakeup_cold_2(v11, v10, a1, a3) & 1) == 0)
      {
        return;
      }
    }

LABEL_27:

    _os_object_release_internal_n(a1, 2);
    return;
  }

  _dispatch_workloop_barrier_complete(a1, a2, a3);
}

void _dispatch_workloop_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  }

  if ((a3 & 2) != 0)
  {
    v6 = a3 & 0x40000;
    v7 = 0x40020000000001;
  }

  else
  {
    v96 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v99 = *(StatusReg + 24);
    v98 = (StatusReg + 24);
    v100 = v99 & 0xFFFFFFFC;
    v6 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v101 = 0x4000000000;
    }

    else
    {
      v101 = 1;
    }

    if ((a3 & 0x40001) == 0x40000)
    {
      v103 = 0xFFE00000FFFFFFFCLL;
    }

    else
    {
      v103 = 0xFFE00040FFFFFFFCLL;
    }

    v104 = v98[44];
    v105 = (v104 >> 8) & 0xF;
    v106 = v104 >> 12;
    v107 = HIWORD(v104) & 0xF;
    if (v105 <= v106)
    {
      v105 = v106;
    }

    if (v105 > v107)
    {
      v107 = v105;
    }

LABEL_261:
    for (i = *(a1 + 56); ; i = v113)
    {
      while ((i & v103) != 0)
      {
        if ((a3 & 1) != 0 || (v114 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v114, i ^ v101, memory_order_acquire, memory_order_acquire), v114 == i))
        {
          v7 = 0;
          v22 = 0;
          LOBYTE(v3) = a3;
          goto LABEL_243;
        }

        i = v114;
      }

      if ((i & 0x1000000000) != 0)
      {
        v109 = HIDWORD(i) & 7;
        if (v109 > v107)
        {
          v128 = v96;
          _dispatch_workloop_invoke_cold_2(v98);
          v96 = v128;
          v107 = v109;
          goto LABEL_261;
        }
      }

      v110 = (i >> 40) & 1;
      if (!((v96 + i) >> 53))
      {
        LODWORD(v110) = 1;
      }

      v111 = v110 ? 0x60000000000000 : 0x20000000000000;
      v112 = i & 0x7700000001 | v100 | v111;
      v113 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v113, v112, memory_order_acquire, memory_order_acquire);
      if (v113 == i)
      {
        break;
      }
    }

    v3 = a3;
    v115 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v115 = v101 | 0x60000000000000;
    }

    v116 = v112 & v115;
    v117 = i & 0x3FFE0000000000;
    v7 = v116 - v117;
    if (v116 == v117)
    {
      v22 = 0;
      goto LABEL_243;
    }
  }

  if (v6)
  {
    v118 = 0;
    goto LABEL_21;
  }

  v8 = *(a1 + 84);
  v9 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(v9 + 200);
  if (v10)
  {
    v11 = v8 >> 12;
    v12 = v8 & 0xFFF;
    if ((v8 & 0xFFF) != 0)
    {
      if ((v10 & 0xFFFu) > v12)
      {
        v12 = v10 & 0xFFF;
      }

      if (v11 <= v12 >> 8)
      {
        v13 = 0x40000000;
      }

      else
      {
        v13 = 1140912128;
      }

      v14 = v13 & v8;
      v15 = v10 & 0x880F0000 | v12;
    }

    else
    {
      v16 = v10 | 0x40000000;
      if ((v10 & 0xFFF) == 0)
      {
        v16 = *(v9 + 200);
      }

      if (v11 <= ((v16 >> 8) & 0xF))
      {
        goto LABEL_20;
      }

      v15 = v16 & 0xFFFF0FFF;
      v14 = v8 & 0x400F000;
    }

    v16 = v15 | v14;
  }

  else
  {
    v16 = v8 & 0xFFF0FFFF;
  }

LABEL_20:
  *(v9 + 200) = v16;
  v118 = v10 & 0xFFF0FFFF;
LABEL_21:
  if ((*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  v17 = (*(a1 + 80) << 8) & 0x3000000 | v3 & 0xFCEDFFFF | 0x100000;
  if (((*(a1 + 80) << 8) & 0x3000000) == 0)
  {
    v17 = v3 & 0xFFEDFFFF | 0x100000;
  }

  v122 = a1 + 152;
  v127 = a1 + 104;
  v18 = v17 & 0x1000002;
  v126 = v17;
  v123 = (v17 >> 21) & 1;
  v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v119 = v17 & 0x1000002;
  v120 = v3;
  while (2)
  {
    v121 = v7;
    if (v18 == 2)
    {
      _dispatch_last_resort_autorelease_pool_push(a2);
      v21 = *(a1 + 200);
      if (v21 && (*v21 & 0x20) != 0)
      {
        *(v20 + 192) = v21 + 40;
      }

      v129 = *(v19 + 160);
      *(v19 + 160) = a1;
      *(v19 + 168) = &v129;
LABEL_31:
      v22 = (&dword_4 + 2);
      while (v22)
      {
        v23 = v22;
        v22 = (v22 - 1);
        if (*(v122 + 8 * v22))
        {
          v24 = v23;
          v25 = v23 << 32;
          v26 = *(a1 + 56);
          while (1)
          {
            if ((v26 & 0x700000000uLL) <= v25)
            {
              goto LABEL_40;
            }

            if ((v26 & 0x8000000000) != 0)
            {
              break;
            }

            v27 = v26;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v27, v26 & 0xFFFFFF78FFFFFFFFLL | v25, memory_order_relaxed, memory_order_relaxed);
            v41 = v27 == v26;
            v26 = v27;
            if (v41)
            {
              _dispatch_workloop_invoke_cold_3(v19 + 232);
LABEL_40:
              *(a1 + 100) = v23;
              v28 = (v127 + 8 * v22);
              v29 = *v28;
              if (!*v28)
              {
                v29 = _dispatch_wait_for_enqueuer(v28);
              }

              while (2)
              {
                if ((*v29 & 0xFFFFFFFFFFFFF001) == 1)
                {
                  v87 = a2;
                  *(a2 + 16) = v24;
                  *(a2 + 8) = v29;
                  *(a1 + 100) = 0;
                  *(v19 + 160) = v129;
                  *(v19 + 192) = 0;
                  v22 = *(a1 + 24);
                  v7 = v121;
                  goto LABEL_220;
                }

                v30 = v29[2];
                v31 = v24 - 1;
                *(v127 + 8 * v31) = v30;
                if (!v30)
                {
                  v51 = *(v122 + 8 * v31);
                  while (v29 == (v51 & 0xFFFFFFFFFFFFFFF8))
                  {
                    v52 = v51;
                    atomic_compare_exchange_strong_explicit((v122 + 8 * v31), &v52, 0, memory_order_release, memory_order_relaxed);
                    v41 = v52 == v51;
                    v51 = v52;
                    if (v41)
                    {
                      goto LABEL_44;
                    }
                  }

                  v30 = v29[2];
                  if (!v30)
                  {
                    v30 = _dispatch_wait_for_enqueuer(v29 + 2);
                  }

                  *(v127 + 8 * v31) = v30;
                }

LABEL_44:
                if (*(v19 + 40))
                {
                  _dispatch_return_to_kernel();
                }

                v32 = *(v19 + 192);
                if (v32)
                {
                  (*v32)(a1);
                }

                v33 = *v29;
                if (*v29 >= 0x1000uLL)
                {
                  v34 = *v29;
                  if (*(v33 + 16) == 1)
                  {
                    (*(v33 + 24))(v29, 0, v123);
                  }

                  else
                  {
                    (*(v33 + 48))(v29, a2, v126 & 0xFEFD0000);
                  }

                  if (v32)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_73;
                }

                v35 = v29[3];
                if ((v33 & 4) != 0)
                {
                  v29[3] = -1;
                }

                if (v35 != -1)
                {
                  if (v35)
                  {
                    v36 = *(v35 + 32);
                  }

                  if (MEMORY[0xFFFFFC100])
                  {
                    kdebug_trace();
                  }
                }

                v37 = v29[1];
                if (v37 == -1)
                {
                  v40 = 0;
                }

                else
                {
                  v38 = *(v19 + 200);
                  if (((v38 >> 8) & 0xF) != 0)
                  {
                    v39 = 1 << ((BYTE1(v38) & 0xFu) + 7);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  v40 = v39 | *(v19 + 200);
                  if ((v37 & 0xFFFFFF) != 0)
                  {
                    if ((v37 & 0xFFFFFFuLL) >= (v39 & 0xFFFFFF00))
                    {
                      v41 = (v38 & 0x44000000) == 0 && (v29[1] & 0x10000000) == 0;
                      if (!v41)
                      {
                        v40 = v37 & 0xFFFFFF;
                      }
                    }
                  }

                  else if (v38 >> 12)
                  {
                    v40 = (256 << ((v38 >> 12) - 1)) | 0xFF;
                  }
                }

                v42 = v40 & 0x7FFFFFFF02FFFFFFLL;
                v43 = *(v19 + 32);
                if ((v43 & 0x1000000) != 0)
                {
                  if (!v42)
                  {
                    v42 = v43 & 0xFFFFFFFFFEFFFFFFLL;
                    goto LABEL_108;
                  }

LABEL_115:
                  _dispatch_set_priority_and_voucher_slow(v42, v35, v33 & 4 | 2);
                }

                else
                {
                  if (v42 == (v43 & 0xFFFFFFFF76FFFFFFLL))
                  {
                    goto LABEL_79;
                  }

LABEL_108:
                  if (v42)
                  {
                    goto LABEL_115;
                  }

LABEL_79:
                  if (v35 != -1)
                  {
                    if (*(v19 + 224) != v35)
                    {
                      v42 = 0;
                      goto LABEL_115;
                    }

                    if ((v33 & 4) != 0 && v35 && atomic_fetch_add_explicit((v35 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                    {
                      _dispatch_block_invoke_direct_cold_4();
                    }
                  }
                }

                if ((v33 & 4) != 0)
                {
                  v45 = *(v19 + 176);
                  if (v45)
                  {
                    v46 = *(v45 + 8) + 1;
                  }

                  else
                  {
                    v46 = 1;
                  }

                  v44 = v29;
                  if (v46 <= _dispatch_continuation_cache_limit)
                  {
                    v44 = 0;
                    v29[2] = v45;
                    *(v29 + 2) = v46;
                    *(v19 + 176) = v29;
                  }
                }

                else
                {
                  v44 = 0;
                }

                if ((v33 & 8) != 0)
                {
                  _dispatch_workloop_invoke_cold_12();
                }

                else
                {
                  v48 = v29[4];
                  v47 = v29[5];
                  if (v47)
                  {
                    v49 = v29[4];
                    if (v48 == _dispatch_call_block_and_release)
                    {
                      if (*(v47 + 16))
                      {
                        v50 = *(v47 + 16);
                      }
                    }
                  }

                  _dispatch_client_callout(v47, v48);
                  if (MEMORY[0xFFFFFC100])
                  {
                    _dispatch_workloop_invoke_cold_8();
                  }
                }

                if (v44)
                {
                  _dispatch_continuation_free_to_cache_limit(v44);
                }

                ++*(v19 + 208);
                if (v32)
                {
LABEL_72:
                  v32[1](a1);
                }

LABEL_73:
                if (!v30)
                {
                  goto LABEL_31;
                }

                v24 = *(a1 + 100);
                v29 = v30;
                if ((*(a1 + 60) & 7u) > v24)
                {
                  goto LABEL_31;
                }

                continue;
              }
            }
          }

          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_31;
        }
      }

      v7 = v121 & 1 | 0x40020000000000;
      *(v19 + 160) = v129;
      *(v19 + 192) = 0;
      v87 = a2;
LABEL_220:
      v129 = *(v19 + 160);
      *(v19 + 160) = a1;
      *(v19 + 168) = &v129;
      _dispatch_last_resort_autorelease_pool_pop(v87);
      *(v19 + 160) = v129;
      v18 = v119;
      LOBYTE(v3) = v120;
    }

    else
    {
      v53 = *(a1 + 200);
      if (v53 && (*v53 & 0x20) != 0)
      {
        *(v20 + 192) = v53 + 40;
      }

      v129 = *(v20 + 160);
      *(v20 + 160) = a1;
      *(v20 + 168) = &v129;
LABEL_124:
      v22 = (&dword_4 + 2);
      while (v22)
      {
        v54 = v22;
        v22 = (v22 - 1);
        if (*(v122 + 8 * v22))
        {
          v55 = v54;
          v56 = v54 << 32;
          v57 = *(a1 + 56);
          while (1)
          {
            if ((v57 & 0x700000000uLL) <= v56)
            {
              goto LABEL_133;
            }

            if ((v57 & 0x8000000000) != 0)
            {
              break;
            }

            v58 = v57;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v58, v57 & 0xFFFFFF78FFFFFFFFLL | v56, memory_order_relaxed, memory_order_relaxed);
            v41 = v58 == v57;
            v57 = v58;
            if (v41)
            {
              _dispatch_workloop_invoke_cold_3(v20 + 232);
LABEL_133:
              *(a1 + 100) = v54;
              v59 = (v127 + 8 * v22);
              v60 = *v59;
              if (!*v59)
              {
                v60 = _dispatch_wait_for_enqueuer(v59);
              }

              while (2)
              {
                if ((*v60 & 0xFFFFFFFFFFFFF001) == 1)
                {
                  *(a2 + 16) = v55;
                  *(a2 + 8) = v60;
                  *(a1 + 100) = 0;
                  *(v20 + 160) = v129;
                  *(v20 + 192) = 0;
                  v22 = *(a1 + 24);
                  LOBYTE(v3) = v120;
                  v7 = v121;
                  goto LABEL_222;
                }

                v61 = v60[2];
                v62 = v55 - 1;
                *(v127 + 8 * v62) = v61;
                if (!v61)
                {
                  v85 = *(v122 + 8 * v62);
                  while (v60 == (v85 & 0xFFFFFFFFFFFFFFF8))
                  {
                    v86 = v85;
                    atomic_compare_exchange_strong_explicit((v122 + 8 * v62), &v86, 0, memory_order_release, memory_order_relaxed);
                    v41 = v86 == v85;
                    v85 = v86;
                    if (v41)
                    {
                      goto LABEL_137;
                    }
                  }

                  v61 = v60[2];
                  if (!v61)
                  {
                    v61 = _dispatch_wait_for_enqueuer(v60 + 2);
                  }

                  *(v127 + 8 * v62) = v61;
                }

LABEL_137:
                if (*(v20 + 40))
                {
                  _dispatch_return_to_kernel();
                }

                v63 = *(v20 + 192);
                if (v63)
                {
                  (*v63)(a1);
                }

                v64 = *v60;
                if (*v60 >= 0x1000uLL)
                {
                  v65 = *v60;
                  if (*(v64 + 16) == 1)
                  {
                    (*(v64 + 24))(v60, 0, v123);
                  }

                  else
                  {
                    (*(v64 + 48))(v60, a2, v126 & 0xFFFD0000);
                  }

                  if (v63)
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_149;
                }

                if ((v126 & 0x1000000) != 0)
                {
                  v125 = _dispatch_autorelease_pool_push();
                  v64 = *v60;
                }

                else
                {
                  v125 = 0;
                }

                v66 = v60[3];
                if ((v64 & 4) != 0)
                {
                  v60[3] = -1;
                }

                if (v66 != -1)
                {
                  if (v66)
                  {
                    v67 = *(v66 + 32);
                  }

                  if (MEMORY[0xFFFFFC100])
                  {
                    kdebug_trace();
                  }
                }

                v68 = v60[1];
                if (v68 == -1)
                {
                  v71 = 0;
                }

                else
                {
                  v69 = *(v20 + 200);
                  if (((v69 >> 8) & 0xF) != 0)
                  {
                    v70 = 1 << ((BYTE1(v69) & 0xFu) + 7);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v71 = v70 | *(v20 + 200);
                  v72 = v68 & 0xFFFFFF;
                  if ((v68 & 0xFFFFFF) != 0)
                  {
                    v73 = v70 & 0xFFFFFF00;
                    if ((v69 & 0x44000000) == 0 && (v60[1] & 0x10000000) == 0)
                    {
                      v75 = v71;
                    }

                    else
                    {
                      v75 = v68 & 0xFFFFFF;
                    }

                    if (v72 >= v73)
                    {
                      v71 = v75;
                    }
                  }

                  else if (v69 >> 12)
                  {
                    v71 = (256 << ((v69 >> 12) - 1)) | 0xFF;
                  }
                }

                v76 = v71 & 0x7FFFFFFF02FFFFFFLL;
                v77 = *(v20 + 32);
                if ((v77 & 0x1000000) != 0)
                {
                  if (!v76)
                  {
                    v76 = v77 & 0xFFFFFFFFFEFFFFFFLL;
                    goto LABEL_208;
                  }

LABEL_214:
                  _dispatch_set_priority_and_voucher_slow(v76, v66, v64 & 4 | 2);
                }

                else
                {
                  if (v76 == (v77 & 0xFFFFFFFF76FFFFFFLL))
                  {
                    goto LABEL_177;
                  }

LABEL_208:
                  if (v76)
                  {
                    goto LABEL_214;
                  }

LABEL_177:
                  if (v66 != -1)
                  {
                    if (*(v20 + 224) != v66)
                    {
                      v76 = 0;
                      goto LABEL_214;
                    }

                    if ((v64 & 4) != 0 && v66 && atomic_fetch_add_explicit((v66 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                    {
                      _dispatch_block_invoke_direct_cold_4();
                    }
                  }
                }

                if ((v64 & 4) != 0)
                {
                  v79 = *(v20 + 176);
                  if (v79)
                  {
                    v80 = *(v79 + 8) + 1;
                  }

                  else
                  {
                    v80 = 1;
                  }

                  v78 = v60;
                  if (v80 <= _dispatch_continuation_cache_limit)
                  {
                    v78 = 0;
                    v60[2] = v79;
                    *(v60 + 2) = v80;
                    *(v20 + 176) = v60;
                  }
                }

                else
                {
                  v78 = 0;
                }

                if ((v64 & 8) != 0)
                {
                  _dispatch_workloop_invoke_cold_6();
                }

                else
                {
                  v81 = v60[4];
                  v82 = v60[5];
                  if (v82)
                  {
                    v83 = v60[4];
                    if (v81 == _dispatch_call_block_and_release)
                    {
                      if (*(v82 + 16))
                      {
                        v84 = *(v82 + 16);
                      }
                    }
                  }

                  _dispatch_client_callout(v82, v81);
                  if (MEMORY[0xFFFFFC100])
                  {
                    _dispatch_workloop_invoke_cold_8();
                  }
                }

                if (v78)
                {
                  _dispatch_continuation_free_to_cache_limit(v78);
                }

                if (v125)
                {
                  _dispatch_autorelease_pool_pop();
                }

                ++*(v20 + 208);
                if (v63)
                {
LABEL_148:
                  v63[1](a1);
                }

LABEL_149:
                if (!v61)
                {
                  goto LABEL_124;
                }

                v55 = *(a1 + 100);
                v60 = v61;
                if ((*(a1 + 60) & 7u) > v55)
                {
                  goto LABEL_124;
                }

                continue;
              }
            }
          }

          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          goto LABEL_124;
        }
      }

      v7 = v121 & 1 | 0x40020000000000;
      *(v20 + 160) = v129;
      *(v20 + 192) = 0;
      LOBYTE(v3) = v120;
LABEL_222:
      v18 = v119;
    }

    if (v22 + 1 > 1)
    {
      break;
    }

    v88 = *(a1 + 56);
    while (1)
    {
      v89 = v88;
      v90 = v88 - v7;
      v91 = v90 & 0xFFFFFFF700000001;
      if (!(v89 >> 55))
      {
        break;
      }

LABEL_229:
      v88 = v89;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v88, v91, memory_order_release, memory_order_relaxed);
      if (v88 == v89)
      {
        if ((~v89 & 0x1800000000) != 0 || (v92 = HIDWORD(v89) & 7, v93 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)), v94 = *(v93 + 200), (HIWORD(v94) & 0xF) >= v92))
        {
          v7 = 0;
          v22 = 0;
        }

        else
        {
          v7 = 0;
          v22 = 0;
          *(v93 + 200) = v94 & 0xFFF0FFFF | (v92 << 16);
        }

        goto LABEL_241;
      }
    }

    if ((v89 & 0x8000000000) == 0)
    {
      if (v22)
      {
        v91 = v90 & 0xFFFFFF7700000001 | 0x8000000000;
      }

      else
      {
        v91 = v90 & 0xFFFFFFF000000001;
      }

      goto LABEL_229;
    }

    atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
    v22 = *(v20 + 160);
    if ((v3 & 1) != 0 || ((*v22)[2] & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_241:
  if ((v126 & 0x40000) == 0)
  {
    v95 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v95 + 200) = *(v95 + 200) & 0xF0000 | v118;
  }

LABEL_243:
  if ((v3 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    _dispatch_workloop_invoke_cold_8();
  }

  if (v22)
  {
    _dispatch_queue_invoke_finish(a1, a2, v22, v7);
  }

  else
  {
    _os_object_release_internal_n(a1, 2);
  }
}

void _dispatch_workloop_barrier_complete(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = a2 << 32;
  v7 = (a1 + 192);
LABEL_2:
  v8 = v7;
  v9 = 6;
  do
  {
    if (*v8)
    {
      v10 = *(v8 - 6);
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer(v8 - 6);
      }

      if (*v10 <= 0xFFFuLL && (*v10 & 0x81) != 0)
      {

        _dispatch_workloop_drain_barrier_waiter(a1, v10, v9, a3, 0);
        return;
      }

      v5 = 1;
    }

    --v8;
    --v9;
  }

  while (v9);
  if (v5 && (a3 & 1) == 0)
  {
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    a3 |= 1u;
  }

LABEL_15:
  v12 = *(a1 + 56);
  while (1)
  {
    if ((~v12 & 0x2000000002) == 0 && (v12 & 0x800000001) != 0)
    {
      v19 = v5;
      _dispatch_event_loop_ensure_ownership(a1);
      v5 = v19;
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_15;
    }

    v14 = (v12 & 0x700000000) >= v6 ? v12 : v12 & 0xFFFFFFF000000001 | v6;
    v15 = (v14 & 0xFFFFFFF700000001) - 0x40020000000000;
    if (v5)
    {
      break;
    }

    if ((v12 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      goto LABEL_2;
    }

    if ((v12 & 0x2000000000) != 0)
    {
      v16 = v15 & 0xFFFFFFF000000000;
      v17 = v12;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v17, v16, memory_order_release, memory_order_relaxed);
      if (v17 == v12)
      {
        goto LABEL_50;
      }

LABEL_30:
      v12 = v17;
    }

    else
    {
      v16 = v15 & 0xFFFFFFF000000001;
      v18 = v12;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v18, v16, memory_order_release, memory_order_relaxed);
      if (v18 == v12)
      {
        goto LABEL_41;
      }

      v12 = v18;
    }
  }

  v16 = v15 | 1;
  v17 = v12;
  atomic_compare_exchange_strong_explicit((a1 + 56), &v17, v16, memory_order_release, memory_order_relaxed);
  if (v17 != v12)
  {
    goto LABEL_30;
  }

  if ((v12 & 0x2000000000) == 0)
  {
LABEL_41:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((~v12 & 0x1800000000) == 0)
    {
      v21 = HIDWORD(v12) & 7;
      v22 = *(StatusReg + 200);
      if ((HIWORD(v22) & 0xF) < v21)
      {
        *(StatusReg + 200) = v22 & 0xFFF0FFFF | (v21 << 16);
      }
    }

    if (v5)
    {
      if ((v16 ^ v12))
      {
        if ((v16 & 0x2000000000) != 0)
        {

          _dispatch_event_loop_poke(a1, v16, (&dword_0 + 1));
        }

        else
        {
          _dispatch_workloop_barrier_complete_cold_2(*(a1 + 24));
        }

        return;
      }

      if ((_dispatch_workloop_barrier_complete_cold_3(v16, a1, a3) & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_52;
  }

LABEL_50:
  if ((v12 & 3) == 2 && (v16 & 1) == 0)
  {
LABEL_52:
    if (a3)
    {

      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

  _dispatch_event_loop_end_ownership(a1, v12, v16, a3);
}

void _dispatch_workloop_push(uint64_t a1, void *a2, unsigned int a3)
{
  if (*a2 <= 0xFFFuLL)
  {
    v3 = (*a2 & 0x81) == 0;
    *a2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = *(a1 + 84);
    v5 = (v4 >> 8) & 0xF;
    v6 = v4 >> 12;
    if (a3)
    {
      v6 = a3;
    }

    if (v5 > a3)
    {
      v6 = v5;
    }

    a2[2] = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 976) = a1 + 8 * (v6 - 1) + 152;
    v8 = atomic_exchange_explicit((a1 + 8 * (v6 - 1) + 152), a2, memory_order_release);
    if (v8)
    {
      *(v8 + 16) = a2;
      *(StatusReg + 976) = 0;
    }

    else
    {
      atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
      *(a1 + 8 * (v6 - 1) + 104) = a2;
      *(StatusReg + 976) = 0;
      _dispatch_workloop_wakeup();
    }
  }

  else
  {
    _dispatch_workloop_push_waiter(a1, a2, a3);
  }
}

void _dispatch_workloop_push_waiter(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = __clz(__rbit32((*(a2 + 8) >> 8) & 0x3FFF));
  if (((*(a2 + 8) >> 8) & 0x3FFF) != 0)
  {
    LODWORD(v4) = v3 + 1;
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 <= a3)
  {
    LODWORD(v4) = a3;
  }

  if (v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 4;
  }

  *(a2 + 16) = 0;
  v5 = (a1 + 8 * (v4 - 1) + 152);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v5;
  v7 = atomic_exchange_explicit(v5, a2, memory_order_release);
  if (v7)
  {
    *(v7 + 16) = a2;
    *(StatusReg + 976) = 0;
    return;
  }

  v8 = a1 + 8 * (v4 - 1);
  *(v8 + 104) = a2;
  *(StatusReg + 976) = 0;
  v9 = *a2;
  if ((*a2 & 0x80) != 0 && ((v10 = *(a1 + 24), v10 < &_dispatch_root_queues) || v10 >= &unk_74A80))
  {
    *(a2 + 56) = a1;
    *a2 = v9 & 0xFFFFFFFFFFFFFF7FLL;
    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);

    _dispatch_workloop_wakeup();
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = v4 << 32;
    v13 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
    do
    {
      v14 = v11;
      v15 = v11 & 0xFFFFFFF8FFFFFFFFLL | v12;
      if (v11 & 0x1000000000 | v12 & 0x1000000000)
      {
        v15 |= 0x800000000uLL;
      }

      if ((v11 & 0x700000000) < v12)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 | 0x8000000000;
      v18 = v13 | v16 & 0x7700000001;
      if ((v11 & 0x40FFFFFFFDLL) != 0)
      {
        v18 = v17;
      }

      atomic_compare_exchange_strong_explicit((a1 + 56), &v11, v18, memory_order_release, memory_order_relaxed);
    }

    while (v11 != v14);
    if ((v18 & 0x2000000000) != 0 && *(a2 + 48) != -4)
    {
      *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 100) == *(StatusReg + 24)));
    }

    if (((v18 ^ v14) & 0x40000000000000) != 0)
    {
      if ((*(a2 + 106) & 4) == 0)
      {
        goto LABEL_40;
      }

      v19 = *(v8 + 104);
      if (!v19)
      {
        v26 = a2;
        v27 = a1;
        v28 = a1 + 8 * (v4 - 1) + 152;
        v30 = a1 + 8 * (v4 - 1);
        v24 = _dispatch_wait_for_enqueuer((v8 + 104));
        v5 = v28;
        v8 = v30;
        a2 = v26;
        v19 = v24;
        a1 = v27;
      }

      if (v19 == a2)
      {
        v29 = v8;
        *(a2 + 106) |= 8u;
        if ((*a2 & 0x80) != 0)
        {
          *(a2 + 56) = a1;
        }

        v20 = *(a2 + 16);
        *(v29 + 104) = v20;
        if (!v20)
        {
          v21 = *v5;
          while ((v21 & 0xFFFFFFFFFFFFFFF8) == a2)
          {
            v22 = v21;
            atomic_compare_exchange_strong_explicit(v5, &v22, 0, memory_order_release, memory_order_relaxed);
            v23 = v22 == v21;
            v21 = v22;
            if (v23)
            {
              return;
            }
          }

          v25 = *(a2 + 16);
          if (!v25)
          {
            v25 = _dispatch_wait_for_enqueuer((a2 + 16));
          }

          *(v29 + 104) = v25;
        }
      }

      else
      {
LABEL_40:

        _dispatch_workloop_barrier_complete();
      }
    }

    else
    {
      if (((v18 ^ v14) & 0x700000000) == 0 || (v18 & 0xFF80004000000000) != 0)
      {
        return;
      }

      if ((v18 & 1) == 0)
      {
        if ((v18 & 0x2000000000) != 0 || (v18 & 0xFFFFFFFC) == 0)
        {
          return;
        }

        goto LABEL_33;
      }

      if ((v18 & 0x2000000000) == 0)
      {
LABEL_33:

        _dispatch_queue_wakeup_with_override_slow();
        return;
      }

      _dispatch_event_loop_poke(a1, v18, 0x80000000);
    }
  }
}

uint64_t dispatch_thread_get_current_override_qos_floor()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
  v1 = (v0 >> 8) & 0xF;
  v2 = v0 >> 12;
  v3 = HIWORD(v0) & 0xF;
  if (v1 <= v2)
  {
    v1 = v2;
  }

  if (v1 > v3)
  {
    v3 = v1;
  }

  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        return 0x500000001;
      case 2:
        return 0x900000001;
      case 3:
        return 0x1100000001;
    }

    return 1;
  }

  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 0x2100000001;
    }

    return v3 != 15;
  }

  if (v3 == 4)
  {
    return 0x1500000001;
  }

  else
  {
    return 0x1900000001;
  }
}

uint64_t dispatch_thread_override_self(int a1)
{
  HIDWORD(v2) = a1 - 5;
  LODWORD(v2) = a1 - 5;
  v1 = v2 >> 2;
  if (v1 > 3)
  {
    if (v1 != 4)
    {
      if (v1 == 7)
      {
        v1 = 6;
      }

      else if (v1 != 5)
      {
LABEL_11:
        v1 = 0;
      }
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v1 = 1;
        break;
      case 1:
        v1 = 2;
        break;
      case 3:
        break;
      default:
        goto LABEL_11;
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 24);
  _pthread_workqueue_override_start_direct();
  v5 = *(StatusReg + 200);
  if ((HIWORD(v5) & 0xF) < v1)
  {
    *(StatusReg + 200) = v5 & 0xFFF0FFFF | (v1 << 16);
  }

  return 0;
}

uint64_t dispatch_lock_override_start_with_debounce(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v4) = a3 - 5;
  LODWORD(v4) = a3 - 5;
  v3 = v4 >> 2;
  if (v3 <= 7 && ((0xBBu >> v3) & 1) != 0)
  {
    v5 = (256 << qword_4A850[v3]) | 0xFF;
  }

  return _pthread_workqueue_override_start_direct_check_owner();
}

uint64_t dispatch_lock_override_end(int a1)
{
  HIDWORD(v2) = a1 - 5;
  LODWORD(v2) = a1 - 5;
  v1 = v2 >> 2;
  if (v1 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_4A890[v1];
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 200);
  if ((HIWORD(v5) & 0xF) < v3)
  {
    *(StatusReg + 200) = v5 & 0xFFF0FFFF | (v3 << 16);
  }

  return 0;
}

void _dispatch_queue_wakeup(uint64_t a1, uint64_t a2, int a3, uint64_t (***a4)())
{
  v4 = a4;
  if (a4 && (a3 & 1) == 0)
  {
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return;
    }

    a3 |= 1u;
  }

  if ((a3 & 4) != 0)
  {
    v30 = *(a1 + 84);
    v31 = v30 >> 12;
    if (a2)
    {
      v31 = a2;
    }

    v32 = (v30 >> 8) & 0xF;
    if (v31 <= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    _dispatch_lane_class_barrier_complete(a1, v33, a3, a4, 0x40020000000000);
    return;
  }

  if (!a4)
  {
    if (!a2)
    {
      goto LABEL_76;
    }

    v21 = *(a1 + 56);
    v22 = a2 << 32;
    do
    {
      if ((v21 & 0x40FFFFFFFDLL) == 0)
      {
        goto LABEL_76;
      }

      v23 = v21;
      v24 = v21 & 0x700000000;
      v25 = v23 & 0xFFFFFFF8FFFFFFFFLL | v22;
      if (v23 & 0x1000000000 | v22 & 0x1000000000)
      {
        v25 |= 0x800000000uLL;
      }

      v26 = v24 < v22 ? v25 : v23;
      v27 = (v23 & 0xFF80002000000000) == 0x2000000000 && ((v23 & 0x4000000000) == 0);
      v19 = v26 | v27;
      if ((v26 | v27) == v23)
      {
        goto LABEL_76;
      }

      v21 = v23;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v21, v19, memory_order_relaxed, memory_order_relaxed);
    }

    while (v21 != v23);
    v20 = v19 ^ v23;
    v5 = 1;
    if (a3 & 1) == 0 && (v20)
    {
      if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
      {
        qword_78298 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_86;
      }

      a3 |= 1u;
      v5 = 1;
    }

    v4 = 1;
    goto LABEL_59;
  }

  v5 = 0x4000000000;
  if (a4 != &_dispatch_mgr_q)
  {
    v5 = 1;
  }

  v6 = *(a1 + 84);
  v7 = v6 >> 12;
  if (a2)
  {
    v7 = a2;
  }

  LODWORD(v8) = (v6 >> 8) & 0xF;
  if (v7 <= v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 56);
  v10 = v8 << 32;
  do
  {
    v11 = v9;
    v12 = v9 & 0x700000000;
    v13 = v11 & 0xFFFFFFF8FFFFFFFFLL | v10;
    if (v11 & 0x1000000000 | v10 & 0x1000000000)
    {
      v13 |= 0x800000000uLL;
    }

    if (v12 < v10)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if ((v11 & 0x180000000000000) == 0x80000000000000)
    {
      v15 = v14 & 0xFF7FFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if ((a3 & 0x20) != 0)
    {
      v14 = v15;
    }

    v16 = ((v11 & 0xFFFFFFFC) == 0) << 38;
    if (a4 != &_dispatch_mgr_q)
    {
      v16 = 1;
    }

    v17 = v14 | v16;
    if (v14 >> 55)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if ((v11 & 0x4000000001) != 0)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    if ((a3 & 2) != 0)
    {
      v19 |= 0x8000000000uLL;
    }

    else if (v19 == v11)
    {
      goto LABEL_76;
    }

    v9 = v11;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v19, memory_order_release, memory_order_relaxed);
  }

  while (v9 != v11);
  v20 = v11 ^ v19;
LABEL_59:
  if ((v20 & v5) != 0)
  {
    if (v4 == 1)
    {
      v4 = *(a1 + 24);
    }

    if ((v19 & 0x2000000000) != 0)
    {
      v28 = v19;
      v29 = (&dword_0 + 1);
LABEL_64:

      _dispatch_event_loop_poke(a1, v28, v29);
      return;
    }

    v34 = *(*v4 + 72);

    v34(v4, a1, HIDWORD(v19) & 7);
    return;
  }

  if ((v20 & 0x700000000) == 0)
  {
LABEL_76:
    if (a3)
    {

      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

LABEL_86:
  if ((v19 & 0xFF80004000000000) != 0 || (v19 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_76;
  }

  if ((v19 & 0x2000000000) != 0)
  {
    v29 = (a3 | 0x80000000);
    v28 = v19;
    goto LABEL_64;
  }

  _dispatch_queue_wakeup_with_override_slow(a1, v19, a3);
}

void _dispatch_lane_class_barrier_complete(char *a1, char *a2, int a3, uint64_t (***a4)(), uint64_t a5)
{
  v9 = &_dispatch_mgr_q;
  if (a4 == &_dispatch_mgr_q)
  {
    v11 = 0;
    v12 = 0x4000000000;
    v10 = &_dispatch_mgr_q;
  }

  else
  {
    v10 = a4;
    if (a4)
    {
      v11 = 0;
      if (a4 == (&dword_0 + 1))
      {
        v10 = *(a1 + 3);
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = 1;
    }
  }

  v13 = a2 << 32;
LABEL_9:
  v14 = *(a1 + 7);
  do
  {
    if ((~v14 & 0x2000000002) == 0 && (v14 & 0x800000001) != 0)
    {
      v34 = a3;
      v23 = v9;
      _dispatch_event_loop_ensure_ownership(a1);
      v9 = v23;
      a3 = v34;
      atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF7FFFFFFFDLL, memory_order_relaxed);
      goto LABEL_9;
    }

    v15 = v14 - a5;
    if (((v14 - a5) & 0x700000000) >= v13)
    {
      v16 = v14 - a5;
    }

    else
    {
      v16 = (v14 - a5) & 0xFFFFFFF8FFFFFFFFLL | v13;
    }

    v17 = v16 & 0xFFFFFFF700000001;
    if (v14 >> 55)
    {
      v22 = v16 & 0xFFFFFFF700000000;
      if ((v14 & 0x2000000000) != 0)
      {
        v18 = v22;
      }

      else
      {
        v18 = v17;
      }
    }

    else if (v11)
    {
      if ((v14 & 0x8000000000) != 0)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
        v30 = *(*a1 + 64);
        v31 = a3 | 4u;
        v32 = a1;
        v33 = a2;

        goto LABEL_52;
      }

      v18 = v16 & 0xFFFFFFF000000001;
    }

    else
    {
      if ((v14 & 0x4000000001) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v12;
      }

      v18 = v17 | v19;
    }

    v20 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v20, v18, memory_order_release, memory_order_relaxed);
    v21 = v20 == v14;
    v14 = v20;
  }

  while (!v21);
  if ((v15 & 0x2000000000) != 0)
  {
    if (v15 & 2) == 0 || ((v18 | v15))
    {

      _dispatch_event_loop_end_ownership(a1, v15, v18, a3);
      return;
    }

LABEL_42:
    if (a3)
    {

      _os_object_release_internal_n(a1, 2);
    }

    return;
  }

  if ((~v15 & 0x1800000000) == 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = HIDWORD(v15) & 7;
    v26 = *(StatusReg + 200);
    if ((HIWORD(v26) & 0xF) < v25)
    {
      *(StatusReg + 200) = v26 & 0xFFF0FFFF | (v25 << 16);
    }
  }

  if (!v10)
  {
    goto LABEL_42;
  }

  if (((v18 ^ v15) & v12) != 0)
  {
    if ((v18 & 0x2000000000) != 0)
    {
      v27 = a1;
      v28 = v18;
      v29 = (&dword_0 + 1);
      goto LABEL_37;
    }

    v30 = (*v10)[9];
    v31 = HIDWORD(v18) & 7;
    v32 = v10;
    v33 = a1;

LABEL_52:
    (v30)(v32, v33, v31);
    return;
  }

  if ((v18 & 0xFF80004000000000) != 0 || (v18 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_42;
  }

  if ((v18 & 0x2000000000) != 0)
  {
    v29 = (a3 | 0x80000000);
    v27 = a1;
    v28 = v18;
LABEL_37:

    _dispatch_event_loop_poke(v27, v28, v29);
  }

  else
  {

    _dispatch_queue_wakeup_with_override_slow(a1, v18, a3);
  }
}

void _dispatch_lane_wakeup(unint64_t a1, char *a2, uint64_t a3)
{
  if ((a3 & 4) != 0)
  {
    _dispatch_lane_barrier_complete(a1, a2, a3);
  }

  else
  {
    _dispatch_queue_wakeup(a1, a2, a3, (*(a1 + 48) != 0));
  }
}

void _dispatch_lane_barrier_complete(unint64_t a1, char *a2, uint64_t a3)
{
  if (!*(a1 + 48) || *(a1 + 56) >> 55)
  {
    v6 = 0;
LABEL_33:
    v10 = (*(a1 + 80) << 41) + 0x40000000000000;

    _dispatch_lane_class_barrier_complete(a1, a2, a3, v6, v10);
    return;
  }

  v7 = *(a1 + 104);
  if (!v7)
  {
    v7 = _dispatch_wait_for_enqueuer((a1 + 104));
  }

  v8 = *v7;
  if (*(a1 + 80) == 1)
  {
    if (v8 <= 0xFFF && (*v7 & 0x81) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v8 < 0x1000)
  {
    if ((v8 & 2) != 0)
    {
      if ((v8 & 0x81) != 0)
      {
LABEL_21:

        _dispatch_lane_drain_barrier_waiter(a1, v7, a3, 0);
        return;
      }

LABEL_28:
      if ((a3 & 1) == 0)
      {
        if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
        {
          qword_78298 = "API MISUSE: Resurrection of an object";
          __break(1u);
          return;
        }

        LODWORD(a3) = a3 | 1;
      }

      v6 = (&dword_0 + 1);
      goto LABEL_33;
    }
  }

  else if ((*(v8 + 16) & 0xF0) == 0x10)
  {
    if ((*(v7 + 80) & 0x80000) != 0 || !*(a1 + 80) || (*(v7 + 80) & 0x80000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_28;
  }

LABEL_25:

  _dispatch_lane_drain_non_barriers(a1, v7, a3);
}

void _dispatch_lane_push(unint64_t a1, void *a2, unsigned int a3)
{
  if (*a2 <= 0xFFFuLL)
  {
    v3 = (*a2 & 0x81) == 0;
    *a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    _dispatch_lane_push_waiter(a1, a2, a3);
    return;
  }

  v4 = *(a1 + 8);
  if (((*(a1 + 84) >> 8) & 0xFu) >= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = a1 + 48;
  v7 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v7)
  {
    if ((*(a1 + 60) & 7) != 0 && (*(a1 + 60) & 7u) >= v5)
    {
      *(v7 + 16) = a2;
      *(StatusReg + 976) = 0;
      return;
    }

    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
    v9 = (v7 + 16);
    v10 = 1;
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed);
    v9 = (a1 + 104);
    v10 = 3;
  }

  *v9 = a2;
  *(StatusReg + 976) = 0;
  (*(*a1 + 64))(a1, v5, v10);
}

void _dispatch_lane_push_waiter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  if (*(a2 + 48) == -4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16) = 0;
  v4 = (a1 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = a1 + 48;
  v6 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v6)
  {
    *(v6 + 16) = a2;
    *(StatusReg + 976) = 0;
    if (v3)
    {
      v10 = *(a1 + 56);
      v11 = v3 << 32;
      while (1)
      {
        v12 = v10 & 0xFFFFFFF8FFFFFFFFLL | v11;
        if (v10 & 0x1000000000 | v11 & 0x1000000000)
        {
          v12 |= 0x800000000uLL;
        }

        v13 = (v10 & 0x700000000) < v11 ? v12 : v10;
        if (v10 == v13)
        {
          break;
        }

        v14 = v10;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v14, v13, memory_order_relaxed, memory_order_relaxed);
        v15 = v14 == v10;
        v10 = v14;
        if (v15)
        {
          if ((v13 & 0xFF80004000000000) != 0)
          {
            return;
          }

          if (v13)
          {
            if ((v13 & 0x2000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_59;
          }

          if ((v13 & 0x2000000000) != 0 || (v13 & 0xFFFFFFFC) == 0)
          {
            return;
          }

          goto LABEL_24;
        }
      }
    }

    return;
  }

  *(a1 + 104) = a2;
  *(StatusReg + 976) = 0;
  v7 = *(a1 + 80);
  if ((v7 & 0x40000) != 0)
  {
    v7 = *(a1 + 80);
    if ((v7 & 0x1000000) == 0)
    {
      v8 = *a2;
      goto LABEL_70;
    }
  }

  v8 = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v9 = *(a1 + 56);
    v7 = *(a1 + 80);
    if ((v7 & 0x1000000) == 0)
    {
      if ((v9 & 0x3000000000) == 0)
      {
        goto LABEL_31;
      }

      v16 = *(a1 + 24);
      if (v16 >= &_dispatch_root_queues && v16 < &qword_74A80)
      {
        goto LABEL_31;
      }
    }

LABEL_70:
    *a2 = v8 & 0xFFFFFFFFFFFFFF7FLL;
    *(a2 + 56) = a1;
    v27 = *(*a1 + 64);

    v27();
    return;
  }

  v9 = *(a1 + 56);
LABEL_31:
  v17 = (v7 << 41) - 0x20000000000;
  v18 = v3 << 32;
  v19 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x60000000000002;
  do
  {
    v20 = v9;
    v21 = v9 & 0x700000000;
    v22 = v9 & 0xFFFFFFF8FFFFFFFFLL | v18;
    if ((v22 & 0x1000000000) != 0)
    {
      v22 |= 0x800000000uLL;
    }

    if (v21 >= v18)
    {
      v22 = v20;
    }

    v23 = v22 | 0x8000000000;
    if ((v20 & 0xFFE00000FFFFFFFCLL) == 0 && ((v20 & 0x2000000000) == 0 || (v20 & 0x4000000001) == 0) && ((v20 & 0x10000000000) != 0 || !((v17 + v22) >> 53)))
    {
      v23 = v19 | v22 & 0x7700000001;
    }

    v9 = v20;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v23, memory_order_release, memory_order_relaxed);
  }

  while (v9 != v20);
  if ((v20 & 0x2000000000) != 0 && *(a2 + 48) != -4)
  {
    *(a2 + 106) = *(a2 + 106) & 0xFB | (4 * (*(a2 + 100) == *(StatusReg + 24)));
  }

  if (((v23 ^ v20) & 0x40000000000000) != 0)
  {
    if ((*(a2 + 106) & 4) != 0 && *(a1 + 104) == a2)
    {
      *(a2 + 106) |= 8u;
      if ((*a2 & 0x80) != 0)
      {
        *(a2 + 56) = a1;
      }

      v24 = *(a2 + 16);
      *(a1 + 104) = v24;
      if (!v24)
      {
        v25 = *v4;
        while ((v25 & 0xFFFFFFFFFFFFFFF8) == a2)
        {
          v26 = v25;
          atomic_compare_exchange_strong_explicit(v4, &v26, 0, memory_order_release, memory_order_relaxed);
          v15 = v26 == v25;
          v25 = v26;
          if (v15)
          {
            return;
          }
        }

        v28 = *(a2 + 16);
        if (!v28)
        {
          v28 = _dispatch_wait_for_enqueuer((a2 + 16));
        }

        *(a1 + 104) = v28;
      }
    }

    else
    {

      _dispatch_lane_barrier_complete(a1, v3, 0);
    }
  }

  else
  {
    if (((v23 ^ v20) & 0x700000000) == 0 || (v23 & 0xFF80004000000000) != 0)
    {
      return;
    }

    if (v23)
    {
      if ((v23 & 0x2000000000) != 0)
      {
        v13 = v23;
LABEL_59:

        _dispatch_event_loop_poke(a1, v13, 0x80000000);
        return;
      }
    }

    else if ((v23 & 0x2000000000) != 0 || (v23 & 0xFFFFFFFC) == 0)
    {
      return;
    }

    v13 = v23;
LABEL_24:

    _dispatch_queue_wakeup_with_override_slow(a1, v13, 0);
  }
}

void _dispatch_lane_concurrent_push(unint64_t a1, _DWORD *a2, unsigned int a3)
{
  if ((*(a1 + 87) & 8) != 0 && *a2 >= 0x1000uLL && *(*a2 + 16) != 1 && (*(*a2 + 16) != 19 || (_dispatch_source_is_timer(a2) & 1) == 0))
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
    qword_782C8 = a2;
    __break(1u);
    return;
  }

  if (!*(a1 + 48))
  {
    v6 = *a2;
    if (*a2 <= 0xFFFuLL)
    {
      if ((v6 & 0x83) != 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(v6 + 16) & 0xF0) == 0x10 && (a2[20] & 0x80000) != 0)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 56);
    while ((v7 & 0xFFE0018000000000) == 0)
    {
      v8 = v7;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v8, v7 + 0x20000000000, memory_order_acquire, memory_order_acquire);
      v9 = v8 == v7;
      v7 = v8;
      if (v9)
      {

        _dispatch_continuation_redirect_push(a1, a2, a3);
        return;
      }
    }
  }

LABEL_7:

  _dispatch_lane_push(a1, a2, a3);
}

unint64_t _dispatch_continuation_redirect_push(unint64_t result, void *a2, int a3)
{
  v5 = result;
  if (*a2 >= 0x1000uLL && *(*a2 + 16) == 256)
  {
    if (!a2[5])
    {
      a2[5] = (*(result + 80) << 8) & 0x3000000;
    }
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 176);
    if (v7)
    {
      *(StatusReg + 176) = v7[2];
    }

    else
    {
      result = _dispatch_continuation_alloc_from_heap();
      v7 = result;
    }

    a2[2] = 0;
    *v7 = &unk_70C58;
    v7[4] = 0;
    v7[5] = (*(v5 + 80) << 8) & 0x3000000;
    v7[6] = v5;
    v7[7] = a2;
    v7[3] = -1;
    v7[1] = -1;
    if (*(v5 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v5 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return result;
    }
  }

  v8 = *(v5 + 24);
  if (!a3)
  {
    v9 = (v8[21] >> 8) & 0xF;
  }

  v10 = *(*v8 + 72);

  return v10();
}

uint64_t dispatch_async_swift_job(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*a2 + 16);
  if (v4 != 1)
  {
    dispatch_async_swift_job_cold_1(v4);
  }

  v5 = *(*a1 + 72);
  HIDWORD(v7) = a3 - 5;
  LODWORD(v7) = a3 - 5;
  v6 = v7 >> 2;
  if (v6 > 7)
  {
  }

  else
  {
    v8 = dword_4A890[v6];
  }

  return v5();
}

uint64_t _dispatch_channel_xref_dispose(uint64_t a1)
{
  if (*(*(a1 + 88) + 24))
  {
    v2 = (*(a1 + 80) & 0x10000000) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    _dispatch_channel_xref_dispose_cold_1(a1);
  }

  v3 = *(*a1 + 64);

  return v3();
}

void _dispatch_channel_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  }

  v111 = a3;
  if ((a3 & 2) != 0)
  {
    v6 = 0x40020000000001;
    if ((a3 & 0x40000) != 0)
    {
LABEL_5:
      v108 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v7 = *(a1 + 80);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = *(StatusReg + 24);
    v9 = (StatusReg + 24);
    v11 = (v7 << 41) - 0x20000000000;
    v12 = v10 & 0xFFFFFFFC;
    if ((a3 & 0x40000) != 0)
    {
      v13 = 0x4000000000;
    }

    else
    {
      v13 = 1;
    }

    v14 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v14 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v15 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v9[44];
    v17 = (v16 >> 8) & 0xF;
    v18 = v16 >> 12;
    v19 = HIWORD(v16) & 0xF;
    if (v17 <= v18)
    {
      v17 = v18;
    }

    if (v17 > v19)
    {
      v19 = v17;
    }

LABEL_18:
    for (i = *(a1 + 56); ; i = v25)
    {
      while ((i & v15) != 0)
      {
        if ((a3 & 1) != 0 || (v26 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v26, i ^ v13, memory_order_acquire, memory_order_acquire), v26 == i))
        {
          v6 = 0;
          v30 = 0;
          goto LABEL_271;
        }

        i = v26;
      }

      if ((i & 0x1000000000) != 0)
      {
        v21 = HIDWORD(i) & 7;
        if (v21 > v19)
        {
          _dispatch_workloop_invoke_cold_2(v9);
          v19 = v21;
          goto LABEL_18;
        }
      }

      v22 = (i >> 40) & 1;
      if (!((v11 + i) >> 53))
      {
        LODWORD(v22) = 1;
      }

      v23 = v22 ? 0x60000000000000 : 0x20000000000000;
      v24 = i & 0x7700000001 | v12 | v23;
      v25 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v25, v24, memory_order_acquire, memory_order_acquire);
      if (v25 == i)
      {
        break;
      }
    }

    v27 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v27 = v13 | 0x60000000000000;
    }

    v28 = v24 & v27;
    v29 = i & 0x3FFE0000000000;
    v6 = v28 - v29;
    if (v28 == v29)
    {
      v30 = 0;
      goto LABEL_271;
    }

    if ((a3 & 0x40000) != 0)
    {
      goto LABEL_5;
    }
  }

  v31 = *(a1 + 84);
  v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v33 = *(v32 + 200);
  if (v33)
  {
    v34 = v31 >> 12;
    v35 = v31 & 0xFFF;
    if ((v31 & 0xFFF) != 0)
    {
      if ((v33 & 0xFFFu) > v35)
      {
        v35 = v33 & 0xFFF;
      }

      if (v34 <= v35 >> 8)
      {
        v36 = 0x40000000;
      }

      else
      {
        v36 = 1140912128;
      }

      v37 = v36 & v31;
      v38 = v33 & 0x880F0000 | v35;
    }

    else
    {
      v39 = v33 | 0x40000000;
      if ((v33 & 0xFFF) == 0)
      {
        v39 = *(v32 + 200);
      }

      if (v34 <= ((v39 >> 8) & 0xF))
      {
        goto LABEL_52;
      }

      v38 = v39 & 0xFFFF0FFF;
      v37 = v31 & 0x400F000;
    }

    v39 = v38 | v37;
  }

  else
  {
    v39 = v31 & 0xFFF0FFFF;
  }

LABEL_52:
  *(v32 + 200) = v39;
  v108 = v33 & 0xFFF0FFFF;
LABEL_53:
  v110 = v6;
  v40 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  v41 = *(a1 + 80);
  if (((v41 << 8) & 0x3000000) != 0)
  {
    v40 = (v41 << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v106 = v40 | 0x10;
  v107 = (a1 + 48);
  v42 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v43 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_59:
  v44 = v40;
  v115 = v40;
  if ((v40 & 0x1000002) == 2)
  {
    _dispatch_last_resort_autorelease_pool_push(a2);
    v45 = *(a1 + 88);
    v120 = 0u;
    *v116 = a1;
    v117 = a2;
    v118 = v44 & 0xFEFDFFFF;
    v119 = 0;
    *&v120 = 0;
    BYTE8(v120) = 0;
    *&v116[8] = *(v42 + 160);
    *(v42 + 160) = a1;
    *(v42 + 168) = &v116[8];
    if (_dispatch_channel_invoke_cancel_check(a1, v116, v45))
    {
      v112 = (v44 >> 21) & 1;
      while (1)
      {
        v46 = v120;
        if (!v120)
        {
          if (!*v107)
          {
            goto LABEL_251;
          }

          v46 = *(a1 + 104);
          if (!v46)
          {
            v46 = _dispatch_wait_for_enqueuer((a1 + 104));
          }
        }

        v47 = *v46;
        if (*v46 > 0xFFFuLL)
        {
          goto LABEL_66;
        }

        if (v47)
        {
          _dispatch_channel_invoke_cold_3();
        }

        if ((v47 & 0x400) == 0)
        {
LABEL_66:
          v48 = v46[2];
          *(a1 + 104) = v48;
          if (!v48)
          {
            v69 = *v107;
            while (v46 == (v69 & 0xFFFFFFFFFFFFFFF8))
            {
              v70 = v69;
              atomic_compare_exchange_strong_explicit(v107, &v70, 0, memory_order_release, memory_order_relaxed);
              v58 = v70 == v69;
              v69 = v70;
              if (v58)
              {
                goto LABEL_67;
              }
            }

            v48 = v46[2];
            if (!v48)
            {
              v48 = _dispatch_wait_for_enqueuer(v46 + 2);
            }

            *(a1 + 104) = v48;
          }

LABEL_67:
          *&v120 = v48;
          v49 = *(v42 + 192);
          if (v49)
          {
            (*v49)(a1);
          }

          v50 = *v46;
          if (*v46 >= 0x1000uLL)
          {
            v51 = *v46;
            if (*(v50 + 16) == 1)
            {
              (*(v50 + 24))(v46, 0, v112);
            }

            else
            {
              (*(v50 + 48))(v46, a2, v44 & 0xFEFF0000);
            }

            if (v49)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          }

          v52 = v46[3];
          if ((v50 & 4) != 0)
          {
            v46[3] = -1;
          }

          if (v52 != -1)
          {
            if (v52)
            {
              v53 = *(v52 + 32);
            }

            if (MEMORY[0xFFFFFC100])
            {
              kdebug_trace();
            }
          }

          v54 = v46[1];
          if (v54 == -1)
          {
            v57 = 0;
          }

          else
          {
            v55 = *(v42 + 200);
            if (((v55 >> 8) & 0xF) != 0)
            {
              v56 = 1 << ((BYTE1(v55) & 0xFu) + 7);
            }

            else
            {
              v56 = 0;
            }

            v57 = v56 | *(v42 + 200);
            if ((v54 & 0xFFFFFF) != 0)
            {
              if ((v54 & 0xFFFFFFuLL) >= (v56 & 0xFFFFFF00))
              {
                v58 = (v55 & 0x44000000) == 0 && (v46[1] & 0x10000000) == 0;
                if (!v58)
                {
                  v57 = v54 & 0xFFFFFF;
                }
              }
            }

            else if (v55 >> 12)
            {
              v57 = (256 << ((v55 >> 12) - 1)) | 0xFF;
            }
          }

          v60 = v57 & 0x7FFFFFFF02FFFFFFLL;
          v61 = *(v42 + 32);
          if ((v61 & 0x1000000) != 0)
          {
            if (!v60)
            {
              v60 = v61 & 0xFFFFFFFFFEFFFFFFLL;
              goto LABEL_141;
            }

LABEL_148:
            _dispatch_set_priority_and_voucher_slow(v60, v52, v50 & 4 | 2);
          }

          else
          {
            if (v60 == (v61 & 0xFFFFFFFF76FFFFFFLL))
            {
              goto LABEL_102;
            }

LABEL_141:
            if (v60)
            {
              goto LABEL_148;
            }

LABEL_102:
            if (v52 != -1)
            {
              if (*(v42 + 224) != v52)
              {
                v60 = 0;
                goto LABEL_148;
              }

              if ((v50 & 4) != 0 && v52 && atomic_fetch_add_explicit((v52 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
              {
                _dispatch_block_invoke_direct_cold_4();
              }
            }
          }

          if ((v50 & 4) != 0)
          {
            v63 = *(v42 + 176);
            if (v63)
            {
              v64 = *(v63 + 8) + 1;
            }

            else
            {
              v64 = 1;
            }

            v62 = v46;
            if (v64 <= _dispatch_continuation_cache_limit)
            {
              v62 = 0;
              v46[2] = v63;
              *(v46 + 2) = v64;
              *(v42 + 176) = v46;
            }
          }

          else
          {
            v62 = 0;
          }

          if ((v50 & 8) != 0)
          {
            _dispatch_channel_invoke_cold_14();
          }

          else
          {
            v66 = v46[4];
            v65 = v46[5];
            if (v65)
            {
              v67 = v46[4];
              if (v66 == _dispatch_call_block_and_release)
              {
                if (*(v65 + 16))
                {
                  v68 = *(v65 + 16);
                }
              }
            }

            _dispatch_client_callout(v65, v66);
            if (MEMORY[0xFFFFFC100])
            {
              _dispatch_workloop_invoke_cold_8();
            }
          }

          if (v62)
          {
            _dispatch_continuation_free_to_cache_limit(v62);
          }

          ++*(v42 + 208);
          v44 = v115;
          if (v49)
          {
LABEL_95:
            v49[1](a1);
          }

LABEL_96:
          if (!_dispatch_channel_invoke_checks(a1, v116, v45))
          {
            goto LABEL_251;
          }

          goto LABEL_97;
        }

        *&v120 = v46;
        BYTE8(v120) = 0;
        v59 = (v118 & 0x1000000) != 0 ? _dispatch_autorelease_pool_push() : 0;
        if ((*(v45 + 16))(a1, v116, *(a1 + 32)))
        {
          break;
        }

        v119 = -1;
        if (v59)
        {
          goto LABEL_117;
        }

LABEL_97:
        if (v119)
        {
          goto LABEL_251;
        }
      }

      if ((BYTE8(v120) & 1) == 0)
      {
        _dispatch_channel_invoke_cold_4();
      }

      if (!v59)
      {
        goto LABEL_97;
      }

LABEL_117:
      _dispatch_autorelease_pool_pop();
      goto LABEL_97;
    }

LABEL_251:
    *(v42 + 160) = *&v116[8];
    v30 = v119;
    *v116 = *(v42 + 160);
    *(v42 + 160) = a1;
    *(v42 + 168) = v116;
    _dispatch_last_resort_autorelease_pool_pop(a2);
    *(v42 + 160) = *v116;
    goto LABEL_253;
  }

  v71 = *(a1 + 88);
  v120 = 0u;
  *v116 = a1;
  v117 = a2;
  v118 = v40 & 0xFFFDFFFF;
  v119 = 0;
  *&v120 = 0;
  BYTE8(v120) = 0;
  *&v116[8] = *(v43 + 160);
  *(v43 + 160) = a1;
  *(v43 + 168) = &v116[8];
  if (_dispatch_channel_invoke_cancel_check(a1, v116, v71))
  {
    v109 = (v44 >> 21) & 1;
    v113 = v71;
    while (1)
    {
      v72 = v120;
      if (!v120)
      {
        if (!*v107)
        {
          goto LABEL_252;
        }

        v72 = *(a1 + 104);
        if (!v72)
        {
          v72 = _dispatch_wait_for_enqueuer((a1 + 104));
        }
      }

      v73 = *v72;
      if (*v72 > 0xFFFuLL)
      {
        goto LABEL_158;
      }

      if (v73)
      {
        _dispatch_channel_invoke_cold_3();
      }

      if ((v73 & 0x400) == 0)
      {
LABEL_158:
        v74 = v72[2];
        *(a1 + 104) = v74;
        if (!v74)
        {
          v96 = *v107;
          while (v72 == (v96 & 0xFFFFFFFFFFFFFFF8))
          {
            v97 = v96;
            atomic_compare_exchange_strong_explicit(v107, &v97, 0, memory_order_release, memory_order_relaxed);
            v58 = v97 == v96;
            v96 = v97;
            if (v58)
            {
              goto LABEL_159;
            }
          }

          v74 = v72[2];
          if (!v74)
          {
            v74 = _dispatch_wait_for_enqueuer(v72 + 2);
          }

          *(a1 + 104) = v74;
        }

LABEL_159:
        *&v120 = v74;
        v75 = *(v43 + 192);
        if (v75)
        {
          (*v75)(a1);
        }

        v76 = *v72;
        if (*v72 >= 0x1000uLL)
        {
          v77 = *v72;
          if (*(v76 + 16) == 1)
          {
            (*(v76 + 24))(v72, 0, v109);
          }

          else
          {
            (*(v76 + 48))(v72, a2, v44 & 0xFFFF0000);
          }

          if (v75)
          {
LABEL_170:
            v75[1](a1);
          }

LABEL_171:
          if (!_dispatch_channel_invoke_checks(a1, v116, v71))
          {
            goto LABEL_252;
          }

          goto LABEL_172;
        }

        if ((v44 & 0x1000000) != 0)
        {
          v78 = _dispatch_autorelease_pool_push();
          v76 = *v72;
        }

        else
        {
          v78 = 0;
        }

        v80 = v72[3];
        if ((v76 & 4) != 0)
        {
          v72[3] = -1;
        }

        if (v80 != -1)
        {
          if (v80)
          {
            v81 = *(v80 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        v82 = v72[1];
        if (v82 == -1)
        {
          v85 = 0;
        }

        else
        {
          v83 = *(v43 + 200);
          if (((v83 >> 8) & 0xF) != 0)
          {
            v84 = 1 << ((BYTE1(v83) & 0xFu) + 7);
          }

          else
          {
            v84 = 0;
          }

          v85 = v84 | *(v43 + 200);
          if ((v82 & 0xFFFFFF) != 0)
          {
            if ((v82 & 0xFFFFFFuLL) >= (v84 & 0xFFFFFF00) && ((v83 & 0x44000000) != 0 || (v72[1] & 0x10000000) != 0))
            {
              v85 = v82 & 0xFFFFFF;
            }
          }

          else if (v83 >> 12)
          {
            v85 = (256 << ((v83 >> 12) - 1)) | 0xFF;
          }
        }

        v87 = v85 & 0x7FFFFFFF02FFFFFFLL;
        v88 = *(v43 + 32);
        if ((v88 & 0x1000000) != 0)
        {
          if (!v87)
          {
            v87 = v88 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_236;
          }

LABEL_247:
          _dispatch_set_priority_and_voucher_slow(v87, v80, v76 & 4 | 2);
        }

        else
        {
          if (v87 == (v88 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_197;
          }

LABEL_236:
          if (v87)
          {
            goto LABEL_247;
          }

LABEL_197:
          if (v80 != -1)
          {
            if (*(v43 + 224) != v80)
            {
              v87 = 0;
              goto LABEL_247;
            }

            if ((v76 & 4) != 0 && v80 && atomic_fetch_add_explicit((v80 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
            {
              _dispatch_block_invoke_direct_cold_4();
            }
          }
        }

        if ((v76 & 4) != 0)
        {
          v90 = *(v43 + 176);
          if (v90)
          {
            v91 = *(v90 + 8) + 1;
          }

          else
          {
            v91 = 1;
          }

          v89 = v72;
          if (v91 <= _dispatch_continuation_cache_limit)
          {
            v89 = 0;
            v72[2] = v90;
            *(v72 + 2) = v91;
            *(v43 + 176) = v72;
          }
        }

        else
        {
          v89 = 0;
        }

        if ((v76 & 8) != 0)
        {
          _dispatch_channel_invoke_cold_7();
          if (v89)
          {
            goto LABEL_239;
          }
        }

        else
        {
          v92 = v72[4];
          v93 = v72[5];
          if (v93)
          {
            v94 = v72[4];
            if (v92 == _dispatch_call_block_and_release)
            {
              if (*(v93 + 16))
              {
                v95 = *(v93 + 16);
              }
            }
          }

          _dispatch_client_callout(v93, v92);
          if (!MEMORY[0xFFFFFC100])
          {
            if (!v89)
            {
              goto LABEL_223;
            }

LABEL_239:
            _dispatch_continuation_free_to_cache_limit(v89);
            if (!v78)
            {
LABEL_225:
              ++*(v43 + 208);
              v44 = v115;
              v71 = v113;
              if (v75)
              {
                goto LABEL_170;
              }

              goto LABEL_171;
            }

LABEL_224:
            _dispatch_autorelease_pool_pop();
            goto LABEL_225;
          }

          _dispatch_workloop_invoke_cold_8();
          if (v89)
          {
            goto LABEL_239;
          }
        }

LABEL_223:
        if (!v78)
        {
          goto LABEL_225;
        }

        goto LABEL_224;
      }

      *&v120 = v72;
      BYTE8(v120) = 0;
      v79 = (v118 & 0x1000000) != 0 ? _dispatch_autorelease_pool_push() : 0;
      if ((*(v71 + 16))(a1, v116, *(a1 + 32)))
      {
        break;
      }

      v119 = -1;
      if (v79)
      {
        goto LABEL_212;
      }

LABEL_172:
      if (v119)
      {
        goto LABEL_252;
      }
    }

    if ((BYTE8(v120) & 1) == 0)
    {
      _dispatch_channel_invoke_cold_4();
    }

    if (!v79)
    {
      goto LABEL_172;
    }

LABEL_212:
    _dispatch_autorelease_pool_pop();
    goto LABEL_172;
  }

LABEL_252:
  *(v43 + 160) = *&v116[8];
  v30 = v119;
LABEL_253:
  if (v30 + 1 <= 1)
  {
    v98 = *(a1 + 56);
    while (1)
    {
      v99 = v98;
      v100 = v98 - v110;
      v101 = v100 & 0xFFFFFFF700000001;
      if (!(v99 >> 55))
      {
        if ((v99 & 0x8000000000) != 0)
        {
          atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
          v30 = *(v43 + 160);
          v40 = v106;
          if (v111)
          {
            goto LABEL_59;
          }

          v40 = v106;
          if (((*v30)[2] & 0x10000) != 0)
          {
            goto LABEL_59;
          }

          break;
        }

        if (v30)
        {
          v101 = v100 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v101 = v100 & 0xFFFFFFF000000001;
        }
      }

      v98 = v99;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v98, v101, memory_order_release, memory_order_relaxed);
      if (v98 == v99)
      {
        if ((~v99 & 0x1800000000) != 0 || (v102 = HIDWORD(v99) & 7, v103 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)), v104 = *(v103 + 200), (HIWORD(v104) & 0xF) >= v102))
        {
          v6 = 0;
          v30 = 0;
        }

        else
        {
          v6 = 0;
          v30 = 0;
          *(v103 + 200) = v104 & 0xFFF0FFFF | (v102 << 16);
        }

        goto LABEL_269;
      }
    }
  }

  v6 = v110;
LABEL_269:
  if ((v115 & 0x40000) == 0)
  {
    v105 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v105 + 200) = *(v105 + 200) & 0xF0000 | v108;
  }

LABEL_271:
  if ((v111 & 1) == 0 && MEMORY[0xFFFFFC100])
  {
    _dispatch_workloop_invoke_cold_8();
  }

  if (v30)
  {
    _dispatch_queue_invoke_finish(a1, a2, v30, v6);
  }

  else
  {
    _os_object_release_internal_n(a1, 2);
  }
}

uint64_t dispatch_channel_foreach_work_item_peek_f(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  if (*(result + 56) == 1)
  {
    dispatch_channel_foreach_work_item_peek_f_cold_1();
  }

  v3 = *(result + 48);
  if ((*v3 & 0xFFFFFFFFFFFFF400) == 0x400)
  {
    v6 = *result;
    do
    {
      result = a3(a2, v3[5]);
      if (!result || v3 == *(v6 + 48))
      {
        break;
      }

      result = v3[2];
      if (!result)
      {
        result = _dispatch_wait_for_enqueuer(v3 + 2);
      }

      v3 = result;
    }

    while ((*result & 0xFFFFFFFFFFFFF400) == 0x400);
  }

  return result;
}

void dispatch_channel_drain_f(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t *))
{
  v3 = *a1;
  v4 = *(*a1 + 88);
  v39 = 0;
  if (*(a1 + 56) == 1)
  {
    dispatch_channel_drain_f_cold_3();
  }

  *(a1 + 56) = 1;
  v38 = (v3 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v9 = *(a1 + 48);
    if (!v9)
    {
      if (!*v38)
      {
        break;
      }

      v9 = *(v3 + 104);
      if (!v9)
      {
        v9 = _dispatch_wait_for_enqueuer((v3 + 104));
      }
    }

    if ((*v9 & 0xFFFFFFFFFFFFF400) != 0x400)
    {
      break;
    }

    v10 = v9[2];
    *(v3 + 104) = v10;
    if (!v10)
    {
      v25 = *v38;
      while (v9 == (v25 & 0xFFFFFFFFFFFFFFF8))
      {
        v26 = v25;
        atomic_compare_exchange_strong_explicit(v38, &v26, 0, memory_order_release, memory_order_relaxed);
        v12 = v26 == v25;
        v25 = v26;
        if (v12)
        {
          goto LABEL_6;
        }
      }

      v10 = v9[2];
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer(v9 + 2);
      }

      *(v3 + 104) = v10;
    }

LABEL_6:
    *(a1 + 48) = v10;
    v11 = v9[3];
    v9[3] = -1;
    v12 = v11 == -1 || v11 == -1;
    if (!v12)
    {
      if (v11)
      {
        v13 = *(v11 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v14 = v9[1];
    if (v14 == -1)
    {
      v17 = 0;
    }

    else
    {
      v15 = StatusReg[25];
      v16 = ((v15 >> 8) & 0xF) != 0 ? 1 << ((BYTE1(v15) & 0xFu) + 7) : 0;
      v17 = v16 | StatusReg[25];
      if ((v14 & 0xFFFFFF) != 0)
      {
        if ((v14 & 0xFFFFFFuLL) >= (v16 & 0xFFFFFF00) && ((v15 & 0x44000000) != 0 || (v9[1] & 0x10000000) != 0))
        {
          v17 = v14 & 0xFFFFFF;
        }
      }

      else if (v15 >> 12)
      {
        v17 = (256 << ((v15 >> 12) - 1)) | 0xFF;
      }
    }

    v19 = v17 & 0x7FFFFFFF02FFFFFFLL;
    v20 = StatusReg[4];
    if ((v20 & 0x1000000) != 0)
    {
      if (v19)
      {
        goto LABEL_63;
      }

      v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v19 == (v20 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_29;
    }

    if (v19)
    {
      goto LABEL_63;
    }

LABEL_29:
    if (v11 == -1)
    {
      goto LABEL_33;
    }

    if (StatusReg[28] != v11)
    {
      v19 = 0;
LABEL_63:
      _dispatch_set_priority_and_voucher_slow(v19, v11, 6);
      goto LABEL_33;
    }

    if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      _dispatch_block_invoke_direct_cold_4();
    }

LABEL_33:
    v21 = StatusReg[22];
    if (v21)
    {
      v22 = *(v21 + 8) + 1;
    }

    else
    {
      v22 = 1;
    }

    v23 = v9;
    if (v22 <= _dispatch_continuation_cache_limit)
    {
      v23 = 0;
      v9[2] = v21;
      *(v9 + 2) = v22;
      StatusReg[22] = v9;
    }

    if (*(a1 + 35))
    {
      _dispatch_autorelease_pool_push();
      v24 = a3(a2, v9[5], &v39);
      _dispatch_autorelease_pool_pop();
    }

    else
    {
      v24 = a3(a2, v9[5], &v39);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v23)
      {
LABEL_43:
        if (!v24)
        {
          break;
        }

        continue;
      }
    }

    else if (!v23)
    {
      goto LABEL_43;
    }

    _dispatch_continuation_free_to_cache_limit(v23);
    if (!v24)
    {
      break;
    }
  }

  while ((_dispatch_channel_invoke_checks(v3, a1, v4) & 1) != 0);
  v27 = v39;
  if (!v39)
  {
    return;
  }

  v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = v28[22];
  if (v29)
  {
    v28[22] = v29[2];
  }

  else
  {
    v29 = _dispatch_continuation_alloc_from_heap();
    v27 = v39;
  }

  *v29 = 1284;
  v29[4] = 0;
  v29[5] = v27;
  v30 = v28[4] & 0xFFFFFFLL;
  if (v30 >= 0x10FF)
  {
    v31 = 4351;
  }

  else
  {
    v31 = v28[4] & 0xFFFFFFLL;
  }

  v32 = v28[28];
  if (v32 && atomic_fetch_add_explicit((v32 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  v29[3] = v32;
  if (v32 == -1)
  {
    goto LABEL_81;
  }

  if (v32)
  {
    v33 = *(v32 + 32);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v30)
    {
      goto LABEL_93;
    }

LABEL_82:
    v34 = (*(v3 + 84) >> 30) & 1;
    if ((*(v3 + 84) & 0xFFF) == 0)
    {
      v34 = 1;
    }

    if (v34)
    {
      v35 = v31;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
LABEL_81:
    if (v30)
    {
      goto LABEL_82;
    }

LABEL_93:
    v35 = 0;
  }

  v29[1] = v35;
  v36 = *(a1 + 48);
  v29[2] = v36;
  if (!v36)
  {
    atomic_compare_exchange_strong_explicit(v38, &v36, v29, memory_order_release, memory_order_relaxed);
    if (v36)
    {
      v37 = *(v3 + 104);
      if (!v37)
      {
        v37 = _dispatch_wait_for_enqueuer((v3 + 104));
      }

      v29[2] = v37;
    }
  }

  *(v3 + 104) = v29;
  *(a1 + 48) = v29;
}

uint64_t _dispatch_channel_invoke_checks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _dispatch_channel_invoke_cancel_check(a1, a2, a3);
  if (result)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if (*(StatusReg + 40))
    {
      _dispatch_return_to_kernel();
    }

    if ((*(a2 + 34) & 0x10) != 0 && (*(*(StatusReg + 216) + 60) & 7u) > *(*(StatusReg + 216) + 100) || (*(StatusReg + 960) & 1) != 0 || *(a1 + 56) >> 55)
    {
      result = 0;
      *(a2 + 40) = *(a1 + 24);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t dispatch_channel_foreach_work_item_peek(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 16);
    v3 = *(a2 + 16);
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = 0;
  }

  return dispatch_channel_foreach_work_item_peek_f(a1, a2, v4);
}

void dispatch_channel_drain(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 16);
    v3 = *(a2 + 16);
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = 0;
  }

  dispatch_channel_drain_f(a1, a2, v4);
}

void _dispatch_channel_wakeup(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(*(a1 + 88) + 8))(a1, *(a1 + 32)))
  {
    if (*(a1 + 48))
    {
      v6 = 1;
    }

    else
    {
      v6 = (*(a1 + 80) & 0x10000000) != 0 && (*(a1 + 116) & 8) == 0;
    }
  }

  else
  {
    v6 = -1;
  }

  _dispatch_queue_wakeup(a1, a2, a3, v6);
}

uint64_t dispatch_channel_create(const char *a1, uint64_t (***a2)(), uint64_t a3, void *a4)
{
  if (!*a4)
  {
    dispatch_channel_create_cold_2();
  }

  v6 = a2;
  v8 = 67108865;
  if (!a1)
  {
    v9 = 0;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_15:
    v6 = &off_74680;
    goto LABEL_9;
  }

  v9 = _dispatch_strdup_if_mutable(a1);
  if (v9 == a1)
  {
    v8 = 67108865;
  }

  else
  {
    v8 = 69206017;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (*(v6 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 1), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

LABEL_9:
  result = _dispatch_object_alloc(_OS_dispatch_channel_vtable, 120);
  *(result + 8) += 2;
  if (*(*result + 16) == 19)
  {
    ++*(result + 8);
  }

  *(result + 16) = -1985229329;
  *(result + 80) = v8;
  *(result + 56) = 0x19FFE0000000000;
  *(result + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(result + 72) = v9;
  *(result + 88) = a4;
  *(result + 24) = v6;
  *(result + 32) = a3;
  if (!a4[3])
  {
    *(result + 116) |= 8u;
    --*(result + 8);
  }

  return result;
}

uint64_t dispatch_channel_enqueue(_DWORD *a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = StatusReg[22];
  if (v4)
  {
    StatusReg[22] = v4[2];
    *v4 = 1284;
    v4[4] = 0;
    v4[5] = a2;
    v5 = StatusReg[4] & 0xFFFFFFLL;
    if (v5 >= 0x10FF)
    {
      v6 = 4351;
    }

    else
    {
      v6 = StatusReg[4] & 0xFFFFFFLL;
    }

    v7 = StatusReg[28];
    if (v7)
    {
      result = 0;
      if (atomic_fetch_add_explicit((v7 + 12), 1u, memory_order_relaxed) <= 0)
      {
        qword_78298 = "API MISUSE: Voucher resurrection";
        __break(1u);
        return result;
      }
    }

    v4[3] = v7;
    if (v7 == -1)
    {
      goto LABEL_11;
    }

    if (v7)
    {
      v9 = *(v7 + 32);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_11:
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    v10 = a1[21];
    if ((v10 & 0x40000000) != 0 || (v10 & 0xFFF) == 0)
    {
      v11 = __clz(__rbit32(v6 >> 8)) + 1;
      goto LABEL_16;
    }

LABEL_14:
    v11 = 0;
    v6 = 0;
LABEL_16:
    v4[1] = v6;
    v12 = *(*a1 + 72);

    return v12(a1, v4, v11);
  }

  return _dispatch_channel_enqueue_slow(a1, a2);
}

uint64_t _dispatch_channel_enqueue_slow(_DWORD *a1, uint64_t a2)
{
  v4 = _dispatch_continuation_alloc_from_heap();
  *v4 = 1284;
  v4[4] = 0;
  v4[5] = a2;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 32) & 0xFFFFFFLL;
  if (v6 >= 0x10FF)
  {
    v7 = 4351;
  }

  else
  {
    v7 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v8 = *(StatusReg + 224);
  if (v8)
  {
    result = 0;
    if (atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
      return result;
    }
  }

  v4[3] = v8;
  if (v8 == -1)
  {
    goto LABEL_10;
  }

  if (v8)
  {
    v10 = *(v8 + 32);
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v11 = a1[21];
  if ((v11 & 0x40000000) != 0 || (v11 & 0xFFF) == 0)
  {
    v12 = __clz(__rbit32(v7 >> 8)) + 1;
    goto LABEL_15;
  }

LABEL_13:
  v12 = 0;
  v7 = 0;
LABEL_15:
  v4[1] = v7;
  v13 = *(*a1 + 72);

  return v13(a1, v4, v12);
}

uint64_t dispatch_channel_wakeup(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2 - 5;
  LODWORD(v3) = a2 - 5;
  v2 = v3 >> 2;
  if (v2 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_4A890[v2];
  }

  return (*(*a1 + 64))(a1, v4, 2);
}

void _dispatch_mgr_queue_push(uint64_t a1, void *a2)
{
  if (*a2 <= 0xFFFuLL)
  {
    v2 = (*a2 & 0x81) == 0;
    *a2;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    _dispatch_mgr_queue_push_cold_2();
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (StatusReg + 976);
  *(StatusReg + 976) = a1 + 48;
  v5 = atomic_exchange_explicit((a1 + 48), a2, memory_order_release);
  if (v5)
  {
    *(v5 + 16) = a2;
    *v4 = 0;
  }

  else
  {
    _dispatch_mgr_queue_push_cold_1(a1, a2, v4, StatusReg);
  }
}

void _dispatch_mgr_thread()
{
  if (_dispatch_kevent_workqueue_enabled == 1)
  {
    qword_78298 = "BUG IN LIBDISPATCH: Manager queue invoked with kevent workqueue enabled";
    __break(1u);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 160) = &_dispatch_mgr_q;
  _dispatch_mgr_priority_init();
  v1 = qword_74138;
  v2 = *(StatusReg + 24) & 0xFFFFFFFCLL | 0x40020000000000;
  while ((v1 & 0xFFE00000FFFFFFFCLL) == 0)
  {
    v3 = v1;
    atomic_compare_exchange_strong_explicit(&qword_74138, &v3, v2 | v1 & 0x7700000001, memory_order_acquire, memory_order_acquire);
    v4 = v3 == v1;
    v1 = v3;
    if (v4)
    {
      v5 = pthread_self();
      stackaddr_np = pthread_get_stackaddr_np(v5);
      bzero(v7, stackaddr_np - v7);
      _dispatch_mgr_invoke();
    }
  }

  qword_78298 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_mgr_priority_init()
{
  v0 = off_740A0;
  v5 = 0;
  v1 = pthread_attr_getschedparam(off_740A0, &v5);
  if (v1)
  {
    _dispatch_bug(6319, v1);
  }

  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(v0, &__qos_class, 0);
  if (dword_7873C <= __qos_class)
  {
    sched_priority = v5.sched_priority;
  }

  else
  {
    pthread_set_qos_class_self_np(dword_7873C, 0);
    v2 = _dispatch_mgr_sched_qos2prio(dword_7873C);
    sched_priority = v5.sched_priority;
    if (v2 > v5.sched_priority)
    {
      v5.sched_priority = v2;
      sched_priority = v2;
    }
  }

  if (_dispatch_mgr_sched > sched_priority)
  {
    _dispatch_mgr_priority_apply();
  }
}

void _dispatch_mgr_invoke()
{
  v3 = 0;
  v5 = 0;
  v2 = 0u;
  v4 = -4;
  v6 = &v8;
  v7 = 0x100000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = *(StatusReg + 232) & 0xFFFFFFFFFFFFFFFELL;
  if (!v1)
  {
    *(StatusReg + 232) = &v2;
    while (1)
    {
      _dispatch_mgr_queue_drain();
      if (byte_7843E)
      {
        _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u);
      }

      _dispatch_event_loop_drain(qword_74130 != 0);
    }
  }

  qword_78298 = "BUG IN LIBDISPATCH: Unexpected contents in DDI TSD";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_kevent_workqueue_init()
{
  if (_dispatch_root_queues_pred != -1)
  {
    _dispatch_kevent_workqueue_init_cold_1();
  }

  if (_dispatch_kevent_workqueue_enabled == 1)
  {
    if (_dispatch_mgr_sched_pred != -1)
    {
      _dispatch_kevent_workqueue_init_cold_2();
    }

    v0 = _dispatch_mgr_sched;
    if (dword_7873C)
    {
      v1 = _pthread_qos_class_encode();
    }

    else
    {
      v1 = 0;
    }

    if (v0 > dword_78740)
    {
      v1 = v0 | 0x20000000;
    }

    if (v1)
    {
      v2 = _pthread_workqueue_set_event_manager_priority();
      if (v2)
      {

        _dispatch_bug(6573, v2);
      }
    }
  }
}

uint64_t _dispatch_mgr_sched_init()
{
  v0 = off_740A0;
  v1 = pthread_attr_init(off_740A0);
  if (v1)
  {
    _dispatch_bug(6222, v1);
  }

  v2 = pthread_attr_getschedpolicy(v0, &dword_78744);
  if (v2)
  {
    _dispatch_bug(6224, v2);
  }

  v6 = 0;
  v3 = pthread_attr_getschedparam(v0, &v6);
  if (v3)
  {
    _dispatch_bug(6225, v3);
  }

  v4 = qos_class_main();
  if (v4 == QOS_CLASS_DEFAULT)
  {
    v4 = QOS_CLASS_USER_INITIATED;
  }

  if (v4)
  {
    dword_7873C = v4;
    result = _dispatch_mgr_sched_qos2prio(v4);
  }

  else
  {
    result = v6.sched_priority;
  }

  dword_78740 = result;
  _dispatch_mgr_sched = result;
  return result;
}

void _dispatch_root_queue_poke(uint64_t (***a1)(), signed int a2, int a3)
{
  if (a1[6])
  {
    v3 = (*a1)[2];
    v4 = v3 == "le_s}ii}]^{dispatch_object_vtable_s}ii^{dispatch_object_s}^{dispatch_queue_s}^v(?=^?^v)}][0{_os_object_s=^{_os_object_vtable_s}ii}]^{dispatch_data_vtable_s}ii^{dispatch_data_s}^{dispatch_queue_s}^v(?=^?^v)^v@?QQ[0{range_record_s=^{dispatch_data_s}QQ}]}12i20" || v3 == "lue";
    if (!v4 || (v5 = 0, atomic_compare_exchange_strong_explicit((a1 + 14), &v5, a2, memory_order_release, memory_order_relaxed), !v5))
    {
      _dispatch_root_queue_poke_slow(a1, a2, a3);
    }
  }
}

void _dispatch_root_queue_poke_slow(uint64_t (***a1)(), signed int a2, int a3)
{
  LODWORD(v3) = a3;
  if (_dispatch_root_queues_pred != -1)
  {
LABEL_37:
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  v6 = (*a1)[2];
  if (v6 == "le_s}ii}]^{dispatch_object_vtable_s}ii^{dispatch_object_s}^{dispatch_queue_s}^v(?=^?^v)}][0{_os_object_s=^{_os_object_vtable_s}ii}]^{dispatch_data_vtable_s}ii^{dispatch_data_s}^{dispatch_queue_s}^v(?=^?^v)^v@?QQ[0{range_record_s=^{dispatch_data_s}QQ}]}12i20")
  {
    v8 = *(a1 + 21);
    v14 = _pthread_workqueue_add_cooperativethreads();
    if (!v14)
    {
      return;
    }

    v12 = v14;
    v13 = 6920;
    goto LABEL_39;
  }

  if (v6 == "lue")
  {
    v7 = *(a1 + 21);
    v11 = _pthread_workqueue_addthreads();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v13 = 6912;
LABEL_39:

    _dispatch_bug(v13, v12);
    return;
  }

  v9 = a1[4];
  if (v9[9])
  {
    while (dispatch_semaphore_signal((v9 + 9)))
    {
      if (!--a2)
      {
        return;
      }
    }
  }

  if ((*(a1 + 21) & 0x80000000) != 0)
  {
    atomic_fetch_add_explicit((a1 + 14), a2, memory_order_relaxed);
  }

  else
  {
    v10 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 14), &v10, a2, memory_order_relaxed, memory_order_relaxed);
    if (v10)
    {
      return;
    }
  }

  v15 = *(a1 + 25);
  while (1)
  {
    v16 = v15 - v3;
    if (v15 < v3)
    {
      v16 = 0;
    }

    if (a2 > v16)
    {
      atomic_fetch_add_explicit((a1 + 14), v16 - a2, memory_order_relaxed);
      a2 = v16;
    }

    if (!a2)
    {
      break;
    }

    v17 = v15;
    atomic_compare_exchange_strong_explicit((a1 + 100), &v17, v15 - a2, memory_order_acquire, memory_order_acquire);
    v18 = v17 == v15;
    v15 = v17;
    if (v18)
    {
      v20 = 0;
      if (a1 == &_dispatch_mgr_root_queue)
      {
        _dispatch_mgr_root_queue_init();
        v3 = &qword_78748;
      }

      else
      {
        v3 = &v20;
      }

LABEL_28:
      if (*(a1 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 1), 1u, memory_order_relaxed) < 1)
      {
        qword_78298 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_37;
      }

      while (1)
      {
        v19 = pthread_create(v3, v9, _dispatch_worker_thread, a1);
        if (v19 != 35)
        {
          if (!v19)
          {
            if (!--a2)
            {
              return;
            }

            goto LABEL_28;
          }

          _dispatch_bug(6979, v19);
        }

        _dispatch_temporary_resource_shortage();
      }
    }
  }
}

void _dispatch_root_queue_poke_and_wakeup(uint64_t (***a1)(), signed int a2, int a3)
{
  v3 = (*a1)[2];
  if (v3 != "le_s}ii}]^{dispatch_object_vtable_s}ii^{dispatch_object_s}^{dispatch_queue_s}^v(?=^?^v)}][0{_os_object_s=^{_os_object_vtable_s}ii}]^{dispatch_data_vtable_s}ii^{dispatch_data_s}^{dispatch_queue_s}^v(?=^?^v)^v@?QQ[0{range_record_s=^{dispatch_data_s}QQ}]}12i20" && v3 != "lue")
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 28);
  do
  {
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = a2;
    }

    atomic_compare_exchange_strong_explicit((a1 + 14), &v5, v7, memory_order_release, memory_order_relaxed);
  }

  while (v5 != v6);
  if (v6 <= 0)
  {
LABEL_12:
    _dispatch_root_queue_poke_slow(a1, a2, a3);
  }
}

void _dispatch_root_queue_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    if (a3)
    {
      _os_object_release_internal_n(a1, 2);
    }
  }

  else
  {
    v3 = *(a1 + 84);
    qword_78298 = "BUG IN LIBDISPATCH: Don't try to wake up or override a root queue";
    qword_782C8 = v3;
    __break(1u);
  }
}

void _dispatch_root_queue_push(uint64_t a1, void *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 232);
  if (v6 && *(v6 + 52) == 1 && ((v7 = v6[1], v12 = *(a1 + 84), !v7) || v12 < 0))
  {
    v13 = *v6;
    v14 = *(v6 + 4);
    *v6 = a1;
    v6[1] = a2;
    *(v6 + 4) = a3;
    if (v12 < 0)
    {
      *(v6 + 52) = 0;
    }

    if (!v7)
    {
      return;
    }

    v3 = v14;
    v4 = v13;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v4 + 84);
  if ((v8 & 0x8000000) != 0 && *v7 >= 0x1000uLL && *(*v7 + 16) != 1)
  {
    if (*(*v7 + 16) != 19 || !_dispatch_source_is_timer(v7))
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_782C8 = v7;
      __break(1u);
      return;
    }

    v8 = *(v4 + 84);
  }

  if (v8 >> 12)
  {
    if (v3 && v8 >> 12 != v3)
    {
LABEL_13:

      _dispatch_root_queue_push_override(v4, v7, v3);
      return;
    }
  }

  else
  {
    v9 = (v8 >> 8) & 0xF;
    if (v9)
    {
      v10 = v9 >= v3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v7[2] = 0;
  *(StatusReg + 976) = v4 + 48;
  v11 = atomic_exchange_explicit((v4 + 48), v7, memory_order_release);
  if (v11)
  {
    *(v11 + 16) = v7;
    *(StatusReg + 976) = 0;
  }

  else
  {
    *(v4 + 104) = v7;
    *(StatusReg + 976) = 0;

    _dispatch_root_queue_poke_and_wakeup(v4, 1, 0);
  }
}

void _dispatch_root_queue_push_override(uint64_t (***a1)(), void *a2, unsigned int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 21);
  if (v6 < 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = (v6 >> 25) & 4;
  }

  if (*a2 >= 0x1000uLL && *(*a2 + 16) == 256)
  {
    a2[4] = a1;
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    a1 = *(StatusReg + 176);
    if (a1)
    {
      *(StatusReg + 176) = a1[2];
    }

    else
    {
      a1 = _dispatch_continuation_alloc_from_heap();
    }

    a1[6] = v4;
    a1[7] = v5;
    a1[5] = a1;
    *a1 = &unk_70DE0;
    a1[1] = -1;
    a1[3] = -1;
    v4 = a1;
  }

  if (a3 - 7 <= 0xFFFFFFF9)
  {
    v10 = a3;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_782C8 = a3;
    __break(1u);
  }

  else
  {
    v9 = 2 * (v7 > 3);
    if ((v7 & 2) != 0)
    {
      v9 = 1;
    }

    a1 = &(&_dispatch_root_queues)[16 * (3 * a3 + v9 - 3)];
    *(v4 + 16) = 0;
    v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(v10 + 976) = a1 + 6;
    v11 = atomic_exchange_explicit((a1 + 6), v4, memory_order_release);
    if (v11)
    {
      *(v11 + 16) = v4;
      *(v10 + 976) = 0;
      return;
    }
  }

  a1[13] = v4;
  *(v10 + 976) = 0;

  _dispatch_root_queue_poke_and_wakeup(a1, 1, 0);
}

uint64_t _dispatch_pthread_root_queue_create(const char *a1, int a2, __int128 *a3, void *a4, _OWORD *a5)
{
  if (a2 < 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = 4095;
  if (a1)
  {
    v11 = _dispatch_strdup_if_mutable(a1);
    if (v11 == a1)
    {
      v9 = 4095;
    }

    else
    {
      v9 = 2101247;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = _dispatch_object_alloc(_OS_dispatch_queue_pthread_root_vtable, 320);
  v13 = v12;
  *(v12 + 16) = -1985229329;
  *(v12 + 80) = v9;
  *(v12 + 56) = 0x20000000000;
  *(v12 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v12 + 72) = v11;
  *(v12 + 56) = 0x60000000000000;
  *(v12 + 84) = 0x80000000;
  v14 = v12 + 120;
  *(v12 + 32) = v12 + 120;
  if (v8 >= 32)
  {
    v15 = 32;
  }

  else
  {
    v15 = v8;
  }

  if (v8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 32;
  }

  *(v12 + 100) = v16;
  *(v12 + 192) = _OS_dispatch_semaphore_vtable;
  *(v12 + 256) = 0;
  _dispatch_sema4_create_slow((v12 + 256), 2);
  if (a3)
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = a3[3];
    *(v14 + 32) = a3[2];
    *(v14 + 48) = v19;
    *v14 = v17;
    *(v14 + 16) = v18;
    _dispatch_mgr_priority_raise(v14);
  }

  else
  {
    v20 = pthread_attr_init(v14);
    if (v20)
    {
      _dispatch_bug(7729, v20);
    }
  }

  v21 = pthread_attr_setdetachstate(v14, 2);
  if (!v21)
  {
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  _dispatch_bug(7732, v21);
  if (a4)
  {
LABEL_21:
    *(v13 + 184) = _dispatch_Block_copy(a4);
  }

LABEL_22:
  if (a5)
  {
    *(v13 + 264) = *a5;
  }

  return v13;
}

uint64_t _dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID(const char *a1, int a2, __int128 *a3, uint64_t a4, void *a5)
{
  if (!*a4 || !*(a4 + 8))
  {
    _dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID_cold_1();
  }

  return _dispatch_pthread_root_queue_create(a1, a2, a3, a5, a4);
}

BOOL _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != 1)
  {
    _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID_cold_1(v2);
  }

  v3 = *(a1 + 56);
  return ((v3 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24)) & 0xFFFFFFFC) == 0;
}

uint64_t dispatch_pthread_root_queue_copy_current()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160);
  if (!v0)
  {
    return 0;
  }

  do
  {
    v1 = v0;
    v0 = *(v0 + 24);
  }

  while (v0);
  if (*(*v1 + 16) != 328721)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v1);
  return v1;
}

void _dispatch_pthread_root_queue_dispose(void *a1, _BYTE *a2)
{
  v4 = a1[4];
  v5 = a1[8];
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1();
  }

  pthread_attr_destroy(v4);
  _dispatch_semaphore_dispose(v4[1].__opaque);
  sig = v4[1].__sig;
  if (sig)
  {
    _Block_release(sig);
  }

  a1[3] = &off_74600;

  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_wakeup(char *context, char *a2, uint64_t a3)
{
  if ((*(context + 20) & 0x800000) != 0 || (a3 & 2) != 0 && (atomic_fetch_or_explicit((context + 56), 0x8000000000uLL, memory_order_release) & 0xFFFFFFFC) == 0)
  {

    _dispatch_lane_wakeup(context, a2, a3);
  }

  else if (*(context + 6))
  {

    _dispatch_runloop_queue_poke(context, a2, a3);
  }

  else
  {
    v3 = (atomic_fetch_and_explicit((context + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
    if (v3)
    {
      v4 = *(context + 7) | 3;
      if (*(context + 6))
      {
        _dispatch_runloop_queue_poke(context, v3, a3);
      }

      _pthread_qos_override_end_direct();
    }

    else if (a3)
    {

      _os_object_release_internal_n(context, 2);
    }
  }
}

void _dispatch_runloop_queue_poke(char *context, unsigned int a2, char a3)
{
  if (*(*context + 16) == 394769 && _dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, context, _dispatch_runloop_queue_handle_init);
  }

  v6 = *(context + 21);
  v7 = v6 >> 12;
  if (a2)
  {
    v7 = a2;
  }

  v8 = (v6 >> 8) & 0xF;
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(context + 7);
  v11 = v9 << 32;
  while (1)
  {
    v12 = v10;
    v13 = v10 & 0x700000000;
    v14 = v10 & 0xFFFFFFF8FFFFFFFFLL | v11;
    if ((v14 & 0x1000000000) != 0)
    {
      v14 |= 0x800000000uLL;
    }

    v15 = v13 < v11 ? v14 : v12;
    if (v12 == v15)
    {
      break;
    }

    v10 = v12;
    atomic_compare_exchange_strong_explicit((context + 56), &v10, v15, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v12)
    {
      if (v7 > v8)
      {
        _pthread_qos_override_start_direct();
        if ((BYTE4(v12) & 7u) > v8)
        {
          _pthread_qos_override_end_direct();
        }
      }

      break;
    }
  }

  v16 = *(context + 8);
  if (v16 - 1 > 0xFFFFFFFD || ((v17 = _dispatch_send_wakeup_runloop_thread(v16, 0), (v17 - 268435459) >= 2) ? (v18 = v17 == 16) : (v18 = 1), !v18 ? (v19 = v17 == 0) : (v19 = 1), v19))
  {
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    _dispatch_bug(7983, v17);
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  _os_object_release_internal_n(context, 2);
}

void _dispatch_runloop_queue_handle_init(void *context)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_4A7D8;
  name = 0;
  if (*(*context + 16) == 394769)
  {
    *&options.flags = 0x100000033;
  }

  v2 = mach_port_construct(mach_task_self_, &options, context, &name);
  if (v2 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v2)
  {
    _dispatch_bug(7896, v2);
  }

  context[4] = name;
  _dispatch_program_is_probably_callback_driven = 1;
}

uint64_t _dispatch_runloop_queue_xref_dispose(uint64_t a1)
{
  v2 = (atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) >> 32) & 7;
  v3 = *(a1 + 80);
  atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFFF00000003, memory_order_relaxed);
  result = (*(*a1 + 64))(a1, v2, 2);
  if (v2)
  {
    v5 = *(a1 + 56) | 3;

    return _pthread_qos_override_end_direct();
  }

  return result;
}

void _dispatch_runloop_queue_dispose(mach_port_context_t guard, _BYTE *a2)
{
  v4 = *(guard + 64);
  if (MEMORY[0xFFFFFC100])
  {
    _dispatch_lane_dispose_cold_1();
  }

  _dispatch_runloop_queue_handle_dispose(guard);

  _dispatch_lane_class_dispose(guard, a2);
}

void _dispatch_runloop_queue_handle_dispose(mach_port_context_t guard)
{
  v1 = *(guard + 32);
  if (v1 - 1 <= 0xFFFFFFFD)
  {
    *(guard + 32) = 0;
    v2 = mach_port_destruct(mach_task_self_, v1, -1, guard);
    if (v2 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v2)
    {

      _dispatch_bug(7952, v2);
    }
  }
}

BOOL _dispatch_runloop_root_queue_perform_4CF(char *object)
{
  v2 = *(*object + 16);
  if (v2 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v2);
  }

  dispatch_retain(object);
  v3 = (object + 48);
  if (!*(object + 6))
  {
    v15 = 0;
    goto LABEL_73;
  }

  v4 = mach_absolute_time();
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v6 != -4)
  {
    if (v6)
    {
      add_explicit = atomic_fetch_add_explicit((v6 + 96), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 0)
      {
        if (add_explicit < 0)
        {
          _dispatch_runloop_root_queue_perform_4CF_cold_2();
        }

        *(v6 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v6);
      }
    }

    *(StatusReg + 216) = -4;
  }

  v53 = *(StatusReg + 160);
  *(StatusReg + 160) = object;
  *(StatusReg + 168) = &v53;
  v8 = *(StatusReg + 32);
  v9 = (__clz(__rbit32((v8 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v8 >> 8) & 0x3FFF) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(StatusReg + 224);
  if (v11 && atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  LODWORD(v12) = v10 | v8 & 0x8E0000FF;
  v13 = *(StatusReg + 200);
  v51 = v8;
  if (v13)
  {
    v14 = v10 & 0xFFF | v8;
    if (v14)
    {
      if ((v13 & 0xFFFu) > v14)
      {
        v14 = v13 & 0xFFF;
      }

      LODWORD(v12) = v14 | v13 & 0x880F0000;
    }

    else
    {
      LODWORD(v12) = v13 | 0x40000000;
      if ((v13 & 0xFFF) == 0)
      {
        LODWORD(v12) = *(StatusReg + 200);
      }
    }
  }

  if ((~v12 & 0xF0000) != 0)
  {
    v12 = v12 | 0xF0000;
  }

  else
  {
    v12 = v12;
  }

  *(StatusReg + 200) = v12;
  memset(v52, 0, sizeof(v52));
  v16 = *(object + 13);
  if (!v16)
  {
    v16 = _dispatch_wait_for_enqueuer(object + 13);
  }

  v17 = v16[2];
  *(object + 13) = v17;
  if (!v17)
  {
    v46 = *v3;
    while (v16 == (v46 & 0xFFFFFFFFFFFFFFF8))
    {
      v47 = v46;
      atomic_compare_exchange_strong_explicit(v3, &v47, 0, memory_order_release, memory_order_relaxed);
      v29 = v47 == v46;
      v46 = v47;
      if (v29)
      {
        goto LABEL_28;
      }
    }

    v17 = v16[2];
    if (!v17)
    {
      v17 = _dispatch_wait_for_enqueuer(v16 + 2);
    }

    *(object + 13) = v17;
  }

LABEL_28:
  v18 = *(StatusReg + 192);
  if (v18)
  {
    (*v18)(object);
  }

  v19 = *v16;
  if (*v16 < 0x1000uLL)
  {
    v49 = v4;
    v21 = v16[3];
    if ((v19 & 4) != 0)
    {
      v16[3] = -1;
    }

    if (v21 != -1)
    {
      if (v21)
      {
        v22 = *(v21 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v50 = v11;
    v23 = v16[1];
    if (v23 == -1)
    {
      v26 = 0;
    }

    else
    {
      v24 = *(StatusReg + 200);
      if (((v24 >> 8) & 0xF) != 0)
      {
        v25 = 1 << ((BYTE1(v24) & 0xFu) + 7);
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 | *(StatusReg + 200);
      v27 = v23 & 0xFFFFFF;
      if ((v23 & 0xFFFFFF) != 0)
      {
        v28 = v25 & 0xFFFFFF00;
        v29 = (v24 & 0x44000000) == 0 && (v16[1] & 0x10000000) == 0;
        if (v29)
        {
          v30 = v26;
        }

        else
        {
          v30 = v23 & 0xFFFFFF;
        }

        if (v27 >= v28)
        {
          v26 = v30;
        }
      }

      else if (v24 >> 12)
      {
        v26 = (256 << ((v24 >> 12) - 1)) | 0xFF;
      }
    }

    v36 = v26 & 0x7FFFFFFF02FFFFFFLL;
    v37 = *(StatusReg + 32);
    if ((v37 & 0x1000000) != 0)
    {
      if (v36)
      {
        goto LABEL_122;
      }

      v36 = v37 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v36 == (v37 & 0xFFFFFFFF76FFFFFFLL))
    {
LABEL_77:
      if (v21 == -1)
      {
        goto LABEL_82;
      }

      if (*(StatusReg + 224) == v21)
      {
        if ((v19 & 4) != 0 && v21 && atomic_fetch_add_explicit((v21 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
        {
          _dispatch_block_invoke_direct_cold_4();
        }

LABEL_82:
        if ((v19 & 4) != 0)
        {
          v39 = *(StatusReg + 176);
          if (v39)
          {
            v40 = *(v39 + 8) + 1;
          }

          else
          {
            v40 = 1;
          }

          v38 = v16;
          if (v40 <= _dispatch_continuation_cache_limit)
          {
            v38 = 0;
            v16[2] = v39;
            *(v16 + 2) = v40;
            *(StatusReg + 176) = v16;
          }
        }

        else
        {
          v38 = 0;
        }

        if ((v19 & 8) != 0)
        {
          _dispatch_runloop_root_queue_perform_4CF_cold_6();
        }

        else
        {
          v48 = v38;
          v41 = v6;
          v43 = v16[4];
          v42 = v16[5];
          if (v42)
          {
            v44 = v16[4];
            if (v43 == _dispatch_call_block_and_release)
            {
              if (*(v42 + 16))
              {
                v45 = *(v42 + 16);
              }
            }
          }

          _dispatch_client_callout(v42, v43);
          v6 = v41;
          v11 = v50;
          v38 = v48;
          if (MEMORY[0xFFFFFC100])
          {
            _dispatch_workloop_invoke_cold_8();
          }
        }

        if (v38)
        {
          _dispatch_continuation_free_to_cache_limit(v38);
        }

        ++*(StatusReg + 208);
        v4 = v49;
        if (v18)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      v36 = 0;
LABEL_122:
      _dispatch_set_priority_and_voucher_slow(v36, v21, v19 & 4 | 2);
      goto LABEL_82;
    }

    if (v36)
    {
      goto LABEL_122;
    }

    goto LABEL_77;
  }

  v20 = *v16;
  if (*(v19 + 16) == 1)
  {
    (*(v19 + 24))(v16, 0, 0);
  }

  else
  {
    (*(v19 + 48))(v16, v52, 0x80000);
  }

  if (v18)
  {
LABEL_56:
    v18[1](object);
  }

LABEL_57:
  v15 = v17 != 0;
  if (!v17)
  {
    (*(*object + 64))(object, 0, 0);
  }

  *(StatusReg + 200) = v13 & 0xFFF0FFFF;
  v31 = v51 & 0xFFFFFFFF02FFFFFFLL;
  if (v51 == -1)
  {
    v32 = 0;
  }

  else
  {
    v32 = v51 & 0xFFFFFFFF02FFFFFFLL;
  }

  v33 = *(StatusReg + 32);
  if ((v33 & 0x1000000) != 0)
  {
    if (v32)
    {
LABEL_111:
      _dispatch_set_priority_and_voucher_slow(v31, v11, 6);
      goto LABEL_68;
    }

    v32 = v33 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v32 == (v33 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_64;
  }

  v31 = v32;
  if (v32)
  {
    goto LABEL_111;
  }

LABEL_64:
  if (v11 != -1)
  {
    if (*(StatusReg + 224) == v11)
    {
      if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
      {
        _dispatch_block_invoke_direct_cold_4();
      }

      goto LABEL_68;
    }

    v31 = 0;
    goto LABEL_111;
  }

LABEL_68:
  *(StatusReg + 160) = v53;
  if (v6 != -4)
  {
    *(StatusReg + 216) = 0;
    *(StatusReg + 40) = 0;
  }

  v34 = *(StatusReg + 176);
  if (v34)
  {
    *(StatusReg + 176) = 0;
    _dispatch_cache_cleanup(v34);
  }

  _dispatch_queue_merge_stats(v4, 0);
LABEL_73:
  dispatch_release(object);
  return v15;
}

void _dispatch_runloop_root_queue_wakeup_4CF(char *a1)
{
  v2 = *(*a1 + 16);
  if (v2 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v2);
  }

  _dispatch_runloop_queue_wakeup(a1, 0, 0);
}

uint64_t _dispatch_runloop_root_queue_get_port_4CF(unsigned int *a1)
{
  v1 = *(*a1 + 16);
  if (v1 != 395025)
  {
    _dispatch_runloop_root_queue_perform_4CF_cold_1(v1);
  }

  return a1[8];
}

uint64_t _dispatch_get_main_queue_handle_4CF()
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_74020;
}

uint64_t _dispatch_get_main_queue_port_4CF()
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  return dword_74020;
}

void _dispatch_main_queue_callback_4CF()
{
  if (!dword_74070)
  {
    dword_74070 = 1;
    _dispatch_main_queue_drain();
    dword_74070 = 0;
  }
}

void _dispatch_main_queue_drain()
{
  v47 = 0uLL;
  if (!qword_74030)
  {
    return;
  }

  v0 = mach_absolute_time();
  if ((dword_74050 & 0x40000) == 0)
  {
    _dispatch_main_queue_drain_cold_12();
  }

  v1 = v0;
  v2 = qword_74038;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (((v2 ^ *(StatusReg + 24)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_main_queue_drain_cold_1(v2);
  }

  if (_dispatch_main_q_handle_pred != -1)
  {
    _dispatch_get_main_queue_handle_4CF_cold_1();
  }

  v4 = *(StatusReg + 216) & 0xFFFFFFFFFFFFFFFELL;
  if (v4)
  {
    if (v4 == -4)
    {
      _dispatch_main_queue_drain_cold_3();
    }

    add_explicit = atomic_fetch_add_explicit((v4 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _dispatch_runloop_root_queue_perform_4CF_cold_2();
      }

      *(v4 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v4);
    }
  }

  *(StatusReg + 216) = -4;
  v47 = *(StatusReg + 160);
  *(StatusReg + 160) = &_dispatch_main_q;
  *(StatusReg + 168) = 0;
  v45 = *(StatusReg + 32);
  v6 = (__clz(__rbit32((v45 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v45 >> 8) & 0x3FFF) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(StatusReg + 224);
  if (v8 && atomic_fetch_add_explicit((v8 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  if (((dword_74054 ^ v7) & 0xF00) != 0)
  {
    _dispatch_main_queue_update_priority_from_thread();
  }

  LODWORD(v9) = v7 | v45 & 0x8E0000FF;
  v10 = *(StatusReg + 200);
  v44 = v1;
  v42 = v10;
  if (v10)
  {
    v11 = v7 & 0xFFF | v45;
    if (v11)
    {
      v12 = v10 & 0x880F0000;
      v13 = v10 & 0xFFF;
      if (v13 > v11)
      {
        v11 = v13;
      }

      LODWORD(v9) = v12 | v11;
    }

    else
    {
      LODWORD(v9) = v10 | 0x40000000;
      if ((v10 & 0xFFF) == 0)
      {
        LODWORD(v9) = *(StatusReg + 200);
      }
    }
  }

  v43 = v8;
  if ((~v9 & 0xF0000) != 0)
  {
    v9 = v9 | 0xF0000;
  }

  else
  {
    v9 = v9;
  }

  *(StatusReg + 200) = v9;
  memset(v46, 0, sizeof(v46));
  v14 = off_74068[0];
  if (!off_74068[0])
  {
    v14 = _dispatch_wait_for_enqueuer(off_74068);
  }

  off_74068[0] = 0;
  v15 = atomic_exchange_explicit(&qword_74030, 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
  do
  {
    if (v14 == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v14 + 2);
      if (!v16)
      {
        v16 = _dispatch_wait_for_enqueuer(v14 + 2);
      }
    }

    v17 = *(StatusReg + 192);
    if (v17)
    {
      (*v17)(&_dispatch_main_q);
    }

    v18 = *v14;
    if (*v14 >= 0x1000uLL)
    {
      v19 = *v14;
      if (*(v18 + 16) == 1)
      {
        (*(v18 + 24))(v14, 0, 0);
      }

      else
      {
        (*(v18 + 48))(v14, v46, 0x80000);
      }

      if (v17)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    v20 = *(v14 + 3);
    if ((v18 & 4) != 0)
    {
      *(v14 + 3) = -1;
    }

    if (v20 != -1)
    {
      if (v20)
      {
        v21 = *(v20 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v22 = *(v14 + 1);
    if (v22 == -1)
    {
      v25 = 0;
    }

    else
    {
      v23 = *(StatusReg + 200);
      if (((v23 >> 8) & 0xF) != 0)
      {
        v24 = 1 << ((BYTE1(v23) & 0xFu) + 7);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24 | *(StatusReg + 200);
      if ((v22 & 0xFFFFFF) != 0)
      {
        if ((v22 & 0xFFFFFFuLL) >= (v24 & 0xFFFFFF00) && ((v23 & 0x44000000) != 0 || (*(v14 + 1) & 0x10000000) != 0))
        {
          v25 = v22 & 0xFFFFFF;
        }
      }

      else if (v23 >> 12)
      {
        v25 = (256 << ((v23 >> 12) - 1)) | 0xFF;
      }
    }

    v27 = v25 & 0x7FFFFFFF02FFFFFFLL;
    v28 = *(StatusReg + 32);
    if ((v28 & 0x1000000) != 0)
    {
      if (v27)
      {
        goto LABEL_99;
      }

      v27 = v28 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v27 == (v28 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_67;
    }

    if (v27)
    {
      goto LABEL_99;
    }

LABEL_67:
    if (v20 == -1)
    {
      goto LABEL_72;
    }

    if (*(StatusReg + 224) != v20)
    {
      v27 = 0;
LABEL_99:
      _dispatch_set_priority_and_voucher_slow(v27, v20, v18 & 4 | 2);
      goto LABEL_72;
    }

    if ((v18 & 4) != 0 && v20 && atomic_fetch_add_explicit((v20 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      _dispatch_block_invoke_direct_cold_4();
    }

LABEL_72:
    if ((v18 & 4) != 0)
    {
      v30 = *(StatusReg + 176);
      if (v30)
      {
        v31 = *(v30 + 8) + 1;
      }

      else
      {
        v31 = 1;
      }

      v29 = v14;
      if (v31 <= _dispatch_continuation_cache_limit)
      {
        v29 = 0;
        *(v14 + 2) = v30;
        v14[2] = v31;
        *(StatusReg + 176) = v14;
      }
    }

    else
    {
      v29 = 0;
    }

    if ((v18 & 8) != 0)
    {
      _dispatch_main_queue_drain_cold_8();
    }

    else
    {
      v33 = *(v14 + 4);
      v32 = *(v14 + 5);
      if (v32)
      {
        v34 = *(v14 + 4);
        if (v33 == _dispatch_call_block_and_release)
        {
          if (*(v32 + 16))
          {
            v35 = *(v32 + 16);
          }
        }
      }

      _dispatch_client_callout(v32, v33);
      if (MEMORY[0xFFFFFC100])
      {
        _dispatch_workloop_invoke_cold_8();
      }
    }

    if (v29)
    {
      _dispatch_continuation_free_to_cache_limit(v29);
    }

    ++*(StatusReg + 208);
    if (v17)
    {
LABEL_61:
      v17[1](&_dispatch_main_q);
    }

LABEL_62:
    v14 = v16;
  }

  while (v16);
  (*(*&_dispatch_main_q + 64))(&_dispatch_main_q, 0, 0);
  *(StatusReg + 200) = v42 & 0xFFF0FFFF;
  v36 = v45 & 0xFFFFFFFF02FFFFFFLL;
  if (v45 == -1)
  {
    v37 = 0;
  }

  else
  {
    v37 = v45 & 0xFFFFFFFF02FFFFFFLL;
  }

  v38 = *(StatusReg + 32);
  if ((v38 & 0x1000000) != 0)
  {
    v40 = v43;
    v39 = v44;
    if (!v37)
    {
      v37 = v38 & 0xFFFFFFFFFEFFFFFFLL;
      goto LABEL_118;
    }

LABEL_122:
    _dispatch_set_priority_and_voucher_slow(v36, v40, 6);
  }

  else
  {
    v40 = v43;
    v39 = v44;
    if (v37 == (v38 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_105;
    }

LABEL_118:
    v36 = v37;
    if (v37)
    {
      goto LABEL_122;
    }

LABEL_105:
    if (v40 != -1)
    {
      if (*(StatusReg + 224) != v40)
      {
        v36 = 0;
        goto LABEL_122;
      }

      if (v40 && atomic_fetch_add_explicit((v40 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
      {
        _dispatch_block_invoke_direct_cold_4();
      }
    }
  }

  *(StatusReg + 160) = v47;
  *(StatusReg + 216) = 0;
  *(StatusReg + 40) = 0;
  v41 = *(StatusReg + 176);
  if (v41)
  {
    *(StatusReg + 176) = 0;
    _dispatch_cache_cleanup(v41);
  }

  _dispatch_queue_merge_stats(v39, 0);
}

uint64_t _dispatch_main_queue_push(uint64_t result, uint64_t a2, uint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = (*(StatusReg + 32) >> 8) & 0x3FFF;
  v5 = __clz(__rbit32(v4));
  *(a2 + 16) = 0;
  *(StatusReg + 976) = result + 48;
  v6 = *(result + 48);
  do
  {
    v7 = v6;
    v8 = v4 != 0 && v5 >= (v6 & 7u);
    if (v8)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = v6 & 7;
    }

    atomic_compare_exchange_strong_explicit((result + 48), &v6, v9 | a2, memory_order_release, memory_order_relaxed);
  }

  while (v6 != v7);
  v10 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  if ((v7 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v10 = (result + 104);
  }

  *v10 = a2;
  *(StatusReg + 976) = 0;
  if (!v7 || v8 && (*(result + 80) & 0x40000) != 0)
  {
    return (*(*result + 64))(result, a3, 2);
  }

  if (((*(result + 84) >> 8) & 0xFu) >= a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if ((*(result + 60) & 7) == 0 || (*(result + 60) & 7u) < v11)
  {
    return (*(*result + 64))(result, v11, 0);
  }

  return result;
}

void _dispatch_main_queue_wakeup(unint64_t a1, char *a2, uint64_t a3)
{
  if ((*(a1 + 80) & 0x40000) != 0)
  {
    v3 = *(a1 + 80);
    _dispatch_runloop_queue_wakeup(a1, a2, a3);
  }

  else
  {
    _dispatch_lane_wakeup(a1, a2, a3);
  }
}

void dispatch_main(void)
{
  if (_dispatch_root_queues_pred != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (!pthread_main_np())
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main() must be called on the main thread";
      __break(1u);
    }

    if (!dword_74070)
    {
      dword_74070 = 1;
      _dispatch_main_queue_drain();
      dword_74070 = 0;
      _dispatch_program_is_probably_callback_driven = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      pthread_exit(0);
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main called from a block on the main queue";
    __break(1u);
LABEL_9:
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }
}

dispatch_queue_global_t dispatch_get_global_queue(intptr_t identifier, uintptr_t flags)
{
  if ((flags & 0xFFFFFFFFFFFFFFF9) != 0 || flags >= 4 && (flags & 2) != 0)
  {
    return 0;
  }

  if (identifier <= -3)
  {
    if (identifier == -32768)
    {
      v3 = 3;
      goto LABEL_15;
    }

    if (identifier != -128)
    {
      goto LABEL_18;
    }

LABEL_12:
    v3 = 6;
    goto LABEL_15;
  }

  switch(identifier)
  {
    case -2:
      goto LABEL_12;
    case 0:
      v3 = 9;
      goto LABEL_15;
    case 2:
      v3 = 12;
      goto LABEL_15;
  }

LABEL_18:
  HIDWORD(v6) = identifier - 5;
  LODWORD(v6) = identifier - 5;
  v5 = v6 >> 2;
  if (v5 > 7 || ((0xBBu >> v5) & 1) == 0)
  {
    return 0;
  }

  v3 = qword_4A8B0[v5];
LABEL_15:
  v4 = 2 * (flags > 3);
  if ((flags & 2) != 0)
  {
    v4 = 1;
  }

  return &(&_dispatch_root_queues)[16 * (v3 + v4)];
}

void _dispatch_queue_cleanup(dispatch_queue_s *a1)
{
  if (a1 != &_dispatch_main_q)
  {
    _dispatch_queue_cleanup_cold_1(a1);
  }

  _dispatch_queue_cleanup2();
}

void _dispatch_frame_cleanup(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch frame is active";
  qword_782C8 = a1;
  __break(1u);
}

uint64_t _dispatch_cache_cleanup(uint64_t result)
{
  if (result)
  {
    do
    {
      v1 = *(result + 16);
      _dispatch_continuation_free_to_heap(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void _dispatch_context_cleanup(uint64_t a1)
{
  qword_78298 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch context is set";
  qword_782C8 = a1;
  __break(1u);
}

void _dispatch_wlh_cleanup(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFFELL;
  add_explicit = atomic_fetch_add_explicit((v2 + 96), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 0)
  {
    if (add_explicit < 0)
    {
      _dispatch_runloop_root_queue_perform_4CF_cold_2();
    }

    *(v2 + 56) = 0xDEAD000000000000;

    _dispatch_object_dealloc(v2);
  }
}

void *_dispatch_deferred_items_cleanup(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    _dispatch_deferred_items_cleanup_cold_1(a1);
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFFFELL);

  return _dispatch_free_deferred_unotes(v2);
}

void _dispatch_queue_atfork_child()
{
  if ((dword_74050 & 0x40000) != 0)
  {
    _dispatch_queue_atfork_child_cold_1();
  }

  if (_dispatch_unsafe_fork)
  {
    off_74068[0] = (&stru_B8 + 72);
    qword_74030 = 256;
    qword_74168 = 256;
    qword_74130 = 256;
    v0 = &qword_741E8;
    v1 = 18;
    do
    {
      *v0 = 256;
      *(v0 - 7) = 256;
      v0 += 16;
      --v1;
    }

    while (v1);
  }
}

void _dispatch_fork_becomes_unsafe_slow()
{
  if ((atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 1u, memory_order_relaxed) & 2) != 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Transition to multithreaded is prohibited";
    __break(1u);
  }
}

uint64_t _dispatch_prohibit_transition_to_multithreaded(uint64_t result)
{
  if (result)
  {
    if (atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 2u, memory_order_relaxed))
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: The executable is already multithreaded";
      __break(1u);
    }
  }

  else
  {
    atomic_fetch_and_explicit(&_dispatch_unsafe_fork, 0xFDu, memory_order_relaxed);
  }

  return result;
}

void _dispatch_block_async_invoke2(char *aBlock, char a2)
{
  v3 = aBlock;
  if (*(aBlock + 2))
  {
    v4 = *(aBlock + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 == _dispatch_block_special_invoke;
  if (v4 == _dispatch_block_special_invoke)
  {
    v6 = aBlock + 32;
    v7 = *(aBlock + 4);
    v5 = v7 == 3512316172;
    if (v7 != 3512316172)
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_782C8 = v7;
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v6 + 4);
  if ((v8 & 4) != 0)
  {
    v10 = *(v6 + 4);
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_782C8 = v8;
    __break(1u);
    goto LABEL_19;
  }

  if ((v8 & 1) == 0)
  {
    aBlock = (*(*(v6 + 5) + 16))();
  }

  if ((v8 & 8) == 0 && !atomic_fetch_add_explicit((v6 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(v6 + 6));
  }

  __swp(aBlock, v6 + 14);
  if (aBlock)
  {
    if (*(aBlock + 2) != 0x7FFFFFFF)
    {
      add_explicit = atomic_fetch_add_explicit((aBlock + 8), 0xFFFFFFFE, memory_order_release);
      v5 = add_explicit == 2;
      if (add_explicit <= 2)
      {
LABEL_19:
        if (v5)
        {
          _os_object_dispose(aBlock);
          if ((a2 & 1) == 0)
          {
            return;
          }

          goto LABEL_22;
        }

LABEL_26:
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
        return;
      }
    }
  }

  if ((a2 & 1) == 0)
  {
    return;
  }

LABEL_22:

  _Block_release(v3);
}

void _dispatch_lane_non_barrier_complete(unint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v4 = *(a1 + 56);
  do
  {
    v5 = v4;
    v6 = v4 - 0x20000000000;
    if ((v4 & 0xFFFFFFFC) != 0)
    {
      v6 |= 0x8000000000uLL;
    }

    else if (!(v6 >> 53))
    {
      if ((v4 & 0x10000000000) != 0)
      {
        v7 = v4 + 0x3FFF0000000000;
      }

      else
      {
        v7 = v4 + (*(a1 + 80) << 41) + 0x3FFE0000000000;
      }

      v8 = (v7 & 0x3FFE0000000000) == 0x20000000000000;
      v9 = v7 & 0xFFE0017FFFFFFFFFLL | v3;
      if (v8)
      {
        v6 = v9;
      }

      else
      {
        v6 |= (v5 >> 39) & 1;
      }
    }

    v4 = v5;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v4, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v5);
  if ((~v5 & 0x1800000000) == 0)
  {
    v10 = HIDWORD(v5) & 7;
    v11 = *(StatusReg + 200);
    if ((HIWORD(v11) & 0xF) < v10)
    {
      *(StatusReg + 200) = v11 & 0xFFF0FFFF | (v10 << 16);
    }
  }

  if (((v6 ^ v5) & 0x40000000000000) != 0)
  {

    _dispatch_lane_barrier_complete(a1, 0, a2);
  }

  else if ((v6 ^ v5))
  {
    if ((a2 & 1) != 0 || *(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) > 0)
    {
      v12 = *(a1 + 24);
    }

    else
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      v14 = *(a1 + 32);
    }

    v13 = *(**(a1 + 24) + 72);

    v13();
  }

  else if (a2)
  {

    _os_object_release_internal_n(a1, 2);
  }
}

double _dispatch_sync_f_slow(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + 24))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = StatusReg[4];
    v19 = 0;
    v20 = 0;
    v13[0] = a6 | 1;
    v13[1] = v11 | 0x10000000;
    v13[2] = 0;
    v13[3] = StatusReg[28];
    v13[4] = _dispatch_async_and_wait_invoke;
    v13[5] = v13;
    v13[6] = 0;
    v14 = a1;
    v15 = a3;
    v16 = a2;
    v17 = 0;
    v18 = 0;
    HIDWORD(v19) = StatusReg[3];
    __DISPATCH_WAIT_FOR_QUEUE__(v13, a5);
    if (v15)
    {
      _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4);
    }

    else
    {
      _dispatch_sync_complete_recurse(a1, v14, a4);
    }
  }

  else
  {

    return _dispatch_sync_function_invoke(a5, a2, a3);
  }

  return result;
}

double _dispatch_sync_recurse(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(a1 + 24);
  v6 = *(StatusReg + 24) & 0xFFFFFFFCLL;
LABEL_2:
  if (*(v5 + 80) == 1)
  {
    v7 = *(v5 + 56);
    while (v7 == (v7 & 0x3000000000 | 0x1FFE0000000000))
    {
      v8 = v7;
      atomic_compare_exchange_strong_explicit((v5 + 56), &v8, v6 | v7 & 0x3000000000 | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v9 = v8 == v7;
      v7 = v8;
      if (v9)
      {
        goto LABEL_7;
      }
    }

    v13 = 2;
  }

  else
  {
    if (!*(v5 + 48))
    {
      v10 = *(v5 + 56);
      while ((v10 & 0xFFC0018000000000) == 0)
      {
        v11 = v10;
        atomic_compare_exchange_strong_explicit((v5 + 56), &v11, v10 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v9 = v11 == v10;
        v10 = v11;
        if (v9)
        {
LABEL_7:
          v5 = *(v5 + 24);
          if (*(v5 + 24))
          {
            goto LABEL_2;
          }

          _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4);
          return result;
        }
      }
    }

    v13 = 0;
  }

  return _dispatch_sync_f_slow(a1, a2, a3, a4, v5, v13);
}

void _dispatch_lane_barrier_sync_invoke_and_complete(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v9;
  if (a2 && a3 == _dispatch_call_block_and_release && *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  _dispatch_client_callout(a2, a3);
  ++*(StatusReg + 208);
  *(StatusReg + 160) = v9;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if (!*(a1 + 48) && *(a1 + 80) < 2u)
  {
    v6 = *(a1 + 56);
    while ((v6 & 0xFF80008800000001) == 0)
    {
      v7 = v6;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v7, (v6 & 0x7FFF7000000000) - 0x40020000000000, memory_order_release, memory_order_relaxed);
      v8 = v7 == v6;
      v6 = v7;
      if (v8)
      {
        return;
      }
    }
  }

  _dispatch_lane_barrier_complete(a1, 0, 0);
}

uint64_t _dispatch_async_and_wait_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 106))
  {
    v3 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v3 = 0;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 160);
  *(StatusReg + 160) = v2;
  *(StatusReg + 168) = a1 + 80;
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v5)
  {
    v7 = *(a1 + 64);
    if (v6 == _dispatch_call_block_and_release)
    {
      if (*(v5 + 16))
      {
        v8 = *(v5 + 16);
      }
    }
  }

  _dispatch_client_callout(v5, v6);
  *(StatusReg + 160) = v10;
  if (v3)
  {
    _dispatch_autorelease_pool_pop();
  }

  *(a1 + 56) = *(StatusReg + 160);
  *(a1 + 64) = 0;
  if (*(a1 + 48) == -4)
  {
    result = a1 + 96;
    if (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_release))
    {

      return _dispatch_thread_event_signal_slow();
    }
  }

  else
  {

    return _dispatch_event_loop_cancel_waiter(a1);
  }

  return result;
}

void __DISPATCH_WAIT_FOR_QUEUE__(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  while ((v4 & 0xFF80002000000002) == 0x2000000002)
  {
    v5 = v4 | 0x800000000;
    v6 = v4;
    atomic_compare_exchange_strong_explicit((a2 + 56), &v6, v4 | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    v7 = v6 == v4;
    v4 = v6;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v5 = v4;
LABEL_5:
  if ((*(a1 + 100) ^ v5) <= 3)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_sync called on queue already owned by current thread";
    qword_782C8 = v5;
    __break(1u);
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(a1 + 80) = *(StatusReg + 160);
  if ((v5 & 0xFF80001000000000) != 0)
  {
    *(a1 + 48) = -4;
    v9 = (a1 + 48);
LABEL_8:
    v10 = *(StatusReg + 200);
    v11 = (v10 >> 8) & 0xF;
    v12 = v10 >> 12;
    v13 = HIWORD(v10) & 0xF;
    if (v11 <= v12)
    {
      v11 = v12;
    }

    if (v11 > v13)
    {
      LOBYTE(v13) = v11;
    }

    *(a1 + 105) = v13;
    *(a1 + 104) = v13;
    *(a1 + 96) = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x2000000000) != 0)
  {
    *(a1 + 48) = a2;
    v14 = a2;
  }

  else
  {
    _dispatch_wait_compute_wlh(a2, a1);
    v14 = *(a1 + 48);
  }

  v9 = (a1 + 48);
  if (v14 == -4)
  {
    goto LABEL_8;
  }

LABEL_17:
  *(StatusReg + 968) = a1;
  v15 = *a2 + 72;
  v16 = __clz(__rbit32((*(a1 + 8) >> 8) & 0x3FFF));
  if (((*(a1 + 8) >> 8) & 0x3FFF) != 0)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  (*(*a2 + 72))(a2, a1, v17);
  if (*(a1 + 48) == -4)
  {
    if (atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_acquire) != 1)
    {
      _dispatch_thread_event_wait_slow((a1 + 96));
    }
  }

  else if ((*(a1 + 106) & 8) == 0)
  {
    _dispatch_event_loop_wait_for_ownership(a1);
  }

  *(StatusReg + 968) = 0;
  if (*v9 == -4)
  {
    v18 = *(a1 + 105);
    if (v18 > *(a1 + 104))
    {
      v19 = *(StatusReg + 200);
      if ((HIWORD(v19) & 0xF) < v18)
      {
        *(StatusReg + 200) = v19 & 0xFFF0FFFF | (v18 << 16);
      }
    }
  }
}

void _dispatch_sync_complete_recurse(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a3 >> 1) & 1;
  do
  {
    if (a1 == a2)
    {
      break;
    }

    if (v5)
    {
      (*(*a1 + 64))(a1, 0, 4);
    }

    else
    {
      _dispatch_lane_non_barrier_complete(a1, 0);
    }

    a1 = *(a1 + 24);
    LOBYTE(v5) = *(a1 + 80) == 1;
  }

  while (*(a1 + 24));
}

void _dispatch_sync_invoke_and_complete_recurse(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v8;
  if (a2 && a3 == _dispatch_call_block_and_release && *(a2 + 16))
  {
    v7 = *(a2 + 16);
  }

  _dispatch_client_callout(a2, a3);
  ++*(StatusReg + 208);
  *(StatusReg + 160) = v8;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_sync_complete_recurse(a1, 0, a4);
}

void _dispatch_wait_compute_wlh(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if ((v4 & 0x400000) != 0)
  {
    v5 = 0;
    *(a2 + 106) |= 0x40u;
    v6 = a1 + 100;
    atomic_compare_exchange_strong_explicit((a1 + 100), &v5, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      _dispatch_unfair_lock_lock_slow(v6);
    }
  }

  v7 = *(a1 + 24);
  v8 = *(v7 + 56);
  while (1)
  {
    if (v8 >> 55)
    {
      goto LABEL_18;
    }

    if ((~v8 & 0x2000000002) != 0)
    {
      break;
    }

    v9 = v8 | 0x800000000;
    v10 = v8;
    atomic_compare_exchange_strong_explicit((v7 + 56), &v10, v8 | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    v11 = v10 == v8;
    v8 = v10;
    if (v11)
    {
      if ((v9 & 0x1000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_18:
      *(a2 + 106) &= ~0x40u;
      *(a2 + 48) = -4;
      goto LABEL_19;
    }
  }

  v9 = v8;
  if ((v8 & 0x1000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v9 & 0x2000000000) != 0)
  {
    if (*(*v7 + 16) == 18)
    {
      *(a2 + 106) = *(a2 + 106) & 0xAF | 0x10;
    }

    else if ((*(a2 + 106) & 0x40) != 0 && (atomic_fetch_add_explicit((v7 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
    {
      dispatch_set_target_queue_cold_2();
    }

    *(a2 + 48) = v7;
  }

  else
  {
    _dispatch_wait_compute_wlh();
  }

LABEL_19:
  if ((v4 & 0x400000) != 0)
  {
    if ((*(a2 + 106) & 0x10) != 0)
    {
      atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = *(StatusReg + 24) & 0xFFFFFFFC;
    v14 = atomic_exchange_explicit((a1 + 100), 0, memory_order_release);
    if (v14 != v13)
    {
      _dispatch_lane_legacy_set_target_queue_cold_2(a1 + 100, v14, StatusReg);
    }
  }
}

void _dispatch_sync_invoke_and_complete(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)))
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v6;
  if (a2 && a3 == _dispatch_call_block_and_release && *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  _dispatch_client_callout(a2, a3);
  ++*(StatusReg + 208);
  *(StatusReg + 160) = v6;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_lane_non_barrier_complete(a1, 0);
}

void _dispatch_async_and_wait_recurse(unint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = a1;
  if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_37;
  }

  v11 = (a1 + 56);
  v12 = (a1 + 80);
  v13 = a1;
  v14 = a4;
LABEL_3:
  if ((v8 & 0x3000000000) != 0)
  {
    v15 = *(v13 + 24);
    if (v15 < &_dispatch_root_queues || v15 >= &qword_74A80)
    {
      v10 = v13;
LABEL_37:
      *a2 &= ~0x80uLL;
      *(a2 + 56) = v10;
      v13 = v10;
      goto LABEL_33;
    }
  }

  if ((v14 & 2) != 0)
  {
    v17 = v9 << 41;
    while (v8 == (v8 & 0x3000000000) - v17 + 0x20000000000000)
    {
      v18 = v8;
      atomic_compare_exchange_strong_explicit(v11, &v18, v8 & 0x3000000000 | a3 & 0xFFFFFFFC | 0x60000000000002, memory_order_acquire, memory_order_acquire);
      v19 = v18 == v8;
      v8 = v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }
  }

  else if (!*(v13 + 48))
  {
    while ((v8 & 0xFFC0018000000000) == 0)
    {
      v24 = v8;
      atomic_compare_exchange_strong_explicit(v11, &v24, v8 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
      v19 = v24 == v8;
      v8 = v24;
      if (v19)
      {
LABEL_13:
        v20 = *(v13 + 84) & 0xFFF;
        if (v20)
        {
          v21 = v20 >= 0x100 ? 1 << (BYTE1(v20) + 7) : 0;
          v22 = v21 | *(v13 + 84);
          if (v22 > (*(a2 + 8) & 0xFFFFFFuLL))
          {
            *(a2 + 8) = v22 | 0x10000000;
          }
        }

        if ((*(a2 + 106) & 3) == 0)
        {
          *(a2 + 106) |= HIWORD(*v12) & 3;
        }

        v10 = *(v13 + 24);
        if (!*(v10 + 24))
        {

          _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a2, v13, a4);
          return;
        }

        v12 = (v10 + 80);
        v23 = v14 & 0xFFFFFFFFFFFFFFFDLL;
        v14 |= 2uLL;
        if (*(v10 + 80) != 1)
        {
          v14 = v23;
        }

        *a2 = v14;
        v11 = (v10 + 56);
        v8 = *(v10 + 56);
        v9 = *(v10 + 80);
        v13 = v10;
        if ((v9 & 0x1000000) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      }
    }
  }

LABEL_33:

  _dispatch_async_and_wait_f_slow(a1, a4, a2, v13);
}

void _dispatch_async_and_wait_f_slow(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  __DISPATCH_WAIT_FOR_QUEUE__(a3, a4);
  v7 = *(a3 + 56);
  if (*(a3 + 64))
  {

    _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a3, v7, a2);
  }

  else
  {
    v8 = *(a3 + 56);

    _dispatch_sync_complete_recurse(a1, v8, a2);
  }
}

void _dispatch_async_and_wait_invoke_and_complete_recurse(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(*a3 + 16) != 18 && (*(a3 + 56) & 0x2000000000) == 0)
  {
    a3 = -4;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 216);
  *(StatusReg + 216) = a3;
  if (*(a2 + 106))
  {
    v7 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v25 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v25;
  v10 = *(StatusReg + 32);
  v11 = v10 & 0xFFFFFF;
  v12 = (v10 & 0xFFFFFFuLL) >= (v8 & 0xFFFFFFuLL) || (v10 & 0xFFFFFF) == 0;
  v22 = v12;
  if (v12)
  {
    add_explicit = 0;
  }

  else
  {
    add_explicit = v10 & 0xFFFFFF;
  }

  v14 = v8 & 0xFFFFFFFF02FFFFFFLL;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8 & 0xFFFFFFFF02FFFFFFLL;
  }

  if ((v10 & 0x1000000) != 0)
  {
    if (v15)
    {
LABEL_48:
      v9 = _dispatch_set_priority_and_voucher_slow(v14, v9, 0);
      goto LABEL_20;
    }

    v15 = v10 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v15 == (v10 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_16;
  }

  v14 = v15;
  if (v15)
  {
    goto LABEL_48;
  }

LABEL_16:
  if (v9 == -1)
  {
    goto LABEL_20;
  }

  if (*(StatusReg + 224) != v9)
  {
    v14 = 0;
    goto LABEL_48;
  }

  if (v9 && atomic_fetch_add_explicit((v9 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_78298 = "API MISUSE: Voucher resurrection";
    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
LABEL_20:
    v17 = *(a2 + 64);
    v16 = *(a2 + 72);
    if (v16)
    {
      v18 = *(a2 + 64);
      if (v17 == _dispatch_call_block_and_release)
      {
        if (*(v16 + 16))
        {
          v19 = *(v16 + 16);
        }
      }
    }

    _dispatch_client_callout(v16, v17);
    ++*(StatusReg + 208);
    v20 = *(StatusReg + 32);
    if ((v20 & 0x1000000) != 0)
    {
      if (!v22)
      {
        goto LABEL_50;
      }

      v11 = v20 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else
    {
      if (add_explicit == (v20 & 0xFFFFFFFF76FFFFFFLL))
      {
        goto LABEL_26;
      }

      v11 = add_explicit;
    }

    if (v11)
    {
      goto LABEL_50;
    }

LABEL_26:
    if (v9 == -1)
    {
      goto LABEL_31;
    }

    if (*(StatusReg + 224) != v9)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_31;
    }

    add_explicit = atomic_fetch_add_explicit((v9 + 12), 0xFFFFFFFF, memory_order_relaxed);
LABEL_30:
    if (add_explicit > 1)
    {
      goto LABEL_31;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    v21 = *(a2 + 32);
  }

  v11 = 0;
LABEL_50:
  _dispatch_set_priority_and_voucher_slow(v11, v9, 6);
LABEL_31:
  *(StatusReg + 160) = v25;
  if (v7)
  {
    _dispatch_autorelease_pool_pop();
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  *(StatusReg + 216) = v23;
  _dispatch_sync_complete_recurse(a1, 0, a4);
}

void _dispatch_queue_specific_head_dispose(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_9;
  }

  v2[4] = v7;
  v4 = a1[2];
  v7[0] = v2;
  v7[1] = v4;
  a1[1] = 0;
  a1[2] = v3;
  do
  {
    v5 = v2[3];
    if (v2[2])
    {
      v6 = a1[2];
      v2[3] = 0;
      v2[4] = v6;
      *v6 = v2;
      a1[2] = v2 + 3;
    }

    else
    {
      free(v2);
    }

    v2 = v5;
  }

  while (v5);
  if (*v3)
  {
    _dispatch_barrier_async_detached_f(&off_74600, a1, _dispatch_queue_specific_head_dispose_slow);
  }

  else
  {
LABEL_9:
    free(a1);
  }
}

void _dispatch_queue_specific_head_dispose_slow(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    do
    {
      v3 = v2[2];
      v4 = v2[3];
      v5 = v2[1];
      if (v3)
      {
        v6 = v3 != _dispatch_call_block_and_release || v5 == 0;
        v7 = v2[2];
        if (!v6)
        {
          if (*(v5 + 16))
          {
            v8 = *(v5 + 16);
          }
        }
      }

      _dispatch_client_callout(v5, v3);
      free(v2);
      v2 = v4;
    }

    while (v4);
  }

  free(a1);
}

uint64_t _dispatch_non_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2)
{
LABEL_1:
  v2 = *(a1 + 56);
  if ((BYTE4(v2) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(v2) & 7;
  }

  v3 = *a2;
  if ((*a2 & 0x80) != 0)
  {
    v4 = *(a1 + 84) & 0xFFF;
    if (v4)
    {
      v5 = v4 >= 0x100 ? 1 << (BYTE1(v4) + 7) : 0;
      v6 = v5 | *(a1 + 84);
      if (v6 > (*(a2 + 8) & 0xFFFFFFuLL))
      {
        *(a2 + 8) = v6 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) |= HIWORD(*(a1 + 80)) & 3;
    }

    if ((v2 & 0x3000000000) == 0)
    {
      goto LABEL_15;
    }

    *(a2 + 56) = a1;
    return _dispatch_waiter_wake_wlh_anon(a2);
  }

  if ((v2 & 0x3000000000) != 0)
  {
    return _dispatch_waiter_wake_wlh_anon(a2);
  }

LABEL_15:
  a1 = *(a1 + 24);
  if (*(a1 + 80) == 1)
  {
    *a2 = v3 | 2;
  }

  else
  {
    *a2 = v3 & 0xFFFFFFFFFFFFFFFDLL;
    if (!*(a1 + 48))
    {
      v7 = *(a1 + 56);
      while ((v7 & 0xFFC0018000000000) == 0)
      {
        v8 = v7;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v8, v7 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v9 = v8 == v7;
        v7 = v8;
        if (v9)
        {
          goto LABEL_1;
        }
      }
    }
  }

  return (*(*a1 + 72))();
}

uint64_t _dispatch_waiter_wake_wlh_anon(uint64_t a1)
{
  if (*(a1 + 105) > *(a1 + 104))
  {
    v2 = *(a1 + 100);
    _pthread_workqueue_override_start_direct();
  }

  result = a1 + 96;
  if (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_release))
  {

    return _dispatch_thread_event_signal_slow();
  }

  return result;
}

uint64_t _dispatch_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  if (*(a2 + 48) == -4 && (BYTE4(a4) & 7u) > *(a2 + 105))
  {
    *(a2 + 105) = BYTE4(a4) & 7;
  }

  if ((a4 & 0x2000000000) != 0)
  {
    v8 = a1;
    if ((a3 & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (a5)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (*(a1 + 8) == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }

      v8 = a1;
      if (atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) > 1)
      {
        goto LABEL_22;
      }

      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
    }

    if (a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((~a4 & 0x1800000000) == 0)
    {
      v5 = HIDWORD(a4) & 7;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = *(StatusReg + 200);
      if ((HIWORD(v7) & 0xF) < v5)
      {
        *(StatusReg + 200) = v7 & 0xFFF0FFFF | (v5 << 16);
      }
    }

    v8 = -4;
    if ((a3 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) > 2)
  {
    goto LABEL_22;
  }

  qword_78298 = "API MISUSE: Over-release of an object";
  __break(1u);
LABEL_20:
  v8 = a1;
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    v8 = a1;
    if (add_explicit <= 1)
    {
      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
      goto LABEL_39;
    }
  }

LABEL_22:
  if ((a4 & 0x3000000000) == 0)
  {
    v8 = *(a1 + 24);
    add_explicit = *a2;
    if ((*a2 & 0x80) != 0)
    {
      v11 = *(a1 + 84) & 0xFFF;
      if (v11)
      {
        v12 = v11 >= 0x100 ? 1 << (BYTE1(v11) + 7) : 0;
        v13 = v12 | *(a1 + 84);
        if (v13 > (*(a2 + 8) & 0xFFFFFFuLL))
        {
          *(a2 + 8) = v13 | 0x10000000;
        }
      }

      if ((*(a2 + 106) & 3) == 0)
      {
        *(a2 + 106) |= HIWORD(*(a1 + 80)) & 3;
      }
    }

    if (*(v8 + 80) == 1)
    {
      *a2 = add_explicit | 2;
LABEL_37:
      *(a2 + 106) &= ~0x80u;
      return (*(*v8 + 72))(v8);
    }

LABEL_39:
    *a2 = add_explicit & 0xFFFFFFFFFFFFFFFDLL;
    if (!*(v8 + 48))
    {
      v14 = *(v8 + 56);
      while ((v14 & 0xFFC0018000000000) == 0)
      {
        v15 = v14;
        atomic_compare_exchange_strong_explicit((v8 + 56), &v15, v14 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        v16 = v15 == v14;
        v14 = v15;
        if (v16)
        {
          return _dispatch_non_barrier_waiter_redirect_or_wake(v8, a2);
        }
      }
    }

    goto LABEL_37;
  }

  if ((*a2 & 0x80) != 0)
  {
    *(a2 + 56) = a1;
  }

  return _dispatch_waiter_wake(a2, v8, a4, a5);
}

uint64_t _dispatch_waiter_wake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  if (((a3 & 0x2000000000) == 0 || *(a1 + 106) < 0) && (a4 & 0x2000000000) == 0 && v5 == -4 || (result = _dispatch_event_loop_wake_owner(a1, a2, a3, a4), v5 == -4))
  {

    return _dispatch_waiter_wake_wlh_anon(a1);
  }

  return result;
}

uint64_t _dispatch_lane_concurrent_drain(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v4 = *(a1 + 24);
  v5 = *a4;
  v53 = (a1 + 48);
  if (!*(a1 + 48))
  {
    return 0;
  }

  v6 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v60 = *(StatusReg + 160);
  *(StatusReg + 160) = a1;
  *(StatusReg + 168) = &v60;
  if ((v5 & 0x40000000000000) != 0)
  {
    v9 = 0x40000000000000;
  }

  else
  {
    v9 = v5 & 0x3FFE0000000000;
  }

  if ((a3 & 0x10) != 0 && *(StatusReg + 40))
  {
    _dispatch_return_to_kernel();
  }

  v10 = *(a1 + 104);
  if (!v10)
  {
    v10 = _dispatch_wait_for_enqueuer((a1 + 104));
  }

  v11 = *(a1 + 56);
  if (!(v11 >> 55))
  {
    v55 = (v6 >> 21) & 1;
    v58 = v6;
    v57 = v4;
    while (v4 == *(a1 + 24))
    {
      v12 = *v10;
      if (*v10 >= 0x1000uLL)
      {
        v13 = *v10;
        if ((*(v12 + 16) & 0xF0) == 0x10 && (*(v10 + 80) & 0x80000) != 0)
        {
LABEL_18:
          if (v9 != 0x40000000000000)
          {
            v14 = (*(a1 + 80) << 41) - 0x10000000000;
            v15 = v11;
            do
            {
              if ((v11 & 0x10000000000) != 0)
              {
                v16 = 0;
              }

              else
              {
                v16 = v14;
              }

              v17 = v16 + v11 - v9;
              if (!(v17 >> 53))
              {
                v17 += 0x40010000000000;
              }

              atomic_compare_exchange_strong_explicit((a1 + 56), &v15, v17 & 0xFFFFFF7FFFFFFFFFLL, memory_order_acquire, memory_order_acquire);
              v19 = v15 == v11;
              v11 = v15;
            }

            while (!v19);
            if ((v17 & 0x40000000000000) == 0)
            {
              goto LABEL_156;
            }

            v12 = *v10;
          }

          if (v12 <= 0xFFF && (v6 & 0x80000) == 0 && (v12 & 1) != 0)
          {
            *(a2 + 8) = v10;
            if ((v6 & 8) == 0)
            {
              goto LABEL_169;
            }

            qword_78298 = "BUG IN LIBDISPATCH: Deferred continuation on source, mach channel or mgr";
            __break(1u);
LABEL_159:
            qword_78298 = "API MISUSE: Voucher over-release";
            __break(1u);
            return 0;
          }

          v18 = *(v10 + 16);
          *(a1 + 104) = v18;
          if (!v18)
          {
            v42 = *v53;
            while (v10 == (v42 & 0xFFFFFFFFFFFFFFF8))
            {
              v43 = v42;
              atomic_compare_exchange_strong_explicit(v53, &v43, 0, memory_order_release, memory_order_relaxed);
              v9 = 0x40000000000000;
              v19 = v43 == v42;
              v42 = v43;
              if (v19)
              {
                goto LABEL_42;
              }
            }

            v18 = *(v10 + 16);
            if (!v18)
            {
              v18 = _dispatch_wait_for_enqueuer((v10 + 16));
            }

            *(a1 + 104) = v18;
          }

          v9 = 0x40000000000000;
          goto LABEL_42;
        }
      }

      else if ((v12 & 2) != 0)
      {
        goto LABEL_18;
      }

      if (v9 == 0x40000000000000)
      {
        atomic_fetch_xor_explicit((a1 + 56), 0x40000000000000uLL, memory_order_release);
        v9 = *(a1 + 80) << 41;
      }

      else if (!v9)
      {
        if (v12 > 0xFFF || (v12 & 0x81) == 0)
        {
          while ((v11 & 0xFFE0018000000000) == 0)
          {
            v49 = v11;
            atomic_compare_exchange_strong_explicit((a1 + 56), &v49, v11 + 0x20000000000, memory_order_acquire, memory_order_acquire);
            v19 = v49 == v11;
            v11 = v49;
            if (v19)
            {
              v9 = 0x20000000000;
              goto LABEL_35;
            }
          }

LABEL_156:
          *a4 &= 0x4000000001uLL;
          *(StatusReg + 160) = v60;
          return -1;
        }

        v9 = 0x20000000000;
        atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
      }

LABEL_35:
      v18 = *(v10 + 16);
      *(a1 + 104) = v18;
      if (!v18)
      {
        v40 = *v53;
        while (v10 == (v40 & 0xFFFFFFFFFFFFFFF8))
        {
          v41 = v40;
          atomic_compare_exchange_strong_explicit(v53, &v41, 0, memory_order_release, memory_order_relaxed);
          v19 = v41 == v40;
          v40 = v41;
          if (v19)
          {
            goto LABEL_36;
          }
        }

        v18 = *(v10 + 16);
        if (!v18)
        {
          v18 = _dispatch_wait_for_enqueuer((v10 + 16));
        }

        *(a1 + 104) = v18;
      }

LABEL_36:
      if (*v10 <= 0xFFFuLL)
      {
        v19 = (*v10 & 0x81) == 0;
        *v10;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v9 -= 0x20000000000;
        _dispatch_non_barrier_waiter_redirect_or_wake(a1, v10);
        goto LABEL_53;
      }

      if ((v6 & 0x20000) != 0)
      {
        v9 -= 0x20000000000;
        _dispatch_continuation_redirect_push(a1, v10, *(a1 + 60) & 7);
        goto LABEL_53;
      }

LABEL_42:
      v20 = *(StatusReg + 192);
      if (v20)
      {
        (*v20)(a1);
      }

      v21 = *v10;
      if (*v10 < 0x1000uLL)
      {
        if ((v6 & 0x1000000) != 0)
        {
          v59 = _dispatch_autorelease_pool_push();
          v21 = *v10;
        }

        else
        {
          v59 = 0;
        }

        v23 = *(v10 + 24);
        if ((v21 & 4) != 0)
        {
          *(v10 + 24) = -1;
        }

        if (v23 != -1)
        {
          if (v23)
          {
            v24 = *(v23 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        v25 = *(v10 + 8);
        if (v25 == -1)
        {
          v28 = 0;
        }

        else
        {
          v26 = *(StatusReg + 200);
          if (((v26 >> 8) & 0xF) != 0)
          {
            v27 = 1 << ((BYTE1(v26) & 0xFu) + 7);
          }

          else
          {
            v27 = 0;
          }

          v28 = v27 | *(StatusReg + 200);
          if ((v25 & 0xFFFFFF) != 0)
          {
            if ((v25 & 0xFFFFFFuLL) >= (v27 & 0xFFFFFF00) && ((v26 & 0x44000000) != 0 || (*(v10 + 8) & 0x10000000) != 0))
            {
              v28 = v25 & 0xFFFFFF;
            }
          }

          else if (v26 >> 12)
          {
            v28 = (256 << ((v26 >> 12) - 1)) | 0xFF;
          }
        }

        result = v28 & 0x7FFFFFFF02FFFFFFLL;
        v31 = *(StatusReg + 32);
        if ((v31 & 0x1000000) != 0)
        {
          if (!result)
          {
            result = v31 & 0xFFFFFFFFFEFFFFFFLL;
            goto LABEL_127;
          }

LABEL_139:
          result = _dispatch_set_priority_and_voucher_slow(result, v23, v21 & 4 | 2);
          if ((v21 & 0x200) == 0)
          {
LABEL_92:
            result = 0;
          }
        }

        else
        {
          if (result == (v31 & 0xFFFFFFFF76FFFFFFLL))
          {
            goto LABEL_86;
          }

LABEL_127:
          if (result)
          {
            goto LABEL_139;
          }

LABEL_86:
          if (v23 != -1)
          {
            if (*(StatusReg + 224) != v23)
            {
              result = 0;
              goto LABEL_139;
            }

            if ((v21 & 4) != 0)
            {
              if (v23)
              {
                result = 0;
                if (atomic_fetch_add_explicit((v23 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
                {
                  goto LABEL_159;
                }
              }
            }
          }

          if ((v21 & 0x200) == 0)
          {
            goto LABEL_92;
          }
        }

        if ((v21 & 4) != 0)
        {
          v33 = *(StatusReg + 176);
          if (v33)
          {
            v34 = *(v33 + 8) + 1;
          }

          else
          {
            v34 = 1;
          }

          v32 = v10;
          if (v34 <= _dispatch_continuation_cache_limit)
          {
            v32 = 0;
            *(v10 + 16) = v33;
            *(v10 + 8) = v34;
            *(StatusReg + 176) = v10;
          }
        }

        else
        {
          v32 = 0;
        }

        if ((v21 & 8) != 0)
        {
          v44 = *(**(v10 + 48) + 16);
          if (v44 != 514)
          {
            qword_78298 = "BUG IN LIBDISPATCH: Unexpected object type";
            qword_782C8 = v44;
            __break(1u);
            return result;
          }

          v46 = *(v10 + 32);
          v45 = *(v10 + 40);
          if (v45)
          {
            v47 = *(v10 + 32);
            if (v46 == _dispatch_call_block_and_release)
            {
              if (*(v45 + 16))
              {
                v48 = *(v45 + 16);
              }
            }
          }

          group = *(v10 + 48);
          _dispatch_client_callout(v45, v46);
          v6 = v58;
          v39 = v59;
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          dispatch_group_leave(group);
          if (v32)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v35 = *(v10 + 32);
          v36 = *(v10 + 40);
          if (v36)
          {
            v37 = *(v10 + 32);
            if (v35 == _dispatch_call_block_and_release)
            {
              if (*(v36 + 16))
              {
                v38 = *(v36 + 16);
              }
            }
          }

          _dispatch_client_callout(v36, v35);
          v6 = v58;
          v39 = v59;
          if (!MEMORY[0xFFFFFC100])
          {
            if (!v32)
            {
              goto LABEL_107;
            }

LABEL_148:
            _dispatch_continuation_free_to_cache_limit(v32);
            if (!v39)
            {
LABEL_109:
              ++*(StatusReg + 208);
              v4 = v57;
              if (v20)
              {
                goto LABEL_52;
              }

              goto LABEL_53;
            }

LABEL_108:
            _dispatch_autorelease_pool_pop();
            goto LABEL_109;
          }

          kdebug_trace();
          if (v32)
          {
            goto LABEL_148;
          }
        }

LABEL_107:
        if (!v39)
        {
          goto LABEL_109;
        }

        goto LABEL_108;
      }

      v22 = *v10;
      if (*(v21 + 16) == 1)
      {
        (*(v21 + 24))(v10, 0, v55);
      }

      else
      {
        (*(v21 + 48))(v10, a2, v6 & 0xFFFF0000);
      }

      if (v20)
      {
LABEL_52:
        v20[1](a1);
      }

LABEL_53:
      v10 = v18;
      if (!v18)
      {
        if (!*v53)
        {
          v10 = 0;
          break;
        }

        v10 = *(a1 + 104);
        if (!v10)
        {
          v10 = _dispatch_wait_for_enqueuer((a1 + 104));
        }
      }

      if (*(StatusReg + 40))
      {
        _dispatch_return_to_kernel();
      }

      if (*(a1 + 80) != 1 && ((v6 & 0x4000000) != 0 || (*(StatusReg + 960) & 1) == 0) && ((v6 & 0x100000) == 0 || (*(*(StatusReg + 216) + 60) & 7u) <= *(*(StatusReg + 216) + 100)))
      {
        v11 = *(a1 + 56);
        if (!(v11 >> 55))
        {
          continue;
        }
      }

      break;
    }
  }

  if (v9 == 0x40000000000000)
  {
    v9 = (*(a1 + 80) << 41) + 0x40000000000000;
  }

  if (!v10)
  {
    result = 0;
    *a4 = *a4 & 0x4000000001 | v9;
    *(StatusReg + 160) = v60;
    return result;
  }

  v50 = *(a1 + 80);
  if (v50 >= 2)
  {
    v51 = *v10;
    if (*v10 < 0x1000uLL)
    {
      if ((v51 & 2) == 0)
      {
        goto LABEL_168;
      }
    }

    else if ((*(v51 + 16) & 0xF0) != 0x10 || (*(v10 + 80) & 0x80000) == 0)
    {
      goto LABEL_168;
    }

    v9 = v9 - (v50 << 41) + 0x10000000000;
  }

LABEL_168:
  *a4 = *a4 & 0x4000000001 | v9;
LABEL_169:
  *(StatusReg + 160) = v60;
  return *(a1 + 24);
}

void _dispatch_workloop_bound_thread_init_once()
{
  v2 = 0;
  v1 = 4;
  v0 = sysctlbyname("kern.kern_event.thread_bound_kqwl_support_enabled", &v2, &v1, 0, 0);
  if (v0)
  {
    _dispatch_bug(4277, v0);
  }

  if (v2)
  {
    _dispatch_thread_bound_kqwl_enabled = 1;
  }
}

void _dispatch_workloop_activate_simulator_fallback(uint64_t a1, __int128 *a2)
{
  v3 = _dispatch_pthread_root_queue_create("com.apple.libdispatch.workloop_fallback", 0, a2, 0, 0);
  *(a1 + 24) = v3;
  if (*(v3 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_release(v3);
  v4 = *(a1 + 56);
  v5 = v4;
  do
  {
    atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v4 & 0xFFFFFFCFFFFFFFFFLL | 0x1000000000, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
  }

  while (!v6);
}

void _dispatch_queue_wakeup_with_override_slow(uint64_t a1, unint64_t a2, char a3)
{
  v5 = HIDWORD(a2) & 7;
  v6 = *(a1 + 24);
  if ((a2 & 0x1000000000) != 0)
  {
    if (v6 < &_dispatch_root_queues || v6 >= &qword_74A80)
    {
      goto LABEL_41;
    }

    if (a2 >= 4)
    {
      _pthread_workqueue_override_start_direct_check_owner();
      goto LABEL_41;
    }

    goto LABEL_16;
  }

  if ((*(a1 + 80) & 0x400000) == 0)
  {
LABEL_16:
    v11 = 1;
    goto LABEL_17;
  }

  v7 = *(a1 + 100);
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  do
  {
    v9 = v7;
    v10 = v7 | 2;
    if (v7 < 4)
    {
      v10 = v8;
    }

    atomic_compare_exchange_strong_explicit((a1 + 100), &v7, v10, memory_order_acquire, memory_order_acquire);
  }

  while (v7 != v9);
  if (v9 > 3)
  {
    _pthread_workqueue_override_start_direct_check_owner();
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    goto LABEL_41;
  }

  v6 = *(a1 + 24);
  if (MEMORY[0xFFFFFC100])
  {
    v20 = HIDWORD(a2) & 7;
    kdebug_trace();
    v5 = v20;
  }

  v11 = 0;
LABEL_17:
  v13 = (a1 + 100);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v15 = v5;
    if (((*v6)[2] & 0x10000) != 0)
    {
      if (v5 > ((*(v6 + 21) >> 8) & 0xFu))
      {
        _dispatch_root_queue_push_override_stealer(v6, a1, v5);
      }
    }

    else if ((*v6)[2] == 18)
    {
      _dispatch_workloop_push_stealer(v6, a1, v5);
    }

    else if ((*(v6 + 15) & 7) == 0 || (*(v6 + 15) & 7u) < v5)
    {
      ((*v6)[8])(v6, v5, 0);
    }

    if (v11)
    {
      break;
    }

    do
    {
      for (i = *v13; ; i = v19)
      {
        while ((i & 2) == 0)
        {
          v18 = i;
          atomic_compare_exchange_strong_explicit(v13, &v18, 0, memory_order_release, memory_order_relaxed);
          if (v18 == i)
          {
            if (i)
            {
              _dispatch_unfair_lock_unlock_slow(a1 + 100, i);
            }

            goto LABEL_41;
          }

          i = v18;
        }

        v19 = i;
        atomic_compare_exchange_strong_explicit(v13, &v19, i & 0xFFFFFFFD, memory_order_release, memory_order_relaxed);
        if (v19 == i)
        {
          break;
        }
      }

      if ((i & 0xFFFFFFFD) == 0)
      {
        goto LABEL_41;
      }

      __dmb(9u);
      if ((*(StatusReg + 200) & 0xF0000) == 0)
      {
        *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0x10000;
      }

      v5 = *(a1 + 60) & 7;
    }

    while ((*(a1 + 60) & 7u) <= v15);
  }

LABEL_41:
  if (a3)
  {

    _os_object_release_internal_n(a1, 2);
  }
}

void _dispatch_root_queue_push_override_stealer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 7 <= 0xFFFFFFF9)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_782C8 = a3;
    __break(1u);
LABEL_15:
    v10 = _dispatch_continuation_alloc_from_heap();
    goto LABEL_10;
  }

  v3 = a2;
  v4 = a1;
  v8 = *(a1 + 84);
  if (v8 < 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = (v8 >> 25) & 4;
  }

  if ((v9 & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v9 > 3);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 176);
  if (!v10)
  {
    goto LABEL_15;
  }

  *(StatusReg + 176) = v10[2];
LABEL_10:
  *v10 = &unk_70DA8;
  if (*(v3 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v3 + 8), 2u, memory_order_relaxed) > 0)
  {
    v11 = &(&_dispatch_root_queues)[16 * (3 * a3 + v6 - 3)];
    v10[6] = v3;
    v10[7] = v4;
    v10[4] = 0;
    v10[5] = v10;
    v10[1] = -1;
    v10[3] = -1;
    v10[2] = 0;
    *(StatusReg + 976) = v11 + 6;
    v12 = atomic_exchange_explicit((v11 + 6), v10, memory_order_release);
    if (v12)
    {
      *(v12 + 16) = v10;
      *(StatusReg + 976) = 0;
    }

    else
    {
      v11[13] = v10;
      *(StatusReg + 976) = 0;

      _dispatch_root_queue_poke_and_wakeup(&(&_dispatch_root_queues)[16 * (3 * a3 + v6 - 3)], 1, 0);
    }
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void _dispatch_workloop_push_stealer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 176);
  if (v7)
  {
    *(StatusReg + 176) = v7[2];
  }

  else
  {
    v7 = _dispatch_continuation_alloc_from_heap();
  }

  *v7 = &unk_70D70;
  if (*(a2 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a2 + 8), 2u, memory_order_relaxed) > 0)
  {
    v7[6] = a2;
    v7[7] = 0;
    v7[4] = 0;
    v7[5] = v7;
    v7[1] = -1;
    v7[3] = -1;

    _dispatch_workloop_push(a1, v7, a3);
  }

  else
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }
}

void _dispatch_lane_drain_non_barriers(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  atomic_fetch_and_explicit((a1 + 56), 0xFFBFFFFFFFFFFFFFLL, memory_order_release);
  v6 = (a1 + 48);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    if (v5)
    {
      --v5;
      goto LABEL_4;
    }

    if (*a2 > 0xFFFuLL || (*a2 & 0x81) == 0)
    {
      break;
    }

    v5 = 0;
    atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
LABEL_4:
    v8 = *(a2 + 16);
    *(a1 + 104) = v8;
    if (!v8)
    {
      v26 = *v6;
      while (a2 == (v26 & 0xFFFFFFFFFFFFFFF8))
      {
        v27 = v26;
        atomic_compare_exchange_strong_explicit(v6, &v27, 0, memory_order_release, memory_order_relaxed);
        v9 = v27 == v26;
        v26 = v27;
        if (v9)
        {
          goto LABEL_5;
        }
      }

      v34 = a2;
      v8 = *(a2 + 16);
      if (!v8)
      {
        v8 = _dispatch_wait_for_enqueuer((a2 + 16));
      }

      *(a1 + 104) = v8;
      a2 = v34;
    }

LABEL_5:
    v9 = *a2 > 0xFFFuLL || (*a2 & 0x81) == 0;
    if (v9)
    {
      _dispatch_continuation_redirect_push(a1, a2, *(a1 + 60) & 7);
    }

    else
    {
      _dispatch_non_barrier_waiter_redirect_or_wake(a1, a2);
    }

    a2 = v8;
    if (!v8)
    {
      goto LABEL_17;
    }

LABEL_12:
    v10 = *a2;
    if (*a2 <= 0xFFFuLL)
    {
      if ((v10 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v10 + 16) & 0xF0) == 0x10 && (*(a2 + 80) & 0x80000) != 0)
    {
      goto LABEL_17;
    }
  }

  v24 = *(a1 + 56);
  while ((v24 & 0xFFE0018000000000) == 0)
  {
    v25 = v24;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v25, v24 + 0x20000000000, memory_order_acquire, memory_order_acquire);
    v9 = v25 == v24;
    v24 = v25;
    if (v9)
    {
      v5 = 0;
      goto LABEL_4;
    }
  }

  v5 = 0;
LABEL_17:
  v11 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v12 = v5 << 41;
  if (a2)
  {
    v13 = *(a1 + 80);
    if (v13 >= 2)
    {
      v28 = *a2;
      if (*a2 < 0x1000uLL)
      {
        if ((v28 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((*(v28 + 16) & 0xF0) != 0x10 || (*(a2 + 80) & 0x80000) == 0)
      {
        goto LABEL_19;
      }

      v12 = (v12 | 0x10000000000) - (v13 << 41);
    }
  }

LABEL_19:
  v14 = *(a1 + 56);
  do
  {
    v15 = v14 - v12;
    v16 = (v14 - v12) & 0xFFFFFF7700000001;
    if (a2)
    {
      if ((v15 & 0x10000000000) != 0)
      {
        v18 = v16 + 0x40018000000000;
      }

      else
      {
        v18 = v16 + (*(a1 + 80) << 41) + 0x40008000000000;
      }

      v19 = v18 & 0x3FFE0000000000;
      v20 = 0x8000000000;
      if ((v14 & 0x8000000000) != 0)
      {
        v20 = 0x8000000001;
      }

      v21 = v16 | v20;
      v22 = v18 & 0xFFE0017FFFFFFFFFLL | v11;
      if (v19 == 0x20000000000000)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21;
      }
    }

    else if ((v14 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      a2 = *(a1 + 104);
      if (a2)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v17 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v17, v16, memory_order_relaxed, memory_order_relaxed);
    v9 = v17 == v14;
    v14 = v17;
  }

  while (!v9);
  if ((~v15 & 0x1800000000) == 0)
  {
    v29 = HIDWORD(v15) & 7;
    v30 = *(StatusReg + 200);
    if ((HIWORD(v30) & 0xF) < v29)
    {
      *(StatusReg + 200) = v30 & 0xFFF0FFFF | (v29 << 16);
    }
  }

  if (((v16 ^ v15) & 0x40000000000000) != 0)
  {

    _dispatch_lane_barrier_complete(a1, 0, a3);
  }

  else if ((v16 ^ v15))
  {
    if ((a3 & 1) != 0 || *(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) > 0)
    {
      v31 = *(a1 + 24);
    }

    else
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      v33 = *(a1 + 32);
    }

    v32 = *(**(a1 + 24) + 72);

    v32();
  }

  else if (a3)
  {

    _os_object_release_internal_n(a1, 2);
  }
}

uint64_t _dispatch_channel_invoke_cancel_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 116) & 8) != 0 || (*(a1 + 80) & 0x10000000) == 0)
  {
    return 1;
  }

  if (*(a2 + 35))
  {
    v6 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a3 + 24))(a1, *(a1 + 32));
  if (v6)
  {
    _dispatch_autorelease_pool_pop();
  }

  if (v7)
  {
    *(a1 + 116) |= 8u;
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
    {
      _dispatch_runloop_root_queue_perform_4CF_cold_2();
    }

    return 1;
  }

  result = 0;
  *(a2 + 40) = -1;
  return result;
}

uint64_t _dispatch_mgr_sched_qos2prio(int a1)
{
  if (a1 == 5)
  {
    return 4;
  }

  HIDWORD(v3) = a1 - 9;
  LODWORD(v3) = a1 - 9;
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return dword_4A910[v2];
  }
}

void _dispatch_mgr_priority_apply()
{
  v1 = 0;
  do
  {
    v1.sched_priority = _dispatch_mgr_sched;
    if (_dispatch_mgr_sched > dword_78740)
    {
      v0 = pthread_setschedparam(qword_78748, dword_78744, &v1);
      if (v0)
      {
        _dispatch_bug(6296, v0);
      }
    }
  }

  while (_dispatch_mgr_sched > v1.sched_priority);
}

void _dispatch_mgr_queue_drain()
{
  memset(v7, 0, sizeof(v7));
  v6 = 0x40020000000000;
  if (qword_74130)
  {
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_mgr_queue_drain_cold_1();
    }

    v0 = mach_absolute_time();
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((~*(StatusReg + 200) & 0xF0000) != 0)
    {
      *(StatusReg + 200) = *(StatusReg + 200) & 0xFFF0FFFFLL | 0xF0000;
    }

    if (_dispatch_lane_serial_drain(&_dispatch_mgr_q, v7, 0x40000, &v6))
    {
      _dispatch_mgr_queue_drain_cold_2();
    }

    v2 = *(StatusReg + 224);
    if (v2)
    {
      *(StatusReg + 224) = 0;
      if (*(v2 + 32))
      {
        _dispatch_set_priority_and_mach_voucher_slow(0, 0);
      }

      add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 1)
      {
        _dispatch_mgr_queue_drain_cold_3(add_explicit, v2);
      }
    }

    if ((*(StatusReg + 200) & 0xF0000) != 0)
    {
      *(StatusReg + 200) &= 0xFFF0FFFFuLL;
    }

    _dispatch_queue_merge_stats(v0, 1);
  }

  if ((_dispatch_kevent_workqueue_enabled & 1) == 0)
  {
    v4 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = *(v4 + 176);
    if (v5)
    {
      *(v4 + 176) = 0;
      _dispatch_cache_cleanup(v5);
    }
  }
}