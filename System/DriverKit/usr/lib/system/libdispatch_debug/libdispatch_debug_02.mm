void *_dispatch_pthread_root_queue_create(const char *a1, int a2, uint64_t a3, const void *a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v31 = 0;
  if (a2 < 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = 0;
  }

  if (a1)
  {
    v30 = _dispatch_strdup_if_mutable(a1);
    if (v30 != v35)
    {
      v31 = 0x200000;
      v35 = v30;
    }
  }

  v29 = _dispatch_object_alloc(_OS_dispatch_queue_pthread_root_vtable, 0x140uLL, a3, a4, a5, a6, a7, a8);
  _dispatch_queue_init(v29, v31, 4095, 0, v8, v9, v10, v11);
  v29[9] = v35;
  v29[7] = 0x60000000000000;
  *(v29 + 21) = 0x80000000;
  v29[4] = v29 + 15;
  v28 = (v29 + 15);
  _dispatch_root_queue_init_pthread_pool(v29, v25, 0x80000000);
  if (a3)
  {
    __memcpy_chk();
    _dispatch_mgr_priority_raise(v28);
  }

  else
  {
    v27 = pthread_attr_init(v28);
    if (v27)
    {
      _dispatch_bug(7729, v27, v12, v13, v14, v15, v16, v17);
    }
  }

  v26 = pthread_attr_setdetachstate(v28, 2);
  if (v26)
  {
    _dispatch_bug(7732, v26, v18, v19, v20, v21, v22, v23);
  }

  if (a4)
  {
    v29[23] = _dispatch_Block_copy(a4);
  }

  if (a5)
  {
    *(v29 + 33) = *a5;
  }

  _dispatch_object_debug(v29, "%s", v18, v19, v20, v21, v22, v23, "_dispatch_pthread_root_queue_create");
  return v29;
}

void *_dispatch_pthread_root_queue_create_with_observer_hooks_4IOHID(const char *a1, int a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a4 || !*(a4 + 8))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid pthread root queue observer hooks";
    __break(1u);
    JUMPOUT(0x3BCB4);
  }

  return _dispatch_pthread_root_queue_create(a1, a2, a3, a5, a4, a6, a7, a8);
}

BOOL _dispatch_queue_is_exclusively_owned_by_current_thread_4IOHID(uint64_t a1)
{
  if (*(a1 + 80) != 1)
  {
    v1 = *(a1 + 80);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue type";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x3BD40);
  }

  v3 = *(a1 + 56);
  return ((v3 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0;
}

uint64_t *dispatch_pthread_root_queue_copy_current()
{
  v2 = _dispatch_thread_getspecific(20);
  if (!v2)
  {
    return 0;
  }

  while (v2[3])
  {
    v2 = v2[3];
  }

  v1 = 0;
  if (*v2)
  {
    v1 = *v2;
  }

  if (*(v1 + 16) != 328721)
  {
    return 0;
  }

  _os_object_retain_with_resurrect(v2);
  return v2;
}

void _dispatch_pthread_root_queue_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[4];
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_pthread_root_queue_dispose");
  v11 = a1[8];
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  pthread_attr_destroy(v8);
  _dispatch_semaphore_dispose(v8[1].__opaque);
  if (v8[1].__sig)
  {
    _Block_release(v8[1].__sig);
  }

  a1[3] = &off_E0600;
  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_wakeup(uint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 80) & 0x800000) != 0 || (a3 & 2) != 0 && (atomic_fetch_or_explicit((a1 + 56), 0x8000000000uLL, memory_order_release) & 0xFFFFFFFC) == 0)
  {
    _dispatch_lane_wakeup(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (*(a1 + 48))
  {
    _dispatch_runloop_queue_poke(a1, a2, a3);
  }

  else
  {
    v8 = (atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) & 0x700000000) >> 32;
    if (v8)
    {
      if ((*(a1 + 56) & 0xFFFFFFFC) != 0)
      {
        v9 = *(a1 + 56) | 3;
      }

      if (*(a1 + 48))
      {
        _dispatch_runloop_queue_poke(a1, v8, a3);
      }

      if (_dispatch_set_qos_class_enabled)
      {
        _pthread_qos_override_end_direct();
      }
    }

    else if (a3)
    {
      _dispatch_release_2_tailcall(a1);
    }
  }
}

void _dispatch_runloop_queue_poke(uint64_t *a1, unsigned int a2, char a3)
{
  v6 = 0;
  if (*a1)
  {
    v6 = *a1;
  }

  if (*(v6 + 16) == 394769 && _dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, a1, _dispatch_runloop_queue_handle_init);
  }

  v14 = a2;
  if (!a2)
  {
    v14 = (*(a1 + 21) & 0xF000u) >> 12;
  }

  if (v14 > (*(a1 + 21) & 0xF00u) >> 8)
  {
    v5 = v14;
  }

  else
  {
    v5 = (*(a1 + 21) & 0xF00u) >> 8;
  }

  v8 = a1[7];
  while (1)
  {
    v13 = v8;
    v12 = v5 << 32;
    if ((v8 & 0x700000000) < v12)
    {
      v13 = v8 & 0xFFFFFFF8FFFFFFFFLL | v12;
      if (v8 & 0x1000000000 | v12 & 0x1000000000)
      {
        v13 |= 0x800000000uLL;
      }
    }

    if (v8 == v13)
    {
      break;
    }

    v3 = v8;
    v4 = v8;
    atomic_compare_exchange_strong_explicit((a1 + 7), &v4, v13, memory_order_relaxed, memory_order_relaxed);
    if (v4 != v3)
    {
      v8 = v4;
    }

    if (v4 == v3)
    {
      v7 = (*(a1 + 21) & 0xF00u) >> 8;
      if (v5 > v7)
      {
        if (_dispatch_set_qos_class_enabled)
        {
          _pthread_qos_override_start_direct();
        }

        if (v8 & 0x700000000) >> 32 > v7 && (_dispatch_set_qos_class_enabled)
        {
          _pthread_qos_override_end_direct();
        }
      }

      break;
    }
  }

  _dispatch_runloop_queue_class_poke(a1);
  if (a3)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

void *_dispatch_runloop_root_queue_create_4CF(const char *a1, uint64_t a2)
{
  v39 = _dispatch_thread_getspecific(4);
  if (a2)
  {
    return 0;
  }

  v38 = _dispatch_object_alloc(_OS_dispatch_queue_runloop_vtable, 0x78uLL, v2, v3, v4, v5, v6, v7);
  _dispatch_queue_init(v38, 0x40000, 1, 0x1000000000, v8, v9, v10, v11);
  v38[3] = &off_E0680;
  if (a1)
  {
    v37 = a1;
  }

  else
  {
    v37 = "runloop-queue";
  }

  v38[9] = v37;
  v36 = 0;
  if ((v39 & 0x22000000) == 0)
  {
    v36 = (v39 & 0x3F00) != 0;
  }

  if (v36)
  {
    if ((v39 & 0x20000000) != 0)
    {
      _dispatch_abort(458, (v39 & 0x20000000) == 0, v12, v13, v14, v15, v16, v17);
    }

    v18 = (v39 & 0x3FFF00u) >> 8;
    v19 = __clz(__rbit32(v18));
    if (v18)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 0;
    }

    *(v38 + 21) = v39 | (v20 << 8);
  }

  _dispatch_runloop_queue_handle_init(v38);
  if ((v38[10] & 0x40000) == 0)
  {
    _dispatch_abort(2154, (v38[10] & 0x40000) != 0, v21, v22, v23, v24, v25, v26);
  }

  if ((v38[10] & 0x1000000) != 0)
  {
    _dispatch_abort(2160, (v38[10] & 0x1000000) == 0, v21, v22, v23, v24, v25, v26);
  }

  v43 = v38[7];
  do
  {
    v44 = _dispatch_thread_getspecific(3);
    v33 = v43;
    v34 = v43;
    atomic_compare_exchange_strong_explicit((v38 + 7), &v34, v43 & 0xFFFFFFFF00000003 | v44 & 0xFFFFFFFC, memory_order_relaxed, memory_order_relaxed);
    if (v34 != v33)
    {
      v43 = v34;
    }
  }

  while (v34 != v33);
  _dispatch_object_debug(v38, "%s", v27, v28, v29, v30, v31, v32, "_dispatch_runloop_root_queue_create_4CF");
  return v38;
}

void _dispatch_runloop_queue_handle_init(void *a1)
{
  v14 = a1;
  v13 = a1;
  v12 = 0;
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  options.reserved[1] = 0;
  *&options.flags = xmmword_BA888;
  context = v13;
  v9 = 0;
  name = 0;
  v7 = 0;
  if (*v13)
  {
    v7 = *v13;
  }

  if (*(v7 + 16) == 394769)
  {
    options.flags |= 2u;
    options.mpl.mpl_qlimit = 1;
  }

  v9 = mach_port_construct(mach_task_self_, &options, context, &name);
  if (v9 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x3CD08);
  }

  v16 = v9;
  v15 = 7896;
  if (v9)
  {
    _dispatch_bug(v15, v16, v1, v2, v3, v4, v5, v6);
  }

  v12 = name;
  v18 = v13;
  v17 = name;
  v13[4] = name;
  _dispatch_program_is_probably_callback_driven = 1;
}

uint64_t _dispatch_runloop_queue_xref_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_runloop_queue_xref_dispose");
  v16 = (atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFF0FFFFFFFFLL, memory_order_relaxed) & 0x700000000) >> 32;
  if ((*(a1 + 80) & 0x40000) == 0)
  {
    _dispatch_abort(2174, (*(a1 + 80) & 0x40000) != 0, v8, v9, v10, v11, v12, v13);
  }

  if ((*(a1 + 80) & 0x1000000) != 0)
  {
    _dispatch_abort(2180, (*(a1 + 80) & 0x1000000) == 0, v8, v9, v10, v11, v12, v13);
  }

  atomic_fetch_and_explicit((a1 + 56), 0xFFFFFFFF00000003, memory_order_relaxed);
  v15 = 0;
  if (*a1)
  {
    v15 = *a1;
  }

  result = (*(v15 + 64))(a1, v16, 2);
  if (v16)
  {
    v18 = *(a1 + 56);
    if (_dispatch_set_qos_class_enabled)
    {
      return _pthread_qos_override_end_direct();
    }
  }

  return result;
}

void _dispatch_runloop_queue_dispose(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_runloop_queue_dispose");
  v10 = a1[8];
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  _dispatch_runloop_queue_handle_dispose(a1);
  _dispatch_lane_class_dispose(a1, a2);
}

void _dispatch_runloop_queue_handle_dispose(mach_port_context_t a1)
{
  v9 = *(a1 + 32);
  v7 = 0;
  if (v9)
  {
    v7 = v9 != -1;
  }

  if (v7)
  {
    *(a1 + 32) = 0;
    v8 = mach_port_destruct(mach_task_self_, v9, -1, a1);
    if (v8 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x3D28CLL);
    }

    if (v8)
    {
      _dispatch_bug(7952, v8, v1, v2, v3, v4, v5, v6);
    }
  }
}

BOOL _dispatch_runloop_root_queue_perform_4CF(dispatch_object_s *a1)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  if (*(v4 + 16) != 395025)
  {
    v3 = 0;
    if (*a1)
    {
      v3 = *a1;
    }

    v1 = *(v3 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x3D3E8);
  }

  dispatch_retain(a1);
  v5 = _dispatch_runloop_queue_drain_one(a1);
  dispatch_release(a1);
  return v5;
}

BOOL _dispatch_runloop_queue_drain_one(void *a1)
{
  v70 = a1;
  if (!a1[6])
  {
    return 0;
  }

  v69 = 0uLL;
  v169 = _dispatch_thread_getspecific(27);
  v167 = v169 & 0xFFFFFFFFFFFFFFFELL;
  if ((v169 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
  {
    v168 = 0;
  }

  else
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", v6, v7, v8, v9, v10, v11, v12, 833);
    v171 = v167;
    if (v167)
    {
      if (v171 != -4)
      {
        v170 = v171;
        v184 = v171;
        v181 = 1;
        v180 = 1;
        v182 = 1;
        v176 = 1;
        v175 = 1;
        v177 = 1;
        add_explicit = atomic_fetch_add_explicit((v171 + 96), 0xFFFFFFFF, memory_order_relaxed);
        v178 = add_explicit;
        v173 = add_explicit;
        v179 = add_explicit - 1;
        v183 = add_explicit - 1;
        if (((add_explicit - 1) & 0x80000000) != 0)
        {
          if (v183 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x3D5DCLL);
          }

          v184[7] = 0xDEAD000000000000;
          v172 = v184;
          _dispatch_object_dealloc(v184);
        }
      }
    }

    _dispatch_thread_setspecific(27, -4);
    v168 = 1;
  }

  v68 = v168;
  v67 = v70;
  v155 = v70;
  v154 = &v69;
  v159 = &v69;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v69, v1, v2, v3, v4, v5);
  _dispatch_thread_setspecific_pair(20, v155, 21, v154, v13, v14, v15, v16);
  v72 = _dispatch_thread_getspecific(4);
  v66 = v72;
  v123 = v72;
  v122 = 1;
  v126 = (v72 & 0x20000000) == 0;
  v125 = 458;
  if ((v72 & 0x20000000) != 0)
  {
    _dispatch_abort(v125, v126, v17, v18, v19, v20, v21, v22);
  }

  v121 = v123 & 0x8E0000FF;
  v124 = (v123 & 0x3FFF00) >> 8;
  v23 = (v123 & 0x3FFF00) >> 8;
  v24 = __clz(__rbit32(v23));
  if (v23)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = 0;
  }

  v121 |= v25 << 8;
  v65 = v121;
  v145 = _dispatch_thread_getspecific(28);
  if (v145)
  {
    v146 = v145;
    os_retain(v145);
  }

  v64 = v145;
  v149 = v65;
  v148 = _dispatch_thread_getspecific(25);
  v147 = v148;
  if (v148)
  {
    if ((v149 & 0xFFF) != 0)
    {
      v147 &= 0x880F0000;
      if ((v148 & 0xFFF) > (v149 & 0xFFFu))
      {
        v59 = v148 & 0xFFF;
      }

      else
      {
        v59 = v149 & 0xFFF;
      }

      v147 |= v59;
      v151 = v149 & 0xF000;
      v153 = v147 & 0xF00;
      if (v151 >> 12 > v153 >> 8)
      {
        v149 &= 0x4400F000u;
      }

      else
      {
        v149 &= 0x40000000u;
      }

      v147 |= v149;
    }

    else
    {
      if ((v147 & 0xFFF) != 0)
      {
        v147 |= 0x40000000u;
      }

      v150 = v149 & 0xF000;
      v152 = v147 & 0xF00;
      if (v150 >> 12 > v152 >> 8)
      {
        v147 &= 0xFFFF0FFF;
        v147 |= v149 & 0x400F000;
      }
    }
  }

  else
  {
    v147 = v149 & 0xFFF0FFFF;
  }

  _dispatch_thread_setspecific(25, v147);
  v63 = v148;
  v83 = 15;
  v82 = _dispatch_thread_getspecific(25);
  v160 = v82 & 0xF0000;
  if ((v82 & 0xF0000) >> 16 < v83)
  {
    v82 &= 0xFFF0FFFF;
    v82 |= v83 << 16;
    _dispatch_thread_setspecific(25, v82);
  }

  memset(v62, 0, sizeof(v62));
  v90 = v70;
  v89 = v70 + 13;
  v88 = 0;
  v86 = v70[13];
  v87 = v86;
  v85 = v86;
  v88 = v86;
  if (!v86)
  {
    v88 = _dispatch_wait_for_enqueuer(v89);
  }

  v84 = v88;
  v61 = v88;
  v120 = v70;
  v119 = v88;
  v118 = v88;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v113 = *(v88 + 16);
  v114 = v113;
  v112 = v113;
  v117 = v113;
  v111 = v113;
  v110 = v113;
  v70[13] = v113;
  v109 = v111;
  if (!v117)
  {
    v106 = 0;
    v107 = 0;
    v108 = v120 + 6;
    v105 = 0;
    v104 = (v120 + 6);
    v115 = v120[6];
    while (1)
    {
      v127 = v115;
      if (v118 != (v115 & 0xFFFFFFFFFFFFFFF8))
      {
        break;
      }

      v116 = 0;
      v94 = 0;
      v26 = v115;
      v27 = v115;
      atomic_compare_exchange_strong_explicit(v104, &v27, 0, memory_order_release, memory_order_relaxed);
      if (v27 != v26)
      {
        v115 = v27;
      }

      v93 = v27 == v26;
      v105 = v27 == v26;
      if (v27 == v26)
      {
        goto LABEL_46;
      }
    }

    v103 = v118;
    v102 = 0;
    v100 = *(v118 + 16);
    v101 = v100;
    v99 = v100;
    v102 = v100;
    if (!v100)
    {
      v102 = _dispatch_wait_for_enqueuer((v103 + 16));
    }

    v98 = v102;
    v117 = v102;
    v97 = v102;
    v96 = v102;
    v120[13] = v102;
    v95 = v97;
LABEL_46:
    v92 = v105;
  }

  v91 = v117;
  v60 = v117;
  _dispatch_continuation_pop_inline(v61, v62, 0x80000, v70);
  if (!v60)
  {
    v58 = 0;
    if (*v70)
    {
      v58 = *v70;
    }

    (*(v58 + 64))(v70, 0);
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: runloop queue restore", v28, v29, v30, v31, v32, v33, v34, 8223);
  v158 = v63;
  v157 = _dispatch_thread_getspecific(25);
  v158 &= 0xFFF0FFFF;
  v158 |= v157 & 0xF0000;
  _dispatch_thread_setspecific(25, v158);
  v162 = _dispatch_thread_getspecific(25);
  v164 = v162 & 0xF0000;
  v161 = (v162 & 0xF0000) >> 16;
  if ((v162 & 0xF0000) >> 16)
  {
    v162 &= 0xFFF0FFFF;
    _dispatch_thread_setspecific(25, v162);
    v163 = v161 != 15;
  }

  else
  {
    v163 = 0;
  }

  v74 = v66;
  v73 = v64;
  if (v66 == -1)
  {
    v74 = 0;
  }

  v78 = v74;
  v77 = v73;
  v76 = 6;
  v131 = v74;
  v144 = v74 != -1;
  v143 = 2409;
  if (v74 == -1)
  {
    _dispatch_abort(v143, v144, v35, v36, v37, v38, v39, v40);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v142 = v131;
    v141 = 4261412863;
    v140 = 0;
    v131 &= 0xFFFFFFFF02FFFFFFLL;
    v133 = _dispatch_thread_getspecific(4);
    v130 = v133;
    v129 = 0x1000000;
    v128 = 2281701376;
    if ((v133 & 0x1000000) != 0)
    {
      if (v131)
      {
        v57 = v131;
      }

      else
      {
        v139 = v130;
        v138 = v129;
        v137 = 0;
        v57 = v130 & (~v129 | 0xFFFFFF);
      }

      v132 = v57;
    }

    else
    {
      v136 = v130;
      v135 = v128;
      v134 = 0;
      v130 &= ~v128 | 0xFFFFFF;
      if (v131 == v130)
      {
        v132 = 0;
      }

      else
      {
        v132 = v131;
      }
    }
  }

  else
  {
    v132 = 0;
  }

  v78 = v132;
  if (v132)
  {
LABEL_81:
    v79 = _dispatch_set_priority_and_voucher_slow(v78, v77, v76);
    goto LABEL_82;
  }

  if (v77 != -1)
  {
    v56 = v77;
    if (v56 == _dispatch_thread_getspecific(28))
    {
      v75 = (v76 & 4) != 0;
      if ((v76 & 2) != 0)
      {
        if (v75 && v77)
        {
          object = v77;
          os_release(v77);
        }

        v77 = -1;
      }

      else if (!v75 && v77)
      {
        v81 = v77;
        os_retain(v77);
      }

      v79 = v77;
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v79 = -1;
LABEL_82:
  v156 = &v69;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v69, v36, v37, v38, v39, v40);
  if (v68)
  {
    v47 = _dispatch_thread_getspecific(27) == -4;
    v166 = v47;
    v165 = 879;
    if (!v47)
    {
      _dispatch_abort(v165, v166, v41, v42, v43, v44, v45, v46);
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: clear current", v48, v49, v50, v51, v52, v53, v54, 880);
    _dispatch_thread_setspecific(27, 0);
    _dispatch_thread_setspecific(5, 0);
  }

  _dispatch_force_cache_cleanup();
  return v60 != 0;
}

void _dispatch_runloop_root_queue_wakeup_4CF(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  if (*a1)
  {
    v10 = *a1;
  }

  if (*(v10 + 16) != 395025)
  {
    v9 = 0;
    if (*a1)
    {
      v9 = *a1;
    }

    v8 = *(v9 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0x3E300);
  }

  _dispatch_runloop_queue_wakeup(a1, 0, 0, a4, a5, a6, a7, a8);
}

uint64_t _dispatch_runloop_root_queue_get_port_4CF(uint64_t *a1)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  if (*(v4 + 16) != 395025)
  {
    v3 = 0;
    if (*a1)
    {
      v3 = *a1;
    }

    v1 = *(v3 + 16);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Not a runloop queue";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x3E440);
  }

  return *(a1 + 8);
}

uint64_t _dispatch_get_main_queue_handle_4CF()
{
  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(&_dispatch_main_q_handle_pred, &_dispatch_main_q, _dispatch_runloop_queue_handle_init);
  }

  return unk_E0020;
}

void _dispatch_main_queue_callback_4CF()
{
  if (!dword_E0070)
  {
    dword_E0070 = 1;
    _dispatch_main_queue_drain(&_dispatch_main_q);
    dword_E0070 = 0;
  }
}

void _dispatch_main_queue_drain(void *a1)
{
  v76 = a1;
  v75 = 0uLL;
  if (!a1[6])
  {
    return;
  }

  v74 = v76;
  v88 = v76;
  v92 = v76;
  v90 = *(v76 + 20);
  v91 = v90;
  v89 = v90;
  if (((BYTE2(v90) >> 2) & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called after dispatch_main()";
    __break(1u);
    JUMPOUT(0x3E62CLL);
  }

  v71 = v76[7];
  v72 = v71;
  v70 = v71;
  v73 = v71;
  v77 = v71;
  v107 = v71;
  if (((v71 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    v69 = v73;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_main_queue_callback_4CF called from the wrong thread";
    qword_E42C0 = v73;
    __break(1u);
    JUMPOUT(0x3E6C8);
  }

  predicate = &_dispatch_main_q_handle_pred;
  context = v76;
  function = _dispatch_runloop_queue_handle_init;
  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(predicate, context, function);
  }

  v150 = _dispatch_thread_getspecific(27);
  v148 = v150 & 0xFFFFFFFFFFFFFFFELL;
  if ((v150 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
  {
    v149 = 0;
  }

  else
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", v6, v7, v8, v9, v10, v11, v12, 833);
    v152 = v148;
    if (v148)
    {
      if (v152 != -4)
      {
        v151 = v152;
        v165 = v152;
        v162 = 1;
        v161 = 1;
        v163 = 1;
        v157 = 1;
        v156 = 1;
        v158 = 1;
        add_explicit = atomic_fetch_add_explicit((v152 + 96), 0xFFFFFFFF, memory_order_relaxed);
        v159 = add_explicit;
        v154 = add_explicit;
        v160 = add_explicit - 1;
        v164 = add_explicit - 1;
        if (((add_explicit - 1) & 0x80000000) != 0)
        {
          if (v164 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x3E870);
          }

          v165[7] = 0xDEAD000000000000;
          v153 = v165;
          _dispatch_object_dealloc(v165);
        }
      }
    }

    _dispatch_thread_setspecific(27, -4);
    v149 = 1;
  }

  if ((v149 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
    __break(1u);
    JUMPOUT(0x3E8E0);
  }

  v68 = v76;
  v139 = v76;
  v138 = &v75;
  v137 = 0;
  v140 = &v75;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v75, v1, v2, v3, v4, v5);
  _dispatch_thread_setspecific_pair(20, v139, 21, v137, v13, v14, v15, v16);
  v78 = _dispatch_thread_getspecific(4);
  v67 = v78;
  v102 = v78;
  v101 = 1;
  v105 = (v78 & 0x20000000) == 0;
  v104 = 458;
  if ((v78 & 0x20000000) != 0)
  {
    _dispatch_abort(v104, v105, v17, v18, v19, v20, v21, v22);
  }

  v100 = v102 & 0x8E0000FF;
  v103 = (v102 & 0x3FFF00) >> 8;
  v23 = (v102 & 0x3FFF00) >> 8;
  v24 = __clz(__rbit32(v23));
  if (v23)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = 0;
  }

  v100 |= v25 << 8;
  v66 = v100;
  v94 = v100 & 0xF00;
  v65 = v94 >> 8;
  v125 = _dispatch_thread_getspecific(28);
  if (v125)
  {
    v126 = v125;
    os_retain(v125);
  }

  v64 = v125;
  LOWORD(v93) = *(v76 + 21);
  v93 &= 0xF00u;
  if (v65 != v93 >> 8)
  {
    _dispatch_main_queue_update_priority_from_thread();
  }

  v129 = v66;
  v128 = _dispatch_thread_getspecific(25);
  v127 = v128;
  if (v128)
  {
    if ((v129 & 0xFFF) != 0)
    {
      v127 &= 0x880F0000;
      if ((v128 & 0xFFF) > (v129 & 0xFFFu))
      {
        v56 = v128 & 0xFFF;
      }

      else
      {
        v56 = v129 & 0xFFF;
      }

      v127 |= v56;
      v131 = v129 & 0xF000;
      v133 = v127 & 0xF00;
      if (v131 >> 12 > v133 >> 8)
      {
        v129 &= 0x4400F000u;
      }

      else
      {
        v129 &= 0x40000000u;
      }

      v127 |= v129;
    }

    else
    {
      if ((v127 & 0xFFF) != 0)
      {
        v127 |= 0x40000000u;
      }

      v130 = v129 & 0xF000;
      v132 = v127 & 0xF00;
      if (v130 >> 12 > v132 >> 8)
      {
        v127 &= 0xFFFF0FFF;
        v127 |= v129 & 0x400F000;
      }
    }
  }

  else
  {
    v127 = v129 & 0xFFF0FFFF;
  }

  _dispatch_thread_setspecific(25, v127);
  v63 = v128;
  v96 = 15;
  v95 = _dispatch_thread_getspecific(25);
  v141 = v95 & 0xF0000;
  if ((v95 & 0xF0000) >> 16 < v96)
  {
    v95 &= 0xFFF0FFFF;
    v95 |= v96 << 16;
    _dispatch_thread_setspecific(25, v95);
  }

  memset(v62, 0, 32);
  v59 = v76[13];
  if (!v59)
  {
    v59 = _dispatch_wait_for_enqueuer(v76 + 13);
  }

  v76[13] = 0;
  v106 = atomic_exchange_explicit((v76 + 6), 0, memory_order_release);
  v60 = v106 & 0xFFFFFFFFFFFFFFF8;
  v61 = v59;
  do
  {
    v58 = 0;
    if (v61 != v60)
    {
      v57 = v61[2];
      if (!v57)
      {
        v57 = _dispatch_wait_for_enqueuer(v61 + 2);
      }

      v58 = v57;
    }

    _dispatch_continuation_pop_inline(v61, v62, 0x80000, v76);
    v61 = v58;
  }

  while (v58);
  v55 = 0;
  if (*v76)
  {
    v55 = *v76;
  }

  (*(v55 + 64))(v76, 0);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: main queue restore", v26, v27, v28, v29, v30, v31, v32, 8186);
  v136 = v63;
  v135 = _dispatch_thread_getspecific(25);
  v136 &= 0xFFF0FFFF;
  v136 |= v135 & 0xF0000;
  _dispatch_thread_setspecific(25, v136);
  v143 = _dispatch_thread_getspecific(25);
  v145 = v143 & 0xF0000;
  v142 = (v143 & 0xF0000) >> 16;
  if ((v143 & 0xF0000) >> 16)
  {
    v143 &= 0xFFF0FFFF;
    _dispatch_thread_setspecific(25, v143);
    v144 = v142 != 15;
  }

  else
  {
    v144 = 0;
  }

  v80 = v67;
  v79 = v64;
  if (v67 == -1)
  {
    v80 = 0;
  }

  v84 = v80;
  v83 = v79;
  v82 = 6;
  v111 = v80;
  v124 = v80 != -1;
  v123 = 2409;
  if (v80 == -1)
  {
    _dispatch_abort(v123, v124, v33, v34, v35, v36, v37, v38);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v122 = v111;
    v121 = 4261412863;
    v120 = 0;
    v111 &= 0xFFFFFFFF02FFFFFFLL;
    v113 = _dispatch_thread_getspecific(4);
    v110 = v113;
    v109 = 0x1000000;
    v108 = 2281701376;
    if ((v113 & 0x1000000) != 0)
    {
      if (v111)
      {
        v54 = v111;
      }

      else
      {
        v119 = v110;
        v118 = v109;
        v117 = 0;
        v54 = v110 & (~v109 | 0xFFFFFF);
      }

      v112 = v54;
    }

    else
    {
      v116 = v110;
      v115 = v108;
      v114 = 0;
      v110 &= ~v108 | 0xFFFFFF;
      if (v111 == v110)
      {
        v112 = 0;
      }

      else
      {
        v112 = v111;
      }
    }
  }

  else
  {
    v112 = 0;
  }

  v84 = v112;
  if (v112)
  {
LABEL_84:
    v85 = _dispatch_set_priority_and_voucher_slow(v84, v83, v82);
    goto LABEL_85;
  }

  if (v83 != -1)
  {
    v53 = v83;
    if (v53 == _dispatch_thread_getspecific(28))
    {
      v81 = (v82 & 4) != 0;
      if ((v82 & 2) != 0)
      {
        if (v81 && v83)
        {
          object = v83;
          os_release(v83);
        }

        v83 = -1;
      }

      else if (!v81 && v83)
      {
        v87 = v83;
        os_retain(v83);
      }

      v85 = v83;
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v85 = -1;
LABEL_85:
  v134 = &v75;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v75, v34, v35, v36, v37, v38);
  v45 = _dispatch_thread_getspecific(27) == -4;
  v147 = v45;
  v146 = 879;
  if (!v45)
  {
    _dispatch_abort(v146, v147, v39, v40, v41, v42, v43, v44);
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\twlh[anon]: clear current", v46, v47, v48, v49, v50, v51, v52, 880);
  _dispatch_thread_setspecific(27, 0);
  _dispatch_thread_setspecific(5, 0);
  _dispatch_force_cache_cleanup();
}

uint64_t _dispatch_main_queue_push(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
  v4 = __clz(__rbit32(v3));
  if (v3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  v21 = v5;
  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, (a1 + 6));
  v20 = a1[6];
  do
  {
    if (v21 > (v20 & 7u))
    {
      v19 = v21;
    }

    else
    {
      v19 = v20 & 7;
    }

    if ((a2 & 7) != 0)
    {
      _dispatch_abort(1655, (a2 & 7) == 0, v6, v7, v8, v9, v10, v11);
    }

    if ((v19 & 0xFFFFFFF8) != 0)
    {
      _dispatch_abort(1656, (v19 & 0xFFFFFFF8) == 0, v6, v7, v8, v9, v10, v11);
    }

    v12 = v20;
    v13 = v20;
    atomic_compare_exchange_strong_explicit((a1 + 6), &v13, a2 | v19, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
      v20 = v13;
    }
  }

  while (v13 != v12);
  if ((v20 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    *((v20 & 0xFFFFFFFFFFFFFFF8) + 16) = a2;
  }

  else
  {
    a1[13] = a2;
  }

  result = _dispatch_thread_setspecific(122, 0);
  if (v20)
  {
    if ((v20 & 7u) < v21 && (a1[10] & 0x40000) != 0)
    {
      v17 = 0;
      if (*a1)
      {
        v17 = *a1;
      }

      return (*(v17 + 64))(a1, a3, 2);
    }

    else
    {
      if (a3 > (*(a1 + 21) & 0xF00u) >> 8)
      {
        v25 = a3;
      }

      else
      {
        v25 = 0;
      }

      v26 = ((*(a1 + 15) << 32) & 0x700000000) >> 32;
      v16 = 1;
      if (v26)
      {
        v16 = v26 < v25;
      }

      if (v16)
      {
        v15 = 0;
        if (*a1)
        {
          v15 = *a1;
        }

        return (*(v15 + 64))(a1, v25, 0);
      }
    }
  }

  else
  {
    v18 = 0;
    if (*a1)
    {
      v18 = *a1;
    }

    return (*(v18 + 64))(a1, a3, 2);
  }

  return result;
}

void _dispatch_main_queue_wakeup(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 80) & 0x40000) != 0)
  {
    if ((*(a1 + 80) & 0x1000000) != 0)
    {
      _dispatch_abort(8394, (*(a1 + 80) & 0x1000000) == 0, a3, a4, a5, a6, a7, a8);
    }

    _dispatch_runloop_queue_wakeup(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    _dispatch_lane_wakeup(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void dispatch_main(void)
{
  if (_dispatch_root_queues_pred != -1)
  {
    dispatch_once_f(&_dispatch_root_queues_pred, 0, _dispatch_root_queues_init_once);
  }

  if (pthread_main_np())
  {
    if (!dword_E0070)
    {
      dword_E0070 = 1;
      _dispatch_main_queue_drain(&_dispatch_main_q);
      dword_E0070 = 0;
      _dispatch_object_debug(&_dispatch_main_q, "%s", v0, v1, v2, v3, v4, v5, "dispatch_main");
      _dispatch_program_is_probably_callback_driven = 1;
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      pthread_exit(0);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main called from a block on the main queue";
    __break(1u);
  }

  else
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_main() must be called on the main thread";
    __break(1u);
  }

  JUMPOUT(0x3FB68);
}

dispatch_queue_global_t dispatch_get_global_queue(intptr_t identifier, uintptr_t flags)
{
  if ((flags & 0xFFFFFFFFFFFFFFF9) != 0)
  {
    return 0;
  }

  if ((flags & 2) != 0 && (flags & 4) != 0)
  {
    return 0;
  }

  switch(identifier)
  {
    case -32768:
      v4 = 2;
      break;
    case -128:
      v4 = 3;
      break;
    case -2:
      v4 = 3;
      break;
    default:
      if (identifier)
      {
        if (identifier == 2)
        {
          v4 = 5;
        }

        else
        {
          switch(identifier)
          {
            case 5:
              v5 = 1;
              break;
            case 9:
              v5 = 2;
              break;
            case 0x11:
              v5 = 3;
              break;
            case 0x15:
              v5 = 4;
              break;
            case 0x19:
              v5 = 5;
              break;
            case 0x21:
              v5 = 6;
              break;
            default:
              v5 = 0;
              break;
          }

          v4 = v5;
        }
      }

      else
      {
        v4 = 4;
      }

      break;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  if ((flags & 2) != 0)
  {
    v6 = 1;
  }

  else if ((flags & 4) != 0)
  {
    v6 = 2;
  }

  return &(&_dispatch_root_queues)[16 * (3 * v4 + v6 - 3)];
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

  v12 = qos_class_main();
  switch(v12)
  {
    case 5u:
      v13 = 1;
      break;
    case 9u:
      v13 = 2;
      break;
    case 0x11u:
      v13 = 3;
      break;
    case 0x15u:
      v13 = 4;
      break;
    case 0x19u:
      v13 = 5;
      break;
    case 0x21u:
      v13 = 6;
      break;
    default:
      v13 = 0;
      break;
  }

  if (v13)
  {
    v11 = (v13 << 8) & 0xF00 | 0xFF;
  }

  else
  {
    v11 = 0;
  }

  dword_E0054 = v11;
  if (!getenv("LIBDISPATCH_DISABLE_SET_QOS"))
  {
    _dispatch_set_qos_class_enabled = 1;
  }

  _dispatch_thread_key_create(&dispatch_priority_key, 0);
  _dispatch_thread_key_create(&dispatch_r2k_key, 0);
  _dispatch_thread_key_create(&dispatch_queue_key, _dispatch_queue_cleanup);
  _dispatch_thread_key_create(&dispatch_frame_key, _dispatch_frame_cleanup);
  _dispatch_thread_key_create(&dispatch_cache_key, _dispatch_cache_cleanup);
  _dispatch_thread_key_create(&dispatch_context_key, _dispatch_context_cleanup);
  _dispatch_thread_key_create(&dispatch_pthread_root_queue_observer_hooks_key, 0);
  _dispatch_thread_key_create(&dispatch_basepri_key, 0);
  _dispatch_thread_key_create(&dispatch_wlh_key, _dispatch_wlh_cleanup);
  _dispatch_thread_key_create(&dispatch_voucher_key, _voucher_thread_cleanup);
  _dispatch_thread_key_create(&dispatch_deferred_items_key, _dispatch_deferred_items_cleanup);
  _dispatch_thread_key_create(&dispatch_quantum_key, 0);
  _dispatch_thread_key_create(&dispatch_dsc_key, 0);
  _dispatch_thread_key_create(&os_workgroup_join_token_key, _os_workgroup_join_token_tsd_cleanup);
  _dispatch_thread_key_create(&os_workgroup_key, _os_workgroup_tsd_cleanup);
  _dispatch_thread_key_create(&dispatch_enqueue_key, 0);
  _dispatch_thread_key_create(&dispatch_msgv_aux_key, &_free);
  _dispatch_thread_key_create(&dispatch_set_threadname_key, 0);
  _dispatch_thread_setspecific(20, &_dispatch_main_q);
  if ((unk_E0050 & 0x40000) == 0)
  {
    _dispatch_abort(2154, (unk_E0050 & 0x40000) != 0, v0, v1, v2, v3, v4, v5);
  }

  if ((unk_E0050 & 0x1000000) != 0)
  {
    _dispatch_abort(2160, (unk_E0050 & 0x1000000) == 0, v0, v1, v2, v3, v4, v5);
  }

  v15 = qword_E0038[0];
  do
  {
    v16 = _dispatch_thread_getspecific(3);
    v6 = v15;
    v7 = v15;
    atomic_compare_exchange_strong_explicit(qword_E0038, &v7, v15 & 0xFFFFFFFF00000003 | v16 & 0xFFFFFFFC, memory_order_relaxed, memory_order_relaxed);
    if (v7 != v6)
    {
      v15 = v7;
    }
  }

  while (v7 != v6);
  v14 = _dispatch_thread_getspecific(25);
  if ((v14 & 0xF0000u) >> 16 < 0xF)
  {
    _dispatch_thread_setspecific(25, v14 & 0xFFF0FFFF | 0xF0000);
  }

  _dispatch_time_init();
  v9 = _os_object_atfork_prepare(v8);
  _os_object_atfork_prepare(v9);
  _voucher_init();
  return _workgroup_init();
}

uint64_t *_dispatch_thread_key_create(uint64_t *result, uint64_t a2)
{
  if (*result && a2)
  {
    v2 = *result;
    result = pthread_key_init_np();
    if (result)
    {
      _dispatch_abort(119, result, v3, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

void _dispatch_queue_cleanup(dispatch_queue_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != &_dispatch_main_q)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch queue is running";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x4065CLL);
  }

  _dispatch_queue_cleanup2(a1, a2, a3, a4, a5, a6, a7, a8);
}

void _dispatch_frame_cleanup(uint64_t a1)
{
  qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch frame is active";
  qword_E42C0 = a1;
  __break(1u);
}

void _dispatch_cache_cleanup(void *a1)
{
  while (1)
  {
    v2 = a1;
    if (!a1)
    {
      break;
    }

    a1 = a1[2];
    _dispatch_continuation_free_to_heap(v2);
  }
}

void _dispatch_context_cleanup(uint64_t a1)
{
  qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit while a dispatch context is set";
  qword_E42C0 = a1;
  __break(1u);
}

void _dispatch_wlh_cleanup(uint64_t a1)
{
  v2 = (a1 & 0xFFFFFFFFFFFFFFFELL);
  v1 = atomic_fetch_add_explicit(((a1 & 0xFFFFFFFFFFFFFFFELL) + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
  if (v1 < 0)
  {
    if (v1 <= -2)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x40838);
    }

    v2[7] = 0xDEAD000000000000;
    _dispatch_object_dealloc(v2);
  }
}

void _dispatch_deferred_items_cleanup(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Premature thread exit with unhandled deferred items";
    qword_E42C0 = a1;
    __break(1u);
    JUMPOUT(0x408BCLL);
  }

  _dispatch_free_deferred_unotes((a1 & 0xFFFFFFFFFFFFFFFELL));
}

void _dispatch_queue_atfork_child(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((unk_E0050 & 0x40000) != 0)
  {
    if ((unk_E0050 & 0x1000000) != 0)
    {
      _dispatch_abort(2160, (unk_E0050 & 0x1000000) == 0, a3, a4, a5, a6, a7, a8);
    }

    v11 = qword_E0038[0];
    do
    {
      v12 = _dispatch_thread_getspecific(3);
      v8 = v11;
      v9 = v11;
      atomic_compare_exchange_strong_explicit(qword_E0038, &v9, v11 & 0xFFFFFFFF00000003 | v12 & 0xFFFFFFFC, memory_order_relaxed, memory_order_relaxed);
      if (v9 != v8)
      {
        v11 = v9;
      }
    }

    while (v9 != v8);
  }

  if (_dispatch_unsafe_fork)
  {
    unk_E0068 = 256;
    unk_E0030 = 256;
    qword_E0168 = 256;
    qword_E0130 = 256;
    for (i = 0; i < 0x12; ++i)
    {
      (&_dispatch_root_queues)[16 * i + 13] = (&stru_B8 + 72);
      (&_dispatch_root_queues)[16 * i + 6] = (&stru_B8 + 72);
    }
  }
}

void _dispatch_fork_becomes_unsafe_slow()
{
  if ((atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 1u, memory_order_relaxed) & 2) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Transition to multithreaded is prohibited";
    __break(1u);
    JUMPOUT(0x40C50);
  }
}

uint64_t _dispatch_prohibit_transition_to_multithreaded(uint64_t result)
{
  if (result)
  {
    if (atomic_fetch_or_explicit(&_dispatch_unsafe_fork, 2u, memory_order_relaxed))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: The executable is already multithreaded";
      __break(1u);
      JUMPOUT(0x40D10);
    }
  }

  else
  {
    atomic_fetch_and_explicit(&_dispatch_unsafe_fork, 0xFDu, memory_order_relaxed);
  }

  return result;
}

__n128 _dispatch_thread_getspecific_pair(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != a1 + 1)
  {
    _dispatch_abort(295, a3 == a1 + 1, a3, a4, a5, a6, a7, a8);
  }

  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1);
  *a2 = result.n128_u64[0];
  *a4 = result.n128_u64[1];
  return result;
}

void _dispatch_block_async_invoke2(void *a1, char a2)
{
  v3 = _Block_get_invoke_fn(a1);
  v4 = 0;
  if (v3)
  {
    v4 = v3;
  }

  if (v4 == _dispatch_block_special_invoke)
  {
    if (a1[4] != 3512316172)
    {
      v2 = a1[4];
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x40F7CLL);
    }

    v10 = a1 + 4;
  }

  else
  {
    v10 = 0;
  }

  v6 = *(v10 + 4);
  if ((v6 >> 2))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x40FE4);
  }

  if ((v6 & 1) == 0)
  {
    (*(v10[5] + 16))();
  }

  if ((v6 & 8) == 0 && !atomic_fetch_add_explicit((v10 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(v10[6]);
  }

  v5 = __swp(0, v10 + 14);
  if (v5)
  {
    _dispatch_release_2(v5);
  }

  if (a2)
  {
    _Block_release(a1);
  }
}

void _dispatch_lane_non_barrier_complete(uint64_t a1, unsigned int a2)
{
  v12 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL;
  v14 = *(a1 + 56);
  do
  {
    v13 = v14 - 0x20000000000;
    if ((v14 & 0xFFFFFFFC) != 0)
    {
      v13 |= 0x8000000000uLL;
    }

    else if (v13 < 0x20000000000000)
    {
      v18 = v14 - 0x20000000000;
      if ((v13 & 0x10000000000) != 0)
      {
        v17 = v14 + 0x3FFF0000000000;
      }

      else
      {
        v17 = v13 + (*(a1 + 80) << 41) + 0x40000000000000;
      }

      if ((v17 & 0x3FFE0000000000) == 0x20000000000000)
      {
        v18 = v17 & 0xFFFFFF7FFFFFFFFFLL | v12;
      }

      else if ((v14 & 0x8000000000) != 0)
      {
        v18 = v13 | 1;
      }

      v13 = v18;
    }

    v8 = v14;
    v9 = v14;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v13, memory_order_relaxed, memory_order_relaxed);
    if (v9 != v8)
    {
      v14 = v9;
    }
  }

  while (v9 != v8);
  v11 = 0;
  if ((v14 & 0x1000000000) != 0)
  {
    v11 = (v14 & 0x800000000) != 0;
  }

  if (v11)
  {
    v21 = (v14 & 0x700000000uLL) >> 32;
    v20 = _dispatch_thread_getspecific(25);
    if (v21 > (v20 & 0xF0000u) >> 16)
    {
      _dispatch_thread_setspecific(25, v20 & 0xFFF0FFFF | (v21 << 16));
    }
  }

  if (((v14 ^ v13) & 0x40000000000000) != 0)
  {
    _dispatch_lane_barrier_complete(a1, 0, a2, v3, v4, v5, v6, v7);
  }

  else if ((v14 ^ v13))
  {
    if ((a2 & 1) == 0)
    {
      _dispatch_retain_2(a1);
    }

    if ((v13 & 0x2000000000) != 0)
    {
      _dispatch_abort(1026, (v13 & 0x2000000000) == 0, v2, v3, v4, v5, v6, v7);
    }

    v19 = *(a1 + 24);
    v10 = 0;
    if (*v19)
    {
      v10 = **(a1 + 24);
    }

    (*(v10 + 72))(*(a1 + 24), a1, (v13 & 0x700000000) >> 32, v3, v4, v5);
  }

  else if (a2)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

__n128 _dispatch_thread_setspecific_pair(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != a1 + 1)
  {
    _dispatch_abort(339, a3 == a1 + 1, a3, a4, a5, a6, a7, a8);
  }

  v9.n128_u64[0] = a2;
  v9.n128_u64[1] = a4;
  result = v9;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1) = v9;
  return result;
}

__n128 _dispatch_thread_getspecific_packed_pair(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != a1 + 1)
  {
    _dispatch_abort(318, a2 == a1 + 1, a3, a4, a5, a6, a7, a8);
  }

  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1);
  *a3 = result;
  return result;
}

__n128 _dispatch_thread_setspecific_packed_pair(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != a1 + 1)
  {
    _dispatch_abort(360, a2 == a1 + 1, a3, a4, a5, a6, a7, a8);
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *a3;
  *(StatusReg + 8 * a1) = *a3;
  return result;
}

void _dispatch_sync_f_slow(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a1;
  v24 = a5;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a6;
  v19 = a1;
  v18 = a5;
  if (*(a5 + 24))
  {
    v26 = _dispatch_thread_getspecific(4);
    __b[14] = v26;
    memset(__b, 0, 0x70uLL);
    __b[0] = v20 | 1;
    __b[1] = v26 | 0x10000000;
    __b[2] = 0;
    __b[3] = _dispatch_thread_getspecific(28);
    __b[4] = _dispatch_async_and_wait_invoke;
    __b[5] = __b;
    __b[6] = 0;
    __b[7] = v19;
    __b[8] = v22;
    __b[9] = v23;
    memset(&__b[10], 0, 20);
    HIDWORD(__b[12]) = _dispatch_thread_getspecific(3);
    LOWORD(__b[13]) = 0;
    BYTE2(__b[13]) &= 0xFCu;
    BYTE2(__b[13]) &= ~4u;
    BYTE2(__b[13]) &= ~8u;
    BYTE2(__b[13]) &= ~0x10u;
    BYTE2(__b[13]) &= ~0x20u;
    BYTE2(__b[13]) &= ~0x40u;
    BYTE2(__b[13]) &= ~0x80u;
    v30 = v19;
    v29 = __b;
    v28 = 0;
    v27 = 0;
    v36 = v19;
    v35 = __b;
    __DISPATCH_WAIT_FOR_QUEUE__(__b, v18, v8, v9, v10, v11, v12, v13);
    if (__b[8])
    {
      v37 = v19;
      v34 = v19;
      v33 = __b;
      v32 = 0;
      v31 = 0;
      v39 = v19;
      v38 = __b;
      _dispatch_sync_invoke_and_complete_recurse(v19, v23, v22, v21, __b, v14, v15, v16);
    }

    else
    {
      _dispatch_sync_complete_recurse(v19, __b[7], v21);
    }
  }

  else
  {
    __b[15] = v18;
    _dispatch_sync_function_invoke(v18, v23, v22, a4, a5, a6, a7, a8);
  }
}

void _dispatch_sync_recurse(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4)
{
  v12 = _dispatch_thread_getspecific(3);
  v11 = *(a1 + 24);
  do
  {
    if (*(v11 + 80) == 1)
    {
      v19 = (4096 - *(v11 + 80)) << 41;
      v17 = 0;
      v18 = *(v11 + 56);
      do
      {
        if (v18 != (v19 | v18 & 0x3000000000))
        {
          break;
        }

        v7 = v18;
        v8 = v18;
        atomic_compare_exchange_strong_explicit((v11 + 56), &v8, v12 & 0xFFFFFFFC | 0x60000000000002 | v18 & 0x3000000000, memory_order_acquire, memory_order_acquire);
        if (v8 != v7)
        {
          v18 = v8;
        }

        v17 = v8 == v7;
      }

      while (v8 != v7);
      if (!v17)
      {
        _dispatch_sync_f_slow(a1, a2, a3, a4, v11, 2, v5, v6);
        return;
      }
    }

    else
    {
      if (*(v11 + 48))
      {
        v21 = 0;
      }

      else
      {
        v20 = *(v11 + 56);
        do
        {
          if (v20 >= 0x40000000000000 || (v20 & 0x8000000000) != 0 || (v20 & 0x10000000000) != 0)
          {
            v21 = 0;
            goto LABEL_22;
          }

          v9 = v20;
          v10 = v20;
          atomic_compare_exchange_strong_explicit((v11 + 56), &v10, v20 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          if (v10 != v9)
          {
            v20 = v10;
          }
        }

        while (v10 != v9);
        v21 = 1;
      }

LABEL_22:
      if ((v21 & 1) == 0)
      {
        _dispatch_sync_f_slow(a1, a2, a3, a4, v11, 0, v5, v6);
        return;
      }
    }

    v11 = *(v11 + 24);
  }

  while (*(v11 + 24));
  _dispatch_sync_invoke_and_complete_recurse(a1, a2, a3, a4, 0, v4, v5, v6);
}

void _dispatch_lane_barrier_sync_invoke_and_complete(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = 0uLL;
  v47 = a1;
  v46 = &v31;
  v49 = &v31;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v31, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v47, 21, v46, v8, v9, v10, v11);
  v41 = v33;
  v40 = v32;
  if (v32 == _dispatch_call_block_and_release && v41)
  {
    v26 = _Block_get_invoke_fn(v41);
    v27 = 0;
    if (v26)
    {
      v27 = v26;
    }

    v25 = v27;
  }

  else
  {
    v25 = v40;
  }

  v39 = v25;
  v43 = v41;
  v42 = v25;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  _dispatch_client_callout(v41, v40);
  v45 = v41;
  v44 = v39;
  v48 = &v31;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v31, v12, v13, v14, v15, v16);
  v50 = a4;
  v55 = 772079660;
  v54 = a4;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v56 = a4;
  v24 = 1;
  if (!*(a1 + 48))
  {
    v24 = *(a1 + 80) > 1u;
  }

  if (!v24)
  {
    v28 = *(a1 + 56);
    while ((v28 & 0xFF80008800000001) == 0)
    {
      v22 = v28;
      v23 = v28;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v23, (v28 - 0x40020000000000) & 0xFFFFFFF000000001, memory_order_release, memory_order_relaxed);
      if (v23 != v22)
      {
        v28 = v23;
      }

      if (v23 == v22)
      {
        if ((v28 & 0x2000000000) != 0)
        {
          _dispatch_event_loop_assert_not_owned(a1);
        }

        return;
      }
    }
  }

  _dispatch_lane_barrier_complete(a1, 0, 0, v17, v18, v19, v20, v21);
}

uint64_t _dispatch_async_and_wait_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v33 = a1;
  v32 = *(a1 + 56);
  v31 = 0;
  v31 = (*(a1 + 106) & 3) << 24;
  v30 = 0;
  if ((v31 & 0x1000000) != 0)
  {
    v30 = _dispatch_autorelease_pool_push();
  }

  v29 = 0uLL;
  v47 = v32;
  v50 = v32;
  v49 = &v29;
  v48 = v33 + 80;
  v51 = &v29;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v29, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v50, 21, v48, v8, v9, v10, v11);
  v12 = *(v33 + 64);
  v41 = *(v33 + 72);
  v40 = v12;
  if (v12 == _dispatch_call_block_and_release && v41)
  {
    v27 = _Block_get_invoke_fn(v41);
    v28 = 0;
    if (v27)
    {
      v28 = v27;
    }

    v26 = v28;
  }

  else
  {
    v26 = v40;
  }

  v39 = v26;
  v43 = v41;
  v42 = v26;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  _dispatch_client_callout(v41, v40);
  v45 = v41;
  v44 = v39;
  v46 = &v29;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v29, v13, v14, v15, v16, v17);
  if (v30)
  {
    _dispatch_autorelease_pool_pop(v30);
  }

  result = _dispatch_thread_getspecific(20);
  *(v33 + 56) = result;
  *(v33 + 64) = 0;
  if (*(v33 + 48) != -4)
  {
    return _dispatch_event_loop_cancel_waiter(v33, v19, v20, v21, v22, v23, v24, v25);
  }

  v58 = v33 + 96;
  v55 = 1;
  v54 = 1;
  v56 = 1;
  add_explicit = atomic_fetch_add_explicit((v33 + 96), 1u, memory_order_release);
  v57 = add_explicit;
  v52 = add_explicit;
  if (add_explicit)
  {
    return _dispatch_thread_event_signal_slow();
  }

  return result;
}

uint64_t __DISPATCH_WAIT_FOR_QUEUE__(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = *(a2 + 56); ; i = v9)
  {
    if ((i & 0xFF80000000000000) != 0 || (i & 0x2000000000) == 0 || (i & 2) == 0)
    {
      v38 = i;
      goto LABEL_9;
    }

    v8 = i;
    v9 = i;
    atomic_compare_exchange_strong_explicit((a2 + 56), &v9, i | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      break;
    }
  }

  v38 = i | 0x800000000;
LABEL_9:
  if (((v38 ^ *(a1 + 100)) & 0xFFFFFFFC) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_sync called on queue already owned by current thread";
    qword_E42C0 = v38;
    __break(1u);
    JUMPOUT(0x433FCLL);
  }

  _dispatch_thread_getspecific_packed_pair(20, 21, (a1 + 80), a4, a5, a6, a7, a8);
  if ((v38 & 0xFF80000000000000) != 0 || (v38 & 0x1000000000) != 0)
  {
    *(a1 + 48) = -4;
  }

  else if ((v38 & 0x2000000000) != 0)
  {
    *(a1 + 48) = a2;
  }

  else
  {
    _dispatch_wait_compute_wlh(a2, a1);
  }

  if (*(a1 + 48) == -4)
  {
    v36 = _dispatch_thread_getspecific(25);
    v35 = (v36 & 0xF00) >> 8;
    v34 = (v36 & 0xF000) >> 12;
    if (v35 <= v34)
    {
      v29 = (v36 & 0xF000) >> 12;
    }

    else
    {
      v29 = (v36 & 0xF00) >> 8;
    }

    if (v29 <= (v36 & 0xF0000u) >> 16)
    {
      v27 = (v36 & 0xF0000u) >> 16;
    }

    else
    {
      if (v35 <= v34)
      {
        v28 = (v36 & 0xF000) >> 12;
      }

      else
      {
        v28 = (v36 & 0xF00) >> 8;
      }

      v27 = v28;
    }

    *(a1 + 105) = v27;
    *(a1 + 104) = v27;
    *(a1 + 96) = 0;
  }

  _dispatch_thread_setspecific(121, a1);
  v26 = 0;
  if (*a2)
  {
    v26 = *a2;
  }

  v32 = (*(a1 + 8) & 0x3FFF00uLL) >> 8;
  v10 = __clz(__rbit32(v32));
  if (v32)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  (*(v26 + 72))(a2, a1, v11);
  if (*(a1 + 48) == -4)
  {
    if (atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_acquire) != 1)
    {
      _dispatch_thread_event_wait_slow(a1 + 96);
    }
  }

  else if ((*(a1 + 106) & 8) == 0)
  {
    _dispatch_event_loop_wait_for_ownership(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  result = _dispatch_thread_setspecific(121, 0);
  if (*(a1 + 48) == -4)
  {
    if (*(a1 + 96))
    {
      _dispatch_abort(339, *(a1 + 96) == 0, v20, v21, v22, v23, v24, v25);
    }

    if (*(a1 + 105) > *(a1 + 104))
    {
      v33 = *(a1 + 105);
      result = _dispatch_thread_getspecific(25);
      if ((result & 0xF0000) >> 16 < v33)
      {
        return _dispatch_thread_setspecific(25, result & 0xFFF0FFFF | (v33 << 16));
      }
    }
  }

  return result;
}

void _dispatch_sync_complete_recurse(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (a3 & 2) != 0;
  do
  {
    if (a1 == a2)
    {
      break;
    }

    if (v4)
    {
      v3 = 0;
      if (*a1)
      {
        v3 = *a1;
      }

      (*(v3 + 64))(a1, 0, 4);
    }

    else
    {
      _dispatch_lane_non_barrier_complete(a1, 0);
    }

    a1 = *(a1 + 24);
    v4 = *(a1 + 80) == 1;
  }

  while (*(a1 + 24));
}

void _dispatch_sync_invoke_and_complete_recurse(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a4;
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0uLL;
  v39 = a1;
  v38 = &v23;
  v41 = &v23;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v23, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v39, 21, v38, v8, v9, v10, v11);
  v33 = v25;
  v32 = v24;
  if (v24 == _dispatch_call_block_and_release && v33)
  {
    v18 = _Block_get_invoke_fn(v33);
    v19 = 0;
    if (v18)
    {
      v19 = v18;
    }

    v17 = v19;
  }

  else
  {
    v17 = v32;
  }

  v31 = v17;
  v35 = v33;
  v34 = v17;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  _dispatch_client_callout(v33, v32);
  v37 = v33;
  v36 = v31;
  v40 = &v23;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v23, v12, v13, v14, v15, v16);
  v42 = a5;
  v47 = 772079660;
  v46 = a5;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v48 = a5;
  _dispatch_sync_complete_recurse(a1, 0, v21);
}

uint64_t _dispatch_wait_compute_wlh(uint64_t result, uint64_t a2)
{
  v8 = result;
  v9 = *(result + 80);
  if ((v9 & 0x400000) != 0)
  {
    *(a2 + 106) |= 0x40u;
    v12 = (result + 100);
    result = _dispatch_thread_getspecific(3);
    v2 = 0;
    atomic_compare_exchange_strong_explicit((v8 + 100), &v2, result & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      result = _dispatch_unfair_lock_lock_slow(v12);
    }
  }

  v6 = *(v8 + 24);
  for (i = *(v6 + 56); ; i = v4)
  {
    if ((i & 0xFF80000000000000) != 0 || (i & 0x2000000000) == 0 || (i & 2) == 0)
    {
      v11 = HIDWORD(i);
      goto LABEL_12;
    }

    v3 = i;
    v4 = i;
    atomic_compare_exchange_strong_explicit((v6 + 56), &v4, i | 0x800000000, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      break;
    }
  }

  v11 = HIDWORD(i) | 8;
LABEL_12:
  if ((v11 & 0xFF800000) != 0 || (v11 & 0x10) != 0)
  {
    *(a2 + 106) &= ~0x40u;
    *(a2 + 48) = -4;
  }

  else if ((v11 & 0x20) != 0)
  {
    result = v6 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v5 = 0;
    if (*v6)
    {
      v5 = *v6;
    }

    if (*(v5 + 16) == 18)
    {
      *(a2 + 106) |= 0x10u;
      *(a2 + 106) &= ~0x40u;
    }

    else if ((*(a2 + 106) & 0x40) != 0 && (atomic_fetch_add_explicit((v6 + 96), 1u, memory_order_relaxed) + 1) <= 0)
    {
      qword_E4290 = "API MISUSE: Resurrection of an object";
      __break(1u);
      JUMPOUT(0x4412CLL);
    }

    *(a2 + 48) = v6;
  }

  else
  {
    result = _dispatch_wait_compute_wlh(v6, a2);
  }

  if ((v9 & 0x400000) != 0)
  {
    if ((*(a2 + 106) & 0x10) != 0)
    {
      atomic_fetch_and_explicit((v8 + 80), 0xFFBFFFFF, memory_order_relaxed);
    }

    result = _dispatch_thread_getspecific(3);
    v13 = atomic_exchange_explicit((v8 + 100), 0, memory_order_release);
    if (v13 == (result & 0xFFFFFFFC))
    {
      v14 = 0;
    }

    else
    {
      result = _dispatch_unfair_lock_unlock_slow(v8 + 100, v13);
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
  }

  return result;
}

void _dispatch_sync_invoke_and_complete(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = 0uLL;
  v38 = a1;
  v37 = &v22;
  v40 = &v22;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v22, a4, a5, a6, a7, a8);
  _dispatch_thread_setspecific_pair(20, v38, 21, v37, v8, v9, v10, v11);
  v32 = v24;
  v31 = v23;
  if (v23 == _dispatch_call_block_and_release && v32)
  {
    v18 = _Block_get_invoke_fn(v32);
    v19 = 0;
    if (v18)
    {
      v19 = v18;
    }

    v17 = v19;
  }

  else
  {
    v17 = v31;
  }

  v30 = v17;
  v34 = v32;
  v33 = v17;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  _dispatch_client_callout(v32, v31);
  v36 = v32;
  v35 = v30;
  v39 = &v22;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v22, v12, v13, v14, v15, v16);
  v41 = a4;
  v46 = 772079660;
  v45 = a4;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v47 = a4;
  _dispatch_lane_non_barrier_complete(a1, 0);
}

void _dispatch_async_and_wait_recurse(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1;
  for (i = a4; ; *a2 = i)
  {
    v17 = *(v16 + 56);
    v14 = 1;
    if ((*(v16 + 80) & 0x1000000) == 0)
    {
      v13 = 0;
      if ((*(v16 + 56) & 0x3000000000) != 0)
      {
        v12 = 0;
        if (*(v16 + 24) >= &_dispatch_root_queues)
        {
          v12 = *(v16 + 24) < &unk_E0A80;
        }

        v13 = !v12;
      }

      v14 = v13;
    }

    if (v14)
    {
      *a2 &= ~0x80uLL;
      *(a2 + 56) = v16;
      v18 = 0;
    }

    else if ((i & 2) != 0)
    {
      v21 = (4096 - *(v16 + 80)) << 41;
      v19 = 0;
      v20 = *(v16 + 56);
      do
      {
        if (v20 != (v21 | v20 & 0x3000000000))
        {
          break;
        }

        v8 = v20;
        v9 = v20;
        atomic_compare_exchange_strong_explicit((v16 + 56), &v9, a3 & 0xFFFFFFFC | 0x60000000000002 | v20 & 0x3000000000, memory_order_acquire, memory_order_acquire);
        if (v9 != v8)
        {
          v20 = v9;
        }

        v19 = v9 == v8;
      }

      while (v9 != v8);
      v18 = v19;
    }

    else
    {
      if (*(v16 + 48))
      {
        v23 = 0;
      }

      else
      {
        v22 = *(v16 + 56);
        do
        {
          if (v22 >= 0x40000000000000 || (v22 & 0x8000000000) != 0 || (v22 & 0x10000000000) != 0)
          {
            v23 = 0;
            goto LABEL_28;
          }

          v10 = v22;
          v11 = v22;
          atomic_compare_exchange_strong_explicit((v16 + 56), &v11, v22 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          if (v11 != v10)
          {
            v22 = v11;
          }
        }

        while (v11 != v10);
        v23 = 1;
      }

LABEL_28:
      v18 = v23;
    }

    if (!v18)
    {
      _dispatch_async_and_wait_f_slow(a1, a4, a2, v16, a5, a6, a7, a8);
      return;
    }

    if ((*(v16 + 84) & 0xFFF) != 0)
    {
      v25 = (*(v16 + 84) & 0xF00u) >> 8;
      v24 = *(v16 + 84);
      if (v25)
      {
        v24 = *(v16 + 84) | (1 << (v25 + 7));
      }

      if (v24 > (*(a2 + 8) & 0xFFFFFFuLL))
      {
        *(a2 + 8) = v24 | 0x10000000;
      }
    }

    if ((*(a2 + 106) & 3) == 0)
    {
      *(a2 + 106) = *(a2 + 106) & 0xFC | ((*(v16 + 80) & 0x30000u) / 0x10000) & 3;
    }

    if (!*(*(v16 + 24) + 24))
    {
      break;
    }

    v16 = *(v16 + 24);
    if (*(v16 + 80) == 1)
    {
      i |= 2uLL;
    }

    else
    {
      i &= ~2uLL;
    }
  }

  _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a2, v16, a4);
}

void _dispatch_async_and_wait_f_slow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __DISPATCH_WAIT_FOR_QUEUE__(a3, a4, a3, a4, a5, a6, a7, a8);
  if (*(a3 + 64))
  {
    _dispatch_async_and_wait_invoke_and_complete_recurse(a1, a3, *(a3 + 56), a2);
  }

  else
  {
    _dispatch_sync_complete_recurse(a1, *(a3 + 56), a2);
  }
}

void _dispatch_async_and_wait_invoke_and_complete_recurse(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a4;
  v43 = 0;
  v131 = a3;
  v130 = -4;
  v34 = 0;
  if (*a3)
  {
    v34 = *a3;
  }

  if (*(v34 + 16) == 18 || (v128 = *(v131 + 56), v129 = v128, v127 = v128, v132 = v128, (v128 & 0x2000000000) != 0))
  {
    v130 = v131;
  }

  v126 = _dispatch_thread_getspecific(27);
  _dispatch_thread_setspecific(27, v130);
  v42 = v126;
  v43 = (*(v46 + 106) & 3) << 24;
  v41 = 0;
  if ((v43 & 0x1000000) != 0)
  {
    v41 = _dispatch_autorelease_pool_push();
  }

  v40 = 0x40000000;
  v39 = 0uLL;
  v37 = *(v46 + 8);
  v35 = *(v46 + 24);
  v125 = v47;
  v122 = v47;
  v121 = &v39;
  v124 = &v39;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v39, v4, v5, v6, v7, v8);
  _dispatch_thread_setspecific_pair(20, v122, 21, v121, v9, v10, v11, v12);
  v51 = v40;
  v50 = v37;
  v49 = 0;
  v48 = 0;
  if ((v40 & 0x40000000) != 0 && ((v51 & 0x20) != 0 || (v51 & 0x10) == 0))
  {
    v54 = v50;
    v50 &= 0xFFFFFFu;
    v52 = _dispatch_thread_getspecific(4);
    v53 = v52;
    v49 = v52 & 0xFFFFFF;
    if ((v52 & 0xFFFFFF) != 0 && v49 < v50)
    {
      v48 = v49;
    }
  }

  v38 = v48;
  if (v48)
  {
    v33 = v37;
  }

  else
  {
    v33 = 0;
  }

  v58 = v33;
  v57 = v35;
  v56 = 0;
  v103 = v33;
  v116 = v33 != -1;
  v115 = 2409;
  if (v33 == -1)
  {
    _dispatch_abort(v115, v116, v13, v14, v15, v16, v17, v18);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v114 = v103;
    v113 = 4261412863;
    v112 = 0;
    v103 &= 0xFFFFFFFF02FFFFFFLL;
    v105 = _dispatch_thread_getspecific(4);
    v102 = v105;
    v101 = 0x1000000;
    v100 = 2281701376;
    if ((v105 & 0x1000000) != 0)
    {
      if (v103)
      {
        v32 = v103;
      }

      else
      {
        v111 = v102;
        v110 = v101;
        v109 = 0;
        v32 = v102 & (~v101 | 0xFFFFFF);
      }

      v104 = v32;
    }

    else
    {
      v108 = v102;
      v107 = v100;
      v106 = 0;
      v102 &= ~v100 | 0xFFFFFF;
      if (v103 == v102)
      {
        v104 = 0;
      }

      else
      {
        v104 = v103;
      }
    }
  }

  else
  {
    v104 = 0;
  }

  v58 = v104;
  if (!v104)
  {
    if (v57 == -1)
    {
      v59 = -1;
      goto LABEL_43;
    }

    v31 = v57;
    if (v31 == _dispatch_thread_getspecific(28))
    {
      v55 = (v56 & 4) != 0;
      if ((v56 & 2) != 0)
      {
        if (v55 && v57)
        {
          object = v57;
          os_release(v57);
        }

        v57 = -1;
      }

      else if (!v55 && v57)
      {
        v61 = v57;
        os_retain(v57);
      }

      v59 = v57;
      goto LABEL_43;
    }
  }

  v59 = _dispatch_set_priority_and_voucher_slow(v58, v57, v56);
LABEL_43:
  v36 = v59;
  v81 = v47;
  v80 = v46;
  v79 = 0;
  v78 = 0;
  v135 = v47;
  v134 = v46;
  v19 = *(v46 + 64);
  v68 = *(v46 + 72);
  v67 = v19;
  if (v19 == _dispatch_call_block_and_release && v68)
  {
    v29 = _Block_get_invoke_fn(v68);
    v30 = 0;
    if (v29)
    {
      v30 = v29;
    }

    v28 = v30;
  }

  else
  {
    v28 = v67;
  }

  v66 = v28;
  v118 = v68;
  v117 = v28;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  _dispatch_client_callout(v68, v67);
  v120 = v68;
  v119 = v66;
  v70 = v38;
  v69 = v36;
  if (v38 == -1)
  {
    v70 = 0;
  }

  v74 = v70;
  v73 = v69;
  v72 = 6;
  v86 = v70;
  v99 = v70 != -1;
  v98 = 2409;
  if (v70 == -1)
  {
    _dispatch_abort(v98, v99, v20, v21, v22, v23, v24, v25);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v97 = v86;
    v96 = 4261412863;
    v95 = 0;
    v86 &= 0xFFFFFFFF02FFFFFFLL;
    v88 = _dispatch_thread_getspecific(4);
    v85 = v88;
    v84 = 0x1000000;
    v83 = 2281701376;
    if ((v88 & 0x1000000) != 0)
    {
      if (v86)
      {
        v27 = v86;
      }

      else
      {
        v94 = v85;
        v93 = v84;
        v92 = 0;
        v27 = v85 & (~v84 | 0xFFFFFF);
      }

      v87 = v27;
    }

    else
    {
      v91 = v85;
      v90 = v83;
      v89 = 0;
      v85 &= ~v83 | 0xFFFFFF;
      if (v86 == v85)
      {
        v87 = 0;
      }

      else
      {
        v87 = v86;
      }
    }
  }

  else
  {
    v87 = 0;
  }

  v74 = v87;
  if (v87)
  {
    goto LABEL_76;
  }

  if (v73 == -1)
  {
    v75 = -1;
    goto LABEL_77;
  }

  v26 = v73;
  if (v26 != _dispatch_thread_getspecific(28))
  {
LABEL_76:
    v75 = _dispatch_set_priority_and_voucher_slow(v74, v73, v72);
  }

  else
  {
    v71 = (v72 & 4) != 0;
    if ((v72 & 2) != 0)
    {
      if (v71 && v73)
      {
        v76 = v73;
        os_release(v73);
      }

      v73 = -1;
    }

    else if (!v71 && v73)
    {
      v77 = v73;
      os_retain(v73);
    }

    v75 = v73;
  }

LABEL_77:
  v123 = &v39;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v39, v21, v22, v23, v24, v25);
  if (v41)
  {
    _dispatch_autorelease_pool_pop(v41);
  }

  v82 = v46;
  v136 = v46;
  v141 = 772079660;
  v140 = v46;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v142 = v82;
  v133 = v42;
  _dispatch_thread_setspecific(27, v42);
  _dispatch_sync_complete_recurse(v47, 0, v44);
}

void _dispatch_queue_specific_head_dispose(void *a1)
{
  v7 = a1;
  v6 = &off_E0600;
  i = 0;
  v4 = 0;
  v2 = 0;
  v3 = &v2;
  if (a1[1])
  {
    *v3 = v7[1];
    *(v7[1] + 32) = v3;
    v3 = v7[2];
    v7[1] = 0;
    v7[2] = v7 + 1;
  }

  for (i = v2; ; i = v4)
  {
    v1 = 0;
    if (i)
    {
      v4 = i[3];
      v1 = 1;
    }

    if ((v1 & 1) == 0)
    {
      break;
    }

    if (i[2])
    {
      i[3] = 0;
      i[4] = v7[2];
      *v7[2] = i;
      v7[2] = i + 3;
    }

    else
    {
      free(i);
    }
  }

  if (v7[1])
  {
    _dispatch_barrier_async_detached_f(v6, v7, _dispatch_queue_specific_head_dispose_slow);
  }

  else
  {
    free(v7);
  }
}

void _dispatch_queue_specific_head_dispose_slow(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  for (i = a1[1]; ; i = v11)
  {
    v10 = 0;
    if (i)
    {
      v11 = i[3];
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      break;
    }

    v9 = 0;
    if (i[2])
    {
      v9 = i[2];
    }

    if (!v9)
    {
      _dispatch_abort(2337, 0, a3, a4, a5, a6, a7, a8);
    }

    v15 = i[1];
    v14 = i[2];
    if (v14 == _dispatch_call_block_and_release && v15)
    {
      _Block_get_invoke_fn(v15);
    }

    else
    {
      v8 = i[2];
    }

    _dispatch_client_callout(v15, v14);
    free(i);
  }

  free(a1);
}

uint64_t _dispatch_non_barrier_waiter_redirect_or_wake(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a2 & 2) != 0)
  {
    _dispatch_abort(1235, (*a2 & 2) == 0, a3, a4, a5, a6, a7, a8);
  }

  while (1)
  {
    v13 = a1[7];
    if (*(a2 + 105) < ((v13 & 0x700000000uLL) >> 32))
    {
      *(a2 + 105) = (v13 & 0x700000000uLL) >> 32;
    }

    if ((*a2 & 0x80) != 0)
    {
      if ((*(a1 + 21) & 0xFFF) != 0)
      {
        v18 = (*(a1 + 21) & 0xF00u) >> 8;
        v17 = *(a1 + 84);
        if (v18)
        {
          v17 = *(a1 + 84) | (1 << (v18 + 7));
        }

        if (v17 > (*(a2 + 8) & 0xFFFFFFuLL))
        {
          *(a2 + 8) = v17 | 0x10000000;
        }
      }

      if ((*(a2 + 106) & 3) == 0)
      {
        *(a2 + 106) = *(a2 + 106) & 0xFC | ((a1[10] & 0x30000u) / 0x10000) & 3;
      }
    }

    if ((v13 & 0x3000000000) != 0)
    {
      break;
    }

    v12 = a1[3];
    if (*(v12 + 40) == 1)
    {
      *a2 |= 2uLL;
LABEL_29:
      v11 = 0;
      if (*v12)
      {
        v11 = *v12;
      }

      return (*(v11 + 72))(v12, a2, 0);
    }

    *a2 &= ~2uLL;
    if (v12[6])
    {
      v16 = 0;
    }

    else
    {
      v15 = v12[7];
      do
      {
        if (v15 >= 0x40000000000000 || (v15 & 0x8000000000) != 0 || (v15 & 0x10000000000) != 0)
        {
          v16 = 0;
          goto LABEL_27;
        }

        v8 = v15;
        v9 = v15;
        atomic_compare_exchange_strong_explicit((v12 + 7), &v9, v15 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        if (v9 != v8)
        {
          v15 = v9;
        }
      }

      while (v9 != v8);
      v16 = 1;
    }

LABEL_27:
    if ((v16 & 1) == 0)
    {
      goto LABEL_29;
    }

    a1 = v12;
  }

  if ((*a2 & 0x80) != 0)
  {
    *(a2 + 56) = a1;
  }

  return _dispatch_waiter_wake_wlh_anon(a2);
}

uint64_t _dispatch_waiter_wake_wlh_anon(uint64_t result)
{
  v2 = result;
  if (*(result + 105) > *(result + 104))
  {
    v3 = *(result + 105);
    if (_dispatch_set_qos_class_enabled)
    {
      v1 = *(result + 100);
      *(result + 105);
      result = _pthread_workqueue_override_start_direct();
    }
  }

  if (atomic_fetch_add_explicit((v2 + 96), 1u, memory_order_release))
  {
    return _dispatch_thread_event_signal_slow();
  }

  return result;
}

void _dispatch_barrier_waiter_redirect_or_wake(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a3;
  v13 = -4;
  if (*(a2 + 48) == -4 && *(a2 + 105) < ((a4 & 0x700000000) >> 32))
  {
    *(a2 + 105) = (a4 & 0x700000000) >> 32;
  }

  if ((a4 & 0x2000000000) != 0)
  {
    v13 = a1;
  }

  else
  {
    v11 = 0;
    if ((a4 & 0x1000000000) != 0)
    {
      v11 = (a4 & 0x800000000) != 0;
    }

    if (v11)
    {
      v21 = (a4 & 0x700000000) >> 32;
      v20 = _dispatch_thread_getspecific(25);
      if (v21 > (v20 & 0xF0000u) >> 16)
      {
        _dispatch_thread_setspecific(25, v20 & 0xFFF0FFFF | (v21 << 16));
      }
    }
  }

  if (v18)
  {
    if ((a4 & 0x2000000000) == 0 || (a5 & 1) == 0)
    {
      _dispatch_release_2_no_dispose(a1);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((a4 & 0x2000000000) != 0 && (a4 & 1) != 0 && (a5 & 1) == 0)
  {
LABEL_18:
    _dispatch_release_no_dispose(a1);
  }

LABEL_19:
  if ((a4 & 0x3000000000) != 0)
  {
    if ((*a2 & 0x80) != 0)
    {
      *(a2 + 56) = a1;
    }

    _dispatch_waiter_wake(a2, v13, a4, a5);
  }

  else
  {
    v12 = *(a1 + 24);
    if ((*a2 & 0x80) != 0)
    {
      if ((*(a1 + 84) & 0xFFF) != 0)
      {
        v25 = (*(a1 + 84) & 0xF00u) >> 8;
        v24 = *(a1 + 84);
        if (v25)
        {
          v24 = *(a1 + 84) | (1 << (v25 + 7));
        }

        if (v24 > (*(a2 + 8) & 0xFFFFFFuLL))
        {
          *(a2 + 8) = v24 | 0x10000000;
        }
      }

      if ((*(a2 + 106) & 3) == 0)
      {
        *(a2 + 106) = *(a2 + 106) & 0xFC | ((*(a1 + 80) & 0x30000u) / 0x10000) & 3;
      }
    }

    if (*(v12 + 80) == 1)
    {
      *a2 |= 2uLL;
    }

    else
    {
      *a2 &= ~2uLL;
      if (*(v12 + 48))
      {
        v23 = 0;
      }

      else
      {
        v22 = *(v12 + 56);
        do
        {
          if (v22 >= 0x40000000000000 || (v22 & 0x8000000000) != 0 || (v22 & 0x10000000000) != 0)
          {
            v23 = 0;
            goto LABEL_41;
          }

          v8 = v22;
          v9 = v22;
          atomic_compare_exchange_strong_explicit((v12 + 56), &v9, v22 + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
          if (v9 != v8)
          {
            v22 = v9;
          }
        }

        while (v9 != v8);
        v23 = 1;
      }

LABEL_41:
      if (v23)
      {
        _dispatch_non_barrier_waiter_redirect_or_wake(v12, a2, a3, a4, a5, a6, a7, a8);
        return;
      }
    }

    *(a2 + 106) &= ~0x80u;
    v10 = 0;
    if (*v12)
    {
      v10 = *v12;
    }

    (*(v10 + 72))(v12, a2, (a4 & 0x700000000) >> 32);
  }
}

uint64_t _dispatch_release_no_dispose(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    qword_E4290 = "API MISUSE: Over-release of an object";
    __break(1u);
    JUMPOUT(0x47318);
  }

  return result;
}

uint64_t _dispatch_release_2_no_dispose(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((result + 8), 0xFFFFFFFE, memory_order_release) - 2;
  }

  if (v1 < 1)
  {
    qword_E4290 = "API MISUSE: Over-release of an object";
    __break(1u);
    JUMPOUT(0x47430);
  }

  return result;
}

void _dispatch_waiter_wake(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 48);
  if ((a3 & 0x2000000000) != 0 && !(*(a1 + 106) >> 7) || (a4 & 0x2000000000) != 0 || v4 != -4)
  {
    _dispatch_event_loop_wake_owner(a1, a2, a3, a4);
  }

  if (v4 == -4)
  {
    _dispatch_waiter_wake_wlh_anon(a1);
  }
}

uint64_t _dispatch_base_lane_is_wlh(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_dispatch_kevent_workqueue_enabled)
  {
    v12 = 0;
    if (*a1)
    {
      v12 = *a1;
    }

    if (*(v12 + 16) == 133137)
    {
      v13 = 1;
    }

    else
    {
      v11 = 0;
      if (*a1)
      {
        v11 = *a1;
      }

      if (*(v11 + 16) == 19)
      {
        if (((*(a1[11] + 29) >> 5) & 1) == 0)
        {
          v13 = 0;
          return v13 & 1;
        }

        if ((*(a1[11] + 29) & 1) == 0)
        {
          _dispatch_abort(2534, *(a1[11] + 29) & 1, a3, a4, a5, a6, a7, a8);
        }
      }

      v10 = 0;
      if (*(a1 + 40) == 1)
      {
        v9 = 0;
        if (a2 >= &_dispatch_root_queues)
        {
          v9 = a2 < &unk_E0A80;
        }

        v10 = v9;
      }

      v13 = v10;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _dispatch_lane_concurrent_drain(uint64_t *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = 0;
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
          JUMPOUT(0x48968);
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

void _dispatch_workloop_bound_thread_init_once(uint64_t a1)
{
  v10 = a1;
  v9 = 0;
  v8 = 4;
  v7 = sysctlbyname("kern.kern_event.thread_bound_kqwl_support_enabled", &v9, &v8, 0, 0);
  v12 = v7;
  v11 = 4277;
  if (v7)
  {
    _dispatch_bug(v11, v12, v1, v2, v3, v4, v5, v6);
  }

  if (v9)
  {
    _dispatch_thread_bound_kqwl_enabled = 1;
  }
}

void _dispatch_workloop_activate_simulator_fallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = dispatch_pthread_root_queue_create("com.apple.libdispatch.workloop_fallback", 0, a2, 0, a5, a6, a7, a8);
  *(a1 + 24) = v10;
  _dispatch_retain(v10);
  dispatch_release(v10);
  v11 = *(a1 + 56);
  do
  {
    v8 = v11;
    v9 = v11;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v11 & 0xFFFFFFCFFFFFFFFFLL | 0x1000000000, memory_order_relaxed, memory_order_relaxed);
    if (v9 != v8)
    {
      v11 = v9;
    }
  }

  while (v9 != v8);
}

uint64_t _dispatch_workloop_activate_tg_unsupported_fallback(uint64_t a1)
{
  v11 = *(a1 + 200);
  memset(&__b, 0, sizeof(__b));
  pthread_attr_init(&__b);
  if (v11->sched_priority)
  {
    pthread_attr_setschedparam(&__b, v11 + 1);
  }

  if ((v11->sched_priority & 2) != 0)
  {
    pthread_attr_setschedpolicy(&__b, v11[2].sched_priority);
  }

  if ((v11->sched_priority & 4) != 0)
  {
    v1 = v11[2].__opaque[0];
    sched_priority = v11[3].sched_priority;
    pthread_attr_setcpupercent_np();
  }

  v10 = _pthread_workloop_create();
  if (v10)
  {
    if (v10 != 45)
    {
      _dispatch_abort(4453, v10, v3, v4, v5, v6, v7, v8);
    }

    _dispatch_workloop_activate_simulator_fallback(a1, &__b, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v11->sched_priority |= 0x10u;
  }

  return pthread_attr_destroy(&__b);
}

void _dispatch_queue_wakeup_with_override_slow(uint64_t a1, uint64_t a2, char a3)
{
  v14 = (a2 & 0x700000000uLL) >> 32;
  v13 = *(a1 + 24);
  if ((a2 & 0x1000000000) != 0)
  {
    v11 = 0;
    if (v13 >= &_dispatch_root_queues)
    {
      v11 = v13 < &unk_E0A80;
    }

    if (!v11)
    {
      goto LABEL_77;
    }

    if ((a2 & 0xFFFFFFFC) != 0)
    {
      v17 = a2 | 3;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      if (_dispatch_set_qos_class_enabled)
      {
        _pthread_workqueue_override_start_direct_check_owner();
      }

      goto LABEL_77;
    }

    v12 = 0;
  }

  else if ((*(a1 + 80) & 0x400000) != 0)
  {
    v20 = a1;
    v19 = a2 & 0x700000000;
    v42 = (a1 + 100);
    v41 = &v19;
    v45 = _dispatch_thread_getspecific(3);
    v40 = v45 & 0xFFFFFFFC;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v36 = v42;
    v39 = *v42;
    do
    {
      v47 = v39;
      if ((v39 & 0xFFFFFFFC) != 0)
      {
        v38 = v39 | 2;
      }

      else
      {
        v38 = v40;
      }

      v35 = v38;
      v3 = v39;
      v4 = v39;
      atomic_compare_exchange_strong_explicit(v36, &v4, v38, memory_order_acquire, memory_order_acquire);
      if (v4 != v3)
      {
        v39 = v4;
      }

      v34 = v4 == v3;
      v37 = v4 == v3;
    }

    while (v4 != v3);
    v33 = v37;
    if (v41)
    {
      v43 = v38;
      if ((v38 & 0xFFFFFFFC) != 0)
      {
        v44 = v43 | 3;
      }

      else
      {
        v44 = 0;
      }

      *v41 = v44;
    }

    v46 = v39;
    if ((v39 & 0xFFFFFFFC) != 0)
    {
      v23 = HIDWORD(v19);
      v24 = v19;
      v22 = v20 + 100;
      if (_dispatch_set_qos_class_enabled)
      {
        v27 = v23;
        v26 = 0;
        if (v23)
        {
          v26 = 1 << (v27 + 7);
        }

        v25 = _pthread_workqueue_override_start_direct_check_owner();
      }

      else
      {
        v25 = 0;
      }

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      goto LABEL_77;
    }

    v12 = 1;
    v13 = *(a1 + 24);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_39:
  v10 = 0;
  if (*v13)
  {
    v10 = *v13;
  }

  if ((*(v10 + 16) & 0x10000) != 0)
  {
    if (v14 > (*(v13 + 84) & 0xF00u) >> 8)
    {
      _dispatch_root_queue_push_override_stealer(v13, a1, v14);
    }
  }

  else
  {
    v9 = 0;
    if (*v13)
    {
      v9 = *v13;
    }

    if (*(v9 + 16) == 18)
    {
      _dispatch_workloop_push_stealer(v13, a1, v14);
    }

    else
    {
      v18 = ((*(v13 + 60) << 32) & 0x700000000) >> 32;
      v8 = 1;
      if (v18)
      {
        v8 = v18 < v14;
      }

      if (v8)
      {
        v7 = 0;
        if (*v13)
        {
          v7 = *v13;
        }

        (*(v7 + 64))(v13, v14, 0);
      }
    }
  }

  if (v12)
  {
    while (1)
    {
      v28 = a1;
      v55 = a1 + 100;
      v54 = 0;
      v53 = 0;
      v52 = 0;
      v51 = (a1 + 100);
      v54 = *(a1 + 100);
      do
      {
        if ((v54 & 2) != 0)
        {
          v53 = v54 ^ 2;
        }

        else
        {
          v53 = 0;
        }

        v50 = v53;
        v5 = v54;
        v6 = v54;
        atomic_compare_exchange_strong_explicit(v51, &v6, v53, memory_order_release, memory_order_relaxed);
        if (v6 != v5)
        {
          v54 = v6;
        }

        v49 = v6 == v5;
        v52 = v6 == v5;
      }

      while (v6 != v5);
      v48 = v52;
      if (v53)
      {
        __dmb(9u);
        v56 = 0;
      }

      else
      {
        v57 = v54;
        if (v54)
        {
          _dispatch_unfair_lock_unlock_slow(v55, v54);
        }

        v56 = 1;
      }

      if (v56)
      {
        v29 = 1;
      }

      else
      {
        v31 = 1;
        v30 = _dispatch_thread_getspecific(25);
        v32 = v30 & 0xF0000;
        if (v31 > (v30 & 0xF0000) >> 16)
        {
          v30 &= 0xFFF0FFFF;
          v30 |= v31 << 16;
          _dispatch_thread_setspecific(25, v30);
        }

        v29 = 0;
      }

      if (v29)
      {
        break;
      }

      if (((*(a1 + 60) << 32) & 0x700000000) >> 32 > v14)
      {
        v14 = ((*(a1 + 60) << 32) & 0x700000000) >> 32;
        goto LABEL_39;
      }
    }
  }

LABEL_77:
  if (a3)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

void _dispatch_root_queue_push_override_stealer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = 0;
  if ((*(a1 + 87) & 0x80) != 0)
  {
    v10 = 2;
  }

  else if ((*(a1 + 87) & 8) != 0)
  {
    v10 = 4;
  }

  v8 = 1;
  if (a3)
  {
    v8 = a3 > 6;
  }

  if (v8)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x498B8);
  }

  v16 = 0;
  if ((v10 & 2) != 0)
  {
    v16 = 1;
  }

  else if ((v10 & 4) != 0)
  {
    v16 = 2;
  }

  v9 = &(&_dispatch_root_queues)[16 * (3 * a3 + v16 - 3)];
  v14 = _dispatch_thread_getspecific(22);
  if (v14)
  {
    _dispatch_thread_setspecific(22, *(v14 + 16));
    v13 = v14;
  }

  else
  {
    v13 = _dispatch_continuation_alloc_from_heap();
  }

  *v13 = &unk_DCDE8;
  _dispatch_retain_2(a2);
  v13[4] = 0;
  v13[5] = v13;
  v13[7] = a1;
  v13[6] = a2;
  v13[1] = -1;
  v13[3] = -1;
  v13[2] = 0;
  _dispatch_thread_setspecific(122, (v9 + 6));
  v15 = atomic_exchange_explicit((v9 + 6), v13, memory_order_release);
  if (v15)
  {
    *(v15 + 16) = v13;
  }

  else
  {
    v9[13] = v13;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v15)
  {
    _dispatch_root_queue_poke_and_wakeup(v9, 1, 0, v3, v4, v5, v6, v7);
  }
}

void _dispatch_workloop_push_stealer(uint64_t a1, uint64_t a2, unsigned int a3)
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

  *v11 = &unk_DCDB0;
  _dispatch_retain_2(a2);
  v11[4] = 0;
  v11[5] = v11;
  v11[7] = 0;
  v11[6] = a2;
  v11[1] = -1;
  v11[3] = -1;
  _dispatch_workloop_push(a1, v11, a3, v3, v4, v5, v6, v7);
}

void _dispatch_lane_drain_non_barriers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v25 = *(a1 + 80);
  atomic_fetch_and_explicit((a1 + 56), 0xFFBFFFFFFFFFFFFFLL, memory_order_release);
  while (v25)
  {
    --v25;
LABEL_20:
    v36 = *(a2 + 16);
    *(a1 + 104) = v36;
    if (!v36)
    {
      v35 = *(a1 + 48);
      while (a2 == (v35 & 0xFFFFFFFFFFFFFFF8))
      {
        v10 = v35;
        v11 = v35;
        atomic_compare_exchange_strong_explicit((a1 + 48), &v11, 0, memory_order_release, memory_order_relaxed);
        if (v11 != v10)
        {
          v35 = v11;
        }

        if (v11 == v10)
        {
          goto LABEL_29;
        }
      }

      v34 = *(a2 + 16);
      if (!v34)
      {
        v34 = _dispatch_wait_for_enqueuer((a2 + 16));
      }

      v36 = v34;
      *(a1 + 104) = v34;
    }

LABEL_29:
    v24 = v36;
    if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
    {
      _dispatch_non_barrier_waiter_redirect_or_wake(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      _dispatch_continuation_redirect_push(a1, a2, ((*(a1 + 60) << 32) & 0x700000000) >> 32);
    }

LABEL_35:
    a2 = v24;
    v18 = 0;
    if (v24)
    {
      if (*v24 > 0xFFFuLL)
      {
        v17 = 0;
        if (*v24)
        {
          v17 = *v24;
        }

        v31 = (*(v17 + 16) & 0xF0) == 0x10 && (*(v24 + 80) & 0x80000) != 0;
      }

      else
      {
        v31 = (*v24 & 2) != 0;
      }

      v18 = !v31;
    }

    if (!v18)
    {
      goto LABEL_45;
    }
  }

  if (*a2 <= 0xFFFuLL && (*a2 & 0x81) != 0)
  {
    atomic_fetch_add_explicit((a1 + 56), 0x20000000000uLL, memory_order_relaxed);
    goto LABEL_20;
  }

  v32 = *(a1 + 56);
  do
  {
    v19 = 1;
    if (v32 < 0x20000000000000)
    {
      v19 = 1;
      if ((v32 & 0x8000000000) == 0)
      {
        v19 = (v32 & 0x10000000000) != 0;
      }
    }

    if (v19)
    {
      v33 = 0;
      goto LABEL_19;
    }

    v8 = v32;
    v9 = v32;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v9, v32 + 0x20000000000, memory_order_acquire, memory_order_acquire);
    if (v9 != v8)
    {
      v32 = v9;
    }
  }

  while (v9 != v8);
  v33 = 1;
LABEL_19:
  if (v33)
  {
    goto LABEL_20;
  }

LABEL_45:
  v21 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL;
  v20 = v25 << 41;
  if (a2)
  {
    v45 = v25 << 41;
    v44 = *(a1 + 80);
    if (v44 > 1u)
    {
      if (*a2 > 0xFFFuLL)
      {
        v16 = 0;
        if (*a2)
        {
          v16 = *a2;
        }

        v46 = (*(v16 + 16) & 0xF0) == 0x10 && (*(a2 + 80) & 0x80000) != 0;
      }

      else
      {
        v46 = (*a2 & 2) != 0;
      }

      if (v46)
      {
        v45 = v20 - (((v44 - 1) << 41) + 0x10000000000);
      }
    }

    v20 = v45;
  }

  v23 = *(a1 + 56);
  do
  {
    v22 = (v23 - v20) & 0xFFFFFF7700000001;
    if (a2)
    {
      v39 = v22 | 0x8000000000;
      v37 = v22 | 0x8000000000;
      if (((v23 - v20) & 0x10000000000) != 0)
      {
        v38 = v37 + 0x40010000000000;
      }

      else
      {
        v38 = v37 + (*(a1 + 80) << 41) + 0x40000000000000;
      }

      if ((v38 & 0x3FFE0000000000) == 0x20000000000000)
      {
        v39 = v38 & 0xFFFFFF7FFFFFFFFFLL | v21;
      }

      else if ((v23 & 0x8000000000) != 0)
      {
        v39 = (v23 - v20) & 0xFFFFFF7700000000 | 0x8000000001;
      }

      v22 = v39;
    }

    else if ((v23 & 0x8000000000) != 0)
    {
      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v24 = *(a1 + 104);
      goto LABEL_35;
    }

    v12 = v23;
    v13 = v23;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v13, v22, memory_order_relaxed, memory_order_relaxed);
    if (v13 != v12)
    {
      v23 = v13;
    }
  }

  while (v13 != v12);
  v41 = v23 - v20;
  v15 = 0;
  if (((v23 - v20) & 0x1000000000) != 0)
  {
    v15 = ((v23 - v20) & 0x800000000) != 0;
  }

  if (v15)
  {
    v43 = (v41 & 0x700000000uLL) >> 32;
    v42 = _dispatch_thread_getspecific(25);
    if (v43 > (v42 & 0xF0000u) >> 16)
    {
      _dispatch_thread_setspecific(25, v42 & 0xFFF0FFFF | (v43 << 16));
    }
  }

  if (((v41 ^ v22) & 0x40000000000000) != 0)
  {
    _dispatch_lane_barrier_complete(a1, 0, v26);
  }

  else if ((v41 ^ v22))
  {
    if ((v26 & 1) == 0)
    {
      _dispatch_retain_2(a1);
    }

    if ((v22 & 0x2000000000) != 0)
    {
      _dispatch_abort(1026, (v22 & 0x2000000000) == 0, a3, a4, a5, a6, a7, a8);
    }

    v40 = *(a1 + 24);
    v14 = 0;
    if (*v40)
    {
      v14 = **(a1 + 24);
    }

    (*(v14 + 72))(*(a1 + 24), a1, (v22 & 0x700000000) >> 32, a4, a5, a6);
  }

  else if (v26)
  {
    _dispatch_release_2_tailcall(a1);
  }
}

uint64_t _dispatch_channel_invoke_cancel_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 1;
  if ((*(a1 + 116) & 8) == 0 && (*(a1 + 80) & 0x10000000) != 0)
  {
    v4 = 0;
    if ((*(a2 + 32) & 0x1000000) != 0)
    {
      v4 = _dispatch_autorelease_pool_push();
    }

    v5 = (*(a3 + 24))(a1, *(a1 + 32));
    if (v4)
    {
      _dispatch_autorelease_pool_pop(v4);
    }

    if (v5)
    {
      *(a1 + 116) = *(a1 + 116) & 0xFFF7 | 8;
      _dispatch_release_no_dispose(a1);
    }

    else
    {
      *(a2 + 40) = -1;
    }
  }

  return v5 & 1;
}

uint64_t _dispatch_mgr_sched_qos2prio(int a1)
{
  switch(a1)
  {
    case 5:
      return 4;
    case 9:
      return 4;
    case 17:
      return 20;
    case 21:
      return 31;
    case 25:
      return 37;
    case 33:
      return 47;
    default:
      return 0;
  }
}

void _dispatch_mgr_priority_apply()
{
  v7 = 0;
  do
  {
    v7.sched_priority = _dispatch_mgr_sched;
    if (_dispatch_mgr_sched > dword_E4680)
    {
      v6 = pthread_setschedparam(qword_E4688, dword_E4684, &v7);
      v9 = v6;
      v8 = 6296;
      if (v6)
      {
        _dispatch_bug(v8, v9, v0, v1, v2, v3, v4, v5);
      }
    }
  }

  while (_dispatch_mgr_sched > v7.sched_priority);
}

void _dispatch_mgr_queue_drain()
{
  v24 = 0x40000;
  memset(v23, 0, sizeof(v23));
  v22 = &_dispatch_mgr_q;
  v21 = 0x40020000000000;
  if (qword_E0130)
  {
    v26 = 15;
    v25 = _dispatch_thread_getspecific(25);
    v27 = v25 & 0xF0000;
    if ((v25 & 0xF0000) >> 16 < 0xF)
    {
      v25 = v25 & 0xFFF0FFFF | (v26 << 16);
      _dispatch_thread_setspecific(25, v25);
    }

    if (_dispatch_lane_serial_drain(v22, v23, 0x40000, &v21, v0, v1, v2, v3))
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Interrupted drain on manager queue";
      __break(1u);
      JUMPOUT(0x4B278);
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: mgr queue clear", v4, v5, v6, v7, v8, v9, v10, 6444);
    v33 = 0;
    v36 = 0;
    v35 = _dispatch_thread_getspecific(28);
    v44 = v35;
    v43 = v36;
    if (v35 == v36)
    {
      v45 = -1;
    }

    else
    {
      if (v44)
      {
        v42 = 0;
        v41 = 0;
      }

      _dispatch_thread_setspecific(28, v43);
      if (v43)
      {
        v40 = 0;
        v39 = 0;
      }

      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", v11, v12, v13, v14, v15, v16, v17, 400);
      if (v43)
      {
        v20 = *(v43 + 32);
      }

      else
      {
        v20 = 0;
      }

      v38 = v20;
      if (v44)
      {
        v19 = *(v44 + 8);
      }

      else
      {
        v19 = 0;
      }

      v37 = v19;
      if (v38 == v19)
      {
        v18 = -1;
      }

      else
      {
        v18 = v38;
      }

      v45 = v18;
    }

    v46 = v45;
    if (v45 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v46);
    }

    v32 = v35;
    if (v35)
    {
      v34 = v32;
      os_release(v32);
    }

    v29 = _dispatch_thread_getspecific(25);
    v31 = v29 & 0xF0000;
    v28 = (v29 & 0xF0000) >> 16;
    if ((v29 & 0xF0000) >> 16)
    {
      v29 &= 0xFFF0FFFF;
      _dispatch_thread_setspecific(25, v29);
      v30 = v28 != 15;
    }

    else
    {
      v30 = 0;
    }
  }

  if ((_dispatch_kevent_workqueue_enabled & 1) == 0)
  {
    _dispatch_force_cache_cleanup();
  }
}

void _dispatch_force_cache_cleanup()
{
  v0 = _dispatch_thread_getspecific(22);
  if (v0)
  {
    _dispatch_thread_setspecific(22, 0);
    _dispatch_cache_cleanup(v0);
  }
}

uint64_t *_dispatch_mgr_root_queue_init()
{
  v33 = &_dispatch_mgr_sched_pred;
  v32 = 0;
  v31 = _dispatch_mgr_sched_init;
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(v33, v32, v31);
  }

  v24 = off_E00A0;
  __attr = off_E00A0;
  v22 = 0;
  v21 = pthread_attr_setdetachstate(off_E00A0, 2);
  v30 = v21;
  v29 = 6257;
  if (v21)
  {
    _dispatch_bug(v29, v30, v0, v1, v2, v3, v4, v5);
  }

  if (dword_E467C)
  {
    if (_dispatch_set_qos_class_enabled)
    {
      v20 = pthread_attr_set_qos_class_np(__attr, dword_E467C, 0);
      v28 = v20;
      v27 = 6266;
      if (v20)
      {
        _dispatch_bug(v27, v28, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  v22.sched_priority = _dispatch_mgr_sched;
  if (_dispatch_mgr_sched > dword_E4680)
  {
    v19 = pthread_attr_setschedparam(__attr, &v22);
    v26 = v19;
    v25 = 6272;
    if (v19)
    {
      _dispatch_bug(v25, v26, v12, v13, v14, v15, v16, v17);
    }
  }

  return &qword_E4688;
}

uint64_t _dispatch_worker_thread(uint64_t a1)
{
  v24 = *(a1 + 32);
  v23 = atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire) - 1;
  if (v23 < 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Pending thread request underflow";
    qword_E42C0 = v23;
    __break(1u);
    JUMPOUT(0x4B84CLL);
  }

  if (*(v24 + 144))
  {
    _dispatch_thread_setspecific(24, v24 + 144);
  }

  if (*(a1 + 72))
  {
    pthread_setname_np(*(a1 + 72));
  }

  if (*(v24 + 64))
  {
    (*(*(v24 + 64) + 16))();
  }

  _dispatch_sigmask();
  v22 = _dispatch_thread_getspecific(4);
  v20 = *(a1 + 84);
  if ((v20 & 0x46000FFF) == 0)
  {
    v21 = v20 & 0x80000000;
    v19 = 0;
    if ((v22 & 0x22000000) == 0)
    {
      v19 = (v22 & 0x3F00) != 0;
    }

    if (v19)
    {
      if ((v22 & 0x20000000) != 0)
      {
        _dispatch_abort(458, (v22 & 0x20000000) == 0, v1, v2, v3, v4, v5, v6);
      }

      v7 = (v22 & 0x3FFF00) >> 8;
      v8 = __clz(__rbit32(v7));
      if (v7)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = 0;
      }

      v20 = v21 | v22 & 0x8E0000FF | (v9 << 8);
    }

    else
    {
      v20 = v21 | 0xF0000;
    }
  }

  do
  {
    _dispatch_root_queue_drain(a1, v20, 0x20000);
    v26 = v22;
    if (v22 == -1)
    {
      v26 = 0;
    }

    if (v26 == -1)
    {
      _dispatch_abort(2409, 0, v10, v11, v12, v13, v14, v15);
    }

    if (_dispatch_set_qos_class_enabled)
    {
      v28 = v26 & 0xFFFFFFFF02FFFFFFLL;
      v27 = _dispatch_thread_getspecific(4);
      if ((v27 & 0x1000000) != 0)
      {
        if (v28)
        {
          v18 = v26 & 0xFFFFFFFF02FFFFFFLL;
        }

        else
        {
          v18 = v27 & 0xFFFFFFFFFEFFFFFFLL;
        }

        v29 = v18;
      }

      else if (v28 == (v27 & 0xFFFFFFFF77FFFFFFLL))
      {
        v29 = 0;
      }

      else
      {
        v29 = v26 & 0xFFFFFFFF02FFFFFFLL;
      }
    }

    else
    {
      v29 = 0;
    }

    if (v29 || _dispatch_thread_getspecific(28))
    {
      _dispatch_set_priority_and_voucher_slow(v29, 0, 6);
    }

    v16 = dispatch_time(0, 5000000000);
  }

  while (!dispatch_semaphore_wait((v24 + 72), v16));
  atomic_fetch_add_explicit((a1 + 100), 1u, memory_order_release);
  _dispatch_root_queue_poke(a1);
  _dispatch_release(a1);
  return 0;
}

uint64_t _dispatch_root_queue_drain(uint64_t a1, unsigned int a2, int a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = _dispatch_thread_getspecific(20);
  if (v44)
  {
    v43 = v44;
    qword_E4290 = "BUG IN LIBDISPATCH: Premature thread recycling";
    qword_E42C0 = v44;
    __break(1u);
    JUMPOUT(0x4BEB0);
  }

  v42 = v47;
  v48 = v47;
  _dispatch_thread_setspecific(20, v47);
  v55 = v46;
  v9 = _dispatch_thread_getspecific(25) == 0;
  v57 = v9;
  v56 = 2333;
  if (!v9)
  {
    _dispatch_abort(v56, v57, v3, v4, v5, v6, v7, v8);
  }

  _dispatch_thread_setspecific(25, v55);
  v62 = _dispatch_thread_getspecific(27);
  v60 = v62 & 0xFFFFFFFFFFFFFFFELL;
  if ((v62 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
  {
    v61 = 0;
  }

  else
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", v10, v11, v12, v13, v14, v15, v16, 833);
    v64 = v60;
    if (v60)
    {
      if (v64 != -4)
      {
        v63 = v64;
        v77 = v64;
        v74 = 1;
        v73 = 1;
        v75 = 1;
        v69 = 1;
        v68 = 1;
        v70 = 1;
        add_explicit = atomic_fetch_add_explicit((v64 + 96), 0xFFFFFFFF, memory_order_relaxed);
        v71 = add_explicit;
        v66 = add_explicit;
        v72 = add_explicit - 1;
        v76 = add_explicit - 1;
        if (((add_explicit - 1) & 0x80000000) != 0)
        {
          if (v76 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x4C080);
          }

          v77[7] = 0xDEAD000000000000;
          v65 = v77;
          _dispatch_object_dealloc(v77);
        }
      }
    }

    _dispatch_thread_setspecific(27, -4);
    v61 = 1;
  }

  if ((v61 & 1) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
    __break(1u);
    JUMPOUT(0x4C0F0);
  }

  v41 = 0;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  _dispatch_last_resort_autorelease_pool_push(v39);
  while (1)
  {
    v41 = _dispatch_root_queue_drain_one(v47, v17, v18, v19, v20, v21, v22, v23);
    if (!v41)
    {
      break;
    }

    if (v40 && (_dispatch_set_qos_class_enabled & 1) != 0)
    {
      _pthread_workqueue_override_reset();
    }

    _dispatch_continuation_pop_inline(v41, v39, v45, v47);
    v52 = _dispatch_thread_getspecific(25);
    v54 = v52 & 0xF0000;
    v51 = (v52 & 0xF0000) >> 16;
    if ((v52 & 0xF0000) >> 16)
    {
      v52 &= 0xFFF0FFFF;
      _dispatch_thread_setspecific(25, v52);
      v53 = v51 != 15;
    }

    else
    {
      v53 = 0;
    }

    v40 = v53;
    v50 = v39;
    v49 = _dispatch_thread_getspecific(120);
    if (v49)
    {
      break;
    }

    _dispatch_thread_setspecific(120, 0);
  }

  _dispatch_last_resort_autorelease_pool_pop(v39);
  v30 = _dispatch_thread_getspecific(27) == -4;
  v59 = v30;
  v58 = 879;
  if (!v30)
  {
    _dispatch_abort(v58, v59, v24, v25, v26, v27, v28, v29);
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\twlh[anon]: clear current", v31, v32, v33, v34, v35, v36, v37, 880);
  _dispatch_thread_setspecific(27, 0);
  _dispatch_thread_setspecific(5, 0);
  _dispatch_thread_setspecific(25, 0);
  return _dispatch_thread_setspecific(20, 0);
}

uint64_t _dispatch_root_queue_drain_one(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    v13 = __swp(0xFFFFFFFF, (a1 + 104));
    if (v13)
    {
      break;
    }

    v8 = -1;
    atomic_compare_exchange_strong_explicit((a1 + 104), &v8, 0, memory_order_relaxed, memory_order_relaxed);
    if (v8 == -1 && (!*(a1 + 48) || !__DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(a1, _dispatch_root_queue_head_tail_quiesced, a3, a4, a5, a6, a7, a8)))
    {
      return 0;
    }
  }

  v12 = *(v13 + 16);
  if (v12)
  {
    goto LABEL_11;
  }

  *(a1 + 104) = 0;
  v9 = v13;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v13)
  {
    v11 = *(v13 + 16);
    if (!v11)
    {
      v11 = _dispatch_wait_for_enqueuer((v13 + 16));
    }

    v12 = v11;
LABEL_11:
    *(a1 + 104) = v12;
    _dispatch_root_queue_poke(a1, 1u, 0, a4, a5, a6, a7, a8);
  }

  return v13;
}

BOOL __DISPATCH_ROOT_QUEUE_CONTENDED_WAIT__(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 500;
  v20 = 1;
  v19 = 0;
  while (1)
  {
    v18 = 0;
    v17 = 79;
    do
    {
      if (!v17--)
      {
        break;
      }

      __yield();
      v20 = a2(a1);
      v18 = v20 != 0;
    }

    while (!v20);
    if (v18)
    {
      break;
    }

    if ((v19 & 1) == 0)
    {
      atomic_fetch_add_explicit((a1 + 112), 1u, memory_order_release);
      v19 = 1;
    }

    thread_switch(0, 3, v21);
    v20 = a2(a1);
    if (v20)
    {
      break;
    }

    v21 *= 2;
    if (v21 >= 0x186A0)
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tcontention on global queue: %p", v9, v10, v11, v12, v13, v14, v15, 7148);
      break;
    }
  }

  if (v19)
  {
    atomic_fetch_add_explicit((a1 + 112), 0xFFFFFFFF, memory_order_acquire);
    if (*(a1 + 48))
    {
      v20 = 1;
    }
  }

  if (!v20)
  {
    _dispatch_root_queue_poke(a1, 1u, 0, a4, a5, a6, a7, a8);
  }

  return v20 == 1;
}

uint64_t _dispatch_root_queue_head_tail_quiesced(uint64_t a1)
{
  v3 = *(a1 + 48);
  if ((*(a1 + 104) == 0) == (v3 == 0))
  {
    v1 = *(a1 + 48);
    if (v3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

void _dispatch_root_queue_init_pthread_pool(uint64_t a1, int a2, int a3)
{
  v26 = *(a1 + 32);
  v25 = 32;
  if ((a3 & 0x80000000) == 0)
  {
    v25 = MEMORY[0xFFFFFC034];
  }

  if (a2 && a2 < v25)
  {
    v25 = a2;
  }

  *(a1 + 100) = v25;
  if ((a3 & 0xF00) >> 8)
  {
    v21 = (a3 & 0xF00) >> 8;
  }

  else
  {
    v21 = (a3 & 0xF000) >> 12;
  }

  switch(v21)
  {
    case 1:
      v27 = 5;
      break;
    case 2:
      v27 = QOS_CLASS_BACKGROUND;
      break;
    case 3:
      v27 = QOS_CLASS_UTILITY;
      break;
    case 4:
      v27 = QOS_CLASS_DEFAULT;
      break;
    case 5:
      v27 = QOS_CLASS_USER_INITIATED;
      break;
    case 6:
      v27 = QOS_CLASS_USER_INTERACTIVE;
      break;
    default:
      v27 = QOS_CLASS_UNSPECIFIED;
      break;
  }

  if (v27)
  {
    v24 = pthread_attr_init(v26);
    if (v24)
    {
      _dispatch_bug(7516, v24, v3, v4, v5, v6, v7, v8);
    }

    v23 = pthread_attr_setdetachstate(v26, 2);
    if (v23)
    {
      _dispatch_bug(7518, v23, v9, v10, v11, v12, v13, v14);
    }

    v22 = pthread_attr_set_qos_class_np(v26, v27, 0);
    if (v22)
    {
      _dispatch_bug(7522, v22, v15, v16, v17, v18, v19, v20);
    }
  }

  *(v26 + 72) = _OS_dispatch_semaphore_vtable;
  *(v26 + 136) = 0;
  if (!*(v26 + 136))
  {
    _dispatch_sema4_create_slow((v26 + 136), 2);
  }
}

void _dispatch_mgr_priority_raise(pthread_attr_t *a1)
{
  v26 = a1;
  v36 = &_dispatch_mgr_sched_pred;
  v35 = 0;
  v34 = _dispatch_mgr_sched_init;
  if (_dispatch_mgr_sched_pred != -1)
  {
    dispatch_once_f(v36, v35, v34);
  }

  v25 = 0;
  v24 = pthread_attr_getschedparam(v26, &v25);
  v30 = v24;
  v29 = 6350;
  if (v24)
  {
    _dispatch_bug(v29, v30, v1, v2, v3, v4, v5, v6);
  }

  v23 = v24;
  v22 = QOS_CLASS_UNSPECIFIED;
  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_attr_get_qos_class_np(v26, &__qos_class, 0);
  if (__qos_class)
  {
    v25.sched_priority = _dispatch_mgr_sched_qos2prio(__qos_class);
    v22 = dword_E467C;
    do
    {
      if (v22 >= __qos_class)
      {
        break;
      }

      v7 = v22;
      v8 = v22;
      atomic_compare_exchange_strong_explicit(&dword_E467C, &v8, __qos_class, memory_order_relaxed, memory_order_relaxed);
      if (v8 != v7)
      {
        v22 = v8;
      }
    }

    while (v8 != v7);
  }

  sched_priority = v25.sched_priority;
  v20 = _dispatch_mgr_sched;
  while (v20 < sched_priority)
  {
    v9 = v20;
    v10 = v20;
    atomic_compare_exchange_strong_explicit(&_dispatch_mgr_sched, &v10, sched_priority, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v9)
    {
      v20 = v10;
    }

    if (v10 == v9)
    {
      v33 = &_dispatch_root_queues_pred;
      v32 = 0;
      v31 = _dispatch_root_queues_init_once;
      if (_dispatch_root_queues_pred != -1)
      {
        dispatch_once_f(v33, v32, v31);
      }

      if (_dispatch_kevent_workqueue_enabled)
      {
        v18 = 0;
        if (sched_priority <= dword_E4680)
        {
          if (__qos_class)
          {
            v18 = _pthread_qos_class_encode();
          }
        }

        else
        {
          v18 = sched_priority | 0x20000000;
        }

        if (v18)
        {
          v17 = _pthread_workqueue_set_event_manager_priority();
          v28 = v17;
          v27 = 6382;
          if (v17)
          {
            _dispatch_bug(v27, v28, v11, v12, v13, v14, v15, v16);
          }
        }
      }

      else if (qword_E4688)
      {
        _dispatch_mgr_priority_apply();
      }

      return;
    }
  }
}

void _dispatch_runloop_queue_class_poke(uint64_t a1)
{
  v10 = *(a1 + 32);
  v7 = 0;
  if (v10)
  {
    v7 = v10 != -1;
  }

  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = _dispatch_send_wakeup_runloop_thread(v10, 0);
    if (v8 != 16 && v8 != 268435460 && v8 != 268435459)
    {
      if (v8)
      {
        _dispatch_bug(7983, v8, v1, v2, v3, v4, v5, v6);
      }
    }
  }
}

uint64_t _dispatch_main_queue_update_priority_from_thread()
{
  v13 = qword_E0038[0];
  result = _dispatch_thread_getspecific(4);
  if ((result & 0x20000000) != 0)
  {
    _dispatch_abort(458, (result & 0x20000000) == 0, v1, v2, v3, v4, v5, v6);
  }

  v7 = (result & 0x3FFF00) >> 8;
  v8 = __clz(__rbit32(v7));
  if (v7)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  v12 = ((result | (v9 << 8)) & 0xF00) >> 8;
  v11 = (v13 & 0x700000000uLL) >> 32;
  v10 = (dword_E0054 & 0xF00) >> 8;
  dword_E0054 = result | (v9 << 8);
  if (v10 < v11 && !v12)
  {
    if ((_dispatch_set_qos_class_enabled & 1) == 0)
    {
      return result;
    }

    return _pthread_qos_override_end_direct();
  }

  if (v10 >= v11 || v11 > v12)
  {
    if (v12 < v11 && v11 <= v10 && (_dispatch_set_qos_class_enabled & 1) != 0)
    {
      return _pthread_qos_override_start_direct();
    }
  }

  else if (_dispatch_set_qos_class_enabled)
  {
    return _pthread_qos_override_end_direct();
  }

  return result;
}

uint64_t _dispatch_root_queues_init_once(uint64_t a1)
{
  v10 = a1;
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  v9 = _pthread_workqueue_supported();
  v8 = 45;
  if ((v9 & 0x10) == 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: QoS Maintenance support required";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x4D648);
  }

  v4 = 0x200000000uLL;
  v5 = 0uLL;
  v6 = 64;
  v7 = 72;
  if (_dispatch_kevent_workqueue_enabled)
  {
    if ((v9 & 0x80) != 0)
    {
      *(&v5 + 1) = _dispatch_worker_thread2;
      *(&v4 + 1) = _dispatch_kevent_worker_thread;
      *&v5 = _dispatch_workloop_worker_thread;
      result = pthread_workqueue_setup();
      v8 = result;
    }

    else
    {
      if ((v9 & 0x40) == 0)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Missing Kevent WORKQ support";
        qword_E42C0 = v9;
        __break(1u);
        JUMPOUT(0x4D7B8);
      }

      *(&v5 + 1) = _dispatch_worker_thread2;
      *(&v4 + 1) = _dispatch_kevent_worker_thread;
      result = pthread_workqueue_setup();
      v8 = result;
    }
  }

  else
  {
    *(&v5 + 1) = _dispatch_worker_thread2;
    result = pthread_workqueue_setup();
    v8 = result;
  }

  if (v8)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Root queue initialization failed";
    qword_E42C0 = v9 | (v8 << 16);
    __break(1u);
    JUMPOUT(0x4D818);
  }

  if ((_dispatch_mode & 4) != 0)
  {
    v3 = -1;
    result = sysctlbyname("kern.wq_limit_cooperative_threads", 0, 0, &v3, 4uLL);
    v8 = result;
    if (result)
    {
      v11 = 1;
      v12 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v2 = **(StatusReg + 8);
      qword_E4290 = "BUG IN LIBDISPATCH: Unable to limit cooperative pool size";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x4D8CCLL);
    }
  }

  return result;
}

uint64_t _dispatch_worker_thread2(uint64_t a1)
{
  _dispatch_thread_setspecific(120, 0);
  v32 = a1 < 0;
  v31 = (a1 & 0x8000000) != 0;
  v34 = a1 & 0xFFFFFFFF88FFFFFFLL;
  _dispatch_thread_setspecific(4, v34);
  v29 = 0;
  if (v31)
  {
    v28 = 4;
    v29 = 0x200000;
  }

  else
  {
    if (v32)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v28 = v7;
  }

  v8 = (v34 & 0x3FFF00) >> 8;
  v9 = __clz(__rbit32(v8));
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v26 = 1;
  if (v10)
  {
    v26 = v10 > 6;
  }

  if (v26)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
    qword_E42C0 = v10;
    __break(1u);
    JUMPOUT(0x4DA80);
  }

  v35 = 0;
  if ((v28 & 2) != 0)
  {
    v35 = 1;
  }

  else if ((v28 & 4) != 0)
  {
    v35 = 2;
  }

  v30 = &(&_dispatch_root_queues)[16 * (3 * v10 + v35 - 3)];
  v27 = atomic_fetch_add_explicit((v30 + 14), 0xFFFFFFFF, memory_order_acquire) - 1;
  if (v27 < 0)
  {
    _dispatch_abort(7474, v27 >= 0, v1, v2, v3, v4, v5, v6);
  }

  v38 = _dispatch_thread_getspecific(29);
  v25 = 1;
  if (v38)
  {
    v25 = v38 & 1;
  }

  if ((v25 & 1) == 0)
  {
    _dispatch_abort(475, v25 & 1, v11, v12, v13, v14, v15, v16);
  }

  if ((v38 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    _dispatch_free_deferred_unotes((v38 & 0xFFFFFFFFFFFFFFFELL));
    _dispatch_thread_setspecific(29, 0);
  }

  _dispatch_root_queue_drain(v30, *(v30 + 21), v29 | 0x30000);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: root queue clear", v17, v18, v19, v20, v21, v22, v23, 7488);
  if (_dispatch_set_qos_class_enabled)
  {
    v36 = _dispatch_thread_getspecific(4);
    if ((v36 & 0x1000000) != 0)
    {
      v37 = v36 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v37 || _dispatch_thread_getspecific(28))
  {
    _dispatch_set_priority_and_voucher_slow(v37, 0, 14);
  }

  return _dispatch_thread_setspecific(120, 0);
}

void _dispatch_kevent_worker_thread(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = 0;
  if (a1)
  {
    v103 = a2 != 0;
  }

  if (v103)
  {
    if (*a2 && *a1)
    {
      v106 = _dispatch_thread_getspecific(27) & 0xFFFFFFFFFFFFFFFELL;
      if (v106 == -4)
      {
        v107 = 0;
      }

      else
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\twlh[anon]: set current (releasing %p)", v8, v9, v10, v11, v12, v13, v14, 833);
        if (v106)
        {
          v108 = atomic_fetch_add_explicit((v106 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
          if (v108 < 0)
          {
            if (v108 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x4E1CCLL);
            }

            *(v106 + 56) = 0xDEAD000000000000;
            _dispatch_object_dealloc(v106);
          }
        }

        _dispatch_thread_setspecific(27, -4);
        v107 = 1;
      }

      if ((v107 & 1) == 0)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
        __break(1u);
        JUMPOUT(0x4E23CLL);
      }

      v15 = *a1;
      v122 = -4;
      v121 = v15;
      v120 = a2;
      _dispatch_thread_setspecific(120, 0);
      v114 = 0uLL;
      v115 = 0;
      v116 = -4;
      v117 = 0;
      v118 = v121;
      v119 = 0;
      v113 = 0;
      v112 = _dispatch_wlh_uses_bound_thread(0xFFFFFFFFFFFFFFFCLL);
      memset(&token_out, 0, sizeof(token_out));
      wg = 0;
      if (v112)
      {
        _dispatch_wlh_uses_bound_thread_setup(v122);
      }

      else
      {
        wg = _dispatch_wlh_get_workgroup(v122);
        if (wg)
        {
          v109 = os_workgroup_join(wg, &token_out);
          if (v109 == 22)
          {
            _dispatch_thread_getspecific(0);
            _dispatch_log("%u\t%p\twlh[%p]: Failed to join cancelled workgroup %p", v22, v23, v24, v25, v26, v27, v28, 6742);
            wg = 0;
          }

          else if (v109)
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
            qword_E42C0 = v109;
            __break(1u);
            JUMPOUT(0x4E3D8);
          }
        }
      }

      v158 = &v114;
      v168 = v116;
      v167 = 6581;
      if (!v116)
      {
        _dispatch_abort(v167, 0, v16, v17, v18, v19, v20, v21);
      }

      v160 = _dispatch_thread_getspecific(4);
      v157 = v160;
      if ((v160 & 0x2000000) != 0)
      {
        if ((v157 & 0x20000000) != 0)
        {
          v190 = v157;
          v157 = BYTE3(v157) << 24;
        }

        v163 = v157;
        v162 = 0x1000000;
        v161 = 0;
        v157 &= ~0x1000000uLL;
        _dispatch_thread_setspecific(4, v157);
        v191 = 0x2000000;
        v42 = _dispatch_thread_getspecific(25) == 0;
        v193 = v42;
        v192 = 2345;
        if (!v42)
        {
          _dispatch_abort(v192, v193, v36, v37, v38, v39, v40, v41);
        }

        v191 |= 0xF0000u;
        _dispatch_thread_setspecific(25, v191);
        v156 = &_dispatch_mgr_q;
        v169 = &_dispatch_mgr_q;
        _dispatch_thread_setspecific(20, &_dispatch_mgr_q);
        v179 = &_dispatch_mgr_q;
        v178 = 0;
        v177 = 0;
        v182 = _dispatch_thread_getspecific(3);
        v176 = v182 & 0xFFFFFFFC | 0x40020000000000;
        v175 = 0;
        v174 = (v179 + 7);
        v178 = v179[7];
        do
        {
          v177 = v178;
          v181 = v178;
          v102 = 1;
          if (!(v178 >> 53))
          {
            v180 = v178;
            v183 = v178;
            v102 = (v178 & 0xFFFFFFFC) != 0;
          }

          if (v102)
          {
            v173 = v178;
            qword_E4290 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
            qword_E42C0 = v178;
            __break(1u);
            JUMPOUT(0x4E6FCLL);
          }

          v177 &= 0x7700000001uLL;
          v177 |= v176;
          v172 = v177;
          v43 = v178;
          v44 = v178;
          atomic_compare_exchange_strong_explicit(v174, &v44, v177, memory_order_acquire, memory_order_acquire);
          if (v44 != v43)
          {
            v178 = v44;
          }

          v171 = v44 == v43;
          v175 = v44 == v43;
        }

        while (v44 != v43);
        v170 = v175;
        v159 = 1;
      }

      else
      {
        v166 = v157;
        v165 = 2013265919;
        v164 = 0;
        v157 &= 0xFFFFFFFF88FFFFFFLL;
        if (*(v158 + 3) == -4)
        {
          v157 |= 0x1000000uLL;
        }

        _dispatch_thread_setspecific(4, v157);
        if (*(v158 + 3) == -4)
        {
          *(v158 + 52) = 1;
        }

        else
        {
          _dispatch_thread_getspecific(0);
          v99 = *(v158 + 3);
          _dispatch_log("%u\t%p\twlh[%p]: handling events", v29, v30, v31, v32, v33, v34, v35, 6601);
        }

        v159 = 0;
      }

      v113 = v159;
      if (v159)
      {
        v46 = *v120;
        v141 = 1;
        v140 = &_dispatch_mgr_q;
        v139 = v46;
        v116 = -4;
      }

      else
      {
        if (v122 == -4)
        {
          v101 = 0;
        }

        else
        {
          v101 = v122;
        }

        v45 = *v120;
        v144 = 1;
        v143 = v101;
        v142 = v45;
      }

      v145 = _dispatch_thread_getspecific(29);
      v100 = 1;
      if (v145)
      {
        v100 = v145 & 1;
      }

      v147 = v100 & 1;
      v146 = 475;
      if ((v100 & 1) == 0)
      {
        _dispatch_abort(v146, v147, v47, v48, v49, v50, v51, v52);
      }

      if ((v145 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        _dispatch_free_deferred_unotes((v145 & 0xFFFFFFFFFFFFFFFELL));
      }

      v151 = &v114;
      v153 = (&v114 & 1) == 0;
      v152 = 443;
      if (&v114)
      {
        _dispatch_abort(v152, v153, v47, v48, v49, v50, v51, v52);
      }

      _dispatch_thread_setspecific(29, v151);
      _dispatch_event_loop_merge(v121, *v120);
      if (v113)
      {
        v138 = 2;
        v137 = &_dispatch_mgr_q;
        v136 = 0;
        _dispatch_mgr_queue_drain();
        if (byte_E4436)
        {
          _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u, v53, v54, v55, v56, v57, v58);
        }

        v201 = &_dispatch_mgr_q;
        v199 = 0;
        v198 = 0;
        v197 = &qword_E0138;
        v200 = qword_E0138;
        do
        {
          v199 = (v200 - 0x40020000000000) & 0xFFFFFFF000000001;
          v196 = v199;
          v59 = v200;
          v60 = v200;
          atomic_compare_exchange_strong_explicit(v197, &v60, v199, memory_order_release, memory_order_relaxed);
          if (v60 != v59)
          {
            v200 = v60;
          }

          v195 = v60 == v59;
          v198 = v60 == v59;
        }

        while (v60 != v59);
        v194 = v198;
        v202 = v200;
        v185 = (v200 & 0x8000000000) != 0;
        _dispatch_thread_setspecific(25, 0);
        v184 = 0;
        v189 = 0;
        _dispatch_thread_setspecific(20, 0);
        if (v185)
        {
          v188 = 3;
          v187 = &_dispatch_mgr_q;
          v186 = 1;
          _dispatch_event_loop_poke(-8, 0, 0, v61, v62, v63, v64, v65);
        }
      }

      else if (*(&v114 + 1))
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\twlh[%p]: draining deferred item %p", v66, v67, v68, v69, v70, v71, v72, 6779);
        if (v116 == -4)
        {
          v126 = v119 == 0;
          v125 = 6781;
          if (v119)
          {
            _dispatch_abort(v125, v126, v73, v74, v75, v76, v77, v78);
          }

          v124 = v117 == 0;
          v123 = 6782;
          if (v117)
          {
            _dispatch_abort(v123, v124, v73, v74, v75, v76, v77, v78);
          }

          v148 = 0;
          v150 = 1;
          v149 = 443;
          _dispatch_thread_setspecific(29, 0);
          v135 = 2;
          v134 = v114;
          v133 = 0;
          _dispatch_root_queue_drain_deferred_item(&v114);
        }

        else
        {
          v132 = 2;
          v131 = v122;
          v130 = 0;
          _dispatch_root_queue_drain_deferred_wlh(&v114);
        }
      }

      if ((v112 & 1) == 0 && wg)
      {
        os_workgroup_leave(wg, &token_out);
      }

      v155 = v117;
      if (v117)
      {
        v154 = v155 | 1;
        _dispatch_thread_setspecific(29, v155 | 1);
      }

      else
      {
        _dispatch_thread_setspecific(29, 0);
      }

      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\treturning %d deferred kevents", v79, v80, v81, v82, v83, v84, v85, 6807);
      _dispatch_thread_setspecific(5, 0);
      _dispatch_thread_setspecific(120, 0);
      *v120 = v119;
      v129 = 4;
      v128 = 0;
      v127 = 0;
      if (_dispatch_thread_getspecific(27) != -4)
      {
        _dispatch_abort(879, 0, v86, v87, v88, v89, v90, v91);
      }

      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\twlh[anon]: clear current", v92, v93, v94, v95, v96, v97, v98, 880);
      _dispatch_thread_setspecific(27, 0);
      _dispatch_thread_setspecific(5, 0);
    }
  }

  else
  {
    _dispatch_bug(6827, v103, a3, a4, a5, a6, a7, a8);
  }
}

void _dispatch_workloop_worker_thread(uint64_t **a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v110 = 0;
  if (a1)
  {
    v110 = 0;
    if (a2)
    {
      v110 = a3 != 0;
    }
  }

  if (v110)
  {
    v112 = *a1 != 0;
    if (!*a1)
    {
      _dispatch_bug(6849, *a1 != 0, a3, a4, a5, a6, a7, a8);
    }

    if (v112)
    {
      if (*a3 && *a2)
      {
        v111 = *a1;
        v211 = *a1;
        v214 = _dispatch_thread_getspecific(27);
        v210 = v214 & 0xFFFFFFFFFFFFFFFELL;
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\twlh[%p]: adopt current (releasing %p)", v8, v9, v10, v11, v12, v13, v14, 853);
        if ((v214 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFFCLL)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Lingering DISPATCH_WLH_ANON";
          __break(1u);
          JUMPOUT(0x4EF80);
        }

        if (v210 != v211)
        {
          v213 = v211;
          v212 = 858;
          if (!v211)
          {
            _dispatch_abort(v212, 0, v15, v16, v17, v18, v19, v20);
          }

          v216 = v210;
          if (v210)
          {
            v215 = v216;
            v229 = v216;
            v226 = 1;
            v225 = 1;
            v227 = 1;
            v221 = 1;
            v220 = 1;
            v222 = 1;
            add_explicit = atomic_fetch_add_explicit((v216 + 96), 0xFFFFFFFF, memory_order_relaxed);
            v223 = add_explicit;
            v218 = add_explicit;
            v224 = add_explicit - 1;
            v228 = add_explicit - 1;
            if (((add_explicit - 1) & 0x80000000) != 0)
            {
              if (v228 <= -2)
              {
                qword_E4290 = "API MISUSE: Over-release of an object";
                __break(1u);
                JUMPOUT(0x4F0A8);
              }

              v229[7] = 0xDEAD000000000000;
              v217 = v229;
              _dispatch_object_dealloc(v229);
            }
          }

          v236 = v211;
          if (v211)
          {
            if (v236 != -4)
            {
              v235 = v236;
              v248 = v236;
              v245 = 1;
              v244 = 1;
              v246 = 1;
              v240 = 1;
              v239 = 1;
              v241 = 1;
              v238 = atomic_fetch_add_explicit((v236 + 96), 1u, memory_order_relaxed);
              v242 = v238;
              v237 = v238;
              v243 = v238 + 1;
              v247 = v238 + 1;
              if ((v238 + 1) <= 0)
              {
                qword_E4290 = "API MISUSE: Resurrection of an object";
                __break(1u);
                JUMPOUT(0x4F1A0);
              }
            }
          }
        }

        _dispatch_thread_setspecific(27, v211);
        v21 = *a2;
        v129 = v111;
        v128 = v21;
        v127 = a3;
        _dispatch_thread_setspecific(120, 0);
        v121 = 0uLL;
        v122 = 0;
        v123 = v111;
        v124 = 0;
        v125 = v128;
        v126 = 0;
        v120 = 0;
        v119 = _dispatch_wlh_uses_bound_thread(v111);
        memset(&token_out, 0, sizeof(token_out));
        wg = 0;
        if (v119)
        {
          _dispatch_wlh_uses_bound_thread_setup(v129);
        }

        else
        {
          wg = _dispatch_wlh_get_workgroup(v129);
          if (wg)
          {
            v116 = os_workgroup_join(wg, &token_out);
            if (v116 == 22)
            {
              _dispatch_thread_getspecific(0);
              _dispatch_log("%u\t%p\twlh[%p]: Failed to join cancelled workgroup %p", v28, v29, v30, v31, v32, v33, v34, 6742);
              wg = 0;
            }

            else if (v116)
            {
              qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_workloop os_workgroup_join failed";
              qword_E42C0 = v116;
              __break(1u);
              JUMPOUT(0x4F354);
            }
          }
        }

        v165 = &v121;
        v175 = v123;
        v174 = 6581;
        if (!v123)
        {
          _dispatch_abort(v174, 0, v22, v23, v24, v25, v26, v27);
        }

        v167 = _dispatch_thread_getspecific(4);
        v164 = v167;
        if ((v167 & 0x2000000) != 0)
        {
          if ((v164 & 0x20000000) != 0)
          {
            v197 = v164;
            v164 = BYTE3(v164) << 24;
          }

          v170 = v164;
          v169 = 0x1000000;
          v168 = 0;
          v164 &= ~0x1000000uLL;
          _dispatch_thread_setspecific(4, v164);
          v198 = 0x2000000;
          v48 = _dispatch_thread_getspecific(25) == 0;
          v200 = v48;
          v199 = 2345;
          if (!v48)
          {
            _dispatch_abort(v199, v200, v42, v43, v44, v45, v46, v47);
          }

          v198 |= 0xF0000u;
          _dispatch_thread_setspecific(25, v198);
          v163 = &_dispatch_mgr_q;
          v176 = &_dispatch_mgr_q;
          _dispatch_thread_setspecific(20, &_dispatch_mgr_q);
          v186 = &_dispatch_mgr_q;
          v185 = 0;
          v184 = 0;
          v189 = _dispatch_thread_getspecific(3);
          v183 = v189 & 0xFFFFFFFC | 0x40020000000000;
          v182 = 0;
          v181 = (v186 + 7);
          v185 = v186[7];
          do
          {
            v184 = v185;
            v188 = v185;
            v109 = 1;
            if (!(v185 >> 53))
            {
              v187 = v185;
              v190 = v185;
              v109 = (v185 & 0xFFFFFFFC) != 0;
            }

            if (v109)
            {
              v180 = v185;
              qword_E4290 = "BUG IN LIBDISPATCH: Locking the manager should not fail";
              qword_E42C0 = v185;
              __break(1u);
              JUMPOUT(0x4F678);
            }

            v184 &= 0x7700000001uLL;
            v184 |= v183;
            v179 = v184;
            v49 = v185;
            v50 = v185;
            atomic_compare_exchange_strong_explicit(v181, &v50, v184, memory_order_acquire, memory_order_acquire);
            if (v50 != v49)
            {
              v185 = v50;
            }

            v178 = v50 == v49;
            v182 = v50 == v49;
          }

          while (v50 != v49);
          v177 = v182;
          v166 = 1;
        }

        else
        {
          v173 = v164;
          v172 = 2013265919;
          v171 = 0;
          v164 &= 0xFFFFFFFF88FFFFFFLL;
          if (*(v165 + 3) == -4)
          {
            v164 |= 0x1000000uLL;
          }

          _dispatch_thread_setspecific(4, v164);
          if (*(v165 + 3) == -4)
          {
            *(v165 + 52) = 1;
          }

          else
          {
            _dispatch_thread_getspecific(0);
            v105 = *(v165 + 3);
            _dispatch_log("%u\t%p\twlh[%p]: handling events", v35, v36, v37, v38, v39, v40, v41, 6601);
          }

          v166 = 0;
        }

        v120 = v166;
        if (v166)
        {
          v52 = *v127;
          v148 = 1;
          v147 = &_dispatch_mgr_q;
          v146 = v52;
          v123 = -4;
        }

        else
        {
          if (v129 == -4)
          {
            v108 = 0;
          }

          else
          {
            v108 = v129;
          }

          v51 = *v127;
          v151 = 1;
          v150 = v108;
          v149 = v51;
        }

        v152 = _dispatch_thread_getspecific(29);
        v107 = 1;
        if (v152)
        {
          v107 = v152 & 1;
        }

        v154 = v107 & 1;
        v153 = 475;
        if ((v107 & 1) == 0)
        {
          _dispatch_abort(v153, v154, v53, v54, v55, v56, v57, v58);
        }

        if ((v152 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          _dispatch_free_deferred_unotes((v152 & 0xFFFFFFFFFFFFFFFELL));
        }

        v158 = &v121;
        v160 = (&v121 & 1) == 0;
        v159 = 443;
        if (&v121)
        {
          _dispatch_abort(v159, v160, v53, v54, v55, v56, v57, v58);
        }

        _dispatch_thread_setspecific(29, v158);
        _dispatch_event_loop_merge(v128, *v127);
        if (v120)
        {
          v145 = 2;
          v144 = &_dispatch_mgr_q;
          v143 = 0;
          _dispatch_mgr_queue_drain();
          if (byte_E4436)
          {
            _dispatch_event_loop_drain_timers(&_dispatch_timers_heap, 9u, v59, v60, v61, v62, v63, v64);
          }

          v208 = &_dispatch_mgr_q;
          v206 = 0;
          v205 = 0;
          v204 = &qword_E0138;
          v207 = qword_E0138;
          do
          {
            v206 = (v207 - 0x40020000000000) & 0xFFFFFFF000000001;
            v203 = v206;
            v65 = v207;
            v66 = v207;
            atomic_compare_exchange_strong_explicit(v204, &v66, v206, memory_order_release, memory_order_relaxed);
            if (v66 != v65)
            {
              v207 = v66;
            }

            v202 = v66 == v65;
            v205 = v66 == v65;
          }

          while (v66 != v65);
          v201 = v205;
          v209 = v207;
          v192 = (v207 & 0x8000000000) != 0;
          _dispatch_thread_setspecific(25, 0);
          v191 = 0;
          v196 = 0;
          _dispatch_thread_setspecific(20, 0);
          if (v192)
          {
            v195 = 3;
            v194 = &_dispatch_mgr_q;
            v193 = 1;
            _dispatch_event_loop_poke(-8, 0, 0, v67, v68, v69, v70, v71);
          }
        }

        else if (*(&v121 + 1))
        {
          _dispatch_thread_getspecific(0);
          _dispatch_log("%u\t%p\twlh[%p]: draining deferred item %p", v72, v73, v74, v75, v76, v77, v78, 6779);
          if (v123 == -4)
          {
            v133 = v126 == 0;
            v132 = 6781;
            if (v126)
            {
              _dispatch_abort(v132, v133, v79, v80, v81, v82, v83, v84);
            }

            v131 = v124 == 0;
            v130 = 6782;
            if (v124)
            {
              _dispatch_abort(v130, v131, v79, v80, v81, v82, v83, v84);
            }

            v155 = 0;
            v157 = 1;
            v156 = 443;
            _dispatch_thread_setspecific(29, 0);
            v142 = 2;
            v141 = v121;
            v140 = 0;
            _dispatch_root_queue_drain_deferred_item(&v121);
          }

          else
          {
            v139 = 2;
            v138 = v129;
            v137 = 0;
            _dispatch_root_queue_drain_deferred_wlh(&v121);
          }
        }

        if ((v119 & 1) == 0 && wg)
        {
          os_workgroup_leave(wg, &token_out);
        }

        v162 = v124;
        if (v124)
        {
          v161 = v162 | 1;
          _dispatch_thread_setspecific(29, v162 | 1);
        }

        else
        {
          _dispatch_thread_setspecific(29, 0);
        }

        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\treturning %d deferred kevents", v85, v86, v87, v88, v89, v90, v91, 6807);
        _dispatch_thread_setspecific(5, 0);
        _dispatch_thread_setspecific(120, 0);
        *v127 = v126;
        v136 = 4;
        v135 = 0;
        v134 = 0;
        v230 = v111;
        v234 = (v111 + 4) != 0;
        v233 = 869;
        if (v111 == -4)
        {
          _dispatch_abort(v233, v234, v92, v93, v94, v95, v96, v97);
        }

        v106 = v230;
        v104 = v106 == _dispatch_thread_getspecific(27);
        v232 = v104;
        v231 = 870;
        if (!v104)
        {
          _dispatch_abort(v231, v232, v98, v99, v100, v101, v102, v103);
        }

        _dispatch_thread_setspecific(27, v230 | 1);
      }
    }

    else
    {
      _dispatch_kevent_worker_thread(a2, a3, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    _dispatch_bug(6846, v110, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t _dispatch_wlh_uses_bound_thread(uint64_t *a1)
{
  if (a1 == -4)
  {
    goto LABEL_7;
  }

  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  if (*(v2 + 16) == 131090 && _dispatch_workloop_uses_bound_thread(a1))
  {
    v3 = 1;
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t _dispatch_wlh_uses_bound_thread_setup(uint64_t result)
{
  v2 = result;
  if (*(result + 72))
  {
    result = _dispatch_thread_getspecific(124);
    if (!result)
    {
      pthread_setname_np(*(v2 + 72));
      result = _dispatch_thread_setspecific(124, 1);
    }
  }

  if (*(v2 + 200) && *(*(v2 + 200) + 32))
  {
    result = _dispatch_thread_getspecific(115);
    if (!result)
    {
      v1 = _dispatch_calloc_typed();
      _os_workgroup_join_update_wg(*(*(v2 + 200) + 32), v1);
      return _dispatch_thread_setspecific(115, v1);
    }
  }

  return result;
}

uint64_t _dispatch_wlh_get_workgroup(uint64_t *a1)
{
  v3 = 0;
  if (a1 != -4)
  {
    v2 = 0;
    if (*a1)
    {
      v2 = *a1;
    }

    if (*(v2 + 16) == 131090 && a1[25])
    {
      return *(a1[25] + 32);
    }
  }

  return v3;
}

void _dispatch_root_queue_drain_deferred_item(uint64_t *a1)
{
  v20 = a1;
  v19 = *a1;
  v18 = v19;
  v34 = v19;
  _dispatch_thread_setspecific(20, v19);
  v32 = 2;
  v31 = 0;
  v30 = 0;
  memset(v17, 0, sizeof(v17));
  _dispatch_last_resort_autorelease_pool_push(v17);
  v52 = *(v19 + 84);
  v7 = _dispatch_thread_getspecific(25) == 0;
  v54 = v7;
  v53 = 2333;
  if (!v7)
  {
    _dispatch_abort(v53, v54, v1, v2, v3, v4, v5, v6);
  }

  _dispatch_thread_setspecific(25, v52);
  _dispatch_continuation_pop_inline(v20[1], v17, 196608, v19);
  _dispatch_last_resort_autorelease_pool_pop(v17);
  _dispatch_thread_setspecific(25, 0);
  v33 = 0;
  _dispatch_thread_setspecific(20, 0);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: root queue clear", v8, v9, v10, v11, v12, v13, v14, 7379);
  v22 = 0;
  v21 = 14;
  v26 = 0;
  v25 = 0;
  v24 = 14;
  v38 = 0;
  v51 = 1;
  v50 = 2409;
  if (_dispatch_set_qos_class_enabled)
  {
    v49 = v38;
    v48 = 4261412863;
    v47 = 0;
    v38 &= 0xFFFFFFFF02FFFFFFLL;
    v40 = _dispatch_thread_getspecific(4);
    v37 = v40;
    v36 = 0x1000000;
    v35 = 2281701376;
    if ((v40 & 0x1000000) != 0)
    {
      if (v38)
      {
        v16 = v38;
      }

      else
      {
        v46 = v37;
        v45 = v36;
        v44 = 0;
        v16 = v37 & (~v36 | 0xFFFFFF);
      }

      v39 = v16;
    }

    else
    {
      v43 = v37;
      v42 = v35;
      v41 = 0;
      v37 &= ~v35 | 0xFFFFFF;
      if (v38 == v37)
      {
        v39 = 0;
      }

      else
      {
        v39 = v38;
      }
    }
  }

  else
  {
    v39 = 0;
  }

  v26 = v39;
  if (v39)
  {
    goto LABEL_26;
  }

  if (v25 == -1)
  {
    v27 = -1;
    return;
  }

  v15 = v25;
  if (v15 != _dispatch_thread_getspecific(28))
  {
LABEL_26:
    _dispatch_set_priority_and_voucher_slow(v26, v25, v24);
  }

  else
  {
    v23 = (v24 & 4) != 0;
    if ((v24 & 2) != 0)
    {
      if (v23)
      {
        if (v25)
        {
          object = v25;
          os_release(v25);
        }
      }

      v25 = -1;
    }

    else if (!v23 && v25)
    {
      v29 = v25;
      os_retain(v25);
    }

    v27 = v25;
  }
}

void _dispatch_root_queue_drain_deferred_wlh(uint64_t *a1)
{
  v46 = a1;
  v45 = *a1;
  v44 = a1[1];
  v43 = v45;
  v78 = v45;
  _dispatch_thread_setspecific(20, v45);
  memset(v42, 0, sizeof(v42));
  v41 = 196610;
  v40 = 0;
  v102 = *(v45 + 84);
  v7 = _dispatch_thread_getspecific(25) == 0;
  v104 = v7;
  v103 = 2345;
  if (!v7)
  {
    _dispatch_abort(v103, v104, v1, v2, v3, v4, v5, v6);
  }

  v102 |= 0xF0000u;
  _dispatch_thread_setspecific(25, v102);
  *(v46 + 53) |= 4u;
  while (1)
  {
    v72 = *(v46 + 53) & 1;
    v71 = 7261;
    if (!v72)
    {
      _dispatch_abort(v71, 0, v8, v9, v10, v11, v12, v13);
    }

    v76 = v45;
    v75 = v44;
    v74 = 0;
    v73 = 0;
    v101 = v45;
    v100 = v44;
    v115 = v44;
    v114 = &v40;
    v113 = 0;
    v112 = 0;
    v122 = _dispatch_thread_getspecific(3);
    v111 = v122 & 0xFFFFFFFC | 0x60000000000000;
    v110 = 0;
    v109 = (v115 + 7);
    v113 = v115[7];
    do
    {
      v112 = v113;
      v118 = v113;
      if ((v113 & 0xFF80000000000000) != 0)
      {
        v112 &= ~1uLL;
      }

      else
      {
        v120 = v113;
        v124 = v113;
        if ((v113 & 0xFFFFFFFC) != 0)
        {
          v123 = v113;
          if ((v113 & 2) == 0)
          {
            break;
          }

          v112 |= 0x800000000uLL;
        }

        else
        {
          v112 &= 0x7700000001uLL;
          v112 |= v111;
        }
      }

      v108 = v112;
      v20 = v113;
      v21 = v113;
      atomic_compare_exchange_strong_explicit(v109, &v21, v112, memory_order_acquire, memory_order_acquire);
      if (v21 != v20)
      {
        v113 = v21;
      }

      v107 = v21 == v20;
      v110 = v21 == v20;
    }

    while (v21 != v20);
    v106 = v110;
    v116 = v113;
    LOBYTE(v39) = 1;
    if ((v113 & 0x2000000000) != 0)
    {
      v126 = v113;
      LOBYTE(v39) = 1;
      if (v113)
      {
        v121 = v113;
        v39 = (BYTE4(v113) >> 6) & 1;
      }
    }

    if (v39)
    {
      v105 = v113;
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid wlh state";
      qword_E42C0 = v113;
      __break(1u);
      JUMPOUT(0x50AE8);
    }

    if (v114)
    {
      *v114 = v112;
    }

    v117 = v113;
    v38 = 0;
    if ((v113 & 0xFF80000000000000) == 0)
    {
      v119 = v113;
      v125 = v113;
      v38 = (v113 & 0xFFFFFFFC) == 0;
    }

    if (!v38)
    {
      break;
    }

    v37 = 0;
    if (*v44)
    {
      v37 = *v44;
    }

    (*(v37 + 48))(v44, v42, v41);
    if ((*(v46 + 53) & 1) == 0)
    {
      goto LABEL_44;
    }

    v40 = v44[7];
    v60 = v40;
    if (((BYTE4(v40) >> 5) & 1) == 0)
    {
      goto LABEL_44;
    }

    v99 = v40;
    if ((v40 & 1) == 0)
    {
      goto LABEL_43;
    }

    _dispatch_retain(v44);
    v59 = v44[3];
    v58 = v44;
    v57 = 0;
    v56 = 0;
    v97 = v59;
    v96 = v44;
    v41 |= 0x10u;
  }

  v61 = v40;
  if ((v40 & 0xFF80000000000000) != 0)
  {
    v64 = v40;
    v70 = (v40 & 0x4000000001) == 0;
    v69 = 7331;
    if ((v40 & 0x4000000001) != 0)
    {
      _dispatch_abort(v69, v70, v14, v15, v16, v17, v18, v19);
    }

    _dispatch_release_2_no_dispose(v44);
  }

  else
  {
    v63 = v40;
    v68 = (v40 & 0x4000000001) != 0;
    v67 = 7334;
    if ((v40 & 0x4000000001) == 0)
    {
      _dispatch_abort(v67, v68, v14, v15, v16, v17, v18, v19);
    }

    v62 = v40;
    v98 = v40;
    v66 = (v40 & 0xFFFFFFFC) != 0;
    v65 = 7335;
    if ((v40 & 0xFFFFFFFC) == 0)
    {
      _dispatch_abort(v65, v66, v14, v15, v16, v17, v18, v19);
    }

    _dispatch_release_no_dispose(v44);
  }

LABEL_43:
  _dispatch_event_loop_leave_deferred(v46, v40, v22, v23, v24, v25, v26, v27);
LABEL_44:
  _dispatch_thread_setspecific(25, 0);
  v77 = 0;
  _dispatch_thread_setspecific(20, 0);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: root queue clear", v28, v29, v30, v31, v32, v33, v34, 7348);
  v48 = 0;
  v47 = 14;
  v52 = 0;
  v51 = 0;
  v50 = 14;
  v82 = 0;
  v95 = 1;
  v94 = 2409;
  if (_dispatch_set_qos_class_enabled)
  {
    v93 = v82;
    v92 = 4261412863;
    v91 = 0;
    v82 &= 0xFFFFFFFF02FFFFFFLL;
    v84 = _dispatch_thread_getspecific(4);
    v81 = v84;
    v80 = 0x1000000;
    v79 = 2281701376;
    if ((v84 & 0x1000000) != 0)
    {
      if (v82)
      {
        v36 = v82;
      }

      else
      {
        v90 = v81;
        v89 = v80;
        v88 = 0;
        v36 = v81 & (~v80 | 0xFFFFFF);
      }

      v83 = v36;
    }

    else
    {
      v87 = v81;
      v86 = v79;
      v85 = 0;
      v81 &= ~v79 | 0xFFFFFF;
      if (v82 == v81)
      {
        v83 = 0;
      }

      else
      {
        v83 = v82;
      }
    }
  }

  else
  {
    v83 = 0;
  }

  v52 = v83;
  if (v83)
  {
    goto LABEL_67;
  }

  if (v51 == -1)
  {
    v53 = -1;
    return;
  }

  v35 = v51;
  if (v35 != _dispatch_thread_getspecific(28))
  {
LABEL_67:
    v53 = _dispatch_set_priority_and_voucher_slow(v52, v51, v50);
  }

  else
  {
    v49 = (v50 & 4) != 0;
    if ((v50 & 2) != 0)
    {
      if (v49 && v51)
      {
        object = v51;
        os_release(v51);
      }

      v51 = -1;
    }

    else if (!v49 && v51)
    {
      v55 = v51;
      os_retain(v51);
    }

    v53 = v51;
  }
}

void _dispatch_queue_cleanup2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = &_dispatch_main_q;
  v18 = 0;
  v17 = 0;
  v16 = qword_E0038;
  v19 = qword_E0038[0];
  do
  {
    v18 = (v19 & 0xFFFFFF7FFFFFFFFFLL) + 0x40020000000000;
    v15 = v18;
    v8 = v19;
    v9 = v19;
    atomic_compare_exchange_strong_explicit(v16, &v9, v18, memory_order_acquire, memory_order_acquire);
    if (v9 != v8)
    {
      v19 = v9;
    }

    v14 = v9 == v8;
    v17 = v9 == v8;
  }

  while (v9 != v8);
  v13 = v17;
  v12[2] = v20;
  v32 = v20;
  v31 = 0x40000;
  v29 = -262145;
  v28 = -262145;
  v30 = -262145;
  v24 = -262145;
  v23 = -262145;
  v25 = -262145;
  v22 = atomic_fetch_and_explicit((v20 + 80), 0xFFFBFFFF, memory_order_relaxed);
  v26 = v22;
  v21 = v22;
  v27 = v22 & 0xFFFBFFFF;
  v12[1] = v20;
  _dispatch_lane_barrier_complete(v20, 0, 0, a4, a5, a6, a7, a8);
  if (_dispatch_program_is_probably_callback_driven)
  {
    memset(&v36, 0, sizeof(v36));
    pthread_attr_init(&v36);
    pthread_attr_setdetachstate(&v36, 2);
    v12[0] = 0;
    v10 = 0;
    if (_dispatch_sig_thread)
    {
      v10 = _dispatch_sig_thread;
    }

    v11 = pthread_create(v12, &v36, v10, 0);
    if (v11)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to create signal thread";
      qword_E42C0 = v11;
      __break(1u);
      JUMPOUT(0x51730);
    }

    pthread_attr_destroy(&v36);
    sleep_NOCANCEL();
  }

  v35 = &_dispatch_main_q_handle_pred;
  v34 = v20;
  v33 = _dispatch_runloop_queue_handle_init;
  if (_dispatch_main_q_handle_pred != -1)
  {
    dispatch_once_f(v35, v34, v33);
  }

  _dispatch_runloop_queue_handle_dispose(v20);
}

void _dispatch_sig_thread()
{
  v0 = pthread_self();
  pthread_get_stackaddr_np(v0);
  __memset_chk();
  _dispatch_sigsuspend();
}

void _dispatch_sigsuspend()
{
  pthread_sigmask(3, _dispatch_sigsuspend_mask, 0);
  while (1)
  {
    sigsuspend_NOCANCEL();
  }
}

void _dispatch_apply_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = 0;
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

void _dispatch_apply_redirect_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = 1;
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

void dispatch_apply_f(size_t iterations, dispatch_queue_t queue, void *context, void (__cdecl *work)(void *, size_t))
{
  v4 = 0;
  if (work)
  {
    v4 = work;
  }

  _dispatch_apply_with_attr_f(iterations, 0, queue, context, v4, 1);
}

double _dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a1;
  v96 = a2;
  v95 = a3;
  v94 = a4;
  v93 = a5;
  v92 = a6;
  if (a1)
  {
    if (v96 && !_dispatch_attr_is_initialized(v96))
    {
      v91 = v96;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
      qword_E42C0 = v96;
      __break(1u);
      JUMPOUT(0x5213CLL);
    }

    v99 = "apply";
    for (i = _dispatch_thread_getspecific(23); i; i = *i)
    {
      if (i[1] == v99)
      {
        v100 = i;
        goto LABEL_11;
      }
    }

    v100 = 0;
LABEL_11:
    v90 = v100;
    if (v100)
    {
      v77 = v90[2];
    }

    else
    {
      v77 = 0;
    }

    v89 = v77;
    v88 = _dispatch_thread_getspecific(20);
    queue = 0;
    if (v95)
    {
      queue = v95;
    }

    else
    {
      v109 = v88;
      v108 = 0;
      if (v88)
      {
        while (*(v109 + 24))
        {
          v108 = *(v109 + 24);
          v132 = v109;
          v76 = 1;
          if (*(v109 + 24) != &_dispatch_custom_workloop_root_queue)
          {
            v76 = *(v132 + 24) == &_dispatch_custom_workloop_overcommit_root_queue;
          }

          if (v76)
          {
            v107 = v109;
            v153 = v109;
            v154 = v109;
            v106 = v109;
            v110 = v109;
            goto LABEL_38;
          }

          v109 = v108;
        }
      }

      if (!v109)
      {
        goto LABEL_27;
      }

      v105 = v109;
      v247 = v109;
      v75 = 0;
      if (v109 >= &_dispatch_root_queues)
      {
        v75 = v247 < &unk_E0A80;
      }

      if (v75)
      {
LABEL_27:
        v129 = _dispatch_thread_getspecific(4);
        v102 = v129;
        v127 = (v129 & 0x3FFF00) >> 8;
        v6 = (v129 & 0x3FFF00) >> 8;
        v7 = __clz(__rbit32(v6));
        if (v6)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = 0;
        }

        v101 = v8;
        if (v8)
        {
          v74 = v101;
        }

        else
        {
          v74 = 4;
        }

        v251 = v74;
        v250 = 0;
        v73 = 1;
        if (v74)
        {
          v73 = v251 > 6;
        }

        if (v73)
        {
          v249 = v251;
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
          qword_E42C0 = v251;
          __break(1u);
          JUMPOUT(0x5245CLL);
        }

        v248 = 0;
        v110 = &(&_dispatch_root_queues)[16 * (3 * v251 - 3)];
      }

      else
      {
        v104 = v109;
        v155 = v109;
        v156 = v109;
        v103 = v109;
        v110 = v109;
      }

LABEL_38:
      queue = v110;
    }

    v111 = *(queue + 21) & 0xF00;
    if (v111 >> 8)
    {
      v72 = v111 >> 8;
    }

    else
    {
      v112 = *(queue + 21) & 0xF000;
      v72 = v112 >> 12;
    }

    v86 = v72;
    if (*(queue + 3))
    {
      v130 = _dispatch_thread_getspecific(4);
      v128 = (v130 & 0x3FFF00) >> 8;
      v9 = (v130 & 0x3FFF00) >> 8;
      v10 = __clz(__rbit32(v9));
      if (v9)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = 0;
      }

      v86 = v11;
    }

    v122 = v96;
    v121 = v89;
    v120 = v86;
    v119 = 1;
    if (v96 && !_dispatch_attr_is_initialized(v122))
    {
      v118 = v122;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
      qword_E42C0 = v122;
      __break(1u);
      JUMPOUT(0x5261CLL);
    }

    v117 = 0;
    if (v122)
    {
      if (v121)
      {
        v117 = 1;
      }

      else
      {
        v115 = 2;
        v261 = v120;
        v260 = 2;
        v259 = 0;
        v258 = 0;
        if (v120)
        {
          v266 = v261;
          switch(v261)
          {
            case 1u:
              v267 = 5;
              break;
            case 2u:
              v267 = 9;
              break;
            case 3u:
              v267 = 17;
              break;
            case 4u:
              v267 = 21;
              break;
            case 5u:
              v267 = 25;
              break;
            case 6u:
              v267 = 33;
              break;
            default:
              v267 = 0;
              break;
          }

          v258 = pthread_qos_max_parallelism();
        }

        if (v258 < 1)
        {
          v273 = 0;
          v272 = 0xFFFFFC036;
          v259 = MEMORY[0xFFFFFC036];
        }

        else
        {
          v259 = v258;
        }

        v271 = 2;
        v270 = 0xFFFFFC034;
        v257 = MEMORY[0xFFFFFC034];
        if (MEMORY[0xFFFFFC034] < v259)
        {
          v259 = v257;
        }

        v114 = v259;
        v265 = v122;
        v264 = v120;
        v263 = -1;
        if (*(v122 + 8))
        {
          v280 = v264;
          v279 = 0;
          v281 = v264;
          switch(v264)
          {
            case 1u:
              v282 = 5;
              break;
            case 2u:
              v282 = 9;
              break;
            case 3u:
              v282 = 17;
              break;
            case 4u:
              v282 = 21;
              break;
            case 5u:
              v282 = 25;
              break;
            case 6u:
              v282 = 33;
              break;
            default:
              v282 = 0;
              break;
          }

          v278 = pthread_qos_max_parallelism();
          if (v278 >= 1)
          {
            v279 = v278;
          }

          v262 = v279;
          if (v279)
          {
            v263 = (v262 * *(v265 + 8));
          }

          else
          {
            v263 = 0;
          }
        }

        v113 = v263;
        if (v114 >= v263)
        {
          v70 = v113;
        }

        else
        {
          v70 = v114;
        }

        v117 = v70;
      }
    }

    else
    {
      v116 = 2;
      v256 = v120;
      v255 = 2;
      v254 = 0;
      v253 = 0;
      if (v120)
      {
        v268 = v256;
        switch(v256)
        {
          case 1u:
            v269 = 5;
            break;
          case 2u:
            v269 = 9;
            break;
          case 3u:
            v269 = 17;
            break;
          case 4u:
            v269 = 21;
            break;
          case 5u:
            v269 = 25;
            break;
          case 6u:
            v269 = 33;
            break;
          default:
            v269 = 0;
            break;
        }

        v253 = pthread_qos_max_parallelism();
      }

      if (v253 < 1)
      {
        v277 = 0;
        v276 = 0xFFFFFC036;
        v254 = MEMORY[0xFFFFFC036];
      }

      else
      {
        v254 = v253;
      }

      v275 = 2;
      v274 = 0xFFFFFC034;
      v252 = MEMORY[0xFFFFFC034];
      if (MEMORY[0xFFFFFC034] < v254)
      {
        v254 = v252;
      }

      v117 = v254;
      if (v121)
      {
        if (v121 >= v117)
        {
          v71 = 1;
        }

        else
        {
          v71 = v117 / v121;
        }

        v117 = v71;
      }
    }

    v85 = v117;
    if (!v117)
    {
      v84 = v96;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: attribute's properties are invalid or meaningless on this system";
      qword_E42C0 = v96;
      __break(1u);
      JUMPOUT(0x53228);
    }

    v83 = 0;
    if (v96)
    {
      v83 = 0xFFFFLL;
    }

    else if (v89)
    {
      if (v89 > 0xFFFE || v97 > 0xFFFE)
      {
        v69 = 0xFFFFLL;
      }

      else
      {
        v69 = v89 * v97;
      }

      v83 = v69;
    }

    else
    {
      v83 = v97;
    }

    if (v97 < v85)
    {
      v85 = v97;
    }

    v82 = 0u;
    v81 = 0u;
    memset(v80, 0, sizeof(v80));
    v68 = 0;
    if (v93)
    {
      v68 = v93;
    }

    v67 = 0;
    if (v68)
    {
      v67 = v68;
    }

    *&v81 = v67;
    *(&v81 + 1) = v94;
    *&v82 = v92;
    *(&v82 + 1) = queue;
    v131 = 0;
    v163 = _dispatch_thread_getspecific(22);
    if (v163)
    {
      _dispatch_thread_setspecific(22, *(v163 + 16));
    }

    v161 = v163;
    if (v163)
    {
      v162 = v161;
    }

    else
    {
      v162 = _dispatch_continuation_alloc_from_heap();
    }

    v131 = v162;
    context = v162;
    v162[1] = 0;
    *(context + 2) = v97;
    *(context + 3) = v83;
    *(context + 11) = v85;
    *(context + 13) = 0;
    _dispatch_apply_da_copy_attr(context, v96);
    *(context + 4) = 0;
    *context = v80;
    *(context + 10) = 0;
    v133 = queue;
    v66 = 1;
    if (*(queue + 3) != &_dispatch_custom_workloop_root_queue)
    {
      v66 = *(v133 + 3) == &_dispatch_custom_workloop_overcommit_root_queue;
    }

    if (v66)
    {
      v134 = *(queue + 7);
      v165 = v134;
      v65 = v134;
      if (((v65 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
      {
        dispatch_async_and_wait_f(queue, context, _dispatch_apply_serial);
      }

      else
      {
        _dispatch_apply_serial(context);
      }

      return result;
    }

    v64 = 1;
    if (*(queue + 40) != 1)
    {
      v64 = v85 < 2;
    }

    if (v64)
    {
LABEL_154:
      dispatch_sync_f(queue, context, _dispatch_apply_serial);
      return result;
    }

    if (*(queue + 3))
    {
      if (queue != v88)
      {
        dispatch_sync_f(queue, context, _dispatch_apply_redirect);
        return result;
      }

      goto LABEL_154;
    }

    v78 = 0uLL;
    v124 = queue;
    v123 = &v78;
    v126 = &v78;
    _dispatch_thread_getspecific_packed_pair(20, 21, &v78, v12, v13, v14, v15, v16);
    _dispatch_thread_setspecific_pair(20, v124, 21, v123, v18, v19, v20, v21);
    v157 = queue;
    v158 = queue;
    v149 = queue;
    v148 = context;
    v147 = _dispatch_apply_invoke;
    j = 0;
    v145 = 0;
    v144 = 0;
    v152 = _dispatch_thread_getspecific(4);
    v143 = v152;
    v142 = v148[11] - 1;
    v151 = v142;
    v150 = 336;
    if (!v142)
    {
      _dispatch_abort(v150, v151, v22, v23, v24, v25, v26, v27);
    }

    for (j = 0; j < v142; ++j)
    {
      v164 = _dispatch_thread_getspecific(22);
      if (v164)
      {
        _dispatch_thread_setspecific(22, *(v164 + 16));
      }

      v159 = v164;
      if (v164)
      {
        v160 = v159;
      }

      else
      {
        v160 = _dispatch_continuation_alloc_from_heap();
      }

      v141 = v160;
      v140 = 4;
      v139 = v149;
      v172 = v149;
      v171 = v160;
      v170 = v148;
      v169 = v147;
      v168 = 0x40000000;
      v167 = 4;
      v166 = 0;
      *v160 = 260;
      v171[4] = v169;
      v171[5] = v170;
      if ((v168 & 0x40000000) == 0)
      {
        v223 = 0;
        v222 = 1;
        v225 = _dispatch_thread_getspecific(4);
        v226 = v225;
        v223 = v225 & 0xFFFFFF;
        if ((v222 & 2) != 0 || (v230 = 5, v229 = 4096, v223 <= 0x10FF))
        {
          v224 = v223;
        }

        else
        {
          v228 = 5;
          v227 = 4096;
          v224 = 4351;
        }

        v166 = v224;
      }

      v210 = v171;
      v209 = v168;
      v208 = 0;
      v212 = v168 >= 0;
      v211 = 583;
      if (v168 < 0)
      {
        _dispatch_abort(v211, v212, v28, v29, v30, v31, v32, v33);
      }

      if ((v209 & 0x40) == 0)
      {
        v231 = _dispatch_thread_getspecific(28);
        if (v231)
        {
          object = v231;
          os_retain(v231);
        }

        v208 = v231;
      }

      v210[3] = v208;
      _dispatch_thread_getspecific(0);
      v61 = v210[3];
      _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v34, v35, v36, v37, v38, v39, v40, 589);
      v41 = v210[3];
      v235 = 771817476;
      v234 = v41;
      v233 = v210;
      if (v41 != -1)
      {
        v63 = v234 ? *(v234 + 32) : 0;
        v232 = v63;
        v241 = v235;
        v240 = v63;
        v239 = v233;
        v238 = 0;
        v237 = 0;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }
      }

      v221 = v172;
      v220 = v171;
      v219 = v166;
      v218 = v168;
      v217 = 0;
      v216 = v172;
      if (v166)
      {
        v215 = (v218 & 0x20) != 0;
        v214 = (*(v216 + 21) & 0x40000000) != 0;
        v213 = (*(v216 + 21) & 0xFFF) != 0;
        if ((v218 & 0x20) != 0)
        {
          v219 |= 0x10000000uLL;
          v242 = v219 >> 8;
          v42 = v219 >> 8;
          v43 = __clz(__rbit32(v42));
          if (v42)
          {
            v44 = v43 + 1;
          }

          else
          {
            v44 = 0;
          }

          v217 = v44;
        }

        else if (v214 || !v213)
        {
          v243 = v219 >> 8;
          v45 = v219 >> 8;
          v46 = __clz(__rbit32(v45));
          if (v45)
          {
            v47 = v46 + 1;
          }

          else
          {
            v47 = 0;
          }

          v217 = v47;
        }

        else
        {
          v219 = 0;
        }
      }

      v220[1] = v219;
      v141[1] = v143 | 0x10000000;
      v141[2] = v145;
      v145 = v141;
      if (!v144)
      {
        v144 = v141;
      }
    }

    v148[12] = v148[11];
    v48 = v148[11];
    *(v148 + 4) = _dispatch_calloc_typed();
    v138 = v145;
    v137 = v144;
    v181 = v145;
    v180 = v144;
    v179 = v149;
    v178 = 0;
    v177 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      v176 = v181;
      do
      {
        v175 = 0;
        v174 = 0;
        v62 = 0;
        if (v176 != v180)
        {
          v176 = v176[2];
          v62 = v176 != 0;
        }
      }

      while (v62);
    }

    v173 = v179;
    v246 = v179;
    v245 = v181;
    v244 = v180;
    v136 = v145;
    v135 = v144;
    v207 = v145;
    v206 = v144;
    v205 = v149;
    v204 = v142;
    v203 = v145;
    v202 = v144;
    v201 = 0;
    v200 = v144;
    v199 = 0;
    v198 = 0;
    *(v144 + 16) = 0;
    v197 = v199;
    _dispatch_thread_setspecific(122, v205 + 48);
    v193 = v200;
    v192 = v200;
    v194 = v200;
    v191 = atomic_exchange_explicit((v205 + 48), v200, memory_order_release);
    v195 = v191;
    v190 = v191;
    v196 = v191;
    v201 = v191;
    v189 = v191;
    if (v191)
    {
      v188 = v203;
      v187 = v203;
      *(v189 + 16) = v203;
      v186 = v188;
    }

    else
    {
      v185 = v203;
      v184 = v203;
      *(v205 + 13) = v203;
      v183 = v185;
    }

    _dispatch_thread_setspecific(122, 0);
    v182 = v201 == 0;
    if (!v201)
    {
      _dispatch_root_queue_poke_and_wakeup(v205, v204, 0, v51, v52, v53, v54, v55);
    }

    _dispatch_apply_invoke_and_wait(v148, v49, v50, v51, v52, v53, v54, v55);
    v125 = &v78;
    *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v78, v56, v57, v58, v59, v60).n128_u64[0];
  }

  return result;
}

double dispatch_apply_with_attr_f(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a4)
  {
    v5 = a4;
  }

  return _dispatch_apply_with_attr_f(a1, a2, 0, a3, v5, 2);
}

void dispatch_apply(size_t iterations, dispatch_queue_t queue, void *block)
{
  v6 = _dispatch_Block_copy(block);
  v4 = _Block_get_invoke_fn(v6);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  work = 0;
  if (v5)
  {
    work = v5;
  }

  dispatch_apply_f(iterations, queue, v6, work);
  _Block_release(v6);
}

void dispatch_apply_with_attr(unint64_t a1, uint64_t a2, const void *a3)
{
  v6 = _dispatch_Block_copy(a3);
  v4 = _Block_get_invoke_fn(v6);
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

  dispatch_apply_with_attr_f(a1, a2, v6, v3);
  _Block_release(v6);
}

uint64_t dispatch_apply_attr_init(uint64_t a1)
{
  result = __memset_chk();
  *a1 = -1592086528;
  *(a1 + 16) = ~a1;
  return result;
}

BOOL dispatch_apply_attr_set_parallelism(_BOOL8 result, uint64_t a2, unint64_t a3)
{
  if (a2 == -1)
  {
    return dispatch_apply_attr_set_per_cluster_parallelism(result, a3);
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unknown entity";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x54720);
    }

    return dispatch_apply_attr_set_per_cluster_parallelism(result, a3);
  }

  if (a3 != 1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_entity value for CPU entity";
    qword_E42C0 = a3;
    __break(1u);
    JUMPOUT(0x546D0);
  }

  return result;
}

BOOL dispatch_apply_attr_set_per_cluster_parallelism(_BOOL8 result, unint64_t a2)
{
  v3 = result;
  if (!a2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: 0 is an invalid threads_per_cluster value";
    qword_E42C0 = 0;
    __break(1u);
    JUMPOUT(0x5478CLL);
  }

  if (a2 >= 2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid threads_per_cluster value, only acceptable value is 1";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0x547D8);
  }

  if (result)
  {
    result = _dispatch_attr_is_initialized(result);
    if (!result)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x54830);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

unint64_t dispatch_apply_attr_query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "apply")
    {
      v21 = i;
      goto LABEL_7;
    }
  }

  v21 = 0;
LABEL_7:
  if (v21)
  {
    v15 = v21[2];
  }

  else
  {
    v15 = 0;
  }

  v22 = _dispatch_thread_getspecific(20);
  if (v22)
  {
    while (*(v22 + 24))
    {
      v14 = 1;
      if (*(v22 + 24) != &_dispatch_custom_workloop_root_queue)
      {
        v14 = *(v22 + 24) == &_dispatch_custom_workloop_overcommit_root_queue;
      }

      if (v14)
      {
        v23 = v22;
        goto LABEL_31;
      }

      v22 = *(v22 + 24);
    }
  }

  if (!v22)
  {
    goto LABEL_22;
  }

  v13 = 0;
  if (v22 >= &_dispatch_root_queues)
  {
    v13 = v22 < &unk_E0A80;
  }

  if (v13)
  {
LABEL_22:
    v27 = (_dispatch_thread_getspecific(4) & 0x3FFF00uLL) >> 8;
    v3 = __clz(__rbit32(v27));
    if (v27)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v12 = v4;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 6)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupted priority";
      qword_E42C0 = v12;
      __break(1u);
      JUMPOUT(0x54BB0);
    }

    v23 = &(&_dispatch_root_queues)[16 * (3 * v12 - 3)];
  }

  else
  {
    v23 = v22;
  }

LABEL_31:
  if ((*(v23 + 21) & 0xF00u) >> 8)
  {
    v11 = (*(v23 + 21) & 0xF00u) >> 8;
  }

  else
  {
    v11 = (*(v23 + 21) & 0xF000u) >> 12;
  }

  switch(a2)
  {
    case 0:
      return dispatch_apply_attr_query(a1, 1, a3) != 0;
    case 1:
      if (a3)
      {
        if (a1 && !_dispatch_attr_is_initialized(a1))
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x55AFCLL);
        }

        if (a1)
        {
          if (v15)
          {
            return 1;
          }

          else
          {
            v34 = 0;
            if (v11)
            {
              v34 = pthread_qos_max_parallelism();
            }

            if (v34 < 1)
            {
              v35 = MEMORY[0xFFFFFC036];
            }

            else
            {
              v35 = v34;
            }

            if (MEMORY[0xFFFFFC034] < v35)
            {
              v35 = MEMORY[0xFFFFFC034];
            }

            v41 = -1;
            if (*(a1 + 8))
            {
              v46 = 0;
              v45 = pthread_qos_max_parallelism();
              if (v45 >= 1)
              {
                v46 = v45;
              }

              if (v46)
              {
                v41 = (v46 * *(a1 + 8));
              }

              else
              {
                v41 = 0;
              }
            }

            if (v35 >= v41)
            {
              return v41;
            }

            else
            {
              return v35;
            }
          }
        }

        else
        {
          v32 = 0;
          if (v11)
          {
            v32 = pthread_qos_max_parallelism();
          }

          if (v32 < 1)
          {
            v33 = MEMORY[0xFFFFFC036];
          }

          else
          {
            v33 = v32;
          }

          if (MEMORY[0xFFFFFC034] < v33)
          {
            v33 = MEMORY[0xFFFFFC034];
          }

          v25 = v33;
          if (v15)
          {
            if (v15 >= v33)
            {
              return 1;
            }

            else
            {
              return v33 / v15;
            }
          }
        }

        return v25;
      }

      else
      {
        if (a1 && !_dispatch_attr_is_initialized(a1))
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
          qword_E42C0 = a1;
          __break(1u);
          JUMPOUT(0x5687CLL);
        }

        if (a1)
        {
          v38 = pthread_qos_max_parallelism();
          if (v38 < 1)
          {
            v39 = MEMORY[0xFFFFFC036];
          }

          else
          {
            v39 = v38;
          }

          v42 = -1;
          if (*(a1 + 8))
          {
            v44 = 0;
            v43 = pthread_qos_max_parallelism();
            if (v43 >= 1)
            {
              v44 = v43;
            }

            if (v44)
            {
              v42 = (v44 * *(a1 + 8));
            }

            else
            {
              v42 = 0;
            }
          }

          if (v39 >= v42)
          {
            return v42;
          }

          else
          {
            return v39;
          }
        }

        else
        {
          v36 = pthread_qos_max_parallelism();
          if (v36 < 1)
          {
            return MEMORY[0xFFFFFC036];
          }

          else
          {
            return v36;
          }
        }
      }

    case 2:
      if (a1 && !_dispatch_attr_is_initialized(a1))
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_apply_attr not initialized using dispatch_apply_attr_init";
        qword_E42C0 = a1;
        __break(1u);
        JUMPOUT(0x54D70);
      }

      if (a1)
      {
        if (v15)
        {
          return 1;
        }

        else
        {
          v30 = 0;
          if (v11)
          {
            v30 = pthread_qos_max_parallelism();
          }

          if (v30 < 1)
          {
            v31 = MEMORY[0xFFFFFC036];
          }

          else
          {
            v31 = v30;
          }

          if (MEMORY[0xFFFFFC034] < v31)
          {
            v31 = MEMORY[0xFFFFFC034];
          }

          v40 = -1;
          if (*(a1 + 8))
          {
            v48 = 0;
            v47 = pthread_qos_max_parallelism();
            if (v47 >= 1)
            {
              v48 = v47;
            }

            if (v48)
            {
              v40 = (v48 * *(a1 + 8));
            }

            else
            {
              v40 = 0;
            }
          }

          if (v31 >= v40)
          {
            return v40;
          }

          else
          {
            return v31;
          }
        }
      }

      else
      {
        v28 = 0;
        if (v11)
        {
          v28 = pthread_qos_max_parallelism();
        }

        if (v28 < 1)
        {
          v29 = MEMORY[0xFFFFFC036];
        }

        else
        {
          v29 = v28;
        }

        if (MEMORY[0xFFFFFC034] < v29)
        {
          v29 = MEMORY[0xFFFFFC034];
        }

        v26 = v29;
        if (v15)
        {
          if (v15 >= v29)
          {
            return 1;
          }

          else
          {
            return v29 / v15;
          }
        }
      }

      return v26;
  }

  return v19;
}

uint64_t _dispatch_apply_set_attr_behavior(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      v1 = *(result + 8);
      result = __bsdthread_ctl();
      if (result)
      {
        result = __error();
        if (*result != 45)
        {
          __break(1u);
          JUMPOUT(0x57628);
        }
      }
    }
  }

  return result;
}

void *_dispatch_apply_invoke3(void *result)
{
  v49 = result;
  v48 = result;
  v47 = *result;
  v46 = *(v47 + 16);
  v44 = 0;
  v41 = 1;
  v40 = 1;
  v42 = 1;
  add_explicit = atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  v43 = add_explicit;
  v38 = add_explicit;
  v45 = add_explicit;
  if (add_explicit < v46)
  {
    v37 = *(*v47 + 32);
    v36 = *(*v47 + 40);
    v35 = *(*v47 + 48);
    v34 = 0;
    v33[0] = 0;
    v33[1] = "apply";
    v34 = *(v47 + 24);
    v50 = v33;
    v33[0] = _dispatch_thread_getspecific(23);
    _dispatch_thread_setspecific(23, v50);
    v32 = 0uLL;
    v31 = 0;
    if (v48[1])
    {
      v52 = *(*v47 + 56);
      v30 = v52;
      v51 = &v32;
      v83 = &v32;
      _dispatch_thread_getspecific_packed_pair(20, 21, &v32, v1, v2, v3, v4, v5);
      _dispatch_thread_setspecific_pair(20, v52, 21, v51, v6, v7, v8, v9);
      v55 = *(v30 + 84);
      v54 = _dispatch_thread_getspecific(25);
      v53 = v54;
      if (v54)
      {
        if ((v55 & 0xFFF) != 0)
        {
          v53 &= 0x880F0000;
          if ((v54 & 0xFFF) > (v55 & 0xFFFu))
          {
            v27 = v54 & 0xFFF;
          }

          else
          {
            v27 = v55 & 0xFFF;
          }

          v53 |= v27;
          v59 = v55 & 0xF000;
          v57 = v53 & 0xF00;
          if (v59 >> 12 > v57 >> 8)
          {
            v55 &= 0x4400F000u;
          }

          else
          {
            v55 &= 0x40000000u;
          }

          v53 |= v55;
        }

        else
        {
          if ((v53 & 0xFFF) != 0)
          {
            v53 |= 0x40000000u;
          }

          v58 = v55 & 0xF000;
          v56 = v53 & 0xF00;
          if (v58 >> 12 > v56 >> 8)
          {
            v53 &= 0xFFFF0FFF;
            v53 |= v55 & 0x400F000;
          }
        }
      }

      else
      {
        v53 = v55 & 0xFFF0FFFF;
      }

      _dispatch_thread_setspecific(25, v53);
      v31 = v54;
    }

    v29 = *(v47 + 40);
    do
    {
      v28 = 0;
      if ((v29 & 0x1000000) != 0)
      {
        v28 = _dispatch_autorelease_pool_push();
      }

      if (v35)
      {
        v26 = 0;
        if (v37)
        {
          v26 = v37;
        }

        v67 = v36;
        v66 = v45;
        v65 = v26;
        v25 = 0;
        if (v26)
        {
          v25 = v26;
        }

        v64 = v25;
        v87 = v67;
        v86 = v25;
        v63 = 0;
        v62 = 0;
        v61 = 0;
        v60 = 0;
        _dispatch_client_callout2(v67, v66, v65);
        v91 = v67;
        v90 = v64;
      }

      else
      {
        if ((v35 & 2) == 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
          qword_E42C0 = v35;
          __break(1u);
          JUMPOUT(0x57E58);
        }

        v23 = *(v48 + 4);
        v24 = 0;
        if (v37)
        {
          v24 = v37;
        }

        v76 = v36;
        v75 = v45;
        v74 = v23;
        v73 = v24;
        v22 = 0;
        if (v24)
        {
          v22 = v24;
        }

        v72 = v22;
        v85 = v76;
        v84 = v22;
        v71 = 0;
        v70 = 0;
        v69 = 0;
        v68 = 0;
        _dispatch_client_callout3_a(v76, v75, v74, v73);
        v89 = v76;
        v88 = v72;
      }

      ++v44;
      v45 = atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
      if (v28)
      {
        _dispatch_autorelease_pool_pop(v28);
      }
    }

    while (v45 < v46);
    if (v48[1])
    {
      v78 = v31;
      v77 = _dispatch_thread_getspecific(25);
      v78 &= 0xFFF0FFFF;
      v78 |= v77 & 0xF0000;
      _dispatch_thread_setspecific(25, v78);
      v79 = &v32;
      _dispatch_thread_setspecific_packed_pair(20, 21, &v32, v10, v11, v12, v13, v14);
    }

    v80 = v33;
    v21 = _dispatch_thread_getspecific(23) == v33;
    v82 = v21;
    v81 = 449;
    if (!v21)
    {
      _dispatch_abort(v81, v82, v15, v16, v17, v18, v19, v20);
    }

    return _dispatch_thread_setspecific(23, *v80);
  }

  return result;
}

uint64_t _dispatch_apply_clear_attr_behavior(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      v1 = *(result + 8);
      result = __bsdthread_ctl();
      if (result)
      {
        __break(1u);
        JUMPOUT(0x58058);
      }
    }
  }

  return result;
}

BOOL _dispatch_attr_is_initialized(uint64_t a1)
{
  v2 = 0;
  if (*a1 == -1592086528)
  {
    return ~*(a1 + 16) == a1;
  }

  return v2;
}

uint64_t _dispatch_apply_da_copy_attr(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (a2)
  {
    v2 = _dispatch_calloc_typed();
    result = dispatch_apply_attr_init(v2);
    *(v2 + 8) = *(a2 + 8);
    *(v2 + 4) = *(a2 + 4);
    *(v4 + 56) = v2;
  }

  else
  {
    *(result + 56) = 0;
  }

  return result;
}

uint64_t _dispatch_apply_serial(uint64_t a1)
{
  v11 = *a1;
  v10 = *(a1 + 16);
  v9 = 0;
  v15 = *(*a1 + 56);
  v14 = 0;
  while (1)
  {
    v7 = 0;
    if (v15)
    {
      v7 = v14 == 0;
    }

    if (!v7)
    {
      break;
    }

    v14 = (*(v15 + 80) & 0x30000) << 8;
    v15 = *(v15 + 24);
  }

  do
  {
    v8 = 0;
    if ((v14 & 0x1000000) != 0)
    {
      v8 = _dispatch_autorelease_pool_push();
    }

    if (v11[6])
    {
      v6 = 0;
      if (v11[4])
      {
        v6 = v11[4];
      }

      _dispatch_client_callout2(v11[5], v9, v6);
    }

    else
    {
      if ((v11[6] & 2) == 0)
      {
        v1 = v11[6];
        qword_E4290 = "BUG IN LIBDISPATCH: apply continuation has invalid flags";
        qword_E42C0 = v1;
        __break(1u);
        JUMPOUT(0x58710);
      }

      v5 = 0;
      if (v11[4])
      {
        v5 = v11[4];
      }

      _dispatch_client_callout3_a(v11[5], v9, 0, v5);
    }

    if (v8)
    {
      _dispatch_autorelease_pool_pop(v8);
    }

    ++v9;
  }

  while (v9 < v10);
  if (*(a1 + 32))
  {
    free(*(a1 + 32));
  }

  if (*(a1 + 56))
  {
    v2 = *(a1 + 56);
    dispatch_apply_attr_destroy();
    free(*(a1 + 56));
  }

  result = _dispatch_thread_getspecific(22);
  if (result)
  {
    v4 = *(result + 8) + 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4 <= _dispatch_continuation_cache_limit)
  {
    *(a1 + 16) = result;
    *(a1 + 8) = v4;
    result = _dispatch_thread_setspecific(22, a1);
    v13 = 0;
  }

  else
  {
    v13 = a1;
  }

  if (v13)
  {
    return _dispatch_continuation_free_to_cache_limit(v13);
  }

  return result;
}

void _dispatch_apply_redirect(uint64_t a1)
{
  v30 = *(a1 + 44) - 1;
  v29 = *(*a1 + 56);
  v28 = v29;
  do
  {
    if (*(v28 + 80) == 1)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(v28 + 56);
      do
      {
        if ((v40 & 0x20000000000000) != 0)
        {
          v44 = 0;
        }

        else
        {
          v44 = 4096 - ((v40 & 0x3FFE0000000000uLL) >> 41);
        }

        v39 = v44;
        if (!v44)
        {
          v41 = 0;
          goto LABEL_16;
        }

        if (v44 > v30)
        {
          v39 = v30;
        }

        v1 = v40;
        v2 = v40;
        atomic_compare_exchange_strong_explicit((v28 + 56), &v2, v40 + (v39 << 41), memory_order_relaxed, memory_order_relaxed);
        if (v2 != v1)
        {
          v40 = v2;
        }
      }

      while (v2 != v1);
      v41 = v39;
    }

LABEL_16:
    if (v30 > v41)
    {
      v27 = v30 - v41;
      for (i = v29; i != v28; i = *(i + 24))
      {
        atomic_fetch_add_explicit((i + 56), 0xFFFFFE0000000000 * (v30 - v41), memory_order_relaxed);
      }

      v30 = v41;
      if (!v41)
      {
        _dispatch_apply_serial(a1);
        return;
      }

      *(a1 + 44) -= v27;
    }

    if (!*(a1 + 40))
    {
      *(a1 + 40) = (*(v28 + 80) & 0x30000) << 8;
    }

    v28 = *(v28 + 24);
  }

  while (*(v28 + 24));
  v35 = 0;
  v34 = 0;
  v33 = _dispatch_thread_getspecific(4);
  v32 = *(a1 + 44) - 1;
  if (*(a1 + 44) == 1)
  {
    _dispatch_abort(336, v32, v3, v4, v5, v6, v7, v8);
  }

  for (j = 0; j < v32; ++j)
  {
    v38 = _dispatch_thread_getspecific(22);
    if (v38)
    {
      _dispatch_thread_setspecific(22, *(v38 + 16));
      v37 = v38;
    }

    else
    {
      v37 = _dispatch_continuation_alloc_from_heap();
    }

    *v37 = 260;
    v37[4] = _dispatch_apply_redirect_invoke;
    v37[5] = a1;
    v47 = _dispatch_thread_getspecific(28);
    if (v47)
    {
      os_retain(v47);
    }

    v37[3] = v47;
    _dispatch_thread_getspecific(0);
    v24 = v37[3];
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", v9, v10, v11, v12, v13, v14, v15, 589);
    v48 = v37[3];
    if (v48 != -1)
    {
      if (v48)
      {
        v26 = *(v48 + 32);
      }

      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    v37[1] = 0;
    v37[1] = v33 | 0x10000000;
    v37[2] = v35;
    v35 = v37;
    if (!v34)
    {
      v34 = v37;
    }
  }

  *(a1 + 48) = *(a1 + 44);
  v16 = *(a1 + 44);
  *(a1 + 32) = _dispatch_calloc_typed();
  if (MEMORY[0xFFFFFC100])
  {
    v45 = v35;
    do
    {
      v25 = 0;
      if (v45 != v34)
      {
        v45 = v45[2];
        v25 = v45 != 0;
      }
    }

    while (v25);
  }

  *(v34 + 16) = 0;
  _dispatch_thread_setspecific(122, v28 + 48);
  v46 = atomic_exchange_explicit((v28 + 48), v34, memory_order_release);
  if (v46)
  {
    *(v46 + 16) = v35;
  }

  else
  {
    *(v28 + 104) = v35;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v46)
  {
    _dispatch_root_queue_poke_and_wakeup(v28, v32, 0, v19, v20, v21, v22, v23);
  }

  _dispatch_apply_invoke_and_wait(a1, v17, v18, v19, v20, v21, v22, v23);
  for (k = v29; k != v28; k = *(k + 24))
  {
    atomic_fetch_add_explicit((k + 56), 0xFFFFFE0000000000 * v30, memory_order_relaxed);
  }
}