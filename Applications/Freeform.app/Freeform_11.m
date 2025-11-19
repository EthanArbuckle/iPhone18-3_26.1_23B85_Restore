void sub_1001CEDC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CEE08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CF258(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CF29C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CF840(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) value];
  v4 = v3;
  [*(a1 + 32) maxValue];
  v6 = v5;
  v7 = [*(a1 + 32) isIndeterminate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CF904;
  v10[3] = &unk_101846478;
  v10[4] = v8;
  v10[5] = v4;
  v10[6] = v6;
  v11 = v7;
  dispatch_async(v9, v10);
  objc_autoreleasePoolPop(v2);
}

void sub_1001CF904(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) handleValue:*(a1 + 56) maxValue:*(a1 + 40) isIndeterminate:{*(a1 + 48), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1001CFAC4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_1001CFBB4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) valueInterval];
        *(*(*(a1 + 40) + 8) + 24) = fmin(v7, *(*(*(a1 + 40) + 8) + 24));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001CFFF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D0038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D0428(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D046C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1001D05A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D05C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_1001D06B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[6] != *(a1 + 40))
  {
    [v3 p_removeProgressObserverFromProgressInQueue];
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    [*(a1 + 32) p_addProgressObserverToProgressInQueue];
    [*(a1 + 32) protected_progressDidChange];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001D08F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) p_removeProgressObserverFromProgressInQueue];
  [*(a1 + 32) p_addProgressObserverToProgressInQueue];

  objc_autoreleasePoolPop(v2);
}

void sub_1001D09E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) p_removeProgressObserverFromProgressInQueue];
  [*(a1 + 32) p_addProgressObserverToProgressInQueue];

  objc_autoreleasePoolPop(v2);
}

void sub_1001D0BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D0BCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained protected_progressDidChange];
}

void sub_1001D100C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D1050(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D1510(uint64_t a1)
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  context = objc_autoreleasePoolPush();
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v34;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:{v4, context}];
        [v8 removeProgressObserver:v7];

        ++v4;
      }

      v3 = [v2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v3);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = 0;

  v11 = *(a1 + 40);
  if (v11 >= 0 && ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v11 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 40), "count")}];
    objc_initWeak(&location, *(a1 + 32));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(*(a1 + 32) + 40);
    v15 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v15)
    {
      v16 = *v29;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v28 + 1) + 8 * j);
          v19 = *(a1 + 40);
          v20 = *(*(a1 + 32) + 56);
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1001D1878;
          v26[3] = &unk_10183AF10;
          objc_copyWeak(&v27, &location);
          v21 = [v18 addProgressObserverWithValueInterval:v20 queue:v26 handler:v19];
          [v14 addObject:v21];

          objc_destroyWeak(&v27);
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v15);
    }

    v22 = *(a1 + 32);
    v23 = *(v22 + 48);
    *(v22 + 48) = v14;

    objc_destroyWeak(&location);
  }

  objc_autoreleasePoolPop(context);
}

void sub_1001D1878(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained protected_progressDidChange];

  objc_autoreleasePoolPop(v2);
}

void sub_1001D1C14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D1C58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D1DF8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) protected_hasProgressObservers];
  v4 = *(a1 + 32);
  if ((*(v4 + 56) & 1) != 0 || !v3)
  {
    if (!(v3 & 1 | ((*(v4 + 56) & 1) == 0)))
    {
      [*(v4 + 40) removeProgressObserver:?];
    }
  }

  else
  {
    [*(v4 + 40) addProgressObserver:v4 selector:"p_progressDidChange:"];
    *(*(a1 + 32) + 56) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001D2108(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(*(a1 + 32) + 16) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1001D23BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D2400(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D2688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D26CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1001D278C(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 72) == 1)
  {
    *(v1 + 72) = 0;
    return [*(result + 4) p_slowlyAdvanceToNextStage];
  }

  return result;
}

id sub_1001D28C4(id result)
{
  v3 = *(result + 4);
  v2 = *(result + 5);
  if (v2 > *(v3 + 56) && v2 <= *(v3 + 64))
  {
    v4 = result;
    *(v3 + 56) = v2;
    v5 = *(result + 4);
    v6 = v5[7] / v5[8];
    [v5 maxValue];
    v8 = v7 * v6;
    v9 = v4[4];

    return [v9 setValue:v8];
  }

  return result;
}

id sub_1001D2A1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  v4 = 1.0 / v2[8];
  [v2 value];
  v5 = *(a1 + 32);
  v6 = v5[7];
  v8 = 1.0 - (1.0 - (v7 - v6 * v4) / v4) * 0.95;
  if (v8 > 0.95)
  {
    v8 = 0.95;
  }

  v9 = v4 * (v8 + v6);
  if (v9 <= 1.0)
  {
    v3 = v9;
  }

  [v5 maxValue];
  [*(a1 + 32) setValue:v10 * v3];
  v11 = *(a1 + 32);

  return [v11 p_slowlyAdvanceToNextStage];
}

uint64_t CRLAccessibilityShouldPerformValidationChecks()
{
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  return byte_101A34800;
}

uint64_t __CRLAccessibilityHandleValidationErrorWithDescription(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v10) = a1;
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  if (qword_101AD5A08 != -1)
  {
    sub_10132DEB4();
  }

  v12 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    sub_10132DEDC(v11, v12);
  }

  if (v11)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1 && a2 != 0)
  {
    if (qword_101A34830 != -1)
    {
      sub_10132DF54();
    }

    v10 = 0;
  }

  return v10;
}

uint64_t CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch()
{
  if (qword_101A34828 != -1)
  {
    sub_10132DE50();
  }

  return byte_101A34820;
}

ptrdiff_t __CRLAccessibilitySafeIvarForKey(void *a1, void *a2, char *a3)
{
  InstanceVariable = object_getInstanceVariable(a1, [a2 UTF8String], 0);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 != 1 || InstanceVariable != 0)
  {
    goto LABEL_13;
  }

  if (qword_101A34828 != -1)
  {
    sub_10132DE50();
  }

  v8 = byte_101A34820;
  v9 = objc_opt_class();
  NSStringFromClass(v9);
  if (__CRLAccessibilityHandleValidationErrorWithDescription(v8, 0, @"Failed to retrieve ivar for key %@ from instance of class %@.", v10, v11, v12, v13, v14, a2))
  {
    if (!a3)
    {
      abort();
    }

    v15 = 1;
  }

  else
  {
LABEL_13:
    if (!a3)
    {
      goto LABEL_16;
    }

    v15 = 0;
  }

  *a3 = v15;
LABEL_16:
  if (InstanceVariable)
  {
    return a1 + ivar_getOffset(InstanceVariable);
  }

  else
  {
    return 0;
  }
}

uint64_t __CRLAccessibilityCastAsSafeCategory(void *a1, uint64_t a2, int a3, char *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = [a1 crlaxTargetClassName];
  v9 = v8;
  if (!a3)
  {
    if (v8)
    {
      v18 = NSClassFromString(v8);
      goto LABEL_30;
    }

    return 0;
  }

  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 != 1 || v9)
  {
    goto LABEL_14;
  }

  if (qword_101A34828 != -1)
  {
    sub_10132DE50();
  }

  v10 = byte_101A34820;
  v11 = NSStringFromClass(a1);
  if (__CRLAccessibilityHandleValidationErrorWithDescription(v10, 0, @"Couldn't find target class name for safe category class %@", v12, v13, v14, v15, v16, v11))
  {
    if (!a4)
    {
      goto LABEL_50;
    }

    v17 = 1;
  }

  else
  {
LABEL_14:
    if (!a4)
    {
      goto LABEL_17;
    }

    v17 = 0;
  }

  *a4 = v17;
LABEL_17:
  if (!v9)
  {
    return 0;
  }

  v18 = NSClassFromString(v9);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 != 1 || v18)
  {
    goto LABEL_27;
  }

  if (qword_101A34828 != -1)
  {
    sub_10132DE50();
  }

  v19 = byte_101A34820;
  NSStringFromClass(a1);
  if (__CRLAccessibilityHandleValidationErrorWithDescription(v19, 0, @"Couldn't find target class named %@ for safe category class %@", v20, v21, v22, v23, v24, v9))
  {
    if (!a4)
    {
      goto LABEL_50;
    }

    v25 = 1;
  }

  else
  {
LABEL_27:
    if (!a4)
    {
      goto LABEL_30;
    }

    v25 = 0;
  }

  *a4 = v25;
LABEL_30:
  if (!v18)
  {
    return 0;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = objc_opt_class() == a1;
    if (!a3)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  v26 = 1;
  if (a3)
  {
LABEL_36:
    if (qword_101A34808 != -1)
    {
      sub_10132DE3C();
    }

    if (v26 || (byte_101A34800 & 1) == 0)
    {
      goto LABEL_44;
    }

    if (qword_101A34828 != -1)
    {
      sub_10132DE50();
    }

    v28 = byte_101A34820;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    NSStringFromClass(a1);
    if (!__CRLAccessibilityHandleValidationErrorWithDescription(v28, 0, @"Failed to cast object <%@: %p> as safe category %@", v31, v32, v33, v34, v35, v30))
    {
LABEL_44:
      if (!a4)
      {
        goto LABEL_47;
      }

      v36 = 0;
      goto LABEL_46;
    }

    if (a4)
    {
      v36 = 1;
LABEL_46:
      *a4 = v36;
      goto LABEL_47;
    }

LABEL_50:
    abort();
  }

LABEL_47:
  if (v26)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t __CRLAccessibilityCastAsClass(objc_class *a1, uint64_t a2, int a3, char *a4)
{
  if (!a2)
  {
    return 0;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if (a3)
  {
    if (qword_101A34808 != -1)
    {
      sub_10132DE3C();
    }

    if (isKindOfClass & 1 | ((byte_101A34800 & 1) == 0))
    {
      goto LABEL_12;
    }

    if (qword_101A34828 != -1)
    {
      sub_10132DE50();
    }

    v9 = byte_101A34820;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    NSStringFromClass(a1);
    if (!__CRLAccessibilityHandleValidationErrorWithDescription(v9, 0, @"Failed to cast object <%@: %p> as class %@", v12, v13, v14, v15, v16, v11))
    {
LABEL_12:
      if (!a4)
      {
        goto LABEL_15;
      }

      v17 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v17 = 1;
    }

    *a4 = v17;
  }

LABEL_15:
  if (isKindOfClass)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void *__CRLAccessibilityCastAsProtocol(Protocol *a1, void *a2, int a3, char *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = [a2 conformsToProtocol:a1];
  if (a3)
  {
    if (qword_101A34808 != -1)
    {
      sub_10132DE3C();
    }

    if (v8 & 1 | ((byte_101A34800 & 1) == 0))
    {
      goto LABEL_12;
    }

    if (qword_101A34828 != -1)
    {
      sub_10132DE50();
    }

    v9 = byte_101A34820;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    NSStringFromProtocol(a1);
    if (!__CRLAccessibilityHandleValidationErrorWithDescription(v9, 0, @"Failed to cast object <%@: %p> as protocol %@", v12, v13, v14, v15, v16, v11))
    {
LABEL_12:
      if (!a4)
      {
        goto LABEL_15;
      }

      v17 = 0;
    }

    else
    {
      if (!a4)
      {
        abort();
      }

      v17 = 1;
    }

    *a4 = v17;
  }

LABEL_15:
  if (v8)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void *__CRLAccessibilityCastAsClassAndProtocol(objc_class *a1, Protocol *a2, void *a3, int a4, _BYTE *a5)
{
  if (!a3)
  {
    return 0;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  v11 = [a3 conformsToProtocol:a2];
  if (a4)
  {
    if (qword_101A34808 != -1)
    {
      sub_10132DE3C();
    }

    v12 = &unk_101A34000;
    v13 = &unk_101A34000;
    if (isKindOfClass & 1 | ((byte_101A34800 & 1) == 0))
    {
      v14 = 0;
    }

    else
    {
      if (qword_101A34828 != -1)
      {
        sub_10132DE50();
      }

      v16 = byte_101A34820;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      NSStringFromClass(a1);
      v14 = __CRLAccessibilityHandleValidationErrorWithDescription(v16, 0, @"Failed to cast object <%@: %p> as class %@", v19, v20, v21, v22, v23, v18);
      if (qword_101A34808 == -1)
      {
        v13 = &unk_101A34000;
        v12 = &unk_101A34000;
      }

      else
      {
        sub_10132DE3C();
        v13 = &unk_101A34000;
        v12 = &unk_101A34000;
      }
    }

    if (v11 & 1 | ((byte_101A34800 & 1) == 0))
    {
      v24 = 0;
    }

    else
    {
      if (v12[261] != -1)
      {
        sub_10132DE50();
      }

      v25 = v13[2080];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      NSStringFromProtocol(a2);
      v24 = __CRLAccessibilityHandleValidationErrorWithDescription(v25, 0, @"Failed to cast object <%@: %p> as protocol %@", v28, v29, v30, v31, v32, v27);
    }

    *a5 = v14 | v24;
  }

  if (isKindOfClass & v11)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

void CRLAccessibilityInstallSafeCategory(NSString *a1)
{
  v7 = NSClassFromString(a1);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && v7 == 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Failed installing safe category: %@ does not exist in runtime.", v2, v3, v4, v5, v6, a1))
    {
      abort();
    }
  }

  else if (v7)
  {

    [(objc_class *)v7 performSelector:"_crlaxInitializeSafeCategory"];
  }
}

void CRLAccessibilityInstallSafeCategories(void *a1)
{
  v1 = a1;
  v2 = [a1 count];
  if (v2)
  {
    __base = malloc_type_malloc(40 * v2, 0x800402FCC0CB6uLL);
    if (__base)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v3 = [v1 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = 0;
        v6 = &unk_101A34000;
        v7 = *v38;
        v8 = &unk_101A34000;
        do
        {
          v9 = 0;
          v35 = v4;
          do
          {
            if (*v38 != v7)
            {
              objc_enumerationMutation(v1);
            }

            v10 = *(*(&v37 + 1) + 8 * v9);
            v16 = NSClassFromString(v10);
            if (v6[257] != -1)
            {
              sub_10132DE64();
            }

            if (v8[2048] == 1 && v16 == 0)
            {
              if (qword_101A34818 != -1)
              {
                sub_10132DF90();
              }

              if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Failed installing safe category: %@ does not exist in runtime.", v11, v12, v13, v14, v15, v10))
              {
LABEL_39:
                abort();
              }
            }

            else if (v16)
            {
              v18 = v7;
              v19 = v8;
              v20 = [(objc_class *)v16 crlaxTargetClassName];
              v26 = NSClassFromString(v20);
              if (v6[257] != -1)
              {
                sub_10132DE64();
              }

              if (v19[2048] != 1 || v26)
              {
                if (v26)
                {
                  v27 = v1;
                  v28 = v5;
                  v29 = &__base[40 * v5];
                  *v29 = v16;
                  v29[1] = v10;
                  v29[2] = sub_1001D41C4(v16, v10);
                  v29[3] = v26;
                  v29[4] = sub_1001D41C4(v26, v20);
                  v5 = v28 + 1;
                  v1 = v27;
                  v6 = &unk_101A34000;
                }

                v8 = v19;
                v7 = v18;
                v4 = v35;
              }

              else
              {
                if (qword_101A34818 != -1)
                {
                  sub_10132DF90();
                }

                v8 = v19;
                v7 = v18;
                v4 = v35;
                if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Failed installing %@ on %@. %@ does not exist in runtime.", v21, v22, v23, v24, v25, v10))
                {
                  goto LABEL_39;
                }
              }
            }

            v9 = v9 + 1;
          }

          while (v4 != v9);
          v4 = [v1 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v4);
      }

      else
      {
        v5 = 0;
      }

      v30 = objc_opt_new();
      v31 = objc_opt_new();
      v32 = objc_opt_new();
      __compar[0] = _NSConcreteStackBlock;
      __compar[1] = 3221225472;
      __compar[2] = sub_1001D425C;
      __compar[3] = &unk_101846620;
      __compar[4] = v30;
      __compar[5] = v31;
      __compar[6] = v32;
      qsort_b(__base, v5, 0x28uLL, __compar);

      if (v5)
      {
        v33 = (__base + 16);
        do
        {
          [*(v33 - 2) _crlaxInstallSafeCategoryOnClass:v33[1]];

          v33 += 5;
          --v5;
        }

        while (v5);
      }

      free(__base);
    }
  }
}

id sub_1001D41C4(void *a1, uint64_t a2)
{
  v3 = [[NSMutableString alloc] initWithString:a2];
  v4 = [a1 superclass];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 insertString:@" atIndex:{", 0}];
      [v3 insertString:NSStringFromClass(v5) atIndex:0];
      v5 = [(objc_class *)v5 superclass];
    }

    while (v5);
  }

  return v3;
}

uint64_t sub_1001D425C(void **a1, void **a2, uint64_t a3)
{
  result = [a2[4] compare:*(a3 + 32)];
  if (!result)
  {
    if (sub_1001D42E8(a2, a3, a1[4], a1[5], a1[6]))
    {
      return 1;
    }

    else if (sub_1001D42E8(a3, a2, a1[4], a1[5], a1[6]))
    {
      return -1;
    }

    else
    {
      return [a2[2] compare:*(a3 + 16)];
    }
  }

  return result;
}

uint64_t sub_1001D42E8(void **a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  sub_1001D5A48(*a1, a3, a4, a5);
  v9 = 0;
  while ([a3 count])
  {
    v10 = [a3 objectAtIndex:0];
    [a3 removeObjectAtIndex:0];
    [a5 addObject:v10];
    if ([(NSString *)v10 isEqualToString:*(a2 + 8)])
    {
      [a3 removeAllObjects];
      v9 = 1;
    }

    else
    {
      v11 = NSClassFromString(v10);
      sub_1001D5A48(v11, a3, a4, a5);
    }
  }

  [a5 removeAllObjects];
  return v9 & 1;
}

void sub_1001D4914(id a1)
{
  if ((byte_101A34800 & 1) == 0)
  {
    v1 = sub_1001D4988();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ReportValidationErrors", v1, 0);
    byte_101A34800 = AppBooleanValue != 0;
    if (!AppBooleanValue)
    {
      if (qword_101A34818 != -1)
      {
        sub_10132DF7C();
      }

      byte_101A34800 = byte_101A34810;
    }
  }
}

id sub_1001D4988()
{
  v0 = +[CRLAccessibility sharedInstance];
  if (![(CRLAccessibility *)v0 _crlaxRespondsToSelector:"preferencesDomain" fromExtrasProtocol:&OBJC_PROTOCOL___CRLAccessibilityExtras skipAssertions:1])
  {
    return 0;
  }

  return [(CRLAccessibility *)v0 preferencesDomain];
}

void sub_1001D49F4(id a1)
{
  if ((byte_101A34810 & 1) == 0)
  {
    v1 = sub_1001D4988();
    byte_101A34810 = CFPreferencesGetAppBooleanValue(@"CrashOnValidationErrors", v1, 0) != 0;
  }
}

void sub_1001D4A40(id a1)
{
  if (qword_101A34818 != -1)
  {
    sub_10132DF7C();
  }

  byte_101A34820 = byte_101A34810;
}

void sub_1001D4AC0(id a1)
{
  if (qword_101AD5A08 != -1)
  {
    dispatch_once(&qword_101AD5A08, &stru_101846700);
  }

  v1 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "*** CRLAccessibility validation error: see log output above.", v2, 2u);
  }

  abort();
}

void sub_1001D4B74(uint64_t a1, int a2, int a3, Method m, const char *a5, const char **a6)
{
  if (m)
  {
    v9 = method_copyReturnType(m);
    if (qword_101A34808 != -1)
    {
      sub_10132DE3C();
    }

    if (byte_101A34800 == 1 && !sub_1001D4DA8(a5, v9))
    {
      if (qword_101A34818 != -1)
      {
        sub_10132DF7C();
      }

      if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Return type is different for method: [%@ %@]. Actual: %s, Stated: %s", v10, v11, v12, v13, v14, a1))
      {
        goto LABEL_35;
      }
    }

    if (v9)
    {
      free(v9);
    }

    NumberOfArguments = method_getNumberOfArguments(m);
    v21 = NumberOfArguments - 2;
    if (NumberOfArguments == 2)
    {
      v27 = 0;
    }

    else
    {
      v22 = NumberOfArguments;
      v23 = 2;
      while (1)
      {
        v24 = a6++;
        v25 = *v24;
        if (!*v24)
        {
          break;
        }

        v26 = method_copyArgumentType(m, v23);
        if (qword_101A34808 != -1)
        {
          sub_10132DE64();
        }

        if (byte_101A34800 == 1 && !sub_1001D4DA8(v25, v26))
        {
          if (qword_101A34818 != -1)
          {
            sub_10132DF90();
          }

          if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Argument type is different for method: [%@ %@]. Actual: %s, Stated: %s", v16, v17, v18, v19, v20, a1))
          {
            goto LABEL_35;
          }
        }

        if (v26)
        {
          free(v26);
        }

        if (v22 == ++v23)
        {
          v27 = v21;
          goto LABEL_27;
        }
      }

      v27 = v23 - 2;
    }

LABEL_27:
    if (qword_101A34808 != -1)
    {
      sub_10132DE64();
    }

    if (v21 != v27 && (byte_101A34800 & 1) != 0)
    {
      if (qword_101A34818 != -1)
      {
        sub_10132DF90();
      }

      if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Argument count is different for method: [%@ %@]. Actual: %u, Stated: %u", v16, v17, v18, v19, v20, a1))
      {
LABEL_35:
        abort();
      }
    }
  }
}

BOOL sub_1001D4DA8(const char *a1, char *__s2)
{
  v2 = 0;
  if (a1 && __s2)
  {
    if (!strcmp(a1, __s2))
    {
      return 1;
    }

    else
    {
      v5 = [[NSString alloc] initWithFormat:@"@%s", a1];
      v6 = v5;
      if (v5)
      {
        v2 = strcmp([v5 UTF8String], __s2) == 0;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

void __CRLAccessibilityValidateClassMethod(NSString *a1, NSString *a2)
{
  v4 = NSClassFromString(a1);
  v5 = NSSelectorFromString(a2);
  ClassMethod = class_getClassMethod(v4, v5);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && ClassMethod == 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"%@ Class method not present: %@", v6, v7, v8, v9, v10, a1))
    {
      abort();
    }
  }
}

void __CRLAccessibilityValidateClassMethodComplete(NSString *a1, NSString *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v17 = NSClassFromString(a1);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && v17 == 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Class missing: %@", v12, v13, v14, v15, v16, a1))
    {
      goto LABEL_19;
    }
  }

  v19 = NSSelectorFromString(a2);
  ClassMethod = class_getClassMethod(v17, v19);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && !ClassMethod)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Class method missing: [%@ %@]", v21, v22, v23, v24, v25, a1))
    {
LABEL_19:
      abort();
    }
  }

  sub_1001D4B74(a1, v20, a2, ClassMethod, a3, &a9);
}

void __CRLAccessibilityValidateIsKindOfClass(NSString *a1, NSString *a2)
{
  v4 = NSClassFromString(a1);
  v5 = NSClassFromString(a2);
  v11 = 0;
  if (v4)
  {
    v12 = v5;
    if (v5)
    {
      do
      {
        Superclass = class_getSuperclass(v4);
        v11 = Superclass == v12;
        if (!Superclass)
        {
          break;
        }

        v4 = Superclass;
      }

      while (Superclass != v12);
    }
  }

  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (!v11 && (byte_101A34800 & 1) != 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"%@ is not a kind of %@", v6, v7, v8, v9, v10, a1))
    {
      abort();
    }
  }
}

void __CRLAccessibilityValidateIvarType(NSString *a1, const char *a2, const char *a3)
{
  v6 = NSClassFromString(a1);
  InstanceVariable = class_getInstanceVariable(v6, a2);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && !sub_1001D4DA8(a3, TypeEncoding))
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"%@ : Ivar is not the right type: %s [Should be: %s was: %s]", v9, v10, v11, v12, v13, a1))
    {
      abort();
    }
  }
}

void __CRLAccessibilityValidateInstanceMethod(NSString *a1, NSString *a2)
{
  v4 = NSClassFromString(a1);
  v5 = NSSelectorFromString(a2);
  InstanceMethod = class_getInstanceMethod(v4, v5);
  outCount = 0;
  v7 = class_copyMethodList(v4, &outCount);
  if (v7)
  {
    if (outCount)
    {
      v13 = 1;
      v14 = v7;
      do
      {
        v16 = *v14++;
        v15 = v16;
        v17 = v16 == InstanceMethod;
        if (v13 >= outCount)
        {
          break;
        }

        ++v13;
      }

      while (v15 != InstanceMethod);
    }

    else
    {
      v17 = 0;
    }

    free(v7);
  }

  else
  {
    v17 = 0;
  }

  if (qword_101A34808 != -1)
  {
    sub_10132DE64();
  }

  if (!v17 && (byte_101A34800 & 1) != 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF90();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"%@ Instance method not present: %@", v8, v9, v10, v11, v12, a1))
    {
      abort();
    }
  }
}

void __CRLAccessibilityValidateInstanceMethodComplete(NSString *a1, NSString *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v17 = NSClassFromString(a1);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && v17 == 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Class missing: %@", v12, v13, v14, v15, v16, a1))
    {
      goto LABEL_19;
    }
  }

  v19 = NSSelectorFromString(a2);
  InstanceMethod = class_getInstanceMethod(v17, v19);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && !InstanceMethod)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Instance method missing: [%@ %@]", v21, v22, v23, v24, v25, a1))
    {
LABEL_19:
      abort();
    }
  }

  sub_1001D4B74(a1, v20, a2, InstanceMethod, a3, &a9);
}

void __CRLAccessibilityValidateClass(NSString *a1)
{
  v2 = NSClassFromString(a1);
  Name = class_getName(v2);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && !strcmp(Name, "nil"))
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"Class not present: %@", v4, v5, v6, v7, v8, a1))
    {
      abort();
    }
  }
}

void __CRLAccessibilityValidateIvar(NSString *a1, const char *a2)
{
  v4 = NSClassFromString(a1);
  InstanceVariable = class_getInstanceVariable(v4, a2);
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && InstanceVariable == 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"%@ : Ivar not present: %s", v5, v6, v7, v8, v9, a1))
    {
      abort();
    }
  }
}

void __CRLAccessibilityValidateProtocolMethod(NSString *a1, NSString *a2, BOOL a3, BOOL a4)
{
  v8 = NSProtocolFromString(a1);
  v9 = NSSelectorFromString(a2);
  name = protocol_getMethodDescription(v8, v9, a3, a4).name;
  if (qword_101A34808 != -1)
  {
    sub_10132DE3C();
  }

  if (byte_101A34800 == 1 && name == 0)
  {
    if (qword_101A34818 != -1)
    {
      sub_10132DF7C();
    }

    if (__CRLAccessibilityHandleValidationErrorWithDescription(byte_101A34810, 1, @"%@ Protocol %@ %@ method not present: %@", v10, v11, v12, v13, v14, a1))
    {
      abort();
    }
  }
}

id __CRLAccessibilityGetAssociatedWeakObject(void *a1, const void *a2)
{
  objc_opt_class();
  AssociatedObject = objc_getAssociatedObject(a1, a2);
  if (AssociatedObject)
  {
    v5 = AssociatedObject;
    if (objc_opt_isKindOfClass())
    {
      AssociatedObject = v5;
    }

    else
    {
      AssociatedObject = 0;
    }
  }

  return [AssociatedObject reference];
}

void __CRLAccessibilitySetAssociatedWeakObject(void *a1, const void *a2, uint64_t a3)
{
  v5 = [[CRLAccessibilityBoxedWeakReference alloc] initWithObject:a3];
  objc_setAssociatedObject(a1, a2, v5, 1);
}

id __CRLAccessibilityGetAssociatedBool(void *a1, const void *a2)
{
  AssociatedObject = objc_getAssociatedObject(a1, a2);

  return [AssociatedObject BOOLValue];
}

void __CRLAccessibilitySetAssociatedBool(void *a1, const void *a2, int a3)
{
  if (a3)
  {
    v5 = [NSNumber numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  objc_setAssociatedObject(a1, a2, v5, 1);
}

id __CRLAccessibilityGetAssociatedUnsignedInteger(void *a1, const void *a2)
{
  AssociatedObject = objc_getAssociatedObject(a1, a2);

  return [AssociatedObject unsignedIntegerValue];
}

void __CRLAccessibilitySetAssociatedUnsignedInteger(id object, void *key, id a3)
{
  if (a3)
  {
    a3 = [[NSNumber alloc] initWithUnsignedInteger:a3];
  }

  v5 = a3;
  objc_setAssociatedObject(object, key, a3, 1);
}

id __CRLAccessibilityGetAssociatedTimeInterval(void *a1, const void *a2)
{
  AssociatedObject = objc_getAssociatedObject(a1, a2);

  return [AssociatedObject doubleValue];
}

void __CRLAccessibilitySetAssociatedTimeInterval(void *a1, const void *a2, double a3)
{
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[NSNumber alloc] initWithDouble:a3];
  }

  v6 = v5;
  objc_setAssociatedObject(a1, a2, v5, 1);
}

CGFloat __CRLAccessibilityGetAssociatedCGRect(void *a1, const void *a2)
{
  AssociatedObject = objc_getAssociatedObject(a1, a2);
  if (!AssociatedObject)
  {
    return CGRectZero.origin.x;
  }

  [AssociatedObject CGRectValue];
  return result;
}

void __CRLAccessibilitySetAssociatedCGRect(void *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  v14.origin.x = CGRectZero.origin.x;
  v14.origin.y = CGRectZero.origin.y;
  v14.size.width = CGRectZero.size.width;
  v14.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(*&a3, v14))
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSValue valueWithCGRect:a3, a4, a5, a6];
  }

  objc_setAssociatedObject(a1, a2, v12, 1);
}

id sub_1001D5A48(void *a1, void *a2, void *a3, void *a4)
{
  [a1 crlaxAddSafeCategoryDependenciesToCollection:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([a4 containsObject:v11] & 1) == 0 && (objc_msgSend(a2, "containsObject:", v11) & 1) == 0)
        {
          [a2 addObject:v11];
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return [a3 removeAllObjects];
}

void sub_1001D5D38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D5D7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D6018(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D605C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D65B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D65FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D6684(id a1)
{
  v1 = [CRLBasicShapeLibrary alloc];
  v4 = +[CRLLocale currentLocale];
  v2 = [(CRLBasicShapeLibrary *)v1 initWithLocale:v4];
  v3 = qword_101A34838;
  qword_101A34838 = v2;
}

void sub_1001D6A70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D6AB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D6C84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D6CC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D6E94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001D6ED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DA5DC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA61C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA65C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA69C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA6DC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA71C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA75C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA79C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA7DC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA81C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA85C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA89C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA8DC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA91C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA95C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA99C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DA9DC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAA1C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAA5C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAA9C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAADC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAB1C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAB5C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAB9C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DABDC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAC1C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAC5C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAC9C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DACDC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAD1C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAD5C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAD9C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DADDC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAE1C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAE5C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAE9C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAEDC(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAF1C(id a1)
{
  v1 = sub_1004BD804("CRLZoomTrackerCat");
  v2 = off_1019EE1B8;
  off_1019EE1B8 = v1;
}

void sub_1001DAF5C(uint64_t a1, double a2, double a3)
{
  v4 = (a3 - *(a1 + 40)) / 0.2;
  v5 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  *&v6 = v4;
  [v5 _solveForInput:v6];
  v8 = v7;

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v9 = *(a1 + 64);
  v19 = *(a1 + 48);
  v20 = v9;
  v10 = *(a1 + 96);
  v21 = *(a1 + 80);
  v11 = *(a1 + 112);
  v12 = *(a1 + 128);
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  sub_10013A468(&v19, v18, &v22, v8);
  v15 = v22;
  v16 = v23;
  v17 = v24;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v14 = [WeakRetained associatedBackgroundLayer];
  v19 = v15;
  v20 = v16;
  v21 = v17;
  [v14 setDynamicTransform:&v19];
}

id sub_1001DB058(uint64_t a1)
{
  v2 = *(a1 + 128);
  v12 = *(a1 + 112);
  v13 = v2;
  v3 = *(a1 + 160);
  v14 = *(a1 + 144);
  v15 = v3;
  v4 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v4;
  v5 = *(a1 + 96);
  v10 = *(a1 + 80);
  v11 = v5;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained setTransform:&v8];

  return [*(a1 + 40) i_viewDidZoomToViewScale:1 notify:{*(a1 + 176), v8, v9, v10, v11, v12, v13, v14, v15}];
}

id sub_1001DB0CC(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  [WeakRetained canvasZoomTrackerDidEndFinalZoomAnimation:*(a1 + 40)];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v3 p_finishZoomWithFinalScaleFactor:v4 contentOffset:{v5, v6}];
}

void sub_1001DBB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 192), 8);
  _Block_object_dispose((v12 - 160), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001DBB5C(void *a1, int a2, int a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v6);
  *(*(a1[5] + 8) + 24) -= v6;
  *(*(a1[6] + 8) + 24) += v6;
  *(a1[4] + 24) += v6;
  return *(*(a1[5] + 8) + 24) != 0;
}

uint64_t sub_1001DBBF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DBC08(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    }
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001DBDA0;
    v18[3] = &unk_101846E28;
    v19 = *(a1 + 48);
    v18[4] = *(a1 + 32);
    v20 = &v21;
    dispatch_data_apply(v7, v18);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      size = dispatch_data_get_size(v7);
      v11 = v22[3];
      if (size > v11)
      {
        v12 = *(*(a1 + 32) + 16);
        subrange = dispatch_data_create_subrange(v7, v11, size - v11);
        concat = dispatch_data_create_concat(v12, subrange);
        v15 = *(a1 + 32);
        v16 = *(v15 + 16);
        *(v15 + 16) = concat;
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v17 = a2 ^ 1;
  if (v9)
  {
    v17 = 0;
  }

  if ((v17 & 1) == 0 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

BOOL sub_1001DBDA0(void *a1, int a2, uint64_t a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v7);
  *(*(a1[5] + 8) + 24) -= v7;
  *(*(a1[6] + 8) + 24) += v7;
  *(a1[4] + 24) += v7;
  *(*(a1[7] + 8) + 24) = v7 + a3;
  return *(*(a1[5] + 8) + 24) != 0;
}

void sub_1001DBE50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DBE94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DC08C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DC0D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DC32C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_1001DEF2C(a1, a2 - v2);
  }
}

double sub_1001DC48C(uint64_t a1, double a2)
{
  v2 = a2 * 3.0;
  v3 = 1.0 - a2;
  v4 = (1.0 - a2) * (a2 * 3.0 * a2);
  result = a2 * a2 * a2;
  if (a1 == 2)
  {
    result = v4;
  }

  v6 = v3 * (v2 * v3);
  if (!a1)
  {
    v6 = v3 * (v3 * v3);
  }

  if (a1 <= 1)
  {
    return v6;
  }

  return result;
}

void sub_1001DD428(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DD46C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DD4B0(float **a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = *a1;
  a1[1] = *a1;
  v7 = sqrtf(((a5 - a3) * (a5 - a3)) + ((a4 - a2) * (a4 - a2)));
  if (v7 > (a6 * 4.0))
  {
    v8 = vcvtps_s32_f32(v7 / (a6 * 4.0));
    v9 = v8 >= 100 ? 100 : v8;
    if (v8 >= 2)
    {
      v11 = 1;
      do
      {
        v12 = v11 / v9;
        v13 = a1[2];
        if (v6 >= v13)
        {
          v14 = *a1;
          v15 = v6 - *a1;
          v16 = v15 >> 2;
          v17 = (v15 >> 2) + 1;
          if (v17 >> 62)
          {
            sub_1000C1D48();
          }

          v18 = v13 - v14;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            sub_1001DEEE4(a1, v19);
          }

          *(4 * v16) = v12;
          v6 = (4 * v16 + 4);
          memcpy(0, v14, v15);
          v20 = *a1;
          *a1 = 0;
          a1[1] = v6;
          a1[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v6++ = v12;
        }

        a1[1] = v6;
        ++v11;
      }

      while (v9 != v11);
    }
  }
}

void sub_1001DD8B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DD8F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DDEE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DDF28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DDF6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DDFB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DDFF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DE038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DE8C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DE90C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DE950(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DE994(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DE9D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DEA1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DEE5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DEEA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001DEEE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_1001DEF2C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1000C1D48();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1000E7D14(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1001DF194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001DF1AC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 size];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1001DF420(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) close];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5[32])
    {
      [v5 collapseCommonRootDirectory];
      v5 = *(a1 + 40);
    }

    v4 = v5;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DF518;
  block[3] = &unk_101847170;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v3;
  v13 = v7;
  v11 = v4;
  v8 = v3;
  v9 = v4;
  dispatch_async(v6, block);
}

void sub_1001DF530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 56);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001DF63C;
    v11[3] = &unk_1018471E0;
    v11[4] = v8;
    v12 = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13 = v9;
    v14 = v10;
    [v8 readEndOfCentralDirectoryData:a2 eocdOffset:v6 channel:v12 completion:v11];
  }
}

void sub_1001DF63C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 32) & 4) != 0 && [v3 code] == 259 && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", NSCocoaErrorDomain), v5, v6))
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"CRLZipArchiveErrorDescription"];

    if (v8)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10132FB14();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10132FB28();
      }

      [*(a1 + 32) readLocalFileHeaderEntriesFromChannel:*(a1 + 40) offset:0 previousEntry:0 seekAttempts:0 seekForward:0 completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (!v4)
    {
      *(*(a1 + 32) + 24) = *(a1 + 56);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1001DF78C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001DF7D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

id sub_1001DFBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) readZip64EndOfCentralDirectoryLocatorData:a2 channel:*(a1 + 40) completion:*(a1 + 48)];
  }
}

id sub_1001DFEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) readZip64EndOfCentralDirectoryData:a2 channel:*(a1 + 40) completion:*(a1 + 48)];
  }
}

id sub_1001E01CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) readCentralDirectoryData:a2 entryCount:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void sub_1001E0BA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E0BE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E103C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 64);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001E1184;
    v14[3] = &unk_101847320;
    v9 = *(a1 + 48);
    v18 = *(a1 + 76);
    v17 = *(a1 + 72);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v15 = v13;
    v16 = v12;
    [v8 readLocalFileHeaderData:a2 atOffset:v6 channel:v7 completion:v14];
  }
}

void sub_1001E1184(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (!v8)
  {
    if (v7)
    {
      [*(a1 + 32) addEntry:v7];
      v10 = *(a1 + 40);
      if (v10 && (*(a1 + 68) & 1) == 0 && *(a1 + 64))
      {
        [v10 setCompressedSize:{objc_msgSend(*(a1 + 40), "compressedSize") - *(a1 + 64)}];
      }

      v11 = [v7 offset];
      v12 = &v11[[v7 fileHeaderLength]];
      v13 = [v7 compressedSize];
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = &v13[v12];
      v17 = *(a1 + 32);
      v18 = v7;
      v19 = 0;
      v20 = 0;
      goto LABEL_10;
    }

    if (a4)
    {
LABEL_43:
      v9 = *(*(a1 + 56) + 16);
      goto LABEL_3;
    }

    v21 = *(a1 + 64);
    if (*(a1 + 68))
    {
      if (v21)
      {
LABEL_25:
        v25 = 1;
        v23 = 100;
        goto LABEL_26;
      }

LABEL_20:
      if (qword_101AD5A08 != -1)
      {
        sub_10132FD24();
      }

      v24 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10132FD38(a1, v24);
      }

      LODWORD(v21) = 0;
      goto LABEL_25;
    }

    v22 = [*(a1 + 40) compressedSize];
    if (v22 >= 0x64)
    {
      v23 = 100;
    }

    else
    {
      v23 = v22;
    }

    if (v23 == v21)
    {
      goto LABEL_20;
    }

    if (v21)
    {
      v25 = 0;
LABEL_26:
      if (v23 > v21)
      {
        v26 = (v21 + 1);
        if (v25)
        {
          v27 = [*(a1 + 40) offset];
          v28 = [*(a1 + 40) fileHeaderLength];
          v16 = &v27[v26 + [*(a1 + 40) compressedSize] + v28];
          v20 = 1;
LABEL_37:
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          v14 = *(a1 + 48);
          v15 = *(a1 + 56);
          v19 = v26;
LABEL_10:
          [v17 readLocalFileHeaderEntriesFromChannel:v14 offset:v16 previousEntry:v18 seekAttempts:v19 seekForward:v20 completion:v15];
          goto LABEL_11;
        }

LABEL_36:
        v31 = [*(a1 + 40) offset];
        v32 = [*(a1 + 40) fileHeaderLength];
        v33 = [*(a1 + 40) compressedSize];
        v20 = 0;
        v16 = &v31[v33 + v32 - v26];
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    v29 = v22;
    if (qword_101AD5A08 != -1)
    {
      sub_10132FC7C();
    }

    v30 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10132FC90(a1, v30);
      if (v29)
      {
        goto LABEL_35;
      }
    }

    else if (v29)
    {
LABEL_35:
      v26 = 1;
      goto LABEL_36;
    }

LABEL_39:
    if (qword_101AD5A08 != -1)
    {
      sub_10132FDCC();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10132FDF4();
    }

    goto LABEL_43;
  }

  v9 = *(*(a1 + 56) + 16);
LABEL_3:
  v9();
LABEL_11:
}

void sub_1001E143C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001E1480(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001E14C4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001E18FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (v7 = *(a1 + 32), v8 = *(a1 + 40), v15 = 0, v9 = [v7 readLocalFileHeaderFilenameAndExtraFieldsData:v5 forEntry:v8 error:&v15], v6 = v15, !v9))
  {
    v14 = *(*(a1 + 48) + 16);
  }

  else
  {
    v10 = [*(a1 + 40) offset];
    v11 = &v10[[*(a1 + 40) fileHeaderLength]];
    v12 = [*(a1 + 40) compressedSize];
    v13 = *(a1 + 32);
    if (&v12[v11] > *(v13 + 24))
    {
      *(v13 + 24) = &v12[v11];
    }

    v14 = *(*(a1 + 48) + 16);
  }

  v14();
}

void sub_1001E1C90(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

CRLZipInflateReadChannel *sub_1001E1EF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CRLZipInflateReadChannel alloc];
  [*(a1 + 32) size];
  v5 = -[CRLZipInflateReadChannel initWithReadChannel:uncompressedSize:CRC:validateCRC:](v4, "initWithReadChannel:uncompressedSize:CRC:validateCRC:", v3, [*(a1 + 32) size], objc_msgSend(*(a1 + 32), "CRC"), *(a1 + 40));

  return v5;
}

void sub_1001E1F8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E1FD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E21FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E2240(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E26FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E2724(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E273C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = [a2 pathComponents];
  if ([v21 count] < 2 || (objc_msgSend(v21, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"__MACOSX"), v6, v8 = v21, (v7 & 1) == 0))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (v9)
    {
      v10 = 0;
      if (![v9 count])
      {
        goto LABEL_10;
      }

      do
      {
        if (v10 >= [v21 count])
        {
          break;
        }

        v11 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:v10];
        v12 = [v21 objectAtIndexedSubscript:v10];
        v13 = [v11 compare:v12 options:*(a1 + 40)];

        if (v13)
        {
          break;
        }

        ++v10;
      }

      while (v10 < [*(*(*(a1 + 32) + 8) + 40) count]);
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

        *a4 = 1;
      }

      else
      {
LABEL_10:
        v16 = v10 >= [*(*(*(a1 + 32) + 8) + 40) count];
        v8 = v21;
        if (v16)
        {
          goto LABEL_14;
        }

        v17 = *(*(*(a1 + 32) + 8) + 40);
        [v17 removeObjectsInRange:{v10, objc_msgSend(v17, "count") - v10}];
      }
    }

    else
    {
      v18 = [[NSMutableArray alloc] initWithArray:v21];
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
    }

    v8 = v21;
  }

LABEL_14:
}

void sub_1001E2918(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 length] <= *(a1 + 48) + 1)
  {
    [*(*(a1 + 40) + 16) removeObject:v5];
  }

  else if (([v7 hasPrefix:@"__MACOSX"] & 1) == 0)
  {
    v6 = [v7 substringFromIndex:*(a1 + 48) + 1];
    [v5 setCollapsedName:v6];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1001E2CA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E2CE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E2FDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E3020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E3318(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E335C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E3658(uint64_t a1)
{
  v2 = [*(a1 + 32) streamReadChannelForEntry:*(a1 + 40)];
  if (v2)
  {
    dispatch_suspend(*(a1 + 48));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001E37DC;
    v8[3] = &unk_101839F68;
    v8[4] = v2;
    v7 = *(a1 + 48);
    v3 = v7;
    v9 = v7;
    [v2 readWithHandler:v8];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101330088();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10133009C();
    }

    v4 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:0];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1001E3798(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001E37DC(uint64_t a1, int a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (!v7 || (v8 = *(*(a1 + 48) + 8), v10 = *(v8 + 40), v9 = (v8 + 40), v10))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  objc_storeStrong(v9, a4);
  if (a2)
  {
LABEL_4:
    [*(a1 + 32) close];
    dispatch_resume(*(a1 + 40));
  }

LABEL_5:
}

void sub_1001E3874(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1001E3944;
      v7[3] = &unk_101847590;
      v4 = v2;
      v5 = a1[6];
      v8 = v4;
      v9 = v5;
      dispatch_async(v3, v7);
    }

    else
    {
      v6 = v2[2];

      v6();
    }
  }
}

void sub_1001E3A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E3AB4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001E3CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E3D14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"CRLZipArchiveErrorDescription"];

  v10 = sub_100013F00(v8, v9);
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_1001E3EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001E3EC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"CRLZipArchiveErrorEntryName"];

  v10 = sub_100013F00(v8, v9);
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_1001E4944(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E4988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1001E6A48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1001E6A60(uint64_t a1)
{
  v2 = [*(a1 + 32) crl_dequeue];
  if (!v2)
  {
    v3 = objc_alloc_init(CALayer);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [NSString stringWithFormat:@"container for %@ %p", v5, *(a1 + 40)];
    [v3 setName:v6];

    [*(*(a1 + 48) + 32) setObject:*(a1 + 40) forKey:v3];
    [*(*(*(a1 + 72) + 8) + 40) addLayer:v3];
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 80));
    [v3 setDelegate:WeakRetained];

    goto LABEL_5;
  }

  v3 = v2;
  [*(*(*(a1 + 72) + 8) + 40) addLayer:v2];
  if (*(a1 + 80) == 1)
  {
LABEL_5:
    [v3 setHidden:{objc_msgSend(*(a1 + 56), "containsObject:", *(a1 + 40))}];
  }

  [*(a1 + 64) crl_enqueue:v3];

  return v3;
}

void sub_1001E6BA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6BE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6C2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6C70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6CB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6CF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6D3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6D80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6DC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 containsObject:?];
  v5 = *(a1 + 40);
  if (v4)
  {
    [v5 p_accumulateNonRenderableBackedRepAndDescendants:v6 into:*(a1 + 48)];
  }

  else
  {
    [v5 p_recursivelyUpdateRenderableForRep:v6 accumulatingRepContentPiles:*(a1 + 56) andReps:*(a1 + 48) suppressLayers:0 hidingLayersForReps:*(a1 + 64) forcingUpdateOfValidLayers:*(a1 + 72)];
  }
}

void sub_1001E6E4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6E90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6ED4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6F18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6F5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6FA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E6FE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E7028(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E7078(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E70BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1001E8310(uint64_t result, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *(v3 + 8) = 2114;
  *(v3 + 10) = result;
  return result;
}

void sub_1001E8328(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0x12u);
}

id sub_1001E8348(id a1)
{

  return a1;
}

void sub_1001E884C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E8890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E8D3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E8D80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E96E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E972C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E9948(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E998C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E9D04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001E9D48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EC424(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EC468(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EC5F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EC63C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001ED8EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001ED930(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001ED9D8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1000C1D48();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_1001EE080(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

uint64_t sub_1001EDAE0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1001EDE7C(a1, a2);
  }

  else
  {
    sub_1001EDE1C(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001EDB20(uint64_t *a1, void *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 3)
  {
    return 2;
  }

  v4 = *a2;
  if (v3 != v2)
  {
    v4 = *a2;
    do
    {
      if (v4[1] != a1[1])
      {
        break;
      }

      v4 += 6;
    }

    while (v4 != v2);
  }

  if (v4 == v2)
  {
    return 2;
  }

  v5 = 0;
  v6 = v4[1];
  v8 = *a1;
  v7 = a1[1];
  v9 = v6 < v7;
  v10 = v4 + 6;
  v11 = v2;
  while (v10 != v11)
  {
    v12 = v10;
LABEL_12:
    if (v9)
    {
      while (v12 != v11 && v12[1] < v7)
      {
        v12 += 6;
      }
    }

    else
    {
      while (v12 != v11 && v12[1] > v7)
      {
        v12 += 6;
      }
    }

    v10 = v12;
    if (v12 != v11)
    {
      if (v12 == v3)
      {
        v13 = v2;
      }

      else
      {
        v13 = v12;
      }

      v14 = *v12;
      v15 = v12[1];
      if (v7 == v15)
      {
        if (v8 == v14 || v7 == *(v13 - 5) && v8 >= v14 == v8 < *(v13 - 6))
        {
          return 0;
        }

        v10 = v12 + 6;
        if (v12 + 6 == v4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v16 = *(v13 - 6);
        if (v8 >= v14 || v8 >= v16)
        {
          if (v8 <= v14 || v8 <= v16)
          {
            v17 = (v14 - v16) * (v7 - v15) - (v15 - *(v13 - 5)) * (v8 - v14);
            if ((v9 ^ (v17 >= 0.0)))
            {
              v5 = 1 - v5;
            }

            if (v17 == 0.0)
            {
              return 0;
            }
          }

          else
          {
            v5 = 1 - v5;
          }
        }

        v9 ^= 1u;
        v10 = v12 + 6;
      }
    }
  }

  if (v4 != v3)
  {
    v12 = v3;
    v11 = v4;
    if (v10 != v4)
    {
      goto LABEL_12;
    }
  }

LABEL_39:
  if (v6 < v7 != (v9 & 1))
  {
    if (v10 == v2)
    {
      v19 = v3;
    }

    else
    {
      v19 = v10;
    }

    if (v10 != v3 && v10 != v2)
    {
      v2 = v10;
    }

    v21 = (*v19 - *(v2 - 6)) * (v7 - v19[1]) - (v19[1] - *(v2 - 5)) * (v8 - *v19);
    if ((v9 ^ (v21 >= 0.0)))
    {
      v5 = 1 - v5;
    }

    if (v21 == 0.0)
    {
      return 0;
    }
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1001EDD70(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001EDDC4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001EDDC4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_1001EDE1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1001EDFB8(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_1001EDE7C(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000C1D48();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1001EE0D8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1001EDFB8(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1001EE130(&v14);
  return v8;
}

void sub_1001EDFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EE130(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001EDFB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001EE034(result, a4);
  }

  return result;
}

void sub_1001EE018(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EE034(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1001EE080(a1, a2);
  }

  sub_1000C1D48();
}

void sub_1001EE080(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_1001EE0D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_1001EE130(uint64_t a1)
{
  sub_1001EE168(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001EE168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t sub_1001EE1C8(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000C1D48();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1001EE0D8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1001EDFB8(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1001EE130(&v14);
  return v8;
}

void sub_1001EE2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EE130(va);
  _Unwind_Resume(a1);
}

void sub_1001EEBB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EEBF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EEE6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EEEB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EF0F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EF13C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EF7E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EF824(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EFFB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001EFFF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0228(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F026C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F04A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F04EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F06A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0908(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F094C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0B74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0BB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0DE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0E28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0F9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F0FE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F12B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F12F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F133C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001F1C8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F1CD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F2200(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F2244(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F25B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F25F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float sub_1001F3D88(float64x2_t *a1)
{
  v2 = a1[2].f64[0];
  v3 = a1[2].f64[1];
  v4 = sub_100120090(v2, v3, a1[3].f64[0], a1[3].f64[1]);
  v14 = a1->f64[0];
  v5 = a1->f64[1];
  v6 = v4 + sub_100120090(v2, v3, a1->f64[0], v5);
  v7 = 0.0;
  v8 = 0.33333;
  v9 = 0.33333;
  do
  {
    v10 = sub_10011F20C(a1, v8);
    v12 = sub_100120090(v10, v11, v14, v5);
    if (v8 > fminf(sqrtf((v12 * 3.0) / v6) / 3.0, 0.33333))
    {
      v9 = v8;
    }

    else
    {
      v7 = v8;
    }

    v8 = (v9 + v7) * 0.5;
  }

  while (vabds_f32(v9, v7) >= 0.00001);
  return (v9 + v7) * 0.5;
}

void sub_1001F420C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, id a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  *a1 = &off_101847FD8;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = a6;
  *&v18 = 0xFFFFFFFFLL;
  *(&v18 + 1) = 0xFFFFFFFFLL;
  *(a1 + 40) = v18;
  *(a1 + 56) = [v14 wpKind];
  if (a8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a8 = [v14 characterCount];
  }

  *(a1 + 64) = a8;
  *(a1 + 72) = [v14 attachmentCount];
  sub_10011BE84(a1 + 80);
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  operator new();
}

void sub_1001F443C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v12 + 100;
  sub_1002006E8(&a10);
  sub_10011C278(v12 + 10);

  _Unwind_Resume(a1);
}

void sub_1001F44C8(NSRange *a1, NSUInteger a2)
{
  location = a1[6].location;
  length = a1[6].length;
  if (location != 0x7FFFFFFFFFFFFFFFLL || length != 0)
  {
    v7 = a2 - location < length && a2 >= location;
    v8 = length + location;
    if (!v7 && v8 != a2)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101331B80();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromRange(a1[6]);
        *buf = 67110402;
        v18 = v10;
        v19 = 2082;
        v20 = "void CRLWPLayoutState::setCharIndex(CRLWPCharIndex)";
        v21 = 2082;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutState.h";
        v23 = 1024;
        v24 = 120;
        v25 = 2048;
        v26 = a2;
        v27 = 2114;
        v28 = v16;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d charIndex %lu is outside of paragraphRange: %{public}@", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101331B94();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v13 = [NSString stringWithUTF8String:"void CRLWPLayoutState::setCharIndex(CRLWPCharIndex)"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutState.h"];
      v15 = NSStringFromRange(a1[6]);
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:120 isFatal:0 description:"charIndex %lu is outside of paragraphRange: %{public}@", a2, v15];
    }
  }

  a1->location = a2;
}

uint64_t sub_1001F4768(uint64_t a1)
{
  *a1 = &off_101847FD8;
  (*(**(a1 + 832) + 24))(*(a1 + 832));
  v2 = *(a1 + 832);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = (a1 + 800);
  sub_1002006E8(&v4);
  sub_10011C278(a1 + 80);
  return a1;
}

void sub_1001F4834(uint64_t a1)
{
  sub_1001F4768(a1);

  operator delete();
}

uint64_t sub_1001F486C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 8);
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331BBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101331BD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101331C6C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::layOutIntoTarget(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, BOOL *)"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:170 isFatal:0 description:"invalid nil value for '%{public}s'", "_storage"];

    v6 = *(a1 + 8);
  }

  [v6 wpKind];
  if (objc_opt_respondsToSelector())
  {
    [v5 willLayoutIntoTarget];
  }

  v10 = *(a1 + 80);
  v11 = *(a1 + 64);
  if (v10 > v11)
  {
    v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331C94();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v41 = [*(a1 + 8) wpKind];
      v43 = *(a1 + 80);
      v45 = *(a1 + 64);
      v42 = [*(a1 + 8) length];
      *buf = 67110914;
      v57 = v12;
      v58 = 2082;
      v59 = "BOOL CRLWPLayoutChore::layOutIntoTarget(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, BOOL *)";
      v60 = 2082;
      v61 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm";
      v62 = 1024;
      v63 = 179;
      v64 = 2048;
      v65 = v41;
      v66 = 2048;
      v67 = v43;
      v68 = 2048;
      v69 = v45;
      v70 = 2048;
      v71 = v42;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempt to lay out past end of storage (kind:%lu) %lu vs %lu vs %lu", buf, 0x4Au);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101331CBC();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::layOutIntoTarget(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, BOOL *)"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, v16, 179, 0, "Attempt to lay out past end of storage (kind:%lu) %lu vs %lu vs %lu", [*(a1 + 8) wpKind], *(a1 + 80), *(a1 + 64), objc_msgSend(*(a1 + 8), "length"));

    v10 = *(a1 + 80);
    v11 = *(a1 + 64);
  }

  if (v10 <= v11)
  {
    if ([v5 textIsVertical])
    {
      [v5 currentSize];
      v19 = v18;
    }

    else
    {
      [v5 currentSize];
      v19 = v20;
    }

    v21 = [v5 columns];
    if (![v21 count])
    {
      v22 = *(a1 + 8);
      v23 = *(a1 + 80);
      v24 = [*(a1 + 24) styleProvider];
      [CRLWPLayoutManager fixColumnBoundsForTarget:v5 storage:v22 charIndex:v23 firstColumnIndex:0 precedingHeight:0 height:v24 alreadyHasMargins:0.0 styleProvider:v19];
    }

    if (![v21 count])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101331CE4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101331D0C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101331D94();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v26 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::layOutIntoTarget(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, BOOL *)"];
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:190 isFatal:0 description:"No columns to lay out into"];
    }

    if ([v21 count])
    {
      sub_1001F51F8(a1, v5, 0, *(a1 + 80), 0, a3);
      v44 = sub_1001F589C(a1, a1 + 80);
      *(a1 + 864) = 0;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v28 = v21;
      v29 = [v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v29)
      {
        v30 = *v51;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v50 + 1) + 8 * i) setAnchoredRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
          }

          v29 = [v28 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v29);
      }

      v49 = 0.0;
      v32 = rint(v19);
      v48 = 1;
      v47 = 0;
      v54 = 0;
      do
      {
        v33 = sub_1001F5ABC(a1, v5, a3, &v49, &v48, &v54, &v47, v19, v32);
        v32 = rint(v19 - v49);
        if (v32 <= 0.0)
        {
          v34 = 1;
        }

        else
        {
          v34 = v33;
        }
      }

      while (v34 != 1);
      sub_1001F6608(a1, v44, v46);
      sub_10011C278(v46);
      sub_10011C30C(a1 + 80, 0);
      if (objc_opt_respondsToSelector())
      {
        [v5 didLayoutIntoTarget];
      }

      v35 = *(a1 + 80);
      v36 = *(a1 + 64);
      v37 = v54;
      v38 = sub_10027E2F0(v54);
      if (v37 == 8232)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      v17 = (v35 < v36) | v39;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_1001F5060(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F50A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F50E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F512C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F5170(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F51B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F51F8(uint64_t a1, void *a2, uint64_t a3, NSUInteger a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v41 = a5;
  *(a1 + 824) = v11;
  v12 = [v11 textIsVertical];
  if (((v12 ^ ((*(a1 + 32) & 0x10) == 0)) & 1) == 0)
  {
    v13 = 16;
    if (!v12)
    {
      v13 = 0;
    }

    *(a1 + 32) = *(a1 + 32) & 0xFFFFFFFFFFFFFFEFLL | v13;
    (*(**(a1 + 832) + 24))(*(a1 + 832));
    v14 = *(a1 + 832);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 16) forceWesternLineBreaking];
    }

    operator new();
  }

  sub_10011BE84(obj);
  sub_10011C27C(a1 + 80, obj);
  sub_10011C278(obj);
  *(a1 + 176) = xmmword_101464828;
  sub_1001F44C8((a1 + 80), a4);
  v15 = [v11 columns];
  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:a3];
    sub_10011C2BC(a1 + 80, v16);

    v17 = *(a1 + 8);
    v18 = [*(a1 + 24) styleProvider];
    sub_1002407EC(obj, v17, v18, 0, [*(a1 + 8) paragraphCount] - 1, 1);
    objc_storeStrong((a1 + 104), obj[0]);
    objc_storeStrong((a1 + 112), obj[1]);
    v19 = v44;
    *(a1 + 120) = v43;
    *(a1 + 136) = v19;
    *(a1 + 152) = v45;
    *(a1 + 168) = v46;
    sub_10024068C(obj);
  }

  *(a1 + 88) = a4;
  *(a1 + 96) = 0x7FFFFFFFFFFFFFFFLL;
  sub_1001F8AE8(a1);
  sub_1001F7198(a1, 0, 0x7FFFFFFFFFFFFFFFuLL);
  v20 = sub_10011C2B4(a1 + 80);
  v21 = v20 == 0;

  if (!v21)
  {
    v22 = sub_10011C2B4(a1 + 80);
    *(a1 + 256) = [v22 columnIndex];

    if (*(a1 + 256) != a3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101331DBC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101331DE4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101331E6C();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v24 = [NSString stringWithUTF8String:"void CRLWPLayoutChore::protectedSetUpLayoutState(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, NSUInteger, CRLWPCharIndex, __strong id<TSDHint>, CRLWPLayoutFlags)"];
      v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
      [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:715 isFatal:0 description:"Column index mismatch"];
    }
  }

  v26 = [*(a1 + 16) textWrapper];
  sub_10011C30C(a1 + 80, v26);

  if (objc_opt_respondsToSelector())
  {
    v27 = *(a1 + 16);
LABEL_25:
    v29 = [v27 textColorOverride];
    goto LABEL_27;
  }

  v28 = objc_opt_respondsToSelector();
  v27 = v11;
  if (v28)
  {
    goto LABEL_25;
  }

  v29 = 0;
LABEL_27:
  sub_10011C328(a1 + 80, v29);
  [v11 maxSize];
  v30 = [v11 position];
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
  *(a1 + 592) = v32;
  *(a1 + 600) = v33;
  *(a1 + 608) = v34;
  *(a1 + 616) = v35;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 431) = [v11 shouldHyphenate];
  }

  else
  {
    *(a1 + 431) = 1;
  }

  *(a1 + 496) = 0x4032000000000000;
  sub_1001F8E90(a1);
  *(a1 + 648) = a6;
  if (objc_opt_respondsToSelector())
  {
    v36 = [v11 restrictedLayoutCharRange];
    v38 = v37;
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v38 = 0;
  }

  sub_10011C358(a1 + 80, v36, v38);
  if (objc_opt_respondsToSelector())
  {
    v39 = [v11 alwaysIncludesSpaceBefore];
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 673) = v39;
  if (objc_opt_respondsToSelector())
  {
    v40 = [v11 alwaysIncludesSpaceAfter];
  }

  else
  {
    v40 = 0;
  }

  *(a1 + 674) = v40;
}

uint64_t sub_1001F589C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[101];
  if ((0x4FA4FA4FA4FA4FA5 * ((v4 - a1[100]) >> 4)) >= 6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331E94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101331EA8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101331F30();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"size_t CRLWPLayoutChore::pPushLayoutState(const CRLWPLayoutState &)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:766 isFatal:0 description:"Too many layoutStates pushed"];

    v4 = a1[101];
  }

  if (v4 >= a1[102])
  {
    v8 = sub_10020076C(a1 + 100, a2);
  }

  else
  {
    sub_10011C208(v4, a2);
    v8 = v4 + 720;
    a1[101] = v4 + 720;
  }

  a1[101] = v8;
  return 0x4FA4FA4FA4FA4FA5 * ((v8 - a1[100]) >> 4);
}

uint64_t sub_1001F5ABC(uint64_t a1, void *a2, uint64_t a3, double *a4, _DWORD *a5, __int16 *a6, unsigned int *a7, double a8, double a9)
{
  v106 = a2;
  v15 = 0;
  v120 = a9;
  v119 = 0x4028000000000000;
  do
  {
    v16 = &v123[v15];
    *v16 = 0;
    *(v16 + 1) = 0;
    origin = CGRectZero.origin;
    size = CGRectZero.size;
    *(v16 + 1) = CGRectZero.origin;
    *(v16 + 2) = size;
    *(v16 + 3) = origin;
    *(v16 + 4) = size;
    *(v16 + 10) = 0;
    v15 += 88;
  }

  while (v15 != 880);
  v19 = sub_1001FF6E8(a1, v106, *a7, v123);
  v20 = *(a1 + 208);
  v21 = *(a1 + 224);
  if (v19 == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v22 = *(a1 + 240);
    v23 = *(a1 + 248);
    v24 = [v106 columns];
    v25 = v23 + v22;
    if ([v24 count] >= v25)
    {
      v27 = [v106 columns];
      v28 = [v27 objectAtIndexedSubscript:v25 - 1];
      v26 = [v28 layoutResultFlags];
    }

    else
    {
      v26 = 0;
    }
  }

  v102 = a5;
  v29 = rint(v19 + v20 + v21);
  v104 = v26;
  if ((v26 & 0x200) == 0)
  {
    v29 = a9;
  }

  v118 = v29;
  v117 = (v26 & 0x200) >> 9;
  v103 = sub_1001F589C(a1, a1 + 80);
  v30 = *(a1 + 864);
  *a6 = 0;
  v115 = 0;
  *(a1 + 256) = *a7;
  v116 = 1;
  v107 = a6;
  while (1)
  {
    v31 = *(a1 + 80);
    if (v31 > *(a1 + 64))
    {
      v32 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101331F58();
      }

      v33 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.a) = 67109890;
        HIDWORD(buf.a) = v32;
        LOWORD(buf.b) = 2082;
        *(&buf.b + 2) = "BOOL CRLWPLayoutChore::pLayOutPiece(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)";
        WORD1(buf.c) = 2082;
        *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm";
        WORD2(buf.d) = 1024;
        *(&buf.d + 6) = 3528;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad _state.charIndex", &buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101331F80();
      }

      v34 = off_1019EDA68;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v62 = +[CRLAssertionHandler packedBacktraceString];
        LODWORD(buf.a) = 67109378;
        HIDWORD(buf.a) = v32;
        LOWORD(buf.b) = 2114;
        *(&buf.b + 2) = v62;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
      }

      v35 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::pLayOutPiece(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)"];
      v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
      [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:3528 isFatal:0 description:"Bad _state.charIndex"];

      v31 = *(a1 + 80);
    }

    v37 = *(a1 + 824);
    v38 = *(a1 + 8);
    v39 = *a7;
    v40 = *a4;
    v41 = v118;
    v42 = [*(a1 + 24) styleProvider];
    [CRLWPLayoutManager fixColumnBoundsForTarget:v37 storage:v38 charIndex:v31 firstColumnIndex:v39 precedingHeight:0 height:v42 alreadyHasMargins:v40 styleProvider:v41];

    LOBYTE(buf.a) = 0;
    LOBYTE(v112) = 0;
    v43 = *a7;
    v44 = *(a1 + 248);
    v45 = [v106 columns];
    v46 = [v45 objectAtIndexedSubscript:*a7];

    [v46 frameBounds];
    if (v47 <= 0.0 && ([v106 autosizeFlags] & 1) == 0)
    {

      v96 = 1;
      goto LABEL_69;
    }

    v48 = v44 + v43;
    v49 = *a7;
    v50 = v44 + v43 <= v49 ? *a7 : v44 + v43;
    v51 = v44 + v43 >= v49 ? *a7 : v44 + v43;
    *(a1 + 864) = v30;
    v52 = sub_1001F680C(a1, a3 & 0xFFFFFFFFFFFFFFFELL, v51, v50 - v51, *(a1 + 824), v107, &v115, &buf, &v112);
    v53 = v115;
    v54 = *v107;
    v55 = *a7;
    v56 = sub_1001F891C(a1);
    v58 = v54 == 5 ? 0 : v53;
    v59 = sub_1001FF97C(a1, v58 & (v52 ^ 1u), v55, v56, v123, a9, v57, v48, v104, &v119, &v120, &v118, a4, &v117, &v116);

    if ((v59 & 1) == 0)
    {
      break;
    }

    v60 = v116;
    if (v116 > 0xF)
    {
      break;
    }

    *v107 = 0;
    v115 = 0;
    *(a1 + 256) = *a7;
    v116 = v60 + 1;
    v61 = sub_1001F891C(a1);
    sub_1001F85D0(a1, v61);
    sub_100350A38(*(a1 + 832));
  }

  v105 = [*(a1 + 824) columns];
  if (*(a1 + 248))
  {
    v63 = 0;
    v64 = 0;
    do
    {
      v65 = [v105 objectAtIndexedSubscript:v64 + *a7];
      v66 = v65;
      if (a3)
      {
        [v65 frameBounds];
        v126.origin.x = v67;
        v126.origin.y = v68;
        v126.size.width = v69;
        v126.size.height = v70;
        v71 = &v123[88 * v63];
        if (CGRectEqualToRect(*(v71 + 16), v126))
        {
          v72 = sub_1001FCF68(a1, v71, [v66 lineFragmentArray], v66, a3, *(v71 + 10));
        }

        else
        {
          [v66 erasableBounds:0];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v83 = v82;
          if (v66)
          {
            [v66 transformToWP];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          v124.origin.x = v77;
          v124.origin.y = v79;
          v124.size.width = v81;
          v124.size.height = v83;
          v127 = CGRectApplyAffineTransform(v124, &buf);
          v125 = CGRectUnion(*(v71 + 48), v127);
          v72 = sub_1001FFEFC(v125.origin.x, v125.origin.y, v125.size.width, v125.size.height, v125.origin.x, v125.origin.y, v125.size.width, v125.size.height, v84, v66, 0, 0);
        }

        v85 = v72;
        v86 = v73;
        v87 = v74;
        v88 = v75;
        memset(&buf, 0, sizeof(buf));
        if (v66)
        {
          [v66 transformFromWP];
        }

        [CRLWPLayoutManager setTransformForColumn:v66 andInvalidateWPRect:*(a1 + 824) inTarget:v85, v86, v87, v88];
        v113 = 0u;
        v114 = 0u;
        v112 = 0u;
        if (v66)
        {
          [v66 transformFromWP];
        }

        v121 = buf;
        v111[0] = v112;
        v111[1] = v113;
        v111[2] = v114;
        if (!sub_100139934(&v121.a, v111))
        {
          v89 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101331FA8();
          }

          v90 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v121.a) = 67109890;
            HIDWORD(v121.a) = v89;
            LOWORD(v121.b) = 2082;
            *(&v121.b + 2) = "BOOL CRLWPLayoutChore::pLayOutPiece(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)";
            WORD1(v121.c) = 2082;
            *(&v121.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm";
            WORD2(v121.d) = 1024;
            *(&v121.d + 6) = 3700;
            _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Computed transform differs by more than translation", &v121, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101331FD0();
          }

          v91 = off_1019EDA68;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v94 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(v121.a) = 67109378;
            HIDWORD(v121.a) = v89;
            LOWORD(v121.b) = 2114;
            *(&v121.b + 2) = v94;
            _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v121, 0x12u);
          }

          v92 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::pLayOutPiece(CRLCanvasLayout<CRLWPLayoutTarget> *__strong, CRLWPLayoutFlags, const CGFloat, CGFloat, CGFloat &, uint &, unichar &, uint &)"];
          v93 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
          [CRLAssertionHandler handleFailureInFunction:v92 file:v93 lineNumber:3700 isFatal:0 description:"Computed transform differs by more than translation"];
        }
      }

      v63 = ++v64;
    }

    while (*(a1 + 248) > v64);
  }

  *a7 = v48;
  if (v53)
  {
    sub_1001F8AE8(a1);
    v95 = *a7;
    *(a1 + 240) = v95;
    *(a1 + 256) = v95;
    v96 = 1;
    if (!((*v107 == 5) | v52 & 1) && *a4 < a8 && *(a1 + 80) < *(a1 + 40))
    {
      v97 = sub_10011C2C4(a1 + 80);
      v98 = [v97 alwaysStartsNewTarget];

      if ((v98 & 1) == 0)
      {
        v96 = 0;
        ++*v102;
      }
    }
  }

  else
  {
    v96 = 1;
  }

LABEL_69:
  sub_1001F6608(a1, v103, v110);
  sub_10011C278(v110);
  for (i = 800; i != -80; i -= 88)
  {
    v100 = *&v123[i];
    if (v100)
    {
      sub_1000F532C(v100);
    }
  }

  return v96;
}

void sub_1001F64C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  v25 = 800;
  while (1)
  {
    v26 = *(&STACK[0x458] + v25);
    if (v26)
    {
      sub_1000F532C(v26);
    }

    v25 -= 88;
    if (v25 == -80)
    {

      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_1001F6608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 808);
  if (v3 == *(a1 + 800) || 0x4FA4FA4FA4FA4FA5 * ((v3 - *(a1 + 800)) >> 4) != a2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101331FF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133200C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101332094();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d stack size is invalid", v8, v9, v10, v11, v12, v13, v14, "const CRLWPLayoutState CRLWPLayoutChore::pPopLayoutState(size_t)");
    v15 = [NSString stringWithUTF8String:"const CRLWPLayoutState CRLWPLayoutChore::pPopLayoutState(size_t)"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:776 isFatal:1 description:"stack size is invalid"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v18);
    abort();
  }

  sub_10011C208(a3, v3 - 720);
  result = sub_10011C278(*(a1 + 808) - 720);
  *(a1 + 808) = result;
  return result;
}

uint64_t sub_1001F680C(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v64 = a5;
  v67 = [v64 columns];
  if (*(a1 + 264) == 1)
  {
    v13 = [v67 firstObject];
    v14 = [v13 scaleTextPercent];
    v15 = v14 < 0x64;
    if (v14 >= 0x64)
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 + 1;
    }

    v66 = v16;
  }

  else
  {
    v15 = 0;
    v17 = *(a1 + 272);
    v18 = (v17 * 100.0);
    if (v17 == 0.0)
    {
      v18 = 100;
    }

    v66 = v18;
  }

  v55 = v15;
  v53 = sub_1001F589C(a1, a1 + 80);
  v58 = *(a1 + 864);
  v19 = [v67 count];
  v20 = (a3 + a4);
  if (a3 + a4 > v19)
  {
    v60 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013320BC();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v87.location = a3;
      v87.length = a4;
      v51 = NSStringFromRange(v87);
      *buf = 67110402;
      v75 = v60;
      v76 = 2082;
      v77 = "BOOL CRLWPLayoutChore::pLayOutColumns(CRLWPLayoutFlags, NSRange, CRLCanvasLayout<CRLWPLayoutTarget> *__strong, unichar &, BOOL &, BOOL &, BOOL &)";
      v78 = 2082;
      v79 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm";
      v80 = 1024;
      v81 = 438;
      v82 = 2048;
      v83 = v19;
      v84 = 2114;
      v85 = v51;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Not enough columns: %lu, but need %{public}@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013320D0();
    }

    v22 = off_1019EDA68;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v23 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::pLayOutColumns(CRLWPLayoutFlags, NSRange, CRLCanvasLayout<CRLWPLayoutTarget> *__strong, unichar &, BOOL &, BOOL &, BOOL &)"];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    v86.location = a3;
    v86.length = a4;
    v25 = NSStringFromRange(v86);
    [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:438 isFatal:0 description:"Not enough columns: %lu, but need %{public}@", v19, v25];
  }

  v26 = 0;
  if (v20 >= v19)
  {
    v20 = v19;
  }

  v52 = 100;
  v54 = 40;
  for (i = v55; ; i = 1)
  {
    rangea = v26;
    v59 = i;
    while (1)
    {
      v61 = i;
      if (v59)
      {
        sub_100350A38(*(a1 + 832));
        v56 = [v67 firstObject];
        [v56 setScaleTextPercent:v66];
        sub_1001F7198(a1, 0, 0x7FFFFFFFFFFFFFFFuLL);
        v28 = objc_opt_class();
        v29 = sub_100014370(v28, *(a1 + 16));
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v57 = v29;
        v30 = [v29 children];
        v31 = a7;
        v32 = [v30 countByEnumeratingWithState:&v69 objects:v73 count:16];
        if (v32)
        {
          v33 = *v70;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v70 != v33)
              {
                objc_enumerationMutation(v30);
              }

              [*(*(&v69 + 1) + 8 * j) invalidateTextScalePercent];
            }

            v32 = [v30 countByEnumeratingWithState:&v69 objects:v73 count:16];
          }

          while (v32);
        }

        a7 = v31;
      }

      *(a1 + 864) = v58;
      v35 = a3;
      if (a3 < v20)
      {
        do
        {
          *(a1 + 256) = v35;
          v36 = [v67 objectAtIndexedSubscript:v35];
          sub_10011C2BC(a1 + 80, v36);

          v37 = sub_10011C2B4(a1 + 80);
          [v37 setScaleTextPercent:v66];

          if (*a8 != 1)
          {
            v41 = sub_10011C2B4(a1 + 80);
            [v41 setStartCharIndex:*(a1 + 80)];

            [v64 maxSize];
            v42 = sub_10011C2B4(a1 + 80);
            [v42 maxSize];

            [*(a1 + 8) wpKind];
            v43 = objc_opt_new();
            sub_1001F7D04(a1, a2, v43);
          }

          v38 = sub_10011C2B4(a1 + 80);
          v39 = v38;
          if (*a9)
          {
            v40 = 16;
          }

          else
          {
            v40 = 0;
          }

          [v38 makeEmpty:*(a1 + 80) anchoredRange:*(a1 + 88) layoutResultFlags:{0, v40}];

          ++v35;
        }

        while (v20 != v35);
      }

      v26 = rangea + 1;
      if (*(a1 + 264))
      {
        break;
      }

      i = 1;
      ++rangea;
      if ((v61 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    v44 = [v67 lastObject];
    v45 = [v44 layoutResultFlags] & 3;
    if (!(v61 & 1 | (v45 != 0)))
    {
      break;
    }

    if (((rangea == 0) & v55) == 1)
    {
      if (v45)
      {
        v55 = 1;
        v52 = --v66;
        goto LABEL_59;
      }

      v55 = 0;
      v48 = 100;
    }

    else
    {
      if (((v26 == 2) & v55) == 1 && !v45)
      {
        break;
      }

      v46 = v52;
      v47 = v54;
      if ((v52 - v54) > 1)
      {
        v55 = 0;
        if (v45)
        {
          v46 = v66;
        }

        else
        {
          v47 = v66;
        }

        v52 = v46;
        v54 = v47;
        v48 = (v47 + v46) >> 1;
      }

      else
      {
        if (!v45 || v66 == v54)
        {
          break;
        }

        v55 = 0;
        v48 = v54;
      }
    }

    v66 = v48;
LABEL_59:
    v49 = sub_1001F891C(a1);
    sub_1001F85D0(a1, v49);
    *a8 = 0;
  }

LABEL_61:
  sub_1001F6608(a1, v53, v68);
  sub_10011C278(v68);

  return 0;
}

void sub_1001F7110(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F7154(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F7198(uint64_t a1, uint64_t a2, NSUInteger a3)
{
  v5 = a1 + 80;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1 + 80;
  }

  v7 = sub_100240898(v6 + 24, 0);

  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013320F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133210C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101332194();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"void CRLWPLayoutChore::pSetUpStateForParagraphIndex(CRLWPLayoutState *, CRLWPCharIndex)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:5707 isFatal:0 description:"Bad paragraphEnumerator"];
  }

  *(v6 + 440) = 0;
  *(v6 + 448) = 0;
  *(v6 + 424) = 0x7FFFFFFFFFFFFFFFLL;
  v11 = sub_100240898(v6 + 24, (v6 + 96));
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001F44C8(v6, a3);
  }

  v12 = *v6;
  v13 = *(v6 + 96);
  v14 = *(v6 + 104);
  v15 = *v6 < v13 || *v6 - v13 >= v14;
  if (v15 && (v12 != v14 + v13 || v12 != *(a1 + 64)))
  {
    v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013321BC();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v78 = *v6;
      v77 = NSStringFromRange(*(v6 + 96));
      *buf = 67110402;
      v80 = v16;
      v81 = 2082;
      v82 = "void CRLWPLayoutChore::pSetUpStateForParagraphIndex(CRLWPLayoutState *, CRLWPCharIndex)";
      v83 = 2082;
      v84 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm";
      v85 = 1024;
      v86 = 5727;
      v87 = 2048;
      v88 = v78;
      v89 = 2114;
      v90 = v77;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d charIndex %lu is outside of paragraphRange: %{public}@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013321E4();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"void CRLWPLayoutChore::pSetUpStateForParagraphIndex(CRLWPLayoutState *, CRLWPCharIndex)"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    v21 = *v6;
    v22 = NSStringFromRange(*(v6 + 96));
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:5727 isFatal:0 description:"charIndex %lu is outside of paragraphRange: %{public}@", v21, v22];

    v13 = *(v6 + 96);
    v14 = *(v6 + 104);
  }

  v23 = v14 + v13;
  v24 = *(a1 + 64);
  if (v23 > v24)
  {
    *(v6 + 104) = v24 - v13;
  }

  *(v6 + 208) = sub_1002409EC(v6 + 24);
  *(v6 + 256) = 0;
  *(v6 + 456) = *v6 == *(v6 + 96);
  v25 = *(v6 + 192);
  if (v25 == 0.0)
  {
    v26 = sub_10011C2B4(v6);
    v27 = [v26 scaleTextPercent];

    v28 = v27;
  }

  else
  {
    v28 = v25 * 100.0;
  }

  v29 = sub_10011C2A4(v6);
  v30 = v11 == v29;

  if (!v30)
  {
    sub_10011C2AC(v6, v11);
    [v11 floatValueForProperty:49];
    *(v6 + 296) = v31;
    [v11 floatValueForProperty:48];
    *(v6 + 304) = v32;
    v33 = objc_opt_class();
    v34 = [v11 valueForProperty:40];
    v35 = sub_100013F00(v33, v34);

    if (v35)
    {
      [v35 amount];
    }

    else
    {
      v36 = 1.0;
    }

    *(v6 + 288) = v36;
    *(v6 + 272) = [v35 mode];
    [v35 baselineRule];
    *(v6 + 280) = v37;
    [v11 floatValueForProperty:39];
    *(v6 + 216) = v38;
    [v11 floatValueForProperty:47];
    *(v6 + 224) = v39;
    [v11 floatValueForProperty:33];
    *(v6 + 232) = v40;
    *(v6 + 352) = [v11 intValueForProperty:35] != 0;
    v41 = objc_opt_class();
    v42 = [v11 valueForProperty:51];
    v43 = sub_100014370(v41, v42);
    sub_10011C2FC(v6, v43);

    [v11 floatValueForProperty:31];
    v45 = v44;
    v46 = v44 == 0.0;
    v47 = 36.0;
    if (!v46)
    {
      v47 = v45;
    }

    *(v6 + 408) = v47;
    v48 = *(a1 + 856);
    *(a1 + 856) = 0;

    if ((*(v6 + 352) & 1) == 0)
    {
      goto LABEL_50;
    }

    v49 = objc_opt_class();
    v50 = [v11 valueForProperty:15];
    v51 = sub_100014370(v49, v50);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || [v51 isEqualToString:@"__multilingual"])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_49:

LABEL_50:
        v54 = *(a1 + 856);
        if (!v54)
        {
          *(v6 + 352) = 0;
        }

        sub_10011C338(v6, v54);

        goto LABEL_53;
      }

      v52 = [*(a1 + 824) hyphenationLocale];
    }

    else
    {
      if (!v51 || ([v51 isEqualToString:@"__none"] & 1) != 0)
      {
        goto LABEL_49;
      }

      v52 = [[NSLocale alloc] initWithLocaleIdentifier:v51];
    }

    v53 = *(a1 + 856);
    *(a1 + 856) = v52;

    goto LABEL_49;
  }

LABEL_53:
  v55 = (v28 / 100.0);
  *(v6 + 320) = vmulq_n_f64(*(v6 + 296), v55);
  v56 = *(v6 + 288) * v55;
  if (!*(v6 + 272))
  {
    v56 = *(v6 + 288);
  }

  *(v6 + 312) = v56;
  sub_10011C2EC(v5, *(a1 + 8));
  if (objc_opt_respondsToSelector())
  {
    v57 = [*(a1 + 824) renderingOverrides];
    sub_10011C36C(v6, v57);
  }

  v58 = sub_1002409FC(v6 + 24);
  sub_10011C2DC(v6, v58);

  v59 = sub_10011C2D4(v6);
  [v59 labelIndentForLevel:*(v6 + 208)];
  *(v6 + 248) = v60;

  v61 = sub_10011C2D4(v6);
  [v61 textIndentForLevel:*(v6 + 208)];
  v63 = v62;

  v64 = *(v6 + 248) + v63;
  *(v6 + 240) = v64;
  *(v6 + 264) = v64 + *(v6 + 216);
  v65 = sub_10011C2D4(v6);
  if (!v65)
  {
    goto LABEL_61;
  }

  if (!sub_100240AD4(v6 + 24))
  {
    v66 = [*(a1 + 8) characterAtIndex:*(v6 + 96) - 1] == 11;

    if (!v66)
    {
      goto LABEL_62;
    }

LABEL_61:
    *(v6 + 348) = 0;
    *(v6 + 350) = 0;
    goto LABEL_72;
  }

LABEL_62:
  v67 = sub_10011C2D4(v6);
  *(v6 + 348) = [v67 labelTypeForLevel:*(v6 + 208)] != 0;

  v68 = *(v6 + 348);
  if ((v68 & 1) == 0)
  {
    v67 = sub_10011C2D4(v6);
    [v67 textIndentForLevel:*(v6 + 208)];
    if (v69 <= 0.0 && *(v6 + 248) <= 0.0)
    {
      *(v6 + 350) = 0;
      goto LABEL_71;
    }
  }

  *(v6 + 350) = sub_100240ABC(v6 + 24);
  if ((v68 & 1) == 0)
  {
LABEL_71:
  }

LABEL_72:
  *(v6 + 349) = sub_100240ABC(v6 + 24);
  v70 = sub_1001FF4A8(a1, v11);
  *(v6 + 400) = v70;
  if (v70 == 4)
  {
    *(v6 + 400) = *(v6 + 349);
  }

  *(v6 + 432) = 0;
  *(v6 + 434) = 0;
  v72 = *(v6 + 96);
  v71 = *(v6 + 104);
  if (v72 != sub_100350AB4(*(a1 + 832)) || v71 != v73)
  {
    (*(**(a1 + 832) + 24))(*(a1 + 832));
  }

  if (__CFADD__(*(v6 + 96), *(v6 + 104)))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133220C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101332234();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013322BC();
    }

    v74 = off_1019EDA68;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v75 = [NSString stringWithUTF8String:"void CRLWPLayoutChore::pSetUpStateForParagraphIndex(CRLWPLayoutState *, CRLWPCharIndex)"];
    v76 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v75 file:v76 lineNumber:5960 isFatal:0 description:"Bad _state.paragraphRange.length"];
  }
}

void sub_1001F7D04(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  [*(a1 + 824) autosizeFlags];
  sub_1001F8E90(a1);
  sub_1001F589C(a1, a1 + 80);
  v4 = sub_10011C2B4(a1 + 80);
  v5 = *([v4 lineFragmentArray] + 1);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = sub_10011C2B4(a1 + 80);
  [v6 contentBlockBottom];

  LODWORD(v6) = *(a1 + 264);
  v7 = sub_10011C2B4(a1 + 80);
  *(a1 + 265) = (([v7 layoutResultFlags] >> 8) & 1) != v6;

  operator new();
}

void sub_1001F8424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v23 = *(v21 - 176);
  if (v23)
  {
    sub_1000F532C(v23);
  }

  if (v20)
  {
    sub_1000F532C(v20);
  }

  _Unwind_Resume(a1);
}

char *sub_1001F8540(uint64_t a1)
{
  v2 = sub_10011C2B4(a1 + 80);
  v3 = [v2 range];
  v5 = v4;

  result = [*(a1 + 8) characterCount];
  if (&v3[v5] < result)
  {

    return sub_1001FEEBC(a1);
  }

  return result;
}

void sub_1001F85D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 80;
  v5 = *(a1 + 584);
  if (a1 + 80 == a2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013322E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013322F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101332380();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"void CRLWPLayoutChore::pRestoreState(const CRLWPLayoutState &)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:6006 isFatal:0 description:"We should not restore from our own object."];
  }

  if (*(a2 + 96) == *(a1 + 176) && *(a2 + 104) == *(a1 + 184))
  {
    v11 = *(a1 + 512);
    v12 = *(a1 + 513);
    v13 = *(a1 + 514);
    v14 = *(a1 + 528);
    sub_10011C27C(v4, a2);
    *(a1 + 512) = v11;
    *(a1 + 513) = v12;
    *(a1 + 514) = v13;
    v10 = *(a1 + 520);
    if (!v10)
    {
      *(a1 + 520) = v14;
      v10 = v14;
    }
  }

  else
  {
    sub_10011C27C(v4, a2);
    v10 = *(a1 + 520);
  }

  *(a1 + 584) = v5;
  v15 = *(a1 + 184);
  if (v10 > v15 || *(a1 + 528) > v15)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013323A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013323D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101332458();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v17 = [NSString stringWithUTF8String:"void CRLWPLayoutChore::pRestoreState(const CRLWPLayoutState &)"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:6029 isFatal:0 description:"Bad _typesetterCharIndex"];
  }
}

uint64_t sub_1001F891C(uint64_t a1)
{
  v1 = *(a1 + 808);
  if (*(a1 + 800) == v1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101332480();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101332494();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133251C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d _pushedStates stack is empty", v4, v5, v6, v7, v8, v9, v10, "const CRLWPLayoutState &CRLWPLayoutChore::pTopLayoutState() const");
    v11 = [NSString stringWithUTF8String:"const CRLWPLayoutState &CRLWPLayoutChore::pTopLayoutState() const"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:787 isFatal:1 description:"_pushedStates stack is empty"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v14);
    abort();
  }

  return v1 - 720;
}

void sub_1001F8AE8(uint64_t a1)
{
  v2 = a1 + 80;
  v3 = [*(a1 + 824) columnMetricsForCharIndex:*(a1 + 80) outRange:a1 + 192];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101332544();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101332558();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013325F4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"void CRLWPLayoutChore::pSetUpStateForColumnMetrics()"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:5682 isFatal:0 description:"invalid nil value for '%{public}s'", "newColumnMetrics"];
  }

  v7 = sub_10011C2C4(v2);
  if (v3)
  {
    v8 = v3 == v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;

  if (v9)
  {
    sub_10011C2CC(v2, v3);
    *(a1 + 272) = 0;
    v10 = sub_10011C2C4(v2);
    v11 = v10 == 0;

    if (v11)
    {
      v22 = *&UIEdgeInsetsZero.bottom;
      *(a1 + 208) = *&UIEdgeInsetsZero.top;
      *(a1 + 224) = v22;
      v23 = [*(a1 + 8) characterCount];
      *(a1 + 192) = 0;
      *(a1 + 200) = v23;
      *(a1 + 248) = 1;
      *(a1 + 264) = 0;
    }

    else
    {
      [v3 adjustedInsetsForTarget:*(a1 + 824)];
      *(a1 + 208) = v12;
      *(a1 + 216) = v13;
      *(a1 + 224) = v14;
      *(a1 + 232) = v15;
      v16 = sub_10011C2C4(v2);
      *(a1 + 248) = [v16 columnCount];

      v17 = sub_10011C2C4(v2);
      *(a1 + 264) = [v17 shrinkTextToFit];

      v18 = sub_10011C2C4(v2);
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = sub_10011C2C4(v2);
        [v20 textScaleFactor];
        *(a1 + 272) = v21;
      }
    }
  }

  *(a1 + 256) = 0;
}

void sub_1001F8E08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F8E4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F8E90(uint64_t a1)
{
  if (*(a1 + 56) > 2u)
  {
    v2 = sub_10011C2B4(a1 + 80);

    if (v2)
    {
      v4 = sub_10011C2B4(a1 + 80);
      [v4 frameBounds];
      *(a1 + 416) = v3;
    }

    else
    {
      *(a1 + 416) = 0;
    }
  }

  else
  {
    *(a1 + 416) = 0xFFF0000000000000;
  }
}

void sub_1001F8F3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F8F80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F8FC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F9008(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F904C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F9090(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001F90D4(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  [*(a1 + 8) wpKind];
  operator new();
}

void sub_1001FC88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  if (STACK[0x548])
  {
    sub_1000F532C(STACK[0x548]);
  }

  _Unwind_Resume(a1);
}

double sub_1001FCF68(uint64_t a1, uint64_t ***a2, uint64_t *a3, void *a4, char a5, double a6)
{
  v10 = a4;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v16 = **a3;
  v15 = *(*a3 + 8);
  v71 = a2;
  v18 = **a2;
  v17 = (*a2)[1];
  v68 = [*(a1 + 840) isEmpty];
  v67 = a1;
  v19 = *(a1 + 840);
  v70 = a3;
  v20 = sub_1000F52C4(*a3);
  v22 = [v19 dirtyRangesIntersecting:{v20, v21}];
  range2_8 = v22;
  if (!v22)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101332E8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101332EA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101332F3C();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v24 = [NSString stringWithUTF8String:"CGRect CRLWPLayoutChore::pCompareLineFragments(const line_fragment_array_ptr &, const line_fragment_array_ptr &, CRLWPColumn *__strong, CGFloat, CRLWPLayoutFlags)"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:6067 isFatal:0 description:"invalid nil value for '%{public}s'", "pertinentDirtyRanges"];

    v22 = 0;
  }

  range2 = [v22 superRange];
  v27 = v26;
  location = [v22 delta];
  v29 = location;
  while (1)
  {
    while (v16 != v15)
    {
      v30 = *v16;
      if (v18 == v17)
      {
        if (v30)
        {
          LODWORD(v36) = (*(v30 + 24) >> 3) & 1;
LABEL_30:
          v42 = sub_1001FFEFC(x, y, width, height, *(v30 + 72), *(v30 + 80), *(v30 + 88), *(v30 + 96), location, v10, 1, v36);
LABEL_31:
          x = v42;
          y = v43;
          width = v44;
          height = v45;
          v16 += 2;
        }
      }

      else
      {
        v31 = *v18;
        if (v30)
        {
          v37 = *(v30 + 24);
          v36 = (v37 >> 3) & 1;
          if (!v31)
          {
            goto LABEL_30;
          }

          v38 = *(v31 + 48);
          v39 = *(v30 + 48);
          if (v38 < v39)
          {
            goto LABEL_32;
          }

          if (v38 > v39)
          {
            goto LABEL_29;
          }

          v40 = *(v31 + 40);
          v41 = *(v30 + 40);
          if (v40 < v41)
          {
LABEL_32:
            v32 = sub_1001FFEFC(x, y, width, height, *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96), location, v10, 1, (v37 >> 3) & 1);
            goto LABEL_20;
          }

          if (v40 > v41)
          {
LABEL_29:
            v42 = sub_1001FFEFC(x, y, width, height, *(v30 + 72), *(v30 + 80), *(v30 + 88), *(v30 + 96), location, v10, 1, (v37 >> 3) & 1);
            goto LABEL_31;
          }

          if ((a5 & 0x40) != 0)
          {
            location = sub_100215928(*v16, *v18, 0);
            if (location)
            {
              goto LABEL_48;
            }

            goto LABEL_50;
          }

          v46 = (v37 & 0x8000000000000000) != 0;
          v47 = &xmmword_101464828;
          if (!v46)
          {
            v47 = *v16;
          }

          v66 = *v47;
          if (v68)
          {
            goto LABEL_40;
          }

          v48 = v66.location + v66.length;
          if (v66.location + v66.length >= range2 || v48 > *(v67 + 64))
          {
            if (v48 <= range2 + v27)
            {
              goto LABEL_48;
            }

LABEL_40:
            if (sub_100215928(v30, v31, v29))
            {
              goto LABEL_48;
            }

            v74.location = range2;
            v74.length = v27;
            v49 = NSIntersectionRange(v66, v74);
            location = v49.location;
            if (v49.length)
            {
              v50 = sub_1001FFEFC(x, y, width, height, *(v30 + 72), *(v30 + 80), *(v30 + 88), *(v30 + 96), v49.location, v10, 1, v36);
LABEL_49:
              x = v50;
              y = v51;
              width = v52;
              height = v53;
              goto LABEL_50;
            }

            goto LABEL_50;
          }

          location = sub_100215928(v30, v31, 0);
          if (location)
          {
LABEL_48:
            v75 = CGRectUnion(*(v31 + 72), *(v30 + 72));
            v50 = sub_1001FFEFC(x, y, width, height, v75.origin.x, v75.origin.y, v75.size.width, v75.size.height, v54, v10, 1, v36);
            goto LABEL_49;
          }

LABEL_50:
          v16 += 2;
LABEL_21:
          v18 += 2;
        }

        else if (v31)
        {
          goto LABEL_19;
        }
      }
    }

    if (v18 == v17)
    {
      break;
    }

    v31 = *v18;
    if (*v18)
    {
LABEL_19:
      v32 = sub_1001FFEFC(x, y, width, height, *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96), location, v10, 1, 0);
LABEL_20:
      x = v32;
      y = v33;
      width = v34;
      height = v35;
      goto LABEL_21;
    }
  }

  if (sub_1000F4FD8(*v71) && sub_1000F4FD8(*v70))
  {
    v55 = range2_8;
  }

  else
  {
    [v10 frameBounds];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v55 = range2_8;
    v62 = [v10 contentBlockBottom];
    if (v63 >= a6)
    {
      v62 = [v10 contentBlockBottom];
      a6 = v64;
    }

    if (a6 - v59 != 0.0)
    {
      x = sub_1001FFEFC(x, y, width, height, v57, v59, v61, a6 - v59, v62, v10, 1, 0);
    }
  }

  return x;
}

void sub_1001FD66C(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t **a4@<X4>, uint64_t **a5@<X5>, _WORD *a6@<X6>, _BYTE *a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v12 = a7;
  v14 = a3;
  v16 = a8;
  *a8 = 0;
  a8[1] = 0;
  *(a1 + 544) = a9;
  *(a1 + 552) = a10;
  *(a1 + 560) = a11;
  *(a1 + 568) = a12;
  if (a11 < 0.0)
  {
    *(a1 + 560) = 0;
  }

  *(a3 + 169) = a2;
  *(a3 + 170) = a2 ^ 1;
  v17 = *a4;
  if (*a4 == *a5)
  {
    v20 = 0;
  }

  else
  {
    v19 = *(a1 + 80);
    while (1)
    {
      v20 = *v17;
      v21 = **v17;
      if (v21 >= v19)
      {
        break;
      }

      v17 += 2;
      *a4 = v17;
      if (v17 == *a5)
      {
        v20 = 0;
LABEL_8:
        v14 = a3;
        v12 = a7;
        goto LABEL_10;
      }
    }

    v56 = v16;
    v42 = sub_10020BC74(v20);
    v43 = *(a3 + 64);
    v44 = *(v20 + 3);
    v54 = *(a1 + 431);
    v55 = *(a1 + 513);
    v53 = *(a1 + 432);
    v52 = *(a1 + 32);
    v45 = sub_10011C320(a1 + 80);
    v46 = (v42 | v43 & 0x10000) == 0;

    if (v19 != v21)
    {
      v16 = v56;
      goto LABEL_8;
    }

    v14 = a3;
    if (v46)
    {
      v16 = v56;
      v12 = a7;
    }

    else
    {
      v12 = a7;
      if ((v55 & 1) != 0 || ((v44 & 4) == 0 ? (v47 = ((v44 >> 17) & 1) == (v53 & v54)) : (v47 = 0), !v47 || ((v44 >> 13) & 1) != ((v52 >> 4) & 1)))
      {
        v16 = v56;
      }

      else
      {
        v16 = v56;
        if (!v45)
        {
          v48 = v20[5] == *(a1 + 544) && v20[6] == *(a1 + 552);
          if (v48 && v20[7] == *(a1 + 560))
          {
            v49 = **a4;
            v50 = (*a4)[1];
            if (v50)
            {
              atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
            }

            v51 = v56[1];
            *v56 = v49;
            v56[1] = v50;
            if (v51)
            {
              sub_1000F532C(v51);
              v49 = *v56;
            }

            sub_100215918(v49);
          }
        }
      }
    }
  }

LABEL_10:
  *(v14 + 176) = v20;
  if (!*v16)
  {
    operator new();
  }

  *(v14 + 224) = *v16;
  v22 = sub_10035E334(*(a1 + 832), v14);
  sub_1001F44C8((a1 + 80), v22);
  v23 = *(a1 + 184) + *(a1 + 176);
  if (*(a1 + 80) > v23)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101332F64();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101332F78();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333000();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v25 = [NSString stringWithUTF8String:"line_fragment_ptr CRLWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, CRLWPTypesetterParamBlock &, CRLWPLineFragmentArray::const_line_iterator &, const CRLWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:1855 isFatal:0 description:"Bad _state.charIndex"];

    v23 = *(a1 + 184) + *(a1 + 176);
  }

  v27 = *v16;
  if (*(*v16 + 24) < 0)
  {
    v28 = &xmmword_101464828;
  }

  else
  {
    v28 = *v16;
  }

  if (*v28 + *(v28 + 1) > v23)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333028();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333050();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013330D8();
    }

    v29 = off_1019EDA68;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v30 = [NSString stringWithUTF8String:"line_fragment_ptr CRLWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, CRLWPTypesetterParamBlock &, CRLWPLineFragmentArray::const_line_iterator &, const CRLWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:1856 isFatal:0 description:"Bad line end"];

    v27 = *v16;
  }

  if (!sub_10020BC74(v27) && (*(v14 + 66) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101333100();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333128();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013331B0();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v33 = [NSString stringWithUTF8String:"line_fragment_ptr CRLWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, CRLWPTypesetterParamBlock &, CRLWPLineFragmentArray::const_line_iterator &, const CRLWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)"];
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:1857 isFatal:0 description:"Bad glyphCount"];
  }

  v35 = *v16;
  if (!*v16)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013331D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101333200();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101333288();
    }

    v36 = off_1019EDA68;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v37 = [NSString stringWithUTF8String:"line_fragment_ptr CRLWPLayoutChore::pFillSingleLineFragment(const CGRect, const NSUInteger, const BOOL, CRLWPTypesetterParamBlock &, CRLWPLineFragmentArray::const_line_iterator &, const CRLWPLineFragmentArray::const_line_iterator &, unichar &, BOOL &)"];
    v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:1859 isFatal:0 description:"failed to create a line fragment"];

    v35 = *v16;
  }

  if ((*(v14 + 40) & 4) != 0)
  {
    v39 = *(v35 + 240);
    if (*(a1 + 576) >= v39)
    {
      v39 = *(a1 + 576);
    }

    *(a1 + 576) = v39;
  }

  *v12 = 0;
  *a6 = 0;
  v47 = (*(v35 + 24) & 0x2004800) == 33570816;
  *(a1 + 336) = v47;
  if (!v47)
  {
    if (sub_1001FE1A4(a1, v35, 0, *(v14 + 232), *(v14 + 240)).super.isa)
    {
      sub_1001FE3BC(a1);
    }

    v40 = *(v14 + 232);
    v41 = sub_10027E2F0(*(v14 + 232)) ^ 1;
    if (v40 == 8232)
    {
      LOBYTE(v41) = 0;
    }

    if ((v41 & 1) == 0)
    {
      *a6 = *(v14 + 232);
    }
  }
}

void sub_1001FDE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 8);
  if (v13)
  {
    sub_1000F532C(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FDF84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FDFC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE00C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE050(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE094(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE0D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE11C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE160(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CKRecordID sub_1001FE1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = *(a3 + 160) == 0.0;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 464);
  v12 = [*(a1 + 8) wpKind];
  if (*(a1 + 440) == 4 && v10)
  {
    v14 = 6.0;
    if (v12 == 5)
    {
      v14 = 0.0;
    }

    v15 = v11 + v14 + *(a1 + 448);
    v16 = -v15;
    v17 = v15 <= 0.0;
    v18 = -0.0;
    if (!v17)
    {
      v18 = v16;
    }

    *(a3 + 72) = CGRectInset(*(a2 + 72), v18, 0.0);
  }

  if (*(a1 + 80) != *(a1 + 184) + *(a1 + 176))
  {
    goto LABEL_27;
  }

  *(a1 + 632) = 0;
  result.super.isa = sub_10027E2F0(a4);
  isa = result.super.isa;
  if (result.super.isa)
  {
    v23 = *(a1 + 408);
    if (v23 <= 0.0 || *(a1 + 200) + *(a1 + 192) == a5)
    {
      result.super.isa = 1;
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  result.super.isa = 0;
  if (a4 == 8232 || *(a1 + 80) != *(a1 + 64))
  {
    goto LABEL_28;
  }

  v23 = *(a1 + 408);
  if (v23 <= 0.0)
  {
LABEL_27:
    result.super.isa = 0;
    goto LABEL_28;
  }

LABEL_21:
  if (v10)
  {
    *(a3 + 160) = v23 + *(a3 + 160);
    v42 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(result, *&v20);
    *(a3 + 40) = v24;
    *(a3 + 48) = v25;
    *(a3 + 56) = v26;
    *(a3 + 64) = v27;
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v42.recordID, v42.recordType);
    *(a3 + 72) = v28;
    *(a3 + 80) = v29;
    *(a3 + 88) = v30;
    *(a3 + 96) = v31;
  }

  v35 = sub_100215B10(a2, *(a1 + 352), *(a1 + 392));
  v36 = *(a2 + 160);
  v37 = *(a2 + 104) + *(a2 + 144) + *(a2 + 120) + *(a2 + 136) + *(a2 + 152) + v36 - v35;
  if (v37 > 0.0)
  {
    *(a1 + 632) = -fmin(v37, v36);
    if (a3)
    {
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v32, *&v33);
      *(a3 + 40) = v38;
      *(a3 + 48) = v39;
      *(a3 + 56) = v40;
      *(a3 + 64) = v41;
    }
  }

  result.super.isa = isa;
LABEL_28:
  *(a1 + 536) = 0;
  return result;
}

BOOL sub_1001FE3BC(uint64_t a1)
{
  v2 = sub_100240844(a1 + 104);
  if (!v2)
  {
    sub_100240814(a1 + 104);
    v3 = sub_100240930(a1 + 104);
    sub_1001F44C8((a1 + 80), v3);
    *(a1 + 427) = *(a1 + 426);
    sub_1001F7198(a1, 0, 0x7FFFFFFFFFFFFFFFuLL);
  }

  return !v2;
}

void sub_1001FE424(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE468(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE4AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE4F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE578(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE5BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE600(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE6CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE710(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE754(id a1)
{
  v1 = sub_1004BD804("CRLWarningCat");
  v2 = off_1019EDA78;
  off_1019EDA78 = v1;
}

void sub_1001FE798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE7DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE820(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE8A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FE8EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1001FE930(uint64_t a1, char a2)
{
  v2 = *(a1 + 400);
  v3 = 0.0;
  if (v2 != 0.0 && *(a1 + 536) == 1 && ((a2 & 1) != 0 || *(a1 + 673) == 1))
  {
    if (sub_100240AD4(a1 + 104) && *(a1 + 673) != 1)
    {
      return v2;
    }

    else
    {
      sub_100240858(a1 + 104, v11);
      v5 = sub_100240898(v11, 0);
      sub_10024068C(v11);
      [v5 floatValueForProperty:48];
      v7 = v6;
      v8 = sub_10011C2B4(a1 + 80);
      v9 = ((v7 * [v8 scaleTextPercent]) / -100.0);

      if (v2 + v9 >= 0.0)
      {
        v3 = v2 + v9;
      }

      else
      {
        v3 = 0.0;
      }
    }
  }

  return v3;
}

void sub_1001FEA2C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_1001FEA64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FEAA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1001FEAEC(uint64_t a1)
{
  v2 = *(a1 + 256);
  v3 = *(a1 + 824);
  if (v2)
  {
    v4 = [v3 columns];
    v5 = [v4 objectAtIndexedSubscript:*(a1 + 256) - 1];
  }

  else
  {
    v5 = [v3 previousTargetLastColumn];
  }

  return v5;
}

void sub_1001FEB70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FEBB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1001FEBF8(double *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 272) == 2)
  {
    return v2 + *(a2 + 312) * *(a2 + 280);
  }

  else
  {
    return v2 + a1[5] + fmax(a1[2], a1[1]);
  }
}

void sub_1001FEC30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FEC74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FECB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FECFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FED40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FED84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1001FEDC8(uint64_t result, _BYTE *a2, _BYTE *a3, uint64_t a4, char a5, unsigned __int8 a6)
{
  v11 = result;
  v12 = *(result + 56);
  if (*(result + 56))
  {
    v13 = v12 == 7;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (v12 != 3)
    {
      return result;
    }

    result = sub_1001FEEBC(result);
    if (result)
    {
      return result;
    }
  }

  if (*(v11 + 80) == *(v11 + 176))
  {
    if (a4 != 4 && ((a6 ^ 1) & *(v11 + 472) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (a4 != 4)
  {
    goto LABEL_15;
  }

  *a2 = 1;
  *a3 = 1;
LABEL_15:
  if ((a5 & 1) != 0 || a4 <= 0xF && ((1 << a4) & 0x9070) != 0 || (*(v11 + 32) & 1) != 0 && (result = sub_10027E2F0(a4), a4 != 11) && result)
  {
    *a2 = 1;
  }

  return result;
}

BOOL sub_1001FEEBC(uint64_t a1)
{
  if (![*(a1 + 8) wpKind] || objc_msgSend(*(a1 + 8), "wpKind") == 7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013332B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013332C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133334C();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v3 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::pIsLastColumn() const"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:5662 isFatal:0 description:"pIsLastColumn doesn't work on the body or TOC"];
  }

  if (![*(a1 + 824) isLastTarget])
  {
    return 0;
  }

  v5 = [*(a1 + 824) columns];
  v6 = [v5 lastObject];
  v7 = sub_10011C2B4(a1 + 80);
  v8 = v6 == v7;

  return v8;
}

void sub_1001FF0C8(uint64_t a1, void **a2)
{
  if ((*(a1 + 674) & 1) == 0)
  {
    v4 = sub_1000F500C(*a2);
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 160);
      if (v6 != 0.0)
      {
        v7 = *(a1 + 176);
        v9 = *v4 >= v7;
        v8 = *v4 - v7;
        v9 = !v9 || v8 >= *(a1 + 184);
        if (v9)
        {
          v10 = sub_1001FF3C0(a1, *v4);
          [v10 floatValueForProperty:48];
          v12 = v11;
          v13 = sub_10011C2B4(a1 + 80);
          v14 = ((v12 * [v13 scaleTextPercent]) / 100.0);

          v6 = *(v5 + 160);
        }

        else
        {
          v14 = *(a1 + 408);
        }

        v15 = v6 >= v14 ? v14 : v6;
        v16 = *(v5 + 32);
        v17 = sub_1000F4FD8(*a2);
        if (v17)
        {
          v18 = v6 - v15;
          v19 = v17 - 1;
          do
          {
            v20 = sub_1000F4FE8(*a2, v19);
            if (*(v20 + 32) != v16)
            {
              break;
            }

            v23 = v20;
            v40 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v20, *&v21);
            *(v23 + 40) = v24;
            *(v23 + 48) = v25;
            *(v23 + 56) = v26;
            *(v23 + 64) = v27;
            SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v40.recordID, v40.recordType);
            *(v23 + 72) = v28;
            *(v23 + 80) = v29;
            *(v23 + 88) = v30;
            *(v23 + 96) = v31;
            v32 = sub_10020BCF4(v23);

            if (v32)
            {
              v33 = *(v23 + 72);
              v34 = *(v23 + 80);
              v35 = *(v23 + 88);
              v36 = *(v23 + 96);
              v42.origin.x = sub_100210E0C(v23);
              v42.origin.y = v37;
              v42.size.width = v38;
              v42.size.height = v39;
              v41.origin.x = v33;
              v41.origin.y = v34;
              v41.size.width = v35;
              v41.size.height = v36;
              *(v23 + 72) = CGRectUnion(v41, v42);
            }

            *(v23 + 160) = v18;
            --v19;
          }

          while (v19 != -1);
        }
      }
    }
  }
}

void sub_1001FF2B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FF2F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FF338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FF37C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1001FF3C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100240930(a1 + 104);
  if (a2 < v4 || a2 - v4 >= v5)
  {
    v7 = *(a1 + 8);
    v8 = [*(a1 + 24) styleProvider];
    sub_1002407EC(v11, v7, v8, 0, [*(a1 + 8) paragraphCount] - 1, 1);

    v9 = sub_100240898(v11, 0);
    sub_10024068C(v11);
  }

  else
  {
    v9 = sub_10011C2A4(a1 + 80);
  }

  return v9;
}

void sub_1001FF488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024068C(va);
  _Unwind_Resume(a1);
}

id sub_1001FF4A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intValueForProperty:29];
  if (*(a1 + 824))
  {
    v5 = v4 == 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [*(a1 + 824) naturalAlignment];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

uint64_t sub_1001FF514(uint64_t a1, unint64_t a2)
{
  v4 = sub_100240930(a1 + 104);
  if (a2 < v4 || a2 - v4 >= v5)
  {
    v7 = *(a1 + 8);
    v8 = [*(a1 + 24) styleProvider];
    sub_1002407EC(v11, v7, v8, 0, [*(a1 + 8) paragraphCount] - 1, 1);

    v9 = sub_100240ABC(v11);
    sub_10024068C(v11);
  }

  else
  {
    v9 = *(a1 + 429);
  }

  return v9 & 1;
}

void sub_1001FF5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024068C(va);
  _Unwind_Resume(a1);
}

void sub_1001FF5D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FF61C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FF660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FF6A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1001FF6E8(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v41 = a2;
  v7 = [v41 columns];
  v42 = v7;
  v8 = [v7 count];
  if (*(a1 + 248))
  {
    v9 = v8;
    v10 = 0;
    v11 = 0.0;
    v12 = 1;
    do
    {
      v44 = v11;
      v13 = a3;
      if (v9 > a3)
      {
        v14 = [v7 objectAtIndexedSubscript:a3];
        v15 = [v14 lineFragmentArray];
        v16 = *v15;
        v17 = v15[1];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        [v14 frameBounds];
        v43 = v18;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [v14 erasableBounds:0];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        [v14 contentBlockBottom];
        v34 = v33;

        v35 = (a4 + 88 * v10);
        v36 = v35[1];
        *v35 = v16;
        v35[1] = v17;
        if (v36)
        {
          sub_1000F532C(v36);
        }

        v35[2] = v43;
        v35[3] = v20;
        v35[4] = v22;
        v35[5] = v24;
        v35[6] = v26;
        v35[7] = v28;
        v35[8] = v30;
        v35[9] = v32;
        v35[10] = v34;

        v7 = v42;
      }

      v11 = *(a4 + 88 * v10 + 40);
      if (v44 != 0.0)
      {
        v37 = v44 == v11;
        v11 = v44;
        if (!v37)
        {
          v11 = 0.0;
        }
      }

      v10 = v12;
      a3 = v13 + 1;
    }

    while (*(a1 + 248) > v12++);
  }

  else
  {
    v11 = 0.0;
  }

  v39 = v11;

  return v39;
}

void sub_1001FF8F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001FF938(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1001FF97C(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, unint64_t a8, __int16 a9, double *a10, double *a11, double *a12, double *a13, _BYTE *a14, _DWORD *a15)
{
  if (a2)
  {
    v63 = [*(a1 + 824) columnMetricsForCharIndex:*(a1 + 80) outRange:0];
    if ([v63 alwaysStartsNewTarget])
    {
      v21 = v63;
      goto LABEL_5;
    }

    v60 = [*(a1 + 824) columns];
    v61 = [v60 objectAtIndexedSubscript:a3];
    if (*(a1 + 248) == 1)
    {
      [v61 contentBlockBottom];
      v25 = v24;
      v26 = sub_1000F500C(*[v61 lineFragmentArray]);
      if (v26)
      {
        v27 = v61;
        MaxY = CGRectGetMaxY(*(v26 + 40));
        if (v25 < MaxY)
        {
          v25 = MaxY;
        }
      }

      else
      {
        v27 = v61;
      }

      [v27 frameBounds];
      *a12 = fmin(ceil(v25 - v48), a6);
      v49 = *(a1 + 824);
      v50 = *(a1 + 8);
      v51 = [v27 startCharIndex];
      v52 = *a13;
      v53 = *a12;
      v40 = [*(a1 + 24) styleProvider];
      [CRLWPLayoutManager fixColumnBoundsForTarget:v49 storage:v50 charIndex:v51 firstColumnIndex:a3 precedingHeight:0 height:v40 alreadyHasMargins:v52 styleProvider:v53];
      goto LABEL_35;
    }

    if (a3 <= a8)
    {
      v31 = a8;
    }

    else
    {
      v31 = a3;
    }

    if (a3 >= a8)
    {
      v32 = a8;
    }

    else
    {
      v32 = a3;
    }

    v33 = ceil(fmax(*a10, fmin(sub_1002000A4(a1, v32, v31 - v32, 0), *a11)));
    *a10 = v33;
    v34 = *a12;
    if (*a12 < v33)
    {
      *a12 = v33;
      v35 = *(a1 + 824);
      v36 = *(a1 + 8);
      v37 = [v61 startCharIndex];
      v38 = *a13;
      v39 = *a12;
      v40 = [*(a1 + 24) styleProvider];
      [CRLWPLayoutManager fixColumnBoundsForTarget:v35 storage:v36 charIndex:v37 firstColumnIndex:a3 precedingHeight:0 height:v40 alreadyHasMargins:v38 styleProvider:v39];
LABEL_35:

      goto LABEL_36;
    }

    if (*a12 > v33)
    {
      if ((a9 & 0x200) == 0 || *a15 != 1)
      {
LABEL_40:
        v23 = 1;
        *a14 = 1;
        *a11 = v34;
        *a12 = floor((v34 + *a10) * 0.5);
        v55 = v60;
        v54 = v61;
        if (*a10 >= *a11)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101333374();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101333388();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101333410();
          }

          v57 = off_1019EDA68;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v58 = [NSString stringWithUTF8String:"BOOL CRLWPLayoutChore::pHandleLayoutBreaksAndColumnBalancing(const BOOL, const NSUInteger, const CRLWPLayoutState &, const tswpColumnErasableInfo *, uint, const NSUInteger, const CRLWPLayoutResultFlags, const CGFloat, CGFloat &, CGFloat &, CGFloat &, CGFloat &, BOOL &, uint &)"];
          v59 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutChore.mm"];
          [CRLAssertionHandler handleFailureInFunction:v58 file:v59 lineNumber:3819 isFatal:0 description:"Bad minHeight/maxHeight"];

          v23 = 1;
        }

        goto LABEL_37;
      }

      if (*(a1 + 248))
      {
        v41 = 0;
        v42 = 1;
        while (1)
        {
          v43 = [v60 objectAtIndexedSubscript:{*(a4 + 176) + v41, v34}];
          [v43 contentBlockBottom];
          v45 = v44;
          v46 = *(a5 + 88 * v41 + 80);

          if (v45 != v46)
          {
            break;
          }

          v41 = v42;
          if (*(a1 + 248) <= v42++)
          {
            goto LABEL_36;
          }
        }

        v34 = *a12;
        goto LABEL_40;
      }
    }

LABEL_36:
    v54 = v61;
    [v61 frameBounds];
    v23 = 0;
    v55 = v60;
    *a13 = CGRectGetMaxY(v64) + *(a1 + 208);
LABEL_37:

    v21 = v63;
    goto LABEL_38;
  }

  v21 = 0;
LABEL_5:
  if (*a14 == 1)
  {
    if ((a9 & 0x200) != 0 && *a15 == 1)
    {
      *a14 = 0;
      *a15 = 0;
      *a10 = *a12;
      v22 = *a11;
    }

    else
    {
      v29 = *a12 + 1.0;
      *a10 = v29;
      v30 = fmax(*a11, v29);
      *a11 = v30;
      v22 = rint((v30 + *a10) * 0.5);
    }

    *a12 = v22;
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

LABEL_38:

  return v23;
}

double sub_1001FFEFC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat x, CGFloat y, CGFloat width, CGFloat height, uint64_t a9, void *a10, int a11, int a12)
{
  v22 = a10;
  v23 = v22;
  if (a11)
  {
    [v22 frameBounds];
    v30.origin.y = y;
    v30.size.height = height;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v31 = CGRectUnion(v30, v33);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
  }

  if (a12)
  {
    v24 = y + -6.0;
  }

  else
  {
    v24 = y;
  }

  if (a12)
  {
    v25 = height + 12.0;
  }

  else
  {
    v25 = height;
  }

  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  v26 = x;
  v27 = width;
  *&v28 = CGRectUnion(v32, *(&v24 - 1));

  return v28;
}

void sub_10020001C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200060(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1002000A4(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2 >= a2 + a3)
  {
    v8 = 0;
    v9 = 0.0;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v5 = a3;
  v6 = a2;
  v8 = 0;
  v9 = 0.0;
  do
  {
    v10 = [*(a1 + 824) columns];
    v11 = [v10 objectAtIndexedSubscript:v6];

    [v11 minimumHeightForLayoutOnPage];
    v9 = fmax(v9, v12);
    v8 |= [v11 lineCount] != 0;

    ++v6;
    --v5;
  }

  while (v5);
  if (a4)
  {
LABEL_5:
    *a4 = v8 & 1;
  }

  return v9;
}

void sub_100200198(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002001DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200220(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200264(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002002A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002002EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200330(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200374(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002003B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002003FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200440(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200484(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002004C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020050C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002005D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10020061C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100200660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002006A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002006E8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10011C278(v4 - 720);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10020076C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FA4FA4FA4FA4FA5 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5B05B05B05B05BLL)
  {
    sub_1000C1D48();
  }

  if (0x9F49F49F49F49F4ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x9F49F49F49F49F4ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x4FA4FA4FA4FA4FA5 * ((a1[2] - *a1) >> 4)) >= 0x2D82D82D82D82DLL)
  {
    v6 = 0x5B05B05B05B05BLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1002008B4(a1, v6);
  }

  v13 = 0;
  v14 = 720 * v2;
  sub_10011C208(720 * v2, a2);
  v15 = (720 * v2 + 720);
  v7 = a1[1];
  v8 = 720 * v2 + *a1 - v7;
  sub_100200910(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1002009B4(&v13);
  return v12;
}

void sub_1002008A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002009B4(va);
  _Unwind_Resume(a1);
}

void sub_1002008B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5B05B05B05B05CLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_100200910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10011C208(a4, v8);
      v8 += 720;
      a4 += 720;
      v7 -= 720;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_10011C278(v6);
      v6 += 720;
    }
  }

  return result;
}

void sub_100200990(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 720;
    do
    {
      v4 = sub_10011C278(v4) - 720;
      v2 += 720;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002009B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 720;
    sub_10011C278(i - 720);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100200A04(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100200A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100200A98(va);
  _Unwind_Resume(a1);
}

void ***sub_100200A98(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1;
    sub_100200BCC(&v2);
    operator delete();
  }

  return result;
}

void sub_100200AF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100200B38(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100200B78(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    sub_100200BCC(&v2);
    operator delete();
  }
}

void sub_100200BCC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000F5160(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL sub_100200C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_100200C74(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100200CEC(result, a2);
  }

  return result;
}

void sub_100200CD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100200CEC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_100200D24(a1, a2);
  }

  sub_1000C1D48();
}

void sub_100200D24(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_100200D68(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100200DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100200DFC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100200DFC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10020B5DC();
    operator delete();
  }

  return a1;
}

void sub_100200E48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100200E80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10020B5DC();

    operator delete();
  }

  return result;
}

uint64_t sub_100200EC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100200F80(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    sub_10020182C(a1, a2 - v2);
  }
}

void sub_10020133C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_1000C1D48();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100201940(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

char *sub_10020153C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = (&v6[-*a1] >> 5) + 1;
    if (v12 >> 59)
    {
      sub_1000C1D48();
    }

    v13 = __src - v11;
    v14 = v7 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v33 = a1;
    if (v15)
    {
      sub_100201940(a1, v15);
    }

    v30 = 0;
    v31 = 32 * v16;
    v32 = (32 * v16);
    sub_100201BBC(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v17;
    a1[1] = v6 + 32;
  }

  else
  {
    v8 = __src + 32;
    if (v6 < 0x20)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 32;
      v10 = *(v6 - 1);
      *v6 = *(v6 - 2);
      *(v6 + 1) = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 32, __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 32;
    if (v25)
    {
      v26 = 0;
    }

    v27 = &a3[v26];
    v28 = *(v27 + 1);
    *v4 = *v27;
    *(v4 + 1) = v28;
  }

  return v4;
}