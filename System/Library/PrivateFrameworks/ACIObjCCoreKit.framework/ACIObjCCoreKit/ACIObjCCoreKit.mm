id aci2nsDictionary(aci::Dictionary *a1)
{
  v2 = objc_opt_new();
  aci::Dictionary::enumerateKeysAndObjectsUsingBlock();

  return v2;
}

uint64_t ___Z16aci2nsDictionaryPN3aci10DictionaryE_block_invoke(uint64_t a1, aci::Object *a2, aci::Object *a3)
{
  v5 = aci2nsObject(a2);
  if (v5)
  {
    v6 = aci2nsObject(a3);
    if (v6)
    {
      [*(a1 + 32) setObject:v6 forKey:v5];
    }
  }

  return 0;
}

aci::Array *aci2nsObject(aci::Object *a1)
{
  v2 = aci::_ACIDynamicCast<aci::Number,aci::Object>(a1);
  if (v2)
  {
    v5 = aci2nsNumber(v2);
  }

  else
  {
    v3 = aci::_ACIDynamicCast<aci::String,aci::Object>(a1);
    if (v3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithCString:aci::String::getCString(v3) encoding:1];
    }

    else
    {
      v4 = aci::_ACIDynamicCast<aci::Dictionary,aci::Object>(a1);
      if (v4)
      {
        v5 = aci2nsDictionary(v4);
      }

      else
      {
        v5 = aci::_ACIDynamicCast<aci::Array,aci::Object>(a1);
        if (v5)
        {
          v5 = aci2nsArray(v5);
        }
      }
    }
  }

  return v5;
}

id aci2nsArray(aci::Array *a1)
{
  v2 = objc_opt_new();
  aci::Array::enumerateObjectsUsingBlock();

  return v2;
}

uint64_t ___Z11aci2nsArrayPN3aci5ArrayE_block_invoke(uint64_t a1, aci::Object *a2)
{
  v3 = aci2nsObject(a2);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 0;
}

id aci2nsNumber(aci::Number *a1)
{
  v2 = 0;
  v3 = *(a1 + 4);
  if (v3 > 6)
  {
    if (v3 > 10)
    {
      if (v3 == 11)
      {
        v4 = MEMORY[0x277CCABB0];
        v5 = *(a1 + 6);
      }

      else
      {
        if (v3 != 12)
        {
          goto LABEL_15;
        }

        v4 = MEMORY[0x277CCABB0];
        v5 = *(a1 + 3);
      }

      goto LABEL_14;
    }

LABEL_13:
    v4 = MEMORY[0x277CCABB0];
    v5 = *(a1 + 12);
LABEL_14:
    v2 = [v4 numberWithShort:v5];
    goto LABEL_15;
  }

  if (v3 > 3)
  {
    goto LABEL_13;
  }

  switch(v3)
  {
    case 1:
      v2 = [MEMORY[0x277CCABB0] numberWithChar:*(a1 + 24)];
      break;
    case 2:
      v2 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 24)];
      break;
    case 3:
      goto LABEL_13;
  }

LABEL_15:

  return v2;
}

uint64_t aci2nsString(aci::String *a1)
{
  v1 = MEMORY[0x277CCACA8];
  CString = aci::String::getCString(a1);

  return [v1 stringWithCString:CString encoding:1];
}

aci::Number *aci::_ACIDynamicCast<aci::Number,aci::Object>(aci::Number *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Number::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

aci::String *aci::_ACIDynamicCast<aci::String,aci::Object>(aci::String *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::String::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

aci::Dictionary *aci::_ACIDynamicCast<aci::Dictionary,aci::Object>(aci::Dictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Dictionary::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

aci::Array *aci::_ACIDynamicCast<aci::Array,aci::Object>(aci::Array *result)
{
  if (result)
  {
    v1 = result;
    v2 = aci::Array::classTypeInfo(result);
    v3 = **v1;

    return v3(v1, v2);
  }

  return result;
}

id aci2nsJSONString(aci::Dictionary *a1)
{
  v1 = aci2nsDictionary(a1);
  v2 = v1;
  if (v1)
  {
    v3 = nsDictToJSON(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id nsDictToJSON(NSDictionary *a1)
{
  v1 = a1;
  if (v1 && ([MEMORY[0x277CCAAA0] isValidJSONObject:v1] & 1) != 0)
  {
    v7 = 0;
    v2 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v1 options:9 error:&v7];
    v3 = v7;
    v4 = v3;
    v5 = 0;
    if (v2 && !v3)
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ns2aciDictionary(NSDictionary *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = aci::Dictionary::alloc(v1);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___Z16ns2aciDictionaryP12NSDictionary_block_invoke;
  v4[3] = &unk_278BBCB78;
  v4[4] = &v5;
  [(NSDictionary *)v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_23C4120A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void ___Z16ns2aciDictionaryP12NSDictionary_block_invoke(uint64_t a1, objc_object *a2, void *a3)
{
  v6 = a3;
  if (ns2aciObject(a2) && ns2aciObject(v6))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    aci::Dictionary::setObject();
  }
}

uint64_t ns2aciObject(objc_object *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = ns2aciDictionary(v1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = ns2aciArray(v1);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = ns2aciString(&v1->isa);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ns2aciNumber(v1);
        }

        v2 = aci::String::stringWithCString("Unknown_Type", v3);
      }
    }
  }

  v4 = v2;

  return v4;
}

uint64_t ns2aciArray(NSArray *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = aci::Array::alloc(v1);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___Z11ns2aciArrayP7NSArray_block_invoke;
  v4[3] = &unk_278BBCBA0;
  v4[4] = &v5;
  [(NSArray *)v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_23C412304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void ___Z11ns2aciArrayP7NSArray_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (ns2aciObject(v4))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    aci::Array::addObject();
  }
}

void ns2aciNumber(NSNumber *a1)
{
  v1 = a1;
  v2 = [(NSNumber *)v1 objCType];
  v3 = strlen(v2);
  if (strncmp(v2, "c", v3))
  {
    if (strncmp(v2, "C", v3))
    {
      if (strncmp(v2, "s", v3))
      {
        if (strncmp(v2, "S", v3))
        {
          if (strncmp(v2, "i", v3))
          {
            if (strncmp(v2, "I", v3))
            {
              if (strncmp(v2, "q", v3))
              {
                if (strncmp(v2, "Q", v3))
                {
                  if (strncmp(v2, "f", v3))
                  {
                    if (strncmp(v2, "d", v3))
                    {
                      operator new();
                    }

                    v6 = [(NSNumber *)v1 doubleValue];
                    aci::Number::numberWithDouble(v6, v7);
                  }

                  v4 = [(NSNumber *)v1 floatValue];
                  aci::Number::numberWithFloat(v4, v5);
                }

                aci::Number::numberWithUnsignedLong([(NSNumber *)v1 unsignedLongValue]);
              }

              aci::Number::numberWithLong([(NSNumber *)v1 longValue]);
            }

            aci::Number::numberWithUnsignedInt([(NSNumber *)v1 unsignedIntValue]);
          }

          aci::Number::numberWithInt([(NSNumber *)v1 intValue]);
        }

        aci::Number::numberWithUnsignedShort([(NSNumber *)v1 unsignedShortValue]);
      }

      aci::Number::numberWithShort([(NSNumber *)v1 shortValue]);
    }

    aci::Number::numberWithUnsignedChar([(NSNumber *)v1 unsignedCharValue]);
  }

  aci::Number::numberWithChar([(NSNumber *)v1 charValue]);
}

void sub_23C4125C0(_Unwind_Exception *a1)
{
  MEMORY[0x23EED08F0](v2, 0x1081C4060A39700);

  _Unwind_Resume(a1);
}

uint64_t ns2aciString(NSString *a1)
{
  v1 = a1;
  v2 = [(NSString *)v1 UTF8String];
  v4 = aci::String::stringWithCString(v2, v3);

  return v4;
}

uint64_t ns2aciJSONDict(NSString *a1)
{
  v1 = nsJSONToDict(a1);
  v2 = v1;
  if (v1)
  {
    v3 = ns2aciDictionary(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t nsJSONToDict(NSString *a1)
{
  v1 = [(NSString *)a1 dataUsingEncoding:4];
  v4 = 0;
  v2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v1 options:0 error:&v4];
  nsJSONToDict(v2, &v4, v1, &v5);
  return v5;
}

dispatch_queue_t fixedPriorityDispatchQueue(const char *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  v3 = a2;
  snprintf(__str, 0x100uLL, "%sWorkLoop", a1);
  inactive = dispatch_workloop_create_inactive(__str);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v5 = dispatch_queue_create_with_target_V2(a1, v3, inactive);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id nsJSONToDict(void *a1, void *a2, void *a3, void *a4)
{
  v7 = 0;
  if (a1 && !*a2)
  {
    v7 = a1;
  }

  *a4 = v7;

  return v7;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}