void sub_19D888138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13)
{
  if (v14)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v14);
  }

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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::onChanged(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIStorageArea(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter storageArea.onChanged in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPIStorageArea::onChanged(v7);
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

void sub_19D88842C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::quotaBytes(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPIStorageArea(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter storageArea.QUOTA_BYTES in %{public}s world", buf, 0xCu);
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

    v9 = 0.0;
    if ((*(v7 + 52) - 1) <= 3u)
    {
      v9 = dbl_19E703118[(*(v7 + 52) - 1)];
    }

    Number = JSValueMakeNumber(this, v9);
    if (*(v7 + 12) == 1)
    {
      (*(*(v7 + 5) + 8))(v7 + 40);
    }

    else
    {
      --*(v7 + 12);
    }

    return Number;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D8886F4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPIStorageArea::setAccessLevel(WebKit::JSWebExtensionAPIStorageArea *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPIStorageArea(this, a3, a3);
  if (v11)
  {
    v12 = v11;
    ++*(v11 + 48);
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
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function storageArea.setAccessLevel() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
        v18 = WebKit::toNSDictionary(this, *a5, 0, 0);
        if (!v18)
        {
LABEL_6:
          v16 = 0;
LABEL_7:
          *a6 = WebKit::toJSError(this, @"storageArea.setAccessLevel()", &cfstr_Accessoptions.isa, &cfstr_AnObjectIsExpe.isa, v15);
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
          *a6 = WebKit::toJSError(this, @"storageArea.setAccessLevel()", 0, &cfstr_ARequiredArgum.isa, v15);
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
          v18 = WebKit::toNSDictionary(this, *a5, 0, 0);
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
            WebKit::WebExtensionAPIStorageArea::setAccessLevel(v12, v27, v18, v47, &v42);
            v29 = v42;
            v30 = *v47;
            *v47 = 0;
            if (v30)
            {
              WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v30);
            }

            if (v29)
            {
              *a6 = WebKit::toJSError(this, @"storageArea.setAccessLevel()", 0, v29, v28);
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

          Undefined = WebKit::toJSRejectedPromise(this, @"storageArea.setAccessLevel()", 0, &cfstr_AnUnknownError.isa, v41);
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
        *a6 = WebKit::toJSError(this, @"storageArea.setAccessLevel()", &v39->isa, &v38->isa, v21);
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
    v39 = @"accessOptions";
    goto LABEL_54;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D888D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

WebKit::JSWebExtensionAPITabs *WebKit::toWebExtensionAPITabs(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPITabs::tabsClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPITabs::tabsClass(result);
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

JSClassRef WebKit::JSWebExtensionAPITabs::tabsClass(WebKit::JSWebExtensionAPITabs *this)
{
  result = WebKit::JSWebExtensionAPITabs::tabsClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPITabs::tabsClass(void)::jsClass)
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
    v6.className = "Tabs";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPITabs::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPITabs::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    v6.getPropertyNames = WebKit::JSWebExtensionAPITabs::getPropertyNames;
    v6.hasProperty = WebKit::JSWebExtensionAPITabs::hasProperty;
    v6.getProperty = WebKit::JSWebExtensionAPITabs::getProperty;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPITabs::tabsClass(void)::jsClass = result;
  }

  return result;
}

void WebKit::JSWebExtensionAPITabs::getPropertyNames(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSPropertyNameAccumulator *a4)
{
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 48);
    WebKit::toWebPage(this, &v15);
    v13 = "getSelected";
    v14 = 12;
    v8 = v15;
    if (WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v13, v15))
    {
      v9 = JSStringCreateWithUTF8CString("getSelected");
      JSPropertyNameAccumulatorAddName(a3, v9);
      if (v9)
      {
        JSStringRelease(v9);
      }
    }

    v13 = "executeScript";
    v14 = 14;
    if (WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v13, v8))
    {
      v10 = JSStringCreateWithUTF8CString("executeScript");
      JSPropertyNameAccumulatorAddName(a3, v10);
      if (v10)
      {
        JSStringRelease(v10);
      }
    }

    v13 = "insertCSS";
    v14 = 10;
    if (WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v13, v8))
    {
      v11 = JSStringCreateWithUTF8CString("insertCSS");
      JSPropertyNameAccumulatorAddName(a3, v11);
      if (v11)
      {
        JSStringRelease(v11);
      }
    }

    v13 = "removeCSS";
    v14 = 10;
    if (WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v13, v8))
    {
      v12 = JSStringCreateWithUTF8CString("removeCSS");
      JSPropertyNameAccumulatorAddName(a3, v12);
      if (v12)
      {
        JSStringRelease(v12);
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

void sub_19D889194(_Unwind_Exception *exception_object)
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

BOOL WebKit::JSWebExtensionAPITabs::hasProperty(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4)
{
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ++*(v6 + 48);
  WebKit::toWebPage(this, &v14);
  if (JSStringIsEqualToUTF8CString(a3, "getSelected"))
  {
    v12 = "getSelected";
    v13 = 12;
    v8 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v12, v14);
    goto LABEL_10;
  }

  if (JSStringIsEqualToUTF8CString(a3, "executeScript"))
  {
    v12 = "executeScript";
    v13 = 14;
    v8 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v12, v14);
    goto LABEL_10;
  }

  if (JSStringIsEqualToUTF8CString(a3, "insertCSS"))
  {
    v12 = "insertCSS";
    v13 = 10;
    v8 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v12, v14);
    goto LABEL_10;
  }

  if (JSStringIsEqualToUTF8CString(a3, "removeCSS"))
  {
    v12 = "removeCSS";
    v13 = 10;
    v8 = v14;
    isPropertyAllowed = WebKit::WebExtensionAPITabs::isPropertyAllowed(v7, &v12, v14);
LABEL_10:
    v10 = isPropertyAllowed;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
  v8 = v14;
  if (v14)
  {
LABEL_11:
    CFRelease(*(v8 + 1));
  }

LABEL_12:
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

void sub_19D8893C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPITabs::getProperty(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v7 = WebKit::toWebExtensionAPITabs(this, a2, a3);
  if (v7)
  {
    v8 = v7;
    ++*(v7 + 48);
    WebKit::toWebPage(this, &v19);
    if (JSStringIsEqualToUTF8CString(a3, "getSelected") && (v17 = "getSelected", v18 = 12, v9 = v19, isPropertyAllowed = WebKit::WebExtensionAPITabs::isPropertyAllowed(v8, &v17, v19), v11 = WebKit::JSWebExtensionAPITabs::getSelected, isPropertyAllowed) || JSStringIsEqualToUTF8CString(a3, "executeScript") && (v17 = "executeScript", v18 = 14, v9 = v19, v12 = WebKit::WebExtensionAPITabs::isPropertyAllowed(v8, &v17, v19), v11 = WebKit::JSWebExtensionAPITabs::executeScript, v12) || JSStringIsEqualToUTF8CString(a3, "insertCSS") && (v17 = "insertCSS", v18 = 10, v9 = v19, v13 = WebKit::WebExtensionAPITabs::isPropertyAllowed(v8, &v17, v19), v11 = WebKit::JSWebExtensionAPITabs::insertCSS, v13) || JSStringIsEqualToUTF8CString(a3, "removeCSS") && (v17 = "removeCSS", v18 = 10, v9 = v19, v14 = WebKit::WebExtensionAPITabs::isPropertyAllowed(v8, &v17, v19), v11 = WebKit::JSWebExtensionAPITabs::removeCSS, v14))
    {
      FunctionWithCallback = JSObjectMakeFunctionWithCallback(this, a3, v11);
      if (!v9)
      {
LABEL_12:
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
      v9 = v19;
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    CFRelease(*(v9 + 1));
    goto LABEL_12;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D889634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

JSValueRef WebKit::JSWebExtensionAPITabs::create(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.create() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
      v18 = WebKit::toNSDictionary(this, *a5, 0, 0);
      if (!v18)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    goto LABEL_53;
  }

  if (a4 == 2)
  {
    v22 = WebKit::toJSValue(this, *a5, v14);
    v23 = [v22 _isDictionary];

    if (v23)
    {
      if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        v18 = WebKit::toNSDictionary(this, *a5, 0, 0);
        v25 = *(a5 + 8);
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v16 = *buf;
        if (!v18)
        {
          goto LABEL_8;
        }

        if (*buf)
        {
          Undefined = 0;
          goto LABEL_21;
        }

LABEL_20:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        *buf = this;
        v46 = reject;
        *v47 = resolve;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, v47, &v46);
        v16 = v43;
LABEL_21:
        WebKit::toWebPage(this, buf);
        if (*buf)
        {
          v27 = *(*buf + 1832);
          *v47 = v16;
          v42 = 0;
          WebKit::WebExtensionAPITabs::createTab(v12, v27, v18, v47, &v42);
          v29 = v42;
          v30 = *v47;
          *v47 = 0;
          if (v30)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v30);
          }

          if (v29)
          {
            *a6 = WebKit::toJSError(this, @"tabs.create()", 0, v29, v28);
          }

          else if (Undefined)
          {
LABEL_27:

            if (*buf)
            {
              CFRelease(*(*buf + 8));
            }

            v16 = 0;
            goto LABEL_30;
          }

          Undefined = JSValueMakeUndefined(this);
          goto LABEL_27;
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

        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.create()", 0, &cfstr_AnUnknownError.isa, v41);
        if (Undefined)
        {
          goto LABEL_30;
        }

LABEL_58:
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_30;
      }

      v38 = @"a function is expected";
      v39 = @"callback";
LABEL_54:
      v31 = 0;
      *a6 = WebKit::toJSError(this, @"tabs.create()", &v39->isa, &v38->isa, v21);
      Undefined = JSValueMakeUndefined(this);
LABEL_33:

      goto LABEL_34;
    }

LABEL_53:
    v38 = @"an object is expected";
    v39 = @"properties";
    goto LABEL_54;
  }

  if (a4)
  {
LABEL_7:
    v16 = 0;
LABEL_8:
    *a6 = WebKit::toJSError(this, @"tabs.create()", &cfstr_Properties.isa, &cfstr_AnObjectIsExpe.isa, v15);
    Undefined = JSValueMakeUndefined(this);
    v18 = 0;
LABEL_30:
    if (v16)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
    }

    v31 = v18;
    goto LABEL_33;
  }

  *a6 = WebKit::toJSError(this, @"tabs.create()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D889C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPITabs::query(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.query() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
      v18 = WebKit::toNSDictionary(this, *a5, 0, 0);
      if (!v18)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    goto LABEL_53;
  }

  if (a4 == 2)
  {
    v22 = WebKit::toJSValue(this, *a5, v14);
    v23 = [v22 _isDictionary];

    if (v23)
    {
      if (JSValueIsObject(this, *(a5 + 8)) && (v24 = JSValueToObject(this, *(a5 + 8), 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        v18 = WebKit::toNSDictionary(this, *a5, 0, 0);
        v25 = *(a5 + 8);
        v26 = (*(*v12 + 16))(v12);
        WebKit::toJSCallbackHandler(this, v25, v26, buf);
        v16 = *buf;
        if (!v18)
        {
          goto LABEL_8;
        }

        if (*buf)
        {
          Undefined = 0;
          goto LABEL_21;
        }

LABEL_20:
        reject = 0;
        resolve = 0;
        Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
        *buf = this;
        v46 = reject;
        *v47 = resolve;
        WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v43, buf, v47, &v46);
        v16 = v43;
LABEL_21:
        WebKit::toWebPage(this, buf);
        if (*buf)
        {
          v27 = *(*buf + 1832);
          *v47 = v16;
          v42 = 0;
          WebKit::WebExtensionAPITabs::query(v12, v27, v18, v47, &v42);
          v29 = v42;
          v30 = *v47;
          *v47 = 0;
          if (v30)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v30);
          }

          if (v29)
          {
            *a6 = WebKit::toJSError(this, @"tabs.query()", 0, v29, v28);
          }

          else if (Undefined)
          {
LABEL_27:

            if (*buf)
            {
              CFRelease(*(*buf + 8));
            }

            v16 = 0;
            goto LABEL_30;
          }

          Undefined = JSValueMakeUndefined(this);
          goto LABEL_27;
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

        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.query()", 0, &cfstr_AnUnknownError.isa, v41);
        if (Undefined)
        {
          goto LABEL_30;
        }

LABEL_58:
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_30;
      }

      v38 = @"a function is expected";
      v39 = @"callback";
LABEL_54:
      v31 = 0;
      *a6 = WebKit::toJSError(this, @"tabs.query()", &v39->isa, &v38->isa, v21);
      Undefined = JSValueMakeUndefined(this);
LABEL_33:

      goto LABEL_34;
    }

LABEL_53:
    v38 = @"an object is expected";
    v39 = @"info";
    goto LABEL_54;
  }

  if (a4)
  {
LABEL_7:
    v16 = 0;
LABEL_8:
    *a6 = WebKit::toJSError(this, @"tabs.query()", &cfstr_Info.isa, &cfstr_AnObjectIsExpe.isa, v15);
    Undefined = JSValueMakeUndefined(this);
    v18 = 0;
LABEL_30:
    if (v16)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v16);
    }

    v31 = v18;
    goto LABEL_33;
  }

  *a6 = WebKit::toJSError(this, @"tabs.query()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D88A340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPITabs::get(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.get() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
          *a6 = WebKit::toJSError(this, @"tabs.get()", &cfstr_Tabid_0.isa, &cfstr_ANumberIsExpec.isa, v14);
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
        WebKit::WebExtensionAPITabs::get(v12, buf, &v34, v16);
        v23 = v34;
        v24 = *buf;
        *buf = 0;
        if (v24)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v24);
        }

        if (v23)
        {
          *a6 = WebKit::toJSError(this, @"tabs.get()", 0, v23, v22);
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
      *a6 = WebKit::toJSError(this, @"tabs.get()", &v33->isa, &v32->isa, v17);
      v31 = JSValueMakeUndefined(this);
      goto LABEL_50;
    }

LABEL_48:
    v32 = @"a number is expected";
    v33 = @"tabID";
    goto LABEL_49;
  }

  if (a4)
  {
    v15 = 0;
    v16 = NAN;
    goto LABEL_16;
  }

  *a6 = WebKit::toJSError(this, @"tabs.get()", 0, &cfstr_ARequiredArgum.isa, v14);
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

void sub_19D88A924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::getCurrent(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_18;
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.getCurrent() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
    goto LABEL_11;
  }

  if (JSValueIsObject(this, *a5) && (v14 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v14)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v16 = *a5;
    v17 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v16, v17, buf);
    v18 = *buf;
    if (*buf)
    {
      Undefined = 0;
      goto LABEL_12;
    }

LABEL_11:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v34 = reject;
    *v35 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v31, buf, v35, &v34);
    v18 = v31;
LABEL_12:
    WebKit::toWebPage(this, buf);
    v20 = *buf;
    if (*buf)
    {
      v21 = *(*buf + 1832);
      *v35 = v18;
      WebKit::WebExtensionAPITabs::getCurrent(v12, v21, v35);
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
      goto LABEL_18;
    }

    v29 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v35, 2u);
      if (Undefined)
      {
LABEL_38:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.getCurrent()", 0, &cfstr_AnUnknownError.isa, v30);
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

    goto LABEL_18;
  }

  *a6 = WebKit::toJSError(this, @"tabs.getCurrent()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v15);
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

void sub_19D88AE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13)
{
  if (v14)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v14);
  }

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

JSValueRef WebKit::JSWebExtensionAPITabs::duplicate(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v62 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_53;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
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
    if (v56)
    {
      v44 = v56 + 16;
    }

    else
    {
      v44 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v58 = 2082;
    v59 = v43;
    v60 = 2082;
    v61 = v44;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.duplicate() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v46 = v56;
    v56 = 0;
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

    v47 = v55;
    v55 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v45);
    }
  }

  if (a4 == 3)
  {
    if (!JSValueIsNumber(this, *a5))
    {
      v49 = @"a number is expected";
      v50 = @"tabID";
LABEL_85:
      v41 = 0;
      *a6 = WebKit::toJSError(this, @"tabs.duplicate()", &v50->isa, &v49->isa, v15);
      Undefined = JSValueMakeUndefined(this);
      goto LABEL_52;
    }

    v24 = WebKit::toJSValue(this, *(a5 + 8), v23);
    v25 = [v24 _isDictionary];

    if ((v25 & 1) == 0 && !JSValueIsNull(this, *(a5 + 8)) && !JSValueIsUndefined(this, *(a5 + 8)))
    {
      v49 = @"an object is expected";
      v50 = @"properties";
      goto LABEL_85;
    }

    if (JSValueIsObject(this, *(a5 + 16)) && (v26 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v26)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
    {
      v27 = JSValueToNumber(this, *a5, 0);
      v28 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
      v29 = *(a5 + 16);
      v30 = (*(*v12 + 16))(v12);
      WebKit::toJSCallbackHandler(this, v29, v30, buf);
      v20 = *buf;
      v31 = v28;
      if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (!*buf)
        {
LABEL_45:
          reject = 0;
          resolve = 0;
          Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
          v56 = resolve;
          *buf = this;
          v55 = reject;
          WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v52, buf, &v56, &v55);
          v20 = v52;
LABEL_46:
          *buf = v20;
          v51 = 0;
          WebKit::WebExtensionAPITabs::duplicate(v12, v28, buf, &v51, v27);
          v39 = v51;
          v40 = *buf;
          *buf = 0;
          if (v40)
          {
            WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v40);
          }

          if (v39)
          {
            *a6 = WebKit::toJSError(this, @"tabs.duplicate()", 0, v39, v38);
          }

          else if (Undefined)
          {
LABEL_51:

            v41 = v28;
LABEL_52:

            goto LABEL_53;
          }

          Undefined = JSValueMakeUndefined(this);
          goto LABEL_51;
        }

LABEL_24:
        Undefined = 0;
        goto LABEL_46;
      }

      goto LABEL_69;
    }

LABEL_82:
    v49 = @"a function is expected";
    v50 = @"callback";
    goto LABEL_85;
  }

  if (a4)
  {
    v16 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v31 = 0;
      v20 = 0;
      goto LABEL_41;
    }

    if (a4 == 1)
    {
      v20 = 0;
      v31 = 0;
      goto LABEL_38;
    }

    v17 = *(a5 + 8 * v16);
    if (v17 && (JSValueIsObject(this, *(a5 + 8 * v16)) && (v18 = JSValueToObject(this, v17, 0), JSObjectIsFunction(this, v18)) || JSValueIsNull(this, v17) || JSValueIsUndefined(this, v17)))
    {
      v19 = (*(*v12 + 16))(v12);
      WebKit::toJSCallbackHandler(this, v17, v19, buf);
      v20 = *buf;
      v21 = a4 - 2;
      v22 = 1;
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v21 = a4 - 1;
    }

    if (v22 >= v16)
    {
      goto LABEL_36;
    }

    if (v21 >= a4)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v33 = *(a5 + 8 * v21);
    if (v33 && ((WebKit::toJSValue(this, *(a5 + 8 * v21), v14), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 _isDictionary], v34, (v35 & 1) != 0) || JSValueIsNull(this, v33) || JSValueIsUndefined(this, v33)))
    {
      v36 = WebKit::toNSDictionary(this, v33, 0, 0);
      if (!v21)
      {
        v31 = v36;
        goto LABEL_69;
      }

      --v21;
    }

    else
    {
LABEL_36:
      v36 = 0;
    }

    v16 = v21;
    v31 = v36;
    if (v21 < a4)
    {
LABEL_38:
      v37 = *(a5 + 8 * v16);
      if (v37)
      {
        if (!JSValueIsNumber(this, v37))
        {
          goto LABEL_69;
        }

        v27 = JSValueToNumber(this, v37, 0);
        --v16;
        goto LABEL_42;
      }

LABEL_41:
      v27 = NAN;
LABEL_42:
      if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          v28 = v31;
          if (!v20)
          {
            goto LABEL_45;
          }

          goto LABEL_24;
        }

        *a6 = WebKit::toJSError(this, @"tabs.duplicate()", 0, &cfstr_AnUnknownArgum.isa, v15);
        v48 = JSValueMakeUndefined(this);
LABEL_70:
        Undefined = v48;
        if (v20)
        {
          WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
        }

        v41 = v31;
        goto LABEL_52;
      }

LABEL_69:
      *a6 = WebKit::toJSError(this, @"tabs.duplicate()", &cfstr_Tabid_0.isa, &cfstr_ANumberIsExpec.isa, v15);
      v48 = JSValueMakeUndefined(this);
      goto LABEL_70;
    }

    goto LABEL_81;
  }

  *a6 = WebKit::toJSError(this, @"tabs.duplicate()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
LABEL_53:
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

void sub_19D88B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::update(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v11 = v10;
  if (v10)
  {
    ++*(v10 + 12);
    if (!*(v10 + 8))
    {
      v12 = qword_1ED640AB8;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
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
        if (*v58)
        {
          v45 = *v58 + 16;
        }

        else
        {
          v45 = 0;
        }

        *buf = 134349570;
        *&buf[4] = a4;
        v60 = 2082;
        v61 = v44;
        v62 = 2082;
        v63 = v45;
        _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function tabs.update() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
        IsUndefined = *v58;
        *v58 = 0;
        if (!IsUndefined)
        {
          goto LABEL_73;
        }

        if (*IsUndefined != 1)
        {
          --*IsUndefined;
          goto LABEL_73;
        }

        goto LABEL_88;
      }

      while (1)
      {

        if (a4 == 3)
        {
          if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
          {
            v24 = WebKit::toJSValue(this, *(a5 + 8), v22);
            v25 = [v24 _isDictionary];

            if (v25)
            {
              if (JSValueIsObject(this, *(a5 + 16)) && (v26 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v26)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
              {
                v27 = JSValueToNumber(this, *a5, 0);
                v28 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
                v29 = *(a5 + 16);
                v30 = (*(*v11 + 16))(v11);
                WebKit::toJSCallbackHandler(this, v29, v30, buf);
                v12 = *buf;
                if (v28)
                {
                  if (!*buf)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              v49 = @"a function is expected";
              v50 = @"callback";
            }

            else
            {
              v49 = @"an object is expected";
              v50 = @"properties";
            }
          }

          else
          {
            v49 = @"a number is expected";
            v50 = @"tabID";
          }

          v42 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.update()", &v50->isa, &v49->isa, v23);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_60;
        }

        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"tabs.update()", 0, &cfstr_ARequiredArgum.isa, v16);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_61;
        }

        v17 = a4 - 1;
        if (a4 - 1 < 0)
        {
          v12 = 0;
          goto LABEL_26;
        }

        if (a4 == 1)
        {
          v51 = 0;
          v21 = 0;
          v12 = 0;
        }

        else
        {
          v18 = *(a5 + 8 * v17);
          if (v18 && (JSValueIsObject(this, *(a5 + 8 * v17)) && (v19 = JSValueToObject(this, v18, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, v18) || (IsUndefined = JSValueIsUndefined(this, v18), IsUndefined)))
          {
            v20 = (*(*v11 + 16))(v11);
            IsUndefined = WebKit::toJSCallbackHandler(this, v18, v20, buf);
            v12 = *buf;
            v21 = a4 - 2;
            v51 = 1;
          }

          else
          {
            v12 = 0;
            v51 = 0;
            v21 = a4 - 1;
          }

          if (v21 >= a4)
          {
            goto LABEL_87;
          }
        }

        v34 = *(a5 + 8 * v21);
        if (v34)
        {
          v35 = WebKit::toJSValue(this, *(a5 + 8 * v21), v15);
          v36 = [v35 _isDictionary];

          if ((v36 & 1) == 0)
          {
            goto LABEL_26;
          }

          IsUndefined = WebKit::toNSDictionary(this, v34, 0, 0);
          --v21;
          v32 = IsUndefined;
        }

        else
        {
          v32 = 0;
        }

        v27 = NAN;
        if (v51 >= v17 || (v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v21 < a4)
        {
          v37 = *(a5 + 8 * v21);
          if (v37 && (JSValueIsNumber(this, v37) || JSValueIsNull(this, v37) || JSValueIsUndefined(this, v37)))
          {
            v27 = JSValueToNumber(this, v37, 0);
            --v21;
          }

          else
          {
            v27 = NAN;
          }

LABEL_44:
          if (v32)
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              v28 = v32;
              if (!v12)
              {
LABEL_47:
                reject = 0;
                resolve = 0;
                Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
                *buf = this;
                v57 = reject;
                *v58 = resolve;
                WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v54, buf, v58, &v57);
                v12 = v54;
LABEL_48:
                WebKit::toWebPage(this, buf);
                if (*buf)
                {
                  v38 = *(*buf + 1832);
                  *v58 = v12;
                  v53 = 0;
                  WebKit::WebExtensionAPITabs::update(v11, v38, v28, v58, &v53, v27);
                  v40 = v53;
                  v41 = *v58;
                  *v58 = 0;
                  if (v41)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v41);
                  }

                  if (v40)
                  {
                    *a6 = WebKit::toJSError(this, @"tabs.update()", 0, v40, v39);
LABEL_53:
                    Undefined = JSValueMakeUndefined(this);
                  }

                  else if (!Undefined)
                  {
                    goto LABEL_53;
                  }

                  if (*buf)
                  {
                    CFRelease(*(*buf + 8));
                  }

                  v12 = 0;
LABEL_57:
                  if (v12)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v12);
                  }

                  v42 = v28;
LABEL_60:

                  goto LABEL_61;
                }

                v47 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v58 = 0;
                  _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v58, 2u);
                  if (Undefined)
                  {
                    goto LABEL_83;
                  }
                }

                else if (Undefined)
                {
LABEL_83:
                  Undefined = WebKit::toJSRejectedPromise(this, @"tabs.update()", 0, &cfstr_AnUnknownError.isa, v48);
                  if (Undefined)
                  {
                    goto LABEL_57;
                  }
                }

                Undefined = JSValueMakeUndefined(this);
                goto LABEL_57;
              }

LABEL_24:
              Undefined = 0;
              goto LABEL_48;
            }

            *a6 = WebKit::toJSError(this, @"tabs.update()", 0, &cfstr_AnUnknownArgum.isa, v16);
            v33 = JSValueMakeUndefined(this);
LABEL_27:
            Undefined = v33;
            v28 = v32;
            goto LABEL_57;
          }

LABEL_26:
          v32 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.update()", &cfstr_Properties.isa, &cfstr_AnObjectIsExpe.isa, v16);
          v33 = JSValueMakeUndefined(this);
          goto LABEL_27;
        }

LABEL_87:
        __break(1u);
LABEL_88:
        WTF::fastFree(IsUndefined, v14);
LABEL_73:
        v46 = v57;
        v57 = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v14);
        }
      }
    }
  }

  Undefined = JSValueMakeUndefined(this);
  if (v11)
  {
LABEL_61:
    if (*(v11 + 48) == 1)
    {
      (*(*(v11 + 40) + 8))(v11 + 40);
    }

    else
    {
      --*(v11 + 48);
    }
  }

  return Undefined;
}

void sub_19D88C078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    CFRelease(*(a19 + 8));
  }

  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (*(v19 + 48) == 1)
  {
    (*(*(v19 + 40) + 8))(v19 + 40);
  }

  else
  {
    --*(v19 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPITabs::remove(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.remove() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    *a6 = WebKit::toJSError(this, @"tabs.remove()", 0, &cfstr_ARequiredArgum.isa, v14);
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
      *a6 = WebKit::toJSError(this, @"tabs.remove()", &cfstr_Tabids.isa, &cfstr_AnObjectIsExpe.isa, v14);
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
    WebKit::WebExtensionAPITabs::remove(v12, v17, buf, &v32);
    v23 = v32;
    v24 = *buf;
    *buf = 0;
    if (v24)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v24);
    }

    if (v23)
    {
      *a6 = WebKit::toJSError(this, @"tabs.remove()", 0, v23, v22);
    }

    else if (Undefined)
    {
LABEL_25:

      goto LABEL_26;
    }

    Undefined = JSValueMakeUndefined(this);
    goto LABEL_25;
  }

  *a6 = WebKit::toJSError(this, @"tabs.remove()", &cfstr_Callback.isa, &cfstr_AFunctionIsExp.isa, v19);
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

void sub_19D88C630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::reload(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v11 = v10;
  if (!v10 || (++*(v10 + 12), *(v10 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (v11)
    {
      goto LABEL_42;
    }

    return Undefined;
  }

  v12 = qword_1ED640AB8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
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
    if (*v55)
    {
      v43 = *v55 + 16;
    }

    else
    {
      v43 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v57 = 2082;
    v58 = v42;
    v59 = 2082;
    v60 = v43;
    _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function tabs.reload() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    IsUndefined = *v55;
    *v55 = 0;
    if (!IsUndefined)
    {
      goto LABEL_73;
    }

    if (*IsUndefined != 1)
    {
      --*IsUndefined;
      goto LABEL_73;
    }

    goto LABEL_85;
  }

  while (1)
  {

    if (a4 == 3)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v19 = WebKit::toJSValue(this, *(a5 + 8), v17);
        v20 = [v19 _isDictionary];

        if ((v20 & 1) != 0 || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          if (JSValueIsObject(this, *(a5 + 16)) && (v21 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
          {
            v22 = JSValueToNumber(this, *a5, 0);
            v12 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
            v23 = *(a5 + 16);
            v24 = (*(*v11 + 16))(v11);
            WebKit::toJSCallbackHandler(this, v23, v24, buf);
            v25 = *buf;
            goto LABEL_16;
          }

          v47 = @"a function is expected";
          v48 = @"callback";
        }

        else
        {
          v47 = @"an object is expected";
          v48 = @"properties";
        }
      }

      else
      {
        v47 = @"a number is expected";
        v48 = @"tabID";
      }

      v35 = 0;
      *a6 = WebKit::toJSError(this, @"tabs.reload()", &v48->isa, &v47->isa, v18);
      Undefined = JSValueMakeUndefined(this);
      goto LABEL_41;
    }

    v28 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v27 = 0;
      v22 = NAN;
      goto LABEL_28;
    }

    v12 = *(a5 + 8 * v28);
    if (!v12 || (!JSValueIsObject(this, *(a5 + 8 * v28)) || (v29 = JSValueToObject(this, v12, 0), !JSObjectIsFunction(this, v29))) && !JSValueIsNull(this, v12) && (IsUndefined = JSValueIsUndefined(this, v12), !IsUndefined))
    {
      v25 = 0;
      goto LABEL_46;
    }

    v30 = (*(*v11 + 16))(v11);
    IsUndefined = WebKit::toJSCallbackHandler(this, v12, v30, buf);
    v25 = *buf;
    v28 = a4 - 2;
    if (a4 - 2 < 0)
    {
      break;
    }

LABEL_46:
    if (v28 < a4)
    {
      v12 = *(a5 + 8 * v28);
      if (v12 && ((WebKit::toJSValue(this, *(a5 + 8 * v28), v15), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 _isDictionary], v37, (v38 & 1) != 0) || JSValueIsNull(this, v12) || (IsUndefined = JSValueIsUndefined(this, v12), IsUndefined)))
      {
        IsUndefined = WebKit::toNSDictionary(this, v12, 0, 0);
        v12 = IsUndefined;
        if (!v28)
        {
          goto LABEL_61;
        }

        --v28;
        v27 = IsUndefined;
      }

      else
      {
        v27 = 0;
      }

      if (v28 < a4)
      {
        v39 = *(a5 + 8 * v28);
        if (v39 && (JSValueIsNumber(this, v39) || JSValueIsNull(this, v39) || JSValueIsUndefined(this, v39)))
        {
          v40 = JSValueToNumber(this, v39, 0);
          if (!v28)
          {
            v22 = v40;
            v12 = v27;
            goto LABEL_16;
          }
        }

        *a6 = WebKit::toJSError(this, @"tabs.reload()", 0, &cfstr_AnUnknownArgum.isa, v16);
        v41 = JSValueMakeUndefined(this);
LABEL_63:
        Undefined = v41;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_85:
    WTF::fastFree(IsUndefined, v14);
LABEL_73:
    v44 = v54;
    v54 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v14);
    }
  }

  v12 = 0;
LABEL_61:
  v22 = NAN;
LABEL_16:
  if (v25)
  {
    Undefined = 0;
    v27 = v12;
    goto LABEL_29;
  }

  v27 = v12;
LABEL_28:
  reject = 0;
  resolve = 0;
  Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
  *buf = this;
  v54 = reject;
  *v55 = resolve;
  WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v51, buf, v55, &v54);
  v25 = v51;
LABEL_29:
  WebKit::toWebPage(this, buf);
  if (!*buf)
  {
    v45 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v55 = 0;
      _os_log_error_impl(&dword_19D52D000, v45, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v55, 2u);
      if (!Undefined)
      {
        goto LABEL_82;
      }
    }

    else if (!Undefined)
    {
      goto LABEL_82;
    }

    Undefined = WebKit::toJSRejectedPromise(this, @"tabs.reload()", 0, &cfstr_AnUnknownError.isa, v46);
    if (Undefined)
    {
      goto LABEL_38;
    }

LABEL_82:
    v41 = JSValueMakeUndefined(this);
    goto LABEL_63;
  }

  v31 = *(*buf + 1832);
  *v55 = v25;
  v50 = 0;
  WebKit::WebExtensionAPITabs::reload(v11, v31, v27, v55, &v50, v22);
  v33 = v50;
  v34 = *v55;
  *v55 = 0;
  if (v34)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v34);
  }

  if (v33)
  {
    *a6 = WebKit::toJSError(this, @"tabs.reload()", 0, v33, v32);
LABEL_34:
    Undefined = JSValueMakeUndefined(this);
  }

  else if (!Undefined)
  {
    goto LABEL_34;
  }

  if (*buf)
  {
    CFRelease(*(*buf + 8));
  }

  v25 = 0;
LABEL_38:
  if (v25)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
  }

  v35 = v27;
LABEL_41:

LABEL_42:
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

void sub_19D88CF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPITabs::goBack(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    if (*v45)
    {
      v32 = *v45 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v31;
    v49 = 2082;
    v50 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.goBack() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = *v45;
    *v45 = 0;
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

    v35 = v44;
    v44 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_64;
      }

LABEL_65:
      v38 = @"a number is expected";
      v39 = @"tabID";
      goto LABEL_66;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v44 = reject;
    *v45 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, v45, &v44);
    v19 = v41;
LABEL_27:
    WebKit::toWebPage(this, buf);
    v25 = *buf;
    if (*buf)
    {
      v26 = *(*buf + 1832);
      *v45 = v19;
      v40 = 0;
      WebKit::WebExtensionAPITabs::goBack(v12, v26, v45, &v40, v16);
      v28 = v40;
      v29 = *v45;
      *v45 = 0;
      if (v29)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
      }

      if (v28)
      {
        *a6 = WebKit::toJSError(this, @"tabs.goBack()", 0, v28, v27);
      }

      else if (Undefined)
      {
LABEL_33:

        CFRelease(*(v25 + 8));
        goto LABEL_34;
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_33;
    }

    v36 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v45, 2u);
      if (Undefined)
      {
LABEL_58:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.goBack()", 0, &cfstr_AnUnknownError.isa, v37);
        if (Undefined)
        {
          goto LABEL_60;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_58;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_60:
    if (v19)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
    }

    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_65;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_64:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_66:
  *a6 = WebKit::toJSError(this, @"tabs.goBack()", &v39->isa, &v38->isa, v14);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D88D658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::goForward(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    if (*v45)
    {
      v32 = *v45 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v31;
    v49 = 2082;
    v50 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.goForward() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = *v45;
    *v45 = 0;
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

    v35 = v44;
    v44 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_64;
      }

LABEL_65:
      v38 = @"a number is expected";
      v39 = @"tabID";
      goto LABEL_66;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v44 = reject;
    *v45 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, v45, &v44);
    v19 = v41;
LABEL_27:
    WebKit::toWebPage(this, buf);
    v25 = *buf;
    if (*buf)
    {
      v26 = *(*buf + 1832);
      *v45 = v19;
      v40 = 0;
      WebKit::WebExtensionAPITabs::goForward(v12, v26, v45, &v40, v16);
      v28 = v40;
      v29 = *v45;
      *v45 = 0;
      if (v29)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
      }

      if (v28)
      {
        *a6 = WebKit::toJSError(this, @"tabs.goForward()", 0, v28, v27);
      }

      else if (Undefined)
      {
LABEL_33:

        CFRelease(*(v25 + 8));
        goto LABEL_34;
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_33;
    }

    v36 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v45, 2u);
      if (Undefined)
      {
LABEL_58:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.goForward()", 0, &cfstr_AnUnknownError.isa, v37);
        if (Undefined)
        {
          goto LABEL_60;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_58;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_60:
    if (v19)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
    }

    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_65;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_64:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_66:
  *a6 = WebKit::toJSError(this, @"tabs.goForward()", &v39->isa, &v38->isa, v14);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D88DD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::getZoom(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    if (*v45)
    {
      v32 = *v45 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v31;
    v49 = 2082;
    v50 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.getZoom() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = *v45;
    *v45 = 0;
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

    v35 = v44;
    v44 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_64;
      }

LABEL_65:
      v38 = @"a number is expected";
      v39 = @"tabID";
      goto LABEL_66;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v44 = reject;
    *v45 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, v45, &v44);
    v19 = v41;
LABEL_27:
    WebKit::toWebPage(this, buf);
    v25 = *buf;
    if (*buf)
    {
      v26 = *(*buf + 1832);
      *v45 = v19;
      v40 = 0;
      WebKit::WebExtensionAPITabs::getZoom(v12, v26, v45, &v40, v16);
      v28 = v40;
      v29 = *v45;
      *v45 = 0;
      if (v29)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
      }

      if (v28)
      {
        *a6 = WebKit::toJSError(this, @"tabs.getZoom()", 0, v28, v27);
      }

      else if (Undefined)
      {
LABEL_33:

        CFRelease(*(v25 + 8));
        goto LABEL_34;
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_33;
    }

    v36 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v45, 2u);
      if (Undefined)
      {
LABEL_58:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.getZoom()", 0, &cfstr_AnUnknownError.isa, v37);
        if (Undefined)
        {
          goto LABEL_60;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_58;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_60:
    if (v19)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
    }

    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_65;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_64:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_66:
  *a6 = WebKit::toJSError(this, @"tabs.getZoom()", &v39->isa, &v38->isa, v14);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D88E448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::setZoom(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v58 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (v12)
    {
      goto LABEL_69;
    }

    return Undefined;
  }

  v13 = &WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl[4];
  v14 = qword_1ED640AB8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
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
    if (*v52)
    {
      v32 = *v52 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v54 = 2082;
    v55 = v31;
    v56 = 2082;
    v57 = v32;
    _os_log_debug_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEBUG, "Called function tabs.setZoom() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    IsUndefined = *v52;
    *v52 = 0;
    if (!IsUndefined)
    {
      goto LABEL_49;
    }

    if (*IsUndefined != 1)
    {
      --*IsUndefined;
      goto LABEL_49;
    }

    goto LABEL_85;
  }

  while (1)
  {

    if (a4 == 3)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsNumber(this, a5[1]))
        {
          if (JSValueIsObject(this, a5[2]) && (v24 = JSValueToObject(this, a5[2], 0), JSObjectIsFunction(this, v24)) || JSValueIsNull(this, a5[2]) || JSValueIsUndefined(this, a5[2]))
          {
            v25 = JSValueToNumber(this, *a5, 0);
            v26 = JSValueToNumber(this, a5[1], 0);
            v27 = a5[2];
            v28 = (*(*v12 + 16))(v12);
            WebKit::toJSCallbackHandler(this, v27, v28, buf);
            v14 = *buf;
            if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_57;
            }

            goto LABEL_77;
          }

          v45 = @"a function is expected";
          v46 = @"callback";
        }

        else
        {
          v45 = @"a number is expected";
          v46 = @"zoomFactor";
        }
      }

      else
      {
        v45 = @"a number is expected";
        v46 = @"tabID";
      }

      *a6 = WebKit::toJSError(this, @"tabs.setZoom()", &v46->isa, &v45->isa, v23);
      v42 = JSValueMakeUndefined(this);
LABEL_91:
      Undefined = v42;
      goto LABEL_69;
    }

    if (!a4)
    {
      *a6 = WebKit::toJSError(this, @"tabs.setZoom()", 0, &cfstr_ARequiredArgum.isa, v17);
      v42 = JSValueMakeUndefined(this);
      goto LABEL_91;
    }

    v18 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v14 = 0;
      v25 = NAN;
      v26 = NAN;
      goto LABEL_55;
    }

    v13 = a6;
    if (a4 == 1)
    {
      v22 = 0;
      v21 = 0;
      v14 = 0;
    }

    else
    {
      a6 = a5[v18];
      if (a6 && (JSValueIsObject(this, a5[v18]) && (v19 = JSValueToObject(this, a6, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, a6) || (IsUndefined = JSValueIsUndefined(this, a6), IsUndefined)))
      {
        v20 = (*(*v12 + 16))(v12);
        IsUndefined = WebKit::toJSCallbackHandler(this, a6, v20, buf);
        v14 = *buf;
        v21 = a4 - 2;
        v22 = 1;
      }

      else
      {
        v14 = 0;
        v22 = 0;
        v21 = a4 - 1;
      }

      if (v21 >= a4)
      {
        goto LABEL_84;
      }
    }

    a6 = a5[v21];
    if (a6)
    {
      if (!JSValueIsNumber(this, a5[v21]))
      {
        *v13 = WebKit::toJSError(this, @"tabs.setZoom()", &cfstr_Zoomfactor.isa, &cfstr_ANumberIsExpec.isa, v29);
        v41 = JSValueMakeUndefined(this);
        goto LABEL_87;
      }

      v26 = JSValueToNumber(this, a6, 0);
      --v21;
    }

    else
    {
      v26 = NAN;
    }

    v25 = NAN;
    if (v22 >= v18 || (v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    if (v21 < a4)
    {
      break;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    WTF::fastFree(IsUndefined, v16);
LABEL_49:
    v33 = v51;
    v51 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v16);
    }
  }

  v30 = a5[v21];
  if (v30 && (JSValueIsNumber(this, v30) || JSValueIsNull(this, v30) || JSValueIsUndefined(this, v30)))
  {
    v25 = JSValueToNumber(this, v30, 0);
    v18 = v21 - 1;
  }

  else
  {
    v25 = NAN;
LABEL_53:
    v18 = v21;
  }

  a6 = v13;
  v13 = &WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl[4];
LABEL_55:
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_77:
    *a6 = WebKit::toJSError(this, @"tabs.setZoom()", &cfstr_Zoomfactor.isa, &cfstr_ANumberIsExpec.isa, v17);
    v41 = JSValueMakeUndefined(this);
    goto LABEL_87;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    *a6 = WebKit::toJSError(this, @"tabs.setZoom()", 0, &cfstr_AnUnknownArgum.isa, v17);
    v41 = JSValueMakeUndefined(this);
LABEL_87:
    Undefined = v41;
    goto LABEL_67;
  }

LABEL_57:
  if (v14)
  {
    Undefined = 0;
  }

  else
  {
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v51 = reject;
    *v52 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v48, buf, v52, &v51);
    v14 = v48;
  }

  WebKit::toWebPage(this, buf);
  v35 = *buf;
  if (!*buf)
  {
    v43 = *(v13 + 343);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v52 = 0;
      _os_log_error_impl(&dword_19D52D000, v43, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v52, 2u);
      if (Undefined)
      {
LABEL_80:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.setZoom()", 0, &cfstr_AnUnknownError.isa, v44);
        if (Undefined)
        {
          goto LABEL_67;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_80;
    }

    v41 = JSValueMakeUndefined(this);
    goto LABEL_87;
  }

  v36 = *(*buf + 1832);
  *v52 = v14;
  v47 = 0;
  WebKit::WebExtensionAPITabs::setZoom(v12, v36, v52, &v47, v25, v26);
  v38 = v47;
  v39 = *v52;
  *v52 = 0;
  if (v39)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v39);
  }

  if (v38)
  {
    *a6 = WebKit::toJSError(this, @"tabs.setZoom()", 0, v38, v37);
LABEL_65:
    Undefined = JSValueMakeUndefined(this);
  }

  else if (!Undefined)
  {
    goto LABEL_65;
  }

  CFRelease(*(v35 + 8));
  v14 = 0;
LABEL_67:
  if (v14)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v14);
  }

LABEL_69:
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

void sub_19D88ED20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::detectLanguage(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    if (*v45)
    {
      v32 = *v45 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v31;
    v49 = 2082;
    v50 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.detectLanguage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = *v45;
    *v45 = 0;
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

    v35 = v44;
    v44 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_64;
      }

LABEL_65:
      v38 = @"a number is expected";
      v39 = @"tabID";
      goto LABEL_66;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v44 = reject;
    *v45 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, v45, &v44);
    v19 = v41;
LABEL_27:
    WebKit::toWebPage(this, buf);
    v25 = *buf;
    if (*buf)
    {
      v26 = *(*buf + 1832);
      *v45 = v19;
      v40 = 0;
      WebKit::WebExtensionAPITabs::detectLanguage(v12, v26, v45, &v40, v16);
      v28 = v40;
      v29 = *v45;
      *v45 = 0;
      if (v29)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
      }

      if (v28)
      {
        *a6 = WebKit::toJSError(this, @"tabs.detectLanguage()", 0, v28, v27);
      }

      else if (Undefined)
      {
LABEL_33:

        CFRelease(*(v25 + 8));
        goto LABEL_34;
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_33;
    }

    v36 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v45, 2u);
      if (Undefined)
      {
LABEL_58:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.detectLanguage()", 0, &cfstr_AnUnknownError.isa, v37);
        if (Undefined)
        {
          goto LABEL_60;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_58;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_60:
    if (v19)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
    }

    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_65;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_64:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_66:
  *a6 = WebKit::toJSError(this, @"tabs.detectLanguage()", &v39->isa, &v38->isa, v14);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D88F424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::toggleReaderMode(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    if (*v45)
    {
      v32 = *v45 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v31;
    v49 = 2082;
    v50 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.toggleReaderMode() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = *v45;
    *v45 = 0;
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

    v35 = v44;
    v44 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_64;
      }

LABEL_65:
      v38 = @"a number is expected";
      v39 = @"tabID";
      goto LABEL_66;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v44 = reject;
    *v45 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, v45, &v44);
    v19 = v41;
LABEL_27:
    WebKit::toWebPage(this, buf);
    v25 = *buf;
    if (*buf)
    {
      v26 = *(*buf + 1832);
      *v45 = v19;
      v40 = 0;
      WebKit::WebExtensionAPITabs::toggleReaderMode(v12, v26, v45, &v40, v16);
      v28 = v40;
      v29 = *v45;
      *v45 = 0;
      if (v29)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
      }

      if (v28)
      {
        *a6 = WebKit::toJSError(this, @"tabs.toggleReaderMode()", 0, v28, v27);
      }

      else if (Undefined)
      {
LABEL_33:

        CFRelease(*(v25 + 8));
        goto LABEL_34;
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_33;
    }

    v36 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v45, 2u);
      if (Undefined)
      {
LABEL_58:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.toggleReaderMode()", 0, &cfstr_AnUnknownError.isa, v37);
        if (Undefined)
        {
          goto LABEL_60;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_58;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_60:
    if (v19)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
    }

    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_65;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_64:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_66:
  *a6 = WebKit::toJSError(this, @"tabs.toggleReaderMode()", &v39->isa, &v38->isa, v14);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D88FB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::captureVisibleTab(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v11 = v10;
  if (!v10 || (++*(v10 + 12), *(v10 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (v11)
    {
      goto LABEL_42;
    }

    return Undefined;
  }

  v12 = qword_1ED640AB8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
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
    if (*v55)
    {
      v43 = *v55 + 16;
    }

    else
    {
      v43 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v57 = 2082;
    v58 = v42;
    v59 = 2082;
    v60 = v43;
    _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function tabs.captureVisibleTab() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    IsUndefined = *v55;
    *v55 = 0;
    if (!IsUndefined)
    {
      goto LABEL_73;
    }

    if (*IsUndefined != 1)
    {
      --*IsUndefined;
      goto LABEL_73;
    }

    goto LABEL_85;
  }

  while (1)
  {

    if (a4 == 3)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        v19 = WebKit::toJSValue(this, *(a5 + 8), v17);
        v20 = [v19 _isDictionary];

        if ((v20 & 1) != 0 || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
        {
          if (JSValueIsObject(this, *(a5 + 16)) && (v21 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
          {
            v22 = JSValueToNumber(this, *a5, 0);
            v12 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
            v23 = *(a5 + 16);
            v24 = (*(*v11 + 16))(v11);
            WebKit::toJSCallbackHandler(this, v23, v24, buf);
            v25 = *buf;
            goto LABEL_16;
          }

          v47 = @"a function is expected";
          v48 = @"callback";
        }

        else
        {
          v47 = @"an object is expected";
          v48 = @"options";
        }
      }

      else
      {
        v47 = @"a number is expected";
        v48 = @"windowID";
      }

      v35 = 0;
      *a6 = WebKit::toJSError(this, @"tabs.captureVisibleTab()", &v48->isa, &v47->isa, v18);
      Undefined = JSValueMakeUndefined(this);
      goto LABEL_41;
    }

    v28 = a4 - 1;
    if (a4 - 1 < 0)
    {
      v27 = 0;
      v22 = NAN;
      goto LABEL_28;
    }

    v12 = *(a5 + 8 * v28);
    if (!v12 || (!JSValueIsObject(this, *(a5 + 8 * v28)) || (v29 = JSValueToObject(this, v12, 0), !JSObjectIsFunction(this, v29))) && !JSValueIsNull(this, v12) && (IsUndefined = JSValueIsUndefined(this, v12), !IsUndefined))
    {
      v25 = 0;
      goto LABEL_46;
    }

    v30 = (*(*v11 + 16))(v11);
    IsUndefined = WebKit::toJSCallbackHandler(this, v12, v30, buf);
    v25 = *buf;
    v28 = a4 - 2;
    if (a4 - 2 < 0)
    {
      break;
    }

LABEL_46:
    if (v28 < a4)
    {
      v12 = *(a5 + 8 * v28);
      if (v12 && ((WebKit::toJSValue(this, *(a5 + 8 * v28), v15), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 _isDictionary], v37, (v38 & 1) != 0) || JSValueIsNull(this, v12) || (IsUndefined = JSValueIsUndefined(this, v12), IsUndefined)))
      {
        IsUndefined = WebKit::toNSDictionary(this, v12, 0, 0);
        v12 = IsUndefined;
        if (!v28)
        {
          goto LABEL_61;
        }

        --v28;
        v27 = IsUndefined;
      }

      else
      {
        v27 = 0;
      }

      if (v28 < a4)
      {
        v39 = *(a5 + 8 * v28);
        if (v39 && (JSValueIsNumber(this, v39) || JSValueIsNull(this, v39) || JSValueIsUndefined(this, v39)))
        {
          v40 = JSValueToNumber(this, v39, 0);
          if (!v28)
          {
            v22 = v40;
            v12 = v27;
            goto LABEL_16;
          }
        }

        *a6 = WebKit::toJSError(this, @"tabs.captureVisibleTab()", 0, &cfstr_AnUnknownArgum.isa, v16);
        v41 = JSValueMakeUndefined(this);
LABEL_63:
        Undefined = v41;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_85:
    WTF::fastFree(IsUndefined, v14);
LABEL_73:
    v44 = v54;
    v54 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v14);
    }
  }

  v12 = 0;
LABEL_61:
  v22 = NAN;
LABEL_16:
  if (v25)
  {
    Undefined = 0;
    v27 = v12;
    goto LABEL_29;
  }

  v27 = v12;
LABEL_28:
  reject = 0;
  resolve = 0;
  Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
  *buf = this;
  v54 = reject;
  *v55 = resolve;
  WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v51, buf, v55, &v54);
  v25 = v51;
LABEL_29:
  WebKit::toWebPage(this, buf);
  if (!*buf)
  {
    v45 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v55 = 0;
      _os_log_error_impl(&dword_19D52D000, v45, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v55, 2u);
      if (!Undefined)
      {
        goto LABEL_82;
      }
    }

    else if (!Undefined)
    {
      goto LABEL_82;
    }

    Undefined = WebKit::toJSRejectedPromise(this, @"tabs.captureVisibleTab()", 0, &cfstr_AnUnknownError.isa, v46);
    if (Undefined)
    {
      goto LABEL_38;
    }

LABEL_82:
    v41 = JSValueMakeUndefined(this);
    goto LABEL_63;
  }

  v31 = *(*buf + 1832);
  *v55 = v25;
  v50 = 0;
  WebKit::WebExtensionAPITabs::captureVisibleTab(v11, v31, v27, v55, &v50, v22);
  v33 = v50;
  v34 = *v55;
  *v55 = 0;
  if (v34)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v34);
  }

  if (v33)
  {
    *a6 = WebKit::toJSError(this, @"tabs.captureVisibleTab()", 0, v33, v32);
LABEL_34:
    Undefined = JSValueMakeUndefined(this);
  }

  else if (!Undefined)
  {
    goto LABEL_34;
  }

  if (*buf)
  {
    CFRelease(*(*buf + 8));
  }

  v25 = 0;
LABEL_38:
  if (v25)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v25);
  }

  v35 = v27;
LABEL_41:

LABEL_42:
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

void sub_19D890404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPITabs::sendMessage(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, unint64_t a6, const OpaqueJSValue **a7)
{
  v77 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 12), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_68;
  }

  v13 = qword_1ED640AB8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
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
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.sendMessage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    v56 = v70;
    v70 = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v54);
    }
  }

  v16 = a4 - 1;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      exception = a6;
      v28 = 0;
      a6 = 1;
    }

    else
    {
      if (a4 == 4)
      {
        if (JSValueIsNumber(this, *a5))
        {
          if (!JSValueIsNull(this, *(a5 + 8)) && !JSValueIsUndefined(this, *(a5 + 8)))
          {
            v17 = JSValueToObject(this, *(a5 + 8), 0);
            if (!JSObjectIsFunction(this, v17))
            {
              v19 = WebKit::toJSValue(this, *(a5 + 16), v18);
              v20 = [v19 _isDictionary];

              if ((v20 & 1) == 0 && !JSValueIsNull(this, *(a5 + 16)) && !JSValueIsUndefined(this, *(a5 + 16)))
              {
                v57 = @"an object is expected";
                v58 = @"options";
                goto LABEL_108;
              }

              if (JSValueIsObject(this, *(a5 + 24)) && (v21 = JSValueToObject(this, *(a5 + 24), 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *(a5 + 24)) || JSValueIsUndefined(this, *(a5 + 24)))
              {
                v22 = JSValueToNumber(this, *a5, 0);
                v24 = WebKit::serializeJSObject(this, *(a5 + 8), a6, v23);
                v25 = WebKit::toNSDictionary(this, *(a5 + 16), 0, 0);
                v26 = *(a5 + 24);
                v27 = (*(*v12 + 16))(v12);
                WebKit::toJSCallbackHandler(this, v26, v27, buf);
                v28 = *buf;
                v29 = 4;
                v30 = v24;
                v31 = v25;
                v16 = 4;
                goto LABEL_48;
              }

              goto LABEL_106;
            }
          }

          v57 = @"an object is expected";
          v58 = @"message";
        }

        else
        {
          v57 = @"a number is expected";
          v58 = @"tabID";
        }

LABEL_108:
        v50 = 0;
        *a6 = WebKit::toJSError(this, @"tabs.sendMessage()", &v58->isa, &v57->isa, v15);
        Undefined = JSValueMakeUndefined(this);
        v30 = 0;
LABEL_67:

        goto LABEL_68;
      }

      exception = a6;
      v32 = *(a5 + 8 * v16);
      if (v32)
      {
        if (JSValueIsObject(this, *(a5 + 8 * v16)) && (v33 = JSValueToObject(this, v32, 0), JSObjectIsFunction(this, v33)) || JSValueIsNull(this, v32) || JSValueIsUndefined(this, v32))
        {
          v34 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v32, v34, buf);
          v28 = *buf;
          a6 = a4 == 3;
          goto LABEL_28;
        }
      }

      v28 = 0;
      a6 = 0;
    }

    v16 = a4;
LABEL_28:
    v35 = *a5;
    if (*a5)
    {
      if (JSValueIsNumber(this, *a5))
      {
        v22 = JSValueToNumber(this, v35, 0);
        v37 = *(a5 + 8);
        if (!v37)
        {
          v30 = 0;
          v29 = 1;
          goto LABEL_37;
        }

        if (!JSValueIsNull(this, *(a5 + 8)) && !JSValueIsUndefined(this, v37))
        {
          v38 = JSValueToObject(this, v37, 0);
          if (!JSObjectIsFunction(this, v38))
          {
            WebKit::serializeJSObject(this, v37, exception, v39);
            v30 = v29 = 2;
LABEL_37:
            if (v29 >= v16)
            {
              v40 = 1;
            }

            else
            {
              v40 = a6;
            }

            if (v40)
            {
              goto LABEL_47;
            }

            if (v29 >= a4)
            {
              __break(1u);
LABEL_106:
              v57 = @"a function is expected";
              v58 = @"callback";
              goto LABEL_108;
            }

            v41 = *(a5 + 8 * v29);
            if (!v41)
            {
LABEL_47:
              v31 = 0;
              a6 = exception;
            }

            else
            {
              v42 = WebKit::toJSValue(this, v41, v14);
              v43 = [v42 _isDictionary];

              a6 = exception;
              if ((v43 & 1) != 0 || JSValueIsNull(this, v41) || JSValueIsUndefined(this, v41))
              {
                v31 = WebKit::toNSDictionary(this, v41, 0, 0);
                ++v29;
              }

              else
              {
                v31 = 0;
              }
            }

LABEL_48:
            if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              v59 = WebKit::toJSError(this, @"tabs.sendMessage()", &cfstr_Tabid_0.isa, &cfstr_ANumberIsExpec.isa, v15);
            }

            else
            {
              if (*a6)
              {
LABEL_93:
                v60 = JSValueMakeUndefined(this);
                goto LABEL_94;
              }

              if (!v30)
              {
                v30 = 0;
                *a6 = WebKit::toJSError(this, @"tabs.sendMessage()", &cfstr_Message_0.isa, &cfstr_AJsonSerializa.isa, v15);
                v60 = JSValueMakeUndefined(this);
LABEL_94:
                Undefined = v60;
LABEL_64:
                if (v28)
                {
                  WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v28);
                }

                v50 = v31;
                goto LABEL_67;
              }

              if (v29 >= v16)
              {
                if (v28)
                {
                  Undefined = 0;
                }

                else
                {
                  reject = 0;
                  resolve = 0;
                  Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
                  *buf = this;
                  v70 = reject;
                  *v71 = resolve;
                  WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v67, buf, v71, &v70);
                  v28 = v67;
                }

                GlobalContext = JSContextGetGlobalContext(this);
                WebKit::WebFrame::frameForContext(GlobalContext, v46, buf);
                if (*buf)
                {
                  *v71 = v28;
                  v66 = 0;
                  WebKit::WebExtensionAPITabs::sendMessage(v12, *buf, v30, v31, v71, &v66, v22);
                  v48 = v66;
                  v49 = *v71;
                  *v71 = 0;
                  if (v49)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v49);
                  }

                  if (v48)
                  {
                    *a6 = WebKit::toJSError(this, @"tabs.sendMessage()", 0, v48, v47);
                  }

                  else if (Undefined)
                  {
LABEL_61:

                    if (*buf)
                    {
                      CFRelease(*(*buf + 8));
                    }

                    v28 = 0;
                    goto LABEL_64;
                  }

                  Undefined = JSValueMakeUndefined(this);
                  goto LABEL_61;
                }

                v61 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v71 = 0;
                  _os_log_error_impl(&dword_19D52D000, v61, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v71, 2u);
                  if (Undefined)
                  {
LABEL_97:
                    Undefined = WebKit::toJSRejectedPromise(this, @"tabs.sendMessage()", 0, &cfstr_AnUnknownError.isa, v62);
                    if (Undefined)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                else if (Undefined)
                {
                  goto LABEL_97;
                }

                v60 = JSValueMakeUndefined(this);
                goto LABEL_94;
              }

              v59 = WebKit::toJSError(this, @"tabs.sendMessage()", 0, &cfstr_AnUnknownArgum.isa, v15);
            }

            *a6 = v59;
            goto LABEL_93;
          }
        }

        v63 = @"an object is expected";
        v64 = @"message";
      }

      else
      {
        v63 = @"a number is expected";
        v64 = @"tabID";
      }

      v30 = 0;
      *exception = WebKit::toJSError(this, @"tabs.sendMessage()", &v64->isa, &v63->isa, v36);
      Undefined = JSValueMakeUndefined(this);
      v31 = 0;
      goto LABEL_64;
    }

    v29 = 0;
    v30 = 0;
    v22 = NAN;
    goto LABEL_37;
  }

  *a6 = WebKit::toJSError(this, @"tabs.sendMessage()", 0, &cfstr_ARequiredArgum.isa, v15);
  Undefined = JSValueMakeUndefined(this);
LABEL_68:
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

void sub_19D890F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

JSValueRef WebKit::JSWebExtensionAPITabs::connect(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
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
      v30 = "argument";
    }

    else
    {
      v30 = "arguments";
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::utf8();
    if (*v41)
    {
      v31 = *v41 + 16;
    }

    else
    {
      v31 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v43 = 2082;
    v44 = v30;
    v45 = 2082;
    v46 = v31;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.connect() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v33 = *v41;
    *v41 = 0;
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

    v34 = v40;
    v40 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v32);
    }
  }

  if (a4 == 1)
  {
    if (JSValueIsNumber(this, *a5))
    {
      v15 = 0;
      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  if (a4 == 2)
  {
    if (JSValueIsNumber(this, *a5))
    {
      v19 = WebKit::toJSValue(this, *(a5 + 8), v18);
      v20 = [v19 _isDictionary];

      if ((v20 & 1) != 0 || JSValueIsNull(this, *(a5 + 8)) || JSValueIsUndefined(this, *(a5 + 8)))
      {
        v16 = JSValueToNumber(this, *a5, 0);
        v15 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
LABEL_15:
        if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          *a6 = WebKit::toJSError(this, @"tabs.connect()", &cfstr_Tabid_0.isa, &cfstr_ANumberIsExpec.isa, v14);
          v35 = JSValueMakeUndefined(this);
        }

        else
        {
          GlobalContext = JSContextGetGlobalContext(this);
          WebKit::WebFrame::frameForContext(GlobalContext, v22, buf);
          v23 = *buf;
          if (*buf)
          {
            v39 = 0;
            WebKit::WebExtensionAPITabs::connect(v12, *buf, this, v15, &v39, v41, v16);
            v24 = v39;
            if (*v41)
            {
              v25 = (*v41 + 40);
            }

            else
            {
              v25 = 0;
            }

            Undefined = WebKit::JSWebExtensionWrapper::wrap(this, v25);
            v28 = *v41;
            *v41 = 0;
            if (v28)
            {
              if (*(v28 + 12) == 1)
              {
                (*(*(v28 + 5) + 8))();
                if (!v24)
                {
                  goto LABEL_24;
                }

                goto LABEL_43;
              }

              --*(v28 + 12);
            }

            if (!v24)
            {
LABEL_24:

              CFRelease(*(v23 + 8));
LABEL_25:

              goto LABEL_26;
            }

LABEL_43:
            *a6 = WebKit::toJSError(this, @"tabs.connect()", 0, v24, v26);
            Undefined = JSValueMakeUndefined(this);
            goto LABEL_24;
          }

          v36 = qword_1ED640AB8;
          if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
          {
            *v41 = 0;
            _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v41, 2u);
          }

          v35 = JSValueMakeUndefined(this);
        }

LABEL_53:
        Undefined = v35;
        goto LABEL_25;
      }

      v37 = @"an object is expected";
      v38 = @"options";
LABEL_52:
      v15 = 0;
      *a6 = WebKit::toJSError(this, @"tabs.connect()", &v38->isa, &v37->isa, v17);
      v35 = JSValueMakeUndefined(this);
      goto LABEL_53;
    }

LABEL_51:
    v37 = @"a number is expected";
    v38 = @"tabID";
    goto LABEL_52;
  }

  if (a4)
  {
    v15 = 0;
    v16 = NAN;
    goto LABEL_15;
  }

  *a6 = WebKit::toJSError(this, @"tabs.connect()", 0, &cfstr_ARequiredArgum.isa, v14);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D8915C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
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

JSValueRef WebKit::JSWebExtensionAPITabs::tabIdentifierNone(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.TAB_ID_NONE in %{public}s world", buf, 0xCu);
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

void sub_19D8918E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onActivated(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onActivated in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onActivated(v7);
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

void sub_19D891B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onAttached(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onAttached in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onAttached(v7);
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

void sub_19D891E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onCreated(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onCreated in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onCreated(v7);
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

void sub_19D89209C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onDetached(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onDetached in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onDetached(v7);
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

void sub_19D892330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onHighlighted(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onHighlighted in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onHighlighted(v7);
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

void sub_19D8925C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onMoved(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onMoved in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onMoved(v7);
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

void sub_19D892858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onRemoved(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onRemoved in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onRemoved(v7);
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

void sub_19D892AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onReplaced(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onReplaced in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onReplaced(v7);
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

void sub_19D892D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::onUpdated(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSString *a4, const OpaqueJSValue **a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = WebKit::toWebExtensionAPITabs(this, a2, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Called getter tabs.onUpdated in %{public}s world", buf, 0xCu);
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

    v9 = WebKit::WebExtensionAPITabs::onUpdated(v7);
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

void sub_19D893014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITabs::getSelected(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v12 = v11;
  if (!v11 || (++*(v11 + 48), *(v11 + 8)))
  {
    Undefined = JSValueMakeUndefined(this);
    if (!v12)
    {
      return Undefined;
    }

    goto LABEL_34;
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
    if (*v45)
    {
      v32 = *v45 + 16;
    }

    else
    {
      v32 = 0;
    }

    *buf = 134349570;
    *&buf[4] = a4;
    v47 = 2082;
    v48 = v31;
    v49 = 2082;
    v50 = v32;
    _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function tabs.getSelected() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
    v34 = *v45;
    *v45 = 0;
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

    v35 = v44;
    v44 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
      {
        if (JSValueIsObject(this, a5[1]) && (v15 = JSValueToObject(this, a5[1], 0), JSObjectIsFunction(this, v15)) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v16 = JSValueToNumber(this, *a5, 0);
          v17 = a5[1];
          v18 = (*(*v12 + 16))(v12);
          WebKit::toJSCallbackHandler(this, v17, v18, buf);
          v19 = *buf;
          if (!*buf)
          {
            goto LABEL_26;
          }

LABEL_24:
          Undefined = 0;
          goto LABEL_27;
        }

        goto LABEL_64;
      }

LABEL_65:
      v38 = @"a number is expected";
      v39 = @"windowID";
      goto LABEL_66;
    }

    v16 = NAN;
LABEL_26:
    reject = 0;
    resolve = 0;
    Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
    *buf = this;
    v44 = reject;
    *v45 = resolve;
    WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v41, buf, v45, &v44);
    v19 = v41;
LABEL_27:
    WebKit::toWebPage(this, buf);
    v25 = *buf;
    if (*buf)
    {
      v26 = *(*buf + 1832);
      *v45 = v19;
      v40 = 0;
      WebKit::WebExtensionAPITabs::getSelected(v12, v26, v45, &v40, v16);
      v28 = v40;
      v29 = *v45;
      *v45 = 0;
      if (v29)
      {
        WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v29);
      }

      if (v28)
      {
        *a6 = WebKit::toJSError(this, @"tabs.getSelected()", 0, v28, v27);
      }

      else if (Undefined)
      {
LABEL_33:

        CFRelease(*(v25 + 8));
        goto LABEL_34;
      }

      Undefined = JSValueMakeUndefined(this);
      goto LABEL_33;
    }

    v36 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v45, 2u);
      if (Undefined)
      {
LABEL_58:
        Undefined = WebKit::toJSRejectedPromise(this, @"tabs.getSelected()", 0, &cfstr_AnUnknownError.isa, v37);
        if (Undefined)
        {
          goto LABEL_60;
        }
      }
    }

    else if (Undefined)
    {
      goto LABEL_58;
    }

    Undefined = JSValueMakeUndefined(this);
LABEL_60:
    if (v19)
    {
      WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v19);
    }

    goto LABEL_34;
  }

  if (!JSValueIsObject(this, *a5) || (v20 = JSValueToObject(this, *a5, 0), !JSObjectIsFunction(this, v20)))
  {
    if (!JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
    {
      if (!JSValueIsNumber(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        goto LABEL_65;
      }

      v16 = JSValueToNumber(this, *a5, 0);
      goto LABEL_26;
    }
  }

  if (JSValueIsObject(this, *a5) && (v21 = JSValueToObject(this, *a5, 0), JSObjectIsFunction(this, v21)) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
  {
    v22 = *a5;
    v23 = (*(*v12 + 16))(v12);
    WebKit::toJSCallbackHandler(this, v22, v23, buf);
    v19 = *buf;
    v16 = NAN;
    if (*buf)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_64:
  v38 = @"a function is expected";
  v39 = @"callback";
LABEL_66:
  *a6 = WebKit::toJSError(this, @"tabs.getSelected()", &v39->isa, &v38->isa, v14);
  Undefined = JSValueMakeUndefined(this);
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

void sub_19D8936BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15)
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

JSValueRef WebKit::JSWebExtensionAPITabs::executeScript(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v11 = v10;
  if (v10)
  {
    ++*(v10 + 48);
    if (!*(v10 + 8))
    {
      v12 = qword_1ED640AB8;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
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
        if (*v58)
        {
          v45 = *v58 + 16;
        }

        else
        {
          v45 = 0;
        }

        *buf = 134349570;
        *&buf[4] = a4;
        v60 = 2082;
        v61 = v44;
        v62 = 2082;
        v63 = v45;
        _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function tabs.executeScript() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
        IsUndefined = *v58;
        *v58 = 0;
        if (!IsUndefined)
        {
          goto LABEL_73;
        }

        if (*IsUndefined != 1)
        {
          --*IsUndefined;
          goto LABEL_73;
        }

        goto LABEL_88;
      }

      while (1)
      {

        if (a4 == 3)
        {
          if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
          {
            v24 = WebKit::toJSValue(this, *(a5 + 8), v22);
            v25 = [v24 _isDictionary];

            if (v25)
            {
              if (JSValueIsObject(this, *(a5 + 16)) && (v26 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v26)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
              {
                v27 = JSValueToNumber(this, *a5, 0);
                v28 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
                v29 = *(a5 + 16);
                v30 = (*(*v11 + 16))(v11);
                WebKit::toJSCallbackHandler(this, v29, v30, buf);
                v12 = *buf;
                if (v28)
                {
                  if (!*buf)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              v49 = @"a function is expected";
              v50 = @"callback";
            }

            else
            {
              v49 = @"an object is expected";
              v50 = @"details";
            }
          }

          else
          {
            v49 = @"a number is expected";
            v50 = @"tabID";
          }

          v42 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.executeScript()", &v50->isa, &v49->isa, v23);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_60;
        }

        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"tabs.executeScript()", 0, &cfstr_ARequiredArgum.isa, v16);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_61;
        }

        v17 = a4 - 1;
        if (a4 - 1 < 0)
        {
          v12 = 0;
          goto LABEL_26;
        }

        if (a4 == 1)
        {
          v51 = 0;
          v21 = 0;
          v12 = 0;
        }

        else
        {
          v18 = *(a5 + 8 * v17);
          if (v18 && (JSValueIsObject(this, *(a5 + 8 * v17)) && (v19 = JSValueToObject(this, v18, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, v18) || (IsUndefined = JSValueIsUndefined(this, v18), IsUndefined)))
          {
            v20 = (*(*v11 + 16))(v11);
            IsUndefined = WebKit::toJSCallbackHandler(this, v18, v20, buf);
            v12 = *buf;
            v21 = a4 - 2;
            v51 = 1;
          }

          else
          {
            v12 = 0;
            v51 = 0;
            v21 = a4 - 1;
          }

          if (v21 >= a4)
          {
            goto LABEL_87;
          }
        }

        v34 = *(a5 + 8 * v21);
        if (v34)
        {
          v35 = WebKit::toJSValue(this, *(a5 + 8 * v21), v15);
          v36 = [v35 _isDictionary];

          if ((v36 & 1) == 0)
          {
            goto LABEL_26;
          }

          IsUndefined = WebKit::toNSDictionary(this, v34, 0, 0);
          --v21;
          v32 = IsUndefined;
        }

        else
        {
          v32 = 0;
        }

        v27 = NAN;
        if (v51 >= v17 || (v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v21 < a4)
        {
          v37 = *(a5 + 8 * v21);
          if (v37 && (JSValueIsNumber(this, v37) || JSValueIsNull(this, v37) || JSValueIsUndefined(this, v37)))
          {
            v27 = JSValueToNumber(this, v37, 0);
            --v21;
          }

          else
          {
            v27 = NAN;
          }

LABEL_44:
          if (v32)
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              v28 = v32;
              if (!v12)
              {
LABEL_47:
                reject = 0;
                resolve = 0;
                Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
                *buf = this;
                v57 = reject;
                *v58 = resolve;
                WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v54, buf, v58, &v57);
                v12 = v54;
LABEL_48:
                WebKit::toWebPage(this, buf);
                if (*buf)
                {
                  v38 = *(*buf + 1832);
                  *v58 = v12;
                  v53 = 0;
                  WebKit::WebExtensionAPITabs::executeScript(v11, v38, v28, v58, &v53, v27);
                  v40 = v53;
                  v41 = *v58;
                  *v58 = 0;
                  if (v41)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v41);
                  }

                  if (v40)
                  {
                    *a6 = WebKit::toJSError(this, @"tabs.executeScript()", 0, v40, v39);
LABEL_53:
                    Undefined = JSValueMakeUndefined(this);
                  }

                  else if (!Undefined)
                  {
                    goto LABEL_53;
                  }

                  if (*buf)
                  {
                    CFRelease(*(*buf + 8));
                  }

                  v12 = 0;
LABEL_57:
                  if (v12)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v12);
                  }

                  v42 = v28;
LABEL_60:

                  goto LABEL_61;
                }

                v47 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v58 = 0;
                  _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v58, 2u);
                  if (Undefined)
                  {
                    goto LABEL_83;
                  }
                }

                else if (Undefined)
                {
LABEL_83:
                  Undefined = WebKit::toJSRejectedPromise(this, @"tabs.executeScript()", 0, &cfstr_AnUnknownError.isa, v48);
                  if (Undefined)
                  {
                    goto LABEL_57;
                  }
                }

                Undefined = JSValueMakeUndefined(this);
                goto LABEL_57;
              }

LABEL_24:
              Undefined = 0;
              goto LABEL_48;
            }

            *a6 = WebKit::toJSError(this, @"tabs.executeScript()", 0, &cfstr_AnUnknownArgum.isa, v16);
            v33 = JSValueMakeUndefined(this);
LABEL_27:
            Undefined = v33;
            v28 = v32;
            goto LABEL_57;
          }

LABEL_26:
          v32 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.executeScript()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v16);
          v33 = JSValueMakeUndefined(this);
          goto LABEL_27;
        }

LABEL_87:
        __break(1u);
LABEL_88:
        WTF::fastFree(IsUndefined, v14);
LABEL_73:
        v46 = v57;
        v57 = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v14);
        }
      }
    }
  }

  Undefined = JSValueMakeUndefined(this);
  if (v11)
  {
LABEL_61:
    if (*(v11 + 48) == 1)
    {
      (*(*(v11 + 40) + 8))(v11 + 40);
    }

    else
    {
      --*(v11 + 48);
    }
  }

  return Undefined;
}

void sub_19D89402C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    CFRelease(*(a19 + 8));
  }

  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (*(v19 + 48) == 1)
  {
    (*(*(v19 + 40) + 8))(v19 + 40);
  }

  else
  {
    --*(v19 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPITabs::insertCSS(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v11 = v10;
  if (v10)
  {
    ++*(v10 + 48);
    if (!*(v10 + 8))
    {
      v12 = qword_1ED640AB8;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
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
        if (*v58)
        {
          v45 = *v58 + 16;
        }

        else
        {
          v45 = 0;
        }

        *buf = 134349570;
        *&buf[4] = a4;
        v60 = 2082;
        v61 = v44;
        v62 = 2082;
        v63 = v45;
        _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function tabs.insertCSS() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
        IsUndefined = *v58;
        *v58 = 0;
        if (!IsUndefined)
        {
          goto LABEL_73;
        }

        if (*IsUndefined != 1)
        {
          --*IsUndefined;
          goto LABEL_73;
        }

        goto LABEL_88;
      }

      while (1)
      {

        if (a4 == 3)
        {
          if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
          {
            v24 = WebKit::toJSValue(this, *(a5 + 8), v22);
            v25 = [v24 _isDictionary];

            if (v25)
            {
              if (JSValueIsObject(this, *(a5 + 16)) && (v26 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v26)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
              {
                v27 = JSValueToNumber(this, *a5, 0);
                v28 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
                v29 = *(a5 + 16);
                v30 = (*(*v11 + 16))(v11);
                WebKit::toJSCallbackHandler(this, v29, v30, buf);
                v12 = *buf;
                if (v28)
                {
                  if (!*buf)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              v49 = @"a function is expected";
              v50 = @"callback";
            }

            else
            {
              v49 = @"an object is expected";
              v50 = @"details";
            }
          }

          else
          {
            v49 = @"a number is expected";
            v50 = @"tabID";
          }

          v42 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.insertCSS()", &v50->isa, &v49->isa, v23);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_60;
        }

        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"tabs.insertCSS()", 0, &cfstr_ARequiredArgum.isa, v16);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_61;
        }

        v17 = a4 - 1;
        if (a4 - 1 < 0)
        {
          v12 = 0;
          goto LABEL_26;
        }

        if (a4 == 1)
        {
          v51 = 0;
          v21 = 0;
          v12 = 0;
        }

        else
        {
          v18 = *(a5 + 8 * v17);
          if (v18 && (JSValueIsObject(this, *(a5 + 8 * v17)) && (v19 = JSValueToObject(this, v18, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, v18) || (IsUndefined = JSValueIsUndefined(this, v18), IsUndefined)))
          {
            v20 = (*(*v11 + 16))(v11);
            IsUndefined = WebKit::toJSCallbackHandler(this, v18, v20, buf);
            v12 = *buf;
            v21 = a4 - 2;
            v51 = 1;
          }

          else
          {
            v12 = 0;
            v51 = 0;
            v21 = a4 - 1;
          }

          if (v21 >= a4)
          {
            goto LABEL_87;
          }
        }

        v34 = *(a5 + 8 * v21);
        if (v34)
        {
          v35 = WebKit::toJSValue(this, *(a5 + 8 * v21), v15);
          v36 = [v35 _isDictionary];

          if ((v36 & 1) == 0)
          {
            goto LABEL_26;
          }

          IsUndefined = WebKit::toNSDictionary(this, v34, 0, 0);
          --v21;
          v32 = IsUndefined;
        }

        else
        {
          v32 = 0;
        }

        v27 = NAN;
        if (v51 >= v17 || (v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v21 < a4)
        {
          v37 = *(a5 + 8 * v21);
          if (v37 && (JSValueIsNumber(this, v37) || JSValueIsNull(this, v37) || JSValueIsUndefined(this, v37)))
          {
            v27 = JSValueToNumber(this, v37, 0);
            --v21;
          }

          else
          {
            v27 = NAN;
          }

LABEL_44:
          if (v32)
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              v28 = v32;
              if (!v12)
              {
LABEL_47:
                reject = 0;
                resolve = 0;
                Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
                *buf = this;
                v57 = reject;
                *v58 = resolve;
                WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v54, buf, v58, &v57);
                v12 = v54;
LABEL_48:
                WebKit::toWebPage(this, buf);
                if (*buf)
                {
                  v38 = *(*buf + 1832);
                  *v58 = v12;
                  v53 = 0;
                  WebKit::WebExtensionAPITabs::insertCSS(v11, v38, v28, v58, &v53, v27);
                  v40 = v53;
                  v41 = *v58;
                  *v58 = 0;
                  if (v41)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v41);
                  }

                  if (v40)
                  {
                    *a6 = WebKit::toJSError(this, @"tabs.insertCSS()", 0, v40, v39);
LABEL_53:
                    Undefined = JSValueMakeUndefined(this);
                  }

                  else if (!Undefined)
                  {
                    goto LABEL_53;
                  }

                  if (*buf)
                  {
                    CFRelease(*(*buf + 8));
                  }

                  v12 = 0;
LABEL_57:
                  if (v12)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v12);
                  }

                  v42 = v28;
LABEL_60:

                  goto LABEL_61;
                }

                v47 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v58 = 0;
                  _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v58, 2u);
                  if (Undefined)
                  {
                    goto LABEL_83;
                  }
                }

                else if (Undefined)
                {
LABEL_83:
                  Undefined = WebKit::toJSRejectedPromise(this, @"tabs.insertCSS()", 0, &cfstr_AnUnknownError.isa, v48);
                  if (Undefined)
                  {
                    goto LABEL_57;
                  }
                }

                Undefined = JSValueMakeUndefined(this);
                goto LABEL_57;
              }

LABEL_24:
              Undefined = 0;
              goto LABEL_48;
            }

            *a6 = WebKit::toJSError(this, @"tabs.insertCSS()", 0, &cfstr_AnUnknownArgum.isa, v16);
            v33 = JSValueMakeUndefined(this);
LABEL_27:
            Undefined = v33;
            v28 = v32;
            goto LABEL_57;
          }

LABEL_26:
          v32 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.insertCSS()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v16);
          v33 = JSValueMakeUndefined(this);
          goto LABEL_27;
        }

LABEL_87:
        __break(1u);
LABEL_88:
        WTF::fastFree(IsUndefined, v14);
LABEL_73:
        v46 = v57;
        v57 = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v14);
        }
      }
    }
  }

  Undefined = JSValueMakeUndefined(this);
  if (v11)
  {
LABEL_61:
    if (*(v11 + 48) == 1)
    {
      (*(*(v11 + 40) + 8))(v11 + 40);
    }

    else
    {
      --*(v11 + 48);
    }
  }

  return Undefined;
}

void sub_19D8949E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    CFRelease(*(a19 + 8));
  }

  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (*(v19 + 48) == 1)
  {
    (*(*(v19 + 40) + 8))(v19 + 40);
  }

  else
  {
    --*(v19 + 48);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JSWebExtensionAPITabs::removeCSS(WebKit::JSWebExtensionAPITabs *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPITabs(this, a3, a3);
  v11 = v10;
  if (v10)
  {
    ++*(v10 + 48);
    if (!*(v10 + 8))
    {
      v12 = qword_1ED640AB8;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
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
        if (*v58)
        {
          v45 = *v58 + 16;
        }

        else
        {
          v45 = 0;
        }

        *buf = 134349570;
        *&buf[4] = a4;
        v60 = 2082;
        v61 = v44;
        v62 = 2082;
        v63 = v45;
        _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function tabs.removeCSS() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
        IsUndefined = *v58;
        *v58 = 0;
        if (!IsUndefined)
        {
          goto LABEL_73;
        }

        if (*IsUndefined != 1)
        {
          --*IsUndefined;
          goto LABEL_73;
        }

        goto LABEL_88;
      }

      while (1)
      {

        if (a4 == 3)
        {
          if (JSValueIsNumber(this, *a5) || JSValueIsNull(this, *a5) || JSValueIsUndefined(this, *a5))
          {
            v24 = WebKit::toJSValue(this, *(a5 + 8), v22);
            v25 = [v24 _isDictionary];

            if (v25)
            {
              if (JSValueIsObject(this, *(a5 + 16)) && (v26 = JSValueToObject(this, *(a5 + 16), 0), JSObjectIsFunction(this, v26)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
              {
                v27 = JSValueToNumber(this, *a5, 0);
                v28 = WebKit::toNSDictionary(this, *(a5 + 8), 0, 0);
                v29 = *(a5 + 16);
                v30 = (*(*v11 + 16))(v11);
                WebKit::toJSCallbackHandler(this, v29, v30, buf);
                v12 = *buf;
                if (v28)
                {
                  if (!*buf)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              v49 = @"a function is expected";
              v50 = @"callback";
            }

            else
            {
              v49 = @"an object is expected";
              v50 = @"details";
            }
          }

          else
          {
            v49 = @"a number is expected";
            v50 = @"tabID";
          }

          v42 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.removeCSS()", &v50->isa, &v49->isa, v23);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_60;
        }

        if (!a4)
        {
          *a6 = WebKit::toJSError(this, @"tabs.removeCSS()", 0, &cfstr_ARequiredArgum.isa, v16);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_61;
        }

        v17 = a4 - 1;
        if (a4 - 1 < 0)
        {
          v12 = 0;
          goto LABEL_26;
        }

        if (a4 == 1)
        {
          v51 = 0;
          v21 = 0;
          v12 = 0;
        }

        else
        {
          v18 = *(a5 + 8 * v17);
          if (v18 && (JSValueIsObject(this, *(a5 + 8 * v17)) && (v19 = JSValueToObject(this, v18, 0), JSObjectIsFunction(this, v19)) || JSValueIsNull(this, v18) || (IsUndefined = JSValueIsUndefined(this, v18), IsUndefined)))
          {
            v20 = (*(*v11 + 16))(v11);
            IsUndefined = WebKit::toJSCallbackHandler(this, v18, v20, buf);
            v12 = *buf;
            v21 = a4 - 2;
            v51 = 1;
          }

          else
          {
            v12 = 0;
            v51 = 0;
            v21 = a4 - 1;
          }

          if (v21 >= a4)
          {
            goto LABEL_87;
          }
        }

        v34 = *(a5 + 8 * v21);
        if (v34)
        {
          v35 = WebKit::toJSValue(this, *(a5 + 8 * v21), v15);
          v36 = [v35 _isDictionary];

          if ((v36 & 1) == 0)
          {
            goto LABEL_26;
          }

          IsUndefined = WebKit::toNSDictionary(this, v34, 0, 0);
          --v21;
          v32 = IsUndefined;
        }

        else
        {
          v32 = 0;
        }

        v27 = NAN;
        if (v51 >= v17 || (v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v21 < a4)
        {
          v37 = *(a5 + 8 * v21);
          if (v37 && (JSValueIsNumber(this, v37) || JSValueIsNull(this, v37) || JSValueIsUndefined(this, v37)))
          {
            v27 = JSValueToNumber(this, v37, 0);
            --v21;
          }

          else
          {
            v27 = NAN;
          }

LABEL_44:
          if (v32)
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              v28 = v32;
              if (!v12)
              {
LABEL_47:
                reject = 0;
                resolve = 0;
                Undefined = JSObjectMakeDeferredPromise(this, &resolve, &reject, 0);
                *buf = this;
                v57 = reject;
                *v58 = resolve;
                WebKit::WebExtensionCallbackHandler::create<OpaqueJSContext const*&,OpaqueJSValue *&,OpaqueJSValue *&>(&v54, buf, v58, &v57);
                v12 = v54;
LABEL_48:
                WebKit::toWebPage(this, buf);
                if (*buf)
                {
                  v38 = *(*buf + 1832);
                  *v58 = v12;
                  v53 = 0;
                  WebKit::WebExtensionAPITabs::removeCSS(v11, v38, v28, v58, &v53, v27);
                  v40 = v53;
                  v41 = *v58;
                  *v58 = 0;
                  if (v41)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v41);
                  }

                  if (v40)
                  {
                    *a6 = WebKit::toJSError(this, @"tabs.removeCSS()", 0, v40, v39);
LABEL_53:
                    Undefined = JSValueMakeUndefined(this);
                  }

                  else if (!Undefined)
                  {
                    goto LABEL_53;
                  }

                  if (*buf)
                  {
                    CFRelease(*(*buf + 8));
                  }

                  v12 = 0;
LABEL_57:
                  if (v12)
                  {
                    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v12);
                  }

                  v42 = v28;
LABEL_60:

                  goto LABEL_61;
                }

                v47 = qword_1ED640AB8;
                if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
                {
                  *v58 = 0;
                  _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, "Page could not be found for JSContextRef", v58, 2u);
                  if (Undefined)
                  {
                    goto LABEL_83;
                  }
                }

                else if (Undefined)
                {
LABEL_83:
                  Undefined = WebKit::toJSRejectedPromise(this, @"tabs.removeCSS()", 0, &cfstr_AnUnknownError.isa, v48);
                  if (Undefined)
                  {
                    goto LABEL_57;
                  }
                }

                Undefined = JSValueMakeUndefined(this);
                goto LABEL_57;
              }

LABEL_24:
              Undefined = 0;
              goto LABEL_48;
            }

            *a6 = WebKit::toJSError(this, @"tabs.removeCSS()", 0, &cfstr_AnUnknownArgum.isa, v16);
            v33 = JSValueMakeUndefined(this);
LABEL_27:
            Undefined = v33;
            v28 = v32;
            goto LABEL_57;
          }

LABEL_26:
          v32 = 0;
          *a6 = WebKit::toJSError(this, @"tabs.removeCSS()", &cfstr_Details.isa, &cfstr_AnObjectIsExpe.isa, v16);
          v33 = JSValueMakeUndefined(this);
          goto LABEL_27;
        }

LABEL_87:
        __break(1u);
LABEL_88:
        WTF::fastFree(IsUndefined, v14);
LABEL_73:
        v46 = v57;
        v57 = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v14);
        }
      }
    }
  }

  Undefined = JSValueMakeUndefined(this);
  if (v11)
  {
LABEL_61:
    if (*(v11 + 48) == 1)
    {
      (*(*(v11 + 40) + 8))(v11 + 40);
    }

    else
    {
      --*(v11 + 48);
    }
  }

  return Undefined;
}

void sub_19D89539C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    CFRelease(*(a19 + 8));
  }

  if (v20)
  {
    WTF::RefCounted<WebKit::WebExtensionCallbackHandler>::deref(v20);
  }

  if (*(v19 + 48) == 1)
  {
    (*(*(v19 + 40) + 8))(v19 + 40);
  }

  else
  {
    --*(v19 + 48);
  }

  _Unwind_Resume(a1);
}

WebKit::JSWebExtensionAPITest *WebKit::toWebExtensionAPITest(WebKit *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      result = WebKit::JSWebExtensionAPITest::testClass(0);
      if (result)
      {
        v6 = WebKit::JSWebExtensionAPITest::testClass(result);
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

JSClassRef WebKit::JSWebExtensionAPITest::testClass(WebKit::JSWebExtensionAPITest *this)
{
  result = WebKit::JSWebExtensionAPITest::testClass(void)::jsClass;
  if (!WebKit::JSWebExtensionAPITest::testClass(void)::jsClass)
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
    v6.className = "Test";
    v6.parentClass = 0;
    v6.staticValues = &WebKit::JSWebExtensionAPITest::staticValues(void)::values;
    v6.staticFunctions = &WebKit::JSWebExtensionAPITest::staticFunctions(void)::functions;
    v6.initialize = WebKit::JSWebExtensionWrapper::initialize;
    v6.finalize = WebKit::JSWebExtensionWrapper::finalize;
    result = JSClassCreate(&v6);
    WebKit::JSWebExtensionAPITest::testClass(void)::jsClass = result;
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionAPITest::notifyFail(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v30 = *MEMORY[0x1E69E9840];
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
        v19 = "argument";
      }

      else
      {
        v19 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v23)
      {
        v20 = v23 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 134349570;
      v25 = a4;
      v26 = 2082;
      v27 = v19;
      v28 = 2082;
      v29 = v20;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.notifyFail() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v23)
      {
        if (*v23 == 1)
        {
          WTF::fastFree(v23, v21);
        }

        else
        {
          --*v23;
        }
      }

      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }

    if (a4 == 1)
    {
      if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        v15 = 0;
        *a6 = WebKit::toJSError(this, @"test.notifyFail()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_10;
      }

      v15 = WebKit::toNSString(this, *a5, 2);
    }

    else
    {
      v15 = 0;
    }

    WebKit::WebExtensionAPITest::notifyFail(v12, this, v15);
    Undefined = JSValueMakeUndefined(this);
LABEL_10:
    v17 = Undefined;

    if (*(v12 + 12) == 1)
    {
      (*(*(v12 + 5) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 12);
    }

    return v17;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D895904(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::notifyPass(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v30 = *MEMORY[0x1E69E9840];
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
        v19 = "argument";
      }

      else
      {
        v19 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v23)
      {
        v20 = v23 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 134349570;
      v25 = a4;
      v26 = 2082;
      v27 = v19;
      v28 = 2082;
      v29 = v20;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.notifyPass() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v23)
      {
        if (*v23 == 1)
        {
          WTF::fastFree(v23, v21);
        }

        else
        {
          --*v23;
        }
      }

      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }

    if (a4 == 1)
    {
      if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        v15 = 0;
        *a6 = WebKit::toJSError(this, @"test.notifyPass()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_10;
      }

      v15 = WebKit::toNSString(this, *a5, 2);
    }

    else
    {
      v15 = 0;
    }

    WebKit::WebExtensionAPITest::notifyPass(v12, this, v15);
    Undefined = JSValueMakeUndefined(this);
LABEL_10:
    v17 = Undefined;

    if (*(v12 + 12) == 1)
    {
      (*(*(v12 + 5) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 12);
    }

    return v17;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D895CA8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::sendMessage(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v33 = *MEMORY[0x1E69E9840];
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
        v22 = "argument";
      }

      else
      {
        v22 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v26)
      {
        v23 = v26 + 16;
      }

      else
      {
        v23 = 0;
      }

      *buf = 134349570;
      v28 = a4;
      v29 = 2082;
      v30 = v22;
      v31 = 2082;
      v32 = v23;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.sendMessage() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v24);
        }

        else
        {
          --*v26;
        }
      }

      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v24);
      }
    }

    if (a4 == 2)
    {
      if (JSValueIsString(this, *a5))
      {
        v19 = WebKit::toNSString(this, *a5, 2);
        v15 = WebKit::toJSValue(this, *(a5 + 8), v20);
        if (v19)
        {
LABEL_13:
          WebKit::WebExtensionAPITest::sendMessage(v12, this, v19, v15);
          Undefined = JSValueMakeUndefined(this);
          v16 = v19;
          goto LABEL_14;
        }

LABEL_7:
        v16 = 0;
        *a6 = WebKit::toJSError(this, @"test.sendMessage()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
LABEL_14:

LABEL_15:
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
          *a6 = WebKit::toJSError(this, @"test.sendMessage()", 0, &cfstr_ARequiredArgum.isa, v14);
          Undefined = JSValueMakeUndefined(this);
          goto LABEL_15;
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
    *a6 = WebKit::toJSError(this, @"test.sendMessage()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v18);
    Undefined = JSValueMakeUndefined(this);
    v15 = 0;
    goto LABEL_14;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D896128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::runWithUserGesture(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, id *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
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
      if (*v30)
      {
        v25 = *v30 + 16;
      }

      else
      {
        v25 = 0;
      }

      *buf = 134349570;
      *&buf[4] = a4;
      v32 = 2082;
      v33 = v24;
      v34 = 2082;
      v35 = v25;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.runWithUserGesture() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v27 = *v30;
      *v30 = 0;
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

      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v26);
      }
    }

    if (a4)
    {
      v16 = WebKit::toJSValue(this, *a5, v14);
      GlobalContext = JSContextGetGlobalContext(this);
      WebKit::WebFrame::frameForContext(GlobalContext, v18, buf);
      v19 = *buf;
      if (*buf)
      {
        v20 = WebKit::WebExtensionAPITest::runWithUserGesture(v12, *buf, v16);
        Undefined = WebKit::toJSValueRefOrJSNull(this, v20, v21);

        CFRelease(*(v19 + 8));
      }

      else
      {
        v28 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          *v30 = 0;
          _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "Frame could not be found for JSContextRef", v30, 2u);
        }

        Undefined = JSValueMakeUndefined(this);
      }
    }

    else
    {
      *a6 = WebKit::toJSError(this, @"test.runWithUserGesture()", 0, &cfstr_ARequiredArgum.isa, v15);
      Undefined = JSValueMakeUndefined(this);
    }

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

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D896508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

JSValueRef WebKit::JSWebExtensionAPITest::isProcessingUserGesture(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = WebKit::toWebExtensionAPITest(this, a3, a3);
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
      _os_log_debug_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEBUG, "Called function test.isProcessingUserGesture() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    v13 = WebCore::UserGestureIndicator::processingUserGesture(0, v12);
    Boolean = JSValueMakeBoolean(this, v13);
    if (*(v10 + 12) == 1)
    {
      (*(*(v10 + 5) + 8))(v10 + 40);
    }

    else
    {
      --*(v10 + 12);
    }

    return Boolean;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D896820(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::log(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, id *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v30 = *MEMORY[0x1E69E9840];
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
        v19 = "argument";
      }

      else
      {
        v19 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v23)
      {
        v20 = v23 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 134349570;
      v25 = a4;
      v26 = 2082;
      v27 = v19;
      v28 = 2082;
      v29 = v20;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.log() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v23)
      {
        if (*v23 == 1)
        {
          WTF::fastFree(v23, v21);
        }

        else
        {
          --*v23;
        }
      }

      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }

    if (a4)
    {
      v16 = WebKit::toJSValue(this, *a5, v14);
      WebKit::WebExtensionAPITest::log(v12, this, v16);
      Undefined = JSValueMakeUndefined(this);
    }

    else
    {
      *a6 = WebKit::toJSError(this, @"test.log()", 0, &cfstr_ARequiredArgum.isa, v15);
      Undefined = JSValueMakeUndefined(this);
    }

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

  else
  {

    return JSValueMakeUndefined(this);
  }
}

void sub_19D896B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::fail(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v30 = *MEMORY[0x1E69E9840];
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
        v19 = "argument";
      }

      else
      {
        v19 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v23)
      {
        v20 = v23 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 134349570;
      v25 = a4;
      v26 = 2082;
      v27 = v19;
      v28 = 2082;
      v29 = v20;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.fail() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v23)
      {
        if (*v23 == 1)
        {
          WTF::fastFree(v23, v21);
        }

        else
        {
          --*v23;
        }
      }

      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }

    if (a4 == 1)
    {
      if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        v15 = 0;
        *a6 = WebKit::toJSError(this, @"test.fail()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_10;
      }

      v15 = WebKit::toNSString(this, *a5, 2);
    }

    else
    {
      v15 = 0;
    }

    WebKit::WebExtensionAPITest::assertTrue(v12, this, 0, v15, 0);
    Undefined = JSValueMakeUndefined(this);
LABEL_10:
    v17 = Undefined;

    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return v17;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D896F30(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::succeed(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v30 = *MEMORY[0x1E69E9840];
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
        v19 = "argument";
      }

      else
      {
        v19 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v23)
      {
        v20 = v23 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 134349570;
      v25 = a4;
      v26 = 2082;
      v27 = v19;
      v28 = 2082;
      v29 = v20;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.succeed() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v23)
      {
        if (*v23 == 1)
        {
          WTF::fastFree(v23, v21);
        }

        else
        {
          --*v23;
        }
      }

      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }

    if (a4 == 1)
    {
      if (!JSValueIsString(this, *a5) && !JSValueIsNull(this, *a5) && !JSValueIsUndefined(this, *a5))
      {
        v15 = 0;
        *a6 = WebKit::toJSError(this, @"test.succeed()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v14);
        Undefined = JSValueMakeUndefined(this);
        goto LABEL_10;
      }

      v15 = WebKit::toNSString(this, *a5, 2);
    }

    else
    {
      v15 = 0;
    }

    WebKit::WebExtensionAPITest::assertTrue(v12, this, 1, v15, 0);
    Undefined = JSValueMakeUndefined(this);
LABEL_10:
    v17 = Undefined;

    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return v17;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8972DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::assertTrue(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v39 = *MEMORY[0x1E69E9840];
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
        v22 = "argument";
      }

      else
      {
        v22 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v32)
      {
        v23 = v32 + 16;
      }

      else
      {
        v23 = 0;
      }

      *buf = 134349570;
      v34 = a4;
      v35 = 2082;
      v36 = v22;
      v37 = 2082;
      v38 = v23;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertTrue() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v25 = v32;
      v32 = 0;
      if (v25)
      {
        if (*v25 == 1)
        {
          WTF::fastFree(v25, v24);
        }

        else
        {
          --*v25;
        }
      }

      v26 = v31;
      v31 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v24);
      }
    }

    if (a4 == 2)
    {
      if (JSValueIsBoolean(this, *a5))
      {
        if (JSValueIsString(this, a5[1]) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v15 = JSValueToBoolean(this, *a5);
          v17 = WebKit::toNSString(this, a5[1], 2);
LABEL_15:
          v30 = 0;
          WebKit::WebExtensionAPITest::assertTrue(v12, this, v15, v17, &v30);
          v19 = v30;
          if (v19)
          {
            *a6 = WebKit::toJSError(this, @"test.assertTrue()", 0, v19, v18);
          }

          Undefined = JSValueMakeUndefined(this);

          goto LABEL_18;
        }

        v28 = @"a string is expected";
        v29 = @"message";
        goto LABEL_39;
      }
    }

    else
    {
      if (a4 != 1)
      {
        if (a4)
        {
          v15 = 0;
LABEL_14:
          v17 = 0;
          goto LABEL_15;
        }

        *a6 = WebKit::toJSError(this, @"test.assertTrue()", 0, &cfstr_ARequiredArgum.isa, v14);
        v27 = JSValueMakeUndefined(this);
LABEL_40:
        Undefined = v27;
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

      if (JSValueIsBoolean(this, *a5))
      {
        v15 = JSValueToBoolean(this, *a5);
        goto LABEL_14;
      }
    }

    v28 = @"a BOOLean is expected";
    v29 = @"actualValue";
LABEL_39:
    *a6 = WebKit::toJSError(this, @"test.assertTrue()", &v29->isa, &v28->isa, v16);
    v27 = JSValueMakeUndefined(this);
    goto LABEL_40;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D897758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPITest::assertFalse(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, JSValueRef *a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v39 = *MEMORY[0x1E69E9840];
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
        v22 = "argument";
      }

      else
      {
        v22 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v32)
      {
        v23 = v32 + 16;
      }

      else
      {
        v23 = 0;
      }

      *buf = 134349570;
      v34 = a4;
      v35 = 2082;
      v36 = v22;
      v37 = 2082;
      v38 = v23;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertFalse() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v25 = v32;
      v32 = 0;
      if (v25)
      {
        if (*v25 == 1)
        {
          WTF::fastFree(v25, v24);
        }

        else
        {
          --*v25;
        }
      }

      v26 = v31;
      v31 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v24);
      }
    }

    if (a4 == 2)
    {
      if (JSValueIsBoolean(this, *a5))
      {
        if (JSValueIsString(this, a5[1]) || JSValueIsNull(this, a5[1]) || JSValueIsUndefined(this, a5[1]))
        {
          v15 = JSValueToBoolean(this, *a5);
          v17 = WebKit::toNSString(this, a5[1], 2);
LABEL_15:
          v30 = 0;
          WebKit::WebExtensionAPITest::assertTrue(v12, this, !v15, v17, &v30);
          v19 = v30;
          if (v19)
          {
            *a6 = WebKit::toJSError(this, @"test.assertFalse()", 0, v19, v18);
          }

          Undefined = JSValueMakeUndefined(this);

          goto LABEL_18;
        }

        v28 = @"a string is expected";
        v29 = @"message";
        goto LABEL_39;
      }
    }

    else
    {
      if (a4 != 1)
      {
        if (a4)
        {
          v15 = 0;
LABEL_14:
          v17 = 0;
          goto LABEL_15;
        }

        *a6 = WebKit::toJSError(this, @"test.assertFalse()", 0, &cfstr_ARequiredArgum.isa, v14);
        v27 = JSValueMakeUndefined(this);
LABEL_40:
        Undefined = v27;
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

      if (JSValueIsBoolean(this, *a5))
      {
        v15 = JSValueToBoolean(this, *a5);
        goto LABEL_14;
      }
    }

    v28 = @"a BOOLean is expected";
    v29 = @"actualValue";
LABEL_39:
    *a6 = WebKit::toJSError(this, @"test.assertFalse()", &v29->isa, &v28->isa, v16);
    v27 = JSValueMakeUndefined(this);
    goto LABEL_40;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D897BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPITest::assertDeepEq(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v42 = *MEMORY[0x1E69E9840];
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
        v27 = "argument";
      }

      else
      {
        v27 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v35)
      {
        v28 = v35 + 16;
      }

      else
      {
        v28 = 0;
      }

      *buf = 134349570;
      v37 = a4;
      v38 = 2082;
      v39 = v27;
      v40 = 2082;
      v41 = v28;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertDeepEq() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v30 = v35;
      v35 = 0;
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

      v31 = v34;
      v34 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v29);
      }
    }

    if (a4 <= 1)
    {
      *a6 = WebKit::toJSError(this, @"test.assertDeepEq()", 0, &cfstr_ARequiredArgum.isa, v15);
      Undefined = JSValueMakeUndefined(this);
    }

    else
    {
      if (a4 == 2)
      {
        v18 = WebKit::toJSValue(this, *a5, v14);
        v21 = 0;
        v20 = WebKit::toJSValue(this, *(a5 + 8), v22);
        goto LABEL_12;
      }

      if (a4 != 3)
      {
        v18 = 0;
        v20 = 0;
        v21 = 0;
        goto LABEL_12;
      }

      if (JSValueIsString(this, *(a5 + 16)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
      {
        v18 = WebKit::toJSValue(this, *a5, v16);
        v20 = WebKit::toJSValue(this, *(a5 + 8), v19);
        v21 = WebKit::toNSString(this, *(a5 + 16), 2);
LABEL_12:
        v33 = 0;
        WebKit::WebExtensionAPITest::assertDeepEq(v12, this, v18, v20, v21, &v33);
        v24 = v33;
        if (v24)
        {
          *a6 = WebKit::toJSError(this, @"test.assertDeepEq()", 0, v24, v23);
        }

        v25 = JSValueMakeUndefined(this);

        goto LABEL_15;
      }

      *a6 = WebKit::toJSError(this, @"test.assertDeepEq()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v17);
      Undefined = JSValueMakeUndefined(this);
    }

    v25 = Undefined;
LABEL_15:
    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return v25;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8980E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPITest::assertEq(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v42 = *MEMORY[0x1E69E9840];
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
        v27 = "argument";
      }

      else
      {
        v27 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v35)
      {
        v28 = v35 + 16;
      }

      else
      {
        v28 = 0;
      }

      *buf = 134349570;
      v37 = a4;
      v38 = 2082;
      v39 = v27;
      v40 = 2082;
      v41 = v28;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertEq() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      v30 = v35;
      v35 = 0;
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

      v31 = v34;
      v34 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v29);
      }
    }

    if (a4 <= 1)
    {
      *a6 = WebKit::toJSError(this, @"test.assertEq()", 0, &cfstr_ARequiredArgum.isa, v15);
      Undefined = JSValueMakeUndefined(this);
    }

    else
    {
      if (a4 == 2)
      {
        v18 = WebKit::toJSValue(this, *a5, v14);
        v21 = 0;
        v20 = WebKit::toJSValue(this, *(a5 + 8), v22);
        goto LABEL_12;
      }

      if (a4 != 3)
      {
        v18 = 0;
        v20 = 0;
        v21 = 0;
        goto LABEL_12;
      }

      if (JSValueIsString(this, *(a5 + 16)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
      {
        v18 = WebKit::toJSValue(this, *a5, v16);
        v20 = WebKit::toJSValue(this, *(a5 + 8), v19);
        v21 = WebKit::toNSString(this, *(a5 + 16), 2);
LABEL_12:
        v33 = 0;
        WebKit::WebExtensionAPITest::assertEq(v12, this, v18, v20, v21, &v33);
        v24 = v33;
        if (v24)
        {
          *a6 = WebKit::toJSError(this, @"test.assertEq()", 0, v24, v23);
        }

        v25 = JSValueMakeUndefined(this);

        goto LABEL_15;
      }

      *a6 = WebKit::toJSError(this, @"test.assertEq()", &cfstr_Message_0.isa, &cfstr_AStringIsExpec.isa, v17);
      Undefined = JSValueMakeUndefined(this);
    }

    v25 = Undefined;
LABEL_15:
    if (*(v12 + 48) == 1)
    {
      (*(*(v12 + 40) + 8))(v12 + 40);
    }

    else
    {
      --*(v12 + 48);
    }

    return v25;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8985E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPITest::assertRejects(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
{
  v52 = *MEMORY[0x1E69E9840];
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
        v36 = "argument";
      }

      else
      {
        v36 = "arguments";
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::String::utf8();
      if (v45)
      {
        v37 = v45 + 16;
      }

      else
      {
        v37 = 0;
      }

      *buf = 134349570;
      v47 = a4;
      v48 = 2082;
      v49 = v36;
      v50 = 2082;
      v51 = v37;
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertRejects() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
      if (v45)
      {
        if (*v45 == 1)
        {
          WTF::fastFree(v45, v38);
        }

        else
        {
          --*v45;
        }
      }

      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v38);
      }
    }

    v43 = a6;
    if (a4 == 3)
    {
      if (JSValueIsObject(this, *a5))
      {
        if (JSValueIsString(this, *(a5 + 16)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
        {
          v23 = WebKit::toJSValue(this, *a5, v22);
          v25 = WebKit::toJSValue(this, *(a5 + 8), v24);
          WebKit::toNSString(this, *(a5 + 16), 2);
          v19 = 3;
          v20 = v23;
          v27 = v26 = v25;
          if (!v23)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v40 = @"a string is expected";
        v41 = @"message";
      }

      else
      {
        v40 = @"an object is expected";
        v41 = @"promise";
      }

      v20 = 0;
      *a6 = WebKit::toJSError(this, @"test.assertRejects()", &v41->isa, &v40->isa, v21);
      Undefined = JSValueMakeUndefined(this);
    }

    else
    {
      if (!a4)
      {
        *a6 = WebKit::toJSError(this, @"test.assertRejects()", 0, &cfstr_ARequiredArgum.isa, v15);
        v34 = JSValueMakeUndefined(this);
        goto LABEL_33;
      }

      v16 = *a5;
      if (!*a5)
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_15;
      }

      if (JSValueIsObject(this, *a5))
      {
        WebKit::toJSValue(this, v16, v17);
        v20 = v19 = 1;
LABEL_15:
        if (v19 >= a4)
        {
          v26 = 0;
          v30 = 0;
          v19 = 1;
        }

        else if (a4 == 1 || (v28 = *(a5 + 8 * v19)) == 0)
        {
          v26 = 0;
          v30 = 0;
        }

        else
        {
          v29 = WebKit::toJSValue(this, v28, v14);
          ++v19;
          v30 = 1;
          v26 = v29;
        }

        v27 = 0;
        if (v19 >= a4 || v30 >= a4 - 1)
        {
LABEL_28:
          if (!v20)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v31 = *(a5 + 8 * v19);
        if (v31 && (JSValueIsString(this, v31) || JSValueIsNull(this, v31) || JSValueIsUndefined(this, v31)))
        {
          v27 = WebKit::toNSString(this, v31, 2);
          ++v19;
          goto LABEL_28;
        }

        v27 = 0;
        if (!v20)
        {
          goto LABEL_30;
        }

LABEL_29:
        if (![(JSValue *)v20 isObject])
        {
          v39 = WebKit::toJSError(this, @"test.assertRejects()", &cfstr_Promise.isa, &cfstr_AnObjectIsExpe.isa, v15);
          goto LABEL_57;
        }

LABEL_30:
        if (v19 >= a4)
        {
          v32 = WebKit::WebExtensionAPITest::assertRejects(v12, this, v20, v26, v27);
          v34 = WebKit::toJSValueRefOrJSNull(this, v32, v33);

LABEL_32:
LABEL_33:
          if (*(v12 + 12) == 1)
          {
            (*(*(v12 + 5) + 8))(v12 + 40);
          }

          else
          {
            --*(v12 + 12);
          }

          return v34;
        }

        v39 = WebKit::toJSError(this, @"test.assertRejects()", 0, &cfstr_AnUnknownArgum.isa, v15);
LABEL_57:
        *v43 = v39;
        v34 = JSValueMakeUndefined(this);
        goto LABEL_32;
      }

      v20 = 0;
      *a6 = WebKit::toJSError(this, @"test.assertRejects()", &cfstr_Promise.isa, &cfstr_AnObjectIsExpe.isa, v18);
      Undefined = JSValueMakeUndefined(this);
    }

    v34 = Undefined;
    v26 = 0;
    v27 = 0;
    goto LABEL_32;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D898C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

JSValueRef WebKit::JSWebExtensionAPITest::assertResolves(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, JSObjectRef *a6, const OpaqueJSValue **a7)
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
      _os_log_debug_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEBUG, "Called function test.assertResolves() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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
            v22 = WebKit::WebExtensionAPITest::assertResolves(v12, this, v20, v15);
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
            *a6 = WebKit::toJSError(this, @"test.assertResolves()", &cfstr_Promise.isa, &cfstr_AnObjectIsExpe.isa, v19);
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
        *a6 = WebKit::toJSError(this, @"test.assertResolves()", &v32->isa, &v31->isa, v16);
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
          *a6 = WebKit::toJSError(this, @"test.assertResolves()", 0, &cfstr_ARequiredArgum.isa, v14);
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
    v32 = @"promise";
    goto LABEL_40;
  }

  return JSValueMakeUndefined(this);
}

void sub_19D8991C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

JSValueRef WebKit::JSWebExtensionAPITest::assertThrows(WebKit::JSWebExtensionAPITest *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, const OpaqueJSValue **a6, const OpaqueJSValue **a7)
{
  v44 = a6;
  v54 = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebExtensionAPITest(this, a3, a3);
  if (v10)
  {
    v11 = v10;
    ++*(v10 + 12);
    v12 = qword_1ED640AB8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
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
      v49 = a4;
      v50 = 2082;
      v51 = v35;
      v52 = 2082;
      v53 = v36;
      _os_log_debug_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEBUG, "Called function test.assertThrows() (%{public}lu %{public}s) in %{public}s world", buf, 0x20u);
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

    if (a4 == 3)
    {
      if (JSValueIsObject(this, *a5))
      {
        if (JSValueIsString(this, *(a5 + 16)) || JSValueIsNull(this, *(a5 + 16)) || JSValueIsUndefined(this, *(a5 + 16)))
        {
          v22 = WebKit::toJSValue(this, *a5, v21);
          v24 = WebKit::toJSValue(this, *(a5 + 8), v23);
          WebKit::toNSString(this, *(a5 + 16), 2);
          v18 = 3;
          v19 = v22;
          v26 = v25 = v24;
          if (!v22)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v41 = @"a string is expected";
        v42 = @"message";
      }

      else
      {
        v41 = @"an object is expected";
        v42 = @"function";
      }

      v19 = 0;
      *v44 = WebKit::toJSError(this, @"test.assertThrows()", &v42->isa, &v41->isa, v20);
      Undefined = JSValueMakeUndefined(this);
    }

    else
    {
      if (!a4)
      {
        *v44 = WebKit::toJSError(this, @"test.assertThrows()", 0, &cfstr_ARequiredArgum.isa, v14);
        v33 = JSValueMakeUndefined(this);
        goto LABEL_35;
      }

      v15 = *a5;
      if (!*a5)
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_15;
      }

      if (JSValueIsObject(this, *a5))
      {
        WebKit::toJSValue(this, v15, v16);
        v19 = v18 = 1;
LABEL_15:
        if (v18 >= a4)
        {
          v25 = 0;
          v29 = 0;
          v18 = 1;
        }

        else if (a4 == 1 || (v27 = *(a5 + 8 * v18)) == 0)
        {
          v25 = 0;
          v29 = 0;
        }

        else
        {
          v28 = WebKit::toJSValue(this, v27, v13);
          ++v18;
          v29 = 1;
          v25 = v28;
        }

        v26 = 0;
        if (v18 >= a4 || v29 >= a4 - 1)
        {
LABEL_28:
          if (!v19)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v30 = *(a5 + 8 * v18);
        if (v30 && (JSValueIsString(this, v30) || JSValueIsNull(this, v30) || JSValueIsUndefined(this, v30)))
        {
          v26 = WebKit::toNSString(this, v30, 2);
          ++v18;
          goto LABEL_28;
        }

        v26 = 0;
        if (!v19)
        {
          goto LABEL_30;
        }

LABEL_29:
        if (([v19 isObject] & 1) == 0)
        {
          v40 = WebKit::toJSError(this, @"test.assertThrows()", &cfstr_Function.isa, &cfstr_AnObjectIsExpe.isa, v14);
LABEL_59:
          *v44 = v40;
          v33 = JSValueMakeUndefined(this);
LABEL_34:

LABEL_35:
          if (*(v11 + 48) == 1)
          {
            (*(*(v11 + 40) + 8))(v11 + 40);
          }

          else
          {
            --*(v11 + 48);
          }

          return v33;
        }

LABEL_30:
        if (v18 >= a4)
        {
          v45 = 0;
          WebKit::WebExtensionAPITest::assertThrows(v11, this, v19, v25, v26, &v45);
          v32 = v45;
          if (v32)
          {
            *v44 = WebKit::toJSError(this, @"test.assertThrows()", 0, v32, v31);
          }

          v33 = JSValueMakeUndefined(this);

          goto LABEL_34;
        }

        v40 = WebKit::toJSError(this, @"test.assertThrows()", 0, &cfstr_AnUnknownArgum.isa, v14);
        goto LABEL_59;
      }

      v19 = 0;
      *v44 = WebKit::toJSError(this, @"test.assertThrows()", &cfstr_Function.isa, &cfstr_AnObjectIsExpe.isa, v17);
      Undefined = JSValueMakeUndefined(this);
    }

    v33 = Undefined;
    v25 = 0;
    v26 = 0;
    goto LABEL_34;
  }

  return JSValueMakeUndefined(this);
}