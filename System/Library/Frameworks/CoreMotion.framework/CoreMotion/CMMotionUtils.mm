@interface CMMotionUtils
+ (BOOL)featureAvailability:(const char *)availability;
+ (BOOL)hasEntitlement:(id)entitlement;
+ (id)fileHandleForWritingToURL:(id)l;
+ (id)getExecutablePathFromPid:(int)pid;
+ (id)logDirectory;
+ (id)sendMessage:(shared_ptr<CLConnectionMessage>)message withReplyClassesSync:(id)sync;
+ (int64_t)isAuthorizedForEntitlement:(id)entitlement;
+ (shared_ptr<CLConnectionMessage>)sendMessageSync:(shared_ptr<CLConnectionMessage>)sync;
+ (unint64_t)copyDataFrom:(id)from to:(id)to;
+ (void)sendMessage:(shared_ptr<CLConnectionMessage>)message withReplyClasses:(id)classes callback:(id)callback;
+ (void)tccServiceMotionAccessWithLabel:(id)label;
@end

@implementation CMMotionUtils

+ (id)logDirectory
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, v2);
  v5 = objc_msgSend_URLsForDirectory_inDomains_(v3, v4, 13, 1);
  v7 = objc_msgSend_objectAtIndex_(v5, v6, 0);
  v10 = objc_msgSend_path(v7, v8, v9);
  v13 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v11, v12);
  v16 = objc_msgSend_bundleIdentifier(v13, v14, v15);
  v18 = objc_msgSend_stringByAppendingPathComponent_(v10, v17, v16);

  return objc_msgSend_stringByAppendingPathComponent_(v18, v19, @"CoreMotion");
}

+ (void)sendMessage:(shared_ptr<CLConnectionMessage>)message withReplyClasses:(id)classes callback:(id)callback
{
  var0 = message.var0;
  if (qword_1ED71D710 != -1)
  {
    dispatch_once(&qword_1ED71D710, &unk_1F0E2A320);
  }

  v6 = *(var0 + 1);
  v7 = *var0;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLConnectionClient::sendMessage();
  if (v8)
  {
    sub_19B41FFEC(v8);
  }
}

+ (id)sendMessage:(shared_ptr<CLConnectionMessage>)message withReplyClassesSync:(id)sync
{
  var1 = message.var1;
  v5 = *(message.var0 + 1);
  v10 = *message.var0;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend_sendMessageSync_(CMMotionUtils, a2, &v10, message.var1, sync);
  if (v11)
  {
    sub_19B41FFEC(v11);
  }

  if (v12)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = CLConnectionMessage::getDictionaryOfClasses(v12, var1);
    objc_autoreleasePoolPop(v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v13)
  {
    sub_19B41FFEC(v13);
  }

  return v8;
}

+ (shared_ptr<CLConnectionMessage>)sendMessageSync:(shared_ptr<CLConnectionMessage>)sync
{
  var0 = sync.var0;
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D720 != -1)
  {
    dispatch_once(&qword_1ED71D720, &unk_1F0E27D60);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(var0 + 1);
  v11 = *var0;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLConnectionClient::sendMessageSync();
  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  if (vabdd_f64(CFAbsoluteTimeGetCurrent(), Current) > 5.0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Warning: sendMessageSync failed to finish after 5 seconds", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
      }

      v9 = _os_log_send_and_compose_impl();
      v6 = sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMMotionUtils sendMessageSync:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

+ (BOOL)hasEntitlement:(id)entitlement
{
  v4 = SecTaskCreateFromSelf(0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(v4, entitlement, &error);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

+ (void)tccServiceMotionAccessWithLabel:(id)label
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_19B4215D8())
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "API not supported on current platform.", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMMotionUtils tccServiceMotionAccessWithLabel:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v4, v5))
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
      }

      v9 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        labelCopy = label;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Warning - invoking %@ on main may lead to deadlock.", buf, 0xCu);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMMotionUtils tccServiceMotionAccessWithLabel:]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (qword_1EAFE3A00 != -1)
    {
      dispatch_once(&qword_1EAFE3A00, &unk_1F0E286E0);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)featureAvailability:(const char *)availability
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    operator new();
  }

  return 0;
}

+ (int64_t)isAuthorizedForEntitlement:(id)entitlement
{
  if (objc_msgSend_hasEntitlement_(CMMotionUtils, a2, entitlement))
  {
    return 3;
  }

  v4 = MEMORY[0x1E69D55A8];
  v5 = *MEMORY[0x1E69D55A8];
  if (TCCAccessRestricted())
  {
    return 1;
  }

  v6 = *v4;
  v7 = TCCAccessPreflight();
  if (v7)
  {
    return 2 * (v7 == 1);
  }

  else
  {
    return 3;
  }
}

+ (id)getExecutablePathFromPid:(int)pid
{
  v7 = *MEMORY[0x1E69E9840];
  if (proc_pidpath(pid, buffer, 0x1000u) < 1)
  {
    result = 0;
  }

  else
  {
    result = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, buffer);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)fileHandleForWritingToURL:(id)l
{
  v68 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isFileURL(l, a2, l) & 1) == 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "#Notice URL must specify a file.", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_25;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    LOWORD(v60) = 0;
    goto LABEL_23;
  }

  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v4, v5);
  v9 = objc_msgSend_path(l, v7, v8);
  if (objc_msgSend_fileExistsAtPath_(v6, v10, v9))
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    v13 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "#Notice File already exists at URL.", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_25;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    LOWORD(v60) = 0;
LABEL_23:
    v17 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMMotionUtils fileHandleForWritingToURL:]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }

LABEL_25:
    result = 0;
    goto LABEL_26;
  }

  v20 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
  v23 = objc_msgSend_path(l, v21, v22);
  if ((objc_msgSend_createFileAtPath_contents_attributes_(v20, v24, v23, 0, 0) & 1) == 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    v57 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_ERROR, "#Notice URL must point to a file path which you have access to write to.", buf, 2u);
    }

    v58 = sub_19B420058();
    if ((*(v58 + 160) & 0x80000000) != 0 && (*(v58 + 164) & 0x80000000) != 0 && (*(v58 + 168) & 0x80000000) != 0 && !*(v58 + 152))
    {
      goto LABEL_25;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B558);
    }

    LOWORD(v60) = 0;
    goto LABEL_23;
  }

  v59 = 0;
  result = objc_msgSend_fileHandleForWritingToURL_error_(MEMORY[0x1E696AC00], v25, l, &v59);
  if (!result || v59)
  {
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E27C40);
    }

    v26 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_msgSend_absoluteString(l, v27, v28);
      v32 = objc_msgSend_UTF8String(v29, v30, v31);
      v35 = objc_msgSend_description(v59, v33, v34);
      v38 = objc_msgSend_UTF8String(v35, v36, v37);
      *buf = 136446466;
      v65 = v32;
      v66 = 2082;
      v67 = v38;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "#Notice Unable to get file handle for URL %{public}s: %{public}s", buf, 0x16u);
    }

    v39 = sub_19B420058();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E27C40);
      }

      v44 = objc_msgSend_absoluteString(l, v42, v43);
      v47 = objc_msgSend_UTF8String(v44, v45, v46);
      v50 = objc_msgSend_description(v59, v48, v49);
      v53 = objc_msgSend_UTF8String(v50, v51, v52);
      v60 = 136446466;
      v61 = v47;
      v62 = 2082;
      v63 = v53;
      v54 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMMotionUtils fileHandleForWritingToURL:]", "CoreLocation: %s\n", v54);
      if (v54 != buf)
      {
        free(v54);
      }
    }

    v55 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v40, v41);
    objc_msgSend_removeItemAtURL_error_(v55, v56, l, 0);
    goto LABEL_25;
  }

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unint64_t)copyDataFrom:(id)from to:(id)to
{
  objc_msgSend_seekToFileOffset_(from, a2, 0);
  objc_msgSend_seekToFileOffset_(to, v6, 0);
  DataOfLength = objc_msgSend_readDataOfLength_(from, v7, 0x2000);
  if (!DataOfLength)
  {
    return 0;
  }

  v11 = DataOfLength;
  v12 = 0;
  do
  {
    if (!objc_msgSend_length(v11, v9, v10))
    {
      break;
    }

    objc_msgSend_writeData_(to, v13, v11);
    v12 += objc_msgSend_length(v11, v14, v15);
    v11 = objc_msgSend_readDataOfLength_(from, v16, 0x2000);
  }

  while (v11);
  return v12;
}

@end