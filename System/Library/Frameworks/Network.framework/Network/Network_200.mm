uint64_t nw_http_fillout_indeterminate_binary_message_body_chunk(const void *a1, size_t a2, int a3, void *a4, char *__dst, unint64_t a6)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!__dst)
  {
    __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
    v34 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v82) = 0;
    if (!__nwlog_fault(v34, type, &v82))
    {
      goto LABEL_177;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v37 = "%{public}s called with null buffer";
LABEL_176:
        _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
      }

LABEL_177:
      if (v34)
      {
        free(v34);
      }

      return 0;
    }

    if (v82 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v37 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    backtrace_string = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type[0];
    v39 = os_log_type_enabled(v35, type[0]);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v37 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    if (v39)
    {
      *buf = 136446466;
      v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v94 = 2082;
      v95 = backtrace_string;
      v40 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_99:
      _os_log_impl(&dword_181A37000, v35, v36, v40, buf, 0x16u);
    }

LABEL_100:
    free(backtrace_string);
    goto LABEL_177;
  }

  if (!a1 && a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
    v34 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v82) = 0;
    if (!__nwlog_fault(v34, type, &v82))
    {
      goto LABEL_177;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v37 = "%{public}s called with null body_content";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    if (v82 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v37 = "%{public}s called with null body_content, backtrace limit exceeded";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    backtrace_string = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type[0];
    v57 = os_log_type_enabled(v35, type[0]);
    if (!backtrace_string)
    {
      if (v57)
      {
        *buf = 136446210;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v37 = "%{public}s called with null body_content, no backtrace";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    if (v57)
    {
      *buf = 136446466;
      v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v94 = 2082;
      v95 = backtrace_string;
      v40 = "%{public}s called with null body_content, dumping backtrace:%{public}s";
      goto LABEL_99;
    }

    goto LABEL_100;
  }

  *type = 0;
  v87 = type;
  v88 = 0x2000000000;
  v89 = __dst;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = a6;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (a2 <= 0x3F)
  {
    __src = a2;
    v10 = 1;
    v11 = a6 - 1;
    if (a6)
    {
      goto LABEL_7;
    }

LABEL_30:
    __nwlog_obj();
    *buf = 136446210;
    v93 = "_http_safe_append";
    v25 = _os_log_send_and_compose_impl();
    v91 = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (__nwlog_fault(v25, &v91, &v90))
    {
      if (v91 == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = v91;
        if (os_log_type_enabled(v26, v91))
        {
          *buf = 136446210;
          v93 = "_http_safe_append";
          v28 = "%{public}s called with null (*remaining >= length)";
LABEL_158:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
      }

      else if (v90 == 1)
      {
        v55 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = v91;
        v56 = os_log_type_enabled(v26, v91);
        if (v55)
        {
          if (v56)
          {
            *buf = 136446466;
            v93 = "_http_safe_append";
            v94 = 2082;
            v95 = v55;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v55);
          goto LABEL_159;
        }

        if (v56)
        {
          *buf = 136446210;
          v93 = "_http_safe_append";
          v28 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_158;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = v91;
        if (os_log_type_enabled(v26, v91))
        {
          *buf = 136446210;
          v93 = "_http_safe_append";
          v28 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_158;
        }
      }
    }

LABEL_159:
    if (v25)
    {
      free(v25);
    }

    *(v87 + 3) = 0;
    goto LABEL_162;
  }

  if (!(a2 >> 14))
  {
    __src = bswap32(a2 | 0x4000) >> 16;
    v10 = 2;
    v11 = a6 - 2;
    if (a6 < 2)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  if (!(a2 >> 30))
  {
    __src = bswap32(a2 | 0x80000000);
    v10 = 4;
    v11 = a6 - 4;
    if (a6 < 4)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  if (!(a2 >> 62))
  {
    __src = bswap64(a2 | 0xC000000000000000);
    v10 = 8;
    v11 = a6 - 8;
    if (a6 < 8)
    {
      goto LABEL_30;
    }

LABEL_7:
    v12 = __dst;
    memcpy(__dst, &__src, v10);
    v85 = v11;
    v13 = &v12[v10];
    v89 = v13;
    v14 = &v82;
    if (a1)
    {
LABEL_8:
      if (v14[3] >= a2)
      {
        memcpy(v13, a1, a2);
        v15 = v14[3];
        v14[3] = v15 - a2;
        if (v15 < a2)
        {
          if (gLogDatapath == 1)
          {
            v51 = __nwlog_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v52 = v14[3];
              *buf = 136446978;
              v93 = "_http_safe_append";
              v94 = 2082;
              v95 = "*remaining";
              v96 = 2048;
              v97 = a2;
              v98 = 2048;
              v99 = v52;
              _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          v14[3] = 0;
        }

        __dst = &v13[a2];
        *(v87 + 3) = &v13[a2];
LABEL_13:
        if (!a3)
        {
LABEL_25:
          v23 = 1;
LABEL_26:
          _Block_object_dispose(&v82, 8);
          _Block_object_dispose(type, 8);
          return v23;
        }

        v16 = v83;
        if (v83[3])
        {
          *__dst = 0;
          v17 = v16[3];
          v16[3] = v17 - 1;
          if (!v17)
          {
            if (gLogDatapath == 1)
            {
              v58 = __dst;
              v59 = __nwlog_obj();
              v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG);
              __dst = v58;
              if (v60)
              {
                v61 = v16[3];
                *buf = 136446978;
                v93 = "_http_safe_append";
                v94 = 2082;
                v95 = "*remaining";
                v96 = 2048;
                v97 = 1;
                v98 = 2048;
                v99 = v61;
                _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
                __dst = v58;
              }
            }

            v16[3] = 0;
          }

          v18 = __dst + 1;
          *(v87 + 3) = __dst + 1;
          if (a4 && (v80[0] = MEMORY[0x1E69E9820], v80[1] = 0x40000000, v80[2] = __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke, v80[3] = &unk_1E6A344E8, v80[4] = type, v80[5] = &v82, v19 = a4, v20 = v80, _nw_http_fields_enumerate_const_field(v19, v20), v20, v19, (v18 = *(v87 + 3)) == 0))
          {
            __nwlog_obj();
            *buf = 136446210;
            v93 = "_http_safe_append";
            v45 = _os_log_send_and_compose_impl();
            LOBYTE(__src) = 16;
            v91 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v45, &__src, &v91))
            {
              goto LABEL_204;
            }

            if (__src == 17)
            {
              v46 = __nwlog_obj();
              v47 = __src;
              if (!os_log_type_enabled(v46, __src))
              {
                goto LABEL_204;
              }

              *buf = 136446210;
              v93 = "_http_safe_append";
              v48 = "%{public}s called with null buffer";
              goto LABEL_203;
            }

            if (v91 != OS_LOG_TYPE_INFO)
            {
              v46 = __nwlog_obj();
              v47 = __src;
              if (!os_log_type_enabled(v46, __src))
              {
                goto LABEL_204;
              }

              *buf = 136446210;
              v93 = "_http_safe_append";
              v48 = "%{public}s called with null buffer, backtrace limit exceeded";
              goto LABEL_203;
            }

            v64 = __nw_create_backtrace_string();
            v46 = __nwlog_obj();
            v47 = __src;
            v65 = os_log_type_enabled(v46, __src);
            if (!v64)
            {
              if (!v65)
              {
                goto LABEL_204;
              }

              *buf = 136446210;
              v93 = "_http_safe_append";
              v48 = "%{public}s called with null buffer, no backtrace";
              goto LABEL_203;
            }

            if (v65)
            {
              *buf = 136446466;
              v93 = "_http_safe_append";
              v94 = 2082;
              v95 = v64;
              _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v64);
          }

          else
          {
            v21 = v83;
            if (v83[3])
            {
              *v18 = 0;
              v22 = v21[3];
              v21[3] = v22 - 1;
              if (!v22)
              {
                if (gLogDatapath == 1)
                {
                  v66 = __nwlog_obj();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                  {
                    v67 = v21[3];
                    *buf = 136446978;
                    v93 = "_http_safe_append";
                    v94 = 2082;
                    v95 = "*remaining";
                    v96 = 2048;
                    v97 = 1;
                    v98 = 2048;
                    v99 = v67;
                    _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
                  }
                }

                v21[3] = 0;
              }

              *(v87 + 3) = v18 + 1;
              goto LABEL_25;
            }

            __nwlog_obj();
            *buf = 136446210;
            v93 = "_http_safe_append";
            v45 = _os_log_send_and_compose_impl();
            LOBYTE(__src) = 16;
            v91 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v45, &__src, &v91))
            {
              if (__src == 17)
              {
                v46 = __nwlog_obj();
                v47 = __src;
                if (!os_log_type_enabled(v46, __src))
                {
                  goto LABEL_204;
                }

                *buf = 136446210;
                v93 = "_http_safe_append";
                v48 = "%{public}s called with null (*remaining >= length)";
                goto LABEL_203;
              }

              if (v91 != OS_LOG_TYPE_INFO)
              {
                v46 = __nwlog_obj();
                v47 = __src;
                if (!os_log_type_enabled(v46, __src))
                {
                  goto LABEL_204;
                }

                *buf = 136446210;
                v93 = "_http_safe_append";
                v48 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
                goto LABEL_203;
              }

              v68 = __nw_create_backtrace_string();
              v46 = __nwlog_obj();
              v47 = __src;
              v69 = os_log_type_enabled(v46, __src);
              if (v68)
              {
                if (v69)
                {
                  *buf = 136446466;
                  v93 = "_http_safe_append";
                  v94 = 2082;
                  v95 = v68;
                  _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v68);
                if (!v45)
                {
                  goto LABEL_206;
                }

                goto LABEL_205;
              }

              if (v69)
              {
                *buf = 136446210;
                v93 = "_http_safe_append";
                v48 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_203:
                _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
              }
            }
          }

LABEL_204:
          if (!v45)
          {
LABEL_206:
            *(v87 + 3) = 0;
            __nwlog_obj();
            *buf = 136446210;
            v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
            v70 = _os_log_send_and_compose_impl();
            LOBYTE(__src) = 16;
            v91 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v70, &__src, &v91))
            {
              goto LABEL_220;
            }

            if (__src == 17)
            {
              v71 = __nwlog_obj();
              v72 = __src;
              if (!os_log_type_enabled(v71, __src))
              {
                goto LABEL_220;
              }

              *buf = 136446210;
              v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v73 = "%{public}s called with null cursor";
              goto LABEL_219;
            }

            if (v91 != OS_LOG_TYPE_INFO)
            {
              v71 = __nwlog_obj();
              v72 = __src;
              if (!os_log_type_enabled(v71, __src))
              {
                goto LABEL_220;
              }

              *buf = 136446210;
              v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v73 = "%{public}s called with null cursor, backtrace limit exceeded";
              goto LABEL_219;
            }

            v78 = __nw_create_backtrace_string();
            v71 = __nwlog_obj();
            v72 = __src;
            v79 = os_log_type_enabled(v71, __src);
            if (!v78)
            {
              if (!v79)
              {
                goto LABEL_220;
              }

              *buf = 136446210;
              v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v73 = "%{public}s called with null cursor, no backtrace";
              goto LABEL_219;
            }

            if (v79)
            {
              *buf = 136446466;
              v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v94 = 2082;
              v95 = v78;
              _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v78);
LABEL_220:
            if (!v70)
            {
LABEL_222:
              v23 = 0;
              goto LABEL_26;
            }

LABEL_221:
            free(v70);
            goto LABEL_222;
          }

LABEL_205:
          free(v45);
          goto LABEL_206;
        }

        __nwlog_obj();
        *buf = 136446210;
        v93 = "_http_safe_append";
        v41 = _os_log_send_and_compose_impl();
        LOBYTE(__src) = 16;
        v91 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v41, &__src, &v91))
        {
          if (__src == 17)
          {
            v42 = __nwlog_obj();
            v43 = __src;
            if (!os_log_type_enabled(v42, __src))
            {
              goto LABEL_183;
            }

            *buf = 136446210;
            v93 = "_http_safe_append";
            v44 = "%{public}s called with null (*remaining >= length)";
LABEL_182:
            _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
            goto LABEL_183;
          }

          if (v91 != OS_LOG_TYPE_INFO)
          {
            v42 = __nwlog_obj();
            v43 = __src;
            if (!os_log_type_enabled(v42, __src))
            {
              goto LABEL_183;
            }

            *buf = 136446210;
            v93 = "_http_safe_append";
            v44 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
            goto LABEL_182;
          }

          v62 = __nw_create_backtrace_string();
          v42 = __nwlog_obj();
          v43 = __src;
          v63 = os_log_type_enabled(v42, __src);
          if (!v62)
          {
            if (!v63)
            {
              goto LABEL_183;
            }

            *buf = 136446210;
            v93 = "_http_safe_append";
            v44 = "%{public}s called with null (*remaining >= length), no backtrace";
            goto LABEL_182;
          }

          if (v63)
          {
            *buf = 136446466;
            v93 = "_http_safe_append";
            v94 = 2082;
            v95 = v62;
            _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v62);
        }

LABEL_183:
        if (v41)
        {
          free(v41);
        }

        *(v87 + 3) = 0;
        __nwlog_obj();
        *buf = 136446210;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v70 = _os_log_send_and_compose_impl();
        LOBYTE(__src) = 16;
        v91 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v70, &__src, &v91))
        {
          goto LABEL_220;
        }

        if (__src == 17)
        {
          v71 = __nwlog_obj();
          v72 = __src;
          if (!os_log_type_enabled(v71, __src))
          {
            goto LABEL_220;
          }

          *buf = 136446210;
          v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
          v73 = "%{public}s called with null cursor";
          goto LABEL_219;
        }

        if (v91 != OS_LOG_TYPE_INFO)
        {
          v71 = __nwlog_obj();
          v72 = __src;
          if (!os_log_type_enabled(v71, __src))
          {
            goto LABEL_220;
          }

          *buf = 136446210;
          v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
          v73 = "%{public}s called with null cursor, backtrace limit exceeded";
          goto LABEL_219;
        }

        v74 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v72 = __src;
        v77 = os_log_type_enabled(v71, __src);
        if (!v74)
        {
          if (!v77)
          {
            goto LABEL_220;
          }

          *buf = 136446210;
          v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
          v73 = "%{public}s called with null cursor, no backtrace";
          goto LABEL_219;
        }

        if (!v77)
        {
LABEL_193:
          free(v74);
          if (!v70)
          {
            goto LABEL_222;
          }

          goto LABEL_221;
        }

LABEL_192:
        *buf = 136446466;
        v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
        v94 = 2082;
        v95 = v74;
        _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        goto LABEL_193;
      }

      __nwlog_obj();
      *buf = 136446210;
      v93 = "_http_safe_append";
      v30 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      v91 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v30, &__src, &v91))
      {
        if (__src == 17)
        {
          v31 = __nwlog_obj();
          v32 = __src;
          if (!os_log_type_enabled(v31, __src))
          {
            goto LABEL_142;
          }

          *buf = 136446210;
          v93 = "_http_safe_append";
          v33 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_141;
        }

        if (v91 != OS_LOG_TYPE_INFO)
        {
          v31 = __nwlog_obj();
          v32 = __src;
          if (!os_log_type_enabled(v31, __src))
          {
            goto LABEL_142;
          }

          *buf = 136446210;
          v93 = "_http_safe_append";
          v33 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_141;
        }

        v53 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v32 = __src;
        v54 = os_log_type_enabled(v31, __src);
        if (v53)
        {
          if (v54)
          {
            *buf = 136446466;
            v93 = "_http_safe_append";
            v94 = 2082;
            v95 = v53;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v53);
          if (!v30)
          {
LABEL_144:
            *(v87 + 3) = 0;
            __nwlog_obj();
            *buf = 136446210;
            v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
            v70 = _os_log_send_and_compose_impl();
            LOBYTE(__src) = 16;
            v91 = OS_LOG_TYPE_DEFAULT;
            if ((__nwlog_fault(v70, &__src, &v91) & 1) == 0)
            {
              goto LABEL_220;
            }

            if (__src == 17)
            {
              v71 = __nwlog_obj();
              v72 = __src;
              if (!os_log_type_enabled(v71, __src))
              {
                goto LABEL_220;
              }

              *buf = 136446210;
              v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v73 = "%{public}s called with null cursor";
            }

            else if (v91 == OS_LOG_TYPE_INFO)
            {
              v74 = __nw_create_backtrace_string();
              v71 = __nwlog_obj();
              v72 = __src;
              v75 = os_log_type_enabled(v71, __src);
              if (v74)
              {
                if (!v75)
                {
                  goto LABEL_193;
                }

                goto LABEL_192;
              }

              if (!v75)
              {
                goto LABEL_220;
              }

              *buf = 136446210;
              v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v73 = "%{public}s called with null cursor, no backtrace";
            }

            else
            {
              v71 = __nwlog_obj();
              v72 = __src;
              if (!os_log_type_enabled(v71, __src))
              {
                goto LABEL_220;
              }

              *buf = 136446210;
              v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
              v73 = "%{public}s called with null cursor, backtrace limit exceeded";
            }

LABEL_219:
            _os_log_impl(&dword_181A37000, v71, v72, v73, buf, 0xCu);
            goto LABEL_220;
          }

LABEL_143:
          free(v30);
          goto LABEL_144;
        }

        if (v54)
        {
          *buf = 136446210;
          v93 = "_http_safe_append";
          v33 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_141:
          _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
          goto LABEL_142;
        }
      }

      goto LABEL_142;
    }

LABEL_43:
    __nwlog_obj();
    *buf = 136446210;
    v93 = "_http_safe_append";
    v30 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    v91 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v30, &__src, &v91))
    {
      goto LABEL_142;
    }

    if (__src == 17)
    {
      v31 = __nwlog_obj();
      v32 = __src;
      if (!os_log_type_enabled(v31, __src))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v93 = "_http_safe_append";
      v33 = "%{public}s called with null data";
      goto LABEL_141;
    }

    if (v91 != OS_LOG_TYPE_INFO)
    {
      v31 = __nwlog_obj();
      v32 = __src;
      if (!os_log_type_enabled(v31, __src))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v93 = "_http_safe_append";
      v33 = "%{public}s called with null data, backtrace limit exceeded";
      goto LABEL_141;
    }

    v49 = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = __src;
    v50 = os_log_type_enabled(v31, __src);
    if (!v49)
    {
      if (!v50)
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v93 = "_http_safe_append";
      v33 = "%{public}s called with null data, no backtrace";
      goto LABEL_141;
    }

    if (v50)
    {
      *buf = 136446466;
      v93 = "_http_safe_append";
      v94 = 2082;
      v95 = v49;
      _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v49);
LABEL_142:
    if (!v30)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v93 = "_http_vle_encode";
  v94 = 2048;
  v95 = a2;
  v29 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v29);
  if (!result)
  {
    free(v29);
    v13 = *(v87 + 3);
    if (v13)
    {
      v14 = v83;
      if (a1)
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    }

LABEL_162:
    __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
    v70 = _os_log_send_and_compose_impl();
    v91 = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v70, &v91, &v90))
    {
      goto LABEL_220;
    }

    if (v91 == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      v72 = v91;
      if (!os_log_type_enabled(v71, v91))
      {
        goto LABEL_220;
      }

      *buf = 136446210;
      v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v73 = "%{public}s called with null cursor";
    }

    else if (v90 == 1)
    {
      v74 = __nw_create_backtrace_string();
      v71 = __nwlog_obj();
      v72 = v91;
      v76 = os_log_type_enabled(v71, v91);
      if (v74)
      {
        if (!v76)
        {
          goto LABEL_193;
        }

        goto LABEL_192;
      }

      if (!v76)
      {
        goto LABEL_220;
      }

      *buf = 136446210;
      v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v73 = "%{public}s called with null cursor, no backtrace";
    }

    else
    {
      v71 = __nwlog_obj();
      v72 = v91;
      if (!os_log_type_enabled(v71, v91))
      {
        goto LABEL_220;
      }

      *buf = 136446210;
      v93 = "nw_http_fillout_indeterminate_binary_message_body_chunk";
      v73 = "%{public}s called with null cursor, backtrace limit exceeded";
    }

    goto LABEL_219;
  }

  __break(1u);
  return result;
}

uint64_t __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke_2;
  v4[3] = &unk_1E6A344C0;
  v5 = *(a1 + 32);
  nw_http_field_access_canonical(a3, v4);
  return 1;
}

void __nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke_2(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v90 = *MEMORY[0x1E69E9840];
  if (a3 <= 0x3F)
  {
    __src = a3;
    v10 = 1;
    goto LABEL_9;
  }

  if (!(a3 >> 14))
  {
    __src = bswap32(a3 | 0x4000) >> 16;
    v10 = 2;
    goto LABEL_9;
  }

  if (!(a3 >> 30))
  {
    __src = bswap32(a3 | 0x80000000);
    v10 = 4;
    goto LABEL_9;
  }

  if (!(a3 >> 62))
  {
    __src = bswap64(a3 | 0xC000000000000000);
    v10 = 8;
LABEL_9:
    v11 = a1 + 32;
    v12 = *(*(*(a1 + 32) + 8) + 24);
    v13 = a1 + 40;
    if (v12)
    {
      v14 = *(*(a1 + 40) + 8);
      if (*(v14 + 24) >= v10)
      {
        memcpy(v12, &__src, v10);
        v15 = *(v14 + 24);
        *(v14 + 24) = v15 - v10;
        if (v15 < v10)
        {
          if (gLogDatapath == 1)
          {
            v60 = __nwlog_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v61 = *(v14 + 24);
              *buf = 136446978;
              v83 = "_http_safe_append";
              v84 = 2082;
              v85 = "*remaining";
              v86 = 2048;
              v87 = v10;
              v88 = 2048;
              v89 = v61;
              _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v14 + 24) = 0;
        }

        v16 = &v12[v10];
        goto LABEL_15;
      }

      __nwlog_obj();
      *buf = 136446210;
      v83 = "_http_safe_append";
      v35 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (!__nwlog_fault(v35, &type, &v80))
      {
        goto LABEL_195;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v38 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_194;
        }

        goto LABEL_195;
      }

      if (v80 != 1)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v38 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_194;
        }

        goto LABEL_195;
      }

      backtrace_string = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v62 = os_log_type_enabled(v36, type);
      if (!backtrace_string)
      {
        if (v62)
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v38 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_194;
        }

        goto LABEL_195;
      }

      if (v62)
      {
        *buf = 136446466;
        v83 = "_http_safe_append";
        v84 = 2082;
        v85 = backtrace_string;
        v59 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_124;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v83 = "_http_safe_append";
      v35 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (!__nwlog_fault(v35, &type, &v80))
      {
        goto LABEL_195;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v38 = "%{public}s called with null buffer";
LABEL_194:
          _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
        }

LABEL_195:
        if (v35)
        {
          free(v35);
        }

        v16 = 0;
        goto LABEL_15;
      }

      if (v80 != 1)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v38 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_194;
        }

        goto LABEL_195;
      }

      backtrace_string = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v58 = os_log_type_enabled(v36, type);
      if (!backtrace_string)
      {
        if (v58)
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v38 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_194;
        }

        goto LABEL_195;
      }

      if (v58)
      {
        *buf = 136446466;
        v83 = "_http_safe_append";
        v84 = 2082;
        v85 = backtrace_string;
        v59 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_124:
        _os_log_impl(&dword_181A37000, v36, v37, v59, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_195;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v83 = "_http_vle_encode";
  v84 = 2048;
  v85 = a3;
  v28 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v28))
  {
    goto LABEL_220;
  }

  free(v28);
  v29 = *(a1 + 32);
  v11 = a1 + 32;
  v16 = *(*(v29 + 8) + 24);
  v13 = v11 + 8;
LABEL_15:
  *(*(*v11 + 8) + 24) = v16;
  v17 = *(*(*v11 + 8) + 24);
  if (!v17)
  {
    __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke_2";
    v31 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v31, &type, &v80))
    {
      goto LABEL_188;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v34 = "%{public}s called with null cursor";
LABEL_187:
      _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
      goto LABEL_188;
    }

    if (v80 != 1)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v34 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_187;
    }

    v51 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type;
    v52 = os_log_type_enabled(v32, type);
    if (!v51)
    {
      if (!v52)
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v34 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_187;
    }

    if (!v52)
    {
      goto LABEL_107;
    }

LABEL_106:
    *buf = 136446466;
    v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v84 = 2082;
    v85 = v51;
    _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    goto LABEL_107;
  }

  if (a3)
  {
    if (a2)
    {
      v18 = *(*v13 + 8);
      if (*(v18 + 24) >= a3)
      {
        memcpy(v17, a2, a3);
        v19 = *(v18 + 24);
        *(v18 + 24) = v19 - a3;
        if (v19 < a3)
        {
          if (gLogDatapath == 1)
          {
            v70 = __nwlog_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              v71 = *(v18 + 24);
              *buf = 136446978;
              v83 = "_http_safe_append";
              v84 = 2082;
              v85 = "*remaining";
              v86 = 2048;
              v87 = a3;
              v88 = 2048;
              v89 = v71;
              _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v18 + 24) = 0;
        }

        v17 += a3;
        goto LABEL_23;
      }

      __nwlog_obj();
      *buf = 136446210;
      v83 = "_http_safe_append";
      v43 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v43, &__src, &type))
      {
        goto LABEL_209;
      }

      if (__src == 17)
      {
        v44 = __nwlog_obj();
        v45 = __src;
        if (os_log_type_enabled(v44, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v46 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_208;
        }

        goto LABEL_209;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v44 = __nwlog_obj();
        v45 = __src;
        if (os_log_type_enabled(v44, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v46 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_208;
        }

        goto LABEL_209;
      }

      v67 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = __src;
      v72 = os_log_type_enabled(v44, __src);
      if (!v67)
      {
        if (v72)
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v46 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_208;
        }

        goto LABEL_209;
      }

      if (v72)
      {
        *buf = 136446466;
        v83 = "_http_safe_append";
        v84 = 2082;
        v85 = v67;
        v69 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_143;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v83 = "_http_safe_append";
      v43 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v43, &__src, &type))
      {
        goto LABEL_209;
      }

      if (__src == 17)
      {
        v44 = __nwlog_obj();
        v45 = __src;
        if (os_log_type_enabled(v44, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v46 = "%{public}s called with null data";
LABEL_208:
          _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
        }

LABEL_209:
        if (v43)
        {
          free(v43);
        }

        v17 = 0;
        goto LABEL_23;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v44 = __nwlog_obj();
        v45 = __src;
        if (os_log_type_enabled(v44, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v46 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_208;
        }

        goto LABEL_209;
      }

      v67 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = __src;
      v68 = os_log_type_enabled(v44, __src);
      if (!v67)
      {
        if (v68)
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v46 = "%{public}s called with null data, no backtrace";
          goto LABEL_208;
        }

        goto LABEL_209;
      }

      if (v68)
      {
        *buf = 136446466;
        v83 = "_http_safe_append";
        v84 = 2082;
        v85 = v67;
        v69 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_143:
        _os_log_impl(&dword_181A37000, v44, v45, v69, buf, 0x16u);
      }
    }

    free(v67);
    goto LABEL_209;
  }

LABEL_23:
  *(*(*v11 + 8) + 24) = v17;
  v20 = *(*(*v11 + 8) + 24);
  if (!v20)
  {
    __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v31 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v31, &__src, &type))
    {
      goto LABEL_188;
    }

    if (__src == 17)
    {
      v32 = __nwlog_obj();
      v33 = __src;
      if (!os_log_type_enabled(v32, __src))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v34 = "%{public}s called with null cursor";
      goto LABEL_187;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v32 = __nwlog_obj();
      v33 = __src;
      if (!os_log_type_enabled(v32, __src))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v34 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_187;
    }

    v51 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = __src;
    v53 = os_log_type_enabled(v32, __src);
    if (!v51)
    {
      if (!v53)
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
      v34 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_187;
    }

    if (!v53)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  if (a5 <= 0x3F)
  {
    __src = a5;
    v21 = 1;
    goto LABEL_32;
  }

  if (!(a5 >> 14))
  {
    __src = bswap32(a5 | 0x4000) >> 16;
    v21 = 2;
    goto LABEL_32;
  }

  if (!(a5 >> 30))
  {
    __src = bswap32(a5 | 0x80000000);
    v21 = 4;
    goto LABEL_32;
  }

  if (a5 >> 62)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446466;
    v83 = "_http_vle_encode";
    v84 = 2048;
    v85 = a5;
    v30 = _os_log_send_and_compose_impl();
    if (!__nwlog_should_abort(v30))
    {
      free(v30);
      v24 = *(*(*v11 + 8) + 24);
      goto LABEL_37;
    }

LABEL_220:
    __break(1u);
    return;
  }

  __src = bswap64(a5 | 0xC000000000000000);
  v21 = 8;
LABEL_32:
  v22 = *(*v13 + 8);
  if (*(v22 + 24) >= v21)
  {
    memcpy(v20, &__src, v21);
    v23 = *(v22 + 24);
    *(v22 + 24) = v23 - v21;
    if (v23 < v21)
    {
      if (gLogDatapath == 1)
      {
        v63 = __nwlog_obj();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          v64 = *(v22 + 24);
          *buf = 136446978;
          v83 = "_http_safe_append";
          v84 = 2082;
          v85 = "*remaining";
          v86 = 2048;
          v87 = v21;
          v88 = 2048;
          v89 = v64;
          _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      *(v22 + 24) = 0;
    }

    v24 = &v20[v21];
    goto LABEL_37;
  }

  __nwlog_obj();
  *buf = 136446210;
  v83 = "_http_safe_append";
  v39 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v80 = 0;
  if (__nwlog_fault(v39, &type, &v80))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v83 = "_http_safe_append";
        v42 = "%{public}s called with null (*remaining >= length)";
LABEL_200:
        _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
      }
    }

    else if (v80 == 1)
    {
      v65 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v66 = os_log_type_enabled(v40, type);
      if (v65)
      {
        if (v66)
        {
          *buf = 136446466;
          v83 = "_http_safe_append";
          v84 = 2082;
          v85 = v65;
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v65);
        goto LABEL_201;
      }

      if (v66)
      {
        *buf = 136446210;
        v83 = "_http_safe_append";
        v42 = "%{public}s called with null (*remaining >= length), no backtrace";
        goto LABEL_200;
      }
    }

    else
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v83 = "_http_safe_append";
        v42 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
        goto LABEL_200;
      }
    }
  }

LABEL_201:
  if (v39)
  {
    free(v39);
  }

  v24 = 0;
LABEL_37:
  *(*(*v11 + 8) + 24) = v24;
  v25 = *(*(*v11 + 8) + 24);
  if (v25)
  {
    if (!a5)
    {
      goto LABEL_45;
    }

    if (a4)
    {
      v26 = *(*v13 + 8);
      if (*(v26 + 24) >= a5)
      {
        memcpy(v25, a4, a5);
        v27 = *(v26 + 24);
        *(v26 + 24) = v27 - a5;
        if (v27 < a5)
        {
          if (gLogDatapath == 1)
          {
            v76 = __nwlog_obj();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              v77 = *(v26 + 24);
              *buf = 136446978;
              v83 = "_http_safe_append";
              v84 = 2082;
              v85 = "*remaining";
              v86 = 2048;
              v87 = a5;
              v88 = 2048;
              v89 = v77;
              _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v26 + 24) = 0;
        }

        v25 += a5;
        goto LABEL_45;
      }

      __nwlog_obj();
      *buf = 136446210;
      v83 = "_http_safe_append";
      v47 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v47, &__src, &type))
      {
        goto LABEL_217;
      }

      if (__src == 17)
      {
        v48 = __nwlog_obj();
        v49 = __src;
        if (os_log_type_enabled(v48, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v50 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v48 = __nwlog_obj();
        v49 = __src;
        if (os_log_type_enabled(v48, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v50 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      v73 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = __src;
      v78 = os_log_type_enabled(v48, __src);
      if (!v73)
      {
        if (v78)
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v50 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      if (v78)
      {
        *buf = 136446466;
        v83 = "_http_safe_append";
        v84 = 2082;
        v85 = v73;
        v75 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_155;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v83 = "_http_safe_append";
      v47 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v47, &__src, &type))
      {
        goto LABEL_217;
      }

      if (__src == 17)
      {
        v48 = __nwlog_obj();
        v49 = __src;
        if (os_log_type_enabled(v48, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v50 = "%{public}s called with null data";
LABEL_216:
          _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
        }

LABEL_217:
        if (v47)
        {
          free(v47);
        }

        v25 = 0;
LABEL_45:
        *(*(*v11 + 8) + 24) = v25;
        if (*(*(*v11 + 8) + 24))
        {
          return;
        }

        __nwlog_obj();
        *buf = 136446210;
        v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
        v31 = _os_log_send_and_compose_impl();
        LOBYTE(__src) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v31, &__src, &type))
        {
          if (__src == 17)
          {
            v32 = __nwlog_obj();
            v33 = __src;
            if (!os_log_type_enabled(v32, __src))
            {
              goto LABEL_188;
            }

            *buf = 136446210;
            v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v34 = "%{public}s called with null cursor";
            goto LABEL_187;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v32 = __nwlog_obj();
            v33 = __src;
            if (!os_log_type_enabled(v32, __src))
            {
              goto LABEL_188;
            }

            *buf = 136446210;
            v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v34 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_187;
          }

          v55 = __nw_create_backtrace_string();
          v32 = __nwlog_obj();
          v33 = __src;
          v56 = os_log_type_enabled(v32, __src);
          if (!v55)
          {
            if (!v56)
            {
              goto LABEL_188;
            }

            *buf = 136446210;
            v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v34 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_187;
          }

          if (v56)
          {
            *buf = 136446466;
            v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
            v84 = 2082;
            v85 = v55;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v55);
        }

LABEL_188:
        if (v31)
        {
          goto LABEL_189;
        }

        return;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v48 = __nwlog_obj();
        v49 = __src;
        if (os_log_type_enabled(v48, __src))
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v50 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      v73 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = __src;
      v74 = os_log_type_enabled(v48, __src);
      if (!v73)
      {
        if (v74)
        {
          *buf = 136446210;
          v83 = "_http_safe_append";
          v50 = "%{public}s called with null data, no backtrace";
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      if (v74)
      {
        *buf = 136446466;
        v83 = "_http_safe_append";
        v84 = 2082;
        v85 = v73;
        v75 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_155:
        _os_log_impl(&dword_181A37000, v48, v49, v75, buf, 0x16u);
      }
    }

    free(v73);
    goto LABEL_217;
  }

  __nwlog_obj();
  *buf = 136446210;
  v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
  v31 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v80 = 0;
  if (!__nwlog_fault(v31, &type, &v80))
  {
    goto LABEL_188;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v32 = __nwlog_obj();
    v33 = type;
    if (!os_log_type_enabled(v32, type))
    {
      goto LABEL_188;
    }

    *buf = 136446210;
    v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v34 = "%{public}s called with null cursor";
    goto LABEL_187;
  }

  if (v80 != 1)
  {
    v32 = __nwlog_obj();
    v33 = type;
    if (!os_log_type_enabled(v32, type))
    {
      goto LABEL_188;
    }

    *buf = 136446210;
    v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v34 = "%{public}s called with null cursor, backtrace limit exceeded";
    goto LABEL_187;
  }

  v51 = __nw_create_backtrace_string();
  v32 = __nwlog_obj();
  v33 = type;
  v54 = os_log_type_enabled(v32, type);
  if (!v51)
  {
    if (!v54)
    {
      goto LABEL_188;
    }

    *buf = 136446210;
    v83 = "nw_http_fillout_indeterminate_binary_message_body_chunk_block_invoke";
    v34 = "%{public}s called with null cursor, no backtrace";
    goto LABEL_187;
  }

  if (v54)
  {
    goto LABEL_106;
  }

LABEL_107:
  free(v51);
  if (v31)
  {
LABEL_189:
    free(v31);
  }
}

void *nw_http_copy_metadata_from_binary_message(_DWORD *a1, unint64_t a2, unint64_t *a3, BOOL *a4)
{
  v221 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v212 = "nw_http_copy_metadata_from_binary_message";
    v94 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v209 = 0;
    if (!__nwlog_fault(v94, &type, &v209))
    {
      goto LABEL_385;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v209 != 1)
      {
        v95 = __nwlog_obj();
        v96 = type;
        if (!os_log_type_enabled(v95, type))
        {
          goto LABEL_385;
        }

        *buf = 136446210;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v97 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_384;
      }

      backtrace_string = __nw_create_backtrace_string();
      v95 = __nwlog_obj();
      v96 = type;
      v124 = os_log_type_enabled(v95, type);
      if (!backtrace_string)
      {
        if (!v124)
        {
          goto LABEL_385;
        }

        *buf = 136446210;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v97 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_384;
      }

      if (v124)
      {
        *buf = 136446466;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = backtrace_string;
        v125 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_316:
        _os_log_impl(&dword_181A37000, v95, v96, v125, buf, 0x16u);
      }

LABEL_317:
      free(backtrace_string);
      goto LABEL_385;
    }

    v95 = __nwlog_obj();
    v96 = type;
    if (!os_log_type_enabled(v95, type))
    {
      goto LABEL_385;
    }

    *buf = 136446210;
    v212 = "nw_http_copy_metadata_from_binary_message";
    v97 = "%{public}s called with null buffer";
LABEL_384:
    _os_log_impl(&dword_181A37000, v95, v96, v97, buf, 0xCu);
LABEL_385:
    if (v94)
    {
      free(v94);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v212 = "nw_http_copy_metadata_from_binary_message";
    v94 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v209 = 0;
    if (!__nwlog_fault(v94, &type, &v209))
    {
      goto LABEL_385;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = type;
      if (!os_log_type_enabled(v95, type))
      {
        goto LABEL_385;
      }

      *buf = 136446210;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v97 = "%{public}s called with null buffer_length";
      goto LABEL_384;
    }

    if (v209 != 1)
    {
      v95 = __nwlog_obj();
      v96 = type;
      if (!os_log_type_enabled(v95, type))
      {
        goto LABEL_385;
      }

      *buf = 136446210;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v97 = "%{public}s called with null buffer_length, backtrace limit exceeded";
      goto LABEL_384;
    }

    backtrace_string = __nw_create_backtrace_string();
    v95 = __nwlog_obj();
    v96 = type;
    v126 = os_log_type_enabled(v95, type);
    if (backtrace_string)
    {
      if (v126)
      {
        *buf = 136446466;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = backtrace_string;
        v125 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
        goto LABEL_316;
      }

      goto LABEL_317;
    }

    if (!v126)
    {
      goto LABEL_385;
    }

    *buf = 136446210;
    v212 = "nw_http_copy_metadata_from_binary_message";
    v97 = "%{public}s called with null buffer_length, no backtrace";
    goto LABEL_384;
  }

  v4 = *a1;
  if (v4 <= 0x3F)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v4 >> 6 == 2)
  {
    if (a2 < 4)
    {
      goto LABEL_27;
    }

    v4 = bswap32(*a1 & 0xFFFFFF7F);
    v5 = 4;
  }

  else
  {
    if (v4 >> 6 == 1)
    {
      if (a2 != 1)
      {
        v4 = bswap32(*a1 & 0xFFBF) >> 16;
        v5 = 2;
        goto LABEL_5;
      }

LABEL_27:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v7 = "%{public}s Failed to decode integer";
        v8 = v23;
        v9 = 12;
        goto LABEL_29;
      }

      return 0;
    }

    if (a2 < 8)
    {
      goto LABEL_27;
    }

    v4 = bswap64(*a1 & 0xFFFFFFFFFFFFFF3FLL);
    v5 = 8;
  }

LABEL_5:
  if (v4 >= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v213 = 2048;
      v214 = v4;
      v215 = 2048;
      v216 = 3;
      v7 = "%{public}s _output %llu > _max %llu";
      v8 = v6;
      v9 = 32;
LABEL_29:
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      return 0;
    }

    return 0;
  }

  v12 = (a1 + v5);
  v14 = a2 - v5;
  v15 = _nw_http_parsed_fields_create();
  v16 = v15;
  if ((v4 & 1) == 0)
  {
    if (a2 == v5)
    {
      goto LABEL_14;
    }

    v24 = *v12;
    if (v24 <= 0x3F)
    {
      v25 = 1;
      goto LABEL_34;
    }

    if (v24 >> 6 == 2)
    {
      if (v14 < 4)
      {
        goto LABEL_14;
      }

      v24 = bswap32(*v12 & 0xFFFFFF7F);
      v25 = 4;
    }

    else
    {
      if (v24 >> 6 == 1)
      {
        if (v14 != 1)
        {
          v24 = bswap32(*v12 & 0xFFBF) >> 16;
          v25 = 2;
          goto LABEL_34;
        }

LABEL_14:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v212 = "nw_http_copy_metadata_from_binary_message";
          v18 = "%{public}s Failed to decode integer";
          goto LABEL_19;
        }

        goto LABEL_21;
      }

      if (v14 < 8)
      {
        goto LABEL_14;
      }

      v24 = bswap64(*v12 & 0xFFFFFFFFFFFFFF3FLL);
      v25 = 8;
    }

    if (v24 >= 0x10000)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_488;
    }

LABEL_34:
    v26 = v14 - v25;
    if (v24 > v26)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

LABEL_36:
      *buf = 136446722;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v213 = 2048;
      v214 = v24;
      v215 = 2048;
      v216 = v26;
      v18 = "%{public}s _length %llu > remaining %zu";
LABEL_37:
      v19 = v27;
      goto LABEL_184;
    }

    v33 = v12 + v25;
    if (!nw_http_parsed_fields_add(v15, ":method", -1, v33, v24, 1))
    {
      goto LABEL_21;
    }

    v34 = v26 - v24;
    if (v26 < v24)
    {
      __nwlog_obj();
      *buf = 136446978;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v213 = 2082;
      v214 = "remaining";
      v215 = 2048;
      v216 = v24;
      v217 = 2048;
      v218 = v26 - v24;
      v35 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v209 = 0;
      if (!__nwlog_fault(v35, &type, &v209))
      {
        goto LABEL_228;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (!os_log_type_enabled(v36, type))
        {
          goto LABEL_228;
        }

        *buf = 136446978;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = "remaining";
        v215 = 2048;
        v216 = v24;
        v217 = 2048;
        v218 = v34;
        v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
      }

      else if (v209 == 1)
      {
        v62 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type;
        v63 = os_log_type_enabled(v36, type);
        if (v62)
        {
          if (v63)
          {
            *buf = 136447234;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v213 = 2082;
            v214 = "remaining";
            v215 = 2048;
            v216 = v24;
            v217 = 2048;
            v218 = v34;
            v219 = 2082;
            v220 = v62;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v62);
          goto LABEL_228;
        }

        if (!v63)
        {
LABEL_228:
          if (v35)
          {
            free(v35);
          }

LABEL_230:
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v18 = "%{public}s Failed to decode integer";
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        *buf = 136446978;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = "remaining";
        v215 = 2048;
        v216 = v24;
        v217 = 2048;
        v218 = v34;
        v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (!os_log_type_enabled(v36, type))
        {
          goto LABEL_228;
        }

        *buf = 136446978;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = "remaining";
        v215 = 2048;
        v216 = v24;
        v217 = 2048;
        v218 = v34;
        v38 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x2Au);
      goto LABEL_228;
    }

    if (!v34)
    {
      goto LABEL_230;
    }

    v60 = &v33[v24];
    v24 = v33[v24];
    if (v24 <= 0x3F)
    {
      v61 = 1;
      goto LABEL_120;
    }

    if (v24 >> 6 == 2)
    {
      if (v34 < 4)
      {
        goto LABEL_230;
      }

      v24 = bswap32(*v60 & 0xFFFFFF7F);
      v61 = 4;
    }

    else
    {
      if (v24 >> 6 == 1)
      {
        if (v34 == 1)
        {
          goto LABEL_230;
        }

        v24 = bswap32(*v60 & 0xFFBF) >> 16;
        v61 = 2;
        goto LABEL_120;
      }

      if (v34 < 8)
      {
        goto LABEL_230;
      }

      v24 = bswap64(*v60 & 0xFFFFFFFFFFFFFF3FLL);
      v61 = 8;
    }

    if (v24 >= 0x10000)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_488;
    }

LABEL_120:
    v26 = v34 - v61;
    if (v24 > v34 - v61)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }

    v83 = &v60[v61];
    if (v24 && !nw_http_parsed_fields_add(v16, ":scheme", -1, &v60[v61], v24, 1))
    {
      goto LABEL_21;
    }

    v84 = v26 - v24;
    if (v26 < v24)
    {
      __nwlog_obj();
      *buf = 136446978;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v213 = 2082;
      v214 = "remaining";
      v215 = 2048;
      v216 = v24;
      v217 = 2048;
      v218 = v26 - v24;
      v85 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v209 = 0;
      if (!__nwlog_fault(v85, &type, &v209))
      {
        goto LABEL_371;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v86 = __nwlog_obj();
        v87 = type;
        if (!os_log_type_enabled(v86, type))
        {
          goto LABEL_371;
        }

        *buf = 136446978;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = "remaining";
        v215 = 2048;
        v216 = v24;
        v217 = 2048;
        v218 = v84;
        v88 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
      }

      else if (v209 == 1)
      {
        v120 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        v87 = type;
        v121 = os_log_type_enabled(v86, type);
        if (v120)
        {
          if (v121)
          {
            *buf = 136447234;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v213 = 2082;
            v214 = "remaining";
            v215 = 2048;
            v216 = v24;
            v217 = 2048;
            v218 = v84;
            v219 = 2082;
            v220 = v120;
            _os_log_impl(&dword_181A37000, v86, v87, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v120);
          goto LABEL_371;
        }

        if (!v121)
        {
LABEL_371:
          if (v85)
          {
            free(v85);
          }

LABEL_373:
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v18 = "%{public}s Failed to decode integer";
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        *buf = 136446978;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = "remaining";
        v215 = 2048;
        v216 = v24;
        v217 = 2048;
        v218 = v84;
        v88 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
      }

      else
      {
        v86 = __nwlog_obj();
        v87 = type;
        if (!os_log_type_enabled(v86, type))
        {
          goto LABEL_371;
        }

        *buf = 136446978;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = "remaining";
        v215 = 2048;
        v216 = v24;
        v217 = 2048;
        v218 = v84;
        v88 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v86, v87, v88, buf, 0x2Au);
      goto LABEL_371;
    }

    if (!v84)
    {
      goto LABEL_373;
    }

    v92 = &v83[v24];
    v24 = v83[v24];
    if (v24 <= 0x3F)
    {
      v93 = 1;
LABEL_237:
      v26 = v84 - v93;
      if (v24 > v84 - v93)
      {
        v27 = __nwlog_obj();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      v130 = &v92[v93];
      if (v24 && !nw_http_parsed_fields_add(v16, ":authority", -1, &v92[v93], v24, 1))
      {
        goto LABEL_21;
      }

      v131 = v26 - v24;
      if (v26 < v24)
      {
        __nwlog_obj();
        *buf = 136446978;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2082;
        v214 = "remaining";
        v215 = 2048;
        v216 = v24;
        v217 = 2048;
        v218 = v26 - v24;
        v132 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v209 = 0;
        if (!__nwlog_fault(v132, &type, &v209))
        {
          goto LABEL_497;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v133 = __nwlog_obj();
          v134 = type;
          if (!os_log_type_enabled(v133, type))
          {
            goto LABEL_497;
          }

          *buf = 136446978;
          v212 = "nw_http_copy_metadata_from_binary_message";
          v213 = 2082;
          v214 = "remaining";
          v215 = 2048;
          v216 = v24;
          v217 = 2048;
          v218 = v131;
          v135 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
        }

        else if (v209 == 1)
        {
          v162 = __nw_create_backtrace_string();
          v133 = __nwlog_obj();
          v134 = type;
          v163 = os_log_type_enabled(v133, type);
          if (v162)
          {
            if (v163)
            {
              *buf = 136447234;
              v212 = "nw_http_copy_metadata_from_binary_message";
              v213 = 2082;
              v214 = "remaining";
              v215 = 2048;
              v216 = v24;
              v217 = 2048;
              v218 = v131;
              v219 = 2082;
              v220 = v162;
              _os_log_impl(&dword_181A37000, v133, v134, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v162);
            goto LABEL_497;
          }

          if (!v163)
          {
LABEL_497:
            if (v132)
            {
              free(v132);
            }

LABEL_499:
            v17 = __nwlog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v212 = "nw_http_copy_metadata_from_binary_message";
              v18 = "%{public}s Failed to decode integer";
              goto LABEL_19;
            }

            goto LABEL_21;
          }

          *buf = 136446978;
          v212 = "nw_http_copy_metadata_from_binary_message";
          v213 = 2082;
          v214 = "remaining";
          v215 = 2048;
          v216 = v24;
          v217 = 2048;
          v218 = v131;
          v135 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
        }

        else
        {
          v133 = __nwlog_obj();
          v134 = type;
          if (!os_log_type_enabled(v133, type))
          {
            goto LABEL_497;
          }

          *buf = 136446978;
          v212 = "nw_http_copy_metadata_from_binary_message";
          v213 = 2082;
          v214 = "remaining";
          v215 = 2048;
          v216 = v24;
          v217 = 2048;
          v218 = v131;
          v135 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v133, v134, v135, buf, 0x2Au);
        goto LABEL_497;
      }

      if (!v131)
      {
        goto LABEL_499;
      }

      v140 = &v130[v24];
      v24 = v130[v24];
      if (v24 <= 0x3F)
      {
        v141 = 1;
        goto LABEL_390;
      }

      if (v24 >> 6 == 2)
      {
        if (v131 < 4)
        {
          goto LABEL_499;
        }

        v24 = bswap32(*v140 & 0xFFFFFF7F);
        v141 = 4;
      }

      else
      {
        if (v24 >> 6 == 1)
        {
          if (v131 == 1)
          {
            goto LABEL_499;
          }

          v24 = bswap32(*v140 & 0xFFBF) >> 16;
          v141 = 2;
LABEL_390:
          v26 = v131 - v141;
          if (v24 > v131 - v141)
          {
            v27 = __nwlog_obj();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            goto LABEL_36;
          }

          v166 = &v140[v141];
          if (v24 && !nw_http_parsed_fields_add(v16, ":path", -1, &v140[v141], v24, 1))
          {
            goto LABEL_21;
          }

          v167 = &v166[v24];
          v30 = v26 - v24;
          if (v26 >= v24)
          {
            v29 = &v166[v24];
            goto LABEL_59;
          }

          __nwlog_obj();
          *buf = 136446978;
          v212 = "nw_http_copy_metadata_from_binary_message";
          v213 = 2082;
          v214 = "remaining";
          v215 = 2048;
          v216 = v24;
          v217 = 2048;
          v218 = v26 - v24;
          v168 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v209 = 0;
          if (!__nwlog_fault(v168, &type, &v209))
          {
            goto LABEL_537;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v169 = __nwlog_obj();
            v170 = type;
            if (os_log_type_enabled(v169, type))
            {
              *buf = 136446978;
              v212 = "nw_http_copy_metadata_from_binary_message";
              v213 = 2082;
              v214 = "remaining";
              v215 = 2048;
              v216 = v24;
              v217 = 2048;
              v218 = v30;
              v171 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_535:
              v188 = v169;
LABEL_536:
              _os_log_impl(&dword_181A37000, v188, v170, v171, buf, 0x2Au);
            }
          }

          else if (v209 == 1)
          {
            v185 = __nw_create_backtrace_string();
            v186 = __nwlog_obj();
            v170 = type;
            log = v186;
            v187 = os_log_type_enabled(v186, type);
            if (v185)
            {
              if (v187)
              {
                *buf = 136447234;
                v212 = "nw_http_copy_metadata_from_binary_message";
                v213 = 2082;
                v214 = "remaining";
                v215 = 2048;
                v216 = v24;
                v217 = 2048;
                v218 = v30;
                v219 = 2082;
                v220 = v185;
                _os_log_impl(&dword_181A37000, log, v170, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v185);
              goto LABEL_537;
            }

            if (v187)
            {
              *buf = 136446978;
              v212 = "nw_http_copy_metadata_from_binary_message";
              v213 = 2082;
              v214 = "remaining";
              v215 = 2048;
              v216 = v24;
              v217 = 2048;
              v218 = v30;
              v171 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              v188 = log;
              goto LABEL_536;
            }
          }

          else
          {
            v169 = __nwlog_obj();
            v170 = type;
            if (os_log_type_enabled(v169, type))
            {
              *buf = 136446978;
              v212 = "nw_http_copy_metadata_from_binary_message";
              v213 = 2082;
              v214 = "remaining";
              v215 = 2048;
              v216 = v24;
              v217 = 2048;
              v218 = v30;
              v171 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_535;
            }
          }

LABEL_537:
          if (v168)
          {
            free(v168);
          }

          v30 = 0;
          v29 = v167;
          goto LABEL_59;
        }

        if (v131 < 8)
        {
          goto LABEL_499;
        }

        v24 = bswap64(*v140 & 0xFFFFFFFFFFFFFF3FLL);
        v141 = 8;
      }

      if (v24 < 0x10000)
      {
        goto LABEL_390;
      }

      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

LABEL_488:
      *buf = 136446722;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v213 = 2048;
      v214 = v24;
      v215 = 2048;
      v216 = 0xFFFFLL;
      v18 = "%{public}s _output %llu > _max %llu";
      goto LABEL_37;
    }

    if (v24 >> 6 == 2)
    {
      if (v84 < 4)
      {
        goto LABEL_373;
      }

      v24 = bswap32(*v92 & 0xFFFFFF7F);
      v93 = 4;
    }

    else
    {
      if (v24 >> 6 == 1)
      {
        if (v84 == 1)
        {
          goto LABEL_373;
        }

        v24 = bswap32(*v92 & 0xFFBF) >> 16;
        v93 = 2;
        goto LABEL_237;
      }

      if (v84 < 8)
      {
        goto LABEL_373;
      }

      v24 = bswap64(*v92 & 0xFFFFFFFFFFFFFF3FLL);
      v93 = 8;
    }

    if (v24 >= 0x10000)
    {
      v27 = __nwlog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_488;
    }

    goto LABEL_237;
  }

  if (a2 == v5)
  {
LABEL_17:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v18 = "%{public}s Failed to decode integer";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v28 = *v12;
  if (v28 > 0x3F)
  {
    if (v28 >> 6 == 2)
    {
      if (v14 < 4)
      {
        goto LABEL_17;
      }

      v28 = bswap32(*v12 & 0xFFFFFF7F);
      v32 = 4;
    }

    else if (v28 >> 6 == 1)
    {
      if (v14 == 1)
      {
        goto LABEL_17;
      }

      v28 = bswap32(*v12 & 0xFFBF) >> 16;
      v32 = 2;
    }

    else
    {
      if (v14 < 8)
      {
        goto LABEL_17;
      }

      v28 = bswap64(*v12 & 0xFFFFFFFFFFFFFF3FLL);
      v32 = 8;
    }

    if (v28 >= 0x3E9)
    {
      v56 = __nwlog_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 136446722;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v213 = 2048;
      v214 = v28;
      v215 = 2048;
      v216 = 1000;
      v18 = "%{public}s _output %llu > _max %llu";
      goto LABEL_183;
    }

    v29 = v12 + v32;
    v30 = v14 - v32;
  }

  else
  {
    v29 = v12 + 1;
    v30 = v14 - 1;
  }

  if (v28 - 601 <= 0xFFFFFFFFFFFFFE6ELL)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v213 = 2048;
      v214 = v28;
      v18 = "%{public}s Informational statuses not supported: %llu";
      v19 = v31;
      v20 = 22;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  snprintf(buf, 4uLL, "%llu", v28);
  nw_http_parsed_fields_add(v16, ":status", -1, buf, 0xFFFFFFFFFFFFFFFFLL, 1);
LABEL_59:
  v39 = a3;
  v40 = a4;
  if (a4)
  {
    *a4 = v4 > 1;
  }

  if (v4 < 2)
  {
    if (v30)
    {
      v57 = *v29;
      if (v57 <= 0x3F)
      {
        v58 = 1;
LABEL_112:
        v59 = &v29[v58];
        v44 = v30 - v58;
LABEL_113:
        if (v57 > v44)
        {
          v56 = __nwlog_obj();
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_182;
        }

        v64 = &v59[v57];
        while (1)
        {
          if (v59 >= v64)
          {
            if (v59)
            {
              if (!v44)
              {
                goto LABEL_378;
              }

              v57 = *v59;
              if (v57 <= 0x3F)
              {
                v98 = 1;
                goto LABEL_252;
              }

              if (v57 >> 6 == 2)
              {
                if (v44 < 4)
                {
                  goto LABEL_378;
                }

                v57 = bswap32(*v59 & 0xFFFFFF7F);
                v98 = 4;
              }

              else
              {
                if (v57 >> 6 == 1)
                {
                  if (v44 != 1)
                  {
                    v57 = bswap32(*v59 & 0xFFBF) >> 16;
                    v98 = 2;
                    goto LABEL_252;
                  }

LABEL_378:
                  v17 = __nwlog_obj();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    v212 = "nw_http_copy_metadata_from_binary_message";
                    v18 = "%{public}s Failed to decode integer";
                    goto LABEL_19;
                  }

                  goto LABEL_21;
                }

                if (v44 < 8)
                {
                  goto LABEL_378;
                }

                v57 = bswap64(*v59 & 0xFFFFFFFFFFFFFF3FLL);
                v98 = 8;
              }

LABEL_252:
              v44 -= v98;
              v99 = v44 - v57;
              if (v44 < v57)
              {
                v56 = __nwlog_obj();
                if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_21;
                }

                goto LABEL_182;
              }

              if (v39)
              {
                *v39 = v57;
              }

              if (v44 == v57)
              {
                goto LABEL_176;
              }

              v136 = &v59[v98 + v57];
              v55 = *v136;
              if (v55 <= 0x3F)
              {
                v137 = 1;
                goto LABEL_353;
              }

              if (v55 >> 6 == 2)
              {
                if (v99 < 4)
                {
                  goto LABEL_464;
                }

                v55 = bswap32(*v136 & 0xFFFFFF7F);
                v137 = 4;
LABEL_353:
                v138 = &v136[v137];
                v139 = v99 - v137;
              }

              else
              {
                if (v55 >> 6 == 1)
                {
                  if (v99 != 1)
                  {
                    v55 = bswap32(*v136 & 0xFFBF) >> 16;
                    v137 = 2;
                    goto LABEL_353;
                  }

LABEL_464:
                  v17 = __nwlog_obj();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    v212 = "nw_http_copy_metadata_from_binary_message";
                    v18 = "%{public}s Failed to decode integer";
                    goto LABEL_19;
                  }

                  goto LABEL_21;
                }

                v139 = v99 - 8;
                if (v99 < 8)
                {
                  goto LABEL_464;
                }

                v176 = *v136;
                v138 = v136 + 8;
                v55 = bswap64(v176 & 0xFFFFFFFFFFFFFF3FLL);
                if (HIDWORD(v55))
                {
                  v56 = __nwlog_obj();
                  if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_21;
                  }

LABEL_481:
                  *buf = 136446722;
                  v212 = "nw_http_copy_metadata_from_binary_message";
                  v213 = 2048;
                  v214 = v55;
                  v215 = 2048;
                  v216 = 0xFFFFFFFFLL;
                  v18 = "%{public}s _output %llu > _max %llu";
                  goto LABEL_183;
                }
              }

              if (v55 > v139)
              {
                v56 = __nwlog_obj();
                if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_21;
                }

                *buf = 136446722;
                v212 = "nw_http_copy_metadata_from_binary_message";
                v213 = 2048;
                v214 = v55;
                v215 = 2048;
                v216 = v139;
                v18 = "%{public}s _length %llu > remaining %zu";
                goto LABEL_183;
              }

              if (!v55)
              {
                goto LABEL_176;
              }

              v100 = 0;
              v146 = &v138[v55];
              while (2)
              {
                if (v138 >= v146)
                {
LABEL_442:
                  result = nw_http_create_metadata_with_parsed_fields(v16, (v4 & 1) == 0);
                  if (!v100)
                  {
                    goto LABEL_22;
                  }

                  v159 = result;
                  v160 = nw_http_parsed_fields_copy_trailer_fields(v100);
                  if (v160)
                  {
                    v161 = v160;
                    nw_http_metadata_set_trailer_fields(v159, v160);
                    os_release(v161);
                    result = v159;
                    goto LABEL_557;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  v212 = "nw_http_copy_metadata_from_binary_message";
                  v194 = _os_log_send_and_compose_impl();
                  type = OS_LOG_TYPE_ERROR;
                  v209 = 0;
                  if (!__nwlog_fault(v194, &type, &v209))
                  {
                    goto LABEL_601;
                  }

                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v195 = __nwlog_obj();
                    v196 = type;
                    if (os_log_type_enabled(v195, type))
                    {
                      *buf = 136446210;
                      v212 = "nw_http_copy_metadata_from_binary_message";
                      v197 = "%{public}s called with null extracted_trailer_fields";
                      goto LABEL_600;
                    }

                    goto LABEL_601;
                  }

                  if (v209 == 1)
                  {
                    v200 = __nw_create_backtrace_string();
                    v195 = __nwlog_obj();
                    v196 = type;
                    v201 = os_log_type_enabled(v195, type);
                    if (v200)
                    {
                      if (v201)
                      {
                        *buf = 136446466;
                        v212 = "nw_http_copy_metadata_from_binary_message";
                        v213 = 2082;
                        v214 = v200;
                        _os_log_impl(&dword_181A37000, v195, v196, "%{public}s called with null extracted_trailer_fields, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v200);
                      goto LABEL_601;
                    }

                    if (!v201)
                    {
LABEL_601:
                      if (v194)
                      {
                        free(v194);
                      }

                      result = 0;
                      goto LABEL_557;
                    }

                    *buf = 136446210;
                    v212 = "nw_http_copy_metadata_from_binary_message";
                    v197 = "%{public}s called with null extracted_trailer_fields, no backtrace";
                  }

                  else
                  {
                    v195 = __nwlog_obj();
                    v196 = type;
                    if (!os_log_type_enabled(v195, type))
                    {
                      goto LABEL_601;
                    }

                    *buf = 136446210;
                    v212 = "nw_http_copy_metadata_from_binary_message";
                    v197 = "%{public}s called with null extracted_trailer_fields, backtrace limit exceeded";
                  }

LABEL_600:
                  _os_log_impl(&dword_181A37000, v195, v196, v197, buf, 0xCu);
                  goto LABEL_601;
                }

                if (!v100)
                {
                  v100 = _nw_http_parsed_fields_create();
                }

                if (!v138)
                {
                  __nwlog_obj();
                  *buf = 136446210;
                  v212 = "_http_vle_decode";
                  v202 = _os_log_send_and_compose_impl();
                  type = OS_LOG_TYPE_ERROR;
                  v209 = 0;
                  if (!__nwlog_fault(v202, &type, &v209))
                  {
                    goto LABEL_609;
                  }

                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v203 = __nwlog_obj();
                    v204 = type;
                    if (os_log_type_enabled(v203, type))
                    {
                      *buf = 136446210;
                      v212 = "_http_vle_decode";
                      v205 = "%{public}s called with null *buffer";
                      goto LABEL_608;
                    }

                    goto LABEL_609;
                  }

                  if (v209 != 1)
                  {
                    v203 = __nwlog_obj();
                    v204 = type;
                    if (!os_log_type_enabled(v203, type))
                    {
                      goto LABEL_609;
                    }

                    *buf = 136446210;
                    v212 = "_http_vle_decode";
                    v205 = "%{public}s called with null *buffer, backtrace limit exceeded";
                    goto LABEL_608;
                  }

                  v206 = __nw_create_backtrace_string();
                  v203 = __nwlog_obj();
                  v204 = type;
                  v207 = os_log_type_enabled(v203, type);
                  if (v206)
                  {
                    if (v207)
                    {
                      *buf = 136446466;
                      v212 = "_http_vle_decode";
                      v213 = 2082;
                      v214 = v206;
                      _os_log_impl(&dword_181A37000, v203, v204, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v206);
                    goto LABEL_609;
                  }

                  if (v207)
                  {
                    *buf = 136446210;
                    v212 = "_http_vle_decode";
                    v205 = "%{public}s called with null *buffer, no backtrace";
LABEL_608:
                    _os_log_impl(&dword_181A37000, v203, v204, v205, buf, 0xCu);
                  }

LABEL_609:
                  if (v202)
                  {
                    free(v202);
                  }

LABEL_611:
                  v122 = __nwlog_obj();
                  if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_556;
                  }

                  *buf = 136446210;
                  v212 = "nw_http_copy_metadata_from_binary_message";
                  v118 = "%{public}s Failed to decode integer";
LABEL_554:
                  v128 = v122;
                  v129 = 12;
                  goto LABEL_555;
                }

                if (!v139)
                {
                  goto LABEL_611;
                }

                v101 = *v138;
                if (v101 > 0x3F)
                {
                  if (v101 >> 6 == 2)
                  {
                    if (v139 < 4)
                    {
                      goto LABEL_611;
                    }

                    v101 = bswap32(*v138 & 0xFFFFFF7F);
                    v147 = 4;
                    goto LABEL_419;
                  }

                  if (v101 >> 6 == 1)
                  {
                    if (v139 == 1)
                    {
                      goto LABEL_611;
                    }

                    v101 = bswap32(*v138 & 0xFFBF) >> 16;
                    v147 = 2;
                    goto LABEL_419;
                  }

                  v73 = v139 >= 8;
                  v149 = v139 - 8;
                  if (!v73)
                  {
                    goto LABEL_611;
                  }

                  v155 = *v138;
                  v154 = v138 + 8;
                  v101 = bswap64(v155 & 0xFFFFFFFFFFFFFF3FLL);
                  if (HIDWORD(v101))
                  {
                    v127 = __nwlog_obj();
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                    {
LABEL_398:
                      *buf = 136446722;
                      v212 = "nw_http_copy_metadata_from_binary_message";
                      v213 = 2048;
                      v214 = v101;
                      v215 = 2048;
                      v216 = 0xFFFFFFFFLL;
                      v118 = "%{public}s _output %llu > _max %llu";
                      goto LABEL_320;
                    }

LABEL_556:
                    result = 0;
                    if (!v100)
                    {
                      goto LABEL_22;
                    }

LABEL_557:
                    v189 = result;
                    os_release(v100);
                    result = v189;
                    goto LABEL_22;
                  }

                  v148 = v154;
                  v151 = v149 - v101;
                  v150 = v149 == v101;
                  if (v149 < v101)
                  {
LABEL_517:
                    v127 = __nwlog_obj();
                    if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_556;
                    }

                    *buf = 136446722;
                    v212 = "nw_http_copy_metadata_from_binary_message";
                    v213 = 2048;
                    v214 = v101;
                    v215 = 2048;
                    v216 = v149;
                    v118 = "%{public}s _length %llu > remaining %zu";
LABEL_320:
                    v128 = v127;
LABEL_324:
                    v129 = 32;
LABEL_555:
                    _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_ERROR, v118, buf, v129);
                    goto LABEL_556;
                  }
                }

                else
                {
                  v147 = 1;
LABEL_419:
                  v148 = &v138[v147];
                  v149 = v139 - v147;
                  v151 = v149 - v101;
                  v150 = v149 == v101;
                  if (v149 < v101)
                  {
                    goto LABEL_517;
                  }
                }

                if (v150)
                {
                  goto LABEL_513;
                }

                v152 = (v148 + v101);
                v107 = *(v148 + v101);
                if (v107 <= 0x3F)
                {
                  v153 = 1;
                  goto LABEL_434;
                }

                if (v107 >> 6 == 2)
                {
                  if (v151 < 4)
                  {
                    goto LABEL_513;
                  }

                  v107 = bswap32(*v152 & 0xFFFFFF7F);
                  v153 = 4;
LABEL_434:
                  v156 = v152 + v153;
                  v157 = v151 - v153;
                }

                else
                {
                  if (v107 >> 6 == 1)
                  {
                    if (v151 == 1)
                    {
                      goto LABEL_513;
                    }

                    v107 = bswap32(*v152 & 0xFFBF) >> 16;
                    v153 = 2;
                    goto LABEL_434;
                  }

                  v157 = v151 - 8;
                  if (v151 < 8)
                  {
LABEL_513:
                    v122 = __nwlog_obj();
                    if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_556;
                    }

                    *buf = 136446210;
                    v212 = "nw_http_copy_metadata_from_binary_message";
                    v118 = "%{public}s Failed to decode integer";
                    goto LABEL_554;
                  }

                  v158 = *v152;
                  v156 = (v152 + 2);
                  v107 = bswap64(v158 & 0xFFFFFFFFFFFFFF3FLL);
                  if (HIDWORD(v107))
                  {
                    v117 = __nwlog_obj();
                    if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_556;
                    }

LABEL_296:
                    *buf = 136446722;
                    v212 = "nw_http_copy_metadata_from_binary_message";
                    v213 = 2048;
                    v214 = v107;
                    v215 = 2048;
                    v216 = 0xFFFFFFFFLL;
                    v118 = "%{public}s _output %llu > _max %llu";
                    goto LABEL_323;
                  }
                }

                v139 = v157 - v107;
                if (v157 < v107)
                {
                  v117 = __nwlog_obj();
                  if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_556;
                  }

                  *buf = 136446722;
                  v212 = "nw_http_copy_metadata_from_binary_message";
                  v213 = 2048;
                  v214 = v107;
                  v215 = 2048;
                  v216 = v157;
                  v118 = "%{public}s _length %llu > remaining %zu";
LABEL_323:
                  v128 = v117;
                  goto LABEL_324;
                }

                v138 = &v156[v107];
                if ((nw_http_parsed_fields_add(v100, v148, v101, v156, v107, 1) & 1) == 0)
                {
                  goto LABEL_556;
                }

                continue;
              }
            }

            __nwlog_obj();
            *buf = 136446210;
            v212 = "_http_vle_decode";
            v190 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v209 = 0;
            if (!__nwlog_fault(v190, &type, &v209))
            {
              goto LABEL_591;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v191 = __nwlog_obj();
              v192 = type;
              if (os_log_type_enabled(v191, type))
              {
                *buf = 136446210;
                v212 = "_http_vle_decode";
                v193 = "%{public}s called with null *buffer";
                goto LABEL_590;
              }

              goto LABEL_591;
            }

            if (v209 == 1)
            {
              v198 = __nw_create_backtrace_string();
              v191 = __nwlog_obj();
              v192 = type;
              v199 = os_log_type_enabled(v191, type);
              if (v198)
              {
                if (v199)
                {
                  *buf = 136446466;
                  v212 = "_http_vle_decode";
                  v213 = 2082;
                  v214 = v198;
                  _os_log_impl(&dword_181A37000, v191, v192, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v198);
                goto LABEL_591;
              }

              if (!v199)
              {
LABEL_591:
                if (v190)
                {
                  free(v190);
                }

                goto LABEL_378;
              }

              *buf = 136446210;
              v212 = "_http_vle_decode";
              v193 = "%{public}s called with null *buffer, no backtrace";
            }

            else
            {
              v191 = __nwlog_obj();
              v192 = type;
              if (!os_log_type_enabled(v191, type))
              {
                goto LABEL_591;
              }

              *buf = 136446210;
              v212 = "_http_vle_decode";
              v193 = "%{public}s called with null *buffer, backtrace limit exceeded";
            }

LABEL_590:
            _os_log_impl(&dword_181A37000, v191, v192, v193, buf, 0xCu);
            goto LABEL_591;
          }

          if (!v59)
          {
            __nwlog_obj();
            *buf = 136446210;
            v212 = "_http_vle_decode";
            v172 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v209 = 0;
            if (!__nwlog_fault(v172, &type, &v209))
            {
              goto LABEL_543;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v173 = __nwlog_obj();
              v174 = type;
              if (os_log_type_enabled(v173, type))
              {
                *buf = 136446210;
                v212 = "_http_vle_decode";
                v175 = "%{public}s called with null *buffer";
                goto LABEL_542;
              }

              goto LABEL_543;
            }

            if (v209 == 1)
            {
              v177 = __nw_create_backtrace_string();
              v173 = __nwlog_obj();
              v174 = type;
              v178 = os_log_type_enabled(v173, type);
              if (v177)
              {
                if (v178)
                {
                  *buf = 136446466;
                  v212 = "_http_vle_decode";
                  v213 = 2082;
                  v214 = v177;
                  _os_log_impl(&dword_181A37000, v173, v174, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v177);
                goto LABEL_543;
              }

              if (!v178)
              {
LABEL_543:
                if (v172)
                {
                  free(v172);
                }

LABEL_545:
                v17 = __nwlog_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v212 = "nw_http_copy_metadata_from_binary_message";
                  v18 = "%{public}s Failed to decode integer";
                  goto LABEL_19;
                }

                goto LABEL_21;
              }

              *buf = 136446210;
              v212 = "_http_vle_decode";
              v175 = "%{public}s called with null *buffer, no backtrace";
            }

            else
            {
              v173 = __nwlog_obj();
              v174 = type;
              if (!os_log_type_enabled(v173, type))
              {
                goto LABEL_543;
              }

              *buf = 136446210;
              v212 = "_http_vle_decode";
              v175 = "%{public}s called with null *buffer, backtrace limit exceeded";
            }

LABEL_542:
            _os_log_impl(&dword_181A37000, v173, v174, v175, buf, 0xCu);
            goto LABEL_543;
          }

          if (!v44)
          {
            goto LABEL_545;
          }

          v65 = *v59;
          if (v65 <= 0x3F)
          {
            v66 = 1;
            goto LABEL_144;
          }

          if (v65 >> 6 == 2)
          {
            break;
          }

          if (v65 >> 6 == 1)
          {
            if (v44 == 1)
            {
              goto LABEL_545;
            }

            v65 = bswap32(*v59 & 0xFFBF) >> 16;
            v66 = 2;
            goto LABEL_144;
          }

          v73 = v44 >= 8;
          v44 -= 8;
          if (!v73)
          {
            goto LABEL_545;
          }

          v75 = *v59;
          v74 = v59 + 8;
          v65 = bswap64(v75 & 0xFFFFFFFFFFFFFF3FLL);
          if (HIDWORD(v65))
          {
            v55 = v65;
            v56 = __nwlog_obj();
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            goto LABEL_481;
          }

          v67 = v74;
          v69 = v44 - v65;
          v68 = v44 == v65;
          if (v44 < v65)
          {
LABEL_255:
            v57 = v65;
            v56 = __nwlog_obj();
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

LABEL_182:
            *buf = 136446722;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v213 = 2048;
            v214 = v57;
            v215 = 2048;
            v216 = v44;
            v18 = "%{public}s _length %llu > remaining %zu";
LABEL_183:
            v19 = v56;
LABEL_184:
            v20 = 32;
            goto LABEL_20;
          }

LABEL_145:
          if (v68)
          {
            goto LABEL_232;
          }

          v70 = (v67 + v65);
          v71 = *(v67 + v65);
          if (v71 <= 0x3F)
          {
            v72 = 1;
LABEL_159:
            v76 = v70 + v72;
            v77 = v69 - v72;
            goto LABEL_160;
          }

          if (v71 >> 6 == 2)
          {
            if (v69 < 4)
            {
              goto LABEL_232;
            }

            v71 = bswap32(*v70 & 0xFFFFFF7F);
            v72 = 4;
            goto LABEL_159;
          }

          if (v71 >> 6 == 1)
          {
            if (v69 == 1)
            {
              goto LABEL_232;
            }

            v71 = bswap32(*v70 & 0xFFBF) >> 16;
            v72 = 2;
            goto LABEL_159;
          }

          v77 = v69 - 8;
          if (v69 < 8)
          {
LABEL_232:
            v17 = __nwlog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v212 = "nw_http_copy_metadata_from_binary_message";
              v18 = "%{public}s Failed to decode integer";
              goto LABEL_19;
            }

            goto LABEL_21;
          }

          v80 = *v70;
          v76 = (v70 + 2);
          v71 = bswap64(v80 & 0xFFFFFFFFFFFFFF3FLL);
          if (HIDWORD(v71))
          {
            v55 = v71;
            v56 = __nwlog_obj();
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            goto LABEL_481;
          }

LABEL_160:
          v44 = v77 - v71;
          if (v77 < v71)
          {
            v119 = v71;
            v56 = __nwlog_obj();
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            *buf = 136446722;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v213 = 2048;
            v214 = v119;
            v215 = 2048;
            v216 = v77;
            v18 = "%{public}s _length %llu > remaining %zu";
            goto LABEL_183;
          }

          v59 = &v76[v71];
          v78 = nw_http_parsed_fields_add(v16, v67, v65, v76, v71, 1);
          v39 = a3;
          v79 = v78;
          result = 0;
          if ((v79 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (v44 < 4)
        {
          goto LABEL_545;
        }

        v65 = bswap32(*v59 & 0xFFFFFF7F);
        v66 = 4;
LABEL_144:
        v67 = &v59[v66];
        v44 -= v66;
        v69 = v44 - v65;
        v68 = v44 == v65;
        if (v44 < v65)
        {
          goto LABEL_255;
        }

        goto LABEL_145;
      }

      if (v57 >> 6 == 2)
      {
        if (v30 >= 4)
        {
          v57 = bswap32(*v29 & 0xFFFFFF7F);
          v58 = 4;
          goto LABEL_112;
        }
      }

      else if (v57 >> 6 == 1)
      {
        if (v30 != 1)
        {
          v57 = bswap32(*v29 & 0xFFBF) >> 16;
          v58 = 2;
          goto LABEL_112;
        }
      }

      else
      {
        v44 = v30 - 8;
        if (v30 >= 8)
        {
          v91 = *v29;
          v59 = v29 + 8;
          v57 = bswap64(v91 & 0xFFFFFFFFFFFFFF3FLL);
          if (HIDWORD(v57))
          {
            v56 = __nwlog_obj();
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

LABEL_221:
            *buf = 136446722;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v213 = 2048;
            v214 = v57;
            v215 = 2048;
            v216 = 0xFFFFFFFFLL;
            v18 = "%{public}s _output %llu > _max %llu";
            goto LABEL_183;
          }

          goto LABEL_113;
        }
      }
    }

    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v212 = "nw_http_copy_metadata_from_binary_message";
      v18 = "%{public}s Failed to decode integer";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  while (1)
  {
    if (!v30)
    {
      if (v40)
      {
LABEL_176:
        result = nw_http_create_metadata_with_parsed_fields(v16, (v4 & 1) == 0);
        goto LABEL_22;
      }

      v81 = 0;
      v82 = 0;
      goto LABEL_259;
    }

    if (!v29)
    {
      __nwlog_obj();
      *buf = 136446210;
      v212 = "_http_vle_decode";
      v142 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v209 = 0;
      if (!__nwlog_fault(v142, &type, &v209))
      {
        goto LABEL_508;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v143 = __nwlog_obj();
        v144 = type;
        if (!os_log_type_enabled(v143, type))
        {
          goto LABEL_508;
        }

        *buf = 136446210;
        v212 = "_http_vle_decode";
        v145 = "%{public}s called with null *buffer";
      }

      else if (v209 == 1)
      {
        v164 = __nw_create_backtrace_string();
        v143 = __nwlog_obj();
        v144 = type;
        v165 = os_log_type_enabled(v143, type);
        if (v164)
        {
          if (v165)
          {
            *buf = 136446466;
            v212 = "_http_vle_decode";
            v213 = 2082;
            v214 = v164;
            _os_log_impl(&dword_181A37000, v143, v144, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v164);
          goto LABEL_508;
        }

        if (!v165)
        {
LABEL_508:
          if (v142)
          {
            free(v142);
          }

LABEL_510:
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v212 = "nw_http_copy_metadata_from_binary_message";
            v18 = "%{public}s Failed to decode integer";
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        *buf = 136446210;
        v212 = "_http_vle_decode";
        v145 = "%{public}s called with null *buffer, no backtrace";
      }

      else
      {
        v143 = __nwlog_obj();
        v144 = type;
        if (!os_log_type_enabled(v143, type))
        {
          goto LABEL_508;
        }

        *buf = 136446210;
        v212 = "_http_vle_decode";
        v145 = "%{public}s called with null *buffer, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0xCu);
      goto LABEL_508;
    }

    v41 = *v29;
    if (v41 <= 0x3F)
    {
      v42 = 1;
      goto LABEL_72;
    }

    if (v41 >> 6 == 2)
    {
      if (v30 < 4)
      {
        goto LABEL_510;
      }

      v41 = bswap32(*v29 & 0xFFFFFF7F);
      v42 = 4;
LABEL_72:
      v43 = &v29[v42];
      v44 = v30 - v42;
      if (!v41)
      {
        break;
      }

      goto LABEL_73;
    }

    if (v41 >> 6 == 1)
    {
      if (v30 == 1)
      {
        goto LABEL_510;
      }

      v41 = bswap32(*v29 & 0xFFBF) >> 16;
      v42 = 2;
      goto LABEL_72;
    }

    v44 = v30 - 8;
    if (v30 < 8)
    {
      goto LABEL_510;
    }

    v50 = *v29;
    v49 = v29 + 8;
    v41 = bswap64(v50 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v41))
    {
      v55 = v41;
      v56 = __nwlog_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_481;
    }

    v43 = v49;
    if (!v41)
    {
      break;
    }

LABEL_73:
    v45 = v44 - v41;
    if (v44 < v41)
    {
      v57 = v41;
      v56 = __nwlog_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_182;
    }

    if (v44 == v41)
    {
      goto LABEL_167;
    }

    v46 = &v43[v41];
    v47 = v43[v41];
    if (v47 <= 0x3F)
    {
      v48 = 1;
LABEL_87:
      v51 = &v46[v48];
      v44 = v45 - v48;
      goto LABEL_88;
    }

    if (v47 >> 6 == 2)
    {
      if (v45 < 4)
      {
        goto LABEL_167;
      }

      v47 = bswap32(*v46 & 0xFFFFFF7F);
      v48 = 4;
      goto LABEL_87;
    }

    if (v47 >> 6 == 1)
    {
      if (v45 == 1)
      {
        goto LABEL_167;
      }

      v47 = bswap32(*v46 & 0xFFBF) >> 16;
      v48 = 2;
      goto LABEL_87;
    }

    v44 = v45 - 8;
    if (v45 < 8)
    {
LABEL_167:
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v18 = "%{public}s Failed to decode integer";
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v54 = *v46;
    v51 = v46 + 8;
    v47 = bswap64(v54 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v47))
    {
      v55 = v47;
      v56 = __nwlog_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_481;
    }

LABEL_88:
    v30 = v44 - v47;
    if (v44 < v47)
    {
      v57 = v47;
      v56 = __nwlog_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_182;
    }

    v29 = &v51[v47];
    v52 = nw_http_parsed_fields_add(v16, v43, v41, v51, v47, 1);
    v40 = a4;
    v39 = a3;
    v53 = v52;
    result = 0;
    if ((v53 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v40)
  {
    goto LABEL_176;
  }

  v81 = 0;
  if (!v44)
  {
LABEL_257:
    v82 = 0;
LABEL_258:
    v29 = v43;
LABEL_259:
    if (v39)
    {
      *v39 = v81;
    }

    v100 = 0;
    while (1)
    {
      if (!v82)
      {
        goto LABEL_442;
      }

      if (!v29)
      {
        __nwlog_obj();
        *buf = 136446210;
        v212 = "_http_vle_decode";
        v179 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v209 = 0;
        if (!__nwlog_fault(v179, &type, &v209))
        {
          goto LABEL_550;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v180 = __nwlog_obj();
          v181 = type;
          if (os_log_type_enabled(v180, type))
          {
            *buf = 136446210;
            v212 = "_http_vle_decode";
            v182 = "%{public}s called with null *buffer";
            goto LABEL_549;
          }

LABEL_550:
          if (v179)
          {
            free(v179);
          }

LABEL_552:
          v122 = __nwlog_obj();
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_556;
          }

          *buf = 136446210;
          v212 = "nw_http_copy_metadata_from_binary_message";
          v118 = "%{public}s Failed to decode integer";
          goto LABEL_554;
        }

        if (v209 == 1)
        {
          v183 = __nw_create_backtrace_string();
          v180 = __nwlog_obj();
          v181 = type;
          v184 = os_log_type_enabled(v180, type);
          if (v183)
          {
            if (v184)
            {
              *buf = 136446466;
              v212 = "_http_vle_decode";
              v213 = 2082;
              v214 = v183;
              _os_log_impl(&dword_181A37000, v180, v181, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v183);
            goto LABEL_550;
          }

          if (!v184)
          {
            goto LABEL_550;
          }

          *buf = 136446210;
          v212 = "_http_vle_decode";
          v182 = "%{public}s called with null *buffer, no backtrace";
        }

        else
        {
          v180 = __nwlog_obj();
          v181 = type;
          if (!os_log_type_enabled(v180, type))
          {
            goto LABEL_550;
          }

          *buf = 136446210;
          v212 = "_http_vle_decode";
          v182 = "%{public}s called with null *buffer, backtrace limit exceeded";
        }

LABEL_549:
        _os_log_impl(&dword_181A37000, v180, v181, v182, buf, 0xCu);
        goto LABEL_550;
      }

      v101 = *v29;
      if (v101 <= 0x3F)
      {
        break;
      }

      if (v101 >> 6 == 2)
      {
        if (v82 < 4)
        {
          goto LABEL_552;
        }

        v101 = bswap32(*v29 & 0xFFFFFF7F);
        v102 = 4;
        goto LABEL_273;
      }

      if (v101 >> 6 == 1)
      {
        if (v82 == 1)
        {
          goto LABEL_552;
        }

        v101 = bswap32(*v29 & 0xFFBF) >> 16;
        v102 = 2;
        goto LABEL_273;
      }

      v73 = v82 >= 8;
      v104 = v82 - 8;
      if (!v73)
      {
        goto LABEL_552;
      }

      v110 = *v29;
      v109 = v29 + 8;
      v101 = bswap64(v110 & 0xFFFFFFFFFFFFFF3FLL);
      if (HIDWORD(v101))
      {
        v127 = __nwlog_obj();
        if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        goto LABEL_398;
      }

      v103 = v109;
      if (!v101)
      {
        goto LABEL_442;
      }

LABEL_274:
      v105 = v104 - v101;
      if (v104 < v101)
      {
        v127 = __nwlog_obj();
        if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        *buf = 136446722;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2048;
        v214 = v101;
        v215 = 2048;
        v216 = v104;
        v118 = "%{public}s _length %llu > remaining %zu";
        goto LABEL_320;
      }

      if (v104 == v101)
      {
        goto LABEL_306;
      }

      v106 = (v103 + v101);
      v107 = *(v103 + v101);
      if (v107 <= 0x3F)
      {
        v108 = 1;
LABEL_289:
        v111 = v106 + v108;
        v112 = v105 - v108;
        goto LABEL_290;
      }

      if (v107 >> 6 == 2)
      {
        if (v105 < 4)
        {
          goto LABEL_306;
        }

        v107 = bswap32(*v106 & 0xFFFFFF7F);
        v108 = 4;
        goto LABEL_289;
      }

      if (v107 >> 6 == 1)
      {
        if (v105 == 1)
        {
          goto LABEL_306;
        }

        v107 = bswap32(*v106 & 0xFFBF) >> 16;
        v108 = 2;
        goto LABEL_289;
      }

      v112 = v105 - 8;
      if (v105 < 8)
      {
LABEL_306:
        v122 = __nwlog_obj();
        if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        *buf = 136446210;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v118 = "%{public}s Failed to decode integer";
        goto LABEL_554;
      }

      v116 = *v106;
      v111 = (v106 + 2);
      v107 = bswap64(v116 & 0xFFFFFFFFFFFFFF3FLL);
      if (HIDWORD(v107))
      {
        v117 = __nwlog_obj();
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        goto LABEL_296;
      }

LABEL_290:
      v82 = v112 - v107;
      if (v112 < v107)
      {
        v117 = __nwlog_obj();
        if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_556;
        }

        *buf = 136446722;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2048;
        v214 = v107;
        v215 = 2048;
        v216 = v112;
        v118 = "%{public}s _length %llu > remaining %zu";
        goto LABEL_323;
      }

      if (!v100)
      {
        v113 = v103;
        v114 = v111;
        v115 = _nw_http_parsed_fields_create();
        v111 = v114;
        v103 = v113;
        v100 = v115;
      }

      v29 = &v111[v107];
      if ((nw_http_parsed_fields_add(v100, v103, v101, v111, v107, 1) & 1) == 0)
      {
        goto LABEL_556;
      }
    }

    v102 = 1;
LABEL_273:
    v103 = &v29[v102];
    v104 = v82 - v102;
    if (!v101)
    {
      goto LABEL_442;
    }

    goto LABEL_274;
  }

  while (2)
  {
    v57 = *v43;
    if (v57 <= 0x3F)
    {
      v89 = 1;
      goto LABEL_213;
    }

    if (v57 >> 6 == 2)
    {
      if (v44 < 4)
      {
        goto LABEL_359;
      }

      v57 = bswap32(*v43 & 0xFFFFFF7F);
      v89 = 4;
LABEL_213:
      v43 += v89;
      v82 = v44 - v89;
LABEL_214:
      if (!v57)
      {
        goto LABEL_258;
      }

      if (v82 < v57)
      {
        v56 = __nwlog_obj();
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 136446722;
        v212 = "nw_http_copy_metadata_from_binary_message";
        v213 = 2048;
        v214 = v57;
        v215 = 2048;
        v216 = v82;
        v18 = "%{public}s _length %llu > remaining %zu";
        goto LABEL_183;
      }

      v81 += v57;
      v43 += v57;
      v44 = v82 - v57;
      if (v82 == v57)
      {
        goto LABEL_257;
      }

      continue;
    }

    break;
  }

  if (v57 >> 6 == 1)
  {
    if (v44 == 1)
    {
      goto LABEL_359;
    }

    v57 = bswap32(*v43 & 0xFFBF) >> 16;
    v89 = 2;
    goto LABEL_213;
  }

  v82 = v44 - 8;
  if (v44 >= 8)
  {
    v90 = *v43;
    v43 += 8;
    v57 = bswap64(v90 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v57))
    {
      v56 = __nwlog_obj();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_221;
    }

    goto LABEL_214;
  }

LABEL_359:
  v17 = __nwlog_obj();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_21;
  }

  *buf = 136446210;
  v212 = "nw_http_copy_metadata_from_binary_message";
  v18 = "%{public}s Failed to decode integer";
LABEL_19:
  v19 = v17;
  v20 = 12;
LABEL_20:
  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_21:
  result = 0;
LABEL_22:
  if (v16)
  {
    v22 = result;
    os_release(v16);
    return v22;
  }

  return result;
}

BOOL nw_http_fillout_body_from_binary_message(_DWORD *a1, unint64_t a2, char *__dst, size_t a4, size_t *a5)
{
  v91 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_http_fillout_body_from_binary_message";
    v74 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (!__nwlog_fault(v74, &type, &v85))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null buffer";
      goto LABEL_233;
    }

    if (v85 != 1)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = type;
    v80 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (!v80)
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_233;
    }

    if (!v80)
    {
      goto LABEL_212;
    }

    *buf = 136446466;
    v88 = "nw_http_fillout_body_from_binary_message";
    v89 = 2082;
    v90 = backtrace_string;
    v81 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_211:
    _os_log_impl(&dword_181A37000, v75, v76, v81, buf, 0x16u);
    goto LABEL_212;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_http_fillout_body_from_binary_message";
    v74 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (!__nwlog_fault(v74, &type, &v85))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null buffer_length";
      goto LABEL_233;
    }

    if (v85 != 1)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null buffer_length, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = type;
    v82 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (!v82)
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null buffer_length, no backtrace";
      goto LABEL_233;
    }

    if (!v82)
    {
      goto LABEL_212;
    }

    *buf = 136446466;
    v88 = "nw_http_fillout_body_from_binary_message";
    v89 = 2082;
    v90 = backtrace_string;
    v81 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
    goto LABEL_211;
  }

  if (!__dst)
  {
    __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_http_fillout_body_from_binary_message";
    v74 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (!__nwlog_fault(v74, &type, &v85))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null body_buffer";
      goto LABEL_233;
    }

    if (v85 != 1)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null body_buffer, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = type;
    v83 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (!v83)
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null body_buffer, no backtrace";
      goto LABEL_233;
    }

    if (!v83)
    {
      goto LABEL_212;
    }

    *buf = 136446466;
    v88 = "nw_http_fillout_body_from_binary_message";
    v89 = 2082;
    v90 = backtrace_string;
    v81 = "%{public}s called with null body_buffer, dumping backtrace:%{public}s";
    goto LABEL_211;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v88 = "nw_http_fillout_body_from_binary_message";
    v74 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (!__nwlog_fault(v74, &type, &v85))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null body_buffer_length";
      goto LABEL_233;
    }

    if (v85 != 1)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v88 = "nw_http_fillout_body_from_binary_message";
      v77 = "%{public}s called with null body_buffer_length, backtrace limit exceeded";
      goto LABEL_233;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = type;
    v84 = os_log_type_enabled(v75, type);
    if (backtrace_string)
    {
      if (v84)
      {
        *buf = 136446466;
        v88 = "nw_http_fillout_body_from_binary_message";
        v89 = 2082;
        v90 = backtrace_string;
        v81 = "%{public}s called with null body_buffer_length, dumping backtrace:%{public}s";
        goto LABEL_211;
      }

LABEL_212:
      free(backtrace_string);
      goto LABEL_234;
    }

    if (!v84)
    {
      goto LABEL_234;
    }

    *buf = 136446210;
    v88 = "nw_http_fillout_body_from_binary_message";
    v77 = "%{public}s called with null body_buffer_length, no backtrace";
LABEL_233:
    _os_log_impl(&dword_181A37000, v75, v76, v77, buf, 0xCu);
LABEL_234:
    if (v74)
    {
      free(v74);
    }

    return 0;
  }

  v5 = *a1;
  if (v5 > 0x3F)
  {
    v8 = v5 >> 6;
    if (v8 == 2)
    {
      if (a2 < 4)
      {
        return 0;
      }

      v5 = bswap32(*a1 & 0xFFFFFF7F);
      v6 = 4;
    }

    else if (v8 == 1)
    {
      if (a2 == 1)
      {
        return 0;
      }

      v5 = bswap32(*a1 & 0xFFBF) >> 16;
      v6 = 2;
    }

    else
    {
      if (a2 < 8)
      {
        return 0;
      }

      v5 = bswap64(*a1 & 0xFFFFFFFFFFFFFF3FLL);
      v6 = 8;
    }
  }

  else
  {
    v6 = 1;
  }

  if (v5 > 3)
  {
    return 0;
  }

  v9 = (a1 + v6);
  v10 = a2 - v6;
  if (v5)
  {
    if (a2 == v6)
    {
      return 0;
    }

    v33 = *v9;
    if (v33 > 0x3F)
    {
      if (v33 >> 6 == 2)
      {
        if (v10 < 4)
        {
          return 0;
        }

        v33 = bswap32(*v9 & 0xFFFFFF7F);
        v36 = 4;
      }

      else if (v33 >> 6 == 1)
      {
        if (v10 == 1)
        {
          return 0;
        }

        v33 = bswap32(*v9 & 0xFFBF) >> 16;
        v36 = 2;
      }

      else
      {
        if (v10 < 8)
        {
          return 0;
        }

        v33 = bswap64(*v9 & 0xFFFFFFFFFFFFFF3FLL);
        v36 = 8;
      }

      if (v33 > 0x3E8)
      {
        return 0;
      }

      v31 = v9 + v36;
      v32 = v10 - v36;
    }

    else
    {
      v31 = v9 + 1;
      v32 = v10 - 1;
    }

    if (v33 - 601 <= 0xFFFFFFFFFFFFFE6ELL)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v88 = "nw_http_fillout_body_from_binary_message";
      v89 = 2048;
      v90 = v33;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s Informational statuses not supported: %llu", buf, 0x16u);
      return 0;
    }
  }

  else
  {
    if (a2 == v6)
    {
      return 0;
    }

    v11 = *v9;
    if (v11 > 0x3F)
    {
      v35 = v11 >> 6;
      if (v35 == 2)
      {
        if (v10 < 4)
        {
          return 0;
        }

        v11 = bswap32(*v9 & 0xFFFFFF7F);
        v12 = 4;
      }

      else if (v35 == 1)
      {
        if (v10 == 1)
        {
          return 0;
        }

        v11 = bswap32(*v9 & 0xFFBF) >> 16;
        v12 = 2;
      }

      else
      {
        if (v10 < 8)
        {
          return 0;
        }

        v11 = bswap64(*v9 & 0xFFFFFFFFFFFFFF3FLL);
        v12 = 8;
      }
    }

    else
    {
      v12 = 1;
    }

    result = 0;
    if (v11 >> 16)
    {
      return result;
    }

    v13 = v10 - v12;
    if (v13 < v11)
    {
      return result;
    }

    v14 = v13 - v11;
    if (!v14)
    {
      return 0;
    }

    v15 = (v9 + v12 + v11);
    v16 = *v15;
    if (v16 > 0x3F)
    {
      v58 = v16 >> 6;
      if (v58 == 2)
      {
        if (v14 < 4)
        {
          return 0;
        }

        v16 = bswap32(*v15 & 0xFFFFFF7F);
        v17 = 4;
      }

      else if (v58 == 1)
      {
        if (v14 == 1)
        {
          return 0;
        }

        v16 = bswap32(*v15 & 0xFFBF) >> 16;
        v17 = 2;
      }

      else
      {
        if (v14 < 8)
        {
          return 0;
        }

        v16 = bswap64(*v15 & 0xFFFFFFFFFFFFFF3FLL);
        v17 = 8;
      }
    }

    else
    {
      v17 = 1;
    }

    result = 0;
    if (v16 >> 16)
    {
      return result;
    }

    v18 = v14 - v17;
    if (v18 < v16)
    {
      return result;
    }

    v19 = v18 - v16;
    if (!v19)
    {
      return 0;
    }

    v20 = (v15 + v17 + v16);
    v21 = *v20;
    if (v21 > 0x3F)
    {
      v60 = v21 >> 6;
      if (v60 == 2)
      {
        if (v19 < 4)
        {
          return 0;
        }

        v21 = bswap32(*v20 & 0xFFFFFF7F);
        v22 = 4;
      }

      else if (v60 == 1)
      {
        if (v19 == 1)
        {
          return 0;
        }

        v21 = bswap32(*v20 & 0xFFBF) >> 16;
        v22 = 2;
      }

      else
      {
        if (v19 < 8)
        {
          return 0;
        }

        v21 = bswap64(*v20 & 0xFFFFFFFFFFFFFF3FLL);
        v22 = 8;
      }
    }

    else
    {
      v22 = 1;
    }

    v23 = v19 - v22;
    if (v21 >> 16)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23 >= v21;
    }

    if (!v24)
    {
      return 0;
    }

    v25 = v23 - v21;
    if (!v25)
    {
      return 0;
    }

    v26 = (v20 + v22 + v21);
    v27 = *v26;
    if (v27 > 0x3F)
    {
      v78 = v27 >> 6;
      if (v78 == 2)
      {
        if (v25 < 4)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFFFFF7F);
        v28 = 4;
      }

      else if (v78 == 1)
      {
        if (v25 == 1)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFBF) >> 16;
        v28 = 2;
      }

      else
      {
        if (v25 < 8)
        {
          return 0;
        }

        v27 = bswap64(*v26 & 0xFFFFFFFFFFFFFF3FLL);
        v28 = 8;
      }
    }

    else
    {
      v28 = 1;
    }

    v29 = v25 - v28;
    if (v27 >> 16)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29 >= v27;
    }

    if (!v30)
    {
      return 0;
    }

    v31 = v26 + v28 + v27;
    v32 = v29 - v27;
  }

  if (v5 < 2)
  {
    if (v32)
    {
      v37 = *v31;
      if (v37 > 0x3F)
      {
        v59 = v37 >> 6;
        if (v59 == 2)
        {
          if (v32 < 4)
          {
            return 0;
          }

          v37 = bswap32(*v31 & 0xFFFFFF7F);
          v38 = 4;
        }

        else if (v59 == 1)
        {
          if (v32 == 1)
          {
            return 0;
          }

          v37 = bswap32(*v31 & 0xFFBF) >> 16;
          v38 = 2;
        }

        else
        {
          if (v32 < 8)
          {
            return 0;
          }

          v37 = bswap64(*v31 & 0xFFFFFFFFFFFFFF3FLL);
          v38 = 8;
        }
      }

      else
      {
        v38 = 1;
      }

      result = 0;
      if (HIDWORD(v37))
      {
        return result;
      }

      v39 = v32 - v38;
      if (v39 < v37)
      {
        return result;
      }

      v40 = v39 - v37;
      if (v40)
      {
        v41 = &v31[v38 + v37];
        v42 = *v41;
        if (v42 > 0x3F)
        {
          if (v42 >> 6 == 2)
          {
            if (v40 < 4)
            {
              return 0;
            }

            v42 = bswap32(*v41 & 0xFFFFFF7F);
            v43 = 4;
          }

          else if (v42 >> 6 == 1)
          {
            if (v40 == 1)
            {
              return 0;
            }

            v42 = bswap32(*v41 & 0xFFBF) >> 16;
            v43 = 2;
          }

          else
          {
            if (v40 < 8)
            {
              return 0;
            }

            v42 = bswap64(*v41 & 0xFFFFFFFFFFFFFF3FLL);
            v43 = 8;
          }
        }

        else
        {
          v43 = 1;
        }

        result = 0;
        if (v42 <= a4 && v42 <= v40 - v43)
        {
          v44 = a5;
          memcpy(__dst, &v41[v43], v42);
          if (v44)
          {
            *v44 = v42;
          }

          return 1;
        }

        return result;
      }
    }

    return 0;
  }

  if (!v32)
  {
LABEL_155:
    v70 = 0;
    goto LABEL_156;
  }

  while (1)
  {
    v45 = *v31;
    if (v45 <= 0x3F)
    {
      v46 = 1;
LABEL_92:
      v48 = &v31[v46];
      v49 = v32 - v46;
      goto LABEL_93;
    }

    v47 = v45 >> 6;
    if (v47 == 2)
    {
      if (v32 < 4)
      {
        return 0;
      }

      v45 = bswap32(*v31 & 0xFFFFFF7F);
      v46 = 4;
      goto LABEL_92;
    }

    if (v47 == 1)
    {
      if (v32 == 1)
      {
        return 0;
      }

      v45 = bswap32(*v31 & 0xFFBF) >> 16;
      v46 = 2;
      goto LABEL_92;
    }

    v24 = v32 >= 8;
    v49 = v32 - 8;
    if (!v24)
    {
      return 0;
    }

    v55 = *v31;
    v48 = v31 + 8;
    v45 = bswap64(v55 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v45))
    {
      return 0;
    }

LABEL_93:
    if (!v45)
    {
      break;
    }

    v24 = v49 >= v45;
    v50 = v49 - v45;
    if (!v24 || !v50)
    {
      return 0;
    }

    v51 = &v48[v45];
    v52 = *v51;
    if (v52 > 0x3F)
    {
      v54 = v52 >> 6;
      if (v54 == 2)
      {
        if (v50 < 4)
        {
          return 0;
        }

        v52 = bswap32(*v51 & 0xFFFFFF7F);
        v53 = 4;
      }

      else if (v54 == 1)
      {
        if (v50 == 1)
        {
          return 0;
        }

        v52 = bswap32(*v51 & 0xFFBF) >> 16;
        v53 = 2;
      }

      else
      {
        if (v50 < 8)
        {
          return 0;
        }

        v52 = bswap64(*v51 & 0xFFFFFFFFFFFFFF3FLL);
        v53 = 8;
      }
    }

    else
    {
      v53 = 1;
    }

    v56 = v50 - v53;
    if (HIDWORD(v52) || v56 < v52)
    {
      return 0;
    }

    v31 = &v51[v53 + v52];
    v32 = v56 - v52;
    if (!v32)
    {
      goto LABEL_155;
    }
  }

  if (!v49)
  {
    goto LABEL_155;
  }

  v63 = 0;
  while (1)
  {
    v64 = *v48;
    if (v64 <= 0x3F)
    {
      v65 = 1;
      v66 = __dst;
      v67 = a4;
      goto LABEL_144;
    }

    if (v64 >> 6 != 2)
    {
      break;
    }

    if (v49 < 4)
    {
      return 0;
    }

    v66 = __dst;
    v67 = a4;
    v64 = bswap32(*v48 & 0xFFFFFF7F);
    v65 = 4;
LABEL_144:
    v68 = &v48[v65];
    v69 = v49 - v65;
    if (!v64)
    {
      goto LABEL_154;
    }

LABEL_145:
    v70 = v64 + v63;
    if (v69 < v64 || v70 > v67)
    {
      return 0;
    }

    v72 = a5;
    memcpy(&v66[v63], v68, v64);
    a5 = v72;
    v48 = &v68[v64];
    v63 = v70;
    v49 = v69 - v64;
    if (v69 == v64)
    {
      goto LABEL_156;
    }
  }

  if (v64 >> 6 == 1)
  {
    if (v49 == 1)
    {
      return 0;
    }

    v66 = __dst;
    v67 = a4;
    v64 = bswap32(*v48 & 0xFFBF) >> 16;
    v65 = 2;
    goto LABEL_144;
  }

  v69 = v49 - 8;
  if (v49 < 8)
  {
    return 0;
  }

  v73 = *v48;
  v68 = v48 + 8;
  v64 = bswap64(v73 & 0xFFFFFFFFFFFFFF3FLL);
  if (HIDWORD(v64))
  {
    return 0;
  }

  v66 = __dst;
  v67 = a4;
  if (v64)
  {
    goto LABEL_145;
  }

LABEL_154:
  v70 = v63;
LABEL_156:
  if (a5)
  {
    *a5 = v70;
  }

  return 1;
}

char *nw_http_access_body_chunk_from_indeterminate_binary_message(_DWORD *a1, unint64_t a2, int a3, unint64_t *a4, _BYTE *a5, char **a6, unint64_t *a7)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v60, &type, &v73))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null buffer";
      goto LABEL_222;
    }

    if (v73 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v65 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (!v65)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_222;
    }

    if (!v65)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v77 = 2082;
    v78 = backtrace_string;
    v66 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_188:
    _os_log_impl(&dword_181A37000, v61, v62, v66, buf, 0x16u);
    goto LABEL_189;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v60, &type, &v73))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null buffer_length";
      goto LABEL_222;
    }

    if (v73 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null buffer_length, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v67 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (!v67)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null buffer_length, no backtrace";
      goto LABEL_222;
    }

    if (!v67)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v77 = 2082;
    v78 = backtrace_string;
    v66 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v60, &type, &v73))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_chunk_length";
      goto LABEL_222;
    }

    if (v73 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_chunk_length, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v68 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (!v68)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_chunk_length, no backtrace";
      goto LABEL_222;
    }

    if (!v68)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v77 = 2082;
    v78 = backtrace_string;
    v66 = "%{public}s called with null out_chunk_length, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v60, &type, &v73))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_is_complete";
      goto LABEL_222;
    }

    if (v73 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_is_complete, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v69 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (!v69)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_is_complete, no backtrace";
      goto LABEL_222;
    }

    if (!v69)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v77 = 2082;
    v78 = backtrace_string;
    v66 = "%{public}s called with null out_is_complete, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v60, &type, &v73))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_next_chunk";
      goto LABEL_222;
    }

    if (v73 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_next_chunk, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v70 = os_log_type_enabled(v61, type);
    if (!backtrace_string)
    {
      if (!v70)
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_next_chunk, no backtrace";
      goto LABEL_222;
    }

    if (!v70)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v77 = 2082;
    v78 = backtrace_string;
    v66 = "%{public}s called with null out_next_chunk, dumping backtrace:%{public}s";
    goto LABEL_188;
  }

  if (!a7)
  {
    __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v60, &type, &v73))
    {
      goto LABEL_223;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_remaining_length";
      goto LABEL_222;
    }

    if (v73 != 1)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v63 = "%{public}s called with null out_remaining_length, backtrace limit exceeded";
      goto LABEL_222;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type;
    v71 = os_log_type_enabled(v61, type);
    if (backtrace_string)
    {
      if (v71)
      {
        *buf = 136446466;
        v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
        v77 = 2082;
        v78 = backtrace_string;
        v66 = "%{public}s called with null out_remaining_length, dumping backtrace:%{public}s";
        goto LABEL_188;
      }

LABEL_189:
      free(backtrace_string);
      goto LABEL_223;
    }

    if (!v71)
    {
      goto LABEL_223;
    }

    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v63 = "%{public}s called with null out_remaining_length, no backtrace";
LABEL_222:
    _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
LABEL_223:
    if (v60)
    {
      free(v60);
    }

    return 0;
  }

  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = a2;
  if (!a3)
  {
    goto LABEL_110;
  }

  v7 = *a1;
  if (v7 > 0x3F)
  {
    v13 = v7 >> 6;
    if (v13 == 2)
    {
      if (a2 < 4)
      {
        return 0;
      }

      v7 = bswap32(*a1 & 0xFFFFFF7F);
      v8 = 4;
    }

    else if (v13 == 1)
    {
      if (a2 == 1)
      {
        return 0;
      }

      v7 = bswap32(*a1 & 0xFFBF) >> 16;
      v8 = 2;
    }

    else
    {
      if (a2 < 8)
      {
        return 0;
      }

      v7 = bswap64(*a1 & 0xFFFFFFFFFFFFFF3FLL);
      v8 = 8;
    }
  }

  else
  {
    v8 = 1;
  }

  if (v7 > 3)
  {
    return 0;
  }

  if (v7 <= 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
    v10 = "%{public}s Message is not indeterminate";
    v11 = v9;
    v12 = 12;
    goto LABEL_14;
  }

  v14 = (a1 + v8);
  v15 = a2 - v8;
  if (v7)
  {
    if (a2 == v8)
    {
      return 0;
    }

    v38 = *v14;
    if (v38 > 0x3F)
    {
      if (v38 >> 6 == 2)
      {
        if (v15 < 4)
        {
          return 0;
        }

        v38 = bswap32(*v14 & 0xFFFFFF7F);
        v40 = 4;
      }

      else if (v38 >> 6 == 1)
      {
        if (v15 == 1)
        {
          return 0;
        }

        v38 = bswap32(*v14 & 0xFFBF) >> 16;
        v40 = 2;
      }

      else
      {
        if (v15 < 8)
        {
          return 0;
        }

        v38 = bswap64(*v14 & 0xFFFFFFFFFFFFFF3FLL);
        v40 = 8;
      }

      if (v38 > 0x3E8)
      {
        return 0;
      }

      v36 = (v14 + v40);
      v37 = v15 - v40;
    }

    else
    {
      v36 = (v14 + 1);
      v37 = v15 - 1;
    }

    if (v38 - 601 <= 0xFFFFFFFFFFFFFE6ELL)
    {
      v39 = __nwlog_obj();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      v76 = "nw_http_access_body_chunk_from_indeterminate_binary_message";
      v77 = 2048;
      v78 = v38;
      v10 = "%{public}s Informational statuses not supported: %llu";
      v11 = v39;
      v12 = 22;
LABEL_14:
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      return 0;
    }
  }

  else
  {
    if (a2 == v8)
    {
      return 0;
    }

    v16 = *v14;
    if (v16 > 0x3F)
    {
      if (v16 >> 6 == 2)
      {
        if (v15 < 4)
        {
          return 0;
        }

        v16 = bswap32(*v14 & 0xFFFFFF7F);
        v17 = 4;
      }

      else if (v16 >> 6 == 1)
      {
        if (v15 == 1)
        {
          return 0;
        }

        v16 = bswap32(*v14 & 0xFFBF) >> 16;
        v17 = 2;
      }

      else
      {
        if (v15 < 8)
        {
          return 0;
        }

        v16 = bswap64(*v14 & 0xFFFFFFFFFFFFFF3FLL);
        v17 = 8;
      }
    }

    else
    {
      v17 = 1;
    }

    v18 = 0;
    if (v16 >> 16)
    {
      return v18;
    }

    v19 = v15 - v17;
    if (v19 < v16)
    {
      return v18;
    }

    v20 = v19 - v16;
    if (!v20)
    {
      return 0;
    }

    v21 = (v14 + v17 + v16);
    v22 = *v21;
    if (v22 > 0x3F)
    {
      if (v22 >> 6 == 2)
      {
        if (v20 < 4)
        {
          return 0;
        }

        v22 = bswap32(*v21 & 0xFFFFFF7F);
        v23 = 4;
      }

      else if (v22 >> 6 == 1)
      {
        if (v20 == 1)
        {
          return 0;
        }

        v22 = bswap32(*v21 & 0xFFBF) >> 16;
        v23 = 2;
      }

      else
      {
        if (v20 < 8)
        {
          return 0;
        }

        v22 = bswap64(*v21 & 0xFFFFFFFFFFFFFF3FLL);
        v23 = 8;
      }
    }

    else
    {
      v23 = 1;
    }

    v18 = 0;
    if (v22 >> 16)
    {
      return v18;
    }

    v24 = v20 - v23;
    if (v24 < v22)
    {
      return v18;
    }

    v25 = v24 - v22;
    if (!v25)
    {
      return 0;
    }

    v26 = (v21 + v23 + v22);
    v27 = *v26;
    if (v27 > 0x3F)
    {
      if (v27 >> 6 == 2)
      {
        if (v25 < 4)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFFFFF7F);
        v28 = 4;
      }

      else if (v27 >> 6 == 1)
      {
        if (v25 == 1)
        {
          return 0;
        }

        v27 = bswap32(*v26 & 0xFFBF) >> 16;
        v28 = 2;
      }

      else
      {
        if (v25 < 8)
        {
          return 0;
        }

        v27 = bswap64(*v26 & 0xFFFFFFFFFFFFFF3FLL);
        v28 = 8;
      }
    }

    else
    {
      v28 = 1;
    }

    v18 = 0;
    if (v27 >> 16)
    {
      return v18;
    }

    v29 = v25 - v28;
    if (v29 < v27)
    {
      return v18;
    }

    v30 = v29 - v27;
    if (!v30)
    {
      return 0;
    }

    v31 = (v26 + v28 + v27);
    v32 = *v31;
    if (v32 > 0x3F)
    {
      v72 = v32 >> 6;
      if (v72 == 2)
      {
        if (v30 < 4)
        {
          return 0;
        }

        v32 = bswap32(*v31 & 0xFFFFFF7F);
        v33 = 4;
      }

      else if (v72 == 1)
      {
        if (v30 == 1)
        {
          return 0;
        }

        v32 = bswap32(*v31 & 0xFFBF) >> 16;
        v33 = 2;
      }

      else
      {
        if (v30 < 8)
        {
          return 0;
        }

        v32 = bswap64(*v31 & 0xFFFFFFFFFFFFFF3FLL);
        v33 = 8;
      }
    }

    else
    {
      v33 = 1;
    }

    v34 = v30 - v33;
    if (v32 >> 16)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34 >= v32;
    }

    if (!v35)
    {
      return 0;
    }

    v36 = (v31 + v33 + v32);
    v37 = v34 - v32;
  }

  if (!v37)
  {
    return 0;
  }

  while (1)
  {
    v45 = *v36;
    if (v45 <= 0x3F)
    {
      v46 = 1;
LABEL_80:
      a1 = (v36 + v46);
      a2 = v37 - v46;
      goto LABEL_81;
    }

    v47 = v45 >> 6;
    if (v47 == 2)
    {
      if (v37 < 4)
      {
        return 0;
      }

      v45 = bswap32(*v36 & 0xFFFFFF7F);
      v46 = 4;
      goto LABEL_80;
    }

    if (v47 == 1)
    {
      if (v37 == 1)
      {
        return 0;
      }

      v45 = bswap32(*v36 & 0xFFBF) >> 16;
      v46 = 2;
      goto LABEL_80;
    }

    a2 = v37 - 8;
    if (v37 < 8)
    {
      return 0;
    }

    v51 = *v36;
    a1 = v36 + 2;
    v45 = bswap64(v51 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v45))
    {
      return 0;
    }

LABEL_81:
    if (!v45)
    {
      break;
    }

    v48 = a2 - v45;
    if (a2 <= v45)
    {
      return 0;
    }

    v49 = (a1 + v45);
    v50 = *(a1 + v45);
    if (v50 <= 0x3F)
    {
      v41 = 1;
    }

    else if (v50 >> 6 == 2)
    {
      if (v48 < 4)
      {
        return 0;
      }

      v50 = bswap32(*v49 & 0xFFFFFF7F);
      v41 = 4;
    }

    else if (v50 >> 6 == 1)
    {
      if (v48 == 1)
      {
        return 0;
      }

      v50 = bswap32(*v49 & 0xFFBF) >> 16;
      v41 = 2;
    }

    else
    {
      if (v48 < 8)
      {
        return 0;
      }

      v50 = bswap64(*v49 & 0xFFFFFFFFFFFFFF3FLL);
      v41 = 8;
    }

    v18 = 0;
    v42 = v48 - v41;
    v36 = (v49 + v41 + v50);
    v37 = v48 - v41 - v50;
    if (HIDWORD(v50))
    {
      v43 = 0;
    }

    else
    {
      v43 = v42 >= v50;
    }

    if (!v43 || v37 == 0)
    {
      return v18;
    }
  }

  if (!a2)
  {
    return 0;
  }

LABEL_110:
  v52 = *a1;
  if (v52 <= 0x3F)
  {
    v53 = 1;
    goto LABEL_112;
  }

  if (v52 >> 6 == 2)
  {
    if (a2 < 4)
    {
      return 0;
    }

    v52 = bswap32(*a1 & 0xFFFFFF7F);
    v53 = 4;
LABEL_112:
    v18 = a1 + v53;
    v54 = a2 - v53;
    if (!v52)
    {
      goto LABEL_127;
    }
  }

  else
  {
    if (v52 >> 6 == 1)
    {
      if (a2 != 1)
      {
        v52 = bswap32(*a1 & 0xFFBF) >> 16;
        v53 = 2;
        goto LABEL_112;
      }

      return 0;
    }

    v54 = a2 - 8;
    if (a2 < 8)
    {
      return 0;
    }

    v58 = *a1;
    v57 = (a1 + 2);
    v52 = bswap64(v58 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v52))
    {
      return 0;
    }

    v18 = v57;
    if (!v52)
    {
LABEL_127:
      *a5 = 1;
      *a7 = v54;
      if (!v54)
      {
        v18 = 0;
      }

      *a6 = v18;
      return 0;
    }
  }

  v35 = v54 >= v52;
  v55 = v54 - v52;
  if (!v35)
  {
    return 0;
  }

  *a4 = v52;
  *a7 = v55;
  v56 = &v18[v52];
  if (!v55)
  {
    v56 = 0;
  }

  *a6 = v56;
  return v18;
}

uint64_t nw_http_copy_trailer_fields_from_indeterminate_binary_message(const char *a1, unint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v35, &type, &v44))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v36, type))
      {
        *buf = 136446210;
        v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v38 = "%{public}s called with null buffer";
LABEL_101:
        _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
      }

LABEL_102:
      if (v35)
      {
        free(v35);
      }

      return 0;
    }

    if (v44 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v36, type))
      {
        *buf = 136446210;
        v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v38 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type;
    v40 = os_log_type_enabled(v36, type);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v38 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    if (v40)
    {
      *buf = 136446466;
      v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v48 = 2082;
      v49 = backtrace_string;
      v41 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_79:
      _os_log_impl(&dword_181A37000, v36, v37, v41, buf, 0x16u);
    }

LABEL_80:
    free(backtrace_string);
    goto LABEL_102;
  }

  v2 = a2;
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v35, &type, &v44))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v36, type))
      {
        *buf = 136446210;
        v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v38 = "%{public}s called with null buffer_length";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    if (v44 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v36, type))
      {
        *buf = 136446210;
        v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v38 = "%{public}s called with null buffer_length, backtrace limit exceeded";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type;
    v42 = os_log_type_enabled(v36, type);
    if (!backtrace_string)
    {
      if (v42)
      {
        *buf = 136446210;
        v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
        v38 = "%{public}s called with null buffer_length, no backtrace";
        goto LABEL_101;
      }

      goto LABEL_102;
    }

    if (v42)
    {
      *buf = 136446466;
      v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v48 = 2082;
      v49 = backtrace_string;
      v41 = "%{public}s called with null buffer_length, dumping backtrace:%{public}s";
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  v3 = a1;
  v4 = 0;
  while (1)
  {
    if (!v2)
    {
LABEL_39:
      if (!v4)
      {
        return 0;
      }

      v4 = v4;
      v24 = _nw_http_parsed_fields_copy_trailer_fields(v4);

      goto LABEL_91;
    }

    if (!v3)
    {
      break;
    }

    v5 = *v3;
    if (v5 <= 0x3F)
    {
      v6 = 1;
      goto LABEL_15;
    }

    if (v5 >> 6 == 2)
    {
      if (v2 < 4)
      {
        goto LABEL_86;
      }

      v5 = bswap32(*v3 & 0xFFFFFF7F);
      v6 = 4;
LABEL_15:
      v7 = &v3[v6];
      v8 = v2 - v6;
      if (!v5)
      {
        goto LABEL_39;
      }

      goto LABEL_16;
    }

    if (v5 >> 6 == 1)
    {
      if (v2 == 1)
      {
        goto LABEL_86;
      }

      v5 = bswap32(*v3 & 0xFFBF) >> 16;
      v6 = 2;
      goto LABEL_15;
    }

    v13 = v2 >= 8;
    v8 = v2 - 8;
    if (!v13)
    {
      goto LABEL_86;
    }

    v15 = *v3;
    v14 = v3 + 8;
    v5 = bswap64(v15 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v5))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v48 = 2048;
      v49 = v5;
      v50 = 2048;
      v51 = 0xFFFFFFFFLL;
      v23 = "%{public}s _output %llu > _max %llu";
LABEL_45:
      v27 = v26;
LABEL_49:
      v28 = 32;
LABEL_89:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, v23, buf, v28);
      goto LABEL_90;
    }

    v7 = v14;
    if (!v5)
    {
      goto LABEL_39;
    }

LABEL_16:
    v9 = v8 - v5;
    if (v8 < v5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v48 = 2048;
      v49 = v5;
      v50 = 2048;
      v51 = v8;
      v23 = "%{public}s _length %llu > remaining %zu";
      goto LABEL_45;
    }

    if (v8 == v5)
    {
      goto LABEL_41;
    }

    v10 = (v7 + v5);
    v11 = *(v7 + v5);
    if (v11 <= 0x3F)
    {
      v12 = 1;
LABEL_31:
      v16 = v10 + v12;
      v17 = v9 - v12;
      goto LABEL_32;
    }

    if (v11 >> 6 == 2)
    {
      if (v9 < 4)
      {
        goto LABEL_41;
      }

      v11 = bswap32(*v10 & 0xFFFFFF7F);
      v12 = 4;
      goto LABEL_31;
    }

    if (v11 >> 6 == 1)
    {
      if (v9 == 1)
      {
        goto LABEL_41;
      }

      v11 = bswap32(*v10 & 0xFFBF) >> 16;
      v12 = 2;
      goto LABEL_31;
    }

    v17 = v9 - 8;
    if (v9 < 8)
    {
LABEL_41:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v23 = "%{public}s Failed to decode integer";
      goto LABEL_88;
    }

    v21 = *v10;
    v16 = (v10 + 2);
    v11 = bswap64(v21 & 0xFFFFFFFFFFFFFF3FLL);
    if (HIDWORD(v11))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v48 = 2048;
      v49 = v11;
      v50 = 2048;
      v51 = 0xFFFFFFFFLL;
      v23 = "%{public}s _output %llu > _max %llu";
LABEL_48:
      v27 = v22;
      goto LABEL_49;
    }

LABEL_32:
    v2 = v17 - v11;
    if (v17 < v11)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136446722;
      v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
      v48 = 2048;
      v49 = v11;
      v50 = 2048;
      v51 = v17;
      v23 = "%{public}s _length %llu > remaining %zu";
      goto LABEL_48;
    }

    if (!v4)
    {
      v18 = v7;
      v19 = v16;
      v20 = _nw_http_parsed_fields_create();
      v16 = v19;
      v7 = v18;
      v4 = v20;
    }

    v3 = &v16[v11];
    if ((nw_http_parsed_fields_add(v4, v7, v5, v16, v11, 1) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  __nwlog_obj();
  *buf = 136446210;
  v47 = "_http_vle_decode";
  v29 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (!__nwlog_fault(v29, &type, &v44))
  {
    goto LABEL_84;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v30 = __nwlog_obj();
    v31 = type;
    if (os_log_type_enabled(v30, type))
    {
      *buf = 136446210;
      v47 = "_http_vle_decode";
      v32 = "%{public}s called with null *buffer";
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (v44 != 1)
  {
    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_84;
    }

    *buf = 136446210;
    v47 = "_http_vle_decode";
    v32 = "%{public}s called with null *buffer, backtrace limit exceeded";
    goto LABEL_83;
  }

  v33 = __nw_create_backtrace_string();
  v30 = __nwlog_obj();
  v31 = type;
  v34 = os_log_type_enabled(v30, type);
  if (v33)
  {
    if (v34)
    {
      *buf = 136446466;
      v47 = "_http_vle_decode";
      v48 = 2082;
      v49 = v33;
      _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null *buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v33);
    goto LABEL_84;
  }

  if (v34)
  {
    *buf = 136446210;
    v47 = "_http_vle_decode";
    v32 = "%{public}s called with null *buffer, no backtrace";
LABEL_83:
    _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
  }

LABEL_84:
  if (v29)
  {
    free(v29);
  }

LABEL_86:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v47 = "nw_http_copy_trailer_fields_from_indeterminate_binary_message";
    v23 = "%{public}s Failed to decode integer";
LABEL_88:
    v27 = v25;
    v28 = 12;
    goto LABEL_89;
  }

LABEL_90:
  v24 = 0;
  result = 0;
  if (!v4)
  {
    return result;
  }

LABEL_91:
  os_release(v4);
  return v24;
}

nw_protocol_definition_t __nw_protocol_tcpconverter_copy_definition_block_invoke()
{
  result = nw_framer_create_definition("TCP-Converter", 0, &__block_literal_global_9_51321);
  nw_protocol_tcpconverter_copy_definition::definition = result;
  return result;
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_2(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x1B7E0D9uLL);
  if (v3)
  {
    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_calloc_type";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  v53 = 2048;
  v54 = 88;
  v4 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcpconverter_copy_definition_block_invoke_2";
    v6 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v6);
    if (!result)
    {
      free(v6);
LABEL_5:
      *v3 = 0;
      v7 = a2;
      v8 = v7;
      v9 = 84;
      v10 = 609;
      while (1)
      {
        v11 = *(&v7->isa + v10);
        *(v3 + v10 - 605) = v11;
        if (!v11)
        {
          break;
        }

        --v9;
        ++v10;
        if (v9 <= 1)
        {
          *(v3 + v10 - 605) = 0;
          break;
        }
      }

      input_handler[0] = MEMORY[0x1E69E9820];
      input_handler[1] = 0x40000000;
      input_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_10;
      input_handler[3] = &__block_descriptor_tmp_16_51326;
      input_handler[4] = v3;
      input_handler[5] = v8;
      nw_framer_set_input_handler(v8, input_handler);
      output_handler[0] = MEMORY[0x1E69E9820];
      output_handler[1] = 0x40000000;
      output_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_2_17;
      output_handler[3] = &__block_descriptor_tmp_19_51327;
      output_handler[4] = v3;
      nw_framer_set_output_handler(v8, output_handler);
      cleanup_handler[0] = MEMORY[0x1E69E9820];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_20;
      cleanup_handler[3] = &__block_descriptor_tmp_22_51328;
      cleanup_handler[4] = v3;
      nw_framer_set_cleanup_handler(v8, cleanup_handler);
      stop_handler[0] = MEMORY[0x1E69E9820];
      stop_handler[1] = 0x40000000;
      stop_handler[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_2_23;
      stop_handler[3] = &__block_descriptor_tmp_25_51329;
      stop_handler[4] = v3;
      nw_framer_set_stop_handler(v8, stop_handler);
      if (v8)
      {
        v12 = nw_framer_copy_remote_endpoint(v8);
        if (nw_endpoint_get_type(v12) == nw_endpoint_type_address)
        {
          v13 = nw_endpoint_copy_proxy_original_endpoint(v12);
          if (nw_endpoint_get_type(v13) == nw_endpoint_type_address)
          {
            v62 = 0;
            *output_buffer = 1663174145;
            v64 = 1290;
            v61 = 0;
            v60[0] = 528;
            v60[1] = __rev16(nw_endpoint_get_port(v13));
            address = nw_endpoint_get_address(v13);
            if (address->sa_family == 30)
            {
              v15 = v8;
              nw_context_assert_queue(v15[46].isa);
              isa = v15[42].isa;
              if (isa && (v18 = *(isa + 3)) != 0 && (v19 = *(v18 + 120)) != 0)
              {
                v20 = v19(isa, v16);
              }

              else
              {
                v20 = 0;
              }

              if (nw_path_has_nat64_prefixes(v20))
              {
                if (v21 = nw_path_nat64_prefixes(v20), v22 = v21, *buf = 0, *&buf[8] = 0, v23 = v21[4], v23) && (*buf = v21[4], memcpy(&buf[4], v21, v23), nw_nat64_extract_v4(buf, &address->sa_data[6], &v61)) || (v24 = v22[9], v24) && (*buf = v22[9], memcpy(&buf[4], v22 + 5, v24), (nw_nat64_extract_v4(buf, &address->sa_data[6], &v61)) || (v25 = v22[14], v25) && (*buf = v22[14], memcpy(&buf[4], v22 + 10, v25), (nw_nat64_extract_v4(buf, &address->sa_data[6], &v61)) || (v26 = v22[19], v26) && (*buf = v22[19], memcpy(&buf[4], v22 + 15, v26), (nw_nat64_extract_v4(buf, &address->sa_data[6], &v61)))
                {
                  HIBYTE(v60[0]) = 2;
                  address = v60;
                }
              }
            }

            v27 = *address->sa_data;
            if (address->sa_family == 30)
            {
              v66 = *&address->sa_data[6];
            }

            else
            {
              v36 = *&address->sa_data[2];
              *&v66 = 0;
              DWORD2(v66) = -65536;
              HIDWORD(v66) = v36;
            }

            v65 = v27;
            nw_framer_write_output(v8, output_buffer, 0x18uLL);
            inet_ntop(30, &v66, v59, 0x2Eu);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v37 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447234;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2080;
              *&buf[14] = v3 + 1;
              v53 = 2080;
              v54 = v59;
              v55 = 1024;
              v56 = bswap32(v65) >> 16;
              v57 = 2112;
              v58 = v12;
              _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %s Sent TCP-converter connect to IP %s, port %u via proxy %@", buf, 0x30u);
            }

            *v3 = 1;
            if (v12)
            {
              os_release(v12);
            }

            if (v13)
            {
              os_release(v13);
            }

            return 2;
          }

          if (v12)
          {
            os_release(v12);
          }

          if (v13)
          {
            os_release(v13);
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = 0;
          v28 = _os_log_send_and_compose_impl();
          v59[0] = 16;
          output_buffer[0] = 0;
          if (__nwlog_fault(v28, v59, output_buffer))
          {
            if (v59[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              v33 = v59[0];
              if (!os_log_type_enabled(gLogObj, v59[0]))
              {
                goto LABEL_70;
              }

              *buf = 136446466;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = 0;
              v31 = "%{public}s Received incorrect endpoint-type: %@";
              goto LABEL_68;
            }

            if (output_buffer[0] != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              v33 = v59[0];
              if (!os_log_type_enabled(gLogObj, v59[0]))
              {
                goto LABEL_70;
              }

              *buf = 136446466;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = 0;
              v31 = "%{public}s Received incorrect endpoint-type: %@, backtrace limit exceeded";
              goto LABEL_68;
            }

            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v32 = gLogObj;
            v33 = v59[0];
            v39 = os_log_type_enabled(gLogObj, v59[0]);
            if (backtrace_string)
            {
              if (v39)
              {
                *buf = 136446722;
                *&buf[4] = "nw_tcpconverter_send_connect";
                *&buf[12] = 2112;
                *&buf[14] = 0;
                v53 = 2082;
                v54 = backtrace_string;
                _os_log_impl(&dword_181A37000, v32, v33, "%{public}s Received incorrect endpoint-type: %@, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              if (!v28)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }

            if (v39)
            {
              *buf = 136446466;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = 0;
              v31 = "%{public}s Received incorrect endpoint-type: %@, no backtrace";
LABEL_68:
              v40 = v32;
              v41 = v33;
              goto LABEL_69;
            }
          }

LABEL_70:
          if (!v28)
          {
LABEL_72:
            nw_framer_mark_failed_with_error(v8, 22);
            return 2;
          }

LABEL_71:
          free(v28);
          goto LABEL_72;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_tcpconverter_send_connect";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        v28 = _os_log_send_and_compose_impl();
        v59[0] = 16;
        output_buffer[0] = 0;
        if (!__nwlog_fault(v28, v59, output_buffer))
        {
          goto LABEL_70;
        }

        if (v59[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = v59[0];
          if (!os_log_type_enabled(gLogObj, v59[0]))
          {
            goto LABEL_70;
          }

          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = v12;
          v31 = "%{public}s Received incorrect remote-endpoint-type: %@";
        }

        else if (output_buffer[0] == 1)
        {
          v34 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = v59[0];
          v35 = os_log_type_enabled(gLogObj, v59[0]);
          if (v34)
          {
            if (v35)
            {
              *buf = 136446722;
              *&buf[4] = "nw_tcpconverter_send_connect";
              *&buf[12] = 2112;
              *&buf[14] = v12;
              v53 = 2082;
              v54 = v34;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s Received incorrect remote-endpoint-type: %@, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v34);
            goto LABEL_70;
          }

          if (!v35)
          {
            goto LABEL_70;
          }

          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = v12;
          v31 = "%{public}s Received incorrect remote-endpoint-type: %@, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = v59[0];
          if (!os_log_type_enabled(gLogObj, v59[0]))
          {
            goto LABEL_70;
          }

          *buf = 136446466;
          *&buf[4] = "nw_tcpconverter_send_connect";
          *&buf[12] = 2112;
          *&buf[14] = v12;
          v31 = "%{public}s Received incorrect remote-endpoint-type: %@, backtrace limit exceeded";
        }

        v40 = v29;
        v41 = v30;
LABEL_69:
        _os_log_impl(&dword_181A37000, v40, v41, v31, buf, 0x16u);
        goto LABEL_70;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_tcpconverter_send_connect";
      v42 = _os_log_send_and_compose_impl();
      v59[0] = 16;
      output_buffer[0] = 0;
      if (__nwlog_fault(v42, v59, output_buffer))
      {
        if (v59[0] == 17)
        {
          v43 = __nwlog_obj();
          v44 = v59[0];
          if (!os_log_type_enabled(v43, v59[0]))
          {
            goto LABEL_89;
          }

          *buf = 136446210;
          *&buf[4] = "nw_tcpconverter_send_connect";
          v45 = "%{public}s called with null framer";
          goto LABEL_88;
        }

        if (output_buffer[0] != 1)
        {
          v43 = __nwlog_obj();
          v44 = v59[0];
          if (!os_log_type_enabled(v43, v59[0]))
          {
            goto LABEL_89;
          }

          *buf = 136446210;
          *&buf[4] = "nw_tcpconverter_send_connect";
          v45 = "%{public}s called with null framer, backtrace limit exceeded";
          goto LABEL_88;
        }

        v46 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = v59[0];
        v47 = os_log_type_enabled(v43, v59[0]);
        if (v46)
        {
          if (v47)
          {
            *buf = 136446466;
            *&buf[4] = "nw_tcpconverter_send_connect";
            *&buf[12] = 2082;
            *&buf[14] = v46;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          goto LABEL_89;
        }

        if (v47)
        {
          *buf = 136446210;
          *&buf[4] = "nw_tcpconverter_send_connect";
          v45 = "%{public}s called with null framer, no backtrace";
LABEL_88:
          _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
        }
      }

LABEL_89:
      if (v42)
      {
        free(v42);
      }

      return 2;
    }
  }

  __break(1u);
  return result;
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_10(uint64_t a1, NSObject *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *v3;
  if (*v3 == 2)
  {
    *temp_buffer = 0;
    *&temp_buffer[8] = temp_buffer;
    *&temp_buffer[16] = 0x2000000000;
    v61 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2000000000;
    LOBYTE(v36) = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = (v7 + 4);
      }

      else
      {
        v8 = "";
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcpconverter_copy_definition_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %s Received incoming data while connected", buf, 0x16u);
    }

    parse[0] = MEMORY[0x1E69E9820];
    parse[1] = 0x40000000;
    parse[2] = __nw_protocol_tcpconverter_copy_definition_block_invoke_12;
    parse[3] = &unk_1E6A347D0;
    parse[4] = temp_buffer;
    parse[5] = &v33;
    nw_framer_parse_input(a2, 1uLL, 0xFFFFFFFFuLL, 0, parse);
    v9 = nw_framer_message_create(*(a1 + 40));
    nw_framer_deliver_input_no_copy(a2, *(*&temp_buffer[8] + 24), v9, *(v34 + 24));
    if (v9)
    {
      os_release(v9);
    }

    _Block_object_dispose(&v33, 8);
    v10 = temp_buffer;
    goto LABEL_22;
  }

  v11 = *(a1 + 40);
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  if (v4 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *temp_buffer = 136446466;
      *&temp_buffer[4] = "nw_tcpconverter_parse_response";
      *&temp_buffer[12] = 2080;
      *&temp_buffer[14] = v3 + 1;
      v19 = "%{public}s %s Received response although we haven't yet sent a connect-message";
      v20 = temp_buffer;
LABEL_19:
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, v19, v20, 0x16u);
    }

LABEL_20:
    nw_framer_mark_failed_with_error(v11, 22);
    goto LABEL_21;
  }

  v33 = MEMORY[0x1E69E9820];
  v34 = 0x40000000;
  v35 = ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke;
  v36 = &unk_1E6A34878;
  v39 = v3;
  v40 = v11;
  v41 = 4;
  v37 = &v46;
  v38 = &v42;
  if (!nw_framer_parse_input(v11, 4uLL, 4uLL, temp_buffer, &v33) || *(v43 + 24) != 1)
  {
    goto LABEL_21;
  }

  v12 = v47[3];
  if (v12 < 0x81)
  {
    v14 = 0;
    v13 = temp_buffer;
LABEL_24:
    *(v43 + 24) = 0;
    v21 = v47[3];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke_33;
    v55 = &unk_1E6A348A0;
    v58 = v3;
    v59 = v11;
    v56 = &v46;
    v57 = &v42;
    v22 = nw_framer_parse_input(v11, v21, v21, v13, buf);
    if (v14)
    {
      free(v14);
    }

    if (!v22 || *(v43 + 24) != 1)
    {
      goto LABEL_21;
    }

    v23 = *v3;
    if (*v3 == 2)
    {
      nw_framer_pass_through_input(v11);
      nw_framer_pass_through_output(v11);
      nw_framer_mark_ready(v11);
      goto LABEL_21;
    }

    if (v23 != 1)
    {
      if (!v23)
      {
        __nwlog_obj();
        *v50 = 136446210;
        v51 = "nw_tcpconverter_parse_response";
        v24 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v31 = 0;
        if (!__nwlog_fault(v24, &type, &v31))
        {
          goto LABEL_48;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (!os_log_type_enabled(v25, type))
          {
            goto LABEL_48;
          }

          *v50 = 136446210;
          v51 = "nw_tcpconverter_parse_response";
          v27 = "%{public}s Can't be in initial after parsing response";
        }

        else if (v31 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v25 = __nwlog_obj();
          v26 = type;
          v29 = os_log_type_enabled(v25, type);
          if (backtrace_string)
          {
            if (v29)
            {
              *v50 = 136446466;
              v51 = "nw_tcpconverter_parse_response";
              v52 = 2082;
              v53 = backtrace_string;
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Can't be in initial after parsing response, dumping backtrace:%{public}s", v50, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_48;
          }

          if (!v29)
          {
LABEL_48:
            if (v24)
            {
              free(v24);
            }

            goto LABEL_21;
          }

          *v50 = 136446210;
          v51 = "nw_tcpconverter_parse_response";
          v27 = "%{public}s Can't be in initial after parsing response, no backtrace";
        }

        else
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (!os_log_type_enabled(v25, type))
          {
            goto LABEL_48;
          }

          *v50 = 136446210;
          v51 = "nw_tcpconverter_parse_response";
          v27 = "%{public}s Can't be in initial after parsing response, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v25, v26, v27, v50, 0xCu);
        goto LABEL_48;
      }

LABEL_21:
      _Block_object_dispose(&v42, 8);
      v10 = &v46;
LABEL_22:
      _Block_object_dispose(v10, 8);
      return 0;
    }

    v18 = __nwlog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v50 = 136446466;
      v51 = "nw_tcpconverter_parse_response";
      v52 = 2080;
      v53 = (v3 + 1);
      v19 = "%{public}s %s Received unexpected response - we remained in 'connect_sent' state";
      v20 = v50;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v13 = malloc_type_malloc(v12, 0x9686E92AuLL);
  v14 = v13;
  if (v13)
  {
    goto LABEL_24;
  }

  v15 = __nwlog_obj();
  os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "nw_tcpconverter_parse_response";
  v16 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    v13 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

BOOL __nw_protocol_tcpconverter_copy_definition_block_invoke_2_17(_BOOL8 result, NSObject *a2, uint64_t a3, size_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (**(result + 32) == 2)
  {
    v6 = result;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 32);
      if (v8)
      {
        v9 = (v8 + 4);
      }

      else
      {
        v9 = "";
      }

      v10 = 136446466;
      v11 = "nw_protocol_tcpconverter_copy_definition_block_invoke_2";
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %s Received outgoing data while connected", &v10, 0x16u);
    }

    return nw_framer_write_output_no_copy(a2, a4);
  }

  return result;
}

void __nw_protocol_tcpconverter_copy_definition_block_invoke_20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_2_23(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = (v3 + 4);
    }

    else
    {
      v4 = "";
    }

    v6 = 136446466;
    v7 = "nw_protocol_tcpconverter_copy_definition_block_invoke_2";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %s Got stop indication", &v6, 0x16u);
  }

  return 1;
}

uint64_t __nw_protocol_tcpconverter_copy_definition_block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 40) + 8) + 24) = a4;
  return 0;
}

uint64_t ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      if (v10)
      {
        v11 = (v10 + 4);
      }

      else
      {
        v11 = "";
      }

      v29 = 136446466;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v11;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %s Received NULL header", &v29, 0x16u);
    }

    return 0;
  }

  if (*a2 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 48);
      v15 = (v14 + 4);
      v16 = v14 == 0;
      v17 = *a2;
      if (v16)
      {
        v15 = "";
      }

      v29 = 136446722;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v15;
      v33 = 1024;
      LODWORD(v34) = v17;
      v18 = "%{public}s %s Received invalid TCP Converter version %d";
      goto LABEL_20;
    }

LABEL_21:
    nw_framer_mark_failed_with_error(*(a1 + 56), 22);
    return 0;
  }

  if (*(a2 + 1) != 25378)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 48);
      v21 = "";
      v22 = (v20 + 4);
      v16 = v20 == 0;
      v23 = *(a2 + 1);
      if (!v16)
      {
        v21 = v22;
      }

      v29 = 136446722;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v21;
      v33 = 1024;
      LODWORD(v34) = bswap32(v23) >> 16;
      v18 = "%{public}s %s Invalid magic number received: %u";
LABEL_20:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v18, &v29, 0x1Cu);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  *(*(*(a1 + 32) + 8) + 24) = 4 * a2[1];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  v5 = *(a1 + 64);
  v6 = v4 > v5;
  v7 = v4 - v5;
  if (v6)
  {
    *(v3 + 24) = v7;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return *(a1 + 64);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 48);
      if (v26)
      {
        v27 = (v26 + 4);
      }

      else
      {
        v27 = "";
      }

      v28 = *(*(*(a1 + 32) + 8) + 24);
      v29 = 136446722;
      v30 = "nw_tcpconverter_parse_response_block_invoke";
      v31 = 2080;
      v32 = v27;
      v33 = 2048;
      v34 = v28;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s %s Received too small total_length in the fixed header: %zu", &v29, 0x20u);
    }

    nw_framer_mark_failed_with_error(*(a1 + 56), 22);
    return 4;
  }
}

uint64_t ___ZL30nw_tcpconverter_parse_responseP9nw_framerP15nw_tcpconverter_block_invoke_33(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1[4] + 8) + 24);
  if (v3 < 2)
  {
LABEL_28:
    *(*(a1[5] + 8) + 24) = 1;
    return *(*(a1[4] + 8) + 24);
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = *(a2 + v5);
    v8 = 4 * *(a2 + v6);
    v9 = v8 + v5;
    if (v3 < v9)
    {
      break;
    }

    if (v7 == 20)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1[6];
        v18 = (v17 + 4);
        v13 = v17 == 0;
        v19 = "";
        if (!v13)
        {
          v19 = v18;
        }

        *buf = 136446466;
        *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
        v40 = 2080;
        v41 = v19;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %s Connection successfully established", buf, 0x16u);
      }

      *a1[6] = 2;
      goto LABEL_4;
    }

    if (v7 == 30)
    {
      v28 = (a2 + v5);
      v29 = v28[1];
      *buf = 0;
      v30 = v28[2];
      if (v30 >= 0x20)
      {
        if (v30 >= 0x40)
        {
          if (v30 >= 0x60)
          {
            if ((v30 & 0x80u) != 0)
            {
              v31 = "Unknown error class";
            }

            else
            {
              v31 = "Destination-server side error";
            }
          }

          else
          {
            v31 = "Converter-side error";
          }
        }

        else
        {
          v31 = "Client-side error";
        }
      }

      else
      {
        v31 = "Message validation and processing error";
      }

      if (*(a2 + v5 + 2) > 0x20u)
      {
        if (*(a2 + v5 + 2) <= 0x40u)
        {
          if (v30 == 33)
          {
            v32 = "Unsupported TCP Option";
            goto LABEL_66;
          }

          if (v30 == 64)
          {
            v32 = "Resource Exceeded";
            goto LABEL_66;
          }
        }

        else
        {
          switch(v30)
          {
            case 'A':
              v32 = "Network Failure";
              goto LABEL_66;
              v32 = "Connection Reset";
              goto LABEL_66;
            case 'a':
              v32 = "Destination Unreachable";
              goto LABEL_66;
          }
        }
      }

      else
      {
        if (*(a2 + v5 + 2) <= 1u)
        {
          if (*(a2 + v5 + 2))
          {
            v32 = "Malformed Message";
          }

          else
          {
            v32 = "Unsupported Version";
          }

          goto LABEL_66;
        }

        switch(v30)
        {
          case 2u:
            v32 = "Unsupported Message";
            goto LABEL_66;
          case 3u:
            v32 = "Missing Cookie";
            goto LABEL_66;
          case 0x20u:
            v32 = "Not Authorized";
LABEL_66:
            asprintf(buf, "Error class %s (%u), type %s (%u), length %u, value %u", v31, v30, v32, v30, 4 * v29, v28[3]);
            v33 = *buf;
            if (*buf)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
              {
                v35 = a1[6];
                v36 = (v35 + 4);
                v13 = v35 == 0;
                v37 = "";
                if (!v13)
                {
                  v37 = v36;
                }

                *buf = 136446722;
                *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
                v40 = 2080;
                v41 = v37;
                v42 = 2080;
                *v43 = v33;
                _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s %s Received ERROR: %s", buf, 0x20u);
              }

              free(v33);
            }

            v38 = v28[2];
            v27 = 22;
            if (v38 <= 0x40)
            {
              if (v38 == 32)
              {
                v27 = 1;
              }

              else if (v38 == 64)
              {
                v27 = 35;
              }
            }

            else
            {
              switch(v38)
              {
                case 'A':
                  v27 = 51;
                  break;
                  v27 = 61;
                  break;
                case 'a':
                  v27 = 65;
                  break;
              }
            }

            *a1[6] = 3;
            v26 = a1[7];
            goto LABEL_84;
        }
      }

      v32 = "Unknown error code";
      goto LABEL_66;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[6];
      v12 = (v11 + 4);
      v13 = v11 == 0;
      v14 = "";
      if (!v13)
      {
        v14 = v12;
      }

      if (v7 > 19)
      {
        if (v7 == 21)
        {
          v15 = "EXTENSIONS";
          goto LABEL_27;
        }

        if (v7 == 22)
        {
          v15 = "COOKIE";
          goto LABEL_27;
        }
      }

      else
      {
        switch(v7)
        {
          case 0:
            v15 = "RESERVED";
            goto LABEL_27;
          case 1:
            v15 = "INFO";
            goto LABEL_27;
          case 10:
            v15 = "CONNECT";
LABEL_27:
            *buf = 136447234;
            *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
            v40 = 2080;
            v41 = v14;
            v42 = 2080;
            *v43 = v15;
            *&v43[8] = 1024;
            *v44 = v7;
            *&v44[4] = 1024;
            *&v44[6] = v8;
            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %s Received unexpected Converter-type %s(%u) with length %d -> Skipping", buf, 0x2Cu);
            goto LABEL_4;
        }
      }

      v15 = "UNKNOWN";
      goto LABEL_27;
    }

LABEL_4:
    v6 = v9 | 1;
    v3 = *(*(a1[4] + 8) + 24);
    v5 = v9;
    if (v3 <= v6)
    {
      goto LABEL_28;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v22 = a1[6];
    v23 = (v22 + 4);
    v13 = v22 == 0;
    v24 = "";
    if (!v13)
    {
      v24 = v23;
    }

    v25 = *(*(a1[4] + 8) + 24);
    *buf = 136447490;
    *&buf[4] = "nw_tcpconverter_parse_response_block_invoke";
    v40 = 2080;
    v41 = v24;
    v42 = 1024;
    *v43 = v7;
    *&v43[4] = 1024;
    *&v43[6] = v8;
    *v44 = 2048;
    *&v44[2] = v25;
    v45 = 1024;
    v46 = v5;
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %s Insufficient data for TLV of type %u, length %d, total_length %zu, index %u", buf, 0x32u);
  }

  v26 = a1[7];
  v27 = 22;
LABEL_84:
  nw_framer_mark_failed_with_error(v26, v27);
  return 0;
}

void nw_http_capsule_framer_cleanup(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1 + 3;
    v2 = a1[3];
    do
    {
      if (!v2)
      {
        break;
      }

      v4 = *(v2 + 32);
      v5 = __nw_http_capsule_framer_cleanup_block_invoke(&__block_literal_global_51463, v2);
      v2 = v4;
    }

    while ((v5 & 1) != 0);
    v7 = a1 + 5;
    v6 = a1[5];
    do
    {
      if (!v6)
      {
        break;
      }

      v8 = *(v6 + 32);
      v9 = __nw_http_capsule_framer_cleanup_block_invoke_2(&__block_literal_global_5_51464, v6);
      v6 = v8;
    }

    while ((v9 & 1) != 0);
    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v10 = *v3;
    if (*v3)
    {
      *(v10 + 40) = type;
      v11 = a1[4];
      *type = v10;
      v32 = v11;
      a1[3] = 0;
      a1[4] = v3;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v34 = &__block_descriptor_tmp_21_49595;
      v35 = 0;
      do
      {
        v12 = *type;
        if (!*type)
        {
          break;
        }

        v13 = *(*type + 32);
        v14 = *(*type + 40);
        v15 = (v13 + 40);
        if (!v13)
        {
          v15 = &v32;
        }

        *v15 = v14;
        *v14 = v13;
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if (gLogDatapath == 1)
    {
      v27 = __nwlog_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v16 = *v7;
    if (*v7)
    {
      *(v16 + 40) = type;
      v17 = a1[6];
      *type = v16;
      v32 = v17;
      a1[5] = 0;
      a1[6] = v7;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v34 = &__block_descriptor_tmp_21_49595;
      v35 = 0;
      do
      {
        v18 = *type;
        if (!*type)
        {
          break;
        }

        v19 = *(*type + 32);
        v20 = *(*type + 40);
        v21 = (v19 + 40);
        if (!v19)
        {
          v21 = &v32;
        }

        *v21 = v20;
        *v20 = v19;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_capsule_framer_cleanup";
  v22 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v22, type, &v30))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_cleanup";
      v25 = "%{public}s called with null framer";
      goto LABEL_40;
    }

    if (v30 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_cleanup";
      v25 = "%{public}s called with null framer, backtrace limit exceeded";
      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type[0];
    v29 = os_log_type_enabled(v23, type[0]);
    if (backtrace_string)
    {
      if (v29)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_capsule_framer_cleanup";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_41;
    }

    if (v29)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_capsule_framer_cleanup";
      v25 = "%{public}s called with null framer, no backtrace";
LABEL_40:
      _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    }
  }

LABEL_41:
  if (v22)
  {
    free(v22);
  }
}

uint64_t __nw_http_capsule_framer_cleanup_block_invoke_2(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136446722;
      v6 = "nw_http_capsule_framer_cleanup_block_invoke";
      v7 = 2048;
      v8 = a2;
      v9 = 1024;
      v10 = nw_frame_unclaimed_length(a2);
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s processed_frames still has frames in it: frame %p (%u bytes)", &v5, 0x1Cu);
    }
  }

  return 1;
}

uint64_t __nw_http_capsule_framer_cleanup_block_invoke(uint64_t a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136446722;
      v6 = "nw_http_capsule_framer_cleanup_block_invoke";
      v7 = 2048;
      v8 = a2;
      v9 = 1024;
      v10 = nw_frame_unclaimed_length(a2);
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s unprocessed_frames still has frames in it: frame %p (%u bytes)", &v5, 0x1Cu);
    }
  }

  return 1;
}

void nw_http_capsule_complete_capsule(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 != -1 && *(a1 + 8) != -1 && !*(a1 + 16))
    {
      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v41 = "nw_http_capsule_complete_capsule";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v2, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v5 = "%{public}s Capsule was not completely processed";
LABEL_16:
        v10 = v3;
        v11 = v4;
LABEL_17:
        _os_log_impl(&dword_181A37000, v10, v11, v5, buf, 0xCu);
        goto LABEL_18;
      }

      if (v38 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v5 = "%{public}s Capsule was not completely processed, backtrace limit exceeded";
        goto LABEL_16;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v41 = "nw_http_capsule_complete_capsule";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Capsule was not completely processed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v9)
      {
        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v5 = "%{public}s Capsule was not completely processed, no backtrace";
        v10 = v7;
        v11 = v8;
        goto LABEL_17;
      }
    }

LABEL_18:
    if (v2)
    {
      free(v2);
    }

LABEL_20:
    if (!*(a1 + 40))
    {
      goto LABEL_36;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v41 = "nw_http_capsule_complete_capsule";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v12, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v15 = "%{public}s Capsule framer had processed_frames";
LABEL_32:
        v20 = v13;
        v21 = v14;
LABEL_33:
        _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
        goto LABEL_34;
      }

      if (v38 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v15 = "%{public}s Capsule framer had processed_frames, backtrace limit exceeded";
        goto LABEL_32;
      }

      v16 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      v19 = os_log_type_enabled(gLogObj, type);
      if (v16)
      {
        if (v19)
        {
          *buf = 136446466;
          v41 = "nw_http_capsule_complete_capsule";
          v42 = 2082;
          v43 = v16;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Capsule framer had processed_frames, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_34;
      }

      if (v19)
      {
        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v15 = "%{public}s Capsule framer had processed_frames, no backtrace";
        v20 = v17;
        v21 = v18;
        goto LABEL_33;
      }
    }

LABEL_34:
    if (v12)
    {
      free(v12);
    }

LABEL_36:
    if ((*(a1 + 64) & 0x80000000) == 0)
    {
LABEL_52:
      *(a1 + 8) = -1;
      *(a1 + 16) = -1;
      *a1 = -1;
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v41 = "nw_http_capsule_complete_capsule";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v22, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v25 = "%{public}s Capsule framer was parsing VLE";
LABEL_48:
        v30 = v23;
        v31 = v24;
LABEL_49:
        _os_log_impl(&dword_181A37000, v30, v31, v25, buf, 0xCu);
        goto LABEL_50;
      }

      if (v38 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v25 = "%{public}s Capsule framer was parsing VLE, backtrace limit exceeded";
        goto LABEL_48;
      }

      v26 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      v29 = os_log_type_enabled(gLogObj, type);
      if (v26)
      {
        if (v29)
        {
          *buf = 136446466;
          v41 = "nw_http_capsule_complete_capsule";
          v42 = 2082;
          v43 = v26;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Capsule framer was parsing VLE, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_50;
      }

      if (v29)
      {
        *buf = 136446210;
        v41 = "nw_http_capsule_complete_capsule";
        v25 = "%{public}s Capsule framer was parsing VLE, no backtrace";
        v30 = v27;
        v31 = v28;
        goto LABEL_49;
      }
    }

LABEL_50:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_52;
  }

  __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_http_capsule_complete_capsule";
  v32 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v32, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v41 = "nw_http_capsule_complete_capsule";
      v35 = "%{public}s called with null framer";
      goto LABEL_73;
    }

    if (v38 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v41 = "nw_http_capsule_complete_capsule";
      v35 = "%{public}s called with null framer, backtrace limit exceeded";
      goto LABEL_73;
    }

    v36 = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v37 = os_log_type_enabled(v33, type);
    if (v36)
    {
      if (v37)
      {
        *buf = 136446466;
        v41 = "nw_http_capsule_complete_capsule";
        v42 = 2082;
        v43 = v36;
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v36);
      goto LABEL_74;
    }

    if (v37)
    {
      *buf = 136446210;
      v41 = "nw_http_capsule_complete_capsule";
      v35 = "%{public}s called with null framer, no backtrace";
LABEL_73:
      _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
    }
  }

LABEL_74:
  if (v32)
  {
    free(v32);
  }
}

BOOL nw_http_capsule_framer_read_capsule(void *a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *v50 = 136446210;
    *&v50[4] = "nw_http_capsule_framer_parse_capsule_header";
    v27 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v27, buf, &type))
    {
      goto LABEL_59;
    }

    if (buf[0] == 17)
    {
      v28 = __nwlog_obj();
      v29 = buf[0];
      if (!os_log_type_enabled(v28, buf[0]))
      {
        goto LABEL_59;
      }

      *v50 = 136446210;
      *&v50[4] = "nw_http_capsule_framer_parse_capsule_header";
      v30 = "%{public}s called with null framer";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = buf[0];
      v32 = os_log_type_enabled(v28, buf[0]);
      if (backtrace_string)
      {
        if (v32)
        {
          *v50 = 136446466;
          *&v50[4] = "nw_http_capsule_framer_parse_capsule_header";
          *&v50[12] = 2082;
          *&v50[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null framer, dumping backtrace:%{public}s", v50, 0x16u);
        }

        free(backtrace_string);
LABEL_59:
        if (v27)
        {
          free(v27);
        }

        __nwlog_obj();
        *v50 = 136446210;
        *&v50[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
        v33 = _os_log_send_and_compose_impl();
        buf[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v33, buf, &type))
        {
          goto LABEL_75;
        }

        if (buf[0] == 17)
        {
          v34 = __nwlog_obj();
          v35 = buf[0];
          if (!os_log_type_enabled(v34, buf[0]))
          {
            goto LABEL_75;
          }

          *v50 = 136446210;
          *&v50[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
          v36 = "%{public}s called with null framer";
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v37 = __nw_create_backtrace_string();
          v34 = __nwlog_obj();
          v35 = buf[0];
          v38 = os_log_type_enabled(v34, buf[0]);
          if (v37)
          {
            if (v38)
            {
              *v50 = 136446466;
              *&v50[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
              *&v50[12] = 2082;
              *&v50[14] = v37;
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null framer, dumping backtrace:%{public}s", v50, 0x16u);
            }

            free(v37);
            goto LABEL_75;
          }

          if (!v38)
          {
LABEL_75:
            if (v33)
            {
              free(v33);
            }

LABEL_77:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
            if (result)
            {
              v39 = *a1;
              v40 = a1[1];
              *v50 = 136446722;
              *&v50[4] = "nw_http_capsule_framer_read_capsule";
              *&v50[12] = 2048;
              *&v50[14] = v39;
              *&v50[22] = 2048;
              v51 = v40;
              v26 = "%{public}s Pending capsule header parsing. Type: %llu, Length: %llu";
              goto LABEL_79;
            }

            return result;
          }

          *v50 = 136446210;
          *&v50[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
          v36 = "%{public}s called with null framer, no backtrace";
        }

        else
        {
          v34 = __nwlog_obj();
          v35 = buf[0];
          if (!os_log_type_enabled(v34, buf[0]))
          {
            goto LABEL_75;
          }

          *v50 = 136446210;
          *&v50[4] = "nw_http_capsule_framer_fetch_unprocessed_frames";
          v36 = "%{public}s called with null framer, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v34, v35, v36, v50, 0xCu);
        goto LABEL_75;
      }

      if (!v32)
      {
        goto LABEL_59;
      }

      *v50 = 136446210;
      *&v50[4] = "nw_http_capsule_framer_parse_capsule_header";
      v30 = "%{public}s called with null framer, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = buf[0];
      if (!os_log_type_enabled(v28, buf[0]))
      {
        goto LABEL_59;
      }

      *v50 = 136446210;
      *&v50[4] = "nw_http_capsule_framer_parse_capsule_header";
      v30 = "%{public}s called with null framer, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, v50, 0xCu);
    goto LABEL_59;
  }

  while (1)
  {
    *v50 = 0;
    buf[0] = 0;
    if (*a1 == -1)
    {
      if (!nw_http_vle_decode_from_frames((a1 + 7), a2, a1 + 3, v50, buf, 0))
      {
        goto LABEL_7;
      }

      *a1 = *v50;
    }

    if (a1[1] != -1)
    {
      break;
    }

    if (nw_http_vle_decode_from_frames((a1 + 7), a2, a1 + 3, v50, buf, 0))
    {
      v8 = *v50;
      a1[1] = *v50;
      a1[2] = v8;
      goto LABEL_14;
    }

LABEL_7:
    v4 = *(a2 + 32);
    if (!v4)
    {
      goto LABEL_77;
    }

    v5 = v4[3];
    if (!v5)
    {
      goto LABEL_77;
    }

    if (!*(v5 + 80))
    {
      goto LABEL_77;
    }

    *v50 = 0;
    *&v50[8] = v50;
    if (!nw_protocol_get_input_frames(v4, a2, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v50))
    {
      goto LABEL_77;
    }

    if (*v50)
    {
      v6 = a1[4];
      *v6 = *v50;
      v7 = *&v50[8];
      *(*v50 + 40) = v6;
      a1[4] = v7;
    }
  }

  while (1)
  {
LABEL_14:
    if (*a1 == -1 || a1[1] == -1)
    {
      __nwlog_obj();
      *buf = 136446210;
      v54 = "nw_http_capsule_framer_process_capsule_body";
      v16 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v16, &type, &v48))
      {
        goto LABEL_40;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        log = type;
        if (!os_log_type_enabled(v45, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v54 = "nw_http_capsule_framer_process_capsule_body";
        v17 = v45;
        v18 = log;
        v19 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer)";
      }

      else if (v48 == 1)
      {
        v46 = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        v41 = type;
        v20 = os_log_type_enabled(loga, type);
        v21 = v46;
        if (v46)
        {
          if (v20)
          {
            *buf = 136446466;
            v54 = "nw_http_capsule_framer_process_capsule_body";
            v55 = 2082;
            v56 = v46;
            _os_log_impl(&dword_181A37000, loga, v41, "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), dumping backtrace:%{public}s", buf, 0x16u);
            v21 = v46;
          }

          free(v21);
          goto LABEL_40;
        }

        if (!v20)
        {
LABEL_40:
          if (v16)
          {
            free(v16);
          }

          goto LABEL_20;
        }

        *buf = 136446210;
        v54 = "nw_http_capsule_framer_process_capsule_body";
        v17 = loga;
        v18 = v41;
        v19 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), no backtrace";
      }

      else
      {
        v47 = __nwlog_obj();
        logb = type;
        if (!os_log_type_enabled(v47, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v54 = "nw_http_capsule_framer_process_capsule_body";
        v17 = v47;
        v18 = logb;
        v19 = "%{public}s called with null nw_http_capsule_framer_is_header_parsed(framer), backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      goto LABEL_40;
    }

    *v50 = MEMORY[0x1E69E9820];
    *&v50[8] = 0x40000000;
    *&v50[16] = ___ZL43nw_http_capsule_framer_process_capsule_bodyP22nw_http_capsule_framerP11nw_protocol_block_invoke;
    v51 = &__block_descriptor_tmp_10_51535;
    v52 = a1;
    v9 = a1[3];
    do
    {
      if (!v9)
      {
        break;
      }

      v10 = *(v9 + 32);
      v11 = (*&v50[16])(v50);
      v9 = v10;
    }

    while ((v11 & 1) != 0);
    if (!a1[2])
    {
      return 1;
    }

LABEL_20:
    v12 = *(a2 + 32);
    if (!v12)
    {
      break;
    }

    v13 = v12[3];
    if (!v13)
    {
      break;
    }

    if (!*(v13 + 80))
    {
      break;
    }

    *v50 = 0;
    *&v50[8] = v50;
    if (!nw_protocol_get_input_frames(v12, a2, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v50))
    {
      break;
    }

    if (*v50)
    {
      v14 = a1[4];
      *v14 = *v50;
      v15 = *&v50[8];
      *(*v50 + 40) = v14;
      a1[4] = v15;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
  if (!result)
  {
    return result;
  }

  v24 = *a1;
  v25 = a1[2];
  *v50 = 136446722;
  *&v50[4] = "nw_http_capsule_framer_read_capsule";
  *&v50[12] = 2048;
  *&v50[14] = v24;
  *&v50[22] = 2048;
  v51 = v25;
  v26 = "%{public}s Pending capsule body processing for type %llx. Remaining length: %llu";
LABEL_79:
  _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, v26, v50, 0x20u);
  return 0;
}