double sub_181C8E664@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_182AD3048();
  mtu = nw_interface_ioctl_get_mtu(a1, (v4 + 32));

  v6 = sub_182AD3048();
  expensive = nw_interface_ioctl_get_expensive(a1, (v6 + 32));

  v8 = sub_182AD3048();
  constrained = nw_interface_ioctl_get_constrained(a1, (v8 + 32));

  if (constrained)
  {
    v10 = expensive | 0x40;
  }

  else
  {
    v10 = expensive;
  }

  v11 = sub_182AD3048();
  ultra_constrained = nw_interface_ioctl_get_ultra_constrained(a1, (v11 + 32));

  if (ultra_constrained)
  {
    v13 = v10 | 0x4000;
  }

  else
  {
    v13 = v10;
  }

  v14 = sub_182AD3048();

  multicast = nw_interface_ioctl_get_multicast(a1, (v14 + 32));

  v16 = v13 | 0x200;
  if (!multicast)
  {
    v16 = v13;
  }

  *a2 = mtu;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&result = 1;
  *(a2 + 32) = xmmword_182AE69F0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v16;
  *(a2 + 92) = 0;
  *(a2 + 84) = 0;
  *(a2 + 97) = 0;
  *(a2 + 105) = 1;
  *(a2 + 119) = 0;
  *(a2 + 106) = 0;
  *(a2 + 114) = 0;
  *(a2 + 127) = 1;
  return result;
}

uint64_t nw_interface_ioctl_get_mtu(int a1, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  if (!a2)
  {
    v3 = a1;
    v4 = __nwlog_obj();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v9 = 136446210;
    v10 = "_strict_strlcpy";
    v6 = 12;
    v5 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
    a1 = v3;
    a2 = 0;
  }

  LOBYTE(v7) = *a2;
  if (v7)
  {
    BYTE1(v7) = a2[1];
    if (BYTE1(v7))
    {
      BYTE2(v7) = a2[2];
      if (BYTE2(v7))
      {
        BYTE3(v7) = a2[3];
        if (BYTE3(v7))
        {
          BYTE4(v7) = a2[4];
          if (BYTE4(v7))
          {
            BYTE5(v7) = a2[5];
            if (BYTE5(v7))
            {
              BYTE6(v7) = a2[6];
              if (BYTE6(v7))
              {
                BYTE7(v7) = a2[7];
                if (BYTE7(v7))
                {
                  BYTE8(v7) = a2[8];
                  if (BYTE8(v7))
                  {
                    BYTE9(v7) = a2[9];
                    if (BYTE9(v7))
                    {
                      BYTE10(v7) = a2[10];
                      if (BYTE10(v7))
                      {
                        BYTE11(v7) = a2[11];
                        if (BYTE11(v7))
                        {
                          BYTE12(v7) = a2[12];
                          if (BYTE12(v7))
                          {
                            BYTE13(v7) = a2[13];
                            if (BYTE13(v7))
                            {
                              BYTE14(v7) = a2[14];
                              if (BYTE14(v7))
                              {
                                HIBYTE(v7) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (ioctl(a1, 0xC0206933uLL, &v7, v6) == -1)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t nw_interface_ioctl_get_expensive(int a1, _BYTE *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  if (!a2)
  {
    v4 = a1;
    v5 = __nwlog_obj();
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    v10 = 136446210;
    v11 = "_strict_strlcpy";
    v7 = 12;
    v6 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v6);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v6);
    a1 = v4;
    a2 = 0;
  }

  LOBYTE(v8) = *a2;
  if (v8)
  {
    BYTE1(v8) = a2[1];
    if (BYTE1(v8))
    {
      BYTE2(v8) = a2[2];
      if (BYTE2(v8))
      {
        BYTE3(v8) = a2[3];
        if (BYTE3(v8))
        {
          BYTE4(v8) = a2[4];
          if (BYTE4(v8))
          {
            BYTE5(v8) = a2[5];
            if (BYTE5(v8))
            {
              BYTE6(v8) = a2[6];
              if (BYTE6(v8))
              {
                BYTE7(v8) = a2[7];
                if (BYTE7(v8))
                {
                  BYTE8(v8) = a2[8];
                  if (BYTE8(v8))
                  {
                    BYTE9(v8) = a2[9];
                    if (BYTE9(v8))
                    {
                      BYTE10(v8) = a2[10];
                      if (BYTE10(v8))
                      {
                        BYTE11(v8) = a2[11];
                        if (BYTE11(v8))
                        {
                          BYTE12(v8) = a2[12];
                          if (BYTE12(v8))
                          {
                            BYTE13(v8) = a2[13];
                            if (BYTE13(v8))
                            {
                              BYTE14(v8) = a2[14];
                              if (BYTE14(v8))
                              {
                                HIBYTE(v8) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return ioctl(a1, 0xC02069A0uLL, &v8, v7) != -1 && v9 != 0;
}

uint64_t nw_interface_ioctl_get_constrained(int a1, _BYTE *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  if (!a2)
  {
    v4 = a1;
    v5 = __nwlog_obj();
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    v10 = 136446210;
    v11 = "_strict_strlcpy";
    v7 = 12;
    v6 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v6);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v6);
    a1 = v4;
    a2 = 0;
  }

  LOBYTE(v8) = *a2;
  if (v8)
  {
    BYTE1(v8) = a2[1];
    if (BYTE1(v8))
    {
      BYTE2(v8) = a2[2];
      if (BYTE2(v8))
      {
        BYTE3(v8) = a2[3];
        if (BYTE3(v8))
        {
          BYTE4(v8) = a2[4];
          if (BYTE4(v8))
          {
            BYTE5(v8) = a2[5];
            if (BYTE5(v8))
            {
              BYTE6(v8) = a2[6];
              if (BYTE6(v8))
              {
                BYTE7(v8) = a2[7];
                if (BYTE7(v8))
                {
                  BYTE8(v8) = a2[8];
                  if (BYTE8(v8))
                  {
                    BYTE9(v8) = a2[9];
                    if (BYTE9(v8))
                    {
                      BYTE10(v8) = a2[10];
                      if (BYTE10(v8))
                      {
                        BYTE11(v8) = a2[11];
                        if (BYTE11(v8))
                        {
                          BYTE12(v8) = a2[12];
                          if (BYTE12(v8))
                          {
                            BYTE13(v8) = a2[13];
                            if (BYTE13(v8))
                            {
                              BYTE14(v8) = a2[14];
                              if (BYTE14(v8))
                              {
                                HIBYTE(v8) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return ioctl(a1, 0xC02069CCuLL, &v8, v7) != -1 && v9 != 0;
}

uint64_t nw_interface_ioctl_get_ultra_constrained(int a1, _BYTE *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  if (!a2)
  {
    v4 = a1;
    v5 = __nwlog_obj();
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    v10 = 136446210;
    v11 = "_strict_strlcpy";
    v7 = 12;
    v6 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v6);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v6);
    a1 = v4;
    a2 = 0;
  }

  LOBYTE(v8) = *a2;
  if (v8)
  {
    BYTE1(v8) = a2[1];
    if (BYTE1(v8))
    {
      BYTE2(v8) = a2[2];
      if (BYTE2(v8))
      {
        BYTE3(v8) = a2[3];
        if (BYTE3(v8))
        {
          BYTE4(v8) = a2[4];
          if (BYTE4(v8))
          {
            BYTE5(v8) = a2[5];
            if (BYTE5(v8))
            {
              BYTE6(v8) = a2[6];
              if (BYTE6(v8))
              {
                BYTE7(v8) = a2[7];
                if (BYTE7(v8))
                {
                  BYTE8(v8) = a2[8];
                  if (BYTE8(v8))
                  {
                    BYTE9(v8) = a2[9];
                    if (BYTE9(v8))
                    {
                      BYTE10(v8) = a2[10];
                      if (BYTE10(v8))
                      {
                        BYTE11(v8) = a2[11];
                        if (BYTE11(v8))
                        {
                          BYTE12(v8) = a2[12];
                          if (BYTE12(v8))
                          {
                            BYTE13(v8) = a2[13];
                            if (BYTE13(v8))
                            {
                              BYTE14(v8) = a2[14];
                              if (BYTE14(v8))
                              {
                                HIBYTE(v8) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return ioctl(a1, 0xC02069DAuLL, &v8, v7) != -1 && v9 != 0;
}

uint64_t nw_interface_ioctl_get_functional_type(int a1, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  if (!a2)
  {
    v3 = a1;
    v4 = __nwlog_obj();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v9 = 136446210;
    v10 = "_strict_strlcpy";
    v6 = 12;
    v5 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
    a1 = v3;
    a2 = 0;
  }

  LOBYTE(v7) = *a2;
  if (v7)
  {
    BYTE1(v7) = a2[1];
    if (BYTE1(v7))
    {
      BYTE2(v7) = a2[2];
      if (BYTE2(v7))
      {
        BYTE3(v7) = a2[3];
        if (BYTE3(v7))
        {
          BYTE4(v7) = a2[4];
          if (BYTE4(v7))
          {
            BYTE5(v7) = a2[5];
            if (BYTE5(v7))
            {
              BYTE6(v7) = a2[6];
              if (BYTE6(v7))
              {
                BYTE7(v7) = a2[7];
                if (BYTE7(v7))
                {
                  BYTE8(v7) = a2[8];
                  if (BYTE8(v7))
                  {
                    BYTE9(v7) = a2[9];
                    if (BYTE9(v7))
                    {
                      BYTE10(v7) = a2[10];
                      if (BYTE10(v7))
                      {
                        BYTE11(v7) = a2[11];
                        if (BYTE11(v7))
                        {
                          BYTE12(v7) = a2[12];
                          if (BYTE12(v7))
                          {
                            BYTE13(v7) = a2[13];
                            if (BYTE13(v7))
                            {
                              BYTE14(v7) = a2[14];
                              if (BYTE14(v7))
                              {
                                HIBYTE(v7) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (ioctl(a1, 0xC02069ADuLL, &v7, v6) == -1)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t nw_interface_ioctl_get_delegate_index(int a1, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  if (!a2)
  {
    v3 = a1;
    v4 = __nwlog_obj();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v9 = 136446210;
    v10 = "_strict_strlcpy";
    v6 = 12;
    v5 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
    a1 = v3;
    a2 = 0;
  }

  LOBYTE(v7) = *a2;
  if (v7)
  {
    BYTE1(v7) = a2[1];
    if (BYTE1(v7))
    {
      BYTE2(v7) = a2[2];
      if (BYTE2(v7))
      {
        BYTE3(v7) = a2[3];
        if (BYTE3(v7))
        {
          BYTE4(v7) = a2[4];
          if (BYTE4(v7))
          {
            BYTE5(v7) = a2[5];
            if (BYTE5(v7))
            {
              BYTE6(v7) = a2[6];
              if (BYTE6(v7))
              {
                BYTE7(v7) = a2[7];
                if (BYTE7(v7))
                {
                  BYTE8(v7) = a2[8];
                  if (BYTE8(v7))
                  {
                    BYTE9(v7) = a2[9];
                    if (BYTE9(v7))
                    {
                      BYTE10(v7) = a2[10];
                      if (BYTE10(v7))
                      {
                        BYTE11(v7) = a2[11];
                        if (BYTE11(v7))
                        {
                          BYTE12(v7) = a2[12];
                          if (BYTE12(v7))
                          {
                            BYTE13(v7) = a2[13];
                            if (BYTE13(v7))
                            {
                              BYTE14(v7) = a2[14];
                              if (BYTE14(v7))
                              {
                                HIBYTE(v7) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (ioctl(a1, 0xC020699DuLL, &v7, v6) == -1)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_181C8F340()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v8[0] = v1;
  *(v8 + 10) = *(v0 + 170);
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_181C8F3A4(v7);
  return swift_deallocClassInstance();
}

void __nw_context_reset_timer_block_with_time_block_invoke(uint64_t a1)
{
  v18 = *(a1 + 32);
  nw_context_assert_queue(v18);
  v1 = v18;
  v2 = *(v18 + 4);
  v2[4] = -1;
  v3 = *v2;
  if (*v2)
  {
    if (v2[1])
    {
      do
      {
        v8 = dispatch_time(0x8000000000000000, 0);
        v9 = *(v18 + 4);
        v10 = v9[1];
        v11 = *(v10 + 16);
        if (v11 > v8)
        {
          nw_queue_set_timer_values(*v9, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
          v1 = v18;
          *(*(v18 + 4) + 32) = *(v10 + 16);
          goto LABEL_18;
        }

        v12 = _Block_copy(*(v10 + 32));
        v13 = *(v10 + 32);
        *(v10 + 32) = 0;

        v14 = *(v10 + 40) | 1;
        *(v10 + 40) = v14;
        if (v12)
        {
          v12[2](v12);
          v14 = *(v10 + 40);
        }

        *(v10 + 40) = v14 & 0xFE;
        if (!*(v10 + 32))
        {
          v15 = v18;
          if ((*(v10 + 40) & 1) == 0)
          {
            v16 = *v10;
            v17 = *(v10 + 8);
            if (*v10)
            {
              *(v16 + 8) = v17;
              v4 = *(v18 + 4);
            }

            else
            {
              v4 = *(v18 + 4);
              *(v4 + 16) = v17;
            }

            *v17 = v16;
            *v10 = 0;
            *(v10 + 8) = 0;
            node = nw_hash_table_get_node(*(v4 + 24), *(v10 + 24), 0);
            nw_hash_table_remove_node(*(*(v18 + 4) + 24), node);
            v6 = *(v10 + 32);
            *(v10 + 32) = 0;

            free(v10);
          }
        }

        v7 = *(v18 + 4);
      }

      while (v7[1]);
      v3 = *v7;
    }

    nw_queue_set_timer_values(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    nw_context_cleanup_timer(v18);
    v1 = v18;
  }

LABEL_18:
}

uint64_t nw_protocol_instance_registrar_search_for_instance_to_join(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v129 = *MEMORY[0x1E69E9840];
  v113 = a3;
  v112 = a4;
  v13 = a5;
  v114 = a6;
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_registrar_get_accept_function_for_identifier";
    v59 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v119 = 0;
    if (__nwlog_fault(v59, type, &v119))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v60 = __nwlog_obj();
        v61 = type[0];
        if (os_log_type_enabled(v60, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_registrar_get_accept_function_for_identifier";
          v62 = "%{public}s called with null identifier";
LABEL_77:
          _os_log_impl(&dword_181A37000, v60, v61, v62, buf, 0xCu);
        }
      }

      else if (v119 == 1)
      {
        v64 = v13;
        backtrace_string = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v61 = type[0];
        v66 = os_log_type_enabled(v60, type[0]);
        if (backtrace_string)
        {
          if (v66)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_registrar_get_accept_function_for_identifier";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          v13 = v64;
        }

        else
        {
          v13 = v64;
          if (v66)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_registrar_get_accept_function_for_identifier";
            v62 = "%{public}s called with null identifier, no backtrace";
            goto LABEL_77;
          }
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v61 = type[0];
        if (os_log_type_enabled(v60, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_registrar_get_accept_function_for_identifier";
          v62 = "%{public}s called with null identifier, backtrace limit exceeded";
          goto LABEL_77;
        }
      }
    }

    if (v59)
    {
      free(v59);
    }

LABEL_25:
    v25 = v13;
    if (gLogDatapath == 1)
    {
      v63 = __nwlog_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_instance_registrar_search_for_instance_to_join";
        *&buf[12] = 2080;
        *&buf[14] = a1;
        *&buf[22] = 2048;
        v121 = a1;
        _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s protocol %s (%p) does not have accept function, cannot search for protocol to join", buf, 0x20u);
      }
    }

    goto LABEL_26;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v14 = &g_registration_list;
  do
  {
    v14 = *v14;
    if (!v14)
    {
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      goto LABEL_25;
    }
  }

  while (*a1 != v14[4] || a1[1] != v14[5] || a1[2] != v14[6] || a1[3] != v14[7] || a1[4] != v14[8]);
  v19 = v14[13];
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v112;
  if (!v20)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_is_registered";
    v68 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v119 = 0;
    if (__nwlog_fault(v68, type, &v119))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = type[0];
        if (os_log_type_enabled(v69, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_is_registered";
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null endpoint", buf, 0xCu);
        }
      }

      else if (v119 == 1)
      {
        v72 = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v73 = type[0];
        v74 = os_log_type_enabled(v69, type[0]);
        if (v72)
        {
          if (v74)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_is_registered";
            *&buf[12] = 2082;
            *&buf[14] = v72;
            _os_log_impl(&dword_181A37000, v69, v73, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v72);
          goto LABEL_89;
        }

        if (v74)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_is_registered";
          _os_log_impl(&dword_181A37000, v69, v73, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v69 = __nwlog_obj();
        v76 = type[0];
        if (os_log_type_enabled(v69, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_is_registered";
          _os_log_impl(&dword_181A37000, v69, v76, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_89:
    if (v68)
    {
      free(v68);
    }

    goto LABEL_91;
  }

  v21 = v20;
  is_registered = _nw_endpoint_is_registered(v20);

  if (is_registered)
  {
    v23 = v21;
    v24 = _nw_endpoint_copy_registrar_for_identifier(v23, a1, 0);

    if (v24)
    {
      v109 = v24;
      v25 = v13;
      instance_to_join = nw_protocol_instance_registrar_find_instance_to_join(v24, a1, a2, a7, 0, 0, v113, v13, v114, v19);
      if (instance_to_join)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v25 = v13;
      if (gLogDatapath)
      {
        v75 = __nwlog_obj();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_search_for_instance_to_join";
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2080;
          v121 = a1;
          LOWORD(v122) = 2048;
          *(&v122 + 2) = a1;
          _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %@ does not have registrar for protocol %s (%p), continuing", buf, 0x2Au);
        }
      }

      v109 = 0;
    }

    v27 = v113;
    v28 = v23;
    v29 = v25;
    v30 = v114;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;
    if (gLogDatapath == 1)
    {
      v71 = __nwlog_obj();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
        *&buf[12] = 2080;
        *&buf[14] = "non-";
        *&buf[22] = 2112;
        v121 = v32;
        LOWORD(v122) = 2112;
        *(&v122 + 2) = v33;
        _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s checking %swildcard edges from %@ for destination %@", buf, 0x2Au);
      }
    }

    *type = 0;
    v116 = type;
    v117 = 0x2020000000;
    v118 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL70nw_protocol_instance_registrar_search_edges_for_instance_to_join_innerPK22nw_protocol_identifiermPU25objcproto14OS_nw_endpoint8NSObjectS4_S4_PU27objcproto16OS_nw_parametersS2_bb_block_invoke;
    v121 = &unk_1E6A2C100;
    v127 = 0;
    v124 = type;
    v125 = a1;
    v126 = a2;
    v128 = a7;
    v111 = v31;
    *&v122 = v111;
    v35 = v33;
    *(&v122 + 1) = v35;
    v36 = v34;
    v123 = v36;
    v110 = v32;
    nw_endpoint_enumerate_edges(v32, a1, buf);
    instance_to_join = *(v116 + 3);

    _Block_object_dispose(type, 8);
    if (instance_to_join)
    {
      goto LABEL_42;
    }

    v37 = v32;
    v38 = _nw_endpoint_get_type(v37);

    if (v38 != 2)
    {
      goto LABEL_40;
    }

    v39 = v37;
    hostname = _nw_endpoint_get_hostname(v39);

    if (!hostname)
    {
      goto LABEL_40;
    }

    v41 = strchr(hostname, 46);
    if (!v41)
    {
      goto LABEL_40;
    }

    v42 = v41;
    v43 = v39;
    port = _nw_endpoint_get_port(v43);

    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v42 + 1, port);
    v104 = host_with_numeric_port;
    nw_endpoint_set_is_wildcard_host_from_san(host_with_numeric_port);
    if (v36)
    {
      v46 = _nw_parameters_copy_context(v36);
      goto LABEL_36;
    }

    v86 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_context";
    v87 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v119 = 0;
    if (__nwlog_fault(v87, type, &v119))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_context";
          _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v119 == 1)
      {
        v95 = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v106 = type[0];
        v96 = os_log_type_enabled(v88, type[0]);
        if (v95)
        {
          if (v96)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_copy_context";
            *&buf[12] = 2082;
            *&buf[14] = v95;
            _os_log_impl(&dword_181A37000, v88, v106, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v95);
          goto LABEL_141;
        }

        if (v96)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_context";
          _os_log_impl(&dword_181A37000, v88, v106, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v88 = __nwlog_obj();
        v99 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_context";
          _os_log_impl(&dword_181A37000, v88, v99, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_141:
    if (v87)
    {
      free(v87);
    }

    v46 = 0;
    host_with_numeric_port = v104;
LABEL_36:
    v47 = nw_context_copy_registered_endpoint(v46, host_with_numeric_port);

    v48 = v111;
    v49 = v47;
    v50 = v35;
    v105 = v36;
    v107 = v49;
    v102 = v48;
    v103 = v50;
    if (v49)
    {
      if (gLogDatapath == 1)
      {
        v94 = __nwlog_obj();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
          *&buf[12] = 2080;
          *&buf[14] = "non-";
          *&buf[22] = 2112;
          v121 = v107;
          LOWORD(v122) = 2112;
          *(&v122 + 2) = v50;
          _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s checking %swildcard edges from %@ for destination %@", buf, 0x2Au);
        }
      }

      *type = 0;
      v116 = type;
      v117 = 0x2020000000;
      v118 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL70nw_protocol_instance_registrar_search_edges_for_instance_to_join_innerPK22nw_protocol_identifiermPU25objcproto14OS_nw_endpoint8NSObjectS4_S4_PU27objcproto16OS_nw_parametersS2_bb_block_invoke;
      v121 = &unk_1E6A2C100;
      v127 = 0;
      v124 = type;
      v125 = a1;
      v126 = a2;
      v128 = a7;
      *&v122 = v48;
      *(&v122 + 1) = v50;
      v123 = v105;
      nw_endpoint_enumerate_edges(v107, a1, buf);
      instance_to_join = *(v116 + 3);

      _Block_object_dispose(type, 8);
      goto LABEL_39;
    }

    v90 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
    v91 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v119 = 0;
    if (__nwlog_fault(v91, type, &v119))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v92 = __nwlog_obj();
        v93 = type[0];
        if (os_log_type_enabled(v92, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
          _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null registered_endpoint", buf, 0xCu);
        }
      }

      else if (v119 == 1)
      {
        v97 = __nw_create_backtrace_string();
        v92 = __nwlog_obj();
        v101 = type[0];
        v98 = os_log_type_enabled(v92, type[0]);
        if (v97)
        {
          if (v98)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
            *&buf[12] = 2082;
            *&buf[14] = v97;
            _os_log_impl(&dword_181A37000, v92, v101, "%{public}s called with null registered_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v97);
          goto LABEL_147;
        }

        if (v98)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
          _os_log_impl(&dword_181A37000, v92, v101, "%{public}s called with null registered_endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v92 = __nwlog_obj();
        v100 = type[0];
        if (os_log_type_enabled(v92, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
          _os_log_impl(&dword_181A37000, v92, v100, "%{public}s called with null registered_endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_147:
    if (v91)
    {
      free(v91);
    }

    instance_to_join = 0;
LABEL_39:

    if (!instance_to_join)
    {
LABEL_40:
      v51 = v111;
      v52 = v37;
      v53 = v35;
      v54 = v36;
      if (gLogDatapath == 1)
      {
        v108 = v52;
        v77 = __nwlog_obj();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2112;
          v121 = v108;
          LOWORD(v122) = 2112;
          *(&v122 + 2) = v53;
          _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s checking %swildcard edges from %@ for destination %@", buf, 0x2Au);
        }

        v52 = v108;
      }

      *type = 0;
      v116 = type;
      v117 = 0x2020000000;
      v118 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL70nw_protocol_instance_registrar_search_edges_for_instance_to_join_innerPK22nw_protocol_identifiermPU25objcproto14OS_nw_endpoint8NSObjectS4_S4_PU27objcproto16OS_nw_parametersS2_bb_block_invoke;
      v121 = &unk_1E6A2C100;
      v127 = 1;
      v124 = type;
      v125 = a1;
      v126 = a2;
      v128 = a7;
      v55 = v51;
      *&v122 = v55;
      v56 = v53;
      *(&v122 + 1) = v56;
      v57 = v54;
      v123 = v57;
      nw_endpoint_enumerate_edges(v52, a1, buf);
      instance_to_join = *(v116 + 3);

      _Block_object_dispose(type, 8);
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_91:
  v25 = v13;
  v78 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_registrar_search_for_instance_to_join";
  v79 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v119 = 0;
  if (__nwlog_fault(v79, type, &v119))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v80 = __nwlog_obj();
      v81 = type[0];
      if (os_log_type_enabled(v80, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_search_for_instance_to_join";
        _os_log_impl(&dword_181A37000, v80, v81, "%{public}s searching for a protocol to join requires a registered endpoint", buf, 0xCu);
      }
    }

    else if (v119 == 1)
    {
      v82 = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v83 = type[0];
      v84 = os_log_type_enabled(v80, type[0]);
      if (v82)
      {
        if (v84)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_search_for_instance_to_join";
          *&buf[12] = 2082;
          *&buf[14] = v82;
          _os_log_impl(&dword_181A37000, v80, v83, "%{public}s searching for a protocol to join requires a registered endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
        goto LABEL_107;
      }

      if (v84)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_search_for_instance_to_join";
        _os_log_impl(&dword_181A37000, v80, v83, "%{public}s searching for a protocol to join requires a registered endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v80 = __nwlog_obj();
      v85 = type[0];
      if (os_log_type_enabled(v80, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_search_for_instance_to_join";
        _os_log_impl(&dword_181A37000, v80, v85, "%{public}s searching for a protocol to join requires a registered endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_107:
  if (v79)
  {
    free(v79);
  }

LABEL_26:
  instance_to_join = 0;
LABEL_44:

  return instance_to_join;
}

void sub_181C908A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, void *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, id a40, id a41)
{
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

uint64_t _nw_endpoint_copy_registrar_for_identifier_0(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  sub_181AAC800(a2, &v11);
  *v8 = v11;
  v9 = v12;
  v10 = v13;
  v6 = sub_181C90AC4(v8, a3);
  swift_unknownObjectRetain();

  sub_181F48350(v9, *(&v9 + 1), v10);
  return v6;
}

uint64_t sub_181C90AC4(char *a1, char a2)
{
  v3 = v2;
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = OBJC_IVAR____TtC7Network8Endpoint_registrar;
  if (!*&v2[OBJC_IVAR____TtC7Network8Endpoint_registrar])
  {
    v6 = *(a1 + 1);
    v5 = *(a1 + 2);
    v7 = a1[24];
    if (a2)
    {
      v8 = *a1;
      v9 = a1[1];
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      LOBYTE(v43) = v8;
      BYTE1(v43) = v9;
      v44 = v6;
      v45 = v5;
      v46 = v7;
      sub_181B0D734(v41);
      v10 = nw_protocol_instance_registrar_create(v41);
      if (qword_1ED40FE10 != -1)
      {
        swift_once();
      }

      v11 = sub_182AD2698();
      __swift_project_value_buffer(v11, qword_1ED411BA0);
      v12 = v2;
      swift_unknownObjectRetain();
      v13 = sub_182AD2678();
      v14 = sub_182AD38A8();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v47[0] = v39;
        *v15 = 136315650;
        v16 = [v10 description];
        v17 = sub_182AD2F88();
        v19 = v18;

        v20 = sub_181C64FFC(v17, v19, v47);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2080;
        sensitive_redacted = nw_context_get_sensitive_redacted(*&v12[OBJC_IVAR____TtC7Network8Endpoint_context]);
        if ((*&v12[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
        {
          v22 = Endpoint.description.getter();
        }

        else
        {
          v22 = sub_181B52D70();
        }

        v29 = sub_181C64FFC(v22, v23, v47);

        *(v15 + 14) = v29;
        *(v15 + 22) = 2080;
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_182AD3E18();
        v30 = sub_181C64FFC(v43, v44, v47);

        *(v15 + 24) = v30;
        _os_log_impl(&dword_181A37000, v13, v14, "created registrar %s for endpoint %s (%s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v39, -1, -1);
        MEMORY[0x1865DF520](v15, -1, -1);
      }

      *&v3[v4] = v10;
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED40FE10 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1ED411BA0);
      v25 = v2;
      sub_181F49A24(v6, v5, v7);
      v26 = sub_182AD2678();
      v27 = sub_182AD38A8();
      sub_181F48350(v6, v5, v7);

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v28 = 136315650;
        if (v7)
        {
          sub_181F49A24(v6, v5, 1);
        }

        else
        {
          v6 = sub_181FB86BC(v6);
          v5 = v31;
        }

        v32 = sub_181C64FFC(v6, v5, &v43);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = nw_context_get_sensitive_redacted(*&v25[OBJC_IVAR____TtC7Network8Endpoint_context]);
        if ((*&v25[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v33 & 1) == 0)
        {
          v34 = Endpoint.description.getter();
        }

        else
        {
          v34 = sub_181B52D70();
        }

        v36 = sub_181C64FFC(v34, v35, &v43);

        *(v28 + 14) = v36;
        *(v28 + 22) = 2080;
        *&v41[0] = 0;
        *(&v41[0] + 1) = 0xE000000000000000;
        v47[0] = v25;
        sub_182AD3E18();
        v37 = sub_181C64FFC(0, 0xE000000000000000, &v43);

        *(v28 + 24) = v37;
        _os_log_impl(&dword_181A37000, v26, v27, "no %s registrar for endpoint %s (%s, asked not to create a new one, returning nil", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v40, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);
      }
    }
  }

  return *&v3[v4];
}

void nw_endpoint_enumerate_edges(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v6)
  {
    _nw_endpoint_enumerate_edges(v5, a2, v6);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_enumerate_edges";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_enumerate_edges";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null enumerator", buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_endpoint_enumerate_edges";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_endpoint_enumerate_edges";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_enumerate_edges";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

uint64_t _nw_endpoint_enumerate_edges(void *a1, uint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = a1;
  _Block_copy(v5);
  sub_181AAC800(a2, &v11);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  LOBYTE(a2) = sub_181C9136C(&v8, v6, v5);
  _Block_release(v5);
  _Block_release(v5);

  sub_181F669F0(v8, v9, *(&v9 + 1), v10);
  return a2 & 1;
}

uint64_t sub_181C9136C(uint64_t *a1, char *a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = *&a2[OBJC_IVAR____TtC7Network8Endpoint_lock];
  os_unfair_lock_lock(v9 + 4);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_edges;
  swift_beginAccess();
  v11 = *&a2[v10];

  os_unfair_lock_unlock(v9 + 4);
  if (v11 >> 62)
  {
    if (sub_182AD3EB8() < 1)
    {
      goto LABEL_46;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_46;
  }

  v12 = *&a2[v10];
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_46:

    return 0;
  }

  if (!sub_182AD3EB8())
  {
    goto LABEL_46;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x1865DA790](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v13 = *(v12 + 32);
    swift_unknownObjectRetain();
  }

  v75 = v6;
  v76 = v7;
  v77 = v5;
  identifier = nw_endpoint_edge_get_identifier(v13);
  if (qword_1ED40FE10 != -1)
  {
    swift_once();
  }

  v15 = sub_182AD2698();
  __swift_project_value_buffer(v15, qword_1ED411BA0);
  v16 = a2;
  swift_unknownObjectRetain();
  v17 = sub_182AD2678();
  v18 = sub_182AD38A8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v17, v18))
  {
    v72 = identifier;
    v19 = v16;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v82[0] = v21;
    *v20 = 136315394;
    sensitive_redacted = nw_context_get_sensitive_redacted(*&v19[OBJC_IVAR____TtC7Network8Endpoint_context]);
    v78 = v19;
    v73 = a3;
    if ((*&v19[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
    {
      v23 = Endpoint.description.getter();
    }

    else
    {
      v23 = sub_181B52D70();
    }

    v34 = sub_181C64FFC(v23, v24, v82);

    *(v20 + 4) = v34;
    *(v20 + 12) = 2080;
    v35 = [v13 description];
    v36 = sub_182AD2F88();
    v38 = v37;

    v39 = sub_181C64FFC(v36, v38, v82);

    *(v20 + 14) = v39;
    _os_log_impl(&dword_181A37000, v17, v18, "%s considering edge %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v21, -1, -1);
    MEMORY[0x1865DF520](v20, -1, -1);

    a3 = v73;
    v16 = v78;
    identifier = v72;
    if (v8 == 255)
    {
LABEL_24:
      v40 = v16;
      swift_unknownObjectRetain();
      v26 = sub_182AD2678();
      v27 = sub_182AD38A8();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v26, v27))
      {
        v79 = v16;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v82[0] = v29;
        *v28 = 136315394;
        v41 = nw_context_get_sensitive_redacted(*&v40[OBJC_IVAR____TtC7Network8Endpoint_context]);
        v74 = a3;
        if ((*&v40[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v41 & 1) == 0)
        {
          v42 = Endpoint.description.getter();
        }

        else
        {
          v42 = sub_181B52D70();
        }

        v44 = sub_181C64FFC(v42, v43, v82);

        *(v28 + 4) = v44;
        *(v28 + 12) = 2080;
        v45 = [v13 description];
        v46 = sub_182AD2F88();
        v48 = v47;

        v49 = sub_181C64FFC(v46, v48, v82);

        *(v28 + 14) = v49;
        v50 = "%s no identifier specified for edge %s, calling enumerator";
LABEL_33:
        _os_log_impl(&dword_181A37000, v26, v27, v50, v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v29, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);

        a3 = v74;
        v16 = v79;
        goto LABEL_34;
      }

      goto LABEL_28;
    }
  }

  else
  {

    if (v8 == 255)
    {
      goto LABEL_24;
    }
  }

  v83 = 0;
  memset(v82, 0, sizeof(v82));
  LOWORD(v80[0]) = v75;
  v80[1] = v77;
  v80[2] = v76;
  v81 = v8 & 1;
  sub_181B0D734(v82);
  if (identifier && nw_protocols_are_equal(v82, identifier))
  {
    v25 = v16;
    swift_unknownObjectRetain();
    v26 = sub_182AD2678();
    v27 = sub_182AD38A8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v26, v27))
    {
      v79 = v16;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v80[0] = v29;
      *v28 = 136315394;
      v30 = nw_context_get_sensitive_redacted(*&v25[OBJC_IVAR____TtC7Network8Endpoint_context]);
      v74 = a3;
      if ((*&v25[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v30 & 1) == 0)
      {
        v31 = Endpoint.description.getter();
      }

      else
      {
        v31 = sub_181B52D70();
      }

      v51 = sub_181C64FFC(v31, v32, v80);

      *(v28 + 4) = v51;
      *(v28 + 12) = 2080;
      v52 = [v13 description];
      v53 = sub_182AD2F88();
      v55 = v54;

      v56 = sub_181C64FFC(v53, v55, v80);

      *(v28 + 14) = v56;
      v50 = "%s identifier matches for edge %s, calling enumerator";
      goto LABEL_33;
    }

LABEL_28:

LABEL_34:
    v33 = (*(a3 + 16))(a3, 0, v13);
    goto LABEL_35;
  }

  v33 = 1;
LABEL_35:
  v57 = v16;
  swift_unknownObjectRetain();
  v58 = sub_182AD2678();
  v59 = sub_182AD38A8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v82[0] = v61;
    *v60 = 136315650;
    v62 = nw_context_get_sensitive_redacted(*&v57[OBJC_IVAR____TtC7Network8Endpoint_context]);
    if ((*&v57[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (v62 & 1) == 0)
    {
      v63 = Endpoint.description.getter();
    }

    else
    {
      v63 = sub_181B52D70();
    }

    v65 = sub_181C64FFC(v63, v64, v82);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    v66 = [v13 description];
    v67 = sub_182AD2F88();
    v69 = v68;

    v70 = sub_181C64FFC(v67, v69, v82);

    *(v60 + 14) = v70;
    *(v60 + 22) = 1024;
    *(v60 + 24) = v33;
    _os_log_impl(&dword_181A37000, v58, v59, "%s continuing after edge %s: %{BOOL}d", v60, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v61, -1, -1);
    MEMORY[0x1865DF520](v60, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v33;
}

id nw_protocol_instance_registrar_copy_next_registered_endpoint(void *a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_endpoint_is_registered";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v22, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v41 = "nw_endpoint_is_registered";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null endpoint", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v23, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v41 = "nw_endpoint_is_registered";
            v42 = 2082;
            v43 = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_37;
        }

        if (v27)
        {
          *buf = 136446210;
          v41 = "nw_endpoint_is_registered";
          _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v41 = "nw_endpoint_is_registered";
          _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_37:
    if (v22)
    {
      free(v22);
    }

LABEL_39:
    v29 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
    v30 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v30, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s finding the next endpoint requires a registered endpoint", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v31, type);
        if (v33)
        {
          if (v35)
          {
            *buf = 136446466;
            v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
            v42 = 2082;
            v43 = v33;
            _os_log_impl(&dword_181A37000, v31, v34, "%{public}s finding the next endpoint requires a registered endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_55;
        }

        if (v35)
        {
          *buf = 136446210;
          v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
          _os_log_impl(&dword_181A37000, v31, v34, "%{public}s finding the next endpoint requires a registered endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
          _os_log_impl(&dword_181A37000, v31, v36, "%{public}s finding the next endpoint requires a registered endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_55:
    if (v30)
    {
      free(v30);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  is_registered = _nw_endpoint_is_registered(v3);

  if ((is_registered & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = v4;
  v7 = _nw_endpoint_get_type(v6);

  if (v7 != 1)
  {
    goto LABEL_14;
  }

  v8 = v6;
  is_proxy = _nw_endpoint_get_parent_is_proxy(v8);

  if (is_proxy)
  {
    goto LABEL_14;
  }

  v10 = v8;
  v11 = _nw_endpoint_copy_parent_endpoint(v10);

  if (!v11 || (v12 = v11, v13 = _nw_endpoint_get_type(v12), v12, v13 != 2))
  {

    goto LABEL_14;
  }

  v14 = v12;
  v15 = _nw_endpoint_is_registered(v14);

  if ((v15 & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      v37 = __nwlog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s next endpoint %@ is not registered, fetching registered copy", buf, 0x16u);
      }
    }

    v16 = v10;
    v17 = _nw_endpoint_copy_context();

    v18 = nw_context_copy_registered_endpoint_internal(v17, v14, a2);
    v14 = v18;
    if (!v18)
    {
LABEL_14:
      if (gLogDatapath == 1)
      {
        v19 = __nwlog_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
          v42 = 2112;
          v43 = v6;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s no next endpoint for endpoint %@", buf, 0x16u);
        }

        v14 = 0;
        goto LABEL_25;
      }

      goto LABEL_15;
    }
  }

  if (gLogDatapath == 1)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v41 = "nw_protocol_instance_registrar_copy_next_registered_endpoint";
      v42 = 2112;
      v43 = v14;
      v44 = 2112;
      v45 = v10;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s found next endpoint %@ for endpoint %@", buf, 0x20u);
    }

LABEL_25:
  }

LABEL_16:

  return v14;
}

uint64_t ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_223(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v173 = *MEMORY[0x1E69E9840];
  v153 = a3;
  v7 = a4;
  if (nw_protocol_options_is_custom_ip(v7))
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    if (minimize_logging)
    {
      if (logging_disabled)
      {
        goto LABEL_125;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v103 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v104 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        logging_description = nw_endpoint_get_logging_description(v104);
        v106 = nw_endpoint_handler_state_string(*(a1 + 32));
        v107 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v108 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        *&buf[4] = "nw_endpoint_flow_attach_protocols_block_invoke";
        v157 = 2082;
        v158 = id_string;
        v159 = 2082;
        v160 = v103;
        v161 = 2082;
        v162 = logging_description;
        v163 = 2082;
        v164 = v106;
        v165 = 2082;
        v166 = v107;
        v167 = 2114;
        v168 = v108;
        v169 = 1024;
        LODWORD(v170) = nw_custom_ip_options_get_protocol(v7);
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Using custom IP protocol %u, not attaching any transport", buf, 0x4Eu);
      }

      goto LABEL_40;
    }

    if ((logging_disabled & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v12 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v13 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v14 = v13;
        if (v13)
        {
          v15 = _nw_endpoint_get_logging_description(v13);
        }

        else
        {
          v15 = "<NULL>";
        }

        v35 = nw_endpoint_handler_state_string(*(a1 + 32));
        v36 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v37 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        *&buf[4] = "nw_endpoint_flow_attach_protocols_block_invoke";
        v157 = 2082;
        v158 = v11;
        v159 = 2082;
        v160 = v12;
        v161 = 2082;
        v162 = v15;
        v163 = 2082;
        v164 = v35;
        v165 = 2082;
        v166 = v36;
        v167 = 2114;
        v168 = v37;
        v169 = 1024;
        LODWORD(v170) = nw_custom_ip_options_get_protocol(v7);
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Using custom IP protocol %u, not attaching any transport", buf, 0x4Eu);
      }

LABEL_40:
    }

LABEL_125:
    v64 = 1;
    goto LABEL_126;
  }

  identifier = nw_protocol_definition_get_identifier(v153);
  registered_endpoint = *(a1 + 96);
  if (registered_endpoint)
  {
    goto LABEL_85;
  }

  v18 = *(*(*(a1 + 64) + 8) + 24);
  v19 = *(a1 + 40);
  v20 = *(*(*(a1 + 72) + 8) + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v147 = v19;
  v149 = v20;
  v151 = v21;
  v145 = v22;
  if (!v22)
  {
    v109 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (!__nwlog_fault(v43, &type, &v154))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v110 = __nwlog_obj();
      v111 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_213;
    }

    if (v154 != 1)
    {
      v110 = __nwlog_obj();
      v121 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v121, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_213;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v115 = type;
    v116 = os_log_type_enabled(v44, type);
    if (!backtrace_string)
    {
      if (v116)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v44, v115, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_80;
    }

    if (v116)
    {
      *buf = 136446466;
      *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
      v157 = 2082;
      v158 = backtrace_string;
      _os_log_impl(&dword_181A37000, v44, v115, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_203;
  }

  v23 = v22;
  v24 = v23[29];

  if (v24 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (v24 > 5)
    {
      v34 = "unknown-mode";
    }

    else
    {
      v34 = off_1E6A31018[v24];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v157 = 2082;
    v158 = v34;
    v159 = 2082;
    v160 = "flow";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (!__nwlog_fault(v43, &type, &v154))
    {
LABEL_81:
      if (!v43)
      {
LABEL_83:
        registered_endpoint = 0;
        goto LABEL_84;
      }

LABEL_82:
      free(v43);
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = gLogObj;
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        if (v24 > 5)
        {
          v46 = "unknown-mode";
        }

        else
        {
          v46 = off_1E6A31018[v24];
        }

        *buf = 136446722;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v157 = 2082;
        v158 = v46;
        v159 = 2082;
        v160 = "flow";
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    else if (v154 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v48 = type;
      v49 = os_log_type_enabled(v44, type);
      if (v47)
      {
        if (v49)
        {
          if (v24 > 5)
          {
            v50 = "unknown-mode";
          }

          else
          {
            v50 = off_1E6A31018[v24];
          }

          *buf = 136446978;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          v157 = 2082;
          v158 = v50;
          v159 = 2082;
          v160 = "flow";
          v161 = 2082;
          v162 = v47;
          _os_log_impl(&dword_181A37000, v44, v48, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v47);
        if (!v43)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if (v49)
      {
        if (v24 > 5)
        {
          v53 = "unknown-mode";
        }

        else
        {
          v53 = off_1E6A31018[v24];
        }

        *buf = 136446722;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v157 = 2082;
        v158 = v53;
        v159 = 2082;
        v160 = "flow";
        _os_log_impl(&dword_181A37000, v44, v48, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = gLogObj;
      v51 = type;
      if (os_log_type_enabled(v44, type))
      {
        if (v24 > 5)
        {
          v52 = "unknown-mode";
        }

        else
        {
          v52 = off_1E6A31018[v24];
        }

        *buf = 136446722;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v157 = 2082;
        v158 = v52;
        v159 = 2082;
        v160 = "flow";
        _os_log_impl(&dword_181A37000, v44, v51, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_80;
  }

  if (!identifier)
  {
    v112 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (!__nwlog_fault(v43, &type, &v154))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v110 = __nwlog_obj();
      v113 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v113, "%{public}s called with null identifier", buf, 0xCu);
      }

      goto LABEL_213;
    }

    if (v154 != 1)
    {
      v110 = __nwlog_obj();
      v128 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v128, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_213;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v122 = type;
    v123 = os_log_type_enabled(v44, type);
    if (!backtrace_string)
    {
      if (v123)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v44, v122, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_80;
    }

    if (v123)
    {
      *buf = 136446466;
      *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
      v157 = 2082;
      v158 = backtrace_string;
      _os_log_impl(&dword_181A37000, v44, v122, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_203;
  }

  if (!v149)
  {
    v117 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (!__nwlog_fault(v43, &type, &v154))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v110 = __nwlog_obj();
      v118 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v118, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_213;
    }

    if (v154 != 1)
    {
      v110 = __nwlog_obj();
      v129 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v129, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_213;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v124 = type;
    v125 = os_log_type_enabled(v44, type);
    if (!backtrace_string)
    {
      if (v125)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v44, v124, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_80;
    }

    if (v125)
    {
      *buf = 136446466;
      *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
      v157 = 2082;
      v158 = backtrace_string;
      _os_log_impl(&dword_181A37000, v44, v124, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_203:

    free(backtrace_string);
    if (!v43)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (!v151)
  {
    v119 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v154 = 0;
    if (!__nwlog_fault(v43, &type, &v154))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v110 = __nwlog_obj();
      v120 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v120, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_213:

      goto LABEL_81;
    }

    if (v154 != 1)
    {
      v110 = __nwlog_obj();
      v130 = type;
      if (os_log_type_enabled(v110, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v110, v130, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_213;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v126 = type;
    v127 = os_log_type_enabled(v44, type);
    if (backtrace_string)
    {
      if (v127)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v157 = 2082;
        v158 = backtrace_string;
        _os_log_impl(&dword_181A37000, v44, v126, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_203;
    }

    if (v127)
    {
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v44, v126, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

LABEL_80:

    goto LABEL_81;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v25 = &g_registration_list;
  do
  {
    v25 = *v25;
    if (!v25)
    {
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      goto LABEL_42;
    }
  }

  while (*identifier != v25[4] || *(identifier + 1) != v25[5] || *(identifier + 2) != v25[6] || *(identifier + 3) != v25[7] || *(identifier + 4) != v25[8]);
  v30 = v25[13];
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  if (!v30)
  {
LABEL_42:
    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v23) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v38 = gconnectionLogObj;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v143 = nw_endpoint_handler_get_id_string(v23);
        v141 = nw_endpoint_handler_dry_run_string(v23);
        v39 = nw_endpoint_handler_copy_endpoint(v23);
        v139 = nw_endpoint_get_logging_description(v39);
        v40 = nw_endpoint_handler_state_string(v23);
        v41 = nw_endpoint_handler_mode_string(v23);
        v42 = nw_endpoint_handler_copy_current_path(v23);
        *buf = 136448258;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v157 = 2082;
        v158 = v143;
        v159 = 2082;
        v160 = v141;
        v161 = 2082;
        v162 = v139;
        v163 = 2082;
        v164 = v40;
        v165 = 2082;
        v166 = v41;
        v167 = 2114;
        v168 = v42;
        v169 = 2080;
        v170 = identifier;
        v171 = 2048;
        v172 = identifier;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] protocol %s (%p) does not have accept function, cannot search for protocol to join", buf, 0x5Cu);
      }
    }

    goto LABEL_83;
  }

  v31 = v149;
  v32 = v31;
  while (1)
  {
    registered_endpoint = nw_protocol_instance_registrar_search_for_instance_to_join(identifier, -1, v147, v32, v31, v151, v18);
    if (registered_endpoint)
    {
      break;
    }

    registered_endpoint = nw_protocol_instance_registrar_copy_next_registered_endpoint(v32, v18);

    v32 = registered_endpoint;
    if (!registered_endpoint)
    {
      goto LABEL_64;
    }
  }

  if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v23) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v131 = gconnectionLogObj;
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
    {
      v144 = nw_endpoint_handler_get_id_string(v23);
      v142 = nw_endpoint_handler_dry_run_string(v23);
      v132 = nw_endpoint_handler_copy_endpoint(v23);
      v140 = nw_endpoint_get_logging_description(v132);
      v138 = nw_endpoint_handler_state_string(v23);
      v133 = nw_endpoint_handler_mode_string(v23);
      v134 = nw_endpoint_handler_copy_current_path(v23);
      v135 = v134;
      *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
      v136 = "invalid";
      v137 = registered_endpoint[2];
      *buf = 136448258;
      if (v137)
      {
        v136 = v137;
      }

      v157 = 2082;
      v158 = v144;
      v159 = 2082;
      v160 = v142;
      v161 = 2082;
      v162 = v140;
      v163 = 2082;
      v164 = v138;
      v165 = 2082;
      v166 = v133;
      v167 = 2114;
      v168 = v134;
      v169 = 2080;
      v170 = v136;
      v171 = 2048;
      v172 = registered_endpoint;
      _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] returning protocol to join %s (%p)", buf, 0x5Cu);
    }
  }

LABEL_64:

LABEL_84:
  if (!registered_endpoint)
  {
    goto LABEL_90;
  }

LABEL_85:
  if (!nw_endpoint_flow_join_protocol(*(a1 + 32), *(a1 + 48), v7, v153, identifier, 0xFFFFFFFFFFFFFFFFLL, registered_endpoint, *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), (*(*(a1 + 88) + 8) + 24)))
  {
LABEL_90:
    v58 = nw_endpoint_flow_add_one_protocol(*(a1 + 32), identifier, v7, v153, *(*(*(a1 + 72) + 8) + 40), *(a1 + 48), *(*(*(a1 + 80) + 8) + 24));
    if (!v58)
    {
      v64 = 0;
      *(*(*(a1 + 88) + 8) + 24) = 1;
      goto LABEL_126;
    }

    if (nw_protocol_definition_get_message_is_stream(v153))
    {
      v59 = *(a1 + 56);
      if (!*(v59 + 768))
      {
        objc_storeStrong((v59 + 768), a3);
        v65 = v58[5];
        v66 = v58;
        if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v66 = v58[8]) != 0)
        {
          v83 = v66[11];
          if (v83)
          {
            v66[11] = v83 + 1;
          }

          *buf = v58;
          buf[8] |= 1u;
          v67 = 1;
        }

        else
        {
          v67 = 0;
          *buf = v58;
          buf[8] &= ~1u;
        }

        v84 = *(a1 + 56);
        v85 = *(v84 + 784);
        if (v85)
        {
          nw::release_if_needed<nw_protocol *>((v84 + 776));
          v85 = *(v84 + 784);
        }

        *(v84 + 776) = v58;
        *(v84 + 784) = v67 | v85 & 0xFE;
        v86 = v58[3];
        if (v86)
        {
          v87 = *(v86 + 232);
          if (v87)
          {
            v88 = *(a1 + 56);
            v89 = v58[5];
            v90 = v58;
            if (v89 == &nw_protocol_ref_counted_handle || v89 == &nw_protocol_ref_counted_additional_handle && (v90 = v58[8]) != 0)
            {
              v92 = v90[11];
              if (v92)
              {
                v90[11] = v92 + 1;
              }

              v91 = 0;
              *buf = v58;
              buf[8] |= 1u;
            }

            else
            {
              *buf = v58;
              buf[8] &= ~1u;
              v91 = 1;
            }

            v93 = v87(v58, v88 + 440, 0);
            if ((v91 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(buf);
            }

            if ((v93 & 1) == 0 && (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v94 = gconnectionLogObj;
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                v95 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                v150 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                v152 = v95;
                v146 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                v148 = nw_endpoint_get_logging_description(v146);
                v96 = nw_endpoint_handler_state_string(*(a1 + 32));
                v97 = nw_endpoint_handler_mode_string(*(a1 + 32));
                v98 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                v99 = v98;
                v100 = "invalid";
                v101 = *(*(a1 + 56) + 392);
                if (!v101)
                {
                  v101 = "invalid";
                }

                if (v58[2])
                {
                  v100 = v58[2];
                }

                *buf = 136448258;
                *&buf[4] = "nw_endpoint_flow_attach_protocols_block_invoke";
                v157 = 2082;
                v158 = v152;
                v159 = 2082;
                v160 = v150;
                v161 = 2082;
                v162 = v148;
                v163 = 2082;
                v164 = v96;
                v165 = 2082;
                v166 = v97;
                v167 = 2114;
                v168 = v98;
                v169 = 2082;
                v170 = v101;
                v171 = 2082;
                v172 = v100;
                _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add protocol %{public}s as a listener to %{public}s", buf, 0x5Cu);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_lock((*(a1 + 56) + 880));
    v60 = *(a1 + 56);
    if (!*(v60 + 720))
    {
      v61 = v58[5];
      v62 = v58;
      if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v62 = v58[8]) != 0)
      {
        v70 = v62[11];
        if (v70)
        {
          v62[11] = v70 + 1;
          v60 = *(a1 + 56);
        }

        *buf = v58;
        v63 = buf[8] | 1;
      }

      else
      {
        *buf = v58;
        v63 = buf[8] & 0xFE;
      }

      buf[8] = v63;
      v71 = *(v60 + 728);
      v72 = v58;
      if (v71)
      {
        nw::release_if_needed<nw_protocol *>((v60 + 720));
        v71 = *(v60 + 728);
        v72 = *buf;
        v63 = buf[8];
      }

      *(v60 + 720) = v72;
      *(v60 + 728) = v71 & 0xFE | v63 & 1;
      v60 = *(a1 + 56);
    }

    os_unfair_lock_unlock((v60 + 880));
    *(*(*(a1 + 80) + 8) + 24) = v58;
    if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v73 = gconnectionLogObj;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        v74 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v75 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v76 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v77 = v76;
        if (v76)
        {
          v78 = _nw_endpoint_get_logging_description(v76);
        }

        else
        {
          v78 = "<NULL>";
        }

        v79 = nw_endpoint_handler_state_string(*(a1 + 32));
        v80 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v81 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        *&buf[4] = "nw_endpoint_flow_attach_protocols_block_invoke";
        v157 = 2082;
        v158 = v74;
        v159 = 2082;
        v160 = v75;
        v161 = 2082;
        v162 = v78;
        v163 = 2082;
        v164 = v79;
        v165 = 2082;
        v166 = v80;
        v167 = 2114;
        v168 = v81;
        v169 = 2082;
        v170 = identifier;
        _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached transport protocol: %{public}s", buf, 0x52u);
      }
    }

    goto LABEL_125;
  }

  *(*(a1 + 56) + 736) = *(*(*(*(a1 + 80) + 8) + 24) + 32);
  *(*(a1 + 56) + 33) |= 1u;
  os_unfair_lock_lock((*(a1 + 56) + 880));
  v54 = *(a1 + 56);
  if (!*(v54 + 720))
  {
    v55 = registered_endpoint[5];
    v56 = registered_endpoint;
    if (v55 == &nw_protocol_ref_counted_handle || v55 == &nw_protocol_ref_counted_additional_handle && (v56 = registered_endpoint[8]) != 0)
    {
      v68 = v56[11];
      if (v68)
      {
        v56[11] = v68 + 1;
        v54 = *(a1 + 56);
      }

      *buf = registered_endpoint;
      v57 = buf[8] | 1;
    }

    else
    {
      *buf = registered_endpoint;
      v57 = buf[8] & 0xFE;
    }

    buf[8] = v57;
    v69 = *(v54 + 728);
    if (v69)
    {
      nw::release_if_needed<nw_protocol *>((v54 + 720));
      v69 = *(v54 + 728);
      registered_endpoint = *buf;
      v57 = buf[8];
    }

    *(v54 + 720) = registered_endpoint;
    *(v54 + 728) = v69 & 0xFE | v57 & 1;
    v54 = *(a1 + 56);
  }

  os_unfair_lock_unlock((v54 + 880));
  v64 = 0;
LABEL_126:

  return v64;
}

id *nw_protocol_implementation_create(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    if (v8)
    {
      v11 = v8;
      if (v11[16] == 3)
      {
        if (nw_protocol_instance_multiplex_callbacks(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_instance_multiplex_callbacks(void)::onceToken, &__block_literal_global_283);
        }

        v12 = &nw_protocol_instance_multiplex_callbacks(void)::callbacks;
      }

      else
      {
        if (nw_protocol_instance_one_to_one_callbacks(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_instance_one_to_one_callbacks(void)::onceToken, &__block_literal_global_267);
        }

        v12 = &nw_protocol_instance_one_to_one_callbacks(void)::callbacks;
      }

      v13 = *v12;
      v14 = objc_opt_class();
      v15 = nw_protocol_new_objc(v14, v10, (v11 + 2), v13);
      v16 = v15;
      if (v15)
      {
        objc_storeStrong(v15 + 5, a3);
        objc_storeStrong(v16 + 6, a4);
        objc_storeStrong(v16 + 1, a2);
        if (nw_parameters_get_logging_disabled(v10))
        {
          v17 = 0x80;
        }

        else
        {
          v17 = 0;
        }

        *(v16 + 413) = v17 & 0x80 | *(v16 + 413) & 0x7F;
        v18 = *(v16[1] + 10);
        if (v18)
        {
          v19 = *v18;
          if (v19)
          {
            v16[14] = v19();
          }
        }

        v20 = v16;
        v20[2] = v20;
        v21 = v20 - 12;
        goto LABEL_38;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      *buf = 136446210;
      v47 = "nw_protocol_implementation_create";
      v23 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v44 = 0;
      if (__nwlog_fault(v23, &type, &v44))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            *buf = 136446210;
            v47 = "nw_protocol_implementation_create";
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_protocol_new_objc failed", buf, 0xCu);
          }
        }

        else if (v44 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v27 = type;
          v28 = os_log_type_enabled(v24, type);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              v47 = "nw_protocol_implementation_create";
              v48 = 2082;
              v49 = backtrace_string;
              _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_protocol_new_objc failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v23)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          if (v28)
          {
            *buf = 136446210;
            v47 = "nw_protocol_implementation_create";
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_protocol_new_objc failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v29 = type;
          if (os_log_type_enabled(v24, type))
          {
            *buf = 136446210;
            v47 = "nw_protocol_implementation_create";
            _os_log_impl(&dword_181A37000, v24, v29, "%{public}s nw_protocol_new_objc failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v23)
      {
LABEL_37:
        v21 = 0;
LABEL_38:

        goto LABEL_39;
      }

LABEL_36:
      free(v23);
      goto LABEL_37;
    }

    v35 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_implementation_create";
    v32 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v32, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_create";
          _os_log_impl(&dword_181A37000, v33, v36, "%{public}s called with null handle", buf, 0xCu);
        }

LABEL_71:

        goto LABEL_72;
      }

      if (v44 != 1)
      {
        v33 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_create";
          _os_log_impl(&dword_181A37000, v33, v43, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_71;
      }

      v37 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v33, type);
      if (!v37)
      {
        if (v41)
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_create";
          _os_log_impl(&dword_181A37000, v33, v40, "%{public}s called with null handle, no backtrace", buf, 0xCu);
        }

        goto LABEL_71;
      }

      if (v41)
      {
        *buf = 136446466;
        v47 = "nw_protocol_implementation_create";
        v48 = 2082;
        v49 = v37;
        _os_log_impl(&dword_181A37000, v33, v40, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_59;
    }
  }

  else
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_implementation_create";
    v32 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v32, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_create";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null identifier", buf, 0xCu);
        }

        goto LABEL_71;
      }

      if (v44 != 1)
      {
        v33 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_create";
          _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_71;
      }

      v37 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v33, type);
      if (!v37)
      {
        if (v39)
        {
          *buf = 136446210;
          v47 = "nw_protocol_implementation_create";
          _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
        }

        goto LABEL_71;
      }

      if (v39)
      {
        *buf = 136446466;
        v47 = "nw_protocol_implementation_create";
        v48 = 2082;
        v49 = v37;
        _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_59:

      free(v37);
    }
  }

LABEL_72:
  if (v32)
  {
    free(v32);
  }

  v21 = 0;
LABEL_39:

  return v21;
}

uint64_t _nw_quic_create_connection_metadata_0()
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1ED411BF0;
  v1 = *(&xmmword_1ED411BF0 + 1);
  v2 = unk_1ED411C00;
  v3 = byte_1ED411C08;
  v4 = qword_1ED411C20;
  v9 = 0uLL;
  nw_uuid_generate_insecure_3(&v9);
  v8 = v9;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionMetadata();
  swift_allocObject();
  v5 = sub_181C94C18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v6 = swift_allocObject();
  *(v6 + 57) = 0;
  *(v6 + 64) = 0;
  *(v6 + 16) = v0;
  *(v6 + 24) = v1;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 41) = v8;
  swift_beginAccess();
  *(v6 + 64) = v5;
  *(v5 + 240) = v4;
  sub_181F49A24(v1, v2, v3);

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t nw_quic_create_connection_metadata()
{
  v2 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&nw_uuid_generate_insecure_uuid_lock_8);
  if (uuid_is_null(&nw_uuid_generate_insecure_last_used_uuid_8))
  {
    goto LABEL_6;
  }

  if (nw_uuid_generate_insecure_last_used_uuid_8 == -1)
  {
    if (*(&nw_uuid_generate_insecure_last_used_uuid_8 + 1) != -1)
    {
      ++*(&nw_uuid_generate_insecure_last_used_uuid_8 + 1);
      goto LABEL_7;
    }

LABEL_6:
    uuid_generate_random(&nw_uuid_generate_insecure_last_used_uuid_8);
    BYTE9(nw_uuid_generate_insecure_last_used_uuid_8) = -1;
    goto LABEL_7;
  }

  *&nw_uuid_generate_insecure_last_used_uuid_8 = nw_uuid_generate_insecure_last_used_uuid_8 + 1;
LABEL_7:
  v1 = nw_uuid_generate_insecure_last_used_uuid_8;
  os_unfair_lock_unlock(&nw_uuid_generate_insecure_uuid_lock_8);
  BYTE9(v1) &= ~1u;
  return _nw_quic_create_connection_metadata(&v1);
}

uint64_t sub_181C94C18()
{
  *(v0 + 240) = 0;
  type metadata accessor for SystemLock._Storage();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 248) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 256) = v2;
  *(v0 + 16) = -1;
  return v0;
}

void *nw_protocol_instance_registrar_create(__int128 *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_instance_registrar_create";
    v7 = _os_log_send_and_compose_impl();

    LOBYTE(v22.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, &v22, &type))
    {
      goto LABEL_39;
    }

    if (LOBYTE(v22.receiver) == 17)
    {
      v8 = __nwlog_obj();
      receiver = v22.receiver;
      if (os_log_type_enabled(v8, v22.receiver))
      {
        *buf = 136446210;
        v24 = "nw_protocol_instance_registrar_create";
        _os_log_impl(&dword_181A37000, v8, receiver, "%{public}s called with null identifier", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v14 = v22.receiver;
      v15 = os_log_type_enabled(v8, v22.receiver);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "nw_protocol_instance_registrar_create";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_26;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_protocol_instance_registrar_create";
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v22.receiver;
      if (os_log_type_enabled(v8, v22.receiver))
      {
        *buf = 136446210;
        v24 = "nw_protocol_instance_registrar_create";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_39;
  }

  v2 = [NWConcrete_nw_protocol_instance_registrar alloc];
  if (!v2)
  {
    return 0;
  }

  v22.receiver = v2;
  v22.super_class = NWConcrete_nw_protocol_instance_registrar;
  v3 = objc_msgSendSuper2(&v22, sel_init);
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v24 = "[NWConcrete_nw_protocol_instance_registrar initWithIdentifier:]";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if ((__nwlog_fault(v7, &type, &v20) & 1) == 0)
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "[NWConcrete_nw_protocol_instance_registrar initWithIdentifier:]";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [super init] failed", buf, 0xCu);
      }

LABEL_38:

LABEL_39:
      if (v7)
      {
        free(v7);
      }

      return 0;
    }

    if (v20 != 1)
    {
      v11 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "[NWConcrete_nw_protocol_instance_registrar initWithIdentifier:]";
        _os_log_impl(&dword_181A37000, v11, v19, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v24 = "[NWConcrete_nw_protocol_instance_registrar initWithIdentifier:]";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_38;
    }

    if (v17)
    {
      *buf = 136446466;
      v24 = "[NWConcrete_nw_protocol_instance_registrar initWithIdentifier:]";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_39;
  }

  v3[2] = 0;
  nw_protocol_identifier_copy((v3 + 3), a1);
  v4[8] = 0;
  return v4;
}

void nw_protocol_identifier_copy(uint64_t a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = *a2;
      v3 = a2[1];
      *(a1 + 32) = *(a2 + 4);
      *a1 = v2;
      *(a1 + 16) = v3;
      return;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_identifier_copy";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v17 = "nw_protocol_identifier_copy";
          v8 = "%{public}s called with null source";
          goto LABEL_32;
        }
      }

      else
      {
        if (v14 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v6 = __nwlog_obj();
          v7 = type;
          v13 = os_log_type_enabled(v6, type);
          if (backtrace_string)
          {
            if (v13)
            {
              *buf = 136446466;
              v17 = "nw_protocol_identifier_copy";
              v18 = 2082;
              v19 = backtrace_string;
              _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (v5)
            {
              goto LABEL_35;
            }

            return;
          }

          if (!v13)
          {
            goto LABEL_33;
          }

          *buf = 136446210;
          v17 = "nw_protocol_identifier_copy";
          v8 = "%{public}s called with null source, no backtrace";
          goto LABEL_32;
        }

        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v17 = "nw_protocol_identifier_copy";
          v8 = "%{public}s called with null source, backtrace limit exceeded";
          goto LABEL_32;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_identifier_copy";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_identifier_copy";
        v8 = "%{public}s called with null destination";
LABEL_32:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }

LABEL_33:

      goto LABEL_34;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_identifier_copy";
        v8 = "%{public}s called with null destination, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v10 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v11 = os_log_type_enabled(v6, type);
    if (!v10)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_identifier_copy";
        v8 = "%{public}s called with null destination, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_identifier_copy";
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null destination, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
  }

LABEL_34:
  if (v5)
  {
LABEL_35:
    free(v5);
  }
}

void nw_protocol_instance_registrar_add_instance(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_registrar_add_instance";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v6, &type, &v25))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_add_instance";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null registrar", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_add_instance";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null registrar, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v6)
        {
          goto LABEL_5;
        }

LABEL_43:
        free(v6);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_add_instance";
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null registrar, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_add_instance";
        _os_log_impl(&dword_181A37000, v7, v19, "%{public}s called with null registrar, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (*(a2 + 16))
  {
    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a2 + 16);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_instance_registrar_add_instance";
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 2048;
        v28 = a2;
        v29 = 2080;
        v30 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %@ adding instance %p (%s)", buf, 0x2Au);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v28 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_instance_registrar_add_instance_block_invoke;
    aBlock[3] = &unk_1E6A3D8B8;
    v23 = buf;
    v24 = a2;
    v22 = v3;
    v4 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v4[2](v4);
    os_unfair_lock_unlock(v3 + 2);

    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_registrar_add_instance";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v6, &type, &v25))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_registrar_add_instance";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protocol->identifier", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v25 != 1)
  {
    v7 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_registrar_add_instance";
      _os_log_impl(&dword_181A37000, v7, v20, "%{public}s called with null protocol->identifier, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v16 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v7, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_registrar_add_instance";
      _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol->identifier, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_instance_registrar_add_instance";
    *&buf[12] = 2082;
    *&buf[14] = v16;
    _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol->identifier, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v6)
  {
    goto LABEL_43;
  }

LABEL_5:
}

void sub_181C95BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_protocol_instance_registrar_add_instance_block_invoke(void *a1, __n128 a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(a1[4] + 16);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = 0;
  a2.n128_u64[0] = 136447234;
  do
  {
    v5 = v3;
    v3 = *v3;
    if (v5[2] == a1[6])
    {
      *(*(a1[5] + 8) + 24) = v5;
      if (gLogDatapath == 1)
      {
        v35 = a2;
        v6 = __nwlog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = a1[4];
          v8 = *(*(a1[5] + 8) + 24);
          v9 = a1[6];
          v10 = *(v9 + 16);
          *buf = v35.n128_u32[0];
          v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
          v40 = 2112;
          v41 = v7;
          v42 = 2048;
          v43 = v8;
          v44 = 2048;
          v45 = v9;
          v46 = 2080;
          v47 = v10;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %@ had existing entry %p for instance %p (%s)", buf, 0x34u);
        }

        v4 = 1;
        a2 = v35;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  while (v3);
  if ((v4 & 1) == 0)
  {
LABEL_15:
    v14 = malloc_type_calloc(1uLL, 0x20uLL, 0xCAF37DD8uLL);
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
      v40 = 2048;
      v41 = 1;
      v42 = 2048;
      v43 = 32;
      v16 = _os_log_send_and_compose_impl();

      if (__nwlog_should_abort(v16))
      {
        __break(1u);
        return;
      }

      free(v16);
    }

    v14[2] = a1[6];
    v17 = *(a1[4] + 16);
    *v14 = v17;
    if (v17)
    {
      *(*(a1[4] + 16) + 8) = v14;
    }

    *(a1[4] + 16) = v14;
    v14[1] = a1[4] + 16;
    v18 = a1[4];
    v19 = *(v18 + 64);
    v20 = __CFADD__(v19, 1);
    v21 = v19 + 1;
    v22 = v20;
    *(v18 + 64) = v21;
    if (v22 << 63 >> 63 == v22)
    {
      goto LABEL_36;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = *(a1[4] + 64);
    *buf = 136446978;
    v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
    v40 = 2082;
    v41 = "registrar->instance_count";
    v42 = 2048;
    v43 = 1;
    v44 = 2048;
    v45 = v24;
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v25, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_43;
        }

        v28 = *(a1[4] + 64);
        *buf = 136446978;
        v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
        v40 = 2082;
        v41 = "registrar->instance_count";
        v42 = 2048;
        v43 = 1;
        v44 = 2048;
        v45 = v28;
        v29 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
        goto LABEL_42;
      }

      if (v36 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_43;
        }

        v33 = *(a1[4] + 64);
        *buf = 136446978;
        v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
        v40 = 2082;
        v41 = "registrar->instance_count";
        v42 = 2048;
        v43 = 1;
        v44 = 2048;
        v45 = v33;
        v29 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_42;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      v31 = os_log_type_enabled(v26, type);
      if (!backtrace_string)
      {
        if (!v31)
        {
          goto LABEL_43;
        }

        v34 = *(a1[4] + 64);
        *buf = 136446978;
        v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
        v40 = 2082;
        v41 = "registrar->instance_count";
        v42 = 2048;
        v43 = 1;
        v44 = 2048;
        v45 = v34;
        v29 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
LABEL_42:
        _os_log_impl(&dword_181A37000, v26, v27, v29, buf, 0x2Au);
LABEL_43:

        if (!v25)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v31)
      {
        v32 = *(a1[4] + 64);
        *buf = 136447234;
        v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
        v40 = 2082;
        v41 = "registrar->instance_count";
        v42 = 2048;
        v43 = 1;
        v44 = 2048;
        v45 = v32;
        v46 = 2082;
        v47 = backtrace_string;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
      }

      free(backtrace_string);
    }

    if (!v25)
    {
LABEL_35:
      *(a1[4] + 64) = -1;
LABEL_36:
      *(*(a1[5] + 8) + 24) = v14;
      return;
    }

LABEL_34:
    free(v25);
    goto LABEL_35;
  }

  if (gLogDatapath == 1)
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[4];
      v13 = a1[6];
      *buf = 136446722;
      v39 = "nw_protocol_instance_registrar_add_instance_block_invoke";
      v40 = 2112;
      v41 = v12;
      v42 = 2048;
      v43 = v13;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Registrar %@ already has instance for protocol %p", buf, 0x20u);
    }
  }
}

uint64_t nw_protocol_implementation_add_input_handler(nw_protocol *a1, uint64_t a2)
{
  v300 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v6 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        v7 = _os_log_send_and_compose_impl();

        LOBYTE(type[0]) = 16;
        LOBYTE(__src) = 0;
        if (__nwlog_fault(v7, type, &__src))
        {
          if (LOBYTE(type[0]) == 17)
          {
            v8 = __nwlog_obj();
            v9 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_add_input_handler";
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (__src == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v8 = __nwlog_obj();
            v22 = type[0];
            v23 = os_log_type_enabled(v8, type[0]);
            if (backtrace_string)
            {
              if (v23)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v7)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            if (v23)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_add_input_handler";
              _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v8 = __nwlog_obj();
            v30 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_add_input_handler";
              _os_log_impl(&dword_181A37000, v8, v30, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v7)
        {
LABEL_74:
          v10 = 0;
          goto LABEL_75;
        }

LABEL_73:
        free(v7);
        goto LABEL_74;
      }

      v5 = *a1[1].flow_id;
    }

    v10 = &v5[1].output_handler;
    v11 = v5[1].handle;
    if (v11)
    {
      if (v11[10])
      {
        if (a1 != a2)
        {
          v291 = v10;
          if (a2)
          {
            if (!*(a2 + 32))
            {
              *(a2 + 32) = a1;
              v24 = a1->handle;
              v25 = a1;
              if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v25 = *a1[1].flow_id) != 0)
              {
                callbacks = v25[1].callbacks;
                if (callbacks)
                {
                  v25[1].callbacks = (&callbacks->add_input_handler + 1);
                }
              }
            }

            v12 = *(a2 + 40);
            v13 = a2;
            if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(a2 + 64)) != 0)
            {
              v31 = v13[1].callbacks;
              if (v31)
              {
                v13[1].callbacks = (&v31->add_input_handler + 1);
              }

              v14 = 0;
              type[0] = a2;
              LOBYTE(type[1]) |= 1u;
            }

            else
            {
              type[0] = a2;
              LOBYTE(type[1]) &= ~1u;
              v14 = 1;
            }

            v32 = *(a2 + 24);
            if (v32)
            {
              get_parameters = v32->get_parameters;
              if (get_parameters)
              {
                v34 = get_parameters(a2);

                if (v14)
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }
            }

            v62 = __nwlog_obj();
            v63 = *(a2 + 16);
            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            if (!v63)
            {
              v63 = "invalid";
            }

            *&buf[12] = 2082;
            *&buf[14] = v63;
            *&buf[22] = 2048;
            v297 = a2;
            v64 = _os_log_send_and_compose_impl();

            LOBYTE(__src) = 16;
            LOBYTE(v292) = 0;
            if (__nwlog_fault(v64, &__src, &v292))
            {
              if (__src == 17)
              {
                v65 = __nwlog_obj();
                v66 = __src;
                if (os_log_type_enabled(v65, __src))
                {
                  v67 = *(a2 + 16);
                  if (!v67)
                  {
                    v67 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_get_parameters";
                  *&buf[12] = 2082;
                  *&buf[14] = v67;
                  *&buf[22] = 2048;
                  v297 = a2;
                  _os_log_impl(&dword_181A37000, v65, v66, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 0x20u);
                }

LABEL_193:

                goto LABEL_194;
              }

              if (v292 != 1)
              {
                v65 = __nwlog_obj();
                v96 = __src;
                if (os_log_type_enabled(v65, __src))
                {
                  v97 = *(a2 + 16);
                  if (!v97)
                  {
                    v97 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_get_parameters";
                  *&buf[12] = 2082;
                  *&buf[14] = v97;
                  *&buf[22] = 2048;
                  v297 = a2;
                  _os_log_impl(&dword_181A37000, v65, v96, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded", buf, 0x20u);
                }

                goto LABEL_193;
              }

              v82 = __nw_create_backtrace_string();
              v65 = __nwlog_obj();
              v83 = __src;
              v84 = os_log_type_enabled(v65, __src);
              if (!v82)
              {
                if (v84)
                {
                  v101 = *(a2 + 16);
                  if (!v101)
                  {
                    v101 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_get_parameters";
                  *&buf[12] = 2082;
                  *&buf[14] = v101;
                  *&buf[22] = 2048;
                  v297 = a2;
                  _os_log_impl(&dword_181A37000, v65, v83, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace", buf, 0x20u);
                }

                goto LABEL_193;
              }

              if (v84)
              {
                v85 = *(a2 + 16);
                if (!v85)
                {
                  v85 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_get_parameters";
                *&buf[12] = 2082;
                *&buf[14] = v85;
                *&buf[22] = 2048;
                v297 = a2;
                v298 = 2082;
                *v299 = v82;
                _os_log_impl(&dword_181A37000, v65, v83, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v82);
            }

LABEL_194:
            if (v64)
            {
              free(v64);
            }

            v34 = 0;
            if (v14)
            {
LABEL_52:
              if (v34)
              {
                if (!v5[3].callbacks)
                {
LABEL_91:
                  v51 = _nw_parameters_copy_context(v34);
                  v52 = v5[3].callbacks;
                  v5[3].callbacks = v51;

                  LODWORD(type[0]) = 0;
                  v34 = v34;
                  v53 = _nw_parameters_copy_protocol_options_with_level(v34, v5);

                  if (v53)
                  {
                    if (!HIBYTE(v5[7].output_handler_context))
                    {
                      v54 = v53;
                      _nw_protocol_options_get_log_id_str(v54, &v5[7].output_handler_context + 7);
                    }

                    if ((BYTE4(v5[7].output_handler_context) & 4) == 0 && _nw_protocol_options_get_prohibit_joining(v53))
                    {
                      if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v55 = gLogObj;
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136446722;
                          *&buf[4] = "nw_protocol_implementation_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v5 + 511;
                          *&buf[22] = 2080;
                          v297 = " ";
                          _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sProhibit joining set, removing eligibility to join", buf, 0x20u);
                        }
                      }

                      BYTE4(v5[7].output_handler_context) |= 4u;
                    }
                  }

                  if (!LODWORD(v5[7].callbacks))
                  {
                    if (LODWORD(type[0]))
                    {
                      LODWORD(v5[7].callbacks) = type[0];
                    }

                    else if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v56 = gLogObj;
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v5 + 511;
                        *&buf[22] = 2080;
                        v297 = " ";
                        v298 = 2048;
                        *v299 = v291;
                        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sProtocol level is undefined for instance %p", buf, 0x2Au);
                      }
                    }
                  }

                  v57 = 0;
LABEL_250:
                  if (*(v5[1].handle + 16) == 3)
                  {
                    v118 = v291;
                    v289 = v57;
                    if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == a2)
                    {
                      v119 = -2;
                    }

                    else
                    {
                      v119 = a2;
                    }

                    if (gLogDatapath == 1)
                    {
                      v207 = __nwlog_obj();
                      if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2048;
                        *&buf[14] = v118;
                        *&buf[22] = 2048;
                        v297 = v119;
                        _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_DEBUG, "%{public}s Instance %p add input handler for flow %llx", buf, 0x20u);
                      }
                    }

                    internal = *&v5[5].flow_id[8];
                    if (!internal)
                    {
                      internal = nw_hash_table_create_internal(0x1Fu, 56, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, 0, 0);
                      if (!internal)
                      {
                        *&v5[5].flow_id[8] = 0;
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v175 = gLogObj;
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        v134 = _os_log_send_and_compose_impl();

                        LOBYTE(type[0]) = 16;
                        LOBYTE(__src) = 0;
                        if (!__nwlog_fault(v134, type, &__src))
                        {
                          goto LABEL_396;
                        }

                        if (LOBYTE(type[0]) == 17)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v135 = gLogObj;
                          v176 = type[0];
                          if (os_log_type_enabled(v135, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_protocol_implementation_add_input_handler";
                            _os_log_impl(&dword_181A37000, v135, v176, "%{public}s nw_hash_table_create_no_lock failed", buf, 0xCu);
                          }

                          goto LABEL_395;
                        }

                        if (__src != 1)
                        {
                          v135 = __nwlog_obj();
                          v190 = type[0];
                          if (os_log_type_enabled(v135, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_protocol_implementation_add_input_handler";
                            _os_log_impl(&dword_181A37000, v135, v190, "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded", buf, 0xCu);
                          }

                          goto LABEL_395;
                        }

                        v182 = __nw_create_backtrace_string();
                        v135 = __nwlog_obj();
                        v183 = type[0];
                        v184 = os_log_type_enabled(v135, type[0]);
                        if (!v182)
                        {
                          if (v184)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_protocol_implementation_add_input_handler";
                            _os_log_impl(&dword_181A37000, v135, v183, "%{public}s nw_hash_table_create_no_lock failed, no backtrace", buf, 0xCu);
                          }

                          goto LABEL_395;
                        }

                        if (v184)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_protocol_implementation_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v182;
                          _os_log_impl(&dword_181A37000, v135, v183, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        goto LABEL_357;
                      }

                      *(internal + 56) &= ~2u;
                      *&v5[5].flow_id[8] = internal;
                    }

                    LOBYTE(v292) = 0;
                    v121 = nw_hash_table_add_object(internal, a2, &v292);
                    if (v292)
                    {
                      v122 = v121;
                      if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                      {
                        v208 = v121;
                        v209 = __nwlog_obj();
                        if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
                        {
                          v210 = nw_protocol_flow_for_protocol(v118, a2);
                          *buf = 136447234;
                          *&buf[4] = "nw_protocol_implementation_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v5 + 511;
                          *&buf[22] = 2080;
                          v297 = " ";
                          v298 = 2048;
                          *v299 = a2;
                          *&v299[8] = 2048;
                          *&v299[10] = v210;
                          _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMultiplexing protocol added protocol %p to hash table for flow %llx", buf, 0x34u);
                        }

                        v122 = v208;
                        if (a2)
                        {
LABEL_262:
                          *(a2 + 56) = v122;
                          v123 = v289;
                          if (!*(a2 + 32))
                          {
                            *(a2 + 32) = a1;
                            v171 = a1->handle;
                            v172 = a1;
                            if (v171 == &nw_protocol_ref_counted_handle || v171 == &nw_protocol_ref_counted_additional_handle && (v172 = *a1[1].flow_id) != 0)
                            {
                              v173 = v172[1].callbacks;
                              if (v173)
                              {
                                v172[1].callbacks = (&v173->add_input_handler + 1);
                              }
                            }
                          }

                          if (!a1->default_input_handler)
                          {
                            a1->default_input_handler = a2;
                            v124 = *(a2 + 40);
                            v125 = a2;
                            if (v124 == &nw_protocol_ref_counted_handle || v124 == &nw_protocol_ref_counted_additional_handle && (v125 = *(a2 + 64)) != 0)
                            {
                              v126 = v125[1].callbacks;
                              if (v126)
                              {
                                v125[1].callbacks = (&v126->add_input_handler + 1);
                              }
                            }

LABEL_269:
                            v127 = v123;
                            nw_protocol_set_flow_id_from_protocol(a1, a2);
                            v128 = nw_protocol_instance_copy_path(v118, -1);
                            v129 = *v5[6].flow_id;
                            *v5[6].flow_id = v128;

                            v123 = v127;
                          }

LABEL_270:
                          if (v123)
                          {
                            server_mode = 0;
                            if ((BYTE2(v5[7].output_handler_context) & 2) != 0)
                            {
                              goto LABEL_313;
                            }

                            goto LABEL_303;
                          }

                          if (v34)
                          {
                            server_mode = _nw_parameters_get_server_mode(v34);
                            if ((BYTE2(v5[7].output_handler_context) & 2) != 0)
                            {
LABEL_313:
                              extra = nw_hash_node_get_extra(v122);
                              *(extra + 16) = 0;
                              *(extra + 24) = extra + 16;
                              objc_storeStrong((extra + 8), v53);
                              v159 = *(extra + 52) & 0xFFFE | server_mode;
                              *(extra + 52) = v159;
                              v160 = v159 & 0xFFFFFFFD | (2 * ((BYTE4(v5[7].output_handler_context) >> 1) & 1));
                              *(extra + 52) = v160;
                              v161 = BYTE4(v5[7].output_handler_context);
                              if (v161)
                              {
                                if ((BYTE4(v5[7].output_handler_context) & 2) == 0)
                                {
                                  *(extra + 52) = v160 | 8;
                                  v161 = BYTE4(v5[7].output_handler_context);
                                }

                                BYTE4(v5[7].output_handler_context) = v161 & 0xFC;
                                output_handler = v5[5].output_handler;
                                v5[5].output_handler = 0;
                              }

                              v163 = v5[1].handle;
                              if (a2)
                              {
                                if ((v163[192] & 0x20) != 0)
                                {
                                  v164 = *(a2 + 24);
                                  if (v164)
                                  {
                                    supports_external_data = v164->supports_external_data;
                                    if (supports_external_data)
                                    {
                                      v166 = *(a2 + 40);
                                      v167 = a2;
                                      if (v166 == &nw_protocol_ref_counted_handle || v166 == &nw_protocol_ref_counted_additional_handle && (v167 = *(a2 + 64)) != 0)
                                      {
                                        v191 = v167[1].callbacks;
                                        if (v191)
                                        {
                                          v167[1].callbacks = (&v191->add_input_handler + 1);
                                        }

                                        v168 = 0;
                                        *buf = a2;
                                        buf[8] |= 1u;
                                      }

                                      else
                                      {
                                        *buf = a2;
                                        buf[8] &= ~1u;
                                        v168 = 1;
                                      }

                                      v192 = supports_external_data(a2);
                                      if ((v168 & 1) == 0)
                                      {
                                        nw::release_if_needed<nw_protocol *>(buf);
                                      }

                                      if (v192)
                                      {
                                        v193 = 1024;
                                      }

                                      else
                                      {
                                        v193 = 0;
                                      }

                                      *(extra + 52) = *(extra + 52) & 0xFBFF | v193;
                                      v163 = v5[1].handle;
                                    }
                                  }
                                }
                              }

                              v194 = *(*(v163 + 10) + 16);
                              if (v194)
                              {
                                *extra = v194(v163, v158);
                              }

                              v195 = v118;
                              if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == a2)
                              {
                                a2 = -2;
                              }

                              v5[5].callbacks = a2;
                              v197 = *v5[2].flow_id;
                              if (v197)
                              {
                                nw_queue_cancel_source(v197, v196);
                                *v5[2].flow_id = 0;
                              }

                              goto LABEL_470;
                            }

LABEL_303:
                            if (*(*(v5[1].handle + 10) + 40))
                            {
                              v148 = v122;
                              objc_storeStrong(&v5[2].callbacks, v53);
                              __src = 0uLL;
                              nw_protocol_get_flow_id(a2, &__src);
                              v149 = nw_path_copy_flow_registration(v5[3].callbacks, &__src);
                              output_handler_context = v5[5].output_handler_context;
                              v5[5].output_handler_context = v149;

                              (*(*(v5[1].handle + 10) + 40))(v118, server_mode);
                              BYTE2(v5[7].output_handler_context) |= 2u;
                              if (server_mode)
                              {
                                v290 = nw_parameters_copy_local_endpoint(v5[2].identifier);
                                port = nw_endpoint_get_port(v290);
                                memset(type + 4, 0, 24);
                                WORD1(type[0]) = __rev16(port);
                                LOWORD(type[0]) = 7708;
                                address = _nw_endpoint_create_address(type);
                                v152 = nw_context_copy_registered_endpoint(v5[3].callbacks, address);
                                v153 = nw_endpoint_copy_registrar_for_identifier(v152, a1->identifier->name, 1);
                                default_input_handler = v5[7].default_input_handler;
                                v5[7].default_input_handler = v153;

                                v155 = v5[7].default_input_handler;
                                if (v155)
                                {
                                  if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
                                  {
                                    v156 = __nwlog_obj();
                                    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
                                    {
                                      *buf = 136446722;
                                      *&buf[4] = "nw_protocol_implementation_add_input_handler";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v5 + 511;
                                      *&buf[22] = 2080;
                                      v297 = " ";
                                      _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAdded server protocol to the registrar", buf, 0x20u);
                                    }

                                    v155 = v5[7].default_input_handler;
                                  }

                                  nw_protocol_instance_registrar_add_instance(v155, a1);
                                }
                              }

                              v122 = v148;
                            }

                            goto LABEL_313;
                          }

                          v286 = v122;
                          v245 = __nwlog_obj();
                          *buf = 136446210;
                          *&buf[4] = "nw_parameters_get_server_mode";
                          v246 = _os_log_send_and_compose_impl();

                          LOBYTE(type[0]) = 16;
                          LOBYTE(__src) = 0;
                          if (__nwlog_fault(v246, type, &__src))
                          {
                            if (LOBYTE(type[0]) == 17)
                            {
                              v247 = __nwlog_obj();
                              v248 = type[0];
                              if (os_log_type_enabled(v247, type[0]))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_parameters_get_server_mode";
                                _os_log_impl(&dword_181A37000, v247, v248, "%{public}s called with null parameters", buf, 0xCu);
                              }

LABEL_569:

                              goto LABEL_570;
                            }

                            if (__src != 1)
                            {
                              v247 = __nwlog_obj();
                              v261 = type[0];
                              if (os_log_type_enabled(v247, type[0]))
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_parameters_get_server_mode";
                                _os_log_impl(&dword_181A37000, v247, v261, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
                              }

                              goto LABEL_569;
                            }

                            v256 = __nw_create_backtrace_string();
                            v247 = __nwlog_obj();
                            v288 = type[0];
                            v257 = os_log_type_enabled(v247, type[0]);
                            if (!v256)
                            {
                              if (v257)
                              {
                                *buf = 136446210;
                                *&buf[4] = "nw_parameters_get_server_mode";
                                _os_log_impl(&dword_181A37000, v247, v288, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
                              }

                              goto LABEL_569;
                            }

                            if (v257)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_parameters_get_server_mode";
                              *&buf[12] = 2082;
                              *&buf[14] = v256;
                              _os_log_impl(&dword_181A37000, v247, v288, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v256);
                          }

LABEL_570:
                          if (v246)
                          {
                            free(v246);
                          }

                          server_mode = 0;
                          v122 = v286;
                          if ((BYTE2(v5[7].output_handler_context) & 2) != 0)
                          {
                            goto LABEL_313;
                          }

                          goto LABEL_303;
                        }
                      }

                      else if (a2)
                      {
                        goto LABEL_262;
                      }

                      v285 = v122;
                      v211 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_set_output_handler_context";
                      v212 = _os_log_send_and_compose_impl();

                      LOBYTE(type[0]) = 16;
                      LOBYTE(__src) = 0;
                      if (__nwlog_fault(v212, type, &__src))
                      {
                        if (LOBYTE(type[0]) == 17)
                        {
                          v213 = __nwlog_obj();
                          v214 = type[0];
                          if (os_log_type_enabled(v213, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_set_output_handler_context";
                            _os_log_impl(&dword_181A37000, v213, v214, "%{public}s called with null protocol", buf, 0xCu);
                          }

LABEL_526:

                          goto LABEL_527;
                        }

                        if (__src != 1)
                        {
                          v213 = __nwlog_obj();
                          v255 = type[0];
                          if (os_log_type_enabled(v213, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_set_output_handler_context";
                            _os_log_impl(&dword_181A37000, v213, v255, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                          }

                          goto LABEL_526;
                        }

                        v249 = __nw_create_backtrace_string();
                        v213 = __nwlog_obj();
                        v282 = type[0];
                        v250 = os_log_type_enabled(v213, type[0]);
                        if (!v249)
                        {
                          if (v250)
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_set_output_handler_context";
                            _os_log_impl(&dword_181A37000, v213, v282, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                          }

                          goto LABEL_526;
                        }

                        if (v250)
                        {
                          *buf = 136446466;
                          *&buf[4] = "__nw_protocol_set_output_handler_context";
                          *&buf[12] = 2082;
                          *&buf[14] = v249;
                          _os_log_impl(&dword_181A37000, v213, v282, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v249);
                      }

LABEL_527:
                      if (v212)
                      {
                        free(v212);
                      }

                      v263 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_get_output_handler";
                      v264 = _os_log_send_and_compose_impl();

                      LOBYTE(type[0]) = 16;
                      LOBYTE(__src) = 0;
                      if (__nwlog_fault(v264, type, &__src))
                      {
                        if (LOBYTE(type[0]) == 17)
                        {
                          v265 = __nwlog_obj();
                          v266 = type[0];
                          if (os_log_type_enabled(v265, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_get_output_handler";
                            _os_log_impl(&dword_181A37000, v265, v266, "%{public}s called with null protocol", buf, 0xCu);
                          }

LABEL_544:

                          goto LABEL_545;
                        }

                        if (__src != 1)
                        {
                          v265 = __nwlog_obj();
                          v269 = type[0];
                          if (os_log_type_enabled(v265, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_get_output_handler";
                            _os_log_impl(&dword_181A37000, v265, v269, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                          }

                          goto LABEL_544;
                        }

                        v267 = __nw_create_backtrace_string();
                        v265 = __nwlog_obj();
                        v283 = type[0];
                        v268 = os_log_type_enabled(v265, type[0]);
                        if (!v267)
                        {
                          if (v268)
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_get_output_handler";
                            _os_log_impl(&dword_181A37000, v265, v283, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                          }

                          goto LABEL_544;
                        }

                        if (v268)
                        {
                          *buf = 136446466;
                          *&buf[4] = "__nw_protocol_get_output_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v267;
                          _os_log_impl(&dword_181A37000, v265, v283, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v267);
                      }

LABEL_545:
                      if (v264)
                      {
                        free(v264);
                      }

                      v270 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_set_output_handler";
                      v271 = _os_log_send_and_compose_impl();

                      LOBYTE(type[0]) = 16;
                      LOBYTE(__src) = 0;
                      if (__nwlog_fault(v271, type, &__src))
                      {
                        if (LOBYTE(type[0]) == 17)
                        {
                          v272 = __nwlog_obj();
                          v273 = type[0];
                          if (os_log_type_enabled(v272, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_set_output_handler";
                            _os_log_impl(&dword_181A37000, v272, v273, "%{public}s called with null protocol", buf, 0xCu);
                          }

LABEL_562:

                          goto LABEL_563;
                        }

                        if (__src != 1)
                        {
                          v272 = __nwlog_obj();
                          v276 = type[0];
                          if (os_log_type_enabled(v272, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_set_output_handler";
                            _os_log_impl(&dword_181A37000, v272, v276, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                          }

                          goto LABEL_562;
                        }

                        v274 = __nw_create_backtrace_string();
                        v272 = __nwlog_obj();
                        v284 = type[0];
                        v275 = os_log_type_enabled(v272, type[0]);
                        if (!v274)
                        {
                          if (v275)
                          {
                            *buf = 136446210;
                            *&buf[4] = "__nw_protocol_set_output_handler";
                            _os_log_impl(&dword_181A37000, v272, v284, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                          }

                          goto LABEL_562;
                        }

                        if (v275)
                        {
                          *buf = 136446466;
                          *&buf[4] = "__nw_protocol_set_output_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v274;
                          _os_log_impl(&dword_181A37000, v272, v284, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v274);
                      }

LABEL_563:
                      if (v271)
                      {
                        free(v271);
                      }

                      v123 = v289;
                      v122 = v285;
                      if (!a1->default_input_handler)
                      {
                        goto LABEL_269;
                      }

                      goto LABEL_270;
                    }

                    type[0] = 0;
                    type[1] = 0;
                    nw_protocol_get_flow_id(a2, type);
                    if (SBYTE5(v5[7].output_handler_context) < 0)
                    {
                      goto LABEL_398;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v137 = gLogObj;
                    v138 = &v5[7].output_handler_context + 7;
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_implementation_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v5 + 511;
                    *&buf[22] = 2080;
                    v297 = " ";
                    v298 = 1042;
                    *v299 = 16;
                    *&v299[4] = 2098;
                    *&v299[6] = type;
                    v134 = _os_log_send_and_compose_impl();

                    LOBYTE(__src) = 16;
                    v293 = 0;
                    if (!__nwlog_fault(v134, &__src, &v293))
                    {
                      goto LABEL_396;
                    }

                    if (__src == 17)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v135 = gLogObj;
                      v139 = __src;
                      if (os_log_type_enabled(v135, __src))
                      {
                        *buf = 136447234;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v138;
                        *&buf[22] = 2080;
                        v297 = " ";
                        v298 = 1042;
                        *v299 = 16;
                        *&v299[4] = 2098;
                        *&v299[6] = type;
                        _os_log_impl(&dword_181A37000, v135, v139, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P", buf, 0x30u);
                      }

                      goto LABEL_395;
                    }

                    if (v293 != 1)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v135 = gLogObj;
                      v177 = __src;
                      if (os_log_type_enabled(v135, __src))
                      {
                        *buf = 136447234;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v138;
                        *&buf[22] = 2080;
                        v297 = " ";
                        v298 = 1042;
                        *v299 = 16;
                        *&v299[4] = 2098;
                        *&v299[6] = type;
                        _os_log_impl(&dword_181A37000, v135, v177, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P, backtrace limit exceeded", buf, 0x30u);
                      }

                      goto LABEL_395;
                    }

                    v169 = __nw_create_backtrace_string();
                    if (!v169)
                    {
                      v135 = __nwlog_obj();
                      v189 = __src;
                      if (os_log_type_enabled(v135, __src))
                      {
                        *buf = 136447234;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v138;
                        *&buf[22] = 2080;
                        v297 = " ";
                        v298 = 1042;
                        *v299 = 16;
                        *&v299[4] = 2098;
                        *&v299[6] = type;
                        _os_log_impl(&dword_181A37000, v135, v189, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P, no backtrace", buf, 0x30u);
                      }

                      goto LABEL_395;
                    }

                    v145 = v169;
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v146 = gLogObj;
                    v170 = __src;
                    if (os_log_type_enabled(v146, __src))
                    {
                      *buf = 136447490;
                      *&buf[4] = "nw_protocol_implementation_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v138;
                      *&buf[22] = 2080;
                      v297 = " ";
                      v298 = 1042;
                      *v299 = 16;
                      *&v299[4] = 2098;
                      *&v299[6] = type;
                      *&v299[14] = 2082;
                      *&v299[16] = v145;
                      _os_log_impl(&dword_181A37000, v146, v170, "%{public}s %{public}s%sMultiplexing protocol already has input handler registered for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x3Au);
                    }

LABEL_328:

                    free(v145);
                    if (!v134)
                    {
                      goto LABEL_398;
                    }

                    goto LABEL_397;
                  }

                  v131 = SBYTE5(v5[7].output_handler_context);
                  if (a1->default_input_handler)
                  {
                    if (v131 < 0)
                    {
                      goto LABEL_398;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v132 = gLogObj;
                    v133 = &v5[7].output_handler_context + 7;
                    *buf = 136446722;
                    *&buf[4] = "nw_protocol_implementation_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v5 + 511;
                    *&buf[22] = 2080;
                    v297 = " ";
                    v134 = _os_log_send_and_compose_impl();

                    LOBYTE(type[0]) = 16;
                    LOBYTE(__src) = 0;
                    if (!__nwlog_fault(v134, type, &__src))
                    {
                      goto LABEL_396;
                    }

                    if (LOBYTE(type[0]) == 17)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v135 = gLogObj;
                      v136 = type[0];
                      if (os_log_type_enabled(v135, type[0]))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v133;
                        *&buf[22] = 2080;
                        v297 = " ";
                        _os_log_impl(&dword_181A37000, v135, v136, "%{public}s %{public}s%sProtocol instance already has default input handler", buf, 0x20u);
                      }

                      goto LABEL_395;
                    }

                    if (__src != 1)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v135 = gLogObj;
                      v174 = type[0];
                      if (os_log_type_enabled(v135, type[0]))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v133;
                        *&buf[22] = 2080;
                        v297 = " ";
                        _os_log_impl(&dword_181A37000, v135, v174, "%{public}s %{public}s%sProtocol instance already has default input handler, backtrace limit exceeded", buf, 0x20u);
                      }

                      goto LABEL_395;
                    }

                    v144 = __nw_create_backtrace_string();
                    if (!v144)
                    {
                      v135 = __nwlog_obj();
                      v185 = type[0];
                      if (os_log_type_enabled(v135, type[0]))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v133;
                        *&buf[22] = 2080;
                        v297 = " ";
                        _os_log_impl(&dword_181A37000, v135, v185, "%{public}s %{public}s%sProtocol instance already has default input handler, no backtrace", buf, 0x20u);
                      }

                      goto LABEL_395;
                    }

                    v145 = v144;
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v146 = gLogObj;
                    v147 = type[0];
                    if (os_log_type_enabled(v146, type[0]))
                    {
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_implementation_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v133;
                      *&buf[22] = 2080;
                      v297 = " ";
                      v298 = 2082;
                      *v299 = v145;
                      _os_log_impl(&dword_181A37000, v146, v147, "%{public}s %{public}s%sProtocol instance already has default input handler, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    goto LABEL_328;
                  }

                  if ((v131 & 0x80000000) == 0 && gLogDatapath == 1)
                  {
                    v215 = __nwlog_obj();
                    if (os_log_type_enabled(v215, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_protocol_implementation_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v5 + 511;
                      *&buf[22] = 2080;
                      v297 = " ";
                      _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sProtocol add input handler", buf, 0x20u);
                    }

                    v140 = a1->default_input_handler;
                    if (v140 != a2)
                    {
                      goto LABEL_289;
                    }
                  }

                  else
                  {
                    v140 = 0;
                    if (a2)
                    {
LABEL_289:
                      nw_protocol_release(v140);
                      a1->default_input_handler = a2;
                      if (a2)
                      {
                        v141 = *(a2 + 40);
                        v142 = a2;
                        if (v141 == &nw_protocol_ref_counted_handle || v141 == &nw_protocol_ref_counted_additional_handle && (v142 = *(a2 + 64)) != 0)
                        {
                          v143 = v142[1].callbacks;
                          if (v143)
                          {
                            v142[1].callbacks = (&v143->add_input_handler + 1);
                          }
                        }

                        nw_protocol_set_flow_id_from_protocol(a1, a2);
                        goto LABEL_438;
                      }

                      nw_protocol_set_flow_id_from_protocol(a1, 0);
                      goto LABEL_348;
                    }
                  }

                  nw_protocol_set_flow_id_from_protocol(a1, a2);
                  if (a2)
                  {
LABEL_438:
                    if (!*(a2 + 32))
                    {
                      *(a2 + 32) = a1;
                      v225 = a1->handle;
                      v226 = a1;
                      if (v225 == &nw_protocol_ref_counted_handle || v225 == &nw_protocol_ref_counted_additional_handle && (v226 = *a1[1].flow_id) != 0)
                      {
                        v227 = v226[1].callbacks;
                        if (v227)
                        {
                          v226[1].callbacks = (&v227->add_input_handler + 1);
                        }
                      }
                    }

                    goto LABEL_439;
                  }

LABEL_348:
                  v178 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "__nw_protocol_get_output_handler";
                  v179 = _os_log_send_and_compose_impl();

                  LOBYTE(type[0]) = 16;
                  LOBYTE(__src) = 0;
                  if (!__nwlog_fault(v179, type, &__src))
                  {
                    goto LABEL_402;
                  }

                  if (LOBYTE(type[0]) == 17)
                  {
                    v180 = __nwlog_obj();
                    v181 = type[0];
                    if (os_log_type_enabled(v180, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_get_output_handler";
                      _os_log_impl(&dword_181A37000, v180, v181, "%{public}s called with null protocol", buf, 0xCu);
                    }
                  }

                  else if (__src == 1)
                  {
                    v186 = __nw_create_backtrace_string();
                    v180 = __nwlog_obj();
                    v187 = type[0];
                    v188 = os_log_type_enabled(v180, type[0]);
                    if (v186)
                    {
                      if (v188)
                      {
                        *buf = 136446466;
                        *&buf[4] = "__nw_protocol_get_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v186;
                        _os_log_impl(&dword_181A37000, v180, v187, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v186);
LABEL_402:
                      if (v179)
                      {
                        free(v179);
                      }

                      v199 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_set_output_handler";
                      v200 = _os_log_send_and_compose_impl();

                      LOBYTE(type[0]) = 16;
                      LOBYTE(__src) = 0;
                      if (!__nwlog_fault(v200, type, &__src))
                      {
                        goto LABEL_420;
                      }

                      if (LOBYTE(type[0]) == 17)
                      {
                        v201 = __nwlog_obj();
                        v202 = type[0];
                        if (os_log_type_enabled(v201, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "__nw_protocol_set_output_handler";
                          _os_log_impl(&dword_181A37000, v201, v202, "%{public}s called with null protocol", buf, 0xCu);
                        }
                      }

                      else if (__src == 1)
                      {
                        v203 = __nw_create_backtrace_string();
                        v201 = __nwlog_obj();
                        v204 = type[0];
                        v205 = os_log_type_enabled(v201, type[0]);
                        if (v203)
                        {
                          if (v205)
                          {
                            *buf = 136446466;
                            *&buf[4] = "__nw_protocol_set_output_handler";
                            *&buf[12] = 2082;
                            *&buf[14] = v203;
                            _os_log_impl(&dword_181A37000, v201, v204, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v203);
                          goto LABEL_420;
                        }

                        if (v205)
                        {
                          *buf = 136446210;
                          *&buf[4] = "__nw_protocol_set_output_handler";
                          _os_log_impl(&dword_181A37000, v201, v204, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v201 = __nwlog_obj();
                        v206 = type[0];
                        if (os_log_type_enabled(v201, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "__nw_protocol_set_output_handler";
                          _os_log_impl(&dword_181A37000, v201, v206, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                        }
                      }

LABEL_420:
                      if (v200)
                      {
                        free(v200);
                      }

LABEL_439:
                      v216 = v57;
                      v217 = nw_protocol_instance_copy_path(v291, -1);
                      v218 = *v5[6].flow_id;
                      *v5[6].flow_id = v217;

                      objc_storeStrong(&v5[2].callbacks, v53);
                      if ((*(v5[1].handle + 192) & 0x20) != 0 && a2 != 0)
                      {
                        v220 = *(a2 + 24);
                        if (v220)
                        {
                          v221 = v220->supports_external_data;
                          if (v221)
                          {
                            v222 = *(a2 + 40);
                            v223 = a2;
                            if (v222 == &nw_protocol_ref_counted_handle || v222 == &nw_protocol_ref_counted_additional_handle && (v223 = *(a2 + 64)) != 0)
                            {
                              v228 = v223[1].callbacks;
                              if (v228)
                              {
                                v223[1].callbacks = (&v228->add_input_handler + 1);
                              }

                              v224 = 0;
                              *buf = a2;
                              buf[8] |= 1u;
                            }

                            else
                            {
                              *buf = a2;
                              buf[8] &= ~1u;
                              v224 = 1;
                            }

                            v229 = v221(a2);
                            if ((v224 & 1) == 0)
                            {
                              nw::release_if_needed<nw_protocol *>(buf);
                            }

                            if (v229)
                            {
                              v230 = 2;
                            }

                            else
                            {
                              v230 = 0;
                            }

                            BYTE3(v5[7].output_handler_context) = BYTE3(v5[7].output_handler_context) & 0xFD | v230;
                          }
                        }
                      }

                      if (v216)
                      {
LABEL_464:
                        v231 = 0;
                        if ((BYTE2(v5[7].output_handler_context) & 2) != 0)
                        {
                          goto LABEL_470;
                        }

LABEL_468:
                        if (*(*(v5[1].handle + 10) + 40))
                        {
                          *buf = *a1->flow_id;
                          v232 = nw_path_copy_flow_registration(v5[3].callbacks, buf);
                          v233 = v5[5].output_handler_context;
                          v5[5].output_handler_context = v232;

                          (*(*(v5[1].handle + 10) + 40))(v291, v231);
                          BYTE2(v5[7].output_handler_context) |= 2u;
                        }

LABEL_470:
                        if (!nw_protocol_instance_supports_multipath(v291) || (v234 = *&v5[2].flow_id[8]) == 0 || (v235 = v234, v236 = _nw_endpoint_get_type(v235), v235, v236 != 1) || nw_endpoint_get_address_family(*&v5[2].flow_id[8]) != 30 || !nw_path_is_eligible_for_CrazyIvan46(*v5[6].flow_id) || !nw_path_has_nat64_prefixes(*v5[6].flow_id))
                        {
LABEL_486:
                          v47 = 1;
                          goto LABEL_487;
                        }

                        v237 = nw_path_nat64_prefixes(*v5[6].flow_id);
                        memset(buf, 0, sizeof(buf));
                        LODWORD(v297) = 0;
                        if (nw_endpoint_fillout_v6_address(*&v5[2].flow_id[8], buf))
                        {
                          type[0] = 0;
                          type[1] = 0;
                          v238 = v237[4];
                          if (v238 && (v292 = 0, LODWORD(type[0]) = v238, memcpy(type + 4, v237, v238), nw_nat64_extract_v4(type, &buf[8], &v292)) || (v239 = v237[9], v239) && (v292 = 0, LODWORD(type[0]) = v239, memcpy(type + 4, v237 + 5, v239), (nw_nat64_extract_v4(type, &buf[8], &v292) & 1) != 0) || (v240 = v237[14], v240) && (v292 = 0, LODWORD(type[0]) = v240, memcpy(type + 4, v237 + 10, v240), (nw_nat64_extract_v4(type, &buf[8], &v292) & 1) != 0) || (v241 = v237[19], v241) && (v292 = 0, LODWORD(type[0]) = v241, memcpy(type + 4, v237 + 15, v241), (nw_nat64_extract_v4(type, &buf[8], &v292) & 1) != 0))
                          {
                            LOWORD(__src) = 528;
                            WORD1(__src) = *&buf[2];
                            DWORD1(__src) = v292;
                            *(&__src + 1) = 0;
                            v242 = _nw_endpoint_create_address(&__src);
                            v243 = *v5[7].flow_id;
                            *v5[7].flow_id = v242;
                          }

                          goto LABEL_486;
                        }

                        v277 = __nwlog_obj();
                        LODWORD(type[0]) = 136446210;
                        *(type + 4) = "nw_protocol_implementation_add_input_handler";
                        v134 = _os_log_send_and_compose_impl();

                        LOBYTE(__src) = 16;
                        LOBYTE(v292) = 0;
                        if (__nwlog_fault(v134, &__src, &v292))
                        {
                          if (__src == 17)
                          {
                            v135 = __nwlog_obj();
                            v278 = __src;
                            if (os_log_type_enabled(v135, __src))
                            {
                              LODWORD(type[0]) = 136446210;
                              *(type + 4) = "nw_protocol_implementation_add_input_handler";
                              _os_log_impl(&dword_181A37000, v135, v278, "%{public}s called with null success", type, 0xCu);
                            }

LABEL_395:

                            goto LABEL_396;
                          }

                          if (v292 != 1)
                          {
                            v135 = __nwlog_obj();
                            v281 = __src;
                            if (os_log_type_enabled(v135, __src))
                            {
                              LODWORD(type[0]) = 136446210;
                              *(type + 4) = "nw_protocol_implementation_add_input_handler";
                              _os_log_impl(&dword_181A37000, v135, v281, "%{public}s called with null success, backtrace limit exceeded", type, 0xCu);
                            }

                            goto LABEL_395;
                          }

                          v182 = __nw_create_backtrace_string();
                          v135 = __nwlog_obj();
                          v279 = __src;
                          v280 = os_log_type_enabled(v135, __src);
                          if (!v182)
                          {
                            if (v280)
                            {
                              LODWORD(type[0]) = 136446210;
                              *(type + 4) = "nw_protocol_implementation_add_input_handler";
                              _os_log_impl(&dword_181A37000, v135, v279, "%{public}s called with null success, no backtrace", type, 0xCu);
                            }

                            goto LABEL_395;
                          }

                          if (v280)
                          {
                            LODWORD(type[0]) = 136446466;
                            *(type + 4) = "nw_protocol_implementation_add_input_handler";
                            WORD2(type[1]) = 2082;
                            *(&type[1] + 6) = v182;
                            _os_log_impl(&dword_181A37000, v135, v279, "%{public}s called with null success, dumping backtrace:%{public}s", type, 0x16u);
                          }

LABEL_357:

                          free(v182);
                          if (!v134)
                          {
                            goto LABEL_398;
                          }

                          goto LABEL_397;
                        }

LABEL_396:
                        if (v134)
                        {
LABEL_397:
                          free(v134);
                        }

LABEL_398:
                        v47 = 0;
LABEL_487:

                        v10 = v291;
                        goto LABEL_488;
                      }

                      if (v34)
                      {
                        v231 = _nw_parameters_get_server_mode(v34);
                        if ((BYTE2(v5[7].output_handler_context) & 2) != 0)
                        {
                          goto LABEL_470;
                        }

                        goto LABEL_468;
                      }

                      v251 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_parameters_get_server_mode";
                      v252 = _os_log_send_and_compose_impl();

                      LOBYTE(type[0]) = 16;
                      LOBYTE(__src) = 0;
                      if (__nwlog_fault(v252, type, &__src))
                      {
                        if (LOBYTE(type[0]) == 17)
                        {
                          v253 = __nwlog_obj();
                          v254 = type[0];
                          if (os_log_type_enabled(v253, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_parameters_get_server_mode";
                            _os_log_impl(&dword_181A37000, v253, v254, "%{public}s called with null parameters", buf, 0xCu);
                          }
                        }

                        else if (__src == 1)
                        {
                          v258 = __nw_create_backtrace_string();
                          v253 = __nwlog_obj();
                          v259 = type[0];
                          v260 = os_log_type_enabled(v253, type[0]);
                          if (v258)
                          {
                            if (v260)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_parameters_get_server_mode";
                              *&buf[12] = 2082;
                              *&buf[14] = v258;
                              _os_log_impl(&dword_181A37000, v253, v259, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v258);
                            goto LABEL_577;
                          }

                          if (v260)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_parameters_get_server_mode";
                            _os_log_impl(&dword_181A37000, v253, v259, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v253 = __nwlog_obj();
                          v262 = type[0];
                          if (os_log_type_enabled(v253, type[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_parameters_get_server_mode";
                            _os_log_impl(&dword_181A37000, v253, v262, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
                          }
                        }
                      }

LABEL_577:
                      if (v252)
                      {
                        free(v252);
                      }

                      goto LABEL_464;
                    }

                    if (v188)
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_get_output_handler";
                      _os_log_impl(&dword_181A37000, v180, v187, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v180 = __nwlog_obj();
                    v198 = type[0];
                    if (os_log_type_enabled(v180, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_get_output_handler";
                      _os_log_impl(&dword_181A37000, v180, v198, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                    }
                  }

                  goto LABEL_402;
                }

                v35 = _nw_parameters_copy_context(v34);
                if (!nw_context_shares_workloop(v5[3].callbacks, v35))
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v36 = gLogObj;
                  v37 = v5[3].callbacks;
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_implementation_add_input_handler";
                  *&buf[12] = 2048;
                  *&buf[14] = a2;
                  *&buf[22] = 2112;
                  v297 = v35;
                  v298 = 2112;
                  *v299 = v37;
                  v38 = _os_log_send_and_compose_impl();

                  LOBYTE(type[0]) = 16;
                  LOBYTE(__src) = 0;
                  if (__nwlog_fault(v38, type, &__src))
                  {
                    if (LOBYTE(type[0]) == 17)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v39 = gLogObj;
                      v40 = type[0];
                      if (os_log_type_enabled(v39, type[0]))
                      {
                        v41 = v5[3].callbacks;
                        *buf = 136446978;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2048;
                        *&buf[14] = a2;
                        *&buf[22] = 2112;
                        v297 = v35;
                        v298 = 2112;
                        *v299 = v41;
                        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@", buf, 0x2Au);
                      }
                    }

                    else if (__src == 1)
                    {
                      v43 = __nw_create_backtrace_string();
                      v39 = __nwlog_obj();
                      v44 = type[0];
                      v45 = os_log_type_enabled(v39, type[0]);
                      if (v43)
                      {
                        if (v45)
                        {
                          v46 = v5[3].callbacks;
                          *buf = 136447234;
                          *&buf[4] = "nw_protocol_implementation_add_input_handler";
                          *&buf[12] = 2048;
                          *&buf[14] = a2;
                          *&buf[22] = 2112;
                          v297 = v35;
                          v298 = 2112;
                          *v299 = v46;
                          *&v299[8] = 2082;
                          *&v299[10] = v43;
                          _os_log_impl(&dword_181A37000, v39, v44, "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v43);
                        if (!v38)
                        {
                          goto LABEL_90;
                        }

                        goto LABEL_89;
                      }

                      if (v45)
                      {
                        v50 = v5[3].callbacks;
                        *buf = 136446978;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2048;
                        *&buf[14] = a2;
                        *&buf[22] = 2112;
                        v297 = v35;
                        v298 = 2112;
                        *v299 = v50;
                        _os_log_impl(&dword_181A37000, v39, v44, "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, no backtrace", buf, 0x2Au);
                      }
                    }

                    else
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v39 = gLogObj;
                      v48 = type[0];
                      if (os_log_type_enabled(v39, type[0]))
                      {
                        v49 = v5[3].callbacks;
                        *buf = 136446978;
                        *&buf[4] = "nw_protocol_implementation_add_input_handler";
                        *&buf[12] = 2048;
                        *&buf[14] = a2;
                        *&buf[22] = 2112;
                        v297 = v35;
                        v298 = 2112;
                        *v299 = v49;
                        _os_log_impl(&dword_181A37000, v39, v48, "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, backtrace limit exceeded", buf, 0x2Au);
                      }
                    }
                  }

                  if (v38)
                  {
LABEL_89:
                    free(v38);
                  }
                }

LABEL_90:

                goto LABEL_91;
              }

LABEL_249:
              v53 = 0;
              v57 = 1;
              goto LABEL_250;
            }

LABEL_51:
            nw::release_if_needed<nw_protocol *>(type);
            goto LABEL_52;
          }

          v78 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_output_handler";
          v79 = _os_log_send_and_compose_impl();

          LOBYTE(type[0]) = 16;
          LOBYTE(__src) = 0;
          if (__nwlog_fault(v79, type, &__src))
          {
            if (LOBYTE(type[0]) == 17)
            {
              v80 = __nwlog_obj();
              v81 = type[0];
              if (os_log_type_enabled(v80, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_get_output_handler";
                _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null protocol", buf, 0xCu);
              }

LABEL_209:

              goto LABEL_210;
            }

            if (__src != 1)
            {
              v80 = __nwlog_obj();
              v100 = type[0];
              if (os_log_type_enabled(v80, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_get_output_handler";
                _os_log_impl(&dword_181A37000, v80, v100, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_209;
            }

            v93 = __nw_create_backtrace_string();
            v80 = __nwlog_obj();
            v94 = type[0];
            v95 = os_log_type_enabled(v80, type[0]);
            if (!v93)
            {
              if (v95)
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_get_output_handler";
                _os_log_impl(&dword_181A37000, v80, v94, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
              }

              goto LABEL_209;
            }

            if (v95)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_get_output_handler";
              *&buf[12] = 2082;
              *&buf[14] = v93;
              _os_log_impl(&dword_181A37000, v80, v94, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v93);
          }

LABEL_210:
          if (v79)
          {
            free(v79);
          }

          v102 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_set_output_handler";
          v103 = _os_log_send_and_compose_impl();

          LOBYTE(type[0]) = 16;
          LOBYTE(__src) = 0;
          if (__nwlog_fault(v103, type, &__src))
          {
            if (LOBYTE(type[0]) == 17)
            {
              v104 = __nwlog_obj();
              v105 = type[0];
              if (os_log_type_enabled(v104, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_set_output_handler";
                _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null protocol", buf, 0xCu);
              }

LABEL_227:

              goto LABEL_228;
            }

            if (__src != 1)
            {
              v104 = __nwlog_obj();
              v109 = type[0];
              if (os_log_type_enabled(v104, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_set_output_handler";
                _os_log_impl(&dword_181A37000, v104, v109, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_227;
            }

            v106 = __nw_create_backtrace_string();
            v104 = __nwlog_obj();
            v107 = type[0];
            v108 = os_log_type_enabled(v104, type[0]);
            if (!v106)
            {
              if (v108)
              {
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_set_output_handler";
                _os_log_impl(&dword_181A37000, v104, v107, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
              }

              goto LABEL_227;
            }

            if (v108)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_set_output_handler";
              *&buf[12] = 2082;
              *&buf[14] = v106;
              _os_log_impl(&dword_181A37000, v104, v107, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v106);
          }

LABEL_228:
          if (v103)
          {
            free(v103);
          }

          v110 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v111 = _os_log_send_and_compose_impl();

          LOBYTE(type[0]) = 16;
          LOBYTE(__src) = 0;
          if (!__nwlog_fault(v111, type, &__src))
          {
            goto LABEL_246;
          }

          if (LOBYTE(type[0]) == 17)
          {
            v112 = __nwlog_obj();
            v113 = type[0];
            if (os_log_type_enabled(v112, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_parameters";
              _os_log_impl(&dword_181A37000, v112, v113, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (__src == 1)
          {
            v114 = __nw_create_backtrace_string();
            v112 = __nwlog_obj();
            v115 = type[0];
            v116 = os_log_type_enabled(v112, type[0]);
            if (v114)
            {
              if (v116)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_protocol_get_parameters";
                *&buf[12] = 2082;
                *&buf[14] = v114;
                _os_log_impl(&dword_181A37000, v112, v115, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v114);
              goto LABEL_246;
            }

            if (v116)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_parameters";
              _os_log_impl(&dword_181A37000, v112, v115, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v112 = __nwlog_obj();
            v117 = type[0];
            if (os_log_type_enabled(v112, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_parameters";
              _os_log_impl(&dword_181A37000, v112, v117, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_246:
          if (v111)
          {
            free(v111);
          }

          v34 = 0;
          goto LABEL_249;
        }

        if (SBYTE5(v5[7].output_handler_context) < 0)
        {
LABEL_75:
          v47 = 0;
LABEL_488:

          return v47;
        }

        v15 = v10;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = &v5[7].output_handler_context + 7;
        *buf = 136446978;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v5 + 511;
        *&buf[22] = 2080;
        v297 = " ";
        v298 = 2048;
        *v299 = a1;
        v18 = _os_log_send_and_compose_impl();

        LOBYTE(type[0]) = 16;
        LOBYTE(__src) = 0;
        if (__nwlog_fault(v18, type, &__src))
        {
          if (LOBYTE(type[0]) == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type[0];
            if (os_log_type_enabled(v19, type[0]))
            {
              *buf = 136446978;
              *&buf[4] = "nw_protocol_implementation_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v17;
              *&buf[22] = 2080;
              v297 = " ";
              v298 = 2048;
              *v299 = a1;
              _os_log_impl(&dword_181A37000, v19, v20, "%{public}s %{public}s%sCannot add input handler %p to itself", buf, 0x2Au);
            }
          }

          else if (__src == 1)
          {
            v27 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v28 = type[0];
            v29 = os_log_type_enabled(v19, type[0]);
            if (v27)
            {
              if (v29)
              {
                *buf = 136447234;
                *&buf[4] = "nw_protocol_implementation_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v17;
                *&buf[22] = 2080;
                v297 = " ";
                v298 = 2048;
                *v299 = a1;
                *&v299[8] = 2082;
                *&v299[10] = v27;
                _os_log_impl(&dword_181A37000, v19, v28, "%{public}s %{public}s%sCannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v27);
              if (!v18)
              {
                goto LABEL_81;
              }

              goto LABEL_80;
            }

            if (v29)
            {
              *buf = 136446978;
              *&buf[4] = "nw_protocol_implementation_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v17;
              *&buf[22] = 2080;
              v297 = " ";
              v298 = 2048;
              *v299 = a1;
              _os_log_impl(&dword_181A37000, v19, v28, "%{public}s %{public}s%sCannot add input handler %p to itself, no backtrace", buf, 0x2Au);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v42 = type[0];
            if (os_log_type_enabled(v19, type[0]))
            {
              *buf = 136446978;
              *&buf[4] = "nw_protocol_implementation_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v17;
              *&buf[22] = 2080;
              v297 = " ";
              v298 = 2048;
              *v299 = a1;
              _os_log_impl(&dword_181A37000, v19, v42, "%{public}s %{public}s%sCannot add input handler %p to itself, backtrace limit exceeded", buf, 0x2Au);
            }
          }
        }

        if (!v18)
        {
LABEL_81:
          v47 = 0;
          v10 = v15;
          goto LABEL_488;
        }

LABEL_80:
        free(v18);
        goto LABEL_81;
      }

      v68 = v10;
      v73 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_add_input_handler";
      v70 = _os_log_send_and_compose_impl();

      LOBYTE(type[0]) = 16;
      LOBYTE(__src) = 0;
      if (__nwlog_fault(v70, type, &__src))
      {
        if (LOBYTE(type[0]) == 17)
        {
          v71 = __nwlog_obj();
          v74 = type[0];
          if (os_log_type_enabled(v71, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_add_input_handler";
            _os_log_impl(&dword_181A37000, v71, v74, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }
        }

        else if (__src == 1)
        {
          v89 = __nw_create_backtrace_string();
          v71 = __nwlog_obj();
          v90 = type[0];
          v91 = os_log_type_enabled(v71, type[0]);
          if (v89)
          {
            if (v91)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_implementation_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v89;
              _os_log_impl(&dword_181A37000, v71, v90, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v89);
            if (!v70)
            {
              goto LABEL_206;
            }

            goto LABEL_205;
          }

          if (v91)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_add_input_handler";
            _os_log_impl(&dword_181A37000, v71, v90, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v71 = __nwlog_obj();
          v99 = type[0];
          if (os_log_type_enabled(v71, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_add_input_handler";
            _os_log_impl(&dword_181A37000, v71, v99, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_203;
      }

LABEL_204:
      if (!v70)
      {
LABEL_206:
        v47 = 0;
        v10 = v68;
        goto LABEL_488;
      }

LABEL_205:
      free(v70);
      goto LABEL_206;
    }

    v68 = v10;
    v69 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_add_input_handler";
    v70 = _os_log_send_and_compose_impl();

    LOBYTE(type[0]) = 16;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v70, type, &__src))
    {
      goto LABEL_204;
    }

    if (LOBYTE(type[0]) == 17)
    {
      v71 = __nwlog_obj();
      v72 = type[0];
      if (os_log_type_enabled(v71, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (__src == 1)
    {
      v86 = __nw_create_backtrace_string();
      v71 = __nwlog_obj();
      v87 = type[0];
      v88 = os_log_type_enabled(v71, type[0]);
      if (v86)
      {
        if (v88)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v86;
          _os_log_impl(&dword_181A37000, v71, v87, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v86);
        goto LABEL_204;
      }

      if (v88)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        _os_log_impl(&dword_181A37000, v71, v87, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v71 = __nwlog_obj();
      v98 = type[0];
      if (os_log_type_enabled(v71, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        _os_log_impl(&dword_181A37000, v71, v98, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_203:

    goto LABEL_204;
  }

  v58 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_add_input_handler";
  v59 = _os_log_send_and_compose_impl();

  LOBYTE(type[0]) = 16;
  LOBYTE(__src) = 0;
  if (__nwlog_fault(v59, type, &__src))
  {
    if (LOBYTE(type[0]) == 17)
    {
      v60 = __nwlog_obj();
      v61 = type[0];
      if (os_log_type_enabled(v60, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (__src == 1)
    {
      v75 = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v76 = type[0];
      v77 = os_log_type_enabled(v60, type[0]);
      if (v75)
      {
        if (v77)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v75;
          _os_log_impl(&dword_181A37000, v60, v76, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v75);
        goto LABEL_186;
      }

      if (v77)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        _os_log_impl(&dword_181A37000, v60, v76, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v60 = __nwlog_obj();
      v92 = type[0];
      if (os_log_type_enabled(v60, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_add_input_handler";
        _os_log_impl(&dword_181A37000, v60, v92, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_186:
  if (v59)
  {
    free(v59);
  }

  return 0;
}

uint64_t ___ZL25nw_resolver_apply_serviceP22NWConcrete_nw_resolverttbt_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (nw_endpoint_get_priority(v4) || nw_endpoint_get_type(v4) != nw_endpoint_type_address)
  {
    goto LABEL_14;
  }

  if (*(a1 + 54) == 1)
  {
    nw_endpoint_set_priority(v4, *(a1 + 48));
    nw_endpoint_set_weight(v4, *(a1 + 50));
    v5 = *(a1 + 32);
    if (v5 && v4)
    {
      _nw_array_append(v5, v4);
    }

    goto LABEL_14;
  }

  memset(__dst, 0, sizeof(__dst));
  memset(__src, 0, sizeof(__src));
  v21 = 0;
  if (nw_endpoint_fillout_v4v6_address(v4, __src))
  {
    memcpy(__dst, __src, LOBYTE(__src[0]));
    WORD1(__dst[0]) = bswap32(*(a1 + 52)) >> 16;
    address = _nw_endpoint_create_address(__dst);
    nw_endpoint_set_priority(address, *(a1 + 48));
    nw_endpoint_set_weight(address, *(a1 + 50));
    nw_endpoint_set_parent_endpoint(address, *(*(a1 + 40) + 24), 0);
    v7 = nw_endpoint_copy_cname_array(v4);
    if (v7)
    {
      nw_endpoint_set_cname_array(address, v7);
    }

    v8 = *(a1 + 32);
    if (v8 && address)
    {
      _nw_array_append(v8, address);
    }

    goto LABEL_14;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_resolver_apply_service_block_invoke";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v23 = "nw_resolver_apply_service_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null success", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v23 = "nw_resolver_apply_service_block_invoke";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_31;
      }

      if (v16)
      {
        *buf = 136446210;
        v23 = "nw_resolver_apply_service_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null success, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v23 = "nw_resolver_apply_service_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null success, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_31:
  if (v11)
  {
    free(v11);
  }

LABEL_14:

  return 1;
}

uint64_t ___ZL34nw_resolver_process_service_resultP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_servicePU38objcproto27OS_dnssd_getaddrinfo_result8NSObject_block_invoke_237(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
    v28 = _os_log_send_and_compose_impl();

    LOBYTE(applier[0]) = 16;
    LOBYTE(v41[0]) = 0;
    if (!__nwlog_fault(v28, applier, v41))
    {
      goto LABEL_68;
    }

    if (LOBYTE(applier[0]) == 17)
    {
      v29 = __nwlog_obj();
      v30 = applier[0];
      if (os_log_type_enabled(v29, applier[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (LOBYTE(v41[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v34 = applier[0];
      v35 = os_log_type_enabled(v29, applier[0]);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v28)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v39 = applier[0];
      if (os_log_type_enabled(v29, applier[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
        _os_log_impl(&dword_181A37000, v29, v39, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_67;
  }

  if (a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__6340;
    *&buf[32] = __Block_byref_object_dispose__6341;
    *&buf[40] = 0;
    v6 = *(v4 + 2);
    v7 = nw_protocol_boringssl_copy_definition();
    v8 = nw_parameters_copy_protocol_options_for_definition(v6, v7);

    if (v8)
    {
      v9 = v8;
      v10 = sec_protocol_options_copy_transport_specific_application_protocol();
      v11 = v10;
      if (v10 && object_getClass(v10) == MEMORY[0x1E69E9E50])
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = ___ZL34nw_resolver_copy_protocol_for_alpnP22NWConcrete_nw_resolverPKc_block_invoke;
        applier[3] = &unk_1E6A38718;
        applier[4] = buf;
        applier[5] = a2;
        xpc_array_apply(v11, applier);
      }

      v12 = *(*&buf[8] + 40);
      if (v12)
      {
        v13 = v12;

LABEL_16:
        _Block_object_dispose(buf, 8);

        goto LABEL_17;
      }

      v14 = sec_protocol_options_copy_transport_specific_application_protocol();
      v15 = v14;
      if (v14 && object_getClass(v14) == MEMORY[0x1E69E9E50])
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = ___ZL34nw_resolver_copy_protocol_for_alpnP22NWConcrete_nw_resolverPKc_block_invoke_2;
        v41[3] = &unk_1E6A38718;
        v41[4] = buf;
        v41[5] = a2;
        xpc_array_apply(v15, v41);
      }

      v16 = *(*&buf[8] + 40);
      if (v16)
      {
        v13 = v16;

        goto LABEL_16;
      }
    }

    v13 = *(*&buf[8] + 40);
    goto LABEL_16;
  }

  v31 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
  v28 = _os_log_send_and_compose_impl();

  LOBYTE(applier[0]) = 16;
  LOBYTE(v41[0]) = 0;
  if (__nwlog_fault(v28, applier, v41))
  {
    if (LOBYTE(applier[0]) == 17)
    {
      v29 = __nwlog_obj();
      v32 = applier[0];
      if (os_log_type_enabled(v29, applier[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null alpn", buf, 0xCu);
      }

LABEL_67:

      goto LABEL_68;
    }

    if (LOBYTE(v41[0]) != 1)
    {
      v29 = __nwlog_obj();
      v40 = applier[0];
      if (os_log_type_enabled(v29, applier[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
        _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null alpn, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_67;
    }

    v36 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v37 = applier[0];
    v38 = os_log_type_enabled(v29, applier[0]);
    if (!v36)
    {
      if (v38)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
        _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null alpn, no backtrace", buf, 0xCu);
      }

      goto LABEL_67;
    }

    if (v38)
    {
      *buf = 136446466;
      *&buf[4] = "nw_resolver_copy_protocol_for_alpn";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null alpn, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v36);
  }

LABEL_68:
  if (v28)
  {
LABEL_69:
    free(v28);
  }

LABEL_70:
  v13 = 0;
LABEL_17:

  v17 = *(a1 + 32);
  if (v17)
  {
    if ((*(v17 + 370) & 0x20) != 0)
    {
      goto LABEL_30;
    }

    if (*(v17 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      v19 = *(a1 + 32) + 280;
      *buf = 136446978;
      *&buf[4] = "nw_resolver_process_service_result_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v19;
      *&buf[22] = 2082;
      *&buf[24] = a2;
      *&buf[32] = 2114;
      *&buf[34] = v13;
      v20 = "%{public}s [C%{public}s] ALPN: %{public}s maps to %{public}@";
      v21 = v18;
      v22 = 42;
      goto LABEL_28;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = *(*(a1 + 32) + 364);
      *buf = 136446978;
      *&buf[4] = "nw_resolver_process_service_result_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v23;
      *&buf[18] = 2082;
      *&buf[20] = a2;
      *&buf[28] = 2114;
      *&buf[30] = v13;
      v20 = "%{public}s [R%u] ALPN: %{public}s maps to %{public}@";
      v21 = v18;
      v22 = 38;
      goto LABEL_28;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      *&buf[4] = "nw_resolver_process_service_result_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = a2;
      *&buf[22] = 2114;
      *&buf[24] = v13;
      v20 = "%{public}s ALPN: %{public}s maps to %{public}@";
      v21 = v18;
      v22 = 32;
LABEL_28:
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
    }
  }

LABEL_29:

LABEL_30:
  if (v13)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    if (!v25)
    {
      v25 = v24[3];
    }

    nw_resolver_update_client_alternative(v24, v25, v13);
  }

  return 1;
}

void sub_181C9AFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_resolver_service_get_port(NWConcrete_nw_resolver_service *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    port = v1->port;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_service_get_port";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_get_port";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null service", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_resolver_service_get_port";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_get_port";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_service_get_port";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null service, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  port = 0;
  v1 = 0;
LABEL_3:

  return port;
}

void nw_protocol_get_flow_id(_OWORD *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a2 = *a1;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_get_flow_id";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_get_flow_id";
        v5 = "%{public}s called with null destination";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_get_flow_id";
        v5 = "%{public}s called with null destination, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_get_flow_id";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null destination, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_get_flow_id";
        v5 = "%{public}s called with null destination, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_get_flow_id";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_get_flow_id";
      v5 = "%{public}s called with null protocol";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_get_flow_id";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_get_flow_id";
      v5 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_get_flow_id";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

uint64_t _nw_protocol_options_get_prohibit_joining(uint64_t a1)
{
  v2 = *(*a1 + 184);

  swift_beginAccess();
  v3 = *(a1 + v2);

  return v3;
}

void ___ZL40nw_protocol_instance_multiplex_callbacksv_block_invoke()
{
  nw_protocol_instance_multiplex_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_add_input_handler);
  nw_protocol_callbacks_set_replace_input_handler(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_replace_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_remove_input_handler);
  nw_protocol_callbacks_set_connected(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_connected);
  nw_protocol_callbacks_set_disconnect(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_disconnect);
  nw_protocol_callbacks_set_disconnected(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_disconnected);
  nw_protocol_callbacks_set_link_state(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_link_state);
  nw_protocol_callbacks_set_get_message_properties(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_get_message_properties);
  nw_protocol_callbacks_set_waiting_for_output(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_waiting_for_output);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_finalize_output_frames);
  nw_protocol_callbacks_set_input_available(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_input_available);
  nw_protocol_callbacks_set_input_finished(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_input_finished);
  nw_protocol_callbacks_set_input_flush(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_input_flush);
  nw_protocol_callbacks_set_output_available(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_output_available);
  nw_protocol_callbacks_set_output_finished(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_output_finished);
  nw_protocol_callbacks_set_copy_info(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_copy_info);
  nw_protocol_callbacks_set_notify(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_notify);
  nw_protocol_callbacks_set_error(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_error);
  nw_protocol_callbacks_set_updated_path(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_updated_path);
  nw_protocol_callbacks_set_connect(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_connect);
  nw_protocol_callbacks_set_add_listen_handler(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_add_listen_handler);
  nw_protocol_callbacks_set_remove_listen_handler(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_remove_listen_handler);
  nw_protocol_callbacks_set_get_parameters(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_get_parameters);
  nw_protocol_callbacks_set_get_local_endpoint(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_get_local);
  nw_protocol_callbacks_set_get_remote_endpoint(nw_protocol_instance_multiplex_callbacks(void)::callbacks, nw_protocol_implementation_get_remote);
  v0 = nw_protocol_instance_multiplex_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_get_path(v0, nw_protocol_implementation_get_path);
}

void nw_protocol_callbacks_set_link_state(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 104) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_link_state";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_link_state";
        v5 = "%{public}s called with null link_state";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_link_state";
        v5 = "%{public}s called with null link_state, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_link_state";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null link_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_link_state";
        v5 = "%{public}s called with null link_state, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_link_state";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_link_state";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_link_state";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_link_state";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_link_state";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_input_available(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 64) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_input_available";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_available";
        v5 = "%{public}s called with null input_available";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_available";
        v5 = "%{public}s called with null input_available, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_input_available";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null input_available, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_available";
        v5 = "%{public}s called with null input_available, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_input_available";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_available";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_available";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_available";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_input_available";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_input_finished(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 184) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_input_finished";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_finished";
        v5 = "%{public}s called with null input_finished";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_finished";
        v5 = "%{public}s called with null input_finished, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_input_finished";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null input_finished, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_finished";
        v5 = "%{public}s called with null input_finished, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_input_finished";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_finished";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_finished";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_finished";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_input_finished";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_input_flush(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 264) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_input_flush";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_flush";
        v5 = "%{public}s called with null input_flush";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_flush";
        v5 = "%{public}s called with null input_flush, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_input_flush";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null input_flush, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_input_flush";
        v5 = "%{public}s called with null input_flush, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_input_flush";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_flush";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_flush";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_input_flush";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_input_flush";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_output_available(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 72) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_output_available";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_output_available";
        v5 = "%{public}s called with null output_available";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_output_available";
        v5 = "%{public}s called with null output_available, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_output_available";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null output_available, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_output_available";
        v5 = "%{public}s called with null output_available, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_output_available";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_output_available";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_output_available";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_output_available";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_output_available";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_output_finished(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 192) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_output_finished";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_output_finished";
        v5 = "%{public}s called with null output_finished";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_output_finished";
        v5 = "%{public}s called with null output_finished, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_output_finished";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null output_finished, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_output_finished";
        v5 = "%{public}s called with null output_finished, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_output_finished";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_output_finished";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_output_finished";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_output_finished";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_output_finished";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_add_listen_handler(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 232) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_add_listen_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_add_listen_handler";
        v5 = "%{public}s called with null add_listen_handler";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_add_listen_handler";
        v5 = "%{public}s called with null add_listen_handler, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_add_listen_handler";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null add_listen_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_add_listen_handler";
        v5 = "%{public}s called with null add_listen_handler, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_add_listen_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_add_listen_handler";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_add_listen_handler";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_add_listen_handler";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_add_listen_handler";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_connect(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 24) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_connect";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_connect";
        v5 = "%{public}s called with null connect";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_connect";
        v5 = "%{public}s called with null connect, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_connect";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null connect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_connect";
        v5 = "%{public}s called with null connect, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_connect";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_connect";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_connect";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_connect";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_connect";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_get_parameters(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 112) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_parameters";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_parameters";
        v5 = "%{public}s called with null get_parameters";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_parameters";
        v5 = "%{public}s called with null get_parameters, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_parameters";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_parameters";
        v5 = "%{public}s called with null get_parameters, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_parameters";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_parameters";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_parameters";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_parameters";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_parameters";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_remove_listen_handler(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 240) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_remove_listen_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_remove_listen_handler";
        v5 = "%{public}s called with null remove_listen_handler";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_remove_listen_handler";
        v5 = "%{public}s called with null remove_listen_handler, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_remove_listen_handler";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null remove_listen_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_remove_listen_handler";
        v5 = "%{public}s called with null remove_listen_handler, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_remove_listen_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_remove_listen_handler";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_remove_listen_handler";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_remove_listen_handler";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_remove_listen_handler";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_get_path(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 120) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_path";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_path";
        v5 = "%{public}s called with null get_path";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_path";
        v5 = "%{public}s called with null get_path, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_path";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_path";
        v5 = "%{public}s called with null get_path, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_path";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_path";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_path";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_path";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_path";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_get_remote_endpoint(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 136) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
        v5 = "%{public}s called with null get_remote_endpoint";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
        v5 = "%{public}s called with null get_remote_endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_remote_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
        v5 = "%{public}s called with null get_remote_endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_remote_endpoint";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}