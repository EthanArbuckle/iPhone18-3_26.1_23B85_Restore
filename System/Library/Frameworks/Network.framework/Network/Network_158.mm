uint64_t ___ZL29nw_masque_match_demux_patternPKhmP19nw_protocol_options_block_invoke(void *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v5 = a2;
  if (a1[5] < a2 + a3)
  {
    return 1;
  }

  if (a2)
  {
    v7 = a1[6];
    if (a5)
    {
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        v11 = *a5++;
        v10 = v11;
        v12 = *a4++;
        v13 = (v8 ^ v12) & v10;
        v14 = v13 != 0;
        if (v13)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v7++;
        v16 = v17;
        v18 = *a4++;
        v19 = v16 == v18;
        v14 = v16 != v18;
        if (!v19)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    v15 = 0;
  }

  else
  {
LABEL_7:
    v14 = 0;
    v15 = 1;
  }

  *(*(a1[4] + 8) + 24) = v15;
  return v14;
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_121(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v22);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = (a2 + 32);
  v8 = (*(a1 + 40) + 8);
  if (v5)
  {
    v8 = (v5 + 40);
  }

  *v8 = v6;
  *v6 = v5;
  *v7 = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 80);
  if (v22 >= v9 && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    memcpy(v4, *(a1 + 56), v9);
    nw_frame_claim(a2, v10, *(a1 + 80), 0);
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v11, *(a1 + 80), 0);
    v12 = *(a1 + 72);
    v13 = *(v12 + 8);
    *(a2 + 32) = 0;
    *(a2 + 40) = v13;
    *v13 = a2;
    *(v12 + 8) = v7;
  }

  else
  {
    v14 = *(a1 + 48);
    if (!v14 || (*(v14 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 48);
        v17 = (v16 + 507);
        v18 = v16 == 0;
        v19 = " ";
        v20 = *(a1 + 80);
        if (v18)
        {
          v17 = "";
          v19 = "";
        }

        *buf = 136446978;
        v24 = v17;
        v25 = 2080;
        v26 = v19;
        v27 = 1024;
        v28 = v20;
        v29 = 1024;
        v30 = v22;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u bytes, only received %u bytes", buf, 0x22u);
      }
    }

    nw_frame_finalize(a2);
  }

  return 1;
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_123(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v22);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = (a2 + 32);
  v8 = (*(a1 + 40) + 8);
  if (v5)
  {
    v8 = (v5 + 40);
  }

  *v8 = v6;
  *v6 = v5;
  *v7 = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 80);
  if (v22 >= v9 && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    memcpy(v4, *(a1 + 56), v9);
    nw_frame_claim(a2, v10, *(a1 + 80), 0);
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v11, *(a1 + 80), 0);
    v12 = *(a1 + 72);
    v13 = *(v12 + 8);
    *(a2 + 32) = 0;
    *(a2 + 40) = v13;
    *v13 = a2;
    *(v12 + 8) = v7;
  }

  else
  {
    v14 = *(a1 + 48);
    if (!v14 || (*(v14 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 48);
        v17 = (v16 + 507);
        v18 = v16 == 0;
        v19 = " ";
        v20 = *(a1 + 80);
        if (v18)
        {
          v17 = "";
          v19 = "";
        }

        *buf = 136446978;
        v24 = v17;
        v25 = 2080;
        v26 = v19;
        v27 = 1024;
        v28 = v20;
        v29 = 1024;
        v30 = v22;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u bytes, only received %u bytes", buf, 0x22u);
      }
    }

    nw_frame_finalize(a2);
  }

  return 1;
}

uint64_t __Block_byref_object_copy__129(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__130(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL42nw_masque_modify_proxied_oblivious_messageP9nw_masqueP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v11 = 0;
    port = nw_endpoint_get_port(*(a1 + 48));
    if (port == 443)
    {
      nw_endpoint_get_hostname(*(a1 + 48));
    }

    else
    {
      v4 = port;
      hostname = nw_endpoint_get_hostname(*(a1 + 48));
      asprintf(&v11, "%s:%u", hostname, v4);
    }

    url_scheme = nw_endpoint_get_url_scheme(*(a1 + 48));
    v7 = _nw_http_request_create("POST", url_scheme);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 48);
    if ((v9 & 1) != 0 && *(v8 + 40))
    {
      v10 = v7;
      os_release(*(v8 + 40));
      v7 = v10;
      v9 = *(v8 + 48);
    }

    *(v8 + 40) = v7;
    *(v8 + 48) = v9 | 1;
    if (v11)
    {
      free(v11);
    }
  }
}

void nw_masque_add_require_interface_header_to_request(uint64_t a1, void *a2)
{
  v3 = nw_parameters_get_next_hop_required_interface_type(a1) - 1;
  if (v3 <= 2)
  {
    v4 = *off_1E6A2FE90[v3];
    if (v4)
    {

      nw_http_fields_append(a2, "Require-Interface", v4);
    }
  }
}

void nw_masque_add_prohibit_interface_header_to_request(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  prohibit_expensive = nw_parameters_get_prohibit_expensive(*(a1 + 304));
  v5 = prohibit_expensive;
  v6 = 0;
  if (prohibit_expensive)
  {
    v51[3] += 9;
    v6 = "expensive";
  }

  prohibit_constrained = nw_parameters_get_prohibit_constrained(*(a1 + 304));
  v8 = prohibit_constrained;
  if (prohibit_constrained)
  {
    v9 = v51[3];
    v10 = v9 + 12;
    v11 = v9 == 0;
    v12 = 11;
    if (!v11)
    {
      v12 = v10;
    }

    v51[3] = v12;
    v13 = "constrained";
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 304);
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 0x40000000;
  iterate_block[2] = ___ZL50nw_masque_add_prohibit_interface_header_to_requestP9nw_masqueP14nw_http_fields_block_invoke;
  iterate_block[3] = &unk_1E6A2F980;
  iterate_block[4] = &v50;
  iterate_block[5] = &v54;
  iterate_block[6] = &v58;
  nw_parameters_iterate_prohibited_interface_types(v14, iterate_block);
  v15 = v51[3];
  if (!v15)
  {
    goto LABEL_88;
  }

  v51[3] = v15 + 1;
  v16 = nw_calloc_type<unsigned char>(v15 + 1);
  v17 = v16;
  *v16 = 0;
  v18 = v55[3];
  if (!v18)
  {
    v21 = v59[3];
    if (!v21)
    {
      if (!v5)
      {
        if (v8)
        {
LABEL_76:
          v40 = v51[3];
          if (v40)
          {
            v41 = v17;
            while (*v41)
            {
              ++v41;
              if (!--v40)
              {
                goto LABEL_87;
              }
            }

            if (v40 < 2)
            {
LABEL_86:
              *v41 = 0;
            }

            else
            {
              v42 = 0;
              v43 = v40 - 1;
              while (1)
              {
                v44 = v13[v42];
                v41[v42] = v44;
                if (!v44)
                {
                  break;
                }

                if (v43 == ++v42)
                {
                  v41 += v42;
                  goto LABEL_86;
                }
              }
            }
          }
        }

LABEL_87:
        nw_http_fields_append(a2, "Prohibit-Interface", v17);
        free(v17);
LABEL_88:
        _Block_object_dispose(&v50, 8);
        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);
        return;
      }

      goto LABEL_56;
    }

    goto LABEL_29;
  }

  v19 = v51[3];
  if (v19)
  {
    v20 = v16;
    while (*v20)
    {
      ++v20;
      if (!--v19)
      {
        goto LABEL_23;
      }
    }

    if (v19 < 2)
    {
LABEL_22:
      *v20 = 0;
    }

    else
    {
      while (1)
      {
        v22 = *v18;
        *v20 = v22;
        if (!v22)
        {
          break;
        }

        ++v20;
        ++v18;
        if (--v19 <= 1)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_23:
  v21 = v59[3];
  if (!v21)
  {
    goto LABEL_47;
  }

  v23 = v51[3];
  if (!v23)
  {
LABEL_29:
    v25 = v51[3];
    v26 = v21 == 0;
    if (v25)
    {
      goto LABEL_36;
    }

LABEL_39:
    if (v26)
    {
      v28 = __nwlog_obj();
      os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      v62 = 136446210;
      v63 = "_strict_strlcpy";
      v29 = _os_log_send_and_compose_impl();
      if (__nwlog_should_abort(v29))
      {
        goto LABEL_95;
      }

      free(v29);
    }

LABEL_47:
    if (!v5)
    {
      goto LABEL_67;
    }

    v31 = v51[3];
    if (v31)
    {
      v32 = v17;
      while (*v32)
      {
        ++v32;
        if (!--v31)
        {
          goto LABEL_56;
        }
      }

      if (v31 >= 2)
      {
        *v32++ = 44;
      }

      *v32 = 0;
    }

LABEL_56:
    v33 = v51[3];
    if (v33)
    {
      v34 = v17;
      while (*v34)
      {
        ++v34;
        if (!--v33)
        {
          goto LABEL_67;
        }
      }

      if (v33 < 2)
      {
LABEL_66:
        *v34 = 0;
      }

      else
      {
        v35 = 0;
        v36 = v33 - 1;
        while (1)
        {
          v37 = v6[v35];
          v34[v35] = v37;
          if (!v37)
          {
            break;
          }

          if (v36 == ++v35)
          {
            v34 += v35;
            goto LABEL_66;
          }
        }
      }
    }

LABEL_67:
    if (v8)
    {
      v38 = v51[3];
      if (v38)
      {
        v39 = v17;
        while (*v39)
        {
          ++v39;
          if (!--v38)
          {
            goto LABEL_76;
          }
        }

        if (v38 >= 2)
        {
          *v39++ = 44;
        }

        *v39 = 0;
      }

      goto LABEL_76;
    }

    goto LABEL_87;
  }

  v24 = v16;
  while (*v24)
  {
    ++v24;
    if (!--v23)
    {
      goto LABEL_34;
    }
  }

  if (v23 >= 2)
  {
    *v24++ = 44;
  }

  *v24 = 0;
  v21 = v59[3];
LABEL_34:
  v25 = v51[3];
  v26 = v21 == 0;
  if (!v21)
  {
    v45 = __nwlog_obj();
    os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    v62 = 136446210;
    v63 = "_strict_strlcat";
    v46 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v46))
    {
      goto LABEL_95;
    }

    free(v46);
    if (v25)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (!v25)
  {
    goto LABEL_39;
  }

LABEL_36:
  v27 = v17;
  while (*v27)
  {
    ++v27;
    if (!--v25)
    {
      goto LABEL_39;
    }
  }

  if (!v26)
  {
    if (v25 >= 2)
    {
      goto LABEL_44;
    }

LABEL_46:
    *v27 = 0;
    goto LABEL_47;
  }

  v47 = __nwlog_obj();
  os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
  v62 = 136446210;
  v63 = "_strict_strlcpy";
  v48 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort(v48))
  {
    free(v48);
    if (v25 >= 2)
    {
LABEL_44:
      while (1)
      {
        v30 = *v21;
        *v27 = v30;
        if (!v30)
        {
          goto LABEL_47;
        }

        ++v27;
        ++v21;
        if (--v25 <= 1)
        {
          goto LABEL_46;
        }
      }
    }

    goto LABEL_46;
  }

LABEL_95:
  __break(1u);
}

void nw_masque_add_client_application_header_to_request(char *a1, void *a2)
{
  effective_bundle_id = nw_parameters_get_effective_bundle_id(a1);
  if (effective_bundle_id)
  {
    goto LABEL_5;
  }

  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  effective_bundle_id = nw_utilities_get_self_bundle_id::bundle_identifier_string;
  if (nw_utilities_get_self_bundle_id::bundle_identifier_string)
  {
LABEL_5:

    nw_http_fields_append(a2, "Client-Application", effective_bundle_id);
  }
}

void nw_masque_add_multipath_header_to_request(uint64_t a1, void *a2)
{
  if (nw_parameters_get_multipath(*(a1 + 304)))
  {
    if (nw_masque_is_multipath_allowed(void)::onceToken != -1)
    {
      dispatch_once(&nw_masque_is_multipath_allowed(void)::onceToken, &__block_literal_global_111);
    }

    if (nw_masque_is_multipath_allowed(void)::isAllowed == 1)
    {
      v4 = nw_endpoint_copy_proxy_original_endpoint(*(a1 + 296));
      v6 = 0;
      alternate_port = nw_endpoint_get_alternate_port(v4);
      asprintf(&v6, "%s;port=%u", "interactive", alternate_port);
      nw_http_fields_append(a2, "Multipath", v6);
      if (v6)
      {
        free(v6);
      }
    }
  }
}

void nw_masque_add_listener_association_header_to_request(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v31 = 0;
  v4 = *(a1 + 304);
  if (v4)
  {
    goto LABEL_2;
  }

  v9 = *(a1 - 48);
  if (v9)
  {
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = *(v10 + 112);
      if (v11)
      {
        v12 = *(v9 + 40);
        v13 = *(a1 - 48);
        if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(v9 + 64)) != 0)
        {
          v14 = *(v13 + 88);
          if (v14)
          {
            *(v13 + 88) = v14 + 1;
          }

          v4 = v11(v9);
          v15 = *(v9 + 40);
          if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v9 = *(v9 + 64)) != 0)
          {
            v16 = *(v9 + 88);
            if (v16)
            {
              v17 = v16 - 1;
              *(v9 + 88) = v17;
              if (!v17)
              {
                v18 = v4;
                v19 = *(v9 + 64);
                if (v19)
                {
                  *(v9 + 64) = 0;
                  v19[2](v19);
                  _Block_release(v19);
                }

                if (*(v9 + 72))
                {
                  v20 = *(v9 + 64);
                  if (v20)
                  {
                    _Block_release(v20);
                  }
                }

                free(v9);
                v4 = v18;
              }
            }
          }
        }

        else
        {
          v4 = v11(*(a1 - 48));
        }

        if (v4)
        {
LABEL_2:
          v5 = v4;
          _nw_parameters_get_listener_uuid();

          if (!uuid_is_null(uu))
          {
            memset(out, 0, 37);
            uuid_unparse(uu, out);
            nw_http_fields_append(a2, "Listener-Association", out);
            if ((*(a1 + 505) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v6 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                v7 = *(a1 + 503);
                v21 = 136446978;
                v22 = a1 + 507;
                v23 = 2080;
                v24 = " ";
                if ((v7 & 0x10) != 0)
                {
                  v8 = " (listener)";
                }

                else
                {
                  v8 = "";
                }

                v25 = 2080;
                v26 = out;
                v27 = 2080;
                v28 = v8;
                _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s%sadded association uuid %s%s", &v21, 0x2Au);
              }
            }
          }
        }
      }
    }
  }
}

void ___ZL30nw_masque_is_multipath_allowedv_block_invoke()
{
  v0 = nw_utilities_copy_local_entitlement_value("com.apple.developer.networking.multipath_extended");
  if (v0)
  {
    v1 = v0;
    if (object_getClass(v0) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v1))
    {
      nw_masque_is_multipath_allowed(void)::isAllowed = 1;
    }

    xpc_release(v1);
  }
}

uint64_t ___ZL50nw_masque_add_prohibit_interface_header_to_requestP9nw_masqueP14nw_http_fields_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 24);
    v3 = (v9 + 24);
    v4 = v10;
    v6 = nw_http_prohibit_interface_cellular;
    v7 = 48;
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a2 == 1)
  {
    v2 = *(*(a1 + 32) + 8);
    v5 = *(v2 + 24);
    v3 = (v2 + 24);
    v4 = v5;
    v6 = nw_http_prohibit_interface_wifi;
    v7 = 40;
    if (!v5)
    {
LABEL_5:
      *(*(*(a1 + v7) + 8) + 24) = *v6;
      *(*(*(a1 + 32) + 8) + 24) += strlen(*(*(*(a1 + v7) + 8) + 24));
      return 1;
    }

LABEL_4:
    *v3 = v4 + 1;
    goto LABEL_5;
  }

  return 1;
}

void nw_masque_send_connect(uint64_t a1)
{
  v102 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_masque_send_connect";
    v85 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v100[0] = 0;
    if (!__nwlog_fault(v85, type, v100))
    {
      goto LABEL_183;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v86 = __nwlog_obj();
      v87 = type[0];
      if (!os_log_type_enabled(v86, type[0]))
      {
        goto LABEL_183;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      v88 = "%{public}s called with null masque";
    }

    else if (v100[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v86 = __nwlog_obj();
      v87 = type[0];
      v90 = os_log_type_enabled(v86, type[0]);
      if (backtrace_string)
      {
        if (v90)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_masque_send_connect";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = backtrace_string;
          _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_183;
      }

      if (!v90)
      {
LABEL_183:
        if (v85)
        {
          free(v85);
        }

        return;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      v88 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v86 = __nwlog_obj();
      v87 = type[0];
      if (!os_log_type_enabled(v86, type[0]))
      {
        goto LABEL_183;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      v88 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v86, v87, v88, buf, 0xCu);
    goto LABEL_183;
  }

  v2 = a1 + 503;
  if ((*(a1 + 506) & 0x10) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_masque_send_connect";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s Not sending CONNECT due to redirect", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v3 = mach_continuous_time();
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 272) = v4;
  v5 = *(a1 + 328);
  if (!v5 || (*type = 0, *&type[8] = type, v99[0] = 0x2000000000uLL, *&buf[0] = MEMORY[0x1E69E9820], *(&buf[0] + 1) = 0x40000000, *&buf[1] = __nw_masque_options_copy_target_endpoint_block_invoke, *(&buf[1] + 1) = &unk_1E6A2F548, *&buf[2] = type, nw_protocol_options_access_handle(v5, buf), v6 = *(*&type[8] + 24), _Block_object_dispose(type, 8), !v6))
  {
    v6 = nw_masque_copy_remote_endpoint(a1);
    if (!v6)
    {
      nw_masque_mark_failed_with_error(a1, 22);
      return;
    }
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    os_release(v7);
    *(a1 + 296) = 0;
  }

  v8 = v6;
  v9 = _nw_endpoint_copy_original_endpoint(v8, 2);

  *(a1 + 296) = v9;
  os_release(v8);
  if (nw_endpoint_get_type(*(a1 + 296)) == nw_endpoint_type_address)
  {
    memset(type, 0, sizeof(type));
    DWORD2(v99[0]) = 0;
    *&v99[0] = 0;
    if (nw_endpoint_fillout_v6_address(*(a1 + 296), type))
    {
      if (type[1] == 30)
      {
        __src = 0;
        v10 = nw_nat64_copy_prefixes(0, &__src);
        if (v10 >= 1)
        {
          v11 = 0;
          v12 = 16 * v10;
          while (1)
          {
            LODWORD(v95) = 0;
            if (nw_nat64_extract_v4(&__src[v11], &type[8], &v95))
            {
              break;
            }

            v11 += 16;
            if (v12 == v11)
            {
              goto LABEL_39;
            }
          }

          *v100 = 528;
          *&v100[2] = *&type[2];
          *&v100[4] = v95;
          *&v100[8] = 0;
          address = _nw_endpoint_create_address(v100);
          if ((*(v2 + 2) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v20 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              logging_description = nw_endpoint_get_logging_description(address);
              v22 = nw_endpoint_get_logging_description(*(a1 + 296));
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_masque_send_connect";
              *(buf + 14) = a1 + 507;
              WORD3(buf[1]) = 2080;
              WORD6(buf[0]) = 2082;
              *(&buf[1] + 1) = " ";
              LOWORD(buf[2]) = 2082;
              *(&buf[2] + 2) = logging_description;
              WORD5(buf[2]) = 2082;
              *(&buf[2] + 12) = v22;
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sExtracted address %{public}s from %{public}s", buf, 0x34u);
            }
          }

          v23 = *(a1 + 296);
          if (v23)
          {
            os_release(v23);
          }

          *(a1 + 296) = address;
        }
      }
    }
  }

LABEL_39:
  http_request_for_connect = nw_masque_create_http_request_for_connect(a1);
  if (http_request_for_connect)
  {
    v25 = http_request_for_connect;
    v26 = *v2;
    if ((*v2 & 0x40000) != 0)
    {
      v27 = http_request_for_connect;
      _nw_http_fields_append(v27, "Capsule-Protocol", "?1");

      v26 = *v2;
    }

    if ((v26 & 0x10) != 0)
    {
      v28 = v25;
      _nw_http_fields_append(v28, "Connect-UDP-Bind", "2");
    }

    nw_masque_add_listener_association_header_to_request(a1, v25);
    v29 = v25;
    _nw_http_fields_append(v29, "Priority", "i");

    *type = 0u;
    memset(v99, 0, 21);
    LOBYTE(__src) = 0;
    if ((nw_masque_add_extra_headers_to_request(a1, v29, type, &__src) & 1) == 0)
    {
LABEL_163:
      os_release(v29);
      return;
    }

    if (*(a1 + 368) && *(a1 + 480) == 1)
    {
      v30 = dispatch_data_create_with_transform();
      memset(buf + 1, 0, 63);
      LOBYTE(buf[0]) = 58;
      if (dispatch_data_get_size(v30) < 0x3E)
      {
        nw_masque_change_base64_to_base64url(buf);
        *(buf + nw_dispatch_data_copyout(v30, buf + 1, 61) + 1) = 58;
        nw_http_fields_append(v29, "Client-Connection-Id", buf);
      }

      else if ((*(v2 + 2) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v31 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          size = dispatch_data_get_size(v30);
          *v100 = 136446722;
          *&v100[4] = a1 + 507;
          *&v100[12] = 2080;
          *&v100[14] = " ";
          *&v100[22] = 2048;
          v101 = size;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s%sBase64 data is too large: %zu", v100, 0x20u);
        }
      }

      if (v30)
      {
        dispatch_release(v30);
      }
    }

    metadata_for_request = nw_http_create_metadata_for_request(v29);
    v35 = metadata_for_request;
    if ((*v2 & 0x10) != 0)
    {
      nw_http_metadata_set_datagram_context_id(metadata_for_request, 2);
    }

    v36 = nw_masque_send_metadata(a1, v35, *(a1 - 64));
    if ((v36 & 1) == 0)
    {
      nw_masque_mark_failed_with_error(a1, 12);
      goto LABEL_86;
    }

    v37 = *v2;
    if (__src == 1)
    {
      if ((v37 & 0x10000) == 0)
      {
        if (__nwlog_network_relay_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_network_relay_log::onceToken, &__block_literal_global_76);
        }

        v38 = gnetwork_relayLogObj;
        if (os_log_type_enabled(gnetwork_relayLogObj, OS_LOG_TYPE_INFO))
        {
          v39 = "-IP";
          if ((*v2 & 0x20) == 0)
          {
            v39 = "";
          }

          if ((*v2 & 8) != 0)
          {
            v40 = "-UDP";
          }

          else
          {
            v40 = v39;
          }

          v41 = nw_endpoint_get_logging_description(*(a1 + 296));
          LODWORD(buf[0]) = 136447491;
          *(buf + 4) = "nw_masque_send_connect";
          WORD6(buf[0]) = 2082;
          *(buf + 14) = a1 + 507;
          WORD3(buf[1]) = 2080;
          *(&buf[1] + 1) = " ";
          LOWORD(buf[2]) = 2080;
          *(&buf[2] + 2) = v40;
          WORD5(buf[2]) = 2085;
          *(&buf[2] + 12) = type;
          WORD2(buf[3]) = 2082;
          *(&buf[3] + 6) = v41;
          v42 = "%{public}s %{public}s%sSent CONNECT%s request with transaction %{sensitive}s for %{public}s";
          v43 = v38;
          v44 = OS_LOG_TYPE_INFO;
          v45 = 62;
LABEL_85:
          _os_log_impl(&dword_181A37000, v43, v44, v42, buf, v45);
        }
      }
    }

    else if ((v37 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v46 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        v47 = *v2;
        v48 = "-IP";
        if ((*v2 & 0x20) == 0)
        {
          v48 = "";
        }

        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_masque_send_connect";
        WORD6(buf[0]) = 2082;
        *(buf + 14) = a1 + 507;
        WORD3(buf[1]) = 2080;
        *(&buf[1] + 1) = " ";
        if ((v47 & 8) != 0)
        {
          v49 = "-UDP";
        }

        else
        {
          v49 = v48;
        }

        LOWORD(buf[2]) = 2080;
        *(&buf[2] + 2) = v49;
        v42 = "%{public}s %{public}s%sSent CONNECT%s request";
        v43 = v46;
        v44 = OS_LOG_TYPE_DEBUG;
        v45 = 42;
        goto LABEL_85;
      }
    }

LABEL_86:
    if (v35)
    {
      os_release(v35);
    }

    os_release(v29);
    if ((v36 & 1) == 0)
    {
      return;
    }

LABEL_21:
    *(a1 + 484) = 2;
    if ((*v2 & 8) != 0)
    {
      v14 = *(a1 + 368);
      if (v14)
      {
        if (*(a1 + 480) == 2 && *(a1 + 416))
        {
          if (*(a1 + 384))
          {
            v15 = *(a1 + 384);
          }

          else
          {
            v15 = *(a1 + 368);
          }

          v16 = dispatch_data_get_size(*(a1 + 368));
          v17 = v16;
          __src = 0;
          if (v16 > 0x3F)
          {
            if (v16 >> 14)
            {
              if (v16 >> 30)
              {
                if (v16 >> 62)
                {
                  v50 = __nwlog_obj();
                  os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "_http_vle_encode";
                  WORD6(buf[0]) = 2048;
                  *(buf + 14) = v17;
                  v51 = _os_log_send_and_compose_impl();
                  if (__nwlog_should_abort(v51))
                  {
                    goto LABEL_185;
                  }

                  free(v51);
                  v18 = 0;
                }

                else
                {
                  __src = bswap64(v16 | 0xC000000000000000);
                  v18 = 8;
                }
              }

              else
              {
                __src = bswap32(v16 | 0x80000000);
                v18 = 4;
              }
            }

            else
            {
              __src = (bswap32(v16 | 0x4000) >> 16);
              v18 = 2;
            }
          }

          else
          {
            __src = v16;
            v18 = 1;
          }

          v52 = dispatch_data_get_size(v15);
          v53 = v52;
          v95 = 0;
          if (v52 > 0x3F)
          {
            if (v52 >> 14)
            {
              if (v52 >> 30)
              {
                if (v52 >> 62)
                {
                  v55 = __nwlog_obj();
                  os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "_http_vle_encode";
                  WORD6(buf[0]) = 2048;
                  *(buf + 14) = v53;
                  v56 = _os_log_send_and_compose_impl();
                  if (__nwlog_should_abort(v56))
                  {
                    goto LABEL_185;
                  }

                  free(v56);
                  v54 = 0;
                }

                else
                {
                  v95 = bswap64(v52 | 0xC000000000000000);
                  v54 = 8;
                }
              }

              else
              {
                v95 = bswap32(v52 | 0x80000000);
                v54 = 4;
              }
            }

            else
            {
              v95 = bswap32(v52 | 0x4000) >> 16;
              v54 = 2;
            }
          }

          else
          {
            v95 = v52;
            v54 = 1;
          }

          alloc = dispatch_data_create_alloc();
          memcpy(0, &__src, v18);
          *type = 0;
          *&type[8] = type;
          v99[0] = 0x2000000000uLL;
          *v100 = 0;
          *&v100[8] = v100;
          *&v100[16] = 0x2000000000;
          v101 = v18;
          *&buf[0] = MEMORY[0x1E69E9820];
          *(&buf[0] + 1) = 0x40000000;
          *&buf[1] = __nw_dispatch_data_copyout_block_invoke;
          *(&buf[1] + 1) = &unk_1E6A34348;
          *(&buf[2] + 1) = v100;
          *&buf[3] = v17;
          *&buf[2] = type;
          dispatch_data_apply(v14, buf);
          _Block_object_dispose(v100, 8);
          _Block_object_dispose(type, 8);
          memcpy((v18 + v17), &v95, v54);
          *type = 0;
          *&type[8] = type;
          v99[0] = 0x2000000000uLL;
          *v100 = 0;
          *&v100[8] = v100;
          *&v100[16] = 0x2000000000;
          v101 = v18 + v17 + v54;
          *&buf[0] = MEMORY[0x1E69E9820];
          *(&buf[0] + 1) = 0x40000000;
          *&buf[1] = __nw_dispatch_data_copyout_block_invoke;
          *(&buf[1] + 1) = &unk_1E6A34348;
          *(&buf[2] + 1) = v100;
          *&buf[3] = v53;
          *&buf[2] = type;
          dispatch_data_apply(v15, buf);
          _Block_object_dispose(v100, 8);
          _Block_object_dispose(type, 8);
          *(v18 + v17 + v54 + v53) = 0;
          metadata_for_capsule = nw_http_create_metadata_for_capsule(16770048, alloc);
          if (alloc)
          {
            dispatch_release(alloc);
          }

          v58 = nw_masque_send_metadata(a1, metadata_for_capsule, *(a1 - 64));
          v59 = *v2;
          if (v58)
          {
            if ((v59 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v60 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_masque_send_connect";
                WORD6(buf[0]) = 2082;
                *(buf + 14) = a1 + 507;
                WORD3(buf[1]) = 2080;
                *(&buf[1] + 1) = " ";
                _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent REGISTER_CLIENT_CID capsule", buf, 0x20u);
              }
            }

            *v2 |= 0x8000000u;
          }

          else if ((v59 & 0x10000) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v61 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = a1 + 507;
              WORD6(buf[0]) = 2080;
              *(buf + 14) = " ";
              _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to send REGISTER_CLIENT_CID capsule", buf, 0x16u);
            }
          }

          if (metadata_for_capsule)
          {
            os_release(metadata_for_capsule);
          }
        }
      }
    }

    if ((*v2 & 0x20) == 0)
    {
      return;
    }

    v62 = *(a1 + 440);
    if (v62)
    {
      next_connect_ip_request_id = nw_http_connection_metadata_get_next_connect_ip_request_id(v62);
      v62 = nw_http_connection_metadata_get_next_connect_ip_request_id(*(a1 + 440));
      if ((*v2 & 0x10000) != 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      next_connect_ip_request_id = 0;
      if ((*v2 & 0x10000) != 0)
      {
LABEL_128:
        *type = 0;
        if (next_connect_ip_request_id > 0x3F)
        {
          if (next_connect_ip_request_id >> 14)
          {
            if (next_connect_ip_request_id >> 30)
            {
              if (next_connect_ip_request_id >> 62)
              {
                v65 = v62;
                v66 = __nwlog_obj();
                os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "_http_vle_encode";
                WORD6(buf[0]) = 2048;
                *(buf + 14) = next_connect_ip_request_id;
                v67 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v67))
                {
                  goto LABEL_185;
                }

                free(v67);
                v64 = 0;
                v62 = v65;
              }

              else
              {
                *type = bswap64(next_connect_ip_request_id | 0xC000000000000000);
                v64 = 8;
              }
            }

            else
            {
              *type = bswap32(next_connect_ip_request_id | 0x80000000);
              v64 = 4;
            }
          }

          else
          {
            *type = bswap32(next_connect_ip_request_id | 0x4000) >> 16;
            v64 = 2;
          }
        }

        else
        {
          *type = next_connect_ip_request_id;
          v64 = 1;
        }

        *v100 = 0;
        if (v62 <= 0x3F)
        {
          *v100 = v62;
          v68 = 1;
          goto LABEL_148;
        }

        if (!(v62 >> 14))
        {
          *v100 = bswap32(v62 | 0x4000) >> 16;
          v68 = 2;
          goto LABEL_148;
        }

        if (!(v62 >> 30))
        {
          *v100 = bswap32(v62 | 0x80000000);
          v68 = 4;
          goto LABEL_148;
        }

        if (!(v62 >> 62))
        {
          *v100 = bswap64(v62 | 0xC000000000000000);
          v68 = 8;
          goto LABEL_148;
        }

        v69 = v62;
        v70 = __nwlog_obj();
        os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "_http_vle_encode";
        WORD6(buf[0]) = 2048;
        *(buf + 14) = v69;
        v71 = _os_log_send_and_compose_impl();
        if (!__nwlog_should_abort(v71))
        {
          free(v71);
          v68 = 0;
LABEL_148:
          __src = 0;
          v72 = dispatch_data_create_alloc();
          v73 = __src;
          memcpy(__src, type, v64);
          v74 = &v73[v64];
          *v74 = 4;
          *(v74 + 1) = 0;
          v74[5] = 32;
          v75 = &v73[v64 + 6];
          memcpy(v75, v100, v68);
          v76 = &v75[v68];
          *v76 = 6;
          *(v76 + 9) = 0;
          *(v76 + 1) = 0;
          v76[17] = 0x80;
          v29 = nw_http_create_metadata_for_capsule(2, v72);
          if (v72)
          {
            dispatch_release(v72);
          }

          v77 = nw_masque_send_metadata(a1, v29, *(a1 - 64));
          v78 = *v2;
          if (v77)
          {
            if ((v78 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v79 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_masque_send_connect";
                WORD6(buf[0]) = 2082;
                *(buf + 14) = a1 + 507;
                WORD3(buf[1]) = 2080;
                *(&buf[1] + 1) = " ";
                v80 = "%{public}s %{public}s%sSent ADDRESS_REQUEST capsule";
                v81 = v79;
                v82 = OS_LOG_TYPE_DEBUG;
                v83 = 32;
LABEL_161:
                _os_log_impl(&dword_181A37000, v81, v82, v80, buf, v83);
              }
            }
          }

          else if ((v78 & 0x10000) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v84 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = a1 + 507;
              WORD6(buf[0]) = 2080;
              *(buf + 14) = " ";
              v80 = "%{public}s%sFailed to send ADDRESS_REQUEST capsule";
              v81 = v84;
              v82 = OS_LOG_TYPE_ERROR;
              v83 = 22;
              goto LABEL_161;
            }
          }

          if (!v29)
          {
            return;
          }

          goto LABEL_163;
        }

LABEL_185:
        __break(1u);
        return;
      }
    }

    if (gLogDatapath == 1)
    {
      v91 = v62;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v92 = gprivacy_proxyLogObj;
      v93 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      v62 = v91;
      if (v93)
      {
        LODWORD(buf[0]) = 136447234;
        *(buf + 4) = "nw_masque_send_connect";
        WORD6(buf[0]) = 2082;
        *(buf + 14) = a1 + 507;
        WORD3(buf[1]) = 2080;
        *(&buf[1] + 1) = " ";
        LOWORD(buf[2]) = 2048;
        *(&buf[2] + 2) = next_connect_ip_request_id;
        WORD5(buf[2]) = 2048;
        *(&buf[2] + 12) = v91;
        _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sADDRESS_REQUEST capsule v4 request ID: %llu, v6 request ID %llu", buf, 0x34u);
        v62 = v91;
      }
    }

    goto LABEL_128;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v33 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_masque_send_connect";
    _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s Unable to generate http request for masque connect", buf, 0xCu);
  }
}

uint64_t ___ZL41nw_protocol_masque_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_117(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!nw_frame_uses_external_data(a2))
  {
    v32 = 0;
    v15 = nw_frame_unclaimed_bytes(a2, &v32);
    v16 = *(a1 + 72);
    if (v32 < v16 || v15 == 0)
    {
      v18 = *(a1 + 32);
      if (v18 && (*(v18 + 505) & 1) != 0)
      {
        goto LABEL_27;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v19 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v20 = *(a1 + 32);
      v21 = (v20 + 507);
      v12 = v20 == 0;
      v22 = " ";
      v23 = *(a1 + 72);
      if (v12)
      {
        v21 = "";
        v22 = "";
      }

      *buf = 136446978;
      v34 = v21;
      v35 = 2080;
      v36 = v22;
      v37 = 1024;
      v38 = v23;
      v39 = 1024;
      v40 = v32;
      v14 = v19;
      goto LABEL_26;
    }

    memcpy(v15, *(a1 + 48), v16);
LABEL_32:
    nw_frame_claim(a2, v28, *(a1 + 72), 0);
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v29, *(a1 + 72), 0);
    if (*(a1 + 76))
    {
      v30 = 0x80;
    }

    else
    {
      v30 = 0;
    }

    *(a2 + 186) = v30 & 0x80 | *(a2 + 186) & 0x7F;
    nw_frame_set_metadata(a2, 0, 0, *(a1 + 77));
    return 1;
  }

  v4 = nw_frame_unclaimed_length(a2);
  v5 = *(a1 + 72);
  if (v4 >= v5)
  {
    v27 = dispatch_data_create(*(a1 + 48), v5, 0, *MEMORY[0x1E69E9648]);
    nw_frame_will_free_buffer_externally(*(a1 + 56));
    nw_frame_set_external_data(a2, v27, 0);
    if (v27)
    {
      os_release(v27);
    }

    goto LABEL_32;
  }

  v6 = v4;
  v7 = *(a1 + 32);
  if (v7 && (*(v7 + 505) & 1) != 0)
  {
    goto LABEL_27;
  }

  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  v8 = gprivacy_proxyLogObj;
  if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_27;
  }

  v9 = *(a1 + 32);
  v10 = (v9 + 507);
  v11 = "";
  v12 = v9 == 0;
  v13 = *(a1 + 72);
  if (v12)
  {
    v10 = "";
  }

  *buf = 136446978;
  if (!v12)
  {
    v11 = " ";
  }

  v34 = v10;
  v35 = 2080;
  v36 = v11;
  v37 = 1024;
  v38 = v13;
  v39 = 1024;
  v40 = v6;
  v14 = v8;
LABEL_26:
  _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s%sUnable to send %u early bytes, only received %u bytes", buf, 0x22u);
LABEL_27:
  v24 = (*(a1 + 40) + 8);
  v25 = *(a2 + 32);
  v26 = *(a2 + 40);
  if (v25)
  {
    v24 = (v25 + 40);
  }

  *v24 = v26;
  *v26 = v25;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

uint64_t __nw_masque_options_copy_target_endpoint_block_invoke(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = os_retain(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

void *nw_masque_copy_remote_endpoint(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 - 48);
    if (v1 && (v2 = *(v1 + 24)) != 0 && (v3 = *(v2 + 136)) != 0)
    {
      v4 = *(v1 + 40);
      v5 = *(a1 - 48);
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v1 + 64)) != 0)
      {
        v7 = *(v5 + 88);
        if (v7)
        {
          *(v5 + 88) = v7 + 1;
        }

        result = v3(v1);
        v8 = *(v1 + 40);
        if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
        {
          v9 = *(v1 + 88);
          if (v9)
          {
            v10 = v9 - 1;
            *(v1 + 88) = v10;
            if (!v10)
            {
              v11 = result;
              v12 = *(v1 + 64);
              if (v12)
              {
                *(v1 + 64) = 0;
                v12[2](v12);
                _Block_release(v12);
              }

              if (*(v1 + 72))
              {
                v13 = *(v1 + 64);
                if (v13)
                {
                  _Block_release(v13);
                }
              }

              free(v1);
              result = v11;
            }
          }
        }
      }

      else
      {
        result = v3(*(a1 - 48));
      }

      if (result)
      {
        return os_retain(result);
      }
    }

    else
    {
      result = *(a1 + 288);
      if (result)
      {

        return os_retain(result);
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_masque_copy_remote_endpoint";
  v14 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v14, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_masque_copy_remote_endpoint";
        v17 = "%{public}s called with null masque";
LABEL_42:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v19 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v23 = "nw_masque_copy_remote_endpoint";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_43;
      }

      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_masque_copy_remote_endpoint";
        v17 = "%{public}s called with null masque, no backtrace";
        goto LABEL_42;
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_masque_copy_remote_endpoint";
        v17 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (v14)
  {
    free(v14);
  }

  return 0;
}

uint64_t nw_masque_create_http_request_for_connect(uint64_t a1)
{
  v89 = *MEMORY[0x1E69E9840];
  v81 = 0;
  v82 = 0;
  v2 = a1 + 503;
  v3 = *(a1 + 503);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v8 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v84 = (a1 + 507);
        v85 = 2080;
        v86 = " ";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT (connect-udp) request for listening", buf, 0x16u);
      }
    }

    v9 = *(a1 + 328);
    if (!v9 || (v10 = _nw_protocol_options_copy_proxy_endpoint(v9)) == 0)
    {
      if (*(v2 + 2))
      {
        goto LABEL_26;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v11 = v10;
    hostname = _nw_endpoint_get_hostname(v11);

    v13 = v11;
    port = _nw_endpoint_get_port(v13);

    if (!hostname)
    {
      if (*(v2 + 2))
      {
        goto LABEL_51;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v28 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (port != 443 && port)
    {
      v13 = v13;
      type = _nw_endpoint_get_type(v13);

      if (type == 1)
      {
        v30 = v13;
        address_family = _nw_endpoint_get_address_family(v30);

        if (address_family == 30)
        {
          asprintf(&v82, "[%s]:%u", hostname, port);
          v32 = 0;
          v33 = "connect-udp";
          v13 = v30;
          goto LABEL_119;
        }
      }

      asprintf(&v82, "%s:%u");
    }

    else
    {
      asprintf(&v82, "%s");
    }

    v32 = 0;
    v33 = "connect-udp";
LABEL_119:
    os_release(v13);
    v53 = *v2;
    *v2 |= 0x40000u;
    if ((v53 & 0x10) != 0)
    {
      asprintf(&v81, "/.well-known/masque/udp/*/*/");
      goto LABEL_140;
    }

    if ((v53 & 0x28) == 0)
    {
      goto LABEL_140;
    }

    v54 = nw_endpoint_get_hostname(*(a1 + 296));
    v55 = *MEMORY[0x1E695E480];
    v56 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v54, 0x8000100u);
    if (v56)
    {
      v57 = v56;
      URLPathAllowedCharacterSet = _CFURLComponentsGetURLPathAllowedCharacterSet();
      MutableCopy = CFCharacterSetCreateMutableCopy(v55, URLPathAllowedCharacterSet);
      if (MutableCopy)
      {
        v60 = MutableCopy;
        CFCharacterSetRemoveCharactersInString(MutableCopy, @":");
        v61 = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters();
        if (v61)
        {
          v62 = v61;
          Length = CFStringGetLength(v61);
          v64 = Length + 1;
          if (Length == -1)
          {
            v77 = __nwlog_obj();
            os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            v84 = "nw_masque_create_http_request_for_connect";
            v78 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v78);
            if (result)
            {
              goto LABEL_178;
            }

            free(v78);
          }

          v65 = malloc_type_calloc(1uLL, v64, 0xFD17DB56uLL);
          if (!v65)
          {
            v80 = __nwlog_obj();
            os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            v84 = "nw_masque_create_http_request_for_connect";
            v85 = 2048;
            v86 = 1;
            v87 = 2048;
            v79 = v64;
            v88 = v64;
            v66 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v66);
            if (result)
            {
              goto LABEL_178;
            }

            free(v66);
            v64 = v79;
          }

          CFStringGetCString(v62, v65, v64, 0x8000100u);
          CFRelease(v62);
        }

        else
        {
          v65 = 0;
        }

        CFRelease(v60);
      }

      else
      {
        v65 = 0;
      }

      CFRelease(v57);
      v68 = *v2;
      if ((*v2 & 8) == 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v65 = 0;
      v68 = *v2;
      if ((*v2 & 8) == 0)
      {
LABEL_136:
        if ((v68 & 0x20) != 0)
        {
          asprintf(&v81, "/.well-known/masque/ip/%s/%u/");
        }

        goto LABEL_138;
      }
    }

    nw_endpoint_get_port(*(a1 + 296));
    asprintf(&v81, "/.well-known/masque/udp/%s/%u/");
LABEL_138:
    if (v65)
    {
      free(v65);
    }

LABEL_140:
    v51 = 0;
    v34 = "https";
    v46 = "CONNECT";
    v52 = v82;
    if (!v82)
    {
      goto LABEL_166;
    }

    goto LABEL_141;
  }

  if ((v3 & 8) != 0)
  {
    if (*(a1 + 480) != 2)
    {
      if ((v3 & 0x10000) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v24 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
        {
          v25 = *(a1 + 296);
          v26 = v25;
          if (v25)
          {
            logging_description = _nw_endpoint_get_logging_description(v25);
          }

          else
          {
            logging_description = "<NULL>";
          }

          *buf = 136446722;
          v84 = (a1 + 507);
          v85 = 2080;
          v86 = " ";
          v87 = 2082;
          v88 = logging_description;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT-UDP request for %{public}s", buf, 0x20u);
        }
      }

      v35 = nw_http_request_method_connect_udp;
      v34 = "https";
      goto LABEL_89;
    }

    if ((v3 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v16 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 296);
        v18 = v17;
        if (v17)
        {
          v19 = _nw_endpoint_get_logging_description(v17);
        }

        else
        {
          v19 = "<NULL>";
        }

        *buf = 136446722;
        v84 = (a1 + 507);
        v85 = 2080;
        v86 = " ";
        v87 = 2082;
        v88 = v19;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT (connect-udp) request for %{public}s", buf, 0x20u);
      }
    }

    v36 = *(a1 + 328);
    if (!v36 || (v37 = _nw_protocol_options_copy_proxy_endpoint(v36)) == 0)
    {
      if (*(v2 + 2))
      {
        goto LABEL_26;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v15 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v38 = v37;
    v39 = _nw_endpoint_get_hostname(v38);

    v13 = v38;
    v40 = _nw_endpoint_get_port(v13);

    if (!v39)
    {
      if (*(v2 + 2))
      {
        goto LABEL_51;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v28 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v40 != 443 && v40)
    {
      if (nw_endpoint_get_type(v13) == nw_endpoint_type_address && nw_endpoint_get_address_family(v13) == 30)
      {
        asprintf(&v82, "[%s]:%u");
      }

      else
      {
        asprintf(&v82, "%s:%u");
      }
    }

    else
    {
      asprintf(&v82, "%s");
    }

    v33 = "connect-udp";
    v32 = 1;
    goto LABEL_119;
  }

  if ((v3 & 0x20) != 0)
  {
    if ((v3 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v20 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 296);
        v22 = v21;
        if (v21)
        {
          v23 = _nw_endpoint_get_logging_description(v21);
        }

        else
        {
          v23 = "<NULL>";
        }

        *buf = 136446722;
        v84 = (a1 + 507);
        v85 = 2080;
        v86 = " ";
        v87 = 2082;
        v88 = v23;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT (connect-ip) request for %{public}s", buf, 0x20u);
      }
    }

    v41 = *(a1 + 328);
    if (v41)
    {
      v42 = _nw_protocol_options_copy_proxy_endpoint(v41);
      if (v42)
      {
        v43 = v42;
        v44 = _nw_endpoint_get_hostname(v43);

        v13 = v43;
        v45 = _nw_endpoint_get_port(v13);

        if (v44)
        {
          if (v45 != 443 && v45)
          {
            if (nw_endpoint_get_type(v13) == nw_endpoint_type_address && nw_endpoint_get_address_family(v13) == 30)
            {
              asprintf(&v82, "[%s]:%u");
            }

            else
            {
              asprintf(&v82, "%s:%u");
            }
          }

          else
          {
            asprintf(&v82, "%s");
          }

          v32 = 0;
          v33 = "connect-ip";
          goto LABEL_119;
        }

        if (*(v2 + 2))
        {
          goto LABEL_51;
        }

        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v28 = gprivacy_proxyLogObj;
        if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

LABEL_50:
        *buf = 136446466;
        v84 = (a1 + 507);
        v85 = 2080;
        v86 = " ";
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s%sProxy hostname not found", buf, 0x16u);
LABEL_51:
        nw_masque_mark_failed_with_error(a1, 22);
        os_release(v13);
        return 0;
      }
    }

    if (*(v2 + 2))
    {
      goto LABEL_26;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v15 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      nw_masque_mark_failed_with_error(a1, 22);
      return 0;
    }

LABEL_25:
    *buf = 136446466;
    v84 = (a1 + 507);
    v85 = 2080;
    v86 = " ";
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s%sProxy endpoint not found", buf, 0x16u);
    goto LABEL_26;
  }

  if ((v3 & 0x10000) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v4 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 296);
      v6 = v5;
      if (v5)
      {
        v7 = _nw_endpoint_get_logging_description(v5);
      }

      else
      {
        v7 = "<NULL>";
      }

      *buf = 136446722;
      v84 = (a1 + 507);
      v85 = 2080;
      v86 = " ";
      v87 = 2082;
      v88 = v7;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sCreating CONNECT request for %{public}s", buf, 0x20u);
    }
  }

  v34 = 0;
  v35 = nw_http_request_method_connect;
LABEL_89:
  v46 = *v35;
  if (nw_endpoint_get_type(*(a1 + 296)) == nw_endpoint_type_address && nw_endpoint_get_address_family(*(a1 + 296)) == 30)
  {
    v47 = "[%s]:%u";
  }

  else
  {
    v47 = "%s:%u";
  }

  v48 = nw_endpoint_get_hostname(*(a1 + 296));
  v49 = nw_endpoint_get_port(*(a1 + 296));
  asprintf(&v82, v47, v48, v49);
  if ((*v2 & 8) == 0)
  {
    v33 = 0;
    v32 = 0;
    goto LABEL_97;
  }

  v50 = strdup("/");
  if (v50)
  {
LABEL_96:
    v33 = 0;
    v32 = 0;
    v81 = v50;
LABEL_97:
    v51 = 1;
    v52 = v82;
    if (!v82)
    {
      goto LABEL_166;
    }

LABEL_141:
    v69 = *v52;
    if (v69 == 32 || v69 == 9)
    {
LABEL_155:
      if ((*(v2 + 2) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v73 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v84 = (a1 + 507);
          v85 = 2080;
          v86 = " ";
          v87 = 2080;
          v88 = v82;
          _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_ERROR, "%{public}s%sInvalid characters in authority: %s", buf, 0x20u);
        }
      }

      nw_masque_mark_failed_with_error(a1, 22);
      if (v82)
      {
        free(v82);
        v82 = 0;
      }

      if (v81)
      {
        free(v81);
      }

      return 0;
    }

    if (*v52)
    {
      v70 = v52 - 1;
      while (1)
      {
        v71 = (v69 - 33) < 0x5E || v69 == 9;
        if (!v71 && v69 != 32 && (v69 & 0x80) == 0)
        {
          goto LABEL_155;
        }

        v69 = v70[2];
        ++v70;
        if (!v69)
        {
          v72 = *v70;
          if (v72 != 9 && v72 != 32)
          {
            break;
          }

          goto LABEL_155;
        }
      }
    }

LABEL_166:
    v74 = nw_http_request_create(v46, v34);
    if (v82)
    {
      free(v82);
      v82 = 0;
    }

    if (v81)
    {
      free(v81);
      v81 = 0;
    }

    if ((v51 & 1) == 0)
    {
      nw_http_request_set_extended_connect_protocol(v74, v33);
    }

    if (v32)
    {
      nw_http_fields_append(v74, "Proxy-QUIC-Forwarding", "?1");
    }

    return v74;
  }

  v75 = __nwlog_obj();
  os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v84 = "strict_strdup";
  v76 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v76);
  if (!result)
  {
    free(v76);
    v50 = 0;
    goto LABEL_96;
  }

LABEL_178:
  __break(1u);
  return result;
}

char *nw_masque_change_base64_to_base64url(char *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = strchr(a1, 43);
    if (!v2)
    {
      break;
    }

    *v2 = 45;
    a1 = v2 + 1;
  }

  for (i = v1; ; i = result + 1)
  {
    result = strchr(i, 47);
    if (!result)
    {
      break;
    }

    *result = 95;
  }

  return result;
}

uint64_t __Block_byref_object_copy__28072(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__28073(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL46nw_masque_enable_spin_bit_for_ft_p2p_if_neededP9nw_masque_block_invoke(void *a1, nw_protocol_options_t options)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(*(a1[4] + 8) + 24))
  {
    if (!*(*(a1[5] + 8) + 40))
    {
      is_quic = nw_protocol_options_is_quic(options);
      v5 = options;
      if (is_quic || (is_quic_connection = nw_protocol_options_is_quic_connection(options), v5 = options, (is_quic_connection & 1) != 0) || (is_quic_stream = nw_protocol_options_is_quic_stream(options), v5 = options, is_quic_stream))
      {
        if (v5)
        {
          v8 = os_retain(v5);
        }

        else
        {
          v8 = 0;
        }

        v12 = *(a1[5] + 8);
        v13 = *(v12 + 48);
        if (v13)
        {
          v14 = *(v12 + 40);
          if (v14)
          {
            os_release(v14);
            v13 = *(v12 + 48);
          }
        }

        *(v12 + 40) = v8;
        *(v12 + 48) = v13 | 1;
        v15 = a1[6];
        if ((!v15 || (*(v15 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v16 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v17 = a1[6];
            v18 = "";
            v19 = v17 == 0;
            if (v17)
            {
              v20 = (v17 + 507);
            }

            else
            {
              v20 = "";
            }

            v21 = 136446722;
            v22 = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed_block_invoke";
            if (!v19)
            {
              v18 = " ";
            }

            v23 = 2082;
            v24 = v20;
            v25 = 2080;
            v26 = v18;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfound quic as application protocol", &v21, 0x20u);
          }
        }
      }
    }
  }

  else
  {
    protocol_handle = nw_protocol_options_get_protocol_handle(options);
    v10 = a1[6];
    if (v10)
    {
      v11 = v10 - 96;
    }

    else
    {
      v11 = 0;
    }

    if (protocol_handle == v11)
    {
      *(*(a1[4] + 8) + 24) = 1;
    }
  }
}

BOOL nw_masque_compare_metadata(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      return *a2 == *a3;
    }

    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_masque_compare_metadata";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_masque_compare_metadata";
        v7 = "%{public}s called with null handle2";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_masque_compare_metadata";
        v7 = "%{public}s called with null handle2, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_masque_compare_metadata";
        v7 = "%{public}s called with null handle2, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_masque_compare_metadata";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null handle2, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_masque_compare_metadata";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_masque_compare_metadata";
        v7 = "%{public}s called with null handle1, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_masque_compare_metadata";
        v7 = "%{public}s called with null handle1, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_masque_compare_metadata";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null handle1, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v15 = "nw_masque_compare_metadata";
    v7 = "%{public}s called with null handle1";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_32:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_masque_get_output_local_endpoint(nw_protocol *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v62 = "nw_protocol_masque_get_output_local_endpoint";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v59 = 0;
        if (__nwlog_fault(v7, &type, &v59))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v9 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v62 = "nw_protocol_masque_get_output_local_endpoint";
              v10 = "%{public}s called with null masque";
LABEL_31:
              v21 = v8;
              v22 = v9;
LABEL_32:
              _os_log_impl(&dword_181A37000, v21, v22, v10, buf, 0xCu);
            }
          }

          else if (v59 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v19 = type;
            v20 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                v62 = "nw_protocol_masque_get_output_local_endpoint";
                v63 = 2082;
                v64 = backtrace_string;
                _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_33;
            }

            if (v20)
            {
              *buf = 136446210;
              v62 = "nw_protocol_masque_get_output_local_endpoint";
              v10 = "%{public}s called with null masque, no backtrace";
              v21 = v18;
              v22 = v19;
              goto LABEL_32;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v9 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v62 = "nw_protocol_masque_get_output_local_endpoint";
              v10 = "%{public}s called with null masque, backtrace limit exceeded";
              goto LABEL_31;
            }
          }
        }

LABEL_33:
        if (v7)
        {
          free(v7);
        }

        result = 0;
        goto LABEL_54;
      }

      v6 = *a1[1].flow_id;
    }

    result = v6[6].output_handler_context;
    if (!result)
    {
      output_handler = v1->output_handler;
      if (!output_handler)
      {
        __nwlog_obj();
        *buf = 136446210;
        v62 = "__nw_protocol_get_output_local_endpoint";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v59 = 0;
        if (!__nwlog_fault(v7, &type, &v59))
        {
          goto LABEL_33;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v9 = type;
          if (!os_log_type_enabled(v8, type))
          {
            goto LABEL_33;
          }

          *buf = 136446210;
          v62 = "__nw_protocol_get_output_local_endpoint";
          v10 = "%{public}s called with null protocol";
          goto LABEL_31;
        }

        if (v59 != 1)
        {
          v8 = __nwlog_obj();
          v9 = type;
          if (!os_log_type_enabled(v8, type))
          {
            goto LABEL_33;
          }

          *buf = 136446210;
          v62 = "__nw_protocol_get_output_local_endpoint";
          v10 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_31;
        }

        v53 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v54 = os_log_type_enabled(v8, type);
        if (v53)
        {
          if (v54)
          {
            *buf = 136446466;
            v62 = "__nw_protocol_get_output_local_endpoint";
            v63 = 2082;
            v64 = v53;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v53);
          goto LABEL_33;
        }

        if (v54)
        {
          *buf = 136446210;
          v62 = "__nw_protocol_get_output_local_endpoint";
          v10 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      v13 = output_handler->handle;
      v14 = v1->output_handler;
      if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *output_handler[1].flow_id) != 0)
      {
        v23 = v14[1].callbacks;
        if (v23)
        {
          v15 = 0;
          v14[1].callbacks = (&v23->add_input_handler + 1);
          v16 = output_handler->callbacks;
          if (!v16)
          {
LABEL_78:
            __nwlog_obj();
            name = output_handler->identifier->name;
            *buf = 136446722;
            v62 = "__nw_protocol_get_output_local_endpoint";
            if (!name)
            {
              name = "invalid";
            }

            v63 = 2082;
            v64 = name;
            v65 = 2048;
            v66 = output_handler;
            v44 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v59 = 0;
            if (__nwlog_fault(v44, &type, &v59))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v45 = __nwlog_obj();
                v46 = type;
                if (!os_log_type_enabled(v45, type))
                {
                  goto LABEL_110;
                }

                v47 = output_handler->identifier->name;
                if (!v47)
                {
                  v47 = "invalid";
                }

                *buf = 136446722;
                v62 = "__nw_protocol_get_output_local_endpoint";
                v63 = 2082;
                v64 = v47;
                v65 = 2048;
                v66 = output_handler;
                v48 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback";
LABEL_108:
                v56 = v45;
LABEL_109:
                _os_log_impl(&dword_181A37000, v56, v46, v48, buf, 0x20u);
                goto LABEL_110;
              }

              if (v59 != 1)
              {
                v45 = __nwlog_obj();
                v46 = type;
                if (!os_log_type_enabled(v45, type))
                {
                  goto LABEL_110;
                }

                v55 = output_handler->identifier->name;
                if (!v55)
                {
                  v55 = "invalid";
                }

                *buf = 136446722;
                v62 = "__nw_protocol_get_output_local_endpoint";
                v63 = 2082;
                v64 = v55;
                v65 = 2048;
                v66 = output_handler;
                v48 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, backtrace limit exceeded";
                goto LABEL_108;
              }

              v49 = __nw_create_backtrace_string();
              v50 = __nwlog_obj();
              v46 = type;
              log = v50;
              v51 = os_log_type_enabled(v50, type);
              if (v49)
              {
                if (v51)
                {
                  v52 = output_handler->identifier->name;
                  if (!v52)
                  {
                    v52 = "invalid";
                  }

                  *buf = 136446978;
                  v62 = "__nw_protocol_get_output_local_endpoint";
                  v63 = 2082;
                  v64 = v52;
                  v65 = 2048;
                  v66 = output_handler;
                  v67 = 2082;
                  v68 = v49;
                  _os_log_impl(&dword_181A37000, log, v46, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v49);
              }

              else if (v51)
              {
                v57 = output_handler->identifier->name;
                if (!v57)
                {
                  v57 = "invalid";
                }

                *buf = 136446722;
                v62 = "__nw_protocol_get_output_local_endpoint";
                v63 = 2082;
                v64 = v57;
                v65 = 2048;
                v66 = output_handler;
                v48 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, no backtrace";
                v56 = log;
                goto LABEL_109;
              }
            }

LABEL_110:
            if (v44)
            {
              free(v44);
            }

            result = 0;
            if (v15)
            {
              goto LABEL_54;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v15 = 0;
          v16 = output_handler->callbacks;
          if (!v16)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        v15 = 1;
        v16 = output_handler->callbacks;
        if (!v16)
        {
          goto LABEL_78;
        }
      }

      get_output_local_endpoint = v16->get_output_local_endpoint;
      if (!get_output_local_endpoint)
      {
        goto LABEL_78;
      }

      result = get_output_local_endpoint(output_handler);
      if ((v15 & 1) == 0)
      {
LABEL_43:
        v25 = output_handler->handle;
        if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
        {
          v26 = output_handler[1].callbacks;
          if (v26)
          {
            v27 = (v26 - 1);
            output_handler[1].callbacks = v27;
            if (!v27)
            {
              v28 = result;
              v29 = *output_handler[1].flow_id;
              if (v29)
              {
                *output_handler[1].flow_id = 0;
                v29[2](v29);
                _Block_release(v29);
              }

              if (output_handler[1].flow_id[8])
              {
                v30 = *output_handler[1].flow_id;
                if (v30)
                {
                  _Block_release(v30);
                }
              }

              free(output_handler);
              result = v28;
            }
          }
        }
      }
    }

LABEL_54:
    if ((v4 & 1) == 0)
    {
      v31 = v1->handle;
      if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v32 = v1[1].callbacks;
        if (v32)
        {
          v33 = (v32 - 1);
          v1[1].callbacks = v33;
          if (!v33)
          {
            v34 = result;
            v35 = *v1[1].flow_id;
            if (v35)
            {
              *v1[1].flow_id = 0;
              v35[2](v35);
              _Block_release(v35);
            }

            if (v1[1].flow_id[8])
            {
              v36 = *v1[1].flow_id;
              if (v36)
              {
                _Block_release(v36);
              }
            }

            free(v1);
            return v34;
          }
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v62 = "nw_protocol_masque_get_output_local_endpoint";
  v37 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v59 = 0;
  if (__nwlog_fault(v37, &type, &v59))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v62 = "nw_protocol_masque_get_output_local_endpoint";
        v40 = "%{public}s called with null protocol";
LABEL_116:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }
    }

    else if (v59 == 1)
    {
      v41 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v42 = os_log_type_enabled(v38, type);
      if (v41)
      {
        if (v42)
        {
          *buf = 136446466;
          v62 = "nw_protocol_masque_get_output_local_endpoint";
          v63 = 2082;
          v64 = v41;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
        goto LABEL_117;
      }

      if (v42)
      {
        *buf = 136446210;
        v62 = "nw_protocol_masque_get_output_local_endpoint";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_116;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v62 = "nw_protocol_masque_get_output_local_endpoint";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_116;
      }
    }
  }

LABEL_117:
  if (v37)
  {
    free(v37);
  }

  return 0;
}

uint64_t ___ZL34nw_protocol_masque_input_availableP11nw_protocolS0__block_invoke(uint64_t a1, _DWORD *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    if (!v4 || (*(v4 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v5 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        v7 = v6 == 0;
        if (v6)
        {
          v8 = (v6 + 507);
        }

        else
        {
          v8 = "";
        }

        v9 = " ";
        if (v7)
        {
          v9 = "";
        }

        *buf = 136446466;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        v10 = "%{public}s%sReceived unexpected input frame when not waiting for a response";
LABEL_58:
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
        goto LABEL_84;
      }
    }

    goto LABEL_84;
  }

  v11 = nw_frame_unclaimed_length(a2);
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 40);
    if (!v13 || (*(v13 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v14 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 40);
        v16 = v15 == 0;
        if (v15)
        {
          v17 = (v15 + 507);
        }

        else
        {
          v17 = "";
        }

        *buf = 136446722;
        *&buf[4] = v17;
        v18 = " ";
        if (v16)
        {
          v18 = "";
        }

        *&buf[12] = 2080;
        *&buf[14] = v18;
        *&buf[22] = 1024;
        LODWORD(v62) = v12;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s%sReceived unexpected input frame of length %u", buf, 0x1Cu);
      }
    }
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v19 = nw_protocol_copy_http_definition_http_definition;
  v20 = nw_frame_copy_metadata_for_protocol(a2, v19);
  if (v19)
  {
    os_release(v19);
  }

  if (v20)
  {
    if (*(a1 + 52) != 1)
    {
      v38 = *(a1 + 40);
      if (*(a1 + 48) == 3)
      {
        nw_masque_handle_capsule(v38, v20);
      }

      else
      {
        nw_masque_handle_connect_response(v38, v20);
      }

      goto LABEL_83;
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = v20;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v23 = nw_protocol_metadata_matches_definition(v22, nw_protocol_copy_http_definition_http_definition);

      if (v23)
      {
        v24 = nw_http_metadata_copy_response(v22);
        if (v24)
        {
          v25 = v24;
          status_code = _nw_http_response_get_status_code(v25);

          if (!status_code)
          {
LABEL_82:
            os_release(v25);
LABEL_83:
            *(*(*(a1 + 32) + 8) + 24) = 1;
            os_release(v20);
            goto LABEL_84;
          }

          if (status_code != 200)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v39 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *v66 = 136446466;
              *&v66[4] = "nw_masque_handle_server_connect_response";
              *&v66[12] = 1024;
              *&v66[14] = status_code;
              _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s Received response code %u, forwarding not allowed", v66, 0x12u);
            }

            goto LABEL_82;
          }

          v27 = v25;
          have_field_with_name = _nw_http_fields_have_field_with_name(v27, "Server-Connection-Id");

          *v66 = 0;
          *&v66[8] = v66;
          *&v66[16] = 0x2000000000;
          v67 = 0;
          *type = 0;
          v54 = type;
          v55 = 0x2000000000;
          v56 = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL40nw_masque_handle_server_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke;
          v62 = &unk_1E6A2FC70;
          v63 = v66;
          v64 = type;
          v65 = v21;
          v29 = v27;
          v30 = buf;
          _nw_http_fields_access_value_by_name(v29, "Datagram-Flow-Id", v30);

          if (have_field_with_name)
          {
            if (*(*&v66[8] + 24))
            {
              v31 = *(v21 + 503);
              if (v54[24])
              {
                if ((v31 & 0x10000) == 0)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v32 = gprivacy_proxyLogObj;
                  if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
                  {
                    *v57 = 136446466;
                    v58 = v21 + 507;
                    v59 = 2080;
                    v60 = " ";
                    _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s%sReceived 200 OK, forwarding allowed", v57, 0x16u);
                  }
                }

                *(v21 + 488) = 4;
                goto LABEL_81;
              }

              if ((v31 & 0x10000) != 0)
              {
                goto LABEL_80;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v40 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
LABEL_80:
                nw_masque_mark_failed_with_error(v21, 94);
LABEL_81:
                _Block_object_dispose(type, 8);
                _Block_object_dispose(v66, 8);
                goto LABEL_82;
              }

              *v57 = 136446466;
              v58 = v21 + 507;
              v59 = 2080;
              v60 = " ";
              v41 = "%{public}s%sReceived response without invalid datagram flow ID";
            }

            else
            {
              if (*(v21 + 505))
              {
                goto LABEL_80;
              }

              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v40 = gprivacy_proxyLogObj;
              if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_80;
              }

              *v57 = 136446466;
              v58 = v21 + 507;
              v59 = 2080;
              v60 = " ";
              v41 = "%{public}s%sReceived response without datagram flow ID";
            }
          }

          else
          {
            if (*(v21 + 505))
            {
              goto LABEL_80;
            }

            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v40 = gprivacy_proxyLogObj;
            if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_80;
            }

            *v57 = 136446466;
            v58 = v21 + 507;
            v59 = 2080;
            v60 = " ";
            v41 = "%{public}s%sReceived response without server Connection ID";
          }

          _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, v41, v57, 0x16u);
          goto LABEL_80;
        }

        __nwlog_obj();
        *v66 = 136446210;
        *&v66[4] = "nw_masque_handle_server_connect_response";
        v43 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v57[0] = 0;
        if (!__nwlog_fault(v43, type, v57))
        {
          goto LABEL_126;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v44 = __nwlog_obj();
          v45 = type[0];
          if (!os_log_type_enabled(v44, type[0]))
          {
            goto LABEL_126;
          }

          *v66 = 136446210;
          *&v66[4] = "nw_masque_handle_server_connect_response";
          v46 = "%{public}s called with null response";
          goto LABEL_125;
        }

        if (v57[0] != 1)
        {
          v44 = __nwlog_obj();
          v45 = type[0];
          if (!os_log_type_enabled(v44, type[0]))
          {
            goto LABEL_126;
          }

          *v66 = 136446210;
          *&v66[4] = "nw_masque_handle_server_connect_response";
          v46 = "%{public}s called with null response, backtrace limit exceeded";
          goto LABEL_125;
        }

        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v45 = type[0];
        v52 = os_log_type_enabled(v44, type[0]);
        if (!backtrace_string)
        {
          if (!v52)
          {
            goto LABEL_126;
          }

          *v66 = 136446210;
          *&v66[4] = "nw_masque_handle_server_connect_response";
          v46 = "%{public}s called with null response, no backtrace";
          goto LABEL_125;
        }

        if (v52)
        {
          *v66 = 136446466;
          *&v66[4] = "nw_masque_handle_server_connect_response";
          *&v66[12] = 2082;
          *&v66[14] = backtrace_string;
          v51 = "%{public}s called with null response, dumping backtrace:%{public}s";
          goto LABEL_110;
        }

        goto LABEL_111;
      }

      __nwlog_obj();
      *v66 = 136446210;
      *&v66[4] = "nw_masque_handle_server_connect_response";
      v43 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v57[0] = 0;
      if (!__nwlog_fault(v43, type, v57))
      {
        goto LABEL_126;
      }

      if (type[0] != OS_LOG_TYPE_FAULT)
      {
        if (v57[0] != 1)
        {
          v44 = __nwlog_obj();
          v45 = type[0];
          if (!os_log_type_enabled(v44, type[0]))
          {
            goto LABEL_126;
          }

          *v66 = 136446210;
          *&v66[4] = "nw_masque_handle_server_connect_response";
          v46 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), backtrace limit exceeded";
          goto LABEL_125;
        }

        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v45 = type[0];
        v50 = os_log_type_enabled(v44, type[0]);
        if (!backtrace_string)
        {
          if (!v50)
          {
            goto LABEL_126;
          }

          *v66 = 136446210;
          *&v66[4] = "nw_masque_handle_server_connect_response";
          v46 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), no backtrace";
          goto LABEL_125;
        }

        if (v50)
        {
          *v66 = 136446466;
          *&v66[4] = "nw_masque_handle_server_connect_response";
          *&v66[12] = 2082;
          *&v66[14] = backtrace_string;
          v51 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), dumping backtrace:%{public}s";
LABEL_110:
          _os_log_impl(&dword_181A37000, v44, v45, v51, v66, 0x16u);
        }

LABEL_111:
        free(backtrace_string);
        if (!v43)
        {
          goto LABEL_83;
        }

        goto LABEL_127;
      }

      v44 = __nwlog_obj();
      v45 = type[0];
      if (!os_log_type_enabled(v44, type[0]))
      {
        goto LABEL_126;
      }

      *v66 = 136446210;
      *&v66[4] = "nw_masque_handle_server_connect_response";
      v46 = "%{public}s called with null nw_protocol_metadata_is_http(metadata)";
    }

    else
    {
      __nwlog_obj();
      *v66 = 136446210;
      *&v66[4] = "nw_masque_handle_server_connect_response";
      v43 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v57[0] = 0;
      if (!__nwlog_fault(v43, type, v57))
      {
        goto LABEL_126;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (!os_log_type_enabled(v44, type[0]))
        {
          goto LABEL_126;
        }

        *v66 = 136446210;
        *&v66[4] = "nw_masque_handle_server_connect_response";
        v46 = "%{public}s called with null masque";
      }

      else if (v57[0] == 1)
      {
        v47 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v45 = type[0];
        v48 = os_log_type_enabled(v44, type[0]);
        if (v47)
        {
          if (v48)
          {
            *v66 = 136446466;
            *&v66[4] = "nw_masque_handle_server_connect_response";
            *&v66[12] = 2082;
            *&v66[14] = v47;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null masque, dumping backtrace:%{public}s", v66, 0x16u);
          }

          free(v47);
LABEL_126:
          if (!v43)
          {
            goto LABEL_83;
          }

LABEL_127:
          free(v43);
          goto LABEL_83;
        }

        if (!v48)
        {
          goto LABEL_126;
        }

        *v66 = 136446210;
        *&v66[4] = "nw_masque_handle_server_connect_response";
        v46 = "%{public}s called with null masque, no backtrace";
      }

      else
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (!os_log_type_enabled(v44, type[0]))
        {
          goto LABEL_126;
        }

        *v66 = 136446210;
        *&v66[4] = "nw_masque_handle_server_connect_response";
        v46 = "%{public}s called with null masque, backtrace limit exceeded";
      }
    }

LABEL_125:
    _os_log_impl(&dword_181A37000, v44, v45, v46, v66, 0xCu);
    goto LABEL_126;
  }

  v33 = *(a1 + 40);
  if (!v33 || (*(v33 + 505) & 1) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v5 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 40);
      v35 = v34 == 0;
      if (v34)
      {
        v36 = (v34 + 507);
      }

      else
      {
        v36 = "";
      }

      v37 = " ";
      if (v35)
      {
        v37 = "";
      }

      *buf = 136446466;
      *&buf[4] = v36;
      *&buf[12] = 2080;
      *&buf[14] = v37;
      v10 = "%{public}s%sReceived unexpected input frame without HTTP metadata";
      goto LABEL_58;
    }
  }

LABEL_84:
  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_protocol_masque_listener_read_input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v40 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v90[0]) = 0;
    if (!__nwlog_fault(v40, type, v90))
    {
      goto LABEL_130;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v90[0]) != 1)
      {
        v41 = __nwlog_obj();
        v42 = type[0];
        if (!os_log_type_enabled(v41, type[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        v43 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_129;
      }

      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type[0];
      v49 = os_log_type_enabled(v41, type[0]);
      if (!backtrace_string)
      {
        if (!v49)
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        v43 = "%{public}s called with null masque, no backtrace";
        goto LABEL_129;
      }

      if (v49)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v50 = "%{public}s called with null masque, dumping backtrace:%{public}s";
LABEL_92:
        _os_log_impl(&dword_181A37000, v41, v42, v50, buf, 0x16u);
      }

LABEL_93:
      free(backtrace_string);
      goto LABEL_130;
    }

    v41 = __nwlog_obj();
    v42 = type[0];
    if (!os_log_type_enabled(v41, type[0]))
    {
      goto LABEL_130;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v43 = "%{public}s called with null masque";
LABEL_129:
    _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
LABEL_130:
    if (v40)
    {
      free(v40);
    }

    return 0;
  }

  if ((*(a1 + 503) & 0x10) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v40 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v90[0]) = 0;
    if (!__nwlog_fault(v40, type, v90))
    {
      goto LABEL_130;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type[0];
      if (!os_log_type_enabled(v41, type[0]))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_read_input";
      v43 = "%{public}s called with null (masque->listen_udp)";
      goto LABEL_129;
    }

    if (LOBYTE(v90[0]) != 1)
    {
      v41 = __nwlog_obj();
      v42 = type[0];
      if (!os_log_type_enabled(v41, type[0]))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_read_input";
      v43 = "%{public}s called with null (masque->listen_udp), backtrace limit exceeded";
      goto LABEL_129;
    }

    backtrace_string = __nw_create_backtrace_string();
    v41 = __nwlog_obj();
    v42 = type[0];
    v54 = os_log_type_enabled(v41, type[0]);
    if (backtrace_string)
    {
      if (v54)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_masque_listener_read_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v50 = "%{public}s called with null (masque->listen_udp), dumping backtrace:%{public}s";
        goto LABEL_92;
      }

      goto LABEL_93;
    }

    if (!v54)
    {
      goto LABEL_130;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_read_input";
    v43 = "%{public}s called with null (masque->listen_udp), no backtrace";
    goto LABEL_129;
  }

  if (*(a1 + 484) != 4)
  {
    return 0;
  }

  v7 = a6;
  v90[0] = 0;
  v90[1] = v90;
  v10 = *(a1 - 64);
  v74 = a5;
  if (v10)
  {
    v11 = a1 - 96;
    v12 = *(v10 + 40);
    v13 = *(a1 - 64);
    if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = *(v10 + 64)) != 0)
    {
      v15 = *(v13 + 88);
      v14 = 0;
      if (v15)
      {
        *(v13 + 88) = v15 + 1;
      }
    }

    else
    {
      v14 = 1;
    }

    v16 = *(a1 - 56);
    v17 = a1 - 96;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *(a1 - 32)) != 0)
    {
      v20 = *(v17 + 88);
      if (v20)
      {
        v18 = 0;
        *(v17 + 88) = v20 + 1;
        v19 = *(v10 + 24);
        if (!v19)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v10 + 24);
        if (!v19)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v10 + 24);
      if (!v19)
      {
        goto LABEL_72;
      }
    }

    v21 = *(v19 + 80);
    if (v21)
    {
      v21(v10, a1 - 96, a4, a5, a6, v90);
      goto LABEL_22;
    }

LABEL_72:
    __nwlog_obj();
    v44 = *(v10 + 16);
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_get_input_frames";
    if (!v44)
    {
      v44 = "invalid";
    }

    *&buf[12] = 2082;
    *&buf[14] = v44;
    *&buf[22] = 2048;
    v93 = v10;
    v45 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v91 = 0;
    v73 = v45;
    if (!__nwlog_fault(v45, type, &v91))
    {
      goto LABEL_117;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v71, type[0]))
      {
        goto LABEL_117;
      }

      v46 = *(v10 + 16);
      if (!v46)
      {
        v46 = "invalid";
      }

      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v46;
      *&buf[22] = 2048;
      v93 = v10;
      v47 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
    }

    else
    {
      if (v91 == 1)
      {
        v72 = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        v68 = type[0];
        v55 = os_log_type_enabled(loga, type[0]);
        v56 = v72;
        if (v72)
        {
          if (v55)
          {
            v57 = *(v10 + 16);
            if (!v57)
            {
              v57 = "invalid";
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v57;
            *&buf[22] = 2048;
            v93 = v10;
            v94 = 2082;
            v95 = v72;
            _os_log_impl(&dword_181A37000, loga, v68, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
            v56 = v72;
          }

          free(v56);
          goto LABEL_117;
        }

        if (!v55)
        {
LABEL_117:
          if (v73)
          {
            free(v73);
          }

LABEL_22:
          if ((v18 & 1) == 0)
          {
            v22 = *(a1 - 56);
            if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v11 = *(a1 - 32)) != 0)
            {
              v23 = *(v11 + 88);
              if (v23)
              {
                v24 = v23 - 1;
                *(v11 + 88) = v24;
                if (!v24)
                {
                  v25 = *(v11 + 64);
                  if (v25)
                  {
                    *(v11 + 64) = 0;
                    v25[2](v25);
                    _Block_release(v25);
                  }

                  if (*(v11 + 72))
                  {
                    v26 = *(v11 + 64);
                    if (v26)
                    {
                      _Block_release(v26);
                    }
                  }

                  free(v11);
                }
              }
            }
          }

          if ((v14 & 1) == 0)
          {
            v27 = *(v10 + 40);
            if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v10 + 64)) != 0)
            {
              v28 = *(v10 + 88);
              if (v28)
              {
                v29 = v28 - 1;
                *(v10 + 88) = v29;
                if (!v29)
                {
                  v30 = *(v10 + 64);
                  if (v30)
                  {
                    *(v10 + 64) = 0;
                    v30[2](v30);
                    _Block_release(v30);
                  }

                  if (*(v10 + 72))
                  {
                    v31 = *(v10 + 64);
                    if (v31)
                    {
                      _Block_release(v31);
                    }
                  }

                  goto LABEL_45;
                }
              }
            }
          }

          goto LABEL_46;
        }

        v67 = *(v10 + 16);
        if (!v67)
        {
          v67 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v67;
        *&buf[22] = 2048;
        v93 = v10;
        v47 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
        v63 = loga;
        v64 = v68;
LABEL_116:
        _os_log_impl(&dword_181A37000, v63, v64, v47, buf, 0x20u);
        goto LABEL_117;
      }

      v71 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v71, type[0]))
      {
        goto LABEL_117;
      }

      v62 = *(v10 + 16);
      if (!v62)
      {
        v62 = "invalid";
      }

      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v62;
      *&buf[22] = 2048;
      v93 = v10;
      v47 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
    }

    v63 = v71;
    v64 = log;
    goto LABEL_116;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_protocol_get_input_frames";
  v10 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v91 = 0;
  if (__nwlog_fault(v10, type, &v91))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_input_frames";
      v53 = "%{public}s called with null protocol";
    }

    else
    {
      if (v91 == 1)
      {
        v58 = __nw_create_backtrace_string();
        v59 = __nwlog_obj();
        v60 = type[0];
        v61 = os_log_type_enabled(v59, type[0]);
        if (v58)
        {
          if (v61)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v58;
            _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v58);
          if (v10)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        if (!v61)
        {
          goto LABEL_123;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        v53 = "%{public}s called with null protocol, no backtrace";
        v65 = v59;
        v66 = v60;
        goto LABEL_122;
      }

      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_123;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_input_frames";
      v53 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    v65 = v51;
    v66 = v52;
LABEL_122:
    _os_log_impl(&dword_181A37000, v65, v66, v53, buf, 0xCu);
  }

LABEL_123:
  if (v10)
  {
LABEL_45:
    free(v10);
  }

LABEL_46:
  if (!v90[0])
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LOBYTE(v93) = 0;
  *type = 0;
  v87 = type;
  v88 = 0x2000000000;
  v89 = 0;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v32 = nw_protocol_copy_http_definition_http_definition;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 0x40000000;
  v77 = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke;
  v78 = &unk_1E6A2FC28;
  v81 = v32;
  v82 = a1;
  v83 = v90;
  v84 = a2;
  v85 = a3;
  v79 = type;
  v80 = buf;
  v33 = v90[0];
  do
  {
    if (!v33)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = (v77)(v76);
    v33 = v34;
  }

  while ((v35 & 1) != 0);
  if (v32)
  {
    os_release(v32);
  }

  if (*(*&buf[8] + 24) == 1)
  {
    v36 = *(a1 + 464);
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 0x40000000;
    v75[2] = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_148;
    v75[3] = &__block_descriptor_tmp_149;
    v75[4] = a1;
    nw_hash_table_apply(v36, v75);
  }

  if (a2)
  {
    v37 = *(v87 + 6);
    if (!v37)
    {
      if (*(*&buf[8] + 24) == 1 && *(a2 + 32))
      {
        v37 = nw_frame_array_fill_from_pending_array((a2 + 32), a3, v74, v7);
      }

      else
      {
        v37 = 0;
      }
    }
  }

  else
  {
    v37 = *(v87 + 6);
  }

  v38 = v37;
  _Block_object_dispose(type, 8);
  _Block_object_dispose(buf, 8);
  return v38;
}

uint64_t ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_copy_metadata_for_protocol(a2, *(a1 + 48));
  if (v4)
  {
    v5 = v4;
    if (nw_http_metadata_is_capsule(v4))
    {
      v6 = *(a1 + 56);
      if (!v6 || (*(v6 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v7 = gprivacy_proxyLogObj;
        v8 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO);
        v6 = *(a1 + 56);
        if (v8)
        {
          v9 = (v6 + 507);
          v10 = "";
          if (v6)
          {
            v10 = " ";
          }

          else
          {
            v9 = "";
          }

          *buf = 136446466;
          *v88 = v9;
          *&v88[8] = 2080;
          *&v88[10] = v10;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s%sReceived HTTP Capsule for listener", buf, 0x16u);
          v6 = *(a1 + 56);
        }
      }

      nw_masque_handle_capsule(v6, v5);
      v11 = (*(a1 + 64) + 8);
      v12 = *(a2 + 32);
      v13 = *(a2 + 40);
      if (v12)
      {
        v11 = (v12 + 40);
      }

      *v11 = v13;
      *v13 = v12;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      nw_frame_finalize(a2);
    }

    os_release(v5);
    return 1;
  }

  v86 = 0;
  v14 = nw_frame_unclaimed_bytes(a2, &v86);
  v15 = (*(a1 + 64) + 8);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  if (v16)
  {
    v15 = (v16 + 40);
  }

  *v15 = v17;
  *v17 = v16;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (!v86)
  {
    v23 = *(a1 + 56);
    if (v23 && (*(v23 + 505) & 1) != 0)
    {
      goto LABEL_70;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v24 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    v25 = *(a1 + 56);
    v26 = "";
    v27 = v25 == 0;
    if (v25)
    {
      v28 = (v25 + 507);
    }

    else
    {
      v28 = "";
    }

    *buf = 136446722;
    if (!v27)
    {
      v26 = " ";
    }

    *v88 = v28;
    *&v88[8] = 2080;
    *&v88[10] = v26;
    *&v88[18] = 1024;
    *&v88[20] = v86;
    v29 = "%{public}s%sReceived datagram is too short (length %u)";
LABEL_68:
    v50 = buf;
LABEL_69:
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, v29, v50, 0x1Cu);
    goto LABEL_70;
  }

  v18 = *v14;
  if (v18 != 6)
  {
    if (v18 == 4)
    {
      *&__src[8] = 0;
      if (v86 > 6)
      {
        *__src = 528;
        *&__src[4] = *(v14 + 1);
        *&__src[2] = *(v14 + 5);
        address = _nw_endpoint_create_address(__src);
        v21 = a2;
        v22 = 7;
        goto LABEL_36;
      }

      v45 = *(a1 + 56);
      if (v45 && (*(v45 + 505) & 1) != 0)
      {
        goto LABEL_70;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v24 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
LABEL_70:
        nw_frame_finalize(a2);
        return 1;
      }

      v46 = *(a1 + 56);
      v47 = "";
      v48 = v46 == 0;
      if (v46)
      {
        v49 = (v46 + 507);
      }

      else
      {
        v49 = "";
      }

      *buf = 136446722;
      if (!v48)
      {
        v47 = " ";
      }

      *v88 = v49;
      *&v88[8] = 2080;
      *&v88[10] = v47;
      *&v88[18] = 1024;
      *&v88[20] = v86;
      v29 = "%{public}s%sReceived datagram is too short for IPv4 (length %u)";
    }

    else
    {
      v40 = *(a1 + 56);
      if (v40 && (*(v40 + 505) & 1) != 0)
      {
        goto LABEL_70;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v24 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_70;
      }

      v41 = *(a1 + 56);
      v42 = v41 == 0;
      if (v41)
      {
        v43 = (v41 + 507);
      }

      else
      {
        v43 = "";
      }

      *buf = 136446722;
      *v88 = v43;
      v44 = " ";
      if (v42)
      {
        v44 = "";
      }

      *&v88[8] = 2080;
      *&v88[10] = v44;
      *&v88[18] = 1024;
      *&v88[20] = v18;
      v29 = "%{public}s%sReceived datagram with unsupported IP version %u";
    }

    goto LABEL_68;
  }

  memset(v88, 0, 24);
  if (v86 <= 0x12)
  {
    v51 = *(a1 + 56);
    if (v51 && (*(v51 + 505) & 1) != 0)
    {
      goto LABEL_70;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v24 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    v52 = *(a1 + 56);
    v53 = "";
    v54 = v52 == 0;
    if (v52)
    {
      v55 = (v52 + 507);
    }

    else
    {
      v55 = "";
    }

    *__src = 136446722;
    if (!v54)
    {
      v53 = " ";
    }

    *&__src[4] = v55;
    *&__src[12] = 2080;
    *&__src[14] = v53;
    *&__src[22] = 1024;
    v92 = v86;
    v29 = "%{public}s%sReceived datagram is too short for IPv6 (length %u)";
    v50 = __src;
    goto LABEL_69;
  }

  *buf = 7708;
  *&v88[4] = *(v14 + 1);
  *&buf[2] = *(v14 + 17);
  address = _nw_endpoint_create_address(buf);
  v21 = a2;
  v22 = 19;
LABEL_36:
  nw_frame_claim(v21, v19, v22, 0);
  *__src = 0;
  *&__src[8] = __src;
  *&__src[16] = 0x2000000000;
  LOBYTE(v92) = 0;
  v30 = *(a1 + 56);
  v31 = *(v30 + 464);
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 0x40000000;
  v80[2] = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_143;
  v80[3] = &unk_1E6A2FBD8;
  v80[4] = __src;
  v83 = *(a1 + 72);
  v82 = address;
  v84 = a2;
  v85 = v30;
  v81 = *(a1 + 32);
  nw_hash_table_apply(v31, v80);
  if ((*(*&__src[8] + 24) & 1) == 0)
  {
    v32 = *(a1 + 56);
    v33 = *(v32 + 424);
    if (v33 && (v34 = *v33) != 0 && *v34)
    {
      if ((*(v32 + 505) & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v74 = gprivacy_proxyLogObj;
        v75 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
        v32 = *(a1 + 56);
        if (v75)
        {
          v76 = v32 == 0;
          if (v32)
          {
            v77 = (v32 + 507);
          }

          else
          {
            v77 = "";
          }

          *buf = 136446978;
          *v88 = "nw_protocol_masque_listener_read_input_block_invoke";
          *&v88[8] = 2082;
          *&v88[10] = v77;
          v78 = " ";
          if (v76)
          {
            v78 = "";
          }

          *&v88[18] = 2080;
          *&v88[20] = v78;
          v89 = 2112;
          v90 = address;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound new frame for %@, creating a new flow", buf, 0x2Au);
          v32 = *(a1 + 56);
        }
      }

      v35 = _nw_parameters_copy(*(v32 + 304));
      v36 = (***(*(a1 + 56) + 424))(*(*(a1 + 56) + 424), address, v35);
      if (v35)
      {
        os_release(v35);
      }

      if (v36)
      {
        *(*&__src[8] + 24) = 0;
        v37 = *(a1 + 56);
        v38 = *(v37 + 464);
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 0x40000000;
        v79[2] = ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_145;
        v79[3] = &unk_1E6A2FC00;
        v79[6] = address;
        v79[7] = a2;
        v79[8] = v37;
        v39 = *(a1 + 40);
        v79[4] = __src;
        v79[5] = v39;
        nw_hash_table_apply(v38, v79);
        goto LABEL_104;
      }

      v62 = *(a1 + 56);
      if (v62 && (*(v62 + 505) & 1) != 0)
      {
        goto LABEL_104;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v56 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_104;
      }

      v63 = *(a1 + 56);
      v64 = v63 == 0;
      if (v63)
      {
        v65 = (v63 + 507);
      }

      else
      {
        v65 = "";
      }

      v66 = " ";
      if (v64)
      {
        v66 = "";
      }

      *buf = 136446466;
      *v88 = v65;
      *&v88[8] = 2080;
      *&v88[10] = v66;
      v61 = "%{public}s%sFailed to accept new flow";
    }

    else
    {
      if (*(v32 + 505))
      {
        goto LABEL_104;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v56 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_104;
      }

      v57 = *(a1 + 56);
      v58 = v57 == 0;
      if (v57)
      {
        v59 = (v57 + 507);
      }

      else
      {
        v59 = "";
      }

      v60 = " ";
      if (v58)
      {
        v60 = "";
      }

      *buf = 136446466;
      *v88 = v59;
      *&v88[8] = 2080;
      *&v88[10] = v60;
      v61 = "%{public}s%sReceived datagram for new flow, but no listen protocol is able to receive the new flow";
    }

    _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_ERROR, v61, buf, 0x16u);
  }

LABEL_104:
  if ((*(*&__src[8] + 24) & 1) == 0)
  {
    v67 = *(a1 + 56);
    if (!v67 || (*(v67 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v68 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v69 = *(a1 + 56);
        v70 = v69 == 0;
        if (v69)
        {
          v71 = (v69 + 507);
        }

        else
        {
          v71 = "";
        }

        v72 = " ";
        if (v70)
        {
          v72 = "";
        }

        *buf = 136446466;
        *v88 = v71;
        *&v88[8] = 2080;
        *&v88[10] = v72;
        _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to find a flow to accept inbound packet, dropping", buf, 0x16u);
      }
    }

    nw_frame_finalize(a2);
  }

  if (address)
  {
    os_release(address);
  }

  _Block_object_dispose(__src, 8);
  return 1;
}

uint64_t ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_148(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*nw_hash_node_get_extra(a2))
  {
    return 1;
  }

  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v4 = *(object + 24);
    if (v4)
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        v5();
        return 1;
      }
    }

    v7 = object;
    __nwlog_obj();
    v8 = v7;
    v9 = *(v7 + 16);
    if (!v9)
    {
      v9 = "invalid";
    }
  }

  else
  {
    v8 = 0;
    __nwlog_obj();
    v9 = "invalid";
  }

  *buf = 136446466;
  v23 = "nw_protocol_masque_listener_read_input_block_invoke";
  v24 = 2082;
  v25 = v9;
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v10, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_37;
      }

      v13 = "invalid";
      if (v8 && *(v8 + 16))
      {
        v13 = *(v8 + 16);
      }

      *buf = 136446466;
      v23 = "nw_protocol_masque_listener_read_input_block_invoke";
      v24 = 2082;
      v25 = v13;
      v14 = "%{public}s protocol %{public}s has invalid input_available callback";
      goto LABEL_36;
    }

    if (v20 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_37;
      }

      v18 = "invalid";
      if (v8 && *(v8 + 16))
      {
        v18 = *(v8 + 16);
      }

      *buf = 136446466;
      v23 = "nw_protocol_masque_listener_read_input_block_invoke";
      v24 = 2082;
      v25 = v18;
      v14 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v16 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (v16)
      {
        v17 = "invalid";
        if (v8 && *(v8 + 16))
        {
          v17 = *(v8 + 16);
        }

        *buf = 136446722;
        v23 = "nw_protocol_masque_listener_read_input_block_invoke";
        v24 = 2082;
        v25 = v17;
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_37;
    }

    if (v16)
    {
      v19 = "invalid";
      if (v8 && *(v8 + 16))
      {
        v19 = *(v8 + 16);
      }

      *buf = 136446466;
      v23 = "nw_protocol_masque_listener_read_input_block_invoke";
      v24 = 2082;
      v25 = v19;
      v14 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
LABEL_36:
      _os_log_impl(&dword_181A37000, v11, v12, v14, buf, 0x16u);
    }
  }

LABEL_37:
  if (v10)
  {
    free(v10);
  }

  return 1;
}

BOOL ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_143(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v5 = *(extra + 16);
  if (v5)
  {
    v6 = extra;
    if (nw_endpoint_is_equal(*(a1 + 56), v5, 0))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      if (*(a1 + 64) == a2)
      {
        v10 = *(a1 + 72);
        v11 = *(a1 + 80);
        *(v11 + 32) = 0;
        v12 = *(v10 + 8);
        *(v11 + 40) = v12;
        *v12 = v11;
        *(v10 + 8) = v11 + 32;
        v13 = *(a1 + 88);
        if ((!v13 || (*(v13 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v20 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v21 = *(a1 + 88);
            v22 = "";
            v23 = v21 == 0;
            if (v21)
            {
              v24 = (v21 + 507);
            }

            else
            {
              v24 = "";
            }

            v25 = 136446722;
            v26 = "nw_protocol_masque_listener_read_input_block_invoke";
            if (!v23)
            {
              v22 = " ";
            }

            v27 = 2082;
            v28 = v24;
            v29 = 2080;
            v30 = v22;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound frame matching remote address", &v25, 0x20u);
          }
        }

        ++*(*(*(a1 + 40) + 8) + 24);
      }

      else
      {
        v7 = *(a1 + 80);
        *(v7 + 32) = 0;
        v8 = *(v6 + 8);
        *(v7 + 40) = v8;
        *v8 = v7;
        *(v6 + 8) = v7 + 32;
        v9 = *(a1 + 88);
        if ((!v9 || (*(v9 + 505) & 1) == 0) && gLogDatapath == 1)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v15 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(a1 + 88);
            v17 = "";
            v18 = v16 == 0;
            if (v16)
            {
              v19 = (v16 + 507);
            }

            else
            {
              v19 = "";
            }

            v25 = 136446722;
            v26 = "nw_protocol_masque_listener_read_input_block_invoke";
            if (!v18)
            {
              v17 = " ";
            }

            v27 = 2082;
            v28 = v19;
            v29 = 2080;
            v30 = v17;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound frame matching remote address, pending", &v25, 0x20u);
          }
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

BOOL ___ZL38nw_protocol_masque_listener_read_inputP9nw_masqueP12nw_hash_nodeP16nw_frame_array_sjjj_block_invoke_145(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v4 = *(extra + 16);
  if (v4)
  {
    v5 = extra;
    if (nw_endpoint_is_equal(*(a1 + 48), v4, 0))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v7 = *(a1 + 56);
      v6 = *(a1 + 64);
      *(v7 + 32) = 0;
      v8 = *(v5 + 8);
      *(v7 + 40) = v8;
      *v8 = v7;
      *(v5 + 8) = v7 + 32;
      if ((!v6 || (*(v6 + 505) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v10 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 64);
          v12 = "";
          v13 = v11 == 0;
          if (v11)
          {
            v14 = (v11 + 507);
          }

          else
          {
            v14 = "";
          }

          v15 = 136446722;
          v16 = "nw_protocol_masque_listener_read_input_block_invoke";
          if (!v13)
          {
            v12 = " ";
          }

          v17 = 2082;
          v18 = v14;
          v19 = 2080;
          v20 = v12;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFound new flow matching remote address, pending", &v15, 0x20u);
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

unint64_t ___ZL40nw_masque_handle_server_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke(unint64_t result, char *__s)
{
  if (__s)
  {
    v3 = result;
    result = strlen(__s);
    if (result <= 7)
    {
      *(*(v3[4] + 8) + 24) = 1;
      result = strcmp((v3[6] + 591), __s);
      *(*(v3[5] + 8) + 24) = result == 0;
    }
  }

  return result;
}

void nw_masque_handle_connect_response(uint64_t a1, void *a2)
{
  v182 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v169 = "nw_masque_handle_connect_response";
    v102 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v156) = 0;
    if (!__nwlog_fault(v102, type, &v156))
    {
      goto LABEL_297;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v156 != 1)
      {
        v103 = __nwlog_obj();
        v104 = type[0];
        if (!os_log_type_enabled(v103, type[0]))
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v169 = "nw_masque_handle_connect_response";
        v105 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_296;
      }

      backtrace_string = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v104 = type[0];
      v107 = os_log_type_enabled(v103, type[0]);
      if (!backtrace_string)
      {
        if (!v107)
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v169 = "nw_masque_handle_connect_response";
        v105 = "%{public}s called with null masque, no backtrace";
        goto LABEL_296;
      }

      if (v107)
      {
        *buf = 136446466;
        v169 = "nw_masque_handle_connect_response";
        v170 = 2082;
        v171 = backtrace_string;
        _os_log_impl(&dword_181A37000, v103, v104, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_297;
    }

    v103 = __nwlog_obj();
    v104 = type[0];
    if (!os_log_type_enabled(v103, type[0]))
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v169 = "nw_masque_handle_connect_response";
    v105 = "%{public}s called with null masque";
LABEL_296:
    _os_log_impl(&dword_181A37000, v103, v104, v105, buf, 0xCu);
    goto LABEL_297;
  }

  if (nw_protocol_metadata_is_http(a2))
  {
    v4 = nw_http_metadata_copy_response(a2);
    if (v4)
    {
      v5 = v4;
      status_code = _nw_http_response_get_status_code(v5);

      if ((status_code - 200) <= 0x63)
      {
        v7 = (a1 + 503);
        v8 = *(a1 + 503);
        if ((v8 & 8) != 0)
        {
          v166[0] = MEMORY[0x1E69E9820];
          v166[1] = 0x40000000;
          v166[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke;
          v166[3] = &__block_descriptor_tmp_151;
          v166[4] = a1;
          v9 = v5;
          v10 = v166;
          _nw_http_fields_access_value_by_name(v9, "Datagram-Flow-Id", v10);

          v11 = v9;
          LODWORD(v10) = _nw_http_fields_have_field_with_name(v11, "Client-Connection-Id");

          if (v10)
          {
            v12 = *v7;
            *v7 |= 0x100080u;
            if ((v12 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v13 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                *buf = 136446466;
                v169 = (a1 + 507);
                v170 = 2080;
                v171 = " ";
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s%sReceived acked client CID, server supports forwarding", buf, 0x16u);
              }
            }
          }

          v165[0] = MEMORY[0x1E69E9820];
          v165[1] = 0x40000000;
          v165[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_152;
          v165[3] = &__block_descriptor_tmp_153;
          v165[4] = a1;
          v14 = v11;
          v15 = v165;
          _nw_http_fields_access_value_by_name(v14, "Proxy-QUIC-Forwarding", v15);

          if (*(a1 + 480) != 1)
          {
            if ((*v7 & 0x40000) == 0)
            {
LABEL_32:
              *type = 0;
              v161 = type;
              v162 = 0x2000000000;
              v163 = 0;
              v156 = 0;
              v157 = &v156;
              v158 = 0x2000000000;
              v159 = 0;
              v152 = 0;
              v153 = &v152;
              v154 = 0x2000000000;
              v155 = 0;
              v148 = 0;
              v149 = &v148;
              v150 = 0x2000000000;
              v151 = 0;
              v144 = 0;
              v145 = &v144;
              v146 = 0x2000000000;
              v147 = 0;
              v143[0] = MEMORY[0x1E69E9820];
              v143[1] = 0x40000000;
              v143[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_2;
              v143[3] = &unk_1E6A2FCF8;
              v143[4] = type;
              v143[5] = &v156;
              v143[7] = &v144;
              v143[8] = a1;
              v143[6] = &v148;
              v25 = v5;
              v26 = v143;
              _nw_http_fields_access_value_by_name(v25, "Proxy-Status", v26);

              v142[0] = MEMORY[0x1E69E9820];
              v142[1] = 0x40000000;
              v142[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_3;
              v142[3] = &__block_descriptor_tmp_159;
              v142[4] = a1;
              v27 = v25;
              v28 = v142;
              _nw_http_fields_access_value_by_name(v27, "Client-Geohash", v28);

              v141[0] = MEMORY[0x1E69E9820];
              v141[1] = 0x40000000;
              v141[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_4;
              v141[3] = &unk_1E6A2FD40;
              v141[4] = &v152;
              v141[5] = a1;
              v29 = v27;
              v30 = v141;
              _nw_http_fields_access_value_by_name(v29, "Proxy-Config-Epoch", v30);

              if (v149[3] && (*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v116 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v117 = v149[3];
                  *buf = 136446978;
                  v169 = "nw_masque_handle_connect_response";
                  v170 = 2082;
                  v171 = (a1 + 507);
                  v172 = 2080;
                  *v173 = " ";
                  *&v173[8] = 2112;
                  *&v173[10] = v117;
                  _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived next hop: %@", buf, 0x2Au);
                }
              }

              if (v145[3] && (*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v118 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v119 = v145[3];
                  *buf = 136446978;
                  v169 = "nw_masque_handle_connect_response";
                  v170 = 2082;
                  v171 = (a1 + 507);
                  v172 = 2080;
                  *v173 = " ";
                  *&v173[8] = 2112;
                  *&v173[10] = v119;
                  _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived next hop aliases: %@", buf, 0x2Au);
                }
              }

              v31 = *(a1 + 296);
              if (v31)
              {
                v32 = v145[3];
                v33 = v149[3];
                if (v32)
                {
                  if (v33)
                  {
                    _nw_array_append(v145[3], v149[3]);
                    v31 = *(a1 + 296);
                    v32 = v145[3];
                  }

                  nw_endpoint_set_cname_array(v31, v32);
                }

                else
                {
                  if (!v33)
                  {
                    goto LABEL_99;
                  }

                  v34 = _nw_array_create();
                  v35 = v34;
                  if (v34 && (v36 = v149[3]) != 0)
                  {
                    _nw_array_append(v34, v36);
                    nw_endpoint_set_cname_array(*(a1 + 296), v35);
                  }

                  else
                  {
                    nw_endpoint_set_cname_array(*(a1 + 296), v34);
                    if (!v35)
                    {
                      goto LABEL_99;
                    }
                  }

                  os_release(v35);
                }
              }

LABEL_99:
              v59 = v149[3];
              if (v59)
              {
                os_release(v59);
                v149[3] = 0;
              }

              v60 = v145[3];
              if (v60)
              {
                os_release(v60);
                v145[3] = 0;
              }

              if (*(v161 + 24) != 1)
              {
                goto LABEL_112;
              }

              v61 = *(a1 + 312);
              if (v61)
              {
                if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
                {
                  dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
                }

                if (nw_protocol_masque_get_definition(void)::definition)
                {
                  v62 = os_retain(nw_protocol_masque_get_definition(void)::definition);
                }

                else
                {
                  v62 = 0;
                }

                globals_for_protocol = nw_context_get_globals_for_protocol(v61, v62);
                if (globals_for_protocol)
                {
                  *(globals_for_protocol + 7) = 0;
                  *(globals_for_protocol + 4) = 0;
                  goto LABEL_112;
                }

                __nwlog_obj();
                *buf = 136446210;
                v169 = "nw_masque_clear_cached_geohash_value";
                v122 = _os_log_send_and_compose_impl();
                v137[0] = OS_LOG_TYPE_ERROR;
                v167 = 0;
                if (__nwlog_fault(v122, v137, &v167))
                {
                  if (v137[0] == OS_LOG_TYPE_FAULT)
                  {
                    v123 = __nwlog_obj();
                    v124 = v137[0];
                    if (!os_log_type_enabled(v123, v137[0]))
                    {
                      goto LABEL_320;
                    }

                    *buf = 136446210;
                    v169 = "nw_masque_clear_cached_geohash_value";
                    v125 = "%{public}s called with null globals";
                    goto LABEL_319;
                  }

                  if (v167 != 1)
                  {
                    v123 = __nwlog_obj();
                    v124 = v137[0];
                    if (!os_log_type_enabled(v123, v137[0]))
                    {
                      goto LABEL_320;
                    }

                    *buf = 136446210;
                    v169 = "nw_masque_clear_cached_geohash_value";
                    v125 = "%{public}s called with null globals, backtrace limit exceeded";
                    goto LABEL_319;
                  }

                  v130 = __nw_create_backtrace_string();
                  v123 = __nwlog_obj();
                  v124 = v137[0];
                  v131 = os_log_type_enabled(v123, v137[0]);
                  if (!v130)
                  {
                    if (!v131)
                    {
                      goto LABEL_320;
                    }

                    *buf = 136446210;
                    v169 = "nw_masque_clear_cached_geohash_value";
                    v125 = "%{public}s called with null globals, no backtrace";
                    goto LABEL_319;
                  }

                  if (v131)
                  {
                    *buf = 136446466;
                    v169 = "nw_masque_clear_cached_geohash_value";
                    v170 = 2082;
                    v171 = v130;
                    _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null globals, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v130);
                  if (v122)
                  {
LABEL_321:
                    free(v122);
                  }

LABEL_112:
                  if (*(v157 + 24) == 1)
                  {
                    nw_masque_report_error_to_proxy_agent(a1, 1303);
                  }

                  v64 = *(v153 + 6);
                  if (!v64)
                  {
                    goto LABEL_133;
                  }

                  v65 = *(a1 + 312);
                  if (v65)
                  {
                    if (v64 - 0x10000 < 0xFFFF0001 || !*(a1 + 500))
                    {
                      goto LABEL_133;
                    }

                    if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
                    {
                      dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
                    }

                    if (nw_protocol_masque_get_definition(void)::definition)
                    {
                      v66 = os_retain(nw_protocol_masque_get_definition(void)::definition);
                    }

                    else
                    {
                      v66 = 0;
                    }

                    v67 = nw_context_get_globals_for_protocol(v65, v66);
                    if (v67)
                    {
                      if (*v67 && v64 > *v67 && v64 > v67[1])
                      {
                        v67[1] = v64;
                        if ((*(a1 + 505) & 1) == 0)
                        {
                          if (__nwlog_privacy_proxy_log::onceToken != -1)
                          {
                            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                          }

                          v68 = gprivacy_proxyLogObj;
                          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136446722;
                            v169 = (a1 + 507);
                            v170 = 2080;
                            v171 = " ";
                            v172 = 1024;
                            *v173 = v64;
                            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_INFO, "%{public}s%sReporting new epoch value: %u", buf, 0x1Cu);
                          }
                        }

                        nw_masque_report_error_to_proxy_agent(a1, v64 | 0xFF0000);
                      }

                      goto LABEL_133;
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    v169 = "nw_masque_handle_received_epoch_value";
                    v112 = _os_log_send_and_compose_impl();
                    v137[0] = OS_LOG_TYPE_ERROR;
                    v167 = 0;
                    if (__nwlog_fault(v112, v137, &v167))
                    {
                      if (v137[0] == OS_LOG_TYPE_FAULT)
                      {
                        v113 = __nwlog_obj();
                        v114 = v137[0];
                        if (!os_log_type_enabled(v113, v137[0]))
                        {
                          goto LABEL_325;
                        }

                        *buf = 136446210;
                        v169 = "nw_masque_handle_received_epoch_value";
                        v115 = "%{public}s called with null globals";
                        goto LABEL_324;
                      }

                      if (v167 != 1)
                      {
                        v113 = __nwlog_obj();
                        v114 = v137[0];
                        if (!os_log_type_enabled(v113, v137[0]))
                        {
                          goto LABEL_325;
                        }

                        *buf = 136446210;
                        v169 = "nw_masque_handle_received_epoch_value";
                        v115 = "%{public}s called with null globals, backtrace limit exceeded";
                        goto LABEL_324;
                      }

                      v132 = __nw_create_backtrace_string();
                      v113 = __nwlog_obj();
                      v114 = v137[0];
                      v133 = os_log_type_enabled(v113, v137[0]);
                      if (v132)
                      {
                        if (v133)
                        {
                          *buf = 136446466;
                          v169 = "nw_masque_handle_received_epoch_value";
                          v170 = 2082;
                          v171 = v132;
                          _os_log_impl(&dword_181A37000, v113, v114, "%{public}s called with null globals, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v132);
                        if (!v112)
                        {
                          goto LABEL_133;
                        }

LABEL_326:
                        free(v112);
LABEL_133:
                        if ((*v7 & 2) != 0 && !uuid_is_null((a1 + 256)))
                        {
                          v69 = *(a1 + 440);
                          if (v69)
                          {
                            nw_http_connection_metadata_set_cached_token(v69, 0, 0);
                          }

                          if (*(v161 + 24))
                          {
                            v70 = 1001;
                          }

                          else
                          {
                            v70 = 0;
                          }

                          nw_path_report_error_to_agent(*(a1 + 320), (a1 + 256), v70);
                        }

                        v71 = *(a1 + 272);
                        v72 = mach_continuous_time();
                        if (v72 <= 1)
                        {
                          v73 = 1;
                        }

                        else
                        {
                          v73 = v72;
                        }

                        v74 = nw_delta_nanos(v71, v73);
                        v75 = (v74 / 0xF4240);
                        if (v74 > 0xF423FFFFFFFFFLL)
                        {
                          v75 = 0xFFFFFFFFLL;
                        }

                        *(a1 + 280) = v75;
                        if ((*(a1 + 505) & 1) == 0)
                        {
                          if (__nwlog_privacy_proxy_log::onceToken != -1)
                          {
                            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                          }

                          v76 = gprivacy_proxyLogObj;
                          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
                          {
                            v77 = *(a1 + 296);
                            v78 = v77;
                            if (v77)
                            {
                              logging_description = _nw_endpoint_get_logging_description(v77);
                            }

                            else
                            {
                              logging_description = "<NULL>";
                            }

                            *buf = 136446722;
                            v169 = (a1 + 507);
                            v170 = 2080;
                            v171 = " ";
                            v172 = 2082;
                            *v173 = logging_description;
                            _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_INFO, "%{public}s%sReceived 200 OK, connected to %{public}s", buf, 0x20u);
                          }
                        }

                        if (*(a1 + 492) && (*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
                        {
                          if (__nwlog_privacy_proxy_log::onceToken != -1)
                          {
                            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                          }

                          v120 = gprivacy_proxyLogObj;
                          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                          {
                            v121 = *(a1 + 492);
                            *buf = 136446978;
                            v169 = "nw_masque_clear_reverse_proxy_state";
                            v170 = 2082;
                            v171 = (a1 + 507);
                            v172 = 2080;
                            *v173 = " ";
                            *&v173[8] = 1024;
                            *&v173[10] = v121;
                            _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sClearing reverse proxy state from %u", buf, 0x26u);
                          }
                        }

                        *(a1 + 492) = 0;
                        v80 = *(a1 - 64);
                        if (v80)
                        {
                          v81 = *(v80 + 24);
                          if (v81)
                          {
                            v82 = *(v81 + 152);
                            if (v82)
                            {
                              v83 = a1 - 96;
                              v84 = *(v80 + 40);
                              v85 = *(a1 - 64);
                              if (v84 == &nw_protocol_ref_counted_handle || v84 == &nw_protocol_ref_counted_additional_handle && (v85 = *(v80 + 64)) != 0)
                              {
                                v87 = *(v85 + 88);
                                v86 = 0;
                                if (v87)
                                {
                                  *(v85 + 88) = v87 + 1;
                                }
                              }

                              else
                              {
                                v86 = 1;
                              }

                              v88 = *(a1 - 56);
                              v89 = a1 - 96;
                              if (v88 == &nw_protocol_ref_counted_handle || v88 == &nw_protocol_ref_counted_additional_handle && (v89 = *(a1 - 32)) != 0)
                              {
                                v90 = *(v89 + 88);
                                if (v90)
                                {
                                  *(v89 + 88) = v90 + 1;
                                }

                                v82(v80, a1 - 96, 5);
                                v91 = *(a1 - 56);
                                if (v91 == &nw_protocol_ref_counted_handle || v91 == &nw_protocol_ref_counted_additional_handle && (v83 = *(a1 - 32)) != 0)
                                {
                                  v92 = *(v83 + 88);
                                  if (v92)
                                  {
                                    v93 = v92 - 1;
                                    *(v83 + 88) = v93;
                                    if (!v93)
                                    {
                                      v94 = *(v83 + 64);
                                      if (v94)
                                      {
                                        *(v83 + 64) = 0;
                                        v94[2](v94);
                                        _Block_release(v94);
                                      }

                                      if (*(v83 + 72))
                                      {
                                        v95 = *(v83 + 64);
                                        if (v95)
                                        {
                                          _Block_release(v95);
                                        }
                                      }

                                      free(v83);
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v82(v80, a1 - 96, 5);
                              }

                              if ((v86 & 1) == 0)
                              {
                                v96 = *(v80 + 40);
                                if (v96 == &nw_protocol_ref_counted_handle || v96 == &nw_protocol_ref_counted_additional_handle && (v80 = *(v80 + 64)) != 0)
                                {
                                  v97 = *(v80 + 88);
                                  if (v97)
                                  {
                                    v98 = v97 - 1;
                                    *(v80 + 88) = v98;
                                    if (!v98)
                                    {
                                      v99 = *(v80 + 64);
                                      if (v99)
                                      {
                                        *(v80 + 64) = 0;
                                        v99[2](v99);
                                        _Block_release(v99);
                                      }

                                      if (*(v80 + 72))
                                      {
                                        v100 = *(v80 + 64);
                                        if (v100)
                                        {
                                          _Block_release(v100);
                                        }
                                      }

                                      free(v80);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        nw_masque_mark_connected(a1);
                        goto LABEL_206;
                      }

                      if (v133)
                      {
                        *buf = 136446210;
                        v169 = "nw_masque_handle_received_epoch_value";
                        v115 = "%{public}s called with null globals, no backtrace";
LABEL_324:
                        _os_log_impl(&dword_181A37000, v113, v114, v115, buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    __nwlog_obj();
                    *buf = 136446210;
                    v169 = "nw_masque_handle_received_epoch_value";
                    v112 = _os_log_send_and_compose_impl();
                    v137[0] = OS_LOG_TYPE_ERROR;
                    v167 = 0;
                    if (!__nwlog_fault(v112, v137, &v167))
                    {
                      goto LABEL_325;
                    }

                    if (v137[0] == OS_LOG_TYPE_FAULT)
                    {
                      v113 = __nwlog_obj();
                      v114 = v137[0];
                      if (!os_log_type_enabled(v113, v137[0]))
                      {
                        goto LABEL_325;
                      }

                      *buf = 136446210;
                      v169 = "nw_masque_handle_received_epoch_value";
                      v115 = "%{public}s called with null masque->context";
                      goto LABEL_324;
                    }

                    if (v167 != 1)
                    {
                      v113 = __nwlog_obj();
                      v114 = v137[0];
                      if (!os_log_type_enabled(v113, v137[0]))
                      {
                        goto LABEL_325;
                      }

                      *buf = 136446210;
                      v169 = "nw_masque_handle_received_epoch_value";
                      v115 = "%{public}s called with null masque->context, backtrace limit exceeded";
                      goto LABEL_324;
                    }

                    v126 = __nw_create_backtrace_string();
                    v113 = __nwlog_obj();
                    v114 = v137[0];
                    v127 = os_log_type_enabled(v113, v137[0]);
                    if (!v126)
                    {
                      if (!v127)
                      {
                        goto LABEL_325;
                      }

                      *buf = 136446210;
                      v169 = "nw_masque_handle_received_epoch_value";
                      v115 = "%{public}s called with null masque->context, no backtrace";
                      goto LABEL_324;
                    }

                    if (v127)
                    {
                      *buf = 136446466;
                      v169 = "nw_masque_handle_received_epoch_value";
                      v170 = 2082;
                      v171 = v126;
                      _os_log_impl(&dword_181A37000, v113, v114, "%{public}s called with null masque->context, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v126);
                  }

LABEL_325:
                  if (!v112)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_326;
                }
              }

              else
              {
                __nwlog_obj();
                *buf = 136446210;
                v169 = "nw_masque_clear_cached_geohash_value";
                v122 = _os_log_send_and_compose_impl();
                v137[0] = OS_LOG_TYPE_ERROR;
                v167 = 0;
                if (!__nwlog_fault(v122, v137, &v167))
                {
                  goto LABEL_320;
                }

                if (v137[0] == OS_LOG_TYPE_FAULT)
                {
                  v123 = __nwlog_obj();
                  v124 = v137[0];
                  if (!os_log_type_enabled(v123, v137[0]))
                  {
                    goto LABEL_320;
                  }

                  *buf = 136446210;
                  v169 = "nw_masque_clear_cached_geohash_value";
                  v125 = "%{public}s called with null masque->context";
LABEL_319:
                  _os_log_impl(&dword_181A37000, v123, v124, v125, buf, 0xCu);
                  goto LABEL_320;
                }

                if (v167 != 1)
                {
                  v123 = __nwlog_obj();
                  v124 = v137[0];
                  if (!os_log_type_enabled(v123, v137[0]))
                  {
                    goto LABEL_320;
                  }

                  *buf = 136446210;
                  v169 = "nw_masque_clear_cached_geohash_value";
                  v125 = "%{public}s called with null masque->context, backtrace limit exceeded";
                  goto LABEL_319;
                }

                v128 = __nw_create_backtrace_string();
                v123 = __nwlog_obj();
                v124 = v137[0];
                v129 = os_log_type_enabled(v123, v137[0]);
                if (!v128)
                {
                  if (!v129)
                  {
                    goto LABEL_320;
                  }

                  *buf = 136446210;
                  v169 = "nw_masque_clear_cached_geohash_value";
                  v125 = "%{public}s called with null masque->context, no backtrace";
                  goto LABEL_319;
                }

                if (v129)
                {
                  *buf = 136446466;
                  v169 = "nw_masque_clear_cached_geohash_value";
                  v170 = 2082;
                  v171 = v128;
                  _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null masque->context, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v128);
              }

LABEL_320:
              if (!v122)
              {
                goto LABEL_112;
              }

              goto LABEL_321;
            }

LABEL_31:
            v164[0] = MEMORY[0x1E69E9820];
            v164[1] = 0x40000000;
            v164[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_154;
            v164[3] = &__block_descriptor_tmp_155;
            v164[4] = a1;
            v23 = v5;
            v24 = v164;
            _nw_http_fields_access_value_by_name(v23, "Capsule-Protocol", v24);

            goto LABEL_32;
          }

          v8 = *v7;
          if (!*(a1 + 591))
          {
            if ((v8 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v55 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v169 = (a1 + 507);
                v170 = 2080;
                v171 = " ";
                _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s%sReceived response without datagram flow ID", buf, 0x16u);
              }
            }

            nw_masque_mark_failed_with_error(a1, 94);
            goto LABEL_207;
          }
        }

        if ((v8 & 0x40000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (!status_code)
      {
        if ((*(a1 + 505) & 1) == 0)
        {
          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v22 = gprivacy_proxyLogObj;
          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v169 = "nw_masque_handle_connect_response";
            v170 = 2082;
            v171 = (a1 + 507);
            v172 = 2080;
            *v173 = " ";
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived no response code, ignoring", buf, 0x20u);
          }
        }

        goto LABEL_207;
      }

      *type = 0;
      v161 = type;
      v162 = 0x2000000000;
      v163 = 0;
      v156 = 0;
      v157 = &v156;
      v158 = 0x2000000000;
      v159 = 0;
      v152 = 0;
      v153 = &v152;
      v154 = 0x2000000000;
      LOBYTE(v155) = 0;
      v148 = 0;
      v149 = &v148;
      v150 = 0x2000000000;
      LOBYTE(v151) = 0;
      v144 = 0;
      v145 = &v144;
      v146 = 0x2000000000;
      LOBYTE(v147) = 0;
      *v137 = 0;
      v138 = v137;
      v139 = 0x2000000000;
      v140 = 0;
      v136[0] = MEMORY[0x1E69E9820];
      v136[1] = 0x40000000;
      v136[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_161;
      v136[3] = &unk_1E6A2FD68;
      v136[4] = type;
      v136[5] = &v148;
      v136[9] = &v152;
      v136[10] = a1;
      v136[6] = v137;
      v136[7] = &v156;
      v136[8] = &v144;
      v16 = v5;
      v17 = v136;
      _nw_http_fields_access_value_by_name(v16, "Proxy-Status", v17);

      if (*(v161 + 24) == 1)
      {
        nw_masque_report_error_to_proxy_agent(a1, 1303);
      }

      if ((*(a1 + 505) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v18 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 296);
          v20 = v19;
          if (v19)
          {
            v21 = _nw_endpoint_get_logging_description(v19);
          }

          else
          {
            v21 = "<NULL>";
          }

          v37 = "";
          if (*(v145 + 24))
          {
            v38 = ", attempt to reverse proxy with certificates";
          }

          else
          {
            v38 = "";
          }

          if (*(v157 + 24))
          {
            v39 = ", unreachable through proxy";
          }

          else
          {
            v39 = "";
          }

          if (*(v153 + 24))
          {
            v40 = ", origin server failed";
          }

          else
          {
            v40 = "";
          }

          if (*(v149 + 24))
          {
            v41 = ", has received status";
          }

          else
          {
            v41 = "";
          }

          v42 = *(v138 + 6);
          *buf = 136448258;
          if (v42)
          {
            v37 = ", has dns failure reason";
          }

          v169 = (a1 + 507);
          v170 = 2080;
          v171 = " ";
          v172 = 1024;
          *v173 = status_code;
          *&v173[4] = 2082;
          *&v173[6] = v21;
          *&v173[14] = 2082;
          *&v173[16] = v38;
          v174 = 2082;
          v175 = v39;
          v176 = 2082;
          v177 = v40;
          v178 = 2082;
          v179 = v41;
          v180 = 2082;
          v181 = v37;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s%sReceived response code %u for %{public}s%{public}s%{public}s%{public}s%{public}s%{public}s", buf, 0x58u);
        }
      }

      if (*(v138 + 6))
      {
        v43 = *(a1 + 296);
        if (v43)
        {
          v44 = v43;
          _nw_endpoint_set_dns_failure_reason();
        }
      }

      v45 = (a1 + 503);
      if (status_code - 400) <= 0x63 && (v145[3])
      {
        if (!nw_http_connection_metadata_get_secondary_certificate_count(*(a1 + 440)) || (nw_masque_setup_reverse_proxy(a1) & 1) == 0)
        {
          if ((*(a1 + 505) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v47 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136446466;
              v169 = (a1 + 507);
              v170 = 2080;
              v171 = " ";
              _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s%sCONNECT response indicates that secondary certificates will be sent, waiting", buf, 0x16u);
            }
          }

          *(a1 + 492) = 1;
          v48 = *(a1 + 336);
          if (v48)
          {
            nw_queue_cancel_source(v48, v46);
          }

          v134[0] = MEMORY[0x1E69E9820];
          v134[1] = 0x40000000;
          v134[2] = ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_177;
          v134[3] = &__block_descriptor_tmp_178;
          v134[4] = a1;
          v135 = status_code;
          source = nw_queue_context_create_source(0, 2, 3, 0, v134, 0);
          *(a1 + 336) = source;
          v50 = dispatch_time(0x8000000000000000, 10000000000);
          nw_queue_set_timer_values(source, v50, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
          nw_queue_activate_source(*(a1 + 336), v51);
        }

        goto LABEL_205;
      }

      if ((status_code - 500) > 0x63)
      {
        if (status_code == 401)
        {
          if ((v149[3] & 1) == 0 && !uuid_is_null((a1 + 256)))
          {
            v54 = *(a1 + 440);
            if (v54)
            {
              nw_http_connection_metadata_mark_cached_token_failed(v54);
            }

            nw_path_report_error_to_agent(*(a1 + 320), (a1 + 256), 80);
            goto LABEL_203;
          }

          goto LABEL_96;
        }
      }

      else
      {
        if (*(v157 + 24) == 1)
        {
          v52 = a1;
          v53 = 65;
LABEL_204:
          nw_masque_mark_failed_with_error(v52, v53);
LABEL_205:
          _Block_object_dispose(v137, 8);
LABEL_206:
          _Block_object_dispose(&v144, 8);
          _Block_object_dispose(&v148, 8);
          _Block_object_dispose(&v152, 8);
          _Block_object_dispose(&v156, 8);
          _Block_object_dispose(type, 8);
LABEL_207:
          os_release(v5);
          return;
        }

        if (*(v153 + 24) == 1)
        {
          v52 = a1;
          v53 = 64;
          goto LABEL_204;
        }
      }

      if ((status_code - 400) > 0x63)
      {
        if (status_code == 504 || status_code == 502)
        {
          v56 = (*v45 & 4) == 0;
          v57 = 1207;
          v58 = 1107;
        }

        else
        {
          v56 = (*v45 & 4) == 0;
          if ((status_code - 500) > 0x63)
          {
            v57 = 1201;
            v58 = 1101;
          }

          else
          {
            v57 = 1205;
            v58 = 1105;
          }
        }

        goto LABEL_199;
      }

LABEL_96:
      v56 = (*v45 & 4) == 0;
      v57 = 1204;
      v58 = 1104;
LABEL_199:
      if (v56)
      {
        v101 = v58;
      }

      else
      {
        v101 = v57;
      }

      nw_masque_report_error_to_proxy_agent(a1, v101);
LABEL_203:
      v52 = a1;
      v53 = 61;
      goto LABEL_204;
    }

    __nwlog_obj();
    *buf = 136446210;
    v169 = "nw_masque_handle_connect_response";
    v102 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v156) = 0;
    if (__nwlog_fault(v102, type, &v156))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v103 = __nwlog_obj();
        v104 = type[0];
        if (!os_log_type_enabled(v103, type[0]))
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v169 = "nw_masque_handle_connect_response";
        v105 = "%{public}s called with null response";
        goto LABEL_296;
      }

      if (v156 != 1)
      {
        v103 = __nwlog_obj();
        v104 = type[0];
        if (!os_log_type_enabled(v103, type[0]))
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v169 = "nw_masque_handle_connect_response";
        v105 = "%{public}s called with null response, backtrace limit exceeded";
        goto LABEL_296;
      }

      v108 = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v104 = type[0];
      v111 = os_log_type_enabled(v103, type[0]);
      if (!v108)
      {
        if (!v111)
        {
          goto LABEL_297;
        }

        *buf = 136446210;
        v169 = "nw_masque_handle_connect_response";
        v105 = "%{public}s called with null response, no backtrace";
        goto LABEL_296;
      }

      if (v111)
      {
        *buf = 136446466;
        v169 = "nw_masque_handle_connect_response";
        v170 = 2082;
        v171 = v108;
        v110 = "%{public}s called with null response, dumping backtrace:%{public}s";
        goto LABEL_237;
      }

      goto LABEL_238;
    }

LABEL_297:
    if (v102)
    {
      goto LABEL_298;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v169 = "nw_masque_handle_connect_response";
  v102 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v156) = 0;
  if (!__nwlog_fault(v102, type, &v156))
  {
    goto LABEL_297;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v103 = __nwlog_obj();
    v104 = type[0];
    if (!os_log_type_enabled(v103, type[0]))
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v169 = "nw_masque_handle_connect_response";
    v105 = "%{public}s called with null nw_protocol_metadata_is_http(metadata)";
    goto LABEL_296;
  }

  if (v156 != 1)
  {
    v103 = __nwlog_obj();
    v104 = type[0];
    if (!os_log_type_enabled(v103, type[0]))
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v169 = "nw_masque_handle_connect_response";
    v105 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), backtrace limit exceeded";
    goto LABEL_296;
  }

  v108 = __nw_create_backtrace_string();
  v103 = __nwlog_obj();
  v104 = type[0];
  v109 = os_log_type_enabled(v103, type[0]);
  if (!v108)
  {
    if (!v109)
    {
      goto LABEL_297;
    }

    *buf = 136446210;
    v169 = "nw_masque_handle_connect_response";
    v105 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), no backtrace";
    goto LABEL_296;
  }

  if (v109)
  {
    *buf = 136446466;
    v169 = "nw_masque_handle_connect_response";
    v170 = 2082;
    v171 = v108;
    v110 = "%{public}s called with null nw_protocol_metadata_is_http(metadata), dumping backtrace:%{public}s";
LABEL_237:
    _os_log_impl(&dword_181A37000, v103, v104, v110, buf, 0x16u);
  }

LABEL_238:
  free(v108);
  if (v102)
  {
LABEL_298:
    free(v102);
  }
}

size_t ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke(size_t result, char *__s)
{
  if (__s)
  {
    v3 = result;
    result = strlen(__s);
    if (result <= 7)
    {
      v4 = *(v3 + 32);
      v5 = *__s;
      v4[591] = v5;
      if (v5)
      {
        v6 = __s[1];
        v4[592] = v6;
        if (v6)
        {
          v7 = __s[2];
          v4[593] = v7;
          if (v7)
          {
            v8 = __s[3];
            v4[594] = v8;
            if (v8)
            {
              v9 = __s[4];
              v4[595] = v9;
              if (v9)
              {
                v10 = __s[5];
                v4[596] = v10;
                if (v10)
                {
                  v11 = __s[6];
                  v4[597] = v11;
                  if (v11)
                  {
                    v4[598] = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_152(uint64_t a1, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && *a2 == 63 && a2[1] == 49 && !a2[2])
  {
    v2 = *(a1 + 32);
    if (!v2 || (*(v2 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v4 = gprivacy_proxyLogObj;
      v5 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO);
      v2 = *(a1 + 32);
      if (v5)
      {
        v6 = v2 == 0;
        if (v2)
        {
          v7 = (v2 + 507);
        }

        else
        {
          v7 = "";
        }

        v8 = " ";
        if (v6)
        {
          v8 = "";
        }

        v9 = 136446466;
        v10 = v7;
        v11 = 2080;
        v12 = v8;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s%sServer supports forwarding", &v9, 0x16u);
        v2 = *(a1 + 32);
      }
    }

    *(v2 + 503) |= 0x100000u;
  }
}

uint64_t ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_154(uint64_t result, _BYTE *a2)
{
  if (a2 && *a2 == 63 && a2[1] == 49)
  {
    v2 = (a2[2] == 0) << 19;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 32) + 503) = *(*(result + 32) + 503) & 0xFFF7FFFF | v2;
  return result;
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_2(void *a1, char *__s1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (__s1)
  {
    *(*(a1[4] + 8) + 24) = strstr(__s1, "invalid geohash") != 0;
    *(*(a1[5] + 8) + 24) = strstr(__s1, "expired routing") != 0;
    v4 = strlen(__s1);
    v5 = a1[8];
    if (v5)
    {
      if (*(v5 + 296))
      {
        v6 = strnstr(__s1, "next-hop=", v4);
        v7 = v6;
        if (v6)
        {
          v8 = ";";
          v9 = 10;
        }

        else
        {
          v6 = strnstr(__s1, "next-hop=", v4);
          if (!v6)
          {
            goto LABEL_38;
          }

          v8 = ";";
          v9 = 9;
          v7 = 0;
        }

        v10 = v7 != 0;
        v11 = &v6[v9];
        v12 = &__s1[v4];
        v13 = strnstr(&v6[v9], v8, v12 - &v6[v9]);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &v12[-v10];
        }

        v15 = v14 - v11;
        if (v14 > v11)
        {
          if (*v11 == 91 || (v23 = strnstr(v11, ":", v14 - v11)) != 0 && !strnstr(v23 + 1, ":", v14 - (v23 + 1)))
          {
            v62 = xmmword_182B0B7C5;
            v63 = unk_182B0B7D5;
            v64 = xmmword_182B0B7E5;
            v65 = unk_182B0B7F5;
            v58 = xmmword_182B0B785;
            v59 = unk_182B0B795;
            v60 = xmmword_182B0B7A5;
            v61 = unk_182B0B7B5;
            v54 = xmmword_182B0B745;
            v55 = unk_182B0B755;
            v56 = xmmword_182B0B765;
            v57 = unk_182B0B775;
            *__s = *"https://";
            *&__s[16] = unk_182B0B715;
            v52 = xmmword_182B0B725;
            v53 = unk_182B0B735;
            v16 = strlen(__s);
            if (v16 + v15 <= 0xFF)
            {
              memcpy(&__s[v16], v11, v15);
              url = _nw_endpoint_create_url(__s);
              if (url)
              {
                v18 = url;
                url_port = _nw_endpoint_get_url_port(v18);

                v20 = v18;
                hostname = _nw_endpoint_get_hostname(v20);

                if (!url_port)
                {
                  url_port = nw_endpoint_get_port(*(v5 + 296));
                }

                host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, url_port);
                os_release(v20);
LABEL_39:
                *(*(a1[6] + 8) + 24) = host_with_numeric_port;
                v31 = a1[8];
                if (v31)
                {
                  if (*(v31 + 296))
                  {
                    v32 = strnstr(__s1, "next-hop-aliases=", v4);
                    if (v32)
                    {
                      v33 = v32 + 18;
                      v34 = strnstr(v32 + 18, "", &__s1[v4] - (v32 + 18));
                      if (v34)
                      {
                        v35 = v34;
                        v36 = 0;
                        do
                        {
                          if (v33 >= v35)
                          {
                            break;
                          }

                          v64 = 0u;
                          v65 = 0u;
                          v62 = 0u;
                          v63 = 0u;
                          v60 = 0u;
                          v61 = 0u;
                          v58 = 0u;
                          v59 = 0u;
                          v56 = 0u;
                          v57 = 0u;
                          v54 = 0u;
                          v55 = 0u;
                          v52 = 0u;
                          v53 = 0u;
                          v37 = v35 - v33;
                          memset(__s, 0, sizeof(__s));
                          v38 = strnstr(v33, ",", v35 - v33);
                          v39 = v38;
                          if (v38)
                          {
                            v37 = v38 - v33;
                          }

                          if (v37 - 1 <= 0xFE)
                          {
                            if (!v36)
                            {
                              v36 = _nw_array_create();
                            }

                            memcpy(__s, v33, v37);
                            port = nw_endpoint_get_port(*(v31 + 296));
                            v41 = nw_endpoint_create_host_with_numeric_port(__s, port);
                            if (v41)
                            {
                              v42 = v41;
                              if (v36)
                              {
                                _nw_array_append(v36, v41);
                              }

                              os_release(v42);
                            }
                          }

                          v33 = v39 + 1;
                        }

                        while (v39);
                        goto LABEL_72;
                      }
                    }
                  }

LABEL_71:
                  v36 = 0;
LABEL_72:
                  *(*(a1[7] + 8) + 24) = v36;
                  return;
                }

                __nwlog_obj();
                *__s = 136446210;
                *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                v43 = _os_log_send_and_compose_impl();
                type = OS_LOG_TYPE_ERROR;
                v49 = 0;
                if (__nwlog_fault(v43, &type, &v49))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v44 = __nwlog_obj();
                    v45 = type;
                    if (!os_log_type_enabled(v44, type))
                    {
                      goto LABEL_69;
                    }

                    *__s = 136446210;
                    *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                    v46 = "%{public}s called with null masque";
                    goto LABEL_68;
                  }

                  if (v49 != 1)
                  {
                    v44 = __nwlog_obj();
                    v45 = type;
                    if (!os_log_type_enabled(v44, type))
                    {
                      goto LABEL_69;
                    }

                    *__s = 136446210;
                    *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                    v46 = "%{public}s called with null masque, backtrace limit exceeded";
                    goto LABEL_68;
                  }

                  backtrace_string = __nw_create_backtrace_string();
                  v44 = __nwlog_obj();
                  v45 = type;
                  v48 = os_log_type_enabled(v44, type);
                  if (backtrace_string)
                  {
                    if (v48)
                    {
                      *__s = 136446466;
                      *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                      *&__s[12] = 2082;
                      *&__s[14] = backtrace_string;
                      _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null masque, dumping backtrace:%{public}s", __s, 0x16u);
                    }

                    free(backtrace_string);
                    goto LABEL_69;
                  }

                  if (v48)
                  {
                    *__s = 136446210;
                    *&__s[4] = "nw_masque_copy_next_hop_aliases_from_proxy_status";
                    v46 = "%{public}s called with null masque, no backtrace";
LABEL_68:
                    _os_log_impl(&dword_181A37000, v44, v45, v46, __s, 0xCu);
                  }
                }

LABEL_69:
                if (v43)
                {
                  free(v43);
                }

                goto LABEL_71;
              }
            }
          }

          else if (v15 <= 0xFF)
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            memset(__s, 0, sizeof(__s));
            memcpy(__s, v11, v14 - v11);
            v24 = nw_endpoint_get_port(*(v5 + 296));
            host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(__s, v24);
            goto LABEL_39;
          }
        }
      }

LABEL_38:
      host_with_numeric_port = 0;
      goto LABEL_39;
    }

    __nwlog_obj();
    *__s = 136446210;
    *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v25, &type, &v49))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_36;
        }

        *__s = 136446210;
        *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
        v28 = "%{public}s called with null masque";
        goto LABEL_35;
      }

      if (v49 != 1)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_36;
        }

        *__s = 136446210;
        *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
        v28 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_35;
      }

      v29 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type;
      v30 = os_log_type_enabled(v26, type);
      if (v29)
      {
        if (v30)
        {
          *__s = 136446466;
          *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
          *&__s[12] = 2082;
          *&__s[14] = v29;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null masque, dumping backtrace:%{public}s", __s, 0x16u);
        }

        free(v29);
        goto LABEL_36;
      }

      if (v30)
      {
        *__s = 136446210;
        *&__s[4] = "nw_masque_copy_next_hop_from_proxy_status";
        v28 = "%{public}s called with null masque, no backtrace";
LABEL_35:
        _os_log_impl(&dword_181A37000, v26, v27, v28, __s, 0xCu);
      }
    }

LABEL_36:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_38;
  }
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_3(uint64_t a1, char *__s)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!__s || strlen(__s) > 6)
  {
    return;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_masque_store_cached_geohash_value";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v15, &type, &v26))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_masque_store_cached_geohash_value";
      v18 = "%{public}s called with null masque";
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v21 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v29 = "nw_masque_store_cached_geohash_value";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_66:
        if (!v15)
        {
          return;
        }

        goto LABEL_67;
      }

      if (!v21)
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_masque_store_cached_geohash_value";
      v18 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_masque_store_cached_geohash_value";
      v18 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    goto LABEL_65;
  }

  v5 = *(v4 + 312);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_masque_store_cached_geohash_value";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v15, &type, &v26))
    {
      goto LABEL_66;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v16, type))
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v29 = "nw_masque_store_cached_geohash_value";
        v18 = "%{public}s called with null masque->context, backtrace limit exceeded";
        goto LABEL_65;
      }

      v22 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v23 = os_log_type_enabled(v16, type);
      if (!v22)
      {
        if (!v23)
        {
          goto LABEL_66;
        }

        *buf = 136446210;
        v29 = "nw_masque_store_cached_geohash_value";
        v18 = "%{public}s called with null masque->context, no backtrace";
        goto LABEL_65;
      }

      if (v23)
      {
        *buf = 136446466;
        v29 = "nw_masque_store_cached_geohash_value";
        v30 = 2082;
        v31 = v22;
        v24 = "%{public}s called with null masque->context, dumping backtrace:%{public}s";
LABEL_50:
        _os_log_impl(&dword_181A37000, v16, v17, v24, buf, 0x16u);
      }

LABEL_51:
      free(v22);
      if (!v15)
      {
        return;
      }

LABEL_67:
      free(v15);
      return;
    }

    v16 = __nwlog_obj();
    v17 = type;
    if (!os_log_type_enabled(v16, type))
    {
      goto LABEL_66;
    }

    *buf = 136446210;
    v29 = "nw_masque_store_cached_geohash_value";
    v18 = "%{public}s called with null masque->context";
LABEL_65:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    goto LABEL_66;
  }

  if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
  }

  if (nw_protocol_masque_get_definition(void)::definition)
  {
    v6 = os_retain(nw_protocol_masque_get_definition(void)::definition);
  }

  else
  {
    v6 = 0;
  }

  globals_for_protocol = nw_context_get_globals_for_protocol(v5, v6);
  if (!globals_for_protocol)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_masque_store_cached_geohash_value";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v15, &type, &v26))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_masque_store_cached_geohash_value";
      v18 = "%{public}s called with null globals";
      goto LABEL_65;
    }

    if (v26 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_masque_store_cached_geohash_value";
      v18 = "%{public}s called with null globals, backtrace limit exceeded";
      goto LABEL_65;
    }

    v22 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v25 = os_log_type_enabled(v16, type);
    if (!v22)
    {
      if (!v25)
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_masque_store_cached_geohash_value";
      v18 = "%{public}s called with null globals, no backtrace";
      goto LABEL_65;
    }

    if (v25)
    {
      *buf = 136446466;
      v29 = "nw_masque_store_cached_geohash_value";
      v30 = 2082;
      v31 = v22;
      v24 = "%{public}s called with null globals, dumping backtrace:%{public}s";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v8 = *__s;
  globals_for_protocol[4] = v8;
  v9 = globals_for_protocol + 4;
  if (v8)
  {
    v10 = __s[1];
    globals_for_protocol[5] = v10;
    if (v10)
    {
      v11 = __s[2];
      globals_for_protocol[6] = v11;
      if (v11)
      {
        v12 = __s[3];
        globals_for_protocol[7] = v12;
        if (v12)
        {
          v13 = __s[4];
          globals_for_protocol[8] = v13;
          if (v13)
          {
            v14 = __s[5];
            globals_for_protocol[9] = v14;
            if (v14)
            {
              globals_for_protocol[10] = 0;
            }
          }
        }
      }
    }
  }

  if ((*(v4 + 505) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v19 = gprivacy_proxyLogObj;
    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v29 = "nw_masque_store_cached_geohash_value";
      v30 = 2082;
      v31 = (v4 + 507);
      v32 = 2080;
      v33 = " ";
      v34 = 2082;
      v35 = v9;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sStoring geohash hint %{public}s", buf, 0x2Au);
    }
  }
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_4(uint64_t a1, char *__s)
{
  v19 = *MEMORY[0x1E69E9840];
  *v18 = 0;
  if (__s && strlen(__s) <= 7)
  {
    v18[0] = *__s;
    if (v18[0])
    {
      v18[1] = __s[1];
      if (v18[1])
      {
        v18[2] = __s[2];
        if (v18[2])
        {
          v18[3] = __s[3];
          if (v18[3])
          {
            v18[4] = __s[4];
            if (v18[4])
            {
              v18[5] = __s[5];
              if (v18[5])
              {
                v18[6] = __s[6];
                if (v18[6])
                {
                  v18[7] = 0;
                }
              }
            }
          }
        }
      }
    }

    v4 = atoi(v18);
    v5 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v4;
    if (!v5 || (*(v5 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v6 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v7 = "";
        v8 = *(a1 + 40);
        v9 = v8 == 0;
        if (v8)
        {
          v10 = (v8 + 507);
        }

        else
        {
          v10 = "";
        }

        if (!v9)
        {
          v7 = " ";
        }

        v11 = *(*(*(a1 + 32) + 8) + 24);
        v12 = 136446722;
        v13 = v10;
        v14 = 2080;
        v15 = v7;
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s%sReceived epoch value of %d", &v12, 0x1Cu);
      }
    }
  }
}

char *___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_161(char *result, char *__s1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!__s1)
  {
    return result;
  }

  v3 = result;
  *(*(*(result + 4) + 8) + 24) = strstr(__s1, "expired routing") != 0;
  *(*(*(v3 + 5) + 8) + 24) = strstr(__s1, "received-status=") != 0;
  if (!*(v3 + 10))
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_masque_get_dns_failure_reason_from_proxy_status";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v17 = "nw_masque_get_dns_failure_reason_from_proxy_status";
      v9 = "%{public}s called with null masque";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_masque_get_dns_failure_reason_from_proxy_status";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (!v11)
      {
LABEL_25:
        if (v6)
        {
          free(v6);
        }

        goto LABEL_27;
      }

      *buf = 136446210;
      v17 = "nw_masque_get_dns_failure_reason_from_proxy_status";
      v9 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v17 = "nw_masque_get_dns_failure_reason_from_proxy_status";
      v9 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_25;
  }

  v4 = strlen(__s1);
  if (!strnstr(__s1, "error=dns_error", v4))
  {
LABEL_27:
    v5 = 0;
    goto LABEL_28;
  }

  if (strnstr(__s1, "info-code=15", v4))
  {
    v5 = 1;
  }

  else if (strnstr(__s1, "info-code=16", v4))
  {
    v5 = 2;
  }

  else if (strnstr(__s1, "info-code=17", v4))
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

LABEL_28:
  *(*(*(v3 + 6) + 8) + 24) = v5;
  v12 = strstr(__s1, "error=dns_error") && !*(*(*(v3 + 6) + 8) + 24) || strstr(__s1, "error=destination_ip_prohibited") || strstr(__s1, "error=destination_ip_unroutable") || strstr(__s1, "error=destination_not_found") || strstr(__s1, "error=destination_unavailable") != 0;
  *(*(*(v3 + 7) + 8) + 24) = v12;
  *(*(*(v3 + 8) + 8) + 24) = strstr(__s1, "error=resource_uses_reverse_proxy") != 0;
  result = strstr(__s1, "error=connection_refused");
  if (result)
  {
    v13 = v3 + 72;
  }

  else
  {
    result = strstr(__s1, "error=connection_timeout");
    if (!result)
    {
      return result;
    }

    result = nw_endpoint_get_type(*(*(v3 + 10) + 296));
    v13 = v3 + 72;
    if (result == 1)
    {
      v13 = v3 + 56;
    }
  }

  *(*(*v13 + 8) + 24) = 1;
  return result;
}

void ___ZL33nw_masque_handle_connect_responseP9nw_masqueP20nw_protocol_metadata_block_invoke_177(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 505) & 1) == 0)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v3 = gprivacy_proxyLogObj;
    v4 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    v2 = *(a1 + 32);
    if (v4)
    {
      v5 = (v2 + 507);
      if (!v2)
      {
        v5 = "";
      }

      v6 = *(a1 + 40);
      v8 = 136446722;
      v9 = v5;
      v7 = " ";
      if (!v2)
      {
        v7 = "";
      }

      v10 = 2080;
      v11 = v7;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s%sCONNECT response %u timed out waiting for certificates, failing", &v8, 0x1Cu);
      v2 = *(a1 + 32);
    }
  }

  nw_masque_mark_failed_with_error(v2, 61);
}

uint64_t nw_protocol_masque_listener_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1;
    handle = a1->handle;
    v8 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v9 = 1;
      goto LABEL_11;
    }

    v8 = *a1[1].flow_id;
    if (v8)
    {
LABEL_6:
      callbacks = v8[1].callbacks;
      v9 = 0;
      if (callbacks)
      {
        v8[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v9 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v11 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v42 = "nw_protocol_masque_listener_get_input_frames";
        v12 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v39 = 0;
        if (!__nwlog_fault(v12, &type, &v39))
        {
          goto LABEL_37;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v42 = "nw_protocol_masque_listener_get_input_frames";
          v15 = "%{public}s called with null masque";
          goto LABEL_35;
        }

        if (v39 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v42 = "nw_protocol_masque_listener_get_input_frames";
          v15 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_35;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v42 = "nw_protocol_masque_listener_get_input_frames";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_37;
        }

        if (v22)
        {
          *buf = 136446210;
          v42 = "nw_protocol_masque_listener_get_input_frames";
          v15 = "%{public}s called with null masque, no backtrace";
          v23 = v20;
          v24 = v21;
          goto LABEL_36;
        }

LABEL_37:
        if (v12)
        {
          free(v12);
        }

        goto LABEL_39;
      }

      v11 = *a1[1].flow_id;
    }

    if (a2)
    {
      output_handler_context = a2->output_handler_context;
      if (output_handler_context)
      {
        if (output_handler_context[4])
        {
          result = nw_frame_array_fill_from_pending_array(output_handler_context + 4, a6, a4, a5);
        }

        else
        {
          result = nw_protocol_masque_listener_read_input(&v11[1].output_handler, output_handler_context, a6, a3, a4, a5);
        }

        goto LABEL_40;
      }

      if ((BYTE1(v11[9].callbacks) & 1) == 0)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v18 = gprivacy_proxyLogObj;
        result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_40;
        }

        *buf = 136446466;
        v42 = &v11[9].callbacks + 3;
        v43 = 2080;
        v44 = " ";
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s%sNo valid node found", buf, 0x16u);
      }

LABEL_39:
      result = 0;
LABEL_40:
      if ((v9 & 1) == 0)
      {
        v25 = v6->handle;
        if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
        {
          v26 = v6[1].callbacks;
          if (v26)
          {
            v27 = (v26 - 1);
            v6[1].callbacks = v27;
            if (!v27)
            {
              v28 = result;
              v29 = *v6[1].flow_id;
              if (v29)
              {
                *v6[1].flow_id = 0;
                v29[2](v29);
                _Block_release(v29);
              }

              if (v6[1].flow_id[8])
              {
                v30 = *v6[1].flow_id;
                if (v30)
                {
                  _Block_release(v30);
                }
              }

              free(v6);
              return v28;
            }
          }
        }
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_masque_listener_get_input_frames";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_masque_listener_get_input_frames";
      v15 = "%{public}s called with null input_protocol";
    }

    else if (v39 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v38 = os_log_type_enabled(v13, type);
      if (v37)
      {
        if (v38)
        {
          *buf = 136446466;
          v42 = "nw_protocol_masque_listener_get_input_frames";
          v43 = 2082;
          v44 = v37;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_37;
      }

      if (!v38)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_masque_listener_get_input_frames";
      v15 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_masque_listener_get_input_frames";
      v15 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

LABEL_35:
    v23 = v13;
    v24 = v14;
LABEL_36:
    _os_log_impl(&dword_181A37000, v23, v24, v15, buf, 0xCu);
    goto LABEL_37;
  }

  __nwlog_obj();
  *buf = 136446210;
  v42 = "nw_protocol_masque_listener_get_input_frames";
  v31 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v31, &type, &v39))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_masque_listener_get_input_frames";
        v34 = "%{public}s called with null protocol";
LABEL_79:
        _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = type;
      v36 = os_log_type_enabled(v32, type);
      if (v35)
      {
        if (v36)
        {
          *buf = 136446466;
          v42 = "nw_protocol_masque_listener_get_input_frames";
          v43 = 2082;
          v44 = v35;
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
        goto LABEL_80;
      }

      if (v36)
      {
        *buf = 136446210;
        v42 = "nw_protocol_masque_listener_get_input_frames";
        v34 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_79;
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_masque_listener_get_input_frames";
        v34 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_79;
      }
    }
  }

LABEL_80:
  if (v31)
  {
    free(v31);
  }

  return 0;
}

uint64_t nw_protocol_masque_listener_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    v5 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      v6 = 0;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v6 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v8 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v70 = "nw_protocol_masque_listener_finalize_output_frames";
        v9 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v67 = 0;
        if (__nwlog_fault(v9, &type, &v67))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v70 = "nw_protocol_masque_listener_finalize_output_frames";
              v12 = "%{public}s called with null masque";
LABEL_51:
              v34 = v10;
              v35 = v11;
LABEL_52:
              _os_log_impl(&dword_181A37000, v34, v35, v12, buf, 0xCu);
            }
          }

          else if (v67 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            v23 = type;
            v24 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v24)
              {
                *buf = 136446466;
                v70 = "nw_protocol_masque_listener_finalize_output_frames";
                v71 = 2082;
                v72 = backtrace_string;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_53;
            }

            if (v24)
            {
              *buf = 136446210;
              v70 = "nw_protocol_masque_listener_finalize_output_frames";
              v12 = "%{public}s called with null masque, no backtrace";
              v34 = v22;
              v35 = v23;
              goto LABEL_52;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v70 = "nw_protocol_masque_listener_finalize_output_frames";
              v12 = "%{public}s called with null masque, backtrace limit exceeded";
              goto LABEL_51;
            }
          }
        }

LABEL_53:
        if (v9)
        {
          free(v9);
        }

        result = 0;
        goto LABEL_56;
      }

      v8 = *a1[1].flow_id;
    }

    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 0x40000000;
    v63 = ___ZL50nw_protocol_masque_listener_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v64 = &__block_descriptor_tmp_201;
    v65 = a1;
    p_output_handler = &v8[1].output_handler;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v14 = *(tqh_first + 4);
      v15 = v63(v62);
      tqh_first = v14;
    }

    while ((v15 & 1) != 0);
    output_handler = v3->output_handler;
    if (!output_handler)
    {
      __nwlog_obj();
      *buf = 136446210;
      v70 = "__nw_protocol_finalize_output_frames";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v67 = 0;
      if (!__nwlog_fault(v9, &type, &v67))
      {
        goto LABEL_53;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v70 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol";
        goto LABEL_51;
      }

      if (v67 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v70 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_51;
      }

      v57 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v58 = os_log_type_enabled(v10, type);
      if (v57)
      {
        if (v58)
        {
          *buf = 136446466;
          v70 = "__nw_protocol_finalize_output_frames";
          v71 = 2082;
          v72 = v57;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v57);
        goto LABEL_53;
      }

      if (v58)
      {
        *buf = 136446210;
        v70 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_53;
    }

    v17 = output_handler->handle;
    v18 = v3->output_handler;
    if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *output_handler[1].flow_id) != 0)
    {
      v25 = v18[1].callbacks;
      if (v25)
      {
        v19 = 0;
        v18[1].callbacks = (&v25->add_input_handler + 1);
        v20 = output_handler->callbacks;
        if (!v20)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v19 = 0;
        v20 = output_handler->callbacks;
        if (!v20)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v19 = 1;
      v20 = output_handler->callbacks;
      if (!v20)
      {
        goto LABEL_71;
      }
    }

    finalize_output_frames = v20->finalize_output_frames;
    if (finalize_output_frames)
    {
      result = finalize_output_frames(output_handler, a2);
      if (v19)
      {
LABEL_56:
        if ((v6 & 1) == 0)
        {
          v36 = v3->handle;
          if (v36 == &nw_protocol_ref_counted_handle || v36 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
          {
            v37 = v3[1].callbacks;
            if (v37)
            {
              v38 = (v37 - 1);
              v3[1].callbacks = v38;
              if (!v38)
              {
                v39 = result;
                v40 = *v3[1].flow_id;
                if (v40)
                {
                  *v3[1].flow_id = 0;
                  v40[2](v40);
                  _Block_release(v40);
                }

                if (v3[1].flow_id[8])
                {
                  v41 = *v3[1].flow_id;
                  if (v41)
                  {
                    _Block_release(v41);
                  }
                }

                free(v3);
                return v39;
              }
            }
          }
        }

        return result;
      }

LABEL_38:
      v28 = output_handler->handle;
      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
      {
        v29 = output_handler[1].callbacks;
        if (v29)
        {
          v30 = (v29 - 1);
          output_handler[1].callbacks = v30;
          if (!v30)
          {
            v31 = result;
            v32 = *output_handler[1].flow_id;
            if (v32)
            {
              *output_handler[1].flow_id = 0;
              v32[2](v32);
              _Block_release(v32);
            }

            if (output_handler[1].flow_id[8])
            {
              v33 = *output_handler[1].flow_id;
              if (v33)
              {
                _Block_release(v33);
              }
            }

            free(output_handler);
            result = v31;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_71:
    __nwlog_obj();
    name = output_handler->identifier->name;
    *buf = 136446722;
    v70 = "__nw_protocol_finalize_output_frames";
    if (!name)
    {
      name = "invalid";
    }

    v71 = 2082;
    v72 = name;
    v73 = 2048;
    v74 = output_handler;
    v43 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (__nwlog_fault(v43, &type, &v67))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (!os_log_type_enabled(v44, type))
        {
          goto LABEL_117;
        }

        v46 = output_handler->identifier->name;
        if (!v46)
        {
          v46 = "invalid";
        }

        *buf = 136446722;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v46;
        v73 = 2048;
        v74 = output_handler;
        v47 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
LABEL_116:
        _os_log_impl(&dword_181A37000, v44, v45, v47, buf, 0x20u);
        goto LABEL_117;
      }

      if (v67 != 1)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (!os_log_type_enabled(v44, type))
        {
          goto LABEL_117;
        }

        v59 = output_handler->identifier->name;
        if (!v59)
        {
          v59 = "invalid";
        }

        *buf = 136446722;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v59;
        v73 = 2048;
        v74 = output_handler;
        v47 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
        goto LABEL_116;
      }

      v61 = v19;
      v52 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v53 = os_log_type_enabled(v44, type);
      if (!v52)
      {
        v19 = v61;
        if (!v53)
        {
          goto LABEL_117;
        }

        v60 = output_handler->identifier->name;
        if (!v60)
        {
          v60 = "invalid";
        }

        *buf = 136446722;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v60;
        v73 = 2048;
        v74 = output_handler;
        v47 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
        goto LABEL_116;
      }

      if (v53)
      {
        v54 = output_handler->identifier->name;
        if (!v54)
        {
          v54 = "invalid";
        }

        *buf = 136446978;
        v70 = "__nw_protocol_finalize_output_frames";
        v71 = 2082;
        v72 = v54;
        v73 = 2048;
        v74 = output_handler;
        v75 = 2082;
        v76 = v52;
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v52);
      v19 = v61;
    }

LABEL_117:
    if (v43)
    {
      free(v43);
    }

    result = 0;
    if (v19)
    {
      goto LABEL_56;
    }

    goto LABEL_38;
  }

  __nwlog_obj();
  *buf = 136446210;
  v70 = "nw_protocol_masque_listener_finalize_output_frames";
  v48 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v67 = 0;
  if (__nwlog_fault(v48, &type, &v67))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v70 = "nw_protocol_masque_listener_finalize_output_frames";
        v51 = "%{public}s called with null protocol";
LABEL_123:
        _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      }
    }

    else if (v67 == 1)
    {
      v55 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v50 = type;
      v56 = os_log_type_enabled(v49, type);
      if (v55)
      {
        if (v56)
        {
          *buf = 136446466;
          v70 = "nw_protocol_masque_listener_finalize_output_frames";
          v71 = 2082;
          v72 = v55;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v55);
        goto LABEL_124;
      }

      if (v56)
      {
        *buf = 136446210;
        v70 = "nw_protocol_masque_listener_finalize_output_frames";
        v51 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_123;
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v70 = "nw_protocol_masque_listener_finalize_output_frames";
        v51 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_123;
      }
    }
  }

LABEL_124:
  if (v48)
  {
    free(v48);
  }

  return 0;
}

uint64_t ___ZL50nw_protocol_masque_listener_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, _DWORD *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  v31 = 0;
  nw_frame_get_buffer(a2, &v31);
  v6 = v31 - v4;
  if (v31 - v4 == 19 || v6 == 7)
  {
    nw_frame_unclaim(a2, v5, v6, 0);
    return 1;
  }

  if (!nw_frame_unclaim(a2, v5, 7u, 0))
  {
    v19 = *(a1 + 40);
    if (v19 && (*(v19 + 505) & 1) != 0)
    {
      return 1;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v20 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = (v21 + 507);
    }

    else
    {
      v22 = "";
    }

    if (v21)
    {
      v23 = " ";
    }

    else
    {
      v23 = "";
    }

    v24 = nw_frame_unclaimed_length(a2);
    *buf = 136446722;
    v33 = v22;
    v34 = 2080;
    v35 = v23;
    v36 = 1024;
    v37 = v24;
    v16 = "%{public}s%sFrame is too short for header (%u)";
LABEL_35:
    v17 = v20;
    v18 = 28;
LABEL_36:
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    return 1;
  }

  v30 = 0;
  if (*nw_frame_unclaimed_bytes(a2, &v30) == 4)
  {
    return 1;
  }

  if (!nw_frame_unclaim(a2, v9, 0xCu, 0))
  {
    v25 = *(a1 + 40);
    if (v25 && (*(v25 + 505) & 1) != 0)
    {
      return 1;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v20 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v26 = *(a1 + 40);
    if (v26)
    {
      v27 = (v26 + 507);
    }

    else
    {
      v27 = "";
    }

    if (v26)
    {
      v28 = " ";
    }

    else
    {
      v28 = "";
    }

    v29 = nw_frame_unclaimed_length(a2);
    *buf = 136446722;
    v33 = v27;
    v34 = 2080;
    v35 = v28;
    v36 = 1024;
    v37 = v29;
    v16 = "%{public}s%sFrame did not contain expected IP version, too short for IPv6 (%u)";
    goto LABEL_35;
  }

  if (*nw_frame_unclaimed_bytes(a2, &v30) != 6)
  {
    v10 = *(a1 + 40);
    if (!v10 || (*(v10 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v11 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 507);
        }

        else
        {
          v14 = "";
        }

        v15 = " ";
        if (v13)
        {
          v15 = "";
        }

        *buf = 136446466;
        v33 = v14;
        v34 = 2080;
        v35 = v15;
        v16 = "%{public}s%sFrame did not contain expected IP version";
        v17 = v11;
        v18 = 22;
        goto LABEL_36;
      }
    }
  }

  return 1;
}

BOOL nw_protocol_masque_listener_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = a1;
    handle = a1->handle;
    v10 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v11 = 1;
      goto LABEL_11;
    }

    v10 = *a1[1].flow_id;
    if (v10)
    {
LABEL_6:
      callbacks = v10[1].callbacks;
      v11 = 0;
      if (callbacks)
      {
        v10[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v11 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v13 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v14 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v72 = 0;
        if (!__nwlog_fault(v14, &type, &v72))
        {
          goto LABEL_50;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_50;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          v17 = "%{public}s called with null masque";
          goto LABEL_48;
        }

        if (v72 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_50;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          v17 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_48;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v28 = type;
        v29 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v29)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          v17 = "%{public}s called with null masque, no backtrace";
          v38 = v27;
          v39 = v28;
          goto LABEL_49;
        }

LABEL_50:
        if (v14)
        {
          free(v14);
        }

        goto LABEL_52;
      }

      v13 = *a1[1].flow_id;
    }

    if ((HIBYTE(v13[9].identifier) & 0x10) != 0)
    {
      default_input_handler = v13[8].default_input_handler;
      if (default_input_handler)
      {
        if (a2)
        {
          node = nw_hash_table_get_node(default_input_handler, a2, 8);
          if (node && a2->output_handler_context == node)
          {
            v30 = node;
            address_family = nw_endpoint_get_address_family(node[6]);
            v32 = address_family;
            if (address_family == 2 || address_family == 30)
            {
              output_handler = v8->output_handler;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              v75 = (output_handler->callbacks->get_output_frames)();
              if (*(*&buf[8] + 24))
              {
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 0x40000000;
                v64 = ___ZL45nw_protocol_masque_listener_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
                v65 = &unk_1E6A2FE30;
                v71 = v32;
                v66 = buf;
                p_output_handler = &v13[1].output_handler;
                v68 = a6;
                v69 = v30 + 4;
                v70 = v8;
                tqh_first = a6->tqh_first;
                do
                {
                  if (!tqh_first)
                  {
                    break;
                  }

                  v35 = *(tqh_first + 4);
                  v36 = (v64)(v63);
                  tqh_first = v35;
                }

                while ((v36 & 1) != 0);
                v37 = *(*&buf[8] + 24);
              }

              else
              {
                v37 = 0;
              }

              _Block_object_dispose(buf, 8);
              result = v37;
            }

            else
            {
              if ((BYTE1(v13[9].callbacks) & 1) == 0)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v46 = gprivacy_proxyLogObj;
                result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
                if (!result)
                {
                  goto LABEL_53;
                }

                *buf = 136446722;
                *&buf[4] = v13 + 603;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 1024;
                v75 = v32;
                v23 = "%{public}s%sInvalid address family %u";
                v24 = v46;
                v25 = 28;
                goto LABEL_33;
              }

              result = 0;
            }

LABEL_53:
            if ((v11 & 1) == 0)
            {
              v40 = v8->handle;
              if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v8 = *v8[1].flow_id) != 0)
              {
                v41 = v8[1].callbacks;
                if (v41)
                {
                  v42 = (v41 - 1);
                  v8[1].callbacks = v42;
                  if (!v42)
                  {
                    v43 = result;
                    v44 = *v8[1].flow_id;
                    if (v44)
                    {
                      *v8[1].flow_id = 0;
                      v44[2](v44);
                      _Block_release(v44);
                    }

                    if (v8[1].flow_id[8])
                    {
                      v45 = *v8[1].flow_id;
                      if (v45)
                      {
                        _Block_release(v45);
                      }
                    }

                    free(v8);
                    return v43;
                  }
                }
              }
            }

            return result;
          }

          if ((BYTE1(v13[9].callbacks) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v20 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = v13 + 603;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s%sNo valid node found", buf, 0x16u);
            }
          }

LABEL_28:
          if (BYTE1(v13[9].callbacks))
          {
LABEL_52:
            result = 0;
            goto LABEL_53;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v21 = gprivacy_proxyLogObj;
          result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = v13 + 603;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v23 = "%{public}s%sNo valid listener flow found";
          v24 = v21;
          v25 = 22;
LABEL_33:
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
          goto LABEL_52;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
        v51 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v72 = 0;
        if (__nwlog_fault(v51, &type, &v72))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v52 = __nwlog_obj();
            v53 = type;
            if (!os_log_type_enabled(v52, type))
            {
              goto LABEL_132;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
            v54 = "%{public}s called with null input_protocol";
            goto LABEL_131;
          }

          if (v72 != 1)
          {
            v52 = __nwlog_obj();
            v53 = type;
            if (!os_log_type_enabled(v52, type))
            {
              goto LABEL_132;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
            v54 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_131;
          }

          v61 = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v53 = type;
          v62 = os_log_type_enabled(v52, type);
          if (v61)
          {
            if (v62)
            {
              *buf = 136446466;
              *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
              *&buf[12] = 2082;
              *&buf[14] = v61;
              _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v61);
            goto LABEL_132;
          }

          if (v62)
          {
            *buf = 136446210;
            *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
            v54 = "%{public}s called with null input_protocol, no backtrace";
LABEL_131:
            _os_log_impl(&dword_181A37000, v52, v53, v54, buf, 0xCu);
          }
        }

LABEL_132:
        if (v51)
        {
          free(v51);
        }

        goto LABEL_28;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
      v14 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (!__nwlog_fault(v14, &type, &v72))
      {
        goto LABEL_50;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listener_flows";
        goto LABEL_48;
      }

      if (v72 == 1)
      {
        v57 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v60 = os_log_type_enabled(v15, type);
        if (v57)
        {
          if (v60)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v57;
            v59 = "%{public}s called with null masque->listener_flows, dumping backtrace:%{public}s";
            goto LABEL_104;
          }

          goto LABEL_105;
        }

        if (!v60)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listener_flows, no backtrace";
      }

      else
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listener_flows, backtrace limit exceeded";
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
      v14 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (!__nwlog_fault(v14, &type, &v72))
      {
        goto LABEL_50;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listen_udp";
        goto LABEL_48;
      }

      if (v72 == 1)
      {
        v57 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v58 = os_log_type_enabled(v15, type);
        if (v57)
        {
          if (v58)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v57;
            v59 = "%{public}s called with null masque->listen_udp, dumping backtrace:%{public}s";
LABEL_104:
            _os_log_impl(&dword_181A37000, v15, v16, v59, buf, 0x16u);
          }

LABEL_105:
          free(v57);
          goto LABEL_50;
        }

        if (!v58)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listen_udp, no backtrace";
      }

      else
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listen_udp, backtrace limit exceeded";
      }
    }

LABEL_48:
    v38 = v15;
    v39 = v16;
LABEL_49:
    _os_log_impl(&dword_181A37000, v38, v39, v17, buf, 0xCu);
    goto LABEL_50;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
  v47 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v72 = 0;
  if (__nwlog_fault(v47, &type, &v72))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v50 = "%{public}s called with null protocol";
LABEL_121:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
      }
    }

    else if (v72 == 1)
    {
      v55 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = type;
      v56 = os_log_type_enabled(v48, type);
      if (v55)
      {
        if (v56)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v55;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v55);
        goto LABEL_122;
      }

      if (v56)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v50 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_121;
      }
    }

    else
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v50 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_121;
      }
    }
  }

LABEL_122:
  if (v47)
  {
    free(v47);
  }

  return 0;
}