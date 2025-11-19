void sub_19D8998B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPITest::assertSafe(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITest(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v26 = "argument";
      }

      else
      {
        v26 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v34)
      {
        v27 = v34 + 16;
      }

      else
      {
        v27 = 0;
      }

      *buf = 134349570;
      v36 = a4;
      v37 = 2082;
      v38 = v26;
      v39 = 2082;
      v40 = v27;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertSafe() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v29 = v34;
      v34 = 0;
      if (v29)
      {
        if (*v29 == 1)
        {
          WTF::fastFree(v29, v28);
        }

        else
        {
          --*v29;
        }
      }

      v30 = v33;
      v33 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
      }
    }

    if (a4 == 2)
    {
      if (JSValueIsObject(this, *a5))
      {
        if (JSValueIsString(this, *(a5 + 8)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          v18 = WebKit::toJSValue(this, *a5, v17);
          v15 = WebKit::toNSString(this, *(a5 + 8), 2);
          if (!v18)
          {
LABEL_16:
            v20 = 0;
LABEL_17:
            v22 = WebKit::WebExtensionAPITest::assertSafe(v12, this, v20, v15);
            Undefined = WebKit::toJSValueRefOrJSNull(this, v22, v23);

LABEL_18:
LABEL_19:
            if (*(v12 + 12) == 1)
            {
              (*(*(v12 + 5) + 8))(v12 + 40);
            }

            else
            {
              --*(v12 + 12);
            }

            return Undefined;
          }

LABEL_12:
          if (![(JSValue *)v18 isObject:v33])
          {
            *a6 = WebKit::toJSError(this, @"test.assertSafe()", &cfstr_Function.isa, &cfstr_AnObjectIsExpe.isa, v19);
            Undefined = JSValueMakeUndefined(this);
            v20 = v18;
            goto LABEL_18;
          }

          v20 = v18;
          goto LABEL_17;
        }

        v31 = @"a string is expected";
        v32 = @"message";
LABEL_40:
        v20 = 0;
        *a6 = WebKit::toJSError(this, @"test.assertSafe()", &v32->isa, &v31->isa, v16);
        Undefined = JSValueMakeUndefined(this);
        v15 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"test.assertSafe()", 0, &cfstr_ARequiredArgum.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_19;
        }

        v15 = 0;
        goto LABEL_16;
      }

      if (JSValueIsObject(this, *a5))
      {
        v18 = WebKit::toJSValue(this, *a5, v21);
        v15 = 0;
        if (!v18)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    v31 = @"an object is expected";
    v32 = @"function";
    goto LABEL_40;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D899DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPITest::assertSafeResolve(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITest(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v26 = "argument";
      }

      else
      {
        v26 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v34)
      {
        v27 = v34 + 16;
      }

      else
      {
        v27 = 0;
      }

      *buf = 134349570;
      v36 = a4;
      v37 = 2082;
      v38 = v26;
      v39 = 2082;
      v40 = v27;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertSafeResolve() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v29 = v34;
      v34 = 0;
      if (v29)
      {
        if (*v29 == 1)
        {
          WTF::fastFree(v29, v28);
        }

        else
        {
          --*v29;
        }
      }

      v30 = v33;
      v33 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
      }
    }

    if (a4 == 2)
    {
      if (JSValueIsObject(this, *a5))
      {
        if (JSValueIsString(this, *(a5 + 8)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          v18 = WebKit::toJSValue(this, *a5, v17);
          v15 = WebKit::toNSString(this, *(a5 + 8), 2);
          if (!v18)
          {
LABEL_16:
            v20 = 0;
LABEL_17:
            v22 = WebKit::WebExtensionAPITest::assertSafeResolve(v12, this, v20, v15);
            Undefined = WebKit::toJSValueRefOrJSNull(this, v22, v23);

LABEL_18:
LABEL_19:
            if (*(v12 + 12) == 1)
            {
              (*(*(v12 + 5) + 8))(v12 + 40);
            }

            else
            {
              --*(v12 + 12);
            }

            return Undefined;
          }

LABEL_12:
          if (![(JSValue *)v18 isObject:v33])
          {
            *a6 = WebKit::toJSError(this, @"test.assertSafeResolve()", &cfstr_Function.isa, &cfstr_AnObjectIsExpe.isa, v19);
            Undefined = JSValueMakeUndefined(this);
            v20 = v18;
            goto LABEL_18;
          }

          v20 = v18;
          goto LABEL_17;
        }

        v31 = @"a string is expected";
        v32 = @"message";
LABEL_40:
        v20 = 0;
        *a6 = WebKit::toJSError(this, @"test.assertSafeResolve()", &v32->isa, &v31->isa, v16);
        Undefined = JSValueMakeUndefined(this);
        v15 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"test.assertSafeResolve()", 0, &cfstr_ARequiredArgum.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_19;
        }

        v15 = 0;
        goto LABEL_16;
      }

      if (JSValueIsObject(this, *a5))
      {
        v18 = WebKit::toJSValue(this, *a5, v21);
        v15 = 0;
        if (!v18)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    v31 = @"an object is expected";
    v32 = @"function";
    goto LABEL_40;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D89A2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPITest::addTest(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, id *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITest(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v24 = "argument";
      }

      else
      {
        v24 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v29)
      {
        v25 = v29 + 16;
      }

      else
      {
        v25 = 0;
      }

      *buf = 134349570;
      v31 = a4;
      v32 = 2082;
      v33 = v24;
      v34 = 2082;
      v35 = v25;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.addTest() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v29)
      {
        if (*v29 == 1)
        {
          WTF::fastFree(v29, v26);
        }

        else
        {
          --*v29;
        }
      }

      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v26);
      }
    }

    if (a4)
    {
      if (JSValueIsObject(this, *a5))
      {
        v17 = WebKit::toJSValue(this, *a5, v15);
        v18 = v17;
        if (v17 && ![(JSValue *)v17 isObject])
        {
          *a6 = WebKit::toJSError(this, @"test.addTest()", &cfstr_Function.isa, &cfstr_AnObjectIsExpe.isa, v19);
          Undefined = JSValueMakeUndefined(this);
        }

        else
        {
          v20 = WebKit::WebExtensionAPITest::addTest(v12, this, v18);
          Undefined = WebKit::toJSValueRefOrJSNull(this, v20, v21);
        }

        goto LABEL_9;
      }

      v27 = WebKit::toJSError(this, @"test.addTest()", &cfstr_Function.isa, &cfstr_AnObjectIsExpe.isa, v16);
    }

    else
    {
      v27 = WebKit::toJSError(this, @"test.addTest()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v27;
    Undefined = JSValueMakeUndefined(this);
LABEL_9:
    if (*(v12 + 12) == 1)
    {
      (*(*(v12 + 5) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 12);
    }

    return Undefined;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D89A6F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPITest::runTests(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITest(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v25 = "argument";
      }

      else
      {
        v25 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v30)
      {
        v26 = v30 + 16;
      }

      else
      {
        v26 = 0;
      }

      *buf = 134349570;
      v32 = a4;
      v33 = 2082;
      v34 = v25;
      v35 = 2082;
      v36 = v26;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.runTests() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v30)
      {
        if (*v30 == 1)
        {
          WTF::fastFree(v30, v27);
        }

        else
        {
          --*v30;
        }
      }

      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v27);
      }
    }

    if (a4)
    {
      if (JSValueIsArray(this, *a5))
      {
        v16 = *a5;
        v17 = objc_opt_class();
        v20 = WebKit::toNSArray(this, v16, v17, v18);
        if (v20)
        {
          v21 = WebKit::WebExtensionAPITest::runTests(v12, this, v20);
          Undefined = WebKit::toJSValueRefOrJSNull(this, v21, v22);
        }

        else
        {
          *a6 = WebKit::toJSError(this, @"test.runTests()", &cfstr_Tests.isa, &cfstr_AnArrayIsExpec.isa, v19);
          Undefined = JSValueMakeUndefined(this);
        }

        goto LABEL_8;
      }

      v28 = WebKit::toJSError(this, @"test.runTests()", &cfstr_Tests.isa, &cfstr_AnArrayIsExpec.isa, v15);
    }

    else
    {
      v28 = WebKit::toJSError(this, @"test.runTests()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v28;
    Undefined = JSValueMakeUndefined(this);
LABEL_8:
    if (*(v12 + 12) == 1)
    {
      (*(*(v12 + 5) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 12);
    }

    return Undefined;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D89AAEC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPITest::onMessage(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITest(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 12);
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter test.onMessage in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPITest::onMessage(v7);
    v10 = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return v10;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D89ADB4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPITest::onTestStarted(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITest(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 12);
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter test.onTestStarted in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPITest::onTestStarted(v7);
    v10 = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return v10;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D89B060(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPITest::onTestFinished(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITest(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 12);
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter test.onTestFinished in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPITest::onTestFinished(v7);
    v10 = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return v10;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D89B30C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(a1);
}

WebKit::JSWebExtensionAPIWebNavigation *WebKit::toWebExtensionAPIWebNavigation(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWebNavigation::webNavigationClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWebNavigation::webNavigationClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWebNavigation::webNavigationClass(WebKit::JSWebExtensionAPIWebNavigation *this)
{
  result = WebKit::JSWebExtensionAPIWebNavigation::webNavigationClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWebNavigation::webNavigationClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v6.version = *MEMORY[0x1E696EBF8];
    *&v6.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 48);
    *&v6.staticFunctions = *(MEMORY[0x1E696EBF8] + 32);
    *&v6.finalize = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 80);
    *&v6.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v6.deleteProperty = v4;
    v5 = *(MEMORY[0x1E696EBF8] + 112);
    *&v6.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v6.hasInstance = v5;
    v6.className = "WebNavigation";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIWebNavigation::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIWebNavigation::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIWebNavigation::webNavigationClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigation::getFrame(WebKit::JSWebExtensionAPIWebNavigation *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebNavigation(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_28;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v31 = "argument";
    }

    else
    {
      v31 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v44)
    {
      v32 = v44 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v46 = 2082;
    v47 = v31;
    v48 = 2082;
    v49 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function webNavigation.getFrame() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = v44;
    v44 = 0;
    if (v34)
    {
      if (*v34 == 1)
      {
        WTF::fastFree(v34, v33);
      }

      else
      {
        --*v34;
      }
    }

    v35 = v43;
    v43 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 == 1)
  {
    v18 = WebKit::toJSValue(this, *a5, v14);
    v19 = [v18 _isDictionary];

    if (v19)
    {
      v21 = WebKit::toNSDictionary(this, *a5, 0, 0);
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_47;
  }

  if (a4 != 2)
  {
    if (a4)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"webNavigation.getFrame()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"details";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
  {
    v21 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v25 = *(a5 + 8);
    v26 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v25, v26, buf);
    v16 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"webNavigation.getFrame()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
      Undefined = JSValueMakeUndefined(this);
      if (v16)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
      }

      goto LABEL_28;
    }

    if (*buf)
    {
      Undefined = 0;
      goto LABEL_22;
    }

LABEL_21:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v44 = resolve;
    *buf = this;
    v43 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v40, buf, &v44, &v43);
    v16 = v40;
LABEL_22:
    *buf = v16;
    v39 = 0;
    WebKit::WebExtensionAPIWebNavigation::getFrame(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"webNavigation.getFrame()", 0, v28, v27);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v37 = @"a function is expected";
  v38 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"webNavigation.getFrame()", &v38->isa, &v37->isa, v20);
  v36 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v36;
LABEL_28:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D89B990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigation::getAllFrames(WebKit::JSWebExtensionAPIWebNavigation *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebNavigation(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_28;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v31 = "argument";
    }

    else
    {
      v31 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v44)
    {
      v32 = v44 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v46 = 2082;
    v47 = v31;
    v48 = 2082;
    v49 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function webNavigation.getAllFrames() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = v44;
    v44 = 0;
    if (v34)
    {
      if (*v34 == 1)
      {
        WTF::fastFree(v34, v33);
      }

      else
      {
        --*v34;
      }
    }

    v35 = v43;
    v43 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 == 1)
  {
    v18 = WebKit::toJSValue(this, *a5, v14);
    v19 = [v18 _isDictionary];

    if (v19)
    {
      v21 = WebKit::toNSDictionary(this, *a5, 0, 0);
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_47;
  }

  if (a4 != 2)
  {
    if (a4)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"webNavigation.getAllFrames()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"details";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
  {
    v21 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v25 = *(a5 + 8);
    v26 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v25, v26, buf);
    v16 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"webNavigation.getAllFrames()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
      Undefined = JSValueMakeUndefined(this);
      if (v16)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
      }

      goto LABEL_28;
    }

    if (*buf)
    {
      Undefined = 0;
      goto LABEL_22;
    }

LABEL_21:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v44 = resolve;
    *buf = this;
    v43 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v40, buf, &v44, &v43);
    v16 = v40;
LABEL_22:
    *buf = v16;
    v39 = 0;
    WebKit::WebExtensionAPIWebNavigation::getAllFrames(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"webNavigation.getAllFrames()", 0, v28, v27);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v37 = @"a function is expected";
  v38 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"webNavigation.getAllFrames()", &v38->isa, &v37->isa, v20);
  v36 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v36;
LABEL_28:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D89BF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigation::onBeforeNavigate(WebKit::JSWebExtensionAPIWebNavigation *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebNavigation(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webNavigation.onBeforeNavigate in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebNavigation::onBeforeNavigate(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D89C280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigation::onCommitted(WebKit::JSWebExtensionAPIWebNavigation *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebNavigation(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webNavigation.onCommitted in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebNavigation::onCommitted(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D89C514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigation::onDOMContentLoaded(WebKit::JSWebExtensionAPIWebNavigation *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebNavigation(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webNavigation.onDOMContentLoaded in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebNavigation::onDOMContentLoaded(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D89C7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigation::onCompleted(WebKit::JSWebExtensionAPIWebNavigation *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebNavigation(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webNavigation.onCompleted in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebNavigation::onCompleted(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D89CA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigation::onErrorOccurred(WebKit::JSWebExtensionAPIWebNavigation *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebNavigation(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webNavigation.onErrorOccurred in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebNavigation::onErrorOccurred(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D89CCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPIWebNavigationEvent *WebKit::toWebExtensionAPIWebNavigationEvent(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWebNavigationEvent::webNavigationEventClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWebNavigationEvent::webNavigationEventClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWebNavigationEvent::webNavigationEventClass(WebKit::JSWebExtensionAPIWebNavigationEvent *this)
{
  result = WebKit::JSWebExtensionAPIWebNavigationEvent::webNavigationEventClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWebNavigationEvent::webNavigationEventClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v5.version = *MEMORY[0x1E696EBF8];
    *&v5.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 80);
    *&v5.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v5.deleteProperty = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 112);
    *&v5.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v5.hasInstance = v4;
    v5.hasProperty = *(MEMORY[0x1E696EBF8] + 56);
    *&v5.parentClass = 0uLL;
    v5.className = "WebNavigationEvent";
    v5.staticFunctions = &WebKit::JSWebExtensionAPIWebNavigationEvent::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPIWebNavigationEvent::webNavigationEventClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigationEvent::addListener(WebKit::JSWebExtensionAPIWebNavigationEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebNavigationEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_27;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v37 = "argument";
    }

    else
    {
      v37 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v48)
    {
      v38 = *v48 + 16;
    }

    else
    {
      v38 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v50 = 2082;
    v51 = v37;
    v52 = 2082;
    v53 = v38;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function addListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v40 = *v48;
    *v48 = 0;
    if (v40)
    {
      if (*v40 == 1)
      {
        WTF::fastFree(v40, v39);
      }

      else
      {
        --*v40;
      }
    }

    v41 = v47;
    v47 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v39);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5))
    {
      v19 = JSValueToObject(this, *a5, 0);
      if (JSObjectIsFunction(this, v19))
      {
        v20 = *a5;
        v21 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v20, v21, buf);
        v15 = 0;
        v22 = *buf;
        goto LABEL_19;
      }
    }

    goto LABEL_45;
  }

  if (a4 == 2)
  {
    if (JSValueIsObject(this, *a5))
    {
      v23 = JSValueToObject(this, *a5, 0);
      if (JSObjectIsFunction(this, v23))
      {
        v25 = WebKit::toJSValue(this, *(a5 + 8), v24);
        v26 = [v25 _isDictionary];

        if ((v26 & 1) != 0 || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          v27 = *a5;
          v28 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v27, v28, buf);
          v22 = *buf;
          v15 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
LABEL_19:
          if (v22)
          {
            GlobalContext = JSContextGetGlobalContext(this);
            WebKit::WebFrame::frameForContext(GlobalContext, v30, buf);
            v31 = *buf;
            if (*buf)
            {
              v32 = *(*buf + 88);
              ++*v22;
              v45 = 0;
              v46 = v22;
              WebKit::WebExtensionAPIWebNavigationEvent::addListener(v12, v32, &v46, v15, &v45);
              v34 = v45;
              v35 = v46;
              v46 = 0;
              if (v35)
              {
                WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v35);
              }

              if (v34)
              {
                *a6 = WebKit::toJSError(this, @"addListener()", 0, v34, v33);
              }

              Undefined = JSValueMakeUndefined(this);

              CFRelease(*(v31 + 8));
            }

            else
            {
              v44 = qword_1ED640AB8;
              if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
              {
                *v48 = 0;
                _os_log_error_impl(&dword_19D52D000, v44, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v48, 2u);
              }

              Undefined = JSValueMakeUndefined(this);
            }

            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v22);
            goto LABEL_27;
          }

          goto LABEL_8;
        }

        v42 = @"an object is expected";
        v43 = @"filter";
LABEL_46:
        v15 = 0;
        *a6 = WebKit::toJSError(this, @"addListener()", &v43->isa, &v42->isa, v18);
        v16 = JSValueMakeUndefined(this);
        goto LABEL_9;
      }
    }

LABEL_45:
    v42 = @"a function is expected";
    v43 = @"listener";
    goto LABEL_46;
  }

  if (a4)
  {
    v15 = 0;
LABEL_8:
    *a6 = WebKit::toJSError(this, @"addListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v14);
    v16 = JSValueMakeUndefined(this);
LABEL_9:
    Undefined = v16;

    goto LABEL_27;
  }

  *a6 = WebKit::toJSError(this, @"addListener()", 0, &cfstr_ARequiredArgum.isa, v14);
  Undefined = JSValueMakeUndefined(this);
LABEL_27:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D89D3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v14);
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigationEvent::removeListener(WebKit::JSWebExtensionAPIWebNavigationEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebNavigationEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_14;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v28 = "argument";
    }

    else
    {
      v28 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v38)
    {
      v29 = v38 + 16;
    }

    else
    {
      v29 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v40 = 2082;
    v41 = v28;
    v42 = 2082;
    v43 = v29;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function removeListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v31 = v38;
    v38 = 0;
    if (v31)
    {
      if (*v31 == 1)
      {
        WTF::fastFree(v31, v30);
      }

      else
      {
        --*v31;
      }
    }

    v32 = *v37;
    *v37 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v30);
    }
  }

  if (!a4)
  {
    v33 = WebKit::toJSError(this, @"removeListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v16 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v16)))
  {
    v33 = WebKit::toJSError(this, @"removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
LABEL_34:
    *a6 = v33;
    v34 = JSValueMakeUndefined(this);
    goto LABEL_36;
  }

  v17 = *a5;
  v18 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v17, v18, buf);
  v20 = *buf;
  if (*buf)
  {
    GlobalContext = JSContextGetGlobalContext(this);
    WebKit::WebFrame::frameForContext(GlobalContext, v22, &v38);
    v23 = v38;
    if (v38)
    {
      v24 = *(v38 + 11);
      ++*v20;
      v36 = v20;
      WebKit::WebExtensionAPIWebNavigationEvent::removeListener(v12, v24, &v36);
      v25 = v36;
      v36 = 0;
      if (v25)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
      }
    }

    else
    {
      v35 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v37 = 0;
        _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v37, 2u);
      }
    }

    Undefined = JSValueMakeUndefined(this);
    if (v23)
    {
      CFRelease(*(v23 + 1));
    }

    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    goto LABEL_14;
  }

  *a6 = WebKit::toJSError(this, @"removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
  v34 = JSValueMakeUndefined(this);
LABEL_36:
  Undefined = v34;
LABEL_14:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D89D8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebNavigationEvent::hasListener(WebKit::JSWebExtensionAPIWebNavigationEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebNavigationEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_9;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v24 = "argument";
    }

    else
    {
      v24 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v33)
    {
      v25 = v33 + 16;
    }

    else
    {
      v25 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v35 = 2082;
    v36 = v24;
    v37 = 2082;
    v38 = v25;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function hasListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v27 = v33;
    v33 = 0;
    if (v27)
    {
      if (*v27 == 1)
      {
        WTF::fastFree(v27, v26);
      }

      else
      {
        --*v27;
      }
    }

    v28 = v32;
    v32 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }
  }

  if (!a4)
  {
    v29 = WebKit::toJSError(this, @"hasListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    goto LABEL_29;
  }

  if (!JSValueIsObject(this, *a5) || (v16 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v16)))
  {
    v29 = WebKit::toJSError(this, @"hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
LABEL_29:
    *a6 = v29;
    v30 = JSValueMakeUndefined(this);
    goto LABEL_31;
  }

  v17 = *a5;
  v18 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v17, v18, buf);
  v20 = *buf;
  if (*buf)
  {
    ++**buf;
    v31 = v20;
    hasListener = WebKit::WebExtensionAPIWebNavigationEvent::hasListener(v12, &v31);
    Undefined = JSValueMakeBoolean(this, hasListener);
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    goto LABEL_9;
  }

  *a6 = WebKit::toJSError(this, @"hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
  v30 = JSValueMakeUndefined(this);
LABEL_31:
  Undefined = v30;
LABEL_9:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D89DD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPIWebPageNamespace *WebKit::toWebExtensionAPIWebPageNamespace(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWebPageNamespace::webPageNamespaceClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWebPageNamespace::webPageNamespaceClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWebPageNamespace::webPageNamespaceClass(WebKit::JSWebExtensionAPIWebPageNamespace *this)
{
  result = WebKit::JSWebExtensionAPIWebPageNamespace::webPageNamespaceClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWebPageNamespace::webPageNamespaceClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v6.version = *MEMORY[0x1E696EBF8];
    *&v6.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 48);
    *&v6.staticFunctions = *(MEMORY[0x1E696EBF8] + 32);
    *&v6.finalize = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 80);
    *&v6.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v6.deleteProperty = v4;
    v5 = *(MEMORY[0x1E696EBF8] + 112);
    *&v6.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v6.hasInstance = v5;
    v6.className = "WebPageNamespace";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIWebPageNamespace::staticValues(void)::values;
    v6.staticFunctions = 0;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPIWebPageNamespace::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPIWebPageNamespace::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPIWebPageNamespace::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIWebPageNamespace::webPageNamespaceClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPIWebPageNamespace::getPropertyNames(WebKit::JSWebExtensionAPIWebPageNamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPIWebPageNamespace(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v12);
    v11[0] = "test";
    v11[1] = 5;
    v8 = v12;
    if (WebKit::WebExtensionAPIWebPageNamespace::isPropertyAllowed(v7, v11, v12))
    {
      v9 = JSStringCreateWithUTF8CString("test");
      JSPropertyNameAccumulatorAddName(a3, v9);
      if (v9)
      {
        JSStringRelease(v9);
      }
    }

    if (v8)
    {
      CFRelease(*(v8 + 1));
    }

    if (*(v7 + 48) == 1)
    {
      v10 = *(*(v7 + 40) + 8);

      v10(v7 + 40);
    }

    else
    {
      --*(v7 + 48);
    }
  }
}

void sub_19D89E004(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    JSStringRelease(v3);
  }

  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  if (*(v1 + 48) == 1)
  {
    (*(*(v1 + 40) + 8))(v1 + 40);
  }

  else
  {
    --*(v1 + 48);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::JSWebExtensionAPIWebPageNamespace::hasProperty(WebKit::JSWebExtensionAPIWebPageNamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPIWebPageNamespace(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v12);
  if (JSStringIsEqualToUTF8CString(a3, "test"))
  {
    v11[0] = "test";
    v11[1] = 5;
    v8 = v12;
    isPropertyAllowed = WebKit::WebExtensionAPIWebPageNamespace::isPropertyAllowed(v7, v11, v12);
  }

  else
  {
    isPropertyAllowed = 0;
    v8 = v12;
  }

  if (v8)
  {
    CFRelease(*(v8 + 1));
  }

  if (*(v7 + 48) == 1)
  {
    (*(*(v7 + 40) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 48);
  }

  return isPropertyAllowed;
}

void sub_19D89E15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebPageNamespace::getProperty(WebKit::JSWebExtensionAPIWebPageNamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = WebKit::toWebExtensionAPIWebPageNamespace(this, a2, a3);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 48);
    WebKit::toWebPage(this, &v22);
    if (JSStringIsEqualToUTF8CString(a3, "test") && (*&buf = "test", *(&buf + 1) = 5, v10 = v22, WebKit::WebExtensionAPIWebPageNamespace::isPropertyAllowed(v9, &buf, v22)))
    {
      v12 = WebKit::toWebExtensionAPIWebPageNamespace(this, a2, v11);
      v13 = v12;
      if (v12)
      {
        ++*(v12 + 48);
        v14 = qword_1ED640AB8;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WTF::String::utf8();
          if (v24)
          {
            v18 = v24 + 16;
          }

          else
          {
            v18 = 0;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v18;
          _os_log_debug_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEBUG, "Called getter browser.test in %{public}s world", &buf, 0xCu);
          v20 = v24;
          v24 = 0;
          if (v20)
          {
            if (*v20 == 1)
            {
              WTF::fastFree(v20, v19);
            }

            else
            {
              --*v20;
            }
          }

          v21 = v23;
          v23 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v19);
          }
        }

        v15 = WebKit::WebExtensionAPIWebPageNamespace::test(v13);
        Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v15 + 40));
        if (*(v13 + 48) == 1)
        {
          (*(*(v13 + 40) + 8))(v13 + 40);
        }

        else
        {
          --*(v13 + 48);
        }
      }

      else
      {
        Undefined = JSValueMakeUndefined(this);
      }
    }

    else
    {
      Undefined = JSValueMakeUndefined(this);
      v10 = v22;
    }

    if (v10)
    {
      CFRelease(*(v10 + 1));
    }

    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D89E4C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (*(v13 + 48) == 1)
  {
    (*(*(v13 + 40) + 8))(v13 + 40);
  }

  else
  {
    --*(v13 + 48);
  }

  if (v12)
  {
    CFRelease(*(v12 + 8));
  }

  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIWebPageNamespace::runtime(WebKit::JSWebExtensionAPIWebPageNamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebPageNamespace(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 12);
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter browser.runtime in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = (*(*v7 + 32))(v7);
    v10 = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return v10;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D89E7E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (*(v9 + 48) == 1)
  {
    (*(*(v9 + 40) + 8))(v9 + 40);
  }

  else
  {
    --*(v9 + 48);
  }

  _Unwind_Resume(a1);
}

WebKit::JSWebExtensionAPIWebPageRuntime *WebKit::toWebExtensionAPIWebPageRuntime(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWebPageRuntime::webPageRuntimeClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWebPageRuntime::webPageRuntimeClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWebPageRuntime::webPageRuntimeClass(WebKit::JSWebExtensionAPIWebPageRuntime *this)
{
  result = WebKit::JSWebExtensionAPIWebPageRuntime::webPageRuntimeClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWebPageRuntime::webPageRuntimeClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v5.version = *MEMORY[0x1E696EBF8];
    *&v5.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 80);
    *&v5.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v5.deleteProperty = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 112);
    *&v5.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v5.hasInstance = v4;
    v5.hasProperty = *(MEMORY[0x1E696EBF8] + 56);
    *&v5.parentClass = 0uLL;
    v5.className = "WebPageRuntime";
    v5.staticFunctions = &WebKit::JSWebExtensionAPIWebPageRuntime::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPIWebPageRuntime::webPageRuntimeClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIWebPageRuntime::sendMessage(WebKit::JSWebExtensionAPIWebPageRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPIWebPageRuntime(this, a3, a3);
  if (v10)
  {
    v65 = v10;
    ++*(v10 + 12);
    v11 = qword_1ED640AB8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v52 = "argument";
      }

      else
      {
        v52 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (*v71)
      {
        v53 = *v71 + 16;
      }

      else
      {
        v53 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v73 = 2082;
      v74 = v52;
      v75 = 2082;
      v76 = v53;
      _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function webPageRuntime.sendMessage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v55 = *v71;
      *v71 = 0;
      if (v55)
      {
        if (*v55 == 1)
        {
          WTF::fastFree(v55, v54);
        }

        else
        {
          --*v55;
        }
      }

      v56 = *v70;
      *v70 = 0;
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v54);
      }
    }

    v14 = a4 - 1;
    if (a4 <= 1)
    {
      *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", 0, &cfstr_ARequiredArgum.isa, v13);
      Undefined = JSValueMakeUndefined(this);
      goto LABEL_69;
    }

    if (a4 == 2)
    {
      v25 = 0;
      v29 = 1;
    }

    else
    {
      if (a4 == 4)
      {
        if (JSValueIsString(this, *a5))
        {
          if (!JSValueIsNull(this, *(a5 + 8)) && !JSValueIsUndefined(this, *(a5 + 8)))
          {
            v15 = JSValueToObject(this, *(a5 + 8), 0);
            if (!JSObjectIsFunction(this, v15))
            {
              v17 = WebKit::toJSValue(this, *(a5 + 16), v16);
              v18 = [v17 _isDictionary];

              if ((v18 & 1) == 0 && !JSValueIsNull(this, *(a5 + 16)) && !JSValueIsUndefined(this, *(a5 + 16)))
              {
                v57 = @"an object is expected";
                v58 = @"options";
                goto LABEL_111;
              }

              if (JSValueIsObject(this, *(a5 + 24)) && (v19 = JSValueToObject(this, *(a5 + 24), 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, *(a5 + 24)) || JSValueIsUndefined(this, *(a5 + 24)))
              {
                v20 = WebKit::toNSString(this, *a5, 2);
                v22 = WebKit::serializeJSObject(this, *(a5 + 8), a6, v21);
                v23 = WebKit::toNSDictionary(this, *(a5 + 16), 0, 0);
                WebKit::toJSCallbackHandler(this, *(a5 + 24), (v65 + 40), buf);
                v24 = 4;
                v25 = *buf;
                v26 = v20;
                v27 = v22;
                v28 = v23;
                v14 = 4;
                goto LABEL_46;
              }

              goto LABEL_109;
            }
          }

          v57 = @"an object is expected";
          v58 = @"message";
        }

        else
        {
          v57 = @"a string is expected";
          v58 = @"extensionId";
        }

LABEL_111:
        v50 = 0;
        *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", &v58->isa, &v57->isa, v13);
        Undefined = JSValueMakeUndefined(this);
        v27 = 0;
        v26 = 0;
LABEL_68:

LABEL_69:
        if (*(v65 + 48) == 1)
        {
          (*(*(v65 + 40) + 8))(v65 + 40);
        }

        else
        {
          --*(v65 + 48);
        }

        return Undefined;
      }

      v30 = *(a5 + 8 * v14);
      if (v30)
      {
        if (JSValueIsObject(this, *(a5 + 8 * v14)) && (v31 = JSValueToObject(this, v30, 0), JSObjectIsFunction(this, v31)) || JSValueIsNull(this, v30) || JSValueIsUndefined(this, v30))
        {
          WebKit::toJSCallbackHandler(this, v30, (v65 + 40), buf);
          v25 = *buf;
          v29 = a4 == 3;
LABEL_27:
          v32 = *a5;
          if (*a5)
          {
            if (!JSValueIsString(this, *a5))
            {
              v26 = 0;
              *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", &cfstr_Extensionid_0.isa, &cfstr_AStringIsExpec.isa, v33);
              Undefined = JSValueMakeUndefined(this);
              v27 = 0;
              v28 = 0;
              goto LABEL_65;
            }

            v26 = WebKit::toNSString(this, v32, 2);
            v34 = *(a5 + 8);
            if (v34)
            {
              if (JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, v34) || (v36 = JSValueToObject(this, v34, 0), JSObjectIsFunction(this, v36)))
              {
                v27 = 0;
                *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", &cfstr_Message_0.isa, &cfstr_AnObjectIsExpe.isa, v35);
                Undefined = JSValueMakeUndefined(this);
                v28 = 0;
                goto LABEL_65;
              }

              v38 = WebKit::serializeJSObject(this, v34, a6, v37);
              v39 = v29;
              v24 = 2;
              v27 = v38;
            }

            else
            {
              v39 = v29;
              v27 = 0;
              v24 = 1;
            }
          }

          else
          {
            v39 = v29;
            v26 = 0;
            v24 = 0;
            v27 = 0;
          }

          if (v24 >= v14)
          {
            v39 = 1;
          }

          if (v39)
          {
            goto LABEL_45;
          }

          if (v24 >= a4)
          {
            __break(1u);
LABEL_109:
            v57 = @"a function is expected";
            v58 = @"callback";
            goto LABEL_111;
          }

          v40 = *(a5 + 8 * v24);
          if (v40 && ((WebKit::toJSValue(this, v40, v12), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 _isDictionary], v41, (v42 & 1) != 0) || JSValueIsNull(this, v40) || JSValueIsUndefined(this, v40)))
          {
            v28 = WebKit::toNSDictionary(this, v40, 0, 0);
            ++v24;
          }

          else
          {
LABEL_45:
            v28 = 0;
          }

LABEL_46:
          if (v26)
          {
            if (*a6)
            {
LABEL_93:
              v59 = JSValueMakeUndefined(this);
              goto LABEL_98;
            }

            if (v27)
            {
              if (v24 >= v14)
              {
                if (v25)
                {
                  Undefined = 0;
                }

                else
                {
                  reject = 0;
                  resolve = 0;
                  Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
                  *buf = this;
                  *v71 = resolve;
                  *v70 = reject;
                  WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v67, buf, v71, v70);
                  v25 = v67;
                }

                WebKit::toWebPage(this, buf);
                v44 = *buf;
                if (*buf)
                {
                  GlobalContext = JSContextGetGlobalContext(this);
                  WebKit::WebFrame::frameForContext(GlobalContext, v46, v71);
                  if (*v71)
                  {
                    *v70 = v25;
                    v66 = 0;
                    WebKit::WebExtensionAPIWebPageRuntime::sendMessage(v65, v44, *v71, v26, v27, v28, v70, &v66);
                    v48 = v66;
                    v49 = *v70;
                    *v70 = 0;
                    if (v49)
                    {
                      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v49);
                    }

                    if (v48)
                    {
                      *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", 0, v48, v47);
                    }

                    else if (Undefined)
                    {
LABEL_60:

                      if (*v71)
                      {
                        CFRelease(*(*v71 + 8));
                      }

                      v25 = 0;
                      goto LABEL_63;
                    }

                    Undefined = JSValueMakeUndefined(this);
                    goto LABEL_60;
                  }

                  v62 = qword_1ED640AB8;
                  if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                  {
                    *v70 = 0;
                    _os_log_error_impl(&dword_19D52D000, v62, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v70, 2u);
                    if (Undefined)
                    {
LABEL_101:
                      Undefined = WebKit::toJSRejectedPromise(this, @"webPageRuntime.sendMessage()", 0, &cfstr_AnUnknownError.isa, v63);
                      if (Undefined)
                      {
                        goto LABEL_63;
                      }
                    }
                  }

                  else if (Undefined)
                  {
                    goto LABEL_101;
                  }

                  Undefined = JSValueMakeUndefined(this);
LABEL_63:
                  if (*buf)
                  {
                    CFRelease(*(*buf + 8));
                  }

                  goto LABEL_65;
                }

                v60 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v71 = 0;
                  _os_log_error_impl(&dword_19D52D000, v60, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v71, 2u);
                  if (Undefined)
                  {
LABEL_96:
                    Undefined = WebKit::toJSRejectedPromise(this, @"webPageRuntime.sendMessage()", 0, &cfstr_AnUnknownError.isa, v61);
                    if (Undefined)
                    {
LABEL_65:
                      if (v25)
                      {
                        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
                      }

                      v50 = v28;
                      goto LABEL_68;
                    }
                  }
                }

                else if (Undefined)
                {
                  goto LABEL_96;
                }

                v59 = JSValueMakeUndefined(this);
                goto LABEL_98;
              }

              *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", 0, &cfstr_AnUnknownArgum.isa, v13);
              goto LABEL_93;
            }

            v27 = 0;
            *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", &cfstr_Message_0.isa, &cfstr_AJsonSerializa.isa, v13);
            v59 = JSValueMakeUndefined(this);
          }

          else
          {
            v26 = 0;
            *a6 = WebKit::toJSError(this, @"webPageRuntime.sendMessage()", &cfstr_Extensionid_0.isa, &cfstr_AStringIsExpec.isa, v13);
            v59 = JSValueMakeUndefined(this);
          }

LABEL_98:
          Undefined = v59;
          goto LABEL_65;
        }
      }

      v25 = 0;
      v29 = 0;
    }

    v14 = a4;
    goto LABEL_27;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D89F504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a17)
  {
    CFRelease(*(a17 + 8));
  }

  if (a19)
  {
    CFRelease(*(a19 + 8));
  }

  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (*(a10 + 48) == 1)
  {
    (*(*(a10 + 40) + 8))();
  }

  else
  {
    --*(a10 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIWebPageRuntime::connect(WebKit::JSWebExtensionAPIWebPageRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebPageRuntime(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v31 = "argument";
      }

      else
      {
        v31 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (*v42)
      {
        v32 = *v42 + 16;
      }

      else
      {
        v32 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v44 = 2082;
      v45 = v31;
      v46 = 2082;
      v47 = v32;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function webPageRuntime.connect() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v34 = *v42;
      *v42 = 0;
      if (v34)
      {
        if (*v34 == 1)
        {
          WTF::fastFree(v34, v33);
        }

        else
        {
          --*v34;
        }
      }

      v35 = *v41;
      *v41 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v33);
      }
    }

    if (a4 == 2)
    {
      if (JSValueIsString(this, *a5))
      {
        v20 = WebKit::toJSValue(this, *(a5 + 8), v18);
        v21 = [v20 _isDictionary];

        if ((v21 & 1) != 0 || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          v17 = WebKit::toNSString(this, *a5, 2);
          v15 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
          if (v17)
          {
            goto LABEL_16;
          }

          goto LABEL_7;
        }

        v36 = @"an object is expected";
        v37 = @"options";
LABEL_51:
        v15 = 0;
        *a6 = WebKit::toJSError(this, @"webPageRuntime.connect()", &v37->isa, &v36->isa, v19);
        Undefined = JSValueMakeUndefined(this);
        v17 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"webPageRuntime.connect()", 0, &cfstr_ARequiredArgum.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_28;
        }

        v15 = 0;
        goto LABEL_7;
      }

      if (JSValueIsString(this, *a5))
      {
        v15 = 0;
        v17 = WebKit::toNSString(this, *a5, 2);
        if (v17)
        {
LABEL_16:
          WebKit::toWebPage(this, buf);
          v22 = *buf;
          if (!*buf)
          {
            v38 = qword_1ED640AB8;
            if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
            {
              *v42 = 0;
              _os_log_error_impl(&dword_19D52D000, v38, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v42, 2u);
            }

            Undefined = JSValueMakeUndefined(this);
            goto LABEL_27;
          }

          GlobalContext = JSContextGetGlobalContext(this);
          WebKit::WebFrame::frameForContext(GlobalContext, v24, v42);
          v25 = *v42;
          if (!*v42)
          {
            v39 = qword_1ED640AB8;
            if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
            {
              *v41 = 0;
              _os_log_error_impl(&dword_19D52D000, v39, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v41, 2u);
            }

            Undefined = JSValueMakeUndefined(this);
            goto LABEL_26;
          }

          v40 = 0;
          WebKit::WebExtensionAPIWebPageRuntime::connect(v12, v22, *v42, this, v17, v15, &v40, v41);
          v26 = v40;
          if (*v41)
          {
            v27 = (*v41 + 40);
          }

          else
          {
            v27 = 0;
          }

          Undefined = WebKit::JSWebExtensionWrapper::wrap(this, v27);
          v29 = *v41;
          *v41 = 0;
          if (v29)
          {
            if (*(v29 + 12) == 1)
            {
              (*(*(v29 + 5) + 8))();
              if (!v26)
              {
                goto LABEL_25;
              }

              goto LABEL_45;
            }

            --*(v29 + 12);
          }

          if (!v26)
          {
LABEL_25:

            CFRelease(*(v25 + 1));
LABEL_26:
            CFRelease(*(v22 + 8));
            goto LABEL_27;
          }

LABEL_45:
          *a6 = WebKit::toJSError(this, @"webPageRuntime.connect()", 0, v26, v28);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_25;
        }

LABEL_7:
        *a6 = WebKit::toJSError(this, @"webPageRuntime.connect()", &cfstr_Extensionid_0.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
        v17 = 0;
LABEL_27:

LABEL_28:
        if (*(v12 + 48) == 1)
        {
          (*(*(v12 + 40) + 8))(v12 + 40);
        }

        else
        {
          --*(v12 + 48);
        }

        return Undefined;
      }
    }

    v36 = @"a string is expected";
    v37 = @"extensionId";
    goto LABEL_51;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D89FC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    CFRelease(*(a15 + 8));
  }

  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(a1);
}

WebKit::JSWebExtensionAPIWebRequest *WebKit::toWebExtensionAPIWebRequest(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWebRequest::webRequestClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWebRequest::webRequestClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWebRequest::webRequestClass(WebKit::JSWebExtensionAPIWebRequest *this)
{
  result = WebKit::JSWebExtensionAPIWebRequest::webRequestClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWebRequest::webRequestClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v6.version = *MEMORY[0x1E696EBF8];
    *&v6.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 48);
    *&v6.staticFunctions = *(MEMORY[0x1E696EBF8] + 32);
    *&v6.finalize = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 80);
    *&v6.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v6.deleteProperty = v4;
    v5 = *(MEMORY[0x1E696EBF8] + 112);
    *&v6.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v6.hasInstance = v5;
    v6.className = "WebRequest";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIWebRequest::staticValues(void)::values;
    v6.staticFunctions = 0;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIWebRequest::webRequestClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onBeforeRequest(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onBeforeRequest in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onBeforeRequest(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A00A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onBeforeSendHeaders(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onBeforeSendHeaders in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onBeforeSendHeaders(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A033C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onSendHeaders(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onSendHeaders in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onSendHeaders(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A05D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onHeadersReceived(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onHeadersReceived in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onHeadersReceived(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A0864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onAuthRequired(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onAuthRequired in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onAuthRequired(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A0AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onBeforeRedirect(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onBeforeRedirect in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onBeforeRedirect(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A0D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onResponseStarted(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onResponseStarted in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onResponseStarted(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A1020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onCompleted(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onCompleted in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onCompleted(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A12B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequest::onErrorOccurred(WebKit::JSWebExtensionAPIWebRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWebRequest(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter webRequest.onErrorOccurred in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWebRequest::onErrorOccurred(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A1548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPIWebRequestEvent *WebKit::toWebExtensionAPIWebRequestEvent(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWebRequestEvent::webRequestEventClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWebRequestEvent::webRequestEventClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWebRequestEvent::webRequestEventClass(WebKit::JSWebExtensionAPIWebRequestEvent *this)
{
  result = WebKit::JSWebExtensionAPIWebRequestEvent::webRequestEventClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWebRequestEvent::webRequestEventClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v5.version = *MEMORY[0x1E696EBF8];
    *&v5.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 80);
    *&v5.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v5.deleteProperty = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 112);
    *&v5.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v5.hasInstance = v4;
    v5.hasProperty = *(MEMORY[0x1E696EBF8] + 56);
    *&v5.parentClass = 0uLL;
    v5.className = "WebRequestEvent";
    v5.staticFunctions = &WebKit::JSWebExtensionAPIWebRequestEvent::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPIWebRequestEvent::webRequestEventClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIWebRequestEvent::addListener(WebKit::JSWebExtensionAPIWebRequestEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v68 = *MEMORY[0x1E69E9840];
  v12 = WebKit::toWebExtensionAPIWebRequestEvent(this, a3, a3);
  v13 = v12;
  if (!v12 || (++*(v12 + 12), *(v12 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v13)
    {
      return Undefined;
    }

    goto LABEL_64;
  }

  v14 = qword_1ED640AB8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v7 = "argument";
    }

    else
    {
      v7 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v62)
    {
      v50 = *v62 + 16;
    }

    else
    {
      v50 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v64 = 2082;
    v65 = v7;
    v66 = 2082;
    v67 = v50;
    _os_log_debug_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEBUG, "Called function addListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v52 = *v62;
    *v62 = 0;
    if (v52)
    {
      if (*v52 == 1)
      {
        WTF::fastFree(v52, v51);
      }

      else
      {
        --*v52;
      }
    }

    v53 = v61;
    v61 = 0;
    if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v53, v51);
    }
  }

  if (a4 == 3)
  {
    if (JSValueIsObject(this, *a5) && (v26 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v26)))
    {
      v28 = WebKit::toJSValue(this, *(a5 + 8), v27);
      v29 = [v28 _isDictionary];

      if ((v29 & 1) != 0 || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        if (JSValueIsArray(this, *(a5 + 16)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
        {
          v30 = *a5;
          v31 = (*(*v13 + 16))(v13);
          WebKit::toJSCallbackHandler(this, v30, v31, buf);
          v32 = *buf;
          v7 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
          v33 = *(a5 + 16);
          v34 = objc_opt_class();
          v24 = WebKit::toNSArray(this, v33, v34, v35);
          if (v32)
          {
            goto LABEL_41;
          }

          goto LABEL_62;
        }

        v55 = @"an array is expected";
        v56 = @"extraInfoSpec";
      }

      else
      {
        v55 = @"an object is expected";
        v56 = @"filter";
      }
    }

    else
    {
      v55 = @"a function is expected";
      v56 = @"listener";
    }

    v7 = 0;
    *a6 = WebKit::toJSError(this, @"addListener()", &v56->isa, &v55->isa, v25);
    Undefined = JSValueMakeUndefined(this);
    v24 = 0;
    goto LABEL_63;
  }

  if (a4)
  {
    v17 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v24 = 0;
      v7 = 0;
    }

    else
    {
      if (a4 == 1)
      {
        v24 = 0;
        v22 = 0;
        v7 = 0;
LABEL_36:
        v40 = *(a5 + 8 * v22);
        if (v40)
        {
          if (JSValueIsObject(this, v40))
          {
            v41 = JSValueToObject(this, v40, 0);
            if (JSObjectIsFunction(this, v41))
            {
              v42 = (*(*v13 + 16))(v13);
              WebKit::toJSCallbackHandler(this, v40, v42, buf);
              v32 = *buf;
              if (*buf)
              {
                if (v22)
                {
                  *a6 = WebKit::toJSError(this, @"addListener()", 0, &cfstr_AnUnknownArgum.isa, v16);
                  v58 = JSValueMakeUndefined(this);
                  goto LABEL_77;
                }

LABEL_41:
                GlobalContext = JSContextGetGlobalContext(this);
                WebKit::WebFrame::frameForContext(GlobalContext, v44, buf);
                if (*buf)
                {
                  v45 = *(*buf + 88);
                  ++*v32;
                  v59 = 0;
                  v60 = v32;
                  WebKit::WebExtensionAPIWebRequestEvent::addListener(v13, v45, &v60, v7, v24, &v59);
                  v47 = v59;
                  v48 = v60;
                  v60 = 0;
                  if (v48)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v48);
                  }

                  if (v47)
                  {
                    *a6 = WebKit::toJSError(this, @"addListener()", 0, v47, v46);
                  }

                  Undefined = JSValueMakeUndefined(this);

                  if (*buf)
                  {
                    CFRelease(*(*buf + 8));
                  }

                  goto LABEL_48;
                }

                v57 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v62 = 0;
                  _os_log_error_impl(&dword_19D52D000, v57, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v62, 2u);
                }

                v58 = JSValueMakeUndefined(this);
LABEL_77:
                Undefined = v58;
LABEL_48:

                WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v32);
                goto LABEL_64;
              }
            }
          }
        }

        goto LABEL_62;
      }

      v18 = *(a5 + 8 * v17);
      if (v18 && (JSValueIsArray(this, *(a5 + 8 * v17)) || JSValueIsNull(this, v18) || (v7 = 0, JSValueIsUndefined(this, v18))))
      {
        v19 = objc_opt_class();
        v7 = 0;
        v21 = WebKit::toNSArray(this, v18, v19, v20);
        v22 = a4 - 2;
        v23 = 1;
        v24 = v21;
      }

      else
      {
        v24 = 0;
        v23 = 0;
        v22 = a4 - 1;
      }

      if (v23 >= v17)
      {
        goto LABEL_34;
      }

      if (v22 >= a4)
      {
LABEL_79:
        __break(1u);
        goto LABEL_62;
      }

      v36 = *(a5 + 8 * v22);
      if (!v36 || (WebKit::toJSValue(this, *(a5 + 8 * v22), v15), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 _isDictionary], v37, (v38 & 1) == 0) && !JSValueIsNull(this, v36) && !JSValueIsUndefined(this, v36))
      {
LABEL_34:
        v39 = 0;
LABEL_35:
        v7 = v39;
        if (v22 < a4)
        {
          goto LABEL_36;
        }

        goto LABEL_79;
      }

      v39 = WebKit::toNSDictionary(this, v36, 0, 0);
      if (v22)
      {
        --v22;
        goto LABEL_35;
      }

      v7 = v39;
    }

LABEL_62:
    *a6 = WebKit::toJSError(this, @"addListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v16);
    Undefined = JSValueMakeUndefined(this);
LABEL_63:

    goto LABEL_64;
  }

  *a6 = WebKit::toJSError(this, @"addListener()", 0, &cfstr_ARequiredArgum.isa, v16);
  Undefined = JSValueMakeUndefined(this);
LABEL_64:
  if (*(v13 + 48) == 1)
  {
    (*(*(v13 + 40) + 8))(v13 + 40);
  }

  else
  {
    --*(v13 + 48);
  }

  return Undefined;
}

void sub_19D8A1EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    CFRelease(*(a15 + 8));
  }

  WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v18);
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequestEvent::removeListener(WebKit::JSWebExtensionAPIWebRequestEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebRequestEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_14;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v28 = "argument";
    }

    else
    {
      v28 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v38)
    {
      v29 = v38 + 16;
    }

    else
    {
      v29 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v40 = 2082;
    v41 = v28;
    v42 = 2082;
    v43 = v29;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function removeListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v31 = v38;
    v38 = 0;
    if (v31)
    {
      if (*v31 == 1)
      {
        WTF::fastFree(v31, v30);
      }

      else
      {
        --*v31;
      }
    }

    v32 = *v37;
    *v37 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v30);
    }
  }

  if (!a4)
  {
    v33 = WebKit::toJSError(this, @"removeListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v16 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v16)))
  {
    v33 = WebKit::toJSError(this, @"removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
LABEL_34:
    *a6 = v33;
    v34 = JSValueMakeUndefined(this);
    goto LABEL_36;
  }

  v17 = *a5;
  v18 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v17, v18, buf);
  v20 = *buf;
  if (*buf)
  {
    GlobalContext = JSContextGetGlobalContext(this);
    WebKit::WebFrame::frameForContext(GlobalContext, v22, &v38);
    v23 = v38;
    if (v38)
    {
      v24 = *(v38 + 11);
      ++*v20;
      v36 = v20;
      WebKit::WebExtensionAPIWebRequestEvent::removeListener(v12, v24, &v36);
      v25 = v36;
      v36 = 0;
      if (v25)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
      }
    }

    else
    {
      v35 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v37 = 0;
        _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v37, 2u);
      }
    }

    Undefined = JSValueMakeUndefined(this);
    if (v23)
    {
      CFRelease(*(v23 + 1));
    }

    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    goto LABEL_14;
  }

  *a6 = WebKit::toJSError(this, @"removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
  v34 = JSValueMakeUndefined(this);
LABEL_36:
  Undefined = v34;
LABEL_14:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A2410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWebRequestEvent::hasListener(WebKit::JSWebExtensionAPIWebRequestEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWebRequestEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_9;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v24 = "argument";
    }

    else
    {
      v24 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v33)
    {
      v25 = v33 + 16;
    }

    else
    {
      v25 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v35 = 2082;
    v36 = v24;
    v37 = 2082;
    v38 = v25;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function hasListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v27 = v33;
    v33 = 0;
    if (v27)
    {
      if (*v27 == 1)
      {
        WTF::fastFree(v27, v26);
      }

      else
      {
        --*v27;
      }
    }

    v28 = v32;
    v32 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }
  }

  if (!a4)
  {
    v29 = WebKit::toJSError(this, @"hasListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    goto LABEL_29;
  }

  if (!JSValueIsObject(this, *a5) || (v16 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v16)))
  {
    v29 = WebKit::toJSError(this, @"hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
LABEL_29:
    *a6 = v29;
    v30 = JSValueMakeUndefined(this);
    goto LABEL_31;
  }

  v17 = *a5;
  v18 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v17, v18, buf);
  v20 = *buf;
  if (*buf)
  {
    ++**buf;
    v31 = v20;
    hasListener = WebKit::WebExtensionAPIWebRequestEvent::hasListener(v12, &v31);
    Undefined = JSValueMakeBoolean(this, hasListener);
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    goto LABEL_9;
  }

  *a6 = WebKit::toJSError(this, @"hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
  v30 = JSValueMakeUndefined(this);
LABEL_31:
  Undefined = v30;
LABEL_9:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A2850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPIWindows *WebKit::toWebExtensionAPIWindows(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWindows::windowsClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWindows::windowsClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWindows::windowsClass(WebKit::JSWebExtensionAPIWindows *this)
{
  result = WebKit::JSWebExtensionAPIWindows::windowsClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWindows::windowsClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v6.version = *MEMORY[0x1E696EBF8];
    *&v6.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 48);
    *&v6.staticFunctions = *(MEMORY[0x1E696EBF8] + 32);
    *&v6.finalize = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 80);
    *&v6.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v6.deleteProperty = v4;
    v5 = *(MEMORY[0x1E696EBF8] + 112);
    *&v6.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v6.hasInstance = v5;
    v6.className = "Windows";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIWindows::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIWindows::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPIWindows::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPIWindows::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPIWindows::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIWindows::windowsClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPIWindows::getPropertyNames(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v14);
    v12 = "create";
    v13 = 7;
    v8 = v14;
    if (WebKit::WebExtensionAPIWindows::isPropertyAllowed(v7, &v12, v14))
    {
      v9 = JSStringCreateWithUTF8CString("create");
      JSPropertyNameAccumulatorAddName(a3, v9);
      if (v9)
      {
        JSStringRelease(v9);
      }
    }

    v12 = "update";
    v13 = 7;
    if (WebKit::WebExtensionAPIWindows::isPropertyAllowed(v7, &v12, v8))
    {
      v10 = JSStringCreateWithUTF8CString("update");
      JSPropertyNameAccumulatorAddName(a3, v10);
      if (v10)
      {
        JSStringRelease(v10);
      }
    }

    v12 = "remove";
    v13 = 7;
    if (WebKit::WebExtensionAPIWindows::isPropertyAllowed(v7, &v12, v8))
    {
      v11 = JSStringCreateWithUTF8CString("remove");
      JSPropertyNameAccumulatorAddName(a3, v11);
      if (v11)
      {
        JSStringRelease(v11);
      }
    }

    if (v8)
    {
      CFRelease(v8[1]);
    }

    if (*(v7 + 48) == 1)
    {
      (*(*(v7 + 40) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 48);
    }
  }
}

void sub_19D8A2BD4(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    JSStringRelease(v3);
  }

  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  if (*(v1 + 48) == 1)
  {
    (*(*(v1 + 40) + 8))(v1 + 40);
  }

  else
  {
    --*(v1 + 48);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::JSWebExtensionAPIWindows::hasProperty(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v14);
  if (JSStringIsEqualToUTF8CString(a3, "create"))
  {
    v12 = "create";
    v13 = 7;
    v8 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPIWindows::isPropertyAllowed(v7, &v12, v14);
    goto LABEL_8;
  }

  if (JSStringIsEqualToUTF8CString(a3, "update"))
  {
    v12 = "update";
    v13 = 7;
    v8 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPIWindows::isPropertyAllowed(v7, &v12, v14);
    goto LABEL_8;
  }

  if (JSStringIsEqualToUTF8CString(a3, "remove"))
  {
    v12 = "remove";
    v13 = 7;
    v8 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPIWindows::isPropertyAllowed(v7, &v12, v14);
LABEL_8:
    v10 = isPropertyAllowed;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v8 = v14;
  if (v14)
  {
LABEL_9:
    CFRelease(*(v8 + 1));
  }

LABEL_10:
  if (*(v7 + 48) == 1)
  {
    (*(*(v7 + 40) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 48);
  }

  return v10;
}

void sub_19D8A2DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::getProperty(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v7 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  if (v7)
  {
    v8 = v7;
    ++*(v7 + 48);
    WebKit::toWebPage(this, &v18);
    if (JSStringIsEqualToUTF8CString(a3, "create") && (v16 = "create", v17 = 7, v9 = v18, isPropertyAllowed = WebKit::WebExtensionAPIWindows::isPropertyAllowed(v8, &v16, v18), v11 = WebKit::JSWebExtensionAPIWindows::create, (isPropertyAllowed & 1) != 0) || JSStringIsEqualToUTF8CString(a3, "update") && (v16 = "update", v17 = 7, v9 = v18, v12 = WebKit::WebExtensionAPIWindows::isPropertyAllowed(v8, &v16, v18), v11 = WebKit::JSWebExtensionAPIWindows::update, (v12 & 1) != 0) || JSStringIsEqualToUTF8CString(a3, "remove") && (v16 = "remove", v17 = 7, v9 = v18, v13 = WebKit::WebExtensionAPIWindows::isPropertyAllowed(v8, &v16, v18), v11 = WebKit::JSWebExtensionAPIWindows::remove, v13))
    {
      FunctionWithCallback = JSObjectMakeFunctionWithCallback(this, a3, v11);
      if (!v9)
      {
LABEL_10:
        if (*(v8 + 48) == 1)
        {
          (*(*(v8 + 40) + 8))(v8 + 40);
        }

        else
        {
          --*(v8 + 48);
        }

        return FunctionWithCallback;
      }
    }

    else
    {
      FunctionWithCallback = JSValueMakeUndefined(this);
      v9 = v18;
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    CFRelease(*(v9 + 1));
    goto LABEL_10;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8A2FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::get(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPIWindows(this, a3, a3);
  v11 = v10;
  if (!v10 || (++*(v10 + 12), *(v10 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v11)
    {
      return Undefined;
    }

    goto LABEL_59;
  }

  v12 = qword_1ED640AB8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v43 = "argument";
    }

    else
    {
      v43 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v59)
    {
      v44 = *v59 + 16;
    }

    else
    {
      v44 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v61 = 2082;
    v62 = v43;
    v63 = 2082;
    v64 = v44;
    _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function windows.get() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v46 = *v59;
    *v59 = 0;
    if (v46)
    {
      if (*v46 == 1)
      {
        WTF::fastFree(v46, v45);
      }

      else
      {
        --*v46;
      }
    }

    v47 = v58;
    v58 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v45);
    }
  }

  if (a4 == 3)
  {
    if (!JSValueIsNumber(this, *a5))
    {
      v51 = @"a number is expected";
      v52 = @"windowID";
LABEL_93:
      v41 = 0;
      *a6 = WebKit::toJSError(this, @"windows.get()", &v52->isa, &v51->isa, v14);
      Undefined = JSValueMakeUndefined(this);
LABEL_58:

      goto LABEL_59;
    }

    v23 = WebKit::toJSValue(this, *(a5 + 8), v22);
    v24 = [v23 _isDictionary];

    if ((v24 & 1) == 0 && !JSValueIsNull(this, *(a5 + 8)) && !JSValueIsUndefined(this, *(a5 + 8)))
    {
      v51 = @"an object is expected";
      v52 = @"properties";
      goto LABEL_93;
    }

    if (JSValueIsObject(this, *(a5 + 16)) && (v25 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v25)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
    {
      v26 = JSValueToNumber(this, *a5, 0);
      v27 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
      v28 = *(a5 + 16);
      v29 = (*(*v11 + 16))(v11);
      WebKit::toJSCallbackHandler(this, v28, v29, buf);
      v19 = *buf;
      v30 = v27;
      if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (!*buf)
        {
LABEL_45:
          reject = 0;
          resolve = 0;
          Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
          *buf = this;
          v58 = reject;
          *v59 = resolve;
          WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v55, buf, v59, &v58);
          v19 = v55;
          goto LABEL_46;
        }

LABEL_24:
        Undefined = 0;
LABEL_46:
        WebKit::toWebPage(this, buf);
        if (*buf)
        {
          v37 = *(*buf + 1832);
          *v59 = v19;
          v54 = 0;
          WebKit::WebExtensionAPIWindows::get(v11, v37, v27, v59, &v54, v26);
          v39 = v54;
          v40 = *v59;
          *v59 = 0;
          if (v40)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v40);
          }

          if (v39)
          {
            *a6 = WebKit::toJSError(this, @"windows.get()", 0, v39, v38);
          }

          else if (Undefined)
          {
LABEL_52:

            if (*buf)
            {
              CFRelease(*(*buf + 8));
            }

            v19 = 0;
            goto LABEL_55;
          }

          Undefined = JSValueMakeUndefined(this);
          goto LABEL_52;
        }

        v49 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          *v59 = 0;
          _os_log_error_impl(&dword_19D52D000, v49, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v59, 2u);
          if (!Undefined)
          {
            goto LABEL_85;
          }
        }

        else if (!Undefined)
        {
LABEL_85:
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_55;
        }

        Undefined = WebKit::toJSRejectedPromise(this, @"windows.get()", 0, &cfstr_AnUnknownError.isa, v50);
        if (!Undefined)
        {
          goto LABEL_85;
        }

LABEL_55:
        if (v19)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
        }

        v41 = v27;
        goto LABEL_58;
      }

      goto LABEL_75;
    }

LABEL_90:
    v51 = @"a function is expected";
    v52 = @"callback";
    goto LABEL_93;
  }

  if (a4)
  {
    v15 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v30 = 0;
      v19 = 0;
      goto LABEL_41;
    }

    if (a4 == 1)
    {
      v19 = 0;
      v30 = 0;
      goto LABEL_38;
    }

    v16 = *(a5 + 8 * v15);
    if (v16 && (JSValueIsObject(this, *(a5 + 8 * v15)) && (v17 = JSValueToObject(this, v16, 0), JSObjectIsFunction(this, v17)) || JSValueIsNull(this, v16) || JSValueIsUndefined(this, v16)))
    {
      v18 = (*(*v11 + 16))(v11);
      WebKit::toJSCallbackHandler(this, v16, v18, buf);
      v19 = *buf;
      v20 = a4 - 2;
      v21 = 1;
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v20 = a4 - 1;
    }

    if (v21 >= v15)
    {
      goto LABEL_36;
    }

    if (v20 >= a4)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v32 = *(a5 + 8 * v20);
    if (v32 && ((WebKit::toJSValue(this, *(a5 + 8 * v20), v13), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 _isDictionary], v33, (v34 & 1) != 0) || JSValueIsNull(this, v32) || JSValueIsUndefined(this, v32)))
    {
      v35 = WebKit::toNSDictionary(this, v32, 0, 0);
      if (!v20)
      {
        v30 = v35;
        goto LABEL_75;
      }

      --v20;
    }

    else
    {
LABEL_36:
      v35 = 0;
    }

    v15 = v20;
    v30 = v35;
    if (v20 < a4)
    {
LABEL_38:
      v36 = *(a5 + 8 * v15);
      if (v36)
      {
        if (!JSValueIsNumber(this, v36))
        {
          goto LABEL_75;
        }

        v26 = JSValueToNumber(this, v36, 0);
        --v15;
        goto LABEL_42;
      }

LABEL_41:
      v26 = NAN;
LABEL_42:
      if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          v27 = v30;
          if (!v19)
          {
            goto LABEL_45;
          }

          goto LABEL_24;
        }

        *a6 = WebKit::toJSError(this, @"windows.get()", 0, &cfstr_AnUnknownArgum.isa, v14);
        v48 = JSValueMakeUndefined(this);
LABEL_76:
        Undefined = v48;
        v27 = v30;
        goto LABEL_55;
      }

LABEL_75:
      *a6 = WebKit::toJSError(this, @"windows.get()", &cfstr_Windowid_0.isa, &cfstr_ANumberIsExpec.isa, v14);
      v48 = JSValueMakeUndefined(this);
      goto LABEL_76;
    }

    goto LABEL_89;
  }

  *a6 = WebKit::toJSError(this, @"windows.get()", 0, &cfstr_ARequiredArgum.isa, v14);
  Undefined = JSValueMakeUndefined(this);
LABEL_59:
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  return Undefined;
}

void sub_19D8A38F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    CFRelease(*(a17 + 8));
  }

  if (v18)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v18);
  }

  if (*(v17 + 48) == 1)
  {
    (*(*(v17 + 40) + 8))(v17 + 40);
  }

  else
  {
    --*(v17 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::getCurrent(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindows(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_36;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v36 = "argument";
    }

    else
    {
      v36 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v50)
    {
      v37 = *v50 + 16;
    }

    else
    {
      v37 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v52 = 2082;
    v53 = v36;
    v54 = 2082;
    v55 = v37;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windows.getCurrent() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v39 = *v50;
    *v50 = 0;
    if (v39)
    {
      if (*v39 == 1)
      {
        WTF::fastFree(v39, v38);
      }

      else
      {
        --*v39;
      }
    }

    v40 = v49;
    v49 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v38);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        *buf = this;
        v49 = reject;
        *v50 = resolve;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v46, buf, v50, &v49);
        v27 = v46;
LABEL_27:
        WebKit::toWebPage(this, buf);
        if (*buf)
        {
          v29 = *(*buf + 1832);
          *v50 = v27;
          v45 = 0;
          WebKit::WebExtensionAPIWindows::getCurrent(v12, v29, v19, v50, &v45);
          v31 = v45;
          v32 = *v50;
          *v50 = 0;
          if (v32)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v32);
          }

          if (v31)
          {
            *a6 = WebKit::toJSError(this, @"windows.getCurrent()", 0, v31, v30);
          }

          else if (Undefined)
          {
            goto LABEL_33;
          }

          Undefined = JSValueMakeUndefined(this);
LABEL_33:

          if (*buf)
          {
            CFRelease(*(*buf + 8));
          }

          goto LABEL_35;
        }

        v41 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          *v50 = 0;
          _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v50, 2u);
          if (Undefined)
          {
LABEL_60:
            Undefined = WebKit::toJSRejectedPromise(this, @"windows.getCurrent()", 0, &cfstr_AnUnknownError.isa, v42);
            if (Undefined)
            {
              goto LABEL_62;
            }
          }
        }

        else if (Undefined)
        {
          goto LABEL_60;
        }

        Undefined = JSValueMakeUndefined(this);
LABEL_62:
        if (v27)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v27);
        }

        goto LABEL_35;
      }

      goto LABEL_66;
    }

    v34 = WebKit::toJSValue(this, *a5, v23);
    v35 = [v34 _isDictionary];

    if ((v35 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
      goto LABEL_26;
    }

LABEL_67:
    v43 = @"an object is expected";
    v44 = @"info";
    goto LABEL_68;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_67;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_66:
  v43 = @"a function is expected";
  v44 = @"callback";
LABEL_68:
  *a6 = WebKit::toJSError(this, @"windows.getCurrent()", &v44->isa, &v43->isa, v17);
  Undefined = JSValueMakeUndefined(this);
  v19 = 0;
LABEL_35:

LABEL_36:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A4064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    CFRelease(*(a17 + 8));
  }

  if (v19)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
  }

  if (*(v17 + 48) == 1)
  {
    (*(*(v17 + 40) + 8))(v17 + 40);
  }

  else
  {
    --*(v17 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::getLastFocused(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindows(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windows.getLastFocused() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIWindows::getLastFocused(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"windows.getLastFocused()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"info";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"windows.getLastFocused()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A4700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::getAll(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindows(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windows.getAll() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIWindows::getAll(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"windows.getAll()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"info";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"windows.getAll()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A4D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::windowIdentifierNone(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v14)
      {
        v11 = v14 + 16;
      }

      else
      {
        v11 = 0;
      }

      *buf = 136446210;
      v16 = v11;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter windows.WINDOW_ID_NONE in %{public}s world", buf, 0xCu);
      if (v14)
      {
        if (*v14 == 1)
        {
          WTF::fastFree(v14, v12);
        }

        else
        {
          --*v14;
        }
      }

      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }
    }

    Undefined = JSValueMakeNumber(this, -1.0);
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A5070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::windowIdentifierCurrent(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v14)
      {
        v11 = v14 + 16;
      }

      else
      {
        v11 = 0;
      }

      *buf = 136446210;
      v16 = v11;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter windows.WINDOW_ID_CURRENT in %{public}s world", buf, 0xCu);
      if (v14)
      {
        if (*v14 == 1)
        {
          WTF::fastFree(v14, v12);
        }

        else
        {
          --*v14;
        }
      }

      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }
    }

    Undefined = JSValueMakeNumber(this, -2.0);
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A52FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::onCreated(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter windows.onCreated in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWindows::onCreated(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A5590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::onRemoved(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter windows.onRemoved in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWindows::onRemoved(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A5824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::onFocusChanged(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIWindows(this, a2, a3);
  v7 = v6;
  if (!v6 || (++*(v6 + 12), *(v6 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v7)
    {
      return Undefined;
    }
  }

  else
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v15)
      {
        v12 = v15 + 16;
      }

      else
      {
        v12 = 0;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter windows.onFocusChanged in %{public}s world", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    v9 = WebKit::WebExtensionAPIWindows::onFocusChanged(v7);
    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, (v9 + 40));
  }

  if (*(v7 + 12) == 1)
  {
    (*(*(v7 + 5) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 12);
  }

  return Undefined;
}

void sub_19D8A5AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9)
  {
    if (*(v9 + 48) == 1)
    {
      (*(*(v9 + 40) + 8))(v9 + 40);
    }

    else
    {
      --*(v9 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::create(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindows(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 48), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v35 = "argument";
    }

    else
    {
      v35 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v47)
    {
      v36 = v47 + 16;
    }

    else
    {
      v36 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windows.create() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v38 = v47;
    v47 = 0;
    if (v38)
    {
      if (*v38 == 1)
      {
        WTF::fastFree(v38, v37);
      }

      else
      {
        --*v38;
      }
    }

    v39 = v46;
    v46 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v22 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v24 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v25 = *a5;
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v19 = 0;
LABEL_23:
        v27 = *buf;
        if (*buf)
        {
          Undefined = 0;
          goto LABEL_27;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v47 = resolve;
        *buf = this;
        v46 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, &v47, &v46);
        v27 = v43;
LABEL_27:
        *buf = v27;
        v42 = 0;
        WebKit::WebExtensionAPIWindows::createWindow(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"windows.create()", 0, v30, v29);
        }

        else if (Undefined)
        {
LABEL_32:

          goto LABEL_33;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    v33 = WebKit::toJSValue(this, *a5, v23);
    v34 = [v33 _isDictionary];

    if ((v34 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
      goto LABEL_26;
    }

LABEL_58:
    v40 = @"an object is expected";
    v41 = @"info";
    goto LABEL_59;
  }

  if (a4 != 2)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v15 = WebKit::toJSValue(this, *a5, v14);
  v16 = [v15 _isDictionary];

  if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_58;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_57:
  v40 = @"a function is expected";
  v41 = @"callback";
LABEL_59:
  *a6 = WebKit::toJSError(this, @"windows.create()", &v41->isa, &v40->isa, v17);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A60DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    if (*(v15 + 48) == 1)
    {
      (*(*(v15 + 40) + 8))(v15 + 40);
    }

    else
    {
      --*(v15 + 48);
    }
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::update(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindows(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 48), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_33;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v34 = "argument";
    }

    else
    {
      v34 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v46)
    {
      v35 = v46 + 16;
    }

    else
    {
      v35 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v48 = 2082;
    v49 = v34;
    v50 = 2082;
    v51 = v35;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windows.update() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v37 = v46;
    v46 = 0;
    if (v37)
    {
      if (*v37 == 1)
      {
        WTF::fastFree(v37, v36);
      }

      else
      {
        --*v37;
      }
    }

    v38 = v45;
    v45 = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v36);
    }
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5))
      {
        v26 = WebKit::toJSValue(this, *(a5 + 8), v25);
        v27 = [v26 _isDictionary];

        if (v27)
        {
          v20 = JSValueToNumber(this, *a5, 0);
          v21 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
          v24 = 0;
LABEL_17:
          if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            if (v21)
            {
              if (v24)
              {
                Undefined = 0;
              }

              else
              {
                reject = 0;
                resolve = 0;
                Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
                v46 = resolve;
                *buf = this;
                v45 = reject;
                WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v42, buf, &v46, &v45);
                v24 = v42;
              }

              *buf = v24;
              v41 = 0;
              WebKit::WebExtensionAPIWindows::update(v12, v21, buf, &v41, v20);
              v31 = v41;
              v32 = *buf;
              *buf = 0;
              if (v32)
              {
                WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v32);
              }

              if (v31)
              {
                *a6 = WebKit::toJSError(this, @"windows.update()", 0, v31, v30);
              }

              else if (Undefined)
              {
LABEL_31:

LABEL_32:
                goto LABEL_33;
              }

              Undefined = JSValueMakeUndefined(this);
              goto LABEL_31;
            }

            v21 = 0;
            *a6 = WebKit::toJSError(this, @"windows.update()", &cfstr_Properties.isa, &cfstr_AnObjectIsExpe.isa, v14);
            v29 = JSValueMakeUndefined(this);
LABEL_23:
            Undefined = v29;
            if (v24)
            {
              WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v24);
            }

            goto LABEL_32;
          }

LABEL_22:
          *a6 = WebKit::toJSError(this, @"windows.update()", &cfstr_Windowid_0.isa, &cfstr_ANumberIsExpec.isa, v14);
          v29 = JSValueMakeUndefined(this);
          goto LABEL_23;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (a4 != 3)
      {
        v21 = 0;
        v24 = 0;
        goto LABEL_22;
      }

      if (JSValueIsNumber(this, *a5))
      {
        v17 = WebKit::toJSValue(this, *(a5 + 8), v15);
        v18 = [v17 _isDictionary];

        if (v18)
        {
          if (JSValueIsObject(this, *(a5 + 16)) && (v19 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
          {
            v20 = JSValueToNumber(this, *a5, 0);
            v21 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
            v22 = *(a5 + 16);
            v23 = (*(*v12 + 16))(v12);
            WebKit::toJSCallbackHandler(this, v22, v23, buf);
            v24 = *buf;
            goto LABEL_17;
          }

          v39 = @"a function is expected";
          v40 = @"callback";
LABEL_54:
          *a6 = WebKit::toJSError(this, @"windows.update()", &v40->isa, &v39->isa, v16);
          Undefined = JSValueMakeUndefined(this);
          v21 = 0;
          goto LABEL_32;
        }

LABEL_53:
        v39 = @"an object is expected";
        v40 = @"properties";
        goto LABEL_54;
      }
    }

    v39 = @"a number is expected";
    v40 = @"windowID";
    goto LABEL_54;
  }

  *a6 = WebKit::toJSError(this, @"windows.update()", 0, &cfstr_ARequiredArgum.isa, v14);
  Undefined = JSValueMakeUndefined(this);
LABEL_33:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A6770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindows::remove(WebKit::JSWebExtensionAPIWindows *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindows(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 48), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_26;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v26 = "argument";
    }

    else
    {
      v26 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v39)
    {
      v27 = v39 + 16;
    }

    else
    {
      v27 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v41 = 2082;
    v42 = v26;
    v43 = 2082;
    v44 = v27;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windows.remove() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v29 = v39;
    v39 = 0;
    if (v29)
    {
      if (*v29 == 1)
      {
        WTF::fastFree(v29, v28);
      }

      else
      {
        --*v29;
      }
    }

    v30 = v38;
    v38 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v28);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsNumber(this, *a5))
    {
      v16 = JSValueToNumber(this, *a5, 0);
      v15 = 0;
      goto LABEL_16;
    }

    goto LABEL_48;
  }

  if (a4 == 2)
  {
    if (JSValueIsNumber(this, *a5))
    {
      if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
      {
        v16 = JSValueToNumber(this, *a5, 0);
        v19 = a5[1];
        v20 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v19, v20, buf);
        v15 = *buf;
LABEL_16:
        if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          *a6 = WebKit::toJSError(this, @"windows.remove()", &cfstr_Windowid_0.isa, &cfstr_ANumberIsExpec.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          if (v15)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
          }

          goto LABEL_26;
        }

        if (v15)
        {
          Undefined = 0;
        }

        else
        {
          reject = 0;
          resolve = 0;
          Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
          v39 = resolve;
          *buf = this;
          v38 = reject;
          WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v35, buf, &v39, &v38);
          v15 = v35;
        }

        *buf = v15;
        v34 = 0;
        WebKit::WebExtensionAPIWindows::remove(v12, buf, &v34, v16);
        v23 = v34;
        v24 = *buf;
        *buf = 0;
        if (v24)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v24);
        }

        if (v23)
        {
          *a6 = WebKit::toJSError(this, @"windows.remove()", 0, v23, v22);
        }

        else if (Undefined)
        {
LABEL_25:

          goto LABEL_26;
        }

        Undefined = JSValueMakeUndefined(this);
        goto LABEL_25;
      }

      v32 = @"a function is expected";
      v33 = @"callback";
LABEL_49:
      *a6 = WebKit::toJSError(this, @"windows.remove()", &v33->isa, &v32->isa, v17);
      v31 = JSValueMakeUndefined(this);
      goto LABEL_50;
    }

LABEL_48:
    v32 = @"a number is expected";
    v33 = @"windowID";
    goto LABEL_49;
  }

  if (a4)
  {
    v15 = 0;
    v16 = NAN;
    goto LABEL_16;
  }

  *a6 = WebKit::toJSError(this, @"windows.remove()", 0, &cfstr_ARequiredArgum.isa, v14);
  v31 = JSValueMakeUndefined(this);
LABEL_50:
  Undefined = v31;
LABEL_26:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A6D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
  }

  if (*(v15 + 48) == 1)
  {
    (*(*(v15 + 40) + 8))(v15 + 40);
  }

  else
  {
    --*(v15 + 48);
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPIWindowsEvent *WebKit::toWebExtensionAPIWindowsEvent(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIWindowsEvent::windowsEventClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIWindowsEvent::windowsEventClass(result);
        if (JSValueIsObjectOfClass(this, a2, v6))
        {
          v7 = JSValueToObject(this, a2, 0);
          Private = JSObjectGetPrivate(v7);
          if (Private)
          {
            return (Private - 40);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

JSClassRef WebKit::JSWebExtensionAPIWindowsEvent::windowsEventClass(WebKit::JSWebExtensionAPIWindowsEvent *this)
{
  result = WebKit::JSWebExtensionAPIWindowsEvent::windowsEventClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIWindowsEvent::windowsEventClass(void)::jsClass)
  {
    v2 = *(MEMORY[0x1E696EBF8] + 16);
    *&v5.version = *MEMORY[0x1E696EBF8];
    *&v5.parentClass = v2;
    v3 = *(MEMORY[0x1E696EBF8] + 80);
    *&v5.getProperty = *(MEMORY[0x1E696EBF8] + 64);
    *&v5.deleteProperty = v3;
    v4 = *(MEMORY[0x1E696EBF8] + 112);
    *&v5.callAsFunction = *(MEMORY[0x1E696EBF8] + 96);
    *&v5.hasInstance = v4;
    v5.hasProperty = *(MEMORY[0x1E696EBF8] + 56);
    *&v5.parentClass = 0uLL;
    v5.className = "WindowsEvent";
    v5.staticFunctions = &WebKit::JSWebExtensionAPIWindowsEvent::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPIWindowsEvent::windowsEventClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIWindowsEvent::addListener(WebKit::JSWebExtensionAPIWindowsEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindowsEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_27;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v37 = "argument";
    }

    else
    {
      v37 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v48)
    {
      v38 = *v48 + 16;
    }

    else
    {
      v38 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v50 = 2082;
    v51 = v37;
    v52 = 2082;
    v53 = v38;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windowsEvent.addListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v40 = *v48;
    *v48 = 0;
    if (v40)
    {
      if (*v40 == 1)
      {
        WTF::fastFree(v40, v39);
      }

      else
      {
        --*v40;
      }
    }

    v41 = v47;
    v47 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v39);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5))
    {
      v19 = JSValueToObject(this, *a5, 0);
      if (JSObjectIsFunction(this, v19))
      {
        v20 = *a5;
        v21 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v20, v21, buf);
        v15 = 0;
        v22 = *buf;
        goto LABEL_19;
      }
    }

    goto LABEL_45;
  }

  if (a4 == 2)
  {
    if (JSValueIsObject(this, *a5))
    {
      v23 = JSValueToObject(this, *a5, 0);
      if (JSObjectIsFunction(this, v23))
      {
        v25 = WebKit::toJSValue(this, *(a5 + 8), v24);
        v26 = [v25 _isDictionary];

        if ((v26 & 1) != 0 || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          v27 = *a5;
          v28 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v27, v28, buf);
          v22 = *buf;
          v15 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
LABEL_19:
          if (v22)
          {
            GlobalContext = JSContextGetGlobalContext(this);
            WebKit::WebFrame::frameForContext(GlobalContext, v30, buf);
            v31 = *buf;
            if (*buf)
            {
              v32 = *(*buf + 88);
              ++*v22;
              v45 = 0;
              v46 = v22;
              WebKit::WebExtensionAPIWindowsEvent::addListener(v12, v32, &v46, v15, &v45);
              v34 = v45;
              v35 = v46;
              v46 = 0;
              if (v35)
              {
                WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v35);
              }

              if (v34)
              {
                *a6 = WebKit::toJSError(this, @"windowsEvent.addListener()", 0, v34, v33);
              }

              Undefined = JSValueMakeUndefined(this);

              CFRelease(*(v31 + 8));
            }

            else
            {
              v44 = qword_1ED640AB8;
              if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
              {
                *v48 = 0;
                _os_log_error_impl(&dword_19D52D000, v44, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v48, 2u);
              }

              Undefined = JSValueMakeUndefined(this);
            }

            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v22);
            goto LABEL_27;
          }

          goto LABEL_8;
        }

        v42 = @"an object is expected";
        v43 = @"filter";
LABEL_46:
        v15 = 0;
        *a6 = WebKit::toJSError(this, @"windowsEvent.addListener()", &v43->isa, &v42->isa, v18);
        v16 = JSValueMakeUndefined(this);
        goto LABEL_9;
      }
    }

LABEL_45:
    v42 = @"a function is expected";
    v43 = @"listener";
    goto LABEL_46;
  }

  if (a4)
  {
    v15 = 0;
LABEL_8:
    *a6 = WebKit::toJSError(this, @"windowsEvent.addListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v14);
    v16 = JSValueMakeUndefined(this);
LABEL_9:
    Undefined = v16;

    goto LABEL_27;
  }

  *a6 = WebKit::toJSError(this, @"windowsEvent.addListener()", 0, &cfstr_ARequiredArgum.isa, v14);
  Undefined = JSValueMakeUndefined(this);
LABEL_27:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A7490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v14);
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIWindowsEvent::removeListener(WebKit::JSWebExtensionAPIWindowsEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindowsEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_14;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v28 = "argument";
    }

    else
    {
      v28 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v38)
    {
      v29 = v38 + 16;
    }

    else
    {
      v29 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v40 = 2082;
    v41 = v28;
    v42 = 2082;
    v43 = v29;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windowsEvent.removeListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v31 = v38;
    v38 = 0;
    if (v31)
    {
      if (*v31 == 1)
      {
        WTF::fastFree(v31, v30);
      }

      else
      {
        --*v31;
      }
    }

    v32 = *v37;
    *v37 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v30);
    }
  }

  if (!a4)
  {
    v33 = WebKit::toJSError(this, @"windowsEvent.removeListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v16 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v16)))
  {
    v33 = WebKit::toJSError(this, @"windowsEvent.removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
LABEL_34:
    *a6 = v33;
    v34 = JSValueMakeUndefined(this);
    goto LABEL_36;
  }

  v17 = *a5;
  v18 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v17, v18, buf);
  v20 = *buf;
  if (*buf)
  {
    GlobalContext = JSContextGetGlobalContext(this);
    WebKit::WebFrame::frameForContext(GlobalContext, v22, &v38);
    v23 = v38;
    if (v38)
    {
      v24 = *(v38 + 11);
      ++*v20;
      v36 = v20;
      WebKit::WebExtensionAPIWindowsEvent::removeListener(v12, v24, &v36);
      v25 = v36;
      v36 = 0;
      if (v25)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
      }
    }

    else
    {
      v35 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v37 = 0;
        _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v37, 2u);
      }
    }

    Undefined = JSValueMakeUndefined(this);
    if (v23)
    {
      CFRelease(*(v23 + 1));
    }

    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    goto LABEL_14;
  }

  *a6 = WebKit::toJSError(this, @"windowsEvent.removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
  v34 = JSValueMakeUndefined(this);
LABEL_36:
  Undefined = v34;
LABEL_14:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A796C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIWindowsEvent::hasListener(WebKit::JSWebExtensionAPIWindowsEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIWindowsEvent(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_9;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v24 = "argument";
    }

    else
    {
      v24 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v33)
    {
      v25 = v33 + 16;
    }

    else
    {
      v25 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v35 = 2082;
    v36 = v24;
    v37 = 2082;
    v38 = v25;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function windowsEvent.hasListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v27 = v33;
    v33 = 0;
    if (v27)
    {
      if (*v27 == 1)
      {
        WTF::fastFree(v27, v26);
      }

      else
      {
        --*v27;
      }
    }

    v28 = v32;
    v32 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }
  }

  if (!a4)
  {
    v29 = WebKit::toJSError(this, @"windowsEvent.hasListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    goto LABEL_29;
  }

  if (!JSValueIsObject(this, *a5) || (v16 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v16)))
  {
    v29 = WebKit::toJSError(this, @"windowsEvent.hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
LABEL_29:
    *a6 = v29;
    v30 = JSValueMakeUndefined(this);
    goto LABEL_31;
  }

  v17 = *a5;
  v18 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v17, v18, buf);
  v20 = *buf;
  if (*buf)
  {
    ++**buf;
    v31 = v20;
    hasListener = WebKit::WebExtensionAPIWindowsEvent::hasListener(v12, &v31);
    Undefined = JSValueMakeBoolean(this, hasListener);
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    goto LABEL_9;
  }

  *a6 = WebKit::toJSError(this, @"windowsEvent.hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
  v30 = JSValueMakeUndefined(this);
LABEL_31:
  Undefined = v30;
LABEL_9:
  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  return Undefined;
}

void sub_19D8A7DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (*(v11 + 48) == 1)
  {
    (*(*(v11 + 40) + 8))(v11 + 40);
  }

  else
  {
    --*(v11 + 48);
  }

  _Unwind_Resume(exception_object);
}

WebKit::WebExtensionCallbackHandler *WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(WebKit::WebExtensionCallbackHandler **a1, JSContextRef *a2, OpaqueJSValue **a3, OpaqueJSValue **a4)
{
  v8 = WTF::fastMalloc(0x28);
  result = WebKit::WebExtensionCallbackHandler::WebExtensionCallbackHandler(v8, *a2, *a3, *a4);
  *a1 = v8;
  return result;
}

WebKit::WebExtensionCallbackHandler *WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(WebKit::WebExtensionCallbackHandler *result)
{
  if (*result == 1)
  {
    WebKit::WebExtensionCallbackHandler::~WebExtensionCallbackHandler(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WebKit::WebExtensionCallbackHandler *WebKit::WebExtensionCallbackHandler::WebExtensionCallbackHandler(WebKit::WebExtensionCallbackHandler *this, JSValue *a2)
{
  v3 = a2;
  *this = 1;
  v4 = [(JSValue *)v3 context];
  v5 = JSValueToObject([v4 JSGlobalContextRef], -[JSValue JSValueRef](v3, "JSValueRef"), 0);

  *(this + 1) = v5;
  *(this + 2) = 0;
  v6 = [(JSValue *)v3 context];
  v7 = [v6 JSGlobalContextRef];
  *(this + 3) = v7;
  if (v7)
  {
    JSGlobalContextRetain(v7);
  }

  *(this + 4) = 0;
  JSValueProtect(*(this + 3), *(this + 1));

  return this;
}

void sub_19D8A7FB4(_Unwind_Exception *a1)
{
  v4 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    JSGlobalContextRelease(v5);
  }

  if (*v2 == 1)
  {

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::WebExtensionCallbackHandler::WebExtensionCallbackHandler(uint64_t a1, JSContextRef ctx, uint64_t a3, uint64_t a4)
{
  *a1 = 1;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  GlobalContext = JSContextGetGlobalContext(ctx);
  *(a1 + 24) = GlobalContext;
  if (GlobalContext)
  {
    JSGlobalContextRetain(GlobalContext);
    GlobalContext = *(a1 + 24);
  }

  ++*(a4 + 8);
  *(a1 + 32) = a4;
  JSValueProtect(GlobalContext, *(a1 + 8));
  return a1;
}

void sub_19D8A80C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    JSGlobalContextRelease(v4);
  }

  if (*v1 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::WebExtensionCallbackHandler::WebExtensionCallbackHandler(uint64_t a1, JSContextRef ctx, uint64_t a3)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  GlobalContext = JSContextGetGlobalContext(ctx);
  *(a1 + 24) = GlobalContext;
  if (GlobalContext)
  {
    JSGlobalContextRetain(GlobalContext);
  }

  ++*(a3 + 8);
  *(a1 + 32) = a3;
  return a1;
}

WebKit::WebExtensionCallbackHandler *WebKit::WebExtensionCallbackHandler::WebExtensionCallbackHandler(WebKit::WebExtensionCallbackHandler *this, JSContextRef ctx, OpaqueJSValue *a3, OpaqueJSValue *a4)
{
  *this = 1;
  *(this + 1) = a3;
  *(this + 2) = a4;
  GlobalContext = JSContextGetGlobalContext(ctx);
  *(this + 3) = GlobalContext;
  if (GlobalContext)
  {
    JSGlobalContextRetain(GlobalContext);
    GlobalContext = *(this + 3);
  }

  *(this + 4) = 0;
  JSValueProtect(GlobalContext, *(this + 1));
  JSValueProtect(*(this + 3), *(this + 2));
  return this;
}

void sub_19D8A823C(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

void WebKit::WebExtensionCallbackHandler::~WebExtensionCallbackHandler(WebKit::WebExtensionCallbackHandler *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    JSValueUnprotect(*(this + 3), v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    JSValueUnprotect(*(this + 3), v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  v5 = *(this + 3);
  if (v5)
  {
    JSGlobalContextRelease(v5);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

void sub_19D8A8394(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    JSGlobalContextRelease(v4);
  }

  if (*v1 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

id WebKit::WebExtensionCallbackHandler::callbackFunction(WebKit::WebExtensionCallbackHandler *this)
{
  if (*(this + 3))
  {
    v1 = *(this + 1);
    if (v1)
    {
      v2 = MEMORY[0x1E696EB58];
      v3 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:?];
      v1 = [v2 valueWithJSValueRef:v1 inContext:v3];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void WebKit::WebExtensionCallbackHandler::reportError(WebKit::WebExtensionCallbackHandler *this, NSString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(this + 4);
    if (v5)
    {
      ++*(v5 + 2);
      v6 = WebKit::WebExtensionAPIRuntimeBase::reportError(v5, v3, this);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else if (*(this + 2))
    {
      v7 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v14 = 138543362;
        *&v14[4] = v3;
        _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Promise rejected: %{public}@", v14, 0xCu);
        v4 = *(this + 3);
      }

      v8 = MEMORY[0x1E696EB58];
      v9 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:v4];
      v10 = [v8 valueWithNewErrorFromMessage:v3 inContext:v9];

      v11 = *(this + 2);
      *v14 = WebKit::toJSValueRef(*(this + 3), v10, v12);
      v13 = WebKit::callWithArguments<1ul>(v11, this + 3, v14);
    }
  }
}

id WebKit::callWithArguments<1ul>(JSObjectRef object, JSContextRef *a2, JSValueRef *arguments)
{
  v5 = 0;
  if (object)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = JSObjectCallAsFunction(*a2, object, 0, 1uLL, arguments, 0);
      v5 = WebKit::toNSObject(v6, v7, 0, 0, 0);
    }

    v3 = vars8;
  }

  return v5;
}

JSValueRef WebKit::toJSValueRef(WebKit *this, const OpaqueJSContext *a2, objc_object *a3)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = WTF::dynamic_objc_cast<JSValue>(v4);
    v7 = v6;
    if (v6)
    {
      Undefined = [v6 JSValueRef];
    }

    else
    {
      v9 = MEMORY[0x1E696EB58];
      v7 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(this)];
      v10 = [v9 valueWithObject:v5 inContext:v7];
      Undefined = [v10 JSValueRef];
    }
  }

  else
  {
    Undefined = JSValueMakeUndefined(this);
  }

  return Undefined;
}

id WebKit::WebExtensionCallbackHandler::call(JSObjectRef *this)
{
  v1 = WebKit::callWithArguments<0ul>(this[1], this + 3);

  return v1;
}

id WebKit::callWithArguments<0ul>(JSObjectRef object, JSContextRef *a2)
{
  v4 = 0;
  if (object)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = JSObjectCallAsFunction(*a2, object, 0, 0, 0, 0);
      v4 = WebKit::toNSObject(v5, v6, 0, 0, 0);
    }

    v2 = vars8;
  }

  return v4;
}

id WebKit::WebExtensionCallbackHandler::call(WebKit::WebExtensionCallbackHandler *this, objc_object *a2)
{
  v3 = a2;
  v4 = *(this + 1);
  arguments = WebKit::toJSValueRef(*(this + 3), v3, v5);
  v6 = WebKit::callWithArguments<1ul>(v4, this + 3, &arguments);

  return v6;
}

id WebKit::WebExtensionCallbackHandler::call(WebKit::WebExtensionCallbackHandler *this, objc_object *a2, objc_object *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(this + 1);
  v8 = *(this + 3);
  this = (this + 24);
  v13[0] = WebKit::toJSValueRef(v8, v5, v9);
  v13[1] = WebKit::toJSValueRef(*this, v6, v10);
  v11 = WebKit::callWithArguments<2ul>(v7, this, v13);

  return v11;
}

id WebKit::callWithArguments<2ul>(JSObjectRef object, JSContextRef *a2, JSValueRef *arguments)
{
  v5 = 0;
  if (object)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = JSObjectCallAsFunction(*a2, object, 0, 2uLL, arguments, 0);
      v5 = WebKit::toNSObject(v6, v7, 0, 0, 0);
    }

    v3 = vars8;
  }

  return v5;
}

id WebKit::WebExtensionCallbackHandler::call(WebKit::WebExtensionCallbackHandler *this, objc_object *a2, objc_object *a3, objc_object *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(this + 1);
  v11 = *(this + 3);
  this = (this + 24);
  arguments[0] = WebKit::toJSValueRef(v11, v7, v12);
  arguments[1] = WebKit::toJSValueRef(*this, v8, v13);
  arguments[2] = WebKit::toJSValueRef(*this, v9, v14);
  v15 = WebKit::callWithArguments<3ul>(v10, this, arguments);

  return v15;
}

id WebKit::callWithArguments<3ul>(JSObjectRef object, JSContextRef *a2, JSValueRef *arguments)
{
  v5 = 0;
  if (object)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = JSObjectCallAsFunction(*a2, object, 0, 3uLL, arguments, 0);
      v5 = WebKit::toNSObject(v6, v7, 0, 0, 0);
    }

    v3 = vars8;
  }

  return v5;
}

id WebKit::toNSObject(const OpaqueJSContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v12 = 0;
    goto LABEL_27;
  }

  v10 = MEMORY[0x1E696EB58];
  v11 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(a1)];
  v12 = [v10 valueWithJSValueRef:a2 inContext:v11];

  if ([v12 isArray])
  {
    v13 = [v12 objectForKeyedSubscript:@"length"];
    v14 = [v13 toUInt32];
    v15 = v14;

    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
    if (v14)
    {
      v17 = 0;
      do
      {
        v18 = [v12 valueAtIndex:v17];
        v19 = v18;
        if (a5 && (([v18 isArray] & 1) != 0 || objc_msgSend(v19, "_isDictionary")))
        {
          if (v19)
          {
            [v16 addObject:v19];
          }
        }

        else
        {
          v20 = WebKit::toNSObject(a1, [v19 JSValueRef], 0, a4, 0);
          if (v20)
          {
            [v16 addObject:v20];
          }
        }

        ++v17;
      }

      while (v15 != v17);
    }

    v21 = [v16 copy];
    if (a3 && objc_opt_class() != a3)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = ___ZN6WebKit10toNSObjectEPK15OpaqueJSContextPK13OpaqueJSValueP10objc_classNS_15NullValuePolicyENS_11ValuePolicyE_block_invoke;
      v25[3] = &__block_descriptor_40_e11_B24__0_8_16lu32l8;
      v25[4] = a3;
      v22 = WebKit::filterObjects<NSArray>(v21, v25);

      v21 = v22;
    }

    goto LABEL_26;
  }

  if ([v12 _isDictionary])
  {
    v23 = WebKit::toNSDictionary(a1, a2, a4, a5);
LABEL_25:
    v21 = v23;
LABEL_26:

    v12 = v21;
    goto LABEL_27;
  }

  if (![v12 isObject] || (objc_msgSend(v12, "isDate") & 1) != 0 || objc_msgSend(v12, "isNull"))
  {
    v23 = [v12 toObject];
    goto LABEL_25;
  }

LABEL_27:

  return v12;
}

uint64_t WebKit::toJSContext(WebKit *this, const OpaqueJSContext *a2)
{
  v2 = MEMORY[0x1E696EB40];
  GlobalContext = JSContextGetGlobalContext(this);

  return [v2 contextWithJSGlobalContextRef:GlobalContext];
}

id WebKit::toNSDictionary(const OpaqueJSContext *a1, const OpaqueJSValue *a2, uint64_t a3, int a4)
{
  if (JSValueIsObject(a1, a2) && (v7 = JSValueToObject(a1, a2, 0)) != 0)
  {
    v8 = v7;
    v9 = MEMORY[0x1E696EB58];
    v10 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(a1)];
    v11 = [v9 valueWithJSValueRef:a2 inContext:v10];

    v26 = v11;
    if ([v11 _isDictionary])
    {
      v12 = JSObjectCopyPropertyNames(a1, v8);
      Count = JSPropertyNameArrayGetCount(v12);
      v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:Count];
      if (Count)
      {
        for (i = 0; Count != i; ++i)
        {
          NameAtIndex = JSPropertyNameArrayGetNameAtIndex(v12, i);
          v16 = NameAtIndex;
          if (NameAtIndex)
          {
            JSStringRetain(NameAtIndex);
          }

          Property = JSObjectGetProperty(a1, v8, v16, 0);
          if ((a3 & 1) == 0 && JSValueIsNull(a1, Property))
          {
            goto LABEL_20;
          }

          v19 = WebKit::toNSString(v16, v17);
          v21 = WebKit::toJSValue(a1, Property, v20);
          v22 = v21;
          if (a4)
          {
            if (v21)
            {
              [v27 setObject:v21 forKeyedSubscript:v19];
            }

            goto LABEL_19;
          }

          if ([v21 _isDictionary])
          {
            v23 = WebKit::toNSDictionary(a1, Property, a3, 0);
            if (v23)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v23 = WebKit::toNSObject(a1, Property, 0, 0, 0);
            if (v23)
            {
LABEL_17:
              [v27 setObject:v23 forKeyedSubscript:v19];
            }
          }

LABEL_19:
LABEL_20:
          if (v16)
          {
            JSStringRelease(v16);
          }
        }
      }

      JSPropertyNameArrayRelease(v12);
      v24 = [v27 copy];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

__CFString *WebKit::toNSString(JSContextRef ctx, JSValueRef value, int a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_10;
      }

      if (JSValueIsUndefined(ctx, value))
      {
        goto LABEL_9;
      }
    }

    if (JSValueIsNull(ctx, value))
    {
      goto LABEL_9;
    }
  }

  if (!JSValueIsString(ctx, value))
  {
LABEL_9:
    v3 = 0;
  }

  else
  {
    v6 = JSValueToStringCopy(ctx, value, 0);
    v3 = JSStringCopyCFString(0, v6);
    if (v6)
    {
      JSStringRelease(v6);
    }
  }

LABEL_10:

  return v3;
}

void sub_19D8A9314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

JSStringRef WebKit::toNSString(JSStringRef string, OpaqueJSString *a2)
{
  if (string)
  {
    string = JSStringCopyCFString(0, string);
    v2 = vars8;
  }

  return string;
}

id WebKit::toJSValue(WebKit *this, id a2, const OpaqueJSValue *a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = MEMORY[0x1E696EB58];
    v5 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(this)];
    v3 = [v4 valueWithJSValueRef:v3 inContext:v5];
  }

  return v3;
}

JSValueRef WebKit::toJSValueRef(const OpaqueJSContext *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 || (a3 & 1) != 0)
  {
    if (!v5)
    {
      v5 = &stru_1F1147748;
    }

    v8 = JSStringCreateWithCFString(v5);
    String = JSValueMakeString(a1, v8);
    if (v8)
    {
      JSStringRelease(v8);
    }
  }

  else
  {
    String = JSValueMakeNull(a1);
  }

  return String;
}

{
  v5 = [a2 absoluteURL];
  v6 = [v5 absoluteString];
  v7 = WebKit::toJSValueRef(a1, v6, a3);

  return v7;
}

void sub_19D8A947C(_Unwind_Exception *a1)
{
  if (v2)
  {
    JSStringRelease(v2);
  }

  _Unwind_Resume(a1);
}

const OpaqueJSContext *WebKit::toJSCallbackHandler@<X0>(const OpaqueJSContext *this@<X0>, const OpaqueJSContext *a2@<X1>, const OpaqueJSValue *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = this;
  if (a2)
  {
    v7 = this;
    this = JSValueToObject(this, a2, 0);
    v8 = this;
    if (this)
    {
      this = JSObjectIsFunction(v7, this);
      if (this)
      {
        return WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,WebKit::WebExtensionAPIRuntimeBase &>(&v9, &v8, a3, a4);
      }
    }
  }

  *a4 = 0;
  return this;
}

uint64_t WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,WebKit::WebExtensionAPIRuntimeBase &>@<X0>(JSContextRef *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x28);
  result = WebKit::WebExtensionCallbackHandler::WebExtensionCallbackHandler(v8, *a1, *a2, a3);
  *a4 = v8;
  return result;
}

id WebKit::serializeJSObject(WebKit *this, const OpaqueJSContext *a2, JSValueRef *exception, const OpaqueJSValue **a4)
{
  if (a2)
  {
    JSONString = JSValueCreateJSONString(this, a2, 0, exception);
    v6 = WebKit::toNSString(JSONString, v5);
    if (JSONString)
    {
      JSStringRelease(JSONString);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_19D8A9678(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

JSObjectRef WebKit::toJSError(WebKit *this, const OpaqueJSContext *a2, NSString *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = qword_1ED640AB8;
  if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
  {
    *v8 = 138543362;
    *&v8[4] = v4;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Exception thrown: %{public}@", v8, 0xCu);
  }

  *v8 = WebKit::toJSValueRef(this, v4, 1);
  Error = JSObjectMakeError(this, 1uLL, v8, 0);

  return Error;
}

JSValueRef WebKit::toJSValueRefOrJSNull(WebKit *this, const OpaqueJSContext *a2, objc_object *a3)
{
  v5 = a2;
  if (v5)
  {
    Null = WebKit::toJSValueRef(this, v5, v4);
  }

  else
  {
    Null = JSValueMakeNull(this);
  }

  v7 = Null;

  return v7;
}

id WebKit::toNSArray(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3, objc_class *a4)
{
  v4 = WebKit::toNSObject(this, a2, a3, 0, 0);
  v5 = WTF::dynamic_objc_cast<NSArray>(v4);

  return v5;
}

const OpaqueJSContext *WebKit::toWindowObject(WebKit *this, const OpaqueJSContext *a2, WebKit::WebFrame *a3)
{
  v4 = WebKit::WebFrame::jsContext(a2);
  if (v4)
  {
    GlobalObject = JSContextGetGlobalObject(v4);
    v4 = WebKit::toJSValue(this, GlobalObject, v6);
  }

  return v4;
}

uint64_t WTF::ObjCTypeCastTraits<JSValue>::isType<NSObject>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t *WebKit::LaunchServicesDatabaseManager::singleton(WebKit::LaunchServicesDatabaseManager *this)
{
  if (atomic_load_explicit(&_MergedGlobals_50, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&_MergedGlobals_50, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::LaunchServicesDatabaseManager::singleton(void)::$_0 &&>>);
  }

  return &qword_1ED641B28;
}

uint64_t WebKit::LaunchServicesDatabaseManager::handleEvent(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "message-name");
  if (string)
  {
    strlen(string);
    WTF::String::fromUTF8();
    string = v13;
  }

  else
  {
    v13 = 0;
  }

  if (MEMORY[0x19EB01EF0](string, "update-launch-services-database-message", 39))
  {
    value = xpc_dictionary_get_value(xdict, "launch-services-database");
    v7 = value;
    if (value)
    {
      value = value;
    }

    v8 = WebCore::logClient(value);
    v9 = *v8;
    if (*v8)
    {
      if (((*(*v9 + 24))(*v8) & 1) == 0)
      {
        result = 105;
        __break(0xC471u);
        return result;
      }

      WebKit::LogClient::RECEIVED_LAUNCH_SERVICES_DATABASE(v9);
    }

    else
    {
      v11 = qword_1ED640D10;
      if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "Received Launch Services database", &v12, 2u);
      }
    }

    if (v7)
    {
      [objc_msgSend(MEMORY[0x1E6963648] "sharedDatabaseContext")];
    }

    WTF::BinarySemaphore::signal((a1 + 25));
    atomic_store(1u, (a1 + 24));
    if (v7)
    {
    }
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

void sub_19D8AA1F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::downcast<WebKit::LogClient,WebCore::LogClient>(uint64_t a1)
{
  if (!a1 || ((*(*a1 + 24))(a1) & 1) != 0)
  {
    return a1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

void WebKit::LogClient::RECEIVED_LAUNCH_SERVICES_DATABASE(WebKit::LogClient *this)
{
  os_unfair_lock_lock(this + 4);
  IPC::StreamClientConnection::send<Messages::LogStream::RECEIVED_LAUNCH_SERVICES_DATABASE,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(*(this + 1), *(this + 3));

  os_unfair_lock_unlock(this + 4);
}

void WebKit::LaunchServicesDatabaseManager::didConnect(atomic_uchar *this)
{
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, "message-name", "request-launch-services-database-update-message");
  WebKit::XPCEndpointClient::connection(this, &connection);
  v2 = connection;
  if (connection)
  {
    xpc_connection_send_message(connection, message);
  }

  if (message)
  {
  }
}

void sub_19D8AA3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  v10 = v9;

  if (a9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::LaunchServicesDatabaseManager::waitForDatabaseUpdate(WebKit::LaunchServicesDatabaseManager *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = WTF::MonotonicTime::now(this);
  v4 = v3;
  v5 = atomic_load(this + 24);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v2 = WTF::BinarySemaphore::waitFor((this + 25));
    v6 = v2;
  }

  v7 = WTF::MonotonicTime::now(v2);
  v9 = v8 - v4;
  if (v9 > 0.5)
  {
    v10 = WebCore::logClient(v7);
    v11 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v10);
    if (v11)
    {
      WebKit::LogClient::WAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE_TOOK_F_SECONDS(v11, v9);
    }

    else
    {
      v14 = qword_1ED640D10;
      v7 = os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        v16 = 134217984;
        v17 = v9;
        _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Waiting for Launch Services database update took %f seconds", &v16, 0xCu);
      }
    }
  }

  if ((v6 & 1) == 0)
  {
    v12 = WebCore::logClient(v7);
    v13 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v12);
    if (v13)
    {
      WebKit::LogClient::TIMED_OUT_WAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE(v13);
    }

    else
    {
      v15 = qword_1ED640D10;
      if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v16) = 0;
        _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "Timed out waiting for Launch Services database update", &v16, 2u);
      }
    }
  }
}

void WebKit::LogClient::WAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE_TOOK_F_SECONDS(os_unfair_lock_s *this, double a2)
{
  os_unfair_lock_lock(this + 4);
  v5 = *&this[2]._os_unfair_lock_opaque;
  v6 = *&this[6]._os_unfair_lock_opaque;
  v7 = *(v5 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(v4);
    v8 = v7 + v9;
  }

  if (*(v5 + 64) == v6)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v43, v8);
      if (v45 != 1)
      {
        goto LABEL_29;
      }

      v10 = v43;
      v11 = v44;
      v48 = v44;
      if (v44 <= 1)
      {
        break;
      }

      *v43 = 286;
      v46 = (v10 + 1);
      v47 = v11 - 2;
      v49 = a2;
      IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(&v46, &v49, 1);
      if (v46)
      {
        v13 = v48 - v47;
        if (v48 - v47 <= 0x10)
        {
          v13 = 16;
        }

        v14 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v15 = *(v5 + 72);
        if (v14 + 16 >= v15)
        {
          v14 = 0;
        }

        v16 = v14 + v13;
        if (v15 <= v16)
        {
          v16 = 0;
        }

        *(v5 + 88) = v16;
        v17 = *(v5 + 80);
        if (*(v17 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v17 + 16) + 128), v16) == 0x80000000 || *(v5 + 124))
          {
            if (*(v5 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v5 + 100));
            }

            *(v5 + 124) = 0;
          }

          goto LABEL_29;
        }
      }

      else if (v45)
      {
        if (v44 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19D8AA918);
        }

        *v43 = 3197;
        v18 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v19 = *(v5 + 72);
        if (v18 + 16 >= v19)
        {
          v18 = 0;
        }

        v20 = v18 + 16;
        v21 = v19 <= v20 ? 0 : v20;
        *(v5 + 88) = v21;
        v22 = *(v5 + 80);
        if (*(v22 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v22 + 16) + 128), v21);
          *(v5 + 124) = 0;
          v23 = *(v5 + 8);
          v24 = IPC::Encoder::operator new(0x238, v12);
          *v24 = 286;
          *(v24 + 2) = 0;
          *(v24 + 3) = 0;
          *(v24 + 1) = v6;
          *(v24 + 68) = 0;
          *(v24 + 70) = 0;
          *(v24 + 69) = 0;
          IPC::Encoder::encodeHeader(v24);
          v46 = v24;
          IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v24, a2);
          IPC::Connection::sendMessageImpl(v23, &v46, 1, 0);
          v26 = v46;
          v46 = 0;
          if (v26)
          {
            IPC::Encoder::~Encoder(v26, v25);
            bmalloc::api::tzoneFree(v27, v28);
          }

          goto LABEL_29;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      if (*(v5 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v5 + 100));
      }

      *(v5 + 124) = 0;
LABEL_45:
      *(v5 + 64) = v6;
    }

    __break(0xC471u);
LABEL_53:
    JUMPOUT(0x19D8AA8F8);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v46, v8);
  if (v48 != 1)
  {
    goto LABEL_29;
  }

  v29 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  v30 = v46;
  *v46 = 3198;
  v31 = v30 + 2;
  if (v29 - 2 >= (-v31 & 7 | 8uLL))
  {
    v32 = -v31 & 7;
    *&v31[v32] = v6;
    v33 = 6;
    if (v32 > 6)
    {
      v33 = v32;
    }

    v34 = v33 + 10;
    v35 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(v5 + 72);
    if (v35 + 16 >= v36)
    {
      v35 = 0;
    }

    v37 = v34 + v35;
    if (v36 <= v37)
    {
      v37 = 0;
    }

    *(v5 + 88) = v37;
    v38 = *(v5 + 80);
    if (*(v38 + 8) <= 0xFFuLL)
    {
      goto LABEL_46;
    }

    v39 = atomic_exchange((*(v38 + 16) + 128), v37);
    v40 = *(v5 + 124);
    if (v39 == 0x80000000 || v40 != 0)
    {
      v42 = v40 + 1;
      *(v5 + 124) = v42;
      if (v42 >= *(v5 + 120))
      {
        goto LABEL_47;
      }
    }

    goto LABEL_45;
  }

LABEL_29:
  os_unfair_lock_unlock(this + 4);
}

void sub_19D8AA93C(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v3, a2);
  bmalloc::api::tzoneFree(v5, v6);
  os_unfair_lock_unlock(v2 + 4);
  _Unwind_Resume(a1);
}

void WebKit::LogClient::TIMED_OUT_WAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 4);
  v3 = *&this[2]._os_unfair_lock_opaque;
  v4 = *&this[6]._os_unfair_lock_opaque;
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(v2);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) == v4)
  {
LABEL_4:
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v26, v6);
    if (v28 == 1)
    {
      if (v27 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v26 = 284;
        v8 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v10 = *(v3 + 72);
        v9 = *(v3 + 80);
        if (v8 + 16 >= v10)
        {
          v8 = 0;
        }

        v11 = v8 + 16;
        if (v10 <= v11)
        {
          v11 = 0;
        }

        *(v3 + 88) = v11;
        if (*(v9 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v9 + 16) + 128), v11) == 0x80000000 || *(v3 + 124))
          {
            if (*(v3 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v3 + 100));
            }

            *(v3 + 124) = 0;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_37;
    }

LABEL_16:
    os_unfair_lock_unlock(this + 4);
    return;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v26, v6);
  if (v28 != 1)
  {
    goto LABEL_16;
  }

  v12 = v27;
  if (v27 > 1)
  {
    v13 = v26;
    *v26 = 3198;
    v14 = v13 + 1;
    if (v12 - 2 < (-v14 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v15 = -v14 & 7;
    *(v14 + v15) = v4;
    v16 = 6;
    if (v15 > 6)
    {
      v16 = v15;
    }

    v17 = v16 + 10;
    v18 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v3 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v17 + v18;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(v3 + 88) = v20;
    v21 = *(v3 + 80);
    if (*(v21 + 8) <= 0xFFuLL)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v22 = atomic_exchange((*(v21 + 16) + 128), v20);
    v23 = *(v3 + 124);
    if (v22 == 0x80000000 || v23 != 0)
    {
      v25 = v23 + 1;
      *(v3 + 124) = v25;
      if (v25 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
    goto LABEL_4;
  }

LABEL_38:
  __break(0xC471u);
}

void WebKit::LaunchServicesDatabaseManager::~LaunchServicesDatabaseManager(WebKit::LaunchServicesDatabaseManager *this)
{
  *this = &unk_1F10E9F70;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_1F10E9F70;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x19EB14CF0);
}

unint64_t *IPC::StreamClientConnection::send<Messages::LogStream::RECEIVED_LAUNCH_SERVICES_DATABASE,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(double *a1, uint64_t a2)
{
  v4 = a1[16];
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v5 = v4 + v6;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a2, v5);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire((a1 + 9), v8, v5);
    if (v9 == 1)
    {
      return IPC::StreamClientConnection::trySendStream<Messages::LogStream::RECEIVED_LAUNCH_SERVICES_DATABASE>(a1, v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendDestinationIDIfNeeded(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 64) == a2)
  {
    return 0;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v19, a3);
  if (v21 != 1)
  {
    return 16;
  }

  v6 = v20;
  if (v20 <= 1)
  {
    result = 1067;
    __break(0xC471u);
LABEL_27:
    __break(1u);
    return result;
  }

  v7 = v19;
  *v19 = 3198;
  v8 = v7 + 1;
  if (v6 - 2 < (-v8 & 7 | 8uLL))
  {
    return 18;
  }

  v9 = -v8 & 7;
  *(v8 + v9) = a2;
  if (v9 != 7)
  {
    v9 = 6;
  }

  v10 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(a1 + 72);
  v11 = *(a1 + 80);
  v13 = v9 + 10;
  if (v10 + 16 >= v12)
  {
    v10 = 0;
  }

  v14 = v13 + v10;
  if (v12 <= v14)
  {
    v14 = 0;
  }

  *(a1 + 88) = v14;
  if (*(v11 + 8) <= 0xFFuLL)
  {
    goto LABEL_27;
  }

  v15 = atomic_exchange((*(v11 + 16) + 128), v14);
  v16 = *(a1 + 124);
  if (v15 == 0x80000000 || v16 != 0)
  {
    v18 = v16 + 1;
    *(a1 + 124) = v18;
    if (v18 >= *(a1 + 120))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }
  }

  result = 0;
  *(a1 + 64) = a2;
  return result;
}