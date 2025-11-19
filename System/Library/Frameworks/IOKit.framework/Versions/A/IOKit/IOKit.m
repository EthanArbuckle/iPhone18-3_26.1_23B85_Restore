unsigned int *__IODataQueuePeek(unsigned int *result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = result[1];
    if (v3 == atomic_load_explicit(result + 2, memory_order_acquire))
    {
      return 0;
    }

    if (!a2)
    {
      LODWORD(a2) = *result;
    }

    if (v3 > a2)
    {
      return 0;
    }

    v4 = result + 3;
    if (v3 < 0xFFFFFFFC)
    {
      result = (v4 + v3);
      v6 = *(v4 + v3);
      v5 = a2;
      v7 = v3 + 4 > a2 || v3 + 4 > ~v6;
      v8 = (v6 + v3) + 4;
      if (!v7 && v8 <= a2)
      {
        if (!a3)
        {
          return result;
        }

        v4 = result;
        goto LABEL_23;
      }
    }

    else
    {
      v5 = a2;
    }

    result = 0;
    v6 = *v4;
    if (v6 > 0xFFFFFFFB)
    {
      return result;
    }

    if (v6 + 4 > v5)
    {
      return result;
    }

    result = v4;
    if (!a3)
    {
      return result;
    }

LABEL_23:
    *a3 = v6;
    return v4;
  }

  return result;
}

void *__IOHIDEventCreateWithBytesHelper(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v51[3] = *MEMORY[0x1E69E9840];
  if (a3 >= 28)
  {
    v4 = a3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    LODWORD(v9) = 0;
    v43 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (!v11 || (a4 & 1) == 0)
      {
        v6 = a2 + v5;
        v43 = *(a2 + v5 + 20);
        v9 = v5 + v43 + 28;
        if (HIDWORD(v9) || v9 >= v4)
        {
          goto LABEL_62;
        }
      }

      v13 = v4 - v9;
      if ((v4 - v9) < 0x10)
      {
        goto LABEL_62;
      }

      v39 = v10;
      v14 = (a2 + v9);
      v15 = *v14;
      if (*v14 <= 0xFu)
      {
        v29 = _IOHIDLog();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_27();
        v49 = v15;
        v50 = 2048;
        v51[0] = 16;
        v30 = "Failed to create event at index=%d , eventDataSize: %u < sizeof(IOHIDEventData): %lu";
        v31 = v29;
        v32 = 24;
LABEL_64:
        _os_log_error_impl(&dword_197195000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
        goto LABEL_62;
      }

      if (v13 < v15)
      {
        v33 = _IOHIDLog();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_27();
        v49 = v13;
        v50 = v36;
        LODWORD(v51[0]) = v15;
        v30 = "Failed to create event at index=%d , eventDataMaxSize: %u < eventDataSize: %u";
        v31 = v33;
        v32 = 20;
        goto LABEL_64;
      }

      v40 = a2;
      v41 = v4;
      cf = v8;
      v16 = *v6;
      v17 = *(v6 + 16);
      v18 = *(v14 + 1);
      v45 = a4;
      if (!a4)
      {
        v21 = 0;
LABEL_20:
        v20 = v15;
        goto LABEL_26;
      }

      v19 = *(v6 + 16);
      if (!__IOHIDEventHasLegacyEventData(v18))
      {
        break;
      }

      if (v18 == 4)
      {
        v20 = 40;
        v21 = 1;
        goto LABEL_22;
      }

      v17 = v19;
      switch(v18)
      {
        case 0xB:
          v20 = 160;
          break;
        case 0x25:
          v20 = 24;
          break;
        case 0x11:
          v20 = 48;
          break;
        default:
          v21 = 1;
          goto LABEL_20;
      }

      v21 = 1;
LABEL_26:
      v22 = v20;
      v23 = _IOHIDEventCreate(a1, v20, v18, v16, v17);
      if (!v23)
      {
        v37 = _IOHIDLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *(v6 + 24);
          *buf = 67109888;
          v47 = v11;
          v48 = 1024;
          v49 = v38;
          v50 = 1024;
          LODWORD(v51[0]) = v9;
          WORD2(v51[0]) = 2048;
          *(v51 + 6) = v41;
          _os_log_error_impl(&dword_197195000, v37, OS_LOG_TYPE_ERROR, "Failed to create event at index=%d eventCount=%d eventDataOffset=%d lenght=%ld", buf, 0x1Eu);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_69;
      }

      v24 = v23;
      if (_MergedGlobals[0] && _MergedGlobals[0]() && off_1ED446908)
      {
        v16 = off_1ED446908(v16);
      }

      v24[1] = v16;
      if (v21)
      {
        __IOHIDEventPopulateCurrentEventData(v14, v24[12]);
      }

      else
      {
        memmove(v24[12], v14, v22);
      }

      v4 = v41;
      v8 = cf;
      v24[2] = *(v6 + 8);
      a4 = v45;
      if (cf)
      {
        if (v7)
        {
          if ((v45 & 1) == 0)
          {
            IOHIDEventSetAttributeData(v24, (v6 + 28), v43);
          }

          v27 = v14[12];
          if (v27 <= *(v7[12] + 12))
          {
            v10 = v39;
            do
            {
              if (!v7[10])
              {
                break;
              }

              v28 = *(v7[12] + 12);
              v7 = v7[10];
            }

            while (v27 < v28);
          }

          else
          {
            v10 = v39;
          }

          IOHIDEventAppendEvent();
          CFRelease(v24);
          a4 = v45;
        }

        else
        {
          v10 = v39;
        }
      }

      else
      {
        v10 = *(v6 + 24);
        IOHIDEventSetAttributeData(v24, (v6 + 28), v43);
        a4 = v45;
        v8 = v24;
      }

      v5 = v15 + v9;
      if (v11 < v10 - 1 && v5 > v9)
      {
        ++v11;
        v26 = v41 > v5 && v41 - v5 > 0x1B;
        v7 = v24;
        LODWORD(v9) = v15 + v9;
        a2 = v40;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_62;
    }

    v21 = 0;
    v20 = v15;
LABEL_22:
    v17 = v19;
    goto LABEL_26;
  }

LABEL_69:
  v8 = 0;
LABEL_62:
  v34 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __IODataQueueDequeue(_DWORD *a1, uint64_t a2, void *__dst, _DWORD *a4)
{
  result = 3758097084;
  if (!a1 || __dst && !a4)
  {
    return 3758097090;
  }

  v7 = a1[1];
  explicit = atomic_load_explicit(a1 + 2, memory_order_acquire);
  if (v7 == explicit)
  {
    return 3758097127;
  }

  if (!a2)
  {
    LODWORD(a2) = *a1;
  }

  if (v7 > a2)
  {
    return result;
  }

  v9 = a1 + 3;
  if (v7 >= 0xFFFFFFFC)
  {
    v10 = a2;
    goto LABEL_19;
  }

  v10 = a2;
  if (v7 + 4 > a2 || ((v11 = (v9 + v7), v12 = *(v9 + v7), v13 = (v12 + v7) + 4, v7 + 4 <= ~v12) ? (v14 = v13 > a2) : (v14 = 1), v14))
  {
LABEL_19:
    v12 = *v9;
    if (v12 <= 0xFFFFFFFB)
    {
      LODWORD(v13) = v12 + 4;
      if (v12 + 4 <= v10)
      {
        if (__dst)
        {
LABEL_22:
          if (v12 > *a4)
          {
            return 3758097115;
          }

          memcpy(__dst, v9 + 1, v12);
          *a4 = v12;
        }

LABEL_25:
        atomic_store(v13, a1 + 1);
        result = 0;
        if (explicit == v13)
        {
          __dmb(0xBu);
        }

        return result;
      }
    }

    return result;
  }

  if (v12 <= 0xFFFFFFFB)
  {
    v15 = ~v7;
    v16 = v12 + 4 + v7;
    if (v12 + 4 <= v15 && v16 <= a2)
    {
      v9 = v11;
      if (__dst)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }
  }

  return result;
}

void IOHIDEventSetAttributeData(uint64_t a1, const void *a2, int64_t a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    free(v6);
    *(a1 + 40) = 0;
    *(a1 + 88) = 0;
  }

  if (a2 && a3)
  {
    if (a3 <= 0)
    {
      v7 = -(-a3 & 3);
    }

    else
    {
      v7 = a3 & 3;
    }

    if (v7)
    {
      v8 = a3 - v7 + 4;
    }

    else
    {
      v8 = a3;
    }

    v9 = malloc_type_malloc(v8, 0x25C2B654uLL);
    *(a1 + 40) = v9;
    if (v9)
    {
      bzero(v9, v8);
      memmove(*(a1 + 40), a2, a3);
      *(a1 + 88) = v8;
    }
  }
}

kern_return_t IOConnectCallScalarMethod(mach_port_t connection, uint32_t selector, const uint64_t *input, uint32_t inputCnt, uint64_t *output, uint32_t *outputCnt)
{
  v9 = 0;
  v8 = 0;
  v6 = &IOConnectCallMethod_zero;
  if (outputCnt)
  {
    v6 = outputCnt;
  }

  return io_connect_method(connection, selector, input, inputCnt, 0, 0, 0, 0, 0, &v9, output, v6, 0, &v8);
}

kern_return_t IOConnectCallMethod(mach_port_t connection, uint32_t selector, const uint64_t *input, uint32_t inputCnt, const void *inputStruct, size_t inputStructCnt, uint64_t *output, uint32_t *outputCnt, void *outputStruct, size_t *outputStructCnt)
{
  v12 = inputStructCnt;
  v13 = inputStruct;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v14 = inputStructCnt > 0x1000;
  if (inputStructCnt <= 0x1000)
  {
    v15 = 0;
  }

  else
  {
    LODWORD(inputStruct) = 0;
    LODWORD(inputStructCnt) = 0;
    v15 = v13;
  }

  if (v14)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  if (!outputCnt)
  {
    outputCnt = &IOConnectCallMethod_zero;
  }

  if (!outputStructCnt)
  {
    return io_connect_method(connection, selector, input, inputCnt, inputStruct, inputStructCnt, v15, v16, 0, &v24, output, outputCnt, 0, &v23);
  }

  __dst = outputStruct;
  if (*outputStructCnt == -3)
  {
    result = io_connect_method_var_output(connection, selector, input, inputCnt, inputStruct, inputStructCnt, v15, v16, 0, &v24, output, outputCnt, &v22, &v21);
    *outputStruct = v22;
    v19 = v21;
  }

  else
  {
    if (*outputStructCnt > 0x1000)
    {
      v20 = outputStruct;
      v23 = *outputStructCnt;
      __dst = 0;
    }

    else
    {
      v20 = 0;
      v24 = *outputStructCnt;
    }

    result = io_connect_method(connection, selector, input, inputCnt, inputStruct, inputStructCnt, v15, v16, __dst, &v24, output, outputCnt, v20, &v23);
    if (*outputStructCnt > 0x1000)
    {
      v19 = v23;
    }

    else
    {
      v19 = v24;
    }
  }

  *outputStructCnt = v19;
  return result;
}

uint64_t io_connect_method(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__dst, int *a10, void *a11, int *a12, uint64_t a13, void *a14)
{
  v14 = MEMORY[0x1EEE9AC00]();
  v81 = *MEMORY[0x1E69E9840];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__n = 0u;
  v52 = 0u;
  *reply_port = 0u;
  v50 = 0u;
  *(&v50 + 1) = *MEMORY[0x1E69E99E0];
  LODWORD(__n[0]) = v20;
  if (v15 <= 0x10)
  {
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = v14;
    v27 = 2 * v15;
    __memcpy_chk();
    HIDWORD(__n[0]) = v25;
    if (v23 <= 0x1000)
    {
      v31 = &reply_port[v27];
      v32 = (v23 + 3) & 0x3FFC;
      v33 = &reply_port[v27] + v32;
      v34 = v27 * 4 + v32;
      memcpy(v31 + 11, v24, v23);
      v31[10] = v23;
      *(v33 + 44) = v22;
      *(v33 + 52) = v21;
      v35 = *a10;
      if (*a10 >= 0x1000)
      {
        v35 = 4096;
      }

      *(v33 + 15) = v35;
      v36 = *a12;
      if (*a12 >= 0x10)
      {
        v36 = 16;
      }

      *(v33 + 16) = v36;
      *(v33 + 68) = a13;
      *(v33 + 76) = *a14;
      v37 = mig_get_reply_port();
      reply_port[0] = 5395;
      reply_port[1] = v34 + 84;
      *&reply_port[2] = __PAIR64__(v37, v26);
      *&v50 = 0xB3100000000;
      v38 = mach_msg2_internal();
      v28 = v38;
      if ((v38 - 268435458) <= 0xE && ((1 << (v38 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (v38)
      {
        mig_dealloc_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (DWORD1(v50) == 71)
      {
        v28 = 4294966988;
      }

      else if (DWORD1(v50) == 2965)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        if (reply_port[1] - 4277 <= 0xFFFFEF7E)
        {
          if (LODWORD(__n[0]))
          {
            v39 = reply_port[2] == 0;
          }

          else
          {
            v39 = 0;
          }

          if (v39 && reply_port[1] == 36)
          {
            v28 = LODWORD(__n[0]);
          }

          else
          {
            v28 = 4294966996;
          }

          goto LABEL_31;
        }

        if (reply_port[2])
        {
          goto LABEL_30;
        }

        v28 = LODWORD(__n[0]);
        if (LODWORD(__n[0]))
        {
          goto LABEL_31;
        }

        v41 = HIDWORD(__n[0]);
        if (HIDWORD(__n[0]) > 0x1000)
        {
LABEL_30:
          v28 = 4294966996;
        }

        else
        {
          v28 = 4294966996;
          if (reply_port[1] - 52 >= HIDWORD(__n[0]))
          {
            v42 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
            if (reply_port[1] >= v42 + 52)
            {
              v43 = reply_port + v42;
              v44 = *(v43 + 10);
              if (v44 <= 0x10 && v44 <= (reply_port[1] - v42 - 52) >> 3)
              {
                v45 = 8 * v44;
                if (reply_port[1] - v42 == 8 * v44 + 52)
                {
                  v46 = *a10;
                  if (HIDWORD(__n[0]) <= v46)
                  {
                    v47 = v43 - 4096;
                    memcpy(__dst, &__n[1], HIDWORD(__n[0]));
                    *a10 = v41;
                    v48 = *(v47 + 1034);
                    if (v48 <= *a12)
                    {
                      memcpy(a11, v47 + 4140, 8 * v48);
                      v28 = 0;
                      *a12 = *(v47 + 1034);
                      *a14 = *&v47[v45 + 4140];
                      goto LABEL_4;
                    }

                    memcpy(a11, v47 + 4140, (8 * *a12));
                    *a12 = *(v47 + 1034);
                  }

                  else
                  {
                    memcpy(__dst, &__n[1], v46);
                    *a10 = v41;
                  }

                  goto LABEL_3;
                }
              }
            }
          }
        }
      }

      else
      {
        v28 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(reply_port);
      goto LABEL_4;
    }
  }

LABEL_3:
  v28 = 4294966989;
LABEL_4:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

void __IOHIDEventSystemClientQueueCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = *(a4 + 272);
    if (v5 && ((CFRetain(*(a4 + 272)), os_unfair_recursive_lock_unlock(), os_unfair_recursive_lock_lock_with_options(), *(a4 + 200)) || *(a4 + 208)))
    {
      v6 = IOHIDEventQueueDequeueCopy(v5);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        do
        {
          SenderID = IOHIDEventGetSenderID(v7);
          Service = __IOHIDEventSystemClientGetService(a4, SenderID);
          TimeStampOfType = IOHIDEventGetTimeStampOfType(v7, 2);
          Type = IOHIDEventGetType(v7);
          TimeStampType = IOHIDEventGetTimeStampType(v7);
          _IOHIDDebugTrace(8224, 0, TimeStampOfType, Type, Service, TimeStampType);
          Latency = IOHIDEventGetLatency(v7, 1u);
          if (Latency > v10)
          {
            v10 = Latency;
          }

          v17 = IOHIDEventGetType(v7);
          if (IOHIDEventNeedsUngroupForLegacy(v7) && (*(a4 + 449) & 1) == 0)
          {
            Children = IOHIDEventGetChildren(v7);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 0x40000000;
            v20[2] = ____IOHIDEventSystemClientQueueCallback_block_invoke;
            v20[3] = &__block_descriptor_tmp_120;
            v20[4] = a4;
            v20[5] = Service;
            _IOHIDCFArrayApplyBlock(Children, v20);
          }

          else
          {
            v18 = *(a4 + 208);
            if (v18)
            {
              (*(v18 + 16))(v18, *(a4 + 216), *(a4 + 224), Service, v7);
            }

            else
            {
              (*(a4 + 200))(*(a4 + 216), *(a4 + 224), Service, v7);
            }
          }

          v9 |= 1 << v17;
          CFRelease(v7);
          v7 = IOHIDEventQueueDequeueCopy(v5);
          ++v8;
        }

        while (v7);
      }

      else
      {
        v10 = 0;
        v9 = 0;
        v8 = 0;
      }

      os_unfair_recursive_lock_unlock();
      CFRelease(v5);
      os_unfair_recursive_lock_lock_with_options();
      if (v10 > *(a4 + 480))
      {
        *(a4 + 480) = v10;
      }

      gettimeofday((a4 + 464), 0);
      *(a4 + 148) += v8;
      *(a4 + 152) |= v9;
      os_unfair_recursive_lock_unlock();
    }

    else
    {

      os_unfair_recursive_lock_unlock();
    }
  }
}

void *IOHIDEventQueueDequeueCopy(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  os_unfair_recursive_lock_lock_with_options();
  if (!*(a1 + 144))
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 4);
    v4 = *(v2 + 8);
    if (v2)
    {
      if (v4 != *(a1 + 36))
      {
        __IOHIDEventQueueUpdateUsageAnalytics(a1);
      }

      *(a1 + 32) = v3;
      *(a1 + 36) = v4;
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = _IODataQueuePeek(*(a1 + 16), *(a1 + 56), &v12);
    if (v6)
    {
      v7 = CFGetAllocator(a1);
      v6 = IOHIDEventCreateWithBytesInternal(v7, v6 + 4, v12);
      if (!v6)
      {
        v8 = _IOHIDLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13[0] = 67109120;
          v13[1] = v12;
          OUTLINED_FUNCTION_1_10(&dword_197195000, v8, v9, "Unable to create IOHIDEvent with length:%d", v13);
        }
      }

      _IODataQueueDequeue(v5, *(a1 + 56), 0);
    }
  }

  else
  {
    v6 = 0;
  }

  os_unfair_recursive_lock_unlock();
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _IOHIDEventCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [HIDEvent allocWithZone:a1];

  return [(HIDEvent *)v9 initWithSize:a2 type:a3 timestamp:a4 options:a5];
}

const void *__IOHIDEventSystemClientGetService(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 96), v4);
  os_unfair_recursive_lock_unlock();
  CFRelease(v4);
  return Value;
}

uint64_t IOHIDEventGetTimeStampOfType(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 8);
    if (a2 == 1)
    {
      if ((*(a1 + 32) & 0x80) == 0 && mach_get_times())
      {
        v2 = 0;
      }

      if (_MergedGlobals[0] && _MergedGlobals[0]() && off_1ED446908)
      {
        return off_1ED446908(v2);
      }
    }

    else if (a2 == 2 && (*(a1 + 32) & 0x80) == 0)
    {
      goto LABEL_5;
    }

    return v2;
  }

LABEL_5:

  return IOHIDEventGetTimeStamp(a1);
}

void _IOHIDDebugTrace(__int16 a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = (4 * (a1 & 0x3FFF)) | a2 | 0x5230000u;
  kdebug_trace();
  if ((gIOHIDDebugConfig & 2) != 0)
  {
    if (_IOHIDLogCategory_onceToken != -1)
    {
      _IOHIDLogCategory_cold_1();
    }

    v11 = qword_1ED446B58;
    if (os_log_type_enabled(qword_1ED446B58, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134219008;
      v14 = v10;
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = a4;
      v19 = 2048;
      v20 = a5;
      v21 = 2048;
      v22 = a6;
      _os_log_impl(&dword_197195000, v11, OS_LOG_TYPE_DEFAULT, "0x%-16llx 0x%-16llx 0x%-16llx 0x%-16llx 0x%-16llx", &v13, 0x34u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t IOHIDEventGetTimeStamp(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(a1 + 32) & 0x80) != 0 && mach_get_times())
  {
    return 0;
  }

  if (v1 && _MergedGlobals[0] && _MergedGlobals[0]() && dynLinkrosetta_convert_to_rosetta_absolute_time_0[0])
  {
    return (dynLinkrosetta_convert_to_rosetta_absolute_time_0[0])(v1);
  }

  return v1;
}

unint64_t IOHIDEventGetLatency(uint64_t a1, unsigned int a2)
{
  if (_MergedGlobals[0] && _MergedGlobals[0]())
  {
    v4 = mach_absolute_time();
    v5 = v4;
    if (!off_1ED446908)
    {
      goto LABEL_7;
    }

    v6 = off_1ED446908(v4);
  }

  else
  {
    v6 = mach_absolute_time();
  }

  v5 = v6;
LABEL_7:
  TimeStamp = IOHIDEventGetTimeStamp(a1);
  result = _IOHIDGetTimestampDelta(v5, TimeStamp, a2);
  if (v5 < TimeStamp)
  {
    return 0;
  }

  return result;
}

const __CFArray *IOHIDEventGetEventWithOptions(const __CFArray *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (*(*(result + 12) + 4) != a2)
  {
    if (((*(result + 3) >> a2) & 1) == 0)
    {
      return 0;
    }

    result = *(result + 9);
    if (!result)
    {
      return result;
    }

    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 9), i);
        result = IOHIDEventGetEventWithOptions(ValueAtIndex, a2, a3);
        if (result)
        {
          break;
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

const __CFArray *IOHIDEventNeedsUngroupForLegacy(const __CFArray *a1)
{
  if (*(*(a1 + 12) + 4) != 37)
  {
    return 0;
  }

  result = IOHIDEventGetEventWithOptions(a1, 37, 4026531840);
  if (result)
  {
    if (*(*(result + 12) + 20))
    {
      return (*(a1 + 9) != 0);
    }

    return 0;
  }

  return result;
}

void IOHIDEventAppendEvent()
{
  OUTLINED_FUNCTION_26();
  Mutable = *(v2 + 72);
  if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*(v1 + 72) = Mutable) != 0))
  {
    v0[10] = v1;
    v4 = v0[12];
    v5 = *(v4 + 4);
    v6 = v1;
    do
    {
      *(v6 + 24) |= 1 << v5;
      v6 = *(v6 + 80);
    }

    while (v6);
    if (v5 == 11)
    {
      v7 = *(v1 + 96);
      if (*(v7 + 4) == 11)
      {
        *(v7 + 56) |= *(v4 + 52);
      }
    }

    CFArrayAppendValue(Mutable, v0);
  }
}

uint64_t (**__hid_dispatch_queue_will_execute(NSObject *a1))(uint64_t, NSObject *)
{
  result = dispatch_queue_get_specific(a1, &sHIDExecutionCallbacksKey);
  if (result)
  {
    v3 = *result;
    if (*result)
    {
      v4 = result[2];

      return v3(v4, a1);
    }
  }

  return result;
}

unint64_t _IOHIDGetTimestampDelta(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = dword_1ED446BE4;
  if (!dword_1ED446BE4)
  {
    mach_timebase_info(&_IOHIDGetTimestampDelta_timebaseInfo);
    v6 = dword_1ED446BE4;
  }

  return (a1 - a2) * _IOHIDGetTimestampDelta_timebaseInfo / v6 / a3;
}

const __CFArray *IOHIDEventGetVendorDefinedData(const __CFArray *result, uint64_t *a2, void *a3)
{
  v4 = result;
  if (!a2)
  {
    if (!a3)
    {
      return result;
    }

    return IOHIDEventGetVendorDefinedData_cold_2(v4, a3);
  }

  result = IOHIDEventGetVendorDefinedData_cold_1(result, a2);
  if (a3)
  {
    return IOHIDEventGetVendorDefinedData_cold_2(v4, a3);
  }

  return result;
}

const __CFArray *IOHIDEventGetVendorDefinedData_cold_2(const __CFArray *a1, void *a2)
{
  result = IOHIDEventGetEventWithOptions(a1, 1, 4026531840);
  if (result)
  {
    v4 = *(*(result + 12) + 24);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

const __CFArray *IOHIDEventGetVendorDefinedData_cold_1(const __CFArray *a1, uint64_t *a2)
{
  result = IOHIDEventGetEventWithOptions(a1, 1, 0);
  if (result)
  {
    v4 = *(result + 12) + 28;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void IODispatchCalloutFromCFMessage(uint64_t a1, _DWORD *a2)
{
  if (a2[5] != 53)
  {
    return;
  }

  v23 = v2;
  v24 = v3;
  v4 = a2;
  v5 = a2 + 6;
  if ((*a2 & 0x80000000) != 0)
  {
    if (*v5)
    {
      v6 = a2[7];
    }

    else
    {
      v6 = 0;
    }

    v5 = &a2[3 * *v5 + 7];
    v7 = a2;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = a2[1];
  v8 = a2[2];
  v10 = MEMORY[0x1E69E9A60];
  if (v8)
  {
    v22 = 0;
    if (MEMORY[0x19A8DBB60](*MEMORY[0x1E69E9A60], v8, 0, &v22) || v22 < 2)
    {
      goto LABEL_29;
    }
  }

  v12 = v5[1] & 0xFFF;
  if ((v12 - 100) < 3)
  {
    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    v15 = v8;
LABEL_16:
    v14(v13, v15);
    goto LABEL_28;
  }

  v16 = v9 + v4 - (v5 + 72) - (v5[1] >> 30);
  if (v12 == 160)
  {
    v18 = v5 + 19;
    if (((v16 + 0x7FFFFFFFCLL) & 0x7FFFFFFF0) == 0)
    {
      v18 = *v18;
    }

    if (!v6)
    {
      v6 = v5[8];
    }

    (*(v5 + 2))(*(v5 + 3), v6, v5[18], v18);
  }

  else if (v12 == 150)
  {
    v17 = (v16 + 0x7FFFFFFFCLL) >> 3;
    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    v15 = v5[18];
    switch(v17)
    {
      case 2:
        (v14)(v13, v15, *(v5 + 19), *(v5 + 21));
        break;
      case 1:
        (v14)(v13, v15, *(v5 + 19));
        break;
      case 0:
        goto LABEL_16;
      default:
        (v14)(v13, v15, v5 + 19);
        break;
    }
  }

LABEL_28:
  if (v8)
  {
LABEL_29:
    mach_port_deallocate(*v10, v8);
  }

  if (v7 && v7[6])
  {
    v19 = 0;
    v20 = v7 + 7;
    do
    {
      v21 = *v20;
      v20 += 3;
      mach_port_deallocate(*v10, v21);
      ++v19;
    }

    while (v19 < v7[6]);
  }
}

__n64 IOHIDEventGetFloatValueWithOptions(const __CFArray *EventWithOptions, int a2, uint64_t a3)
{
  v4 = HIWORD(a2);
  if (!EventWithOptions || a2 >= 0x10000)
  {
    EventWithOptions = IOHIDEventGetEventWithOptions(EventWithOptions, HIWORD(a2), a3);
    if (!EventWithOptions)
    {
      result.n64_f64[0] = 0.0;
      return result;
    }
  }

  result.n64_f64[0] = 0.0;
  v6 = *(EventWithOptions + 12);
  switch(v4)
  {
    case 0u:
      if (a2 > 2)
      {
        if (a2 > 4)
        {
          if (a2 == 5)
          {
            v23 = v6[1].n64_u8[0];
            goto LABEL_347;
          }

          if (a2 != 6)
          {
            return result;
          }

          v7 = (v6[1].n64_u8[0] >> 6) & 1;
        }

        else if (a2 == 3)
        {
          v7 = (v6[1].n64_u8[0] >> 3) & 1;
        }

        else
        {
          v7 = (v6[1].n64_u8[0] >> 4) & 1;
        }

        goto LABEL_393;
      }

      if (!a2)
      {
        LOBYTE(v6) = v6[1].n64_u8[0];
        goto LABEL_379;
      }

      if (a2 == 1)
      {
        v24 = v6[1].n64_u8[0];
LABEL_392:
        v7 = (v24 >> 1) & 1;
        goto LABEL_393;
      }

      if (a2 != 2)
      {
        return result;
      }

      goto LABEL_241;
    case 1u:
      if (a2 > 65537)
      {
        if (a2 == 65538)
        {
          goto LABEL_327;
        }

        if (a2 == 65539)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (a2 == 0x10000)
        {
          result.n64_u16[0] = v6[2].n64_u16[0];
          goto LABEL_328;
        }

        if (a2 == 65537)
        {
          goto LABEL_314;
        }
      }

      return result;
    case 2u:
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          goto LABEL_261;
        }

        if (a2 == 131073)
        {
LABEL_257:
          result.n64_u8[0] = v6[3].n64_u8[0];
          goto LABEL_328;
        }

        return result;
      }

      if (a2 == 131074)
      {
LABEL_298:
        result.n64_u8[0] = v6[3].n64_u8[1];
        goto LABEL_328;
      }

      if (a2 == 131075)
      {
        goto LABEL_260;
      }

      v13 = 131076;
      goto LABEL_267;
    case 3u:
      if (a2 > 196612)
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              v23 = v6[3].n64_u32[0];
LABEL_347:
              v7 = (v23 >> 5) & 1;
              break;
            case 196617:
              v7 = (v6[3].n64_u32[0] >> 6) & 7;
              break;
            case 196618:
              v7 = (v6[3].n64_u32[0] >> 9) & 3;
              break;
            default:
              return result;
          }
        }

        else if (a2 == 196613)
        {
          LODWORD(v6) = v6[3].n64_u32[0];
LABEL_379:
          v7 = v6 & 1;
        }

        else if (a2 == 196614)
        {
          v7 = (v6[3].n64_u32[0] >> 1) & 3;
        }

        else
        {
          v7 = (v6[3].n64_u32[0] >> 3) & 3;
        }

        goto LABEL_393;
      }

      if (a2 > 196609)
      {
        if (a2 == 196610)
        {
          goto LABEL_327;
        }

        if (a2 != 196611)
        {
          result.n64_u8[0] = v6[3].n64_u8[4];
          goto LABEL_328;
        }

LABEL_338:
        v7 = HIWORD(v6[1].n64_u32[0]) & 1;
        goto LABEL_393;
      }

      if (a2 == 196608)
      {
        goto LABEL_315;
      }

      if (a2 == 196609)
      {
        goto LABEL_314;
      }

      return result;
    case 4u:
      switch(a2)
      {
        case 262146:
          return v6[4];
        case 262145:
          return v6[3];
        case 262144:
          return v6[2];
      }

      return result;
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_277;
      }

      if (a2 == 327681)
      {
        goto LABEL_260;
      }

      if (a2 != 327680)
      {
        return result;
      }

      goto LABEL_254;
    case 6u:
      v9 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_259;
        }

        goto LABEL_254;
      }

      if (a2 == 393218)
      {
        goto LABEL_277;
      }

      if (a2 == 393219)
      {
LABEL_241:
        v7 = (v6[1].n64_u8[0] >> 2) & 1;
LABEL_393:
        result.n64_f64[0] = v7;
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_277;
      }

      if (a2 == 458753)
      {
        goto LABEL_260;
      }

      if (a2 != 458752)
      {
        return result;
      }

      goto LABEL_254;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_277;
      }

      if (a2 == 589825)
      {
        goto LABEL_260;
      }

      if (a2 != 589824)
      {
        return result;
      }

      goto LABEL_254;
    case 0xAu:
      if ((a2 - 655360) > 0xB)
      {
        return result;
      }

      if (a2 == 655363)
      {
        goto LABEL_291;
      }

      v14 = v6[4].n64_i32[0];
      if (v14 <= 1)
      {
        if (v14)
        {
          if (v14 == 1 && a2 == 655364)
          {
            goto LABEL_261;
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_277;
            case 655361:
              goto LABEL_260;
            case 655360:
              goto LABEL_254;
          }
        }

        return result;
      }

      if (v14 != 3)
      {
        if (v14 != 2)
        {
          return result;
        }

        if (a2 == 655367)
        {
          goto LABEL_277;
        }

        if (a2 == 655366)
        {
          goto LABEL_260;
        }

        v19 = 655365;
        goto LABEL_253;
      }

      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_254;
        }

        v9 = 655369;
        goto LABEL_259;
      }

      if (a2 == 655370)
      {
        goto LABEL_277;
      }

      if (a2 != 655371)
      {
        return result;
      }

      goto LABEL_201;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          return v6[2];
        case 720897:
          return v6[3];
        case 720898:
          return v6[4];
        case 720899:
          result.n64_u32[0] = v6[7].n64_u32[1];
          goto LABEL_328;
        case 720900:
          goto LABEL_337;
        case 720901:
          goto LABEL_207;
        case 720902:
          goto LABEL_339;
        case 720903:
          result.n64_u32[0] = v6[6].n64_u32[1];
          goto LABEL_328;
        case 720904:
          goto LABEL_338;
        case 720905:
          v7 = (v6[1].n64_u32[0] >> 17) & 1;
          goto LABEL_393;
        case 720906:
          return v6[8];
        case 720907:
          return v6[9];
        case 720908:
          return v6[10];
        case 720909:
        case 720910:
        case 720911:
        case 720912:
        case 720913:
        case 720914:
        case 720915:
        case 720916:
        case 720917:
        case 720922:
          v16 = v6[11].n64_u32[0];
          if (!v16)
          {
            if (a2 == 720910)
            {
              return v6[13];
            }

            if (a2 != 720909)
            {
              return result;
            }

            return v6[12];
          }

          if (v16 == 2)
          {
            if (a2 <= 720915)
            {
              if (a2 != 720913)
              {
                if (a2 != 720914)
                {
                  v17 = 19;
LABEL_352:
                  if (a2 == (v17 | 0xB0000))
                  {
                    return v6[14];
                  }

                  return result;
                }

                return v6[13];
              }

              return v6[12];
            }

            if (a2 != 720916)
            {
              if (a2 != 720917)
              {
                v25 = 26;
                goto LABEL_369;
              }

              return v6[16];
            }

            return v6[15];
          }

          if (v16 != 1)
          {
            return result;
          }

          if (a2 <= 720913)
          {
            if (a2 != 720911)
            {
              if (a2 != 720912)
              {
                v17 = 17;
                goto LABEL_352;
              }

              return v6[13];
            }

            return v6[12];
          }

          if (a2 == 720914)
          {
            return v6[15];
          }

          if (a2 == 720916)
          {
            return v6[16];
          }

          v25 = 21;
LABEL_369:
          if (a2 == (v25 | 0xB0000))
          {
            return v6[17];
          }

          return result;
        case 720918:
          v24 = v6[1].n64_u32[0];
          goto LABEL_392;
        case 720919:
          if (!v6[5].n64_u32[1])
          {
            return v6[10];
          }

          return result;
        case 720920:
          result.n64_u32[0] = v6[7].n64_u32[0];
          goto LABEL_328;
        case 720921:
          v7 = (v6[1].n64_u32[0] >> 19) & 1;
          goto LABEL_393;
        case 720923:
          result.n64_u32[0] = v6[18].n64_u32[0];
          goto LABEL_328;
        case 720924:
          result.n64_u32[0] = v6[18].n64_u32[1];
          goto LABEL_328;
        case 720925:
          result.n64_u32[0] = v6[19].n64_u32[0];
          goto LABEL_328;
        case 720927:
          result.n64_u32[0] = v6[11].n64_u32[0];
          goto LABEL_328;
        default:
          return result;
      }

    case 0xCu:
      if (a2 <= 786437)
      {
        if (a2 > 786434)
        {
          if (a2 == 786435)
          {
            goto LABEL_290;
          }

          if (a2 != 786436)
          {
            result.n64_u8[0] = v6[4].n64_u8[4];
            goto LABEL_328;
          }

          goto LABEL_291;
        }

        switch(a2)
        {
          case 786432:
            goto LABEL_261;
          case 786433:
            goto LABEL_327;
          case 786434:
            goto LABEL_202;
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          return v6[7];
        }

        if (a2 != 786442)
        {
          v21 = 786443;
          goto LABEL_295;
        }

        return v6[8];
      }

      if (a2 == 786438)
      {
        result.n64_u8[0] = v6[4].n64_u8[5];
        goto LABEL_328;
      }

      if (a2 == 786439)
      {
        return v6[5];
      }

      v22 = 786440;
      goto LABEL_304;
    case 0xDu:
      if (a2 > 851970)
      {
        if (a2 == 851971)
        {
          goto LABEL_290;
        }

        if (a2 != 851972)
        {
          v20 = 851973;
          goto LABEL_218;
        }

        goto LABEL_291;
      }

      switch(a2)
      {
        case 851968:
          goto LABEL_254;
        case 851969:
          goto LABEL_260;
        case 851970:
          goto LABEL_277;
      }

      return result;
    case 0xEu:
      v18 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          goto LABEL_314;
        }

        v18 = 917507;
      }

      else if (a2 == 917504)
      {
        goto LABEL_315;
      }

      if (a2 != v18)
      {
        return result;
      }

      if (v6[2].n64_u16[1] == 1)
      {
        if (a2 == 917507)
        {
          goto LABEL_327;
        }
      }

      else if (a2 == 917505 && !v6[2].n64_u16[1])
      {
        goto LABEL_327;
      }

      return result;
    case 0xFu:
      if (a2 == 983040)
      {
        goto LABEL_254;
      }

      return result;
    case 0x10u:
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          goto LABEL_290;
        }

        if (a2 != 1048577)
        {
          v8 = 1048578;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_254;
        }

        v9 = 1048580;
        goto LABEL_259;
      }

      if (a2 == 1048581)
      {
        goto LABEL_281;
      }

      v11 = 1048582;
      goto LABEL_276;
    case 0x11u:
      v12 = 1114113;
      if (a2 > 1114113)
      {
        if (a2 == 1114114)
        {
          return v6[4];
        }

        if (a2 == 1114115)
        {
LABEL_207:
          result.n64_u32[0] = v6[5].n64_u32[0];
          goto LABEL_328;
        }
      }

      else
      {
        if (a2 != 1114112)
        {
          goto LABEL_148;
        }

        return v6[2];
      }

      return result;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_260;
      }

      if (a2 != 1179648)
      {
        return result;
      }

      goto LABEL_261;
    case 0x13u:
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_254;
        }

        if (a2 != 1245185)
        {
          v11 = 1245186;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v8 = 1245188;
          goto LABEL_245;
        }

LABEL_37:
        v10 = v6[4].n64_u32[0];
        goto LABEL_278;
      }

      if (a2 == 1245189)
      {
LABEL_332:
        v10 = v6[5].n64_u32[0];
        goto LABEL_278;
      }

      v13 = 1245190;
LABEL_267:
      if (a2 != v13)
      {
        return result;
      }

      goto LABEL_290;
    case 0x14u:
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_254;
        }

        if (a2 != 1310721)
        {
          v11 = 1310722;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 == 1310723)
      {
        goto LABEL_290;
      }

      if (a2 != 1310724)
      {
        v20 = 1310725;
        goto LABEL_218;
      }

      goto LABEL_291;
    case 0x15u:
      if (a2 <= 1376258)
      {
        if (a2 == 1376256)
        {
          goto LABEL_254;
        }

        if (a2 != 1376257)
        {
          v11 = 1376258;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 == 1376259)
      {
        goto LABEL_290;
      }

      if (a2 != 1376260)
      {
        v20 = 1376261;
        goto LABEL_218;
      }

LABEL_291:
      result.n64_u32[0] = v6[4].n64_u32[0];
      goto LABEL_328;
    case 0x17u:
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          goto LABEL_290;
        }

        if (a2 != 1507329)
        {
          v8 = 1507330;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_254;
        }

        v9 = 1507332;
        goto LABEL_259;
      }

      if (a2 == 1507333)
      {
        goto LABEL_281;
      }

      v11 = 1507334;
LABEL_276:
      if (a2 == v11)
      {
LABEL_277:
        v10 = v6[3].n64_u32[0];
        goto LABEL_278;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        goto LABEL_261;
      }

      if (a2 != 1572865)
      {
        return result;
      }

      v7 = v6[1].n64_u16[0] >> 15;
      goto LABEL_393;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          goto LABEL_290;
        case 1638401:
          goto LABEL_202;
        case 1638400:
          goto LABEL_254;
      }

      return result;
    case 0x1Au:
      if (a2 == 1703938)
      {
        goto LABEL_202;
      }

      if (a2 == 1703937)
      {
        goto LABEL_231;
      }

      if (a2 != 1703936)
      {
        return result;
      }

      goto LABEL_261;
    case 0x1Bu:
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          goto LABEL_290;
        }

        if (a2 != 1769473)
        {
          v8 = 1769474;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 == 1769477)
      {
        goto LABEL_281;
      }

      if (a2 != 1769476)
      {
        v19 = 1769475;
        goto LABEL_253;
      }

      goto LABEL_260;
    case 0x1Cu:
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
LABEL_290:
          result.n64_u32[0] = v6[3].n64_u32[1];
          goto LABEL_328;
        }

        if (a2 == 1835009)
        {
          goto LABEL_247;
        }

        v8 = 1835010;
LABEL_245:
        if (a2 == v8)
        {
LABEL_246:
          v10 = v6[4].n64_u32[1];
          goto LABEL_278;
        }

        return result;
      }

      if (a2 == 1835013)
      {
LABEL_281:
        result.n64_u16[0] = v6[4].n64_u16[1];
        goto LABEL_328;
      }

      if (a2 == 1835012)
      {
        goto LABEL_260;
      }

      v19 = 1835011;
LABEL_253:
      if (a2 != v19)
      {
        return result;
      }

      goto LABEL_254;
    case 0x1Du:
      v9 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            result.n64_u16[0] = v6[3].n64_u16[0];
            break;
          case 1900547:
            result.n64_u16[0] = v6[3].n64_u16[1];
            break;
          case 1900548:
            result.n64_u8[0] = v6[4].n64_u8[0];
            break;
          default:
            return result;
        }

        goto LABEL_328;
      }

      if (a2 == 1900544)
      {
        goto LABEL_261;
      }

LABEL_259:
      if (a2 == v9)
      {
        goto LABEL_260;
      }

      return result;
    case 0x1Eu:
      if (a2 == 1966082)
      {
        goto LABEL_202;
      }

      if (a2 == 1966081)
      {
        goto LABEL_260;
      }

      if (a2 != 1966080)
      {
        return result;
      }

      goto LABEL_261;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        goto LABEL_327;
      }

      if (a2 != 2031616)
      {
        return result;
      }

      goto LABEL_254;
    case 0x20u:
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
LABEL_202:
          result.n64_u32[0] = v6[3].n64_u32[0];
          goto LABEL_328;
        }

        if (a2 != 2097155)
        {
          return result;
        }

LABEL_201:
        v10 = v6[3].n64_u32[1];
        goto LABEL_278;
      }

      if (a2 == 0x200000)
      {
        goto LABEL_261;
      }

      if (a2 == 2097153)
      {
        goto LABEL_260;
      }

      return result;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_260;
      }

      if (a2 != 2162688)
      {
        return result;
      }

      goto LABEL_261;
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_260;
      }

      if (a2 != 2228224)
      {
        return result;
      }

      goto LABEL_261;
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          goto LABEL_261;
        case 2293761:
          goto LABEL_260;
        case 2293762:
          goto LABEL_277;
        case 2293763:
          goto LABEL_201;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v10 = v6[5].n64_u32[1];
          goto LABEL_278;
        case 2293766:
          v10 = v6[6].n64_u32[0];
          goto LABEL_278;
        case 2293767:
          goto LABEL_246;
        case 2293768:
          goto LABEL_332;
        case 2293769:
          v10 = v6[8].n64_u32[1];
          goto LABEL_278;
        case 2293770:
          v10 = v6[9].n64_u32[1];
          goto LABEL_278;
        case 2293771:
          v10 = v6[9].n64_u32[0];
          goto LABEL_278;
        case 2293772:
          v10 = v6[10].n64_u32[0];
          goto LABEL_278;
        case 2293773:
          v10 = v6[6].n64_u32[1];
          goto LABEL_278;
        case 2293774:
          v10 = v6[7].n64_u32[0];
          goto LABEL_278;
        case 2293775:
          v10 = v6[7].n64_u32[1];
          goto LABEL_278;
        case 2293776:
          v10 = v6[8].n64_u32[0];
          goto LABEL_278;
        case 2293777:
          LOBYTE(v6) = v6[10].n64_u8[4];
          goto LABEL_379;
        case 2293778:
          v24 = v6[10].n64_u8[4];
          goto LABEL_392;
        case 2293779:
          v10 = v6[11].n64_u32[0];
          goto LABEL_278;
        case 2293780:
          v10 = v6[11].n64_u32[1];
          goto LABEL_278;
        case 2293781:
          v10 = v6[12].n64_u32[0];
          goto LABEL_278;
        case 2293782:
          v10 = v6[12].n64_u32[1];
          goto LABEL_278;
        case 2293783:
          v10 = v6[13].n64_u32[0];
          goto LABEL_278;
        case 2293784:
          v10 = v6[13].n64_u32[1];
          goto LABEL_278;
        default:
          return result;
      }

      return result;
    case 0x24u:
      if (a2 == 2359297)
      {
        goto LABEL_327;
      }

      if (a2 != 2359296)
      {
        return result;
      }

      goto LABEL_254;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          goto LABEL_231;
        case 2424833:
          goto LABEL_314;
        case 2424832:
          goto LABEL_315;
      }

      return result;
    case 0x26u:
      switch(a2)
      {
        case 2490370:
          result.n64_u64[0] = v6[3].n64_u64[0];
          goto LABEL_328;
        case 2490369:
          goto LABEL_260;
        case 2490368:
LABEL_254:
          v10 = v6[2].n64_u32[0];
          goto LABEL_278;
      }

      return result;
    case 0x27u:
      if ((a2 - 2555905) >= 2)
      {
        if (a2 != 2555904)
        {
          return result;
        }

LABEL_261:
        result.n64_u32[0] = v6[2].n64_u32[0];
LABEL_328:
        result.n64_f64[0] = result.n64_u64[0];
      }

      else
      {
        v15 = v6[2].n64_u32[0];
        if (v15 != 1)
        {
          if (v15)
          {
            if (a2 != 2555905 || v15 != 2)
            {
              return result;
            }
          }

          else if (a2 != 2555905)
          {
            return result;
          }

LABEL_327:
          result.n64_u32[0] = v6[2].n64_u32[1];
          goto LABEL_328;
        }

        if (a2 == 2555906)
        {
LABEL_260:
          v10 = v6[2].n64_u32[1];
LABEL_278:
          result.n64_f64[0] = vcvtd_n_f64_s32(v10, 0x10uLL);
          if (v10 == 0x80000000)
          {
            result.n64_f64[0] = NAN;
          }
        }
      }

      return result;
    case 0x28u:
      switch(a2)
      {
        case 2621440:
          result.n64_u16[0] = v6[8].n64_u16[0];
          goto LABEL_328;
        case 2621441:
          result.n64_u16[0] = v6[8].n64_u16[1];
          goto LABEL_328;
        case 2621442:
          return v6[2];
        case 2621443:
          goto LABEL_257;
        case 2621444:
          goto LABEL_298;
        case 2621445:
          goto LABEL_290;
        case 2621446:
          goto LABEL_291;
        case 2621447:
          goto LABEL_219;
        case 2621448:
          result.n64_u8[0] = v6[5].n64_u8[4];
          goto LABEL_328;
        case 2621449:
LABEL_339:
          result.n64_u32[0] = v6[6].n64_u32[0];
          goto LABEL_328;
        case 2621450:
          result.n64_u64[0] = v6[7].n64_u64[0];
          goto LABEL_328;
        case 2621451:
          result.n64_u8[0] = v6[3].n64_u8[2];
          goto LABEL_328;
        case 2621452:
          goto LABEL_207;
        default:
          return result;
      }

      return result;
    case 0x29u:
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
          goto LABEL_261;
        }

        if (a2 == 2686977)
        {
LABEL_231:
          result.n64_u8[0] = v6[2].n64_u8[4];
          goto LABEL_328;
        }

        if (a2 != 2686978)
        {
          return result;
        }

        return v6[3];
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          return v6[4];
        }

        return v6[5];
      }

      if (a2 == 2686981)
      {
        return v6[6];
      }

      if (a2 != 2686982)
      {
        return result;
      }

      return v6[7];
    case 0x2Au:
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
LABEL_337:
            result.n64_u32[0] = v6[5].n64_u32[1];
            goto LABEL_328;
          }

          v22 = 2752518;
LABEL_304:
          if (a2 == v22)
          {
            return v6[6];
          }
        }

        else if (a2 == 2752519)
        {
          return v6[7];
        }

        else if (a2 == 2752520)
        {
          return v6[8];
        }

        else
        {
          v21 = 2752521;
LABEL_295:
          if (a2 == v21)
          {
            return v6[9];
          }
        }

        return result;
      }

      if (a2 > 2752513)
      {
        if (a2 == 2752514)
        {
          return v6[3];
        }

        if (a2 != 2752515)
        {
          result.n64_u8[0] = v6[5].n64_u8[0];
          goto LABEL_328;
        }

        return v6[4];
      }

      if (a2 == 2752512)
      {
LABEL_315:
        result.n64_u16[0] = v6[2].n64_u16[0];
      }

      else
      {
        if (a2 != 2752513)
        {
          return result;
        }

LABEL_314:
        result.n64_u16[0] = v6[2].n64_u16[1];
      }

      goto LABEL_328;
    case 0x2Bu:
      v12 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
LABEL_247:
          result.n64_u16[0] = v6[4].n64_u16[0];
          goto LABEL_328;
        }

        v20 = 2818051;
LABEL_218:
        if (a2 == v20)
        {
LABEL_219:
          result.n64_u32[0] = v6[4].n64_u32[1];
          goto LABEL_328;
        }
      }

      else
      {
        if (a2 == 2818048)
        {
          goto LABEL_261;
        }

LABEL_148:
        if (a2 == v12)
        {
          return v6[3];
        }
      }

      return result;
    default:
      return result;
  }
}

uint64_t IOPMAssertionDeclareSystemActivityWithProperties(const __CFDictionary *a1, int *a2, int *a3)
{
  v16 = 0;
  v17 = -536870212;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_16;
  }

  if (pm_connect_init(&v16))
  {
    v17 = -536870199;
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(a1, @"AssertName");
  TypeID = CFStringGetTypeID();
  if (!Value)
  {
    goto LABEL_16;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_16;
  }

  v8 = CFDictionaryGetValue(a1, @"AssertType");
  v9 = CFStringGetTypeID();
  if (v8)
  {
    if (CFGetTypeID(v8) == v9)
    {
      goto LABEL_16;
    }
  }

  if (collectBackTrace)
  {
    saveBackTrace(a1);
  }

  Data = CFPropertyListCreateData(0, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v11 = Data;
    v12 = v16;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v11);
    if (io_pm_declare_system_active(v12, a3, BytePtr, Length, a2, &v17))
    {
      v17 = -536870199;
    }

    CFRelease(v11);
  }

  else
  {
LABEL_16:
    v17 = -536870206;
  }

LABEL_17:
  if (v16)
  {
    _pm_disconnect();
  }

  return v17;
}

uint64_t pm_connect_init(_DWORD *a1)
{
  if (!pm_connect_init_collectBackTraceToken)
  {
    notify_register_dispatch("com.apple.powermanagement.collectbt", &pm_connect_init_collectBackTraceToken, MEMORY[0x1E69E96A0], &__block_literal_global_249);
    notify_get_state(pm_connect_init_collectBackTraceToken, &collectBackTrace);
  }

  return _pm_connect(a1);
}

void __IOHIDEventSystemClientSetDispatchQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    dispatch_release(*(*(a1 + 32) + 296));
    *(*(a1 + 32) + 296) = 0;
    v6 = *(a1 + 32);
    v7 = *(v6 + 304);
    if (v7)
    {
      (*(v7 + 16))();
      _Block_release(*(*(a1 + 32) + 304));
      v6 = *(a1 + 32);
      *(v6 + 304) = 0;
    }

    dispatch_release(*(v6 + 400));
    dispatch_release(*(*(a1 + 32) + 488));
    v8 = *(a1 + 32);

    _IOHIDObjectInternalRelease(v8);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    __IOHIDEventSystemClientQueueCallback(msg, v4, v5, *(a1 + 32));
  }
}

CFDataRef IOCFSerialize(CFDataRef object, CFOptionFlags options)
{
  if (object)
  {
    v2 = object;
    v11 = 0;
    if (options)
    {
      v21 = 1;
      v22 = 0;
      v3 = *MEMORY[0x1E695E480];
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      *bytes = Mutable;
      if (!Mutable)
      {
        IOCFSerialize_cold_2();
      }

      v5 = Mutable;
      v6 = *(MEMORY[0x1E695E9D8] + 32);
      *&keyCallBacks.release = *(MEMORY[0x1E695E9D8] + 16);
      *&keyCallBacks.equal = v6;
      *&keyCallBacks.version = *MEMORY[0x1E695E9D8];
      keyCallBacks.equal = 0;
      v20 = CFDictionaryCreateMutable(v3, 0, &keyCallBacks, 0);
      if (!v20)
      {
        IOCFSerialize_cold_1();
      }

      CFDataAppendBytes(v5, byte_19723D388, 4);
      v7 = DoCFSerializeBinary(bytes, v2, 0);
      object = *bytes;
      if (!v7 && *bytes)
      {
        CFRelease(*bytes);
        object = 0;
        *bytes = 0;
      }

      if (v20)
      {
        CFRelease(v20);
        return *bytes;
      }
    }

    else if (options)
    {
      return 0;
    }

    else
    {
      v8 = *MEMORY[0x1E695E480];
      theData = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      if (!theData)
      {
        IOCFSerialize_cold_9();
      }

      LODWORD(v11) = 0;
      v9 = *(MEMORY[0x1E695E9D8] + 32);
      *&keyCallBacks.release = *(MEMORY[0x1E695E9D8] + 16);
      *&keyCallBacks.equal = v9;
      *&keyCallBacks.version = *MEMORY[0x1E695E9D8];
      keyCallBacks.equal = 0;
      cf = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
      if (!cf)
      {
        IOCFSerialize_cold_8();
      }

      v13 = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
      if (!v13)
      {
        IOCFSerialize_cold_7();
      }

      v14 = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
      if (!v14)
      {
        IOCFSerialize_cold_6();
      }

      v15 = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
      if (!v15)
      {
        IOCFSerialize_cold_5();
      }

      v16 = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
      if (!v16)
      {
        IOCFSerialize_cold_4();
      }

      v17 = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
      if (!v17)
      {
        IOCFSerialize_cold_3();
      }

      if (DoIdrefScan(v2, &theData) && DoCFSerialize(v2, &theData))
      {
        bytes[0] = 0;
        CFDataAppendBytes(theData, bytes, 1);
      }

      else if (theData)
      {
        CFRelease(theData);
        theData = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      return theData;
    }
  }

  return object;
}

uint64_t DoCFSerializeBinary(uint64_t a1, const __CFString *a2, int a3)
{
  context = 0u;
  v39 = 0u;
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  if (Value)
  {
    *bytes = Value & 0xFFFFFF | 0xC000000;
    if (*(a1 + 16))
    {
      *(a1 + 16) = 0;
      *bytes = Value & 0xFFFFFF | 0x8C000000;
    }

    CFDataAppendBytes(*a1, bytes, 4);
    return 1;
  }

  v8 = CFGetTypeID(a2);
  *&context = a1;
  if (v8 == CFDictionaryGetTypeID())
  {
    Count = CFDictionaryGetCount(a2);
    IOCFSerializeBinaryAddObject(a1, a2, Count | 0x1000000, 0, 0, 0);
    BYTE8(v39) = 1;
    *(&context + 1) = 0;
    *&v39 = Count;
    CFDictionaryApplyFunction(a2, IOCFSerializeBinaryCFDictionaryFunction, &context);
    return BYTE8(v39);
  }

  if (v8 == CFArrayGetTypeID())
  {
    v10 = CFArrayGetCount(a2);
    IOCFSerializeBinaryAddObject(a1, a2, v10 | 0x2000000, 0, 0, 0);
    BYTE8(v39) = 1;
    *(&context + 1) = 0;
    *&v39 = v10;
    v40.location = 0;
    v40.length = v10;
    CFArrayApplyFunction(a2, v40, IOCFSerializeBinaryCFArraySetFunction, &context);
    return BYTE8(v39);
  }

  if (v8 == CFSetGetTypeID())
  {
    v11 = CFArrayGetCount(a2);
    IOCFSerializeBinaryAddObject(a1, a2, v11 | 0x3000000, 0, 0, 0);
    BYTE8(v39) = 1;
    *(&context + 1) = 0;
    *&v39 = v11;
    CFSetApplyFunction(a2, IOCFSerializeBinaryCFArraySetFunction, &context);
    return BYTE8(v39);
  }

  if (v8 == CFNumberGetTypeID())
  {
    *bytes = 0;
    v12 = CFNumberGetType(a2) - 5;
    if (v12 > 0xB)
    {
      v13 = kCFNumberLongLongType;
    }

    else
    {
      v13 = qword_19723D3B8[v12];
    }

    result = CFNumberGetValue(a2, v13, bytes);
    if (result)
    {
      v19 = CFNumberGetType(a2) - 1;
      if (v19 > 0xF)
      {
        v14 = 67108928;
      }

      else
      {
        v14 = dword_19723D418[v19];
      }

      v17 = bytes;
      v15 = a1;
      v16 = a2;
      v18 = 8;
      goto LABEL_33;
    }

    return result;
  }

  if (v8 == CFBooleanGetTypeID())
  {
    if (*MEMORY[0x1E695E4D0] == a2)
    {
      v14 = 184549377;
    }

    else
    {
      v14 = 184549376;
    }

    v15 = a1;
    v16 = a2;
    v17 = 0;
    v18 = 0;
    goto LABEL_33;
  }

  if (v8 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      BytePtr = CStringPtr;
      Length = CFStringGetLength(a2);
      v23 = 0;
      goto LABEL_29;
    }

    v33 = *MEMORY[0x1E695E480];
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], a2, 0x8000100u, 0);
    v23 = ExternalRepresentation;
    if (ExternalRepresentation || (v23 = CFStringCreateExternalRepresentation(v33, a2, 0x8000100u, 0x3Fu)) != 0)
    {
      Length = CFDataGetLength(v23);
      BytePtr = CFDataGetBytePtr(v23);
      if (ExternalRepresentation)
      {
LABEL_29:
        if (a3)
        {
          v24 = Length + 1;
          v25 = (Length + 1) | 0x8000000;
          v26 = a1;
          v27 = a2;
          v28 = BytePtr;
          v29 = 1;
        }

        else
        {
          v25 = Length | 0x9000000;
          v26 = a1;
          v27 = a2;
          v28 = BytePtr;
          v24 = Length;
          v29 = 0;
        }

        IOCFSerializeBinaryAddObject(v26, v27, v25, v28, v24, v29);
        if (v23)
        {
          CFRelease(v23);
        }

        return 1;
      }
    }

    else
    {
      Length = 0;
      BytePtr = "";
    }

    if (BytePtr)
    {
      v35 = malloc_type_malloc(Length + 1, 0x9FDE2FE2uLL);
      if (v35)
      {
        v36 = v35;
        memmove(v35, BytePtr, Length);
        v36[Length] = 0;
        syslog(3, "FIXME: IOCFSerialize has detected a string that can not be converted to UTF-8, %s", v36);
        free(v36);
      }
    }

    goto LABEL_29;
  }

  if (v8 == CFDataGetTypeID())
  {
    v30 = CFDataGetLength(a2);
    v17 = CFDataGetBytePtr(a2);
    v14 = v30 | 0xA000000;
    v15 = a1;
    v16 = a2;
    v18 = v30;
LABEL_33:
    IOCFSerializeBinaryAddObject(v15, v16, v14, v17, v18, 0);
    return 1;
  }

  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<string>typeID 0x%x not serializable</string>", v8);
  if (result)
  {
    v31 = result;
    v32 = DoCFSerializeBinary(a1, result, 0);
    CFRelease(v31);
    return v32;
  }

  return result;
}

void IOCFSerializeBinaryAddObject(uint64_t a1, const void *a2, int a3, const UInt8 *a4, uint64_t a5, uint64_t a6)
{
  *bytes = a3;
  CFDictionarySetValue(*(a1 + 8), a2, *(a1 + 24));
  ++*(a1 + 24);
  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
    *bytes = a3 | 0x80000000;
  }

  CFDataAppendBytes(*a1, bytes, 4);
  CFDataAppendBytes(*a1, a4, a5 - a6);
  if (a6)
  {
    CFDataIncreaseLength(*a1, 1);
  }

  if ((a5 & 3) != 0)
  {
    CFDataIncreaseLength(*a1, 4 - (a5 & 3));
  }
}

uint64_t IOCFSerializeBinaryCFDictionaryFunction(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  ++a3[1];
  *(a3 + 24) &= DoCFSerializeBinary(v6, a1, 1);
  v7 = *a3;
  *(v7 + 16) = a3[1] == a3[2];
  result = DoCFSerializeBinary(v7, a2, 0);
  *(a3 + 24) &= result;
  return result;
}

uint64_t _IODispatchCalloutWithDispatch(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  mig_reply_setup(a1, a2);
  a2[1].msgh_remote_port = -305;
  IODispatchCalloutFromCFMessage(v4, a1);
  return 1;
}

uint64_t _pm_connect(_DWORD *a1)
{
  v1 = 3758097084;
  if (!a1)
  {
    return 3758097090;
  }

  if (powerd_connection)
  {
    v1 = 0;
    *a1 = powerd_connection;
  }

  else
  {
    os_unfair_lock_lock(&lock);
    if (powerd_connection)
    {
      v1 = 0;
      *a1 = powerd_connection;
    }

    else
    {
      v3 = *MEMORY[0x1E69E99F8];
      v4 = bootstrap_look_up2();
      if (v4)
      {
        powerd_connection = 0;
        *a1 = 0;
        asl_log(0, 0, 3, "bootstrap_look_up2 failed with 0x%x\n", v4);
      }

      else
      {
        *a1 = powerd_connection;
        v1 = 0;
        if (pthread_atfork(0, 0, _reset_connection))
        {
          powerd_connection = 0;
        }
      }
    }

    os_unfair_lock_unlock(&lock);
  }

  return v1;
}

uint64_t io_pm_declare_system_active(mach_port_t a1, int *a2, uint64_t a3, int a4, int *a5, _DWORD *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v20 = a3;
  v21 = 16777472;
  v22 = a4;
  v23 = *MEMORY[0x1E69E99E0];
  v24 = *a2;
  v25 = a4;
  v26 = *a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x11D3300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x40u, 0x38u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 73111)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 48)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v20);
              if (!HIDWORD(v20))
              {
                v17 = v22;
                *a2 = v21;
                *a5 = v17;
                *a6 = v23;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v20) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v20);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

kern_return_t IORegistryEntrySetCFProperty(io_registry_entry_t entry, CFStringRef propertyName, CFTypeRef property)
{
  v8 = property;
  keys = propertyName;
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v8, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v4)
  {
    return -536870211;
  }

  v5 = v4;
  v6 = IORegistryEntrySetCFProperties(entry, v4);
  CFRelease(v5);
  return v6;
}

kern_return_t IORegistryEntrySetCFProperties(io_registry_entry_t entry, CFTypeRef properties)
{
  v3 = IOCFSerialize(properties, gIOKitLibSerializeOptions);
  if (!v3)
  {
    return -536870201;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v4);
  v7 = io_registry_entry_set_properties(entry, BytePtr, Length);
  CFRelease(v4);
  if (v7)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t IOHIDEventGetIntegerValueWithOptions(const __CFArray *a1, int a2, uint64_t a3)
{
  v4 = a1;
  v5 = HIWORD(a2);
  if (!a1 || a2 >= 0x10000)
  {
    result = IOHIDEventGetEventWithOptions(a1, HIWORD(a2), a3);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  result = 0;
  v7 = *(v4 + 96);
  switch(v5)
  {
    case 0u:
      result = 0;
      if (a2 > 2)
      {
        if (a2 > 4)
        {
          if (a2 == 5)
          {
            v25 = *(v7 + 8);
            return (v25 >> 5) & 1;
          }

          if (a2 == 6)
          {
            return (*(v7 + 8) >> 6) & 1;
          }
        }

        else if (a2 == 3)
        {
          return (*(v7 + 8) >> 3) & 1;
        }

        else
        {
          return (*(v7 + 8) >> 4) & 1;
        }

        return result;
      }

      if (!a2)
      {
        LOBYTE(v7) = *(v7 + 8);
        return v7 & 1;
      }

      if (a2 == 1)
      {
        v26 = *(v7 + 8);
        return (v26 >> 1) & 1;
      }

      if (a2 != 2)
      {
        return result;
      }

      return (*(v7 + 8) >> 2) & 1;
    case 1u:
      result = 0;
      if (a2 <= 65537)
      {
        if (a2 == 0x10000)
        {
          return *(v7 + 16);
        }

        if (a2 == 65537)
        {
          return *(v7 + 18);
        }
      }

      else
      {
        switch(a2)
        {
          case 65538:
            return *(v7 + 20);
          case 65539:
            return *(v7 + 24);
          case 65540:
            goto LABEL_177;
        }
      }

      return result;
    case 2u:
      result = 0;
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          return *(v7 + 16);
        }

        if (a2 == 131073)
        {
          return *(v7 + 24);
        }

        return result;
      }

      if (a2 == 131074)
      {
        return *(v7 + 25);
      }

      if (a2 == 131075)
      {
        goto LABEL_267;
      }

      v14 = 131076;
      goto LABEL_274;
    case 3u:
      result = 0;
      if (a2 > 196612)
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              v25 = *(v7 + 24);
              return (v25 >> 5) & 1;
            case 196617:
              return (*(v7 + 24) >> 6) & 7;
            case 196618:
              return (*(v7 + 24) >> 9) & 3;
          }
        }

        else if (a2 == 196613)
        {
          LODWORD(v7) = *(v7 + 24);
          return v7 & 1;
        }

        else if (a2 == 196614)
        {
          return (*(v7 + 24) >> 1) & 3;
        }

        else
        {
          return (*(v7 + 24) >> 3) & 3;
        }

        return result;
      }

      if (a2 > 196609)
      {
        if (a2 == 196610)
        {
          return *(v7 + 20);
        }

        if (a2 == 196611)
        {
          return (*(v7 + 8) >> 16) & 1;
        }

        else
        {
          return *(v7 + 28);
        }
      }

      if (a2 == 196608)
      {
        return *(v7 + 16);
      }

      if (a2 == 196609)
      {
        return *(v7 + 18);
      }

      return result;
    case 4u:
      if (a2 == 262146)
      {
        return *(v7 + 32);
      }

      if (a2 == 262145)
      {
        return *(v7 + 24);
      }

      if (a2 != 0x40000)
      {
        return 0;
      }

      return *(v7 + 16);
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_284;
      }

      if (a2 == 327681)
      {
        goto LABEL_267;
      }

      if (a2 != 327680)
      {
        return 0;
      }

      goto LABEL_329;
    case 6u:
      result = 0;
      v9 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_266;
        }

        goto LABEL_329;
      }

      if (a2 == 393218)
      {
        goto LABEL_284;
      }

      if (a2 == 393219)
      {
        return (*(v7 + 8) >> 2) & 1;
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_284;
      }

      if (a2 == 458753)
      {
        goto LABEL_267;
      }

      if (a2 != 458752)
      {
        return 0;
      }

      goto LABEL_329;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_284;
      }

      if (a2 == 589825)
      {
        goto LABEL_267;
      }

      if (a2 != 589824)
      {
        return 0;
      }

      goto LABEL_329;
    case 0xAu:
      if ((a2 - 655360) > 0xB)
      {
        return 0;
      }

      if (a2 == 655363)
      {
        return *(v7 + 32);
      }

      result = 0;
      v15 = *(v7 + 32);
      if (v15 <= 1)
      {
        if (v15)
        {
          if (v15 != 1)
          {
            return result;
          }

          if (a2 == 655364)
          {
            return *(v7 + 16);
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_284;
            case 655361:
              goto LABEL_267;
            case 655360:
              goto LABEL_329;
          }
        }

        return 0;
      }

      if (v15 != 3)
      {
        if (v15 != 2)
        {
          return result;
        }

        switch(a2)
        {
          case 655367:
            goto LABEL_284;
          case 655366:
            goto LABEL_267;
          case 655365:
            goto LABEL_329;
        }

        return 0;
      }

      result = 0;
      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_329;
        }

        v9 = 655369;
        goto LABEL_266;
      }

      if (a2 == 655370)
      {
        goto LABEL_284;
      }

      if (a2 == 655371)
      {
        goto LABEL_202;
      }

      return result;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          return *(v7 + 16);
        case 720897:
          return *(v7 + 24);
        case 720898:
          return *(v7 + 32);
        case 720899:
          return *(v7 + 60);
        case 720900:
          return *(v7 + 44);
        case 720901:
          return *(v7 + 40);
        case 720902:
          goto LABEL_347;
        case 720903:
          return *(v7 + 52);
        case 720904:
          return (*(v7 + 8) >> 16) & 1;
        case 720905:
          return (*(v7 + 8) >> 17) & 1;
        case 720906:
          return *(v7 + 64);
        case 720907:
          return *(v7 + 72);
        case 720908:
          return *(v7 + 80);
        case 720909:
        case 720910:
        case 720911:
        case 720912:
        case 720913:
        case 720914:
        case 720915:
        case 720916:
        case 720917:
        case 720922:
          v18 = *(v7 + 88);
          switch(v18)
          {
            case 0:
              if (a2 == 720910)
              {
                return *(v7 + 104);
              }

              if (a2 != 720909)
              {
                return 0;
              }

              return *(v7 + 96);
            case 2:
              result = 0;
              if (a2 <= 720915)
              {
                if (a2 != 720913)
                {
                  if (a2 != 720914)
                  {
                    v19 = 19;
                    goto LABEL_361;
                  }

                  return *(v7 + 104);
                }

                return *(v7 + 96);
              }

              if (a2 != 720916)
              {
                if (a2 != 720917)
                {
                  if (a2 != 720922)
                  {
                    return result;
                  }

                  return *(v7 + 136);
                }

                return *(v7 + 128);
              }

              break;
            case 1:
              result = 0;
              if (a2 <= 720913)
              {
                if (a2 != 720911)
                {
                  if (a2 != 720912)
                  {
                    v19 = 17;
LABEL_361:
                    if (a2 != (v19 | 0xB0000))
                    {
                      return result;
                    }

                    return *(v7 + 112);
                  }

                  return *(v7 + 104);
                }

                return *(v7 + 96);
              }

              if (a2 != 720914)
              {
                if (a2 != 720916)
                {
                  if (a2 != 720917)
                  {
                    return result;
                  }

                  return *(v7 + 136);
                }

                return *(v7 + 128);
              }

              break;
            default:
              return 0;
          }

          return *(v7 + 120);
        case 720918:
          v26 = *(v7 + 8);
          return (v26 >> 1) & 1;
        case 720919:
          if (*(v7 + 44))
          {
            return 0;
          }

          return *(v7 + 80);
        case 720920:
          return *(v7 + 56);
        case 720921:
          return (*(v7 + 8) >> 19) & 1;
        case 720923:
          return *(v7 + 144);
        case 720924:
          return *(v7 + 148);
        case 720925:
          return *(v7 + 152);
        case 720926:
          return (*(v7 + 52) >> 13) & 0x18000 | (*(v7 + 52) >> 20) & 0x400u | (*(v7 + 52) >> 31 << 23);
        case 720927:
          return *(v7 + 88);
        default:
          return 0;
      }

    case 0xCu:
      result = 0;
      if (a2 <= 786437)
      {
        if (a2 > 786434)
        {
          if (a2 == 786435)
          {
            return *(v7 + 28);
          }

          if (a2 != 786436)
          {
            return *(v7 + 36);
          }

          return *(v7 + 32);
        }

        switch(a2)
        {
          case 786432:
            return *(v7 + 16);
          case 786433:
            return *(v7 + 20);
          case 786434:
            return *(v7 + 24);
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          return *(v7 + 56);
        }

        if (a2 != 786442)
        {
          v22 = 786443;
          goto LABEL_299;
        }

        return *(v7 + 64);
      }

      if (a2 == 786438)
      {
        return *(v7 + 37);
      }

      if (a2 == 786439)
      {
        return *(v7 + 40);
      }

      v23 = 786440;
      goto LABEL_308;
    case 0xDu:
      result = 0;
      if (a2 > 851970)
      {
        switch(a2)
        {
          case 851971:
            return *(v7 + 28);
          case 851972:
            return *(v7 + 32);
          case 851973:
            return *(v7 + 36);
        }
      }

      else
      {
        switch(a2)
        {
          case 851968:
            goto LABEL_329;
          case 851969:
            goto LABEL_267;
          case 851970:
            goto LABEL_284;
        }
      }

      return result;
    case 0xEu:
      result = 0;
      v20 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          return *(v7 + 18);
        }

        v20 = 917507;
      }

      else if (a2 == 917504)
      {
        return *(v7 + 16);
      }

      if (a2 != v20)
      {
        return result;
      }

      if (*(v7 + 18) == 1)
      {
        v17 = 917507;
        goto LABEL_214;
      }

      result = 0;
      if (a2 != 917505 || *(v7 + 18))
      {
        return result;
      }

      return *(v7 + 20);
    case 0xFu:
      if (a2 != 983040)
      {
        return 0;
      }

      goto LABEL_329;
    case 0x10u:
      result = 0;
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          return *(v7 + 28);
        }

        if (a2 != 1048577)
        {
          v8 = 1048578;
          goto LABEL_250;
        }

        return *(v7 + 32);
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_329;
        }

        v9 = 1048580;
        goto LABEL_266;
      }

      if (a2 == 1048581)
      {
        return *(v7 + 34);
      }

      v11 = 1048582;
      goto LABEL_283;
    case 0x11u:
      result = 0;
      if (a2 <= 1114113)
      {
        if (a2 == 1114112)
        {
          return *(v7 + 16);
        }

        else
        {
          if (a2 != 1114113)
          {
            return result;
          }

          return *(v7 + 24);
        }
      }

      if (a2 == 1114114)
      {
        return *(v7 + 32);
      }

      if (a2 == 1114115)
      {
        return *(v7 + 40);
      }

      return result;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_267;
      }

      if (a2 != 1179648)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x13u:
      result = 0;
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_329;
        }

        if (a2 != 1245185)
        {
          v11 = 1245186;
          goto LABEL_283;
        }

        goto LABEL_267;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v8 = 1245188;
          goto LABEL_250;
        }

LABEL_37:
        v10 = *(v7 + 32);
        goto LABEL_330;
      }

      if (a2 == 1245189)
      {
LABEL_340:
        v10 = *(v7 + 40);
        goto LABEL_330;
      }

      v14 = 1245190;
LABEL_274:
      if (a2 != v14)
      {
        return result;
      }

      return *(v7 + 28);
    case 0x14u:
      result = 0;
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_329;
        }

        if (a2 != 1310721)
        {
          v11 = 1310722;
          goto LABEL_283;
        }

        goto LABEL_267;
      }

      if (a2 == 1310723)
      {
        return *(v7 + 28);
      }

      if (a2 != 1310724)
      {
        v24 = 1310725;
        goto LABEL_219;
      }

      return *(v7 + 32);
    case 0x15u:
      result = 0;
      if (a2 <= 1376258)
      {
        if (a2 == 1376256)
        {
          goto LABEL_329;
        }

        if (a2 != 1376257)
        {
          v11 = 1376258;
          goto LABEL_283;
        }

        goto LABEL_267;
      }

      if (a2 == 1376259)
      {
        return *(v7 + 28);
      }

      if (a2 == 1376260)
      {
        return *(v7 + 32);
      }

      v24 = 1376261;
LABEL_219:
      if (a2 == v24)
      {
        return *(v7 + 36);
      }

      return result;
    case 0x17u:
      result = 0;
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          return *(v7 + 28);
        }

        if (a2 != 1507329)
        {
          v8 = 1507330;
          goto LABEL_250;
        }

        return *(v7 + 32);
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_329;
        }

        v9 = 1507332;
        goto LABEL_266;
      }

      if (a2 == 1507333)
      {
        return *(v7 + 34);
      }

      v11 = 1507334;
LABEL_283:
      if (a2 == v11)
      {
LABEL_284:
        v10 = *(v7 + 24);
        goto LABEL_330;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        return *(v7 + 16);
      }

      if (a2 != 1572865)
      {
        return 0;
      }

      return *(v7 + 8) >> 15;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          return *(v7 + 28);
        case 1638401:
          return *(v7 + 24);
        case 1638400:
          goto LABEL_329;
      }

      return 0;
    case 0x1Au:
      if (a2 == 1703938)
      {
        return *(v7 + 24);
      }

      if (a2 == 1703937)
      {
        return *(v7 + 20);
      }

      if (a2 != 1703936)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x1Bu:
      result = 0;
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          return *(v7 + 28);
        }

        if (a2 != 1769473)
        {
          v8 = 1769474;
          goto LABEL_250;
        }

        return *(v7 + 32);
      }

      if (a2 == 1769477)
      {
        return *(v7 + 34);
      }

      if (a2 != 1769476)
      {
        v21 = 1769475;
        goto LABEL_224;
      }

      goto LABEL_267;
    case 0x1Cu:
      result = 0;
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
          return *(v7 + 28);
        }

        if (a2 == 1835009)
        {
          return *(v7 + 32);
        }

        v8 = 1835010;
LABEL_250:
        if (a2 == v8)
        {
LABEL_251:
          v10 = *(v7 + 36);
          goto LABEL_330;
        }

        return result;
      }

      if (a2 == 1835013)
      {
        return *(v7 + 34);
      }

      if (a2 == 1835012)
      {
        goto LABEL_267;
      }

      v21 = 1835011;
LABEL_224:
      if (a2 != v21)
      {
        return result;
      }

      goto LABEL_329;
    case 0x1Du:
      result = 0;
      v9 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            return *(v7 + 24);
          case 1900547:
            return *(v7 + 26);
          case 1900548:
            return *(v7 + 32);
        }

        return result;
      }

      if (a2 == 1900544)
      {
        return *(v7 + 16);
      }

      goto LABEL_266;
    case 0x1Eu:
      result = 0;
      v9 = 1966081;
      if (a2 > 1966081)
      {
        if (a2 == 1966082)
        {
          return *(v7 + 24);
        }

        if (a2 == 1966083)
        {
LABEL_177:
          if (*(v7 + 24) < 8u)
          {
            return 0;
          }

          return *(v7 + 28);
        }

        return result;
      }

      if (a2 == 1966080)
      {
        return *(v7 + 16);
      }

LABEL_266:
      if (a2 != v9)
      {
        return result;
      }

      goto LABEL_267;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        return *(v7 + 20);
      }

      if (a2 != 2031616)
      {
        return 0;
      }

      goto LABEL_329;
    case 0x20u:
      result = 0;
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
          return *(v7 + 24);
        }

        if (a2 != 2097155)
        {
          return result;
        }

LABEL_202:
        v10 = *(v7 + 28);
        goto LABEL_330;
      }

      if (a2 == 0x200000)
      {
        return *(v7 + 16);
      }

      if (a2 == 2097153)
      {
        goto LABEL_267;
      }

      return result;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_267;
      }

      if (a2 != 2162688)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_267;
      }

      if (a2 != 2228224)
      {
        return 0;
      }

      return *(v7 + 16);
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          return *(v7 + 16);
        case 2293761:
          goto LABEL_267;
        case 2293762:
          goto LABEL_284;
        case 2293763:
          goto LABEL_202;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v10 = *(v7 + 44);
          goto LABEL_330;
        case 2293766:
          v10 = *(v7 + 48);
          goto LABEL_330;
        case 2293767:
          goto LABEL_251;
        case 2293768:
          goto LABEL_340;
        case 2293769:
          v10 = *(v7 + 68);
          goto LABEL_330;
        case 2293770:
          v10 = *(v7 + 76);
          goto LABEL_330;
        case 2293771:
          v10 = *(v7 + 72);
          goto LABEL_330;
        case 2293772:
          v10 = *(v7 + 80);
          goto LABEL_330;
        case 2293773:
          v10 = *(v7 + 52);
          goto LABEL_330;
        case 2293774:
          v10 = *(v7 + 56);
          goto LABEL_330;
        case 2293775:
          v10 = *(v7 + 60);
          goto LABEL_330;
        case 2293776:
          v10 = *(v7 + 64);
          goto LABEL_330;
        case 2293777:
          LOBYTE(v7) = *(v7 + 84);
          return v7 & 1;
        case 2293778:
          v26 = *(v7 + 84);
          return (v26 >> 1) & 1;
        case 2293779:
          v10 = *(v7 + 88);
          goto LABEL_330;
        case 2293780:
          v10 = *(v7 + 92);
          goto LABEL_330;
        case 2293781:
          v10 = *(v7 + 96);
          goto LABEL_330;
        case 2293782:
          v10 = *(v7 + 100);
          goto LABEL_330;
        case 2293783:
          v10 = *(v7 + 104);
          goto LABEL_330;
        case 2293784:
          v10 = *(v7 + 108);
          goto LABEL_330;
        default:
          return 0;
      }

    case 0x24u:
      if (a2 == 2359297)
      {
        return *(v7 + 20);
      }

      if (a2 != 2359296)
      {
        return 0;
      }

      goto LABEL_329;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          return *(v7 + 20);
        case 2424833:
          return *(v7 + 18);
        case 2424832:
          return *(v7 + 16);
      }

      return 0;
    case 0x26u:
      if (a2 == 2490370)
      {
        return *(v7 + 24);
      }

      if (a2 == 2490369)
      {
        goto LABEL_267;
      }

      if (a2 != 2490368)
      {
        return 0;
      }

LABEL_329:
      v10 = *(v7 + 16);
      goto LABEL_330;
    case 0x27u:
      if ((a2 - 2555905) >= 2)
      {
        if (a2 == 2555904)
        {
          return *(v7 + 16);
        }

        return 0;
      }

      v16 = *(v7 + 16);
      if (v16 != 1)
      {
        if (v16)
        {
          result = 0;
          if (a2 != 2555905 || v16 != 2)
          {
            return result;
          }
        }

        else
        {
          v17 = 2555905;
LABEL_214:
          if (a2 != v17)
          {
            return 0;
          }
        }

        return *(v7 + 20);
      }

      if (a2 != 2555906)
      {
        return 0;
      }

LABEL_267:
      v10 = *(v7 + 20);
LABEL_330:
      if (v10 == 0x80000000)
      {
        return 0xFFFFFFFF80000000;
      }

      else
      {
        return (v10 + (v10 < 0 ? 0xFFFF : 0)) >> 16;
      }

    case 0x28u:
      switch(a2)
      {
        case 2621440:
          result = *(v7 + 64);
          break;
        case 2621441:
          result = *(v7 + 66);
          break;
        case 2621442:
          return *(v7 + 16);
        case 2621443:
          return *(v7 + 24);
        case 2621444:
          return *(v7 + 25);
        case 2621445:
          return *(v7 + 28);
        case 2621446:
          return *(v7 + 32);
        case 2621447:
          return *(v7 + 36);
        case 2621448:
          result = *(v7 + 44);
          break;
        case 2621449:
LABEL_347:
          result = *(v7 + 48);
          break;
        case 2621450:
          result = *(v7 + 56);
          break;
        case 2621451:
          result = *(v7 + 26);
          break;
        case 2621452:
          return *(v7 + 40);
        default:
          return 0;
      }

      return result;
    case 0x29u:
      result = 0;
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
          return *(v7 + 16);
        }

        if (a2 != 2686977)
        {
          v13 = 2686978;
          goto LABEL_234;
        }

        return *(v7 + 20);
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          return *(v7 + 32);
        }

        return *(v7 + 40);
      }

      if (a2 == 2686981)
      {
        return *(v7 + 48);
      }

      if (a2 != 2686982)
      {
        return result;
      }

      return *(v7 + 56);
    case 0x2Au:
      result = 0;
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
            return *(v7 + 44);
          }

          else
          {
            v23 = 2752518;
LABEL_308:
            if (a2 == v23)
            {
              return *(v7 + 48);
            }
          }
        }

        else
        {
          if (a2 == 2752519)
          {
            return *(v7 + 56);
          }

          if (a2 == 2752520)
          {
            return *(v7 + 64);
          }

          v22 = 2752521;
LABEL_299:
          if (a2 == v22)
          {
            return *(v7 + 72);
          }
        }

        return result;
      }

      if (a2 <= 2752513)
      {
        if (a2 == 2752512)
        {
          return *(v7 + 16);
        }

        if (a2 == 2752513)
        {
          return *(v7 + 18);
        }

        return result;
      }

      if (a2 == 2752514)
      {
        return *(v7 + 24);
      }

      if (a2 != 2752515)
      {
        return *(v7 + 40);
      }

      return *(v7 + 32);
    case 0x2Bu:
      result = 0;
      v13 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
          return *(v7 + 32);
        }

        if (a2 == 2818051)
        {
          return *(v7 + 36);
        }

        return result;
      }

      if (a2 == 2818048)
      {
        return *(v7 + 16);
      }

LABEL_234:
      if (a2 != v13)
      {
        return result;
      }

      return *(v7 + 24);
    default:
      return result;
  }
}

uint64_t io_registry_entry_set_properties(unsigned int a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 1;
  v9 = a2;
  v10 = 0x1000000;
  v11 = a3;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a3;
  *&v7.msgh_bits = 0x3880001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB0C00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v7.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IOHIDEventCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 0x2B)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_19723D8C8[a2];
  }

  v7 = _IOHIDEventCreate(a1, v6, a2, a3, a4);
  if (v7)
  {
    if (_MergedGlobals[0] && _MergedGlobals[0]() && off_1ED446908)
    {
      a3 = off_1ED446908(a3);
    }

    *(v7 + 8) = a3;
  }

  return v7;
}

const __CFArray *IOHIDEventCreateDigitizerEvent(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, int a14, int a15)
{
  if (a8)
  {
    v25 = 65537;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25 | a15;
  v27 = v25 | a15 | 0x20000;
  if (a7 & 1 | a14)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v29 = IOHIDEventCreate(a1, 11, a2, v28);
  v30 = v29;
  if (v29)
  {
    EventWithOptions = IOHIDEventGetEventWithOptions(v29, 11, 4026531840);
    if (EventWithOptions)
    {
      *(*(EventWithOptions + 12) + 52) = a6;
    }

    v34 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v34)
    {
      *(*(v34 + 12) + 60) = a7;
    }

    v35 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v35)
    {
      *(*(v35 + 12) + 40) = a4;
    }

    v36 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v36)
    {
      *(*(v36 + 12) + 44) = a3;
    }

    v37 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v37)
    {
      *(*(v37 + 12) + 48) = a5;
    }

    v38 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v38)
    {
      *(*(v38 + 12) + 16) = a9;
    }

    v39 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v39)
    {
      *(*(v39 + 12) + 24) = a10;
    }

    v40 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v40)
    {
      *(*(v40 + 12) + 32) = a11;
    }

    v41 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v41)
    {
      *(*(v41 + 12) + 64) = a12;
    }

    v42 = IOHIDEventGetEventWithOptions(v30, 11, 4026531840);
    if (v42)
    {
      *(*(v42 + 12) + 80) = a13;
    }
  }

  else
  {
    v31 = _IOHIDLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 0;
      _os_log_impl(&dword_197195000, v31, OS_LOG_TYPE_DEFAULT, "IOHIDEventCreateDigitizerEvent event is null", v43, 2u);
    }
  }

  return v30;
}

void IOHIDEventSetSenderID(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __IOHIDEventSetSenderID_block_invoke;
    v3[3] = &__block_descriptor_tmp_14;
    v3[4] = a2;
    _IOHIDCFArrayApplyBlock(v2, v3);
  }
}

CFTypeRef IOCFUnserializeWithSize(const char *buffer, size_t bufferSize, CFAllocatorRef allocator, CFOptionFlags options, CFStringRef *errorString)
{
  if (errorString)
  {
    *errorString = 0;
  }

  if (!buffer || bufferSize < 4)
  {
    return 0;
  }

  if (options)
  {
    return IOCFUnserializeBinary(buffer, bufferSize, allocator, options, errorString);
  }

  v5 = *buffer;
  if (v5 == 212 || v5 == 211 && !buffer[1])
  {
    return IOCFUnserializeBinary(buffer, bufferSize, allocator, options, errorString);
  }

  return IOCFUnserialize(buffer, allocator, options, errorString);
}

CFTypeRef IOCFUnserializeBinary(const char *buffer, size_t bufferSize, CFAllocatorRef allocator, CFOptionFlags options, CFStringRef *errorString)
{
  v5 = bufferSize;
  if (errorString)
  {
    *errorString = 0;
  }

  v7 = 0;
  if (bufferSize < 4 || (buffer & 3) != 0)
  {
    return v7;
  }

  v8 = *buffer;
  if (v8 == 212)
  {
    v56 = bufferSize >> 2;
    v9 = malloc_type_calloc(bufferSize >> 2, 8uLL, 0xC0040B8AA526DuLL);
    goto LABEL_12;
  }

  if (v8 == 211)
  {
    if (buffer[1])
    {
      return 0;
    }
  }

  else if (211 != v8)
  {
    return 0;
  }

  v56 = 0;
  v9 = 0;
LABEL_12:
  __src = 0;
  v10 = 0;
  v78 = 0;
  *&v63[8] = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v57 = 0;
  v64 = 0;
  v60 = 0;
  v65 = buffer;
  v77 = buffer + 4;
  v59 = *MEMORY[0x1E695E4D0];
  v58 = *MEMORY[0x1E695E4C0];
  *v63 = v9 != 0;
  v16 = 4;
  v66 = v9;
  v71 = v5;
  while (2)
  {
    v17 = v13;
    v73 = v14;
    do
    {
      while (1)
      {
        v76 = v12;
        v18 = v17;
        v19 = v11;
        v72 = v15;
        v20 = v16 + 4;
        if (v16 + 4 > v5)
        {
          goto LABEL_117;
        }

        v21 = (v77 + 4);
        v22 = *v77 & 0xFFFFFFLL;
        v23 = *v77 & 0x7F000000;
        v24 = (v23 - 0x1000000) >> 24;
        v75 = *v77;
        if (v24 <= 6)
        {
          if ((v23 - 0x1000000) >> 24 <= 1)
          {
            if (v24)
            {
              if (v24 != 1)
              {
                goto LABEL_117;
              }

              Mutable = CFArrayCreateMutable(allocator, v22, MEMORY[0x1E695E9C0]);
              v29 = 0;
              v70 = 0;
              v74 = v22 != 0;
              v69 = Mutable;
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(allocator, v22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v29 = Mutable;
              v69 = 0;
              v70 = 0;
              v74 = v22 != 0;
            }

LABEL_43:
            v15 = Mutable;
            v34 = *v63;
            if (!Mutable)
            {
              goto LABEL_117;
            }

            goto LABEL_67;
          }

          if (v24 == 2)
          {
            Mutable = CFSetCreateMutable(allocator, v22, MEMORY[0x1E695E9F8]);
            v29 = 0;
            v69 = 0;
            v74 = v22 != 0;
            v70 = Mutable;
            goto LABEL_43;
          }

          if (v24 != 3)
          {
            goto LABEL_117;
          }

          v20 = v16 + 12;
          if (v16 + 12 > v5)
          {
            goto LABEL_117;
          }

          if (v22 == 63)
          {
            v32 = allocator;
            v33 = kCFNumberFloat64Type;
          }

          else
          {
            if (v22 == 31)
            {
              v30 = *v21;
              v79 = v30;
              v31 = &v79;
              v32 = allocator;
              v33 = kCFNumberFloat32Type;
              goto LABEL_66;
            }

            v32 = allocator;
            if (v22 > 0x20)
            {
              v33 = kCFNumberSInt64Type;
            }

            else
            {
              v33 = kCFNumberSInt32Type;
            }
          }

          v31 = (v77 + 4);
LABEL_66:
          v15 = CFNumberCreate(v32, v33, v31);
          v29 = 0;
          v69 = 0;
          v70 = 0;
          v74 = 0;
          v34 = 0;
          v21 = (v77 + 12);
          if (!v15)
          {
            goto LABEL_117;
          }

          goto LABEL_67;
        }

        v25 = (v22 + 3) >> 2;
        if ((v23 - 0x1000000) >> 24 <= 8)
        {
          if (v24 == 7)
          {
            if (!v22)
            {
              goto LABEL_117;
            }

            LODWORD(v22) = v22 - 1;
          }

          else if (v24 != 8)
          {
            goto LABEL_117;
          }

          v20 += 4 * v25;
          if (v20 > v5)
          {
            goto LABEL_117;
          }

          v35 = v9;
          v36 = v10;
          v37 = v22;
          if (v23 == 0x8000000 && v21[v22])
          {
            v29 = 0;
            LODWORD(v10) = v36;
            v9 = v35;
            goto LABEL_118;
          }

          v15 = CFStringCreateWithBytes(allocator, v21, v22, 0x8000100u, 0);
          if (!v15)
          {
            v15 = CFStringCreateWithBytes(allocator, v21, v37, 0, 0);
            CStringPtr = CFStringGetCStringPtr(v15, 0);
            syslog(3, "FIXME: IOUnserialize has detected a string that is not valid UTF-8, %s.", CStringPtr);
          }

          v29 = 0;
          v69 = 0;
          v70 = 0;
          v74 = 0;
          v34 = 0;
          v21 += 4 * v25;
          v10 = v36;
          v9 = v35;
          if (!v15)
          {
            goto LABEL_117;
          }
        }

        else
        {
          switch(v24)
          {
            case 9u:
              v20 += 4 * v25;
              if (v20 > v5)
              {
                goto LABEL_117;
              }

              v15 = CFDataCreate(allocator, v21, v22);
              v29 = 0;
              v69 = 0;
              v70 = 0;
              v74 = 0;
              v34 = 0;
              v21 += 4 * v25;
              if (!v15)
              {
                goto LABEL_117;
              }

              break;
            case 0xAu:
              if (v22)
              {
                v15 = v59;
              }

              else
              {
                v15 = v58;
              }

              CFRetain(v15);
              v29 = 0;
              v69 = 0;
              v70 = 0;
              v74 = 0;
              v34 = 0;
              if (!v15)
              {
                goto LABEL_117;
              }

              break;
            case 0xBu:
              if (v9)
              {
                v26 = v73;
                if (v56 <= v22)
                {
                  goto LABEL_117;
                }

                v27 = &v9[v22];
              }

              else
              {
                v26 = v73;
                if (v22 >= v78)
                {
                  goto LABEL_117;
                }

                v27 = &__src[8 * v22];
              }

              v29 = 0;
              v15 = *v27;
              if (!*v27)
              {
                goto LABEL_118;
              }

              v74 = 0;
              v69 = 0;
              v70 = 0;
              v16 = v20;
              v77 += 4;
              goto LABEL_84;
            default:
              goto LABEL_117;
          }
        }

LABEL_67:
        if (v78 < v10)
        {
          v39 = v10;
          v40 = __src;
          goto LABEL_76;
        }

        if (BYTE3(v10))
        {
          v41 = 0;
          if (!v9)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

        v61 = v29;
        v39 = (v10 + 64);
        v42 = malloc_type_malloc((8 * v39), 0xC0040B8AA526DuLL);
        if (!v42)
        {
          v41 = 0;
          v9 = v66;
          v29 = v61;
          if (!v66)
          {
            goto LABEL_78;
          }

LABEL_77:
          v9[(v77 - v65) >> 2] = v15;
          goto LABEL_78;
        }

        v40 = v42;
        if (__src)
        {
          memmove(v42, __src, (8 * v10));
          free(__src);
        }

        v29 = v61;
LABEL_76:
        *&v40[8 * v78] = v15;
        v41 = 1;
        __src = v40;
        v10 = v39;
        v9 = v66;
        if (v66)
        {
          goto LABEL_77;
        }

LABEL_78:
        if ((v41 & 1) == 0)
        {
          CFRelease(v15);
          goto LABEL_117;
        }

        ++v78;
        if (v34)
        {
          v16 = v20 + 4;
          if (v20 + 4 > v71)
          {
            goto LABEL_117;
          }

          v77 = (v21 + 4);
        }

        else
        {
          v16 = v20;
          v77 = v21;
        }

        v26 = v73;
LABEL_84:
        v11 = v19;
        if (v26)
        {
          v17 = v18;
          v14 = v29;
          if (v11)
          {
            v5 = v71;
            v12 = v76;
            if (v15 != v26)
            {
              CFDictionarySetValue(v26, v11, v15);
            }

            v11 = 0;
          }

          else
          {
            TypeID = CFStringGetTypeID();
            v11 = v15;
            v5 = v71;
            v12 = v76;
            if (TypeID != CFGetTypeID(v15))
            {
              goto LABEL_117;
            }
          }
        }

        else
        {
          v17 = v18;
          v14 = v29;
          if (v18)
          {
            CFArrayAppendValue(v18, v15);
            v5 = v71;
            v12 = v76;
          }

          else
          {
            v5 = v71;
            v12 = v76;
            if (v76)
            {
              CFSetAddValue(v76, v15);
            }

            else
            {
              if (v57)
              {
                goto LABEL_117;
              }

              v57 = v15;
              if (v72)
              {
                IOCFUnserializeBinary_cold_1();
              }
            }
          }
        }

        if (v74)
        {
          break;
        }

        v15 = v72;
        if (v75 < 0)
        {
          v44 = v64;
          if (!v64)
          {
            v29 = v57;
            goto LABEL_118;
          }

          v15 = *(*&v63[4] + 8 * v64--);
          v45 = CFGetTypeID(*(*&v63[4] + 8 * v44));
          v12 = 0;
          v17 = 0;
          v73 = v15;
          if (v45 != CFDictionaryGetTypeID())
          {
            v12 = 0;
            v73 = 0;
            v17 = v15;
            if (v45 != CFArrayGetTypeID())
            {
              v46 = CFSetGetTypeID();
              v17 = 0;
              v73 = 0;
              v29 = 0;
              v12 = v15;
              if (v45 != v46)
              {
                goto LABEL_118;
              }
            }
          }
        }
      }

      v13 = v69;
      v12 = v70;
      v17 = v69;
      v73 = v14;
    }

    while (v75 < 0);
    v47 = ++v64;
    v62 = v10;
    if (v64 < v60)
    {
      v48 = v60;
      v49 = *&v63[4];
LABEL_115:
      v49[v47] = v72;
      *&v63[4] = v49;
      v60 = v48;
      v10 = v62;
      v12 = v70;
      continue;
    }

    break;
  }

  if (HIWORD(v60))
  {
LABEL_117:
    v29 = 0;
    goto LABEL_118;
  }

  v48 = v60 + 64;
  v50 = malloc_type_malloc(8 * (v60 + 64), 0xC0040B8AA526DuLL);
  if (v50)
  {
    v49 = v50;
    if (*&v63[4])
    {
      memmove(v50, *&v63[4], 8 * v60);
      free(*&v63[4]);
    }

    v47 = v64;
    v13 = v69;
    goto LABEL_115;
  }

  v29 = 0;
  LODWORD(v10) = v62;
LABEL_118:
  v7 = v29;
  if (v10)
  {
    v51 = v29 != 0;
    v52 = v78 - v51;
    if (v78 > v51)
    {
      v53 = &__src[8 * (v29 != 0)];
      do
      {
        v54 = *v53++;
        CFRelease(v54);
        --v52;
      }

      while (v52);
    }

    free(__src);
  }

  if (v60)
  {
    free(*&v63[4]);
  }

  if (v9)
  {
    free(v9);
  }

  return v7;
}

int64_t __IOHIDEventReadBytesHelper(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v10 = *(a1 + 32);
  if ((v10 & 0x80) != 0)
  {
    TimeStamp = *(a1 + 8);
  }

  else
  {
    TimeStamp = IOHIDEventGetTimeStamp(a1);
    v10 = *(a1 + 32);
  }

  v12 = *(a1 + 16);
  *a2 = TimeStamp;
  *(a2 + 8) = v12;
  v13 = *(a1 + 88);
  *(a2 + 16) = v10;
  *(a2 + 20) = v13;
  if (v13 && (v14 = *(a1 + 40)) != 0)
  {
    memmove((a2 + 28), v14, v13);
    v15 = *(a1 + 88) + 28;
  }

  else
  {
    v15 = 28;
  }

  appended = __IOHIDEventDataAppendEventData(a1, (a2 + v15), a3 - v15, a4, a5);
  *(a2 + 24) = *a4;
  return appended + v15;
}

int64_t __IOHIDEventDataAppendEventData(uint64_t a1, char *a2, int64_t a3, void *a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_26:
    v8 = 0;
    goto LABEL_23;
  }

  v7 = *(a1 + 96);
  v8 = *v7;
  if (v8 > a3)
  {
    v27 = _IOHIDLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = 134218240;
      v29 = 0;
      v30 = 2048;
      v31 = a3;
      _os_log_error_impl(&dword_197195000, v27, OS_LOG_TYPE_ERROR, "insufficient buffer data available, size: %ld, length: %ld", &v28, 0x16u);
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(v12 + 96);
    if (v13)
    {
      *(v7 + 12) = *(v13 + 12) + 1;
    }

    else
    {
      v14 = _IOHIDLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v28) = 0;
        _os_log_error_impl(&dword_197195000, v14, OS_LOG_TYPE_ERROR, "no event->parent->eventData", &v28, 2u);
      }
    }
  }

  else
  {
    *(v7 + 12) = 0;
  }

  v15 = *(a1 + 96);
  if (a5 && (HasLegacyEventData = __IOHIDEventHasLegacyEventData(v15[1]), v15 = *(a1 + 96), HasLegacyEventData))
  {
    v8 = __IOHIDEventDataAppendFromLegacyEvent(*(a1 + 96), a2);
  }

  else
  {
    memmove(a2, v15, v8);
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    Count = CFArrayGetCount(v17);
    v19 = Count;
    if (Count)
    {
      v20 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v20);
        v22 = a3 - v8;
        v23 = &a2[v8];
        if (a5)
        {
          appended = __IOHIDEventDataAppendEventData(ValueAtIndex, v23, v22, a4, 1);
        }

        else
        {
          appended = __IOHIDEventReadBytesHelper(ValueAtIndex, v23, v22, a4, 0);
        }

        v8 += appended;
        ++v20;
      }

      while (v19 != v20);
    }
  }

  if (a4)
  {
    ++*a4;
  }

LABEL_23:
  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

double IOHIDEventSetIntegerValueWithOptions(const __CFArray *EventWithOptions, int a2, uint64_t a3, uint64_t a4)
{
  v6 = HIWORD(a2);
  if (!EventWithOptions || a2 >= 0x10000)
  {
    EventWithOptions = IOHIDEventGetEventWithOptions(EventWithOptions, HIWORD(a2), a4);
    if (!EventWithOptions)
    {
      return result;
    }
  }

  v7 = *(EventWithOptions + 12);
  switch(v6)
  {
    case 0u:
      if (a2 <= 2)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v8 = *(v7 + 8) & 0xFD | (2 * (a3 != 0));
          }

          else
          {
            if (a2 != 2)
            {
              return result;
            }

            v8 = *(v7 + 8) & 0xFB | (4 * (a3 != 0));
          }
        }

        else
        {
          v8 = *(v7 + 8) & 0xFE;
          if (a3)
          {
            ++v8;
          }
        }
      }

      else if (a2 > 4)
      {
        if (a2 == 5)
        {
          v8 = *(v7 + 8) & 0xDF | (32 * (a3 != 0));
        }

        else
        {
          if (a2 != 6)
          {
            return result;
          }

          v8 = *(v7 + 8) & 0xBF | ((a3 != 0) << 6);
        }
      }

      else if (a2 == 3)
      {
        v8 = *(v7 + 8) & 0xF7 | (8 * (a3 != 0));
      }

      else
      {
        v8 = *(v7 + 8) & 0xEF | (16 * (a3 != 0));
      }

      *(v7 + 8) = v8;
      return result;
    case 1u:
      if (a2 > 65537)
      {
        if (a2 == 65538)
        {
          goto LABEL_356;
        }

        if (a2 == 65540 && *(v7 + 24) >= 8u)
        {
          *(v7 + 28) = a3;
        }
      }

      else if (a2 == 0x10000)
      {
        *(v7 + 16) = a3;
      }

      else if (a2 == 65537)
      {
        *(v7 + 18) = a3;
      }

      return result;
    case 2u:
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          goto LABEL_278;
        }

        if (a2 == 131073)
        {
LABEL_272:
          *(v7 + 24) = a3;
        }

        return result;
      }

      if (a2 == 131074)
      {
LABEL_319:
        *(v7 + 25) = a3;
        return result;
      }

      if (a2 == 131075)
      {
        goto LABEL_275;
      }

      v15 = 131076;
      goto LABEL_288;
    case 3u:
      if (a2 > 196612)
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              *(v7 + 24) = *(v7 + 24) & 0xFFFFFFDF | (32 * (a3 != 0));
              return result;
            case 196617:
              v20 = *(v7 + 24) & 0xFFFFFE3F | ((a3 & 7) << 6);
              break;
            case 196618:
              v20 = *(v7 + 24) & 0xFFFFF9FF | ((a3 & 3) << 9);
              break;
            default:
              return result;
          }
        }

        else if (a2 == 196613)
        {
          v20 = *(v7 + 24) & 0xFFFFFFFE;
          if (a3)
          {
            ++v20;
          }
        }

        else if (a2 == 196614)
        {
          v20 = *(v7 + 24) & 0xFFFFFFF9 | (2 * (a3 & 3));
        }

        else
        {
          v20 = *(v7 + 24) & 0xFFFFFFE7 | (8 * (a3 & 3));
        }

        goto LABEL_300;
      }

      if (a2 > 196609)
      {
        if (a2 == 196610)
        {
          goto LABEL_334;
        }

        if (a2 == 196611)
        {
LABEL_372:
          v34 = *(v7 + 8) & 0xFFFEFFFF | ((a3 != 0) << 16);
LABEL_472:
          *(v7 + 8) = v34;
        }

        else
        {
          *(v7 + 28) = a3;
        }

        return result;
      }

      if (a2 == 196608)
      {
        goto LABEL_339;
      }

      if (a2 == 196609)
      {
        goto LABEL_338;
      }

      return result;
    case 4u:
      switch(a2)
      {
        case 262146:
          goto LABEL_235;
        case 262145:
          goto LABEL_251;
        case 262144:
LABEL_82:
          result = a3;
          *(v7 + 16) = a3;
          break;
      }

      return result;
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_298;
      }

      if (a2 == 327681)
      {
        goto LABEL_275;
      }

      if (a2 != 327680)
      {
        return result;
      }

      goto LABEL_347;
    case 6u:
      v11 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_274;
        }

        goto LABEL_347;
      }

      if (a2 == 393218)
      {
        goto LABEL_298;
      }

      if (a2 == 393219)
      {
        *(v7 + 8) = *(v7 + 8) & 0xFB | (4 * (a3 != 0));
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_279;
      }

      if (a2 == 458753)
      {
        goto LABEL_351;
      }

      if (a2 != 458752)
      {
        return result;
      }

      goto LABEL_113;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_298;
      }

      if (a2 == 589825)
      {
        goto LABEL_275;
      }

      if (a2 != 589824)
      {
        return result;
      }

      goto LABEL_347;
    case 0xAu:
      if ((a2 - 655364) >= 8 && (a2 - 655360) > 2)
      {
        return result;
      }

      v16 = *(v7 + 32);
      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 == 1 && a2 == 655364)
          {
            goto LABEL_278;
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_298;
            case 655361:
              goto LABEL_275;
            case 655360:
              goto LABEL_347;
          }
        }

        return result;
      }

      if (v16 != 3)
      {
        if (v16 != 2)
        {
          return result;
        }

        if (a2 == 655367)
        {
          goto LABEL_298;
        }

        if (a2 == 655366)
        {
          goto LABEL_275;
        }

        v24 = 655365;
        goto LABEL_241;
      }

      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_347;
        }

        v11 = 655369;
        goto LABEL_274;
      }

      if (a2 == 655370)
      {
        goto LABEL_298;
      }

      if (a2 != 655371)
      {
        return result;
      }

      goto LABEL_215;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          goto LABEL_82;
        case 720897:
          goto LABEL_251;
        case 720898:
          goto LABEL_235;
        case 720899:
          *(v7 + 60) = a3;
          return result;
        case 720900:
          goto LABEL_371;
        case 720901:
          goto LABEL_374;
        case 720902:
          goto LABEL_373;
        case 720903:
          *(v7 + 52) = a3;
          return result;
        case 720904:
          goto LABEL_372;
        case 720905:
          v34 = *(v7 + 8) & 0xFFFDFFFF | ((a3 != 0) << 17);
          goto LABEL_472;
        case 720906:
          goto LABEL_335;
        case 720907:
          goto LABEL_316;
        case 720908:
          goto LABEL_463;
        case 720909:
        case 720910:
        case 720911:
        case 720912:
        case 720913:
        case 720914:
        case 720915:
        case 720916:
        case 720917:
        case 720922:
          v21 = *(v7 + 88);
          if (!v21)
          {
            if (a2 == 720910)
            {
              goto LABEL_398;
            }

            if (a2 != 720909)
            {
              return result;
            }

            goto LABEL_392;
          }

          if (v21 == 2)
          {
            if (a2 <= 720915)
            {
              if (a2 != 720913)
              {
                if (a2 != 720914)
                {
                  v22 = 19;
LABEL_388:
                  if (a2 == (v22 | 0xB0000))
                  {
                    result = a3;
                    *(v7 + 112) = a3;
                  }

                  return result;
                }

LABEL_398:
                result = a3;
                *(v7 + 104) = a3;
                return result;
              }

LABEL_392:
              result = a3;
              *(v7 + 96) = a3;
              return result;
            }

            if (a2 != 720916)
            {
              if (a2 != 720917)
              {
                v35 = 26;
                goto LABEL_405;
              }

LABEL_474:
              result = a3;
              *(v7 + 128) = a3;
              return result;
            }

LABEL_473:
            result = a3;
            *(v7 + 120) = a3;
            return result;
          }

          if (v21 != 1)
          {
            return result;
          }

          if (a2 <= 720913)
          {
            if (a2 != 720911)
            {
              if (a2 != 720912)
              {
                v22 = 17;
                goto LABEL_388;
              }

              goto LABEL_398;
            }

            goto LABEL_392;
          }

          if (a2 == 720914)
          {
            goto LABEL_473;
          }

          if (a2 == 720916)
          {
            goto LABEL_474;
          }

          v35 = 21;
LABEL_405:
          if (a2 == (v35 | 0xB0000))
          {
            result = a3;
            *(v7 + 136) = a3;
          }

          return result;
        case 720918:
          v34 = *(v7 + 8) & 0xFFFFFFFD | (2 * (a3 != 0));
          goto LABEL_472;
        case 720919:
          if (!*(v7 + 44))
          {
LABEL_463:
            result = a3;
            *(v7 + 80) = a3;
          }

          return result;
        case 720920:
          *(v7 + 56) = a3;
          return result;
        case 720921:
          v34 = *(v7 + 8) & 0xFFF7FFFF | ((a3 != 0) << 19);
          goto LABEL_472;
        case 720923:
          *(v7 + 144) = a3;
          return result;
        case 720924:
          *(v7 + 148) = a3;
          return result;
        case 720925:
          *(v7 + 152) = a3;
          return result;
        case 720926:
          *(v7 + 52) = (a3 << 13) & 0x30000000 | (((a3 >> 10) & 1) << 30) & 0x70000000 | ((a3 >> 23) << 31) | *(v7 + 52) & 0xFFFFFFF;
          return result;
        default:
          return result;
      }

    case 0xCu:
      if (a2 <= 786437)
      {
        if (a2 > 786434)
        {
          if (a2 == 786435)
          {
            goto LABEL_310;
          }

          if (a2 != 786436)
          {
            *(v7 + 36) = a3 != 0;
            return result;
          }

          goto LABEL_311;
        }

        switch(a2)
        {
          case 786432:
            goto LABEL_140;
          case 786433:
            goto LABEL_356;
          case 786434:
            goto LABEL_218;
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          goto LABEL_317;
        }

        if (a2 != 786442)
        {
          v26 = 786443;
          goto LABEL_315;
        }

        goto LABEL_335;
      }

      if (a2 == 786438)
      {
        *(v7 + 37) = a3;
        return result;
      }

      if (a2 == 786439)
      {
        goto LABEL_327;
      }

      v27 = 786440;
      goto LABEL_325;
    case 0xDu:
      if (a2 > 851970)
      {
        if (a2 == 851971)
        {
          goto LABEL_310;
        }

        if (a2 != 851972)
        {
          v25 = 851973;
          goto LABEL_207;
        }

        goto LABEL_311;
      }

      switch(a2)
      {
        case 851968:
LABEL_113:
          v18 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v18 = 0x80000000;
          }

          *(v7 + 16) = v18;
          return result;
        case 851969:
          goto LABEL_351;
        case 851970:
LABEL_279:
          v20 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v20 = 0x80000000;
          }

          goto LABEL_300;
      }

      return result;
    case 0xEu:
      v23 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          goto LABEL_338;
        }

        v23 = 917507;
      }

      else if (a2 == 917504)
      {
        goto LABEL_339;
      }

      if (a2 != v23)
      {
        return result;
      }

      if (*(v7 + 18) == 1)
      {
        if (a2 != 917507)
        {
          return result;
        }
      }

      else if (a2 != 917505 || *(v7 + 18))
      {
        return result;
      }

LABEL_334:
      *(v7 + 20) = a3;
      return result;
    case 0xFu:
      if (a2 == 983040)
      {
        goto LABEL_113;
      }

      return result;
    case 0x10u:
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          goto LABEL_289;
        }

        if (a2 != 1048577)
        {
          v10 = 1048578;
          goto LABEL_265;
        }

        goto LABEL_269;
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_347;
        }

        v11 = 1048580;
        goto LABEL_274;
      }

      if (a2 == 1048581)
      {
        goto LABEL_301;
      }

      v13 = 1048582;
      goto LABEL_297;
    case 0x11u:
      v14 = 1114113;
      if (a2 > 1114113)
      {
        if (a2 == 1114114)
        {
          result = a3;
          *(v7 + 32) = a3;
        }

        else if (a2 == 1114115)
        {
          *(v7 + 40) = a3;
        }
      }

      else
      {
        if (a2 != 1114112)
        {
          goto LABEL_154;
        }

        result = a3;
        *(v7 + 16) = a3;
      }

      return result;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_351;
      }

      if (a2 == 1179648)
      {
        goto LABEL_140;
      }

      return result;
    case 0x13u:
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_347;
        }

        if (a2 != 1245185)
        {
          v13 = 1245186;
          goto LABEL_297;
        }

        goto LABEL_275;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v10 = 1245188;
          goto LABEL_265;
        }

LABEL_37:
        v12 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v12 = 0x80000000;
        }

        *(v7 + 32) = v12;
        return result;
      }

      if (a2 == 1245189)
      {
LABEL_359:
        v33 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v33 = 0x80000000;
        }

        *(v7 + 40) = v33;
        return result;
      }

      v15 = 1245190;
LABEL_288:
      if (a2 == v15)
      {
        goto LABEL_289;
      }

      return result;
    case 0x14u:
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_347;
        }

        if (a2 != 1310721)
        {
          v13 = 1310722;
          goto LABEL_297;
        }

        goto LABEL_275;
      }

      switch(a2)
      {
        case 1310723:
          goto LABEL_289;
        case 1310724:
          *(v7 + 32) = a3;
          break;
        case 1310725:
          goto LABEL_231;
      }

      return result;
    case 0x15u:
      if (a2 > 1376258)
      {
        switch(a2)
        {
          case 1376259:
LABEL_310:
            *(v7 + 28) = a3;
            break;
          case 1376260:
LABEL_311:
            *(v7 + 32) = a3;
            break;
          case 1376261:
LABEL_231:
            *(v7 + 36) = a3;
            break;
        }

        return result;
      }

      switch(a2)
      {
        case 1376256:
          goto LABEL_347;
        case 1376257:
          goto LABEL_275;
        case 1376258:
          goto LABEL_298;
      }

      return result;
    case 0x17u:
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          goto LABEL_289;
        }

        if (a2 != 1507329)
        {
          v10 = 1507330;
          goto LABEL_265;
        }

        goto LABEL_269;
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_347;
        }

        v11 = 1507332;
        goto LABEL_274;
      }

      if (a2 == 1507333)
      {
        goto LABEL_301;
      }

      v13 = 1507334;
LABEL_297:
      if (a2 == v13)
      {
LABEL_298:
        v20 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v20 = 0x80000000;
        }

LABEL_300:
        *(v7 + 24) = v20;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        goto LABEL_140;
      }

      if (a2 == 1572865)
      {
        *(v7 + 8) = *(v7 + 8) & 0x7FFF | ((a3 != 0) << 15);
      }

      return result;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          goto LABEL_310;
        case 1638401:
          goto LABEL_218;
        case 1638400:
          goto LABEL_347;
      }

      return result;
    case 0x1Au:
      if (a2 == 1703938)
      {
        goto LABEL_247;
      }

      if (a2 == 1703937)
      {
        goto LABEL_282;
      }

      if (a2 != 1703936)
      {
        return result;
      }

      goto LABEL_278;
    case 0x1Bu:
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          goto LABEL_289;
        }

        if (a2 != 1769473)
        {
          v10 = 1769474;
          goto LABEL_265;
        }

        goto LABEL_269;
      }

      if (a2 == 1769477)
      {
        goto LABEL_301;
      }

      if (a2 != 1769476)
      {
        v24 = 1769475;
        goto LABEL_241;
      }

      goto LABEL_275;
    case 0x1Cu:
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
LABEL_289:
          *(v7 + 28) = a3;
        }

        else if (a2 == 1835009)
        {
LABEL_269:
          *(v7 + 32) = a3;
        }

        else
        {
          v10 = 1835010;
LABEL_265:
          if (a2 == v10)
          {
LABEL_266:
            v29 = a3 << 16;
            if (a3 == 0x80000000)
            {
              v29 = 0x80000000;
            }

            *(v7 + 36) = v29;
          }
        }

        return result;
      }

      if (a2 == 1835013)
      {
LABEL_301:
        *(v7 + 34) = a3;
        return result;
      }

      if (a2 == 1835012)
      {
        goto LABEL_275;
      }

      v24 = 1835011;
LABEL_241:
      if (a2 != v24)
      {
        return result;
      }

      goto LABEL_347;
    case 0x1Du:
      v11 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            *(v7 + 24) = a3;
            break;
          case 1900547:
            *(v7 + 26) = a3;
            break;
          case 1900548:
            *(v7 + 32) = a3;
            break;
        }

        return result;
      }

      if (a2 == 1900544)
      {
        goto LABEL_278;
      }

      goto LABEL_274;
    case 0x1Eu:
      v11 = 1966081;
      if (a2 > 1966081)
      {
        if (a2 == 1966082)
        {
LABEL_247:
          *(v7 + 24) = a3;
        }

        else if (a2 == 1966083 && *(v7 + 24) >= 8u)
        {
          *(v7 + 28) = a3;
        }

        return result;
      }

      if (a2 == 1966080)
      {
        goto LABEL_278;
      }

LABEL_274:
      if (a2 == v11)
      {
        goto LABEL_275;
      }

      return result;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        goto LABEL_334;
      }

      if (a2 != 2031616)
      {
        return result;
      }

      goto LABEL_347;
    case 0x20u:
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
LABEL_218:
          *(v7 + 24) = a3;
        }

        else if (a2 == 2097155)
        {
LABEL_215:
          v28 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v28 = 0x80000000;
          }

          *(v7 + 28) = v28;
        }

        return result;
      }

      if (a2 == 0x200000)
      {
        goto LABEL_278;
      }

      if (a2 != 2097153)
      {
        return result;
      }

      goto LABEL_275;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_275;
      }

      if (a2 != 2162688)
      {
        return result;
      }

      goto LABEL_278;
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_275;
      }

      if (a2 != 2228224)
      {
        return result;
      }

      goto LABEL_278;
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          goto LABEL_278;
        case 2293761:
          goto LABEL_275;
        case 2293762:
          goto LABEL_298;
        case 2293763:
          goto LABEL_215;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v45 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v45 = 0x80000000;
          }

          *(v7 + 44) = v45;
          return result;
        case 2293766:
          v48 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v48 = 0x80000000;
          }

          *(v7 + 48) = v48;
          return result;
        case 2293767:
          goto LABEL_266;
        case 2293768:
          goto LABEL_359;
        case 2293769:
          v40 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v40 = 0x80000000;
          }

          *(v7 + 68) = v40;
          return result;
        case 2293770:
          v49 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v49 = 0x80000000;
          }

          *(v7 + 76) = v49;
          return result;
        case 2293771:
          v38 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v38 = 0x80000000;
          }

          *(v7 + 72) = v38;
          return result;
        case 2293772:
          v39 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v39 = 0x80000000;
          }

          *(v7 + 80) = v39;
          return result;
        case 2293773:
          v47 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v47 = 0x80000000;
          }

          *(v7 + 52) = v47;
          return result;
        case 2293774:
          v37 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v37 = 0x80000000;
          }

          *(v7 + 56) = v37;
          return result;
        case 2293775:
          v42 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v42 = 0x80000000;
          }

          *(v7 + 60) = v42;
          return result;
        case 2293776:
          v36 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v36 = 0x80000000;
          }

          *(v7 + 64) = v36;
          return result;
        case 2293777:
          v43 = *(v7 + 84) & 0xFE;
          if (a3)
          {
            ++v43;
          }

          goto LABEL_447;
        case 2293778:
          v43 = *(v7 + 84) & 0xFD | (2 * (a3 != 0));
LABEL_447:
          *(v7 + 84) = v43;
          break;
        case 2293779:
          v51 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v51 = 0x80000000;
          }

          *(v7 + 88) = v51;
          break;
        case 2293780:
          v44 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v44 = 0x80000000;
          }

          *(v7 + 92) = v44;
          break;
        case 2293781:
          v46 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v46 = 0x80000000;
          }

          *(v7 + 96) = v46;
          break;
        case 2293782:
          v50 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v50 = 0x80000000;
          }

          *(v7 + 100) = v50;
          break;
        case 2293783:
          v52 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v52 = 0x80000000;
          }

          *(v7 + 104) = v52;
          break;
        case 2293784:
          v41 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v41 = 0x80000000;
          }

          *(v7 + 108) = v41;
          break;
        default:
          return result;
      }

      return result;
    case 0x24u:
      if (a2 == 2359297)
      {
        goto LABEL_334;
      }

      if (a2 != 2359296)
      {
        return result;
      }

      goto LABEL_347;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          *(v7 + 20) = a3 != 0;
          return result;
        case 2424833:
          goto LABEL_338;
        case 2424832:
          goto LABEL_339;
      }

      return result;
    case 0x26u:
      switch(a2)
      {
        case 2490370:
          *(v7 + 24) = a3;
          break;
        case 2490369:
LABEL_275:
          v30 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v30 = 0x80000000;
          }

          *(v7 + 20) = v30;
          break;
        case 2490368:
LABEL_347:
          v31 = a3 << 16;
          if (a3 == 0x80000000)
          {
            v31 = 0x80000000;
          }

          *(v7 + 16) = v31;
          break;
      }

      return result;
    case 0x27u:
      if ((a2 - 2555905) > 1)
      {
        return result;
      }

      v19 = *(v7 + 16);
      if (v19 != 1)
      {
        if (v19)
        {
          if (a2 != 2555905 || v19 != 2)
          {
            return result;
          }
        }

        else if (a2 != 2555905)
        {
          return result;
        }

LABEL_356:
        *(v7 + 20) = a3;
        return result;
      }

      if (a2 == 2555906)
      {
LABEL_351:
        v32 = a3 << 16;
        if (a3 == 0x80000000)
        {
          v32 = 0x80000000;
        }

        *(v7 + 20) = v32;
      }

      return result;
    case 0x28u:
      switch(a2)
      {
        case 2621440:
          *(v7 + 64) = a3;
          break;
        case 2621441:
          *(v7 + 66) = a3;
          break;
        case 2621442:
          goto LABEL_82;
        case 2621443:
          goto LABEL_272;
        case 2621444:
          goto LABEL_319;
        case 2621445:
          goto LABEL_310;
        case 2621446:
          goto LABEL_311;
        case 2621447:
          goto LABEL_231;
        case 2621448:
          *(v7 + 44) = a3;
          break;
        case 2621449:
LABEL_373:
          *(v7 + 48) = a3;
          break;
        case 2621450:
          *(v7 + 56) = a3;
          break;
        case 2621451:
          *(v7 + 26) = a3;
          break;
        case 2621452:
LABEL_374:
          *(v7 + 40) = a3;
          break;
        default:
          return result;
      }

      return result;
    case 0x29u:
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
LABEL_278:
          *(v7 + 16) = a3;
          return result;
        }

        if (a2 == 2686977)
        {
LABEL_282:
          *(v7 + 20) = a3;
          return result;
        }

        if (a2 != 2686978)
        {
          return result;
        }

        goto LABEL_251;
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          goto LABEL_235;
        }

LABEL_327:
        result = a3;
        *(v7 + 40) = a3;
        return result;
      }

      if (a2 == 2686981)
      {
        goto LABEL_326;
      }

      if (a2 != 2686982)
      {
        return result;
      }

      goto LABEL_317;
    case 0x2Au:
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
LABEL_371:
            *(v7 + 44) = a3;
          }

          else
          {
            v27 = 2752518;
LABEL_325:
            if (a2 == v27)
            {
LABEL_326:
              result = a3;
              *(v7 + 48) = a3;
            }
          }
        }

        else if (a2 == 2752519)
        {
LABEL_317:
          result = a3;
          *(v7 + 56) = a3;
        }

        else if (a2 == 2752520)
        {
LABEL_335:
          result = a3;
          *(v7 + 64) = a3;
        }

        else
        {
          v26 = 2752521;
LABEL_315:
          if (a2 == v26)
          {
LABEL_316:
            result = a3;
            *(v7 + 72) = a3;
          }
        }
      }

      else if (a2 <= 2752513)
      {
        if (a2 == 2752512)
        {
LABEL_339:
          *(v7 + 16) = a3;
        }

        else if (a2 == 2752513)
        {
LABEL_338:
          *(v7 + 18) = a3;
        }
      }

      else if (a2 == 2752514)
      {
LABEL_251:
        result = a3;
        *(v7 + 24) = a3;
      }

      else if (a2 == 2752515)
      {
LABEL_235:
        result = a3;
        *(v7 + 32) = a3;
      }

      else
      {
        *(v7 + 40) = a3 != 0;
      }

      return result;
    case 0x2Bu:
      v14 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
          *(v7 + 32) = a3;
        }

        else
        {
          v25 = 2818051;
LABEL_207:
          if (a2 == v25)
          {
            *(v7 + 36) = a3;
          }
        }
      }

      else if (a2 == 2818048)
      {
LABEL_140:
        *(v7 + 16) = a3;
      }

      else
      {
LABEL_154:
        if (a2 == v14)
        {
          result = a3;
          *(v7 + 24) = a3;
        }
      }

      return result;
    default:
      return result;
  }
}

uint64_t _IOHIDDebugEventAddPerfData(uint64_t result, int a2, uint64_t a3)
{
  if ((gIOHIDDebugConfig & 0x10) != 0)
  {
    v5 = result;
    if (!IOHIDEventConformsTo(result, 1))
    {
      goto LABEL_10;
    }

    Children = IOHIDEventGetChildren(v5);
    if (!Children)
    {
      goto LABEL_10;
    }

    v7 = Children;
    Count = CFArrayGetCount(Children);
    if (Count < 1)
    {
      goto LABEL_10;
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      if (IOHIDEventGetType(ValueAtIndex) == 1 && IOHIDEventGetIntegerValue(ValueAtIndex, 65537) == 38 && IOHIDEventGetIntegerValue(ValueAtIndex, 0x10000) == 65280)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_10;
      }
    }

    if (!ValueAtIndex)
    {
LABEL_10:
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v12 = CFGetAllocator(v5);
      v13 = mach_absolute_time();
      result = IOHIDEventCreateVendorDefinedEvent(v12, v13, 65280, 38, 0, v15, 0x28uLL, 0);
      if (!result)
      {
        return result;
      }

      ValueAtIndex = result;
      IOHIDEventAppendEvent();
      CFRelease(ValueAtIndex);
    }

    v14 = 0;
    *&v15[0] = 0;
    result = IOHIDEventGetVendorDefinedData(ValueAtIndex, v15, &v14);
    if (*&v15[0])
    {
      if ((a2 - 1) <= 3)
      {
        *(*&v15[0] + (8 * (a2 - 1)) + 8) = a3;
      }
    }
  }

  return result;
}

uint64_t __IOHIDServiceQueueWillExecute(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = pthread_mutex_lock((a1 + 8));
  if (result)
  {
    __IOHIDServiceQueueWillExecute_cold_1(&v4, v5);
  }

  ++*a1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOHIDAnalyticsHistogramEventSetIntegerValue()
{
  if (setHistogramIntegerValueFuncPtr)
  {
    return setHistogramIntegerValueFuncPtr();
  }

  return result;
}

uint64_t __IOHIDServiceEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  context = a4;
  v6 = mach_absolute_time();
  if (!a1)
  {
    goto LABEL_81;
  }

  valuePtr[0].tv_sec = 0;
  CFNumberGetValue(*(a1 + 48), kCFNumberSInt64Type, valuePtr);
  tv_sec = valuePtr[0].tv_sec;
  TimeStampOfType = IOHIDEventGetTimeStampOfType(a4, 2);
  Type = IOHIDEventGetType(a4);
  TimeStampType = IOHIDEventGetTimeStampType(a4);
  _IOHIDDebugTrace(8256, 0, TimeStampOfType, tv_sec, Type, TimeStampType);
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v58, valuePtr);
  }

  v11 = *(a1 + 72);
  v12 = *v11 + 1;
  *v11 = v12;
  if (*(a1 + 224))
  {
    goto LABEL_75;
  }

  v13 = *(a1 + 128);
  v56 = *(a1 + 136);
  v14 = *(a1 + 144);
  if (!v14)
  {
    goto LABEL_66;
  }

  v15 = mach_absolute_time();
  _IOHIDDebugEventAddPerfData(a4, 1, v15);
  if (*(a1 + 284))
  {
    IOHIDEventSetIntegerValue(a4, 4, 1);
  }

  if (IOHIDEventGetType(a4) == 1)
  {
    IntegerValue = IOHIDEventGetIntegerValue(a4, 65537);
    v17 = IntegerValue | (IOHIDEventGetIntegerValue(a4, 0x10000) << 16);
  }

  else
  {
    v17 = 0;
  }

  if (IOHIDEventConformsTo(a4, 2) && IOHIDEventGetEvent(a4, 2))
  {
    if (!IOHIDEventGetIntegerValue(a4, 131073))
    {
      v20 = IOHIDEventGetIntegerValue(a4, 0x20000);
      v21 = v20;
      v22 = *(a1 + 156);
      if (v22 != v20)
      {
        v23 = v22 ^ v20;
        v24 = 1;
        while (((v23 >> (v24 - 1)) & 1) == 0)
        {
          if (++v24 == 32)
          {
            goto LABEL_23;
          }
        }

        IOHIDEventSetIntegerValue(a4, 131073, v24);
      }

LABEL_23:
      *(a1 + 156) = v21;
    }
  }

  else if (*(a1 + 280))
  {
    if (IOHIDEventConformsTo(a4, 11))
    {
      ArrayOfEventsWithType = IOHIDEventCreateArrayOfEventsWithType(a4, 11, 0xF0000000);
      if (ArrayOfEventsWithType)
      {
        v19 = ArrayOfEventsWithType;
        _IOHIDCFArrayApplyBlock(ArrayOfEventsWithType, &__block_literal_global_283);
        CFRelease(v19);
      }
    }
  }

  if (IOHIDEventConformsTo(a4, 3))
  {
    v25 = IOHIDEventGetIntegerValue(a4, 196608);
    LODWORD(valuePtr[0].tv_sec) = IOHIDEventGetIntegerValue(a4, 196609);
    BYTE4(valuePtr[0].tv_sec) = v25;
    BYTE5(valuePtr[0].tv_sec) = BYTE1(v25);
    BYTE6(valuePtr[0].tv_sec) = BYTE2(v25);
    HIBYTE(valuePtr[0].tv_sec) = HIBYTE(v25);
    v26 = CFGetAllocator(a1);
    v27 = CFNumberCreate(v26, kCFNumberSInt64Type, valuePtr);
    if (v27)
    {
      v28 = v27;
      v29 = IOHIDEventGetIntegerValue(a4, 196610);
      v30 = *(a1 + 264);
      if (v29)
      {
        CFSetAddValue(v30, v28);
      }

      else
      {
        CFSetRemoveValue(v30, v28);
      }

      CFRelease(v28);
    }
  }

  if (IOHIDEventConformsTo(a4, 35))
  {
    *(a1 + 272) |= 0x800000000uLL;
  }

  if (IOHIDEventConformsTo(a4, 17))
  {
    *(a1 + 272) |= 0x20000uLL;
  }

  if (IOHIDEventConformsTo(a4, 2))
  {
    *(a1 + 272) |= 4uLL;
  }

  if (IOHIDEventConformsTo(a4, 6))
  {
    if (IOHIDEventGetScrollMomentum(a4) == 2)
    {
      *(a1 + 288) = 1;
    }

    if (IOHIDEventGetScrollMomentum(a4) == 4)
    {
      *(a1 + 288) = 0;
    }
  }

  if (IOHIDEventConformsTo(a4, 11))
  {
    v31 = IOHIDEventGetIntegerValue(a4, 720903);
    if ((v31 & 0x100) != 0)
    {
      *(a1 + 292) = 1;
    }

    if ((v31 & 0x88) != 0)
    {
      *(a1 + 292) = 0;
    }
  }

  v57 = v17;
  if (!IOHIDEventGetSenderID(a4))
  {
    IOHIDEventSetSenderID(a4, tv_sec);
  }

  v32 = IOHIDEventGetTimeStampOfType(a4, 2);
  v33 = IOHIDEventGetTimeStampType(a4);
  *(a1 + 328) = IOHIDEventGetTimeStamp(a4);
  memset(valuePtr, 0, 32);
  LODWORD(valuePtr[0].tv_sec) = IOHIDEventGetType(a4);
  gettimeofday(&valuePtr[0].tv_usec, 0);
  v34 = valuePtr[0].tv_sec;
  if (LODWORD(valuePtr[0].tv_sec) == 1)
  {
    v40 = IOHIDEventGetIntegerValue(a4, 0x10000);
    v41 = IOHIDEventGetIntegerValue(a4, 65537);
    v42 = (v40 << 16) & 0xFFFFFFFFFFFF0000 | v41 | (IOHIDEventGetIntegerValue(a4, 65539) << 32);
  }

  else
  {
    if (LODWORD(valuePtr[0].tv_sec) != 3)
    {
      goto LABEL_60;
    }

    v54 = v14;
    v55 = v6;
    v35 = IOHIDEventGetIntegerValue(a4, 196608);
    v53 = IOHIDEventGetIntegerValue(a4, 196610);
    v36 = IOHIDEventGetIntegerValue(a4, 196613);
    v37 = IOHIDEventGetIntegerValue(a4, 196612);
    Phase = IOHIDEventGetPhase(a4);
    if (v35 == 7)
    {
      v39 = 0;
    }

    else
    {
      v43 = IOHIDEventGetIntegerValue(a4, 196609);
      v44 = v43 == 46 || v35 == 12;
      v39 = v43 << 26;
      if (!v44)
      {
        v39 = 0;
      }
    }

    v42 = v53 | (v35 << 42) | (2 * v36) | (4 * v37) | (Phase << 10) | v39;
    v14 = v54;
    v6 = v55;
  }

  *&valuePtr[1].tv_usec = v42;
LABEL_60:
  v45 = *(a1 + 408);
  if (v45 || (v46 = CFGetAllocator(a1), v45 = _IOHIDSimpleQueueCreate(v46, 32, 50), (*(a1 + 408) = v45) != 0))
  {
    _IOHIDSimpleQueueEnqueue(v45, valuePtr, 1);
    v34 = valuePtr[0].tv_sec;
  }

  ++*(*(a1 + 416) + 8 * v34);
  ++*(a1 + 228);
  *(a1 + 232) |= 1 << IOHIDEventGetType(a4);
  _IOHIDDebugTrace(8259, 1, v32, a1, v33, v57);
  v47 = *(a1 + 248);
  if (v47)
  {
    v62.length = CFArrayGetCount(*(a1 + 248));
    v62.location = 0;
    CFArrayApplyFunction(v47, v62, __FilterFunctionFilterEvent, &context);
  }

  _IOHIDDebugTrace(8259, 2, v32, a1, v33, v57);
  v12 = **(a1 + 72);
LABEL_66:
  if (v12)
  {
    v48 = v12;
    do
    {
      v49 = *(a1 + 72);
      if (*v49)
      {
        --*v49;
        if (pthread_mutex_unlock((v49 + 8)))
        {
          __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v58, valuePtr);
        }
      }

      --v48;
    }

    while (v48);
  }

  if (v14)
  {
    v14(v13, v56, a1, context, 0);
  }

  v11 = *(a1 + 72);
  if (!v12)
  {
    v12 = *v11;
LABEL_75:
    if (!v12)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  do
  {
    if (pthread_mutex_lock((v11 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v58, valuePtr);
    }

    v11 = *(a1 + 72);
    v50 = *v11 + 1;
    *v11 = v50;
    --v12;
  }

  while (v12);
  v12 = v50;
  if (v50)
  {
LABEL_80:
    *v11 = v12 - 1;
    if (pthread_mutex_unlock((v11 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v58, valuePtr);
    }
  }

LABEL_81:
  result = __IOHIDServiceEventCallback_cold_5(a1, v6);
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IOHIDServiceDispatchEvent(uint64_t result, const __CFArray *a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      return __IOHIDServiceEventCallback(result, a2, a3, a2);
    }
  }

  return result;
}

uint64_t _IOHIDSimpleQueueEnqueue(const __CFData *a1, const void *a2, int a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  v6 = BytePtr;
  v7 = *(BytePtr + 3);
  v8 = (v7 + 1) % *BytePtr;
  if (v8 != *(BytePtr + 2))
  {
LABEL_7:
    memcpy(&BytePtr[*(BytePtr + 1) * v7 + 32], a2, *(BytePtr + 1));
    result = 0;
    *(v6 + 3) = v8;
    return result;
  }

  if (a3)
  {
    if (v8 + 1 == *BytePtr)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
    }

    *(BytePtr + 2) = v9;
    goto LABEL_7;
  }

  return 3758097115;
}

id IOHIDSessionFilterFilterEventToConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SenderID = a3;
  v24 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 56);
  v9 = a4;
  if (v8)
  {
    v10 = *(a1 + 120);
    v9 = a4;
    if (v10)
    {
      v9 = [v8 v10];
    }
  }

  if (!v9 && *(a1 + 48) == 1)
  {
    v11 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      Type = IOHIDEventGetType(a4);
      if (SenderID)
      {
        SenderID = _IOHIDServiceGetSenderID(SenderID);
      }

      UUID = IOHIDEventSystemConnectionGetUUID(a2);
      v16 = *(a1 + 32);
      v17[0] = 67109890;
      v17[1] = Type;
      v18 = 2048;
      v19 = SenderID;
      v20 = 2112;
      v21 = UUID;
      v22 = 2112;
      v23 = v16;
      _os_log_debug_impl(&dword_197195000, v11, OS_LOG_TYPE_DEBUG, "EventToConnection filtered type:%d service:0x%llx connection:%@ session filter:%@", v17, 0x26u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

CFTypeRef _IOHIDEventCopyAttachment(uint64_t a1, CFTypeRef cf1)
{
  v2 = 0;
  if (!a1 || !cf1)
  {
    return v2;
  }

  if (!CFEqual(cf1, @"Sender"))
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      Value = CFDictionaryGetValue(v7, cf1);
      v2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      return v2;
    }

    return 0;
  }

  v5 = *(a1 + 64);
  if (!v5)
  {
    return 0;
  }

  return CFRetain(v5);
}

void __IOHIDSessionServiceCallback(uint64_t a1, int a2, const void *a3, void *a4)
{
  if (a1 && a4)
  {
    _IOHIDEventSetAttachment(a4, @"Sender", a3);

    __IOHIDSessionDispatchEvent(a1, a4);
  }
}

BOOL _IOHIDEventSetAttachment(void *a1, CFTypeRef cf1, const void *a3)
{
  result = 0;
  if (a1 && cf1)
  {
    if (CFEqual(cf1, @"Sender"))
    {
      v7 = a1[8];
      if (v7)
      {
        CFRelease(v7);
      }

      if (a3)
      {
        v8 = CFRetain(a3);
      }

      else
      {
        v8 = 0;
      }

      a1[8] = v8;
      return 1;
    }

    Mutable = a1[7];
    if (Mutable || (v10 = CFGetAllocator(a1), Mutable = CFDictionaryCreateMutable(v10, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (a1[7] = Mutable) != 0))
    {
      CFDictionarySetValue(Mutable, cf1, a3);
      return 1;
    }

    v11 = _IOHIDLog();
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _IOHIDEventSetAttachment_cold_1(v11);
      return 0;
    }
  }

  return result;
}

void __IOHIDSessionDispatchEvent(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  context = 0;
  v27 = 0;
  v28 = 0;
  if (a1)
  {
    TimeStampOfType = IOHIDEventGetTimeStampOfType(a2, 2);
    TimeStampType = IOHIDEventGetTimeStampType(a2);
    _IOHIDDebugTrace(8273, 0, TimeStampOfType, TimeStampType, 0, 0);
    v6 = (a1 + 32);
    if (pthread_mutex_lock((*(a1 + 32) + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(&v25, v29);
    }

    ++**(a1 + 32);
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = _IOHIDEventCopyAttachment(a2, @"Sender");
    context = a1;
    v27 = v10;
    v28 = CFRetain(a2);
    v11 = IOHIDEventGetTimeStampOfType(a2, 2);
    v12 = IOHIDEventGetTimeStampType(a2);
    _IOHIDDebugTrace(8274, 1, v11, v12, 0, 0);
    v13 = *(a1 + 144);
    v31.length = CFArrayGetCount(v13);
    v31.location = 0;
    CFArrayApplyFunction(v13, v31, __FilterFunctionFilterEvent_0, &context);
    v14 = IOHIDEventGetTimeStampOfType(a2, 2);
    v15 = IOHIDEventGetTimeStampType(a2);
    _IOHIDDebugTrace(8274, 2, v14, v15, 0, 0);
    v16 = v28;
    if (v10 && v28)
    {
      if (_IOHIDServiceIsInactive(v10) && (IOHIDEventGetEventFlags(v28) & 0x800000) == 0)
      {
        v28 = 0;
LABEL_8:
        __IOHIDSessionCreate_block_invoke_cold_3((a1 + 32));
        goto LABEL_25;
      }

      v16 = v28;
    }

    if (!v16)
    {
      goto LABEL_8;
    }

    if (IOHIDEventGetPolicy(a2, 3) == 3)
    {
      *(a1 + 168) = mach_continuous_time();
      gettimeofday((a1 + 176), 0);
      CFSetApplyFunction(*(a1 + 192), __ActivityFunctionApplier, a2);
    }

    v17 = *v6;
    v18 = **v6;
    if (v8)
    {
      if (v18)
      {
        v19 = **v6;
        do
        {
          v20 = *v6;
          v21 = **v6;
          if (v21)
          {
            *v20 = v21 - 1;
            if (pthread_mutex_unlock((v20 + 2)))
            {
              __IOHIDSessionCreate_block_invoke_cold_2(&v25, v29);
            }
          }

          --v19;
        }

        while (v19);
      }

      v8(v7, v9, v27, v28);
      v22 = *v6;
      if (v18)
      {
        do
        {
          if (pthread_mutex_lock((v22 + 2)))
          {
            __IOHIDSessionCreate_block_invoke_cold_1(&v25, v29);
          }

          v22 = *v6;
          v23 = **v6 + 1;
          **v6 = v23;
          --v18;
        }

        while (v18);
      }

      else
      {
        v23 = *v22;
      }

      if (v23)
      {
        *v22 = v23 - 1;
        if (pthread_mutex_unlock((v22 + 2)))
        {
          __IOHIDSessionCreate_block_invoke_cold_2(&v25, v29);
        }
      }
    }

    else if (v18)
    {
      *v17 = v18 - 1;
      if (pthread_mutex_unlock((v17 + 2)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(&v25, v29);
      }
    }
  }

LABEL_25:
  __IOHIDSessionDispatchEvent_cold_7(&context);
  v24 = *MEMORY[0x1E69E9840];
}

id IOHIDSessionFilterFilterEvent(uint64_t a1, uint64_t a2, id a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6 && (v7 = *(*v6 + 32)) != 0 || (v8 = *(a1 + 24)) != 0 && (v7 = *(*v8 + 32)) != 0)
  {
    v9 = v7();
    goto LABEL_6;
  }

  v14 = *(a1 + 56);
  v9 = a3;
  if (!v14 || (v9 = [v14 *(a1 + 80)], v9 == a3))
  {
LABEL_6:
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  CFRelease(a3);
  if (v9)
  {
    CFRetain(v9);
    goto LABEL_11;
  }

LABEL_7:
  if (*(a1 + 48) == 1)
  {
    v10 = _IOHIDEventDebugInfo(a3);
    v11 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      Type = IOHIDEventGetType(a3);
      if (a2)
      {
        SenderID = _IOHIDServiceGetSenderID(a2);
      }

      else
      {
        SenderID = 0;
      }

      v17 = *(a1 + 32);
      v18[0] = 67109890;
      v18[1] = Type;
      v19 = 2048;
      v20 = SenderID;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v17;
      _os_log_debug_impl(&dword_197195000, v11, OS_LOG_TYPE_DEBUG, "FilterEvent filtered type:%d service:0x%llx eventInfo:(%@) session filter:%@", v18, 0x26u);
    }

    CFRelease(v10);
  }

  v9 = 0;
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

id IOHIDServiceFilterFilterEvent(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(*v4 + 40)) != 0 || (v6 = *(a1 + 24)) != 0 && (v5 = *(*v6 + 40)) != 0)
  {
    result = v5();
    if (result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *(a1 + 96);
    if (v8)
    {
      result = [v8 *(a1 + 120)];
      if (result)
      {
        goto LABEL_12;
      }
    }
  }

  v9 = _IOHIDEventDebugInfo(a2);
  v10 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    Type = IOHIDEventGetType(a2);
    SenderID = _IOHIDServiceGetSenderID(*(a1 + 48));
    v14 = *(a1 + 88);
    v15[0] = 67109890;
    v15[1] = Type;
    v16 = 2048;
    v17 = SenderID;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v14;
    _os_log_debug_impl(&dword_197195000, v10, OS_LOG_TYPE_DEBUG, "Event filtered type:%d sender:0x%llx eventInfo:(%@) service filter:%@", v15, 0x26u);
  }

  CFRelease(v9);
  result = 0;
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

id __FilterFunctionFilterEvent(id result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    result = IOHIDServiceFilterFilterEvent(result, v3);
    *a2 = result;
  }

  return result;
}

id __FilterFunctionFilterEvent_0(id result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    result = IOHIDSessionFilterFilterEvent(result, *(a2 + 8), v2);
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t IOHIDEventGetPolicy(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 96) + 10) & 0x80) != 0)
  {
    return 0;
  }

  if (a2 != 3)
  {
    v4 = _IOHIDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      IOHIDEventGetPolicy_cold_1(a2, v4);
    }

    return 0;
  }

  if ((*(a1 + 24) & 0x819CF0DFCLL) != 0)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

const __CFArray *__IOHIDServiceFilterEventForClient(uint64_t a1, const __CFArray *a2, const void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = a2;
  if (a1)
  {
    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v22, v27);
    }

    ++**(a1 + 72);
    v6 = *(a1 + 256);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ____IOHIDServiceFilterEventForClient_block_invoke;
    v21[3] = &unk_1E74A8BC8;
    v21[4] = &v23;
    v21[5] = a2;
    v21[6] = a3;
    _IOHIDCFArrayApplyBlock(v6, v21);
    v7 = *(a1 + 72);
    if (*v7)
    {
      --*v7;
      if (pthread_mutex_unlock((v7 + 8)))
      {
        __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v22, v27);
      }
    }

    v8 = v24[3];
    if (v8 && (*(a1 + 296) & 4) != 0 && *(a1 + 220))
    {
      v9 = _IOHIDServiceCopyConnectionCache(a1, a3);
      if (v9 && _IOHIDServiceContainsReportIntervalForClient(a1, a3, v9))
      {
        Type = IOHIDEventGetType(a2);
        if (Type == 10 || Type == 13 && IOHIDEventGetIntegerValue(a2, 851971) == 1)
        {
LABEL_30:
          v12 = 1;
          goto LABEL_31;
        }

        ReportIntervalForClient = _IOHIDServiceGetReportIntervalForClient(a1, a3, v9);
        v12 = 0;
        if (ReportIntervalForClient)
        {
          v13 = *(a1 + 160);
          if (v13)
          {
            if (*(a1 + 296))
            {
              v14 = ReportIntervalForClient;
              EventDeadlineForClient = _IOHIDServiceGetEventDeadlineForClient(a1, a3, v9);
              TimeStamp = IOHIDEventGetTimeStamp(a2);
              if (EventDeadlineForClient <= TimeStamp)
              {
                v17 = *&__absoluteTime_to_nanoseconds_factor;
              }

              else if ((EventDeadlineForClient - TimeStamp) < 0 || (v17 = *&__absoluteTime_to_nanoseconds_factor, vcvtd_n_f64_u64(1000 * v13, 1uLL) <= ((EventDeadlineForClient - TimeStamp) / *&__absoluteTime_to_nanoseconds_factor)))
              {
                v12 = 0;
                goto LABEL_31;
              }

              _IOHIDServiceSetEventDeadlineForClient(a1, a3, TimeStamp + (v17 * (1000 * v14)), v14, v9);
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
        v20 = CFGetTypeID(a3);
        v12 = v20 != IOHIDEventSystemConnectionGetTypeID() || IOHIDEventSystemConnectionGetType(a3) < 2;
        if (!v9)
        {
          if (!v12)
          {
LABEL_32:
            v8 = 0;
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }

LABEL_31:
      CFRelease(v9);
      if (!v12)
      {
        goto LABEL_32;
      }

LABEL_27:
      v8 = v24[3];
    }
  }

  else
  {
    v8 = a2;
  }

LABEL_21:
  _Block_object_dispose(&v23, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

CFTypeRef _IOHIDServiceCopyConnections(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 > 2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v9, v10);
  }

  v4 = *(a1 + 72);
  v5 = *v4 + 1;
  *v4 = v5;
  if (*(*(a1 + 368) + 8 * a2))
  {
    v6 = CFRetain(*(*(a1 + 368) + 8 * a2));
    v4 = *(a1 + 72);
    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  *v4 = v5 - 1;
  if (pthread_mutex_unlock((v4 + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v9, v10);
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _IOHIDEventSystemConnectionDispatchEvent(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    return 3758097084;
  }

  if (*(a1 + 256) && (IOHIDEventConformsTo(a2, 17) || IOHIDEventConformsTo(a2, 11) || IOHIDEventConformsTo(a2, 3) && (Event = IOHIDEventGetEvent(a2, 3)) != 0 && IOHIDEventGetIntegerValue(Event, 196608) == 7))
  {
    result = 0;
    ++*(a1 + 296);
  }

  else
  {

    return IOHIDEventSystemConnectionDispatchEvent(a1, a2);
  }

  return result;
}

void __IOHIDSessionDispatchEvent_cold_7(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

CFTypeRef IOHIDServiceConnectionCacheCopyValueForKey(void *a1, const void *a2)
{
  if (!CFEqual(@"ReportInterval", a2))
  {
    if (CFEqual(@"BatchInterval", a2))
    {
      v4 = a1[4];
      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = a1[5];
      if (v6)
      {
        Value = CFDictionaryGetValue(v6, a2);
        v8 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        return v8;
      }
    }

    return 0;
  }

  v4 = a1[3];
  if (!v4)
  {
    return 0;
  }

LABEL_6:

  return CFRetain(v4);
}

void OUTLINED_FUNCTION_18_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_error_impl(a1, v15, OS_LOG_TYPE_ERROR, a4, &buf, 8u);
}

void __EnqueueEventFunction(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v4 = *a2;
    v12 = *(a2 + 8);
    Filters = *(*(a2 + 16) + 128);
    if (Filters)
    {
      Filters = IOHIDSessionGetFilters(Filters);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ____EnqueueEventFunction_block_invoke;
    v8[3] = &unk_1E74A8588;
    v8[4] = &v9;
    v8[5] = a1;
    v8[6] = v4;
    _IOHIDCFArrayApplyBlock(Filters, v8);
    if (v10[3])
    {
      v6 = __IOHIDServiceFilterEventForClient(*a2, *(a2 + 8), a1);
      if (v6)
      {
        v7 = v6;
        _IOHIDEventSystemConnectionDispatchEvent(a1, v6);
        if (v7 != v10[3])
        {
          CFRelease(v7);
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
  }

  _Block_object_dispose(&v9, 8);
}

id IOHIDServiceFilterFilterEventForClient(uint64_t *a1, uint64_t a2, const void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a1[12];
  v7 = a2;
  if (v6)
  {
    v8 = a1[24];
    v7 = a2;
    if (v8)
    {
      v7 = [v6 v8];
    }
  }

  if (!v7)
  {
    v9 = _IOHIDLogCategory(0);
    if (os_log_is_debug_enabled(v9))
    {
      v10 = _IOHIDEventDebugInfo(a2);
      v11 = _IOHIDLogCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        Type = IOHIDEventGetType(a2);
        SenderID = _IOHIDServiceGetSenderID(a1[6]);
        v16 = a1[11];
        if (a3 && (v17 = CFGetTypeID(a3), v17 == IOHIDEventSystemConnectionGetTypeID()))
        {
          UUID = IOHIDEventSystemConnectionGetUUID(a3);
        }

        else
        {
          UUID = 0;
        }

        v19[0] = 67110146;
        v19[1] = Type;
        v20 = 2048;
        v21 = SenderID;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = UUID;
        _os_log_debug_impl(&dword_197195000, v11, OS_LOG_TYPE_DEBUG, "EventForClient filtered type:%d sender:0x%llx eventInfo:(%@) service filter:%@ for client:%@", v19, 0x30u);
      }

      CFRelease(v10);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, v8, OS_SIGNPOST_INTERVAL_BEGIN, v7, a5, a6, a7, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_1_4(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint32_t *a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, 0, 0, a7, a8, a9, a10);
}

double OUTLINED_FUNCTION_1_5(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

double OUTLINED_FUNCTION_1_9(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void OUTLINED_FUNCTION_1_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

void OUTLINED_FUNCTION_1_12(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_error_impl(a1, v15, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

void OUTLINED_FUNCTION_1_13(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_16(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_1_17()
{

  bzero(&STACK[0x408], 0x400uLL);
}

void __IOHIDEventSystemEventCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  TimeStampOfType = IOHIDEventGetTimeStampOfType(a4, 2);
  if (a3 && (v8 = CFGetTypeID(a3), v8 == IOHIDServiceGetTypeID()))
  {
    Copy = _IOHIDServiceCopyConnections(a3, 0);
    v10 = _IOHIDServiceCopyConnections(a3, 2);
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v11 = CFGetAllocator(a1);
    Copy = CFSetCreateCopy(v11, *(a1 + 56));
    v12 = CFGetAllocator(a1);
    v10 = CFSetCreateCopy(v12, *(a1 + 64));
    os_unfair_recursive_lock_unlock();
  }

  v13 = mach_absolute_time();
  _IOHIDDebugEventAddPerfData(a4, 2, v13);
  TimeStampType = IOHIDEventGetTimeStampType(a4);
  OUTLINED_FUNCTION_3_3(8211, 1, v15, TimeStampType);
  if (Copy)
  {
    OUTLINED_FUNCTION_1_7();
    CFSetApplyFunction(Copy, v16, v17);
  }

  v18 = IOHIDEventGetTimeStampType(a4);
  OUTLINED_FUNCTION_3_3(8209, 0, v19, v18);
  if (!a3)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2000000000;
    v44 = a4;
    goto LABEL_14;
  }

  v20 = a4;
  if (!_IOHIDServiceHidden(a3))
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2000000000;
    v44 = a4;
    v21 = CFGetTypeID(a3);
    if (v21 == IOHIDServiceGetTypeID())
    {
      v22 = _IOHIDServiceCopyConnections(a3, 1);
      if (!v22)
      {
LABEL_18:
        cf = 0;
        v38 = 1;
        goto LABEL_19;
      }

LABEL_17:
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 0x40000000;
      v40[2] = ____IOHIDEventSystemFilterEvent_block_invoke;
      v40[3] = &unk_1E74A85B0;
      v40[4] = &v41;
      v40[5] = a3;
      cf = v22;
      _IOHIDCFArrayApplyBlock(v22, v40);
      v38 = 0;
LABEL_19:
      if (v42[3])
      {
        os_unfair_recursive_lock_lock_with_options();
        v26 = *(a1 + 104);
        v25 = *(a1 + 112);
        v27 = *(a1 + 120);
        os_unfair_recursive_lock_unlock();
        if (v25)
        {
          v28 = __IOHIDServiceFilterEventForClient(a3, v42[3], *MEMORY[0x1E695E738]);
          if (v28)
          {
            v29 = v28;
            if (IOHIDEventNeedsUngroupForLegacy(v28) && (*(a1 + 448) & 1) == 0)
            {
              Children = IOHIDEventGetChildren(v29);
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 0x40000000;
              v39[2] = ____IOHIDEventSystemFilterEvent_block_invoke_2;
              v39[3] = &__block_descriptor_tmp_59;
              v39[4] = v25;
              v39[5] = v26;
              v39[6] = v27;
              v39[7] = a3;
              _IOHIDCFArrayApplyBlock(Children, v39);
            }

            else
            {
              v25(v26, v27, a3, v29);
            }

            if (v42[3] != v29)
            {
              CFRelease(v29);
            }
          }
        }
      }

      if ((v38 & 1) == 0)
      {
        CFRelease(cf);
      }

      v20 = v42[3];
      _Block_object_dispose(&v41, 8);
      goto LABEL_31;
    }

LABEL_14:
    v23 = *(a1 + 80);
    if (!v23)
    {
      goto LABEL_18;
    }

    if (!CFArrayGetCount(v23))
    {
      goto LABEL_18;
    }

    os_unfair_recursive_lock_lock_with_options();
    v24 = CFGetAllocator(a1);
    v22 = CFArrayCreateCopy(v24, *(a1 + 80));
    os_unfair_recursive_lock_unlock();
    if (!v22)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_31:
  v31 = IOHIDEventGetTimeStampType(a4);
  _IOHIDDebugTrace(8210, 0, TimeStampOfType, v20 == 0, v31, 0);
  v32 = mach_absolute_time();
  _IOHIDDebugEventAddPerfData(a4, 3, v32);
  if (v20 && v10)
  {
    OUTLINED_FUNCTION_1_7();
    CFSetApplyFunction(v10, v33, v34);
  }

  v35 = IOHIDEventGetTimeStampType(a4);
  OUTLINED_FUNCTION_3_3(8211, 2, v36, v35);
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v20)
  {
    if (v20 != a4)
    {
      CFRelease(v20);
    }
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return os_unfair_recursive_lock_lock_with_options();
}

void OUTLINED_FUNCTION_3_3(__int16 a1, int a2, uint64_t a3, uint64_t a4)
{

  _IOHIDDebugTrace(a1, a2, v4, a4, 0, 0);
}

void OUTLINED_FUNCTION_3_5(__int16 a1)
{

  _IOHIDDebugTrace(a1, 0, v1, 0, 0, 0);
}

void OUTLINED_FUNCTION_3_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

CFTypeID OUTLINED_FUNCTION_3_8()
{

  return CFGetTypeID(v0);
}

void _IOHIDCFArrayApplyBlock(const __CFArray *a1, void *a2)
{
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  CFArrayApplyFunction(a1, v4, __IOHIDCFArrayFunctionApplier, a2);
}

const void *_IOHIDServiceCopyConnectionCache(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v9, v10);
  }

  ++**(a1 + 72);
  Value = CFDictionaryGetValue(*(a1 + 240), a2);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v6 = *(a1 + 72);
  if (*v6)
  {
    --*v6;
    if (pthread_mutex_unlock((v6 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v9, v10);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _IOHIDEventSystemConnectionCopyQueue(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRetain(*(a1 + 24));
  }

  os_unfair_recursive_lock_unlock();
  return v2;
}

void *__hid_dispatch_queue_did_execute(NSObject *a1)
{
  result = dispatch_queue_get_specific(a1, &sHIDExecutionCallbacksKey);
  if (result)
  {
    v3 = result[1];
    if (v3)
    {
      v4 = result[2];

      return v3(v4, a1);
    }
  }

  return result;
}

uint64_t IOCFSerializeBinaryCFArraySetFunction(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1] + 1;
  a2[1] = v5;
  *(v4 + 16) = v5 == a2[2];
  result = DoCFSerializeBinary(v4, a1, 0);
  *(a2 + 24) &= result;
  return result;
}

BOOL IsNotificationEvent(const __CFArray *a1)
{
  if (IOHIDEventGetType(a1) != 1)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue(a1, 0x10000);
  v3 = IOHIDEventGetIntegerValue(a1, 65537);
  return IntegerValue == 65308 && v3 == 48;
}

uint64_t IOHIDEventQueueEnqueue(uint64_t a1, uint64_t a2)
{
  v4 = 3758097101;
  TimeStamp = IOHIDEventGetTimeStamp(a2);
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 148) && !*(a1 + 152))
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = *(v6 + 4);
      v8 = *(v6 + 8);
      if (v7 != *(a1 + 32))
      {
        v9 = *(v6 + 8);
        __IOHIDEventQueueUpdateUsageAnalytics(a1);
      }

      *(a1 + 32) = v7;
      *(a1 + 36) = v8;
    }

    if ((IOHIDEventGetEventFlags(a2) & 0x2000) != 0)
    {
      *(a1 + 156) = 1;
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if ((IOHIDEventGetEventFlags(a2) & 0x1000) != 0)
    {
      v10 |= 1u;
      *(a1 + 156) = 0;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 56);
    DataLengthInternal = IOHIDEventGetDataLengthInternal(a2);
    CallbackOptions = _IODataQueueEnqueueWithReadCallbackOptions(v11, v12, (a1 + 60), ((DataLengthInternal - 1) & 0xFFFFFFFC) + 4, IOHIDEventReadBytesInternal, a2, v10);
    if (CallbackOptions)
    {
      v4 = CallbackOptions;
      if (CallbackOptions != 268435460)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if ((v10 & 2) != 0)
    {
LABEL_19:
      v4 = 0;
      goto LABEL_20;
    }

    if (*(a1 + 156))
    {
      _IODataQueueSendDataAvailableNotification(*(a1 + 16), (a1 + 60));
      *(a1 + 156) = 0;
    }

    v15 = mach_absolute_time();
    v4 = 0;
    v16 = *(a1 + 136) + 1;
    *(a1 + 128) = v15;
    *(a1 + 136) = v16;
    *(a1 + 120) = TimeStamp;
  }

LABEL_20:
  os_unfair_recursive_lock_unlock();
  return v4;
}

uint64_t __IOHIDEventQueueUpdateUsageAnalytics(uint64_t a1)
{
  result = *(a1 + 160);
  if (result)
  {
    v3 = *(a1 + 56);
    return IOHIDAnalyticsHistogramEventSetIntegerValue();
  }

  return result;
}

uint64_t __IODataQueueEnqueue(_DWORD *a1, uint64_t a2, mach_msg_header_t *a3, size_t __n, void *__src, void (*a6)(uint64_t, char *, size_t), uint64_t a7, char a8)
{
  v9 = __n;
  if (!a2)
  {
    LODWORD(a2) = *a1;
  }

  v12 = 3758097128;
  v13 = a1[2];
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (__n > 0xFFFFFFFB)
  {
    return v12;
  }

  v15 = a2 - v13;
  if (a2 < v13 || a2 < explicit)
  {
    return 3758097127;
  }

  v17 = __n + 4;
  if (explicit > v13)
  {
    if (explicit - v13 > v17)
    {
      v18 = (a1 + v13 + 12);
      if (__src)
      {
        memcpy(a1 + v13 + 16, __src, __n);
      }

      else if (a6)
      {
        a6(a7, a1 + v13 + 16, __n);
      }

      *v18 = v9;
      v17 += v13;
      goto LABEL_31;
    }

LABEL_18:
    _IODataQueueSendDataAvailableNotification(a1, a3);
    return v12;
  }

  if (__CFADD__(v13, v17) || v13 + v17 > a2)
  {
    if (explicit <= v17)
    {
      goto LABEL_18;
    }

    v19 = a1 + 3;
    if (__src)
    {
      memcpy(a1 + 4, __src, __n);
    }

    else if (a6)
    {
      a6(a7, a1 + 16, __n);
    }

    *v19 = v9;
    if (v15 >= 4)
    {
      *(v19 + v13) = v9;
    }
  }

  else
  {
    v20 = (a1 + v13 + 12);
    if (__src)
    {
      memcpy(a1 + v13 + 16, __src, __n);
    }

    else if (a6)
    {
      a6(a7, a1 + v13 + 16, __n);
    }

    *v20 = v9;
    v17 += v13;
  }

LABEL_31:
  atomic_store(v17, a1 + 2);
  v21 = v13;
  if (explicit != v13)
  {
    __dmb(0xBu);
    v21 = a1[1];
  }

  v23 = (a8 & 2) == 0 && v13 == v21;
  if ((a8 & 1) == 0 && !v23)
  {
    return 0;
  }

  return _IODataQueueSendDataAvailableNotification(a1, a3);
}

uint64_t __IOHIDEventGetLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = **(a1 + 96);
  if ((a2 & 1) == 0)
  {
    v4 += *(a1 + 88) + 28;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    v7 = Count;
    if (Count)
    {
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8);
        v4 += __IOHIDEventGetLength(ValueAtIndex, a2);
        ++v8;
      }

      while (v7 != v8);
    }
  }

  return v4;
}

uint64_t _IODataQueueSendDataAvailableNotification(unsigned int *a1, mach_msg_header_t *a2)
{
  if (!a2)
  {
    v2 = a1 + *a1;
    if (!*(v2 + 6))
    {
      return 0;
    }

    a2 = (v2 + 16);
  }

  send_size = *a2;
  v3 = mach_msg(&send_size, 17, send_size.msgh_size, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if (send_size.msgh_local_port - 1 <= 0xFFFFFFFD && ((send_size.msgh_bits >> 8) & 0x1F) - 17 <= 1)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], send_size.msgh_local_port);
    }

    mach_msg_destroy(&send_size);
  }

  return v3;
}

uint64_t _IOHIDServiceGetEventDeadlineForClient(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v11, v12);
  }

  ++**(a1 + 72);
  if (a3)
  {
    ReportDeadline = IOHIDServiceConnectionCacheGetReportDeadline(a3);
    v7 = a3;
  }

  else
  {
    v7 = _IOHIDServiceCopyConnectionCache(a1, a2);
    ReportDeadline = 0;
  }

  v8 = *(a1 + 72);
  if (*v8)
  {
    --*v8;
    if (pthread_mutex_unlock((v8 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v11, v12);
    }
  }

  if (v7 != a3 && v7)
  {
    CFRelease(v7);
  }

  v9 = *MEMORY[0x1E69E9840];
  return ReportDeadline;
}

const __CFDictionary *_IOHIDServiceContainsReportIntervalForClient(uint64_t a1, const void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v13, v14);
  }

  ++**(a1 + 72);
  v6 = a3;
  if (a3 || (v6 = _IOHIDServiceCopyConnectionCache(a1, a2)) != 0)
  {
    v7 = IOHIDServiceConnectionCacheContainsKey(v6, @"ReportInterval");
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = *(a1 + 72);
  if (*v9)
  {
    --*v9;
    if (pthread_mutex_unlock((v9 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v13, v14);
    }
  }

  v10 = v8 ^ 1;
  if (v6 == a3)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    CFRelease(v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _IOHIDServiceGetReportIntervalForClient(uint64_t a1, const void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v15, v17);
  }

  ++**(a1 + 72);
  v6 = a3;
  if (a3 || (v6 = _IOHIDServiceCopyConnectionCache(a1, a2)) != 0)
  {
    v7 = IOHIDServiceConnectionCacheCopyValueForKey(v6, @"ReportInterval");
    if (v7)
    {
      v8 = v7;
      CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v8);
      v9 = 1;
      goto LABEL_12;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = CFGetTypeID(a2);
  if (v10 == IOHIDEventSystemConnectionGetTypeID() && IOHIDEventSystemConnectionGetType(a2) == 3)
  {
    valuePtr = 0;
  }

  else
  {
    valuePtr = -1;
  }

LABEL_12:
  v11 = *(a1 + 72);
  if (*v11)
  {
    --*v11;
    if (pthread_mutex_unlock((v11 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v15, v17);
    }
  }

  v12 = v9 ^ 1;
  if (v6 == a3)
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    CFRelease(v6);
  }

  result = valuePtr;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFDictionary *IOHIDServiceConnectionCacheContainsKey(void *a1, const void *a2)
{
  if (CFEqual(@"ReportInterval", a2))
  {
    v4 = a1[3];
    return (v4 != 0);
  }

  if (CFEqual(@"BatchInterval", a2))
  {
    v4 = a1[4];
    return (v4 != 0);
  }

  result = a1[5];
  if (result)
  {
    return CFDictionaryContainsKey(result, a2);
  }

  return result;
}

void _IOHIDServiceSetEventDeadlineForClient(uint64_t a1, const void *a2, uint64_t a3, int a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v16, v17);
  }

  ++**(a1 + 72);
  v10 = a5;
  if (a5 || (v10 = __IOHIDServiceCreateAndCopyConnectionCache(a1, a2)) != 0)
  {
    if (_IOHIDServiceGetReportIntervalForClient(a1, a2, v10) == a4)
    {
      IOHIDServiceConnectionCacheSetReportDeadline(v10, a3);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 72);
  if (*v12)
  {
    --*v12;
    if (pthread_mutex_unlock((v12 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v16, v17);
    }
  }

  v13 = v11 ^ 1;
  if (v10 == a5)
  {
    v13 = 1;
  }

  if (v13)
  {
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];

    CFRelease(v10);
  }
}