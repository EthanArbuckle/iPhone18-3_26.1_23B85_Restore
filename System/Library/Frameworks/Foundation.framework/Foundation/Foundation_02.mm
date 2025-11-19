void sub_180784D70(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Exception while decoding argument %ld (#%ld of invocation):\n%@\nException: %@", v3 - *(v4 - 128), v3, objc_msgSend(v2, "debugDescription"), objc_msgSend(objc_begin_catch(exception_object), "debugDescription")), 0}];
    objc_exception_throw(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _NSXPCSerializationDecodeTypedObjCValuesFromArray(void *a1, uint64_t *a2, unsigned __int8 *a3, _DWORD *a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  v55 = *MEMORY[0x1E69E9840];
  result = _xpc_skipAttributesOfType(a3);
  v20 = *result;
  if (v20 > 0x52)
  {
    v18 = result;
    if (*result <= 0x68u)
    {
      if (*result > 0x62u)
      {
        if (v20 != 99)
        {
          if (v20 != 100)
          {
            if (v20 == 102)
            {
              v54 = 0;
              v21 = *a8;
              if (*a8 <= a8[1] && v21 < a2[1])
              {
                v53 = *a8;
                LODWORD(v54) = *(*a2 + v21) & 0xF0;
                if (a5 > 3)
                {
                  result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 floatValue:v19)];
                  *a4 = v22;
                  return result;
                }

                goto LABEL_117;
              }

LABEL_116:
              v50 = MEMORY[0x1E695DF30];
              v51 = @"NSInvalidUnarchiveOperationException";
              v52 = @"Expected to find entry in array of NSInvocation arguments but there were no entries";
              goto LABEL_118;
            }

            goto LABEL_122;
          }

          v54 = 0;
          v34 = *a8;
          if (*a8 > a8[1] || v34 >= a2[1])
          {
            goto LABEL_116;
          }

          v53 = *a8;
          LODWORD(v54) = *(*a2 + v34) & 0xF0;
          if (a5 > 7)
          {
            result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 doubleValue:v19)];
            *a4 = v35;
            return result;
          }

LABEL_117:
          v50 = MEMORY[0x1E695DF30];
          v51 = @"NSInvalidUnarchiveOperationException";
          v52 = @"Size of available buffer is not big enough to hold the decoded data";
          goto LABEL_118;
        }

        v54 = 0;
        v37 = *a8;
        if (*a8 > a8[1] || v37 >= a2[1])
        {
          goto LABEL_116;
        }

        v53 = *a8;
        LODWORD(v54) = *(*a2 + v37) & 0xF0;
        if (!a5)
        {
          goto LABEL_117;
        }

        result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 charValue:v19)];
        goto LABEL_75;
      }

      if (v20 != 83)
      {
        if (v20 == 91)
        {
          return _xpc_walkDataStructure(a1, 0, a2, result, a3, a4, a5, 0, a9, a10, a7, a8);
        }

        goto LABEL_122;
      }

      v54 = 0;
      v40 = *a8;
      if (*a8 > a8[1] || v40 >= a2[1])
      {
        goto LABEL_116;
      }

      v53 = *a8;
      LODWORD(v54) = *(*a2 + v40) & 0xF0;
      if (a5 <= 1)
      {
        goto LABEL_117;
      }

      result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 unsignedShortValue:v19)];
LABEL_88:
      *a4 = result;
      return result;
    }

    if (*result > 0x70u)
    {
      if (v20 != 113)
      {
        if (v20 != 115)
        {
          if (v20 == 123)
          {
            return _xpc_walkDataStructure(a1, 0, a2, result, a3, a4, a5, 0, a9, a10, a7, a8);
          }

LABEL_122:
          v52 = [NSString stringWithFormat:@"decodeDataAt:ofObjCType: undecodable type (%s)", v18, a3];
          v50 = MEMORY[0x1E695DF30];
          v51 = *MEMORY[0x1E695D920];
          goto LABEL_118;
        }

        v54 = 0;
        v36 = *a8;
        if (*a8 > a8[1] || v36 >= a2[1])
        {
          goto LABEL_116;
        }

        v53 = *a8;
        LODWORD(v54) = *(*a2 + v36) & 0xF0;
        if (a5 <= 1)
        {
          goto LABEL_117;
        }

        result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 shortValue:v19)];
        goto LABEL_88;
      }

      v54 = 0;
      v38 = *a8;
      if (*a8 > a8[1] || v38 >= a2[1])
      {
        goto LABEL_116;
      }

      v53 = *a8;
      LODWORD(v54) = *(*a2 + v38) & 0xF0;
      if (a5 <= 7)
      {
        goto LABEL_117;
      }

      result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 longLongValue:v19)];
      goto LABEL_101;
    }

    if (v20 != 105)
    {
      if (v20 != 108)
      {
        goto LABEL_122;
      }

      v54 = 0;
      v30 = *a8;
      if (*a8 > a8[1] || v30 >= a2[1])
      {
        goto LABEL_116;
      }

      v53 = *a8;
      LODWORD(v54) = *(*a2 + v30) & 0xF0;
      if (a5 <= 7)
      {
        goto LABEL_117;
      }

      result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 longValue:v19)];
      goto LABEL_101;
    }

    v54 = 0;
    v41 = *a8;
    if (*a8 > a8[1] || v41 >= a2[1])
    {
      goto LABEL_116;
    }

    v53 = *a8;
    LODWORD(v54) = *(*a2 + v41) & 0xF0;
    if (a5 <= 3)
    {
      goto LABEL_117;
    }

    result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 intValue:v19)];
    goto LABEL_106;
  }

  if (*result <= 0x41u)
  {
    if (*result > 0x39u)
    {
      if (v20 != 58)
      {
        if (v20 != 64)
        {
          goto LABEL_122;
        }

        v54 = 0;
        v31 = *a8;
        if (*a8 > a8[1] || v31 >= a2[1])
        {
          v50 = MEMORY[0x1E695DF30];
          v51 = @"NSInvalidUnarchiveOperationException";
          v52 = @"Expected to find entry in array for an object but there was no entry";
          goto LABEL_118;
        }

        v53 = *a8;
        LODWORD(v54) = *(*a2 + v31) & 0xF0;
        if (a5 <= 7)
        {
          goto LABEL_117;
        }

        v32 = [a1 _decodeObjectOfClasses:a10 atObject:&v53];
        v29 = v32;
        *a4 = v32;
        if (!a9)
        {
          return v32;
        }

        v28 = a9;
        return [v28 _addAttachedObject:v29];
      }

      v54 = 0;
      v44 = *a8;
      if (*a8 > a8[1] || v44 >= a2[1])
      {
        v50 = MEMORY[0x1E695DF30];
        v51 = @"NSInvalidUnarchiveOperationException";
        v52 = @"Expected to find SEL entry in array of NSInvocation arguments but there were no entries";
        goto LABEL_118;
      }

      v53 = *a8;
      LODWORD(v54) = *(*a2 + v44) & 0xF0;
      if (a5 <= 7)
      {
        goto LABEL_117;
      }

      v45 = _NSXPCSerializationASCIIStringForObject(a2, &v53);
      result = sel_registerName(v45);
    }

    else
    {
      if (v20 != 35)
      {
        if (v20 != 42)
        {
          goto LABEL_122;
        }

        v54 = 0;
        v24 = *a8;
        if (*a8 > a8[1] || v24 >= a2[1])
        {
          goto LABEL_116;
        }

        if (a5 <= 7)
        {
          goto LABEL_117;
        }

        if (v24 && *(*a2 + v24) == 176)
        {
          goto LABEL_112;
        }

        _getLastByteOfValueIncludingMarker(a2, v24, a8);
        v25 = *a8 + 1;
        v26 = *a8 == -1;
        *a8 = v25;
        if (v26 << 63 >> 63 != v26)
        {
          v50 = MEMORY[0x1E695DF30];
          v51 = @"NSInvalidUnarchiveOperationException";
          v52 = @"Unexpected EoF while decoding pointer";
LABEL_118:
          objc_exception_throw([v50 exceptionWithName:v51 reason:v52 userInfo:0]);
        }

        if (a8[1] < v25 || a2[1] <= v25)
        {
          v50 = MEMORY[0x1E695DF30];
          v51 = @"NSInvalidUnarchiveOperationException";
          v52 = @"Missing data after non-null entry";
          goto LABEL_118;
        }

        v53 = v25;
        LODWORD(v54) = *(*a2 + v25) & 0xF0;
        result = _NSXPCSerializationDataForObject(a2, &v53);
        if (!result || (v27 = result, (result = [result length]) == 0))
        {
LABEL_112:
          *a4 = 0;
          return result;
        }

        if (!a9)
        {
          v48 = [v27 length];
          v49 = malloc_type_malloc(v48 + 1, 0x100004077774924uLL);
          result = [v27 getBytes:v49 length:v48];
          *a4 = v49;
          v49[v48] = 0;
          return result;
        }

        *a4 = [v27 bytes];
        v28 = a9;
        v29 = v27;
        return [v28 _addAttachedObject:v29];
      }

      v54 = 0;
      v42 = *a8;
      if (*a8 > a8[1] || v42 >= a2[1])
      {
        goto LABEL_116;
      }

      v53 = *a8;
      LODWORD(v54) = *(*a2 + v42) & 0xF0;
      v43 = _NSXPCSerializationASCIIStringForObject(a2, &v53);
      if (a5 <= 7)
      {
        goto LABEL_117;
      }

      result = objc_lookUpClass(v43);
    }

LABEL_101:
    *a4 = result;
    return result;
  }

  if (*result > 0x48u)
  {
    if (v20 != 73)
    {
      if (v20 == 76)
      {
        v54 = 0;
        v39 = *a8;
        if (*a8 > a8[1] || v39 >= a2[1])
        {
          goto LABEL_116;
        }

        v53 = *a8;
        LODWORD(v54) = *(*a2 + v39) & 0xF0;
        if (a5 <= 7)
        {
          goto LABEL_117;
        }

        result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 unsignedLongValue:v19)];
      }

      else
      {
        if (v20 != 81)
        {
          goto LABEL_122;
        }

        v54 = 0;
        v23 = *a8;
        if (*a8 > a8[1] || v23 >= a2[1])
        {
          goto LABEL_116;
        }

        v53 = *a8;
        LODWORD(v54) = *(*a2 + v23) & 0xF0;
        if (a5 <= 7)
        {
          goto LABEL_117;
        }

        result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 unsignedLongLongValue:v19)];
      }

      goto LABEL_101;
    }

    v54 = 0;
    v46 = *a8;
    if (*a8 > a8[1] || v46 >= a2[1])
    {
      goto LABEL_116;
    }

    v53 = *a8;
    LODWORD(v54) = *(*a2 + v46) & 0xF0;
    if (a5 <= 3)
    {
      goto LABEL_117;
    }

    result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 unsignedIntValue:v19)];
LABEL_106:
    *a4 = result;
    return result;
  }

  if (v20 != 66)
  {
    if (v20 == 67)
    {
      v54 = 0;
      v33 = *a8;
      if (*a8 > a8[1] || v33 >= a2[1])
      {
        goto LABEL_116;
      }

      v53 = *a8;
      LODWORD(v54) = *(*a2 + v33) & 0xF0;
      if (!a5)
      {
        goto LABEL_117;
      }

      result = [(NSNumber *)_NSXPCSerializationNumberForObject(a2 unsignedCharValue:v19)];
LABEL_75:
      *a4 = result;
      return result;
    }

    goto LABEL_122;
  }

  v47 = *a8;
  if (*a8 > a8[1] || v47 >= a2[1])
  {
    goto LABEL_116;
  }

  if (!a5)
  {
    goto LABEL_117;
  }

  if (v47)
  {
    LOBYTE(v47) = *(*a2 + v47) == 176;
  }

  *a4 = v47;
  return result;
}

uint64_t _setAllowedClass(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = *(result + 4440);
    if (v4 >= 271)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"decodeObjectOfClass:forKey: too many nested collections" userInfo:{0, v2, v3}]);
    }

    v5 = v4 + 1;
    *(result + 4440) = v5;
    *(result + 2264 + 8 * v5) = a2;
  }

  return result;
}

void *_NSXPCSerializationAddInvocationArgumentsArray(void *a1, void *a2, _BYTE *a3, uint64_t *a4, int a5)
{
  LODWORD(v5) = a5;
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = [a2 numberOfArguments];
  _NSXPCSerializationStartArrayWrite(a4);
  if (v10 > v5)
  {
    v11 = v10;
    if (v10 > v5)
    {
      v5 = v5;
      while (1)
      {
        v12 = [a2 _argInfo:v5];
        v13 = v12;
        v14 = *(v12 + 17);
        if ((v14 & 0x80) != 0)
        {
          v13 = *v12;
          v14 = *(*v12 + 34);
        }

        if (v14 < 0)
        {
          break;
        }

        if ((v14 & 0x1000) != 0)
        {
          v19[0] = 0;
          [a1 getArgument:v19 atIndex:v5];
          if (!v19[0])
          {
            break;
          }

          _NSXPCSerializationAddTypedObjCValuesToArray(a3, a4, (*v13 + 37), v19[0]);
        }

        else
        {
          v15 = MEMORY[0x1EEE9AC00](v12);
          v17 = (v19 - ((v16 + 15) & 0x1FFFFFFF0));
          [a1 getArgument:v17 atIndex:{v5, v15}];
          _NSXPCSerializationAddTypedObjCValuesToArray(a3, a4, v13 + 37, v17);
        }

LABEL_12:
        if (v11 == ++v5)
        {
          return _NSXPCSerializationEndArrayWrite(a4);
        }
      }

      _reserveSpace(a4, 1);
      *(a4[1027] + a4[1025]++) = _NSXPCSerializationAddNull_nullMarker;
      goto LABEL_12;
    }
  }

  return _NSXPCSerializationEndArrayWrite(a4);
}

uint64_t _NSXPCSerializationCreateObjectInDictionaryForASCIIKey(uint64_t *a1, void *a2, char *__s, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___NSXPCSerializationCreateObjectInDictionaryForASCIIKey_block_invoke;
  v10[3] = &unk_1E69FAA08;
  v10[6] = strlen(__s);
  v10[7] = __s;
  v10[4] = &v11;
  v10[5] = a1;
  v10[8] = a4;
  if (_iterateDictionaryKeysAndValues(a1, a2, v10))
  {
    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

void sub_1807859FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _getStringAtMarker(uint64_t *a1, __CFString **a2, char *a3, unint64_t *a4)
{
  v5 = a3;
  key[1] = *MEMORY[0x1E69E9840];
  key[0] = a3;
  v8 = a1[2];
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a3);
    if (Value)
    {
LABEL_30:
      *a2 = Value;
      return 1;
    }
  }

  v10 = a1[1];
  if (v10 <= v5)
  {
    return 0;
  }

  v11 = v5[*a1];
  v12 = v11 & 0xF0;
  if (v12 == 112)
  {
    cStr = 0;
    result = _getASCIIStringAtMarker(a1, &cStr, v5, &numChars, a4);
    if (!result)
    {
      return result;
    }

    v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
LABEL_27:
    v22 = v14;
    v23 = a1[2];
    if (v23)
    {
      CFDictionarySetValue(v23, v5, v22);
    }

    Value = v22;
    goto LABEL_30;
  }

  if (v12 == 128)
  {
    result = _getReferenceAtMarker(a1, key, v5, a4);
    if (result)
    {
      return _getStringAtMarker(a1, a2, key[0], &numChars);
    }

    return result;
  }

  if (v12 != 96)
  {
    return 0;
  }

  v15 = v11 & 0xF;
  numChars = v15;
  if ((v11 & 0xF) == 0)
  {
    *a4 = v5;
    if (!a2)
    {
      return 1;
    }

    Value = &stru_1EEEFDF90;
    goto LABEL_30;
  }

  key[0] = ++v5;
  if (v5 >= v10)
  {
    return 0;
  }

  if (v15 != 15 || (result = _getIntAtMarker(a1, &numChars, v5, key), result) && (result = 0, v5 = key[0] + 1, ((key[0] == -1) << 63) >> 63 == (key[0] == -1)) && v10 > v5 && (v15 = numChars, (numChars & 0x8000000000000000) == 0))
  {
    if (2 * v15 < 0)
    {
      return 0;
    }

    result = 0;
    v16 = 2 * v15 - 1;
    v17 = v16 >> 63;
    v18 = __CFADD__(v5, v16);
    v19 = &v5[v16];
    v20 = v18 ? v17 + 1 : v17;
    v21 = v20 << 63 >> 63;
    *a4 = v19;
    if (v21 == v20 && (v21 & 0x8000000000000000) == 0)
    {
      if (a1[1] > v19)
      {
        if (!a2)
        {
          return 1;
        }

        v14 = CFStringCreateWithCharacters(*MEMORY[0x1E695E4A8], &v5[*a1], v15);
        goto LABEL_27;
      }

      return 0;
    }
  }

  return result;
}

__CFString *_NSXPCSerializationStringForObject(uint64_t *a1, char **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4 = 0;
  if (!v2)
  {
    return 0;
  }

  if (_getStringAtMarker(a1, &v4, v2, v5))
  {
    return v4;
  }

  return 0;
}

BOOL _getReferenceAtMarker(uint64_t *a1, unint64_t *a2, unint64_t a3, unint64_t *a4)
{
  if (a1[1] <= a3)
  {
    return 0;
  }

  v5 = *(*a1 + a3);
  if ((v5 & 0xF0) != 0x80)
  {
    return 0;
  }

  result = 0;
  v7 = v5 & 0xF;
  v8 = a3 + v7;
  v9 = __CFADD__(a3, v7);
  v10 = v9 << 63 >> 63;
  *a4 = v8;
  if (v10 == v9 && (v10 & 0x8000000000000000) == 0)
  {
    v11 = a1[1];
    if (v11 > v8)
    {
      result = 0;
      v12 = *a1;
      v13 = v12 + a3;
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          v14 = *(v13 + 1);
        }

        else
        {
          if (v7 != 8)
          {
            return result;
          }

          v14 = *(v13 + 1);
        }
      }

      else if (v7 == 1)
      {
        v14 = *(v13 + 1);
      }

      else
      {
        if (v7 != 2)
        {
          return result;
        }

        v14 = *(v13 + 1);
      }

      *a2 = v14;
      if (v14 < v11)
      {
        v15 = *(v12 + v14);
        v16 = v15 & 0xF0;
        return (v15 & 0xB0) != 0x80 && v16 != 176 && v16 != 224;
      }
    }

    return 0;
  }

  return result;
}

void message_handler(uint64_t a1, id a2)
{
  if (object_getClass(a2) == MEMORY[0x1E69E9E98])
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }

    if (a2 == MEMORY[0x1E69E9E20])
    {
      _Block_release(*(a1 + 16));
      _Block_release(*(a1 + 24));
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else if (object_getClass(a2) == MEMORY[0x1E69E9E80])
  {
    if (*(a1 + 24))
    {
      reply = xpc_dictionary_create_reply(a2);
      (*(*(a1 + 24) + 16))();
      if (reply)
      {

        xpc_release(reply);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void message_handler_0(void *a1, id a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a2);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v6 = __NSXPCCONNECTION_IS_CREATING_REPLY__(a2);
    message_handler_message(a1, a2, v6);
    if (v6)
    {

      xpc_release(v6);
    }
  }

  else if (Class == MEMORY[0x1E69E9E98])
  {

    message_handler_error(a1, a2);
  }

  else
  {
    v5 = _NSXPCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 138543362;
      v8 = a1;
      _os_log_fault_impl(&dword_18075C000, v5, OS_LOG_TYPE_FAULT, "%{public}@: Unexpected data on XPC connection, invalidating the connection.", &v7, 0xCu);
    }

    [a1 invalidate];
  }
}

void message_handler_message(void *a1, xpc_object_t xdict, uint64_t a3)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "f");
  v7 = uint64;
  if ((uint64 & 4) != 0)
  {
    if ((uint64 & 8) != 0)
    {
      v9 = xpc_dictionary_get_uint64(xdict, "proxynum");
      if (v9)
      {
        v10 = a1[7];
        v11 = a1[3];

        [(_NSXPCConnectionExportedObjectTable *)v10 receivedReleaseForProxyNumber:v9 userQueue:v11];
      }
    }

    else if ((uint64 & 0x10) != 0)
    {

      [a1 _decodeProgressMessageWithData:xdict flags:uint64];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    [a1 _decodeAndInvokeMessageWithEvent:xdict reply:a3 flags:v7];

    objc_autoreleasePoolPop(v8);
  }
}

uint64_t _NSXPCSerializationASCIIStringForObject(uint64_t *a1, unint64_t *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4 = 0;
  if (!v2)
  {
    return 0;
  }

  if (_getASCIIStringAtMarker(a1, &v4, v2, &v5, v6))
  {
    return v4;
  }

  return 0;
}

void *_NSXPCSerializationIterateArrayObject(void *result, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *a2 + 8;
  if (((*a2 >= 0xFFFFFFFFFFFFFFF8) << 63) >> 63 == *a2 >= 0xFFFFFFFFFFFFFFF8)
  {
    v4 = result;
    v5 = result[1];
    if (v5 > v3)
    {
      v6 = *(*result + *a2 + 1);
      if (v6 != v3)
      {
        v7 = *a2 + 9;
        v15[0] = v7;
        v8 = ((v3 == -1) << 63) >> 63 == (v3 == -1) && v5 > v7;
        if (v8 && v6 >= v7)
        {
          do
          {
            v13 = v7;
            v14 = 255;
            if (v7 >= v5)
            {
              break;
            }

            LODWORD(v14) = *(*v4 + v7) & 0xF0;
            result = (*(a3 + 16))(a3, &v13);
            if (!result)
            {
              break;
            }

            result = _getLastByteOfValueIncludingMarker(v4, v7, v15);
            v11 = v15[0] + 1;
            v12 = v15[0]++ == -1;
            if (v12 << 63 >> 63 != v12)
            {
              break;
            }

            if (v7 >= v11)
            {
              break;
            }

            v5 = v4[1];
            if (v5 <= v11)
            {
              break;
            }

            v7 = v11;
          }

          while (v6 >= v11);
        }
      }
    }
  }

  return result;
}

uint64_t _NSCompareObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        result = (a3)(a1, a4);
      }

      else
      {
        result = (*(a3 + 16))(a3, a1);
      }

      if (!a5)
      {
        return -result;
      }
    }

    else
    {
      v9 = 1;
      if (((a5 ^ 1) & a6) == 0)
      {
        v9 = -1;
      }

      if (a5 ^ 1 | a6)
      {
        return v9;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    v8 = -1;
    if (((a5 ^ 1) & a6) == 0)
    {
      v8 = 1;
    }

    if (a5 ^ 1 | a6)
    {
      return v8;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

id _NSGetUnsignedLongLongValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithUnsignedLongLong:{(Implementation)(a1, Name)}];

  return v8;
}

uint64_t _NSSortFunctionMany(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a3[4];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = *a1;
    v8 = *a2;
    v9 = a3[3];
    v30 = *a1;
    v28 = a3[4];
    v29 = *a2;
    do
    {
      if (v6 >= v9)
      {
        _NSInitializeCacheLine(v6, a3);
        ++v9;
      }

      v10 = *a3;
      v11 = (*a3 + v5);
      v12 = v11[2];
      if (v12)
      {
        result = v12(v11[1], sel_compareObject_toObject_, *(a3[1] + 8 * v7), *(a3[1] + 8 * v8));
        if (result)
        {
          return result;
        }
      }

      else
      {
        v14 = *v11;
        v15 = *v11 + 16 * v7;
        MethodImplementation = *v15;
        if (!*v15)
        {
          v17 = a3[1];
          v18 = *(v17 + 8 * v30);
          if (*(v10 + v5 + 24))
          {
            v18 = [*(v17 + 8 * v30) valueForKeyPath:?];
          }

          if (v18 == [MEMORY[0x1E695DFB0] null])
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            v20 = v10 + v5;
            if (*(v10 + v5 + 40))
            {
              v21 = objc_opt_class();
              MethodImplementation = class_getMethodImplementation(v21, *(v20 + 40));
            }

            else
            {
              MethodImplementation = *(*(v20 + 8) + 32);
            }
          }

          else
          {
            MethodImplementation = _NSNullCompare;
          }

          *v15 = MethodImplementation;
          *(v15 + 8) = v19;
          v8 = v29;
        }

        v22 = (v14 + 16 * v8);
        if (*v22)
        {
          v23 = v22[1];
        }

        else
        {
          v23 = *(a3[1] + 8 * v8);
          if (*(v10 + v5 + 24))
          {
            v23 = [v23 valueForKeyPath:?];
          }

          if (v23 == [MEMORY[0x1E695DFB0] null])
          {
            v23 = 0;
          }

          v24 = _NSNullCompare;
          if (v23)
          {
            v25 = v10 + v5;
            if (*(v10 + v5 + 40))
            {
              v26 = objc_opt_class();
              v24 = class_getMethodImplementation(v26, *(v25 + 40));
            }

            else
            {
              v24 = *(*(v25 + 8) + 32);
            }
          }

          *v22 = v24;
          v22[1] = v23;
          v3 = v28;
        }

        v27 = (v10 + v5 + 40);
        if (MethodImplementation == _NSNullCompare)
        {
          v27 = &selRef_compare_;
        }

        result = _NSCompareObject(*(v15 + 8), v23, MethodImplementation, *v27, *(v10 + v5 + 32), *(v10 + v5 + 33));
        v8 = v29;
        v7 = v30;
        if (result)
        {
          return result;
        }
      }

      ++v6;
      v5 += 48;
    }

    while (v3 != v6);
  }

  return 0;
}

uint64_t _localeNotificationCount()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  return static LocaleNotifications.cache;
}

id @objc static NSTimeZone._current()(uint64_t a1, uint64_t a2, void (*a3)(id *__return_ptr, os_unfair_lock_s *))
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  a3(&v7, v4 + 4);
  os_unfair_lock_unlock(v4 + 30);
  v5 = v7;

  return v5;
}

id closure #1 in TimeZoneCache.bridgedDefault.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[9];
  if (v3)
  {
    v4 = a1[9];
  }

  else
  {
    v6 = a1[8];
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      if (*a1)
      {
        v7 = a1[1];
        v8 = *a1;
      }

      else
      {
        TimeZoneCache.State.findCurrentTimeZone()(v17);
        v8 = v17[0];
        v7 = v17[1];
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *a1 = v8;
        a1[1] = v7;
      }

      v9 = type metadata accessor for _NSSwiftTimeZone();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____NSSwiftTimeZone_timeZone];
      *v11 = v8;
      *(v11 + 1) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
      v12 = swift_allocObject();
      *(v12 + 32) = 0;
      *(v12 + 16) = xmmword_18122E880;
      *&v10[OBJC_IVAR____NSSwiftTimeZone_lock] = v12;
      v16.receiver = v10;
      v16.super_class = v9;
      swift_unknownObjectRetain();
      v13 = objc_msgSendSuper2(&v16, sel_init);
      v14 = a1[8];
      v4 = v13;

      a1[8] = v13;
    }
  }

  *a2 = v4;
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.identifier.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _NSXPCDistantObjectSimpleMessageSend3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  [v9[1] _sendSelector:a2 withProxy:v9 arg1:a3 arg2:a4 arg3:a5];

  return 0;
}

uint64_t __NSIndexSetEnumerateBitfield(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 + a4 >= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = a3 + a4;
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 <= 0x3F)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  if (a3 <= 0x3F && v6 != a3)
  {
    v48 = 0;
    if ((a2 & 2) == 0)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v47 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = -1;
      while (2)
      {
        if (v14)
        {
          v16 = v13;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 + v15;
        while (1)
        {
          if (((-1 << v14) & a1) == 0)
          {
            return v47;
          }

          v18 = __clz(__rbit64((-1 << v14) & a1));
          v14 = __clz(__rbit64((-1 << v18) & ~a1));
          v20 = __CFADD__(v17++, 1);
          if (v20)
          {
            break;
          }

          if (v14 > 0x3F)
          {
            return v47;
          }
        }

        if (v6 >= v14)
        {
          v19 = v14;
        }

        else
        {
          v19 = v6;
        }

        v20 = v18 > a3 || a3 >= v14;
        if (v20)
        {
          if (a3 <= v18)
          {
            v21 = v19 - v18;
            v22 = v18 < v6 ? v18 : 0;
            v23 = v18 < v6 ? v21 : 0;
            if (v23)
            {
LABEL_37:
              if ((a2 & 0x4000000000000000) != 0)
              {
                v43 = v15;
                __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
                v15 = v43;
                v12 = v48;
                if (v48)
                {
                  return v47;
                }
              }

              else
              {
                v42 = v13;
                v24 = v22 + v23;
                if (v12 & 1 | (v22 >= v22 + v23))
                {
                  v13 = v42;
                  if (v12)
                  {
                    return v47;
                  }
                }

                else
                {
                  v44 = v15;
                  do
                  {
                    if ((a2 & 0x2000000000000000) != 0)
                    {
                      if (__NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5))
                      {
                        v48 = 1;
                        v47 = v22;
                      }
                    }

                    else
                    {
                      __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
                    }

                    v12 = v48;
                    if (v48)
                    {
                      break;
                    }

                    ++v22;
                  }

                  while (v22 < v24);
                  v13 = v42;
                  v15 = v44;
                  if (v48)
                  {
                    return v47;
                  }
                }
              }
            }
          }
        }

        else
        {
          v23 = v19 - a3;
          v22 = a3;
          if (v19 != a3)
          {
            goto LABEL_37;
          }
        }

        ++v13;
        --v15;
        if (v14 < 0x40)
        {
          continue;
        }

        return v47;
      }
    }

    if (a1)
    {
      v25 = ~a1;
      v26 = 1;
      v27 = a1;
      while (1)
      {
        v28 = (-1 << __clz(__rbit64(v27))) & v25;
        if (!v28)
        {
          break;
        }

        ++v26;
        v27 = (-1 << __clz(__rbit64(v28))) & a1;
        if (!v27)
        {
          --v26;
          break;
        }
      }

      if (v26)
      {
        v29 = 0;
        v46 = v6;
        v47 = 0x7FFFFFFFFFFFFFFFLL;
        v45 = v8;
        while (1)
        {
          LOBYTE(v30) = 0;
          v31 = v26--;
          while (1)
          {
            if (((-1 << v30) & a1) == 0)
            {
LABEL_64:
              v33 = 0;
              v32 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_66;
            }

            v32 = __clz(__rbit64((-1 << v30) & a1));
            v30 = __clz(__rbit64((-1 << v32) & v25));
            if (!--v31)
            {
              break;
            }

            if (v30 > 0x3F)
            {
              goto LABEL_64;
            }
          }

          v33 = v30 - v32;
LABEL_66:
          v34 = v33 + v32;
          if (v6 >= v33 + v32)
          {
            v35 = v33 + v32;
          }

          else
          {
            v35 = v6;
          }

          if (v32 > a3 || a3 >= v34)
          {
            v38 = v35 - v32;
            if (v32 < v6)
            {
              v39 = v32;
            }

            else
            {
              v39 = 0;
            }

            if (v32 >= v6)
            {
              v38 = 0;
            }

            if (a3 <= v32)
            {
              v37 = v39;
            }

            else
            {
              v37 = 0;
            }

            if (a3 <= v32)
            {
              v36 = v38;
            }

            else
            {
              v36 = 0;
            }

            if (!v36)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v36 = v35 - a3;
            v37 = v8;
            if (v35 == a3)
            {
              goto LABEL_98;
            }
          }

          if ((a2 & 0x4000000000000000) != 0)
          {
            __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
            v29 = v48;
          }

          else if (!(v29 & 1 | ((v36 + v37 - 1) < v37)))
          {
            v40 = v36 + v37 - 2;
            do
            {
              if ((a2 & 0x2000000000000000) != 0)
              {
                if (__NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5))
                {
                  v48 = 1;
                  v47 = v40 + 1;
                }
              }

              else
              {
                __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a5);
              }

              v29 = v48;
              if (v48)
              {
                break;
              }
            }

            while (v40-- >= v37);
            v8 = v45;
            v6 = v46;
          }

          if (v29)
          {
            return v47;
          }

LABEL_98:
          if (!v26)
          {
            return v47;
          }
        }
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t _NSAttributeDictionaryClass()
{
  result = attributeDictionaryClass;
  if (!attributeDictionaryClass)
  {
    result = objc_lookUpClass("NSAttributeDictionary");
    attributeDictionaryClass = result;
    if (!result)
    {
      result = objc_opt_self();
      attributeDictionaryClass = result;
    }
  }

  return result;
}

uint64_t blockForLocation(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  os_unfair_lock_lock(&__NSRLEArrayLock);
  v6 = *(a1 + 16);
  if (a2 <= v6 >> 1)
  {
    os_unfair_lock_unlock(&__NSRLEArrayLock);
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 36);
    os_unfair_lock_unlock(&__NSRLEArrayLock);
    if (v6 > a2)
    {
      v8 = (a1 + 16 * v7 + 24);
      do
      {
        v9 = *v8;
        v8 -= 2;
        v6 -= v9;
        --v7;
      }

      while (v7 && v6 > a2);
      goto LABEL_10;
    }
  }

  v10 = a1 + 16 * v7--;
  v11 = (v10 + 40);
  v12 = v6;
  do
  {
    v6 = v12;
    v13 = *v11;
    v11 += 2;
    v12 += v13;
    ++v7;
  }

  while (v12 <= a2);
LABEL_10:
  os_unfair_lock_lock(&__NSRLEArrayLock);
  *(a1 + 16) = v6;
  *(a1 + 36) = v7;
  os_unfair_lock_unlock(&__NSRLEArrayLock);
  if (a3)
  {
    v14 = *(a1 + 16 * v7 + 40);
    *a3 = v6;
    a3[1] = v14;
  }

  return v7;
}

uint64_t normalizedPath(void *a1)
{
  v2 = @"/private/preboot/Cryptexes/OS/";
  if (([a1 hasPrefix:@"/private/preboot/Cryptexes/OS/"] & 1) == 0)
  {
    v2 = @"/System/Cryptexes/OS/";
    if (![a1 hasPrefix:@"/System/Cryptexes/OS/"])
    {
      return a1;
    }
  }

  v3 = [(__CFString *)v2 length]- 1;

  return [a1 substringFromIndex:v3];
}

id _NSXPCSerializationDataForObject(void *a1, unint64_t *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = a1[1];
  if (v4 <= v2)
  {
    return 0;
  }

  v5 = *(*a1 + v2);
  if ((v5 & 0xF0) != 0x40)
  {
    return 0;
  }

  v6 = v5 & 0xF;
  v13 = v6;
  if ((v5 & 0xF) != 0)
  {
    v7 = v2 + 1;
    v14[0] = v2 + 1;
    if (v2 + 1 < v4)
    {
      if (v6 != 15 || _getIntAtMarker(a1, &v13, v2 + 1, v14) && ((v7 = v14[0] + 1, ((v14[0] == -1) << 63) >> 63 == (v14[0] == -1)) ? (v8 = v4 > v7) : (v8 = 0), v8 && (v6 = v13, (v13 & 0x8000000000000000) == 0)))
      {
        v9 = (v6 - 1) >> 63;
        if (__CFADD__(v7, v6 - 1))
        {
          ++v9;
        }

        v10 = v9 << 63 >> 63;
        v11 = v10 != v9;
        if (v4 > v7 + v6 - 1 && !v11 && (v10 & 0x8000000000000000) == 0)
        {
          return [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*a1 + v7 length:v6];
        }
      }
    }

    return 0;
  }

  return [MEMORY[0x1E695DEF0] data];
}

id __NSConcreteUUID.init(coder:)(void *a1)
{
  v2 = v1;
  v181[6] = *MEMORY[0x1E69E9840];
  if (![a1 allowsKeyedCoding])
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v7 = @"NSDebugDescription";
    v8 = v7;
    if (!isTaggedPointer)
    {
LABEL_10:
      LOBYTE(v175) = 0;
      v178 = 0;
      LOBYTE(v174) = 0;
      LOBYTE(v172) = 0;
      if (__CFStringIsCF())
      {

LABEL_29:
        v10 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_63;
      }

      v19 = v8;
      v20 = String.init(_nativeStorage:)();
      if (v21)
      {
        v10 = v20;
        v12 = v21;

        goto LABEL_63;
      }

      v178 = [(__CFString *)v19 length];
      if (!v178)
      {

        goto LABEL_29;
      }

      v10 = String.init(_cocoaString:)();
      v12 = v47;
LABEL_63:
      v181[0] = v10;
      v181[1] = v12;
      v181[5] = MEMORY[0x1E69E6158];
      v181[2] = 0xD000000000000026;
      v181[3] = 0x800000018147E7F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v48 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v181, &v178);

      outlined destroy of (String, Any)(v181);
      v49 = v178;
      v50 = v179;
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v179);
      v53 = v52;

      if (v53)
      {
        __break(1u);
      }

      else
      {
        v48[(v51 >> 6) + 8] |= 1 << v51;
        v54 = (v48[6] + 16 * v51);
        *v54 = v49;
        v54[1] = v50;
        outlined init with take of Any(v180, (v48[7] + 32 * v51));
        v55 = v48[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (!v56)
        {
          v48[2] = v57;
          v58 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v59 = @"NSCocoaErrorDomain";
          v60 = v59;
          if (!v58)
          {
LABEL_70:
            LOBYTE(v175) = 0;
            v178 = 0;
            LOBYTE(v174) = 0;
            LOBYTE(v172) = 0;
            if (!__CFStringIsCF())
            {
              v62 = v60;
              String.init(_nativeStorage:)();
              if (v63 || (v178 = [(__CFString *)v62 length]) == 0)
              {

                goto LABEL_88;
              }

              goto LABEL_87;
            }

            if (v178)
            {
              if (v172 == 1)
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_88;
              }

LABEL_87:
              String.init(_cocoaString:)();
LABEL_88:
              v66 = objc_allocWithZone(NSError);
              v67 = String._bridgeToObjectiveCImpl()();

              v68 = [v66 initWithDomain:v67 code:4864 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v69 = [v68 domain];
              if (!v69)
              {
                v75 = 0;
                v77 = 0xE000000000000000;
                goto LABEL_123;
              }

              v70 = v69;
              v71 = _objc_isTaggedPointer(v69);
              v72 = v70;
              v73 = v72;
              if ((v71 & 1) == 0)
              {
LABEL_94:
                LOBYTE(v175) = 0;
                v178 = 0;
                LOBYTE(v174) = 0;
                LOBYTE(v172) = 0;
                if (__CFStringIsCF())
                {
                  if (v178)
                  {
                    if (v172 == 1)
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      v83 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_121:
                      v75 = v83;
                      v77 = v84;
                      goto LABEL_122;
                    }

LABEL_120:
                    v83 = String.init(_cocoaString:)();
                    goto LABEL_121;
                  }
                }

                else
                {
                  v78 = v73;
                  v79 = String.init(_nativeStorage:)();
                  if (v80)
                  {
                    v75 = v79;
                    v77 = v80;

                    goto LABEL_123;
                  }

                  v178 = [v78 length];
                  if (v178)
                  {
                    goto LABEL_120;
                  }
                }

                v75 = 0;
                v77 = 0xE000000000000000;
                goto LABEL_123;
              }

              TaggedPointerTag = _objc_getTaggedPointerTag(v72);
              if (TaggedPointerTag)
              {
                if (TaggedPointerTag != 22)
                {
                  if (TaggedPointerTag == 2)
                  {
                    MEMORY[0x1EEE9AC00](TaggedPointerTag);
                    v75 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v77 = v76;

LABEL_123:
                    v87 = v60;
                    v88 = v87;
                    if (!v58)
                    {
                      goto LABEL_128;
                    }

                    v89 = _objc_getTaggedPointerTag(v87);
                    if (!v89)
                    {
                      goto LABEL_139;
                    }

                    if (v89 != 22)
                    {
                      if (v89 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v89);
                        v90 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v92 = v91;

                        goto LABEL_147;
                      }

LABEL_128:
                      LOBYTE(v175) = 0;
                      v178 = 0;
                      LOBYTE(v174) = 0;
                      LOBYTE(v172) = 0;
                      if (__CFStringIsCF())
                      {
                        if (v178)
                        {
                          if (v172 == 1)
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                            v98 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_146:
                            v90 = v98;
                            v92 = v99;
LABEL_147:
                            if (v75 == v90 && v77 == v92)
                            {

LABEL_257:
                              [a1 failWithError_];
                              swift_unknownObjectRelease();

                              type metadata accessor for __NSConcreteUUID();
                              swift_deallocPartialClassInstance();
                              return 0;
                            }

                            v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v100)
                            {
                              goto LABEL_257;
                            }

                            goto LABEL_260;
                          }

LABEL_145:
                          v98 = String.init(_cocoaString:)();
                          goto LABEL_146;
                        }
                      }

                      else
                      {
                        v93 = v88;
                        v94 = String.init(_nativeStorage:)();
                        if (v95)
                        {
                          v90 = v94;
                          v92 = v95;

                          goto LABEL_147;
                        }

                        v178 = [(__CFString *)v93 length];
                        if (v178)
                        {
                          goto LABEL_145;
                        }
                      }

                      v90 = 0;
                      v92 = 0xE000000000000000;
                      goto LABEL_147;
                    }

                    result = [(__CFString *)v88 UTF8String];
                    if (result)
                    {
                      v96 = String.init(utf8String:)(result);
                      if (v97)
                      {
                        goto LABEL_140;
                      }

                      __break(1u);
LABEL_139:
                      LOWORD(v174) = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v96 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v97)
                      {
                        [(__CFString *)v88 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v90 = v175;
                        v92 = v176;
                        goto LABEL_147;
                      }

LABEL_140:
                      v90 = v96;
                      v92 = v97;

                      goto LABEL_147;
                    }

                    goto LABEL_269;
                  }

                  goto LABEL_94;
                }

                result = [v73 UTF8String];
                if (!result)
                {
LABEL_270:
                  __break(1u);
                  goto LABEL_271;
                }

                v81 = String.init(utf8String:)(result);
                if (v82)
                {
                  goto LABEL_107;
                }

                __break(1u);
              }

              LOWORD(v174) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v81 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v82)
              {
                [v73 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v75 = v175;
                v77 = v176;
                goto LABEL_122;
              }

LABEL_107:
              v75 = v81;
              v77 = v82;

LABEL_122:
              goto LABEL_123;
            }

LABEL_86:

            goto LABEL_88;
          }

          v61 = _objc_getTaggedPointerTag(v59);
          if (!v61)
          {
LABEL_80:
            LOWORD(v174) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v65)
            {
              [(__CFString *)v60 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_88;
            }

            goto LABEL_86;
          }

          if (v61 != 22)
          {
            if (v61 == 2)
            {
              MEMORY[0x1EEE9AC00](v61);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_88;
            }

            goto LABEL_70;
          }

          result = [(__CFString *)v60 UTF8String];
          if (result)
          {
            String.init(utf8String:)(result);
            if (v64)
            {
              goto LABEL_86;
            }

            __break(1u);
            goto LABEL_80;
          }

LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
          goto LABEL_270;
        }
      }

      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v9 = _objc_getTaggedPointerTag(v7);
    if (v9)
    {
      if (v9 != 22)
      {
        if (v9 == 2)
        {
          MEMORY[0x1EEE9AC00](v9);
          v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v12 = v11;

          goto LABEL_63;
        }

        goto LABEL_10;
      }

      result = [(__CFString *)v8 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_268;
      }

      v37 = String.init(utf8String:)(result);
      if (v38)
      {
LABEL_34:
        v10 = v37;
        v12 = v38;

        goto LABEL_63;
      }

      __break(1u);
    }

    LOWORD(v174) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v37 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v38)
    {
      [(__CFString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v175;
      v12 = v176;
      goto LABEL_63;
    }

    goto LABEL_34;
  }

  v174 = 0;
  v4 = [a1 decodeBytesForKey:String._bridgeToObjectiveCImpl()() returnedLength:&v174];
  swift_unknownObjectRelease();
  if (!v4)
  {
    if ([objc_opt_self() _compatibilityBehavior])
    {
      v13 = &v2[OBJC_IVAR_____NSConcreteUUID__storage];
      v14 = type metadata accessor for __NSConcreteUUID();
      *v13 = 0;
      *(v13 + 1) = 0;
      v171.receiver = v2;
      v171.super_class = v14;
      v5 = objc_msgSendSuper2(&v171, sel_init);
      goto LABEL_16;
    }

    v22 = _objc_isTaggedPointer(@"NSDebugDescription");
    v23 = @"NSDebugDescription";
    v24 = v23;
    if (!v22)
    {
      goto LABEL_35;
    }

    v25 = _objc_getTaggedPointerTag(v23);
    if (!v25)
    {
      goto LABEL_57;
    }

    if (v25 != 22)
    {
      if (v25 == 2)
      {
        MEMORY[0x1EEE9AC00](v25);
        v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v28 = v27;

        goto LABEL_162;
      }

LABEL_35:
      LOBYTE(v175) = 0;
      v178 = 0;
      LOBYTE(v172) = 0;
      v173 = 0;
      if (__CFStringIsCF())
      {
        if (v178)
        {
          if (v173 == 1)
          {
            if (v175)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v101 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_161;
          }

LABEL_160:
          v101 = String.init(_cocoaString:)();
LABEL_161:
          v26 = v101;
          v28 = v102;
LABEL_162:
          v177[0] = v26;
          v177[1] = v28;
          v177[5] = MEMORY[0x1E69E6158];
          v177[2] = 0xD00000000000001FLL;
          v177[3] = 0x80000001814878A0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v105 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of (String, Any)(v177, &v178);

          outlined destroy of (String, Any)(v177);
          v106 = v178;
          v107 = v179;
          v108 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v179);
          v110 = v109;

          if ((v110 & 1) == 0)
          {
            v105[(v108 >> 6) + 8] |= 1 << v108;
            v111 = (v105[6] + 16 * v108);
            *v111 = v106;
            v111[1] = v107;
            outlined init with take of Any(v180, (v105[7] + 32 * v108));
            v112 = v105[2];
            v56 = __OFADD__(v112, 1);
            v113 = v112 + 1;
            if (!v56)
            {
              v105[2] = v113;
              v114 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
              v115 = @"NSCocoaErrorDomain";
              v116 = v115;
              if (!v114)
              {
LABEL_169:
                LOBYTE(v175) = 0;
                v178 = 0;
                LOBYTE(v172) = 0;
                v173 = 0;
                if (!__CFStringIsCF())
                {
                  v118 = v116;
                  String.init(_nativeStorage:)();
                  if (v119 || (v178 = [(__CFString *)v118 length]) == 0)
                  {

                    goto LABEL_190;
                  }

                  goto LABEL_189;
                }

                if (v178)
                {
                  if (v173 == 1)
                  {
                    if (v175)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_190;
                  }

LABEL_189:
                  String.init(_cocoaString:)();
LABEL_190:
                  v122 = objc_allocWithZone(NSError);
                  v123 = String._bridgeToObjectiveCImpl()();

                  v124 = [v122 initWithDomain:v123 code:4865 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v125 = [v124 domain];
                  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)(v125);
                  v128 = v127;

                  if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v128 == v129)
                  {
LABEL_192:

                    goto LABEL_257;
                  }

                  v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v130)
                  {
                    goto LABEL_257;
                  }

LABEL_265:
                  __break(1u);
                  goto LABEL_266;
                }

LABEL_188:

                goto LABEL_190;
              }

              v117 = _objc_getTaggedPointerTag(v115);
              if (!v117)
              {
LABEL_180:
                v172 = 0;
                _CFIndirectTaggedPointerStringGetContents();
                _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v121)
                {
                  [(__CFString *)v116 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  goto LABEL_190;
                }

                goto LABEL_188;
              }

              if (v117 != 22)
              {
                if (v117 == 2)
                {
                  MEMORY[0x1EEE9AC00](v117);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_190;
                }

                goto LABEL_169;
              }

              result = [(__CFString *)v116 UTF8String];
              if (result)
              {
                String.init(utf8String:)(result);
                if (v120)
                {
                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_180;
              }

LABEL_272:
              __break(1u);
              goto LABEL_273;
            }

LABEL_262:
            __break(1u);
            goto LABEL_263;
          }

LABEL_261:
          __break(1u);
          goto LABEL_262;
        }
      }

      else
      {
        v39 = v24;
        v40 = String.init(_nativeStorage:)();
        if (v41)
        {
          v26 = v40;
          v28 = v41;

          goto LABEL_162;
        }

        v178 = [(__CFString *)v39 length];
        if (v178)
        {
          goto LABEL_160;
        }
      }

      v26 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_162;
    }

    result = [(__CFString *)v24 UTF8String];
    if (result)
    {
      v45 = String.init(utf8String:)(result);
      if (v46)
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_57:
      v172 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v45 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v46)
      {
        [(__CFString *)v24 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v26 = v175;
        v28 = v176;
        goto LABEL_162;
      }

LABEL_58:
      v26 = v45;
      v28 = v46;

      goto LABEL_162;
    }

LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  if (v174 == 16)
  {
    *&v2[OBJC_IVAR_____NSConcreteUUID__storage] = *v4;
    v169.receiver = v2;
    v169.super_class = type metadata accessor for __NSConcreteUUID();
    v5 = objc_msgSendSuper2(&v169, sel_init);
LABEL_16:
    v17 = v5;

    return v17;
  }

  if ([objc_opt_self() _compatibilityBehavior])
  {
    v15 = &v2[OBJC_IVAR_____NSConcreteUUID__storage];
    v16 = type metadata accessor for __NSConcreteUUID();
    *v15 = 0;
    *(v15 + 1) = 0;
    v170.receiver = v2;
    v170.super_class = v16;
    v5 = objc_msgSendSuper2(&v170, sel_init);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v29 = swift_allocObject();
  v30 = _objc_isTaggedPointer(@"NSDebugDescription");
  v31 = @"NSDebugDescription";
  v32 = v31;
  if (!v30)
  {
    goto LABEL_40;
  }

  v33 = _objc_getTaggedPointerTag(v31);
  switch(v33)
  {
    case 0:
      goto LABEL_115;
    case 0x16:
      result = [(__CFString *)v32 UTF8String];
      if (result)
      {
        v85 = String.init(utf8String:)(result);
        if (v86)
        {
          goto LABEL_116;
        }

        __break(1u);
LABEL_115:
        v172 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v85 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v86)
        {
          [(__CFString *)v32 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v34 = v175;
          v36 = v176;
          goto LABEL_197;
        }

LABEL_116:
        v34 = v85;
        v36 = v86;

        goto LABEL_197;
      }

LABEL_273:
      __break(1u);
      goto LABEL_274;
    case 2:
      MEMORY[0x1EEE9AC00](v33);
      v34 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v36 = v35;

      goto LABEL_197;
  }

LABEL_40:
  LOBYTE(v175) = 0;
  v178 = 0;
  LOBYTE(v172) = 0;
  v173 = 0;
  if (!__CFStringIsCF())
  {
    v42 = v32;
    v43 = String.init(_nativeStorage:)();
    if (v44)
    {
      v34 = v43;
      v36 = v44;

      goto LABEL_197;
    }

    v178 = [(__CFString *)v42 length];
    if (v178)
    {
      goto LABEL_195;
    }

LABEL_61:
    v34 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_197;
  }

  if (!v178)
  {

    goto LABEL_61;
  }

  if (v173 == 1)
  {
    if (v175)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v103 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_196;
  }

LABEL_195:
  v103 = String.init(_cocoaString:)();
LABEL_196:
  v34 = v103;
  v36 = v104;
LABEL_197:
  v29[4] = v34;
  v29[5] = v36;
  v29[9] = MEMORY[0x1E69E6158];
  v29[6] = 0xD000000000000027;
  v29[7] = 0x80000001814878C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v131 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)((v29 + 4), &v178);
  swift_setDeallocating();

  outlined destroy of (String, Any)((v29 + 4));
  swift_deallocClassInstance();
  v132 = v178;
  v133 = v179;
  v134 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v179);
  v136 = v135;

  if (v136)
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v131[(v134 >> 6) + 8] |= 1 << v134;
  v137 = (v131[6] + 16 * v134);
  *v137 = v132;
  v137[1] = v133;
  outlined init with take of Any(v180, (v131[7] + 32 * v134));
  v138 = v131[2];
  v56 = __OFADD__(v138, 1);
  v139 = v138 + 1;
  if (v56)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v131[2] = v139;
  v140 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v141 = @"NSCocoaErrorDomain";
  v142 = v141;
  if ((v140 & 1) == 0)
  {
LABEL_204:
    LOBYTE(v175) = 0;
    v178 = 0;
    LOBYTE(v172) = 0;
    v173 = 0;
    if (!__CFStringIsCF())
    {
      v144 = v142;
      String.init(_nativeStorage:)();
      if (v145 || (v178 = [(__CFString *)v144 length]) == 0)
      {

        goto LABEL_225;
      }

LABEL_224:
      String.init(_cocoaString:)();
      goto LABEL_225;
    }

    if (v178)
    {
      if (v173 == 1)
      {
        if (v175)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_225;
      }

      goto LABEL_224;
    }

LABEL_223:

    goto LABEL_225;
  }

  v143 = _objc_getTaggedPointerTag(v141);
  if (!v143)
  {
LABEL_215:
    v172 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v147)
    {
      [(__CFString *)v142 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_225;
    }

    goto LABEL_223;
  }

  if (v143 == 22)
  {
    result = [(__CFString *)v142 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v146)
      {
        goto LABEL_223;
      }

      __break(1u);
      goto LABEL_215;
    }

LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  if (v143 != 2)
  {
    goto LABEL_204;
  }

  MEMORY[0x1EEE9AC00](v143);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_225:
  v148 = objc_allocWithZone(NSError);
  v149 = String._bridgeToObjectiveCImpl()();

  v150 = [v148 initWithDomain:v149 code:4864 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v151 = [v150 domain];
  if (!v151)
  {
    goto LABEL_247;
  }

  v152 = v151;
  v153 = _objc_isTaggedPointer(v151);
  v154 = v152;
  v155 = v154;
  if ((v153 & 1) == 0)
  {
LABEL_231:
    LOBYTE(v175) = 0;
    v178 = 0;
    LOBYTE(v172) = 0;
    v173 = 0;
    if (__CFStringIsCF())
    {
      v157 = v178;
      if (!v178)
      {

        v159 = 0xE000000000000000;
        goto LABEL_254;
      }

      if (v173 == 1)
      {
        if (v175)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v165 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_252;
      }

LABEL_251:
      v165 = String.init(_cocoaString:)();
LABEL_252:
      v157 = v165;
      v159 = v166;
      goto LABEL_253;
    }

    v160 = v155;
    v161 = String.init(_nativeStorage:)();
    if (v162)
    {
      v157 = v161;
      v159 = v162;

      goto LABEL_254;
    }

    v178 = [v160 length];
    if (v178)
    {
      goto LABEL_251;
    }

LABEL_247:
    v157 = 0;
    v159 = 0xE000000000000000;
    goto LABEL_254;
  }

  v156 = _objc_getTaggedPointerTag(v154);
  if (!v156)
  {
    goto LABEL_242;
  }

  if (v156 != 22)
  {
    if (v156 == 2)
    {
      MEMORY[0x1EEE9AC00](v156);
      v157 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v159 = v158;

LABEL_254:
      if (v157 != static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") || v159 != v167)
      {
        v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v168)
        {
          goto LABEL_257;
        }

LABEL_266:
        __break(1u);
      }

      goto LABEL_192;
    }

    goto LABEL_231;
  }

  result = [v155 UTF8String];
  if (result)
  {
    v163 = String.init(utf8String:)(result);
    if (v164)
    {
      goto LABEL_243;
    }

    __break(1u);
LABEL_242:
    v172 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v163 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v164)
    {
      [v155 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v157 = v175;
      v159 = v176;
      goto LABEL_253;
    }

LABEL_243:
    v157 = v163;
    v159 = v164;

LABEL_253:
    goto LABEL_254;
  }

LABEL_275:
  __break(1u);
  return result;
}

void *_NSXPCSerializationAddData(uint64_t a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  v5 = Length;
  if (Length < 15)
  {
    v6 = Length | 0x40;
    _reserveSpace(a1, 1);
    *(*(a1 + 8216) + (*(a1 + 8200))++) = v6;
  }

  else
  {
    _reserveSpace(a1, 1);
    *(*(a1 + 8216) + (*(a1 + 8200))++) = 79;
    _NSXPCSerializationAddInteger(a1, v5);
  }

  BytePtr = CFDataGetBytePtr(theData);
  v8 = CFDataGetLength(theData);
  _reserveSpace(a1, v8);
  result = memmove((*(a1 + 8216) + *(a1 + 8200)), BytePtr, v8);
  *(a1 + 8200) += v8;
  return result;
}

unint64_t type metadata accessor for NSUUID()
{
  result = lazy cache variable for type metadata for NSUUID;
  if (!lazy cache variable for type metadata for NSUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUUID);
  }

  return result;
}

unint64_t _NSXPCSerializationReferenceForObject(uint64_t *a1, unint64_t *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  if (_getReferenceAtMarker(a1, &v4, v2, v5))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _NSXPCSerializationTypeForReference(void *a1, unint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a2 || !_getLastByteOfValueIncludingMarker(a1, a2, v8))
  {
    return 255;
  }

  v4 = *(*a1 + a2) & 0xF0;
  if ((*(*a1 + a2) & 0xB0) == 0x80 || v4 == 176 || v4 == 224)
  {
    return 0;
  }

  else
  {
    return *(*a1 + a2) & 0xF0;
  }
}

void type metadata accessor for NSRunLoopMode(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t closure #1 in String._compressingSlashes()(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v5 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 4 * v4;
  v11 = 4 << v5;
  v33 = a4 & 0xFFFFFFFFFFFFFFLL;
  v30 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
LABEL_9:
    v13 = result & 0xC;
    v14 = result;
    if (v13 == v11)
    {
      v18 = result;
      v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
      result = v18;
    }

    v15 = v14 >> 16;
    if (v14 >> 16 >= v4)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ((a4 & 0x1000000000000000) == 0)
    {
      break;
    }

    v28 = result;
    v17 = String.UTF8View._foreignSubscript(position:)();
    result = v28;
    if (v13 == v11)
    {
      goto LABEL_22;
    }

LABEL_18:
    if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v4 <= result >> 16)
    {
      goto LABEL_52;
    }

    result = String.UTF8View._foreignIndex(after:)();
    if (!v8)
    {
      goto LABEL_25;
    }

LABEL_29:
    while (v17 == 47)
    {
      if (v10 == result >> 14)
      {
        return v9;
      }

      v20 = result & 0xC;
      v21 = result;
      if (v20 == v11)
      {
        v25 = result;
        v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
        result = v25;
      }

      v22 = v21 >> 16;
      if (v21 >> 16 >= v4)
      {
        goto LABEL_51;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v26 = result;
        v17 = String.UTF8View._foreignSubscript(position:)();
        result = v26;
        if (v20 != v11)
        {
          goto LABEL_40;
        }

LABEL_44:
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_41:
        if (v4 <= result >> 16)
        {
          goto LABEL_52;
        }

        result = String.UTF8View._foreignIndex(after:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v31 = a3;
          v32 = v33;
          v23 = &v31;
        }

        else
        {
          v23 = v30;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v24 = result;
            v23 = _StringObject.sharedUTF8.getter();
            result = v24;
          }
        }

        v17 = *(v23 + v22);
        if (v20 == v11)
        {
          goto LABEL_44;
        }

LABEL_40:
        if ((a4 & 0x1000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_28:
        result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      }
    }

    *(a1 + v9) = v17;
    v19 = __OFADD__(v9++, 1);
    if (v19)
    {
      goto LABEL_54;
    }

    v8 = 0;
    if (v10 == result >> 14)
    {
      return v9;
    }
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v31 = a3;
    v32 = v33;
    v16 = &v31;
  }

  else
  {
    v16 = v30;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v27 = result;
      v16 = _StringObject.sharedUTF8.getter();
      result = v27;
    }
  }

  v17 = *(v16 + v15);
  if (v13 != v11)
  {
    goto LABEL_18;
  }

LABEL_22:
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  result = (result & 0xFFFFFFFFFFFF0000) + 65540;
  if (v8)
  {
    goto LABEL_29;
  }

LABEL_25:
  *(a1 + v9) = v17;
  v19 = __OFADD__(v9++, 1);
  if (!v19)
  {
    v8 = v17 == 47;
    if (v10 == result >> 14)
    {
      return v9;
    }

    goto LABEL_9;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = result;
  v5 = (result >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LODWORD(v5) = 1;
  }

  v6 = 11;
  if (v5)
  {
    v6 = 7;
  }

  v7 = v6 | (v2 << 16);
  v8 = 4 << v5;
  v9 = a2 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((v7 & 0xC) != v8)
    {
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, v4, a2);
    if (result < 0x4000)
    {
      break;
    }

    v7 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_12:
      v7 = (v7 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_17;
    }

LABEL_15:
    if (v2 < v7 >> 16)
    {
      goto LABEL_34;
    }

    v7 = String.UTF8View._foreignIndex(before:)();
LABEL_17:
    result = v7;
    if ((v7 & 0xC) == v8)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, v4, a2);
    }

    v11 = result >> 16;
    if (result >> 16 >= v2)
    {
      goto LABEL_33;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = v4;
      v13[1] = v9;
      result = *(v13 + v11);
    }

    else
    {
      v12 = v10;
      if ((v4 & 0x1000000000000000) == 0)
      {
        v12 = _StringObject.sharedUTF8.getter();
      }

      result = *(v12 + v11);
    }

    if (result != 47)
    {
      return v7;
    }

    if (v7 < 0x4000)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = 0;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v8 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v26 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a3 & 0xFFFFFFFFFFFFFFLL;
  v10 = a1 + 32;
  result = 15;
  while (1)
  {
    if (4 * v7 == result >> 14)
    {
      v23 = *(a1 + 16);
      if (v23 == v6)
      {
        return 1;
      }

      if (v6 >= v23)
      {
        goto LABEL_35;
      }

      return 0;
    }

    v12 = result & 0xC;
    v13 = result;
    if (v12 == v9)
    {
      v17 = result;
      v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
      result = v17;
    }

    v14 = v13 >> 16;
    if (v13 >> 16 >= v7)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v25 = result;
      v16 = String.UTF8View._foreignSubscript(position:)();
      result = v25;
      if (v12 != v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v28[0] = a2;
        v28[1] = v27;
        v15 = v28;
      }

      else
      {
        v15 = v26;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v24 = result;
          v15 = _StringObject.sharedUTF8.getter();
          result = v24;
        }
      }

      v16 = *(v15 + v14);
      if (v12 != v9)
      {
LABEL_17:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_18:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_23;
    }

LABEL_21:
    if (v7 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_23:
    v18 = *(a1 + 16);
    v19 = v6 >= v18;
    v20 = v6 == v18;
    v21 = v6 == v18;
    if (v20)
    {
      return v21;
    }

    if (v19)
    {
      goto LABEL_33;
    }

    v22 = *(v10 + v6++);
    if (v22 != v16)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

Swift::String __swiftcall String._compressingSlashes()()
{
  if ((v1 & 0x1000000000000000) == 0)
  {
    v2 = HIBYTE(v1) & 0xE;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = v0 & 0xFFFFFFFFFFFELL;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = v0;
    v10 = v1;

    v3 = v9;
    v4 = v10;
    goto LABEL_9;
  }

  v5 = v0;
  v6 = v1;
  v7 = String.UTF8View._foreignCount()();
  v1 = v6;
  v8 = v7;
  v0 = v5;
  if (v8 <= 1)
  {
    goto LABEL_8;
  }

  String.UTF8View._foreignCount()();
  v0 = v5;
LABEL_5:
  MEMORY[0x1EEE9AC00](v0);
  v3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
LABEL_9:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String._droppingTrailingSlashes.getter(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    specialized BidirectionalCollection.lastIndex(where:)(a1, a2);
    if (v4)
    {
      return 47;
    }

    else
    {
      String.index(after:)();
      v5 = String.subscript.getter();
      v2 = MEMORY[0x1865CAE80](v5);
    }
  }

  else
  {
  }

  return v2;
}

unint64_t specialized Collection.suffix(from:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void _NSInitializePlatform()
{
  if ((_NSInitializePlatform_inited & 1) == 0)
  {
    _NSInitializePlatform_inited = 1;
    __CFInitialize();
    v0 = getenv("NSDebugEnabled");
    if (v0 && (*v0 | 0x20) == 0x79)
    {
      NSDebugEnabled = 1;
    }

    v1 = getenv("NSZombieEnabled");
    if (v1 && (*v1 | 0x20) == 0x79)
    {
      NSZombieEnabled = 1;
    }

    v2 = getenv("NSDeallocateZombies");
    if (v2 && (*v2 | 0x20) == 0x79)
    {
      NSDeallocateZombies = 1;
    }

    v3 = getenv("NSDisableAutoreleasePoolCache");
    if (v3 && (*v3 | 0x20) == 0x79)
    {
      _NSDoAPCache = 0;
    }

    __NSSetCStringCharToUnichar(0);
    _NSToDoAtProcessStart();
    _os_log_set_nscf_formatter();
    v4 = getenv("NSUnbufferedIO");
    if (v4 && (*v4 | 0x20) == 0x79)
    {
      setvbuf(*MEMORY[0x1E69E9858], 0, 2, 0);
      setvbuf(*MEMORY[0x1E69E9848], 0, 2, 0);
    }

    +[NSThread currentThread];
    _NSSetupDispatchDataBridge();
    [+[NSProcessInfo processInfo](NSProcessInfo arguments];
    if (MEMORY[0xFFFFFC342])
    {
      kdebug_trace();
      v5 = dlopen("/System/Cryptexes/Supplemental/Frameworks/ERFoundationExtension.dylib", 5);
      if (v5)
      {
        dlclose(v5);
      }

      kdebug_trace();
    }
  }
}

void __NSSetCStringCharToUnichar(uint64_t (*a1)(uint64_t a1))
{
  if (_NSCStringCharToUnicharTable)
  {
    v2 = _NSCStringCharToUnichar == a1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (_NSCStringCharToUnicharTable != MEMORY[0x1E695E0B0] && _NSCStringCharToUnicharTable != MEMORY[0x1E695E0B8] && _NSCStringCharToUnicharTable != 0)
    {
      free(_NSCStringCharToUnicharTable);
    }

    v5 = MEMORY[0x1E695E0B0];
    if (a1 && a1 != __NSASCIICharToUnichar)
    {
      if (a1 == __NSCharToUnicharCFWrapper && _NSDefaultStringEncoding == 30)
      {
        v5 = MEMORY[0x1E695E0B8];
      }

      else
      {
        v6 = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
        v7 = v5[13];
        v6[12] = v5[12];
        v6[13] = v7;
        v8 = v5[15];
        v6[14] = v5[14];
        v6[15] = v8;
        v9 = v5[9];
        v6[8] = v5[8];
        v6[9] = v9;
        v10 = v5[11];
        v6[10] = v5[10];
        v6[11] = v10;
        v11 = v5[5];
        v6[4] = v5[4];
        v6[5] = v11;
        v12 = v5[7];
        v6[6] = v5[6];
        v6[7] = v12;
        v13 = v5[1];
        *v6 = *v5;
        v6[1] = v13;
        v14 = v5[2];
        v15 = v5[3];
        v16 = 128;
        v6[2] = v14;
        v6[3] = v15;
        do
        {
          *(v6 + v16) = a1(v16);
          ++v16;
        }

        while (v16 != 256);
        v5 = v6;
      }
    }

    _NSCStringCharToUnicharTable = v5;
  }

  _NSCStringCharToUnichar = a1;
}

uint64_t closure #1 in _ProcessInfo.arguments.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    *a2 = v3;
  }

  v4 = a1;
  v6 = static CommandLine.arguments.getter();
  if (!_CFProcessPath())
  {
LABEL_9:
    *(v4 + 16) = v6;
    *a2 = v6;
  }

  v7 = String.init(cString:)();
  v9 = String.standardizingPath.getter(v7, v8);
  v11 = v10;

  if (!*(v6 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_181218E20;
    *(v6 + 32) = v9;
    *(v6 + 40) = v11;
    goto LABEL_9;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v6 + 16))
    {
LABEL_7:
      *(v6 + 32) = v9;
      *(v6 + 40) = v11;

      goto LABEL_9;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    if (*(result + 16))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized StringProtocol._hasDotDotComponent()(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{

  v8 = Substring.UTF8View.distance(from:to:)();

  if (v8 < 2)
  {
    return 0;
  }

  v9 = a2 >> 14;
  v10 = a1 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    return 0;
  }

  LOBYTE(v12) = 0;
  v13 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v15;
  while (1)
  {
    v19 = a1 & 0xC;
    result = a1;
    if (v19 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a3, a4);
    }

    if (result >> 14 < v10 || result >> 14 >= v9)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v21 = result;
      if (v19 != v14)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v23[0] = a3;
        v23[1] = a4 & 0xFFFFFFFFFFFFFFLL;
        v21 = *(v23 + v20);
        if (v19 != v14)
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v21 = *(result + v20);
        if (v19 != v14)
        {
LABEL_35:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_39;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a3, a4);
    a1 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_36:
      a1 = (a1 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_41;
    }

LABEL_39:
    if (v22 <= a1 >> 16)
    {
      goto LABEL_51;
    }

    a1 = String.UTF8View._foreignIndex(after:)();
LABEL_41:
    if (v12 <= 1u)
    {
      if (v21 == 47)
      {
        v16 = 0;
      }

      else
      {
        v16 = 3;
      }

      if (v21 == 46)
      {
        v16 = 1;
      }

      if (v21 == 47)
      {
        v17 = 0;
      }

      else
      {
        v17 = 3;
      }

      if (v21 == 46)
      {
        v18 = 2;
      }

      else
      {
        v18 = v17;
      }

      if (v12)
      {
        v12 = v18;
      }

      else
      {
        v12 = v16;
      }
    }

    else if (v12 == 2)
    {
      if (v21 == 47)
      {
        return 1;
      }

      v12 = 3;
    }

    else if (v21 == 47)
    {
      v12 = 0;
    }

    else
    {
      v12 = 3;
    }

    if (v9 == a1 >> 14)
    {
      return v12 == 2;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

objc_class *_NSToDoAtProcessStart()
{
  __NSCFStringClass = objc_lookUpClass("__NSCFString");
  __NSMutableStringClass = objc_lookUpClass("NSMutableString");
  __NSStringClass = objc_lookUpClass("NSString");
  __NSConcreteValueClass = objc_lookUpClass("NSConcreteValue");
  __NSMutableStringClass = objc_lookUpClass("NSMutableString");
  class_setVersion(__NSStringClass, 1);
  class_setVersion(__NSMutableStringClass, 1);
  v0 = objc_lookUpClass("NSTimeZone");
  class_setVersion(v0, 0);
  v1 = objc_lookUpClass("NSCountedSet");
  class_setVersion(v1, 1);
  v2 = objc_lookUpClass("NSNumberFormatter");
  class_setVersion(v2, 4);
  v3 = objc_lookUpClass("NSDateFormatter");
  class_setVersion(v3, 41);
  v4 = objc_lookUpClass("NSAffineTransform");
  class_setVersion(v4, 1);

  v5 = objc_lookUpClass("NSError");
  result = objc_lookUpClass("__SwiftNativeNSError");
  if (result)
  {

    return class_setSuperclass(result, v5);
  }

  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t _NSDefaultCStringEncoding()
{
  SystemEncoding = CFStringGetSystemEncoding();
  v1 = CFStringConvertEncodingToNSStringEncoding(SystemEncoding);
  _NSDefaultStringEncoding = v1;
  if (*MEMORY[0x1E695E0A0])
  {
    _NSCStringEncoding = v1;
    __NSSetCStringCharToUnichar(__NSCharToUnicharCFWrapper);
    __NSDefaultStringEncodingFullyInited = 1;
  }

  else
  {
    __NSDefaultStringEncodingFullyInited = CFStringGetSystemEncoding() != 0;
    _NSCStringEncoding = 1;
    __NSSetCStringCharToUnichar(__NSASCIICharToUnichar);
  }

  return _NSDefaultStringEncoding;
}

void _NSSetupDispatchDataBridge()
{
  if (_NSSetupDispatchDataBridge_onceToken != -1)
  {
    dispatch_once(&_NSSetupDispatchDataBridge_onceToken, &__block_literal_global_94);
  }
}

id one-time initialization function for _shared()
{
  result = [objc_allocWithZone(type metadata accessor for _NSSwiftProcessInfo()) init];
  static _NSSwiftProcessInfo._shared = result;
  return result;
}

id _NSSwiftProcessInfo.init()()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA19_NSSwiftProcessInfoC0C0V_GMd);
  v2 = swift_allocObject();
  *(v2 + 76) = 0;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  *(v2 + 72) = 0;
  *&v0[OBJC_IVAR____NSSwiftProcessInfo__state] = v2;
  if (one-time initialization token for processInfo != -1)
  {
    swift_once();
  }

  *&v0[OBJC_IVAR____NSSwiftProcessInfo__processInfo] = static _ProcessInfo.processInfo;
  v4.receiver = v0;
  v4.super_class = ObjectType;

  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t one-time initialization function for processInfo()
{
  type metadata accessor for _ProcessInfo();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA12_ProcessInfoC0C0V_GMd);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySSSg_GMd);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(v0 + 24) = result;
  static _ProcessInfo.processInfo = v0;
  return result;
}

unint64_t String.standardizingPath.getter(unint64_t a1, unint64_t a2)
{
  if ((specialized Collection.first.getter(a1, a2) & 0x1FF) != 0x7E)
  {
    goto LABEL_23;
  }

  result = specialized Collection<>.firstIndex(of:)(47, a1, a2);
  if ((v5 & 1) == 0)
  {
    v8 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = v6 << 16;
  if ((a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0)
  {
    v8 = v7 | 7;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    result = 65540;
    goto LABEL_16;
  }

  v8 = v7 | 0xB;
LABEL_8:
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

  result = String.UTF8View._foreignIndex(after:)();
LABEL_16:
  if (v8 >> 14 == result >> 14)
  {
    static String.homeDirectoryPath()();
LABEL_27:
    specialized Collection.suffix(from:)(v8, a1, a2);
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    goto LABEL_28;
  }

  if (v8 >> 14 >= result >> 14)
  {
    v10 = String.subscript.getter();
    MEMORY[0x1865CAE80](v10);

    if (!issetugid() && getenv("CFFIXED_USER_HOME"))
    {

      v14 = String.init(cString:)();
      goto LABEL_26;
    }

    v11 = specialized static Platform.homeDirectory(forUserName:)();
    v13 = v12;

    if (v13)
    {
      v14 = v11;
LABEL_26:
      String.standardizingPath.getter(v14);

      goto LABEL_27;
    }

LABEL_23:

LABEL_28:
    v15 = String._standardizingPath.getter();

    return v15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t String._standardizingPath.getter()
{
  v0 = String._compressingSlashes()();
  v1 = String._droppingTrailingSlashes.getter(v0._countAndFlagsBits, v0._object);
  v3 = v2;

  if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of one-time initialization function for NETWORK_PREFIX, v1, v3))
  {
    v4 = specialized Collection<>.firstIndex(of:)(47, v1, v3);
    if (v5)
    {
      v6 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v6 = v1;
      }

      v7 = v6 << 16;
      if ((v3 & 0x1000000000000000) == 0 || (v1 & 0x800000000000000) != 0)
      {
        v4 = v7 | 7;
      }

      else
      {
        v4 = v7 | 0xB;
      }
    }
  }

  else
  {
    v4 = 15;
  }

  v8 = specialized Collection.suffix(from:)(v4, v1, v3);
  hasDotDot = specialized StringProtocol._hasDotDotComponent()(v8, v9, v10, v11);

  if (hasDotDot)
  {
    v13 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v13 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      v14 = specialized String.withFileSystemRepresentation<A>(_:)(v1, v3, v1, v3);
      v16 = v15;

      if (v16)
      {

        v1 = v14;
        v3 = v16;
      }
    }
  }

  v17 = String._removingDotSegments.getter(v1, v3);
  v19 = v18;

  if (one-time initialization token for _automountPrefixes != -1)
  {
LABEL_44:
    swift_once();
  }

  v20 = 0;
  v21 = static String._automountPrefixes;
  v22 = *(static String._automountPrefixes + 2);
  v23 = static String._automountPrefixes + 32;
  do
  {
    if (v22 == v20)
    {
      return v17;
    }

    if (v20 >= *(v21 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v24 = *&v23[8 * v20++];
    result = specialized Sequence<>.starts<A>(with:)(v24, v17, v19);
  }

  while ((result & 1) == 0);
  v26 = *(v24 + 16);
  v27 = v26 - 1;
  if ((v19 & 0x1000000000000000) != 0)
  {
    v29 = MEMORY[0x1865CB180](15, v27, v17, v19);
LABEL_26:
    v42 = v17;
    v20 = specialized Collection.suffix(from:)(v29, v17, v19);
    v21 = v30;
    v17 = v31;
    v24 = v32;
    if (one-time initialization token for _automountExclusionList == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_47;
  }

  if (!v26)
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_27:
    v33 = static String._automountExclusionList;
    v34 = *(static String._automountExclusionList + 2);
    if (!v34)
    {
LABEL_35:
      v38 = [objc_opt_self() defaultManager];
      MEMORY[0x1865CAE80](v20, v21, v17, v24);
      v39 = String._bridgeToObjectiveCImpl()();

      v40 = [v38 fileExistsAtPath_];

      swift_unknownObjectRelease();
      if (v40)
      {
        v41 = MEMORY[0x1865CAE80](v20, v21, v17, v24);

        return v41;
      }

LABEL_40:

      return v42;
    }

    v35 = 0;
    v19 = static String._automountExclusionList + 32;
    while (v35 < v33[2])
    {
      if (specialized Sequence<>.starts<A>(with:)(*(v19 + 8 * v35), v20, v21, v17, v24))
      {

        v36 = Substring.UTF8View.index(_:offsetBy:)();

        if (!((v36 ^ v21) >> 14))
        {

          goto LABEL_40;
        }

        v37 = Substring.UTF8View.subscript.getter();

        if (v37 == 47)
        {
          goto LABEL_40;
        }
      }

      if (v34 == ++v35)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_43;
  }

  v28 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v28 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 >= v27)
  {
    v29 = (v27 << 16) | 4;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t String._removingDotSegments.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a2) & 0xF;
  }

  else
  {
    result = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignCount()();
    }

    MEMORY[0x1EEE9AC00](result);
    return String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  }

  return result;
}

unint64_t closure #1 in String._removingDotSegments.getter(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 4 * v4;
  v11 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v42 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v43 = a4 & 0xFFFFFFFFFFFFFFLL;
  v40 = a1 - 1;
  result = 15;
  v45 = 4 * v4;
  while (1)
  {
    v15 = result & 0xC;
    v16 = result;
    if (v15 == v12)
    {
      v21 = result;
      v22 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
      v10 = v45;
      v16 = v22;
      result = v21;
    }

    v17 = v16 >> 16;
    if (v16 >> 16 >= v4)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v39 = result;
      v23 = String.UTF8View._foreignSubscript(position:)();
      v10 = v45;
      v20 = v23;
      result = v39;
      if (v15 != v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v44[0] = a3;
        v44[1] = v43;
        v18 = v44;
      }

      else
      {
        v18 = v42;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v38 = result;
          v19 = _StringObject.sharedUTF8.getter();
          v10 = v45;
          v18 = v19;
          result = v38;
        }
      }

      v20 = *(v18 + v17);
      if (v15 != v12)
      {
LABEL_20:
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    v10 = v45;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_21:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_26;
    }

LABEL_24:
    if (v4 <= result >> 16)
    {
      goto LABEL_114;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v10 = v45;
LABEL_26:
    if (v8 > 2u)
    {
      break;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        if (v20 == 46)
        {
          v8 = 2;
          goto LABEL_10;
        }

        if (v20 == 47)
        {
LABEL_58:
          v8 = 0;
          goto LABEL_10;
        }

        v24 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_126;
        }

        if (v24 < v9)
        {
          goto LABEL_132;
        }

        if (v7 + v24 + 1 < 2)
        {
          goto LABEL_134;
        }

        v25 = (v9 + a1);
        if (!a1)
        {
          v25 = 0;
        }

        *v25 = (v20 << 8) | 0x2E;
        v14 = __OFADD__(v9, 2);
        v9 += 2;
        if (v14)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v20 == 47)
        {
          goto LABEL_58;
        }

        v30 = v9 + 2;
        if (__OFADD__(v9, 2))
        {
          goto LABEL_118;
        }

        if (v30 < v9)
        {
          goto LABEL_120;
        }

        if (v7 + v30 + 1 < 3)
        {
          goto LABEL_122;
        }

        v31 = v9 + a1;
        if (!a1)
        {
          v31 = 0;
        }

        *v31 = 11822;
        *(v31 + 2) = v20;
        v14 = __OFADD__(v9, 3);
        v9 += 3;
        if (v14)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      if (v20 == 46)
      {
        v8 = 1;
        goto LABEL_10;
      }

      if (v20 == 47)
      {
        goto LABEL_70;
      }

      *(a1 + v9) = v20;
      v14 = __OFADD__(v9++, 1);
      if (v14)
      {
        goto LABEL_128;
      }
    }

LABEL_9:
    v8 = 6;
LABEL_10:
    v7 = -v9;
    if (v10 == result >> 14)
    {
      goto LABEL_99;
    }
  }

  if (v8 > 4u)
  {
    if (v8 == 5)
    {
      if (v20 == 47)
      {
        if (v9 < 0)
        {
          goto LABEL_117;
        }

        while (v9)
        {
          v26 = v9 - 1;
          v27 = *(v40 + v9--);
          if (v27 == 47)
          {
            v8 = 3;
            v9 = v26;
            goto LABEL_10;
          }
        }

        goto LABEL_70;
      }

      v32 = v9 + 3;
      if (__OFADD__(v9, 3))
      {
        goto LABEL_116;
      }

      if (v32 < v9)
      {
        goto LABEL_119;
      }

      if (v7 + v32 + 1 < 4)
      {
        goto LABEL_121;
      }

      v33 = (v9 + a1);
      if (!a1)
      {
        v33 = 0;
      }

      *v33 = (v20 << 24) | 0x2E2E2F;
      v14 = __OFADD__(v9, 4);
      v9 += 4;
      if (v14)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v20 == 47)
      {
        goto LABEL_70;
      }

      *(a1 + v9) = v20;
      v14 = __OFADD__(v9++, 1);
      if (v14)
      {
        goto LABEL_115;
      }
    }

    goto LABEL_9;
  }

  if (v8 != 3)
  {
    if (v20 == 46)
    {
      v8 = 5;
      goto LABEL_10;
    }

    if (v20 == 47)
    {
      goto LABEL_70;
    }

    v28 = v9 + 2;
    if (__OFADD__(v9, 2))
    {
      goto LABEL_125;
    }

    if (v28 < v9)
    {
      goto LABEL_131;
    }

    if (v7 + v28 + 1 < 3)
    {
      goto LABEL_135;
    }

    v29 = v9 + a1;
    if (!a1)
    {
      v29 = 0;
    }

    *v29 = 11823;
    *(v29 + 2) = v20;
    v14 = __OFADD__(v9, 3);
    v9 += 3;
    if (v14)
    {
      goto LABEL_136;
    }

    goto LABEL_9;
  }

  if (v20 == 46)
  {
    v8 = 4;
    goto LABEL_10;
  }

  if (v20 == 47)
  {
    *(a1 + v9) = 47;
    v14 = __OFADD__(v9++, 1);
    if (v14)
    {
      goto LABEL_127;
    }

LABEL_70:
    v8 = 3;
    goto LABEL_10;
  }

  v34 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_129;
  }

  if (v34 < v9)
  {
    goto LABEL_130;
  }

  if (v7 + v34 + 1 < 2)
  {
    goto LABEL_133;
  }

  v35 = (v9 + a1);
  if (!a1)
  {
    v35 = 0;
  }

  *v35 = (v20 << 8) | 0x2F;
  v14 = __OFADD__(v9, 2);
  v9 += 2;
  if (!v14)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_99:
  if ((v8 - 3) >= 2)
  {
    if (v8 != 5)
    {
      return v9;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9)
      {
        v36 = v9 - 1;
        v37 = *(v40 + v9--);
        if (v37 == 47)
        {
          goto LABEL_111;
        }
      }

      v36 = 0;
LABEL_111:
      *(a1 + v36) = 47;
      v9 = v36 + 1;
      if (!__OFADD__(v36, 1))
      {
        return v9;
      }

LABEL_139:
      __break(1u);
      return result;
    }

LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  *(a1 + v9) = 47;
  v14 = __OFADD__(v9++, 1);
  if (!v14)
  {
    return v9;
  }

  __break(1u);
  return 0;
}

uint64_t one-time initialization function for _automountPrefixes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays5UInt8VGGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18121D6B0;
  *(v0 + 32) = specialized _copyCollectionToContiguousArray<A>(_:)(0xD000000000000017, 0x8000000181486800);
  *(v0 + 40) = specialized _copyCollectionToContiguousArray<A>(_:)(0x7475612F7261762FLL, 0xEF2F746E756F6D6FLL);
  result = specialized _copyCollectionToContiguousArray<A>(_:)(0x657461766972702FLL, 0xE90000000000002FLL);
  *(v0 + 48) = result;
  static String._automountPrefixes = v0;
  return result;
}

void *one-time initialization function for _automountExclusionList()
{
  result = closure #1 in variable initialization expression of static String._automountExclusionList();
  static String._automountExclusionList = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static String._automountExclusionList()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays5UInt8VGGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1812DAA70;
  *(v0 + 32) = specialized _copyCollectionToContiguousArray<A>(_:)(0x6163696C7070412FLL, 0xED0000736E6F6974);
  *(v0 + 40) = specialized _copyCollectionToContiguousArray<A>(_:)(0x7972617262694C2FLL, 0xE800000000000000);
  *(v0 + 48) = specialized _copyCollectionToContiguousArray<A>(_:)(0x6D65747379532FLL, 0xE700000000000000);
  *(v0 + 56) = specialized _copyCollectionToContiguousArray<A>(_:)(0x73726573552FLL, 0xE600000000000000);
  *(v0 + 64) = specialized _copyCollectionToContiguousArray<A>(_:)(0x73656D756C6F562FLL, 0xE800000000000000);
  *(v0 + 72) = specialized _copyCollectionToContiguousArray<A>(_:)(1852400175, 0xE400000000000000);
  *(v0 + 80) = specialized _copyCollectionToContiguousArray<A>(_:)(0x7365726F632FLL, 0xE600000000000000);
  *(v0 + 88) = specialized _copyCollectionToContiguousArray<A>(_:)(1986356271, 0xE400000000000000);
  *(v0 + 96) = specialized _copyCollectionToContiguousArray<A>(_:)(1953525551, 0xE400000000000000);
  *(v0 + 104) = specialized _copyCollectionToContiguousArray<A>(_:)(0x657461766972702FLL, 0xE800000000000000);
  *(v0 + 112) = specialized _copyCollectionToContiguousArray<A>(_:)(0x6E6962732FLL, 0xE500000000000000);
  *(v0 + 120) = specialized _copyCollectionToContiguousArray<A>(_:)(1920169263, 0xE400000000000000);
  return v0;
}

unint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  result = a2;
  v9 = 0;
  v10 = a3 >> 14;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v13 = a2 >> 14;
  v29 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a5 & 0xFFFFFFFFFFFFFFLL;
  v14 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v14 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v14;
  while (1)
  {
    v15 = result >> 14;
    if (result >> 14 == v10)
    {
      v25 = *(a1 + 16);
      if (v25 == v9)
      {
        return 1;
      }

      if (v9 >= v25)
      {
        goto LABEL_37;
      }

      return 0;
    }

    v16 = result & 0xC;
    v17 = result;
    if (v16 == v12)
    {
      break;
    }

    if (v15 < v13)
    {
      goto LABEL_34;
    }

LABEL_9:
    if (v15 >= v10)
    {
      goto LABEL_34;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v27 = result;
      v19 = String.UTF8View._foreignSubscript(position:)();
      result = v27;
      if (v16 != v12)
      {
        goto LABEL_17;
      }
    }

    else if ((a5 & 0x2000000000000000) != 0)
    {
      v32[0] = a4;
      v32[1] = v30;
      v19 = *(v32 + (v17 >> 16));
      if (v16 != v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = v29;
      if ((a4 & 0x1000000000000000) == 0)
      {
        v28 = result;
        v18 = _StringObject.sharedUTF8.getter();
        result = v28;
      }

      v19 = *(v18 + (v17 >> 16));
      if (v16 != v12)
      {
LABEL_17:
        if ((a5 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_18:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_25;
    }

LABEL_23:
    if (v31 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_25:
    v20 = *(a1 + 16);
    v21 = v9 >= v20;
    v22 = v9 == v20;
    v23 = v9 == v20;
    if (v22)
    {
      return v23;
    }

    if (v21)
    {
      goto LABEL_35;
    }

    v24 = *(a1 + 32 + v9++);
    if (v24 != v19)
    {
      return v23;
    }
  }

  v26 = result;
  v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
  result = v26;
  v15 = v17 >> 14;
  if (v17 >> 14 >= v13)
  {
    goto LABEL_9;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation7JSONMapC5ValueOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SliceVySWGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE17LocalizationValueV14FormatArgumentVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys8DurationV10FoundationE15TimeFormatStyleV10AttributedV16PatternComponentVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation18PresentationIntentV0F4TypeVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8Dispatch0D4DataV10FoundationE6RegionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SliceVy8Dispatch0E4DataV10FoundationE6RegionVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySny19CollectionsInternal9BigStringV5IndexVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation10MorphologyV7PronounVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[288 * v8])
    {
      memmove(v12, v13, 288 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV14RecurrenceRuleV5MonthVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation22ICUNumberFormatterBaseC17AttributePositionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPys6UInt16VGSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentO9component_Si5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo5iovecVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV010_AttributeC0VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLV8TemplateV10ExpressionV7ElementVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SliceVySRys5UInt8VGGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

__CFNotificationCenter *__standardDefaultCenter_block_invoke()
{
  v0 = [NSNotificationCenter alloc];
  TaskCenter = _CFXNotificationGetTaskCenter();
  result = CFRetain(TaskCenter);
  v0->_impl = result;
  atomic_store(v0, &qword_1ED43F2E8);
  return result;
}

NSArray *__cdecl NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory directory, NSSearchPathDomainMask domainMask, BOOL expandTilde)
{
  v3 = _NSSearchPathsForDirectoryInDomain(directory, domainMask, expandTilde);
  if (qword_1ED43F230 != -1)
  {
    dispatch_once(&qword_1ED43F230, &__block_literal_global_33);
  }

  if (_MergedGlobals_11_0 == 1)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEC8]);

    return [v4 initWithArray:v3];
  }

  else
  {
    v6 = v3;
    return v3;
  }
}

id _NSSearchPathsForDirectoryInDomain(uint64_t a1, __int16 a2, char a3)
{
  *(swift_allocObject() + 16) = a3;
  specialized _copySequenceToContiguousArray<A>(_:)(a1, a2 & 0xC0F, closure #1 in _DarwinSearchPaths(for:in:expandTilde:)partial apply);

  v5 = _ContiguousArrayBuffer._asCocoaArray()();

  return v5;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(const char **__return_ptr, void *))
{
  v65[4] = *MEMORY[0x1E69E9840];
  started = sysdir_start_search_path_enumeration_private();
  v4 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  for (i = MEMORY[0x1E69E7CC0] + 32; ; i = (v60 + 2))
  {
    v60 = i;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v8 = MEMORY[0x1865D2880](started, v64);
      if (!v8)
      {
        goto LABEL_70;
      }

      started = v8;
      v9 = [objc_opt_self() defaultManager];
      v10 = [v9 stringWithFileSystemRepresentation:v64 length:strlen(v64)];

      if (!v10)
      {
        goto LABEL_30;
      }

      isTaggedPointer = _objc_isTaggedPointer(v10);
      v12 = v10;
      v13 = v12;
      if (!isTaggedPointer)
      {
        goto LABEL_19;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v12);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v17 = v16;

            goto LABEL_54;
          }

LABEL_19:
          LOBYTE(v62) = 0;
          v65[0] = 0;
          if (__CFStringIsCF())
          {
            if (!v65[0])
            {

LABEL_30:
              v15 = 0;
              v17 = 0xE000000000000000;
              goto LABEL_54;
            }
          }

          else
          {
            v27 = v13;
            v28 = String.init(_nativeStorage:)();
            if (v29)
            {
              v15 = v28;
              v17 = v29;

              goto LABEL_54;
            }

            v65[0] = [v27 length];
            if (!v65[0])
            {

              goto LABEL_30;
            }
          }

          v15 = String.init(_cocoaString:)();
          v17 = v39;
          goto LABEL_50;
        }

        v33 = [v13 UTF8String];
        if (!v33)
        {
          goto LABEL_77;
        }

        v34 = String.init(utf8String:)(v33);
        if (!v35)
        {
          goto LABEL_76;
        }
      }

      else
      {
        _CFIndirectTaggedPointerStringGetContents();
        v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v35)
        {
          [v13 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v15 = v62;
          v17 = v63;
          goto LABEL_50;
        }
      }

      v15 = v34;
      v17 = v35;

LABEL_50:
      goto LABEL_54;
    }

    v18 = swift_slowAlloc();
    v19 = MEMORY[0x1865D2880](started, v18);
    if (!v19)
    {
      goto LABEL_69;
    }

    started = v19;
    v20 = [objc_opt_self() defaultManager];
    v21 = [v20 stringWithFileSystemRepresentation:v18 length:strlen(v18)];

    if (!v21)
    {
      goto LABEL_32;
    }

    v22 = _objc_isTaggedPointer(v21);
    v23 = v21;
    v24 = v23;
    if (!v22)
    {
LABEL_22:
      LOBYTE(v62) = 0;
      v65[0] = 0;
      if (__CFStringIsCF())
      {
        if (v65[0])
        {
          goto LABEL_51;
        }
      }

      else
      {
        v30 = v24;
        v31 = String.init(_nativeStorage:)();
        if (v32)
        {
          v15 = v31;
          v17 = v32;

          goto LABEL_53;
        }

        v65[0] = [v30 length];
        if (v65[0])
        {
LABEL_51:
          v15 = String.init(_cocoaString:)();
          v17 = v40;
          goto LABEL_52;
        }
      }

LABEL_32:
      v15 = 0;
      v17 = 0xE000000000000000;
      goto LABEL_53;
    }

    v25 = _objc_getTaggedPointerTag(v23);
    if (!v25)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v37 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v38)
      {
        [v24 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v15 = v62;
        v17 = v63;
        goto LABEL_52;
      }

LABEL_42:
      v15 = v37;
      v17 = v38;

LABEL_52:
      goto LABEL_53;
    }

    if (v25 == 22)
    {
      v36 = [v24 UTF8String];
      if (!v36)
      {
        goto LABEL_79;
      }

      v37 = String.init(utf8String:)(v36);
      if (!v38)
      {
        goto LABEL_78;
      }

      goto LABEL_42;
    }

    if (v25 != 2)
    {
      goto LABEL_22;
    }

    MEMORY[0x1EEE9AC00](v25);
    v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v17 = v26;

LABEL_53:
    MEMORY[0x1865D2690](v18, -1, -1);
LABEL_54:
    v65[0] = v15;
    v65[1] = v17;
    a3(&v62, v65);

    v18 = v62;
    v41 = v63;
    if (v4)
    {
      v6 = v61;
      v7 = __OFSUB__(v4--, 1);
      if (v7)
      {
        break;
      }

      goto LABEL_3;
    }

    v42 = v61[3];
    if (((v42 >> 1) + 0x4000000000000000) < 0)
    {
      __break(1u);
      goto LABEL_75;
    }

    v43 = v42 & 0xFFFFFFFFFFFFFFFELL;
    if (v43 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v6 = swift_allocObject();
    v45 = _swift_stdlib_malloc_size(v6);
    v47 = v45 - 32;
    v46 = v45 < 32;
    v48 = v45 - 17;
    v49 = v61;
    if (v46)
    {
      v47 = v48;
    }

    v50 = v47 >> 4;
    v6[2] = v44;
    v6[3] = 2 * (v47 >> 4);
    v51 = (v6 + 4);
    v52 = v61[3] >> 1;
    if (v61[2])
    {
      v53 = v61 + 4;
      if (v6 != v61 || v51 >= v53 + 16 * v52)
      {
        memmove(v6 + 4, v53, 16 * v52);
        v49 = v61;
      }

      v49[2] = 0;
    }

    v60 = (v51 + 16 * v52);
    v54 = (v50 & 0x7FFFFFFFFFFFFFFFLL) - v52;

    v7 = __OFSUB__(v54, 1);
    v4 = v54 - 1;
    if (v7)
    {
      break;
    }

LABEL_3:
    v61 = v6;
    *v60 = v18;
    v60[1] = v41;
  }

  __break(1u);
LABEL_69:
  MEMORY[0x1865D2690](v18, -1, -1);
LABEL_70:
  result = v61;
  v56 = v61[3];
  if (v56 >= 2)
  {
    v57 = v56 >> 1;
    v7 = __OFSUB__(v57, v4);
    v58 = v57 - v4;
    if (!v7)
    {
      v61[2] = v58;
      return result;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  return result;
}

unint64_t closure #1 in _DarwinSearchPaths(for:in:expandTilde:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if ((a2 & 1) == 0 || (specialized Collection.first.getter(*a1, v5) & 0x1FF) != 0x7E)
  {
    goto LABEL_24;
  }

  result = specialized Collection<>.firstIndex(of:)(47, v4, v5);
  if ((v7 & 1) == 0)
  {
    v10 = result;
    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v4;
  }

  v9 = v8 << 16;
  if ((v5 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0)
  {
    v10 = v9 | 7;
    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    result = 65540;
    goto LABEL_17;
  }

  v10 = v9 | 0xB;
LABEL_9:
  v11 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v11 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  result = String.UTF8View._foreignIndex(after:)();
LABEL_17:
  if (v10 >> 14 == result >> 14)
  {
    v12 = static String.homeDirectoryPath()();
    v14 = v13;
LABEL_28:
    specialized Collection.suffix(from:)(v10, v4, v5);
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    v4 = v12;
    v5 = v14;
    goto LABEL_29;
  }

  if (v10 >> 14 >= result >> 14)
  {
    v15 = String.subscript.getter();
    MEMORY[0x1865CAE80](v15);

    if (!issetugid() && getenv("CFFIXED_USER_HOME"))
    {
      v16 = String.init(cString:)();
      goto LABEL_27;
    }

    v16 = specialized static Platform.homeDirectory(forUserName:)();
    if (v17)
    {
LABEL_27:
      v12 = String.standardizingPath.getter(v16, v17);
      v14 = v18;

      goto LABEL_28;
    }

LABEL_24:

LABEL_29:
    *a3 = v4;
    a3[1] = v5;
    return result;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t _SearchPathURLs(for:in:expandTilde:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  *(swift_allocObject() + 16) = a3;
  v7 = specialized _copySequenceToContiguousArray<A>(_:)(a1, a2 & 0xC0F, closure #1 in _DarwinSearchPaths(for:in:expandTilde:)partial apply);

  v8 = v7[2];
  if (v8)
  {
    v23 = a4;
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v26;
    v10 = v7 + 5;
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = one-time initialization token for compatibility2;

      if (v13 != -1)
      {
        swift_once();
      }

      if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
      {
        v14 = type metadata accessor for _BridgedURL();
        v15 = &protocol witness table for _BridgedURL;
      }

      else
      {
        v14 = type metadata accessor for _SwiftURL();
        v15 = &protocol witness table for _SwiftURL;
      }

      v25 = 0;
      v24[0] = 0;
      v24[1] = 0;
      (v15[9])(v11, v12, &v25, v24);
      v16 = (v15[56])(v14, v15);
      v18 = v17;
      swift_unknownObjectRelease();
      v26 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v10 += 2;
      --v8;
    }

    while (v8);

    a4 = v23;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v9;
  return result;
}

void _NSKVOPerformWithDeallocatingObservable(const void *a1, uint64_t a2)
{
  v4 = _CFGetTSD();
  if (!v4)
  {
    v5 = malloc_default_zone();
    v4 = malloc_type_zone_calloc(v5, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    _CFSetTSD();
  }

  v6 = *(v4 + 80);
  Mutable = v6;
  if (!v6)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E4A8], 1, 0);
    *(v4 + 80) = Mutable;
  }

  CFArrayInsertValueAtIndex(Mutable, 0, a1);
  (*(a2 + 16))(a2);
  CFArrayRemoveValueAtIndex(Mutable, 0);
  if (!v6)
  {
    if (CFArrayGetCount(Mutable))
    {
      __assert_rtn("_NSKVOPerformWithDeallocatingObservable", "NSKeyValueObserving.m", 2828, "CFArrayGetCount(stack) == 0");
    }

    CFRelease(Mutable);
    *(v4 + 80) = 0;
  }
}

void NSKVODeallocate(void *a1, const char *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  v5 = _NSKVOUsesBaseClassObservationInfoImplementationForClass(Class);
  IndexedIvars = object_getIndexedIvars(Class);
  InstanceMethod = class_getInstanceMethod(*IndexedIvars, a2);
  v8 = InstanceMethod;
  if (v5)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __NSKVODeallocate_block_invoke;
    v23[3] = &unk_1E69F4618;
    v23[4] = a1;
    v23[5] = InstanceMethod;
    _NSKVOPerformWithDeallocatingObservable(a1, v23);
  }

  else
  {
    v20 = a1;
    v21 = _NSKeyValueRetainedObservationInfoForObject(a1, 0);
    v22 = 0;
    _NSKeyValueAddObservationInfoWatcher(&v20);
    v9 = [objc_getAssociatedObject(a1 &_NSKeyValueObservingObservationInfoOverriderMayThrowOnDealloc)];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __NSKVODeallocate_block_invoke_2;
    v19[3] = &unk_1E69F4618;
    v19[4] = a1;
    v19[5] = v8;
    _NSKVOPerformWithDeallocatingObservable(a1, v19);
    if (v21)
    {
      program_sdk_version = dyld_get_program_sdk_version();
      if (v9)
      {
        v9 = [v21 containsOnlyInternalObservationHelpers] ^ 1;
      }

      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"NSKVODeallocateCleansUpBeforeThrowing", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v12 = AppBooleanValue == 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = v12;
      if (program_sdk_version < 0x80000)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if ((v14 & 1) == 0 && ((v9 ^ 1) & 1) == 0)
      {
        v15 = v13;
        v16 = [v21 description];
        if ((v15 & 1) == 0)
        {
          _NSKeyValueRemoveObservationInfoForObject(v20);
        }

        v17 = [NSString stringWithFormat:@"An instance %p of class %@ was deallocated while key value observers were still registered with it. Current observation info: %@", a1, *IndexedIvars, v16];
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v17 userInfo:0]);
      }

      if ((program_sdk_version < 0x80000) | v9 & 1)
      {
        NSLog(@"An instance %p of class %@ was deallocated while key value observers were still registered with it. Observation info was leaked, and may even become mistakenly attached to some other object. Set a breakpoint on NSKVODeallocateBreak to stop here in the debugger. Here's the current observation info:\n%@", a1, *IndexedIvars, v21);
        NSKVODeallocateBreak(a1);
      }
    }

    _NSKeyValueRemoveObservationInfoWatcher(&v20);
  }
}

void sub_18078DF34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x18078DE80);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NSKeyValueShareableObservationInfoNSHTIsEqual(CFArrayRef *a1, CFArrayRef *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    if (object_getClass(a1) != qword_1ED43F650 && object_getClass(a2) != qword_1ED43F650)
    {
      Count = CFArrayGetCount(a1[1]);
      v5 = CFArrayGetCount(a2[1]);
      if (v5 == Count)
      {
        if (!(Count >> 60))
        {
          if (Count <= 1)
          {
            v6 = 1;
          }

          else
          {
            v6 = Count;
          }

          if (Count >= 0x101)
          {
            v7 = 1;
          }

          else
          {
            v7 = v6;
          }

          v8 = 8 * v7;
          MEMORY[0x1EEE9AC00](v5);
          v10 = &v71 - v9;
          v73 = 0;
          if (Count >= 0x101)
          {
            v10 = _CFCreateArrayStorage();
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          v28 = [(__CFArray *)a1[1] getObjects:v10 range:0, Count];
          MEMORY[0x1EEE9AC00](v28);
          v29 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          v30 = 0;
          v72 = 0;
          if (Count < 0x101)
          {
            v31 = v29;
          }

          else
          {
            v30 = _CFCreateArrayStorage();
            v31 = v30;
          }

          [(__CFArray *)a2[1] getObjects:v31 range:0, Count];
          if (Count)
          {
            if (*v10 == *v31)
            {
              v58 = 1;
              do
              {
                v59 = v58;
                if (Count == v58)
                {
                  break;
                }

                v60 = *&v10[8 * v58];
                v61 = v31[v58++];
              }

              while (v60 == v61);
              v16 = v59 >= Count;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 1;
          }

          free(v30);
          v62 = v11;
          goto LABEL_98;
        }

LABEL_101:
        v65 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
        v66 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v65 userInfo:0];
        CFRelease(v65);
        objc_exception_throw(v66);
      }

      return 0;
    }

    Class = object_getClass(a1);
    if (Class == qword_1ED43F650)
    {
      v13 = a2;
    }

    else
    {
      v13 = a1;
    }

    if (Class == qword_1ED43F650)
    {
      v14 = a1;
    }

    else
    {
      v14 = a2;
    }

    v15 = v14[2];
    if (*(v14 + 8) == 1)
    {
      if (v15)
      {
        Count = [*(v15 + 1) count];
      }

      else
      {
        Count = 0;
      }

      v23 = [(__CFArray *)v13[1] count];
      if (v23 == Count + 1)
      {
        if (Count >> 60)
        {
          goto LABEL_101;
        }

        v24 = v23;
        if (Count <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = Count;
        }

        MEMORY[0x1EEE9AC00](v25);
        v27 = &v71 - v26;
        v73 = 0;
        if (Count >= 0x101)
        {
          v27 = _CFCreateArrayStorage();
          v22 = v27;
        }

        else
        {
          v22 = 0;
        }

        v49 = v14[2];
        if (v49)
        {
          [*(v49 + 1) getObjects:v27 range:{0, Count}];
        }

        if (v24 >> 60)
        {
          v67 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v24);
          v68 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v67 userInfo:0];
          CFRelease(v67);
          objc_exception_throw(v68);
        }

        if (v24 <= 1)
        {
          v50 = 1;
        }

        else
        {
          v50 = v24;
        }

        MEMORY[0x1EEE9AC00](v50);
        v52 = &v71 - v51;
        v53 = 0;
        v72 = 0;
        if (v24 >= 0x101)
        {
          v53 = _CFCreateArrayStorage();
          v52 = v53;
        }

        [(__CFArray *)v13[1] getObjects:v52 range:0, v24];
        if (Count)
        {
          v54 = Count;
          v55 = v52;
          while (*v27 == *v55)
          {
            v55 += 8;
            v27 += 8;
            if (!--v54)
            {
              goto LABEL_79;
            }
          }
        }

        else
        {
LABEL_79:
          v56 = *&v52[8 * Count];
          if (*(v56 + 16) == v14[4] && v14[5] == (*(v56 + 40) >> 4) && *(v56 + 24) == v14[6])
          {
            v57 = (*(v56 + 41) & 1) != 0 ? *(v56 + 32) : 0;
            if (v57 == v14[7])
            {
              v16 = *(v56 + 8) == v14[3];
              goto LABEL_96;
            }
          }
        }

        v16 = 0;
LABEL_96:
        v63 = v53;
        goto LABEL_97;
      }
    }

    else
    {
      Count = CFArrayGetCount(*(v15 + 1));
      v17 = CFArrayGetCount(v13[1]);
      if (v17 == Count - 1)
      {
        if (Count >> 60)
        {
          goto LABEL_101;
        }

        v18 = v17;
        if (Count <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = Count;
        }

        MEMORY[0x1EEE9AC00](v19);
        v21 = &v71 - v20;
        v73 = 0;
        if (Count >= 0x101)
        {
          v21 = _CFCreateArrayStorage();
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        [*(v14[2] + 1) getObjects:v21 range:{0, Count}];
        if (v18 >> 60)
        {
          v69 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v18);
          v70 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v69 userInfo:0];
          CFRelease(v69);
          objc_exception_throw(v70);
        }

        if (v18 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v18;
        }

        MEMORY[0x1EEE9AC00](v32);
        v34 = &v71 - v33;
        v35 = 0;
        v72 = 0;
        if (v18 >= 0x101)
        {
          v35 = _CFCreateArrayStorage();
          v34 = v35;
        }

        [(__CFArray *)v13[1] getObjects:v34 range:0, v18];
        v36 = v14[9];
        if (v36)
        {
          v37 = v14[9];
          v38 = v21;
          v39 = v34;
          while (*v38 == *v39)
          {
            v39 += 8;
            v38 += 8;
            v37 = (v37 - 1);
            if (!v37)
            {
              goto LABEL_58;
            }
          }

          v16 = 0;
        }

        else
        {
LABEL_58:
          if (Count + ~v36)
          {
            v40 = &v21[8 * v36 + 8];
            v41 = &v34[8 * v36];
            v42 = Count - v36 - 2;
            do
            {
              v44 = *v40;
              v40 += 8;
              v43 = v44;
              v46 = *v41;
              v41 += 8;
              v45 = v46;
              v48 = v42-- != 0;
              v16 = v43 == v45;
            }

            while (v43 == v45 && v48);
          }

          else
          {
            v16 = 1;
          }
        }

        v63 = v35;
LABEL_97:
        free(v63);
        v62 = v22;
LABEL_98:
        free(v62);
        return v16;
      }
    }

    return 0;
  }

  return 1;
}

void *_qfqp2_scan_bytes(char *a1, int a2)
{
  v4 = a2 + 2;
  v5 = malloc_type_malloc(v4, 0x8636E7A1uLL);
  if (!v5)
  {
    v15 = *MEMORY[0x1E69E9848];
    v16 = "out of dynamic memory in _qfqp2_scan_bytes()";
    goto LABEL_16;
  }

  v6 = v5;
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = v5;
    do
    {
      v9 = *a1++;
      *v8++ = v9;
      --v7;
    }

    while (v7);
  }

  *&v5[a2] = 0;
  if (a2 > 0xFFFFFFFD)
  {
    v15 = *MEMORY[0x1E69E9848];
    v16 = "bad buffer in _qfqp2_scan_bytes()";
    goto LABEL_16;
  }

  v10 = malloc_type_malloc(0x48uLL, 0x8636E7A1uLL);
  if (!v10)
  {
    v15 = *MEMORY[0x1E69E9848];
    v16 = "out of dynamic memory in _qfqp2_scan_buffer()";
LABEL_16:
    fprintf(v15, "%s\n", v16);
    exit(2);
  }

  v11 = v10;
  v10[2] = v6;
  v10[3] = v4 - 2;
  *v10 = 0;
  v10[1] = v6;
  v10[4] = v4 - 2;
  v10[5] = 0;
  *(v10 + 12) = 1;
  *(v10 + 60) = 0;
  _qfqp2ensure_buffer_stack();
  v12 = yy_buffer_stack;
  if (!yy_buffer_stack)
  {
LABEL_11:
    *v12 = v11;
    yy_n_chars = v11[4];
    yy_c_buf_p = v11[2];
    _qfqp2text = yy_c_buf_p;
    _qfqp2in = *v11;
    yy_hold_char = *yy_c_buf_p;
    goto LABEL_12;
  }

  if (*yy_buffer_stack != v11)
  {
    if (*yy_buffer_stack)
    {
      v13 = yy_c_buf_p;
      *yy_c_buf_p = yy_hold_char;
      *(*v12 + 16) = v13;
      *(*v12 + 32) = yy_n_chars;
    }

    goto LABEL_11;
  }

LABEL_12:
  *(v11 + 10) = 1;
  return v11;
}

void *_qfqp2ensure_buffer_stack()
{
  result = yy_buffer_stack;
  if (!yy_buffer_stack)
  {
    result = malloc_type_malloc(8uLL, 0x8636E7A1uLL);
    yy_buffer_stack = result;
    if (result)
    {
      *result = 0;
      v2 = 1;
      goto LABEL_7;
    }

LABEL_9:
    fprintf(*MEMORY[0x1E69E9848], "%s\n", "out of dynamic memory in _qfqp2ensure_buffer_stack()");
    exit(2);
  }

  if (yy_buffer_stack_max != 1)
  {
    return result;
  }

  result = malloc_type_realloc(yy_buffer_stack, 0x48uLL, 0xB9D1C62uLL);
  yy_buffer_stack = result;
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = &result[yy_buffer_stack_max];
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v2 = 9;
LABEL_7:
  yy_buffer_stack_max = v2;
  return result;
}

void _qfqp2_delete_buffer(void **a1)
{
  if (a1)
  {
    if (yy_buffer_stack)
    {
      v2 = *yy_buffer_stack;
    }

    else
    {
      v2 = 0;
    }

    if (v2 == a1)
    {
      *yy_buffer_stack = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

void yydestruct(int a1, id *a2)
{
  switch(a1)
  {
    case 39:
    case 87:
    case 88:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:

      break;
    case 40:
    case 41:
    case 42:
    case 43:
      free(*a2);
      break;
    default:
      return;
  }
}

NSKeyPathExpression *CreateKVCExpression(uint64_t a1)
{
  v1 = [[NSKeyPathSpecifierExpression alloc] initWithObject:a1];
  v2 = [[NSKeyPathExpression alloc] initWithKeyPath:v1];

  return v2;
}

NSKeyPathExpression *ResolvePredicateArgument(void *a1, void *a2)
{
  v68[1] = *MEMORY[0x1E69E9840];
  if (![a1 length])
  {
    v59 = MEMORY[0x1E695DF30];
    v60 = *MEMORY[0x1E695D930];
    v61 = @"Illegal argument conversion character";
    goto LABEL_80;
  }

  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  a2[4] = v6 + 1;
  v7 = [a1 characterAtIndex:0];
  v8 = 0;
  v68[0] = 0;
  for (i = 1; ; ++i)
  {
    if (v7 <= 0x6Bu)
    {
      if (v7 == 104)
      {
        v10 = -1;
        goto LABEL_8;
      }

      if (v7 != 76)
      {
        goto LABEL_11;
      }

LABEL_10:
      v7 = [a1 characterAtIndex:i];
      v8 = 2;
      goto LABEL_11;
    }

    if (v7 != 108)
    {
      break;
    }

    v10 = 1;
LABEL_8:
    v8 += v10;
    v7 = [a1 characterAtIndex:i];
  }

  if (v7 == 113)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v4)
  {
    v11 = [v4 count];
    if (v6 < 0 || v6 + 1 > v11)
    {
      v59 = MEMORY[0x1E695DF30];
      v60 = *MEMORY[0x1E695D930];
      v61 = @"Insufficient arguments for conversion characters specified in format string.";
    }

    else
    {
      v12 = [v4 objectAtIndex:v6];
      v67 = v12;
      switch(v7)
      {
        case '@':
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          return v67;
        case 'A':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'O':
        case 'S':
        case 'U':
        case 'X':
        case 'a':
        case 'c':
        case 'd':
        case 'e':
        case 'f':
        case 'g':
        case 'i':
        case 'o':
        case 'p':
        case 's':
        case 'u':
        case 'x':
LABEL_15:
          v13 = [NSConstantValueExpression alloc];
          v14 = v67;
          goto LABEL_16;
        case 'B':
        case 'H':
        case 'I':
        case 'J':
        case 'L':
        case 'M':
        case 'N':
        case 'P':
        case 'Q':
        case 'R':
        case 'T':
        case 'V':
        case 'W':
        case 'Y':
        case 'Z':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
        case 'b':
        case 'h':
        case 'j':
        case 'k':
        case 'l':
        case 'm':
        case 'n':
        case 'q':
        case 'r':
        case 't':
        case 'v':
        case 'w':
          goto LABEL_81;
        case 'K':

          return CreateKVCExpression(v12);
        default:
          if (v7 == 37)
          {
            v13 = [NSConstantValueExpression alloc];
            v14 = @"%";
LABEL_16:

            return [(NSConstantValueExpression *)v13 initWithObject:v14];
          }

LABEL_81:
          v62 = MEMORY[0x1E695DF30];
          v63 = *MEMORY[0x1E695D930];
          v61 = [NSString stringWithFormat:@"Unrecognized conversion specifier '%c' in format string.", v7];
          v59 = v62;
          v60 = v63;
          break;
      }
    }

LABEL_80:
    objc_exception_throw([v59 exceptionWithName:v60 reason:v61 userInfo:0]);
  }

  switch(v7)
  {
    case '@':
      v43 = (*v5)++;
      v44 = *v43;
      if (objc_opt_isKindOfClass())
      {
        KVCExpression = v44;
        goto LABEL_74;
      }

      v35 = [NSConstantValueExpression alloc];
      v36 = v44;
      goto LABEL_73;
    case 'A':
    case 'E':
    case 'F':
    case 'G':
    case 'a':
    case 'e':
    case 'f':
    case 'g':
      if (v8 == 2 || v8 == 1)
      {
        v23 = [NSNumber alloc];
        v24 = (*v5)++;
        v19 = [(NSNumber *)v23 initWithDouble:*v24];
        goto LABEL_32;
      }

      if (!v8)
      {
        v16 = [NSNumber alloc];
        v17 = (*v5)++;
        v18 = *v17;
        *&v18 = *v17;
        v19 = [(NSNumber *)v16 initWithFloat:v18];
        goto LABEL_32;
      }

      v20 = 0;
      goto LABEL_33;
    case 'B':
    case 'H':
    case 'I':
    case 'J':
    case 'L':
    case 'M':
    case 'N':
    case 'Q':
    case 'R':
    case 'T':
    case 'V':
    case 'W':
    case 'Y':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'b':
    case 'h':
    case 'j':
    case 'k':
    case 'l':
    case 'm':
    case 'n':
    case 'q':
    case 'r':
    case 't':
    case 'v':
    case 'w':
      goto LABEL_82;
    case 'C':
      v38 = [NSNumber alloc];
      v39 = (*v5)++;
      v32 = [(NSNumber *)v38 initWithShort:*v39];
      goto LABEL_66;
    case 'D':
    case 'd':
    case 'i':
      v20 = 0;
      if (v8 < 0)
      {
        if (v8 == -2)
        {
          v57 = [NSNumber alloc];
          v58 = (*v5)++;
          v19 = [(NSNumber *)v57 initWithChar:*v58];
        }

        else
        {
          if (v8 != -1)
          {
            goto LABEL_33;
          }

          v33 = [NSNumber alloc];
          v34 = (*v5)++;
          v19 = [(NSNumber *)v33 initWithShort:*v34];
        }
      }

      else if (v8 == 2)
      {
        v53 = [NSNumber alloc];
        v54 = (*v5)++;
        v19 = [(NSNumber *)v53 initWithLongLong:*v54];
      }

      else if (v8 == 1)
      {
        v55 = [NSNumber alloc];
        v56 = (*v5)++;
        v19 = [(NSNumber *)v55 initWithLong:*v56];
      }

      else
      {
        if (v8)
        {
          goto LABEL_33;
        }

        v27 = [NSNumber alloc];
        v28 = (*v5)++;
        v19 = [(NSNumber *)v27 initWithInt:*v28];
      }

      goto LABEL_32;
    case 'K':
      v41 = (*v5)++;
      v68[0] = *v41;
      KVCExpression = CreateKVCExpression(v68[0]);
      goto LABEL_74;
    case 'O':
    case 'U':
    case 'X':
    case 'o':
    case 'u':
    case 'x':
      v20 = 0;
      if ((v8 & 0x80000000) == 0)
      {
        if (v8 == 2)
        {
          v47 = [NSNumber alloc];
          v48 = (*v5)++;
          v19 = [(NSNumber *)v47 initWithUnsignedLongLong:*v48];
        }

        else if (v8 == 1)
        {
          v49 = [NSNumber alloc];
          v50 = (*v5)++;
          v19 = [(NSNumber *)v49 initWithUnsignedLong:*v50];
        }

        else
        {
          if (v8)
          {
            goto LABEL_33;
          }

          v21 = [NSNumber alloc];
          v22 = (*v5)++;
          v19 = [(NSNumber *)v21 initWithUnsignedInt:*v22];
        }

        goto LABEL_32;
      }

      if (v8 == -2)
      {
        v51 = [NSNumber alloc];
        v52 = (*v5)++;
        v19 = [(NSNumber *)v51 initWithUnsignedChar:*v52];
        goto LABEL_32;
      }

      if (v8 == -1)
      {
        v29 = [NSNumber alloc];
        v30 = (*v5)++;
        v19 = [(NSNumber *)v29 initWithUnsignedShort:*v30];
LABEL_32:
        v20 = v19;
        v68[0] = v19;
      }

LABEL_33:
      v25 = [[NSConstantValueExpression alloc] initWithObject:v20];

LABEL_34:
      v26 = 0;
LABEL_67:

      return v25;
    case 'P':
      v37 = (*v5)++;
      v68[0] = *v37;
      v32 = CFStringCreateWithPascalString(*MEMORY[0x1E695E4A8], v68[0], 0x8000100u);
      goto LABEL_66;
    case 'S':
    case 's':
      v31 = (*v5)++;
      v68[0] = *v31;
      v32 = [[NSString alloc] initWithFormat:@"%s", v68[0]];
      goto LABEL_66;
    case 'c':
      v45 = [NSNumber alloc];
      v46 = (*v5)++;
      v32 = [(NSNumber *)v45 initWithChar:*v46];
      goto LABEL_66;
    case 'p':
      v40 = (*v5)++;
      v68[0] = *v40;
      v32 = [NSValue value:v68 withObjCType:"^v"];
LABEL_66:
      v26 = v32;
      v25 = [[NSConstantValueExpression alloc] initWithObject:v32];
      goto LABEL_67;
    default:
      if (v7 != 37)
      {
LABEL_82:
        v64 = v7;
        v65 = MEMORY[0x1E695DF30];
        v66 = *MEMORY[0x1E695D930];
        v61 = [NSString stringWithFormat:@"Unrecognized conversion specifier '%c' in format string.", v64];
        v59 = v65;
        v60 = v66;
        goto LABEL_80;
      }

      v35 = [NSConstantValueExpression alloc];
      v36 = @"%";
LABEL_73:
      KVCExpression = [(NSConstantValueExpression *)v35 initWithObject:v36];
LABEL_74:
      v25 = KVCExpression;
      goto LABEL_34;
  }
}