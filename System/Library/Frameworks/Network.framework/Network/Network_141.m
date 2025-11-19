uint64_t nw_protocol_register_notification_quiet(uint64_t result, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (!v4)
    {
      return 0;
    }

    v5 = a2;
    result = 0;
    if (a2)
    {
      v6 = *(v4 + 144);
      if (v6)
      {
        v7 = *(v3 + 40);
        v8 = v3;
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v3 + 64)) != 0)
        {
          v10 = *(v8 + 88);
          v9 = 0;
          if (v10)
          {
            *(v8 + 88) = v10 + 1;
          }
        }

        else
        {
          v9 = 1;
        }

        v11 = *(a2 + 40);
        v12 = a2;
        if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
        {
          v26 = *(v12 + 88);
          if (v26)
          {
            v13 = 0;
            *(v12 + 88) = v26 + 1;
            if (!a3)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v13 = 0;
            if (!a3)
            {
LABEL_42:
              __nwlog_obj();
              *buf = 136446210;
              v36 = "__nw_protocol_register_notification";
              v27 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v33 = 0;
              if (!__nwlog_fault(v27, &type, &v33))
              {
                goto LABEL_59;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                v28 = __nwlog_obj();
                v29 = type;
                if (!os_log_type_enabled(v28, type))
                {
                  goto LABEL_59;
                }

                *buf = 136446210;
                v36 = "__nw_protocol_register_notification";
                v30 = "%{public}s called with null type";
              }

              else if (v33 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v28 = __nwlog_obj();
                v29 = type;
                v32 = os_log_type_enabled(v28, type);
                if (backtrace_string)
                {
                  if (v32)
                  {
                    *buf = 136446466;
                    v36 = "__nw_protocol_register_notification";
                    v37 = 2082;
                    v38 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
LABEL_59:
                  if (v27)
                  {
                    free(v27);
                  }

                  result = 0;
                  if (v13)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_15;
                }

                if (!v32)
                {
                  goto LABEL_59;
                }

                *buf = 136446210;
                v36 = "__nw_protocol_register_notification";
                v30 = "%{public}s called with null type, no backtrace";
              }

              else
              {
                v28 = __nwlog_obj();
                v29 = type;
                if (!os_log_type_enabled(v28, type))
                {
                  goto LABEL_59;
                }

                *buf = 136446210;
                v36 = "__nw_protocol_register_notification";
                v30 = "%{public}s called with null type, backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
              goto LABEL_59;
            }
          }
        }

        else
        {
          v13 = 1;
          if (!a3)
          {
            goto LABEL_42;
          }
        }

        result = v6(v3, a2);
        if (v13)
        {
LABEL_26:
          if ((v9 & 1) == 0)
          {
            v20 = *(v3 + 40);
            if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v21 = *(v3 + 88);
              if (v21)
              {
                v22 = v21 - 1;
                *(v3 + 88) = v22;
                if (!v22)
                {
                  v23 = result;
                  v24 = *(v3 + 64);
                  if (v24)
                  {
                    *(v3 + 64) = 0;
                    v24[2](v24);
                    _Block_release(v24);
                  }

                  if (*(v3 + 72))
                  {
                    v25 = *(v3 + 64);
                    if (v25)
                    {
                      _Block_release(v25);
                    }
                  }

                  free(v3);
                  return v23;
                }
              }
            }
          }

          return result;
        }

LABEL_15:
        v14 = *(v5 + 40);
        if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v5 + 64)) != 0)
        {
          v15 = *(v5 + 88);
          if (v15)
          {
            v16 = v15 - 1;
            *(v5 + 88) = v16;
            if (!v16)
            {
              v17 = result;
              v18 = *(v5 + 64);
              if (v18)
              {
                *(v5 + 64) = 0;
                v18[2](v18);
                _Block_release(v18);
              }

              if (*(v5 + 72))
              {
                v19 = *(v5 + 64);
                if (v19)
                {
                  _Block_release(v19);
                }
              }

              free(v5);
              result = v17;
            }
          }
        }

        goto LABEL_26;
      }
    }
  }

  return result;
}

uint64_t nw_protocol_register_notification_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 144) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_unregister_notification_quiet(uint64_t result, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (!v4)
    {
      return 0;
    }

    v5 = a2;
    result = 0;
    if (a2)
    {
      v6 = *(v4 + 152);
      if (v6)
      {
        v7 = *(v3 + 40);
        v8 = v3;
        if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v3 + 64)) != 0)
        {
          v10 = *(v8 + 88);
          v9 = 0;
          if (v10)
          {
            *(v8 + 88) = v10 + 1;
          }
        }

        else
        {
          v9 = 1;
        }

        v11 = *(a2 + 40);
        v12 = a2;
        if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
        {
          v26 = *(v12 + 88);
          if (v26)
          {
            v13 = 0;
            *(v12 + 88) = v26 + 1;
            if (!a3)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v13 = 0;
            if (!a3)
            {
LABEL_42:
              __nwlog_obj();
              *buf = 136446210;
              v36 = "__nw_protocol_unregister_notification";
              v27 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v33 = 0;
              if (!__nwlog_fault(v27, &type, &v33))
              {
                goto LABEL_59;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                v28 = __nwlog_obj();
                v29 = type;
                if (!os_log_type_enabled(v28, type))
                {
                  goto LABEL_59;
                }

                *buf = 136446210;
                v36 = "__nw_protocol_unregister_notification";
                v30 = "%{public}s called with null type";
              }

              else if (v33 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v28 = __nwlog_obj();
                v29 = type;
                v32 = os_log_type_enabled(v28, type);
                if (backtrace_string)
                {
                  if (v32)
                  {
                    *buf = 136446466;
                    v36 = "__nw_protocol_unregister_notification";
                    v37 = 2082;
                    v38 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
LABEL_59:
                  if (v27)
                  {
                    free(v27);
                  }

                  result = 0;
                  if (v13)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_15;
                }

                if (!v32)
                {
                  goto LABEL_59;
                }

                *buf = 136446210;
                v36 = "__nw_protocol_unregister_notification";
                v30 = "%{public}s called with null type, no backtrace";
              }

              else
              {
                v28 = __nwlog_obj();
                v29 = type;
                if (!os_log_type_enabled(v28, type))
                {
                  goto LABEL_59;
                }

                *buf = 136446210;
                v36 = "__nw_protocol_unregister_notification";
                v30 = "%{public}s called with null type, backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
              goto LABEL_59;
            }
          }
        }

        else
        {
          v13 = 1;
          if (!a3)
          {
            goto LABEL_42;
          }
        }

        result = v6(v3, a2);
        if (v13)
        {
LABEL_26:
          if ((v9 & 1) == 0)
          {
            v20 = *(v3 + 40);
            if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v21 = *(v3 + 88);
              if (v21)
              {
                v22 = v21 - 1;
                *(v3 + 88) = v22;
                if (!v22)
                {
                  v23 = result;
                  v24 = *(v3 + 64);
                  if (v24)
                  {
                    *(v3 + 64) = 0;
                    v24[2](v24);
                    _Block_release(v24);
                  }

                  if (*(v3 + 72))
                  {
                    v25 = *(v3 + 64);
                    if (v25)
                    {
                      _Block_release(v25);
                    }
                  }

                  free(v3);
                  return v23;
                }
              }
            }
          }

          return result;
        }

LABEL_15:
        v14 = *(v5 + 40);
        if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v5 + 64)) != 0)
        {
          v15 = *(v5 + 88);
          if (v15)
          {
            v16 = v15 - 1;
            *(v5 + 88) = v16;
            if (!v16)
            {
              v17 = result;
              v18 = *(v5 + 64);
              if (v18)
              {
                *(v5 + 64) = 0;
                v18[2](v18);
                _Block_release(v18);
              }

              if (*(v5 + 72))
              {
                v19 = *(v5 + 64);
                if (v19)
                {
                  _Block_release(v19);
                }
              }

              free(v5);
              result = v17;
            }
          }
        }

        goto LABEL_26;
      }
    }
  }

  return result;
}

uint64_t nw_protocol_unregister_notification_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 152) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_notify_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 160) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_updated_path_quiet(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      result = 0;
      if (a3)
      {
        v5 = a2;
        if (a2)
        {
          v6 = *(v4 + 168);
          if (v6)
          {
            v7 = *(v3 + 40);
            v8 = v3;
            if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v3 + 64)) != 0)
            {
              v10 = *(v8 + 88);
              v9 = 0;
              if (v10)
              {
                *(v8 + 88) = v10 + 1;
              }
            }

            else
            {
              v9 = 1;
            }

            v11 = *(a2 + 40);
            v12 = a2;
            if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
            {
              v13 = *(v12 + 88);
              if (v13)
              {
                *(v12 + 88) = v13 + 1;
              }

              result = v6(v3, a2);
              v14 = *(v5 + 40);
              if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v5 + 64)) != 0)
              {
                v15 = *(v5 + 88);
                if (v15)
                {
                  v16 = v15 - 1;
                  *(v5 + 88) = v16;
                  if (!v16)
                  {
                    v17 = result;
                    v18 = *(v5 + 64);
                    if (v18)
                    {
                      *(v5 + 64) = 0;
                      v18[2](v18);
                      _Block_release(v18);
                    }

                    if (*(v5 + 72))
                    {
                      v19 = *(v5 + 64);
                      if (v19)
                      {
                        _Block_release(v19);
                      }
                    }

                    free(v5);
                    result = v17;
                  }
                }
              }
            }

            else
            {
              result = v6(v3, a2);
            }

            if ((v9 & 1) == 0)
            {
              v20 = *(v3 + 40);
              if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
              {
                v21 = *(v3 + 88);
                if (v21)
                {
                  v22 = v21 - 1;
                  *(v3 + 88) = v22;
                  if (!v22)
                  {
                    v23 = result;
                    v24 = *(v3 + 64);
                    if (v24)
                    {
                      *(v3 + 64) = 0;
                      v24[2](v24);
                      _Block_release(v24);
                    }

                    if (*(v3 + 72))
                    {
                      v25 = *(v3 + 64);
                      if (v25)
                      {
                        _Block_release(v25);
                      }
                    }

                    free(v3);
                    return v23;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_updated_path_is_valid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 168) != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (!a2)
  {
    LODWORD(v3) = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void nw_protocol_link_state(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1[5];
    v6 = a1;
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = a1[8]) != 0)
    {
      v23 = v6[11];
      if (v23)
      {
        v7 = 0;
        v6[11] = v23 + 1;
        if (!a2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v7 = 0;
        if (!a2)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v7 = 1;
      if (!a2)
      {
LABEL_39:
        __nwlog_obj();
        *buf = 136446210;
        v56 = "__nw_protocol_link_state";
        v3 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v3, &type, &v53))
        {
          goto LABEL_114;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_link_state";
          v26 = "%{public}s called with null other_protocol";
          goto LABEL_113;
        }

        if (v53 != 1)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_link_state";
          v26 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_113;
        }

        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v45 = os_log_type_enabled(v24, type);
        if (!backtrace_string)
        {
          if (!v45)
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_link_state";
          v26 = "%{public}s called with null other_protocol, no backtrace";
LABEL_113:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
LABEL_114:
          if (!v3)
          {
            goto LABEL_23;
          }

LABEL_22:
          free(v3);
          goto LABEL_23;
        }

        if (v45)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_link_state";
          v57 = 2082;
          v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_22;
        }

LABEL_23:
        if ((v7 & 1) == 0)
        {
          v18 = *(v4 + 40);
          if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
          {
            v19 = *(v4 + 88);
            if (v19)
            {
              v20 = v19 - 1;
              *(v4 + 88) = v20;
              if (!v20)
              {
                v21 = *(v4 + 64);
                if (v21)
                {
                  *(v4 + 64) = 0;
                  v21[2](v21);
                  _Block_release(v21);
                }

                if (*(v4 + 72))
                {
                  v22 = *(v4 + 64);
                  if (v22)
                  {
                    _Block_release(v22);
                  }
                }

                goto LABEL_34;
              }
            }
          }
        }

        return;
      }
    }

    v8 = *(a2 + 40);
    v9 = a2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a2 + 64)) != 0)
    {
      v27 = *(v9 + 88);
      if (v27)
      {
        v10 = 0;
        *(v9 + 88) = v27 + 1;
        if (!a3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v10 = 0;
        if (!a3)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a3)
      {
LABEL_46:
        __nwlog_obj();
        *buf = 136446210;
        v56 = "__nw_protocol_link_state";
        v28 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v28, &type, &v53))
        {
          goto LABEL_120;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (!os_log_type_enabled(v29, type))
          {
            goto LABEL_120;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_link_state";
          v31 = "%{public}s called with null link_info";
          goto LABEL_118;
        }

        if (v53 != 1)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (!os_log_type_enabled(v29, type))
          {
            goto LABEL_120;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_link_state";
          v31 = "%{public}s called with null link_info, backtrace limit exceeded";
          goto LABEL_118;
        }

        v46 = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v47 = os_log_type_enabled(v29, type);
        if (v46)
        {
          if (v47)
          {
            *buf = 136446466;
            v56 = "__nw_protocol_link_state";
            v57 = 2082;
            v58 = v46;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null link_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          if (!v28)
          {
LABEL_11:
            if ((v10 & 1) == 0)
            {
              v13 = *(v3 + 40);
              if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
              {
                v14 = *(v3 + 88);
                if (v14)
                {
                  v15 = v14 - 1;
                  *(v3 + 88) = v15;
                  if (!v15)
                  {
                    v16 = *(v3 + 64);
                    if (v16)
                    {
                      *(v3 + 64) = 0;
                      v16[2](v16);
                      _Block_release(v16);
                    }

                    if (*(v3 + 72))
                    {
                      v17 = *(v3 + 64);
                      if (v17)
                      {
                        _Block_release(v17);
                      }
                    }

                    goto LABEL_22;
                  }
                }
              }
            }

            goto LABEL_23;
          }

LABEL_121:
          free(v28);
          goto LABEL_11;
        }

        if (v47)
        {
          *buf = 136446210;
          v56 = "__nw_protocol_link_state";
          v31 = "%{public}s called with null link_info, no backtrace";
LABEL_118:
          v50 = v29;
          v51 = v30;
          v52 = 12;
          goto LABEL_119;
        }

        goto LABEL_120;
      }
    }

    v11 = a1[3];
    if (v11)
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        v12(a1, a2);
        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v32 = *(v4 + 16);
    *buf = 136446722;
    v56 = "__nw_protocol_link_state";
    if (!v32)
    {
      v32 = "invalid";
    }

    v57 = 2082;
    v58 = v32;
    v59 = 2048;
    v60 = v4;
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v28, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_120;
        }

        v35 = *(v4 + 16);
        if (!v35)
        {
          v35 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_link_state";
        v57 = 2082;
        v58 = v35;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid link_state callback";
      }

      else if (v53 == 1)
      {
        v39 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = type;
        v40 = os_log_type_enabled(v33, type);
        if (v39)
        {
          if (v40)
          {
            v41 = *(v4 + 16);
            if (!v41)
            {
              v41 = "invalid";
            }

            *buf = 136446978;
            v56 = "__nw_protocol_link_state";
            v57 = 2082;
            v58 = v41;
            v59 = 2048;
            v60 = v4;
            v61 = 2082;
            v62 = v39;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid link_state callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v39);
          goto LABEL_120;
        }

        if (!v40)
        {
          goto LABEL_120;
        }

        v49 = *(v4 + 16);
        if (!v49)
        {
          v49 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_link_state";
        v57 = 2082;
        v58 = v49;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid link_state callback, no backtrace";
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_120;
        }

        v48 = *(v4 + 16);
        if (!v48)
        {
          v48 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_link_state";
        v57 = 2082;
        v58 = v48;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid link_state callback, backtrace limit exceeded";
      }

      v50 = v33;
      v51 = v34;
      v52 = 32;
LABEL_119:
      _os_log_impl(&dword_181A37000, v50, v51, v31, buf, v52);
    }

LABEL_120:
    if (!v28)
    {
      goto LABEL_11;
    }

    goto LABEL_121;
  }

  __nwlog_obj();
  *buf = 136446210;
  v56 = "__nw_protocol_link_state";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v4, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_link_state";
      v38 = "%{public}s called with null protocol";
    }

    else if (v53 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v43 = os_log_type_enabled(v36, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_link_state";
          v57 = 2082;
          v58 = v42;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        if (v4)
        {
          goto LABEL_34;
        }

        return;
      }

      if (!v43)
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_link_state";
      v38 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_link_state";
      v38 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
  }

LABEL_109:
  if (v4)
  {
LABEL_34:
    free(v4);
  }
}

void nw_protocol_link_state_quiet(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v3 = a1;
  v4 = a1[3];
  if (!v4)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  v5 = a2;
  if (!a2)
  {
    return;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
    return;
  }

  v7 = a1[5];
  v8 = a1;
  if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = a1[8]) != 0)
  {
    v10 = v8[11];
    v9 = 0;
    if (v10)
    {
      v8[11] = v10 + 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = *(a2 + 40);
  v12 = a2;
  if (v11 != &nw_protocol_ref_counted_handle && (v11 != &nw_protocol_ref_counted_additional_handle || (v12 = *(a2 + 64)) == 0))
  {
    v6(a1, a2);
    if (v9)
    {
      return;
    }

    goto LABEL_25;
  }

  v13 = *(v12 + 88);
  if (v13)
  {
    *(v12 + 88) = v13 + 1;
  }

  v6(a1, a2);
  v14 = *(v5 + 40);
  if (v14 != &nw_protocol_ref_counted_handle && (v14 != &nw_protocol_ref_counted_additional_handle || (v5 = *(v5 + 64)) == 0) || (v15 = *(v5 + 88)) == 0 || (v16 = v15 - 1, (*(v5 + 88) = v16) != 0))
  {
    if (v9)
    {
      return;
    }

    goto LABEL_25;
  }

  v22 = *(v5 + 64);
  if (v22)
  {
    *(v5 + 64) = 0;
    v22[2](v22);
    _Block_release(v22);
  }

  if (*(v5 + 72))
  {
    v23 = *(v5 + 64);
    if (v23)
    {
      _Block_release(v23);
    }
  }

  free(v5);
  if ((v9 & 1) == 0)
  {
LABEL_25:
    v17 = v3[5];
    if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
    {
      v18 = v3[11];
      if (v18)
      {
        v19 = v18 - 1;
        v3[11] = v19;
        if (!v19)
        {
          v20 = v3[8];
          if (v20)
          {
            v3[8] = 0;
            v20[2](v20);
            _Block_release(v20);
          }

          if (v3[9])
          {
            v21 = v3[8];
            if (v21)
            {
              _Block_release(v21);
            }
          }

          free(v3);
        }
      }
    }
  }
}

uint64_t nw_protocol_link_state_is_valid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 104) != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (!a2)
  {
    LODWORD(v3) = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void nw_protocol_callbacks_set_supports_external_data(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 176) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_supports_external_data";
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
        v13 = "nw_protocol_callbacks_set_supports_external_data";
        v5 = "%{public}s called with null supports_external_data";
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
        v13 = "nw_protocol_callbacks_set_supports_external_data";
        v5 = "%{public}s called with null supports_external_data, backtrace limit exceeded";
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
          v13 = "nw_protocol_callbacks_set_supports_external_data";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null supports_external_data, dumping backtrace:%{public}s", buf, 0x16u);
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
        v13 = "nw_protocol_callbacks_set_supports_external_data";
        v5 = "%{public}s called with null supports_external_data, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_supports_external_data";
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
      v13 = "nw_protocol_callbacks_set_supports_external_data";
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
      v13 = "nw_protocol_callbacks_set_supports_external_data";
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
      v13 = "nw_protocol_callbacks_set_supports_external_data";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_supports_external_data";
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

void nw_protocol_set_identifier(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 16) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_set_identifier";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_identifier";
      v5 = "%{public}s called with null protocol";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_identifier";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_protocol_set_identifier";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "__nw_protocol_set_identifier";
      v5 = "%{public}s called with null protocol, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

void nw_protocol_set_callbacks(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 24) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_set_callbacks";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_callbacks";
      v5 = "%{public}s called with null protocol";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_callbacks";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_protocol_set_callbacks";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "__nw_protocol_set_callbacks";
      v5 = "%{public}s called with null protocol, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

void nw_protocol_set_handle(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 40) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_set_handle";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_handle";
      v5 = "%{public}s called with null protocol";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_handle";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_protocol_set_handle";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "__nw_protocol_set_handle";
      v5 = "%{public}s called with null protocol, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_protocol_zombie_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v18 = "nw_protocol_zombie_remove_listen_handler";
  v19 = 2080;
  v20 = identifier;
  v21 = 2048;
  v22 = a1;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v4, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v7 = "invalid";
      if (a1 && a1->identifier)
      {
        v7 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_remove_listen_handler";
      v19 = 2080;
      v20 = v7;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x20u);
      goto LABEL_30;
    }

    if (v15 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_remove_listen_handler";
      v19 = 2080;
      v20 = v12;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
        goto LABEL_30;
      }

      v13 = "invalid";
      if (a1 && a1->identifier)
      {
        v13 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_remove_listen_handler";
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v10)
    {
      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446978;
      v18 = "nw_protocol_zombie_remove_listen_handler";
      v19 = 2080;
      v20 = v11;
      v21 = 2048;
      v22 = a1;
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_zombie_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v18 = "nw_protocol_zombie_add_listen_handler";
  v19 = 2080;
  v20 = identifier;
  v21 = 2048;
  v22 = a1;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v4, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v7 = "invalid";
      if (a1 && a1->identifier)
      {
        v7 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_add_listen_handler";
      v19 = 2080;
      v20 = v7;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x20u);
      goto LABEL_30;
    }

    if (v15 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_add_listen_handler";
      v19 = 2080;
      v20 = v12;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
        goto LABEL_30;
      }

      v13 = "invalid";
      if (a1 && a1->identifier)
      {
        v13 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_add_listen_handler";
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v10)
    {
      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446978;
      v18 = "nw_protocol_zombie_add_listen_handler";
      v19 = 2080;
      v20 = v11;
      v21 = 2048;
      v22 = a1;
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

void nw_protocol_zombie_notify(uint64_t a1, uint64_t a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = "invalid";
  if (a1 && *(a1 + 16))
  {
    v6 = *(a1 + 16);
  }

  v7 = "invalid";
  if (a2 && *(a2 + 16))
  {
    v7 = *(a2 + 16);
  }

  *buf = 136447490;
  v25 = "nw_protocol_zombie_notify";
  v26 = 2080;
  v27 = v6;
  v28 = 2048;
  v29 = a1;
  v30 = 2080;
  v31 = v7;
  v32 = 2048;
  v33 = a2;
  v34 = 1024;
  v35 = a3;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v8, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v11 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v11 = *(a1 + 16);
      }

      v12 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v12 = *(a2 + 16);
      }

      *buf = 136447490;
      v25 = "nw_protocol_zombie_notify";
      v26 = 2080;
      v27 = v11;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v12;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v13, buf, 0x3Au);
      goto LABEL_45;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v18 = *(a1 + 16);
      }

      v19 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v19 = *(a2 + 16);
      }

      *buf = 136447490;
      v25 = "nw_protocol_zombie_notify";
      v26 = 2080;
      v27 = v18;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v19;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_45;
      }

      v20 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v20 = *(a1 + 16);
      }

      v21 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v21 = *(a2 + 16);
      }

      *buf = 136447490;
      v25 = "nw_protocol_zombie_notify";
      v26 = 2080;
      v27 = v20;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v21;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, no backtrace";
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v16 = *(a1 + 16);
      }

      v17 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v17 = *(a2 + 16);
      }

      *buf = 136447746;
      v25 = "nw_protocol_zombie_notify";
      v26 = 2080;
      v27 = v16;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v17;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, dumping backtrace:%{public}s", buf, 0x44u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v8)
  {
    free(v8);
  }
}

uint64_t nw_protocol_zombie_unregister_notification(uint64_t a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = "invalid";
  if (a1 && *(a1 + 16))
  {
    v6 = *(a1 + 16);
  }

  v7 = "invalid";
  if (a2 && *(a2 + 16))
  {
    v7 = *(a2 + 16);
  }

  *buf = 136447490;
  v26 = "nw_protocol_zombie_unregister_notification";
  v27 = 2080;
  v28 = v6;
  v29 = 2048;
  v30 = a1;
  v31 = 2080;
  v32 = v7;
  v33 = 2048;
  v34 = a2;
  v35 = 1024;
  v36 = a3;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v8, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v11 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v11 = *(a1 + 16);
      }

      v12 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v12 = *(a2 + 16);
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_unregister_notification";
      v27 = 2080;
      v28 = v11;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v12;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v13, buf, 0x3Au);
      goto LABEL_45;
    }

    if (v23 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v18 = *(a1 + 16);
      }

      v19 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v19 = *(a2 + 16);
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_unregister_notification";
      v27 = 2080;
      v28 = v18;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v19;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_45;
      }

      v20 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v20 = *(a1 + 16);
      }

      v21 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v21 = *(a2 + 16);
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_unregister_notification";
      v27 = 2080;
      v28 = v20;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v21;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, no backtrace";
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v16 = *(a1 + 16);
      }

      v17 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v17 = *(a2 + 16);
      }

      *buf = 136447746;
      v26 = "nw_protocol_zombie_unregister_notification";
      v27 = 2080;
      v28 = v16;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v17;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v37 = 2082;
      v38 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, dumping backtrace:%{public}s", buf, 0x44u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_zombie_register_notification(uint64_t a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = "invalid";
  if (a1 && *(a1 + 16))
  {
    v6 = *(a1 + 16);
  }

  v7 = "invalid";
  if (a2 && *(a2 + 16))
  {
    v7 = *(a2 + 16);
  }

  *buf = 136447490;
  v26 = "nw_protocol_zombie_register_notification";
  v27 = 2080;
  v28 = v6;
  v29 = 2048;
  v30 = a1;
  v31 = 2080;
  v32 = v7;
  v33 = 2048;
  v34 = a2;
  v35 = 1024;
  v36 = a3;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v8, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v11 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v11 = *(a1 + 16);
      }

      v12 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v12 = *(a2 + 16);
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_register_notification";
      v27 = 2080;
      v28 = v11;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v12;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v13, buf, 0x3Au);
      goto LABEL_45;
    }

    if (v23 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v18 = *(a1 + 16);
      }

      v19 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v19 = *(a2 + 16);
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_register_notification";
      v27 = 2080;
      v28 = v18;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v19;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_45;
      }

      v20 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v20 = *(a1 + 16);
      }

      v21 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v21 = *(a2 + 16);
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_register_notification";
      v27 = 2080;
      v28 = v20;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v21;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, no backtrace";
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v16 = *(a1 + 16);
      }

      v17 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v17 = *(a2 + 16);
      }

      *buf = 136447746;
      v26 = "nw_protocol_zombie_register_notification";
      v27 = 2080;
      v28 = v16;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v17;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v37 = 2082;
      v38 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol %s:%p, other_protocol %s:%p, type %d, dumping backtrace:%{public}s", buf, 0x44u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_zombie_copy_info(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = "invalid";
  if (a1 && *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  *buf = 136446978;
  v19 = "nw_protocol_zombie_copy_info";
  v20 = 2080;
  v21 = v4;
  v22 = 2048;
  v23 = a1;
  v24 = 1024;
  v25 = a2;
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v5, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v8 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v8 = *(a1 + 16);
      }

      *buf = 136446978;
      v19 = "nw_protocol_zombie_copy_info";
      v20 = 2080;
      v21 = v8;
      v22 = 2048;
      v23 = a1;
      v24 = 1024;
      v25 = a2;
      v9 = "%{public}s protocol %s:%p, type %d";
LABEL_29:
      _os_log_impl(&dword_181A37000, v6, v7, v9, buf, 0x26u);
      goto LABEL_30;
    }

    if (v16 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v13 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v13 = *(a1 + 16);
      }

      *buf = 136446978;
      v19 = "nw_protocol_zombie_copy_info";
      v20 = 2080;
      v21 = v13;
      v22 = 2048;
      v23 = a1;
      v24 = 1024;
      v25 = a2;
      v9 = "%{public}s protocol %s:%p, type %d, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v11)
      {
        goto LABEL_30;
      }

      v14 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v14 = *(a1 + 16);
      }

      *buf = 136446978;
      v19 = "nw_protocol_zombie_copy_info";
      v20 = 2080;
      v21 = v14;
      v22 = 2048;
      v23 = a1;
      v24 = 1024;
      v25 = a2;
      v9 = "%{public}s protocol %s:%p, type %d, no backtrace";
      goto LABEL_29;
    }

    if (v11)
    {
      v12 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v12 = *(a1 + 16);
      }

      *buf = 136447234;
      v19 = "nw_protocol_zombie_copy_info";
      v20 = 2080;
      v21 = v12;
      v22 = 2048;
      v23 = a1;
      v24 = 1024;
      v25 = a2;
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s protocol %s:%p, type %d, dumping backtrace:%{public}s", buf, 0x30u);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_zombie_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v24 = "nw_protocol_zombie_waiting_for_output";
  v25 = 2080;
  v26 = identifier;
  v27 = 2048;
  v28 = a1;
  v29 = 2080;
  v30 = v5;
  v31 = 2048;
  v32 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v6, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_waiting_for_output";
      v25 = 2080;
      v26 = v9;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v10;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v21 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_waiting_for_output";
      v25 = 2080;
      v26 = v16;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v17;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_waiting_for_output";
      v25 = 2080;
      v26 = v18;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v19;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v24 = "nw_protocol_zombie_waiting_for_output";
      v25 = 2080;
      v26 = v14;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v15;
      v31 = 2048;
      v32 = a2;
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, input_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_zombie_supports_external_data(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v17 = "nw_protocol_zombie_supports_external_data";
  v18 = 2080;
  v19 = identifier;
  v20 = 2048;
  v21 = a1;
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v3, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v6 = "invalid";
      if (a1 && a1->identifier)
      {
        v6 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_supports_external_data";
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v4, v5, v7, buf, 0x20u);
      goto LABEL_30;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_supports_external_data";
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_supports_external_data";
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v9)
    {
      v10 = "invalid";
      if (a1 && a1->identifier)
      {
        v10 = a1->identifier;
      }

      *buf = 136446978;
      v17 = "nw_protocol_zombie_supports_external_data";
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = a1;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_protocol_zombie_reset(nw_protocol *a1, nw_protocol *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v24 = "nw_protocol_zombie_reset";
  v25 = 2080;
  v26 = identifier;
  v27 = 2048;
  v28 = a1;
  v29 = 2080;
  v30 = v5;
  v31 = 2048;
  v32 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v6, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_reset";
      v25 = 2080;
      v26 = v9;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v10;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v21 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_reset";
      v25 = 2080;
      v26 = v16;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v17;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_reset";
      v25 = 2080;
      v26 = v18;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v19;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v24 = "nw_protocol_zombie_reset";
      v25 = 2080;
      v26 = v14;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v15;
      v31 = 2048;
      v32 = a2;
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, other_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void nw_protocol_zombie_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v7 = "invalid";
  if (a2 && a2->identifier)
  {
    v7 = a2->identifier;
  }

  *buf = 136447490;
  v25 = "nw_protocol_zombie_error";
  v26 = 2080;
  v27 = identifier;
  v28 = 2048;
  v29 = a1;
  v30 = 2080;
  v31 = v7;
  v32 = 2048;
  v33 = a2;
  v34 = 1024;
  v35 = a3;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v8, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      v12 = "invalid";
      if (a2 && a2->identifier)
      {
        v12 = a2->identifier;
      }

      *buf = 136447490;
      v25 = "nw_protocol_zombie_error";
      v26 = 2080;
      v27 = v11;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v12;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, error %{errno}d";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v13, buf, 0x3Au);
      goto LABEL_45;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447490;
      v25 = "nw_protocol_zombie_error";
      v26 = 2080;
      v27 = v18;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v19;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, error %{errno}d, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_45;
      }

      v20 = "invalid";
      if (a1 && a1->identifier)
      {
        v20 = a1->identifier;
      }

      v21 = "invalid";
      if (a2 && a2->identifier)
      {
        v21 = a2->identifier;
      }

      *buf = 136447490;
      v25 = "nw_protocol_zombie_error";
      v26 = 2080;
      v27 = v20;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v21;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, error %{errno}d, no backtrace";
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447746;
      v25 = "nw_protocol_zombie_error";
      v26 = 2080;
      v27 = v16;
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v17;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      v35 = a3;
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol %s:%p, other_protocol %s:%p, error %{errno}d, dumping backtrace:%{public}s", buf, 0x44u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v8)
  {
    free(v8);
  }
}

void nw_protocol_zombie_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_disconnected";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_disconnected";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_disconnected";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_disconnected";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_disconnected";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, other_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_zombie_connected(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_connected";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_connected";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_connected";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_connected";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_connected";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, other_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_zombie_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_disconnect";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_disconnect";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_disconnect";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_disconnect";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_disconnect";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, other_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

uint64_t nw_protocol_zombie_connect(nw_protocol *a1, nw_protocol *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v24 = "nw_protocol_zombie_connect";
  v25 = 2080;
  v26 = identifier;
  v27 = 2048;
  v28 = a1;
  v29 = 2080;
  v30 = v5;
  v31 = 2048;
  v32 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v6, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_connect";
      v25 = 2080;
      v26 = v9;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v10;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v21 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_connect";
      v25 = 2080;
      v26 = v16;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v17;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_connect";
      v25 = 2080;
      v26 = v18;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v19;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v24 = "nw_protocol_zombie_connect";
      v25 = 2080;
      v26 = v14;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v15;
      v31 = 2048;
      v32 = a2;
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, other_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_output_interface(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v17 = "nw_protocol_zombie_get_output_interface";
  v18 = 2080;
  v19 = identifier;
  v20 = 2048;
  v21 = a1;
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v3, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v6 = "invalid";
      if (a1 && a1->identifier)
      {
        v6 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_output_interface";
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v4, v5, v7, buf, 0x20u);
      goto LABEL_30;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_output_interface";
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_output_interface";
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v9)
    {
      v10 = "invalid";
      if (a1 && a1->identifier)
      {
        v10 = a1->identifier;
      }

      *buf = 136446978;
      v17 = "nw_protocol_zombie_get_output_interface";
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = a1;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_output_local_endpoint(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v17 = "nw_protocol_zombie_get_output_local_endpoint";
  v18 = 2080;
  v19 = identifier;
  v20 = 2048;
  v21 = a1;
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v3, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v6 = "invalid";
      if (a1 && a1->identifier)
      {
        v6 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_output_local_endpoint";
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v4, v5, v7, buf, 0x20u);
      goto LABEL_30;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_output_local_endpoint";
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_output_local_endpoint";
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v9)
    {
      v10 = "invalid";
      if (a1 && a1->identifier)
      {
        v10 = a1->identifier;
      }

      *buf = 136446978;
      v17 = "nw_protocol_zombie_get_output_local_endpoint";
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = a1;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_protocol_zombie_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v7 = "invalid";
  if (a2 && a2->identifier)
  {
    v7 = a2->identifier;
  }

  *buf = 136447490;
  v26 = "nw_protocol_zombie_updated_path";
  v27 = 2080;
  v28 = identifier;
  v29 = 2048;
  v30 = a1;
  v31 = 2080;
  v32 = v7;
  v33 = 2048;
  v34 = a2;
  v35 = 2112;
  v36 = a3;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v8, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      v12 = "invalid";
      if (a2 && a2->identifier)
      {
        v12 = a2->identifier;
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_updated_path";
      v27 = 2080;
      v28 = v11;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v12;
      v33 = 2048;
      v34 = a2;
      v35 = 2112;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, path %@";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v13, buf, 0x3Eu);
      goto LABEL_45;
    }

    if (v23 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_updated_path";
      v27 = 2080;
      v28 = v18;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v19;
      v33 = 2048;
      v34 = a2;
      v35 = 2112;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, path %@, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_45;
      }

      v20 = "invalid";
      if (a1 && a1->identifier)
      {
        v20 = a1->identifier;
      }

      v21 = "invalid";
      if (a2 && a2->identifier)
      {
        v21 = a2->identifier;
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_updated_path";
      v27 = 2080;
      v28 = v20;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v21;
      v33 = 2048;
      v34 = a2;
      v35 = 2112;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, other_protocol %s:%p, path %@, no backtrace";
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447746;
      v26 = "nw_protocol_zombie_updated_path";
      v27 = 2080;
      v28 = v16;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v17;
      v33 = 2048;
      v34 = a2;
      v35 = 2112;
      v36 = a3;
      v37 = 2082;
      v38 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol %s:%p, other_protocol %s:%p, path %@, dumping backtrace:%{public}s", buf, 0x48u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_path(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v17 = "nw_protocol_zombie_get_path";
  v18 = 2080;
  v19 = identifier;
  v20 = 2048;
  v21 = a1;
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v3, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v6 = "invalid";
      if (a1 && a1->identifier)
      {
        v6 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_path";
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v4, v5, v7, buf, 0x20u);
      goto LABEL_30;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_path";
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_path";
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v9)
    {
      v10 = "invalid";
      if (a1 && a1->identifier)
      {
        v10 = a1->identifier;
      }

      *buf = 136446978;
      v17 = "nw_protocol_zombie_get_path";
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = a1;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_remote_endpoint(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v17 = "nw_protocol_zombie_get_remote_endpoint";
  v18 = 2080;
  v19 = identifier;
  v20 = 2048;
  v21 = a1;
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v3, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v6 = "invalid";
      if (a1 && a1->identifier)
      {
        v6 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_remote_endpoint";
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v4, v5, v7, buf, 0x20u);
      goto LABEL_30;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_remote_endpoint";
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_remote_endpoint";
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v9)
    {
      v10 = "invalid";
      if (a1 && a1->identifier)
      {
        v10 = a1->identifier;
      }

      *buf = 136446978;
      v17 = "nw_protocol_zombie_get_remote_endpoint";
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = a1;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_local_endpoint(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v17 = "nw_protocol_zombie_get_local_endpoint";
  v18 = 2080;
  v19 = identifier;
  v20 = 2048;
  v21 = a1;
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v3, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v6 = "invalid";
      if (a1 && a1->identifier)
      {
        v6 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_local_endpoint";
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v4, v5, v7, buf, 0x20u);
      goto LABEL_30;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_local_endpoint";
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_local_endpoint";
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v9)
    {
      v10 = "invalid";
      if (a1 && a1->identifier)
      {
        v10 = a1->identifier;
      }

      *buf = 136446978;
      v17 = "nw_protocol_zombie_get_local_endpoint";
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = a1;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_parameters(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v17 = "nw_protocol_zombie_get_parameters";
  v18 = 2080;
  v19 = identifier;
  v20 = 2048;
  v21 = a1;
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v3, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v6 = "invalid";
      if (a1 && a1->identifier)
      {
        v6 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_parameters";
      v18 = 2080;
      v19 = v6;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v4, v5, v7, buf, 0x20u);
      goto LABEL_30;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_parameters";
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v17 = "nw_protocol_zombie_get_parameters";
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = a1;
      v7 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v9)
    {
      v10 = "invalid";
      if (a1 && a1->identifier)
      {
        v10 = a1->identifier;
      }

      *buf = 136446978;
      v17 = "nw_protocol_zombie_get_parameters";
      v18 = 2080;
      v19 = v10;
      v20 = 2048;
      v21 = a1;
      v22 = 2082;
      v23 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_protocol_zombie_link_state(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = "invalid";
  if (a1 && *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  v5 = "invalid";
  if (a2 && *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_link_state";
  v24 = 2080;
  v25 = v4;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v9 = *(a1 + 16);
      }

      v10 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v10 = *(a2 + 16);
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_link_state";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v16 = *(a1 + 16);
      }

      v17 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v17 = *(a2 + 16);
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_link_state";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v18 = *(a1 + 16);
      }

      v19 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v19 = *(a2 + 16);
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_link_state";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, other_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v14 = *(a1 + 16);
      }

      v15 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v15 = *(a2 + 16);
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_link_state";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, other_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_zombie_get_message_properties(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = "invalid";
  if (a1 && *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  v5 = "invalid";
  if (a2 && *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_get_message_properties";
  v24 = 2080;
  v25 = v4;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v9 = *(a1 + 16);
      }

      v10 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v10 = *(a2 + 16);
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_get_message_properties";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v16 = *(a1 + 16);
      }

      v17 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v17 = *(a2 + 16);
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_get_message_properties";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v18 = *(a1 + 16);
      }

      v19 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v19 = *(a2 + 16);
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_get_message_properties";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && *(a1 + 16))
      {
        v14 = *(a1 + 16);
      }

      v15 = "invalid";
      if (a2 && *(a2 + 16))
      {
        v15 = *(a2 + 16);
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_get_message_properties";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, input_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

uint64_t nw_protocol_zombie_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  *buf = 136446722;
  v18 = "nw_protocol_zombie_finalize_output_frames";
  v19 = 2080;
  v20 = identifier;
  v21 = 2048;
  v22 = a1;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v4, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v7 = "invalid";
      if (a1 && a1->identifier)
      {
        v7 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_finalize_output_frames";
      v19 = 2080;
      v20 = v7;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p";
LABEL_29:
      _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x20u);
      goto LABEL_30;
    }

    if (v15 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_finalize_output_frames";
      v19 = 2080;
      v20 = v12;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
        goto LABEL_30;
      }

      v13 = "invalid";
      if (a1 && a1->identifier)
      {
        v13 = a1->identifier;
      }

      *buf = 136446722;
      v18 = "nw_protocol_zombie_finalize_output_frames";
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = a1;
      v8 = "%{public}s protocol %s:%p, no backtrace";
      goto LABEL_29;
    }

    if (v10)
    {
      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      *buf = 136446978;
      v18 = "nw_protocol_zombie_finalize_output_frames";
      v19 = 2080;
      v20 = v11;
      v21 = 2048;
      v22 = a1;
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s protocol %s:%p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
  }

LABEL_30:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_output_frames(nw_protocol *a1, nw_protocol *a2, int a3, int a4, int a5, nw_frame_array_s *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v12 = "invalid";
  if (a2 && a2->identifier)
  {
    v12 = a2->identifier;
  }

  *buf = 136448002;
  v31 = "nw_protocol_zombie_get_output_frames";
  v32 = 2080;
  v33 = identifier;
  v34 = 2048;
  v35 = a1;
  v36 = 2080;
  v37 = v12;
  v38 = 2048;
  v39 = a2;
  v40 = 1024;
  v41 = a3;
  v42 = 1024;
  v43 = a4;
  v44 = 1024;
  v45 = a5;
  v13 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v13, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136448002;
      v31 = "nw_protocol_zombie_get_output_frames";
      v32 = 2080;
      v33 = v16;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v17;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v18 = "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u";
LABEL_44:
      _os_log_impl(&dword_181A37000, v14, v15, v18, buf, 0x46u);
      goto LABEL_45;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v23 = "invalid";
      if (a1 && a1->identifier)
      {
        v23 = a1->identifier;
      }

      v24 = "invalid";
      if (a2 && a2->identifier)
      {
        v24 = a2->identifier;
      }

      *buf = 136448002;
      v31 = "nw_protocol_zombie_get_output_frames";
      v32 = 2080;
      v33 = v23;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v24;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v18 = "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = type;
    v20 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v20)
      {
        goto LABEL_45;
      }

      v25 = "invalid";
      if (a1 && a1->identifier)
      {
        v25 = a1->identifier;
      }

      v26 = "invalid";
      if (a2 && a2->identifier)
      {
        v26 = a2->identifier;
      }

      *buf = 136448002;
      v31 = "nw_protocol_zombie_get_output_frames";
      v32 = 2080;
      v33 = v25;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v26;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v18 = "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u, no backtrace";
      goto LABEL_44;
    }

    if (v20)
    {
      v21 = "invalid";
      if (a1 && a1->identifier)
      {
        v21 = a1->identifier;
      }

      v22 = "invalid";
      if (a2 && a2->identifier)
      {
        v22 = a2->identifier;
      }

      *buf = 136448258;
      v31 = "nw_protocol_zombie_get_output_frames";
      v32 = 2080;
      v33 = v21;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v22;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v46 = 2082;
      v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u, dumping backtrace:%{public}s", buf, 0x50u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v13)
  {
    free(v13);
  }

  return 0;
}

uint64_t nw_protocol_zombie_get_input_frames(nw_protocol *a1, nw_protocol *a2, int a3, int a4, int a5, nw_frame_array_s *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v12 = "invalid";
  if (a2 && a2->identifier)
  {
    v12 = a2->identifier;
  }

  *buf = 136448002;
  v31 = "nw_protocol_zombie_get_input_frames";
  v32 = 2080;
  v33 = identifier;
  v34 = 2048;
  v35 = a1;
  v36 = 2080;
  v37 = v12;
  v38 = 2048;
  v39 = a2;
  v40 = 1024;
  v41 = a3;
  v42 = 1024;
  v43 = a4;
  v44 = 1024;
  v45 = a5;
  v13 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v13, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136448002;
      v31 = "nw_protocol_zombie_get_input_frames";
      v32 = 2080;
      v33 = v16;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v17;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v18 = "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u";
LABEL_44:
      _os_log_impl(&dword_181A37000, v14, v15, v18, buf, 0x46u);
      goto LABEL_45;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v23 = "invalid";
      if (a1 && a1->identifier)
      {
        v23 = a1->identifier;
      }

      v24 = "invalid";
      if (a2 && a2->identifier)
      {
        v24 = a2->identifier;
      }

      *buf = 136448002;
      v31 = "nw_protocol_zombie_get_input_frames";
      v32 = 2080;
      v33 = v23;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v24;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v18 = "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = type;
    v20 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v20)
      {
        goto LABEL_45;
      }

      v25 = "invalid";
      if (a1 && a1->identifier)
      {
        v25 = a1->identifier;
      }

      v26 = "invalid";
      if (a2 && a2->identifier)
      {
        v26 = a2->identifier;
      }

      *buf = 136448002;
      v31 = "nw_protocol_zombie_get_input_frames";
      v32 = 2080;
      v33 = v25;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v26;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v18 = "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u, no backtrace";
      goto LABEL_44;
    }

    if (v20)
    {
      v21 = "invalid";
      if (a1 && a1->identifier)
      {
        v21 = a1->identifier;
      }

      v22 = "invalid";
      if (a2 && a2->identifier)
      {
        v22 = a2->identifier;
      }

      *buf = 136448258;
      v31 = "nw_protocol_zombie_get_input_frames";
      v32 = 2080;
      v33 = v21;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v22;
      v38 = 2048;
      v39 = a2;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a5;
      v46 = 2082;
      v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %s:%p, input_protocol %s:%p, minimum_bytes %u, maximum_bytes %u, maximum_frame_count %u, dumping backtrace:%{public}s", buf, 0x50u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v13)
  {
    free(v13);
  }

  return 0;
}

void nw_protocol_zombie_input_flush(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_input_flush";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_flush";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_flush";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_flush";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_input_flush";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, output_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_zombie_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_output_finished";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_output_finished";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_output_finished";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_output_finished";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_output_finished";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, output_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_zombie_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_input_finished";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_finished";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_finished";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_finished";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_input_finished";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, output_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_zombie_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_output_available";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_output_available";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_output_available";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_output_available";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_output_available";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, output_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

void nw_protocol_zombie_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v23 = "nw_protocol_zombie_input_available";
  v24 = 2080;
  v25 = identifier;
  v26 = 2048;
  v27 = a1;
  v28 = 2080;
  v29 = v5;
  v30 = 2048;
  v31 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v6, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_available";
      v24 = 2080;
      v25 = v9;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v10;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_available";
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v23 = "nw_protocol_zombie_input_available";
      v24 = 2080;
      v25 = v18;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v19;
      v30 = 2048;
      v31 = a2;
      v11 = "%{public}s protocol %s:%p, output_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v23 = "nw_protocol_zombie_input_available";
      v24 = 2080;
      v25 = v14;
      v26 = 2048;
      v27 = a1;
      v28 = 2080;
      v29 = v15;
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, output_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }
}

uint64_t nw_protocol_zombie_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v7 = "invalid";
  if (a2 && a2->identifier)
  {
    v7 = a2->identifier;
  }

  *buf = 136447490;
  v26 = "nw_protocol_zombie_remove_input_handler";
  v27 = 2080;
  v28 = identifier;
  v29 = 2048;
  v30 = a1;
  v31 = 2080;
  v32 = v7;
  v33 = 2048;
  v34 = a2;
  v35 = 1024;
  v36 = a3;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v8, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v11 = "invalid";
      if (a1 && a1->identifier)
      {
        v11 = a1->identifier;
      }

      v12 = "invalid";
      if (a2 && a2->identifier)
      {
        v12 = a2->identifier;
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_remove_input_handler";
      v27 = 2080;
      v28 = v11;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v12;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, input_protocol %s:%p, destroy %{BOOL}d";
LABEL_44:
      _os_log_impl(&dword_181A37000, v9, v10, v13, buf, 0x3Au);
      goto LABEL_45;
    }

    if (v23 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_remove_input_handler";
      v27 = 2080;
      v28 = v18;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v19;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, input_protocol %s:%p, destroy %{BOOL}d, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_45;
      }

      v20 = "invalid";
      if (a1 && a1->identifier)
      {
        v20 = a1->identifier;
      }

      v21 = "invalid";
      if (a2 && a2->identifier)
      {
        v21 = a2->identifier;
      }

      *buf = 136447490;
      v26 = "nw_protocol_zombie_remove_input_handler";
      v27 = 2080;
      v28 = v20;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v21;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v13 = "%{public}s protocol %s:%p, input_protocol %s:%p, destroy %{BOOL}d, no backtrace";
      goto LABEL_44;
    }

    if (v15)
    {
      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447746;
      v26 = "nw_protocol_zombie_remove_input_handler";
      v27 = 2080;
      v28 = v16;
      v29 = 2048;
      v30 = a1;
      v31 = 2080;
      v32 = v17;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v37 = 2082;
      v38 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol %s:%p, input_protocol %s:%p, destroy %{BOOL}d, dumping backtrace:%{public}s", buf, 0x44u);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_zombie_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v7 = "invalid";
  if (a2 && a2->identifier)
  {
    v7 = a2->identifier;
  }

  v8 = "invalid";
  if (a3 && a3->identifier)
  {
    v8 = a3->identifier;
  }

  *buf = 136447746;
  v31 = "nw_protocol_zombie_replace_input_handler";
  v32 = 2080;
  v33 = identifier;
  v34 = 2048;
  v35 = a1;
  v36 = 2080;
  v37 = v7;
  v38 = 2048;
  v39 = a2;
  v40 = 2080;
  v41 = v8;
  v42 = 2048;
  v43 = a3;
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v9, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_60;
      }

      v12 = "invalid";
      if (a1 && a1->identifier)
      {
        v12 = a1->identifier;
      }

      v13 = "invalid";
      if (a2 && a2->identifier)
      {
        v13 = a2->identifier;
      }

      v14 = "invalid";
      if (a3 && a3->identifier)
      {
        v14 = a3->identifier;
      }

      *buf = 136447746;
      v31 = "nw_protocol_zombie_replace_input_handler";
      v32 = 2080;
      v33 = v12;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v13;
      v38 = 2048;
      v39 = a2;
      v40 = 2080;
      v41 = v14;
      v42 = 2048;
      v43 = a3;
      v15 = "%{public}s protocol %s:%p, old_input_handler %s:%p, new_input_handler %s:%p";
LABEL_59:
      _os_log_impl(&dword_181A37000, v10, v11, v15, buf, 0x48u);
      goto LABEL_60;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_60;
      }

      v21 = "invalid";
      if (a1 && a1->identifier)
      {
        v21 = a1->identifier;
      }

      v22 = "invalid";
      if (a2 && a2->identifier)
      {
        v22 = a2->identifier;
      }

      v23 = "invalid";
      if (a3 && a3->identifier)
      {
        v23 = a3->identifier;
      }

      *buf = 136447746;
      v31 = "nw_protocol_zombie_replace_input_handler";
      v32 = 2080;
      v33 = v21;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v22;
      v38 = 2048;
      v39 = a2;
      v40 = 2080;
      v41 = v23;
      v42 = 2048;
      v43 = a3;
      v15 = "%{public}s protocol %s:%p, old_input_handler %s:%p, new_input_handler %s:%p, backtrace limit exceeded";
      goto LABEL_59;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    v17 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v17)
      {
        goto LABEL_60;
      }

      v24 = "invalid";
      if (a1 && a1->identifier)
      {
        v24 = a1->identifier;
      }

      v25 = "invalid";
      if (a2 && a2->identifier)
      {
        v25 = a2->identifier;
      }

      v26 = "invalid";
      if (a3 && a3->identifier)
      {
        v26 = a3->identifier;
      }

      *buf = 136447746;
      v31 = "nw_protocol_zombie_replace_input_handler";
      v32 = 2080;
      v33 = v24;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v25;
      v38 = 2048;
      v39 = a2;
      v40 = 2080;
      v41 = v26;
      v42 = 2048;
      v43 = a3;
      v15 = "%{public}s protocol %s:%p, old_input_handler %s:%p, new_input_handler %s:%p, no backtrace";
      goto LABEL_59;
    }

    if (v17)
    {
      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      v20 = "invalid";
      if (a3 && a3->identifier)
      {
        v20 = a3->identifier;
      }

      *buf = 136448002;
      v31 = "nw_protocol_zombie_replace_input_handler";
      v32 = 2080;
      v33 = v18;
      v34 = 2048;
      v35 = a1;
      v36 = 2080;
      v37 = v19;
      v38 = 2048;
      v39 = a2;
      v40 = 2080;
      v41 = v20;
      v42 = 2048;
      v43 = a3;
      v44 = 2082;
      v45 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s protocol %s:%p, old_input_handler %s:%p, new_input_handler %s:%p, dumping backtrace:%{public}s", buf, 0x52u);
    }

    free(backtrace_string);
  }

LABEL_60:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

uint64_t nw_protocol_zombie_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  identifier = "invalid";
  if (a1 && a1->identifier)
  {
    identifier = a1->identifier;
  }

  v5 = "invalid";
  if (a2 && a2->identifier)
  {
    v5 = a2->identifier;
  }

  *buf = 136447234;
  v24 = "nw_protocol_zombie_add_input_handler";
  v25 = 2080;
  v26 = identifier;
  v27 = 2048;
  v28 = a1;
  v29 = 2080;
  v30 = v5;
  v31 = 2048;
  v32 = a2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v6, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v9 = "invalid";
      if (a1 && a1->identifier)
      {
        v9 = a1->identifier;
      }

      v10 = "invalid";
      if (a2 && a2->identifier)
      {
        v10 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_add_input_handler";
      v25 = 2080;
      v26 = v9;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v10;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v11, buf, 0x34u);
      goto LABEL_45;
    }

    if (v21 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_45;
      }

      v16 = "invalid";
      if (a1 && a1->identifier)
      {
        v16 = a1->identifier;
      }

      v17 = "invalid";
      if (a2 && a2->identifier)
      {
        v17 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_add_input_handler";
      v25 = 2080;
      v26 = v16;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v17;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v18 = "invalid";
      if (a1 && a1->identifier)
      {
        v18 = a1->identifier;
      }

      v19 = "invalid";
      if (a2 && a2->identifier)
      {
        v19 = a2->identifier;
      }

      *buf = 136447234;
      v24 = "nw_protocol_zombie_add_input_handler";
      v25 = 2080;
      v26 = v18;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v19;
      v31 = 2048;
      v32 = a2;
      v11 = "%{public}s protocol %s:%p, input_protocol %s:%p, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      v14 = "invalid";
      if (a1 && a1->identifier)
      {
        v14 = a1->identifier;
      }

      v15 = "invalid";
      if (a2 && a2->identifier)
      {
        v15 = a2->identifier;
      }

      *buf = 136447490;
      v24 = "nw_protocol_zombie_add_input_handler";
      v25 = 2080;
      v26 = v14;
      v27 = 2048;
      v28 = a1;
      v29 = 2080;
      v30 = v15;
      v31 = 2048;
      v32 = a2;
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol %s:%p, input_protocol %s:%p, dumping backtrace:%{public}s", buf, 0x3Eu);
    }

    free(backtrace_string);
  }

LABEL_45:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_upcast(uint64_t a1)
{
  if (a1)
  {
    return a1 - 96;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_get_identifier(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_get_identifier";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_identifier";
        v5 = "%{public}s called with null protocol";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "__nw_protocol_get_identifier";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_identifier";
        v5 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_identifier";
        v5 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

uint64_t nw_protocol_get_callbacks(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 24);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_get_callbacks";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_callbacks";
        v5 = "%{public}s called with null protocol";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "__nw_protocol_get_callbacks";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_callbacks";
        v5 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_callbacks";
        v5 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

const char *nw_protocol_get_name(uint64_t a1)
{
  result = "invalid";
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

uint64_t nw_protocol_get_handle(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 40);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_get_handle";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_handle";
        v5 = "%{public}s called with null protocol";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "__nw_protocol_get_handle";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_handle";
        v5 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_handle";
        v5 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

void nw_protocol_set_output_handler_context(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 56) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_set_output_handler_context";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_output_handler_context";
      v5 = "%{public}s called with null protocol";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_protocol_set_output_handler_context";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_protocol_set_output_handler_context";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "__nw_protocol_set_output_handler_context";
      v5 = "%{public}s called with null protocol, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_protocol_get_output_handler_context(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 56);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_get_output_handler_context";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_output_handler_context";
        v5 = "%{public}s called with null protocol";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "__nw_protocol_get_output_handler_context";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_output_handler_context";
        v5 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_output_handler_context";
        v5 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

uint64_t nw_protocol_retain(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    v2 = result;
    if (v1 == &nw_protocol_ref_counted_handle || v1 == &nw_protocol_ref_counted_additional_handle && (v2 = *(result + 64)) != 0)
    {
      v3 = *(v2 + 88);
      if (v3)
      {
        *(v2 + 88) = v3 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL nw_protocol_is_zombie(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 24);
    if (atomic_load_explicit(&nw_protocol_get_zombie_callbacks(void)::once_flag, memory_order_acquire) != -1)
    {
      *buf = &v9;
      *type = buf;
      std::__call_once(&nw_protocol_get_zombie_callbacks(void)::once_flag, type, std::__call_once_proxy[abi:nn200100]<std::tuple<nw_protocol_get_zombie_callbacks(void)::$_0 &&>>);
    }

    return v1 == &nw_protocol_get_zombie_callbacks(void)::callbacks;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_is_zombie";
  v3 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, type, &v9))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type[0];
      if (os_log_type_enabled(v4, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_is_zombie";
        v6 = "%{public}s called with null protocol";
LABEL_19:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v9 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type[0];
      v8 = os_log_type_enabled(v4, type[0]);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_is_zombie";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v8)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_is_zombie";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_19;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type[0];
      if (os_log_type_enabled(v4, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_is_zombie";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_quic_info_destroy(uint64_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nw_array_remove_all_objects(*a1);
    if (*a1)
    {
      os_release(*a1);
    }

    free(a1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_quic_info_destroy";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v11 = "nw_quic_info_destroy";
      v5 = "%{public}s called with null quic_info";
      goto LABEL_20;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v11 = "nw_quic_info_destroy";
      v5 = "%{public}s called with null quic_info, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "nw_quic_info_destroy";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null quic_info, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "nw_quic_info_destroy";
      v5 = "%{public}s called with null quic_info, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_21:
  if (v2)
  {
    free(v2);
  }
}

BOOL __currentProcessHasSSIDEntitlement_block_invoke()
{
  result = NWUtilsCurrentProcessHasEntitlement(@"com.apple.wlan.authentication") || NWUtilsCurrentProcessHasEntitlement(@"com.apple.private.corewifi");
  currentProcessHasSSIDEntitlement_hasSSIDEntitlement = result;
  return result;
}

id NWMonitorStatusToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", a1];
  }

  else
  {
    v2 = *(&off_1E6A2CCB8 + a1);
  }

  return v2;
}

nw_ws_response_t nw_ws_response_create(nw_ws_response_status_t status, const char *selected_subprotocol)
{
  v36 = *MEMORY[0x1E69E9840];
  if (status == nw_ws_response_status_invalid)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_ws_response_create";
    v14 = _os_log_send_and_compose_impl();

    LOBYTE(v31.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v14, &v31, &type))
    {
      goto LABEL_44;
    }

    if (LOBYTE(v31.receiver) == 17)
    {
      v15 = __nwlog_obj();
      receiver = v31.receiver;
      if (os_log_type_enabled(v15, v31.receiver))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_create";
        _os_log_impl(&dword_181A37000, v15, receiver, "%{public}s called with null status", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v23 = v31.receiver;
      v24 = os_log_type_enabled(v15, v31.receiver);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v33 = "nw_ws_response_create";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null status, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_31;
      }

      if (v24)
      {
        *buf = 136446210;
        v33 = "nw_ws_response_create";
        _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null status, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v27 = v31.receiver;
      if (os_log_type_enabled(v15, v31.receiver))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_create";
        _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null status, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_44;
  }

  v4 = [NWConcrete_nw_ws_response alloc];
  if (!v4)
  {
    return 0;
  }

  v31.receiver = v4;
  v31.super_class = NWConcrete_nw_ws_response;
  v5 = objc_msgSendSuper2(&v31, sel_init);
  if (!v5)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v33 = "[NWConcrete_nw_ws_response initWithStatus:selectedProtocol:]";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if ((__nwlog_fault(v14, &type, &v29) & 1) == 0)
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v33 = "[NWConcrete_nw_ws_response initWithStatus:selectedProtocol:]";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s [super init] failed", buf, 0xCu);
      }

LABEL_43:

LABEL_44:
      if (v14)
      {
        free(v14);
      }

      return 0;
    }

    if (v29 != 1)
    {
      v18 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v33 = "[NWConcrete_nw_ws_response initWithStatus:selectedProtocol:]";
        _os_log_impl(&dword_181A37000, v18, v28, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_43;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v33 = "[NWConcrete_nw_ws_response initWithStatus:selectedProtocol:]";
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_43;
    }

    if (v26)
    {
      *buf = 136446466;
      v33 = "[NWConcrete_nw_ws_response initWithStatus:selectedProtocol:]";
      v34 = 2082;
      v35 = backtrace_string;
      _os_log_impl(&dword_181A37000, v18, v25, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_44;
  }

  v6 = v5;
  LODWORD(v5[1].isa) = status;
  if (!selected_subprotocol)
  {
LABEL_7:
    v8 = xpc_array_create(0, 0);
    isa = v6[3].isa;
    v6[3].isa = v8;

    v10 = xpc_array_create(0, 0);
    v11 = v6[4].isa;
    v6[4].isa = v10;

    return v6;
  }

  v7 = strdup(selected_subprotocol);
  if (v7)
  {
LABEL_6:
    v6[2].isa = v7;
    goto LABEL_7;
  }

  v20 = __nwlog_obj();
  os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v33 = "strict_strdup";
  v21 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v21);
  if (!result)
  {
    free(v21);
    v7 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

nw_ws_response_status_t nw_ws_response_get_status(nw_ws_response_t response)
{
  if (response)
  {
    LODWORD(response) = response[1].isa;
  }

  return response;
}

const char *__cdecl nw_ws_response_get_selected_subprotocol(nw_ws_response_t response)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = response;
  if (v1)
  {
    isa = v1[2].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_ws_response_get_selected_subprotocol";
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
        v15 = "nw_ws_response_get_selected_subprotocol";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null response", buf, 0xCu);
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
          v15 = "nw_ws_response_get_selected_subprotocol";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_ws_response_get_selected_subprotocol";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null response, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_ws_response_get_selected_subprotocol";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null response, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

void nw_ws_response_add_additional_header(nw_ws_response_t response, const char *name, const char *value)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = response;
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_ws_response_add_additional_header";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null response", buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v33 = "nw_ws_response_add_additional_header";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_62:
        if (!v12)
        {
          goto LABEL_12;
        }

LABEL_63:
        free(v12);
        goto LABEL_12;
      }

      if (v21)
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null response, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v27, "%{public}s called with null response, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_61:

    goto LABEL_62;
  }

  if (!name)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_ws_response_add_additional_header";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null name", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v30 != 1)
    {
      v13 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_61;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v13, type);
    if (!v22)
    {
      if (v24)
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null name, no backtrace", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v24)
    {
      *buf = 136446466;
      v33 = "nw_ws_response_add_additional_header";
      v34 = 2082;
      v35 = v22;
      _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_42;
  }

  if (!value)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_ws_response_add_additional_header";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null value", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v30 != 1)
    {
      v13 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null value, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_61;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v13, type);
    if (!v22)
    {
      if (v26)
      {
        *buf = 136446210;
        v33 = "nw_ws_response_add_additional_header";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null value, no backtrace", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v26)
    {
      *buf = 136446466;
      v33 = "nw_ws_response_add_additional_header";
      v34 = 2082;
      v35 = v22;
      _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null value, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_42:

    free(v22);
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

  if (!strcasecmp(name, "Sec-WebSocket-Accept") || !strcasecmp(name, "Sec-WebSocket-Protocol") || !strcasecmp(name, "Upgrade") || !strcasecmp(name, "Connection"))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v33 = "nw_ws_response_add_additional_header";
      v34 = 2080;
      v35 = name;
      v36 = 2080;
      v37 = value;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Cannot override (%s, %s) header in the server's response", buf, 0x20u);
    }
  }

  else
  {
    isa = v5[3].isa;
    v7 = xpc_string_create(name);
    xpc_array_append_value(isa, v7);

    v8 = v5[4].isa;
    v9 = xpc_string_create(value);
    xpc_array_append_value(v8, v9);
  }

LABEL_12:
}

BOOL nw_ws_response_enumerate_additional_headers(nw_ws_response_t response, nw_ws_additional_header_enumerator_t enumerator)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = response;
  v4 = enumerator;
  v5 = v4;
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_ws_response_enumerate_additional_headers";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_ws_response_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null response", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v29 = "nw_ws_response_enumerate_additional_headers";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v13)
        {
LABEL_6:
          v8 = 0;
          goto LABEL_7;
        }

LABEL_42:
        free(v13);
        goto LABEL_6;
      }

      if (v20)
      {
        *buf = 136446210;
        v29 = "nw_ws_response_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null response, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_ws_response_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null response, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (!v4)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_ws_response_enumerate_additional_headers";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_ws_response_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null enumerator", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v14, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          v29 = "nw_ws_response_enumerate_additional_headers";
          v30 = 2082;
          v31 = v21;
          _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        if (!v13)
        {
          goto LABEL_6;
        }

        goto LABEL_42;
      }

      if (v23)
      {
        *buf = 136446210;
        v29 = "nw_ws_response_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_ws_response_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_40;
  }

  v6 = 0;
  while (1)
  {
    count = xpc_array_get_count(v3[3].isa);
    v8 = v6 >= count;
    if (v6 >= count)
    {
      break;
    }

    string = xpc_array_get_string(v3[3].isa, v6);
    v10 = xpc_array_get_string(v3[4].isa, v6++);
    if (((v5)[2](v5, string, v10) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:

  return v8;
}

const char *nw_group_type_to_string(unsigned int a1)
{
  if (a1 > 4)
  {
    return "unknown";
  }

  else
  {
    return off_1E6A2CCD0[a1];
  }
}

BOOL nw_group_descriptor_allows_endpoint(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_group_descriptor_allows_endpoint";
    v13 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v46 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v13, type, &v46))
    {
      goto LABEL_44;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v28 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v46 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v32 = type[0];
      v33 = os_log_type_enabled(v14, type[0]);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_group_descriptor_allows_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v32, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_44;
      }

      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v32, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_43;
  }

  if (!v4)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_group_descriptor_allows_endpoint";
    v13 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v46 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v13, type, &v46))
    {
      goto LABEL_44;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v46 == OS_LOG_TYPE_INFO)
    {
      v34 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v35 = type[0];
      v36 = os_log_type_enabled(v14, type[0]);
      if (v34)
      {
        if (v36)
        {
          *buf = 136446466;
          *&buf[4] = "nw_group_descriptor_allows_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          _os_log_impl(&dword_181A37000, v14, v35, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_68;
      }

      if (v36)
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v35, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v38 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v38, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_43;
  }

  v6 = 0;
  v7 = v3[2];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = v4;
        v9 = _nw_endpoint_get_type(v8);

        if (v9 == 1)
        {
          memset(buf, 0, sizeof(buf));
          v52 = 0;
          if (nw_endpoint_fillout_v4v6_address(v8, buf))
          {
            if (buf[1] != 2)
            {
              if (buf[1] == 30 && buf[8] == 255)
              {
                goto LABEL_21;
              }

              goto LABEL_38;
            }

            if ((buf[4] & 0xF0) != 0xE0)
            {
LABEL_38:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v24 = gLogObj;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *type = 136446466;
                v48 = "nw_group_descriptor_allows_endpoint";
                v49 = 2112;
                v50 = v8;
                _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s Endpoint %@ is not a multicast address", type, 0x16u);
              }

              goto LABEL_46;
            }

LABEL_21:
            v6 = 1;
            goto LABEL_47;
          }

          v39 = __nwlog_obj();
          *type = 136446210;
          v48 = "nw_group_descriptor_allows_endpoint";
          v13 = _os_log_send_and_compose_impl();

          v46 = OS_LOG_TYPE_ERROR;
          v45 = 0;
          if (__nwlog_fault(v13, &v46, &v45))
          {
            if (v46 == OS_LOG_TYPE_FAULT)
            {
              v40 = __nwlog_obj();
              v41 = v46;
              if (os_log_type_enabled(v40, v46))
              {
                *type = 136446210;
                v48 = "nw_group_descriptor_allows_endpoint";
                _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null success", type, 0xCu);
              }

LABEL_97:

              goto LABEL_44;
            }

            if (v45 != 1)
            {
              v40 = __nwlog_obj();
              v44 = v46;
              if (os_log_type_enabled(v40, v46))
              {
                *type = 136446210;
                v48 = "nw_group_descriptor_allows_endpoint";
                _os_log_impl(&dword_181A37000, v40, v44, "%{public}s called with null success, backtrace limit exceeded", type, 0xCu);
              }

              goto LABEL_97;
            }

            v34 = __nw_create_backtrace_string();
            v40 = __nwlog_obj();
            v42 = v46;
            v43 = os_log_type_enabled(v40, v46);
            if (!v34)
            {
              if (v43)
              {
                *type = 136446210;
                v48 = "nw_group_descriptor_allows_endpoint";
                _os_log_impl(&dword_181A37000, v40, v42, "%{public}s called with null success, no backtrace", type, 0xCu);
              }

              goto LABEL_97;
            }

            if (v43)
            {
              *type = 136446466;
              v48 = "nw_group_descriptor_allows_endpoint";
              v49 = 2082;
              v50 = v34;
              _os_log_impl(&dword_181A37000, v40, v42, "%{public}s called with null success, dumping backtrace:%{public}s", type, 0x16u);
            }

LABEL_68:
            free(v34);
            if (!v13)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }

LABEL_44:
          if (v13)
          {
LABEL_45:
            free(v13);
          }

LABEL_46:
          v6 = 0;
          goto LABEL_47;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "nw_group_descriptor_allows_endpoint";
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s Endpoint %@ is not of type address", buf, 0x16u);
        }

LABEL_24:

        goto LABEL_46;
      }

      goto LABEL_47;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_group_descriptor_allows_endpoint";
    v13 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v46 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v13, type, &v46))
    {
      goto LABEL_44;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Invalid group descriptor type", buf, 0xCu);
      }
    }

    else if (v46 == OS_LOG_TYPE_INFO)
    {
      v19 = __nw_create_backtrace_string();
      if (v19)
      {
        v20 = v19;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type[0];
        if (os_log_type_enabled(v21, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_group_descriptor_allows_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Invalid group descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        if (!v13)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v14 = __nwlog_obj();
      v25 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v25, "%{public}s Invalid group descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v23 = type[0];
      if (os_log_type_enabled(v14, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_group_descriptor_allows_endpoint";
        _os_log_impl(&dword_181A37000, v14, v23, "%{public}s Invalid group descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v7 == 2)
  {
    v16 = v4;
    v17 = _nw_endpoint_get_type(v16);

    if (v17)
    {
      goto LABEL_21;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_group_descriptor_allows_endpoint";
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s Endpoint %@ is of invalid type for multiplex group", buf, 0x16u);
    }

    goto LABEL_24;
  }

  if (v7 == 3)
  {
    v10 = v4;
    v11 = _nw_endpoint_get_type(v10);

    v6 = v11 == 6;
  }

LABEL_47:

  return v6;
}

nw_group_descriptor_t nw_group_descriptor_create_multicast(nw_endpoint_t multicast_group)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = multicast_group;
  if (v1)
  {
    v2 = [[NWConcrete_nw_group_descriptor alloc] initWithType:v1 member:0 groupID:?];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_group_descriptor_create_multicast";
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
        v15 = "nw_group_descriptor_create_multicast";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null multicast_group", buf, 0xCu);
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
          v15 = "nw_group_descriptor_create_multicast";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null multicast_group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_create_multicast";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null multicast_group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_create_multicast";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null multicast_group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

nw_group_descriptor_t nw_group_descriptor_create_multiplex(nw_endpoint_t remote_endpoint)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = remote_endpoint;
  if (v1)
  {
    v2 = [[NWConcrete_nw_group_descriptor alloc] initWithType:v1 member:0 groupID:?];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_group_descriptor_create_multiplex";
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
        v15 = "nw_group_descriptor_create_multiplex";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null remote_endpoint", buf, 0xCu);
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
          v15 = "nw_group_descriptor_create_multiplex";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_create_multiplex";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null remote_endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_group_descriptor_create_multiplex";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null remote_endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}