void _dispatch_mach_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 80);
  if ((*(a1 + 116) & 1) == 0 || *(a1 + 48))
  {
    goto LABEL_3;
  }

  if (!*(v3 + 72))
  {
    v5 = 0;
    if ((v4 & 0x10000000) == 0 || !(a3 & 0x10 | ~v4 & 0x50000000))
    {
      goto LABEL_6;
    }

    if ((*(a1 + 116) & 8) == 0)
    {
LABEL_3:
      if (*(a1 + 24) == &_dispatch_mgr_q)
      {
        v5 = &_dispatch_mgr_q;
      }

      else
      {
        v5 = (&dword_0 + 1);
      }

      goto LABEL_6;
    }

LABEL_16:
    v5 = 0;
    goto LABEL_6;
  }

  if (*(v3 + 64) > 3u || (*(v3 + 30) & 1) != 0 && !*(v3 + 88))
  {
    goto LABEL_16;
  }

  if (*(v3 + 88))
  {
    v6 = *(v3 + 16) != 0;
  }

  else
  {
    v6 = *(a1 + 118) & 1;
  }

  v5 = &_dispatch_mgr_q;
  if (v6)
  {
    v7 = &_dispatch_mgr_q == (&dword_0 + 1);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_3;
  }

LABEL_6:
  _dispatch_queue_wakeup(a1, a2, a3, v5);
}

uint64_t _dispatch_xpc_sigterm_merge_evt(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = ~*(a1 + 8);
  _dispatch_barrier_async_detached_f(v5, v5, _dispatch_mach_sigterm_invoke);
  v6 = *(*v5 + 64);
  v7 = __clz(__rbit32((a4 >> 8) & 0x3FFF));
  if (((a4 >> 8) & 0x3FFF) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  return v6(v5, v8, 19);
}

void _dispatch_mach_sigterm_invoke(uint64_t a1)
{
  _dispatch_unote_unregister(*(a1 + 128), 5);
  if ((*(a1 + 80) & 0x10000000) == 0)
  {
    v2 = *(a1 + 88);
    v3 = *(v2 + 48);
    if (*(v2 + 40))
    {
      v4 = *(v2 + 40);
    }

    else
    {
      v4 = 0;
    }

    _dispatch_client_callout4(v3, 11, 0, 0, v4);
  }
}

uint64_t dispatch_mach_msg_create(const void *a1, size_t a2, int a3, void *a4)
{
  if (a2 < 0x18 || (v7 = a1) == 0 && a3)
  {
    dispatch_mach_msg_create_cold_2(a2);
  }

  if (a3)
  {
    v8 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 96);
    *(v8 + 88) = v7;
    *(v8 + 16) = -1985229329;
    *(v8 + 24) = &off_74600;
    *(v8 + 72) = a3;
    *(v8 + 80) = a2;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_12;
  }

  v9 = a2 + 88;
  if (a2 - 8 >= 0xFFFFFFFFFFFFFFA0)
  {
    dispatch_mach_msg_create_cold_1(a2);
  }

  v10 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, v9);
  v8 = v10;
  if (v7)
  {
    memcpy((v10 + 88), v7, a2);
  }

  *(v8 + 16) = -1985229329;
  *(v8 + 24) = &off_74600;
  *(v8 + 72) = 0;
  *(v8 + 80) = a2;
  if (a4)
  {
    v7 = (v8 + 88);
LABEL_12:
    *a4 = v7;
  }

  return v8;
}

void _dispatch_mach_msg_dispose(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(add_explicit, v2);
    }

    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 72);
  if (v4 == 2)
  {
    v6 = mach_vm_deallocate(mach_task_self_, *(a1 + 88), *(a1 + 80));
    if (v6)
    {

      _dispatch_bug(3009, v6);
    }
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 88);

    free(v5);
  }
}

uint64_t dispatch_mach_msg_get_msg(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  v2 = *(a1 + 72);
  result = a1 + 88;
  if (v2)
  {
    return *result;
  }

  return result;
}

void _dispatch_mach_msg_async_reply_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(v5 + 48);
  v8 = 3;
  if (v7)
  {
    v8 = 4;
  }

  if (v7 >> 14 == 254944)
  {
    v9 = v7 & 0x3FFF;
  }

  else
  {
    v9 = v8;
  }

  v30 = 0;
  v31 = 0;
  v29[1] = "mach_msg";
  v29[2] = v5;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29[0] = StatusReg[23];
  StatusReg[23] = v29;
  while (1)
  {
    v11 = *(v6 + 88);
    *(v5 + 16) = -1985229329;
    v6 = *(v5 + 64);
    if (v6 != -1)
    {
      v12 = *(v5 + 64);
      if (v6)
      {
        v13 = *(v6 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
        v6 = *(v5 + 64);
      }
    }

    v14 = *(v5 + 56);
    if (v14 == -1)
    {
      v17 = 0;
    }

    else
    {
      v15 = StatusReg[25];
      v16 = ((v15 >> 8) & 0xF) != 0 ? 256 << ((BYTE1(v15) & 0xFu) - 1) : 0;
      v17 = v14 & 0xFFFFFF;
      if (v17)
      {
        if (v17 < (v16 & 0xFFFFFF00))
        {
          v17 = v16 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
        }
      }

      else
      {
        v17 = v15 >> 12 ? (256 << ((v15 >> 12) - 1)) | 0xFF : v16 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
      }
    }

    v18 = v17 & 0xFFFFFFFF02FFFFFFLL;
    v19 = StatusReg[4];
    if ((v19 & 0x1000000) != 0)
    {
      if (v18)
      {
        goto LABEL_54;
      }

      v18 = v19 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else if (v18 == (v19 & 0xFFFFFFFF76FFFFFFLL))
    {
      goto LABEL_23;
    }

    if (v18)
    {
      goto LABEL_54;
    }

LABEL_23:
    if (v6 == -1)
    {
      goto LABEL_27;
    }

    if (StatusReg[28] != v6)
    {
      break;
    }

    if (!v6 || atomic_fetch_add_explicit((v6 + 12), 0xFFFFFFFF, memory_order_relaxed) > 1)
    {
      goto LABEL_27;
    }

    qword_78298 = "API MISUSE: Voucher over-release";
    __break(1u);
    v26 = *(*(v5 + 88) + 40);
    if (v26)
    {
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);
    }
  }

  v18 = 0;
LABEL_54:
  _dispatch_set_priority_and_voucher_slow(v18, v6, 7);
LABEL_27:
  v20 = 0;
  *(v5 + 64) = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v20 = _dispatch_autorelease_pool_push();
  }

  _dispatch_client_callout3(*(v11 + 48), v9, v5, *(&dword_18 + _dispatch_mach_xpc_hooks));
  ++StatusReg[26];
  if (v20)
  {
    _dispatch_autorelease_pool_pop();
  }

  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  dispatch_release(v5);
  v21 = v30;
  StatusReg[23] = v29[0];
  if (v21)
  {
    _dispatch_mach_ipc_handoff_async(v29);
  }

  v22 = *(a1 + 56);
  if (*(v22 + 8) == 0x7FFFFFFF || (add_explicit = atomic_fetch_add_explicit((v22 + 8), 0xFFFFFFFF, memory_order_release), add_explicit > 1))
  {
LABEL_37:
    v24 = StatusReg[22];
    if (v24)
    {
      v25 = *(v24 + 8) + 1;
    }

    else
    {
      v25 = 1;
    }

    if (v25 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v24;
      *(a1 + 8) = v25;
      StatusReg[22] = a1;
    }
  }

  else
  {
    if (add_explicit == 1)
    {
      _os_object_dispose(v22);
      goto LABEL_37;
    }

    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }
}

uint64_t dispatch_mach_msg_get_filter_policy_id(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_4();
  }

  v2 = a1 + 88;
  if (*(a1 + 72))
  {
    v2 = *v2;
    if (!v2)
    {
      dispatch_mach_msg_get_filter_policy_id_cold_1(a1);
    }
  }

  v3 = (v2 + ((*(v2 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v3)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_2(*v3);
  }

  result = v3[1];
  if (result < 0x44)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_3(result);
  }

  *a2 = v3[15];
  return result;
}

uint64_t dispatch_mig_server(uint64_t a1, uint64_t a2, unsigned int (*a3)(mach_msg_header_t *, mach_msg_header_t *))
{
  v29 = a3;
  v4 = a2 + 68;
  v5 = *(a1 + 88);
  v6 = (&v29 - ((a2 + 83) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, a2 + 68);
  v6[1].msgh_remote_port = 0;
  v7 = vm_page_size;
  v8 = ~vm_page_mask;
  v9 = (v8 & (v6 + vm_page_size));
  if (v9 < v6 + v4)
  {
    do
    {
      *v9 = 0;
      v7 = vm_page_size;
      v9 += vm_page_size;
    }

    while (v9 < v6 + v4);
    v8 = ~vm_page_mask;
  }

  v10 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v4);
  v10->msgh_size = 0;
  for (i = (v8 & (v10 + v7)); i < v10 + v4; i += vm_page_size)
  {
    *i = 0;
  }

  v12 = 0;
  v13 = 117442818;
  v14 = 1000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v16 = 117442818;
  while (1)
  {
    v17 = v6;
    v6 = v10;
    if (*(a1 + 56) >> 55)
    {
      v18 = 0;
    }

    else
    {
      v18 = (*(a1 + 80) & 0x10000000) == 0;
    }

    if (!v18 || (--v14, !v14))
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v16 &= ~2u;
      v13 &= ~2u;
    }

    v19 = mach_msg(v10, v13, v10->msgh_size, v4, *(v5 + 24), 0, 0);
    if (v19)
    {
      break;
    }

    if ((v16 & 2) == 0)
    {
      return 0;
    }

    v20 = voucher_create_with_mach_msg(&v10->msgh_bits);
    v21 = *(StatusReg + 224);
    if (v21 == v20)
    {
      goto LABEL_27;
    }

    *(StatusReg + 224) = v20;
    if (v20)
    {
      v22 = *(v20 + 32);
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = 0;
      if (!v21)
      {
LABEL_23:
        v23 = 0;
        goto LABEL_24;
      }
    }

    v23 = *(v21 + 32);
LABEL_24:
    if (v22 != -1 && v22 != v23)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v22);
    }

LABEL_27:
    if (v21)
    {
      add_explicit = atomic_fetch_add_explicit((v21 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 1)
      {
        _dispatch_mgr_queue_drain_cold_3(add_explicit, v21);
      }
    }

    *&v17->msgh_bits = 0;
    *&v17->msgh_remote_port = 0;
    *&v17->msgh_voucher_port = 0;
    if (!v29(v6, v17))
    {
      goto LABEL_35;
    }

    if ((v17->msgh_bits & 0x80000000) != 0)
    {
      goto LABEL_36;
    }

    msgh_remote_port = v17[1].msgh_remote_port;
    if (!msgh_remote_port)
    {
      goto LABEL_36;
    }

    if (msgh_remote_port == -305)
    {
      v17->msgh_remote_port = 0;
    }

    else
    {
LABEL_35:
      v6->msgh_remote_port = 0;
      mach_msg_destroy(v6);
    }

LABEL_36:
    v12 = 1;
    v10 = v17;
    v13 = v16;
    if (v17->msgh_remote_port)
    {
      if ((v17->msgh_bits & 0x1F) == 0x12)
      {
        v26 = 1;
      }

      else
      {
        v26 = 17;
      }

      v13 = v26 | v16;
      v10 = v17;
    }
  }

  v27 = v19;
  if ((v19 - 268435459) < 2)
  {
    _dispatch_mig_consume_unsent_message(v6);
  }

  else if (v19 != 268451842)
  {
    if (v19 == 268451843)
    {
      if (v12 & 1 | (v6->msgh_remote_port != 0))
      {
        return 0;
      }

      else
      {
        return 268451843;
      }
    }

    else
    {
      _dispatch_bug_mach_client("dispatch_mig_server: mach_msg() failed", v19);
    }
  }

  return v27;
}

void _dispatch_mig_consume_unsent_message(mach_msg_header_t *a1)
{
  msgh_local_port = a1->msgh_local_port;
  if (msgh_local_port - 1 <= 0xFFFFFFFD)
  {
    v3 = (a1->msgh_bits >> 8) & 0x1F;
    if (v3 - 17 >= 2)
    {
      if (v3 != 16)
      {
        goto LABEL_10;
      }

      v4 = mach_port_mod_refs(mach_task_self_, msgh_local_port, 1u, -1);
    }

    else
    {
      v4 = mach_port_deallocate(mach_task_self_, msgh_local_port);
    }

    if (v4 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v4)
    {
      _dispatch_bug(3179, v4);
    }
  }

LABEL_10:

  mach_msg_destroy(a1);
}

uint64_t dispatch_mach_mig_demux(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23[1] = "mach_mig_demux";
  v23[2] = a1;
  v4 = (a4 + 88);
  if (*(a4 + 72))
  {
    v4 = *&v4->msgh_bits;
  }

  if (!a3)
  {
    return 0;
  }

  msgh_id = v4->msgh_id;
  while (1)
  {
    v6 = *a2;
    v7 = *(*a2 + 8);
    v8 = __OFSUB__(msgh_id, v7);
    v9 = msgh_id - v7;
    if (v9 < 0 == v8 && *(v6 + 12) > msgh_id)
    {
      break;
    }

    ++a2;
    if (!--a3)
    {
      return 0;
    }
  }

  v11 = v6 + 40 * v9;
  if (!*(v11 + 40))
  {
    return 0;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23[0] = *(StatusReg + 184);
  *(StatusReg + 184) = v23;
  v13 = (*(v11 + 64) + 68);
  v14 = (v23 - ((v13 + 15) & 0x1FFFFFFF0));
  bzero(v14, v13);
  for (i = (~vm_page_mask & (v14 + vm_page_size)); i < v14 + v13; i += vm_page_size)
  {
    *i = 0;
  }

  msgh_remote_port = v4->msgh_remote_port;
  *v14 = v4->msgh_bits & 0x1F;
  v14[1] = 36;
  *(v14 + 1) = msgh_remote_port;
  v14[4] = 0;
  v14[5] = msgh_id + 100;
  (*(v11 + 40))(v4, v23 - ((v13 + 15) & 0x1FFFFFFF0));
  if ((*v14 & 0x80000000) == 0)
  {
    v17 = v14[8];
    if (v17 == -305)
    {
      goto LABEL_35;
    }

    if (v17)
    {
      v4->msgh_remote_port = 0;
      mach_msg_destroy(v4);
    }
  }

  if (v14[2])
  {
    if ((*v14 & 0x1F) == 0x12)
    {
      v18 = 1;
    }

    else
    {
      v18 = 17;
    }

    v19 = mach_msg((v23 - ((v13 + 15) & 0x1FFFFFFF0)), v18, v14[1], 0, 0, 0, 0);
    if ((v19 - 268435459) >= 2)
    {
      if (v19)
      {
        if (v19 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        dispatch_mach_mig_demux_cold_3(v19);
      }

      goto LABEL_35;
    }

    v20 = v14[3];
    if (v20 - 1 > 0xFFFFFFFD)
    {
      goto LABEL_34;
    }

    v21 = (*v14 >> 8) & 0x1F;
    if ((v21 - 17) >= 2)
    {
      if (v21 != 16)
      {
LABEL_34:
        mach_msg_destroy((v23 - ((v13 + 15) & 0x1FFFFFFF0)));
        goto LABEL_35;
      }

      v22 = mach_port_mod_refs(mach_task_self_, v20, 1u, -1);
    }

    else
    {
      v22 = mach_port_deallocate(mach_task_self_, v20);
    }

    if (v22 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v22)
    {
      _dispatch_bug(3179, v22);
    }

    goto LABEL_34;
  }

LABEL_35:
  *(StatusReg + 184) = v23[0];
  return 1;
}

uint64_t dispatch_mach_mig_demux_get_context()
{
  v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v0 = *v0;
    if (!v0)
    {
      dispatch_mach_mig_demux_get_context_cold_1();
    }
  }

  while (*(v0 + 8) != "mach_mig_demux");
  return *(v0 + 16);
}

uint64_t _dispatch_mach_msg_create_reply_disconnected(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 13;
  if (!a1)
  {
    v5 = (a2 + 24);
  }

  v6 = *v5;
  if (*v5)
  {
    if (a2 && !*(a2 + 16) && *(a2 + 30) == 1)
    {
      v8 = *(a2 + 56);
      if (v8)
      {
        add_explicit = atomic_fetch_add_explicit((v8 + 12), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 1)
        {
          _dispatch_mach_msg_dispose_cold_1(add_explicit, v8);
        }

        *(a2 + 56) = 0;
      }

      _dispatch_destruct_reply_port();
      return 0;
    }

    v10 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
    v11 = v10;
    *(v10 + 16) = -1985229329;
    *(v10 + 24) = &off_74600;
    *(v10 + 72) = 0;
    *(v10 + 80) = 24;
    *(v10 + 100) = v6;
    if (a1)
    {
      *(v10 + 32) = a1[4];
      v12 = a1[8];
      *(v10 + 56) = a1[7];
      *(v10 + 64) = v12;
      if (v12 && atomic_fetch_add_explicit((v12 + 12), 1u, memory_order_relaxed) <= 0)
      {
        dispatch_group_notify_cold_1();
      }
    }

    else
    {
      v13 = *(a2 + 40);
      v14 = *(a2 + 56);
      *(v10 + 32) = *(a2 + 48);
      *(v10 + 56) = v13;
      *(v10 + 64) = v14;
      *(a2 + 56) = 0;
    }

    v15 = a3 | 0xF8F80000;
    if (!a3)
    {
      v15 = 0;
    }

    *(v10 + 48) = v15;
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    v17 = *(a2 + 56);
    if (!v17)
    {
      return 0;
    }

    v18 = atomic_fetch_add_explicit((v17 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (v18 <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(v18, v17);
    }

    v11 = 0;
    *(a2 + 56) = 0;
  }

  return v11;
}

void _dispatch_destruct_reply_port()
{
  v0 = thread_destruct_special_reply_port();
  if (v0 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v0)
  {

    _dispatch_bug(524, v0);
  }
}

void _dispatch_mach_send_drain(unint64_t a1, unsigned int a2, int a3)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 120);
  v7 = HIDWORD(*(v6 + 64)) & 7;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v35 = v7;
  do
  {
    if (*(v6 + 72))
    {
      v31 = v4;
      v9 = a3;
      v32 = (v6 + 72);
LABEL_4:
      v10 = *(v6 + 80);
      if (!v10)
      {
        v10 = _dispatch_wait_for_enqueuer((v6 + 80));
      }

      while (1)
      {
        v11 = v10;
        v10 = *(v10 + 16);
        *(v6 + 80) = v10;
        if (!v10)
        {
          v18 = *v32;
          while (v11 == (v18 & 0xFFFFFFFFFFFFFFF8))
          {
            v19 = v18;
            atomic_compare_exchange_strong_explicit(v32, &v19, 0, memory_order_release, memory_order_relaxed);
            v20 = v19 == v18;
            v18 = v19;
            if (v20)
            {
              goto LABEL_7;
            }
          }

          v10 = v11[2];
          if (!v10)
          {
            v10 = _dispatch_wait_for_enqueuer(v11 + 2);
          }

          *(v6 + 80) = v10;
        }

LABEL_7:
        v12 = *v11;
        if (*v11 < 0x1000)
        {
          if ((v12 & 1) == 0)
          {
            if (*(v6 + 16) && *(StatusReg + 160) != &_dispatch_mgr_q)
            {
              *(a1 + 118) |= 1u;
              v31 |= 2u;
              goto LABEL_41;
            }

            if (!_dispatch_mach_reconnect_invoke(a1, v11))
            {
              goto LABEL_41;
            }

            goto LABEL_27;
          }

          v14 = v11[6];
          v13 = v11[7];
        }

        else
        {
          if (*(v12 + 16) == 768)
          {
            if ((a3 & 4) == 0)
            {
              goto LABEL_41;
            }

            _dispatch_continuation_pop(v11, 0, a2, a1);
            goto LABEL_28;
          }

          v13 = 0;
          v14 = v11;
        }

        v15 = *(v14 + 64);
        if (v15 != -1)
        {
          if (v15)
          {
            v16 = *(v15 + 32);
          }

          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }
        }

        if (*(v6 + 88) || (*(a1 + 80) & 0x10000000) != 0)
        {
          _dispatch_mach_msg_not_sent(a1, v14, v13);
        }

        else
        {
          v17 = _dispatch_mach_msg_send(a1, v14, v13, v35, v9);
          if (!v17)
          {
            v31 |= 2 * (*(a1 + 118) & 1);
LABEL_41:
            v11[2] = v10;
            if (!v10)
            {
              v21 = 0;
              atomic_compare_exchange_strong_explicit(v32, &v21, v11, memory_order_release, memory_order_relaxed);
              if (v21)
              {
                v29 = *(v6 + 80);
                if (!v29)
                {
                  v29 = _dispatch_wait_for_enqueuer((v6 + 80));
                }

                v11[2] = v29;
              }
            }

            *(v6 + 80) = v11;
            if (*v11 >= 0x1000 && *(*v11 + 16) == 768)
            {
              v22 = *(v6 + 64);
              do
              {
                v23 = v22;
                v24 = v22 & 0xFFFFFFC700000000 | 0x3000000000;
                atomic_compare_exchange_strong_explicit((v6 + 64), &v22, v24, memory_order_release, memory_order_relaxed);
              }

              while (v22 != v23);
            }

            else
            {
              v25 = *(v6 + 64);
              do
              {
                v23 = v25;
                v24 = v25 & 0xFFFFFFC7FFFFFFFFLL;
                if ((v25 & 0x2800000000) == 0)
                {
                  v24 = v25 & 0xFFFFFFD700000000 | 0x2000000000;
                }

                atomic_compare_exchange_strong_explicit((v6 + 64), &v25, v24, memory_order_release, memory_order_relaxed);
              }

              while (v25 != v23);
            }

            a3 &= ~8u;
            v4 = v31;
            goto LABEL_55;
          }

          v5 |= (v17 & 2) >> 1;
        }

LABEL_27:
        ++*(StatusReg + 208);
LABEL_28:
        v9 = a3 & 0xF7;
        if (!v10)
        {
          v9 = a3 & 0xF7;
          if (*v32)
          {
            goto LABEL_4;
          }

          a3 &= ~8u;
          v4 = v31;
          break;
        }
      }
    }

    v26 = *(v6 + 64);
    do
    {
      v23 = v26;
      v24 = v26 & ((v26 << 26) >> 63) & 0xFFFFFFC7FFFFFFFFLL;
      atomic_compare_exchange_strong_explicit((v6 + 64), &v26, v24, memory_order_release, memory_order_relaxed);
    }

    while (v26 != v23);
LABEL_55:
    if ((v23 & 0x800000000) != 0)
    {
      v27 = HIDWORD(v23) & 7;
      v28 = *(StatusReg + 200);
      if ((HIWORD(v28) & 0xF) < v27)
      {
        *(StatusReg + 200) = v28 & 0xFFF0FFFF | (v27 << 16);
      }
    }

    v35 = HIDWORD(v24) & 7;
  }

  while (v24);
  if ((v24 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, v35);
    return;
  }

  if (!v24 && (*(a1 + 118) & 2) != 0)
  {
    if ((*(a1 + 116) & 8) != 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v4 | 0x12;
    }
  }

  if (((v23 ^ v24) & 0x8000000000) == 0)
  {
    if (!v4)
    {
      return;
    }

LABEL_76:
    (*(*a1 + 64))(a1, (*(a1 + 118) << 31 >> 31) & v35, v4);
    return;
  }

  if (v4)
  {
    v4 = v4 | 1;
    goto LABEL_76;
  }

  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      if (add_explicit == 2)
      {
        _os_object_dispose(a1);
      }

      else
      {
        qword_78298 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }
}

void _dispatch_mach_msg_not_sent(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  if ((*(a1 + 116) & 0x10) != 0 && *(a2 + 32))
  {
    v7 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a1;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = 12;
  }

  else
  {
    v9 = 7;
  }

  reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(a2, a3, v9);
  if ((v6 & 2) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = -117964795;
  }

  *(a2 + 48) = v11;
  _dispatch_mach_handle_or_push_received_msg(a1, a2, 0);
  if (reply_disconnected)
  {
    if (v8)
    {
      v12 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
      v13 = *(*v8 + 72);
      v14 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
      if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 0;
      }

      v13(v8, v12, v15);
    }

    else
    {

      _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0);
    }
  }
}

uint64_t _dispatch_mach_msg_send(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a1;
  v7 = *(a1 + 120);
  v8 = a2 + 88;
  if (*(a2 + 72))
  {
    v8 = *v8;
  }

  v9 = *(a2 + 64);
  v10 = *v8 & 0x1F;
  v11 = *(a2 + 52);
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  memset(v93, 0, 40);
  if (v10 != 18)
  {
    v17 = *(a1 + 118);
    *(a1 + 118) = v17 & 0xFFFE;
    v18 = *(v7 + 48);
    if (v18)
    {
      v19 = v18 == a2;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      LODWORD(v89) = v11;
      v86 = a5;
      if (*(v7 + 16) && *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160) != &_dispatch_mgr_q)
      {
        v55 = 0;
        goto LABEL_91;
      }

      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v61 = *(StatusReg + 32) & 0xFFFFFFLL;
      if (v61 >= 0x10FF)
      {
        v61 = 4351;
      }

      *(v18 + 56) = v61;
      v62 = *(StatusReg + 224);
      if (v62)
      {
        v83 = a4;
        v20 = v7;
        v63 = *(StatusReg + 224);
        add_explicit = atomic_fetch_add_explicit((v62 + 12), 1u, memory_order_relaxed);
        a4 = v83;
        if (add_explicit <= 0)
        {
          qword_78298 = "API MISUSE: Voucher resurrection";
          __break(1u);
          goto LABEL_128;
        }
      }

      *(v18 + 64) = v62;
      *(v18 + 48) = ((*(StatusReg + 32) & 0x300) != 0) << 18;
      StatusReg = v7;
      v65 = a4;
      if (!_dispatch_mach_msg_send(a1, *(v7 + 48), 0, a4, 0))
      {
        goto LABEL_123;
      }

      if ((*(v6 + 116) & 0x20) != 0)
      {
        _dispatch_mach_arm_no_senders(v6, 1);
      }

      v18 = 0;
      v7 = StatusReg;
      *(StatusReg + 48) = 0;
      a5 = v86;
      v11 = v89;
      LODWORD(a4) = v65;
    }

    v13 = (a2 + 48);
    StatusReg = *(a2 + 48);
    if ((StatusReg & 2) != 0)
    {
      goto LABEL_19;
    }

    v20 = 0;
    v21 = 1;
    if (v18 != a2)
    {
      *(v8 + 8) = *(v7 + 92);
    }

    if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160) != &_dispatch_mgr_q)
    {
      if (v9)
      {
LABEL_16:
        v22 = *(v9 + 48);
        if (v22)
        {
          *(&v93[0] + 1) = 59821818;
          *&v93[1] = v22;
          *(&v93[1] + 8) = *(v9 + 56);
          LODWORD(v93[0]) = 40;
          v14 = 32;
          if ((*(v8 + 2) & 0x1F) == 0)
          {
            v90 = v21;
            v81 = a4;
            v84 = v6;
            v23 = v13;
            v24 = v11;
            v25 = v7;
            v26 = a5;
LABEL_31:
            mach_voucher = _voucher_get_mach_voucher(v9);
            a5 = v26;
            v7 = v25;
            v11 = v24;
            v13 = v23;
            v6 = v84;
            LODWORD(a4) = v81;
            v21 = v90;
LABEL_32:
            v15 = 0;
            if (mach_voucher)
            {
              v29 = *v8;
              if ((*v8 & 0x1F0000) == 0)
              {
                *(v8 + 16) = mach_voucher;
                *v8 = v29 | 0x130000;
                v15 = 1;
              }
            }

LABEL_35:
            if (a4)
            {
              v30 = __clz(__rbit32((*(a2 + 56) >> 8) & 0x3FFF));
              v16 = v21 | 0x30;
              if (!v11)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v16 = v21 | 0x10;
              if (!v11)
              {
                goto LABEL_38;
              }
            }

            v16 |= (4 * *(v6 + 116)) & 0x200;
            goto LABEL_38;
          }

LABEL_29:
          v15 = 0;
          goto LABEL_35;
        }

        if ((*(v8 + 2) & 0x1F) == 0)
        {
          v90 = v21;
          v81 = a4;
          v84 = v6;
          v23 = v13;
          v24 = v11;
          v25 = v7;
          v26 = a5;
          v14 = 0;
          goto LABEL_31;
        }

LABEL_28:
        v14 = 0;
        goto LABEL_29;
      }

LABEL_23:
      if ((*(v8 + 2) & 0x1F) == 0)
      {
        if (_voucher_task_mach_voucher_pred != -1)
        {
          v87 = v6;
          v73 = v13;
          v74 = v11;
          v75 = a5;
          v76 = v7;
          v77 = a4;
          v78 = v21;
          dispatch_once_f(&_voucher_task_mach_voucher_pred, 0, _voucher_task_mach_voucher_init);
          v21 = v78;
          LODWORD(a4) = v77;
          v11 = v74;
          v13 = v73;
          v6 = v87;
          v7 = v76;
          a5 = v75;
        }

        v14 = 0;
        mach_voucher = _voucher_task_mach_voucher;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    if (*(v7 + 16))
    {
LABEL_21:
      if (*(v7 + 30))
      {
        return 0;
      }

      v21 = v20 | 0x81;
      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v83 = a4;
    v89 = (a2 + 48);
    add_explicit = v11;
    v18 = v7;
    LOBYTE(v63) = a5;
    v70 = *(v6 + 120);
    *(v70 + 24) = *(v8 + 8);
    _dispatch_unote_register(v70, -4, 0x2000000u);
    if (v71)
    {
LABEL_121:
      v7 = v18;
      v72 = *(v18 + 16);
      a5 = v63;
      v11 = add_explicit;
      v13 = v89;
      LODWORD(a4) = v83;
      goto LABEL_21;
    }

LABEL_128:
    _dispatch_bug(1752, 0);
    goto LABEL_121;
  }

  v13 = (a2 + 48);
  StatusReg = *(a2 + 48);
  if ((StatusReg & 2) != 0)
  {
LABEL_19:
    v27 = 0;
    goto LABEL_67;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 1;
LABEL_38:
  v88 = v10;
  v85 = v15;
  v91 = v13;
  if ((StatusReg & 4) != 0)
  {
    v31 = v14;
    if (*(a3 + 30) == 1 && (v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)), v11 == *(v32 + 64)))
    {
      v33 = v16;
      v34 = v7;
      v35 = a5;
      *(v32 + 64) = 0;
    }

    else
    {
      v33 = v16;
      v34 = v7;
      v35 = a5;
    }

    v36 = v11;
    _dispatch_mach_reply_waiter_register(v6, a3, v11, a2);
    LOBYTE(v16) = v33;
    v14 = v31;
  }

  else
  {
    v36 = v11;
    v34 = v7;
    v35 = a5;
  }

  v37 = *(v8 + 4);
  v94 = v8;
  *&v95 = v37;
  v38 = v93[0];
  if (!v14)
  {
    v38 = 0;
  }

  *(&v95 + 1) = v93;
  *&v96 = 0;
  *(&v96 + 1) = v38;
  v39 = *(v8 + 8);
  v40 = *(v8 + 16);
  v41 = *(v8 + 20);
  v82 = v16;
  if ((v16 & 1) != 0 && (*v8 & 0x80000000) != 0)
  {
    v42 = *(v8 + 24);
  }

  v43 = mach_msg2_internal();
  v27 = v43;
  if ((StatusReg & 4) != 0 && v43)
  {
    _dispatch_mach_reply_unregister(v6, a3, 36);
  }

  a5 = v35;
  v7 = v34;
  v10 = v88;
  v11 = v36;
  v13 = v91;
  if (!v85)
  {
    goto LABEL_65;
  }

  v44 = *(v8 + 16);
  if (v27 != 268435461 || !v44)
  {
    v45 = *v8;
    v46 = HIWORD(*v8) & 0x1F;
    v47 = v46 == 17 || v46 == 19;
    if (v47 && v44)
    {
      if (v46 == 17)
      {
        v48 = v7;
        v49 = v11;
        _voucher_dealloc_mach_voucher(v44);
        v11 = v49;
        v13 = v91;
        v7 = v48;
        v10 = v88;
        a5 = v35;
        v45 = *v8;
      }

      *(v8 + 16) = 0;
      *v8 = v45 & 0xFFE0FFFF;
    }

LABEL_65:
    if (v27 != 268435460 || (v27 = 268435460, (v82 & 0x10) == 0))
    {
LABEL_67:
      if (!(StatusReg & 4 | v27))
      {
        if (v11)
        {
          v50 = *(v6 + 88);
          if (!*(v50 + 16) || *(v50 + 24) != v11)
          {
            v51 = a5;
            v52 = v7;
            _dispatch_mach_reply_kevent_register(v6, v11, a2);
            v7 = v52;
            a5 = v51;
          }
        }
      }

      if (v10 != 18 && *(v7 + 48) == a2 && *(v7 + 16))
      {
        v66 = a5;
        _dispatch_unote_unregister(*(v6 + 120), 5);
        a5 = v66;
        *(*(v6 + 120) + 24) = 0;
        if (!v27)
        {
          goto LABEL_76;
        }
      }

      else if (!v27)
      {
LABEL_76:
        v53 = 0;
        reply_disconnected = 0;
LABEL_77:
        *v13 = v27;
        if (a5 & 8) != 0 && (StatusReg)
        {
          v55 = 3;
          if (!reply_disconnected)
          {
            return v55;
          }

LABEL_82:
          if (v53)
          {
            v56 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, v6);
            v57 = *v53 + 72;
            v58 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
            if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
            {
              v59 = v58 + 1;
            }

            else
            {
              v59 = 0;
            }

            (*(*v53 + 72))(v53, v56, v59);
          }

          else
          {
            _dispatch_mach_handle_or_push_received_msg(v6, reply_disconnected, 0);
          }

          return v55;
        }

        _dispatch_mach_handle_or_push_received_msg(v6, a2, 0);
        v55 = 1;
        if (reply_disconnected)
        {
          goto LABEL_82;
        }

        return v55;
      }

      if ((*(v6 + 116) & 0x10) != 0)
      {
        v67 = a5;
        if (*(a2 + 32))
        {
          v68 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
          if (v68)
          {
            v53 = v68;
          }

          else
          {
            v53 = v6;
          }

LABEL_116:
          if (v53)
          {
            v69 = 12;
          }

          else
          {
            v69 = 7;
          }

          reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(a2, a3, v69);
          a5 = v67;
          goto LABEL_77;
        }
      }

      else
      {
        v67 = a5;
      }

      v53 = 0;
      goto LABEL_116;
    }

    if (*(v8 + 8) == -1)
    {
      *v8 = *v8 & 0xFFFFFFE0 | 0x13;
      if ((v82 & 0x80) == 0)
      {
        goto LABEL_90;
      }
    }

    else if ((v82 & 0x80) == 0)
    {
LABEL_90:
      v55 = 0;
      v17 = *(v6 + 118);
LABEL_91:
      *(v6 + 118) = v17 | 1;
      return v55;
    }

    _dispatch_mach_notification_set_armed(v7);
    return 0;
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Voucher port corruption";
  qword_782C8 = 268435461;
  __break(1u);
LABEL_123:
  v79 = *(*(StatusReg + 48) + 64);
  if (!v79)
  {
    return 0;
  }

  v80 = atomic_fetch_add_explicit((v79 + 12), 0xFFFFFFFF, memory_order_relaxed);
  result = 0;
  if (v80 > 1)
  {
LABEL_125:
    v55 = 0;
    *(*(StatusReg + 48) + 64) = 0;
    return v55;
  }

  if (v80 == 1)
  {
    _voucher_xref_dispose(v79);
    goto LABEL_125;
  }

  qword_78298 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

void _dispatch_mach_push_send_barrier_drain(unint64_t a1, unsigned int a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 176);
  if (v5)
  {
    *(StatusReg + 176) = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v5[4] = 0;
  v5[5] = 0;
  v5[3] = -1;
  *v5 = &unk_70C90;
  v5[1] = -1;

  _dispatch_lane_push(a1, v5, a2);
}

uint64_t _dispatch_mach_reply_waiter_register(uint64_t result, uint64_t a2, int a3, void *a4)
{
  v5 = result;
  *(a2 + 8) = ~result;
  *(a2 + 28) = -8;
  *(a2 + 24) = a3;
  if ((*(a2 + 30) & 1) == 0)
  {
    v6 = a4[8];
    if (v6)
    {
      result = 0;
      if (atomic_fetch_add_explicit((v6 + 12), 1u, memory_order_relaxed) <= 0)
      {
        qword_78298 = "API MISUSE: Voucher resurrection";
        __break(1u);
        return result;
      }

      *(a2 + 56) = v6;
    }

    *(a2 + 40) = a4[7];
    *(a2 + 48) = a4[4];
  }

  v7 = 0;
  v8 = *(v5 + 120);
  v9 = (v8 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v8 + 40), &v7, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = _dispatch_unfair_lock_lock_slow(v8 + 40);
  }

  v13 = *(v8 + 56);
  v12 = (v8 + 56);
  v11 = v13;
  *(a2 + 64) = v13;
  if (v13)
  {
    *(v11 + 72) = a2 + 64;
  }

  *v12 = a2;
  *(a2 + 72) = v12;
  v14 = *(StatusReg + 24) & 0xFFFFFFFC;
  v15 = atomic_exchange_explicit(v9, 0, memory_order_release);
  if (v15 != v14)
  {

    return _dispatch_unfair_lock_unlock_slow(v9, v15);
  }

  return result;
}

void _dispatch_mach_reply_kevent_register(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = off_71430(&_dispatch_mach_type_reply, a2, 0);
  *(v5 + 8) = ~a1;
  v6 = a3[8];
  if (v6)
  {
    v7 = v6 + 12;
    if (atomic_fetch_add_explicit((v6 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Voucher resurrection";
      __break(1u);
LABEL_44:
      v28 = *(v7 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = a1;
      goto LABEL_20;
    }

    *(v5 + 56) = v6;
  }

  v8 = 0;
  *(v5 + 40) = a3[7];
  v9 = a3[4];
  *(v5 + 48) = v9;
  v10 = *(a1 + 116);
  if ((v10 & 0x10) != 0 && v9)
  {
    v11 = (*(&dword_10 + _dispatch_mach_xpc_hooks))();
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a1;
    }

    v10 = *(a1 + 116);
  }

  if ((v10 & 0x80) != 0)
  {
    *(v5 + 32) |= 0x200u;
  }

  v28 = 0;
  if (!v8 || v8 == a1)
  {
    v7 = *(a1 + 88);
    if (*(v7 + 16) >= 4uLL)
    {
      goto LABEL_44;
    }
  }

  if ((*(*v8 + 18) & 1) == 0)
  {
    v12 = _dispatch_queue_compute_priority_and_wlh(v8, &v28);
    if (v12)
    {
      goto LABEL_21;
    }

    v28 = -4;
    goto LABEL_20;
  }

  v28 = -4;
  v12 = 0x2000000;
  if (v8 >= &_dispatch_root_queues && v8 < &qword_74A80)
  {
LABEL_20:
    v12 = *(v8 + 21);
  }

LABEL_21:
  v13 = *(a3 + 14);
  v14 = (__clz(__rbit32((v13 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v13 >> 8) & 0x3FFF) == 0)
  {
    v14 = 0;
  }

  v15 = v14 & 0xFFFFFF00 | *(a3 + 14);
  v16 = v12 & 0x80000000;
  if ((v12 & 0xFFF) != 0)
  {
    if ((v12 & 0xFFFu) > v15)
    {
      v15 = v12 & 0xFFF;
    }

    goto LABEL_29;
  }

  if (v12 >> 12 && v15)
  {
LABEL_29:
    v17 = v15 | v16;
    goto LABEL_30;
  }

  if (!(v12 >> 12) || v15)
  {
    v28 = -4;
    v17 = 0x2000000;
  }

  else
  {
    v17 = v16 | (v12 >> 12 << 8) | 0xFF;
  }

LABEL_30:
  v18 = 0;
  v19 = *(a1 + 120);
  v20 = (v19 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v19 + 40), &v18, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v18)
  {
    _dispatch_unfair_lock_lock_slow(v19 + 40);
  }

  v24 = *(v19 + 56);
  v23 = (v19 + 56);
  v22 = v24;
  *(v5 + 64) = v24;
  if (v24)
  {
    *(v22 + 72) = v5 + 64;
  }

  *v23 = v5;
  *(v5 + 72) = v23;
  v25 = *(StatusReg + 24) & 0xFFFFFFFC;
  v26 = atomic_exchange_explicit(v20, 0, memory_order_release);
  if (v26 != v25)
  {
    _dispatch_unfair_lock_unlock_slow(v20, v26);
  }

  _dispatch_unote_register(v5, v28, v17);
  if ((v27 & 1) == 0)
  {
    _dispatch_mach_reply_unregister(a1, v5, 52);
  }
}

uint64_t _dispatch_mach_msg_async_reply_wrap(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  _dispatch_mach_msg_async_reply_wrap_cold_2(a1, a2, &v3);
  return v3;
}

void _dispatch_mach_send_push_and_trydrain(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 120);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 24);
  *(a2 + 16) = 0;
  *(StatusReg + 976) = v5 + 72;
  v8 = atomic_exchange_explicit((v5 + 72), a2, memory_order_release);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v8 + 16);
  }

  else
  {
    if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_57;
    }

    v11 = (v5 + 80);
    v10 = 3;
    v9 = 0xA000000000;
  }

  *v11 = a2;
  *(StatusReg + 976) = 0;
  if (*(v5 + 88) || (*(a1 + 80) & 0x10000000) != 0)
  {
    v23 = *(v5 + 64);
    v24 = a3 << 32;
    do
    {
      v25 = v23;
      if ((v23 & 0x700000000) >= v24)
      {
        v26 = v23;
      }

      else
      {
        v26 = v24 | v23 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      }

      v27 = v26 | v9;
      atomic_compare_exchange_strong_explicit((v5 + 64), &v23, v27, memory_order_release, memory_order_relaxed);
    }

    while (v23 != v25);
    if (((v27 ^ v25) & 0x8000000000) != 0)
    {
      v28 = v10 & 2;
    }

    else
    {
      v28 = v10;
    }

    (*(*a1 + 64))(a1, a3, v28);
    return;
  }

  v12 = v7 & 0xFFFFFFFC;
  v13 = (v5 + 64);
  if (!v8)
  {
    v18 = *v13;
    v19 = a3 << 32;
    do
    {
      v16 = v18;
      if ((v18 & 0x700000000) >= v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19 | v18 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      }

      v21 = v20 | v9;
      if ((v18 & 0x10FFFFFFFFLL) == 0)
      {
        v21 = v21 & 0xFFFFFFC7FFFFFFFFLL | v12;
      }

      atomic_compare_exchange_strong(v13, &v18, v21);
    }

    while (v18 != v16);
    if (((v21 ^ v16) & 0x8000000000) != 0)
    {
      v10 &= 2u;
    }

    else
    {
      v10 = v10;
    }

LABEL_26:
    if (v16 >= 4)
    {
      if ((v16 & 0x700000000) < a3 << 32)
      {
        _pthread_workqueue_override_start_direct_check_owner();
      }

      if ((v10 & 1) == 0)
      {
        return;
      }

      if (*(a1 + 8) == 0x7FFFFFFF)
      {
        return;
      }

      add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release);
      if (add_explicit > 2)
      {
        return;
      }

      if (add_explicit == 2)
      {
        _os_object_dispose(a1);
        return;
      }

LABEL_58:
      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
      return;
    }

    if ((v16 & 0x1000000000) != 0)
    {
      (*(*a1 + 64))(a1, a3, v10);
      return;
    }

    if (v10 && *(v5 + 80) == a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      a4 &= ~8u;
      if ((v10 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (*(a1 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) > 2)
    {
LABEL_33:

      _dispatch_mach_send_drain(a1, 0, a4);
      return;
    }

LABEL_57:
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_58;
  }

  v14 = *v13;
  v15 = a3 << 32;
  while (1)
  {
    v16 = v14;
    if ((v14 & 0x700000000) >= v15 || (v14 & 0xFFFFFFD0FFFFFFFFLL | v15 | 0x2800000000) == v14)
    {
      break;
    }

    v17 = v14 & 0xFFFFFFC0FFFFFFFFLL | v15 & 0xFFFFFFC7FFFFFFFFLL | v12;
    if ((v14 & 0x10FFFFFFFFLL) != 0)
    {
      v17 = v14 & 0xFFFFFFD0FFFFFFFFLL | v15 | 0x2800000000;
    }

    atomic_compare_exchange_strong_explicit(v13, &v14, v17, memory_order_acquire, memory_order_acquire);
    if (v14 == v16)
    {
      goto LABEL_26;
    }
  }
}

void _dispatch_mach_handle_wlh_change(uint64_t a1)
{
  v1 = atomic_fetch_or_explicit((a1 + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) != 0)
  {
    if ((v1 & 0x8000000) == 0)
    {
      if ((*(a1 + 116) & 0x10) != 0)
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy after xpc connection was activated");
      }

      else
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy after mach channel was connected");
      }
    }
  }

  else
  {
    if ((*(a1 + 116) & 0x10) == 0)
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after mach channel was connected";
      __break(1u);
    }

    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after xpc connection was activated";
    __break(1u);
  }
}

void _dispatch_mach_cancel(unint64_t a1)
{
  if (*(*(a1 + 120) + 88))
  {
    v2 = 0;
  }

  else
  {
    v2 = (*(a1 + 118) >> 1) & 1;
  }

  if ((*(a1 + 80) & 0x40000000) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    _dispatch_unote_unregister(v4, v3);
    v2 &= v5;
  }

  v6 = *(a1 + 88);
  v7 = *(v6 + 24);
  if (v7)
  {
    _dispatch_unote_unregister(*(a1 + 88), v3);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = _dispatch_object_alloc(_OS_dispatch_mach_msg_vtable, 112);
    *(v9 + 16) = -1985229329;
    *(v9 + 24) = &off_74600;
    *(v9 + 72) = 0;
    *(v9 + 80) = 24;
    *(v9 + 100) = v7;
    *(v9 + 48) = -117964793;
    _dispatch_mach_handle_or_push_received_msg(a1, v9, 0);
    *(v6 + 24) = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v2)
  {
LABEL_12:
    atomic_fetch_or_explicit((a1 + 80), 0x40000000u, memory_order_relaxed);
    return;
  }

  v10 = *(a1 + 80);
  do
  {
    v11 = v10;
    v12 = v10 & 0x3FFFFFFF | 0x80000000;
    if (v12 == v10)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((a1 + 80), &v10, v12, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v11);
  if ((v11 & 0xA0000000) != 0)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt channel state";
    qword_782C8 = v11;
    __break(1u);
LABEL_22:
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
  {
    goto LABEL_22;
  }
}

uint64_t _dispatch_mach_cancel_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 88);
  if ((a2 & 0x1000000) != 0)
  {
    v4 = _dispatch_autorelease_pool_push();
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 116) & 4) == 0)
  {
    _dispatch_mach_connect_invoke(a1);
  }

  if (*(v3 + 40))
  {
    v5 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
  }

  result = _dispatch_client_callout4(*(v3 + 48), 8, 0, 0, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  ++*(StatusReg + 208);
  if (v4)
  {
    result = _dispatch_autorelease_pool_pop();
  }

  *(a1 + 116) |= 8u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 + v5), v4, a3);
}

uint64_t _dispatch_unote_create_with_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return _dispatch_unote_create(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_unote_create(uint64_t a1, int a2, uint64_t a3)
{
  if ((~*(a1 + 20) & a3) != 0)
  {
    return 0;
  }

  v4 = a3;
  if (*(a1 + 20) && !a3 && (*(a1 + 10) & 4) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  if ((*(a1 + 12) & 0x100) != 0)
  {
    result = _dispatch_calloc_typed();
  }

  else
  {
    result = _dispatch_calloc_typed() + 24;
  }

  *result = a1;
  v8 = *(result + 29) & 0xDF | (32 * (*(a1 + 10) & 1));
  *(result + 29) = v8;
  *(result + 24) = a2;
  *(result + 28) = *(a1 + 8);
  *(result + 32) = v4;
  if (*(a1 + 13))
  {
    *(result + 29) = v8 | 1;
  }

  return result;
}

uint64_t _dispatch_unote_create_without_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return _dispatch_unote_create(a1, 0, a3);
  }
}

void _dispatch_unote_dispose(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = *(a1 + 29);
  if ((v4 & 0x40) != 0)
  {
    _Block_release(*(a1 + 48));
    v4 = *(v3 + 29);
  }

  if ((v4 & 2) != 0)
  {
    if (*(v3 + 112) != -1 || *(v3 + 116) != -1)
    {
      qword_78298 = "BUG IN LIBDISPATCH: Disposing of timer still in its heap";
      __break(1u);
      return;
    }

    v5 = *(v3 + 104);
    if (v5)
    {
      free(v5);
      *(v3 + 104) = 0;
    }

    goto LABEL_14;
  }

  if ((v4 & 1) == 0)
  {
    v3 -= 24;
LABEL_14:

    free(v3);
    return;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  _dispatch_unote_dispose_defer(v3);
}

void _dispatch_unote_register(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 29) & 2) == 0)
  {
    v6 = *(a1 + 16);
  }

  if ((a3 & 0x4600FFFF) == 0x4004000)
  {
    v7 = *(a1 + 8);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_unote_register_cold_1();
    }
  }

  *(a1 + 36) = a3;
  if (*(a1 + 28) - 233 > 2)
  {
    if ((*(a1 + 29) & 2) != 0)
    {
      _dispatch_timer_unote_register(a1, a2, a3);
    }

    else if (*(a1 + 29))
    {

      _dispatch_unote_register_direct(a1, a2);
    }

    else
    {

      _dispatch_unote_register_muxed(a1);
    }
  }

  else
  {
    *(a1 + 16) = -3;
  }
}

void _dispatch_timer_unote_register(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 8) & 0xF) - 1 <= 1)
  {
    v4 = *(a1 + 30);
    if (v4)
    {
      v5 = *(a1 + 8);
      if (MEMORY[0xFFFFFC100])
      {
        v7 = a1;
        v8 = a2;
        kdebug_trace();
        a1 = v7;
        a2 = v8;
      }
    }

    else
    {
      *(a1 + 30) = v4 | 2;
      *(a1 + 24) = 3 * ((v4 >> 2) & 3) + 2;
    }
  }

  if ((*(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL) != a2)
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = -4;
  }

  if (*(a1 + 104))
  {

    _dispatch_timer_unote_configure(a1);
  }
}

void _dispatch_unote_resume(void *a1)
{
  if ((*(a1 + 29) & 2) != 0)
  {
    _dispatch_timer_unote_resume(a1);
  }

  else
  {
    v1 = a1[2];
    if (*(a1 + 29))
    {
      _dispatch_unote_resume_direct(a1);
    }

    else
    {
      _dispatch_unote_resume_muxed(a1);
    }
  }
}

void _dispatch_timer_unote_resume(uint64_t a1)
{
  v2 = !(*(55 - *(a1 + 8)) >> 55) && *(a1 + 24) != -1 && *(a1 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
  v3 = *(a1 + 16);
  v4 = *(a1 + 30);
  v5 = (v4 >> 2) & 3;
  v6 = v4 & 3;
  v7 = 3 * v5;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 48);
  }

  else
  {
    v8 = &_dispatch_timers_heap;
  }

  v9 = v7 + v6;
  if (v3 & v2)
  {
    if (*(a1 + 24) == v9)
    {
      if (v2)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 1) == 0)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_15;
  }

  _dispatch_timer_unote_disarm(a1, v8);
  if (v2)
  {
LABEL_11:
    if (v3)
    {
LABEL_17:

      _dispatch_timer_unote_arm(a1, v8, v9);
      return;
    }

LABEL_15:
    if (*(7 - *(a1 + 8)) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - *(a1 + 8)), 2u, memory_order_relaxed) <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return;
    }

    goto LABEL_17;
  }

LABEL_21:
  if (v3)
  {
    v10 = ~*(a1 + 8);

    _os_object_release_internal_n(v10, 2);
  }
}

void _dispatch_unote_unregister(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 28) - 233 > 2)
    {
      if ((*(a1 + 29) & 2) != 0)
      {
        _dispatch_timer_unote_unregister(a1);
      }

      else if (*(a1 + 29))
      {

        _dispatch_unote_unregister_direct(a1, a2);
      }

      else
      {

        _dispatch_unote_unregister_muxed(a1);
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }
}

void _dispatch_timer_unote_unregister(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 48);
  }

  else
  {
    v3 = &_dispatch_timers_heap;
  }

  if ((*(a1 + 16) & 1) != 0 && (_dispatch_timer_unote_disarm(a1, v3), *(7 - *(a1 + 8)) != 0x7FFFFFFF) && atomic_fetch_add_explicit((7 - *(a1 + 8)), 0xFFFFFFFE, memory_order_release) <= 2)
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    if (v4 == -4 || v4 == 0)
    {
      goto LABEL_14;
    }

    add_explicit = atomic_fetch_add_explicit((v4 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_14;
    }

    if ((add_explicit & 0x80000000) == 0)
    {
      *(v4 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v4);
LABEL_14:
      *(a1 + 16) = 0;
      *(a1 + 24) = -1;
      return;
    }
  }

  qword_78298 = "API MISUSE: Over-release of an object";
  __break(1u);
}

uint64_t _dispatch_source_data_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 | a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  result = _dispatch_calloc_typed();
  *result = a1;
  *(result + 28) = *(a1 + 8);
  *(result + 29) |= 1u;
  return result;
}

uint64_t _dispatch_source_signal_create(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 0x1F)
  {
    return _dispatch_unote_create_with_handle(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void _dispatch_timer_unote_configure(unsigned int *a1)
{
  __swp(a1, a1 + 26);
  v2 = *(a1 + 30);
  if (a1[6] != ((v2 >> 2) & 3))
  {
    v3 = v2 & 0xF3;
    *(a1 + 30) = v3;
    *(a1 + 30) = v3 | (4 * *(a1 + 24));
  }

  v4 = *a1;
  *(a1 + 12) = *(a1 + 2);
  *(a1 + 5) = v4;
  free(a1);
  *(a1 + 9) = 0;
  if (*(a1 + 2))
  {

    _dispatch_timer_unote_resume(a1);
  }
}

double _dispatch_source_timer_create(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3 & 0xFFFFFFFD;
  }

  else
  {
    v3 = a3;
  }

  if ((v3 & ~*(a1 + 20)) == 0)
  {
    v4 = a1;
    if ((*(a1 + 11) & 0x10) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (*(a1 + 8) != 236)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v3 |= 4u;
          }

          else
          {
            if (a2 != 3)
            {
              return result;
            }

            v3 |= 8u;
          }
        }

        else
        {
          if (!a2)
          {
            goto LABEL_21;
          }

          if (a2 != 1)
          {
            return result;
          }
        }

        v4 = &_dispatch_source_type_timer_with_clock;
        goto LABEL_21;
      }

      if (a2)
      {
        return result;
      }
    }

LABEL_21:
    v5 = *(v4 + 6);
    v6 = _dispatch_calloc_typed();
    *v6 = v4;
    *(v6 + 28) = *(v4 + 8);
    *(v6 + 29) |= 2u;
    v7 = *(v4 + 11) | v3 | *(v6 + 30);
    *(v6 + 30) = v7;
    *(v6 + 24) = 3 * ((v7 >> 2) & 3) + (v7 & 3);
    result = NAN;
    *(v6 + 112) = -1;
    *(v6 + 80) = -1;
    *(v6 + 88) = -1;
    *(v6 + 96) = -1;
  }

  return result;
}

void _dispatch_event_loop_drain_timers(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v59[0] = 0;
  v59[1] = 0;
  v4 = a2;
  v60 = 0;
  do
  {
    if (v2)
    {
      v5 = 0;
      while (1)
      {
        v6 = a1 + 32 * v5;
        v9 = *(v6 + 8);
        v8 = (v6 + 8);
        v7 = v9;
        if (v9)
        {
          break;
        }

LABEL_39:
        if (++v5 == v4)
        {
          goto LABEL_40;
        }
      }

      v10 = v5 / 3uLL;
      while (1)
      {
        v11 = v59[v10];
        if (!v11)
        {
          v61 = 0;
          v62 = 0;
          mach_get_times();
          v60 = v62 + 1000000000 * v61;
          v11 = v59[v10];
        }

        v12 = *(v7 + 80);
        v13 = v11 >= v12;
        v14 = v11 - v12;
        if (!v13)
        {
          goto LABEL_39;
        }

        if ((*(v7 + 30) & 0x40) != 0)
        {
          _dispatch_timer_unote_disarm(v7, a1);
          v23 = *(v7 + 16) & 0xFFFFFFFFFFFFFFFCLL;
          if (v23 != -4 && v23 != 0)
          {
            add_explicit = atomic_fetch_add_explicit((v23 + 96), 0xFFFFFFFF, memory_order_relaxed);
            if (add_explicit <= 0)
            {
              if (add_explicit < 0)
              {
                _dispatch_runloop_root_queue_perform_4CF_cold_2();
              }

              *(v23 + 56) = 0xDEAD000000000000;
              _dispatch_object_dealloc(v23);
            }
          }

          _dispatch_event_loop_drain_timers_cold_2((v7 + 16), v7);
          goto LABEL_27;
        }

        if (!*(v7 + 104))
        {
          break;
        }

        _dispatch_timer_unote_configure(v7);
LABEL_27:
        v7 = *v8;
        if (!*v8)
        {
          goto LABEL_39;
        }
      }

      if (*(v7 + 72))
      {
        v22.n128_f64[0] = _dispatch_timer_unote_disarm(v7, a1);
        atomic_fetch_or_explicit((v7 + 72), 1uLL, memory_order_relaxed);
      }

      else
      {
        v15 = *(v7 + 96);
        v16 = v14 / v15;
        if (v16 + 1 < 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16 + 1;
        }

        else
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v15 > 0x7FFFFFFFFFFFFFFELL)
        {
          *(v7 + 80) = -1;
          *(v7 + 88) = -1;
          v20 = 1;
        }

        else
        {
          v18 = v17 * v15 + v12;
          v19 = *(v7 + 88) + v17 * v15;
          *(v7 + 80) = v18;
          *(v7 + 88) = v19;
          v20 = v18 > 0x7FFFFFFFFFFFFFFELL;
        }

        v21 = 2 * v17;
        if (*(55 - *(v7 + 8)) >> 55)
        {
          _dispatch_event_loop_drain_timers_cold_4();
        }

        else if (*(v7 + 24) != -1 && !v20)
        {
          if (*(7 - *(v7 + 8)) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - *(v7 + 8)), 2u, memory_order_relaxed) <= 0)
          {
            dispatch_set_target_queue_cold_2();
          }

          _dispatch_timer_unote_arm(v7, a1, v5);
          *(v7 + 72) = v21;
          goto LABEL_26;
        }

        v22.n128_f64[0] = _dispatch_timer_unote_disarm(v7, a1);
        atomic_store(v21 | 1, (v7 + 72));
      }

LABEL_26:
      (*(*v7 + 48))(v7, 16, 0, 0, v22);
      goto LABEL_27;
    }

LABEL_40:
    v58 = v4;
    *(a1 + 6);
    *(a1 + 6) = 0;
    if (!v2)
    {
      return;
    }

    v57 = v2;
    v26 = 0;
    do
    {
      v27 = a1 + 32 * v26;
      v28 = (v27 + 7);
      if ((*(v27 + 7) & 2) == 0)
      {
        goto LABEL_86;
      }

      v29 = v26 / 3;
      v30 = v26 % 3;
      v32 = (v27 + 8);
      v31 = *(v27 + 8);
      if (v31)
      {
        v33 = *(v31 + 80);
        v34 = *(*(v27 + 16) + 88);
        v35 = v59[v29];
        if (!v35)
        {
          v61 = 0;
          v62 = 0;
          mach_get_times();
          v60 = v62 + 1000000000 * v61;
          v35 = v59[v29];
        }

        if (v33 <= v35)
        {
          goto LABEL_82;
        }

        v36 = *v27;
        if (*v27 >= 3u)
        {
          v37 = _dispatch_kevent_coalescing_window[v30];
          if (v37 + v33 < v34)
          {
            v38 = v34 - v37;
            v33 = *(*(v27 + 8) + 80);
            v39 = *(v27 + 4);
            v40 = 2;
            do
            {
              if (v40 > 1)
              {
                v42 = __clz((v40 - 2) | 7);
                v43 = (v27 + 24);
                if (30 - v42 != v39)
                {
                  v43 = (*(v27 + 24) + 8 * ((8 << (v39 - 2)) - 30 + v42));
                }

                v44 = *v43;
                if (v42 == 29)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = -8 << (28 - v42);
                }

                v41 = (v44 + 8 * (v45 + v40 - 2));
              }

              else
              {
                v41 = &v32[v40];
              }

              v46 = *(*v41 + 80);
              if (v46 <= v33)
              {
                v47 = v33;
              }

              else
              {
                v47 = v46;
              }

              v48 = (v40 & 0xFFFFFFFE) + 2;
              if (v48 == v36)
              {
                v49 = ((v40 - 2) >> 1) & 0x7FFFFFFE;
              }

              else
              {
                v49 = v40 & 0xFFFFFFFE;
              }

              v50 = (v49 + 3) >> __clz(__rbit32(-4 - v49));
              v51 = v40 & 1 | (2 * v50);
              if (!v50)
              {
                v51 = -1;
              }

              if (2 * v40 - (v40 & 1) + 2 < v36)
              {
                v51 = 2 * v40 - (v40 & 1) + 2;
              }

              if (v48 == v36)
              {
                v52 = ((v40 - 2) >> 1) & 0x7FFFFFFE;
              }

              else
              {
                v52 = v40 & 0xFFFFFFFE;
              }

              v53 = (v52 + 3) >> __clz(__rbit32(-4 - v52));
              v40 = v40 & 1 | (2 * v53);
              if (!v53)
              {
                v40 = -1;
              }

              if (v46 <= v38)
              {
                v40 = v51;
                v33 = v47;
              }
            }

            while (v40 < v36);
          }
        }

        v54 = 0x7FFFFFFFFFFFFFFFLL;
        if (v33 - v35 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v33 - v35;
        }

        if (v34 - v33 < 0x7FFFFFFFFFFFFFFFLL)
        {
          v54 = v34 - v33;
        }

        if (v33 == v35)
        {
LABEL_82:
          *(a1 + 6) |= (1 << v30) | 0x80;
        }

        else if ((v55 - 0x7FFFFFFFFFFFFFFFLL) > 0x8000000000000001)
        {
          _dispatch_trace_next_timer[v30] = *v32;
          v4 = v58;
          _dispatch_event_loop_timer_arm(a1, v26, v55, v54, v59);
          *(v27 + 7) = *(v27 + 7) & 0xFC | 1;
          goto LABEL_86;
        }
      }

      _dispatch_trace_next_timer[v30] = 0;
      v56 = *v28;
      if (*v28)
      {
        _dispatch_event_loop_timer_delete(a1, v26);
        v56 = *v28;
      }

      *v28 = v56 & 0xFC;
      v4 = v58;
LABEL_86:
      ++v26;
    }

    while (v26 != v4);
    v2 = v57;
  }

  while (*(a1 + 6));
}

double _dispatch_timer_unote_disarm(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  v6 = a2 + 32 * v4;
  v7 = *v6;
  v8 = *v6 - 2;
  *v6 = v8;
  if (v7 == 2)
  {
    *(v6 + 7) |= 2u;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  else
  {
    v23 = v4;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = v8 + v9;
      if (v8 + v9 > 1)
      {
        v14 = *(v6 + 4);
        v15 = v12 - 2;
        v16 = __clz(v15 | 7);
        v17 = (v6 + 24);
        if (30 - v16 != v14)
        {
          v17 = (*(v6 + 24) + 8 * ((8 << (v14 - 2)) + v16 - 30));
        }

        if (v16 == 29)
        {
          v18 = 0;
        }

        else
        {
          v18 = -8 << (28 - v16);
        }

        v13 = (*v17 + 8 * (v18 + v15));
      }

      else
      {
        v13 = (v6 + 8 + 8 * v12);
      }

      v19 = *v13;
      *v13 = 0;
      if (v19 != a1)
      {
        _dispatch_timer_heap_resift(v6, v19, *(a1 + 112 + 4 * v9));
      }

      v10 = 0;
      v9 = 1;
    }

    while ((v11 & 1) != 0);
    v20 = *(v6 + 4);
    if (v20 == 1)
    {
      v21 = 2;
    }

    else
    {
      v21 = (8 << (v20 - 2)) - v20 + 4;
    }

    LODWORD(v4) = v23;
    v2 = a2;
    if (v8 <= v21)
    {
      _dispatch_timer_heap_shrink(v6);
    }
  }

  result = NAN;
  *(a1 + 112) = -1;
  *(v2 + 6) |= (1 << (v4 % 3)) | 0x80;
  *(a1 + 16) &= ~1uLL;
  return result;
}

uint64_t _dispatch_timer_unote_arm(uint64_t result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  if (*(result + 16))
  {
    _dispatch_timer_heap_resift(a2 + 32 * a3, result, *(result + 112));
    result = _dispatch_timer_heap_resift(a2 + 32 * a3, v5, *(v5 + 116));
  }

  else
  {
    *(result + 24) = a3;
    v6 = a2 + 32 * a3;
    v7 = *v6;
    v8 = *v6 + 2;
    *v6 = v8;
    v9 = *(result + 36);
    v10 = (v9 >> 8) & 0xF;
    v11 = v9 >> 12;
    if (v10 > v11)
    {
      v11 = v10;
    }

    if (v11 > *(v6 + 5))
    {
      *(v6 + 5) = v11;
      *(v6 + 7) |= 2u;
    }

    if (v7)
    {
      if (*(v6 + 4))
      {
        v12 = (8 << (*(v6 + 4) - 1)) - *(v6 + 4) + 3;
      }

      else
      {
        v12 = 2;
      }

      if (v8 > v12)
      {
        _dispatch_timer_heap_grow(a2 + 32 * a3);
      }

      _dispatch_timer_heap_resift(a2 + 32 * a3, v5, v7);
      result = _dispatch_timer_heap_resift(a2 + 32 * a3, v5, v7 + 1);
    }

    else
    {
      *(v6 + 7) |= 2u;
      *(result + 112) = 0x100000000;
      *(v6 + 8) = result;
      *(v6 + 16) = result;
    }

    *(v5 + 16) |= 1uLL;
  }

  *(a2 + 6) |= (1 << (a3 % 3)) | 0x80;
  return result;
}

uint64_t _dispatch_timer_heap_resift(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *result;
  v4 = a3 & 1;
  v5 = *(result + 4);
  v6 = a3 - 2;
  if (a3 < 2)
  {
    v7 = (result + 8 * a3 + 8);
LABEL_22:
    v20 = a3 & 1;
    v21 = 2 * a3 - v20 + 2;
    if (v21 < v3)
    {
      v22 = (result + 24);
      v23 = (8 << (v5 - 2)) - 30;
      v24 = result + 8;
      while (1)
      {
        if (v21 > 1)
        {
          v25 = __clz((v21 - 2) | 7);
          v26 = (result + 24);
          if (30 - v25 != v5)
          {
            v26 = (*v22 + 8 * (v23 + v25));
          }

          v27 = *v26;
          v28 = v25 == 29 ? 0 : -8 << (28 - v25);
          v14 = (v27 + 8 * (v28 + v21 - 2));
        }

        else
        {
          v14 = (v24 + 8 * v21);
        }

        v29 = *v14;
        if (v21 + 2 >= v3)
        {
          v13 = v21;
        }

        else
        {
          if (v21 < 0xFFFFFFFE)
          {
            v31 = __clz(v21 | 7);
            v32 = (result + 24);
            if (30 - v31 != v5)
            {
              v32 = (*v22 + 8 * (v23 + v31));
            }

            v33 = *v32;
            v34 = v31 == 29 ? 0 : -8 << (28 - v31);
            v30 = (v33 + 8 * (v34 + v21));
          }

          else
          {
            v30 = (v24 + 8 * (v21 + 2));
          }

          v13 = v21;
          if (*(v29 + 8 * v4 + 80) > *(*v30 + 8 * v4 + 80))
          {
            v29 = *v30;
            v13 = v21 + 2;
            v14 = v30;
          }
        }

        if (*(a2 + 80 + 8 * v4) <= *(v29 + 8 * v4 + 80))
        {
          break;
        }

        if (a3 <= 1)
        {
          *(result + 7) |= 2u;
        }

        *v7 = v29;
        *(v29 + 4 * v20 + 112) = a3;
        v20 = v13 & 1;
        v21 = 2 * v13 - v20 + 2;
        a3 = v13;
        v7 = v14;
        if (v21 >= v3)
        {
          goto LABEL_50;
        }
      }
    }

    v14 = v7;
    v13 = a3;
    goto LABEL_50;
  }

  v8 = __clz(v6 | 7);
  if (30 - v8 == v5)
  {
    v9 = (result + 24);
  }

  else
  {
    v9 = (*(result + 24) + 8 * (v8 + (8 << (v5 - 2)) - 30));
  }

  v10 = 0;
  if (v8 == 29)
  {
    v11 = 0;
  }

  else
  {
    v11 = -8 << (28 - v8);
  }

  v7 = (*v9 + 8 * (v11 + v6));
  while (1)
  {
    v12 = a3 - 2;
    v13 = a3 & 1 | (2 * ((a3 - 2) >> 2));
    if (a3 - 2 > 3)
    {
      v15 = __clz((v13 - 2) | 7);
      v16 = (result + 24);
      if (30 - v15 != v5)
      {
        v16 = (*(result + 24) + 8 * ((8 << (v5 - 2)) - 30 + v15));
      }

      v17 = *v16;
      v18 = v15 == 29 ? 0 : -8 << (28 - v15);
      v14 = (v17 + 8 * (v18 + v13 - 2));
    }

    else
    {
      v14 = (result + 8 + 8 * v13);
    }

    v19 = *v14;
    if (*(*v14 + 8 * v4 + 80) <= *(a2 + 80 + 8 * v4))
    {
      break;
    }

    *v7 = v19;
    *(v19 + 4 * (a3 & 1) + 112) = a3;
    v10 = 1;
    a3 = a3 & 1 | (2 * (v12 >> 2));
    v7 = v14;
    if (v12 <= 3)
    {
      goto LABEL_50;
    }
  }

  v14 = v7;
  v13 = a3;
  if ((v10 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_50:
  if (v13 <= 1)
  {
    *(result + 7) |= 2u;
  }

  *v14 = a2;
  *(a2 + 4 * (v13 & 1) + 112) = v13;
  return result;
}

void _dispatch_timer_heap_shrink(uint64_t a1)
{
  v2 = *(a1 + 4) - 1;
  *(a1 + 4) = v2;
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = v2;
    v5 = 8 << (v2 - 1);
    v6 = v3[v5 - v2];
    v7 = v2 - 1;
    if (v4 != 1)
    {
      memcpy((v6 + 8 * ((v5 >> 1) - v7)), &v3[v5 - v7], 8 * v7);
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = v6;

  free(v3);
}

uint64_t _dispatch_timer_heap_grow(uint64_t a1)
{
  v2 = *(a1 + 4);
  *(a1 + 4) = v2 + 1;
  v3 = *(a1 + 24);
  v4 = 8 << (v2 - 1);
  result = _dispatch_calloc_typed();
  v6 = result;
  if (v2 >= 2)
  {
    result = memcpy((result + 8 * (v4 - (v2 - 1))), (v3 + 8 * ((v4 >> 1) - (v2 - 1))), 8 * (v2 - 1));
LABEL_4:
    *(v6 + 8 * (v4 - v2)) = v3;
    goto LABEL_5;
  }

  if (v2)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(a1 + 24) = v6;
  return result;
}

uint64_t _dispatch_sync_ipc_handoff_begin(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = 655343;
  v4[2] = a1;
  v5 = -2147483392;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = a3;
  v10 = -1;
  v11 = a1;
  result = _dispatch_kq_immediate_update(a1, v4);
  if ((result & 0xFFFFFFFD) != 0)
  {
    _dispatch_sync_ipc_handoff_begin_cold_1(result);
  }

  return result;
}

uint64_t _dispatch_kq_immediate_update(uint64_t a1, uint64_t a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (v2 && *(v2 + 24) == a1)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    if (*(v2 + 48))
    {
      v5 = 0;
      for (i = (v3 + 16); *(i - 4) != *(a2 + 8) || *(i - 2) != *a2 || *i != *(a2 + 16); i += 9)
      {
        if (v4 == ++v5)
        {
          return _dispatch_kq_drain(a1, a2, 1, 3);
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 < v4)
    {
      v7 = v4 - 1;
      *(v2 + 48) = v7;
      if (v5 != v7)
      {
        v8 = v3 + 72 * v5;
        v9 = v3 + 72 * v7;
        *v8 = *v9;
        v10 = *(v9 + 16);
        v11 = *(v9 + 32);
        v12 = *(v9 + 48);
        *(v8 + 64) = *(v9 + 64);
        *(v8 + 32) = v11;
        *(v8 + 48) = v12;
        *(v8 + 16) = v10;
      }
    }
  }

  return _dispatch_kq_drain(a1, a2, 1, 3);
}

void *_dispatch_sync_ipc_handoff_end(void *a1, unsigned int a2)
{
  v3[0] = a2;
  v3[1] = 524271;
  v3[2] = a1;
  v4 = 0x80000000;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  return _dispatch_kq_deferred_update(a1, v3);
}

void *_dispatch_kq_deferred_update(void *result, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 232);
  if (v3 && *(v3 + 24) == result && (v4 = *(v3 + 50), *(v3 + 50)))
  {
    v5 = *(v3 + 48);
    if (*(v3 + 48))
    {
      v6 = 0;
      v7 = (*(v3 + 40) + 16);
      while (*(v7 - 4) != *(a2 + 8) || *(v7 - 2) != *a2 || *v7 != *(a2 + 16))
      {
        ++v6;
        v7 += 9;
        if (v5 == v6)
        {
          LODWORD(v6) = *(v3 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (result != -4)
    {
      *(StatusReg + 40) = 1;
    }

    if (v6 != v4)
    {
      if (v6 == v5)
      {
        *(v3 + 48) = v5 + 1;
        LODWORD(v6) = v5;
      }

      goto LABEL_20;
    }

    v16 = v3;
    v17 = a2;
    *(v3 + 48) = 1;
    v13 = *(v3 + 32);
    v12 = *(v3 + 40);
    *(v3 + 32) = 0;
    result = _dispatch_kq_drain(result, v12, v5, 3);
    if (!v13)
    {
      goto LABEL_25;
    }

    result = v13;
    v14 = 0;
    do
    {
      v15 = result[1];
      free(result);
      ++v14;
      result = v15;
    }

    while (v15);
    if (v14 < 0x11u)
    {
LABEL_25:
      LODWORD(v6) = 0;
      v3 = v16;
      a2 = v17;
LABEL_20:
      v8 = *(v3 + 40) + 72 * v6;
      *v8 = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      *(v8 + 64) = *(a2 + 64);
      *(v8 + 32) = v10;
      *(v8 + 48) = v11;
      *(v8 + 16) = v9;
      return result;
    }

    qword_78298 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
    qword_782C8 = v14;
    __break(1u);
  }

  else
  {

    return _dispatch_kq_drain(result, a2, 1, 3);
  }

  return result;
}

uint64_t _dispatch_unote_register_muxed(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = v2 >> 8;
  if ((v3 | 0x10) != 0xF8)
  {
    LODWORD(v4) = *(a1 + 24);
  }

  v5 = (&_dispatch_sources + 8 * (v4 & 0x3F));
  v6 = *v5;
  if (!*v5)
  {
LABEL_7:
    v7 = _dispatch_calloc_typed();
    v6 = v7;
    *(v7 + 24) = *(a1 + 24);
    v8 = v7 + 24;
    v9 = *(*a1 + 12) | 5;
    v10 = *(*a1 + 16) | *(a1 + 32);
    v11 = *(*a1 + 14);
    *(v7 + 32) = *(*a1 + 8);
    *(v7 + 34) = v9;
    *(v7 + 48) = v10;
    *(v7 + 56) = v11;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 36) = 0x2000000;
    *(v7 + 40) = v7 | 1;
    v12 = *(*a1 + 40);
    if (v12)
    {
      if ((v12(v7, v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (_dispatch_kq_immediate_update(-4, v8))
    {
LABEL_9:
      free(v6);
      return 0;
    }

    *(v6 + 17) &= 0xFDFEu;
    v18 = *v5;
    *v6 = *v5;
    if (v18)
    {
      v18[1] = v6;
    }

    *v5 = v6;
    v6[1] = v5;
    goto LABEL_18;
  }

  while (v6[3] != v2 || *(v6 + 16) != v3)
  {
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v6 + 12);
  v16 = v14 & ~v15;
  if (v16)
  {
    *(v6 + 12) = v15 | v14;
    v17 = *(*a1 + 40);
    if (v17)
    {
      if ((v17(v6) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (_dispatch_kq_immediate_update(-4, (v6 + 3)))
    {
LABEL_13:
      result = 0;
      *(v6 + 12) &= ~v16;
      return result;
    }
  }

LABEL_18:
  v19 = v6 + 2;
  v20 = v6[2];
  *(a1 - 24) = v20;
  v21 = a1 - 24;
  if (v20)
  {
    *(v20 + 8) = v21;
  }

  *v19 = v21;
  *(a1 - 16) = v19;
  if (*(a1 + 28) == 232)
  {
    *(a1 + 30) = v6[8] != 0;
  }

  *(a1 - 8) = v6;
  *(a1 + 16) = -3;
  return 1;
}

void *_dispatch_unote_resume_muxed(void *a1)
{
  a1[2] |= 1uLL;
  v1 = *(*a1 + 40);
  v2 = *(a1 - 1);
  if (v1)
  {
    return v1(v2);
  }

  else
  {
    return _dispatch_kq_deferred_update(0xFFFFFFFFFFFFFFFCLL, v2 + 24);
  }
}

uint64_t _dispatch_unote_unregister_muxed(uint64_t *a1)
{
  v1 = *(a1 - 1);
  if (v1[16] == -24)
  {
    *(a1 + 30) = 0;
  }

  a1[2] = 0;
  v2 = *(a1 - 3);
  v3 = *(a1 - 2);
  if (v2)
  {
    *(v2 + 8) = v3;
  }

  *v3 = v2;
  *(a1 - 1) = 0;
  v4 = *(v1 + 2);
  if (v4)
  {
    v5 = *(*a1 + 16);
    v6 = *(v1 + 2);
    do
    {
      v7 = v6;
      v5 |= *(v6 + 14);
      v6 = *v6;
    }

    while (v6);
    v8 = *(v1 + 12);
    if ((v8 & ~v5) == 0)
    {
      return 1;
    }

    a1 = v7 + 3;
    *(v1 + 12) = v8 & v5;
  }

  else
  {
    v9 = v1[17];
    v1[17] = v9 | 2;
    if ((v9 & 2) != 0)
    {
LABEL_14:
      v11 = *v1;
      v12 = *(v1 + 1);
      if (*v1)
      {
        *(v11 + 8) = v12;
      }

      *v12 = v11;
      free(v1);
      return 1;
    }
  }

  v10 = *(*a1 + 40);
  if (v10)
  {
    if ((v10(v1) & 1) == 0)
    {
      _dispatch_bug(1282, 0);
    }
  }

  else
  {
    _dispatch_kq_deferred_update(-4, v1 + 12);
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  return 1;
}

void _dispatch_kq_unote_update(uint64_t a1, uint64_t *a2, __int16 a3)
{
  v4 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 232);
  if (a3)
  {
    if (a1 != -4 && a1 && (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_66;
    }

    a2[2] = a1 | 1;
  }

  if (!v8 || *(v8 + 24) != a1)
  {
    goto LABEL_8;
  }

  v21 = *(v8 + 40);
  v22 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v23 = 0;
    v24 = (v21 + 16);
    while (*(v24 - 4) != *(a2 + 28) || *(v24 - 2) != *(a2 + 6) || *v24 != a2)
    {
      ++v23;
      v24 += 9;
      if (v22 == v23)
      {
        LODWORD(v23) = *(v8 + 48);
        goto LABEL_40;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  if (v23 >= v22)
  {
LABEL_40:
    if ((v4 & 5) != 4)
    {
      goto LABEL_8;
    }

LABEL_41:
    if (a1 != -4)
    {
      *(StatusReg + 40) = 1;
    }

    if (v23 != *(v8 + 50))
    {
      if (v23 == v22)
      {
        *(v8 + 48) = v22 + 1;
        LODWORD(v23) = v22;
      }

      goto LABEL_46;
    }

LABEL_66:
    *(v8 + 48) = 1;
    v41 = *(v8 + 32);
    v40 = *(v8 + 40);
    v43 = v8;
    *(v8 + 32) = 0;
    _dispatch_kq_drain(a1, v40);
    if (v41)
    {
      v3 = 0;
      do
      {
        v42 = v41[1];
        free(v41);
        ++v3;
        v41 = v42;
      }

      while (v42);
      if (v3 >= 0x11u)
      {
        goto LABEL_73;
      }
    }

    LODWORD(v23) = 0;
    v8 = v43;
LABEL_46:
    v30 = *(v8 + 40) + 72 * v23;
    v31 = *a2;
    if (*a2)
    {
      v32 = *a2;
    }

    v33 = *(v31 + 12) | v4;
    if ((v33 & 0x201) == 0x200)
    {
      v33 &= 0xFDFEu;
    }

    v34 = *(v31 + 8);
    v35 = *(a2 + 9);
    if ((v35 & 0x4000000) != 0)
    {
      v36 = v35 & 0x8E000000 | 0xFF;
      LOWORD(v35) = v35 >> 12;
    }

    else
    {
      v36 = v35 & 0x8A0000FF;
      v35 = (v35 >> 8) & 0xF;
      if (!v35)
      {
LABEL_55:
        v19 = 0;
        v37 = *(v31 + 16) | *(a2 + 8);
        v38 = *(v31 + 14);
        *v30 = *(a2 + 6);
        *(v30 + 8) = v34;
        *(v30 + 10) = v33;
        *(v30 + 12) = v36;
        *(v30 + 16) = a2;
        *(v30 + 24) = v37;
        *(v30 + 32) = v38;
        *(v30 + 40) = 0u;
        *(v30 + 56) = 0u;
        if ((v4 & 3) != 2)
        {
          return;
        }

        goto LABEL_56;
      }
    }

    v36 |= 256 << (v35 - 1);
    goto LABEL_55;
  }

  v4 |= *(v21 + 72 * v23 + 10) & 4;
  if ((v4 & 5) == 4)
  {
    goto LABEL_41;
  }

  *(v8 + 48) = v22 - 1;
  if (v23 != (v22 - 1))
  {
    v25 = v21 + 72 * v23;
    v26 = v21 + 72 * (v22 - 1);
    *v25 = *v26;
    v27 = *(v26 + 16);
    v28 = *(v26 + 32);
    v29 = *(v26 + 48);
    *(v25 + 64) = *(v26 + 64);
    *(v25 + 32) = v28;
    *(v25 + 48) = v29;
    *(v25 + 16) = v27;
  }

LABEL_8:
  v9 = *a2;
  if (*a2)
  {
    v10 = *a2;
  }

  v11 = *(v9 + 12) | v4;
  if ((v11 & 0x201) == 0x200)
  {
    v11 &= 0xFDFEu;
  }

  v12 = *(a2 + 6);
  v13 = *(v9 + 8);
  v14 = *(a2 + 9);
  if ((v14 & 0x4000000) != 0)
  {
    v15 = v14 & 0x8E000000 | 0xFF;
    LOWORD(v14) = v14 >> 12;
  }

  else
  {
    v15 = v14 & 0x8A0000FF;
    v14 = (v14 >> 8) & 0xF;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  v15 |= 256 << (v14 - 1);
LABEL_17:
  v16 = *(v9 + 16) | *(a2 + 8);
  v17 = *(v9 + 14);
  v52 = 0u;
  v53 = 0u;
  v44 = v12;
  v45 = v13;
  v46 = v11;
  v47 = v15;
  v48 = a2;
  v49 = v16;
  v50 = 0;
  v51 = v17;
  v18 = _dispatch_kq_drain(a1, &v44);
  v19 = v18;
  if (v4)
  {
    if (!v18)
    {
      return;
    }

    if (a1 != -4)
    {
      if (a1)
      {
        add_explicit = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
LABEL_72:
            qword_78298 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_73:
            qword_78298 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
            qword_782C8 = v3;
            __break(1u);
            return;
          }

          *(a1 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(a1);
        }
      }
    }

    a2[2] = 0;
    return;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_62;
  }

  if (v18 == 36)
  {
    return;
  }

LABEL_56:
  if (a1 == -4)
  {
    goto LABEL_61;
  }

  if (!a1)
  {
    goto LABEL_61;
  }

  v39 = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed);
  if (v39 > 0)
  {
    goto LABEL_61;
  }

  if (v39 < 0)
  {
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_72;
  }

  *(a1 + 56) = 0xDEAD000000000000;
  _dispatch_object_dealloc(a1);
LABEL_61:
  a2[2] = 0;
LABEL_62:
  if (v19)
  {
    _dispatch_bug(1123, v19);
  }
}

void _dispatch_unote_dispose_defer(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (*(v1 + 48))
  {
    v4 = 0;
    v5 = (v2 + 16);
    while (*(v5 - 4) != *(a1 + 28) || *(v5 - 2) != *(a1 + 24) || *v5 != a1)
    {
      ++v4;
      v5 += 9;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < v3)
  {
    v6 = *(v2 + 72 * v4 + 10);
    if ((v6 & 2) == 0)
    {
      _dispatch_unote_dispose_defer_cold_1(v6);
    }

    *(a1 + 8) = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
LABEL_13:

    free(a1);
  }
}

void *_dispatch_free_deferred_unotes(void *result)
{
  if (result)
  {
    v1 = 0;
    do
    {
      v2 = result[1];
      free(result);
      ++v1;
      result = v2;
    }

    while (v2);
    if (v1 >= 0x11u)
    {
      _dispatch_free_deferred_unotes_cold_1(v1);
    }
  }

  return result;
}

void _dispatch_event_loop_poke(uint64_t a1, uint64_t a2, uint64_t (***a3)())
{
  if (a1 == -8)
  {
    v25 = 65526;
    memset(v27, 0, sizeof(v27));
    v28 = 0u;
    v24 = 1;
    v26 = -8;
    LODWORD(v27[0]) = 0x1000000;
    _dispatch_kq_deferred_update(-4, &v24);
    return;
  }

  if (a1 == -4 || !a1)
  {
    goto LABEL_54;
  }

  if ((a2 & 0x4000000000) != 0)
  {
    v3 = &_dispatch_mgr_q;
LABEL_49:
    v15 = (*v3)[9];

    (v15)(v3, a1, 0);
    return;
  }

  v3 = a3;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (!v5 || (v6 = *(v5 + 24), v6 != a1))
  {
    if (a2)
    {
      v11 = *(*(a1 + 24) + 84);
      if ((v11 & 0x8000000) != 0)
      {
        goto LABEL_59;
      }

      v12 = (v11 >> 8) & 0xF;
      if (v12 <= (BYTE4(a2) & 7u))
      {
        v12 = BYTE4(a2) & 7;
      }

      if (v12 <= 1)
      {
        LOBYTE(v12) = 1;
      }

      v13 = 128 << v12;
      v8 = a2 & 2 | 0x3700000001;
      v7 = v13 | v11 & 0x80000000 | 0xFF;
      if ((a2 & 2) != 0)
      {
        v10 = 401;
      }

      else
      {
        v10 = 273;
      }

      v9 = 5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      v9 = 7;
      v10 = 1;
    }

    v24 = a1;
    LOWORD(v25) = -17;
    WORD1(v25) = v9;
    HIDWORD(v25) = v7;
    v26 = a1;
    LODWORD(v27[0]) = v10;
    memset(v27 + 4, 0, 20);
    *(&v27[1] + 1) = a1 + 56;
    *&v28 = v8;
    *(&v28 + 1) = a2;
    if (!_dispatch_kq_poll(a1, &v24, 1, &v24, 1, 0, 0, 3))
    {
      if ((v3 & 0x80000000) != 0)
      {
        if (v3)
        {
          _os_object_release_internal_n(a1, 2);
        }
      }

      else
      {
        _os_object_release_internal(a1);
      }

      return;
    }

LABEL_55:
    LODWORD(v16) = DWORD2(v27[0]);
    v17 = WORD1(v25) & 0xBFFF;
    WORD1(v25) &= ~0x4000u;
    DWORD1(v27[0]) = DWORD2(v27[0]);
    *(&v27[0] + 1) = 0;
    if (DWORD1(v27[0]) != 105)
    {
      if (v16 != 34)
      {
        if (v16 == 2)
        {
          v11 = (LODWORD(v27[0]) << 32) | (v17 << 16) | 2;
          qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_782C8 = v11;
          __break(1u);
LABEL_59:
          qword_78298 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
          qword_782C8 = v11;
          __break(1u);
          if (*(&stru_20.fileoff + v3))
          {
            v18 = *(&stru_20.fileoff + v3);
          }

          v16 = *a1;
          if (*a1 >= 0x1000uLL)
          {
            v19 = *(v16 + 24);
            v20 = *(a1 + 32);
            goto LABEL_49;
          }

LABEL_66:
          v21 = *(a1 + 40);
          if ((v16 & 1) == 0)
          {
            if ((v16 & 0x10) != 0)
            {
              if (*(v21 + 16))
              {
                v23 = *(v21 + 16);
              }
            }

            else
            {
              v22 = *(a1 + 32);
            }
          }

          goto LABEL_49;
        }

LABEL_65:
        qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_782C8 = v16;
        __break(1u);
        goto LABEL_66;
      }

      qword_78298 = "BUG IN LIBDISPATCH: Broken priority";
      qword_782C8 = SHIDWORD(v25);
      __break(1u);
    }

    LODWORD(v16) = DWORD2(v28);
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
    qword_782C8 = *(&v28 + 1);
    __break(1u);
    goto LABEL_65;
  }

  if ((*(v5 + 53) & 4) == 0)
  {
    if (*(v5 + 53))
    {
      if ((a3 & 1) == 0 || *(v6 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFE, memory_order_release) > 2)
      {
        return;
      }

      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
      goto LABEL_41;
    }

    if ((a3 & 0x80000000) != 0)
    {
      v14 = *(v6 + 8);
      if (a3)
      {
        if (v14 != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
        {
LABEL_53:
          qword_78298 = "API MISUSE: Over-release of an object";
          __break(1u);
LABEL_54:
          qword_78298 = "BUG IN LIBDISPATCH: Unsupported wlh configuration";
          qword_782C8 = a1;
          __break(1u);
          goto LABEL_55;
        }
      }

      else if (v14 != 0x7FFFFFFF && atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed) <= 0)
      {
        qword_78298 = "API MISUSE: Resurrection of an object";
        __break(1u);
        goto LABEL_31;
      }
    }

    *(v5 + 53) |= 3u;
    *v5 = *(v6 + 24);
    *(v5 + 8) = v6;
    *(v5 + 16) = BYTE4(a2) & 7;
    return;
  }

LABEL_31:
  if ((a3 & 0x80000000) == 0)
  {
    if (*(v6 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) > 1)
    {

      _dispatch_event_loop_leave_deferred(v5, a2);
      return;
    }

    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_53;
  }

LABEL_41:

  _dispatch_kevent_workloop_override_self(v5, a2, a3);
}

void _dispatch_event_loop_drain(int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 232);
  v4 = *(v3 + 24);
  v5 = v4 + 7;
  v6 = a1 & 3;
  while (1)
  {
    if ((*(v3 + 53) & 2) != 0)
    {
      v7 = *v5;
      *(v3 + 53) &= ~2u;
      v8 = *(v3 + 40);
      v9 = *(v3 + 48);
      if (*(v3 + 48))
      {
        v10 = 0;
        v11 = (v8 + 16);
        while (*(v11 - 4) != -17 || *(v11 - 2) != v4 || *v11 != v4)
        {
          ++v10;
          v11 += 9;
          if (v9 == v10)
          {
            LODWORD(v10) = *(v3 + 48);
            goto LABEL_12;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 == v9)
      {
LABEL_12:
        *(v3 + 48) = v9 + 1;
      }

      v12 = *(v4[3] + 84);
      if ((v12 & 0x8000000) != 0)
      {
        goto LABEL_37;
      }

      v13 = (v12 >> 8) & 0xF;
      if (v13 <= (BYTE4(v7) & 7u))
      {
        v13 = BYTE4(v7) & 7;
      }

      v14 = v8 + 72 * v10;
      *v14 = v4;
      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      *(v14 + 8) = 393199;
      *(v14 + 12) = (128 << v15) | v12 & 0x80000000 | 0xFF;
      *(v14 + 16) = v4;
      if ((v7 & 2) != 0)
      {
        v16 = 401;
      }

      else
      {
        v16 = 273;
      }

      *(v14 + 24) = v16;
      *(v14 + 36) = 0;
      *(v14 + 28) = 0;
      *(v14 + 44) = 0;
      *(v14 + 48) = v5;
      *(v14 + 56) = v7 & 2 | 0x3700000001;
      *(v14 + 64) = v7;
    }

    v17 = *(v3 + 48);
    *(v3 + 48) = 0;
    v19 = *(v3 + 32);
    v18 = *(v3 + 40);
    *(v3 + 32) = 0;
    _dispatch_kq_drain(v4, v18, v17, a1);
    if (v19)
    {
      v20 = 0;
      do
      {
        v21 = v19[1];
        free(v19);
        ++v20;
        v19 = v21;
      }

      while (v21);
      if (v20 >= 0x11u)
      {
        break;
      }
    }

    if (v4 != -4)
    {
      if (v4)
      {
        if (*(*v4 + 16) == 18)
        {
          v22 = v4[6];
          if (v22)
          {
            if (*(v22 + 6))
            {
              _dispatch_event_loop_drain_timers(v22, 6u);
            }
          }
        }
      }
    }

    if (v6 != 1 || !*(StatusReg + 40))
    {
      return;
    }
  }

  v12 = v20;
  qword_78298 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
  qword_782C8 = v20;
  __break(1u);
LABEL_37:
  qword_78298 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
  qword_782C8 = v12;
  __break(1u);
}

uint64_t _dispatch_kq_drain(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 & 2) == 0)
  {
    v17 = 0x8000;
    bzero(v16, 0x8000uLL);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 40) = 0;
    result = _dispatch_kq_poll(a1, a2, a3, v18, 16, v16, &v17, a4);
    if (!result)
    {
      return result;
    }

    if ((v18[5] & 0x4000) != 0)
    {
      *(StatusReg + 40) = 1;
    }

    if (result >= 1)
    {
      v10 = result;
      v11 = v18;
      do
      {
        _dispatch_kevent_drain(v11);
        v11 += 36;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  v12 = _dispatch_kq_poll(a1, a2, a3, v18, 16, 0, 0, a4);
  if (v12 < 1)
  {
    return 0;
  }

  v13 = v12;
  result = 0;
  v14 = v13;
  v15 = v18;
  do
  {
    if ((v15[5] & 0x4000) != 0 && *(v15 + 4))
    {
      _dispatch_kevent_drain(v15);
      result = *(v15 + 8);
    }

    v15 += 36;
    --v14;
  }

  while (v14);
  return result;
}

void _dispatch_event_loop_merge(void *__src, unsigned int a2)
{
  LODWORD(v2) = a2;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v4 = *(v3 + 24);
  v5 = 72 * a2;
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFF0);
  memcpy(v6, __src, v5);
  *(v3 + 50) = 14;
  if (v2 >= 1)
  {
    v2 = v2;
    do
    {
      _dispatch_kevent_drain(v6);
      v6 += 72;
      --v2;
    }

    while (v2);
  }

  if (v4 == -4)
  {
    if (*(v3 + 8) && *(v3 + 48))
    {
      _dispatch_event_loop_drain(3);
    }
  }

  else if (*(*v4 + 16) == 18)
  {
    v7 = v4[6];
    if (v7)
    {
      if (*(v7 + 6))
      {
        _dispatch_event_loop_drain_timers();
      }
    }
  }
}

void _dispatch_kevent_drain(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 65526)
  {
    if (v1 == 65519)
    {
      _dispatch_kevent_workloop_poke_drain(a1);
      return;
    }

    v3 = *(a1 + 10);
    if ((v3 & 0x4000) != 0)
    {
      if (v1 != 65531 || *(a1 + 32) != 3)
      {
        _dispatch_kevent_print_error(a1);
        return;
      }

      *(a1 + 10) = 274;
      *(a1 + 24) = -2080374784;
      *(a1 + 32) = 0;
    }

    else if (v1 == 65528)
    {
      if (*(a1 + 48))
      {
        goto LABEL_13;
      }

      v6 = *(a1 + 24);
      if (v6 && (v6 & 0xFFFFC000) != 0x10004000)
      {
        qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from mach recv";
        qword_782C8 = v6 | (v3 << 32);
        __break(1u);
        return;
      }

      if (v6)
      {
LABEL_13:
        _dispatch_kevent_mach_msg_drain(a1);
        return;
      }
    }

    else if (v1 == 65529)
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      *(v4 + 6) |= (1 << (*a1 % 3u)) | 0x80;
      *(v4 + 32 * v5 + 7) = *(v4 + 32 * v5 + 7) & 0xFC | 2;
      return;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      _dispatch_kevent_merge_muxed(a1);
    }

    else
    {
      _dispatch_kevent_merge(v7, a1);
    }
  }
}

uint64_t _dispatch_event_loop_leave_immediate(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v2 = *(v1 + 24);
  *(v1 + 53) &= 0xFCu;
  v6 = v2;
  v7[0] = 524271;
  v7[1] = v2;
  v8 = 33;
  v9 = 0uLL;
  v10 = 0;
  v11 = v2 + 56;
  v12 = 0;
  v13 = a1;
  result = _dispatch_kq_poll(v2, &v6, 1, &v6, 1, 0, 0, 131075);
  if (result)
  {
    v4 = DWORD1(v9);
    v5 = WORD1(v7[0]) & 0xBFFF;
    WORD1(v7[0]) &= ~0x4000u;
    LODWORD(v9) = DWORD1(v9);
    *(&v9 + 4) = 0;
    if (v9 != 105)
    {
      if (v4 != 34)
      {
        if (v4 == 2)
        {
          _dispatch_event_loop_leave_immediate_cold_2(&v8, v5);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v4);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v7 + 1);
    }

    _dispatch_event_loop_leave_immediate_cold_3(&v13);
  }

  return result;
}

uint64_t _dispatch_kq_poll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  context = 0;
  if (_dispatch_kq_poll_pred != -1)
  {
    dispatch_once_f(&_dispatch_kq_poll_pred, &context, _dispatch_kq_init);
    if (context)
    {
      _dispatch_memorypressure_create(malloc_memorypressure_mask_default_4libdispatch);
      _voucher_activity_debug_channel_init();
    }
  }

  if (a1)
  {
    v10 = &_dispatch_kevent_workqueue_enabled;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      while (1)
      {
        if (a1 == -4)
        {
          v11 = v10;
          if (*v10)
          {
            a8 |= 0x20u;
          }

          result = kevent_qos();
        }

        else
        {
          v11 = v10;
          if ((a8 & 2) != 0)
          {
            v13 = 1024;
          }

          else
          {
            v13 = 132096;
          }

          a8 |= v13;
          result = kevent_id();
        }

        if (result != -1)
        {
          return result;
        }

        LODWORD(v14) = **(StatusReg + 8);
        if (v14 > 8)
        {
          break;
        }

        v10 = v11;
        if (v14 != 4)
        {
          goto LABEL_21;
        }
      }

      if (v14 != 12)
      {
        break;
      }

      _dispatch_temporary_resource_shortage();
      v10 = v11;
    }

    if (v14 == 9)
    {
      LODWORD(v14) = 9;
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Do not close random Unix descriptors";
      qword_782C8 = 9;
      __break(1u);
    }

LABEL_27:
    v14 = v14;
    goto LABEL_28;
  }

  LODWORD(v14) = 0;
  qword_78298 = "BUG IN LIBDISPATCH: Invalid wlh";
  qword_782C8 = 0;
  __break(1u);
LABEL_21:
  if (v14 != 2)
  {
    goto LABEL_27;
  }

  if ((~a8 & 0x20002) != 0)
  {
    while (1)
    {
      v14 = 2;
LABEL_28:
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected error from kevent";
      qword_782C8 = v14;
      __break(1u);
    }
  }

  return 0;
}

uint64_t _dispatch_event_loop_leave_deferred(uint64_t result, uint64_t a2)
{
  if ((~a2 & 0x2800000000) == 0)
  {
    v2 = a2 & 0xFFFFFFFC | 3;
    v3 = *(result + 24);
    if ((a2 & 0xFFFFFFFC) == 0)
    {
      v2 = 0;
    }

    v4 = *(result + 40);
    v5 = *(result + 48);
    if (*(result + 48))
    {
      v6 = 0;
      v7 = (v4 + 16);
      while (*(v7 - 4) != -17 || *(v7 - 2) != v3 || *v7 != v2)
      {
        ++v6;
        v7 += 9;
        if (v5 == v6)
        {
          LODWORD(v6) = *(result + 48);
          goto LABEL_13;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (v6 == v5)
    {
LABEL_13:
      *(result + 48) = v5 + 1;
    }

    v8 = v4 + 72 * v6;
    *v8 = v2;
    *(v8 + 8) = 655343;
    *(v8 + 16) = v3;
    *(v8 + 24) = 392;
    *(v8 + 36) = 0;
    *(v8 + 28) = 0;
    *(v8 + 44) = 0;
    *(v8 + 56) = 0x3800000002;
    *(v8 + 64) = a2;
    *(v8 + 48) = v3 + 56;
  }

  *(result + 53) &= 0xFCu;
  v9 = *(result + 24);
  v10 = *(result + 40);
  v11 = *(result + 48);
  if (*(result + 48))
  {
    v12 = 0;
    v13 = (v10 + 16);
    while (*(v13 - 4) != -17 || *(v13 - 2) != v9 || *v13 != v9)
    {
      ++v12;
      v13 += 9;
      if (v11 == v12)
      {
        LODWORD(v12) = *(result + 48);
        goto LABEL_24;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (v12 == v11)
  {
LABEL_24:
    *(result + 48) = v11 + 1;
  }

  if (a2)
  {
    result = *(*(v9 + 24) + 84);
    if ((result & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(result);
    }

    v18 = (result >> 8) & 0xF;
    if (v18 <= (BYTE4(a2) & 7u))
    {
      v18 = BYTE4(a2) & 7;
    }

    if (v18 <= 1)
    {
      LOBYTE(v18) = 1;
    }

    v19 = 128 << v18;
    v15 = a2 & 2 | 0x3700000001;
    v14 = v19 | result & 0x80000000 | 0xFF;
    if ((a2 & 2) != 0)
    {
      v17 = 401;
    }

    else
    {
      v17 = 273;
    }

    v16 = 5;
  }

  else
  {
    v14 = 0;
    v15 = 1;
    v16 = 7;
    v17 = 1;
  }

  v20 = v10 + 72 * v12;
  *v20 = v9;
  *(v20 + 8) = -17;
  *(v20 + 10) = v16;
  *(v20 + 12) = v14;
  *(v20 + 16) = v9;
  *(v20 + 24) = v17;
  *(v20 + 36) = 0;
  *(v20 + 28) = 0;
  *(v20 + 44) = 0;
  *(v20 + 48) = v9 + 56;
  *(v20 + 56) = v15;
  *(v20 + 64) = a2;
  return result;
}

uint64_t _dispatch_event_loop_cancel_waiter(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (1)
  {
    v8 = *(a1 + 100);
    v9[0] = 458735;
    v9[1] = v2;
    v10 = 40;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    result = _dispatch_kq_poll(v2, &v8, 1, &v8, 1, 0, 0, 3);
    if (!result)
    {
      break;
    }

    v4 = *(a1 + 106);
    v5 = DWORD1(v11);
    v6 = BYTE2(v9[0]);
    v7 = WORD1(v9[0]) & 0xBFFF;
    WORD1(v9[0]) &= ~0x4000u;
    LODWORD(v11) = DWORD1(v11);
    *(&v11 + 4) = 0;
    if (v11 != 2)
    {
      if (v5 != 34)
      {
        if (v5 == 105)
        {
          _dispatch_event_loop_cancel_waiter_cold_3(&v8);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v5);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v9 + 1);
    }

    if ((v4 & 0x20) != 0 || (v6 & 2) == 0 || (v10 & 0x28) != 0x28)
    {
      _dispatch_event_loop_cancel_waiter_cold_2(v10, v7);
    }

    thread_switch(*(a1 + 100), 4, 1u);
  }

  return result;
}

uint64_t _dispatch_event_loop_wake_owner(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(result + 48);
  if (a2 == -4 || (v8 = *(StatusReg + 232)) == 0 || *(v8 + 24) != a2 || (*(v8 + 53) &= 0xFCu, v7 != a2))
  {
    if ((a4 ^ a3))
    {
      v34 = a2;
      v35 = 524271;
      v36 = a2;
      v37 = 257;
      v38 = 0uLL;
      v39 = 0;
      v9 = 1;
      v40 = a2 + 56;
      v41 = 1;
      v42 = a4;
      if ((a4 & 0x2000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if ((a4 & 0x2000000000) == 0)
      {
LABEL_10:
        if ((a3 & 0x2000000002) == 0x2000000000 && (*(result + 106) & 0x80000000) == 0)
        {
          v11 = *(StatusReg + 24);
          v12 = &v34 + 9 * v9;
          *v12 = v11;
          v12[1] = 458735;
          v12[2] = a2;
          *(v12 + 6) = 40;
          *(v12 + 28) = 0u;
          *(v12 + 44) = 0u;
          *(v12 + 15) = 0;
          v12[8] = a3;
          v9 = (v9 + 1);
        }

        result = _dispatch_kq_poll(a2, &v34, v9, &v34, v9, 0, 0, 3);
        v14 = v7 != -4 && v7 != a2;
        if (result)
        {
          if (v14)
          {
            _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
          }

          v32 = DWORD1(v38);
          v33 = WORD1(v35) & 0xBFFF;
          WORD1(v35) &= ~0x4000u;
          LODWORD(v38) = DWORD1(v38);
          *(&v38 + 4) = 0;
          if (v38 != 105)
          {
            if (v32 != 34)
            {
              if (v32 == 2)
              {
                _dispatch_event_loop_wake_owner_cold_2(&v34, v33);
              }

              _dispatch_sync_ipc_handoff_begin_cold_1(v32);
            }

            _dispatch_event_loop_wake_owner_cold_1(&v34);
          }

          _dispatch_event_loop_cancel_waiter_cold_3(&v34);
        }

        if (v14)
        {
          _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
          return _dispatch_event_loop_cancel_waiter(v5);
        }

        return result;
      }
    }

    v10 = &v34 + 9 * v9;
    *v10 = *(result + 100);
    v10[1] = 655343;
    v10[2] = a2;
    *(v10 + 6) = 136;
    *(v10 + 44) = 0u;
    *(v10 + 28) = 0u;
    *(v10 + 15) = 0;
    v10[8] = a4;
    v10[6] = a2 + 56;
    v9 = (v9 + 1);
    goto LABEL_10;
  }

  v15 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v17 = 0;
    v18 = (v15 + 16);
    while (*(v18 - 4) != -17 || *(v18 - 2) != a2 || *v18 != a2)
    {
      ++v17;
      v18 += 9;
      if (v16 == v17)
      {
        LODWORD(v17) = *(v8 + 48);
        goto LABEL_32;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 == v16)
  {
LABEL_32:
    *(v8 + 48) = v16 + 1;
  }

  if (a4)
  {
    result = *(*(a2 + 24) + 84);
    if ((result & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(result);
    }

    v23 = (result >> 8) & 0xF;
    if (v23 <= (BYTE4(a4) & 7u))
    {
      v23 = BYTE4(a4) & 7;
    }

    if (v23 <= 1)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 128 << v23;
    v22 = a4 & 2 | 0x3700000001;
    v19 = v24 | result & 0x80000000 | 0xFF;
    if ((a4 & 2) != 0)
    {
      v20 = 401;
    }

    else
    {
      v20 = 273;
    }

    v21 = 5;
  }

  else
  {
    v19 = 0;
    v20 = 257;
    v21 = 7;
    v22 = 1;
  }

  v25 = v15 + 72 * v17;
  *v25 = a2;
  *(v25 + 8) = -17;
  *(v25 + 10) = v21;
  *(v25 + 12) = v19;
  *(v25 + 16) = a2;
  *(v25 + 24) = v20;
  *(v25 + 36) = 0;
  *(v25 + 28) = 0;
  *(v25 + 44) = 0;
  *(v25 + 48) = a2 + 56;
  *(v25 + 56) = v22;
  *(v25 + 64) = a4;
  v26 = *(v5 + 100);
  v27 = *(v8 + 40);
  v28 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v29 = 0;
    v30 = (v27 + 16);
    while (*(v30 - 4) != -17 || *(v30 - 2) != a2 || *v30 != v26)
    {
      ++v29;
      v30 += 9;
      if (v28 == v29)
      {
        LODWORD(v29) = *(v8 + 48);
        goto LABEL_53;
      }
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v29 == v28)
  {
LABEL_53:
    *(v8 + 48) = v28 + 1;
  }

  v31 = v27 + 72 * v29;
  *v31 = v26;
  *(v31 + 8) = 655343;
  *(v31 + 16) = a2;
  *(v31 + 24) = 136;
  *(v31 + 44) = 0u;
  *(v31 + 28) = 0u;
  *(v31 + 60) = 0;
  *(v31 + 64) = a4;
  *(v31 + 48) = a2 + 56;
  return result;
}

void _dispatch_event_loop_wait_for_ownership(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 56);
  if ((v3 & 0xFFFFFFFD) == 1)
  {
    v4 = *(*(v2 + 24) + 84);
    if ((v4 & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(v4);
    }

    v5 = (v4 >> 8) & 0xF;
    if (v5 <= (BYTE4(v3) & 7u))
    {
      v5 = BYTE4(v3) & 7;
    }

    v22 = v2;
    if (v5 <= 1)
    {
      LOBYTE(v5) = 1;
    }

    LODWORD(v23) = 393199;
    HIDWORD(v23) = (128 << v5) | v4 & 0x80000000 | 0xFF;
    v24 = v2;
    if ((v3 & 2) != 0)
    {
      v6 = 401;
    }

    else
    {
      v6 = 273;
    }

    v25 = v6;
    v27 = 0;
    v26 = 0;
    v28 = 0;
    v29 = v2 + 56;
    v30 = v3 & 2 | 0x3700000001;
    v31 = v3;
    v7 = 1;
  }

  else if ((~v3 & 0x2800000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFC | 3;
    if ((v3 & 0xFFFFFFFC) == 0)
    {
      v8 = 0;
    }

    v22 = v8;
    v23 = 655343;
    v24 = v2;
    v25 = 392;
    v27 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0x3800000002;
    v31 = v3;
    v7 = 1;
    v29 = v2 + 56;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v10 = *(StatusReg + 32);
    v11 = &v22 + 9 * v7;
    if ((v10 & 0x3FFF00) == 0)
    {
      LODWORD(v10) = 2303;
    }

    *v11 = *(a1 + 100);
    *(v11 + 2) = 655343;
    *(v11 + 3) = v10;
    v11[2] = v2;
    *(v11 + 6) = 4;
    *(v11 + 28) = 0u;
    *(v11 + 44) = 0u;
    *(v11 + 15) = 0;
    v11[8] = v3;
    v12 = _dispatch_kq_poll(v2, &v22, v7 + 1, &v22, v7 + 1, 0, 0, 3);
    v13 = v12;
    if (v12 >= 1)
    {
      v14 = v12;
      v15 = &v22;
      do
      {
        v16 = *(v15 + 6);
        v17 = v15[4];
        v18 = *(v15 + 5) & 0xBFFF;
        *(v15 + 5) = v18;
        *(v15 + 7) = v17;
        v15[4] = 0;
        if (v17 != 4)
        {
          switch(v17)
          {
            case 2:
              _dispatch_event_loop_wait_for_ownership_cold_4(v16, v18);
            case 0x22:
              _dispatch_event_loop_wake_owner_cold_1(v15);
            case 0x69:
              _dispatch_event_loop_cancel_waiter_cold_3(v15);
          }

LABEL_37:
          _dispatch_sync_ipc_handoff_begin_cold_1(v17);
        }

        if ((v16 & 4) == 0)
        {
          goto LABEL_37;
        }

        v15 += 9;
        --v14;
      }

      while (v14);
    }

    if (!v13)
    {
      break;
    }

    v7 = 0;
    v3 = v31;
  }

  v19 = *(a1 + 106);
  if ((v19 & 0x20) != 0)
  {
    _dispatch_event_loop_cancel_waiter(a1);
    v19 = *(a1 + 106) & 0xDF;
    *(a1 + 106) = v19;
  }

  if ((v19 & 0x40) != 0)
  {
    v20 = *(a1 + 48);
    add_explicit = atomic_fetch_add_explicit((v20 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _dispatch_runloop_root_queue_perform_4CF_cold_2();
      }

      *(v20 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v20);
    }
  }
}

uint64_t _dispatch_event_loop_ensure_ownership(uint64_t a1)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5[0] = 655343;
  v5[1] = a1;
  v6 = 136;
  v8 = 0u;
  v7 = 0u;
  v9 = 0;
  v10 = v4;
  *(&v8 + 4) = a1 + 56;
  result = _dispatch_kq_poll(a1, &v4, 1, &v4, 1, 0, 0, 3);
  if (result)
  {
    v2 = DWORD1(v7);
    v3 = WORD1(v5[0]) & 0xBFFF;
    WORD1(v5[0]) &= ~0x4000u;
    LODWORD(v7) = DWORD1(v7);
    *(&v7 + 4) = 0;
    if (v7 != 105)
    {
      if (v2 != 34)
      {
        if (v2 == 2)
        {
          _dispatch_event_loop_leave_immediate_cold_2(&v6, v3);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v2);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v5 + 1);
    }

    _dispatch_event_loop_leave_immediate_cold_3(&v10);
  }

  return result;
}

void _dispatch_event_loop_end_ownership(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = a3;
  if (a3)
  {
    v8 = *(*(a1 + 24) + 84);
    if ((v8 & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(v8);
    }

    v9 = (v8 >> 8) & 0xF;
    if (v9 <= (BYTE4(a3) & 7u))
    {
      v9 = BYTE4(a3) & 7;
    }

    if (v9 <= 1)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 128 << v9;
    v11 = a3 & 2 | 0x3700000001;
    LODWORD(a3) = v10 | v8 & 0x80000000 | 0xFF;
    if ((v5 & 2) != 0)
    {
      v12 = 401;
    }

    else
    {
      v12 = 273;
    }

    v13 = 5;
  }

  else
  {
    a3 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_14;
    }

    v12 = 257;
    v13 = 7;
    v11 = 1;
  }

  v19 = a1;
  v20 = -17;
  v21 = v13;
  v22 = a3;
  v23 = a1;
  v24 = v12;
  v25 = 0uLL;
  v26 = 0;
  v27 = a1 + 56;
  v28 = v11;
  a3 = 1;
  v29 = v5;
LABEL_14:
  if ((a2 & 2) == 0)
  {
    v14 = &v19 + 9 * a3;
    *v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v14[1] = 458735;
    a3 = (a3 + 1);
    v14[2] = a1;
    *(v14 + 6) = 40;
    *(v14 + 28) = 0u;
    *(v14 + 44) = 0u;
    *(v14 + 15) = 0;
    v14[8] = v5;
  }

  if (_dispatch_kq_poll(a1, &v19, a3, &v19, a3, 0, 0, 3))
  {
    v17 = DWORD1(v25);
    v18 = v21 & 0xBFFF;
    v21 &= ~0x4000u;
    LODWORD(v25) = DWORD1(v25);
    *(&v25 + 4) = 0;
    if (v25 != 105)
    {
      if (v17 != 34)
      {
        if (v17 == 2)
        {
          _dispatch_event_loop_wake_owner_cold_2(&v19, v18);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v17);
      }

      _dispatch_event_loop_wake_owner_cold_1(&v19);
    }

    _dispatch_event_loop_cancel_waiter_cold_3(&v19);
  }

  v15 = (a2 & 1 | (2 * (a4 & 1))) - (v5 & 1);
  if (v15 >= 1 && *(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), (v5 & 1) - (a2 & 1 | (2 * (a4 & 1))), memory_order_release);
    if (add_explicit <= v15)
    {
      _dispatch_event_loop_end_ownership_cold_6(add_explicit - v15, a1);
    }
  }
}

void _dispatch_event_loop_timer_arm(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2 / 3uLL;
  v10 = *(a5 + 8 * v9);
  if (!v10)
  {
    mach_get_times();
    *(a5 + 16) = 0;
    v10 = *(a5 + 8 * v9);
  }

  v11 = v10 + a3;
  if (_dispatch_timers_force_max_leeway == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  if (_dispatch_timers_force_max_leeway == 1)
  {
    v13 = v11 + a4;
  }

  else
  {
    v13 = v11;
  }

  _dispatch_event_loop_timer_program(a1, a2, v13, v12, 5);
  if (a2 - 6 <= 2 && _dispatch_mach_calendar_pred != -1)
  {
    _dispatch_event_loop_timer_arm_cold_1();
  }
}

void *_dispatch_event_loop_timer_program(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  if (v8 == -4)
  {
    v9 = 0x2000000;
  }

  else
  {
    v9 = (128 << *(a1 + 32 * a2 + 5)) | 0xFF;
  }

  v22 = v5;
  v23 = v6;
  v11 = a2 | 0xFFFFFFFFFFFFFF00;
  v12 = -7;
  v13 = a5 | 0x10;
  v14 = v9;
  v15 = a1;
  v16 = _dispatch_timer_index_to_fflags[a2];
  v17 = 0;
  v18 = a3;
  v19 = 0;
  v21 = 0u;
  v20 = a4;
  return _dispatch_kq_deferred_update(v8, &v11);
}

uint64_t _dispatch_source_proc_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = _dispatch_unote_create_with_handle(a1, a2, a3);
  if ((v3 & 0x4000000) != 0)
  {
    if (result)
    {
      *(result + 29) |= 4u;
    }
  }

  return result;
}

uint64_t _dispatch_source_vm_create(uint64_t a1, uint64_t a2)
{
  result = _dispatch_unote_create_without_handle(&_dispatch_source_type_memorystatus, a2, 2);
  if (result)
  {
    *(result + 29) |= 0x10u;
  }

  return result;
}

BOOL _dispatch_mach_msg_sender_is_kernel(uint64_t a1)
{
  v1 = (a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v1 || v1[1] <= 0x33u)
  {
    _dispatch_mach_msg_sender_is_kernel_cold_1();
  }

  return v1[10] == 0;
}

uint64_t _dispatch_get_mach_host_port()
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    _dispatch_get_mach_host_port_cold_1();
  }

  return _dispatch_mach_host_port;
}

void _dispatch_mach_host_port_init()
{
  port = 0;
  v0 = mach_host_self();
  special_port = host_get_special_port(v0, -1, 1, &port);
  if (special_port == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v2 = special_port;
  if (special_port)
  {
    if (special_port != 4)
    {
      _dispatch_bug(2969, special_port);
    }
  }

  else
  {
    v3 = mach_port_deallocate(mach_task_self_, v0);
    if (v3 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    v2 = v3;
    v0 = port;
  }

  if (!v0)
  {
    _dispatch_mach_host_port_init_cold_3(v2);
  }

  _dispatch_mach_host_port = v0;
}

uint64_t _dispatch_mach_notify_merge(uint64_t result, int a2, int a3)
{
  v3 = _dispatch_sources[(result >> 8) & 0x3F];
  if (v3)
  {
    while (*(v3 + 24) != result || *(v3 + 32) != -24)
    {
      v3 = *v3;
      if (!v3)
      {
        return result;
      }
    }

    *(v3 + 56) &= 0xFFFFFFFFFFFFFFF2;
    if ((a3 & 1) != 0 || (result = _dispatch_kevent_mach_notify_resume(v3, a2, 0), (result & 1) == 0))
    {
      *(v3 + 34) |= 2u;
      v6 = 16;
    }

    else
    {
      v6 = 4;
    }

    *(v3 + 64) = 0;
    v7 = *(v3 + 16);
    if (v7)
    {
      do
      {
        v8 = *v7;
        if (*(v3 + 64))
        {
          break;
        }

        v9 = v7[7] & a2;
        *(v7 + 54) = 0;
        if ((a3 & 1) != 0 || v9)
        {
          if (*(7 - v7[4]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - v7[4]), 2u, memory_order_relaxed) <= 0)
          {
            qword_78298 = "API MISUSE: Resurrection of an object";
            __break(1u);
            return result;
          }

          v10 = v7 + 3;
          if (a3)
          {
            _dispatch_unote_unregister_muxed(v7 + 3);
          }

          v11 = *v10;
          if (v9)
          {
            v12 = *v10;
            if (*(v11 + 9) == 2)
            {
              atomic_fetch_or_explicit((v7 + 12), v9, memory_order_relaxed);
            }
          }

          result = (*(v11 + 48))(v7 + 3, v6, v9, 0);
        }

        v7 = v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t _dispatch_mach_notify_dead_name(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  _dispatch_mach_notify_merge(a2, 1, 1);
  if (mach_port_deallocate(mach_task_self_, v2) == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  return 0;
}

uint64_t _dispatch_mach_notification_set_armed(uint64_t result)
{
  v1 = *(result - 8);
  if (v1)
  {
    *(v1 + 64) = 1;
    for (i = *(v1 + 16); i; i = *i)
    {
      *(i + 54) = 1;
    }
  }

  return result;
}

uint64_t _dispatch_source_mach_send_create(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    a3 = 1;
  }

  if (!a2)
  {
    a2 = 0xFFFFFFFFLL;
  }

  return _dispatch_unote_create_with_handle(a1, a2, a3);
}

uint64_t _dispatch_mach_send_update(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((*(a1 + 34) & 2) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 48);
    v1 = 0;
  }

  return _dispatch_kevent_mach_notify_resume(a1, v2, v1);
}

uint64_t _dispatch_mach_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _dispatch_unote_create_without_handle(a1, a2, a3);
  if (result)
  {
    *(result + 88) = 0x80000000;
    *(result + 56) = 0;
  }

  return result;
}

void _dispatch_mach_notification_event(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected non message event";
  qword_782C8 = v1;
  __break(1u);
}

void _dispatch_mach_notification_merge_msg(void *a1, int a2, mach_msg_header_t *a3)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (a3->msgh_id <= 77 && !_dispatch_mach_msg_sender_is_kernel(a3))
  {
    v11 = 2900;
    goto LABEL_19;
  }

  v6 = libdispatch_internal_protocol_server(a3, v12);
  if (v6 || v13 != -303)
  {
    if (v6)
    {
      if (v13 == -305 || v13 == 0)
      {
        goto LABEL_15;
      }

      _dispatch_bug(2916, v13);
      if (v13 == -305 || !v13)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if ((a3->msgh_id & 0xFFFFFFFE) != 0x3B6)
  {
LABEL_18:
    v11 = 2915;
LABEL_19:
    _dispatch_bug(v11, 0);
LABEL_20:
    mach_msg_destroy(a3);
    goto LABEL_15;
  }

  v7 = &byte_784FF;
  v8 = byte_7843E | 0xFFFFFF80;
  for (i = 6; i != 9; ++i)
  {
    v8 |= 1 << (i % 3u);
    *v7 |= 2u;
    v7 += 32;
  }

  byte_7843E = v8;
  _dispatch_mach_host_notify_update();
  v13 = 0;
LABEL_15:
  if ((a2 & 0x10000) != 0)
  {
    free(a3);
  }

  _dispatch_unote_resume(a1);
}

uint64_t _dispatch_mach_recv_direct_merge_evt(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  if ((a2 & 0x200) != 0)
  {
    _dispatch_mach_recv_direct_merge_evt_cold_1();
  }

  return _dispatch_source_merge_evt(a1, a2, a3, a4);
}

void _dispatch_mach_reply_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x200) == 0)
  {
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected event";
    qword_782C8 = a3 | (a2 << 32);
    __break(1u);
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  __break(1u);
}

uint64_t _dispatch_kevent_workloop_override_self(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 24);
  *(result + 53) &= ~2u;
  add_explicit = *(*(v3 + 24) + 84);
  if ((add_explicit & 0x8000000) != 0)
  {
    goto LABEL_15;
  }

  v6 = (add_explicit >> 8) & 0xF;
  if (v6 <= (BYTE4(a2) & 7u))
  {
    v6 = BYTE4(a2) & 7;
  }

  v10 = v3;
  if (v6 <= 1)
  {
    LOBYTE(v6) = 1;
  }

  v11 = 393199;
  v12 = (128 << v6) | add_explicit & 0x80000000 | 0xFF;
  v13 = v3;
  if ((a2 & 2) != 0)
  {
    v7 = 401;
  }

  else
  {
    v7 = 273;
  }

  v14 = v7;
  v15 = 0uLL;
  v16 = 0;
  v17 = v3 + 56;
  v18 = a2 & 2 | 0x3700000001;
  v19 = a2;
  result = _dispatch_kq_poll(v3, &v10, 1, &v10, 1, 0, 0, 3);
  if (result)
  {
LABEL_16:
    v8 = DWORD1(v15);
    v9 = HIWORD(v11) & 0xBFFF;
    HIWORD(v11) &= ~0x4000u;
    LODWORD(v15) = DWORD1(v15);
    *(&v15 + 4) = 0;
    if (v15 != 105)
    {
      if (v8 != 34)
      {
        if (v8 != 2)
        {
LABEL_22:
          qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_782C8 = v8;
          __break(1u);
          return result;
        }

        qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_782C8 = (v14 << 32) | (v9 << 16) | 2;
        __break(1u);
      }

      qword_78298 = "BUG IN LIBDISPATCH: Broken priority";
      qword_782C8 = v12;
      __break(1u);
    }

    v8 = v19;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
    qword_782C8 = v19;
    __break(1u);
    goto LABEL_22;
  }

  if ((a3 & 1) != 0 && *(v3 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      qword_78298 = "API MISUSE: Over-release of an object";
      __break(1u);
LABEL_15:
      qword_78298 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_782C8 = add_explicit;
      __break(1u);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t _dispatch_kevent_workloop_poke_drain(uint64_t result)
{
  v2 = *(result + 24);
  if ((v2 & 0x80000000) != 0)
  {
    return result;
  }

  v3 = result;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  result = *(result + 16);
  v5 = *(v3 + 10);
  if ((v5 & 0x4000) == 0)
  {
    if (*(v4 + 53))
    {
      return result;
    }

    *(v4 + 53) |= 1u;
    if (*(result + 8) == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }

    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  v1 = *(v3 + 32);
  *(v3 + 28) = v1;
  add_explicit = *(v3 + 64);
  v5 &= ~0x4000uLL;
  *(v3 + 10) = v5;
  *(v3 + 32) = 0;
  if (v1 != 70)
  {
LABEL_33:
    switch(v1)
    {
      case 0x69:
LABEL_39:
        qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_782C8 = add_explicit;
        __break(1u);
        goto LABEL_40;
      case 0x22:
LABEL_38:
        add_explicit = *(v3 + 12);
        qword_78298 = "BUG IN LIBDISPATCH: Broken priority";
        qword_782C8 = add_explicit;
        __break(1u);
        goto LABEL_39;
      case 2:
        qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_782C8 = (v5 << 16) | (v2 << 32) | 2;
        __break(1u);
        break;
    }

LABEL_37:
    qword_78298 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
    qword_782C8 = v1;
    __break(1u);
    goto LABEL_38;
  }

  if ((v2 & 0x100) != 0)
  {
    goto LABEL_37;
  }

  if (!*(v3 + 48))
  {
    goto LABEL_37;
  }

  v2 = *(v3 + 56);
  if (!v2)
  {
    goto LABEL_37;
  }

  if ((add_explicit & 0x2000000000) == 0)
  {
    return result;
  }

  if ((add_explicit & 1) == 0)
  {
    v9 = 0;
    v10 = 1;
    v11 = 7;
    v12 = 1;
    goto LABEL_28;
  }

  if ((add_explicit & 0xFFFFFFFC) != 0)
  {
    v4 = *(*(result + 24) + 84);
    if ((v4 & 0x8000000) != 0)
    {
LABEL_40:
      qword_78298 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_782C8 = v4;
      __break(1u);
      return result;
    }

    v13 = (v4 >> 8) & 0xF;
    if (v13 <= (BYTE4(add_explicit) & 7u))
    {
      v13 = BYTE4(add_explicit) & 7;
    }

    if (v13 <= 1)
    {
      LOBYTE(v13) = 1;
    }

    v15 = add_explicit & 2;
    v14 = v15 == 0;
    v10 = v15 | 0x3700000001;
    v9 = (128 << v13) | v4 & 0x80000000 | 0xFF;
    if (v14)
    {
      v12 = 273;
    }

    else
    {
      v12 = 401;
    }

    v11 = 5;
LABEL_28:
    *v3 = result;
    *(v3 + 8) = -17;
    *(v3 + 10) = v11;
    *(v3 + 12) = v9;
    *(v3 + 24) = v12;
    *(v3 + 28) = 0;
    *(v3 + 36) = 0;
    *(v3 + 44) = 0;
    *(v3 + 48) = result + 56;
    *(v3 + 56) = v10;
    return _dispatch_kq_deferred_update();
  }

  *(v4 + 53) |= 1u;
  if (*(result + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
LABEL_32:
      qword_78298 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_33;
    }
  }

LABEL_6:
  *v4 = *(result + 24);
  *(v4 + 8) = result;
  v7 = __clz(__rbit32((*(v3 + 12) >> 8) & 0x3FFF));
  if (((*(v3 + 12) >> 8) & 0x3FFF) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 16) = v8;
  return result;
}

void _dispatch_kevent_print_error(uint64_t a1)
{
  v2 = *(a1 + 10);
  if ((v2 & 2) != 0)
  {
    if ((*(a1 + 10) & 0x100) != 0 && *(a1 + 32) == 36)
    {
      return;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
      v3 = 0;
      v2 |= *(v4 + 34);
      goto LABEL_10;
    }

    if (v3 && !*(v3 + 16))
    {
      v2 |= 1u;
LABEL_10:
      *(a1 + 10) = v2;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 == 34)
    {
      v12 = *(a1 + 12);
      qword_78298 = "BUG IN LIBDISPATCH: Invalid kevent priority";
      qword_782C8 = v12;
      __break(1u);
    }

    else
    {
      v6 = _evfiltstr(*(a1 + 8));
      v7 = *(a1 + 16);
      v8 = "enable";
      if ((v2 & 4) == 0)
      {
        v8 = "monitor";
      }

      if (v2)
      {
        v9 = "add";
      }

      else
      {
        v9 = v8;
      }

      if ((v2 & 2) != 0)
      {
        v9 = "delete";
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = *a1;

      _dispatch_bug_kevent_client("kevent", v6, v10, v5, v11, v7, v3);
    }
  }
}

void _dispatch_kevent_mach_msg_drain(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 60);
  v8 = *(a1 + 12);
  v9 = *(a1 + 10);
  v10 = *(a1 + 24);
  if (v10 != 268451844)
  {
    if (v10 == 268451848)
    {
      v19 = *(a1 + 12);
      v20 = v6;
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Unable to copyout msg, possible port leak";
      qword_782C8 = 268451848;
      __break(1u);
    }

    else
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        if (!v10)
        {
          if (*(a1 + 64))
          {
            v12 = v4 + v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = *(a1 + 16);

          _dispatch_kevent_mach_msg_recv(v13, v9, v11, v12, v7, v8);
          return;
        }

        goto LABEL_28;
      }
    }

    v19 = v8;
    v20 = v6;
    qword_78298 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message";
    qword_782C8 = v10;
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    v5 = 268451844;
    v19 = v8;
    v20 = v6;
    qword_78298 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message size";
    qword_782C8 = 268451844;
    __break(1u);
LABEL_23:
    v19 = v8;
    v20 = v6;
    qword_78298 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with overlarge message";
    qword_782C8 = v5;
    __break(1u);
    goto LABEL_24;
  }

  if (!*(a1 + 32))
  {
    v19 = *(a1 + 12);
    qword_78298 = "BUG IN LIBDISPATCH: MACH_RCV_LARGE_IDENTITY with no identity";
    __break(1u);
    return;
  }

  if (v4 >= 0xFFFFFFBC)
  {
    goto LABEL_23;
  }

  LOBYTE(v10) = 10;
  v14 = v4 + 68;
  v1 = malloc_type_malloc();
  v2 = v18;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (!v1)
  {
LABEL_24:
    _dispatch_bug(3366, v1);
    v14 = 0;
  }

  v22[0] = v1;
  v22[1] = 0;
  v23 = 0;
  v24 = v14;
  v25 = v2;
  v26 = 0;
  v27 = 0x2800000000;
  memset(v21, 0, sizeof(v21));
  v15 = *(a1 + 32);
  v16 = mach_msg2(v22, v10, v21);
  if (!v16)
  {
    if (*v2)
    {
      v17 = v2;
    }

    else
    {
      v17 = 0;
    }

    _dispatch_kevent_mach_msg_recv(v6, v9 | 0x10000, v1, v17, v7, v8);
    return;
  }

  v10 = v16;
  if (v16 == 268451844)
  {
    _dispatch_log("BUG in libdispatch client: _dispatch_kevent_mach_msg_drain: dropped message too large to fit in memory: id = 0x%x, size = %u", v1[5], *(a1 + 48));
    v10 = 0;
  }

  free(v1);
LABEL_28:
  if (v10)
  {
    _dispatch_bug_mach_client("_dispatch_kevent_mach_msg_drain: message reception failed", v10);
  }
}

void *_dispatch_kevent_merge_muxed(uint64_t a1)
{
  v2 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(a1 + 10) & 0x12) != 0)
  {
    *(v2 + 34) |= 2u;
  }

  result = *(v2 + 16);
  if (result)
  {
    do
    {
      v4 = *result;
      _dispatch_kevent_merge(result + 3, a1);
      result = v4;
    }

    while (v4);
  }

  return result;
}

void *_dispatch_kevent_merge(void *result, uint64_t a2)
{
  v3 = result;
  add_explicit = *(*result + 9);
  if (*(7 - result[1]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - result[1]), 2u, memory_order_relaxed) < 1)
  {
    qword_78298 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_44:
    qword_78298 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_45;
  }

  if (add_explicit <= 1)
  {
    if (add_explicit)
    {
      if (*(result + 28) == 248)
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a2 + 24);
      }
    }

    else
    {
      v5 = *(a2 + 32);
    }
  }

  else
  {
    switch(add_explicit)
    {
      case 2:
        v5 = (result[4] & *(a2 + 24));
        if ((*(result + 29) & 4) != 0)
        {
          v6 = result[9];
          v7 = (*(a2 + 32) << 32) | v5;
          v8 = v6;
          do
          {
            atomic_compare_exchange_strong_explicit((result + 9), &v8, v6 | v7, memory_order_relaxed, memory_order_relaxed);
            v11 = v8 == v6;
            v6 = v8;
          }

          while (!v11);
        }

        else if (*(result + 28) == 248)
        {
          v5 = 2;
          result[9] = 2;
        }

        else if (v5)
        {
          atomic_fetch_or_explicit((result + 9), v5, memory_order_relaxed);
        }

        else
        {
          v5 = 0;
        }

        break;
      case 3:
        v5 = *(a2 + 32);
        result[9] = ~v5;
        break;
      case 4:
        v5 = *(a2 + 32);
        if (v5)
        {
          atomic_fetch_add_explicit((result + 9), v5, memory_order_relaxed);
        }

        break;
      default:
LABEL_45:
        qword_78298 = "BUG IN LIBDISPATCH: Corrupt unote action";
        qword_782C8 = add_explicit;
        __break(1u);
        return result;
    }
  }

  v9 = *(a2 + 10);
  if ((v9 & 0x110) == 0x10)
  {
    _dispatch_unote_unregister(result, 5);
    goto LABEL_39;
  }

  if ((v9 & 2) != 0)
  {
    result = (result[2] & 0xFFFFFFFFFFFFFFFCLL);
    v11 = result == -4 || result == 0;
    if (v11)
    {
      goto LABEL_35;
    }

    add_explicit = atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_35;
    }

    if ((add_explicit & 0x80000000) == 0)
    {
      result[7] = 0xDEAD000000000000;
      _dispatch_object_dealloc(result);
LABEL_35:
      v10 = 2;
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  if ((*(a2 + 10) & 0x210) != 0)
  {
    v10 = result[2] & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_38:
    v3[2] = v10;
    goto LABEL_39;
  }

  if ((v9 & 0x80) != 0)
  {
    v10 = result[2] & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_38;
  }

LABEL_39:
  v12 = *(*v3 + 48);
  v13 = *(a2 + 10);
  v14 = *(a2 + 12) & 0xFFFFFFLL;

  return v12(v3, v13, v5, v14);
}

const char *_evfiltstr(unsigned int a1)
{
  if (a1 < 0xFFFFFFE8)
  {
    return "EVFILT_missing";
  }

  else
  {
    return off_5C200[a1 + 24];
  }
}

uint64_t _dispatch_kevent_mach_msg_recv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 4);
  if (v6 >= 0xFFFFFFBC)
  {
    _dispatch_kevent_mach_msg_recv_cold_5(*(a3 + 4));
  }

  if (!*(a3 + 12))
  {
    _dispatch_kevent_mach_msg_recv_cold_4(a3);
  }

  if (*(7 - a1[1]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - a1[1]), 2u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if ((a2 & 0x110) == 0x10)
  {
    _dispatch_unote_unregister(a1, 5);
  }

  else if ((a2 & 2) != 0)
  {
    v13 = a1[2] & 0xFFFFFFFFFFFFFFFCLL;
    if (v13 != -4)
    {
      if (v13)
      {
        add_explicit = atomic_fetch_add_explicit((v13 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
            _dispatch_runloop_root_queue_perform_4CF_cold_2();
          }

          *(v13 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v13);
        }
      }
    }

    a1[2] = 2;
  }

  else
  {
    _dispatch_kevent_mach_msg_recv_cold_3(a2, a1);
  }

  v15 = *(*a1 + 56);

  return v15(a1, a2, a3, v6 + 68, a4, a5, a6);
}

uint64_t mach_msg2(uint64_t a1, char a2, unsigned int *a3)
{
  if ((a2 & 1) != 0 && (**a1 & 0x80000000) != 0)
  {
    v7 = *(*a1 + 24);
  }

  v3 = *a3;
  v5 = *(a3 + 1);
  v4 = *(a3 + 2);
  return mach_msg2_internal();
}

uint64_t _dispatch_kq_init(_BYTE *a1)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  if (getenv("LIBDISPATCH_TIMERS_FORCE_MAX_LEEWAY"))
  {
    _dispatch_timers_force_max_leeway = 1;
  }

  *a1 = 1;
  _dispatch_kevent_workqueue_init();
  if (_dispatch_kevent_workqueue_enabled == 1)
  {
    while (1)
    {
      result = kevent_qos();
      if (result != -1)
      {
        break;
      }

      _dispatch_kq_init_cold_3();
    }
  }

  else
  {
    _dispatch_kq_create();
    v3 = (*off_74118)[9];

    return v3();
  }

  return result;
}

void _dispatch_kq_create()
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  v0 = guarded_kqueue_np();
  if (v0 == -1)
  {
    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v3 != 12)
    {
      if (v3 != 23)
      {
        if (v3 != 24)
        {
LABEL_13:
          qword_78298 = "BUG IN LIBDISPATCH: kqueue() failure";
          qword_782C8 = v3;
          __break(1u);
          return;
        }

        qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: process is out of file descriptors";
        qword_782C8 = 24;
        __break(1u);
      }

      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: system is out of file descriptors";
      qword_782C8 = 23;
      __break(1u);
    }

    v3 = 12;
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: kernel is out of memory";
    qword_782C8 = 12;
    __break(1u);
    goto LABEL_13;
  }

  v1 = v0;
  v2 = kevent_qos();
  if (v2)
  {
    _dispatch_bug(660, v2);
  }

  qword_74120 = v1;
}

void _dispatch_memorypressure_create(uintptr_t mask)
{
  v1 = dispatch_source_create(&_dispatch_source_type_memorystatus, 0, mask, &_dispatch_mgr_q);
  dispatch_set_context(v1, v1);
  dispatch_source_set_event_handler_f(v1, _dispatch_memorypressure_handler);
  dispatch_activate(v1);
  if (_dispatch_memorypressure_source)
  {
    dispatch_source_cancel(_dispatch_memorypressure_source);
    dispatch_release(_dispatch_memorypressure_source);
  }

  _dispatch_memorypressure_source = v1;
}

uint64_t _dispatch_memorypressure_handler(dispatch_source_s *a1)
{
  data = dispatch_source_get_data(a1);
  if ((data & 0xF0000000) != 0 && dispatch_source_get_mask(_dispatch_memorypressure_source) != malloc_memorypressure_mask_msl_4libdispatch)
  {
    _dispatch_memorypressure_create(malloc_memorypressure_mask_msl_4libdispatch);
  }

  if (data)
  {
    _dispatch_memory_warn = 0;
    _dispatch_continuation_cache_limit = 112;
    v2 = _firehose_task_buffer;
    if (_firehose_task_buffer)
    {
      if (atomic_fetch_and_explicit((_firehose_task_buffer + 512), 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed))
      {
        firehose_buffer_update_limits(v2);
      }
    }
  }

  if ((data & 2) != 0)
  {
    _dispatch_memory_warn = 1;
    _dispatch_continuation_cache_limit = 16;
    v3 = _firehose_task_buffer;
    if (_firehose_task_buffer)
    {
      if ((atomic_fetch_or_explicit((_firehose_task_buffer + 512), 1uLL, memory_order_relaxed) & 1) == 0)
      {
        firehose_buffer_update_limits(v3);
      }
    }
  }

  return _malloc_memory_event_handler(data);
}

void _dispatch_mach_host_notify_update()
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    _dispatch_get_mach_host_port_cold_1();
  }

  v0 = _dispatch_mach_host_port;
  if (_dispatch_mach_notify_port_pred != -1)
  {
    _dispatch_mach_host_notify_update_cold_2();
  }

  v1 = host_request_notification(v0, 1, _dispatch_mach_notify_port);
  if (v1 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v1)
  {

    _dispatch_bug(3003, v1);
  }
}

void _dispatch_mach_notify_port_init()
{
  v3.reserved[1] = 0;
  *&v3.flags = xmmword_4AA60;
  v1 = mach_port_construct(mach_task_self_, &v3, &_dispatch_mach_notify_port, &_dispatch_mach_notify_port);
  if (v1)
  {
    qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: mach_port_construct() failed: cannot create receive right";
    qword_782C8 = v1;
    __break(1u);
    goto LABEL_5;
  }

  v0 = _dispatch_unote_create_with_handle(&_dispatch_mach_type_notification, _dispatch_mach_notify_port, 0);
  *(v0 + 8) = ~&_dispatch_mgr_q;
  _dispatch_unote_register(v0, -4, 0x2000000u);
  if ((v2 & 1) == 0)
  {
LABEL_5:
    _dispatch_bug(2952, 0);
  }

  _dispatch_mach_notify_unote = v0;
}

uint64_t _dispatch_kevent_mach_notify_resume(uint64_t a1, int a2, int a3)
{
  if (((a3 | a2) & 0xD) == 0)
  {
    return 1;
  }

  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  v5 = *(a1 + 24);
  v6 = (v3 | (*(a1 + 48) | a2) & 0xD) & (~a3 | 0xFFFFFFF2);
  *(a1 + 56) = v6;
  v7 = v6 & 0xD;
  if ((v3 & 0xD) != 0 || !v7)
  {
    v13 = 0;
    if ((v3 & 0xD) == 0 || v7)
    {
      return v13 == 0;
    }

    previous = 0;
    v14 = mach_port_request_notification(mach_task_self_, v5, 66, 0, 0, 0x12u, &previous);
    v10 = 0;
    if (v14 > 0x11 || ((1 << v14) & 0x28011) == 0)
    {
      if (v14 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(3076, v14);
      v10 = 0;
    }

    goto LABEL_20;
  }

  previous = 0;
  v8 = mach_task_self_;
  if (_dispatch_mach_notify_port_pred != -1)
  {
    _dispatch_mach_host_notify_update_cold_2();
  }

  v9 = mach_port_request_notification(v8, v5, 66, 0, _dispatch_mach_notify_port, 0x15u, &previous);
  v10 = v9;
  if (v9 <= 14)
  {
    if (v9 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (!v9)
    {
      v13 = previous;
      if (!previous)
      {
        return v13 == 0;
      }

      v17 = _dispatch_kevent_mach_notify_resume_cold_3(previous, &previous, &v19);
      v13 = v19;
      if ((v17 & 1) == 0)
      {
        return v13 == 0;
      }

      v10 = 0;
      v16 = 3057;
      goto LABEL_34;
    }
  }

  else if (v9 == 15 || v9 == 17)
  {
    *v4 &= 0xFFFFFFF2uLL;
    goto LABEL_20;
  }

  _dispatch_kevent_mach_notify_resume_cold_5(v9, v4);
LABEL_20:
  if (!previous)
  {
    goto LABEL_21;
  }

  v13 = _dispatch_send_consume_send_once_right(previous);
  if (!v13)
  {
    goto LABEL_21;
  }

  v16 = 3086;
LABEL_34:
  _dispatch_bug(v16, v13);
LABEL_21:
  v13 = v10;
  return v13 == 0;
}

void _voucher_xref_dispose(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = *(a1 + 36);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_16:
    _voucher_xref_dispose_cold_2();
  }

  _voucher_xref_dispose_cold_1();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*(a1 + 12) <= 0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6 != -1)
      {
        *(23 - v6) = v5;
      }

      *~v5 = v6;
      *(a1 + 16) = xmmword_4AA80;
    }
  }

  v7 = *(StatusReg + 24) & 0xFFFFFFFC;
  v8 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v8 != v7)
  {
    _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v8);
  }

LABEL_11:
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release);
    if (add_explicit <= 1)
    {
      _voucher_xref_dispose_cold_3(add_explicit, a1);
    }
  }
}

void _voucher_dispose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    _voucher_xref_dispose_cold_2();
  }

  *(a1 + 16) = -1985229329;
  v2 = *(a1 + 36);
  if (v2)
  {
    if (v2 != *(a1 + 32))
    {
      _voucher_dealloc_mach_voucher(v2);
    }

    *(a1 + 36) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    if (!*(a1 + 40))
    {
      _voucher_dealloc_mach_voucher(v3);
    }

    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    add_explicit = atomic_fetch_add_explicit((v4 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(add_explicit, v4);
    }

    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;

  _os_object_dealloc(a1);
}

uint64_t voucher_adopt(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 224);
  if (a1 != -3)
  {
    if (v2 == a1)
    {
      return v2;
    }

    *(StatusReg + 224) = a1;
    if (a1)
    {
      v3 = *(a1 + 32);
      if (v2)
      {
LABEL_5:
        v4 = *(v2 + 32);
LABEL_11:
        if (v3 != -1 && v3 != v4)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v3);
        }

        return v2;
      }
    }

    else
    {
      v3 = 0;
      if (v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    goto LABEL_11;
  }

  if (v2 && atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  return v2;
}

uint64_t voucher_copy()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v0 && atomic_fetch_add_explicit((v0 + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  return v0;
}

uint64_t voucher_copy_without_importance()
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (result)
  {
    return _voucher_create_without_importance(result);
  }

  return result;
}

uint64_t voucher_retain(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_group_notify_cold_1();
  }

  return result;
}

void voucher_release(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 1)
  {
    _dispatch_mach_msg_dispose_cold_1(add_explicit, a1);
  }
}

void _voucher_thread_cleanup(uint64_t a1)
{
  add_explicit = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 1)
  {
    _dispatch_mach_msg_dispose_cold_1(add_explicit, a1);
  }
}

void _voucher_dealloc_mach_voucher(mach_port_name_t a1)
{
  v1 = mach_voucher_deallocate(a1);
  if (v1 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v1)
  {

    _dispatch_bug(302, v1);
  }
}

uint64_t _voucher_task_mach_voucher_init()
{
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  result = host_create_mach_voucher(mach_host_port, _voucher_task_mach_voucher_init_task_create_recipe, 0x10u, &voucher);
  if (result == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (result)
  {
    _voucher_task_mach_voucher_init_cold_1(result);
  }

  _voucher_default_task_mach_voucher = voucher;
  _voucher_task_mach_voucher = voucher;
  return result;
}

void voucher_replace_default_voucher(kern_return_t a1)
{
  if (_voucher_task_mach_voucher_pred != -1)
  {
    voucher_replace_default_voucher_cold_1();
  }

  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (!v3)
      {
        v3 = v2;
      }

      *recipes = 0x100000003;
      v8 = v3;
      v9 = 0;
      mach_host_port = _dispatch_get_mach_host_port();
      voucher = 0;
      a1 = host_create_mach_voucher(mach_host_port, recipes, 0x10u, &voucher);
      if (a1 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (a1)
      {
        _dispatch_bug(362, a1);
      }

      else if (voucher)
      {
        v5 = _voucher_default_task_mach_voucher;
        goto LABEL_13;
      }
    }
  }

  v5 = _voucher_default_task_mach_voucher;
LABEL_13:
  __swp(a1, &_voucher_task_mach_voucher);
  if (a1)
  {
    v6 = a1 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    _voucher_dealloc_mach_voucher(a1);
  }
}

uint64_t _voucher_get_mach_voucher(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 36);
    if (!result)
    {
      result = *(v1 + 32);
      if (!result)
      {
        if (_voucher_task_mach_voucher_pred != -1)
        {
          voucher_replace_default_voucher_cold_1();
        }

        return _voucher_task_mach_voucher;
      }
    }
  }

  return result;
}

uint64_t _voucher_create_without_importance(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  if (!*(a1 + 32) || (*(a1 + 72) & 1) == 0)
  {
    if (atomic_fetch_add_explicit((a1 + 12), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_group_notify_cold_1();
    }

    return v1;
  }

  if (*(a1 + 36))
  {
    v3 = *(a1 + 36);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  *recipes = 0x1FFFFFFFFLL;
  v12 = v3;
  v13 = xmmword_4AA90;
  v14 = 0;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  v5 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
  if (v5 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v5)
  {
    _dispatch_bug(639, v5);
    goto LABEL_25;
  }

  v6 = voucher;
  if (!voucher)
  {
LABEL_25:
    if (*(v1 + 36))
    {
      return 0;
    }

    v6 = 0;
  }

  if (v6 == v3)
  {
    _voucher_dealloc_mach_voucher(v3);
    if (atomic_fetch_add_explicit((v1 + 12), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_group_notify_cold_1();
    }
  }

  else
  {
    v7 = _voucher_find_and_retain(v6);
    if (v7 && *(v1 + 36))
    {
      _voucher_dealloc_mach_voucher(v6);
      return v7;
    }

    else
    {
      v8 = _os_object_alloc_realized(_OS_voucher_vtable);
      v9 = v8;
      *(v8 + 48) = *(v1 + 48);
      *(v8 + 64) = *(v1 + 64);
      *(v8 + 32) = v6;
      if (*(v1 + 36))
      {
        *(v8 + 36) = v6;
        _voucher_insert(v8);
      }

      else if (v7)
      {
        *(v8 + 40) = v7;
        _voucher_dealloc_mach_voucher(v6);
      }

      return v9;
    }
  }

  return v1;
}

uint64_t _voucher_find_and_retain(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _voucher_xref_dispose_cold_1();
  }

  for (i = *(&_voucher_hash + ((a1 >> 8) & 0x3F)); ; i = *(15 - i))
  {
    v5 = ~i;
    if (i == -1)
    {
      break;
    }

    if (*(35 - i) == a1)
    {
      add_explicit = atomic_fetch_add_explicit((11 - i), 1u, memory_order_relaxed);
      if ((add_explicit & 0x80000000) != 0)
      {
        _dispatch_block_invoke_direct_cold_4();
      }

      if (!add_explicit)
      {
        atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
      }

      break;
    }
  }

  v7 = *(StatusReg + 24) & 0xFFFFFFFC;
  v8 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v8 != v7)
  {
    _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v8);
  }

  return v5;
}

uint64_t _voucher_insert(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v3, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      _voucher_xref_dispose_cold_1();
    }

    if (*(v2 + 24))
    {
      _voucher_xref_dispose_cold_2();
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      _voucher_insert_cold_3(v5);
    }

    result = *(v2 + 40);
    if (result)
    {
      _voucher_insert_cold_4(result);
    }

    v6 = &_voucher_hash + ((v1 >> 8) & 0x3F);
    v7 = *v6;
    *(v2 + 16) = *v6;
    if (v7 != -1)
    {
      *(23 - v7) = ~(v2 + 16);
    }

    *v6 = ~v2;
    *(v2 + 24) = ~v6;
    v8 = *(StatusReg + 24) & 0xFFFFFFFC;
    v9 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
    if (v9 != v8)
    {

      return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v9);
    }
  }

  return result;
}

uint64_t _voucher_create_accounting_voucher(uint64_t a1)
{
  if (!a1 || !*(a1 + 32))
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    v2 = *(a1 + 36);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  *recipes = 0x100000003;
  v10 = v2;
  v11 = 0;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  v4 = host_create_mach_voucher(mach_host_port, recipes, 0x10u, &voucher);
  if (v4 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v4)
  {
    _dispatch_bug(689, v4);
    return 0;
  }

  v5 = voucher;
  if (!voucher)
  {
    return 0;
  }

  v6 = _voucher_find_and_retain(voucher);
  if (v6)
  {
    v7 = v6;
    _voucher_dealloc_mach_voucher(v5);
  }

  else
  {
    v7 = _os_object_alloc_realized(_OS_voucher_vtable);
    *(v7 + 32) = v5;
    *(v7 + 36) = v5;
    if (v5 == v2)
    {
      if (atomic_fetch_add_explicit((a1 + 12), 1u, memory_order_relaxed) <= 0)
      {
        dispatch_group_notify_cold_1();
      }

      *(v7 + 40) = a1;
      _voucher_dealloc_mach_voucher(v2);
    }

    _voucher_insert(v7);
  }

  return v7;
}

uint64_t _voucher_create_with_mach_msgv(unsigned int *a1, unsigned int *a2)
{
  v4 = *a1;
  if ((*a1 & 0x1F0000) != 0)
  {
    v6 = a1[4];
    a1[4] = 0;
    v7 = v4 & 0x201F0000;
    *a1 = v4 & 0xDFE0FFFF;
    if (a2)
    {
LABEL_3:
      v8 = *a2;
      if (*a2 <= 7)
      {
        _voucher_create_with_mach_msgv_cold_1(v8);
      }

      v9 = v8 - 8;
      v10 = a2 + 2;
      if (v8 == 8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      return _voucher_create_with_mach_voucher(v6, v7, v11, v9);
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = 0;

  return _voucher_create_with_mach_voucher(v6, v7, v11, v9);
}

uint64_t _voucher_create_with_mach_voucher(unsigned int a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    v8 = _voucher_find_and_retain(a1);
    if (v8)
    {
      v9 = v8;
      _voucher_dealloc_mach_voucher(a1);
    }

    else
    {
      v9 = _os_object_alloc_realized(_OS_voucher_vtable);
      *(v9 + 32) = a1;
      *(v9 + 36) = a1;
      *(v9 + 72) = *(v9 + 72) & 0xFE | ((a2 & 0x20000000) != 0);
      _voucher_insert(v9);
    }
  }

  else
  {
    v9 = 0;
  }

  if (a4 < 0x20 || *a3 != 59821818 || !*(a3 + 8))
  {
    return v9;
  }

  if (v9)
  {
    v10 = *(v9 + 48);
    if (v10)
    {
      _voucher_insert_cold_3(v10);
    }

    v11 = *(v9 + 40);
    if (v11)
    {
      _voucher_insert_cold_4(v11);
    }

    v12 = _os_object_alloc_realized(_OS_voucher_vtable);
    if (*(v9 + 32))
    {
      if (*(v9 + 40))
      {
        v13 = *(v9 + 40);
      }

      else
      {
        v13 = v9;
      }

      if (atomic_fetch_add_explicit((v13 + 12), 1u, memory_order_relaxed) <= 0)
      {
        dispatch_group_notify_cold_1();
      }

      *(v12 + 40) = v13;
      *(v12 + 32) = *(v13 + 32);
      *(v12 + 72) = *(v12 + 72) & 0xFE | *(v13 + 72) & 1;
    }

    voucher_release(v9);
  }

  else
  {
    v12 = _os_object_alloc_realized(_OS_voucher_vtable);
  }

  *(v12 + 48) = *(a3 + 8);
  *(v12 + 64) = *(a3 + 24);
  return v12;
}

uint64_t voucher_create_with_mach_msg(unsigned int *a1)
{
  v1 = *a1;
  if ((*a1 & 0x1F0000) != 0)
  {
    v3 = a1[4];
    a1[4] = 0;
    v4 = v1 & 0x201F0000;
    *a1 = v1 & 0xDFE0FFFF;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return _voucher_create_with_mach_voucher(v3, v4, 0, 0);
}

void voucher_decrement_importance_count4CF(uint64_t a1)
{
  if (a1 && *(a1 + 32) && (*(a1 + 72) & 1) != 0)
  {
    v1 = *(a1 + 36) ? *(a1 + 36) : *(a1 + 32);
    *in_content = 1;
    out_contentCnt = 0;
    v2 = mach_voucher_attr_command(v1, 2u, 2u, in_content, 4u, 0, &out_contentCnt);
    if (v2 != 16)
    {
      if (v2 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (v2)
      {
        voucher_decrement_importance_count4CF_cold_2(v2, v2);
      }
    }
  }
}

void _voucher_activity_debug_channel_init()
{
  if (_voucher_libtrace_hooks)
  {
    v0 = *(_voucher_libtrace_hooks + 16);
    if (v0)
    {
      special_port = 0;
      v1 = task_get_special_port(mach_task_self_, 10, &special_port);
      if (v1)
      {
        if (v1 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        _voucher_activity_debug_channel_init_cold_2(v1);
      }

      if (special_port)
      {
        f = dispatch_mach_create_f("com.apple.debug-channel", 0, 0, v0);
        *(f[11] + 29) &= ~0x20u;
        dispatch_mach_connect(f, special_port, 0, 0);
        _voucher_activity_debug_channel = f;
      }
    }
  }
}

uint64_t _voucher_atfork_prepare()
{
  v0 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v0, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v0)
  {
    return _voucher_xref_dispose_cold_1();
  }

  return result;
}

uint64_t _voucher_atfork_parent()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v1 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v1 != v0)
  {
    return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v1);
  }

  return result;
}

__n128 _voucher_atfork_child()
{
  for (i = 0; i != 64; ++i)
  {
    while (1)
    {
      v1 = *(&_voucher_hash + i);
      if (v1 == -1)
      {
        break;
      }

      v2 = ~v1;
      *(v2 + 32) = 0;
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v3 != -1)
      {
        *(23 - v3) = v4;
      }

      *~v4 = v3;
      *(v2 + 16) = xmmword_4AA80;
    }
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  xmmword_78250 = result;
  unk_78260 = result;
  xmmword_78230 = result;
  unk_78240 = result;
  xmmword_78210 = result;
  unk_78220 = result;
  xmmword_781F0 = result;
  unk_78200 = result;
  xmmword_781D0 = result;
  unk_781E0 = result;
  xmmword_781B0 = result;
  unk_781C0 = result;
  xmmword_78190 = result;
  unk_781A0 = result;
  xmmword_78170 = result;
  unk_78180 = result;
  xmmword_78150 = result;
  unk_78160 = result;
  xmmword_78130 = result;
  unk_78140 = result;
  xmmword_78110 = result;
  unk_78120 = result;
  xmmword_780F0 = result;
  unk_78100 = result;
  xmmword_780D0 = result;
  unk_780E0 = result;
  xmmword_780B0 = result;
  unk_780C0 = result;
  xmmword_78090 = result;
  unk_780A0 = result;
  _voucher_hash = result;
  unk_78080 = result;
  _voucher_hash_lock = 0;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224) = 0;
  _voucher_task_mach_voucher_pred = 0;
  _voucher_task_mach_voucher = 0;
  _voucher_default_task_mach_voucher = 0;
  _voucher_aid_next = 0;
  _firehose_task_buffer_pred = 0;
  _firehose_task_buffer = 0;
  return result;
}

uint64_t voucher_process_can_use_arbitrary_personas()
{
  if (_voucher_process_can_use_arbitrary_personas_pred != -1)
  {
    voucher_process_can_use_arbitrary_personas_cold_1();
  }

  return _voucher_process_can_use_arbitrary_personas;
}

uint64_t _voucher_process_can_use_arbitrary_personas_init()
{
  if (_voucher_task_mach_voucher_pred != -1)
  {
    voucher_replace_default_voucher_cold_1();
  }

  *out_content = 0;
  out_contentCnt = 4;
  result = mach_voucher_attr_command(_voucher_task_mach_voucher, 3u, 4u, 0, 0, out_content, &out_contentCnt);
  if (result)
  {
    _voucher_process_can_use_arbitrary_personas_init_cold_2(result);
  }

  _voucher_process_can_use_arbitrary_personas = *out_content != 0;
  return result;
}

uint64_t voucher_copy_with_persona_mach_voucher(int a1)
{
  if (a1)
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (v1)
    {
      v2 = *(v1 + 36);
      if (!v2)
      {
        v2 = *(v1 + 32);
      }
    }

    else
    {
      v2 = 0;
    }

    *recipes = 0x1FFFFFFFFLL;
    v14 = v2;
    v15 = 0x300000000;
    v16 = 10;
    v17 = a1;
    v18 = 0;
    mach_host_port = _dispatch_get_mach_host_port();
    voucher = 0;
    v5 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
    if (v5 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    v6 = v5;
    if (v5)
    {
      _dispatch_bug(944, v5);
      if (v6 == 20)
      {
        return -1;
      }

      if (!v2)
      {
LABEL_14:
        if (atomic_fetch_add_explicit((v1 + 12), 1u, memory_order_relaxed) <= 0)
        {
          dispatch_group_notify_cold_1();
        }

        return v1;
      }

      v7 = 0;
    }

    else
    {
      v7 = voucher;
      if (voucher == v2)
      {
        if (v2)
        {
          _voucher_dealloc_mach_voucher(v2);
        }

        goto LABEL_14;
      }
    }

    v8 = _voucher_find_and_retain(v7);
    if (v8)
    {
      if (!v1 || *(v1 + 36))
      {
        _voucher_dealloc_mach_voucher(v7);
        return v8;
      }

      v10 = _os_object_alloc_realized(_OS_voucher_vtable);
    }

    else
    {
      v9 = _os_object_alloc_realized(_OS_voucher_vtable);
      v10 = v9;
      if (!v1)
      {
        *(v9 + 32) = v7;
        goto LABEL_28;
      }
    }

    v11 = *(v1 + 48);
    *(v10 + 32) = v7;
    *(v10 + 48) = v11;
    *(v10 + 64) = *(v1 + 64);
    if (!*(v1 + 36))
    {
      if (v8)
      {
        *(v10 + 40) = v8;
        _voucher_dealloc_mach_voucher(v7);
      }

      return v10;
    }

LABEL_28:
    *(v10 + 36) = v7;
    _voucher_insert(v10);
    return v10;
  }

  return voucher_copy();
}

BOOL voucher_copy_with_persona_mach_voucher_and_error(int a1, uint64_t *a2)
{
  v3 = voucher_copy_with_persona_mach_voucher(a1);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return v3 == -1;
}

uint64_t mach_voucher_persona_self(ipc_voucher_t *a1)
{
  *recipes = xmmword_4AAE8;
  v9 = unk_4AAF8;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  v3 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
  if (v3 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v4 = v3;
  if (v3)
  {
    _dispatch_bug(1015, v3);
    v5 = 0;
  }

  else
  {
    v5 = voucher;
  }

  *a1 = v5;
  return v4;
}

uint64_t mach_voucher_persona_for_originator(int a1, int a2, uint64_t a3, ipc_voucher_t *a4)
{
  *recipes = 0x100000003;
  v10 = a2;
  v11 = xmmword_4AAA0;
  v12 = 16;
  v13 = a1;
  v14 = 0;
  v15 = a3;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  result = host_create_mach_voucher(mach_host_port, recipes, 0x30u, &voucher);
  if (result == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v7 = voucher;
  if (result)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t voucher_get_current_persona()
{
  *out_content = -1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = *(StatusReg + 224);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = v2;
      }

      out_contentCnt = 4;
      v5 = mach_voucher_attr_command(v4, 3u, 3u, 0, 0, out_content, &out_contentCnt);
      if (v5 > 0x2E || ((1 << v5) & 0x400000040011) == 0)
      {
        _dispatch_bug(1118, v5);
      }

      else if (!v5)
      {
        return *out_content;
      }
    }
  }

  if ((kpersona_get() & 0x80000000) != 0)
  {
    v7 = **(StatusReg + 8);
    if (v7 != 3 && v7 != 0)
    {
      _dispatch_bug(1141, v7);
    }
  }

  return *out_content;
}

double voucher_get_current_persona_originator_info(_OWORD *a1)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  if (!_voucher_get_current_persona_token(&v4))
  {
    v3 = v5;
    *a1 = v4;
    a1[1] = v3;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t _voucher_get_current_persona_token(mach_voucher_attr_content_t out_content)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (!v1)
  {
    return 5;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 5;
  }

  v4 = *(v1 + 36);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  out_contentCnt = 96;
  result = mach_voucher_attr_command(v5, 3u, 2u, 0, 0, out_content, &out_contentCnt);
  if (result > 0x2E || ((1 << result) & 0x400000040011) == 0)
  {
    v8 = result;
    _dispatch_bug(1090, result);
    return v8;
  }

  return result;
}

double voucher_get_current_persona_proximate_info(_OWORD *a1)
{
  v6 = 0u;
  *v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  if (!_voucher_get_current_persona_token(v4))
  {
    v3 = v6;
    *a1 = v5;
    a1[1] = v3;
    result = v7[0];
    a1[2] = *v7;
  }

  return result;
}

BOOLean_t voucher_mach_msg_set(mach_msg_header_t *msg)
{
  if ((msg->msgh_bits & 0x1F0000) != 0)
  {
    return 0;
  }

  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v3)
  {
    mach_voucher = _voucher_get_mach_voucher(v3);
  }

  else
  {
    if (_voucher_task_mach_voucher_pred != -1)
    {
      voucher_replace_default_voucher_cold_1();
    }

    mach_voucher = _voucher_task_mach_voucher;
  }

  msgh_bits = msg->msgh_bits;
  if (mach_voucher)
  {
    v6 = (msg->msgh_bits & 0x1F0000) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  msg->msgh_voucher_port = mach_voucher;
  msg->msgh_bits = msgh_bits | 0x130000;
  return 1;
}

void voucher_mach_msg_clear(mach_msg_header_t *msg)
{
  msgh_bits = msg->msgh_bits;
  v3 = HIWORD(msg->msgh_bits) & 0x1F;
  msgh_voucher_port = msg->msgh_voucher_port;
  if ((v3 == 17 || v3 == 19) && msgh_voucher_port != 0)
  {
    if (v3 == 17)
    {
      _voucher_dealloc_mach_voucher(msgh_voucher_port);
      msgh_bits = msg->msgh_bits;
    }

    msg->msgh_voucher_port = 0;
    msg->msgh_bits = msgh_bits & 0xFFE0FFFF;
  }
}

voucher_mach_msg_state_t voucher_mach_msg_adopt(mach_msg_header_t *msg)
{
  msgh_bits = msg->msgh_bits;
  if ((msg->msgh_bits & 0x1F0000) == 0)
  {
    return -1;
  }

  msgh_voucher_port = msg->msgh_voucher_port;
  msg->msgh_voucher_port = 0;
  msg->msgh_bits = msgh_bits & 0xDFE0FFFF;
  if (!msgh_voucher_port)
  {
    return -1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 984);
  if (v5)
  {
    v8 = *v5;
    v6 = v5 + 2;
    v7 = v8;
    v9 = v8 - 8;
    if (v8 == 8)
    {
      v6 = 0;
    }

    if (v7 <= 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v7 <= 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v14 = _voucher_create_with_mach_voucher(msgh_voucher_port, msgh_bits & 0x201F0000, v11, v10);
  v12 = *(StatusReg + 224);
  if (v12 != v14)
  {
    *(StatusReg + 224) = v14;
    if (v14)
    {
      v15 = *(v14 + 32);
      if (v12)
      {
LABEL_18:
        v16 = *(v12 + 8);
LABEL_21:
        if (v15 != -1 && v15 != v16)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v15);
        }

        return v12;
      }
    }

    else
    {
      v15 = 0;
      if (v12)
      {
        goto LABEL_18;
      }
    }

    v16 = 0;
    goto LABEL_21;
  }

  return v12;
}

void voucher_mach_msg_revert(voucher_mach_msg_state_t state)
{
  if (state == -1)
  {
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 224);
  if (v2 != state)
  {
    *(StatusReg + 224) = state;
    if (state)
    {
      v3 = *(state + 8);
      if (v2)
      {
LABEL_5:
        v4 = *(v2 + 32);
LABEL_8:
        if (v3 != -1 && v3 != v4)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v3);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if (v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    goto LABEL_8;
  }

LABEL_11:
  if (v2)
  {
    add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(add_explicit, v2);
    }
  }
}

void voucher_activity_initialize_4libtrace(uint64_t *a1)
{
  if (*a1 <= 2)
  {
    voucher_activity_initialize_4libtrace_cold_2(*a1);
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_libtrace_hooks, &v1, a1, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    voucher_activity_initialize_4libtrace_cold_1();
  }
}

unint64_t voucher_activity_id_allocate(unsigned __int8 a1)
{
  v2 = _voucher_aid_next;
  while (1)
  {
    v3 = v2;
    if (!v2 || ((v2 + 1) & 0xF) == 0)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v2, v2 + 1, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v3)
    {
      return v3 & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
    }
  }

  _voucher_activity_id_allocate_slow(v2);
  return v3 & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
}

mach_vm_address_t voucher_activity_get_logging_preferences(mach_vm_size_t *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    *a1 = 0;
    return 0;
  }

  else
  {
    v2 = *(_firehose_task_buffer + 1676);

    return firehose_buffer_get_logging_prefs(v2, a1);
  }
}

uint64_t voucher_activity_get_metadata_buffer(void *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  v2 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    result = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = 2048;
    return v2 + 2048;
  }

  return result;
}

uint64_t voucher_activity_create_with_data_2(unint64_t *a1, uint64_t a2, int a3, const void *a4, size_t a5, char a6)
{
  LODWORD(v7) = a5 + 8;
  v8 = (a5 + 8);
  if (a5 >= 0xFFF8 || v8 >= 0x81)
  {
    voucher_activity_create_with_data_2_cold_4(v8);
  }

  v11 = *a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = *(StatusReg + 224);
  if (a2 == -3)
  {
    v13 = *(StatusReg + 224);
  }

  else
  {
    v13 = a2;
  }

  v113 = v11;
  v14 = v11 >> 16;
  v15 = (v11 >> 16) & 0xFFFFFFEF;
  if (v12)
  {
    v16 = *(v12 + 48);
    if (v16)
    {
      LOWORD(v15) = v15 | 1;
      v17 = *(v12 + 56);
      LODWORD(v7) = a5 + 24;
      if (v17)
      {
        LOWORD(v15) = v14 | 0x11;
      }

      else
      {
        LODWORD(v7) = a5 + 16;
      }

      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_15:
      v18 = *(v13 + 48);
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_12:
  v18 = 0;
LABEL_16:
  if (v18)
  {
    v7 = (v7 + 8);
  }

  else
  {
    v7 = v7;
  }

  v121 = v7;
  if (v18)
  {
    v19 = v15 | 0x200;
  }

  else
  {
    v19 = v15;
  }

  v112 = v19;
  v20 = MEMORY[0xFFFFFC104];
  v21 = _os_object_alloc_realized(_OS_voucher_vtable);
  if (v13 && *(v13 + 32))
  {
    if (*(v13 + 40))
    {
      v22 = *(v13 + 40);
    }

    else
    {
      v22 = v13;
    }

    if (atomic_fetch_add_explicit((v22 + 12), 1u, memory_order_relaxed) <= 0)
    {
      dispatch_group_notify_cold_1();
    }

    *(v21 + 40) = v22;
    *(v21 + 32) = *(v22 + 32);
    *(v21 + 72) = *(v21 + 72) & 0xFE | *(v22 + 72) & 1;
  }

  v120 = a6 & 1;
  v23 = _voucher_aid_next;
  while (1)
  {
    v24 = v23;
    if (!v23 || ((v23 + 1) & 0xF) == 0)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v23, v23 + 1, memory_order_relaxed, memory_order_relaxed);
    if (v23 == v24)
    {
      goto LABEL_33;
    }
  }

  _voucher_activity_id_allocate_slow(v23);
LABEL_33:
  v25 = v24 & 0xFFFFFFFFFFFFFFLL | ((a3 | HIBYTE(v18) | ~v20 & 0x80) << 56);
  v26 = _voucher_unique_pid;
  *(v21 + 48) = v25;
  *(v21 + 56) = v26;
  *(v21 + 64) = v18;
  v114 = v18;
  v115 = v17;
  v110 = v21;
  v111 = a1;
  v116 = v16;
  v119 = v25;
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  if (_firehose_task_buffer && *(_firehose_task_buffer + 1680) != -1)
  {
    if ((a3 | HIBYTE(v18)) & 0x80 | ~v20 & 0x80 || (MEMORY[0xFFFFFC104] & 0x80) == 0)
    {
      v27 = mach_continuous_time();
    }

    else
    {
      v27 = mach_continuous_approximate_time();
    }

    v123 = v27;
    v28 = 0;
    v29 = (v121 + 24);
    if ((v121 & 7) != 0)
    {
      v30 = (v121 & 0xFFF8) + 32;
    }

    else
    {
      v30 = v121 + 24;
    }

    v109 = v121 << 48;
    v31 = 1;
    while (1)
    {
      v32 = v31;
      v33 = voucher_activity_create_with_data_2_streams[v28];
      v34 = _firehose_task_buffer;
      v35 = (_firehose_task_buffer + (v33 << 7) + 640);
      v36 = *v35;
      v37 = HIDWORD(*v35);
      v38 = *v35 >> 40;
      v39 = HIWORD(*v35);
      if ((v31 & 1) == 0)
      {
        break;
      }

      v40 = 2;
      do
      {
        while (1)
        {
          v41 = v37;
          if ((v37 - 1) <= 0xFDu)
          {
            v42 = v34 + (v37 << 12);
            v43 = *v42;
            if (*v42)
            {
              v44 = v123 - *(v42 + 8);
              while ((HIWORD(v43) & 0x1FF) == v33)
              {
                v46 = v29 + v43 > WORD1(v43) || HIWORD(v44) != 0;
                v47 = v43 + v30;
                v48 = v43 + v30 + 0x100000000;
                v49 = (v43 + v30) >> 16;
                v50 = ((v43 + v30) + 40 > v49) | HIBYTE(v48);
                if (v46)
                {
                  v48 = v43;
                  v50 = HIBYTE(v43) | 1;
                  v49 = v43 >> 16;
                  v47 = v43;
                }

                v51 = v48 & 0xFFFFFF00000000 | (v50 << 56) | (v49 << 16) | v47;
                v52 = v43;
                atomic_compare_exchange_strong_explicit(v42, &v52, v51, memory_order_relaxed, memory_order_relaxed);
                if (v52 == v43)
                {
                  if (v46)
                  {
                    if ((v48 & 0xFF00000000) == 0)
                    {
                      v105 = v40;
                      v107 = v35;
                      firehose_buffer_ring_enqueue(v34, v37);
                      v40 = v105;
                      v35 = v107;
                    }

                    break;
                  }

                  v57 = v43;
                  if (!v43)
                  {
                    break;
                  }

                  v100 = *(StatusReg - 8);
                  v99 = (v42 + v57);
                  *(v42 + v57 + 16) = v44 | v109;
                  goto LABEL_127;
                }

                v43 = v52;
                if (!v52)
                {
                  break;
                }
              }
            }

            v41 = 0;
          }

          if (!v36)
          {
            break;
          }

          v58 = v36 | 1;
          v59 = (v39 << 48) | (v38 << 40);
          v60 = v58 | (v41 << 32);
          v61 = v60 | v59;
          v62 = v36 | (v37 << 32);
          if (v60 != v62)
          {
            v63 = v62 | v59;
            v36 = v63;
            atomic_compare_exchange_strong_explicit(v35, &v36, v61, memory_order_relaxed, memory_order_relaxed);
            v37 = HIDWORD(v36);
            v38 = v36 >> 40;
            v39 = HIWORD(v36);
            if (v36 != v63)
            {
              continue;
            }
          }

          if (MEMORY[0xFFFFFC100])
          {
            v65 = v35;
            v66 = v58;
            kdebug_trace();
            v35 = v65;
            LODWORD(v58) = v66;
          }

          v64 = v35;
          _dispatch_firehose_gate_wait(v35, v58);
          v35 = v64;
          v36 = *v64;
          v37 = HIDWORD(*v64);
          v38 = *v64 >> 40;
          v39 = HIWORD(*v64);
          v40 = 3;
        }

        v53 = (v39 << 48) | (v38 << 40);
        v54 = v53 | (v37 << 32);
        v55 = *(StatusReg + 24) & 0xFFFFFFFCLL | (v41 << 32) | v53;
        v56 = v54;
        atomic_compare_exchange_strong_explicit(v35, &v56, v55, memory_order_relaxed, memory_order_relaxed);
        v37 = HIDWORD(v56);
        v38 = v56 >> 40;
        v39 = HIWORD(v56);
        LODWORD(v36) = v56;
      }

      while (v56 != v54);
      v124 = v123;
      v125 = v121;
      BYTE4(v125) = v33;
      v97 = 2 * *(v34 + 1697);
      if (((1 << v33) & 0x93) != 0)
      {
        ++v97;
      }

      v98 = v97 | 4;
LABEL_121:
      BYTE6(v125) = v98;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      v99 = firehose_buffer_tracepoint_reserve_slow(v34, &v124, 0);
      if (v99)
      {
LABEL_128:
        if (v116)
        {
          v99[3] = v116;
          v101 = v99 + 4;
        }

        else
        {
          v101 = v99 + 3;
        }

        if (v115)
        {
          *v101++ = v115;
        }

        if (v114)
        {
          *v101++ = v114;
        }

        *v101 = v119;
        memcpy(v101 + 1, a4, a5);
        v102 = _firehose_task_buffer;
        atomic_store(v113 & 0xFFFFFFFF0000FFFFLL | (v112 << 16), v99);
        if ((atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFF000), 0xFFFFFFFF00000000, memory_order_relaxed) & 0x10000FF00000000) == 0x100000100000000)
        {
          firehose_buffer_ring_enqueue(v102, (((v99 & 0xFFFFF000) - v102) >> 12));
        }
      }

LABEL_137:
      v31 = 0;
      v28 = 1;
      if ((v32 & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    v67 = 0;
LABEL_77:
    v68 = v67 ^ 1;
    while (1)
    {
      v69 = v37;
      if ((v37 - 1) <= 0xFDu)
      {
        v70 = v34 + (v37 << 12);
        v71 = *v70;
        if (*v70)
        {
          v72 = v123 - *(v70 + 8);
          while ((HIWORD(v71) & 0x1FF) == v33)
          {
            v74 = v29 + v71 > WORD1(v71) || HIWORD(v72) != 0;
            v75 = v71 + v30;
            v76 = v71 + v30 + 0x100000000;
            v77 = (v71 + v30) >> 16;
            v78 = ((v71 + v30) + 40 > v77) | HIBYTE(v76);
            if (v74)
            {
              v76 = v71;
              v78 = HIBYTE(v71) | 1;
              v77 = v71 >> 16;
              v75 = v71;
            }

            v79 = v76 & 0xFFFFFF00000000 | (v78 << 56) | (v77 << 16) | v75;
            v80 = v71;
            atomic_compare_exchange_strong_explicit(v70, &v80, v79, memory_order_relaxed, memory_order_relaxed);
            if (v80 == v71)
            {
              if (v74)
              {
                if ((v76 & 0xFF00000000) == 0)
                {
                  v104 = v68;
                  v106 = v67;
                  v108 = v35;
                  firehose_buffer_ring_enqueue(v34, v37);
                  v68 = v104;
                  v67 = v106;
                  v35 = v108;
                }

                break;
              }

              v86 = v71;
              if (!v71)
              {
                break;
              }

              v100 = *(StatusReg - 8);
              v99 = (v70 + v86);
              *(v70 + v86 + 16) = v72 | v109;
LABEL_127:
              v99[1] = v100;
              goto LABEL_128;
            }

            v71 = v80;
            if (!v80)
            {
              break;
            }
          }
        }

        v69 = 0;
      }

      if (!v120)
      {
        break;
      }

      if (!(v68 & 1 | ((v38 & 0x40) == 0)) || (v38 & 0x80) != 0)
      {
        v83 = v38 & 0x3F;
        if ((v38 & 0x3Fu) >= 0x3E)
        {
          v83 = 62;
        }

        v85 = ((((v83 | v38 & 0xC0) + 1) << 40) | (v69 << 32)) & 0xFFFFFFFFFFFFLL | (v39 << 48) | v36;
        v36 = (v38 << 40) | (v37 << 32) | (v39 << 48) | v36;
        v84 = v36;
        atomic_compare_exchange_strong_explicit(v35, &v36, v85, memory_order_relaxed, memory_order_relaxed);
        if (v36 == v84)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          goto LABEL_137;
        }

LABEL_108:
        v37 = HIDWORD(v36);
        v38 = v36 >> 40;
        v39 = HIWORD(v36);
      }

      else
      {
        if (!v36)
        {
          goto LABEL_103;
        }

        v81 = 2;
LABEL_112:
        v87 = v36 | v81;
        v88 = (v39 << 48) | (v38 << 40);
        v89 = v87 | (v69 << 32);
        v90 = v89 | v88;
        v91 = v36 | (v37 << 32);
        if (v89 == v91 || (v92 = v91 | v88, v93 = v92, atomic_compare_exchange_strong_explicit(v35, &v93, v90, memory_order_relaxed, memory_order_relaxed), v38 = v93 >> 40, v39 = HIWORD(v93), v37 = HIDWORD(v93), LODWORD(v36) = v93, v93 == v92))
        {
          if (MEMORY[0xFFFFFC100])
          {
            v95 = v35;
            v96 = v87;
            kdebug_trace();
            LODWORD(v87) = v96;
            v35 = v95;
          }

          v94 = v35;
          _dispatch_firehose_gate_wait(v35, v87);
          v35 = v94;
          v36 = *v94;
          v37 = HIDWORD(*v94);
          v38 = *v94 >> 40;
          v39 = HIWORD(*v94);
          v67 = 1;
          goto LABEL_77;
        }
      }
    }

    if (v36)
    {
      v81 = 1;
      goto LABEL_112;
    }

LABEL_103:
    v82 = (v39 << 48) | (v38 << 40);
    v36 = v82 | (v37 << 32);
    atomic_compare_exchange_strong_explicit(v35, &v36, *(StatusReg + 24) & 0xFFFFFFFCLL | (v69 << 32) | v82, memory_order_relaxed, memory_order_relaxed);
    if (v36 == (v82 | (v37 << 32)))
    {
      v124 = v123;
      v125 = v121;
      BYTE4(v125) = v33;
      v98 = ((4 * v120) | (2 * *(v34 + 1697)) | (((1 << v33) & 0x93) != 0)) ^ 4;
      goto LABEL_121;
    }

    goto LABEL_108;
  }

LABEL_141:
  *v111 = v113 & 0xFFFFFFFF0000FFFFLL | (v112 << 16);
  return v110;
}

uint64_t voucher_get_activity_id_and_creator(void *a1, void *a2, void *a3)
{
  if (a1 == -3)
  {
    a1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    if (a2)
    {
      *a2 = a1[7];
    }

    if (a3)
    {
      *a3 = a1[8];
    }

    return a1[6];
  }

  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t voucher_get_activity_id(uint64_t a1, void *a2)
{
  if (a1 == -3)
  {
    a1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    if (a2)
    {
      *a2 = *(a1 + 64);
    }

    return *(a1 + 48);
  }

  result = 0;
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

void voucher_activity_flush(unsigned int a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  v2 = _firehose_task_buffer;
  if (_firehose_task_buffer && *(_firehose_task_buffer + 1680) != -1)
  {
    v3 = a1;
    v4 = _firehose_task_buffer + (a1 << 7);
    v5 = *(v4 + 640);
    if ((~v5 & 0xFF00000000) == 0 || BYTE4(*(v4 + 640)) == 0)
    {

      firehose_buffer_force_connect(v2);
    }

    else
    {
      v7 = _firehose_task_buffer + (BYTE4(v5) << 12);
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 + 8);
        while ((HIWORD(v8) & 0x1FF) == v3)
        {
          v11 = v8 + 25 > WORD1(v8) || v9 < 0xFFFF000000000000;
          v12 = v8 + 0x100000020;
          v13 = (v8 + 0x100000020) >> 16;
          v14 = ((v8 + 32) + 40 > v13) | ((v8 + 0x100000020) >> 56);
          if (v11)
          {
            v12 = v8;
            v14 = HIBYTE(v8) | 1;
            v13 = v8 >> 16;
          }

          v15 = v12 & 0xFFFFFF00000000 | (v14 << 56) | (v13 << 16) | v12;
          v16 = v8;
          atomic_compare_exchange_strong_explicit(v7, &v16, v15, memory_order_relaxed, memory_order_relaxed);
          if (v16 == v8)
          {
            if (v11)
            {
              if ((v12 & 0xFF00000000) == 0)
              {
                firehose_buffer_ring_enqueue(v2, BYTE4(v5));
              }
            }

            else if (v8)
            {
              voucher_activity_flush_cold_2(v8);
            }

            break;
          }

          v8 = v16;
          if (!v16)
          {
            break;
          }
        }
      }

      atomic_compare_exchange_strong_explicit((v4 + 640), &v17, v5 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
    }
  }
}

unint64_t voucher_activity_trace_v_2(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, unint64_t a6, char a7)
{
  LOBYTE(v8) = a7;
  v12 = a3;
  v14 = a1;
  if (_firehose_task_buffer_pred != -1)
  {
LABEL_106:
    v75 = v14;
    v76 = v12;
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
    v14 = v75;
    v12 = v76;
  }

  v15 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    return 0;
  }

  v95 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = *(StatusReg + 224);
  if (v17)
  {
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    v20 = v19 == 0;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = 1;
  }

  v21 = a5 + 8;
  if (!v18)
  {
    v21 = a5;
  }

  v22 = !v20;
  if (v20)
  {
    v23 = (v18 != 0) | (a2 >> 16) & 0xFFFFFFEF;
  }

  else
  {
    LOWORD(v23) = (v18 != 0) | WORD1(a2);
  }

  if (v22)
  {
    v24 = v21 + 8;
  }

  else
  {
    v24 = v21;
  }

  if ((a2 & 0x100000) != 0)
  {
    v25 = v19;
  }

  else
  {
    v25 = 0;
  }

  if ((a2 & 0x100000) != 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = (v18 != 0) | WORD1(a2);
  }

  if ((a2 & 0x100000) != 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v21;
  }

  v28 = v26 | 0x100;
  if (a6)
  {
    v29 = v27 + 4;
  }

  else
  {
    v28 = v26;
    v29 = v27;
  }

  if (&v29[a6 + 24] < 0xFF1)
  {
    v86 = v28;
    v87 = a2;
    v30 = 0;
    v31 = v8 & 1;
    v32 = v14;
    v92 = (v15 + (v14 << 7) + 640);
    a2 = *v92;
    if ((v29 & 7) != 0)
    {
      v7 = (v29 & 0xFFF8u) + 32;
    }

    else
    {
      v7 = v29 + 24;
    }

    v8 = a6 << 16;
LABEL_32:
    v33 = HIDWORD(a2);
    v90 = v30 ^ 1;
    v93 = HIWORD(a2);
    for (i = a2 >> 40; ; i = a2 >> 40)
    {
      while (1)
      {
        v34 = v33;
        v35 = i;
        if ((v33 - 1) <= 0xFDu)
        {
          break;
        }

LABEL_54:
        if (v31)
        {
          goto LABEL_61;
        }

LABEL_55:
        if (!a2)
        {
          goto LABEL_64;
        }

        v49 = 1;
LABEL_73:
        v55 = a2 | v49;
        v56 = (v93 << 48) | (v35 << 40);
        v57 = v55 | (v34 << 32);
        v58 = v57 | v56;
        v59 = a2 | (v33 << 32);
        if (v57 != v59)
        {
          v60 = v59 | v56;
          v61 = v60;
          atomic_compare_exchange_strong_explicit(v92, &v61, v58, memory_order_relaxed, memory_order_relaxed);
          v93 = HIWORD(v61);
          i = v61 >> 40;
          v33 = HIDWORD(v61);
          a2 = v61;
          if (v61 != v60)
          {
            continue;
          }
        }

        v89 = v31;
        v79 = StatusReg;
        v81 = v25;
        v83 = v14;
        v85 = v18;
        v62 = v12;
        v91 = v55;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        _dispatch_firehose_gate_wait(v92, v91);
        a2 = *v92;
        v30 = 1;
        v12 = v62;
        v18 = v85;
        v14 = v83;
        StatusReg = v79;
        v25 = v81;
        v31 = v89;
        goto LABEL_32;
      }

      v36 = v15 + (v33 << 12);
      v37 = *v36;
      if (*v36)
      {
        v88 = v31;
        v38 = v12 - *(v36 + 8);
        while (1)
        {
          if ((HIWORD(v37) & 0x1FF) != v32)
          {
            goto LABEL_53;
          }

          v40 = (v29 + 24 + a6) + v37 > WORD1(v37) || HIWORD(v38) != 0;
          v41 = v37 + v7;
          v42 = v37 + v7 - v8;
          v43 = v42 >> 16;
          v44 = ((v37 + v7) + 40 > WORD1(v42)) | ((v42 + 0x100000000) >> 56);
          if (v40)
          {
            v45 = v37;
          }

          else
          {
            v45 = v42 + 0x100000000;
          }

          if (v40)
          {
            v44 = HIBYTE(v37) | 1;
            v46 = v37 >> 16;
          }

          else
          {
            LOWORD(v46) = v43;
          }

          if (v40)
          {
            v41 = v37;
          }

          v47 = v45 & 0xFFFFFF00000000 | (v44 << 56) | (v46 << 16) | v41;
          v48 = v37;
          atomic_compare_exchange_strong_explicit(v36, &v48, v47, memory_order_relaxed, memory_order_relaxed);
          if (v48 == v37)
          {
            break;
          }

          v37 = v48;
          if (!v48)
          {
            goto LABEL_53;
          }
        }

        if (!v40)
        {
          v95 = (v36 + v46);
          if (!v37)
          {
LABEL_53:
            v34 = 0;
            v31 = v88;
            goto LABEL_54;
          }

          v74 = *(StatusReg - 8);
          v67 = v36 + v37;
          *(v67 + 16) = v38 | (v29 << 48);
          *(v67 + 8) = v74;
          if (v18)
          {
            goto LABEL_85;
          }

LABEL_101:
          v68 = (v67 + 24);
          if (!v25)
          {
            goto LABEL_87;
          }

LABEL_86:
          *v68++ = v25;
          goto LABEL_87;
        }

        v31 = v88;
        if ((v45 & 0xFF00000000) == 0)
        {
          v84 = v18;
          v77 = v12;
          v82 = v14;
          v78 = StatusReg;
          v80 = v25;
          firehose_buffer_ring_enqueue(v15, v33);
          v35 = i;
          v31 = v88;
          StatusReg = v78;
          v25 = v80;
          v14 = v82;
          v18 = v84;
          v12 = v77;
        }
      }

      v34 = 0;
      if (!v31)
      {
        goto LABEL_55;
      }

LABEL_61:
      if (!(v90 & 1 | ((v35 & 0x40) == 0)) || (v35 & 0x80) != 0)
      {
        v51 = v35 & 0x3F;
        if ((v35 & 0x3Fu) >= 0x3E)
        {
          v51 = 62;
        }

        v52 = (v35 << 40) | (v33 << 32) | (v93 << 48);
        v54 = ((((v51 | v35 & 0xC0) + 1) << 40) | (v34 << 32)) & 0xFFFFFFFFFFFFLL | (v93 << 48) | a2;
        a2 = v52 | a2;
        v53 = a2;
        atomic_compare_exchange_strong_explicit(v92, &a2, v54, memory_order_relaxed, memory_order_relaxed);
        if (a2 == v53)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          return 0;
        }

        goto LABEL_69;
      }

      if (a2)
      {
        v49 = 2;
        goto LABEL_73;
      }

LABEL_64:
      v50 = (v93 << 48) | (v35 << 40);
      a2 = v50 | (v33 << 32);
      atomic_compare_exchange_strong_explicit(v92, &a2, *(StatusReg + 24) & 0xFFFFFFFCLL | (v34 << 32) | v50, memory_order_relaxed, memory_order_relaxed);
      if (a2 == (v50 | (v33 << 32)))
      {
        v7 = v25;
        a2 = v18;
        v96 = v12;
        v97 = v29;
        WORD1(v97) = a6;
        BYTE4(v97) = v14;
        v63 = (2 * *(v15 + 1697)) | (4 * v31);
        if (((1 << v32) & 0x93) != 0)
        {
          ++v63;
        }

        BYTE6(v97) = v63 ^ 4;
        if (MEMORY[0xFFFFFC100])
        {
          goto LABEL_108;
        }

        goto LABEL_81;
      }

LABEL_69:
      v33 = HIDWORD(a2);
      v93 = HIWORD(a2);
    }
  }

  qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Log is too large";
  qword_782C8 = &v29[a6 + 24];
  __break(1u);
LABEL_108:
  kdebug_trace();
LABEL_81:
  v64 = firehose_buffer_tracepoint_reserve_slow(v15, &v96, &v95);
  if (!v64)
  {
    return 0;
  }

  v67 = v64;
  v18 = a2;
  v25 = v7;
  if (!a2)
  {
    goto LABEL_101;
  }

LABEL_85:
  *(v67 + 24) = v18;
  v68 = (v67 + 32);
  if (v25)
  {
    goto LABEL_86;
  }

LABEL_87:
  if (a6)
  {
    *v68 = (v95 - (v67 & 0xF000)) | (a6 << 16);
    v68 = (v68 + 4);
  }

  while (a5)
  {
    v7 = *(a4 + 8);
    memcpy(v68, *a4, v7);
    v69 = *(a4 + 8);
    v70 = a5 >= v69;
    a5 -= v69;
    if (!v70)
    {
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
LABEL_105:
      qword_78298 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
      goto LABEL_106;
    }

    v68 = (v68 + v7);
    a4 += 16;
  }

  a2 = v87;
  if (a6)
  {
    a5 = v95;
    do
    {
      v71 = *(a4 + 8);
      memcpy(a5, *a4, v71);
      a5 += v71;
      v95 = a5;
      v72 = *(a4 + 8);
      v70 = a6 >= v72;
      a6 -= v72;
      if (!v70)
      {
        goto LABEL_105;
      }

      a4 += 16;
    }

    while (a6);
  }

  v73 = _firehose_task_buffer;
  v65 = v87 & 0xFFFFFFFF0000FFFFLL | (v86 << 16);
  atomic_store(v65, v67);
  if ((atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFF000), 0xFFFFFFFF00000000, memory_order_relaxed) & 0x10000FF00000000) == 0x100000100000000)
  {
    firehose_buffer_ring_enqueue(v73, (((v67 & 0xFFFFF000) - v73) >> 12));
  }

  return v65;
}