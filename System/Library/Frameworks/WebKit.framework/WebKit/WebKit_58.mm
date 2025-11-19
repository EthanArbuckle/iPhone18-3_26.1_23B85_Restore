void sub_19D876FF8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPINamespace::extension(WebKit::JSWebExtensionAPINamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter browser.extension in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPINamespace::extension(v7);
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

void sub_19D8772A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPINamespace::i18n(WebKit::JSWebExtensionAPINamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter browser.i18n in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPINamespace::i18n(v7);
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

void sub_19D877550(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPINamespace::runtime(WebKit::JSWebExtensionAPINamespace *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
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

    v9 = WebKit::WebExtensionAPINamespace::runtime(v7);
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

void sub_19D8777FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPINotifications *WebKit::toWebExtensionAPINotifications(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPINotifications::notificationsClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPINotifications::notificationsClass(result);
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

JSClassRef WebKit::JSWebExtensionAPINotifications::notificationsClass(WebKit::JSWebExtensionAPINotifications *this)
{
  result = WebKit::JSWebExtensionAPINotifications::notificationsClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPINotifications::notificationsClass(void)::jsClass)
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
    v6.className = "Notifications";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPINotifications::staticValues(void)::values;
    v6.staticFunctions = 0;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPINotifications::notificationsClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPINotifications::onClicked(WebKit::JSWebExtensionAPINotifications *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPINotifications(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter notifications.onClicked in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPINotifications::onClicked(v7);
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

void sub_19D877B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPINotifications::onButtonClicked(WebKit::JSWebExtensionAPINotifications *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPINotifications(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter notifications.onButtonClicked in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPINotifications::onButtonClicked(v7);
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

void sub_19D877E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPIPermissions *WebKit::toWebExtensionAPIPermissions(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIPermissions::permissionsClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIPermissions::permissionsClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIPermissions::permissionsClass(WebKit::JSWebExtensionAPIPermissions *this)
{
  result = WebKit::JSWebExtensionAPIPermissions::permissionsClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIPermissions::permissionsClass(void)::jsClass)
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
    v6.className = "Permissions";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIPermissions::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIPermissions::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIPermissions::permissionsClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIPermissions::getAll(WebKit::JSWebExtensionAPIPermissions *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIPermissions(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function permissions.getAll() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
      *a6 = WebKit::toJSError(this, @"permissions.getAll()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
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
  WebKit::WebExtensionAPIPermissions::getAll(v12, buf);
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

void sub_19D878358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIPermissions::contains(WebKit::JSWebExtensionAPIPermissions *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIPermissions(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function permissions.contains() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"permissions.contains()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"permissions";
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
      *a6 = WebKit::toJSError(this, @"permissions.contains()", &cfstr_Permissions.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIPermissions::contains(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"permissions.contains()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"permissions.contains()", &v38->isa, &v37->isa, v20);
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

void sub_19D8788F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIPermissions::request(WebKit::JSWebExtensionAPIPermissions *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIPermissions(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function permissions.request() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"permissions.request()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"permissions";
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
      *a6 = WebKit::toJSError(this, @"permissions.request()", &cfstr_Permissions.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIPermissions::request(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"permissions.request()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"permissions.request()", &v38->isa, &v37->isa, v20);
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

void sub_19D878EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIPermissions::remove(WebKit::JSWebExtensionAPIPermissions *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIPermissions(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function permissions.remove() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"permissions.remove()", 0, &cfstr_ARequiredArgum.isa, v15);
    v36 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  v22 = WebKit::toJSValue(this, *a5, v14);
  v23 = [v22 _isDictionary];

  if (!v23)
  {
LABEL_47:
    v37 = @"an object is expected";
    v38 = @"permissions";
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
      *a6 = WebKit::toJSError(this, @"permissions.remove()", &cfstr_Permissions.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIPermissions::remove(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"permissions.remove()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"permissions.remove()", &v38->isa, &v37->isa, v20);
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

void sub_19D8794C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIPermissions::onAdded(WebKit::JSWebExtensionAPIPermissions *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIPermissions(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter permissions.onAdded in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIPermissions::onAdded(v7);
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

void sub_19D8797CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIPermissions::onRemoved(WebKit::JSWebExtensionAPIPermissions *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIPermissions(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter permissions.onRemoved in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIPermissions::onRemoved(v7);
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

void sub_19D879A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPIPort *WebKit::toWebExtensionAPIPort(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIPort::portClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIPort::portClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIPort::portClass(WebKit::JSWebExtensionAPIPort *this)
{
  result = WebKit::JSWebExtensionAPIPort::portClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIPort::portClass(void)::jsClass)
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
    v6.className = "Port";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIPort::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIPort::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIPort::portClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIPort::postMessage(WebKit::JSWebExtensionAPIPort *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIPort(this, a3, a3);
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
      if (*v38)
      {
        v29 = *v38 + 16;
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
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function port.postMessage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v31 = *v38;
      *v38 = 0;
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

      v32 = v37;
      v37 = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v30);
      }
    }

    if (a4)
    {
      if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        v16 = JSValueToObject(this, *a5, 0);
        if (!JSObjectIsFunction(this, v16))
        {
          v18 = WebKit::serializeJSObject(this, *a5, a6, v17);
          v20 = v18;
          if (!*a6)
          {
            if (v18)
            {
              GlobalContext = JSContextGetGlobalContext(this);
              WebKit::WebFrame::frameForContext(GlobalContext, v22, buf);
              v23 = *buf;
              if (*buf)
              {
                v36 = 0;
                WebKit::WebExtensionAPIPort::postMessage(v12, *buf, v20, &v36);
                v25 = v36;
                if (v25)
                {
                  *a6 = WebKit::toJSError(this, @"port.postMessage()", 0, v25, v24);
                }

                Undefined = JSValueMakeUndefined(this);

                CFRelease(*(v23 + 8));
                goto LABEL_13;
              }

              v35 = qword_1ED640AB8;
              if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
              {
                *v38 = 0;
                _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v38, 2u);
              }

              v34 = JSValueMakeUndefined(this);
LABEL_41:
              Undefined = v34;
LABEL_13:

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

            *a6 = WebKit::toJSError(this, @"port.postMessage()", &cfstr_Message_0.isa, &cfstr_AJsonSerializa.isa, v19);
          }

          v34 = JSValueMakeUndefined(this);
          goto LABEL_41;
        }
      }

      v33 = WebKit::toJSError(this, @"port.postMessage()", &cfstr_Message_0.isa, &cfstr_AnObjectIsExpe.isa, v15);
    }

    else
    {
      v33 = WebKit::toJSError(this, @"port.postMessage()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v33;
    Undefined = JSValueMakeUndefined(this);
    goto LABEL_14;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D87A040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (*(v10 + 48) == 1)
  {
    (*(*(v10 + 40) + 8))(v10 + 40);
  }

  else
  {
    --*(v10 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIPort::disconnect(WebKit::JSWebExtensionAPIPort *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = WebKit::toWebExtensionAPIPort(this, a3, a3);
  if (v9)
  {
    v10 = v9;
    ++*(v9 + 12);
    v11 = qword_1ED640AB8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v14 = "argument";
      }

      else
      {
        v14 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v18)
      {
        v15 = v18 + 16;
      }

      else
      {
        v15 = 0;
      }

      *buf = 134349570;
      v20 = a4;
      v21 = 2082;
      v22 = v14;
      v23 = 2082;
      v24 = v15;
      _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function port.disconnect() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v18)
      {
        if (*v18 == 1)
        {
          WTF::fastFree(v18, v16);
        }

        else
        {
          --*v18;
        }
      }

      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }
    }

    WebKit::WebExtensionAPIPort::fireDisconnectEventIfNeeded(v10);
    Undefined = JSValueMakeUndefined(this);
    if (*(v10 + 12) == 1)
    {
      (*(*(v10 + 5) + 8))(v10 + 40);
    }

    else
    {
      --*(v10 + 12);
    }

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D87A350(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIPort::name(WebKit::JSWebExtensionAPIPort *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIPort(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter port.name in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIPort::name(v7);
    v10 = WebKit::toJSValueRef(this, v9, 1);

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

void sub_19D87A60C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIPort::sender(WebKit::JSWebExtensionAPIPort *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIPort(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 12);
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v16)
      {
        v13 = v16 + 16;
      }

      else
      {
        v13 = 0;
      }

      *buf = 136446210;
      v18 = v13;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter port.sender in %{public}s world", buf, 0xCu);
      if (v16)
      {
        if (*v16 == 1)
        {
          WTF::fastFree(v16, v14);
        }

        else
        {
          --*v16;
        }
      }

      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }
    }

    v9 = WebKit::WebExtensionAPIPort::sender(v7);
    v11 = WebKit::toJSValueRefOrJSNull(this, v9, v10);

    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return v11;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D87A8D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIPort::error(WebKit::JSWebExtensionAPIPort *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIPort(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 12);
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v16)
      {
        v13 = v16 + 16;
      }

      else
      {
        v13 = 0;
      }

      *buf = 136446210;
      v18 = v13;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter port.error in %{public}s world", buf, 0xCu);
      if (v16)
      {
        if (*v16 == 1)
        {
          WTF::fastFree(v16, v14);
        }

        else
        {
          --*v16;
        }
      }

      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }
    }

    v9 = WebKit::WebExtensionAPIPort::error(v7);
    v11 = WebKit::toJSValueRefOrJSNull(this, v9, v10);

    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return v11;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D87AB94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIPort::onDisconnect(WebKit::JSWebExtensionAPIPort *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIPort(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter port.onDisconnect in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIPort::onDisconnect(v7);
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

void sub_19D87AE3C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIPort::onMessage(WebKit::JSWebExtensionAPIPort *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIPort(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter port.onMessage in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIPort::onMessage(v7);
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

void sub_19D87B0E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPIRuntime *WebKit::toWebExtensionAPIRuntime(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIRuntime::runtimeClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIRuntime::runtimeClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIRuntime::runtimeClass(WebKit::JSWebExtensionAPIRuntime *this)
{
  result = WebKit::JSWebExtensionAPIRuntime::runtimeClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIRuntime::runtimeClass(void)::jsClass)
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
    v6.className = "Runtime";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIRuntime::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIRuntime::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPIRuntime::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPIRuntime::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPIRuntime::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIRuntime::runtimeClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPIRuntime::getPropertyNames(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPIRuntime(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v23);
    if (*(v7 + 8))
    {
      v8 = v23;
    }

    else
    {
      v9 = JSStringCreateWithUTF8CString("getPlatformInfo");
      JSPropertyNameAccumulatorAddName(a3, v9);
      if (v9)
      {
        JSStringRelease(v9);
      }

      v10 = JSStringCreateWithUTF8CString("getBackgroundPage");
      JSPropertyNameAccumulatorAddName(a3, v10);
      if (v10)
      {
        JSStringRelease(v10);
      }

      v11 = JSStringCreateWithUTF8CString("setUninstallURL");
      JSPropertyNameAccumulatorAddName(a3, v11);
      if (v11)
      {
        JSStringRelease(v11);
      }

      v12 = JSStringCreateWithUTF8CString("openOptionsPage");
      JSPropertyNameAccumulatorAddName(a3, v12);
      if (v12)
      {
        JSStringRelease(v12);
      }

      v13 = JSStringCreateWithUTF8CString("reload");
      JSPropertyNameAccumulatorAddName(a3, v13);
      if (v13)
      {
        JSStringRelease(v13);
      }

      v21 = "sendNativeMessage";
      v22 = 18;
      v8 = v23;
      if (WebKit::WebExtensionAPIRuntime::isPropertyAllowed(v7, &v21, v23))
      {
        v14 = JSStringCreateWithUTF8CString("sendNativeMessage");
        JSPropertyNameAccumulatorAddName(a3, v14);
        if (v14)
        {
          JSStringRelease(v14);
        }
      }

      v21 = "connectNative";
      v22 = 14;
      if (WebKit::WebExtensionAPIRuntime::isPropertyAllowed(v7, &v21, v8))
      {
        v15 = JSStringCreateWithUTF8CString("connectNative");
        JSPropertyNameAccumulatorAddName(a3, v15);
        if (v15)
        {
          JSStringRelease(v15);
        }
      }

      v16 = JSStringCreateWithUTF8CString("lastError");
      JSPropertyNameAccumulatorAddName(a3, v16);
      if (v16)
      {
        JSStringRelease(v16);
      }

      v17 = JSStringCreateWithUTF8CString("onConnectExternal");
      JSPropertyNameAccumulatorAddName(a3, v17);
      if (v17)
      {
        JSStringRelease(v17);
      }

      v18 = JSStringCreateWithUTF8CString("onMessageExternal");
      JSPropertyNameAccumulatorAddName(a3, v18);
      if (v18)
      {
        JSStringRelease(v18);
      }

      v19 = JSStringCreateWithUTF8CString("onStartup");
      JSPropertyNameAccumulatorAddName(a3, v19);
      if (v19)
      {
        JSStringRelease(v19);
      }

      v20 = JSStringCreateWithUTF8CString("onInstalled");
      JSPropertyNameAccumulatorAddName(a3, v20);
      if (v20)
      {
        JSStringRelease(v20);
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

void sub_19D87B594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

uint64_t WebKit::JSWebExtensionAPIRuntime::hasProperty(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPIRuntime(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v15);
  v8 = *(v7 + 8);
  v9 = *(v7 + 8) == 0;
  if (!JSStringIsEqualToUTF8CString(a3, "getPlatformInfo") && !JSStringIsEqualToUTF8CString(a3, "getBackgroundPage") && !JSStringIsEqualToUTF8CString(a3, "setUninstallURL") && !JSStringIsEqualToUTF8CString(a3, "openOptionsPage") && !JSStringIsEqualToUTF8CString(a3, "reload"))
  {
    if (JSStringIsEqualToUTF8CString(a3, "sendNativeMessage"))
    {
      if (!v8)
      {
        v13 = "sendNativeMessage";
        v14 = 18;
        isPropertyAllowed = WebKit::WebExtensionAPIRuntime::isPropertyAllowed(v7, &v13, v15);
LABEL_21:
        v9 = isPropertyAllowed;
        goto LABEL_22;
      }
    }

    else
    {
      if (!JSStringIsEqualToUTF8CString(a3, "connectNative"))
      {
        if (!JSStringIsEqualToUTF8CString(a3, "lastError") && !JSStringIsEqualToUTF8CString(a3, "onConnectExternal") && !JSStringIsEqualToUTF8CString(a3, "onMessageExternal") && !JSStringIsEqualToUTF8CString(a3, "onStartup"))
        {
          IsEqualToUTF8CString = JSStringIsEqualToUTF8CString(a3, "onInstalled");
          if (v8)
          {
            v9 = 0;
          }

          else
          {
            v9 = IsEqualToUTF8CString;
          }
        }

        goto LABEL_22;
      }

      if (!v8)
      {
        v13 = "connectNative";
        v14 = 14;
        isPropertyAllowed = WebKit::WebExtensionAPIRuntime::isPropertyAllowed(v7, &v13, v15);
        goto LABEL_21;
      }
    }

    v9 = 0;
  }

LABEL_22:
  if (v15)
  {
    CFRelease(*(v15 + 1));
  }

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

void sub_19D87B884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::getProperty(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = WebKit::toWebExtensionAPIRuntime(this, a2, a3);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 48);
    WebKit::toWebPage(this, &v64);
    if (*(v9 + 8))
    {
      goto LABEL_3;
    }

    if (JSStringIsEqualToUTF8CString(a3, "lastError"))
    {
      v13 = WebKit::toWebExtensionAPIRuntime(this, a2, v12);
      v14 = v13;
      if (!v13)
      {
        goto LABEL_3;
      }

      ++*(v13 + 48);
      v15 = qword_1ED640AB8;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::utf8();
        if (v66)
        {
          v42 = v66 + 16;
        }

        else
        {
          v42 = 0;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v42;
        _os_log_debug_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEBUG, "Called getter runtime.lastError in %{public}s world", &buf, 0xCu);
        v44 = v66;
        v66 = 0;
        if (v44)
        {
          if (*v44 == 1)
          {
            WTF::fastFree(v44, v43);
          }

          else
          {
            --*v44;
          }
        }

        v45 = v65;
        v65 = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v43);
        }
      }

      v16 = WebKit::WebExtensionAPIRuntime::lastError(v14);
      v11 = WebKit::toJSValueRefOrJSNull(this, v16, v17);
    }

    else
    {
      if (JSStringIsEqualToUTF8CString(a3, "onConnectExternal"))
      {
        v19 = WebKit::toWebExtensionAPIRuntime(this, a2, v18);
        v14 = v19;
        if (!v19)
        {
          goto LABEL_3;
        }

        ++*(v19 + 48);
        v20 = qword_1ED640AB8;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WTF::String::utf8();
          if (v66)
          {
            v46 = v66 + 16;
          }

          else
          {
            v46 = 0;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v46;
          _os_log_debug_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEBUG, "Called getter runtime.onConnectExternal in %{public}s world", &buf, 0xCu);
          v48 = v66;
          v66 = 0;
          if (v48)
          {
            if (*v48 == 1)
            {
              WTF::fastFree(v48, v47);
            }

            else
            {
              --*v48;
            }
          }

          v49 = v65;
          v65 = 0;
          if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v49, v47);
          }
        }

        v21 = WebKit::WebExtensionAPIRuntime::onConnectExternal(v14);
        v22 = WebKit::JSWebExtensionWrapper::wrap(this, (v21 + 40));
      }

      else if (JSStringIsEqualToUTF8CString(a3, "onMessageExternal"))
      {
        v24 = WebKit::toWebExtensionAPIRuntime(this, a2, v23);
        v14 = v24;
        if (!v24)
        {
          goto LABEL_3;
        }

        ++*(v24 + 48);
        v25 = qword_1ED640AB8;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WTF::String::utf8();
          if (v66)
          {
            v50 = v66 + 16;
          }

          else
          {
            v50 = 0;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v50;
          _os_log_debug_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEBUG, "Called getter runtime.onMessageExternal in %{public}s world", &buf, 0xCu);
          v52 = v66;
          v66 = 0;
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

          v53 = v65;
          v65 = 0;
          if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v53, v51);
          }
        }

        v26 = WebKit::WebExtensionAPIRuntime::onMessageExternal(v14);
        v22 = WebKit::JSWebExtensionWrapper::wrap(this, (v26 + 40));
      }

      else if (JSStringIsEqualToUTF8CString(a3, "onStartup"))
      {
        v28 = WebKit::toWebExtensionAPIRuntime(this, a2, v27);
        v14 = v28;
        if (!v28)
        {
          goto LABEL_3;
        }

        ++*(v28 + 48);
        v29 = qword_1ED640AB8;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WTF::String::utf8();
          if (v66)
          {
            v56 = v66 + 16;
          }

          else
          {
            v56 = 0;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v56;
          _os_log_debug_impl(&dword_19D52D000, v29, OS_LOG_TYPE_DEBUG, "Called getter runtime.onStartup in %{public}s world", &buf, 0xCu);
          v58 = v66;
          v66 = 0;
          if (v58)
          {
            if (*v58 == 1)
            {
              WTF::fastFree(v58, v57);
            }

            else
            {
              --*v58;
            }
          }

          v59 = v65;
          v65 = 0;
          if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v59, v57);
          }
        }

        v30 = WebKit::WebExtensionAPIRuntime::onStartup(v14);
        v22 = WebKit::JSWebExtensionWrapper::wrap(this, (v30 + 40));
      }

      else
      {
        if (!JSStringIsEqualToUTF8CString(a3, "onInstalled"))
        {
          IsEqualToUTF8CString = JSStringIsEqualToUTF8CString(a3, "getPlatformInfo");
          v37 = WebKit::JSWebExtensionAPIRuntime::getPlatformInfo;
          if (IsEqualToUTF8CString || (v38 = JSStringIsEqualToUTF8CString(a3, "getBackgroundPage"), v37 = WebKit::JSWebExtensionAPIRuntime::getBackgroundPage, v38) || (v39 = JSStringIsEqualToUTF8CString(a3, "setUninstallURL"), v37 = WebKit::JSWebExtensionAPIRuntime::setUninstallURL, v39) || (v40 = JSStringIsEqualToUTF8CString(a3, "openOptionsPage"), v37 = WebKit::JSWebExtensionAPIRuntime::openOptionsPage, v40) || (v41 = JSStringIsEqualToUTF8CString(a3, "reload"), v37 = WebKit::JSWebExtensionAPIRuntime::reload, v41) || JSStringIsEqualToUTF8CString(a3, "sendNativeMessage") && (*&buf = "sendNativeMessage", *(&buf + 1) = 18, isPropertyAllowed = WebKit::WebExtensionAPIRuntime::isPropertyAllowed(v9, &buf, v64), v37 = WebKit::JSWebExtensionAPIRuntime::sendNativeMessage, (isPropertyAllowed & 1) != 0) || JSStringIsEqualToUTF8CString(a3, "connectNative") && (*&buf = "connectNative", *(&buf + 1) = 14, v55 = WebKit::WebExtensionAPIRuntime::isPropertyAllowed(v9, &buf, v64), v37 = WebKit::JSWebExtensionAPIRuntime::connectNative, v55))
          {
            FunctionWithCallback = JSObjectMakeFunctionWithCallback(this, a3, v37);
            goto LABEL_4;
          }

LABEL_3:
          FunctionWithCallback = JSValueMakeUndefined(this);
LABEL_4:
          v11 = FunctionWithCallback;
LABEL_28:
          if (v64)
          {
            CFRelease(*(v64 + 1));
          }

          if (*(v9 + 48) == 1)
          {
            (*(*(v9 + 40) + 8))(v9 + 40);
          }

          else
          {
            --*(v9 + 48);
          }

          return v11;
        }

        v32 = WebKit::toWebExtensionAPIRuntime(this, a2, v31);
        v14 = v32;
        if (!v32)
        {
          goto LABEL_3;
        }

        ++*(v32 + 48);
        v33 = qword_1ED640AB8;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WTF::String::utf8();
          if (v66)
          {
            v60 = v66 + 16;
          }

          else
          {
            v60 = 0;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v60;
          _os_log_debug_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEBUG, "Called getter runtime.onInstalled in %{public}s world", &buf, 0xCu);
          v62 = v66;
          v66 = 0;
          if (v62)
          {
            if (*v62 == 1)
            {
              WTF::fastFree(v62, v61);
            }

            else
            {
              --*v62;
            }
          }

          v63 = v65;
          v65 = 0;
          if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v63, v61);
          }
        }

        v34 = WebKit::WebExtensionAPIRuntime::onInstalled(v14);
        v22 = WebKit::JSWebExtensionWrapper::wrap(this, (v34 + 40));
      }

      v11 = v22;
    }

    if (*(v14 + 48) == 1)
    {
      (*(*(v14 + 40) + 8))(v14 + 40);
    }

    else
    {
      --*(v14 + 48);
    }

    goto LABEL_28;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D87C2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
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

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIRuntime::getURL(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.getURL() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
          v18 = WebKit::WebExtensionAPIRuntime::getURL(v12);
          v19 = 0;
          Undefined = WebKit::toJSValueRef(this, v18, 0);

          if (v19)
          {
            *a6 = WebKit::toJSError(this, @"runtime.getURL()", 0, v19, v21);
            Undefined = JSValueMakeUndefined(this);
          }
        }

        else
        {
          *a6 = WebKit::toJSError(this, @"runtime.getURL()", &cfstr_Resourcepath.isa, &cfstr_AStringIsExpec.isa, v16);
          Undefined = JSValueMakeUndefined(this);
        }

        goto LABEL_10;
      }

      v26 = WebKit::toJSError(this, @"runtime.getURL()", &cfstr_Resourcepath.isa, &cfstr_AStringIsExpec.isa, v15);
    }

    else
    {
      v26 = WebKit::toJSError(this, @"runtime.getURL()", 0, &cfstr_ARequiredArgum.isa, v14);
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

void sub_19D87C7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::getManifest(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v9)
  {
    v10 = v9;
    ++*(v9 + 12);
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
      _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function runtime.getManifest() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    v12 = WebKit::WebExtensionContextProxy::manifest(*(v10 + 3));
    v14 = WebKit::toJSValueRefOrJSNull(this, v12, v13);

    if (*(v10 + 12) == 1)
    {
      (*(*(v10 + 5) + 8))(v10 + 40);
    }

    else
    {
      --*(v10 + 12);
    }

    return v14;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D87CB1C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::getFrameId(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, id *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.getFrameId() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
          *a6 = WebKit::toJSError(this, @"runtime.getFrameId()", &cfstr_Target.isa, &cfstr_AnObjectIsExpe.isa, v19);
          Undefined = JSValueMakeUndefined(this);
        }

        else
        {
          FrameId = WebKit::WebExtensionAPIRuntime::getFrameId(v12, v18);
          Undefined = JSValueMakeNumber(this, FrameId);
        }

        v22 = Undefined;

        goto LABEL_9;
      }

      v27 = WebKit::toJSError(this, @"runtime.getFrameId()", &cfstr_Target.isa, &cfstr_AnObjectIsExpe.isa, v16);
    }

    else
    {
      v27 = WebKit::toJSError(this, @"runtime.getFrameId()", 0, &cfstr_ARequiredArgum.isa, v14);
    }

    *a6 = v27;
    v22 = JSValueMakeUndefined(this);
LABEL_9:
    if (*(v12 + 12) == 1)
    {
      (*(*(v12 + 5) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 12);
    }

    return v22;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D87CEE8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::sendMessage(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (!v10)
  {

    return JSValueMakeUndefined(this);
  }

  v65 = v10;
  ++*(v10 + 12);
  v11 = qword_1ED640AB8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (a4 == 1)
    {
      v44 = "argument";
    }

    else
    {
      v44 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v71)
    {
      v45 = *v71 + 16;
    }

    else
    {
      v45 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v73 = 2082;
    v74 = v44;
    v75 = 2082;
    v76 = v45;
    _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function runtime.sendMessage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    IsUndefined = *v71;
    *v71 = 0;
    if (!IsUndefined)
    {
      goto LABEL_63;
    }

    if (*IsUndefined != 1)
    {
      --*IsUndefined;
      goto LABEL_63;
    }

    goto LABEL_113;
  }

  while (1)
  {

    if (a4 == 4)
    {
      if (JSValueIsString(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)) || (v21 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v21)))
        {
          v57 = @"an object is expected";
          v58 = @"message";
        }

        else
        {
          v23 = WebKit::toJSValue(this, *(a5 + 16), v22);
          v24 = [v23 _isDictionary];

          if ((v24 & 1) != 0 || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
          {
            if (JSValueIsObject(this, *(a5 + 24)) && (v25 = JSValueToObject(this, *(a5 + 24), 0), JSObjectIsFunction(this, v25)) || JSValueIsNull(this, *(a5 + 24)) || JSValueIsUndefined(this, *(a5 + 24)))
            {
              v26 = WebKit::toNSString(this, *a5, 2);
              v28 = WebKit::serializeJSObject(this, *(a5 + 8), a6, v27);
              v29 = WebKit::toNSDictionary(this, *(a5 + 16), 0, 0);
              WebKit::toJSCallbackHandler(this, *(a5 + 24), (v65 + 40), buf);
              v30 = 4;
              v18 = *buf;
              v11 = v26;
              v31 = v28;
              v32 = v29;
              v64 = 4;
              goto LABEL_27;
            }

            v57 = @"a function is expected";
            v58 = @"callback";
          }

          else
          {
            v57 = @"an object is expected";
            v58 = @"options";
          }
        }
      }

      else
      {
        v57 = @"a string is expected";
        v58 = @"extensionID";
      }

      v41 = 0;
      *a6 = WebKit::toJSError(this, @"runtime.sendMessage()", &v58->isa, &v57->isa, v20);
      Undefined = JSValueMakeUndefined(this);
      v31 = 0;
      v11 = 0;
      goto LABEL_48;
    }

    if (!a4)
    {
      break;
    }

    v64 = a4 - 1;
    if (a4 == 1)
    {
      v19 = 0;
      v18 = 0;
      v11 = 0;
      v43 = 0;
      v64 = 1;
      goto LABEL_75;
    }

    v16 = *(a5 + 8 * v64);
    if (!v16)
    {
      v18 = 0;
      v19 = a4 - 1;
      goto LABEL_67;
    }

    if (!JSValueIsObject(this, *(a5 + 8 * v64)) || (v17 = JSValueToObject(this, v16, 0), !JSObjectIsFunction(this, v17)))
    {
      if (!JSValueIsNull(this, v16))
      {
        IsUndefined = JSValueIsUndefined(this, v16);
        if (!IsUndefined)
        {
          v18 = 0;
          v19 = a4 - 1;
LABEL_67:
          v64 = a4;
          if (!v19)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        }
      }
    }

    IsUndefined = WebKit::toJSCallbackHandler(this, v16, (v65 + 40), buf);
    v18 = *buf;
    v19 = a4 - 2;
    if (a4 == 2)
    {
      goto LABEL_73;
    }

LABEL_68:
    v47 = *a5;
    if (*a5)
    {
      if (JSValueIsString(this, *a5) || JSValueIsNull(this, v47) || (IsUndefined = JSValueIsUndefined(this, v47), IsUndefined))
      {
        IsUndefined = WebKit::toNSString(this, v47, 2);
        v43 = 1;
        v11 = IsUndefined;
        goto LABEL_74;
      }
    }

LABEL_73:
    v11 = 0;
    v43 = 0;
LABEL_74:
    if (v43 >= v64)
    {
      v32 = 0;
      v31 = 0;
      if (!*a6)
      {
        goto LABEL_81;
      }

      goto LABEL_100;
    }

LABEL_75:
    v48 = *(a5 + 8 * v43);
    if (v48)
    {
      if (JSValueIsNull(this, *(a5 + 8 * v43)) || JSValueIsUndefined(this, v48) || (v50 = JSValueToObject(this, v48, 0), JSObjectIsFunction(this, v50)))
      {
        v31 = 0;
        *a6 = WebKit::toJSError(this, @"runtime.sendMessage()", &cfstr_Message_0.isa, &cfstr_AnObjectIsExpe.isa, v49);
        Undefined = JSValueMakeUndefined(this);
        v32 = 0;
        goto LABEL_45;
      }

      IsUndefined = WebKit::serializeJSObject(this, v48, a6, v51);
      v52 = v19;
      v30 = v43 + 1;
      v31 = IsUndefined;
    }

    else
    {
      v52 = v19;
      v31 = 0;
      v30 = v43;
    }

    v32 = 0;
    if (v43 >= v52 || v30 >= v64)
    {
      goto LABEL_27;
    }

    if (v30 < a4)
    {
      v54 = *(a5 + 8 * v30);
      if (v54 && ((WebKit::toJSValue(this, v54, v14), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 _isDictionary], v55, (v56 & 1) != 0) || JSValueIsNull(this, v54) || JSValueIsUndefined(this, v54)))
      {
        v32 = WebKit::toNSDictionary(this, v54, 0, 0);
        ++v30;
      }

      else
      {
        v32 = 0;
      }

LABEL_27:
      if (!*a6)
      {
        if (v31)
        {
          if (v30 < v64)
          {
            *a6 = WebKit::toJSError(this, @"runtime.sendMessage()", 0, &cfstr_AnUnknownArgum.isa, v15);
            v53 = JSValueMakeUndefined(this);
          }

          else
          {
            if (v18)
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
              v18 = v67;
            }

            WebKit::toWebPage(this, buf);
            v34 = *buf;
            if (*buf)
            {
              GlobalContext = JSContextGetGlobalContext(this);
              WebKit::WebFrame::frameForContext(GlobalContext, v36, v71);
              if (*v71)
              {
                v37 = *(v34 + 1832);
                *v70 = v18;
                v66 = 0;
                WebKit::WebExtensionAPIRuntime::sendMessage(v65, v37, *v71, v11, v31, v32, v70, &v66);
                v39 = v66;
                v40 = *v70;
                *v70 = 0;
                if (v40)
                {
                  WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v40);
                }

                if (v39)
                {
                  *a6 = WebKit::toJSError(this, @"runtime.sendMessage()", 0, v39, v38);
LABEL_39:
                  Undefined = JSValueMakeUndefined(this);
                }

                else if (!Undefined)
                {
                  goto LABEL_39;
                }

                if (*v71)
                {
                  CFRelease(*(*v71 + 8));
                }

                v18 = 0;
LABEL_43:
                if (*buf)
                {
                  CFRelease(*(*buf + 8));
                }

LABEL_45:
                if (v18)
                {
                  WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v18);
                }

                v41 = v32;
LABEL_48:

                goto LABEL_49;
              }

              v61 = qword_1ED640AB8;
              if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
              {
                *v70 = 0;
                _os_log_error_impl(&dword_19D52D000, v61, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v70, 2u);
                if (Undefined)
                {
                  goto LABEL_108;
                }
              }

              else if (Undefined)
              {
LABEL_108:
                Undefined = WebKit::toJSRejectedPromise(this, @"runtime.sendMessage()", 0, &cfstr_AnUnknownError.isa, v62);
                if (Undefined)
                {
                  goto LABEL_43;
                }
              }

              Undefined = JSValueMakeUndefined(this);
              goto LABEL_43;
            }

            v59 = qword_1ED640AB8;
            if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
            {
              *v71 = 0;
              _os_log_error_impl(&dword_19D52D000, v59, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v71, 2u);
              if (Undefined)
              {
                goto LABEL_104;
              }
            }

            else if (Undefined)
            {
LABEL_104:
              Undefined = WebKit::toJSRejectedPromise(this, @"runtime.sendMessage()", 0, &cfstr_AnUnknownError.isa, v60);
              if (Undefined)
              {
                goto LABEL_45;
              }
            }

            v53 = JSValueMakeUndefined(this);
          }

LABEL_82:
          Undefined = v53;
          goto LABEL_45;
        }

LABEL_81:
        v31 = 0;
        *a6 = WebKit::toJSError(this, @"runtime.sendMessage()", &cfstr_Message_0.isa, &cfstr_AJsonSerializa.isa, v15);
        v53 = JSValueMakeUndefined(this);
        goto LABEL_82;
      }

LABEL_100:
      v53 = JSValueMakeUndefined(this);
      goto LABEL_82;
    }

    __break(1u);
LABEL_113:
    WTF::fastFree(IsUndefined, v13);
LABEL_63:
    v46 = *v70;
    *v70 = 0;
    if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v13);
    }
  }

  *a6 = WebKit::toJSError(this, @"runtime.sendMessage()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
LABEL_49:
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

void sub_19D87DB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a19)
  {
    CFRelease(*(a19 + 8));
  }

  if (a21)
  {
    CFRelease(*(a21 + 8));
  }

  if (v23)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v23);
  }

  if (*(a12 + 48) == 1)
  {
    (*(*(a12 + 40) + 8))();
  }

  else
  {
    --*(a12 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPIRuntime::connect(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, id *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
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
      if (*v47)
      {
        v37 = *v47 + 16;
      }

      else
      {
        v37 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v49 = 2082;
      v50 = v36;
      v51 = 2082;
      v52 = v37;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.connect() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v39 = *v47;
      *v47 = 0;
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

      v40 = *v46;
      *v46 = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v38);
      }
    }

    if (a4 == 1)
    {
      v21 = WebKit::toJSValue(this, *a5, v14);
      v22 = [v21 _isDictionary];

      if ((v22 & 1) != 0 || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v24 = WebKit::toJSValue(this, *a5, v23);
        v25 = [v24 _isDictionary];

        if ((v25 & 1) == 0 && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
        {
LABEL_66:
          v43 = @"an object is expected";
          v44 = @"options";
LABEL_68:
          *a6 = WebKit::toJSError(this, @"runtime.connect()", &v44->isa, &v43->isa, v16);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_34;
        }

        v20 = WebKit::toNSDictionary(this, *a5, 0, 0);
        v19 = 0;
      }

      else
      {
        if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
        {
          goto LABEL_67;
        }

        v19 = WebKit::toNSString(this, *a5, 2);
        v20 = 0;
      }
    }

    else
    {
      if (a4 == 2)
      {
        if (JSValueIsString(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
        {
          v17 = WebKit::toJSValue(this, a5[1], v15);
          v18 = [v17 _isDictionary];

          if ((v18 & 1) != 0 || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
          {
            v19 = WebKit::toNSString(this, *a5, 2);
            v20 = WebKit::toNSDictionary(this, a5[1], 0, 0);
            goto LABEL_20;
          }

          goto LABEL_66;
        }

LABEL_67:
        v43 = @"a string is expected";
        v44 = @"extensionID";
        goto LABEL_68;
      }

      v20 = 0;
      v19 = 0;
    }

LABEL_20:
    WebKit::toWebPage(this, buf);
    v26 = *buf;
    if (!*buf)
    {
      v41 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v47 = 0;
        _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v47, 2u);
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_33;
    }

    GlobalContext = JSContextGetGlobalContext(this);
    WebKit::WebFrame::frameForContext(GlobalContext, v28, v47);
    if (!*v47)
    {
      v42 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v46 = 0;
        _os_log_error_impl(&dword_19D52D000, v42, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v46, 2u);
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_31;
    }

    v29 = *(v26 + 1832);
    v45 = 0;
    WebKit::WebExtensionAPIRuntime::connect(v12, v29, *v47, this, v19, v20, &v45, v46);
    v30 = v45;
    if (*v46)
    {
      v31 = (*v46 + 40);
    }

    else
    {
      v31 = 0;
    }

    Undefined = WebKit::JSWebExtensionWrapper::wrap(this, v31);
    v34 = *v46;
    *v46 = 0;
    if (v34)
    {
      if (*(v34 + 12) == 1)
      {
        (*(*(v34 + 5) + 8))();
        if (!v30)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }

      --*(v34 + 12);
    }

    if (!v30)
    {
      goto LABEL_29;
    }

LABEL_55:
    *a6 = WebKit::toJSError(this, @"runtime.connect()", 0, v30, v32);
    Undefined = JSValueMakeUndefined(this);
LABEL_29:

    if (*v47)
    {
      CFRelease(*(*v47 + 8));
    }

LABEL_31:
    if (*buf)
    {
      CFRelease(*(*buf + 8));
    }

LABEL_33:

LABEL_34:
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

void sub_19D87E324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::runtimeIdentifier(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIRuntime(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter runtime.id in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIRuntime::runtimeIdentifier(v7);
    v10 = WebKit::toJSValueRef(this, v9, 1);

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

void sub_19D87E688(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::onConnect(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIRuntime(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter runtime.onConnect in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIRuntime::onConnect(v7);
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

void sub_19D87E940(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::onMessage(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIRuntime(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter runtime.onMessage in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIRuntime::onMessage(v7);
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

void sub_19D87EBEC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::getPlatformInfo(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v21 = "argument";
      }

      else
      {
        v21 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v30)
      {
        v22 = v30 + 16;
      }

      else
      {
        v22 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v32 = 2082;
      v33 = v21;
      v34 = 2082;
      v35 = v22;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.getPlatformInfo() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v24 = v30;
      v30 = 0;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::fastFree(v24, v23);
        }

        else
        {
          --*v24;
        }
      }

      v25 = v29;
      v29 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
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
        *a6 = WebKit::toJSError(this, @"runtime.getPlatformInfo()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    WebKit::toJSCallbackHandler(this, *a5, (v12 + 40), buf);
    v16 = *buf;
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
      v30 = resolve;
      *buf = this;
      v29 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v26, buf, &v30, &v29);
      v16 = v26;
    }

    *buf = v16;
    WebKit::WebExtensionAPIRuntime::getPlatformInfo(v12, buf);
    v18 = *buf;
    *buf = 0;
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

void sub_19D87EFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::getBackgroundPage(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v21 = "argument";
      }

      else
      {
        v21 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v30)
      {
        v22 = v30 + 16;
      }

      else
      {
        v22 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v32 = 2082;
      v33 = v21;
      v34 = 2082;
      v35 = v22;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.getBackgroundPage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v24 = v30;
      v30 = 0;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::fastFree(v24, v23);
        }

        else
        {
          --*v24;
        }
      }

      v25 = v29;
      v29 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
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
        *a6 = WebKit::toJSError(this, @"runtime.getBackgroundPage()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    WebKit::toJSCallbackHandler(this, *a5, (v12 + 40), buf);
    v16 = *buf;
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
      v30 = resolve;
      *buf = this;
      v29 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v26, buf, &v30, &v29);
      v16 = v26;
    }

    *buf = v16;
    WebKit::WebExtensionAPIRuntime::getBackgroundPage(v12, buf);
    v18 = *buf;
    *buf = 0;
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

void sub_19D87F41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::setUninstallURL(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
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
      if (v43)
      {
        v32 = v43 + 16;
      }

      else
      {
        v32 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v45 = 2082;
      v46 = v31;
      v47 = 2082;
      v48 = v32;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.setUninstallURL() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v34 = v43;
      v43 = 0;
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

      v35 = v42;
      v42 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v33);
      }
    }

    if (a4 == 1)
    {
      if (JSValueIsString(this, *a5))
      {
        v20 = MEMORY[0x1E695DFF8];
        v21 = WebKit::toNSString(this, *a5, 2);
        v16 = [v20 URLWithString:v21];

        v15 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      if (a4 != 2)
      {
        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"runtime.setUninstallURL()", 0, &cfstr_ARequiredArgum.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_31;
        }

        v15 = 0;
        goto LABEL_7;
      }

      if (JSValueIsString(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v22 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v23 = MEMORY[0x1E695DFF8];
          v24 = WebKit::toNSString(this, *a5, 2);
          v16 = [v23 URLWithString:v24];

          WebKit::toJSCallbackHandler(this, a5[1], (v12 + 40), buf);
          v15 = *buf;
LABEL_18:
          if (!v16)
          {
LABEL_7:
            v16 = 0;
            *a6 = WebKit::toJSError(this, @"runtime.setUninstallURL()", &cfstr_Url.isa, &cfstr_AStringIsExpec.isa, v14);
            v17 = JSValueMakeUndefined(this);
            goto LABEL_8;
          }

          if ([v16 isFileURL])
          {
            *a6 = WebKit::toJSError(this, @"runtime.setUninstallURL()", &cfstr_Url.isa, &cfstr_ItCannotBeALoc.isa, v25);
            v17 = JSValueMakeUndefined(this);
LABEL_8:
            Undefined = v17;
            if (v15)
            {
              WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
            }

            goto LABEL_29;
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
            v43 = resolve;
            *buf = this;
            v42 = reject;
            WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v39, buf, &v43, &v42);
            v15 = v39;
          }

          MEMORY[0x19EB01DE0](&v38, v16);
          v26 = WebKit::WebExtensionCallbackHandler::call(v15);
          if (v15)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
          }

          v28 = v38;
          v38 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v27);
            if (Undefined)
            {
              goto LABEL_29;
            }
          }

          else if (Undefined)
          {
LABEL_29:
            v29 = v16;
LABEL_30:

LABEL_31:
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

          Undefined = JSValueMakeUndefined(this);
          goto LABEL_29;
        }

        v36 = @"a function is expected";
        v37 = @"callback";
LABEL_54:
        v29 = 0;
        *a6 = WebKit::toJSError(this, @"runtime.setUninstallURL()", &v37->isa, &v36->isa, v19);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_30;
      }
    }

    v36 = @"a string is expected";
    v37 = @"url";
    goto LABEL_54;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D87FA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  if (*(v17 + 48) == 1)
  {
    (*(*(v17 + 40) + 8))(v17 + 40);
  }

  else
  {
    --*(v17 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIRuntime::openOptionsPage(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v21 = "argument";
      }

      else
      {
        v21 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v30)
      {
        v22 = v30 + 16;
      }

      else
      {
        v22 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v32 = 2082;
      v33 = v21;
      v34 = 2082;
      v35 = v22;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.openOptionsPage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v24 = v30;
      v30 = 0;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::fastFree(v24, v23);
        }

        else
        {
          --*v24;
        }
      }

      v25 = v29;
      v29 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
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
        *a6 = WebKit::toJSError(this, @"runtime.openOptionsPage()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_15;
      }
    }

    WebKit::toJSCallbackHandler(this, *a5, (v12 + 40), buf);
    v16 = *buf;
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
      v30 = resolve;
      *buf = this;
      v29 = reject;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v26, buf, &v30, &v29);
      v16 = v26;
    }

    *buf = v16;
    WebKit::WebExtensionAPIRuntime::openOptionsPage(v12, buf);
    v18 = *buf;
    *buf = 0;
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

void sub_19D87FED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::reload(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v9)
  {
    v10 = v9;
    ++*(v9 + 48);
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
      _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function runtime.reload() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    WebKit::WebExtensionAPIRuntime::reload(v10, v12);
    Undefined = JSValueMakeUndefined(this);
    if (*(v10 + 48) == 1)
    {
      (*(*(v10 + 40) + 8))(v10 + 40);
    }

    else
    {
      --*(v10 + 48);
    }

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D8801E4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIRuntime::sendNativeMessage(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, unint64_t a6, const OpaqueJSValue **a7)
{
  v60 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (!v11)
  {

    return JSValueMakeUndefined(this);
  }

  v12 = v11;
  ++*(v11 + 48);
  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v41 = a6;
    if (a4 == 1)
    {
      v42 = "argument";
    }

    else
    {
      v42 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v54)
    {
      v43 = *v54 + 16;
    }

    else
    {
      v43 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v56 = 2082;
    v57 = v42;
    v58 = 2082;
    v59 = v43;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.sendNativeMessage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    IsUndefined = *v54;
    *v54 = 0;
    a6 = v41;
    if (!IsUndefined)
    {
      goto LABEL_75;
    }

    if (*IsUndefined != 1)
    {
      --*IsUndefined;
      goto LABEL_75;
    }

    goto LABEL_93;
  }

  while (1)
  {

    if (a4 == 3)
    {
      if (JSValueIsString(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]) || (v22 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v22)))
        {
          v45 = @"an object is expected";
          v46 = @"message";
        }

        else
        {
          if (JSValueIsObject(this, a5[2]) && (v23 = JSValueToObject(this, a5[2], 0), JSObjectIsFunction(this, v23)) || JSValueIsNull(this, a5[2]) || JSValueIsUndefined(this, a5[2]))
          {
            v24 = WebKit::toNSString(this, *a5, 2);
            v26 = WebKit::serializeJSObject(this, a5[1], a6, v25);
            WebKit::toJSCallbackHandler(this, a5[2], (v12 + 40), buf);
            v13 = *buf;
            v20 = -1;
            v27 = v24;
            v28 = v26;
            goto LABEL_24;
          }

          v45 = @"a function is expected";
          v46 = @"callback";
        }
      }

      else
      {
        v45 = @"a string is expected";
        v46 = @"applicationID";
      }

      v33 = 0;
      *a6 = WebKit::toJSError(this, @"runtime.sendNativeMessage()", &v46->isa, &v45->isa, v21);
      Undefined = JSValueMakeUndefined(this);
      v27 = 0;
      goto LABEL_40;
    }

    if (!a4)
    {
      break;
    }

    v17 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v28 = 0;
      v27 = 0;
      v13 = 0;
      if (!*a6)
      {
        goto LABEL_45;
      }

      goto LABEL_85;
    }

    exception = a6;
    if (a4 == 1)
    {
      a6 = 0;
      v20 = 0;
      v13 = 0;
    }

    else
    {
      v18 = a5[v17];
      if (v18 && (JSValueIsObject(this, a5[v17]) && (v19 = JSValueToObject(this, v18, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, v18) || (IsUndefined = JSValueIsUndefined(this, v18), IsUndefined)))
      {
        IsUndefined = WebKit::toJSCallbackHandler(this, v18, (v12 + 40), buf);
        v13 = *buf;
        v20 = a4 - 2;
        a6 = 1;
      }

      else
      {
        v13 = 0;
        a6 = 0;
        v20 = a4 - 1;
      }

      if (v20 >= a4)
      {
        goto LABEL_92;
      }
    }

    v36 = a5[v20];
    if (v36)
    {
      if (JSValueIsNull(this, a5[v20]) || JSValueIsUndefined(this, v36) || (v38 = JSValueToObject(this, v36, 0), JSObjectIsFunction(this, v38)))
      {
        v28 = 0;
        *exception = WebKit::toJSError(this, @"runtime.sendNativeMessage()", &cfstr_Message_0.isa, &cfstr_AnObjectIsExpe.isa, v37);
        Undefined = JSValueMakeUndefined(this);
        v27 = 0;
        goto LABEL_37;
      }

      IsUndefined = WebKit::serializeJSObject(this, v36, exception, v39);
      --v20;
      v28 = IsUndefined;
    }

    else
    {
      v28 = 0;
    }

    v27 = 0;
    if (a6 >= v17)
    {
      a6 = exception;
      goto LABEL_24;
    }

    a6 = exception;
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v20 < a4)
    {
      v40 = a5[v20];
      if (v40 && (JSValueIsString(this, v40) || JSValueIsNull(this, v40) || JSValueIsUndefined(this, v40)))
      {
        v27 = WebKit::toNSString(this, v40, 2);
        --v20;
      }

      else
      {
        v27 = 0;
      }

LABEL_24:
      if (!*a6)
      {
        if (v28)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            if (v13)
            {
              Undefined = 0;
            }

            else
            {
              reject = 0;
              resolve = 0;
              Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
              *buf = this;
              v53 = reject;
              *v54 = resolve;
              WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v50, buf, v54, &v53);
              v13 = v50;
            }

            GlobalContext = JSContextGetGlobalContext(this);
            WebKit::WebFrame::frameForContext(GlobalContext, v31, buf);
            if (*buf)
            {
              *v54 = v13;
              WebKit::WebExtensionAPIRuntime::sendNativeMessage(v12, *buf, v27, v28, v54);
              v32 = *v54;
              *v54 = 0;
              if (v32)
              {
                WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v32);
              }

              v13 = 0;
              if (!Undefined)
              {
LABEL_34:
                Undefined = JSValueMakeUndefined(this);
              }
            }

            else
            {
              v47 = qword_1ED640AB8;
              if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
              {
                *v54 = 0;
                _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v54, 2u);
                if (!Undefined)
                {
                  goto LABEL_34;
                }
              }

              else if (!Undefined)
              {
                goto LABEL_34;
              }

              Undefined = WebKit::toJSRejectedPromise(this, @"runtime.sendNativeMessage()", 0, &cfstr_AnUnknownError.isa, v48);
              if (!Undefined)
              {
                goto LABEL_34;
              }
            }

            if (*buf)
            {
              CFRelease(*(*buf + 8));
            }

LABEL_37:
            if (v13)
            {
              WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v13);
            }

            v33 = v28;
LABEL_40:

            goto LABEL_41;
          }

          *a6 = WebKit::toJSError(this, @"runtime.sendNativeMessage()", 0, &cfstr_AnUnknownArgum.isa, v16);
          v35 = JSValueMakeUndefined(this);
LABEL_46:
          Undefined = v35;
          goto LABEL_37;
        }

LABEL_45:
        v28 = 0;
        *a6 = WebKit::toJSError(this, @"runtime.sendNativeMessage()", &cfstr_Message_0.isa, &cfstr_AJsonSerializa.isa, v16);
        v35 = JSValueMakeUndefined(this);
        goto LABEL_46;
      }

LABEL_85:
      v35 = JSValueMakeUndefined(this);
      goto LABEL_46;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    WTF::fastFree(IsUndefined, v15);
LABEL_75:
    v44 = v53;
    v53 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v15);
    }
  }

  *a6 = WebKit::toJSError(this, @"runtime.sendNativeMessage()", 0, &cfstr_ARequiredArgum.isa, v16);
  Undefined = JSValueMakeUndefined(this);
LABEL_41:
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

void sub_19D880B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (*(v17 + 48) == 1)
  {
    (*(*(v17 + 40) + 8))(v17 + 40);
  }

  else
  {
    --*(v17 + 48);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIRuntime::connectNative(WebKit::JSWebExtensionAPIRuntime *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIRuntime(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v21 = "argument";
      }

      else
      {
        v21 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (*v27)
      {
        v22 = *v27 + 16;
      }

      else
      {
        v22 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v29 = 2082;
      v30 = v21;
      v31 = 2082;
      v32 = v22;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function runtime.connectNative() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v24 = *v27;
      *v27 = 0;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::fastFree(v24, v23);
        }

        else
        {
          --*v24;
        }
      }

      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v23);
      }
    }

    if (a4 == 1)
    {
      if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"runtime.connectNative()", &cfstr_Applicationid.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
LABEL_18:
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

      v15 = WebKit::toNSString(this, *a5, 2);
    }

    else
    {
      v15 = 0;
    }

    WebKit::toWebPage(this, buf);
    v16 = *buf;
    if (*buf)
    {
      WebKit::WebExtensionAPIRuntime::connectNative(v12, *(*buf + 1832), this, v15, v27);
      if (*v27)
      {
        v17 = (*v27 + 40);
      }

      else
      {
        v17 = 0;
      }

      Undefined = WebKit::JSWebExtensionWrapper::wrap(this, v17);
      v19 = *v27;
      *v27 = 0;
      if (v19)
      {
        if (*(v19 + 12) == 1)
        {
          (*(*(v19 + 5) + 8))();
        }

        else
        {
          --*(v19 + 12);
        }
      }

      CFRelease(*(v16 + 8));
    }

    else
    {
      v25 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v27, 2u);
      }

      Undefined = JSValueMakeUndefined(this);
    }

    goto LABEL_18;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D881034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
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

WebKit::JSWebExtensionAPIScripting *WebKit::toWebExtensionAPIScripting(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIScripting::scriptingClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIScripting::scriptingClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIScripting::scriptingClass(WebKit::JSWebExtensionAPIScripting *this)
{
  result = WebKit::JSWebExtensionAPIScripting::scriptingClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIScripting::scriptingClass(void)::jsClass)
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
    v5.className = "Scripting";
    v5.staticFunctions = &WebKit::JSWebExtensionAPIScripting::staticFunctions(void)::functions;
    v5.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v5.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v5);
    WebKit::JSWebExtensionAPIScripting::scriptingClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPIScripting::executeScript(WebKit::JSWebExtensionAPIScripting *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIScripting(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function scripting.executeScript() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"scripting.executeScript()", 0, &cfstr_ARequiredArgum.isa, v15);
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
      *a6 = WebKit::toJSError(this, @"scripting.executeScript()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIScripting::executeScript(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"scripting.executeScript()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"scripting.executeScript()", &v38->isa, &v37->isa, v20);
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

void sub_19D881718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIScripting::insertCSS(WebKit::JSWebExtensionAPIScripting *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIScripting(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function scripting.insertCSS() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"scripting.insertCSS()", 0, &cfstr_ARequiredArgum.isa, v15);
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
      *a6 = WebKit::toJSError(this, @"scripting.insertCSS()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIScripting::insertCSS(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"scripting.insertCSS()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"scripting.insertCSS()", &v38->isa, &v37->isa, v20);
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

void sub_19D881D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIScripting::removeCSS(WebKit::JSWebExtensionAPIScripting *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIScripting(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function scripting.removeCSS() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"scripting.removeCSS()", 0, &cfstr_ARequiredArgum.isa, v15);
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
      *a6 = WebKit::toJSError(this, @"scripting.removeCSS()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
    WebKit::WebExtensionAPIScripting::removeCSS(v12, v21, buf, &v39);
    v28 = v39;
    v29 = *buf;
    *buf = 0;
    if (v29)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
    }

    if (v28)
    {
      *a6 = WebKit::toJSError(this, @"scripting.removeCSS()", 0, v28, v27);
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
  *a6 = WebKit::toJSError(this, @"scripting.removeCSS()", &v38->isa, &v37->isa, v20);
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

void sub_19D8822E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIScripting::registerContentScripts(WebKit::JSWebExtensionAPIScripting *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIScripting(this, a3, a3);
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
      v32 = "argument";
    }

    else
    {
      v32 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v45)
    {
      v33 = v45 + 16;
    }

    else
    {
      v33 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v32;
    v49 = 2082;
    v50 = v33;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function scripting.registerContentScripts() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v35 = v45;
    v45 = 0;
    if (v35)
    {
      if (*v35 == 1)
      {
        WTF::fastFree(v35, v34);
      }

      else
      {
        --*v35;
      }
    }

    v36 = v44;
    v44 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v34);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsArray(this, *a5))
    {
      v18 = *a5;
      v19 = objc_opt_class();
      v21 = WebKit::toNSArray(this, v18, v19, v20);
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
      v15 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"scripting.registerContentScripts()", 0, &cfstr_ARequiredArgum.isa, v14);
    v37 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  if (!JSValueIsArray(this, *a5))
  {
LABEL_47:
    v38 = @"an array is expected";
    v39 = @"scripts";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, a5[1]) && (v22 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v23 = *a5;
    v24 = objc_opt_class();
    v21 = WebKit::toNSArray(this, v23, v24, v25);
    v26 = a5[1];
    v27 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v26, v27, buf);
    v15 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"scripting.registerContentScripts()", &cfstr_Scripts.isa, &cfstr_AnArrayIsExpec.isa, v14);
      Undefined = JSValueMakeUndefined(this);
      if (v15)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
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
    v45 = resolve;
    *buf = this;
    v44 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, &v45, &v44);
    v15 = v41;
LABEL_22:
    *buf = v15;
    v40 = 0;
    WebKit::WebExtensionAPIScripting::registerContentScripts(v12, v21, buf, &v40);
    v29 = v40;
    v30 = *buf;
    *buf = 0;
    if (v30)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v30);
    }

    if (v29)
    {
      *a6 = WebKit::toJSError(this, @"scripting.registerContentScripts()", 0, v29, v28);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"scripting.registerContentScripts()", &v39->isa, &v38->isa, v17);
  v37 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v37;
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

void sub_19D8828C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIScripting::getRegisteredContentScripts(WebKit::JSWebExtensionAPIScripting *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIScripting(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function scripting.getRegisteredContentScripts() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
        WebKit::WebExtensionAPIScripting::getRegisteredContentScripts(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"scripting.getRegisteredContentScripts()", 0, v30, v29);
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
  *a6 = WebKit::toJSError(this, @"scripting.getRegisteredContentScripts()", &v41->isa, &v40->isa, v17);
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

void sub_19D882F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIScripting::unregisterContentScripts(WebKit::JSWebExtensionAPIScripting *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIScripting(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function scripting.unregisterContentScripts() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
        WebKit::WebExtensionAPIScripting::unregisterContentScripts(v12, v19, buf, &v42);
        v30 = v42;
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v31);
        }

        if (v30)
        {
          *a6 = WebKit::toJSError(this, @"scripting.unregisterContentScripts()", 0, v30, v29);
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
  *a6 = WebKit::toJSError(this, @"scripting.unregisterContentScripts()", &v41->isa, &v40->isa, v17);
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

void sub_19D8835C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIScripting::updateContentScripts(WebKit::JSWebExtensionAPIScripting *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIScripting(this, a3, a3);
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
      v32 = "argument";
    }

    else
    {
      v32 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (v45)
    {
      v33 = v45 + 16;
    }

    else
    {
      v33 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v32;
    v49 = 2082;
    v50 = v33;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function scripting.updateContentScripts() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v35 = v45;
    v45 = 0;
    if (v35)
    {
      if (*v35 == 1)
      {
        WTF::fastFree(v35, v34);
      }

      else
      {
        --*v35;
      }
    }

    v36 = v44;
    v44 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v34);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsArray(this, *a5))
    {
      v18 = *a5;
      v19 = objc_opt_class();
      v21 = WebKit::toNSArray(this, v18, v19, v20);
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
      v15 = 0;
      goto LABEL_8;
    }

    *a6 = WebKit::toJSError(this, @"scripting.updateContentScripts()", 0, &cfstr_ARequiredArgum.isa, v14);
    v37 = JSValueMakeUndefined(this);
    goto LABEL_49;
  }

  if (!JSValueIsArray(this, *a5))
  {
LABEL_47:
    v38 = @"an array is expected";
    v39 = @"scripts";
    goto LABEL_48;
  }

  if (JSValueIsObject(this, a5[1]) && (v22 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v22)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
  {
    v23 = *a5;
    v24 = objc_opt_class();
    v21 = WebKit::toNSArray(this, v23, v24, v25);
    v26 = a5[1];
    v27 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v26, v27, buf);
    v15 = *buf;
    if (!v21)
    {
LABEL_8:
      *a6 = WebKit::toJSError(this, @"scripting.updateContentScripts()", &cfstr_Scripts.isa, &cfstr_AnArrayIsExpec.isa, v14);
      Undefined = JSValueMakeUndefined(this);
      if (v15)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
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
    v45 = resolve;
    *buf = this;
    v44 = reject;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, &v45, &v44);
    v15 = v41;
LABEL_22:
    *buf = v15;
    v40 = 0;
    WebKit::WebExtensionAPIScripting::updateContentScripts(v12, v21, buf, &v40);
    v29 = v40;
    v30 = *buf;
    *buf = 0;
    if (v30)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v30);
    }

    if (v29)
    {
      *a6 = WebKit::toJSError(this, @"scripting.updateContentScripts()", 0, v29, v28);
    }

    else if (Undefined)
    {
LABEL_27:

      goto LABEL_28;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_48:
  *a6 = WebKit::toJSError(this, @"scripting.updateContentScripts()", &v39->isa, &v38->isa, v17);
  v37 = JSValueMakeUndefined(this);
LABEL_49:
  Undefined = v37;
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

void sub_19D883B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

WebKit::JSWebExtensionAPIStorage *WebKit::toWebExtensionAPIStorage(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIStorage::storageClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIStorage::storageClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIStorage::storageClass(WebKit::JSWebExtensionAPIStorage *this)
{
  result = WebKit::JSWebExtensionAPIStorage::storageClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIStorage::storageClass(void)::jsClass)
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
    v6.className = "Storage";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIStorage::staticValues(void)::values;
    v6.staticFunctions = 0;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPIStorage::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPIStorage::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPIStorage::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIStorage::storageClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPIStorage::getPropertyNames(WebKit::JSWebExtensionAPIStorage *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPIStorage(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v11);
    v10[0] = "session";
    v10[1] = 8;
    v8 = v11;
    if (WebKit::WebExtensionAPIStorage::isPropertyAllowed(v7, v10, v11))
    {
      v9 = JSStringCreateWithUTF8CString("session");
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
      (*(*(v7 + 40) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 48);
    }
  }
}

void sub_19D883EA8(_Unwind_Exception *exception_object)
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

BOOL WebKit::JSWebExtensionAPIStorage::hasProperty(WebKit::JSWebExtensionAPIStorage *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPIStorage(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v12);
  if (JSStringIsEqualToUTF8CString(a3, "session"))
  {
    v11[0] = "session";
    v11[1] = 8;
    v8 = v12;
    isPropertyAllowed = WebKit::WebExtensionAPIStorage::isPropertyAllowed(v7, v11, v12);
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

void sub_19D884004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPIStorage::getProperty(WebKit::JSWebExtensionAPIStorage *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = WebKit::toWebExtensionAPIStorage(this, a2, a3);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 48);
    WebKit::toWebPage(this, &v22);
    if (JSStringIsEqualToUTF8CString(a3, "session") && (*&buf = "session", *(&buf + 1) = 8, v10 = v22, WebKit::WebExtensionAPIStorage::isPropertyAllowed(v9, &buf, v22)))
    {
      v12 = WebKit::toWebExtensionAPIStorage(this, a2, v11);
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
          _os_log_debug_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEBUG, "Called getter storage.session in %{public}s world", &buf, 0xCu);
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

        v15 = WebKit::WebExtensionAPIStorage::session(v13);
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

void sub_19D884370(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPIStorage::local(WebKit::JSWebExtensionAPIStorage *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIStorage(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter storage.local in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIStorage::local(v7);
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

void sub_19D884678(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIStorage::sync(WebKit::JSWebExtensionAPIStorage *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIStorage(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter storage.sync in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIStorage::sync(v7);
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

void sub_19D884924(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIStorage::onChanged(WebKit::JSWebExtensionAPIStorage *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIStorage(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter storage.onChanged in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIStorage::onChanged(v7);
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

void sub_19D884BD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

WebKit::JSWebExtensionAPIStorageArea *WebKit::toWebExtensionAPIStorageArea(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPIStorageArea::storageAreaClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPIStorageArea::storageAreaClass(result);
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

JSClassRef WebKit::JSWebExtensionAPIStorageArea::storageAreaClass(WebKit::JSWebExtensionAPIStorageArea *this)
{
  result = WebKit::JSWebExtensionAPIStorageArea::storageAreaClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPIStorageArea::storageAreaClass(void)::jsClass)
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
    v6.className = "StorageArea";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPIStorageArea::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPIStorageArea::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPIStorageArea::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPIStorageArea::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPIStorageArea::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPIStorageArea::storageAreaClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPIStorageArea::getPropertyNames(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPIStorageArea(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v16);
    if (*(v7 + 8))
    {
      v8 = v16;
    }

    else
    {
      v14 = "setAccessLevel";
      v15 = 15;
      v8 = v16;
      if (WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v16))
      {
        v9 = JSStringCreateWithUTF8CString("setAccessLevel");
        JSPropertyNameAccumulatorAddName(a3, v9);
        if (v9)
        {
          JSStringRelease(v9);
        }
      }
    }

    v14 = "QUOTA_BYTES_PER_ITEM";
    v15 = 21;
    if (WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v8))
    {
      v10 = JSStringCreateWithUTF8CString("QUOTA_BYTES_PER_ITEM");
      JSPropertyNameAccumulatorAddName(a3, v10);
      if (v10)
      {
        JSStringRelease(v10);
      }
    }

    v14 = "MAX_ITEMS";
    v15 = 10;
    if (WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v8))
    {
      v11 = JSStringCreateWithUTF8CString("MAX_ITEMS");
      JSPropertyNameAccumulatorAddName(a3, v11);
      if (v11)
      {
        JSStringRelease(v11);
      }
    }

    v14 = "MAX_WRITE_OPERATIONS_PER_HOUR";
    v15 = 30;
    if (WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v8))
    {
      v12 = JSStringCreateWithUTF8CString("MAX_WRITE_OPERATIONS_PER_HOUR");
      JSPropertyNameAccumulatorAddName(a3, v12);
      if (v12)
      {
        JSStringRelease(v12);
      }
    }

    v14 = "MAX_WRITE_OPERATIONS_PER_MINUTE";
    v15 = 32;
    if (WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v8))
    {
      v13 = JSStringCreateWithUTF8CString("MAX_WRITE_OPERATIONS_PER_MINUTE");
      JSPropertyNameAccumulatorAddName(a3, v13);
      if (v13)
      {
        JSStringRelease(v13);
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

void sub_19D884FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

BOOL WebKit::JSWebExtensionAPIStorageArea::hasProperty(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPIStorageArea(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v16);
  v8 = *(v7 + 8);
  if (!JSStringIsEqualToUTF8CString(a3, "setAccessLevel"))
  {
    if (JSStringIsEqualToUTF8CString(a3, "QUOTA_BYTES_PER_ITEM"))
    {
      v14 = "QUOTA_BYTES_PER_ITEM";
      v15 = 21;
      v9 = v16;
      isPropertyAllowed = WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v16);
    }

    else if (JSStringIsEqualToUTF8CString(a3, "MAX_ITEMS"))
    {
      v14 = "MAX_ITEMS";
      v15 = 10;
      v9 = v16;
      isPropertyAllowed = WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v16);
    }

    else if (JSStringIsEqualToUTF8CString(a3, "MAX_WRITE_OPERATIONS_PER_HOUR"))
    {
      v14 = "MAX_WRITE_OPERATIONS_PER_HOUR";
      v15 = 30;
      v9 = v16;
      isPropertyAllowed = WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v16);
    }

    else
    {
      IsEqualToUTF8CString = JSStringIsEqualToUTF8CString(a3, "MAX_WRITE_OPERATIONS_PER_MINUTE");
      v9 = v16;
      if (!IsEqualToUTF8CString)
      {
        goto LABEL_4;
      }

      v14 = "MAX_WRITE_OPERATIONS_PER_MINUTE";
      v15 = 32;
      isPropertyAllowed = WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v16);
    }

LABEL_14:
    v10 = isPropertyAllowed;
    goto LABEL_15;
  }

  v9 = v16;
  if (!v8)
  {
    v14 = "setAccessLevel";
    v15 = 15;
    isPropertyAllowed = WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v7, &v14, v16);
    goto LABEL_14;
  }

LABEL_4:
  v10 = 0;
LABEL_15:
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

  return v10;
}

void sub_19D885248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::getProperty(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = WebKit::toWebExtensionAPIStorageArea(this, a2, a3);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 48);
    WebKit::toWebPage(this, &v45);
    v10 = *(v9 + 8);
    if (JSStringIsEqualToUTF8CString(a3, "QUOTA_BYTES_PER_ITEM"))
    {
      *&buf = "QUOTA_BYTES_PER_ITEM";
      *(&buf + 1) = 21;
      v11 = v45;
      if (WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v9, &buf, v45))
      {
        v13 = WebKit::toWebExtensionAPIStorageArea(this, a2, v12);
        v14 = v13;
        if (v13)
        {
          ++*(v13 + 48);
          v15 = qword_1ED640AB8;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::String::utf8();
            if (v47)
            {
              v29 = v47 + 16;
            }

            else
            {
              v29 = 0;
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v29;
            _os_log_debug_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEBUG, "Called getter storageArea.QUOTA_BYTES_PER_ITEM in %{public}s world", &buf, 0xCu);
            v31 = v47;
            v47 = 0;
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

            v32 = v46;
            v46 = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v30);
            }
          }

          Number = JSValueMakeNumber(this, 8192.0);
          goto LABEL_22;
        }

        goto LABEL_81;
      }
    }

    if (JSStringIsEqualToUTF8CString(a3, "MAX_ITEMS"))
    {
      *&buf = "MAX_ITEMS";
      *(&buf + 1) = 10;
      v11 = v45;
      if (WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v9, &buf, v45))
      {
        v18 = WebKit::toWebExtensionAPIStorageArea(this, a2, v17);
        v14 = v18;
        if (v18)
        {
          ++*(v18 + 48);
          v19 = qword_1ED640AB8;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::String::utf8();
            if (v47)
            {
              v33 = v47 + 16;
            }

            else
            {
              v33 = 0;
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v33;
            _os_log_debug_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEBUG, "Called getter storageArea.MAX_ITEMS in %{public}s world", &buf, 0xCu);
            v35 = v47;
            v47 = 0;
            if (v35)
            {
              if (*v35 == 1)
              {
                WTF::fastFree(v35, v34);
              }

              else
              {
                --*v35;
              }
            }

            v36 = v46;
            v46 = 0;
            if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v34);
            }
          }

          Number = JSValueMakeNumber(this, 512.0);
          goto LABEL_22;
        }

LABEL_81:
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_32;
      }
    }

    if (JSStringIsEqualToUTF8CString(a3, "MAX_WRITE_OPERATIONS_PER_HOUR") && (*&buf = "MAX_WRITE_OPERATIONS_PER_HOUR", *(&buf + 1) = 30, v11 = v45, WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v9, &buf, v45)))
    {
      v21 = WebKit::toWebExtensionAPIStorageArea(this, a2, v20);
      v14 = v21;
      if (!v21)
      {
        goto LABEL_81;
      }

      ++*(v21 + 48);
      v22 = qword_1ED640AB8;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::utf8();
        if (v47)
        {
          v37 = v47 + 16;
        }

        else
        {
          v37 = 0;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v37;
        _os_log_debug_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEBUG, "Called getter storageArea.MAX_WRITE_OPERATIONS_PER_HOUR in %{public}s world", &buf, 0xCu);
        v39 = v47;
        v47 = 0;
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

        v40 = v46;
        v46 = 0;
        if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v38);
        }
      }

      Number = JSValueMakeNumber(this, 1800.0);
    }

    else
    {
      if (!JSStringIsEqualToUTF8CString(a3, "MAX_WRITE_OPERATIONS_PER_MINUTE") || (*&buf = "MAX_WRITE_OPERATIONS_PER_MINUTE", *(&buf + 1) = 32, v11 = v45, !WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v9, &buf, v45)))
      {
        if (v10 || !JSStringIsEqualToUTF8CString(a3, "setAccessLevel") || (*&buf = "setAccessLevel", *(&buf + 1) = 15, v11 = v45, !WebKit::WebExtensionAPIStorageArea::isPropertyAllowed(v9, &buf, v45)))
        {
          v26 = JSValueMakeUndefined(this);
          v11 = v45;
          if (!v45)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        Undefined = JSObjectMakeFunctionWithCallback(this, a3, WebKit::JSWebExtensionAPIStorageArea::setAccessLevel);
LABEL_32:
        v26 = Undefined;
        if (!v11)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v24 = WebKit::toWebExtensionAPIStorageArea(this, a2, v23);
      v14 = v24;
      if (!v24)
      {
        goto LABEL_81;
      }

      ++*(v24 + 48);
      v25 = qword_1ED640AB8;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::utf8();
        if (v47)
        {
          v41 = v47 + 16;
        }

        else
        {
          v41 = 0;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v41;
        _os_log_debug_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEBUG, "Called getter storageArea.MAX_WRITE_OPERATIONS_PER_MINUTE in %{public}s world", &buf, 0xCu);
        v43 = v47;
        v47 = 0;
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

        v44 = v46;
        v46 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v42);
        }
      }

      Number = JSValueMakeNumber(this, 120.0);
    }

LABEL_22:
    v26 = Number;
    if (*(v14 + 48) == 1)
    {
      (*(*(v14 + 40) + 8))(v14 + 40);
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      --*(v14 + 48);
      if (!v11)
      {
LABEL_25:
        if (*(v9 + 48) == 1)
        {
          (*(*(v9 + 40) + 8))(v9 + 40);
        }

        else
        {
          --*(v9 + 48);
        }

        return v26;
      }
    }

LABEL_24:
    CFRelease(*(v11 + 1));
    goto LABEL_25;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D885ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
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

  _Unwind_Resume(exception_object);
}

JSValueRef WebKit::JSWebExtensionAPIStorageArea::get(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIStorageArea(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v30 = "argument";
      }

      else
      {
        v30 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (*v42)
      {
        v31 = *v42 + 16;
      }

      else
      {
        v31 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v44 = 2082;
      v45 = v30;
      v46 = 2082;
      v47 = v31;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function storageArea.get() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v33 = *v42;
      *v42 = 0;
      if (v33)
      {
        if (*v33 == 1)
        {
          WTF::fastFree(v33, v32);
        }

        else
        {
          --*v33;
        }
      }

      v34 = v41;
      v41 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v32);
      }
    }

    if (a4 == 1)
    {
      if (!JSValueIsObject(this, *a5) || (v19 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v19)))
      {
        if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
        {
          v16 = WebKit::toNSObject(this, *a5, 0, 1, 1);
          goto LABEL_22;
        }
      }

      if (JSValueIsObject(this, *a5) && (v20 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v20)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v21 = *a5;
        v22 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v21, v22, buf);
        v16 = 0;
LABEL_19:
        v23 = *buf;
        if (*buf)
        {
          DeferredPromise = 0;
          goto LABEL_23;
        }

LABEL_22:
        reject = 0;
        resolve = 0;
        DeferredPromise = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        *buf = this;
        v41 = reject;
        *v42 = resolve;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v38, buf, v42, &v41);
        v23 = v38;
LABEL_23:
        WebKit::toWebPage(this, buf);
        if (*buf)
        {
          v25 = *(*buf + 1832);
          *v42 = v23;
          v37 = 0;
          WebKit::WebExtensionAPIStorageArea::get(v12, v25, v16, v42, &v37);
          v27 = v37;
          v28 = *v42;
          *v42 = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v28);
          }

          if (v27)
          {
            *a6 = WebKit::toJSError(this, @"storageArea.get()", 0, v27, v26);
          }

          else if (DeferredPromise)
          {
            goto LABEL_29;
          }

          DeferredPromise = JSValueMakeUndefined(this);
LABEL_29:

          if (*buf)
          {
            CFRelease(*(*buf + 8));
          }

          goto LABEL_31;
        }

        v35 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          *v42 = 0;
          _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v42, 2u);
          if (DeferredPromise)
          {
LABEL_53:
            DeferredPromise = WebKit::toJSRejectedPromise(this, @"storageArea.get()", 0, &cfstr_AnUnknownError.isa, v36);
            if (DeferredPromise)
            {
              goto LABEL_55;
            }
          }
        }

        else if (DeferredPromise)
        {
          goto LABEL_53;
        }

        DeferredPromise = JSValueMakeUndefined(this);
LABEL_55:
        if (v23)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v23);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (a4 != 2)
      {
        v16 = 0;
        goto LABEL_22;
      }

      if (JSValueIsObject(this, *(a5 + 8)) && (v14 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v14)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        v16 = WebKit::toNSObject(this, *a5, 0, 1, 1);
        v17 = *(a5 + 8);
        v18 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v17, v18, buf);
        goto LABEL_19;
      }
    }

    *a6 = WebKit::toJSError(this, @"storageArea.get()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
    DeferredPromise = JSValueMakeUndefined(this);
    v16 = 0;
LABEL_31:

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

void sub_19D886254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::getKeys(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIStorageArea(this, a3, a3);
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
      if (*v37)
      {
        v27 = *v37 + 16;
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
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function storageArea.getKeys() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v29 = *v37;
      *v37 = 0;
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

    if (a4 != 1)
    {
      goto LABEL_10;
    }

    if (!JSValueIsObject(this, *a5) || (v14 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v14)))
    {
      if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        *a6 = WebKit::toJSError(this, @"storageArea.getKeys()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_18;
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
LABEL_10:
      reject = 0;
      resolve = 0;
      Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
      *buf = this;
      v36 = reject;
      *v37 = resolve;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v33, buf, v37, &v36);
      v18 = v33;
    }

    WebKit::toWebPage(this, buf);
    v20 = *buf;
    if (*buf)
    {
      v21 = *(*buf + 1832);
      *v37 = v18;
      WebKit::WebExtensionAPIStorageArea::getKeys(v12, v21, v37);
      v23 = 0;
      v24 = *v37;
      *v37 = 0;
      if (v24)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v24);
      }

      if (v23)
      {
        *a6 = WebKit::toJSError(this, @"storageArea.getKeys()", 0, v23, v22);
      }

      else if (Undefined)
      {
LABEL_17:

        CFRelease(*(v20 + 8));
LABEL_18:
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

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_17;
    }

    v31 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_error_impl(&dword_19D52D000, v31, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v37, 2u);
      if (Undefined)
      {
LABEL_39:
        Undefined = WebKit::toJSRejectedPromise(this, @"storageArea.getKeys()", 0, &cfstr_AnUnknownError.isa, v32);
        if (Undefined)
        {
          goto LABEL_41;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_39;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_41:
    if (v18)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v18);
    }

    goto LABEL_18;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8867CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::getBytesInUse(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIStorageArea(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
    v13 = qword_1ED640AB8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a4 == 1)
      {
        v30 = "argument";
      }

      else
      {
        v30 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (*v42)
      {
        v31 = *v42 + 16;
      }

      else
      {
        v31 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v44 = 2082;
      v45 = v30;
      v46 = 2082;
      v47 = v31;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function storageArea.getBytesInUse() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v33 = *v42;
      *v42 = 0;
      if (v33)
      {
        if (*v33 == 1)
        {
          WTF::fastFree(v33, v32);
        }

        else
        {
          --*v33;
        }
      }

      v34 = v41;
      v41 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v32);
      }
    }

    if (a4 == 1)
    {
      if (!JSValueIsObject(this, *a5) || (v19 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v19)))
      {
        if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
        {
          v16 = WebKit::toNSObject(this, *a5, 0, 0, 0);
          goto LABEL_22;
        }
      }

      if (JSValueIsObject(this, *a5) && (v20 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v20)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v21 = *a5;
        v22 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v21, v22, buf);
        v16 = 0;
LABEL_19:
        v23 = *buf;
        if (*buf)
        {
          DeferredPromise = 0;
          goto LABEL_23;
        }

LABEL_22:
        reject = 0;
        resolve = 0;
        DeferredPromise = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        *buf = this;
        v41 = reject;
        *v42 = resolve;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v38, buf, v42, &v41);
        v23 = v38;
LABEL_23:
        WebKit::toWebPage(this, buf);
        if (*buf)
        {
          v25 = *(*buf + 1832);
          *v42 = v23;
          v37 = 0;
          WebKit::WebExtensionAPIStorageArea::getBytesInUse(v12, v25, v16, v42, &v37);
          v27 = v37;
          v28 = *v42;
          *v42 = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v28);
          }

          if (v27)
          {
            *a6 = WebKit::toJSError(this, @"storageArea.getBytesInUse()", 0, v27, v26);
          }

          else if (DeferredPromise)
          {
            goto LABEL_29;
          }

          DeferredPromise = JSValueMakeUndefined(this);
LABEL_29:

          if (*buf)
          {
            CFRelease(*(*buf + 8));
          }

          goto LABEL_31;
        }

        v35 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          *v42 = 0;
          _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v42, 2u);
          if (DeferredPromise)
          {
LABEL_53:
            DeferredPromise = WebKit::toJSRejectedPromise(this, @"storageArea.getBytesInUse()", 0, &cfstr_AnUnknownError.isa, v36);
            if (DeferredPromise)
            {
              goto LABEL_55;
            }
          }
        }

        else if (DeferredPromise)
        {
          goto LABEL_53;
        }

        DeferredPromise = JSValueMakeUndefined(this);
LABEL_55:
        if (v23)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v23);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (a4 != 2)
      {
        v16 = 0;
        goto LABEL_22;
      }

      if (JSValueIsObject(this, *(a5 + 8)) && (v14 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v14)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        v16 = WebKit::toNSObject(this, *a5, 0, 0, 0);
        v17 = *(a5 + 8);
        v18 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v17, v18, buf);
        goto LABEL_19;
      }
    }

    *a6 = WebKit::toJSError(this, @"storageArea.getBytesInUse()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
    DeferredPromise = JSValueMakeUndefined(this);
    v16 = 0;
LABEL_31:

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

void sub_19D886E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::set(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIStorageArea(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 12);
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
      if (*v47)
      {
        v34 = *v47 + 16;
      }

      else
      {
        v34 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v49 = 2082;
      v50 = v33;
      v51 = 2082;
      v52 = v34;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function storageArea.set() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v36 = *v47;
      *v47 = 0;
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

      v37 = v46;
      v46 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v35);
      }
    }

    if (a4 == 1)
    {
      v19 = WebKit::toJSValue(this, *a5, v14);
      v20 = [v19 _isDictionary];

      if (v20)
      {
        v18 = WebKit::toNSDictionary(this, *a5, 1, 1);
        if (!v18)
        {
LABEL_6:
          v16 = 0;
LABEL_7:
          *a6 = WebKit::toJSError(this, @"storageArea.set()", &cfstr_Items.isa, &cfstr_AnObjectIsExpe.isa, v15);
          Undefined = JSValueMakeUndefined(this);
          v18 = 0;
LABEL_29:
          if (v16)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
          }

          v31 = v18;
          goto LABEL_32;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (a4 != 2)
      {
        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"storageArea.set()", 0, &cfstr_ARequiredArgum.isa, v15);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_33;
        }

        goto LABEL_6;
      }

      v22 = WebKit::toJSValue(this, *a5, v14);
      v23 = [v22 _isDictionary];

      if (v23)
      {
        if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          v18 = WebKit::toNSDictionary(this, *a5, 1, 1);
          v25 = *(a5 + 8);
          v26 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v25, v26, buf);
          v16 = *buf;
          if (!v18)
          {
            goto LABEL_7;
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
          *buf = this;
          v46 = reject;
          *v47 = resolve;
          WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, v47, &v46);
          v16 = v43;
LABEL_20:
          WebKit::toWebPage(this, buf);
          if (*buf)
          {
            v27 = *(*buf + 1832);
            *v47 = v16;
            v42 = 0;
            WebKit::WebExtensionAPIStorageArea::set(v12, v27, v18, v47, &v42);
            v29 = v42;
            v30 = *v47;
            *v47 = 0;
            if (v30)
            {
              WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v30);
            }

            if (v29)
            {
              *a6 = WebKit::toJSError(this, @"storageArea.set()", 0, v29, v28);
            }

            else if (Undefined)
            {
LABEL_26:

              if (*buf)
              {
                CFRelease(*(*buf + 8));
              }

              v16 = 0;
              goto LABEL_29;
            }

            Undefined = JSValueMakeUndefined(this);
            goto LABEL_26;
          }

          v40 = qword_1ED640AB8;
          if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
          {
            *v47 = 0;
            _os_log_error_impl(&dword_19D52D000, v40, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v47, 2u);
            if (!Undefined)
            {
              goto LABEL_58;
            }
          }

          else if (!Undefined)
          {
            goto LABEL_58;
          }

          Undefined = WebKit::toJSRejectedPromise(this, @"storageArea.set()", 0, &cfstr_AnUnknownError.isa, v41);
          if (Undefined)
          {
            goto LABEL_29;
          }

LABEL_58:
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_29;
        }

        v38 = @"a function is expected";
        v39 = @"callback";
LABEL_54:
        v31 = 0;
        *a6 = WebKit::toJSError(this, @"storageArea.set()", &v39->isa, &v38->isa, v21);
        Undefined = JSValueMakeUndefined(this);
LABEL_32:

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
    }

    v38 = @"an object is expected";
    v39 = @"items";
    goto LABEL_54;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D887550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::remove(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIStorageArea(this, a3, a3);
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
      if (*v40)
      {
        v29 = *v40 + 16;
      }

      else
      {
        v29 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v42 = 2082;
      v43 = v28;
      v44 = 2082;
      v45 = v29;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function storageArea.remove() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v31 = *v40;
      *v40 = 0;
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

      v32 = v39;
      v39 = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v30);
      }
    }

    if (a4 == 1)
    {
      v17 = WebKit::toNSObject(this, *a5, 0, 0, 0);
      if (!v17)
      {
LABEL_6:
        v15 = 0;
LABEL_7:
        *a6 = WebKit::toJSError(this, @"storageArea.remove()", &cfstr_Keys.isa, &cfstr_AnObjectIsExpe.isa, v14);
        Undefined = JSValueMakeUndefined(this);
        v17 = 0;
LABEL_27:
        if (v15)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v15);
        }

        v26 = v17;
        goto LABEL_30;
      }
    }

    else
    {
      if (a4 != 2)
      {
        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"storageArea.remove()", 0, &cfstr_ARequiredArgum.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_31;
        }

        goto LABEL_6;
      }

      if (!JSValueIsObject(this, *(a5 + 8)) || (v18 = JSValueToObject(this, *(a5 + 8), 0), !JSObjectIsFunction(this, v18)))
      {
        if (!JSValueIsNull(this, *(a5 + 8)) && !JSValueIsUndefined(this, *(a5 + 8)))
        {
          v26 = 0;
          *a6 = WebKit::toJSError(this, @"storageArea.remove()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v19);
          Undefined = JSValueMakeUndefined(this);
LABEL_30:

LABEL_31:
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

      v17 = WebKit::toNSObject(this, *a5, 0, 0, 0);
      v20 = *(a5 + 8);
      v21 = (*(*v12 + 16))(v12);
      WebKit::toJSCallbackHandler(this, v20, v21, buf);
      v15 = *buf;
      if (!v17)
      {
        goto LABEL_7;
      }

      if (*buf)
      {
        Undefined = 0;
        goto LABEL_18;
      }
    }

    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v39 = reject;
    *v40 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v36, buf, v40, &v39);
    v15 = v36;
LABEL_18:
    WebKit::toWebPage(this, buf);
    if (*buf)
    {
      v22 = *(*buf + 1832);
      *v40 = v15;
      v35 = 0;
      WebKit::WebExtensionAPIStorageArea::remove(v12, v22, v17, v40, &v35);
      v24 = v35;
      v25 = *v40;
      *v40 = 0;
      if (v25)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
      }

      if (v24)
      {
        *a6 = WebKit::toJSError(this, @"storageArea.remove()", 0, v24, v23);
      }

      else if (Undefined)
      {
LABEL_24:

        if (*buf)
        {
          CFRelease(*(*buf + 8));
        }

        v15 = 0;
        goto LABEL_27;
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_24;
    }

    v33 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v40 = 0;
      _os_log_error_impl(&dword_19D52D000, v33, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v40, 2u);
      if (!Undefined)
      {
        goto LABEL_54;
      }
    }

    else if (!Undefined)
    {
      goto LABEL_54;
    }

    Undefined = WebKit::toJSRejectedPromise(this, @"storageArea.remove()", 0, &cfstr_AnUnknownError.isa, v34);
    if (Undefined)
    {
      goto LABEL_27;
    }

LABEL_54:
    Undefined = JSValueMakeUndefined(this);
    goto LABEL_27;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D887BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::clear(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIStorageArea(this, a3, a3);
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
      if (*v35)
      {
        v25 = *v35 + 16;
      }

      else
      {
        v25 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v37 = 2082;
      v38 = v24;
      v39 = 2082;
      v40 = v25;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function storageArea.clear() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v27 = *v35;
      *v35 = 0;
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

      v28 = v34;
      v34 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v26);
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
        *a6 = WebKit::toJSError(this, @"storageArea.clear()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
        Undefined = JSValueMakeUndefined(this);
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
LABEL_10:
      reject = 0;
      resolve = 0;
      Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
      *buf = this;
      v34 = reject;
      *v35 = resolve;
      WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v31, buf, v35, &v34);
      v18 = v31;
    }

    WebKit::toWebPage(this, buf);
    v20 = *buf;
    if (*buf)
    {
      v21 = *(*buf + 1832);
      *v35 = v18;
      WebKit::WebExtensionAPIStorageArea::clear(v12, v21, v35);
      v22 = *v35;
      *v35 = 0;
      if (v22)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v22);
      }

      if (!Undefined)
      {
        Undefined = JSValueMakeUndefined(this);
      }

      CFRelease(*(v20 + 8));
      goto LABEL_17;
    }

    v29 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v35, 2u);
      if (Undefined)
      {
LABEL_38:
        Undefined = WebKit::toJSRejectedPromise(this, @"storageArea.clear()", 0, &cfstr_AnUnknownError.isa, v30);
        if (Undefined)
        {
          goto LABEL_40;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_38;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_40:
    if (v18)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v18);
    }

    goto LABEL_17;
  }

  return JSValueMakeUndefined(this);
}