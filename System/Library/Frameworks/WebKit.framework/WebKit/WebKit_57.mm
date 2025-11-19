void sub_19D8661C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIAlarms::clear(WebKit::JSWebExtensionAPIAlarms *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAlarms(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_32;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v27 = "argument";
    }

    else
    {
      v27 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v38)
    {
      v28 = v38 + 16;
    }

    else
    {
      v28 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v40 = 2082;
    v41 = v27;
    v42 = 2082;
    v43 = v28;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function alarms.clear() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v30 = v38;
    v38 = 0;
    if (v30)
    {
      if (*v30 == 1)
      {
        WTF::fastFree(v30, v29);
      }

      else
      {
        --*v30;
      }
    }

    v31 = v37;
    v37 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsObject(this, *a5) && (v19 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      if (JSValueIsObject(this, *a5) && (v20 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v20)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v21 = *a5;
        v22 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v21, v22, buf);
        v16 = 0;
LABEL_23:
        v23 = *buf;
        if (*buf)
        {
          Undefined = 0;
LABEL_27:
          *buf = v23;
          WebKit::WebExtensionAPIAlarms::clear(v12, v16, buf);
          v25 = *buf;
          *buf = 0;
          if (v25)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
          }

          if (!Undefined)
          {
            Undefined = JSValueMakeUndefined(this);
          }

          goto LABEL_31;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v38 = resolve;
        *buf = this;
        v37 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v34, buf, &v38, &v37);
        v23 = v34;
        goto LABEL_27;
      }

      goto LABEL_55;
    }

    if (JSValueIsString(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v16 = WebKit::toNSString(this, *a5, 2);
      goto LABEL_26;
    }

LABEL_56:
    v32 = @"a string is expected";
    v33 = @"name";
    goto LABEL_57;
  }

  if (a4 != 2)
  {
    v16 = 0;
    goto LABEL_26;
  }

  if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
  {
    goto LABEL_56;
  }

  if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v16 = WebKit::toNSString(this, *a5, 2);
    v17 = a5[1];
    v18 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v17, v18, buf);
    goto LABEL_23;
  }

LABEL_55:
  v32 = @"a function is expected";
  v33 = @"callback";
LABEL_57:
  *a6 = WebKit::toJSError(this, @"alarms.clear()", &v33->isa, &v32->isa, v14);
  Undefined = JSValueMakeUndefined(this);
  v16 = 0;
LABEL_31:

LABEL_32:
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

void sub_19D8667A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIAlarms::clearAll(WebKit::JSWebExtensionAPIAlarms *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIAlarms(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_17;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v23 = "argument";
    }

    else
    {
      v23 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v32)
    {
      v24 = v32 + 16;
    }

    else
    {
      v24 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function alarms.clearAll() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      if (*v26 == 1)
      {
        WTF::fastFree(v26, v25);
      }

      else
      {
        --*v26;
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }
  }

  if (a4 != 1)
  {
    goto LABEL_11;
  }

  if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      *a6 = WebKit::toJSError(this, @"alarms.clearAll()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
      v21 = JSValueMakeUndefined(this);
      goto LABEL_16;
    }
  }

  v16 = *a5;
  v17 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v16, v17, buf);
  v18 = *buf;
  if (*buf)
  {
    Undefined = 0;
  }

  else
  {
LABEL_11:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v32 = resolve;
    *buf = this;
    v31 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
    v18 = v28;
  }

  *buf = v18;
  WebKit::WebExtensionAPIAlarms::clearAll(v12, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (Undefined)
  {
    goto LABEL_17;
  }

  v21 = JSValueMakeUndefined(this);
LABEL_16:
  Undefined = v21;
LABEL_17:
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

void sub_19D866C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIAlarms::onAlarm(WebKit::JSWebExtensionAPIAlarms *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIAlarms(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter alarms.onAlarm in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIAlarms::onAlarm(v7);
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

void sub_19D866EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPICommands *WebKit::toWebExtensionAPICommands(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPICommands::commandsClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPICommands::commandsClass(result);
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

JSClassRef WebKit::JSWebExtensionAPICommands::commandsClass(WebKit::JSWebExtensionAPICommands *this)
{
  result = WebKit::JSWebExtensionAPICommands::commandsClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPICommands::commandsClass(void)::jsClass)
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
    v6.className = "Commands";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPICommands::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPICommands::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPICommands::commandsClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPICommands::getAll(WebKit::JSWebExtensionAPICommands *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPICommands(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_17;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v23 = "argument";
    }

    else
    {
      v23 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v32)
    {
      v24 = v32 + 16;
    }

    else
    {
      v24 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function commands.getAll() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      if (*v26 == 1)
      {
        WTF::fastFree(v26, v25);
      }

      else
      {
        --*v26;
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }
  }

  if (a4 != 1)
  {
    goto LABEL_11;
  }

  if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      *a6 = WebKit::toJSError(this, @"commands.getAll()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
      v21 = JSValueMakeUndefined(this);
      goto LABEL_16;
    }
  }

  v16 = *a5;
  v17 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v16, v17, buf);
  v18 = *buf;
  if (*buf)
  {
    Undefined = 0;
  }

  else
  {
LABEL_11:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v32 = resolve;
    *buf = this;
    v31 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
    v18 = v28;
  }

  *buf = v18;
  WebKit::WebExtensionAPICommands::getAll(v12, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (Undefined)
  {
    goto LABEL_17;
  }

  v21 = JSValueMakeUndefined(this);
LABEL_16:
  Undefined = v21;
LABEL_17:
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

void sub_19D8673E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPICommands::onCommand(WebKit::JSWebExtensionAPICommands *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPICommands(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter commands.onCommand in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPICommands::onCommand(v7);
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

void sub_19D8676A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPICommands::onChanged(WebKit::JSWebExtensionAPICommands *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPICommands(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter commands.onChanged in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPICommands::onChanged(v7);
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

void sub_19D867938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPICookies *WebKit::toWebExtensionAPICookies(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPICookies::cookiesClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPICookies::cookiesClass(result);
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

JSClassRef WebKit::JSWebExtensionAPICookies::cookiesClass(WebKit::JSWebExtensionAPICookies *this)
{
  result = WebKit::JSWebExtensionAPICookies::cookiesClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPICookies::cookiesClass(void)::jsClass)
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
    v6.className = "Cookies";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPICookies::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPICookies::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPICookies::cookiesClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPICookies::get(WebKit::JSWebExtensionAPICookies *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPICookies(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function cookies.get() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"cookies.get()", 0, &cfstr_ARequiredArgum.isa, v15);
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
      *a6 = WebKit::toJSError(this, @"cookies.get()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPICookies::get(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"cookies.get()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"cookies.get()", &v38->isa, &v37->isa, v20);
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

void sub_19D867FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPICookies::getAll(WebKit::JSWebExtensionAPICookies *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPICookies(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function cookies.getAll() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"cookies.getAll()", 0, &cfstr_ARequiredArgum.isa, v15);
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
      *a6 = WebKit::toJSError(this, @"cookies.getAll()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPICookies::getAll(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"cookies.getAll()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"cookies.getAll()", &v38->isa, &v37->isa, v20);
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

void sub_19D8685B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPICookies::set(WebKit::JSWebExtensionAPICookies *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPICookies(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function cookies.set() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"cookies.set()", 0, &cfstr_ARequiredArgum.isa, v15);
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
      *a6 = WebKit::toJSError(this, @"cookies.set()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPICookies::set(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"cookies.set()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"cookies.set()", &v38->isa, &v37->isa, v20);
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

void sub_19D868B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPICookies::remove(WebKit::JSWebExtensionAPICookies *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPICookies(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function cookies.remove() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"cookies.remove()", 0, &cfstr_ARequiredArgum.isa, v15);
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
      *a6 = WebKit::toJSError(this, @"cookies.remove()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPICookies::remove(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"cookies.remove()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"cookies.remove()", &v38->isa, &v37->isa, v20);
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

void sub_19D869180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPICookies::getAllCookieStores(WebKit::JSWebExtensionAPICookies *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPICookies(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_17;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v23 = "argument";
    }

    else
    {
      v23 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v32)
    {
      v24 = v32 + 16;
    }

    else
    {
      v24 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function cookies.getAllCookieStores() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      if (*v26 == 1)
      {
        WTF::fastFree(v26, v25);
      }

      else
      {
        --*v26;
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }
  }

  if (a4 != 1)
  {
    goto LABEL_11;
  }

  if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      *a6 = WebKit::toJSError(this, @"cookies.getAllCookieStores()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
      v21 = JSValueMakeUndefined(this);
      goto LABEL_16;
    }
  }

  v16 = *a5;
  v17 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v16, v17, buf);
  v18 = *buf;
  if (*buf)
  {
    Undefined = 0;
  }

  else
  {
LABEL_11:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v32 = resolve;
    *buf = this;
    v31 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
    v18 = v28;
  }

  *buf = v18;
  WebKit::WebExtensionAPICookies::getAllCookieStores(v12, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (Undefined)
  {
    goto LABEL_17;
  }

  v21 = JSValueMakeUndefined(this);
LABEL_16:
  Undefined = v21;
LABEL_17:
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

void sub_19D869604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPICookies::onChanged(WebKit::JSWebExtensionAPICookies *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPICookies(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter cookies.onChanged in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPICookies::onChanged(v7);
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

void sub_19D8698C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPIDeclarativeNetRequest *WebKit::toWebExtensionAPIDeclarativeNetRequest(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIDeclarativeNetRequest::declarativeNetRequestClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIDeclarativeNetRequest::declarativeNetRequestClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::declarativeNetRequestClass(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this)
{
  result = WebKit::JSWebExtensionAPIDeclarativeNetRequest::declarativeNetRequestClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIDeclarativeNetRequest::declarativeNetRequestClass(void)::jsClass)
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
    v6.className = "DeclarativeNetRequest";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIDeclarativeNetRequest::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIDeclarativeNetRequest::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIDeclarativeNetRequest::declarativeNetRequestClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::updateEnabledRulesets(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.updateEnabledRulesets() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateEnabledRulesets()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"options";
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
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateEnabledRulesets()", &cfstr_Options.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIDeclarativeNetRequest::updateEnabledRulesets(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateEnabledRulesets()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateEnabledRulesets()", &v38->isa, &v37->isa, v20);
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

void sub_19D869F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::getEnabledRulesets(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_17;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v23 = "argument";
    }

    else
    {
      v23 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v32)
    {
      v24 = v32 + 16;
    }

    else
    {
      v24 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.getEnabledRulesets() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      if (*v26 == 1)
      {
        WTF::fastFree(v26, v25);
      }

      else
      {
        --*v26;
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }
  }

  if (a4 != 1)
  {
    goto LABEL_11;
  }

  if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.getEnabledRulesets()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
      v21 = JSValueMakeUndefined(this);
      goto LABEL_16;
    }
  }

  v16 = *a5;
  v17 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v16, v17, buf);
  v18 = *buf;
  if (*buf)
  {
    Undefined = 0;
  }

  else
  {
LABEL_11:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v32 = resolve;
    *buf = this;
    v31 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
    v18 = v28;
  }

  *buf = v18;
  WebKit::WebExtensionAPIDeclarativeNetRequest::getEnabledRulesets(v12, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (Undefined)
  {
    goto LABEL_17;
  }

  v21 = JSValueMakeUndefined(this);
LABEL_16:
  Undefined = v21;
LABEL_17:
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

void sub_19D86A3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::updateDynamicRules(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.updateDynamicRules() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateDynamicRules()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"options";
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
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateDynamicRules()", &cfstr_Options.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIDeclarativeNetRequest::updateDynamicRules(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateDynamicRules()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateDynamicRules()", &v38->isa, &v37->isa, v20);
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

void sub_19D86A970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::getDynamicRules(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_32;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v33 = "argument";
    }

    else
    {
      v33 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v44)
    {
      v34 = v44 + 16;
    }

    else
    {
      v34 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v46 = 2082;
    v47 = v33;
    v48 = 2082;
    v49 = v34;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.getDynamicRules() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v36 = v44;
    v44 = 0;
    if (v36)
    {
      if (*v36 == 1)
      {
        WTF::fastFree(v36, v35);
      }

      else
      {
        --*v36;
      }
    }

    v37 = v43;
    v43 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v35);
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
LABEL_27:
          *buf = v27;
          WebKit::WebExtensionAPIDeclarativeNetRequest::getDynamicRules(v12, v19, buf);
          v29 = *buf;
          *buf = 0;
          if (v29)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
          }

          if (!Undefined)
          {
            Undefined = JSValueMakeUndefined(this);
          }

          goto LABEL_31;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v44 = resolve;
        *buf = this;
        v43 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v40, buf, &v44, &v43);
        v27 = v40;
        goto LABEL_27;
      }

      goto LABEL_55;
    }

    v31 = WebKit::toJSValue(this, *a5, v23);
    v32 = [v31 _isDictionary];

    if ((v32 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
      goto LABEL_26;
    }

LABEL_56:
    v38 = @"an object is expected";
    v39 = @"filter";
    goto LABEL_57;
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
    goto LABEL_56;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_55:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_57:
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.getDynamicRules()", &v39->isa, &v38->isa, v17);
  Undefined = JSValueMakeUndefined(this);
  v19 = 0;
LABEL_31:

LABEL_32:
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

void sub_19D86AFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::updateSessionRules(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.updateSessionRules() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateSessionRules()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"options";
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
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateSessionRules()", &cfstr_Options.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIDeclarativeNetRequest::updateSessionRules(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateSessionRules()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.updateSessionRules()", &v38->isa, &v37->isa, v20);
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

void sub_19D86B5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::getSessionRules(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_32;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v33 = "argument";
    }

    else
    {
      v33 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v44)
    {
      v34 = v44 + 16;
    }

    else
    {
      v34 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v46 = 2082;
    v47 = v33;
    v48 = 2082;
    v49 = v34;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.getSessionRules() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v36 = v44;
    v44 = 0;
    if (v36)
    {
      if (*v36 == 1)
      {
        WTF::fastFree(v36, v35);
      }

      else
      {
        --*v36;
      }
    }

    v37 = v43;
    v43 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v35);
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
LABEL_27:
          *buf = v27;
          WebKit::WebExtensionAPIDeclarativeNetRequest::getSessionRules(v12, v19, buf);
          v29 = *buf;
          *buf = 0;
          if (v29)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
          }

          if (!Undefined)
          {
            Undefined = JSValueMakeUndefined(this);
          }

          goto LABEL_31;
        }

LABEL_26:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        v44 = resolve;
        *buf = this;
        v43 = reject;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v40, buf, &v44, &v43);
        v27 = v40;
        goto LABEL_27;
      }

      goto LABEL_55;
    }

    v31 = WebKit::toJSValue(this, *a5, v23);
    v32 = [v31 _isDictionary];

    if ((v32 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
    {
      v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
      goto LABEL_26;
    }

LABEL_56:
    v38 = @"an object is expected";
    v39 = @"filter";
    goto LABEL_57;
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
    goto LABEL_56;
  }

  if (JSValueIsObject(this, a5[1]) && (v18 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v19 = WebKit::toNSDictionary(this, *a5, 0, 0);
    v20 = a5[1];
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    goto LABEL_23;
  }

LABEL_55:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_57:
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.getSessionRules()", &v39->isa, &v38->isa, v17);
  Undefined = JSValueMakeUndefined(this);
  v19 = 0;
LABEL_31:

LABEL_32:
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

void sub_19D86BC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::getMatchedRules(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.getMatchedRules() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
        WebKit::WebExtensionAPIDeclarativeNetRequest::getMatchedRules(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"declarativeNetRequest.getMatchedRules()", 0, v30, v29);
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
    v41 = @"filter";
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
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.getMatchedRules()", &v41->isa, &v40->isa, v17);
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

void sub_19D86C288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::isRegexSupported(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.isRegexSupported() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"declarativeNetRequest.isRegexSupported()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"regexOptions";
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
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.isRegexSupported()", &cfstr_Regexoptions.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIDeclarativeNetRequest::isRegexSupported(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.isRegexSupported()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.isRegexSupported()", &v38->isa, &v37->isa, v20);
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

void sub_19D86C85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::setExtensionActionOptions(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function declarativeNetRequest.setExtensionActionOptions() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"declarativeNetRequest.setExtensionActionOptions()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"options";
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
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.setExtensionActionOptions()", &cfstr_Options.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIDeclarativeNetRequest::setExtensionActionOptions(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"declarativeNetRequest.setExtensionActionOptions()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"declarativeNetRequest.setExtensionActionOptions()", &v38->isa, &v37->isa, v20);
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

void sub_19D86CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::maxNumberOfStaticRulesets(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter declarativeNetRequest.MAX_NUMBER_OF_STATIC_RULESETS in %{public}s world", buf, 0xCu);
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

    Undefined = JSValueMakeNumber(this, 100.0);
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

void sub_19D86D148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::maxNumberOfEnabledRulesets(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter declarativeNetRequest.MAX_NUMBER_OF_ENABLED_STATIC_RULESETS in %{public}s world", buf, 0xCu);
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

    Undefined = JSValueMakeNumber(this, 50.0);
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

void sub_19D86D3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIDeclarativeNetRequest::maxNumberOfDynamicAndSessionRules(WebKit::JSWebExtensionAPIDeclarativeNetRequest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIDeclarativeNetRequest(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter declarativeNetRequest.MAX_NUMBER_OF_DYNAMIC_AND_SESSION_RULES in %{public}s world", buf, 0xCu);
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

    Undefined = JSValueMakeNumber(this, 30000.0);
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

void sub_19D86D668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSClassRef WebKit::JSWebExtensionAPIDOM::domClass(WebKit::JSWebExtensionAPIDOM *this)
{
  result = WebKit::JSWebExtensionAPIDOM::domClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIDOM::domClass(void)::jsClass)
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
    v5.className = "DOM";
    v5.staticFunctions = &WebKit::JSWebExtensionAPIDOM::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPIDOM::domClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIDOM::openOrClosedShadowRoot(JSContextRef ctx, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, id *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v36 = *MEMORY[0x1E69E9840];
  if (ctx && a3 && (v12 = WebKit::JSWebExtensionAPIDOM::domClass(ctx)) != 0 && (v13 = WebKit::JSWebExtensionAPIDOM::domClass(v12), JSValueIsObjectOfClass(ctx, a3, v13)) && (v14 = JSValueToObject(ctx, a3, 0), (Private = JSObjectGetPrivate(v14)) != 0))
  {
    v16 = Private;
    ++Private[2];
    v17 = qword_1ED640AB8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
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
      if (v29)
      {
        v26 = v29 + 16;
      }

      else
      {
        v26 = 0;
      }

      *buf = 134349570;
      v31 = a4;
      v32 = 2082;
      v33 = v25;
      v34 = 2082;
      v35 = v26;
      _os_log_debug_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEBUG, "Called function dom.openOrClosedShadowRoot() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v29)
      {
        if (*v29 == 1)
        {
          WTF::fastFree(v29, v27);
        }

        else
        {
          --*v29;
        }
      }

      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v27);
      }
    }

    if (a4)
    {
      v20 = WebKit::toJSValue(ctx, *a5, v18);
      v21 = WebKit::WebExtensionAPIDOM::openOrClosedShadowRoot((v16 - 10), v20);
      Undefined = WebKit::toJSValueRefOrJSNull(ctx, v21, v22);
    }

    else
    {
      *a6 = WebKit::toJSError(ctx, @"dom.openOrClosedShadowRoot()", 0, &cfstr_ARequiredArgum.isa, v19);
      Undefined = JSValueMakeUndefined(ctx);
    }

    if (v16[2] == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      --v16[2];
    }

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(ctx);
  }
}

void sub_19D86DAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (v9[2] == 1)
  {
    (*(*v9 + 8))(v9);
  }

  else
  {
    --v9[2];
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPIEvent *WebKit::toWebExtensionAPIEvent(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIEvent::eventClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIEvent::eventClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIEvent::eventClass(WebKit::JSWebExtensionAPIEvent *this)
{
  result = WebKit::JSWebExtensionAPIEvent::eventClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIEvent::eventClass(void)::jsClass)
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
    v5.className = "Event";
    v5.staticFunctions = &WebKit::JSWebExtensionAPIEvent::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPIEvent::eventClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIEvent::addListener(WebKit::JSWebExtensionAPIEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIEvent(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
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
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function addListener() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    if (a4)
    {
      if (JSValueIsObject(this, *a5))
      {
        v16 = JSValueToObject(this, *a5, 0);
        if (JSObjectIsFunction(this, v16))
        {
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
              WebKit::WebExtensionAPIEvent::addListener(v12, v24, &v36);
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
            goto LABEL_13;
          }

          *a6 = WebKit::toJSError(this, @"addListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
          v34 = JSValueMakeUndefined(this);
LABEL_36:
          Undefined = v34;
LABEL_13:
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

      v33 = WebKit::toJSError(this, @"addListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
    }

    else
    {
      v33 = WebKit::toJSError(this, @"addListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v33;
    v34 = JSValueMakeUndefined(this);
    goto LABEL_36;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D86E064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPIEvent::removeListener(WebKit::JSWebExtensionAPIEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIEvent(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
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

    if (a4)
    {
      if (JSValueIsObject(this, *a5))
      {
        v16 = JSValueToObject(this, *a5, 0);
        if (JSObjectIsFunction(this, v16))
        {
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
              WebKit::WebExtensionAPIEvent::removeListener(v12, v24, &v36);
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
            goto LABEL_13;
          }

          *a6 = WebKit::toJSError(this, @"removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
          v34 = JSValueMakeUndefined(this);
LABEL_36:
          Undefined = v34;
LABEL_13:
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

      v33 = WebKit::toJSError(this, @"removeListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
    }

    else
    {
      v33 = WebKit::toJSError(this, @"removeListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v33;
    v34 = JSValueMakeUndefined(this);
    goto LABEL_36;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D86E530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPIEvent::hasListener(WebKit::JSWebExtensionAPIEvent *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIEvent(this, a3, a3);
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

    if (a4)
    {
      if (JSValueIsObject(this, *a5))
      {
        v16 = JSValueToObject(this, *a5, 0);
        if (JSObjectIsFunction(this, v16))
        {
          v17 = *a5;
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v20 = *buf;
          if (*buf)
          {
            ++**buf;
            v31 = v20;
            hasListener = WebKit::WebExtensionAPIEvent::hasListener(v12, &v31);
            Boolean = JSValueMakeBoolean(this, hasListener);
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
LABEL_8:
            if (*(v12 + 48) == 1)
            {
              (*(*(v12 + 40) + 8))(v12 + 40);
            }

            else
            {
              --*(v12 + 48);
            }

            return Boolean;
          }

          *a6 = WebKit::toJSError(this, @"hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v19);
          Undefined = JSValueMakeUndefined(this);
LABEL_31:
          Boolean = Undefined;
          goto LABEL_8;
        }
      }

      v29 = WebKit::toJSError(this, @"hasListener()", &cfstr_Listener.isa, &cfstr_AFunctionIsExp.isa, v15);
    }

    else
    {
      v29 = WebKit::toJSError(this, @"hasListener()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v29;
    Undefined = JSValueMakeUndefined(this);
    goto LABEL_31;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D86E990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

WebKit::JSWebExtensionAPIExtension *WebKit::toWebExtensionAPIExtension(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIExtension::extensionClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIExtension::extensionClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIExtension::extensionClass(WebKit::JSWebExtensionAPIExtension *this)
{
  result = WebKit::JSWebExtensionAPIExtension::extensionClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIExtension::extensionClass(void)::jsClass)
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
    v6.className = "Extension";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIExtension::staticValues(void)::values;
    v6.staticFunctions = 0;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPIExtension::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPIExtension::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPIExtension::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIExtension::extensionClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPIExtension::getPropertyNames(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPIExtension(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v16);
    v8 = *(v7 + 8);
    v15[0] = "getURL";
    v15[1] = 7;
    v9 = v16;
    if (WebKit::WebExtensionAPIExtension::isPropertyAllowed(v7, v15, v16))
    {
      v10 = JSStringCreateWithUTF8CString("getURL");
      JSPropertyNameAccumulatorAddName(a3, v10);
      if (v10)
      {
        JSStringRelease(v10);
      }
    }

    if (!v8)
    {
      v11 = JSStringCreateWithUTF8CString("getBackgroundPage");
      JSPropertyNameAccumulatorAddName(a3, v11);
      if (v11)
      {
        JSStringRelease(v11);
      }

      v12 = JSStringCreateWithUTF8CString("getViews");
      JSPropertyNameAccumulatorAddName(a3, v12);
      if (v12)
      {
        JSStringRelease(v12);
      }

      v13 = JSStringCreateWithUTF8CString("isAllowedIncognitoAccess");
      JSPropertyNameAccumulatorAddName(a3, v13);
      if (v13)
      {
        JSStringRelease(v13);
      }

      v14 = JSStringCreateWithUTF8CString("isAllowedFileSchemeAccess");
      JSPropertyNameAccumulatorAddName(a3, v14);
      if (v14)
      {
        JSStringRelease(v14);
      }
    }

    if (v9)
    {
      CFRelease(*(v9 + 1));
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

void sub_19D86ED18(_Unwind_Exception *exception_object)
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

uint64_t WebKit::JSWebExtensionAPIExtension::hasProperty(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPIExtension(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v14);
  v8 = *(v7 + 8);
  isPropertyAllowed = v8 == 0;
  if (JSStringIsEqualToUTF8CString(a3, "getURL"))
  {
    v13[0] = "getURL";
    v13[1] = 7;
    v10 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPIExtension::isPropertyAllowed(v7, v13, v14);
  }

  else
  {
    if (!JSStringIsEqualToUTF8CString(a3, "getBackgroundPage") && !JSStringIsEqualToUTF8CString(a3, "getViews") && !JSStringIsEqualToUTF8CString(a3, "isAllowedIncognitoAccess"))
    {
      IsEqualToUTF8CString = JSStringIsEqualToUTF8CString(a3, "isAllowedFileSchemeAccess");
      if (v8)
      {
        isPropertyAllowed = 0;
      }

      else
      {
        isPropertyAllowed = IsEqualToUTF8CString;
      }
    }

    v10 = v14;
  }

  if (v10)
  {
    CFRelease(*(v10 + 1));
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

void sub_19D86EEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPIExtension::getProperty(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v7 = WebKit::toWebExtensionAPIExtension(this, a2, a3);
  if (v7)
  {
    v8 = v7;
    ++*(v7 + 48);
    WebKit::toWebPage(this, &v20);
    v9 = *(v8 + 8);
    if (JSStringIsEqualToUTF8CString(a3, "getURL") && (v19[0] = "getURL", v19[1] = 7, isPropertyAllowed = WebKit::WebExtensionAPIExtension::isPropertyAllowed(v8, v19, v20), v11 = WebKit::JSWebExtensionAPIExtension::getURL, isPropertyAllowed) || !v9 && ((IsEqualToUTF8CString = JSStringIsEqualToUTF8CString(a3, "getBackgroundPage"), v11 = WebKit::JSWebExtensionAPIExtension::getBackgroundPage, IsEqualToUTF8CString) || (v14 = JSStringIsEqualToUTF8CString(a3, "getViews"), v11 = WebKit::JSWebExtensionAPIExtension::getViews, v14) || (v15 = JSStringIsEqualToUTF8CString(a3, "isAllowedIncognitoAccess"), v11 = WebKit::JSWebExtensionAPIExtension::isAllowedIncognitoAccess, v15) || (v16 = JSStringIsEqualToUTF8CString(a3, "isAllowedFileSchemeAccess"), v11 = WebKit::JSWebExtensionAPIExtension::isAllowedFileSchemeAccess, v16)))
    {
      FunctionWithCallback = JSObjectMakeFunctionWithCallback(this, a3, v11);
    }

    else
    {
      FunctionWithCallback = JSValueMakeUndefined(this);
    }

    v17 = FunctionWithCallback;
    if (v20)
    {
      CFRelease(*(v20 + 1));
    }

    if (*(v8 + 48) == 1)
    {
      (*(*(v8 + 40) + 8))(v8 + 40);
    }

    else
    {
      --*(v8 + 48);
    }

    return v17;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D86F120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPIExtension::isInIncognitoContext(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIExtension(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 12);
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (*v18)
      {
        v13 = *v18 + 16;
      }

      else
      {
        v13 = 0;
      }

      *buf = 136446210;
      *&buf[4] = v13;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter extension.inIncognitoContext in %{public}s world", buf, 0xCu);
      v15 = *v18;
      *v18 = 0;
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v14);
        }

        else
        {
          --*v15;
        }
      }

      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v14);
      }
    }

    WebKit::toWebPage(this, buf);
    v9 = *buf;
    if (*buf)
    {
      v10 = WebKit::WebExtensionAPIExtension::isInIncognitoContext(v7, *buf);
      Boolean = JSValueMakeBoolean(this, v10);
      CFRelease(*(v9 + 8));
    }

    else
    {
      v16 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v18, 2u);
      }

      Boolean = JSValueMakeUndefined(this);
    }

    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return Boolean;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D86F418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (*(v10 + 48) == 1)
  {
    (*(*(v10 + 40) + 8))(v10 + 40);
  }

  else
  {
    --*(v10 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIExtension::getURL(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIExtension(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v23 = "argument";
      }

      else
      {
        v23 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v28)
      {
        v24 = v28 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 134349570;
      v30 = a4;
      v31 = 2082;
      v32 = v23;
      v33 = 2082;
      v34 = v24;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function extension.getURL() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v28)
      {
        if (*v28 == 1)
        {
          WTF::fastFree(v28, v25);
        }

        else
        {
          --*v28;
        }
      }

      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }

    if (a4)
    {
      if (JSValueIsString(this, *a5))
      {
        v17 = WebKit::toNSString(this, *a5, 2);
        if (v17)
        {
          v18 = WebKit::WebExtensionAPIExtension::getURL(v12);
          v19 = 0;
          Undefined = WebKit::toJSValueRef(this, v18, 0);

          if (v19)
          {
            *a6 = WebKit::toJSError(this, @"extension.getURL()", 0, v19, v21);
            Undefined = JSValueMakeUndefined(this);
          }
        }

        else
        {
          *a6 = WebKit::toJSError(this, @"extension.getURL()", &cfstr_Resourcepath.isa, &cfstr_AStringIsExpec.isa, v16);
          Undefined = JSValueMakeUndefined(this);
        }

        goto LABEL_10;
      }

      v26 = WebKit::toJSError(this, @"extension.getURL()", &cfstr_Resourcepath.isa, &cfstr_AStringIsExpec.isa, v15);
    }

    else
    {
      v26 = WebKit::toJSError(this, @"extension.getURL()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v26;
    Undefined = JSValueMakeUndefined(this);
LABEL_10:
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

  return JSValueMakeUndefined(this);
}

void sub_19D86F844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
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

JSValueRef WebKit::JSWebExtensionAPIExtension::getBackgroundPage(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = WebKit::toWebExtensionAPIExtension(this, a3, a3);
  if (v9)
  {
    v10 = v9;
    ++*(v9 + 48);
    v11 = qword_1ED640AB8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v16 = "argument";
      }

      else
      {
        v16 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v20)
      {
        v17 = v20 + 16;
      }

      else
      {
        v17 = 0;
      }

      *buf = 134349570;
      v22 = a4;
      v23 = 2082;
      v24 = v16;
      v25 = 2082;
      v26 = v17;
      _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function extension.getBackgroundPage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v20)
      {
        if (*v20 == 1)
        {
          WTF::fastFree(v20, v18);
        }

        else
        {
          --*v20;
        }
      }

      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }
    }

    v12 = WebKit::WebExtensionAPIExtension::getBackgroundPage(v10, this);
    v14 = WebKit::toJSValueRefOrJSNull(this, v12, v13);

    if (*(v10 + 48) == 1)
    {
      (*(*(v10 + 40) + 8))(v10 + 40);
    }

    else
    {
      --*(v10 + 48);
    }

    return v14;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D86FB68(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIExtension::getViews(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, id *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIExtension(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
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
      if (v32)
      {
        v26 = v32 + 16;
      }

      else
      {
        v26 = 0;
      }

      *buf = 134349570;
      v34 = a4;
      v35 = 2082;
      v36 = v25;
      v37 = 2082;
      v38 = v26;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function extension.getViews() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v28 = v32;
      v32 = 0;
      if (v28)
      {
        if (*v28 == 1)
        {
          WTF::fastFree(v28, v27);
        }

        else
        {
          --*v28;
        }
      }

      v29 = v31;
      v31 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v27);
      }
    }

    if (a4 == 1)
    {
      v15 = WebKit::toJSValue(this, *a5, v14);
      v16 = [v15 _isDictionary];

      if ((v16 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"extension.getViews()", &cfstr_Filter.isa, &cfstr_AnObjectIsExpe.isa, v17);
        Undefined = JSValueMakeUndefined(this);
LABEL_12:
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

      v18 = WebKit::toNSDictionary(this, *a5, 0, 0);
    }

    else
    {
      v18 = 0;
    }

    v30 = 0;
    v19 = WebKit::WebExtensionAPIExtension::getViews(v12, this, v18, &v30);
    v20 = v30;
    Undefined = WebKit::toJSValueRefOrJSNull(this, v19, v21);

    if (v20)
    {
      *a6 = WebKit::toJSError(this, @"extension.getViews()", 0, v20, v23);
      Undefined = JSValueMakeUndefined(this);
    }

    goto LABEL_12;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D86FF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
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

JSValueRef WebKit::JSWebExtensionAPIExtension::isAllowedIncognitoAccess(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIExtension(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v23 = "argument";
      }

      else
      {
        v23 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v32)
      {
        v24 = v32 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v34 = 2082;
      v35 = v23;
      v36 = 2082;
      v37 = v24;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function extension.isAllowedIncognitoAccess() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v26 = v32;
      v32 = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }

      v27 = v31;
      v31 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }

    if (a4 != 1)
    {
      goto LABEL_10;
    }

    if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
    {
      if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"extension.isAllowedIncognitoAccess()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    v16 = *a5;
    v17 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v16, v17, buf);
    v18 = *buf;
    if (*buf)
    {
      DeferredPromise = 0;
    }

    else
    {
LABEL_10:
      reject = 0;
      resolve = 0;
      DeferredPromise = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
      v32 = resolve;
      *buf = this;
      v31 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
      v18 = v28;
    }

    *buf = v18;
    WebKit::WebExtensionAPIExtension::isAllowedIncognitoAccess(v12, buf);
    v20 = *buf;
    *buf = 0;
    if (v20)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    }

    if (DeferredPromise)
    {
      goto LABEL_16;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_15:
    DeferredPromise = Undefined;
LABEL_16:
    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return DeferredPromise;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8703D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIExtension::isAllowedFileSchemeAccess(WebKit::JSWebExtensionAPIExtension *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIExtension(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v23 = "argument";
      }

      else
      {
        v23 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v32)
      {
        v24 = v32 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v34 = 2082;
      v35 = v23;
      v36 = 2082;
      v37 = v24;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function extension.isAllowedFileSchemeAccess() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v26 = v32;
      v32 = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }

      v27 = v31;
      v31 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }

    if (a4 != 1)
    {
      goto LABEL_10;
    }

    if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
    {
      if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"extension.isAllowedFileSchemeAccess()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    v16 = *a5;
    v17 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v16, v17, buf);
    v18 = *buf;
    if (*buf)
    {
      DeferredPromise = 0;
    }

    else
    {
LABEL_10:
      reject = 0;
      resolve = 0;
      DeferredPromise = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
      v32 = resolve;
      *buf = this;
      v31 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
      v18 = v28;
    }

    v20 = WebKit::WebExtensionCallbackHandler::call(v18, MEMORY[0x1E695E110]);
    if (v18)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v18);
    }

    if (DeferredPromise)
    {
      goto LABEL_16;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_15:
    DeferredPromise = Undefined;
LABEL_16:
    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return DeferredPromise;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D870830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  if (*(v13 + 48) == 1)
  {
    (*(*(v13 + 40) + 8))(v13 + 40);
  }

  else
  {
    --*(v13 + 48);
  }

  _Unwind_Resume(exception_object);
}

WebKit::JSWebExtensionAPILocalization *WebKit::toWebExtensionAPILocalization(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPILocalization::localizationClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPILocalization::localizationClass(result);
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

JSClassRef WebKit::JSWebExtensionAPILocalization::localizationClass(WebKit::JSWebExtensionAPILocalization *this)
{
  result = WebKit::JSWebExtensionAPILocalization::localizationClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPILocalization::localizationClass(void)::jsClass)
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
    v5.className = "Localization";
    v5.staticFunctions = &WebKit::JSWebExtensionAPILocalization::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPILocalization::localizationClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPILocalization::getMessage(WebKit::JSWebExtensionAPILocalization *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPILocalization(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v23 = "argument";
      }

      else
      {
        v23 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v29)
      {
        v24 = v29 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 134349570;
      v31 = a4;
      v32 = 2082;
      v33 = v23;
      v34 = 2082;
      v35 = v24;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function i18n.getMessage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v26 = v29;
      v29 = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }

      v27 = v28;
      v28 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }

    if (a4 == 2)
    {
      if (JSValueIsString(this, *a5))
      {
        v19 = WebKit::toNSString(this, *a5, 2);
        v15 = WebKit::toNSObject(this, *(a5 + 8), 0, 0, 0);
        if (v19)
        {
LABEL_13:
          if ([(NSString *)v19 length:v28])
          {
            v21 = WebKit::WebExtensionAPILocalization::getMessage(v12, v19, v15);
            Undefined = WebKit::toJSValueRef(this, v21, 1);
          }

          else
          {
            *a6 = WebKit::toJSError(this, @"i18n.getMessage()", &cfstr_Name.isa, &cfstr_ItCannotBeEmpt.isa, v20);
            Undefined = JSValueMakeUndefined(this);
          }

          v16 = v19;
          goto LABEL_16;
        }

LABEL_7:
        v16 = 0;
        *a6 = WebKit::toJSError(this, @"i18n.getMessage()", &cfstr_Name.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
LABEL_16:

LABEL_17:
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
    }

    else
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"i18n.getMessage()", 0, &cfstr_ARequiredArgum.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_17;
        }

        v15 = 0;
        goto LABEL_7;
      }

      if (JSValueIsString(this, *a5))
      {
        v19 = WebKit::toNSString(this, *a5, 2);
        v15 = 0;
        if (v19)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }

    v16 = 0;
    *a6 = WebKit::toJSError(this, @"i18n.getMessage()", &cfstr_Name.isa, &cfstr_AStringIsExpec.isa, v18);
    Undefined = JSValueMakeUndefined(this);
    v15 = 0;
    goto LABEL_16;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D870E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPILocalization::getUILanguage(WebKit::JSWebExtensionAPILocalization *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = WebKit::toWebExtensionAPILocalization(this, a3, a3);
  if (v9)
  {
    v10 = v9;
    ++*(v9 + 12);
    v11 = qword_1ED640AB8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v15 = "argument";
      }

      else
      {
        v15 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v19)
      {
        v16 = v19 + 16;
      }

      else
      {
        v16 = 0;
      }

      *buf = 134349570;
      v21 = a4;
      v22 = 2082;
      v23 = v15;
      v24 = 2082;
      v25 = v16;
      _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function i18n.getUILanguage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v19)
      {
        if (*v19 == 1)
        {
          WTF::fastFree(v19, v17);
        }

        else
        {
          --*v19;
        }
      }

      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }
    }

    v12 = WebKit::WebExtensionAPILocalization::getUILanguage(v10);
    v13 = WebKit::toJSValueRef(this, v12, 1);

    if (*(v10 + 12) == 1)
    {
      (*(*(v10 + 5) + 8))(v10 + 40);
    }

    else
    {
      --*(v10 + 12);
    }

    return v13;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D87116C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPILocalization::getAcceptLanguages(WebKit::JSWebExtensionAPILocalization *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPILocalization(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v23 = "argument";
      }

      else
      {
        v23 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v32)
      {
        v24 = v32 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v34 = 2082;
      v35 = v23;
      v36 = 2082;
      v37 = v24;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function i18n.getAcceptLanguages() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v26 = v32;
      v32 = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }

      v27 = v31;
      v31 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }

    if (a4 != 1)
    {
      goto LABEL_10;
    }

    if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
    {
      if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"i18n.getAcceptLanguages()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    v16 = *a5;
    v17 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v16, v17, buf);
    v18 = *buf;
    if (*buf)
    {
      DeferredPromise = 0;
    }

    else
    {
LABEL_10:
      reject = 0;
      resolve = 0;
      DeferredPromise = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
      v32 = resolve;
      *buf = this;
      v31 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
      v18 = v28;
    }

    *buf = v18;
    WebKit::WebExtensionAPILocalization::getAcceptLanguages(v12, buf);
    v20 = *buf;
    *buf = 0;
    if (v20)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    }

    if (DeferredPromise)
    {
      goto LABEL_16;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_15:
    DeferredPromise = Undefined;
LABEL_16:
    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return DeferredPromise;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8715A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPILocalization::getPreferredSystemLanguages(WebKit::JSWebExtensionAPILocalization *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPILocalization(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v23 = "argument";
      }

      else
      {
        v23 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v32)
      {
        v24 = v32 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v34 = 2082;
      v35 = v23;
      v36 = 2082;
      v37 = v24;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function i18n.getPreferredSystemLanguages() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v26 = v32;
      v32 = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }

      v27 = v31;
      v31 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }

    if (a4 != 1)
    {
      goto LABEL_10;
    }

    if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
    {
      if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"i18n.getPreferredSystemLanguages()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    v16 = *a5;
    v17 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v16, v17, buf);
    v18 = *buf;
    if (*buf)
    {
      DeferredPromise = 0;
    }

    else
    {
LABEL_10:
      reject = 0;
      resolve = 0;
      DeferredPromise = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
      v32 = resolve;
      *buf = this;
      v31 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
      v18 = v28;
    }

    *buf = v18;
    WebKit::WebExtensionAPILocalization::getPreferredSystemLanguages(v12, buf);
    v20 = *buf;
    *buf = 0;
    if (v20)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    }

    if (DeferredPromise)
    {
      goto LABEL_16;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_15:
    DeferredPromise = Undefined;
LABEL_16:
    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return DeferredPromise;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D871A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPILocalization::getSystemUILanguage(WebKit::JSWebExtensionAPILocalization *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPILocalization(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v23 = "argument";
      }

      else
      {
        v23 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v32)
      {
        v24 = v32 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v34 = 2082;
      v35 = v23;
      v36 = 2082;
      v37 = v24;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function i18n.getSystemUILanguage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v26 = v32;
      v32 = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }

      v27 = v31;
      v31 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }

    if (a4 != 1)
    {
      goto LABEL_10;
    }

    if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
    {
      if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"i18n.getSystemUILanguage()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    v16 = *a5;
    v17 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v16, v17, buf);
    v18 = *buf;
    if (*buf)
    {
      DeferredPromise = 0;
    }

    else
    {
LABEL_10:
      reject = 0;
      resolve = 0;
      DeferredPromise = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
      v32 = resolve;
      *buf = this;
      v31 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
      v18 = v28;
    }

    *buf = v18;
    WebKit::WebExtensionAPILocalization::getSystemUILanguage(v12, buf);
    v20 = *buf;
    *buf = 0;
    if (v20)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
    }

    if (DeferredPromise)
    {
      goto LABEL_16;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_15:
    DeferredPromise = Undefined;
LABEL_16:
    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return DeferredPromise;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D871E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

WebKit::JSWebExtensionAPIMenus *WebKit::toWebExtensionAPIMenus(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIMenus::menusClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIMenus::menusClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIMenus::menusClass(WebKit::JSWebExtensionAPIMenus *this)
{
  result = WebKit::JSWebExtensionAPIMenus::menusClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIMenus::menusClass(void)::jsClass)
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
    v6.className = "Menus";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIMenus::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIMenus::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIMenus::menusClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIMenus::create(WebKit::JSWebExtensionAPIMenus *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIMenus(this, a3, a3);
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
      v38 = "argument";
    }

    else
    {
      v38 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v49)
    {
      v39 = *v49 + 16;
    }

    else
    {
      v39 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v51 = 2082;
    v52 = v38;
    v53 = 2082;
    v54 = v39;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function menus.create() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v41 = *v49;
    *v49 = 0;
    if (v41)
    {
      if (*v41 == 1)
      {
        WTF::fastFree(v41, v40);
      }

      else
      {
        --*v41;
      }
    }

    v42 = *v48;
    *v48 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v40);
    }
  }

  if (a4 == 1)
  {
    v19 = WebKit::toJSValue(this, *a5, v14);
    v20 = [v19 _isDictionary];

    if (v20)
    {
      v18 = WebKit::toNSDictionary(this, *a5, 1, 0);
      if (!v18)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    goto LABEL_55;
  }

  if (a4 == 2)
  {
    v22 = WebKit::toJSValue(this, *a5, v14);
    v23 = [v22 _isDictionary];

    if (v23)
    {
      if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        v18 = WebKit::toNSDictionary(this, *a5, 1, 0);
        v25 = *(a5 + 8);
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v16 = *buf;
        if (!v18)
        {
LABEL_8:
          *a6 = WebKit::toJSError(this, @"menus.create()", &cfstr_Properties.isa, &cfstr_AnObjectIsExpe.isa, v15);
          Undefined = JSValueMakeUndefined(this);
          v18 = 0;
          if (!v16)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (*buf)
        {
LABEL_21:
          WebKit::toWebPage(this, buf);
          v28 = *buf;
          if (*buf)
          {
            GlobalContext = JSContextGetGlobalContext(this);
            WebKit::WebFrame::frameForContext(GlobalContext, v30, v49);
            if (*v49)
            {
              v47 = 0;
              *v48 = v16;
              v31 = WebKit::WebExtensionAPIMenus::createMenu(v12, v28, *v49, v18, v48, &v47);
              v32 = v47;
              Undefined = WebKit::toJSValueRefOrJSNull(this, v31, v33);

              v35 = *v48;
              *v48 = 0;
              if (v35)
              {
                WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v35);
              }

              if (v32)
              {
                *a6 = WebKit::toJSError(this, @"menus.create()", 0, &v32->isa, v34);
                Undefined = JSValueMakeUndefined(this);
              }

              if (*v49)
              {
                CFRelease(*(*v49 + 8));
              }

              v16 = 0;
            }

            else
            {
              v46 = qword_1ED640AB8;
              if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
              {
                *v48 = 0;
                _os_log_error_impl(&dword_19D52D000, v46, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v48, 2u);
              }

              Undefined = JSValueMakeUndefined(this);
            }

            if (*buf)
            {
              CFRelease(*(*buf + 8));
            }

            if (!v16)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v45 = qword_1ED640AB8;
            if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
            {
              *v49 = 0;
              _os_log_error_impl(&dword_19D52D000, v45, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v49, 2u);
            }

            Undefined = JSValueMakeUndefined(this);
            if (!v16)
            {
              goto LABEL_34;
            }
          }

LABEL_33:
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
LABEL_34:
          v36 = v18;
LABEL_35:

          goto LABEL_36;
        }

LABEL_20:
        v27 = (*(*v12 + 16))(v12);
        v16 = WTF::fastMalloc(0x28);
        WebKit::WebExtensionCallbackHandler::WebExtensionCallbackHandler(v16, this, v27);
        goto LABEL_21;
      }

      v43 = @"a function is expected";
      v44 = @"callback";
LABEL_56:
      v36 = 0;
      *a6 = WebKit::toJSError(this, @"menus.create()", &v44->isa, &v43->isa, v21);
      Undefined = JSValueMakeUndefined(this);
      goto LABEL_35;
    }

LABEL_55:
    v43 = @"an object is expected";
    v44 = @"properties";
    goto LABEL_56;
  }

  if (a4)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  *a6 = WebKit::toJSError(this, @"menus.create()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D872648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    CFRelease(*(a15 + 8));
  }

  if (v17)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v17);
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

JSValueRef WebKit::JSWebExtensionAPIMenus::update(WebKit::JSWebExtensionAPIMenus *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v62 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIMenus(this, a3, a3);
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
      v40 = "argument";
    }

    else
    {
      v40 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v56)
    {
      v41 = *v56 + 16;
    }

    else
    {
      v41 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v58 = 2082;
    v59 = v40;
    v60 = 2082;
    v61 = v41;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function menus.update() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v43 = *v56;
    *v56 = 0;
    if (v43)
    {
      if (*v43 == 1)
      {
        WTF::fastFree(v43, v42);
      }

      else
      {
        --*v43;
      }
    }

    v44 = *v55;
    *v55 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v42);
    }
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v25 = WebKit::toJSValue(this, *(a5 + 8), v14);
      v26 = [v25 _isDictionary];

      if (v26)
      {
        v20 = WebKit::toNSObject(this, *a5, 0, 0, 0);
        v24 = 0;
        v21 = WebKit::toNSDictionary(this, *(a5 + 8), 1, 0);
        goto LABEL_15;
      }
    }

    else
    {
      if (a4 != 3)
      {
        v29 = 0;
        v24 = 0;
        goto LABEL_20;
      }

      v16 = WebKit::toJSValue(this, *(a5 + 8), v14);
      v17 = [v16 _isDictionary];

      if (v17)
      {
        if (JSValueIsObject(this, *(a5 + 16)) && (v19 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
        {
          v20 = WebKit::toNSObject(this, *a5, 0, 0, 0);
          v21 = WebKit::toNSDictionary(this, *(a5 + 8), 1, 0);
          v22 = *(a5 + 16);
          v23 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v22, v23, buf);
          v24 = *buf;
LABEL_15:
          v27 = v20;
          if (v20)
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
                *buf = this;
                *v56 = resolve;
                *v55 = reject;
                WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v52, buf, v56, v55);
                v24 = v52;
              }

              WebKit::toWebPage(this, buf);
              v31 = *buf;
              if (*buf)
              {
                GlobalContext = JSContextGetGlobalContext(this);
                WebKit::WebFrame::frameForContext(GlobalContext, v33, v56);
                v34 = *v56;
                if (*v56)
                {
                  *v55 = v24;
                  v51 = 0;
                  WebKit::WebExtensionAPIMenus::update(v12, v31, *v56, v27, v21, v55, &v51);
                  v36 = v51;
                  v37 = *v55;
                  *v55 = 0;
                  if (v37)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v37);
                  }

                  if (v36)
                  {
                    *a6 = WebKit::toJSError(this, @"menus.update()", 0, &v36->isa, v35);
                  }

                  else if (Undefined)
                  {
LABEL_30:

                    CFRelease(*(v34 + 1));
                    v24 = 0;
LABEL_31:
                    CFRelease(*(v31 + 8));
                    goto LABEL_32;
                  }

                  Undefined = JSValueMakeUndefined(this);
                  goto LABEL_30;
                }

                v49 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v55 = 0;
                  _os_log_error_impl(&dword_19D52D000, v49, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v55, 2u);
                  if (!Undefined)
                  {
                    goto LABEL_65;
                  }
                }

                else if (!Undefined)
                {
                  goto LABEL_65;
                }

                Undefined = WebKit::toJSRejectedPromise(this, @"menus.update()", 0, &cfstr_AnUnknownError.isa, v50);
                if (Undefined)
                {
                  goto LABEL_31;
                }

LABEL_65:
                Undefined = JSValueMakeUndefined(this);
                goto LABEL_31;
              }

              v47 = qword_1ED640AB8;
              if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
              {
                *v56 = 0;
                _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v56, 2u);
                if (!Undefined)
                {
                  goto LABEL_61;
                }
              }

              else if (!Undefined)
              {
                goto LABEL_61;
              }

              Undefined = WebKit::toJSRejectedPromise(this, @"menus.update()", 0, &cfstr_AnUnknownError.isa, v48);
              if (Undefined)
              {
                goto LABEL_32;
              }

LABEL_61:
              Undefined = JSValueMakeUndefined(this);
              goto LABEL_32;
            }

            v29 = 0;
            *a6 = WebKit::toJSError(this, @"menus.update()", &cfstr_Properties.isa, &cfstr_AnObjectIsExpe.isa, v15);
            v30 = JSValueMakeUndefined(this);
LABEL_21:
            Undefined = v30;
            v21 = v29;
LABEL_32:
            if (v24)
            {
              WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v24);
            }

            v38 = v21;
            goto LABEL_35;
          }

          v29 = v21;
LABEL_20:
          v27 = 0;
          *a6 = WebKit::toJSError(this, @"menus.update()", &cfstr_Identifier.isa, &cfstr_AnObjectIsExpe.isa, v15);
          v30 = JSValueMakeUndefined(this);
          goto LABEL_21;
        }

        v45 = @"a function is expected";
        v46 = @"callback";
LABEL_56:
        v38 = 0;
        *a6 = WebKit::toJSError(this, @"menus.update()", &v46->isa, &v45->isa, v18);
        Undefined = JSValueMakeUndefined(this);
        v27 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    v45 = @"an object is expected";
    v46 = @"properties";
    goto LABEL_56;
  }

  *a6 = WebKit::toJSError(this, @"menus.update()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D872F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  CFRelease(*(v17 + 8));
  if (v15)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
  }

  if (*(v13 + 48) == 1)
  {
    (*(*(v13 + 40) + 8))(v13 + 40);
  }

  else
  {
    --*(v13 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIMenus::remove(WebKit::JSWebExtensionAPIMenus *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIMenus(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
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
    if (v37)
    {
      v27 = v37 + 16;
    }

    else
    {
      v27 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v39 = 2082;
    v40 = v26;
    v41 = 2082;
    v42 = v27;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function menus.remove() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v29 = v37;
    v37 = 0;
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

    v30 = v36;
    v36 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v28);
    }
  }

  if (a4 == 1)
  {
    v17 = WebKit::toNSObject(this, *a5, 0, 0, 0);
    if (!v17)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    if (a4)
    {
LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"menus.remove()", 0, &cfstr_ARequiredArgum.isa, v14);
    v31 = JSValueMakeUndefined(this);
    goto LABEL_45;
  }

  if (JSValueIsObject(this, *(a5 + 8)) && (v18 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
  {
    v17 = WebKit::toNSObject(this, *a5, 0, 0, 0);
    v20 = *(a5 + 8);
    v21 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v20, v21, buf);
    v15 = *buf;
    if (!v17)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"menus.remove()", &cfstr_Identifier.isa, &cfstr_AnObjectIsExpe.isa, v14);
      Undefined = JSValueMakeUndefined(this);
      if (v15)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
      }

      goto LABEL_26;
    }

    if (*buf)
    {
      Undefined = 0;
      goto LABEL_20;
    }

LABEL_19:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v37 = resolve;
    *buf = this;
    v36 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v33, buf, &v37, &v36);
    v15 = v33;
LABEL_20:
    *buf = v15;
    v32 = 0;
    WebKit::WebExtensionAPIMenus::remove(v12, v17, buf, &v32);
    v23 = v32;
    v24 = *buf;
    *buf = 0;
    if (v24)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v24);
    }

    if (v23)
    {
      *a6 = WebKit::toJSError(this, @"menus.remove()", 0, v23, v22);
    }

    else if (Undefined)
    {
LABEL_25:

      goto LABEL_26;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_25;
  }

  *a6 = WebKit::toJSError(this, @"menus.remove()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v19);
  v31 = JSValueMakeUndefined(this);
LABEL_45:
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

void sub_19D8734CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIMenus::removeAll(WebKit::JSWebExtensionAPIMenus *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIMenus(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_17;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v23 = "argument";
    }

    else
    {
      v23 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v32)
    {
      v24 = v32 + 16;
    }

    else
    {
      v24 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function menus.removeAll() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      if (*v26 == 1)
      {
        WTF::fastFree(v26, v25);
      }

      else
      {
        --*v26;
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }
  }

  if (a4 != 1)
  {
    goto LABEL_11;
  }

  if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      *a6 = WebKit::toJSError(this, @"menus.removeAll()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
      v21 = JSValueMakeUndefined(this);
      goto LABEL_16;
    }
  }

  v16 = *a5;
  v17 = (*(*v12 + 16))(v12);
  WebKit::toJSCallbackHandler(this, v16, v17, buf);
  v18 = *buf;
  if (*buf)
  {
    Undefined = 0;
  }

  else
  {
LABEL_11:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    v32 = resolve;
    *buf = this;
    v31 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v28, buf, &v32, &v31);
    v18 = v28;
  }

  *buf = v18;
  WebKit::WebExtensionAPIMenus::removeAll(v12, buf);
  v20 = *buf;
  *buf = 0;
  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (Undefined)
  {
    goto LABEL_17;
  }

  v21 = JSValueMakeUndefined(this);
LABEL_16:
  Undefined = v21;
LABEL_17:
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

void sub_19D873938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIMenus::onClicked(WebKit::JSWebExtensionAPIMenus *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIMenus(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter menus.onClicked in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIMenus::onClicked(v7);
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

void sub_19D873BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIMenus::actionMenuTopLevelLimit(WebKit::JSWebExtensionAPIMenus *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIMenus(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter menus.ACTION_MENU_TOP_LEVEL_LIMIT in %{public}s world", buf, 0xCu);
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

    Undefined = JSValueMakeNumber(this, 6.0);
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

void sub_19D873E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPINamespace *WebKit::toWebExtensionAPINamespace(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPINamespace::namespaceClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPINamespace::namespaceClass(result);
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

JSClassRef WebKit::JSWebExtensionAPINamespace::namespaceClass(WebKit::JSWebExtensionAPINamespace *this)
{
  result = WebKit::JSWebExtensionAPINamespace::namespaceClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPINamespace::namespaceClass(void)::jsClass)
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
    v6.className = "Namespace";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPINamespace::staticValues(void)::values;
    v6.staticFunctions = 0;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPINamespace::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPINamespace::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPINamespace::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPINamespace::namespaceClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPINamespace::getPropertyNames(WebKit::JSWebExtensionAPINamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPINamespace(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v30);
    v8 = *(v7 + 8);
    if (*(v7 + 8))
    {
      v9 = v30;
    }

    else
    {
      v28 = "action";
      v29 = 7;
      v9 = v30;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v30))
      {
        v10 = JSStringCreateWithUTF8CString("action");
        JSPropertyNameAccumulatorAddName(a3, v10);
        if (v10)
        {
          JSStringRelease(v10);
        }
      }

      v28 = "alarms";
      v29 = 7;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v11 = JSStringCreateWithUTF8CString("alarms");
        JSPropertyNameAccumulatorAddName(a3, v11);
        if (v11)
        {
          JSStringRelease(v11);
        }
      }

      v28 = "browserAction";
      v29 = 14;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v12 = JSStringCreateWithUTF8CString("browserAction");
        JSPropertyNameAccumulatorAddName(a3, v12);
        if (v12)
        {
          JSStringRelease(v12);
        }
      }

      v28 = "cookies";
      v29 = 8;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v13 = JSStringCreateWithUTF8CString("cookies");
        JSPropertyNameAccumulatorAddName(a3, v13);
        if (v13)
        {
          JSStringRelease(v13);
        }
      }

      v28 = "commands";
      v29 = 9;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v14 = JSStringCreateWithUTF8CString("commands");
        JSPropertyNameAccumulatorAddName(a3, v14);
        if (v14)
        {
          JSStringRelease(v14);
        }
      }

      v28 = "contextMenus";
      v29 = 13;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v15 = JSStringCreateWithUTF8CString("contextMenus");
        JSPropertyNameAccumulatorAddName(a3, v15);
        if (v15)
        {
          JSStringRelease(v15);
        }
      }

      v28 = "declarativeNetRequest";
      v29 = 22;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v16 = JSStringCreateWithUTF8CString("declarativeNetRequest");
        JSPropertyNameAccumulatorAddName(a3, v16);
        if (v16)
        {
          JSStringRelease(v16);
        }
      }

      v28 = "menus";
      v29 = 6;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v17 = JSStringCreateWithUTF8CString("menus");
        JSPropertyNameAccumulatorAddName(a3, v17);
        if (v17)
        {
          JSStringRelease(v17);
        }
      }

      v28 = "notifications";
      v29 = 14;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v18 = JSStringCreateWithUTF8CString("notifications");
        JSPropertyNameAccumulatorAddName(a3, v18);
        if (v18)
        {
          JSStringRelease(v18);
        }
      }

      v28 = "pageAction";
      v29 = 11;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v19 = JSStringCreateWithUTF8CString("pageAction");
        JSPropertyNameAccumulatorAddName(a3, v19);
        if (v19)
        {
          JSStringRelease(v19);
        }
      }

      v20 = JSStringCreateWithUTF8CString("permissions");
      JSPropertyNameAccumulatorAddName(a3, v20);
      if (v20)
      {
        JSStringRelease(v20);
      }

      v28 = "scripting";
      v29 = 10;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v21 = JSStringCreateWithUTF8CString("scripting");
        JSPropertyNameAccumulatorAddName(a3, v21);
        if (v21)
        {
          JSStringRelease(v21);
        }
      }
    }

    v28 = "storage";
    v29 = 8;
    if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
    {
      v22 = JSStringCreateWithUTF8CString("storage");
      JSPropertyNameAccumulatorAddName(a3, v22);
      if (v22)
      {
        JSStringRelease(v22);
      }
    }

    if (!v8)
    {
      v23 = JSStringCreateWithUTF8CString("tabs");
      JSPropertyNameAccumulatorAddName(a3, v23);
      if (v23)
      {
        JSStringRelease(v23);
      }

      v24 = JSStringCreateWithUTF8CString("windows");
      JSPropertyNameAccumulatorAddName(a3, v24);
      if (v24)
      {
        JSStringRelease(v24);
      }

      v28 = "webNavigation";
      v29 = 14;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v25 = JSStringCreateWithUTF8CString("webNavigation");
        JSPropertyNameAccumulatorAddName(a3, v25);
        if (v25)
        {
          JSStringRelease(v25);
        }
      }

      v28 = "webRequest";
      v29 = 11;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
      {
        v26 = JSStringCreateWithUTF8CString("webRequest");
        JSPropertyNameAccumulatorAddName(a3, v26);
        if (v26)
        {
          JSStringRelease(v26);
        }
      }
    }

    v28 = "test";
    v29 = 5;
    if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v28, v9))
    {
      v27 = JSStringCreateWithUTF8CString("test");
      JSPropertyNameAccumulatorAddName(a3, v27);
      if (v27)
      {
        JSStringRelease(v27);
      }
    }

    if (v9)
    {
      CFRelease(v9[1]);
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

void sub_19D874600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    JSStringRelease(v13);
  }

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

BOOL WebKit::JSWebExtensionAPINamespace::hasProperty(WebKit::JSWebExtensionAPINamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPINamespace(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v16);
  v8 = *(v7 + 8);
  v9 = *(v7 + 8) == 0;
  if (JSStringIsEqualToUTF8CString(a3, "action"))
  {
    if (!v8)
    {
      v14 = "action";
      v15 = 7;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
LABEL_38:
      v9 = isPropertyAllowed;
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "alarms"))
  {
    if (!v8)
    {
      v14 = "alarms";
      v15 = 7;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

LABEL_31:
    v9 = 0;
    goto LABEL_39;
  }

  if (JSStringIsEqualToUTF8CString(a3, "browserAction"))
  {
    if (!v8)
    {
      v14 = "browserAction";
      v15 = 14;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "cookies"))
  {
    if (!v8)
    {
      v14 = "cookies";
      v15 = 8;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "commands"))
  {
    if (!v8)
    {
      v14 = "commands";
      v15 = 9;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "contextMenus"))
  {
    if (!v8)
    {
      v14 = "contextMenus";
      v15 = 13;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "declarativeNetRequest"))
  {
    if (!v8)
    {
      v14 = "declarativeNetRequest";
      v15 = 22;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "menus"))
  {
    if (!v8)
    {
      v14 = "menus";
      v15 = 6;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "notifications"))
  {
    if (!v8)
    {
      v14 = "notifications";
      v15 = 14;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "pageAction"))
  {
    if (!v8)
    {
      v14 = "pageAction";
      v15 = 11;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "permissions"))
  {
    goto LABEL_39;
  }

  if (JSStringIsEqualToUTF8CString(a3, "scripting"))
  {
    if (!v8)
    {
      v14 = "scripting";
      v15 = 10;
      isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (JSStringIsEqualToUTF8CString(a3, "storage"))
  {
    v14 = "storage";
    v15 = 8;
    v11 = v16;
    v13 = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
  }

  else
  {
    if (JSStringIsEqualToUTF8CString(a3, "tabs") || JSStringIsEqualToUTF8CString(a3, "windows"))
    {
LABEL_39:
      v11 = v16;
      if (!v16)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (JSStringIsEqualToUTF8CString(a3, "webNavigation"))
    {
      if (!v8)
      {
        v14 = "webNavigation";
        v15 = 14;
        isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (JSStringIsEqualToUTF8CString(a3, "webRequest"))
    {
      if (!v8)
      {
        v14 = "webRequest";
        v15 = 11;
        isPropertyAllowed = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!JSStringIsEqualToUTF8CString(a3, "test"))
    {
      goto LABEL_31;
    }

    v14 = "test";
    v15 = 5;
    v11 = v16;
    v13 = WebKit::WebExtensionAPINamespace::isPropertyAllowed(v7, &v14, v16);
  }

  v9 = v13;
  if (v11)
  {
LABEL_40:
    CFRelease(*(v11 + 1));
  }

LABEL_41:
  if (*(v7 + 48) == 1)
  {
    (*(*(v7 + 40) + 8))(v7 + 40);
  }

  else
  {
    --*(v7 + 48);
  }

  return v9;
}

void sub_19D874BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPINamespace::getProperty(WebKit::JSWebExtensionAPINamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v151 = *MEMORY[0x1E69E9840];
  v8 = WebKit::toWebExtensionAPINamespace(this, a2, a3);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 48);
    WebKit::toWebPage(this, &v147);
    v10 = *(v9 + 8);
    if (*(v9 + 8))
    {
      goto LABEL_3;
    }

    if (JSStringIsEqualToUTF8CString(a3, "action"))
    {
      *&buf = "action";
      *(&buf + 1) = 7;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
      {
        v22 = WebKit::toWebExtensionAPINamespace(this, a2, v21);
        v13 = v22;
        if (!v22)
        {
          goto LABEL_93;
        }

        ++*(v22 + 48);
        v23 = qword_1ED640AB8;
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_81;
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::utf8();
        if (v149)
        {
          v85 = v149 + 16;
        }

        else
        {
          v85 = 0;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v85;
        _os_log_debug_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEBUG, "Called getter browser.action in %{public}s world", &buf, 0xCu);
        v87 = v149;
        v149 = 0;
        if (v87)
        {
          if (*v87 == 1)
          {
            WTF::fastFree(v87, v86);
          }

          else
          {
            --*v87;
          }
        }

        v88 = v148;
        v148 = 0;
        if (!v88 || atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_81;
        }

        goto LABEL_272;
      }
    }

    if (JSStringIsEqualToUTF8CString(a3, "alarms"))
    {
      *&buf = "alarms";
      *(&buf + 1) = 7;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
      {
        v25 = WebKit::toWebExtensionAPINamespace(this, a2, v24);
        v13 = v25;
        if (v25)
        {
          ++*(v25 + 48);
          v26 = qword_1ED640AB8;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::String::utf8();
            if (v149)
            {
              v97 = v149 + 16;
            }

            else
            {
              v97 = 0;
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v97;
            _os_log_debug_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEBUG, "Called getter browser.alarms in %{public}s world", &buf, 0xCu);
            v99 = v149;
            v149 = 0;
            if (v99)
            {
              if (*v99 == 1)
              {
                WTF::fastFree(v99, v98);
              }

              else
              {
                --*v99;
              }
            }

            v100 = v148;
            v148 = 0;
            if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v100, v98);
            }
          }

          v27 = WebKit::WebExtensionAPINamespace::alarms(v13);
          v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v27 + 40));
          goto LABEL_86;
        }

        goto LABEL_93;
      }
    }

    if (JSStringIsEqualToUTF8CString(a3, "browserAction"))
    {
      *&buf = "browserAction";
      *(&buf + 1) = 14;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
      {
        v29 = WebKit::toWebExtensionAPINamespace(this, a2, v28);
        v13 = v29;
        if (!v29)
        {
          goto LABEL_93;
        }

        ++*(v29 + 48);
        v23 = qword_1ED640AB8;
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_81;
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::utf8();
        if (v149)
        {
          v101 = v149 + 16;
        }

        else
        {
          v101 = 0;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v101;
        _os_log_debug_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEBUG, "Called getter browser.browserAction in %{public}s world", &buf, 0xCu);
        v102 = v149;
        v149 = 0;
        if (v102)
        {
          if (*v102 == 1)
          {
            WTF::fastFree(v102, v86);
          }

          else
          {
            --*v102;
          }
        }

        v88 = v148;
        v148 = 0;
        if (!v88 || atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_81;
        }

        goto LABEL_272;
      }
    }

    if (JSStringIsEqualToUTF8CString(a3, "cookies"))
    {
      *&buf = "cookies";
      *(&buf + 1) = 8;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
      {
        v35 = WebKit::toWebExtensionAPINamespace(this, a2, v34);
        v13 = v35;
        if (v35)
        {
          ++*(v35 + 48);
          v36 = qword_1ED640AB8;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::String::utf8();
            if (v149)
            {
              v107 = v149 + 16;
            }

            else
            {
              v107 = 0;
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v107;
            _os_log_debug_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEBUG, "Called getter browser.cookies in %{public}s world", &buf, 0xCu);
            v109 = v149;
            v149 = 0;
            if (v109)
            {
              if (*v109 == 1)
              {
                WTF::fastFree(v109, v108);
              }

              else
              {
                --*v109;
              }
            }

            v110 = v148;
            v148 = 0;
            if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v110, v108);
            }
          }

          v37 = WebKit::WebExtensionAPINamespace::cookies(v13);
          v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v37 + 40));
          goto LABEL_86;
        }

        goto LABEL_93;
      }
    }

    if (JSStringIsEqualToUTF8CString(a3, "commands"))
    {
      *&buf = "commands";
      *(&buf + 1) = 9;
      if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
      {
        v39 = WebKit::toWebExtensionAPINamespace(this, a2, v38);
        v13 = v39;
        if (v39)
        {
          ++*(v39 + 48);
          v40 = qword_1ED640AB8;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::String::utf8();
            if (v149)
            {
              v111 = v149 + 16;
            }

            else
            {
              v111 = 0;
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v111;
            _os_log_debug_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEBUG, "Called getter browser.commands in %{public}s world", &buf, 0xCu);
            v113 = v149;
            v149 = 0;
            if (v113)
            {
              if (*v113 == 1)
              {
                WTF::fastFree(v113, v112);
              }

              else
              {
                --*v113;
              }
            }

            v114 = v148;
            v148 = 0;
            if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v114, v112);
            }
          }

          v41 = WebKit::WebExtensionAPINamespace::commands(v13);
          v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v41 + 40));
          goto LABEL_86;
        }

        goto LABEL_93;
      }
    }

    if (JSStringIsEqualToUTF8CString(a3, "contextMenus") && (*&buf = "contextMenus", *(&buf + 1) = 13, (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147) & 1) != 0))
    {
      v47 = WebKit::toWebExtensionAPINamespace(this, a2, v46);
      v13 = v47;
      if (!v47)
      {
        goto LABEL_93;
      }

      ++*(v47 + 48);
      v48 = qword_1ED640AB8;
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_51;
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v149)
      {
        v115 = v149 + 16;
      }

      else
      {
        v115 = 0;
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v115;
      _os_log_debug_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEBUG, "Called getter browser.contextMenus in %{public}s world", &buf, 0xCu);
      v117 = v149;
      v149 = 0;
      if (v117)
      {
        if (*v117 == 1)
        {
          WTF::fastFree(v117, v116);
        }

        else
        {
          --*v117;
        }
      }

      v118 = v148;
      v148 = 0;
      if (!v118 || atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (JSStringIsEqualToUTF8CString(a3, "declarativeNetRequest"))
      {
        *&buf = "declarativeNetRequest";
        *(&buf + 1) = 22;
        if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
        {
          v51 = WebKit::toWebExtensionAPINamespace(this, a2, v50);
          v13 = v51;
          if (v51)
          {
            ++*(v51 + 48);
            v52 = qword_1ED640AB8;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              WTF::String::utf8();
              if (v149)
              {
                v119 = v149 + 16;
              }

              else
              {
                v119 = 0;
              }

              LODWORD(buf) = 136446210;
              *(&buf + 4) = v119;
              _os_log_debug_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEBUG, "Called getter browser.declarativeNetRequest in %{public}s world", &buf, 0xCu);
              v121 = v149;
              v149 = 0;
              if (v121)
              {
                if (*v121 == 1)
                {
                  WTF::fastFree(v121, v120);
                }

                else
                {
                  --*v121;
                }
              }

              v122 = v148;
              v148 = 0;
              if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v122, v120);
              }
            }

            v53 = WebKit::WebExtensionAPINamespace::declarativeNetRequest(v13);
            v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v53 + 40));
            goto LABEL_86;
          }

          goto LABEL_93;
        }
      }

      if (!JSStringIsEqualToUTF8CString(a3, "menus") || (*&buf = "menus", *(&buf + 1) = 6, (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147) & 1) == 0))
      {
        if (JSStringIsEqualToUTF8CString(a3, "notifications"))
        {
          *&buf = "notifications";
          *(&buf + 1) = 14;
          if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
          {
            v61 = WebKit::toWebExtensionAPINamespace(this, a2, v60);
            v13 = v61;
            if (v61)
            {
              ++*(v61 + 48);
              v62 = qword_1ED640AB8;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                WTF::String::utf8();
                if (v149)
                {
                  v133 = v149 + 16;
                }

                else
                {
                  v133 = 0;
                }

                LODWORD(buf) = 136446210;
                *(&buf + 4) = v133;
                _os_log_debug_impl(&dword_19D52D000, v62, OS_LOG_TYPE_DEBUG, "Called getter browser.notifications in %{public}s world", &buf, 0xCu);
                v135 = v149;
                v149 = 0;
                if (v135)
                {
                  if (*v135 == 1)
                  {
                    WTF::fastFree(v135, v134);
                  }

                  else
                  {
                    --*v135;
                  }
                }

                v136 = v148;
                v148 = 0;
                if (v136 && atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v136, v134);
                }
              }

              v63 = WebKit::WebExtensionAPINamespace::notifications(v13);
              v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v63 + 40));
              goto LABEL_86;
            }

            goto LABEL_93;
          }
        }

        if (!JSStringIsEqualToUTF8CString(a3, "pageAction") || (*&buf = "pageAction", *(&buf + 1) = 11, !WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147)))
        {
          if (JSStringIsEqualToUTF8CString(a3, "permissions"))
          {
            v72 = WebKit::toWebExtensionAPINamespace(this, a2, v71);
            v13 = v72;
            if (v72)
            {
              ++*(v72 + 48);
              v73 = qword_1ED640AB8;
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                WTF::String::utf8();
                if (v149)
                {
                  v129 = v149 + 16;
                }

                else
                {
                  v129 = 0;
                }

                LODWORD(buf) = 136446210;
                *(&buf + 4) = v129;
                _os_log_debug_impl(&dword_19D52D000, v73, OS_LOG_TYPE_DEBUG, "Called getter browser.permissions in %{public}s world", &buf, 0xCu);
                v131 = v149;
                v149 = 0;
                if (v131)
                {
                  if (*v131 == 1)
                  {
                    WTF::fastFree(v131, v130);
                  }

                  else
                  {
                    --*v131;
                  }
                }

                v132 = v148;
                v148 = 0;
                if (v132 && atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v132, v130);
                }
              }

              v74 = WebKit::WebExtensionAPINamespace::permissions(v13);
              v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v74 + 40));
              goto LABEL_86;
            }

            goto LABEL_93;
          }

          if (JSStringIsEqualToUTF8CString(a3, "scripting"))
          {
            *&buf = "scripting";
            *(&buf + 1) = 10;
            if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
            {
              v77 = WebKit::toWebExtensionAPINamespace(this, a2, v76);
              v13 = v77;
              if (v77)
              {
                ++*(v77 + 48);
                v78 = qword_1ED640AB8;
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                {
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  WTF::String::utf8();
                  if (v149)
                  {
                    v143 = v149 + 16;
                  }

                  else
                  {
                    v143 = 0;
                  }

                  LODWORD(buf) = 136446210;
                  *(&buf + 4) = v143;
                  _os_log_debug_impl(&dword_19D52D000, v78, OS_LOG_TYPE_DEBUG, "Called getter browser.scripting in %{public}s world", &buf, 0xCu);
                  v145 = v149;
                  v149 = 0;
                  if (v145)
                  {
                    if (*v145 == 1)
                    {
                      WTF::fastFree(v145, v144);
                    }

                    else
                    {
                      --*v145;
                    }
                  }

                  v146 = v148;
                  v148 = 0;
                  if (v146 && atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v146, v144);
                  }
                }

                v79 = WebKit::WebExtensionAPINamespace::scripting(v13);
                v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v79 + 40));
                goto LABEL_86;
              }

              goto LABEL_93;
            }
          }

LABEL_3:
          if (JSStringIsEqualToUTF8CString(a3, "storage") && (*&buf = "storage", *(&buf + 1) = 8, WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147)))
          {
            v12 = WebKit::toWebExtensionAPINamespace(this, a2, v11);
            v13 = v12;
            if (v12)
            {
              ++*(v12 + 48);
              v14 = qword_1ED640AB8;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                WTF::String::utf8();
                if (v149)
                {
                  v81 = v149 + 16;
                }

                else
                {
                  v81 = 0;
                }

                LODWORD(buf) = 136446210;
                *(&buf + 4) = v81;
                _os_log_debug_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEBUG, "Called getter browser.storage in %{public}s world", &buf, 0xCu);
                v83 = v149;
                v149 = 0;
                if (v83)
                {
                  if (*v83 == 1)
                  {
                    WTF::fastFree(v83, v82);
                  }

                  else
                  {
                    --*v83;
                  }
                }

                v84 = v148;
                v148 = 0;
                if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v84, v82);
                }
              }

              v15 = WebKit::WebExtensionAPINamespace::storage(v13);
              v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v15 + 40));
              goto LABEL_86;
            }
          }

          else
          {
            if (!v10)
            {
              if (JSStringIsEqualToUTF8CString(a3, "tabs"))
              {
                v31 = WebKit::toWebExtensionAPINamespace(this, a2, v30);
                v13 = v31;
                if (v31)
                {
                  ++*(v31 + 48);
                  v32 = qword_1ED640AB8;
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    WTF::String::utf8();
                    if (v149)
                    {
                      v89 = v149 + 16;
                    }

                    else
                    {
                      v89 = 0;
                    }

                    LODWORD(buf) = 136446210;
                    *(&buf + 4) = v89;
                    _os_log_debug_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEBUG, "Called getter browser.tabs in %{public}s world", &buf, 0xCu);
                    v91 = v149;
                    v149 = 0;
                    if (v91)
                    {
                      if (*v91 == 1)
                      {
                        WTF::fastFree(v91, v90);
                      }

                      else
                      {
                        --*v91;
                      }
                    }

                    v92 = v148;
                    v148 = 0;
                    if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v92, v90);
                    }
                  }

                  v33 = WebKit::WebExtensionAPINamespace::tabs(v13);
                  v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v33 + 40));
                  goto LABEL_86;
                }

                goto LABEL_93;
              }

              if (JSStringIsEqualToUTF8CString(a3, "windows"))
              {
                v43 = WebKit::toWebExtensionAPINamespace(this, a2, v42);
                v13 = v43;
                if (v43)
                {
                  ++*(v43 + 48);
                  v44 = qword_1ED640AB8;
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    WTF::String::utf8();
                    if (v149)
                    {
                      v103 = v149 + 16;
                    }

                    else
                    {
                      v103 = 0;
                    }

                    LODWORD(buf) = 136446210;
                    *(&buf + 4) = v103;
                    _os_log_debug_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEBUG, "Called getter browser.windows in %{public}s world", &buf, 0xCu);
                    v105 = v149;
                    v149 = 0;
                    if (v105)
                    {
                      if (*v105 == 1)
                      {
                        WTF::fastFree(v105, v104);
                      }

                      else
                      {
                        --*v105;
                      }
                    }

                    v106 = v148;
                    v148 = 0;
                    if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v106, v104);
                    }
                  }

                  v45 = WebKit::WebExtensionAPINamespace::windows(v13);
                  v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v45 + 40));
                  goto LABEL_86;
                }

                goto LABEL_93;
              }

              if (JSStringIsEqualToUTF8CString(a3, "webNavigation"))
              {
                *&buf = "webNavigation";
                *(&buf + 1) = 14;
                if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
                {
                  v57 = WebKit::toWebExtensionAPINamespace(this, a2, v56);
                  v13 = v57;
                  if (v57)
                  {
                    ++*(v57 + 48);
                    v58 = qword_1ED640AB8;
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                    {
                      WTF::StringImpl::createWithoutCopyingNonEmpty();
                      WTF::String::utf8();
                      if (v149)
                      {
                        v125 = v149 + 16;
                      }

                      else
                      {
                        v125 = 0;
                      }

                      LODWORD(buf) = 136446210;
                      *(&buf + 4) = v125;
                      _os_log_debug_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEBUG, "Called getter browser.webNavigation in %{public}s world", &buf, 0xCu);
                      v127 = v149;
                      v149 = 0;
                      if (v127)
                      {
                        if (*v127 == 1)
                        {
                          WTF::fastFree(v127, v126);
                        }

                        else
                        {
                          --*v127;
                        }
                      }

                      v128 = v148;
                      v148 = 0;
                      if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v128, v126);
                      }
                    }

                    v59 = WebKit::WebExtensionAPINamespace::webNavigation(v13);
                    v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v59 + 40));
                    goto LABEL_86;
                  }

                  goto LABEL_93;
                }
              }

              if (JSStringIsEqualToUTF8CString(a3, "webRequest"))
              {
                *&buf = "webRequest";
                *(&buf + 1) = 11;
                if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
                {
                  v65 = WebKit::toWebExtensionAPINamespace(this, a2, v64);
                  v13 = v65;
                  if (v65)
                  {
                    ++*(v65 + 48);
                    v66 = qword_1ED640AB8;
                    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                    {
                      WTF::StringImpl::createWithoutCopyingNonEmpty();
                      WTF::String::utf8();
                      if (v149)
                      {
                        v137 = v149 + 16;
                      }

                      else
                      {
                        v137 = 0;
                      }

                      LODWORD(buf) = 136446210;
                      *(&buf + 4) = v137;
                      _os_log_debug_impl(&dword_19D52D000, v66, OS_LOG_TYPE_DEBUG, "Called getter browser.webRequest in %{public}s world", &buf, 0xCu);
                      v139 = v149;
                      v149 = 0;
                      if (v139)
                      {
                        if (*v139 == 1)
                        {
                          WTF::fastFree(v139, v138);
                        }

                        else
                        {
                          --*v139;
                        }
                      }

                      v140 = v148;
                      v148 = 0;
                      if (v140 && atomic_fetch_add_explicit(v140, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v140, v138);
                      }
                    }

                    v67 = WebKit::WebExtensionAPINamespace::webRequest(v13);
                    v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v67 + 40));
                    goto LABEL_86;
                  }

                  goto LABEL_93;
                }
              }
            }

            if (JSStringIsEqualToUTF8CString(a3, "test"))
            {
              *&buf = "test";
              *(&buf + 1) = 5;
              if (WebKit::WebExtensionAPINamespace::isPropertyAllowed(v9, &buf, v147))
              {
                v18 = WebKit::toWebExtensionAPINamespace(this, a2, v17);
                v13 = v18;
                if (v18)
                {
                  ++*(v18 + 48);
                  v19 = qword_1ED640AB8;
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    WTF::String::utf8();
                    if (v149)
                    {
                      v93 = v149 + 16;
                    }

                    else
                    {
                      v93 = 0;
                    }

                    LODWORD(buf) = 136446210;
                    *(&buf + 4) = v93;
                    _os_log_debug_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEBUG, "Called getter browser.test in %{public}s world", &buf, 0xCu);
                    v95 = v149;
                    v149 = 0;
                    if (v95)
                    {
                      if (*v95 == 1)
                      {
                        WTF::fastFree(v95, v94);
                      }

                      else
                      {
                        --*v95;
                      }
                    }

                    v96 = v148;
                    v148 = 0;
                    if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v96, v94);
                    }
                  }

                  v20 = WebKit::WebExtensionAPINamespace::test(v13);
                  v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v20 + 40));
                  goto LABEL_86;
                }
              }
            }
          }

LABEL_93:
          Undefined = JSValueMakeUndefined(this);
LABEL_94:
          if (v147)
          {
            CFRelease(*(v147 + 1));
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

        v69 = WebKit::toWebExtensionAPINamespace(this, a2, v68);
        v13 = v69;
        if (!v69)
        {
          goto LABEL_93;
        }

        ++*(v69 + 48);
        v23 = qword_1ED640AB8;
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_81;
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::utf8();
        if (v149)
        {
          v141 = v149 + 16;
        }

        else
        {
          v141 = 0;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v141;
        _os_log_debug_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEBUG, "Called getter browser.pageAction in %{public}s world", &buf, 0xCu);
        v142 = v149;
        v149 = 0;
        if (v142)
        {
          if (*v142 == 1)
          {
            WTF::fastFree(v142, v86);
          }

          else
          {
            --*v142;
          }
        }

        v88 = v148;
        v148 = 0;
        if (!v88 || atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_81;
        }

LABEL_272:
        WTF::StringImpl::destroy(v88, v86);
LABEL_81:

        v70 = WebKit::WebExtensionAPINamespace::action(v13);
        v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v70 + 40));
LABEL_86:
        Undefined = v16;
        if (*(v13 + 48) == 1)
        {
          (*(*(v13 + 40) + 8))(v13 + 40);
        }

        else
        {
          --*(v13 + 48);
        }

        goto LABEL_94;
      }

      v55 = WebKit::toWebExtensionAPINamespace(this, a2, v54);
      v13 = v55;
      if (!v55)
      {
        goto LABEL_93;
      }

      ++*(v55 + 48);
      v48 = qword_1ED640AB8;
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_51;
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v149)
      {
        v123 = v149 + 16;
      }

      else
      {
        v123 = 0;
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v123;
      _os_log_debug_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEBUG, "Called getter browser.menus in %{public}s world", &buf, 0xCu);
      v124 = v149;
      v149 = 0;
      if (v124)
      {
        if (*v124 == 1)
        {
          WTF::fastFree(v124, v116);
        }

        else
        {
          --*v124;
        }
      }

      v118 = v148;
      v148 = 0;
      if (!v118 || atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
LABEL_51:

        v49 = WebKit::WebExtensionAPINamespace::menus(v13);
        v16 = WebKit::JSWebExtensionWrapper::wrap(this, (v49 + 40));
        goto LABEL_86;
      }
    }

    WTF::StringImpl::destroy(v118, v116);
    goto LABEL_51;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D876900(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (*(v12 + 48) == 1)
  {
    (*(*(v12 + 40) + 8))(v12 + 40);
  }

  else
  {
    --*(v12 + 48);
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
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

JSValueRef WebKit::JSWebExtensionAPINamespace::dom(WebKit::JSWebExtensionAPINamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPINamespace(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter browser.dom in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPINamespace::dom(v7);
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