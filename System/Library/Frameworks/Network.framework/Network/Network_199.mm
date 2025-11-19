uint64_t llparse__match_sequence_id(unsigned int *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  v5 = *a1;
  if (a2 == a3)
  {
LABEL_14:
    *a1 = v5;
    return 1;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = *a2;
      v8 = *(a4 + v5);
      if (v5 + 1 == a5)
      {
        v6 = 0;
        v9 = 5;
      }

      else
      {
        v9 = 0;
      }

      if (v7 != v8)
      {
        v6 = 2;
        v9 = 5;
      }

      if (v9)
      {
        break;
      }

      if (v7 == v8)
      {
        ++v5;
      }

      if (++a2 == a3)
      {
        goto LABEL_14;
      }
    }

    *a1 = 0;
    return v6;
  }
}

uint64_t nw_endpoint_create_srv(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_endpoint_create_srv(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_create_srv";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_srv";
        v6 = "%{public}s called with null name";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_endpoint_create_srv";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_create_srv";
        v6 = "%{public}s called with null name, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_srv";
        v6 = "%{public}s called with null name, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_endpoint_get_srv_name(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    srv_name = _nw_endpoint_get_srv_name(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_srv_name";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_srv_name";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_endpoint_get_srv_name";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_srv_name";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_srv_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  srv_name = 0;
LABEL_3:

  return srv_name;
}

void sub_1827F7510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1827F7750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827F7934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827FDBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58)
{
  _Block_object_dispose(&a53, 8);
  objc_destroyWeak(&a58);
  _Block_object_dispose((v58 - 184), 8);
  _Block_object_dispose((v58 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50485(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1827FE55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *network_retain(void *object)
{
  if (object)
  {
    return os_retain(object);
  }

  return object;
}

void network_release(void *object)
{
  if (object)
  {
    os_release(object);
  }
}

xpc_object_t nw_xpc_array_get_value_of_type(xpc_object_t result, size_t a2, objc_class *a3)
{
  if (result)
  {
    v5 = result;
    if (object_getClass(result) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v5) > a2)
    {
      result = xpc_array_get_value(v5, a2);
      if (a3 && result)
      {
        v6 = result;
        if (object_getClass(result) == a3)
        {
          return v6;
        }

        else
        {
          return 0;
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

void *nw_xpc_dictionary_contains_key(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    Class = object_getClass(result);
    result = 0;
    if (a2)
    {
      if (Class == MEMORY[0x1E69E9E80])
      {
        return (xpc_dictionary_get_value(v3, a2) != 0);
      }
    }
  }

  return result;
}

uint64_t nw_dispatch_data_copyout_from_offset(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v19 = 0;
    *type = 0;
    v14 = type;
    v15 = 0x2000000000;
    v16 = a4;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __nw_dispatch_data_copyout_from_offset_block_invoke;
    applier[3] = &unk_1E6A34370;
    applier[4] = type;
    applier[5] = buf;
    applier[6] = a3;
    applier[7] = a2;
    dispatch_data_apply(a1, applier);
    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(type, 8);
    _Block_object_dispose(buf, 8);
    return v4;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_dispatch_data_copyout_from_offset";
  v6 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v6, type, &v17))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_dispatch_data_copyout_from_offset";
        v9 = "%{public}s called with null data";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type[0];
      v11 = os_log_type_enabled(v7, type[0]);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_dispatch_data_copyout_from_offset";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_dispatch_data_copyout_from_offset";
        v9 = "%{public}s called with null data, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type[0];
      if (os_log_type_enabled(v7, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_dispatch_data_copyout_from_offset";
        v9 = "%{public}s called with null data, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

BOOL __nw_dispatch_data_copyout_from_offset_block_invoke(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1[4] + 8) + 24);
  if (a5 + a3 <= v5)
  {
    return 1;
  }

  v6 = a1[6];
  v7 = *(*(a1[5] + 8) + 24);
  v8 = v6 > v7;
  v9 = v6 - v7;
  if (!v8)
  {
    return 0;
  }

  v10 = v5 >= a3;
  v11 = v5 - a3;
  if (!v10)
  {
    v11 = 0;
  }

  if (v9 >= a5 - v11)
  {
    v12 = a5 - v11;
  }

  else
  {
    v12 = v9;
  }

  memcpy((a1[7] + v7), (a4 + v11), v12);
  *(*(a1[4] + 8) + 24) += v12;
  *(*(a1[5] + 8) + 24) += v12;
  return *(*(a1[5] + 8) + 24) < a1[6];
}

const char *nw_create_buffer_str_slow(unsigned __int8 *a1, uint64_t a2)
{
  if (a1 && (v2 = a2) != 0)
  {
    v3 = a1;
    v6 = 0;
    do
    {
      v4 = *v3++;
      nw_append_format(&v6, "%02x", v4);
      --v2;
    }

    while (v2);
    return v6;
  }

  else
  {

    return nw_calloc_type<unsigned char>(1uLL);
  }
}

unint64_t nw_convert_to_timebase(uint64_t a1)
{
  v2 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v2 = dword_1ED4117CC;
  }

  return time_base * a1 / v2;
}

uint64_t nw_delta_ms(uint64_t a1, uint64_t a2)
{
  v2 = nw_delta_nanos(a1, a2);
  if (v2 > 0xF423FFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v2 / 0xF4240);
  }
}

uint64_t nw_get_future_time_from(uint64_t a1, uint64_t a2)
{
  v4 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v4 = dword_1ED4117CC;
  }

  return v4 * a2 / time_base + a1;
}

unint64_t nw_get_time_before(unint64_t a1, uint64_t a2)
{
  v4 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v4 = dword_1ED4117CC;
  }

  v5 = v4 * a2 / time_base;
  v6 = a1 >= v5;
  v7 = a1 - v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_get_future_continuous_time(uint64_t a1)
{
  v2 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v2 = dword_1ED4117CC;
  }

  v3 = v2 * a1 / time_base;
  return mach_continuous_time() + v3;
}

uint64_t nw_mach_continuous_approximate_time()
{
  result = mach_continuous_approximate_time();
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

uint64_t nw_unordered_xpc_array_is_equal(xpc_object_t object1, xpc_object_t object2)
{
  v3 = object1 == object2;
  result = object1 == object2;
  if (!v3 && object1 && object2)
  {
    if (xpc_equal(object1, object2))
    {
      return 1;
    }

    else
    {
      Class = object_getClass(object1);
      v7 = MEMORY[0x1E69E9E50];
      if (Class == MEMORY[0x1E69E9E50] && object_getClass(object2) == v7 && (count = xpc_array_get_count(object1), xpc_array_get_count(object2) == count))
      {

        return nw_unordered_xpc_array_is_equal_inner(object1, object2, count);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t nw_unordered_xpc_array_is_equal_inner(xpc_object_t xarray, void *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = 0;
  while (2)
  {
    value = xpc_array_get_value(xarray, v6);
    v8 = 0;
    while (1)
    {
      v9 = xpc_array_get_value(a2, v8);
      if (v9)
      {
        if (xpc_equal(value, v9))
        {
          break;
        }
      }

      if (a3 == ++v8)
      {
        return 0;
      }
    }

    if (++v6 != a3)
    {
      continue;
    }

    break;
  }

  v10 = 0;
  do
  {
    v11 = xpc_array_get_value(a2, v10);
    v12 = 0;
    while (1)
    {
      v14 = xpc_array_get_value(xarray, v12);
      if (v14)
      {
        if (xpc_equal(v11, v14))
        {
          break;
        }
      }

      result = 0;
      if (a3 == ++v12)
      {
        return result;
      }
    }

    ++v10;
    result = 1;
  }

  while (v10 != a3);
  return result;
}

uint64_t NWPBHostEndpointReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v19 = 0;
        v13 = [a2 position] + 1;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 1, v14 <= objc_msgSend(a2, "length")))
        {
          v15 = [a2 data];
          [v15 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v12 |= (v19 & 0x7F) << v10;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_19;
        }
      }

      v17 = [a2 hasError] ? 0 : v12;
LABEL_19:
      if (([a2 hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v17 >> 3) == 1)
      {
        break;
      }

      if ((v17 >> 3) == 2)
      {
        v5 = &OBJC_IVAR___NWPBHostEndpoint__port;
        goto LABEL_4;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      v9 = [a2 position];
      if (v9 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v5 = &OBJC_IVAR___NWPBHostEndpoint__hostname;
LABEL_4:
    v6 = PBReaderReadString();
    v7 = *v5;
    v8 = *(a1 + v7);
    *(a1 + v7) = v6;

    goto LABEL_5;
  }

  return [a2 hasError] ^ 1;
}

void nw_encoder_zstd_destroy(unint64_t *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
    if (!*a1 || *(v1 + 904))
    {
LABEL_35:

      free(a1);
      return;
    }

    v2 = *(v1 + 680) > v1 || *(v1 + 688) <= v1;
    v3 = a1;
    if (*(v1 + 3656))
    {
      v4 = *(v1 + 880);
      if (v4)
      {
        v4(*(v1 + 888));
      }

      else
      {
        free(*(v1 + 3656));
      }

      a1 = v3;
    }

    v5 = *(v1 + 3688);
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = *(v5 + 6048);
    v7 = *(v5 + 6056);
    v8 = *(v5 + 32);
    v9 = v8 > v5 || *(v5 + 40) <= v5;
    *(v5 + 96) = 0;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    if (v8)
    {
      if (!v6)
      {
        free(v8);
        a1 = v3;
        if (v9)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      v6(v7);
      a1 = v3;
    }

    if (v9)
    {
      if (v6)
      {
        (v6)(v7, v5);
LABEL_24:
        a1 = v3;
        goto LABEL_25;
      }

LABEL_23:
      free(v5);
      goto LABEL_24;
    }

LABEL_25:
    *(v1 + 3720) = 0;
    *(v1 + 3688) = 0u;
    *(v1 + 3704) = 0u;
    *(v1 + 3656) = 0u;
    *(v1 + 3672) = 0u;
    v10 = *(v1 + 880);
    v11 = *(v1 + 888);
    v12 = *(v1 + 680);
    *(v1 + 744) = 0;
    *(v1 + 712) = 0u;
    *(v1 + 728) = 0u;
    *(v1 + 680) = 0u;
    *(v1 + 696) = 0u;
    if (v12)
    {
      if (v10)
      {
        v10(v11);
      }

      else
      {
        free(v12);
      }

      a1 = v3;
    }

    if (v2)
    {
      v13 = *(v1 + 880);
      if (v13)
      {
        v13(*(v1 + 888), v1);
      }

      else
      {
        free(v1);
      }

      a1 = v3;
    }

    goto LABEL_35;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_encoder_zstd_destroy";
  v14 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v14, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v23 = "nw_encoder_zstd_destroy";
      v17 = "%{public}s called with null encoder";
      goto LABEL_51;
    }

    if (v20 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v23 = "nw_encoder_zstd_destroy";
      v17 = "%{public}s called with null encoder, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v19 = os_log_type_enabled(v15, type);
    if (backtrace_string)
    {
      if (v19)
      {
        *buf = 136446466;
        v23 = "nw_encoder_zstd_destroy";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null encoder, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_52;
    }

    if (v19)
    {
      *buf = 136446210;
      v23 = "nw_encoder_zstd_destroy";
      v17 = "%{public}s called with null encoder, no backtrace";
LABEL_51:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    }
  }

LABEL_52:
  if (v14)
  {
    free(v14);
  }
}

void nw_decoder_zstd_destroy(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
    if (!*a1 || *(v1 + 30168))
    {
LABEL_29:

      free(a1);
      return;
    }

    v2 = *(v1 + 30136);
    v3 = *(v1 + 30144);
    v4 = *(v1 + 30184);
    v5 = a1;
    if (v4)
    {
      v6 = *(v4 + 27336);
      v7 = *(v4 + 27344);
      if (*v4)
      {
        if (v6)
        {
          (v6)(*(v4 + 27344));
LABEL_9:
          v6(v7, v4);
          goto LABEL_12;
        }

        free(*v4);
      }

      else if (v6)
      {
        goto LABEL_9;
      }

      free(v4);
    }

LABEL_12:
    *(v1 + 30208) = 0;
    *(v1 + 30184) = 0;
    *(v1 + 30192) = 0;
    if (*(v1 + 30240))
    {
      if (v2)
      {
        v2(v3);
      }

      else
      {
        free(*(v1 + 30240));
      }
    }

    *(v1 + 30240) = 0;
    v8 = *(v1 + 30216);
    if (!v8)
    {
      goto LABEL_25;
    }

    if (*v8)
    {
      if (v2)
      {
        v2(v3);
LABEL_21:
        (v2)(v3, v8);
LABEL_24:
        *(v1 + 30216) = 0;
LABEL_25:
        if (v2)
        {
          (v2)(v3, v1);
        }

        else
        {
          free(v1);
        }

        a1 = v5;
        goto LABEL_29;
      }

      free(*v8);
    }

    else if (v2)
    {
      goto LABEL_21;
    }

    free(v8);
    goto LABEL_24;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_decoder_zstd_destroy";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v18 = "nw_decoder_zstd_destroy";
      v12 = "%{public}s called with null decoder";
      goto LABEL_45;
    }

    if (v15 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v18 = "nw_decoder_zstd_destroy";
      v12 = "%{public}s called with null decoder, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v14 = os_log_type_enabled(v10, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "nw_decoder_zstd_destroy";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null decoder, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_46;
    }

    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_decoder_zstd_destroy";
      v12 = "%{public}s called with null decoder, no backtrace";
LABEL_45:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    }
  }

LABEL_46:
  if (v9)
  {
    free(v9);
  }
}

unint64_t nw_http_get_binary_message_length_inner(nw_protocol_metadata *a1, int a2, unint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_get_binary_message_length_inner";
    v42 = _os_log_send_and_compose_impl();
    v64[0] = 16;
    v62[0] = 0;
    if (!__nwlog_fault(v42, v64, v62))
    {
      goto LABEL_92;
    }

    if (v64[0] == 17)
    {
      v43 = __nwlog_obj();
      v44 = v64[0];
      if (os_log_type_enabled(v43, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v45 = "%{public}s called with null metadata";
LABEL_91:
        _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
      }

LABEL_92:
      if (v42)
      {
        free(v42);
      }

      return 0;
    }

    if (v62[0] != 1)
    {
      v43 = __nwlog_obj();
      v44 = v64[0];
      if (os_log_type_enabled(v43, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v45 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v44 = v64[0];
    v47 = os_log_type_enabled(v43, v64[0]);
    if (!backtrace_string)
    {
      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v45 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (v47)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_get_binary_message_length_inner";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v48 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_70:
      _os_log_impl(&dword_181A37000, v43, v44, v48, buf, 0x16u);
    }

LABEL_71:
    free(backtrace_string);
    goto LABEL_92;
  }

  if (a3 && a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_get_binary_message_length_inner";
    v42 = _os_log_send_and_compose_impl();
    v64[0] = 16;
    v62[0] = 0;
    if (!__nwlog_fault(v42, v64, v62))
    {
      goto LABEL_92;
    }

    if (v64[0] == 17)
    {
      v43 = __nwlog_obj();
      v44 = v64[0];
      if (os_log_type_enabled(v43, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v45 = "%{public}s called with null (!(indeterminate && body_length > 0))";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (v62[0] != 1)
    {
      v43 = __nwlog_obj();
      v44 = v64[0];
      if (os_log_type_enabled(v43, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v45 = "%{public}s called with null (!(indeterminate && body_length > 0)), backtrace limit exceeded";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v44 = v64[0];
    v49 = os_log_type_enabled(v43, v64[0]);
    if (!backtrace_string)
    {
      if (v49)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v45 = "%{public}s called with null (!(indeterminate && body_length > 0)), no backtrace";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (v49)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_get_binary_message_length_inner";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v48 = "%{public}s called with null (!(indeterminate && body_length > 0)), dumping backtrace:%{public}s";
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v67 = 0;
  type = nw_http_metadata_get_type(a1);
  ++*(*&buf[8] + 24);
  if (type == 1)
  {
    v7 = nw_http_metadata_copy_request(a1);
    if (v7)
    {
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 0x40000000;
      v61[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke;
      v61[3] = &unk_1E6A34510;
      v61[4] = buf;
      v8 = v7;
      v9 = v61;
      _nw_http_request_access_method(v8, v9);

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 0x40000000;
      v60[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_2;
      v60[3] = &unk_1E6A34538;
      v60[4] = buf;
      v10 = v8;
      v11 = v60;
      _nw_http_request_access_scheme(v10, v11);

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 0x40000000;
      v59[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_3;
      v59[3] = &unk_1E6A34560;
      v59[4] = buf;
      v12 = v10;
      v13 = v59;
      _nw_http_request_access_authority(v12, v13);

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 0x40000000;
      v58[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_4;
      v58[3] = &unk_1E6A34588;
      v58[4] = buf;
      v14 = v12;
      v15 = v58;
      _nw_http_request_access_path(v14, v15);

LABEL_12:
      os_release(v14);
      goto LABEL_13;
    }

    __nwlog_obj();
    *v64 = 136446210;
    *&v64[4] = "nw_http_get_binary_message_length_inner";
    v50 = _os_log_send_and_compose_impl();
    v62[0] = 16;
    LOBYTE(v68) = 0;
    if (__nwlog_fault(v50, v62, &v68))
    {
      if (v62[0] == 17)
      {
        v51 = __nwlog_obj();
        v52 = v62[0];
        if (os_log_type_enabled(v51, v62[0]))
        {
          *v64 = 136446210;
          *&v64[4] = "nw_http_get_binary_message_length_inner";
          v53 = "%{public}s called with null request";
LABEL_97:
          _os_log_impl(&dword_181A37000, v51, v52, v53, v64, 0xCu);
        }
      }

      else if (v68 == 1)
      {
        v54 = __nw_create_backtrace_string();
        v51 = __nwlog_obj();
        v52 = v62[0];
        v55 = os_log_type_enabled(v51, v62[0]);
        if (v54)
        {
          if (v55)
          {
            *v64 = 136446466;
            *&v64[4] = "nw_http_get_binary_message_length_inner";
            *&v64[12] = 2082;
            *&v64[14] = v54;
            _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null request, dumping backtrace:%{public}s", v64, 0x16u);
          }

          free(v54);
          goto LABEL_98;
        }

        if (v55)
        {
          *v64 = 136446210;
          *&v64[4] = "nw_http_get_binary_message_length_inner";
          v53 = "%{public}s called with null request, no backtrace";
          goto LABEL_97;
        }
      }

      else
      {
        v51 = __nwlog_obj();
        v52 = v62[0];
        if (os_log_type_enabled(v51, v62[0]))
        {
          *v64 = 136446210;
          *&v64[4] = "nw_http_get_binary_message_length_inner";
          v53 = "%{public}s called with null request, backtrace limit exceeded";
          goto LABEL_97;
        }
      }
    }

LABEL_98:
    if (v50)
    {
      free(v50);
    }

    v37 = 0;
    goto LABEL_42;
  }

  v14 = nw_http_metadata_copy_response(a1);
  status_code = nw_http_response_get_status_code(v14);
  v17 = 4;
  if (status_code < 0x4000)
  {
    v17 = 2;
  }

  if (status_code < 0x40)
  {
    v17 = 1;
  }

  *(*&buf[8] + 24) += v17;
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_13:
  *v64 = 0;
  *&v64[8] = v64;
  *&v64[16] = 0x2000000000;
  v65 = 0;
  v18 = nw_http_metadata_copy_header_fields(a1);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 0x40000000;
  v57[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_5;
  v57[3] = &unk_1E6A345B0;
  v57[4] = v64;
  nw_http_fields_enumerate(v18, v57);
  v19 = *&v64[8];
  v20 = *(*&v64[8] + 24);
  if (a2)
  {
    v21 = *&buf[8];
    v22 = v20 + *(*&buf[8] + 24);
    goto LABEL_39;
  }

  if (v20 >= 0x40)
  {
    if (v20 >= 0x4000)
    {
      if (v20 >> 30)
      {
        if (v20 >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *v62 = 136446466;
          *&v62[4] = "_http_vle_length";
          *&v62[12] = 2048;
          *&v62[14] = v20;
          v24 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v24);
          if (result)
          {
            goto LABEL_101;
          }

          free(v24);
          v23 = 0;
          v19 = *&v64[8];
        }

        else
        {
          v23 = 8;
        }
      }

      else
      {
        v23 = 4;
      }
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 1;
  }

  v26 = *&buf[8];
  v27 = *(*&buf[8] + 24) + v23;
  *(*&buf[8] + 24) = v27;
  v28 = *(v19 + 24) + v27;
  *(v26 + 24) = v28;
  if (a3 >= 0x40)
  {
    if (a3 >= 0x4000)
    {
      if (a3 >> 30)
      {
        if (a3 >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *v62 = 136446466;
          *&v62[4] = "_http_vle_length";
          *&v62[12] = 2048;
          *&v62[14] = a3;
          v30 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v30);
          if (result)
          {
            goto LABEL_101;
          }

          free(v30);
          v29 = 0;
          v26 = *&buf[8];
          v28 = *(*&buf[8] + 24);
        }

        else
        {
          v29 = 8;
        }
      }

      else
      {
        v29 = 4;
      }
    }

    else
    {
      v29 = 2;
    }
  }

  else
  {
    v29 = 1;
  }

  *(v26 + 24) = v29 + a3 + v28;
  v31 = nw_http_metadata_copy_trailer_fields(a1);
  if (!v31)
  {
    v21 = *&buf[8];
    v22 = *(*&buf[8] + 24);
LABEL_39:
    v37 = v22 + 1;
    *(v21 + 24) = v22 + 1;
    if (!v18)
    {
LABEL_41:
      _Block_object_dispose(v64, 8);
LABEL_42:
      _Block_object_dispose(buf, 8);
      return v37;
    }

LABEL_40:
    os_release(v18);
    goto LABEL_41;
  }

  *v62 = 0;
  *&v62[8] = v62;
  *&v62[16] = 0x2000000000;
  v63 = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 0x40000000;
  v56[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_6;
  v56[3] = &unk_1E6A345D8;
  v56[4] = v62;
  v32 = v31;
  v33 = v56;
  _nw_http_fields_enumerate(v32, v33);

  v34 = *&v62[8];
  v35 = *(*&v62[8] + 24);
  if (v35 < 0x40)
  {
    v36 = 1;
    goto LABEL_52;
  }

  if (v35 < 0x4000)
  {
    v36 = 2;
    goto LABEL_52;
  }

  if (!(v35 >> 30))
  {
    v36 = 4;
    goto LABEL_52;
  }

  if (!(v35 >> 62))
  {
    v36 = 8;
    goto LABEL_52;
  }

  v38 = __nwlog_obj();
  os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
  v68 = 136446466;
  v69 = "_http_vle_length";
  v70 = 2048;
  v71 = v35;
  v39 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v39);
  if (!result)
  {
    free(v39);
    v36 = 0;
    v34 = *&v62[8];
LABEL_52:
    v40 = *&buf[8];
    v41 = *(*&buf[8] + 24) + v36;
    *(*&buf[8] + 24) = v41;
    *(v40 + 24) = *(v34 + 24) + v41;
    _Block_object_dispose(v62, 8);
    os_release(v32);
    v37 = *(*&buf[8] + 24);
    if (!v18)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_101:
  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke(uint64_t a1, char *__s)
{
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_13;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_13;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_13;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    v4 = 0;
    result = v5;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_2(uint64_t a1, char *__s)
{
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_13;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_13;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_13;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    v4 = 0;
    result = v5;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_3(uint64_t a1, char *__s)
{
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_13;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_13;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_13;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    v4 = 0;
    result = v5;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_4(uint64_t a1, char *__s)
{
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_13;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_13;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_13;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    v4 = 0;
    result = v5;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_5(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

LABEL_12:
    v6 = 1;
LABEL_23:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v10 = v9;
    v11 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v11);
    if (result)
    {
      goto LABEL_24;
    }

    free(v11);
    v5 = 0;
    a5 = v8;
    a3 = v10;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_23;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_23;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_23;
  }

  v13 = a1;
  v14 = a3;
  v15 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v16 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    v6 = 0;
    a5 = v15;
    a3 = v14;
    a1 = v13;
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_6(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

LABEL_12:
    v6 = 1;
LABEL_23:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v10 = v9;
    v11 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v11);
    if (result)
    {
      goto LABEL_24;
    }

    free(v11);
    v5 = 0;
    a5 = v8;
    a3 = v10;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_23;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_23;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_23;
  }

  v13 = a1;
  v14 = a3;
  v15 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v16 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    v6 = 0;
    a5 = v15;
    a3 = v14;
    a1 = v13;
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t nw_http_get_indeterminate_binary_message_chunk_length(unint64_t result, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (result >= 0x40)
    {
      if (result >= 0x4000)
      {
        if (result >> 30)
        {
          if (result >> 62)
          {
            v4 = a2;
            v5 = a3;
            v6 = result;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            *v12 = 136446466;
            *&v12[4] = "_http_vle_length";
            *&v12[12] = 2048;
            *&v12[14] = v6;
            v7 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v7);
            if (result)
            {
              __break(1u);
              return result;
            }

            free(v7);
            v3 = 0;
            a3 = v5;
            a2 = v4;
            result = v6;
          }

          else
          {
            v3 = 8;
          }
        }

        else
        {
          v3 = 4;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }

    result += v3;
  }

  if (a2)
  {
    v8 = result + 1;
    if (a3)
    {
      *v12 = 0;
      *&v12[8] = v12;
      *&v12[16] = 0x2000000000;
      v13 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __nw_http_get_indeterminate_binary_message_chunk_length_block_invoke;
      v11[3] = &unk_1E6A34498;
      v11[4] = v12;
      v9 = a3;
      v10 = v11;
      _nw_http_fields_enumerate(v9, v10);

      v8 += *(*&v12[8] + 24);
      _Block_object_dispose(v12, 8);
    }

    return v8 + 1;
  }

  return result;
}

uint64_t __nw_http_get_indeterminate_binary_message_chunk_length_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

LABEL_12:
    v6 = 1;
LABEL_23:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v10 = v9;
    v11 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v11);
    if (result)
    {
      goto LABEL_24;
    }

    free(v11);
    v5 = 0;
    a5 = v8;
    a3 = v10;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_23;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_23;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_23;
  }

  v13 = a1;
  v14 = a3;
  v15 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v16 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    v6 = 0;
    a5 = v15;
    a3 = v14;
    a1 = v13;
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t nw_http_fillout_binary_message_inner(nw_protocol_metadata *a1, int a2, const unsigned __int8 *a3, size_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v211 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v65 = _os_log_send_and_compose_impl();
    LOBYTE(v197) = 16;
    LOBYTE(v193) = 0;
    if (!__nwlog_fault(v65, &v197, &v193))
    {
      goto LABEL_361;
    }

    if (v197 != 17)
    {
      if (v193 != 1)
      {
        v66 = __nwlog_obj();
        v67 = v197;
        if (os_log_type_enabled(v66, v197))
        {
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v68 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_360;
        }

        goto LABEL_361;
      }

      backtrace_string = __nw_create_backtrace_string();
      v66 = __nwlog_obj();
      v67 = v197;
      v74 = os_log_type_enabled(v66, v197);
      if (!backtrace_string)
      {
        if (v74)
        {
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v68 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_360;
        }

        goto LABEL_361;
      }

      if (!v74)
      {
        goto LABEL_189;
      }

      *buf = 136446466;
      v204 = "nw_http_fillout_binary_message_inner";
      v205 = 2082;
      v206 = backtrace_string;
      v75 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_188;
    }

    v66 = __nwlog_obj();
    v67 = v197;
    if (!os_log_type_enabled(v66, v197))
    {
      goto LABEL_361;
    }

    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v68 = "%{public}s called with null metadata";
LABEL_360:
    _os_log_impl(&dword_181A37000, v66, v67, v68, buf, 0xCu);
    goto LABEL_361;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v65 = _os_log_send_and_compose_impl();
    LOBYTE(v197) = 16;
    LOBYTE(v193) = 0;
    if (!__nwlog_fault(v65, &v197, &v193))
    {
      goto LABEL_361;
    }

    if (v197 != 17)
    {
      if (v193 != 1)
      {
        v66 = __nwlog_obj();
        v67 = v197;
        if (os_log_type_enabled(v66, v197))
        {
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v68 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_360;
        }

        goto LABEL_361;
      }

      backtrace_string = __nw_create_backtrace_string();
      v66 = __nwlog_obj();
      v67 = v197;
      v76 = os_log_type_enabled(v66, v197);
      if (!backtrace_string)
      {
        if (v76)
        {
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v68 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_360;
        }

        goto LABEL_361;
      }

      if (!v76)
      {
        goto LABEL_189;
      }

      *buf = 136446466;
      v204 = "nw_http_fillout_binary_message_inner";
      v205 = 2082;
      v206 = backtrace_string;
      v75 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
      goto LABEL_188;
    }

    v66 = __nwlog_obj();
    v67 = v197;
    if (!os_log_type_enabled(v66, v197))
    {
      goto LABEL_361;
    }

    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v68 = "%{public}s called with null buffer";
    goto LABEL_360;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v65 = _os_log_send_and_compose_impl();
    LOBYTE(v197) = 16;
    LOBYTE(v193) = 0;
    if (!__nwlog_fault(v65, &v197, &v193))
    {
      goto LABEL_361;
    }

    if (v197 == 17)
    {
      v66 = __nwlog_obj();
      v67 = v197;
      if (!os_log_type_enabled(v66, v197))
      {
        goto LABEL_361;
      }

      *buf = 136446210;
      v204 = "nw_http_fillout_binary_message_inner";
      v68 = "%{public}s called with null (!indeterminate)";
      goto LABEL_360;
    }

    if (v193 != 1)
    {
      v66 = __nwlog_obj();
      v67 = v197;
      if (os_log_type_enabled(v66, v197))
      {
        *buf = 136446210;
        v204 = "nw_http_fillout_binary_message_inner";
        v68 = "%{public}s called with null (!indeterminate), backtrace limit exceeded";
        goto LABEL_360;
      }

      goto LABEL_361;
    }

    backtrace_string = __nw_create_backtrace_string();
    v66 = __nwlog_obj();
    v67 = v197;
    v101 = os_log_type_enabled(v66, v197);
    if (!backtrace_string)
    {
      if (v101)
      {
        *buf = 136446210;
        v204 = "nw_http_fillout_binary_message_inner";
        v68 = "%{public}s called with null (!indeterminate), no backtrace";
        goto LABEL_360;
      }

      goto LABEL_361;
    }

    if (!v101)
    {
      goto LABEL_189;
    }

    *buf = 136446466;
    v204 = "nw_http_fillout_binary_message_inner";
    v205 = 2082;
    v206 = backtrace_string;
    v75 = "%{public}s called with null (!indeterminate), dumping backtrace:%{public}s";
LABEL_188:
    _os_log_impl(&dword_181A37000, v66, v67, v75, buf, 0x16u);
    goto LABEL_189;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v65 = _os_log_send_and_compose_impl();
    LOBYTE(v197) = 16;
    LOBYTE(v193) = 0;
    if (!__nwlog_fault(v65, &v197, &v193))
    {
      goto LABEL_361;
    }

    if (v197 == 17)
    {
      v66 = __nwlog_obj();
      v67 = v197;
      if (os_log_type_enabled(v66, v197))
      {
        *buf = 136446210;
        v204 = "nw_http_fillout_binary_message_inner";
        v68 = "%{public}s called with null body_content";
        goto LABEL_360;
      }

LABEL_361:
      if (v65)
      {
        free(v65);
      }

      return 0;
    }

    if (v193 != 1)
    {
      v66 = __nwlog_obj();
      v67 = v197;
      if (os_log_type_enabled(v66, v197))
      {
        *buf = 136446210;
        v204 = "nw_http_fillout_binary_message_inner";
        v68 = "%{public}s called with null body_content, backtrace limit exceeded";
        goto LABEL_360;
      }

      goto LABEL_361;
    }

    backtrace_string = __nw_create_backtrace_string();
    v66 = __nwlog_obj();
    v67 = v197;
    v102 = os_log_type_enabled(v66, v197);
    if (!backtrace_string)
    {
      if (v102)
      {
        *buf = 136446210;
        v204 = "nw_http_fillout_binary_message_inner";
        v68 = "%{public}s called with null body_content, no backtrace";
        goto LABEL_360;
      }

      goto LABEL_361;
    }

    if (v102)
    {
      *buf = 136446466;
      v204 = "nw_http_fillout_binary_message_inner";
      v205 = 2082;
      v206 = backtrace_string;
      v75 = "%{public}s called with null body_content, dumping backtrace:%{public}s";
      goto LABEL_188;
    }

LABEL_189:
    free(backtrace_string);
    goto LABEL_361;
  }

LABEL_6:
  v12 = nw_http_metadata_get_type(a1);
  v197 = 0;
  v198 = &v197;
  v199 = 0x2000000000;
  v200 = a5;
  v193 = 0;
  v194 = &v193;
  v195 = 0x2000000000;
  v196 = a6;
  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "_http_safe_append";
    v69 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v69, &__src, type))
    {
      goto LABEL_321;
    }

    if (__src == 17)
    {
      v70 = __nwlog_obj();
      v71 = __src;
      if (!os_log_type_enabled(v70, __src))
      {
        goto LABEL_321;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v72 = "%{public}s called with null (*remaining >= length)";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v85 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = __src;
      v86 = os_log_type_enabled(v70, __src);
      if (v85)
      {
        if (v86)
        {
          *buf = 136446466;
          v204 = "_http_safe_append";
          v205 = 2082;
          v206 = v85;
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v85);
LABEL_321:
        if (v69)
        {
          free(v69);
        }

        v198[3] = 0;
        __nwlog_obj();
        *buf = 136446210;
        v204 = "nw_http_fillout_binary_message_inner";
        v77 = _os_log_send_and_compose_impl();
        LOBYTE(__src) = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v77, &__src, type))
        {
          goto LABEL_367;
        }

        if (__src == 17)
        {
          v78 = __nwlog_obj();
          v79 = __src;
          if (!os_log_type_enabled(v78, __src))
          {
            goto LABEL_367;
          }

          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v80 = "%{public}s called with null cursor";
          goto LABEL_366;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v78 = __nwlog_obj();
          v79 = __src;
          if (!os_log_type_enabled(v78, __src))
          {
            goto LABEL_367;
          }

          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v80 = "%{public}s called with null cursor, backtrace limit exceeded";
          goto LABEL_366;
        }

        v107 = __nw_create_backtrace_string();
        v78 = __nwlog_obj();
        v79 = __src;
        v147 = os_log_type_enabled(v78, __src);
        if (!v107)
        {
          if (!v147)
          {
            goto LABEL_367;
          }

          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v80 = "%{public}s called with null cursor, no backtrace";
          goto LABEL_366;
        }

        if (v147)
        {
          *buf = 136446466;
          v204 = "nw_http_fillout_binary_message_inner";
          v205 = 2082;
          v206 = v107;
          v109 = "%{public}s called with null cursor, dumping backtrace:%{public}s";
          goto LABEL_331;
        }

LABEL_332:
        free(v107);
        goto LABEL_367;
      }

      if (!v86)
      {
        goto LABEL_321;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v72 = "%{public}s called with null (*remaining >= length), no backtrace";
    }

    else
    {
      v70 = __nwlog_obj();
      v71 = __src;
      if (!os_log_type_enabled(v70, __src))
      {
        goto LABEL_321;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v72 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0xCu);
    goto LABEL_321;
  }

  v13 = v12 != 1;
  if (v12 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  if (a2)
  {
    v13 = v14;
  }

  *a5 = v13;
  v196 = a6 - 1;
  v200 = a5 + 1;
  if (v12 == 1)
  {
    v18 = nw_http_metadata_copy_request(a1);
    if (v18)
    {
      v192[0] = MEMORY[0x1E69E9820];
      v192[1] = 0x40000000;
      v192[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke;
      v192[3] = &unk_1E6A34600;
      v192[4] = &v197;
      v192[5] = &v193;
      v19 = v18;
      v20 = v192;
      _nw_http_request_access_method(v19, v20);

      v191[0] = MEMORY[0x1E69E9820];
      v191[1] = 0x40000000;
      v191[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_16;
      v191[3] = &unk_1E6A34628;
      v191[4] = &v197;
      v191[5] = &v193;
      v21 = v19;
      v22 = v191;
      _nw_http_request_access_scheme(v21, v22);

      v190[0] = MEMORY[0x1E69E9820];
      v190[1] = 0x40000000;
      v190[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_18;
      v190[3] = &unk_1E6A34650;
      v190[4] = &v197;
      v190[5] = &v193;
      v23 = v21;
      v24 = v190;
      _nw_http_request_access_authority(v23, v24);

      v189[0] = MEMORY[0x1E69E9820];
      v189[1] = 0x40000000;
      v189[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_20;
      v189[3] = &unk_1E6A34678;
      v189[4] = &v197;
      v189[5] = &v193;
      v15 = v23;
      v25 = v189;
      _nw_http_request_access_path(v15, v25);

LABEL_26:
      os_release(v15);
      goto LABEL_27;
    }

    __nwlog_obj();
    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v77 = _os_log_send_and_compose_impl();
    LOBYTE(__src) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v77, &__src, type))
    {
      goto LABEL_367;
    }

    if (__src == 17)
    {
      v78 = __nwlog_obj();
      v79 = __src;
      if (!os_log_type_enabled(v78, __src))
      {
        goto LABEL_367;
      }

      *buf = 136446210;
      v204 = "nw_http_fillout_binary_message_inner";
      v80 = "%{public}s called with null request";
      goto LABEL_366;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v78 = __nwlog_obj();
      v79 = __src;
      if (!os_log_type_enabled(v78, __src))
      {
        goto LABEL_367;
      }

      *buf = 136446210;
      v204 = "nw_http_fillout_binary_message_inner";
      v80 = "%{public}s called with null request, backtrace limit exceeded";
      goto LABEL_366;
    }

    v107 = __nw_create_backtrace_string();
    v78 = __nwlog_obj();
    v79 = __src;
    v108 = os_log_type_enabled(v78, __src);
    if (!v107)
    {
      if (!v108)
      {
        goto LABEL_367;
      }

      *buf = 136446210;
      v204 = "nw_http_fillout_binary_message_inner";
      v80 = "%{public}s called with null request, no backtrace";
LABEL_366:
      _os_log_impl(&dword_181A37000, v78, v79, v80, buf, 0xCu);
LABEL_367:
      if (v77)
      {
        free(v77);
      }

      goto LABEL_394;
    }

    if (v108)
    {
      *buf = 136446466;
      v204 = "nw_http_fillout_binary_message_inner";
      v205 = 2082;
      v206 = v107;
      v109 = "%{public}s called with null request, dumping backtrace:%{public}s";
LABEL_331:
      _os_log_impl(&dword_181A37000, v78, v79, v109, buf, 0x16u);
      goto LABEL_332;
    }

    goto LABEL_332;
  }

  v15 = nw_http_metadata_copy_response(a1);
  status_code = nw_http_response_get_status_code(v15);
  if (status_code > 0x3F)
  {
    if ((status_code & 0xC000) != 0)
    {
      __src = bswap32(status_code | 0x80000000);
      v17 = 4;
    }

    else
    {
      __src = __rev16(status_code | 0x4000);
      v17 = 2;
    }
  }

  else
  {
    __src = status_code;
    v17 = 1;
  }

  v26 = v198[3];
  if (!v26)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "_http_safe_append";
    v81 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v177[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v81, type, v177))
    {
      goto LABEL_374;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v82 = __nwlog_obj();
      v83 = type[0];
      if (!os_log_type_enabled(v82, type[0]))
      {
        goto LABEL_374;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v84 = "%{public}s called with null buffer";
      goto LABEL_373;
    }

    if (v177[0] != OS_LOG_TYPE_INFO)
    {
      v82 = __nwlog_obj();
      v83 = type[0];
      if (!os_log_type_enabled(v82, type[0]))
      {
        goto LABEL_374;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v84 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_373;
    }

    v110 = __nw_create_backtrace_string();
    v82 = __nwlog_obj();
    v83 = type[0];
    v111 = os_log_type_enabled(v82, type[0]);
    if (!v110)
    {
      if (!v111)
      {
        goto LABEL_374;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v84 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_373;
    }

    if (v111)
    {
      *buf = 136446466;
      v204 = "_http_safe_append";
      v205 = 2082;
      v206 = v110;
      _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v110);
LABEL_374:
    if (!v81)
    {
      goto LABEL_376;
    }

    goto LABEL_375;
  }

  v27 = v194;
  if (v194[3] < v17)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "_http_safe_append";
    v81 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v177[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v81, type, v177))
    {
      goto LABEL_374;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v82 = __nwlog_obj();
      v83 = type[0];
      if (!os_log_type_enabled(v82, type[0]))
      {
        goto LABEL_374;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v84 = "%{public}s called with null (*remaining >= length)";
      goto LABEL_373;
    }

    if (v177[0] != OS_LOG_TYPE_INFO)
    {
      v82 = __nwlog_obj();
      v83 = type[0];
      if (!os_log_type_enabled(v82, type[0]))
      {
        goto LABEL_374;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v84 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
      goto LABEL_373;
    }

    v113 = __nw_create_backtrace_string();
    v82 = __nwlog_obj();
    v83 = type[0];
    v114 = os_log_type_enabled(v82, type[0]);
    if (v113)
    {
      if (v114)
      {
        *buf = 136446466;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = v113;
        _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v113);
      if (!v81)
      {
LABEL_376:
        v198[3] = 0;
        __nwlog_obj();
        *buf = 136446210;
        v204 = "nw_http_fillout_binary_message_inner";
        v152 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v177[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v152, type, v177))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v153 = __nwlog_obj();
            v154 = type[0];
            if (os_log_type_enabled(v153, type[0]))
            {
              *buf = 136446210;
              v204 = "nw_http_fillout_binary_message_inner";
              v155 = "%{public}s called with null cursor";
LABEL_389:
              _os_log_impl(&dword_181A37000, v153, v154, v155, buf, 0xCu);
            }
          }

          else if (v177[0] == OS_LOG_TYPE_INFO)
          {
            v156 = __nw_create_backtrace_string();
            v153 = __nwlog_obj();
            v154 = type[0];
            v157 = os_log_type_enabled(v153, type[0]);
            if (v156)
            {
              if (v157)
              {
                *buf = 136446466;
                v204 = "nw_http_fillout_binary_message_inner";
                v205 = 2082;
                v206 = v156;
                _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v156);
              goto LABEL_390;
            }

            if (v157)
            {
              *buf = 136446210;
              v204 = "nw_http_fillout_binary_message_inner";
              v155 = "%{public}s called with null cursor, no backtrace";
              goto LABEL_389;
            }
          }

          else
          {
            v153 = __nwlog_obj();
            v154 = type[0];
            if (os_log_type_enabled(v153, type[0]))
            {
              *buf = 136446210;
              v204 = "nw_http_fillout_binary_message_inner";
              v155 = "%{public}s called with null cursor, backtrace limit exceeded";
              goto LABEL_389;
            }
          }
        }

LABEL_390:
        if (v152)
        {
          free(v152);
        }

        if (v15)
        {
          os_release(v15);
        }

LABEL_394:
        v54 = 0;
        goto LABEL_80;
      }

LABEL_375:
      free(v81);
      goto LABEL_376;
    }

    if (v114)
    {
      *buf = 136446210;
      v204 = "_http_safe_append";
      v84 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_373:
      _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
      goto LABEL_374;
    }

    goto LABEL_374;
  }

  memcpy(v26, &__src, v17);
  v28 = v27[3];
  v27[3] = v28 - v17;
  if (v28 < v17)
  {
    if (gLogDatapath == 1)
    {
      log = __nwlog_obj();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        v112 = v27[3];
        *buf = 136446978;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = "*remaining";
        v207 = 2048;
        v208 = v17;
        v209 = 2048;
        v210 = v112;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v27[3] = 0;
  }

  v198[3] = &v26[v17];
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_27:
  __src = 0;
  p_src = &__src;
  v187 = 0x2000000000;
  v188 = 0;
  v29 = nw_http_metadata_copy_header_fields(a1);
  v184[0] = MEMORY[0x1E69E9820];
  v184[1] = 0x40000000;
  v184[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_22;
  v184[3] = &unk_1E6A346A0;
  v184[4] = &__src;
  nw_http_fields_enumerate(v29, v184);
  if (a2)
  {
    goto LABEL_42;
  }

  v30 = p_src[3];
  if (v30 <= 0x3F)
  {
    *type = p_src[3];
    v31 = 1;
    goto LABEL_36;
  }

  if (!(v30 >> 14))
  {
    *type = bswap32(v30 | 0x4000) >> 16;
    v31 = 2;
    goto LABEL_36;
  }

  if (!(v30 >> 30))
  {
    *type = bswap32(v30 | 0x80000000);
    v31 = 4;
    goto LABEL_36;
  }

  if (!(v30 >> 62))
  {
    *type = bswap64(v30 | 0xC000000000000000);
    v31 = 8;
LABEL_36:
    v32 = v198[3];
    if (v32)
    {
      v33 = v194;
      if (v194[3] >= v31)
      {
        memcpy(v32, type, v31);
        v34 = v33[3];
        v33[3] = v34 - v31;
        if (v34 < v31)
        {
          if (gLogDatapath == 1)
          {
            v123 = __nwlog_obj();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
            {
              v124 = v33[3];
              *buf = 136446978;
              v204 = "_http_safe_append";
              v205 = 2082;
              v206 = "*remaining";
              v207 = 2048;
              v208 = v31;
              v209 = 2048;
              v210 = v124;
              _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          v33[3] = 0;
        }

        v198[3] = &v32[v31];
        goto LABEL_42;
      }

      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v87 = _os_log_send_and_compose_impl();
      v177[0] = OS_LOG_TYPE_ERROR;
      v202 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v87, v177, &v202))
      {
        if (v177[0] == OS_LOG_TYPE_FAULT)
        {
          v88 = __nwlog_obj();
          v89 = v177[0];
          if (!os_log_type_enabled(v88, v177[0]))
          {
            goto LABEL_425;
          }

          *buf = 136446210;
          v204 = "_http_safe_append";
          v90 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_424;
        }

        if (v202 != OS_LOG_TYPE_INFO)
        {
          v88 = __nwlog_obj();
          v89 = v177[0];
          if (!os_log_type_enabled(v88, v177[0]))
          {
            goto LABEL_425;
          }

          *buf = 136446210;
          v204 = "_http_safe_append";
          v90 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_424;
        }

        v125 = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v89 = v177[0];
        v126 = os_log_type_enabled(v88, v177[0]);
        if (v125)
        {
          if (v126)
          {
            *buf = 136446466;
            v204 = "_http_safe_append";
            v205 = 2082;
            v206 = v125;
            _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v125);
          if (!v87)
          {
            goto LABEL_427;
          }

          goto LABEL_426;
        }

        if (v126)
        {
          *buf = 136446210;
          v204 = "_http_safe_append";
          v90 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_424:
          _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0xCu);
        }
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v87 = _os_log_send_and_compose_impl();
      v177[0] = OS_LOG_TYPE_ERROR;
      v202 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v87, v177, &v202))
      {
        goto LABEL_425;
      }

      if (v177[0] == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = v177[0];
        if (!os_log_type_enabled(v88, v177[0]))
        {
          goto LABEL_425;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v90 = "%{public}s called with null buffer";
        goto LABEL_424;
      }

      if (v202 != OS_LOG_TYPE_INFO)
      {
        v88 = __nwlog_obj();
        v89 = v177[0];
        if (!os_log_type_enabled(v88, v177[0]))
        {
          goto LABEL_425;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v90 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_424;
      }

      v119 = __nw_create_backtrace_string();
      v88 = __nwlog_obj();
      v89 = v177[0];
      v120 = os_log_type_enabled(v88, v177[0]);
      if (!v119)
      {
        if (!v120)
        {
          goto LABEL_425;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v90 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_424;
      }

      if (v120)
      {
        *buf = 136446466;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = v119;
        _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v119);
    }

LABEL_425:
    if (!v87)
    {
LABEL_427:
      v198[3] = 0;
      goto LABEL_428;
    }

LABEL_426:
    free(v87);
    goto LABEL_427;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v204 = "_http_vle_encode";
  v205 = 2048;
  v206 = v30;
  v61 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v61);
  if (result)
  {
    goto LABEL_529;
  }

  free(v61);
  if (!v198[3])
  {
LABEL_428:
    __nwlog_obj();
    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v158 = _os_log_send_and_compose_impl();
    v177[0] = OS_LOG_TYPE_ERROR;
    v202 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v158, v177, &v202))
    {
      goto LABEL_525;
    }

    if (v177[0] == OS_LOG_TYPE_FAULT)
    {
      v159 = __nwlog_obj();
      v160 = v177[0];
      if (!os_log_type_enabled(v159, v177[0]))
      {
        goto LABEL_525;
      }

      *buf = 136446210;
      v204 = "nw_http_fillout_binary_message_inner";
      v161 = "%{public}s called with null cursor";
    }

    else if (v202 == OS_LOG_TYPE_INFO)
    {
      v164 = __nw_create_backtrace_string();
      v159 = __nwlog_obj();
      v160 = v177[0];
      v165 = os_log_type_enabled(v159, v177[0]);
      if (v164)
      {
        if (v165)
        {
          *buf = 136446466;
          v204 = "nw_http_fillout_binary_message_inner";
          v205 = 2082;
          v206 = v164;
          _os_log_impl(&dword_181A37000, v159, v160, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v164);
LABEL_525:
        if (!v158)
        {
          goto LABEL_527;
        }

        goto LABEL_526;
      }

      if (!v165)
      {
        goto LABEL_525;
      }

      *buf = 136446210;
      v204 = "nw_http_fillout_binary_message_inner";
      v161 = "%{public}s called with null cursor, no backtrace";
    }

    else
    {
      v159 = __nwlog_obj();
      v160 = v177[0];
      if (!os_log_type_enabled(v159, v177[0]))
      {
        goto LABEL_525;
      }

      *buf = 136446210;
      v204 = "nw_http_fillout_binary_message_inner";
      v161 = "%{public}s called with null cursor, backtrace limit exceeded";
    }

LABEL_524:
    _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0xCu);
    goto LABEL_525;
  }

LABEL_42:
  v183[0] = MEMORY[0x1E69E9820];
  v183[1] = 0x40000000;
  v183[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_24;
  v183[3] = &unk_1E6A346F0;
  v183[4] = &v197;
  v183[5] = &v193;
  nw_http_fields_enumerate_const_field(v29, v183);
  if (a2)
  {
    v35 = v198[3];
    if (!v35)
    {
      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v37 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v177[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v37, type, v177))
      {
        goto LABEL_400;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (!os_log_type_enabled(v38, type[0]))
        {
          goto LABEL_400;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v40 = "%{public}s called with null buffer";
        goto LABEL_399;
      }

      if (v177[0] != OS_LOG_TYPE_INFO)
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (!os_log_type_enabled(v38, type[0]))
        {
          goto LABEL_400;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v40 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_399;
      }

      v115 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type[0];
      v116 = os_log_type_enabled(v38, type[0]);
      if (!v115)
      {
        if (!v116)
        {
          goto LABEL_400;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v40 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_399;
      }

      if (v116)
      {
        *buf = 136446466;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = v115;
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v115);
      goto LABEL_400;
    }

    v36 = v194;
    if (!v194[3])
    {
      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v37 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v177[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v37, type, v177))
      {
        goto LABEL_400;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (!os_log_type_enabled(v38, type[0]))
        {
          goto LABEL_400;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v40 = "%{public}s called with null (*remaining >= length)";
        goto LABEL_399;
      }

      if (v177[0] != OS_LOG_TYPE_INFO)
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (!os_log_type_enabled(v38, type[0]))
        {
          goto LABEL_400;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v40 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
        goto LABEL_399;
      }

      v117 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type[0];
      v118 = os_log_type_enabled(v38, type[0]);
      if (v117)
      {
        if (v118)
        {
          *buf = 136446466;
          v204 = "_http_safe_append";
          v205 = 2082;
          v206 = v117;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v117);
        if (!v37)
        {
LABEL_402:
          v198[3] = 0;
          __nwlog_obj();
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v158 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v177[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v158, type, v177))
          {
            goto LABEL_525;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v159 = __nwlog_obj();
            v160 = type[0];
            if (!os_log_type_enabled(v159, type[0]))
            {
              goto LABEL_525;
            }

            *buf = 136446210;
            v204 = "nw_http_fillout_binary_message_inner";
            v161 = "%{public}s called with null cursor";
            goto LABEL_524;
          }

          if (v177[0] != OS_LOG_TYPE_INFO)
          {
            v159 = __nwlog_obj();
            v160 = type[0];
            if (!os_log_type_enabled(v159, type[0]))
            {
              goto LABEL_525;
            }

            *buf = 136446210;
            v204 = "nw_http_fillout_binary_message_inner";
            v161 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_524;
          }

          v162 = __nw_create_backtrace_string();
          v159 = __nwlog_obj();
          v160 = type[0];
          v163 = os_log_type_enabled(v159, type[0]);
          if (!v162)
          {
            if (!v163)
            {
              goto LABEL_525;
            }

            *buf = 136446210;
            v204 = "nw_http_fillout_binary_message_inner";
            v161 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_524;
          }

          if (!v163)
          {
            goto LABEL_518;
          }

LABEL_517:
          *buf = 136446466;
          v204 = "nw_http_fillout_binary_message_inner";
          v205 = 2082;
          v206 = v162;
          _os_log_impl(&dword_181A37000, v159, v160, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
LABEL_518:
          free(v162);
          if (v158)
          {
LABEL_526:
            free(v158);
          }

LABEL_527:
          v54 = 0;
          if (!v29)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }

LABEL_401:
        free(v37);
        goto LABEL_402;
      }

      if (v118)
      {
        *buf = 136446210;
        v204 = "_http_safe_append";
        v40 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_399:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }

LABEL_400:
      if (!v37)
      {
        goto LABEL_402;
      }

      goto LABEL_401;
    }

LABEL_74:
    *v35 = 0;
    v53 = v36[3];
    v36[3] = v53 - 1;
    if (!v53)
    {
      if (gLogDatapath == 1)
      {
        v95 = __nwlog_obj();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
        {
          v96 = v36[3];
          *buf = 136446978;
          v204 = "_http_safe_append";
          v205 = 2082;
          v206 = "*remaining";
          v207 = 2048;
          v208 = 1;
          v209 = 2048;
          v210 = v96;
          _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      v36[3] = 0;
    }

    v198[3] = (v35 + 1);
    v54 = 1;
    if (!v29)
    {
      goto LABEL_79;
    }

LABEL_78:
    os_release(v29);
LABEL_79:
    _Block_object_dispose(&__src, 8);
LABEL_80:
    _Block_object_dispose(&v193, 8);
    _Block_object_dispose(&v197, 8);
    return v54;
  }

  if (a4 > 0x3F)
  {
    if (a4 >> 14)
    {
      if (a4 >> 30)
      {
        if (a4 >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446466;
          v204 = "_http_vle_encode";
          v205 = 2048;
          v206 = a4;
          v62 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v62);
          if (result)
          {
            goto LABEL_529;
          }

          free(v62);
          v45 = v198[3];
          if (v45)
          {
LABEL_63:
            if (a3)
            {
              v46 = v194;
              if (v194[3] >= a4)
              {
                memcpy(v45, a3, a4);
                v47 = v46[3];
                v46[3] = v47 - a4;
                if (v47 < a4)
                {
                  if (gLogDatapath == 1)
                  {
                    v137 = __nwlog_obj();
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
                    {
                      v138 = v46[3];
                      *buf = 136446978;
                      v204 = "_http_safe_append";
                      v205 = 2082;
                      v206 = "*remaining";
                      v207 = 2048;
                      v208 = a4;
                      v209 = 2048;
                      v210 = v138;
                      _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
                    }
                  }

                  v46[3] = 0;
                }

                v198[3] = &v45[a4];
                goto LABEL_69;
              }

              __nwlog_obj();
              *buf = 136446210;
              v204 = "_http_safe_append";
              v97 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              v177[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v97, type, v177))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v98 = __nwlog_obj();
                  v99 = type[0];
                  if (!os_log_type_enabled(v98, type[0]))
                  {
                    goto LABEL_464;
                  }

                  *buf = 136446210;
                  v204 = "_http_safe_append";
                  v100 = "%{public}s called with null (*remaining >= length)";
                  goto LABEL_463;
                }

                if (v177[0] != OS_LOG_TYPE_INFO)
                {
                  v98 = __nwlog_obj();
                  v99 = type[0];
                  if (!os_log_type_enabled(v98, type[0]))
                  {
                    goto LABEL_464;
                  }

                  *buf = 136446210;
                  v204 = "_http_safe_append";
                  v100 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
                  goto LABEL_463;
                }

                v139 = __nw_create_backtrace_string();
                v98 = __nwlog_obj();
                v99 = type[0];
                v140 = os_log_type_enabled(v98, type[0]);
                if (v139)
                {
                  if (v140)
                  {
                    *buf = 136446466;
                    v204 = "_http_safe_append";
                    v205 = 2082;
                    v206 = v139;
                    _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v139);
                  if (!v97)
                  {
LABEL_466:
                    v198[3] = 0;
                    __nwlog_obj();
                    *buf = 136446210;
                    v204 = "nw_http_fillout_binary_message_inner";
                    v158 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    v177[0] = OS_LOG_TYPE_DEFAULT;
                    if ((__nwlog_fault(v158, type, v177) & 1) == 0)
                    {
                      goto LABEL_525;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v159 = __nwlog_obj();
                      v160 = type[0];
                      if (!os_log_type_enabled(v159, type[0]))
                      {
                        goto LABEL_525;
                      }

                      *buf = 136446210;
                      v204 = "nw_http_fillout_binary_message_inner";
                      v161 = "%{public}s called with null cursor";
                      goto LABEL_524;
                    }

                    if (v177[0] != OS_LOG_TYPE_INFO)
                    {
                      v159 = __nwlog_obj();
                      v160 = type[0];
                      if (!os_log_type_enabled(v159, type[0]))
                      {
                        goto LABEL_525;
                      }

                      *buf = 136446210;
                      v204 = "nw_http_fillout_binary_message_inner";
                      v161 = "%{public}s called with null cursor, backtrace limit exceeded";
                      goto LABEL_524;
                    }

                    v162 = __nw_create_backtrace_string();
                    v159 = __nwlog_obj();
                    v160 = type[0];
                    v167 = os_log_type_enabled(v159, type[0]);
                    if (!v162)
                    {
                      if (!v167)
                      {
                        goto LABEL_525;
                      }

                      *buf = 136446210;
                      v204 = "nw_http_fillout_binary_message_inner";
                      v161 = "%{public}s called with null cursor, no backtrace";
                      goto LABEL_524;
                    }

                    if (!v167)
                    {
                      goto LABEL_518;
                    }

                    goto LABEL_517;
                  }

LABEL_465:
                  free(v97);
                  goto LABEL_466;
                }

                if (v140)
                {
                  *buf = 136446210;
                  v204 = "_http_safe_append";
                  v100 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_463:
                  _os_log_impl(&dword_181A37000, v98, v99, v100, buf, 0xCu);
                }
              }
            }

            else
            {
              __nwlog_obj();
              *buf = 136446210;
              v204 = "_http_safe_append";
              v97 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              v177[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v97, type, v177))
              {
                goto LABEL_464;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v98 = __nwlog_obj();
                v99 = type[0];
                if (!os_log_type_enabled(v98, type[0]))
                {
                  goto LABEL_464;
                }

                *buf = 136446210;
                v204 = "_http_safe_append";
                v100 = "%{public}s called with null data";
                goto LABEL_463;
              }

              if (v177[0] != OS_LOG_TYPE_INFO)
              {
                v98 = __nwlog_obj();
                v99 = type[0];
                if (!os_log_type_enabled(v98, type[0]))
                {
                  goto LABEL_464;
                }

                *buf = 136446210;
                v204 = "_http_safe_append";
                v100 = "%{public}s called with null data, backtrace limit exceeded";
                goto LABEL_463;
              }

              v135 = __nw_create_backtrace_string();
              v98 = __nwlog_obj();
              v99 = type[0];
              v136 = os_log_type_enabled(v98, type[0]);
              if (!v135)
              {
                if (!v136)
                {
                  goto LABEL_464;
                }

                *buf = 136446210;
                v204 = "_http_safe_append";
                v100 = "%{public}s called with null data, no backtrace";
                goto LABEL_463;
              }

              if (v136)
              {
                *buf = 136446466;
                v204 = "_http_safe_append";
                v205 = 2082;
                v206 = v135;
                _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v135);
            }

LABEL_464:
            if (!v97)
            {
              goto LABEL_466;
            }

            goto LABEL_465;
          }

LABEL_447:
          __nwlog_obj();
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v158 = _os_log_send_and_compose_impl();
          v177[0] = OS_LOG_TYPE_ERROR;
          v202 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v158, v177, &v202))
          {
            goto LABEL_525;
          }

          if (v177[0] == OS_LOG_TYPE_FAULT)
          {
            v159 = __nwlog_obj();
            v160 = v177[0];
            if (!os_log_type_enabled(v159, v177[0]))
            {
              goto LABEL_525;
            }

            *buf = 136446210;
            v204 = "nw_http_fillout_binary_message_inner";
            v161 = "%{public}s called with null cursor";
            goto LABEL_524;
          }

          if (v202 != OS_LOG_TYPE_INFO)
          {
            v159 = __nwlog_obj();
            v160 = v177[0];
            if (!os_log_type_enabled(v159, v177[0]))
            {
              goto LABEL_525;
            }

            *buf = 136446210;
            v204 = "nw_http_fillout_binary_message_inner";
            v161 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_524;
          }

          v162 = __nw_create_backtrace_string();
          v159 = __nwlog_obj();
          v160 = v177[0];
          v166 = os_log_type_enabled(v159, v177[0]);
          if (!v162)
          {
            if (!v166)
            {
              goto LABEL_525;
            }

            *buf = 136446210;
            v204 = "nw_http_fillout_binary_message_inner";
            v161 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_524;
          }

          if (!v166)
          {
            goto LABEL_518;
          }

          goto LABEL_517;
        }

        *type = bswap64(a4 | 0xC000000000000000);
        v41 = 8;
      }

      else
      {
        *type = bswap32(a4 | 0x80000000);
        v41 = 4;
      }
    }

    else
    {
      *type = bswap32(a4 | 0x4000) >> 16;
      v41 = 2;
    }
  }

  else
  {
    *type = a4;
    v41 = 1;
  }

  v42 = v198[3];
  if (!v42)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "_http_safe_append";
    v91 = _os_log_send_and_compose_impl();
    v177[0] = OS_LOG_TYPE_ERROR;
    v202 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v91, v177, &v202))
    {
      goto LABEL_444;
    }

    if (v177[0] == OS_LOG_TYPE_FAULT)
    {
      v92 = __nwlog_obj();
      v93 = v177[0];
      if (!os_log_type_enabled(v92, v177[0]))
      {
        goto LABEL_444;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v94 = "%{public}s called with null buffer";
      goto LABEL_443;
    }

    if (v202 != OS_LOG_TYPE_INFO)
    {
      v92 = __nwlog_obj();
      v93 = v177[0];
      if (!os_log_type_enabled(v92, v177[0]))
      {
        goto LABEL_444;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v94 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_443;
    }

    v121 = __nw_create_backtrace_string();
    v92 = __nwlog_obj();
    v93 = v177[0];
    v122 = os_log_type_enabled(v92, v177[0]);
    if (!v121)
    {
      if (!v122)
      {
        goto LABEL_444;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v94 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_443;
    }

    if (v122)
    {
      *buf = 136446466;
      v204 = "_http_safe_append";
      v205 = 2082;
      v206 = v121;
      _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v121);
LABEL_444:
    if (!v91)
    {
LABEL_446:
      v198[3] = 0;
      goto LABEL_447;
    }

LABEL_445:
    free(v91);
    goto LABEL_446;
  }

  v43 = v194;
  if (v194[3] < v41)
  {
    __nwlog_obj();
    *buf = 136446210;
    v204 = "_http_safe_append";
    v91 = _os_log_send_and_compose_impl();
    v177[0] = OS_LOG_TYPE_ERROR;
    v202 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v91, v177, &v202))
    {
      goto LABEL_444;
    }

    if (v177[0] == OS_LOG_TYPE_FAULT)
    {
      v92 = __nwlog_obj();
      v93 = v177[0];
      if (!os_log_type_enabled(v92, v177[0]))
      {
        goto LABEL_444;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v94 = "%{public}s called with null (*remaining >= length)";
      goto LABEL_443;
    }

    if (v202 != OS_LOG_TYPE_INFO)
    {
      v92 = __nwlog_obj();
      v93 = v177[0];
      if (!os_log_type_enabled(v92, v177[0]))
      {
        goto LABEL_444;
      }

      *buf = 136446210;
      v204 = "_http_safe_append";
      v94 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
      goto LABEL_443;
    }

    v129 = __nw_create_backtrace_string();
    v92 = __nwlog_obj();
    v93 = v177[0];
    v130 = os_log_type_enabled(v92, v177[0]);
    if (v129)
    {
      if (v130)
      {
        *buf = 136446466;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = v129;
        _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v129);
      if (!v91)
      {
        goto LABEL_446;
      }

      goto LABEL_445;
    }

    if (v130)
    {
      *buf = 136446210;
      v204 = "_http_safe_append";
      v94 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_443:
      _os_log_impl(&dword_181A37000, v92, v93, v94, buf, 0xCu);
      goto LABEL_444;
    }

    goto LABEL_444;
  }

  memcpy(v42, type, v41);
  v44 = v43[3];
  v43[3] = v44 - v41;
  if (v44 < v41)
  {
    if (gLogDatapath == 1)
    {
      v127 = __nwlog_obj();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
      {
        v128 = v43[3];
        *buf = 136446978;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = "*remaining";
        v207 = 2048;
        v208 = v41;
        v209 = 2048;
        v210 = v128;
        _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v43[3] = 0;
  }

  v45 = &v42[v41];
  v198[3] = v45;
  if (a4)
  {
    goto LABEL_63;
  }

LABEL_69:
  v48 = nw_http_metadata_copy_trailer_fields(a1);
  if (!v48)
  {
    v35 = v198[3];
    if (v35)
    {
      v36 = v194;
      if (v194[3])
      {
        goto LABEL_74;
      }

      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v131 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v177[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v131, type, v177))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v132 = __nwlog_obj();
          v133 = type[0];
          if (!os_log_type_enabled(v132, type[0]))
          {
            goto LABEL_508;
          }

          *buf = 136446210;
          v204 = "_http_safe_append";
          v134 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_507;
        }

        if (v177[0] != OS_LOG_TYPE_INFO)
        {
          v132 = __nwlog_obj();
          v133 = type[0];
          if (!os_log_type_enabled(v132, type[0]))
          {
            goto LABEL_508;
          }

          *buf = 136446210;
          v204 = "_http_safe_append";
          v134 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_507;
        }

        v150 = __nw_create_backtrace_string();
        v132 = __nwlog_obj();
        v133 = type[0];
        v151 = os_log_type_enabled(v132, type[0]);
        if (v150)
        {
          if (v151)
          {
            *buf = 136446466;
            v204 = "_http_safe_append";
            v205 = 2082;
            v206 = v150;
            _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v150);
          if (!v131)
          {
LABEL_510:
            v198[3] = 0;
            __nwlog_obj();
            *buf = 136446210;
            v204 = "nw_http_fillout_binary_message_inner";
            v158 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v177[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v158, type, v177))
            {
              goto LABEL_525;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v159 = __nwlog_obj();
              v160 = type[0];
              if (!os_log_type_enabled(v159, type[0]))
              {
                goto LABEL_525;
              }

              *buf = 136446210;
              v204 = "nw_http_fillout_binary_message_inner";
              v161 = "%{public}s called with null cursor";
              goto LABEL_524;
            }

            if (v177[0] != OS_LOG_TYPE_INFO)
            {
              v159 = __nwlog_obj();
              v160 = type[0];
              if (!os_log_type_enabled(v159, type[0]))
              {
                goto LABEL_525;
              }

              *buf = 136446210;
              v204 = "nw_http_fillout_binary_message_inner";
              v161 = "%{public}s called with null cursor, backtrace limit exceeded";
              goto LABEL_524;
            }

            v162 = __nw_create_backtrace_string();
            v159 = __nwlog_obj();
            v160 = type[0];
            v174 = os_log_type_enabled(v159, type[0]);
            if (!v162)
            {
              if (!v174)
              {
                goto LABEL_525;
              }

              *buf = 136446210;
              v204 = "nw_http_fillout_binary_message_inner";
              v161 = "%{public}s called with null cursor, no backtrace";
              goto LABEL_524;
            }

            if (!v174)
            {
              goto LABEL_518;
            }

            goto LABEL_517;
          }

LABEL_509:
          free(v131);
          goto LABEL_510;
        }

        if (v151)
        {
          *buf = 136446210;
          v204 = "_http_safe_append";
          v134 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_507:
          _os_log_impl(&dword_181A37000, v132, v133, v134, buf, 0xCu);
        }
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v131 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v177[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v131, type, v177))
      {
        goto LABEL_508;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v132 = __nwlog_obj();
        v133 = type[0];
        if (!os_log_type_enabled(v132, type[0]))
        {
          goto LABEL_508;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v134 = "%{public}s called with null buffer";
        goto LABEL_507;
      }

      if (v177[0] != OS_LOG_TYPE_INFO)
      {
        v132 = __nwlog_obj();
        v133 = type[0];
        if (!os_log_type_enabled(v132, type[0]))
        {
          goto LABEL_508;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v134 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_507;
      }

      v148 = __nw_create_backtrace_string();
      v132 = __nwlog_obj();
      v133 = type[0];
      v149 = os_log_type_enabled(v132, type[0]);
      if (!v148)
      {
        if (!v149)
        {
          goto LABEL_508;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v134 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_507;
      }

      if (v149)
      {
        *buf = 136446466;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = v148;
        _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v148);
    }

LABEL_508:
    if (!v131)
    {
      goto LABEL_510;
    }

    goto LABEL_509;
  }

  *type = 0;
  v180 = type;
  v181 = 0x2000000000;
  v182 = 0;
  v178[0] = MEMORY[0x1E69E9820];
  v178[1] = 0x40000000;
  v178[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_27;
  v178[3] = &unk_1E6A34718;
  v178[4] = type;
  v49 = v48;
  v50 = v178;
  _nw_http_fields_enumerate(v49, v50);

  v51 = *(v180 + 3);
  if (v51 <= 0x3F)
  {
    *v177 = *(v180 + 3);
    v52 = 1;
    goto LABEL_88;
  }

  if (!(v51 >> 14))
  {
    *v177 = bswap32(v51 | 0x4000) >> 16;
    v52 = 2;
    goto LABEL_88;
  }

  if (!(v51 >> 30))
  {
    *v177 = bswap32(v51 | 0x80000000);
    v52 = 4;
    goto LABEL_88;
  }

  if (!(v51 >> 62))
  {
    *v177 = bswap64(v51 | 0xC000000000000000);
    v52 = 8;
LABEL_88:
    v56 = v198[3];
    if (v56)
    {
      v57 = v194;
      if (v194[3] >= v52)
      {
        memcpy(v56, v177, v52);
        v58 = v57[3];
        v57[3] = v58 - v52;
        if (v58 < v52)
        {
          if (gLogDatapath == 1)
          {
            v143 = __nwlog_obj();
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
            {
              v144 = v57[3];
              *buf = 136446978;
              v204 = "_http_safe_append";
              v205 = 2082;
              v206 = "*remaining";
              v207 = 2048;
              v208 = v52;
              v209 = 2048;
              v210 = v144;
              _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          v57[3] = 0;
        }

        v198[3] = &v56[v52];
LABEL_94:
        v176[0] = MEMORY[0x1E69E9820];
        v176[1] = 0x40000000;
        v176[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_29;
        v176[3] = &unk_1E6A34768;
        v176[4] = &v197;
        v176[5] = &v193;
        v59 = v49;
        v60 = v176;
        _nw_http_fields_enumerate_const_field(v59, v60);

        _Block_object_dispose(type, 8);
        os_release(v59);
        v54 = 1;
        if (!v29)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }

      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v103 = _os_log_send_and_compose_impl();
      v202 = OS_LOG_TYPE_ERROR;
      v201 = 0;
      if (__nwlog_fault(v103, &v202, &v201))
      {
        if (v202 == OS_LOG_TYPE_FAULT)
        {
          v104 = __nwlog_obj();
          v105 = v202;
          if (!os_log_type_enabled(v104, v202))
          {
            goto LABEL_483;
          }

          *buf = 136446210;
          v204 = "_http_safe_append";
          v106 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_482;
        }

        if (v201 != 1)
        {
          v104 = __nwlog_obj();
          v105 = v202;
          if (!os_log_type_enabled(v104, v202))
          {
            goto LABEL_483;
          }

          *buf = 136446210;
          v204 = "_http_safe_append";
          v106 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_482;
        }

        v145 = __nw_create_backtrace_string();
        v104 = __nwlog_obj();
        v105 = v202;
        v146 = os_log_type_enabled(v104, v202);
        if (v145)
        {
          if (v146)
          {
            *buf = 136446466;
            v204 = "_http_safe_append";
            v205 = 2082;
            v206 = v145;
            _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v145);
          if (!v103)
          {
            goto LABEL_485;
          }

          goto LABEL_484;
        }

        if (v146)
        {
          *buf = 136446210;
          v204 = "_http_safe_append";
          v106 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_482:
          _os_log_impl(&dword_181A37000, v104, v105, v106, buf, 0xCu);
        }
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v204 = "_http_safe_append";
      v103 = _os_log_send_and_compose_impl();
      v202 = OS_LOG_TYPE_ERROR;
      v201 = 0;
      if (!__nwlog_fault(v103, &v202, &v201))
      {
        goto LABEL_483;
      }

      if (v202 == OS_LOG_TYPE_FAULT)
      {
        v104 = __nwlog_obj();
        v105 = v202;
        if (!os_log_type_enabled(v104, v202))
        {
          goto LABEL_483;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v106 = "%{public}s called with null buffer";
        goto LABEL_482;
      }

      if (v201 != 1)
      {
        v104 = __nwlog_obj();
        v105 = v202;
        if (!os_log_type_enabled(v104, v202))
        {
          goto LABEL_483;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v106 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_482;
      }

      v141 = __nw_create_backtrace_string();
      v104 = __nwlog_obj();
      v105 = v202;
      v142 = os_log_type_enabled(v104, v202);
      if (!v141)
      {
        if (!v142)
        {
          goto LABEL_483;
        }

        *buf = 136446210;
        v204 = "_http_safe_append";
        v106 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_482;
      }

      if (v142)
      {
        *buf = 136446466;
        v204 = "_http_safe_append";
        v205 = 2082;
        v206 = v141;
        _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v141);
    }

LABEL_483:
    if (!v103)
    {
LABEL_485:
      v198[3] = 0;
      goto LABEL_486;
    }

LABEL_484:
    free(v103);
    goto LABEL_485;
  }

  v63 = __nwlog_obj();
  os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v204 = "_http_vle_encode";
  v205 = 2048;
  v206 = v51;
  v64 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v64);
  if (!result)
  {
    free(v64);
    if (v198[3])
    {
      goto LABEL_94;
    }

LABEL_486:
    __nwlog_obj();
    *buf = 136446210;
    v204 = "nw_http_fillout_binary_message_inner";
    v168 = _os_log_send_and_compose_impl();
    v202 = OS_LOG_TYPE_ERROR;
    v201 = 0;
    if (__nwlog_fault(v168, &v202, &v201))
    {
      if (v202 == OS_LOG_TYPE_FAULT)
      {
        v169 = __nwlog_obj();
        v170 = v202;
        if (os_log_type_enabled(v169, v202))
        {
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v171 = "%{public}s called with null cursor";
LABEL_499:
          _os_log_impl(&dword_181A37000, v169, v170, v171, buf, 0xCu);
        }
      }

      else if (v201 == 1)
      {
        v172 = __nw_create_backtrace_string();
        v169 = __nwlog_obj();
        v170 = v202;
        v173 = os_log_type_enabled(v169, v202);
        if (v172)
        {
          if (v173)
          {
            *buf = 136446466;
            v204 = "nw_http_fillout_binary_message_inner";
            v205 = 2082;
            v206 = v172;
            _os_log_impl(&dword_181A37000, v169, v170, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v172);
          goto LABEL_500;
        }

        if (v173)
        {
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v171 = "%{public}s called with null cursor, no backtrace";
          goto LABEL_499;
        }
      }

      else
      {
        v169 = __nwlog_obj();
        v170 = v202;
        if (os_log_type_enabled(v169, v202))
        {
          *buf = 136446210;
          v204 = "nw_http_fillout_binary_message_inner";
          v171 = "%{public}s called with null cursor, backtrace limit exceeded";
          goto LABEL_499;
        }
      }
    }

LABEL_500:
    if (v168)
    {
      free(v168);
    }

    _Block_object_dispose(type, 8);
    os_release(v49);
    goto LABEL_527;
  }

LABEL_529:
  __break(1u);
  return result;
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke(uint64_t a1, char *__s)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v38 = __nwlog_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = *(v11 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v6;
              v56 = 2048;
              v57 = v39;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v40 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v40)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v40)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_74;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer";
LABEL_111:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }

LABEL_112:
        if (v23)
        {
          free(v23);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v36 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v36)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v36)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_74:
        _os_log_impl(&dword_181A37000, v24, v25, v37, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_112;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v51 = "_http_vle_encode";
  v52 = 2048;
  v53 = v5;
  v17 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v17))
  {
    __break(1u);
    return;
  }

  free(v17);
  v18 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v18 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http_fillout_binary_message_inner_block_invoke";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v19, &type, &v48))
    {
      goto LABEL_105;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
    }

    else
    {
      if (v48 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_105;
        }

        *buf = 136446210;
        v51 = "nw_http_fillout_binary_message_inner_block_invoke";
        v22 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_104;
      }

      v31 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v32 = os_log_type_enabled(v20, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v51 = "nw_http_fillout_binary_message_inner_block_invoke";
          v52 = 2082;
          v53 = v31;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        if (v19)
        {
          goto LABEL_106;
        }

        return;
      }

      if (!v32)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_104:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_105;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v44 = __nwlog_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v45 = *(v15 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v5;
              v56 = 2048;
              v57 = v45;
              _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v46 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v46)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v46)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_86;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data";
LABEL_119:
          _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
        }

LABEL_120:
        if (v27)
        {
          free(v27);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v42 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v42)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v42)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_86:
        _os_log_impl(&dword_181A37000, v28, v29, v43, buf, 0x16u);
      }
    }

    free(v41);
    goto LABEL_120;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_http_fillout_binary_message_inner_block_invoke";
  v19 = _os_log_send_and_compose_impl();
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v19, &__src, &type))
  {
    if (__src == 17)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
      goto LABEL_104;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_104;
    }

    v33 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = __src;
    v34 = os_log_type_enabled(v20, __src);
    if (!v33)
    {
      if (!v34)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_104;
    }

    if (v34)
    {
      *buf = 136446466;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v52 = 2082;
      v53 = v33;
      _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v33);
  }

LABEL_105:
  if (v19)
  {
LABEL_106:
    free(v19);
  }
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_16(uint64_t a1, char *__s)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v38 = __nwlog_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = *(v11 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v6;
              v56 = 2048;
              v57 = v39;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v40 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v40)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v40)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_74;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer";
LABEL_111:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }

LABEL_112:
        if (v23)
        {
          free(v23);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v36 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v36)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v36)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_74:
        _os_log_impl(&dword_181A37000, v24, v25, v37, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_112;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v51 = "_http_vle_encode";
  v52 = 2048;
  v53 = v5;
  v17 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v17))
  {
    __break(1u);
    return;
  }

  free(v17);
  v18 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v18 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http_fillout_binary_message_inner_block_invoke";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v19, &type, &v48))
    {
      goto LABEL_105;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
    }

    else
    {
      if (v48 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_105;
        }

        *buf = 136446210;
        v51 = "nw_http_fillout_binary_message_inner_block_invoke";
        v22 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_104;
      }

      v31 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v32 = os_log_type_enabled(v20, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v51 = "nw_http_fillout_binary_message_inner_block_invoke";
          v52 = 2082;
          v53 = v31;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        if (v19)
        {
          goto LABEL_106;
        }

        return;
      }

      if (!v32)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_104:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_105;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v44 = __nwlog_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v45 = *(v15 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v5;
              v56 = 2048;
              v57 = v45;
              _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v46 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v46)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v46)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_86;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data";
LABEL_119:
          _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
        }

LABEL_120:
        if (v27)
        {
          free(v27);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v42 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v42)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v42)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_86:
        _os_log_impl(&dword_181A37000, v28, v29, v43, buf, 0x16u);
      }
    }

    free(v41);
    goto LABEL_120;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_http_fillout_binary_message_inner_block_invoke";
  v19 = _os_log_send_and_compose_impl();
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v19, &__src, &type))
  {
    if (__src == 17)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
      goto LABEL_104;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_104;
    }

    v33 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = __src;
    v34 = os_log_type_enabled(v20, __src);
    if (!v33)
    {
      if (!v34)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_104;
    }

    if (v34)
    {
      *buf = 136446466;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v52 = 2082;
      v53 = v33;
      _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v33);
  }

LABEL_105:
  if (v19)
  {
LABEL_106:
    free(v19);
  }
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_18(uint64_t a1, char *__s)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v38 = __nwlog_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = *(v11 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v6;
              v56 = 2048;
              v57 = v39;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v40 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v40)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v40)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_74;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer";
LABEL_111:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }

LABEL_112:
        if (v23)
        {
          free(v23);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v36 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v36)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v36)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_74:
        _os_log_impl(&dword_181A37000, v24, v25, v37, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_112;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v51 = "_http_vle_encode";
  v52 = 2048;
  v53 = v5;
  v17 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v17))
  {
    __break(1u);
    return;
  }

  free(v17);
  v18 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v18 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http_fillout_binary_message_inner_block_invoke";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v19, &type, &v48))
    {
      goto LABEL_105;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
    }

    else
    {
      if (v48 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_105;
        }

        *buf = 136446210;
        v51 = "nw_http_fillout_binary_message_inner_block_invoke";
        v22 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_104;
      }

      v31 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v32 = os_log_type_enabled(v20, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v51 = "nw_http_fillout_binary_message_inner_block_invoke";
          v52 = 2082;
          v53 = v31;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        if (v19)
        {
          goto LABEL_106;
        }

        return;
      }

      if (!v32)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_104:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_105;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v44 = __nwlog_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v45 = *(v15 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v5;
              v56 = 2048;
              v57 = v45;
              _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v46 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v46)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v46)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_86;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data";
LABEL_119:
          _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
        }

LABEL_120:
        if (v27)
        {
          free(v27);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v42 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v42)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v42)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_86:
        _os_log_impl(&dword_181A37000, v28, v29, v43, buf, 0x16u);
      }
    }

    free(v41);
    goto LABEL_120;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_http_fillout_binary_message_inner_block_invoke";
  v19 = _os_log_send_and_compose_impl();
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v19, &__src, &type))
  {
    if (__src == 17)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
      goto LABEL_104;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_104;
    }

    v33 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = __src;
    v34 = os_log_type_enabled(v20, __src);
    if (!v33)
    {
      if (!v34)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_104;
    }

    if (v34)
    {
      *buf = 136446466;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v52 = 2082;
      v53 = v33;
      _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v33);
  }

LABEL_105:
  if (v19)
  {
LABEL_106:
    free(v19);
  }
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_20(uint64_t a1, char *__s)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v38 = __nwlog_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = *(v11 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v6;
              v56 = 2048;
              v57 = v39;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v40 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v40)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v40)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_74;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v23 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v23, &type, &v48))
      {
        goto LABEL_112;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer";
LABEL_111:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }

LABEL_112:
        if (v23)
        {
          free(v23);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v48 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v36 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v36)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v26 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      if (v36)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = backtrace_string;
        v37 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_74:
        _os_log_impl(&dword_181A37000, v24, v25, v37, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_112;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446466;
  v51 = "_http_vle_encode";
  v52 = 2048;
  v53 = v5;
  v17 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v17))
  {
    __break(1u);
    return;
  }

  free(v17);
  v18 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v18 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http_fillout_binary_message_inner_block_invoke";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v19, &type, &v48))
    {
      goto LABEL_105;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
    }

    else
    {
      if (v48 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_105;
        }

        *buf = 136446210;
        v51 = "nw_http_fillout_binary_message_inner_block_invoke";
        v22 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_104;
      }

      v31 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v32 = os_log_type_enabled(v20, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v51 = "nw_http_fillout_binary_message_inner_block_invoke";
          v52 = 2082;
          v53 = v31;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        if (v19)
        {
          goto LABEL_106;
        }

        return;
      }

      if (!v32)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_104:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_105;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v44 = __nwlog_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v45 = *(v15 + 24);
              *buf = 136446978;
              v51 = "_http_safe_append";
              v52 = 2082;
              v53 = "*remaining";
              v54 = 2048;
              v55 = v5;
              v56 = 2048;
              v57 = v45;
              _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v46 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v46)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v46)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_86;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v51 = "_http_safe_append";
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v27, &__src, &type))
      {
        goto LABEL_120;
      }

      if (__src == 17)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data";
LABEL_119:
          _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
        }

LABEL_120:
        if (v27)
        {
          free(v27);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v28 = __nwlog_obj();
        v29 = __src;
        if (os_log_type_enabled(v28, __src))
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v41 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = __src;
      v42 = os_log_type_enabled(v28, __src);
      if (!v41)
      {
        if (v42)
        {
          *buf = 136446210;
          v51 = "_http_safe_append";
          v30 = "%{public}s called with null data, no backtrace";
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      if (v42)
      {
        *buf = 136446466;
        v51 = "_http_safe_append";
        v52 = 2082;
        v53 = v41;
        v43 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_86:
        _os_log_impl(&dword_181A37000, v28, v29, v43, buf, 0x16u);
      }
    }

    free(v41);
    goto LABEL_120;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_http_fillout_binary_message_inner_block_invoke";
  v19 = _os_log_send_and_compose_impl();
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v19, &__src, &type))
  {
    if (__src == 17)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor";
      goto LABEL_104;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v21 = __src;
      if (!os_log_type_enabled(v20, __src))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_104;
    }

    v33 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = __src;
    v34 = os_log_type_enabled(v20, __src);
    if (!v33)
    {
      if (!v34)
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v22 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_104;
    }

    if (v34)
    {
      *buf = 136446466;
      v51 = "nw_http_fillout_binary_message_inner_block_invoke";
      v52 = 2082;
      v53 = v33;
      _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v33);
  }

LABEL_105:
  if (v19)
  {
LABEL_106:
    free(v19);
  }
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_22(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

LABEL_12:
    v6 = 1;
LABEL_23:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v10 = v9;
    v11 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v11);
    if (result)
    {
      goto LABEL_24;
    }

    free(v11);
    v5 = 0;
    a5 = v8;
    a3 = v10;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_23;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_23;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_23;
  }

  v13 = a1;
  v14 = a3;
  v15 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v16 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    v6 = 0;
    a5 = v15;
    a3 = v14;
    a1 = v13;
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2;
  v4[3] = &unk_1E6A346C8;
  v5 = *(a1 + 32);
  nw_http_field_access_canonical(a3, v4);
  return 1;
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_27(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

LABEL_12:
    v6 = 1;
LABEL_23:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v10 = v9;
    v11 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v11);
    if (result)
    {
      goto LABEL_24;
    }

    free(v11);
    v5 = 0;
    a5 = v8;
    a3 = v10;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_23;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_23;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_23;
  }

  v13 = a1;
  v14 = a3;
  v15 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v16 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v16);
  if (!result)
  {
    free(v16);
    v6 = 0;
    a5 = v15;
    a3 = v14;
    a1 = v13;
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_29(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2_30;
  v4[3] = &unk_1E6A34740;
  v5 = *(a1 + 32);
  nw_http_field_access_canonical(a3, v4);
  return 1;
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2_30(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke_2";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
      v34 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_187;
    }

    if (!v52)
    {
      goto LABEL_107;
    }

LABEL_106:
    *buf = 136446466;
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
        v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
            v34 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_187;
          }

          if (v56)
          {
            *buf = 136446466;
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
  v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke_2";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
      v34 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_187;
    }

    if (!v52)
    {
      goto LABEL_107;
    }

LABEL_106:
    *buf = 136446466;
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
      v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
        v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
            v34 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_187;
          }

          if (v56)
          {
            *buf = 136446466;
            v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
  v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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
    v83 = "nw_http_fillout_binary_message_inner_block_invoke";
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