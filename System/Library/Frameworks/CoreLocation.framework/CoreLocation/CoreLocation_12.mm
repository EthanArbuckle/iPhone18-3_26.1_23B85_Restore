void sub_19BA04D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA04DA4(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for requesting a MiLo prediction}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request a single shot prediction with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request a single shot prediction with empty response", "{msg%{public}.0s:SPI request, failed to request a single shot prediction with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA05584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA055D8(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for requesting an observation}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation with empty response", "{msg%{public}.0s:SPI request, failed to request observation with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA05DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA05E00(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for labeling an observation}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label an observation with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label an observation with empty response", "{msg%{public}.0s:SPI request, failed to label an observation with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA065E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA0663C(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for labeling observations between dates}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label observations between dates with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label observations between dates with empty response", "{msg%{public}.0s:SPI request, failed to label observations between dates with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA06E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA06E5C(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for removing labels}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to  remove labels with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to  remove labels with empty response", "{msg%{public}.0s:SPI request, failed to  remove labels with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA075D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA07604(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for removing a custom LOI}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to  remove a custom LOI with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to  remove a custom LOI with empty response", "{msg%{public}.0s:SPI request, failed to  remove a custom LOI with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA07D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA07DAC(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for start updating MicroLocation}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to tart updating MicroLocation with empty response", "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA08514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA08540(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for stop updating MicroLocation}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to stop updating MicroLocation with empty response", "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA08CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 104);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA08CD8(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for MicroLocation learning}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request MicroLocation learning with empty response", "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA092A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 88);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA092D4(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for MicroLocation purge data}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Purge MiLo Data with empty response", "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA09A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA09A68(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for Export MiLo Database}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Export MiLo Database with empty response", "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA0A1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA0A1FC(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for enable MiLo at current location}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to enable MiLo at current location with empty response", "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDidCompleteClientRequest:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA0A574(uint64_t a1)
{
  [*(*(a1 + 32) + 8) _registerForMiLoServiceEvents];
  [*(*(a1 + 32) + 8) _registerForMiLoDebugResponseEvents];
  [*(*(a1 + 32) + 8) _registerForMiLoConnectionStatusEvents];
  v2 = *(*(a1 + 32) + 8);

  return MEMORY[0x1EEE66B58](v2, sel__registerForMiLoGenericEvents);
}

uint64_t sub_19BA0A7B0(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__createServiceWithServiceType_locationTypes_);
}

uint64_t sub_19BA0AC90(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__requestObservationWithRequestIdentifier_placeIdentifier_);
}

uint64_t sub_19BA0ADCC(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel__labelEventWithRequestIdentifier_placeIdentifier_observationIdentifier_);
}

uint64_t sub_19BA0AF5C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  return MEMORY[0x1EEE66B58](a1[4], sel__labelEventsWithStartDate_endDate_placeIdentifier_requestIdentifier_);
}

uint64_t sub_19BA0B05C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__removeLabels_withRequestIdentifier_);
}

uint64_t sub_19BA0B154(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__removeCustomLocationOfInterestFromMonitoringWithIdentifier_withRequestIdentifier_);
}

uint64_t sub_19BA0B24C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__startUpdatingMicroLocationWithConfiguration_withRequestIdentifier_);
}

os_log_t sub_19BA0B584()
{
  result = os_log_create("com.apple.locationd.Position", "Microlocation");
  qword_1EAFE4730 = result;
  return result;
}

void sub_19BA0B65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19BA0B734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19BA0B80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19BA0B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

long double sub_19BA0B914(double a1, double a2, double a3, double a4)
{
  v4 = a3;
  result = 0.0;
  if (a3 > 90.0)
  {
    return result;
  }

  v7 = fabs(a1);
  if (v7 > 90.0 || a3 < -90.0)
  {
    return result;
  }

  v8 = 360.0;
  v9 = a4 + 360.0;
  if (a4 >= 0.0)
  {
    v9 = a4;
  }

  v10 = a2 + 360.0;
  if (a2 >= 0.0)
  {
    v10 = a2;
  }

  v11 = v10 - v9;
  if (v11 <= 180.0)
  {
    if (v11 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = -360.0;
  }

  v11 = v11 + v8;
LABEL_12:
  if (fabs(a1 + a3) >= 0.0001)
  {
    v43 = a2;
    v45 = a4;
LABEL_17:
    v12 = v11;
    goto LABEL_18;
  }

  if (v7 < 0.0001 && 180.0 - fabs(v11) < 0.0001)
  {
    return 20037508.3;
  }

  v41 = fabs(v7 + -90.0) < 0.0001;
  if (v41)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v45 = a4;
  v43 = a2;
  if (!v41 && 180.0 - fabs(v11) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (a1 <= a3)
  {
    v4 = a3 + -0.0001;
  }

  else
  {
    a1 = a1 + -0.0001;
  }

LABEL_18:
  v13 = v12 * 0.0174532925;
  v42 = a1;
  v14 = tan(a1 * 0.0174532925);
  v44 = v4;
  v15 = tan(v4 * 0.0174532925);
  v16 = v14 * 0.996647189;
  v17 = v15 * 0.996647189;
  v18 = atan(v16);
  v19 = atan(v17);
  v20 = __sincos_stret(v18);
  v21 = __sincos_stret(v19);
  v22 = 0;
  v23 = v21.__cosval * v20.__cosval;
  v46 = v13;
  while (1)
  {
    v24 = __sincos_stret(v13);
    v25 = sqrt((-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) * (-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) + v21.__cosval * v24.__sinval * (v21.__cosval * v24.__sinval));
    if (v25 < 2.22044605e-15)
    {
      break;
    }

    v26 = v23 * v24.__cosval + v20.__sinval * v21.__sinval;
    v27 = fabs(v26);
    if (fabs(v25) > 1.0 || v27 > 1.0)
    {
      break;
    }

    v29 = atan2(v25, v26);
    v30 = v23 * v24.__sinval / v25;
    if (v30 > 1.0)
    {
      break;
    }

    v31 = 1.0 - v30 * v30;
    if (fabs(v31) >= 2.22044605e-15)
    {
      v32 = v26 - v21.__sinval * (v20.__sinval + v20.__sinval) / v31;
      v33 = v31 * 0.000209550667 * ((v31 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v32 = -1.0;
      v33 = 0.0;
    }

    v34 = v30 * ((1.0 - v33) * 0.00335281066);
    v35 = v32 * v32 * 2.0 + -1.0;
    v36 = v46 + v34 * (v29 + v25 * v33 * (v32 + v26 * v33 * v35));
    if (vabdd_f64(v36, v13) > 0.000000001)
    {
      v13 = v36;
      if (v22++ < 0x31)
      {
        continue;
      }
    }

    v38 = v31 * 2.72331606e11 / 4.04083e13;
    v39 = v38 * 0.0000610351562 * (v38 * (v38 * (v38 * -175.0 + 320.0) + -768.0) + 4096.0) + 1.0;
    v40 = v38 * 0.0009765625 * (v38 * (v38 * (v38 * -47.0 + 74.0) + -128.0) + 256.0);
    return v39 * 6356752.31 * (v29 - v25 * v40 * (v32 + v40 * 0.25 * ((v32 * v32 * 4.0 + -3.0) * (v40 / 6.0 * v32 * 3.0) + v26 * v35)));
  }

  return sub_19BA0BD60(v42, v43, v44, v45);
}

long double sub_19BA0BD60(double a1, double a2, double a3, double a4)
{
  v5 = 360.0;
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v6 = a4 - a2;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = -360.0;
  }

  v6 = v6 + v5;
LABEL_9:
  v7 = a1 * 0.0174532925;
  v8 = v6 * 0.0174532925;
  v9 = sin((a3 - a1) * 0.0174532925 * 0.5);
  v10 = v9 * v9;
  v11 = __sincos_stret(v7);
  v12 = v11.__cosval * cos(a3 * 0.0174532925);
  v13 = sin(v8 * 0.5);
  v14 = v10 + v12 * (v13 * v13);
  v15 = 1.0 - v14;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = atan2(sqrt(v14), sqrt(v15));
  return (fabs(v11.__sinval) * -21000.0 + 6378160.0) * (v16 + v16);
}

BOOL sub_19BA0BE88(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_19BA89490, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

long double sub_19BA0C01C(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v14 = 0.0;
  v15 = 0.0;
  if (!sub_19B87E218(a2, a3, a4, a5) && sub_19BA0BE88(a1, &v15, &v14, &v13, a2, a3, a6, a4, a5, a6))
  {
    return sqrt(v14 * v14 + v15 * v15);
  }

  return sub_19BA0B914(a2, a3, a4, a5);
}

BOOL sub_19BA0C0F8(float64_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (a7 >= 0.0 && a8 <= 50000.0)
  {
    v15 = fabs(a8);
    v16 = __sincos_stret((dbl_19BA8D400[a8 < 0.0] + a7) * 0.0174532925);
    return sub_19BA0C1C0(a1, a2, a3, &v17, a4, a5, a6, v15 * v16.__cosval, v15 * v16.__sinval, 0.0);
  }

  return result;
}

BOOL sub_19BA0C1C0(float64_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = sqrt(a9 * a9 + a8 * a8);
  if (v11 <= 70000.0)
  {
    if (vabdd_f64(a5, a1[3]) <= 0.005)
    {
      v26.f64[0] = *a1;
      cosval = a1[4];
    }

    else
    {
      a1[2] = a5 * 0.0174532925;
      a1[3] = a5;
      v22 = __sincos_stret(a5 * 0.0174532925);
      cosval = v22.__cosval;
      v23 = v22.__sinval * -0.00669437999 * v22.__sinval + 1.0;
      v24 = sqrt(v23);
      v25.f64[0] = v23 * v24;
      v25.f64[1] = v24;
      v26 = vdivq_f64(xmmword_19BA89490, v25);
      *a1 = v26;
      a1[4] = v22.__cosval;
    }

    v27 = v26.f64[0] + a7;
    v28 = 0.0;
    v29 = a8 / v27;
    if (fabs(cosval) >= 0.0001)
    {
      v28 = a9 / (cosval * (a1[1] + a7));
    }

    *a2 = a5 + v29 * 57.2957795;
    *a3 = a6 + v28 * 57.2957795;
    *a4 = a7 + a10;
    v30 = *a2;
    if (*a2 > 90.0)
    {
      *a2 = 180.0 - v30;
      *a3 = *a3 + 180.0;
      v30 = *a2;
    }

    if (v30 >= -90.0)
    {
      v31 = *a3;
    }

    else
    {
      *a2 = -180.0 - v30;
      v31 = *a3 + 180.0;
      *a3 = v31;
    }

    if (v31 > -180.0)
    {
      if (v31 <= 180.0)
      {
        return v11 <= 70000.0;
      }
    }

    else
    {
      v31 = v31 + 360.0;
    }

    if (v31 > 180.0)
    {
      v31 = v31 + -360.0;
    }

    *a3 = v31;
  }

  return v11 <= 70000.0;
}

double sub_19BA0C3BC(float64x2_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = 0.0;
  v18 = 0.0;
  sub_19BA0BE88(a1, &v18, &v17, &v16, a4, a5, a6, a8, a9, a6);
  v12 = sqrt(v17 * v17 + v18 * v18);
  v13 = atan2(v17, v18);
  v14 = __sincos_stret(v13 + a7 * -0.0174532925);
  *a3 = v12 * v14.__cosval;
  result = v12 * v14.__sinval;
  *a2 = v12 * v14.__sinval;
  return result;
}

double sub_19BA0C44C(float64x2_t *a1, double a2, double a3, double a4, double a5)
{
  if (vabdd_f64(a2, a4) >= 0.00000001 || (v9 = -1.0, vabdd_f64(a3, a5) >= 0.00000001))
  {
    v15[1] = v5;
    v15[2] = v6;
    v15[0] = 0.0;
    __y = 0.0;
    v10 = sub_19BA0BE88(a1, v15, &__y, &v13, a2, a3, 0.0, a4, a5, 0.0);
    v9 = -1.0;
    if (v10)
    {
      v11 = atan2(__y, v15[0]);
      if (v11 < 0.0)
      {
        v11 = v11 + 6.28318531;
      }

      return v11 * 57.2957795;
    }
  }

  return v9;
}

BOOL sub_19BA0CB14(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 120);
  if (!v2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 248);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349056;
      *(buf[0].__r_.__value_.__r.__words + 4) = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid bestParticle road", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      goto LABEL_30;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
LABEL_63:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    goto LABEL_28;
  }

  *(a1 + 520) = 1;
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  *(a1 + 392) = v3;
  *(a1 + 400) = v4;
  v5 = *(a1 + 144);
  *(a1 + 408) = v5;
  *(a1 + 528) = v3;
  *(a1 + 536) = v4;
  *(a1 + 544) = v5;
  *(a1 + 360) = *(v2 + 20);
  if (*(v2 + 71) < 0)
  {
    sub_19B874C9C(buf, *(v2 + 48), *(v2 + 56));
  }

  else
  {
    buf[0] = *(v2 + 48);
  }

  std::string::operator=((a1 + 368), buf);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1 + 120);
  *(a1 + 352) = *v9;
  *(a1 + 601) = *(v9 + 19);
  LOBYTE(v9) = *(v9 + 18);
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  *(a1 + 416) = v11;
  *(a1 + 602) = v9;
  *(a1 + 512) = v10;
  for (i = *(a1 + 208); i != *(a1 + 216); i += 72)
  {
    if (*(i + 64) == 1)
    {
      *(a1 + 472) = *(i + 16);
      *(a1 + 480) = *(i + 56);
      if (*(a1 + 712))
      {
        *(a1 + 408) = *(a1 + 344);
      }

      *(a1 + 505) = *(a1 + 745);
      v34 = 0;
      v35 = 0.0;
      sub_19BA0C3BC((a1 + 672), &v35, &v34, *(a1 + 152), *(a1 + 160), *(a1 + 312), *(a1 + 144), *(a1 + 296), *(a1 + 304));
      v21 = *(a1 + 120);
      v18 = v21 != 0;
      if (v21)
      {
        v22 = *(v21 + 20);
        v23 = 0.5;
        if (v22 == 9 || (v24 = *(v21 + 72), v24 == 6))
        {
          v25 = 1.0;
        }

        else
        {
          v25 = 1.0;
          if (v24 != 255)
          {
            v26 = *(v21 + 96);
            if (v26 < 0.000001)
            {
              v26 = 1.0;
              if ((v22 & 0xFFFFFFFE) != 8)
              {
                v26 = sub_19B988DA8(v22, *(v21 + 16));
              }
            }

            v25 = v26 + 1.0;
            v23 = v26 * 0.5 + 1.0;
          }
        }

        *(a1 + 664) = v25;
        v27 = -1.0;
        if (v35 < 0.0)
        {
          v27 = 1.0;
        }

        v28 = v35 + v27 * v23;
        *(a1 + 488) = v34;
        *(a1 + 496) = v28;
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v29 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          v30 = *(a1 + 248);
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349056;
          *(buf[0].__r_.__value_.__r.__words + 4) = v30;
          _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,unable to determine roadWidth when filling crumb", buf, 0xCu);
        }

        v31 = sub_19B87DD40();
        if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v32 = *(a1 + 248);
          v36 = 134349056;
          v37 = v32;
          v33 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMSnapData::fillCrumb()", "CoreLocation: %s\n", v33);
          if (v33 != buf)
          {
            free(v33);
          }
        }
      }

      goto LABEL_31;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v13 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 248);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349056;
    *(buf[0].__r_.__value_.__r.__words + 4) = v14;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,RawGPSScore not available", buf, 0xCu);
  }

  v15 = sub_19B87DD40();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      goto LABEL_63;
    }

LABEL_28:
    v16 = *(a1 + 248);
    v36 = 134349056;
    v37 = v16;
    v17 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMSnapData::fillCrumb()", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

LABEL_30:
  v18 = 0;
LABEL_31:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_19BA0D170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA0D194(uint64_t a1, double *a2, double *a3)
{
  if (a1)
  {
    v5 = *(a1 + 20);
    if (v5 == 9 || ((v6 = *(a1 + 72), v6 != 255) ? (v7 = v6 == 6) : (v7 = 1), v7))
    {
      *a2 = 1.0;
      v8 = 0.5;
    }

    else
    {
      v9 = *(a1 + 96);
      *a2 = v9;
      if (v9 < 0.000001)
      {
        v9 = 1.0;
        if ((v5 & 0xFFFFFFFE) != 8)
        {
          v9 = sub_19B988DA8(v5, *(a1 + 16));
        }

        *a2 = v9;
      }

      *a3 = v9 * 0.5;
      *a2 = *a2 + 1.0;
      v8 = *a3 + 1.0;
    }
  }

  else
  {
    *a2 = 0.0;
    v8 = 0.0;
  }

  *a3 = v8;
}

BOOL sub_19BA0D258(double *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    if (!*(a1 + 136))
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 136) = v3;
      v6 = *(a1 + 137);
      *(a1 + 137) = v5;
      if (v6)
      {
        sub_19B8750F8(v6);
      }
    }

    sub_19B973C04((a1 + 133), a2);
    v7 = *(a2 + 48);
    if (v7 < a1[129])
    {
      a1[129] = v7;
    }

    if (v7 > a1[20])
    {
      a1[20] = v7;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 134349056;
      v16 = v9;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, null road when trying to add particles into candidate", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v14 = *a1;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidate::addParticle(const CLParticleMapMatcherCommon::Particle &)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  result = v3 != 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA0D49C(uint64_t a1, int *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  LOBYTE(v2) = *(a1 + 152) ^ 1;
  if (*(a1 + 153) != 1 || (*(a1 + 152) & 1) == 0)
  {
    goto LABEL_85;
  }

  if (*(a1 + 124) == *(a1 + 1104))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 176);
      v7 = *(a1 + 124);
      v8 = *(a1 + 1104);
      v9 = *a2;
      *buf = 134349824;
      v91 = v6;
      v92 = 1026;
      *v93 = v7;
      *&v93[4] = 1026;
      *&v93[6] = v8;
      LOWORD(v94) = 1026;
      *(&v94 + 2) = v9;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,ambiguityCase,combined,%{public}d,secondBestCombined,%{public}d,sigEnv,%{public}d", buf, 0x1Eu);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v70 = *(a1 + 176);
      v75 = *(a1 + 124);
      v79 = *(a1 + 1104);
      v83 = *a2;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    goto LABEL_84;
  }

  if (*(a1 + 1044) <= (-1227133513 * ((*(a1 + 1072) - *(a1 + 1064)) >> 4)))
  {
    if (*(a1 + 360) <= 0.0 || (v21 = *(a1 + 272), v21 < 0.0) || (*a2 - 1) > 1)
    {
LABEL_84:
      LOBYTE(v2) = 0;
      goto LABEL_85;
    }

    v22 = *(a1 + 768);
    v23 = *(a1 + 336);
    v24 = fmod(v22 - v23, 360.0);
    if (v24 < 0.0)
    {
      v24 = v24 + 360.0;
    }

    if (v24 > 180.0)
    {
      v24 = v24 + -360.0;
    }

    if (v24 > 75.0)
    {
      v25 = fmod(v23 + v24 * 0.5, 360.0);
      if (v25 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 + 360.0;
      }

      v27 = fmod(v21 - v26, 360.0);
      if (v27 < 0.0)
      {
        v27 = v27 + 360.0;
      }

      if (v27 <= 180.0)
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 + -360.0;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v29 = fabs(v28);
      v30 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 176);
        v32 = *(a1 + 272);
        v33 = *(a1 + 336);
        v34 = *(a1 + 768);
        *buf = 134350592;
        v91 = v31;
        v92 = 2050;
        *v93 = v32;
        *&v93[8] = 2050;
        v94 = v33;
        v95 = 2050;
        v96 = v34;
        v97 = 2050;
        *v98 = v26;
        *&v98[8] = 2050;
        *v99 = v29;
        *&v99[8] = 1026;
        *&v99[10] = v29 < 10.0;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,lowerOutgoingCountCase,course,%{public}.2lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf,approxCourseOfTurningRoad,%{public}.2lf,turningCourseDiff,%{public}.2lf,outgoingCondition,%{public}d", buf, 0x44u);
      }

      v35 = sub_19B87DD40();
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v71 = *(a1 + 176);
        v76 = *(a1 + 272);
        v80 = *(a1 + 336);
        v84 = *(a1 + 768);
        v36 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      if (v29 < 10.0)
      {
LABEL_83:
        LOBYTE(v2) = 1;
        goto LABEL_85;
      }

      v21 = *(a1 + 272);
      v22 = *(a1 + 768);
      v23 = *(a1 + 336);
    }

    v37 = fmod(v21 - v22, 360.0);
    if (v37 < 0.0)
    {
      v37 = v37 + 360.0;
    }

    if (v37 > 180.0)
    {
      v37 = v37 + -360.0;
    }

    v38 = fabs(v37);
    v39 = fmod(v21 - v23, 360.0);
    if (v39 < 0.0)
    {
      v39 = v39 + 360.0;
    }

    if (v39 > 180.0)
    {
      v39 = v39 + -360.0;
    }

    v40 = fabs(v39);
    v41 = v40 >= 15.0 && v38 < 15.0;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v42 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a1 + 176);
      v44 = *(a1 + 272);
      v45 = *(a1 + 336);
      v46 = *(a1 + 768);
      v47 = *a2;
      *buf = 134350848;
      v91 = v43;
      v92 = 2050;
      *v93 = v44;
      *&v93[8] = 2050;
      v94 = v45;
      v95 = 2050;
      v96 = v46;
      v97 = 1026;
      *v98 = v38 < 15.0;
      *&v98[4] = 1026;
      *&v98[6] = v40 < 15.0;
      *v99 = 1026;
      *&v99[2] = v47;
      *&v99[6] = 1026;
      *&v99[8] = v41;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,lowerOutgoingCountCase,course,%{public}.2lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf,isCrumbCourseAlignedWithOutgoing,%{public}d,isCrumbCourseAlignedWithIncoming,%{public}d,sigEnv,%{public}d,outgoingCondition,%{public}d", buf, 0x42u);
    }

    v48 = sub_19B87DD40();
    if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v72 = *(a1 + 176);
      v77 = *(a1 + 272);
      v81 = *(a1 + 336);
      v85 = *(a1 + 768);
      v88 = *a2;
      v49 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    if (!v41)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v12 = *(a1 + 336);
  v13 = *(a1 + 768);
  v14 = fmod(v12 - v13, 360.0);
  if (v14 < 0.0)
  {
    v14 = v14 + 360.0;
  }

  if (v14 > 180.0)
  {
    v14 = v14 + -360.0;
  }

  v15 = fabs(v14);
  v16 = *(a1 + 360);
  if (v16 <= 0.0 || (v17 = *(a1 + 272), v17 < 0.0))
  {
    v18 = 0;
    goto LABEL_24;
  }

  v52 = fmod(v17 - v13, 360.0);
  if (v52 < 0.0)
  {
    v52 = v52 + 360.0;
  }

  if (v52 > 180.0)
  {
    v52 = v52 + -360.0;
  }

  v53 = fabs(v52);
  v18 = v53 < 25.0;
  v54 = *(a1 + 1048) >= 7.5 || v18;
  if ((*(a1 + 1048) >= 7.5 || v53 < 25.0) && v15 >= 45.0 && v53 >= 25.0)
  {
    if (v16 < 20.0)
    {
      v56 = fmod(v17 - v12, 360.0);
      v18 = 0;
      if (v56 < 0.0)
      {
        v56 = v56 + 360.0;
      }

      if (v56 > 180.0)
      {
        v56 = v56 + -360.0;
      }

      if (fabs(v56) < 10.0)
      {
        v20 = 1;
        goto LABEL_105;
      }

      goto LABEL_24;
    }

    v18 = 0;
  }

  if (!v54)
  {
LABEL_104:
    v20 = 0;
    goto LABEL_105;
  }

LABEL_24:
  if (*(a1 + 352) > 0.0)
  {
    v19 = *(a1 + 264);
    if (v19 >= 0.0 && v19 < 0.001)
    {
      goto LABEL_104;
    }
  }

  v20 = 0;
  if (*(a1 + 396) != 1)
  {
LABEL_122:
    v2 = 1;
    goto LABEL_123;
  }

LABEL_105:
  if (*(a1 + 264) == 0.0 && (*(a1 + 396) & 1) == 0 && (v16 <= 0.0 || *(a1 + 272) < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v57 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v58 = *(a1 + 176);
      *buf = 134349056;
      v91 = v58;
      _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,shallConsiderOutgoingCandidate,position dependent", buf, 0xCu);
    }

    v59 = sub_19B87DD40();
    if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v73 = *(a1 + 176);
      v60 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    goto LABEL_122;
  }

  v2 = 0;
LABEL_123:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v61 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v62 = *(a1 + 176);
    v63 = *(a1 + 336);
    v64 = *(a1 + 768);
    v65 = *(a1 + 272);
    v66 = *(a1 + 1048);
    v67 = *(a1 + 360);
    *buf = 134351360;
    v91 = v62;
    v92 = 2050;
    *v93 = v63;
    *&v93[8] = 2050;
    v94 = v64;
    v95 = 2050;
    v96 = v65;
    v97 = 2050;
    *v98 = v66;
    *&v98[8] = 1026;
    *v99 = v2;
    *&v99[4] = 2050;
    *&v99[6] = v67;
    v100 = 1026;
    v101 = v15 >= 45.0;
    v102 = 1026;
    v103 = v18;
    v104 = 1026;
    v105 = v20;
    _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCrumbCourseAlignedWithOutgoing,%{public}d, isCrumbCourseAlignedWithIncoming,%{public}d", buf, 0x56u);
  }

  v68 = sub_19B87DD40();
  if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v74 = *(a1 + 176);
    v78 = *(a1 + 336);
    v82 = *(a1 + 768);
    v86 = *(a1 + 272);
    v87 = *(a1 + 1048);
    v89 = *(a1 + 360);
    v69 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidate::shallConsiderOutgoingCandidate(const CLSignalEnvironmentProvider_Type::SignalEnvironmentInfo &) const", "CoreLocation: %s\n", v69);
    if (v69 != buf)
    {
      free(v69);
    }
  }

LABEL_85:
  v50 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

unsigned int *sub_19BA0E204(uint64_t *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v28 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v29 = *a1;
      *buf = 134349056;
      *&buf[4] = v29;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly zero candidates,getAlternateBestCandidate", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v31 = *a1;
      v48 = 134349056;
      v49 = v31;
      v32 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidateVector::getBestAndAlternateBestCandidate(const MMCandidate *&, const MMCandidate *&) const", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    goto LABEL_65;
  }

  v2 = a1[1];
  v3 = a1 + 2;
  if (v2 == a1 + 2)
  {
    goto LABEL_65;
  }

  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  do
  {
    if (*(v6 + 45) > v5)
    {
      v5 = *(v6 + 45);
      v4 = (v6 + 7);
    }

    v7 = v6[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v6[2];
        v9 = *v8 == v6;
        v6 = v8;
      }

      while (!v9);
    }

    v6 = v8;
  }

  while (v8 != v3);
  if (!v4 || !*(v4 + 1))
  {
LABEL_65:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v33 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v34 = *a1;
      *buf = 134349056;
      *&buf[4] = v34;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly unable to find candidates,getSolutionCandidate", buf, 0xCu);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
    {
      goto LABEL_77;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v36 = *a1;
    v48 = 134349056;
    v49 = v36;
    goto LABEL_75;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    sub_19B97106C((v4 + 2), buf);
    if ((v2[4] != *buf || *(v2 + 48) != buf[16] || v2[5] != *&buf[8]) && *(v2 + 45) > v11)
    {
      v10 = (v2 + 7);
      v11 = *(v2 + 45);
    }

    v12 = v2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = v2[2];
        v9 = *v13 == v2;
        v2 = v13;
      }

      while (!v9);
    }

    v2 = v13;
  }

  while (v13 != v3);
  if (!*(v4 + 1))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v40 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v41 = *a1;
      *buf = 134349056;
      *&buf[4] = v41;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly, best candidate is nullptr", buf, 0xCu);
    }

    v42 = sub_19B87DD40();
    if ((*(v42 + 160) & 0x80000000) != 0 && (*(v42 + 164) & 0x80000000) != 0 && (*(v42 + 168) & 0x80000000) != 0 && !*(v42 + 152))
    {
      goto LABEL_77;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v43 = *a1;
    v48 = 134349056;
    v49 = v43;
LABEL_75:
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "const MMCandidate *const CLParticleMM::MMCandidateVector::getSolutionCandidate() const", "CoreLocation: %s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }

LABEL_77:
    v4 = 0;
    goto LABEL_78;
  }

  if (v10)
  {
    if (*(v10 + 1))
    {
      sub_19B97106C((v4 + 2), v46);
      sub_19B97106C((v10 + 2), v44);
      if (v44[0] == v46[0] && v45 != v47 && *(v10 + 153) == 1 && *(v4 + 153) == 1 && v10[31] == v4[31] && *(v10 + 16) == v44[0] && *(v10 + 144) == v47 && *(v10 + 17) == v46[1] && *(v4 + 16) == v44[0] && *(v4 + 144) == v45 && *(v4 + 17) == v44[1] && *(v10 + 134) - *(v10 + 133) > *(v4 + 134) - *(v4 + 133))
      {
        v14 = sub_19B8E3CB0();
        *buf = -1227133513 * ((*(v4 + 134) - *(v4 + 133)) >> 4);
        v48 = -1227133513 * ((*(v10 + 134) - *(v10 + 133)) >> 4);
        sub_19BA0EAE8(v14, a1, v46, buf, &v48, v4 + 31, v10 + 31);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v15 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v16 = *a1;
          v17 = -1227133513 * ((*(v4 + 134) - *(v4 + 133)) >> 4);
          v18 = -1227133513 * ((*(v10 + 134) - *(v10 + 133)) >> 4);
          v19 = v4[31];
          v20 = v10[31];
          *buf = 134350336;
          *&buf[4] = v16;
          *&buf[12] = 2050;
          *&buf[14] = v46[0];
          v61 = 1026;
          v62 = v17;
          v63 = 1026;
          v64 = v18;
          v65 = 1026;
          v66 = v19;
          v67 = 1026;
          v68 = v20;
          _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,overrode bestCandidate with alternate,roadID,%{public}lld,bestIncoming,%{public}d,altBestIncoming,%{public}d,bestCombined,%{public}d,altBestCombined,%{public}d", buf, 0x2Eu);
        }

        v21 = sub_19B87DD40();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v22 = *a1;
          v23 = -1227133513 * ((*(v4 + 134) - *(v4 + 133)) >> 4);
          v24 = -1227133513 * ((*(v10 + 134) - *(v10 + 133)) >> 4);
          v25 = v4[31];
          v26 = v10[31];
          v48 = 134350336;
          v49 = v22;
          v50 = 2050;
          v51 = v46[0];
          v52 = 1026;
          v53 = v23;
          v54 = 1026;
          v55 = v24;
          v56 = 1026;
          v57 = v25;
          v58 = 1026;
          v59 = v26;
          v27 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "const MMCandidate *const CLParticleMM::MMCandidateVector::getSolutionCandidate() const", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        v4 = v10;
      }
    }
  }

LABEL_78:
  v38 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_19BA0EAE8(_BYTE *a1, void *a2, void *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v17, "CLMMPED,%{public}.1lf,overrode bestCandidate with alternate,roadID,%{public}lld,bestIncoming,%{public}d,altBestIncoming,%{public}d,bestCombined,%{public}d,altBestCombined,%{public}d");
    sub_19BA2FBB8(&v17);
    bzero(a1 + 56, 0x800uLL);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      snprintf(a1 + 56, 0x800uLL, &v17, *a2, *a3, *a4, *a5, *a6, *a7);
    }

    else
    {
      snprintf(a1 + 56, 0x800uLL, v17.__r_.__value_.__l.__data_, *a2, *a3, *a4, *a5, *a6, *a7);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }
}

double sub_19BA0EC08(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1[3])
  {
    v2 = sub_19BA0E204(a1);
    v3 = 0.0;
    if (v2)
    {
      v4 = (v2 + 2);
      if (*(v2 + 1))
      {
        v5 = a1[1];
        v6 = a1 + 2;
        if (v5 != v6)
        {
          do
          {
            sub_19B97106C(v4, &buf);
            if (*(v5 + 4) == buf && *(v5 + 48) == v19)
            {
              v7 = v5[15];
              if (v7 <= v3)
              {
                v7 = v3;
              }

              if (*(v5 + 5) != *(&buf + 1))
              {
                v3 = v7;
              }
            }

            else if (v5[15] > v3)
            {
              v3 = v5[15];
            }

            v8 = *(v5 + 1);
            if (v8)
            {
              do
              {
                v9 = v8;
                v8 = *v8;
              }

              while (v8);
            }

            else
            {
              do
              {
                v9 = *(v5 + 2);
                v10 = *v9 == v5;
                v5 = v9;
              }

              while (!v10);
            }

            v5 = v9;
          }

          while (v9 != v6);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v11 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpectedly zero candidates,getSecondBestCandidate", &buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || (v3 = 0.0, *(v13 + 152)))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v17 = *a1;
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "double CLParticleMM::MMCandidateVector::getBestParticleScoreForAlternateCandidate() const", "CoreLocation: %s\n", v14);
      if (v14 != &buf)
      {
        free(v14);
      }

      v3 = 0.0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_19BA0EEA8(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v2 = (a1 + 16);
  sub_19BA2E9A8(*(a1 + 16));
  v3 = v5;
  *(v2 - 1) = &v5;
  *v2 = v3;
  v4 = v6;
  v2[1] = v6;
  if (v4)
  {
    *(v3 + 16) = v2;
    v5 = 0;
    v6 = 0;
    v3 = 0;
  }

  else
  {
    *(a1 + 8) = v2;
  }

  sub_19BA2E9A8(v3);
}

uint64_t sub_19BA0EF24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  v9 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 64) = v9;
  if (a1 != a2)
  {
    sub_19B967884((a1 + 96), *(a2 + 96), *(a2 + 104), 0x8E38E38E38E38E39 * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v12 = *(a2 + 248);
  v13 = *(a2 + 264);
  v14 = *(a2 + 280);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 264) = v13;
  *(a1 + 280) = v14;
  *(a1 + 248) = v12;
  v15 = *(a2 + 168);
  v16 = *(a2 + 184);
  v17 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v17;
  *(a1 + 184) = v16;
  *(a1 + 168) = v15;
  std::string::operator=((a1 + 296), (a2 + 296));
  memcpy((a1 + 320), (a2 + 320), 0x118uLL);
  v18 = *(a2 + 648);
  v20 = *(a2 + 600);
  v19 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 648) = v18;
  *(a1 + 600) = v20;
  *(a1 + 616) = v19;
  v21 = *(a2 + 712);
  v23 = *(a2 + 664);
  v22 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v21;
  *(a1 + 664) = v23;
  *(a1 + 680) = v22;
  std::string::operator=((a1 + 728), (a2 + 728));
  memcpy((a1 + 752), (a2 + 752), 0x118uLL);
  v24 = *(a2 + 1048);
  *(a1 + 1032) = *(a2 + 1032);
  *(a1 + 1048) = v24;
  if (a1 != a2)
  {
    sub_19BA2EB5C((a1 + 1064), *(a2 + 1064), *(a2 + 1072), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1072) - *(a2 + 1064)) >> 4));
  }

  v25 = *(a2 + 1088);
  v26 = *(a2 + 1096);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1088) = v25;
  v27 = *(a1 + 1096);
  *(a1 + 1096) = v26;
  if (v27)
  {
    sub_19B8750F8(v27);
  }

  v28 = *(a2 + 1104);
  v29 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v29;
  *(a1 + 1104) = v28;
  return a1;
}

void sub_19BA0F110(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 88) = 0;
  v3 = (a1 + 88);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (a2 != a3)
  {
    v5 = a2;
    v7 = 0.0;
    do
    {
      v8 = *(v5 + 7);
      if (v8 > v7)
      {
        v10 = *v5;
        v9 = v5[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(a1 + 8);
        *a1 = v10;
        *(a1 + 8) = v9;
        if (v11)
        {
          sub_19B8750F8(v11);
        }

        v12 = *(v5 + 2);
        *(a1 + 16) = *(v5 + 1);
        *(a1 + 32) = v12;
        *(a1 + 48) = v5[6];
        *(a1 + 56) = *(v5 + 7);
        *(a1 + 65) = *(v5 + 65);
        if (v5 != a1)
        {
          sub_19B967884(v3, v5[11], v5[12], 0x8E38E38E38E38E39 * ((v5[12] - v5[11]) >> 3));
        }

        v7 = v8;
      }

      v5 += 14;
    }

    while (v5 != a3);
  }
}

uint64_t sub_19BA0F244(uint64_t *a1, uint64_t a2, double a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  if (*a1 != v4)
  {
    do
    {
      while (*v5)
      {
        sub_19B97106C(v5, &buf);
        if (buf == *a2 && v19 == *(a2 + 16) && *(&buf + 1) == *(a2 + 8))
        {
          v4 = sub_19BA2EACC((v5 + 112), a1[1], v5);
          for (i = a1[1]; i != v4; sub_19B988BB4(i))
          {
            i -= 14;
          }

          a1[1] = v4;
        }

        else
        {
          v5 += 112;
          v4 = a1[1];
        }

        if (v5 == v4)
        {
          goto LABEL_28;
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v7 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134349056;
        *(&buf + 4) = a3;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,particle road is null while eliminateParticlesWithRoadKey", &buf, 0xCu);
      }

      v8 = sub_19B87DD40();
      if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v9 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "int CLParticleMM::MMParticleVector::eliminateParticlesWithRoadKey(const CFAbsoluteTime, const CLParticleMapMatcherCommon::RoadKey)", "CoreLocation: %s\n", v9);
        if (v9 != &buf)
        {
          free(v9);
        }
      }

      v10 = sub_19BA2EACC((v5 + 112), a1[1], v5);
      for (j = a1[1]; j != v10; sub_19B988BB4(j))
      {
        j -= 14;
      }

      a1[1] = v10;
    }

    while (v5 != v10);
    v4 = v5;
  }

LABEL_28:
  v13 = *MEMORY[0x1E69E9840];
  return -1227133513 * ((v17 - v16) >> 4) + 1227133513 * ((v4 - *a1) >> 4);
}

uint64_t sub_19BA0F554(double **a1, double a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v6 = 0.0;
LABEL_46:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v36 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      v41 = a2;
      v42 = 2050;
      v43 = v6;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to normalizeLikelihoods, negative/zero totalScore after regular update,%{public}.8lf", buf, 0x16u);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v38 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::computeLikelihoods(const CFAbsoluteTime, BOOL)", "CoreLocation: %s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    goto LABEL_57;
  }

  v6 = 0.0;
  do
  {
    v3[7] = 0.0;
    v3[8] = 0.0;
    v3[9] = 0.0;
    v7 = *(v3 + 11);
    v8 = *(v3 + 12);
    v9 = 0.0;
    if (v7 != v8)
    {
      v10 = 0.0;
      do
      {
        if (*(v7 + 64) != 2)
        {
          v11 = *(v7 + 24);
          v12 = *v7 * v11;
          if (v9 > 0.0)
          {
            v13 = log(v9);
            v14 = log(v12);
            v12 = exp(v13 + v14);
          }

          v3[7] = v12;
          v10 = v10 + *(v7 + 16) * v11;
          v3[9] = v10;
          v9 = v12;
        }

        v7 += 72;
      }

      while (v7 != v8);
    }

    v6 = v6 + v9;
    v3 += 14;
  }

  while (v3 != v4);
  if (v6 <= 0.0)
  {
    goto LABEL_46;
  }

  v16 = *a1;
  v15 = a1[1];
  if (v16 == v15)
  {
    goto LABEL_57;
  }

  v17 = v16;
  do
  {
    v17[8] = v17[7] / v6;
    v17 += 14;
  }

  while (v17 != v15);
  v18 = 0.0;
  v19 = v16;
  do
  {
    v20 = *(v19 + 11);
    v21 = *(v19 + 12);
    v22 = *(v19 + 11);
    if (v22 == v21)
    {
      goto LABEL_40;
    }

    v23 = 0.0;
    v24 = *(v19 + 11);
    do
    {
      v25 = v23 + *(v24 + 24);
      if (*(v24 + 64) == 2)
      {
        v23 = v23 + *(v24 + 24);
      }

      v24 += 72;
    }

    while (v24 != v21);
    if (*&v23 > -1 && ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v23 - 1) < 0xFFFFFFFFFFFFFLL)
    {
      v28 = *(v19 + 11);
      do
      {
        if (*(v28 + 64) == 2)
        {
          *(v28 + 24) = *(v28 + 24) / v23;
        }

        v28 += 72;
      }

      while (v28 != v21);
    }

    v29 = 0.0;
    v30 = 0.0;
    do
    {
      if (*(v22 + 64) == 2)
      {
        v31 = *(v22 + 24);
        v30 = v30 + *v22 * v31;
        v29 = v29 + *(v22 + 16) * v31;
      }

      v22 += 72;
    }

    while (v22 != v21);
    if (v30 <= 0.0)
    {
LABEL_40:
      v30 = v19[7];
    }

    else
    {
      v32 = v19[7];
      if (v32 > 0.0)
      {
        v33 = log(v32);
        v34 = log(v30);
        v30 = exp(v34 + v33);
      }

      v19[7] = v30;
      v19[9] = v29 + v19[9];
    }

    v18 = v18 + v30;
    v19 += 14;
  }

  while (v19 != v15);
  if (v18 <= 0.0)
  {
LABEL_57:
    result = 0;
    goto LABEL_58;
  }

  do
  {
    v16[8] = v16[7] / v18;
    v16 += 14;
  }

  while (v16 != v15);
  result = 1;
LABEL_58:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19BA0F96C(float64x2_t *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    *buf = 0;
    sub_19BA0C3BC(a1, buf, &v27, a3[4], a3[5], *(a2 + 96), *(a3 + 6), *(a2 + 80), *(a2 + 88));
    v8 = *a3;
    v9 = *a3 != 0;
    if (*a3)
    {
      v10 = *(*&v8 + 20);
      v11 = 0.5;
      if (v10 != 9)
      {
        v12 = *(*&v8 + 72);
        if (v12 != 6 && v12 != 255)
        {
          v13 = *(*&v8 + 96);
          if (v13 < 0.000001)
          {
            v13 = 1.0;
            if ((v10 & 0xFFFFFFFE) != 8)
            {
              v13 = sub_19B988DA8(v10, *(*&v8 + 16));
            }
          }

          v11 = v13 * 0.5 + 1.0;
        }
      }

      v14 = a3[4];
      v15 = a3[5];
      v25 = v15;
      v26 = v14;
      if (*buf < 0.0)
      {
        v11 = -v11;
      }

      sub_19BA0C0F8(a1->f64, &v26, &v25, v14, v15, *(a2 + 96), *(a3 + 6), v11);
      sub_19BA0BE88(a1, (a4 + 40), (a4 + 32), (a4 + 48), v26, v25, *(a2 + 96), *(a2 + 80), *(a2 + 88), *(a2 + 96));
      if (*(a2 + 40) == 1)
      {
        v16 = *(a2 + 104);
        if (v16 >= 0.0 && *(a2 + 120) > 0.0)
        {
          v17 = fmod(v16 - *(a3 + 6), 360.0);
          if (v17 < 0.0)
          {
            v17 = v17 + 360.0;
          }

          if (v17 > 180.0)
          {
            v17 = v17 + -360.0;
          }

          *(a4 + 56) = fabs(v17);
        }
      }

      sub_19B9C1C60(a2, a4);
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v18 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a2 + 200);
      *buf = 134349056;
      *&buf[4] = v19;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,NULL road when computing score", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v21 = *(a2 + 200);
      v27 = 134349056;
      v28 = v21;
      v22 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::calculateScoreAndVarFactor(const CLParticleMapMatcherCommon::CLMMMeasurementData &, const CLMapGeometry::DistanceQueryResult &, CLMapDataUtil::MapMatcherScore &)", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v9 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL sub_19BA0FCCC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  if (v4 == v5)
  {
    return 0;
  }

  while (1)
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0x3FF0000000000000;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    result = sub_19BA0F96C(a1, a3, v5, v10);
    if (!result)
    {
      break;
    }

    v14 = a2;
    v11 = *(a3 + 128);
    sub_19B973D80((v5 + 11), v10);
    sub_19B988454(v5);
    v5 += 14;
    if (v5 == v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_19BA0FD94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v366 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 384);
  if (*a2)
  {
    v5 = a1;
    v257 = 0;
    v258 = 0;
    v259 = 0;
    sub_19B973FA0(&v257, 0x60uLL);
    if (*(a3 + 264) <= 0.0)
    {
      v21 = *(v5 + 40);
      v15 = 96;
      if (&v257 != (v5 + 40))
      {
        v22 = *(v5 + 48);
        v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 4);
        if (v23 <= 0x5F)
        {
          sub_19BA2EB5C(&v257, v21, v22, v23);
        }
      }

LABEL_58:
      v33 = *(v5 + 40);
      *(v5 + 88) = 0;
      v34 = *(v5 + 48) - v33;
      if (!v34)
      {
        goto LABEL_166;
      }

      v35 = 0x6DB6DB6DB6DB6DB7 * (v34 >> 4);
      v37 = (v5 + 64);
      v36 = *(v5 + 64);
      v38 = v35;
      if (v36)
      {
        *(v5 + 72) = v36;
        operator delete(v36);
        v38 = 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 48) - *(v5 + 40)) >> 4);
      }

      *v37 = 0;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      sub_19B97AB8C((v5 + 64), v38);
      *(v5 + 96) = 0xBFF0000000000000;
      if (sub_19BA0F554((v5 + 40), *&v3))
      {
        v39 = *(v5 + 40);
        v40 = *(v5 + 48);
        if (v39 == v40)
        {
          v43 = 0.0;
        }

        else
        {
          v246 = a3;
          v41 = *(v5 + 72);
          v42 = 0.0;
          v43 = 0.0;
          do
          {
            v44 = *(v39 + 64);
            v42 = v42 + v44;
            v45 = v42;
            v46 = *(v5 + 80);
            if (v41 >= v46)
            {
              v47 = *v37;
              v48 = v41 - *v37;
              v49 = v48 >> 2;
              v50 = (v48 >> 2) + 1;
              if (v50 >> 62)
              {
                sub_19B8B8A40();
              }

              v51 = v46 - v47;
              if (v51 >> 1 > v50)
              {
                v50 = v51 >> 1;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v52 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v50;
              }

              if (v52)
              {
                sub_19B8F1D64(v5 + 64, v52);
              }

              *(4 * v49) = v45;
              v41 = (4 * v49 + 4);
              memcpy(0, v47, v48);
              v53 = *(v5 + 64);
              *(v5 + 64) = 0;
              *(v5 + 72) = v41;
              *(v5 + 80) = 0;
              if (v53)
              {
                operator delete(v53);
              }
            }

            else
            {
              *v41++ = v45;
            }

            v43 = v43 + v44 * v44;
            *(v5 + 72) = v41;
            v39 += 112;
          }

          while (v39 != v40);
          if (v43 > 0.0)
          {
            *(v5 + 96) = 1.0 / v43;
            v55 = v257;
            v54 = v258;
            LODWORD(buf.__r_.__value_.__l.__data_) = 0;
            sub_19B988C58(__p, v35);
            a3 = v246;
            v56 = 0x9249249249249249 * ((v54 - v55) >> 4) + v15;
            if (v56)
            {
              for (i = 0; i != v56; ++i)
              {
                v58 = random();
                v59 = *(v5 + 64);
                v60 = *(v5 + 72);
                if (v60 != v59)
                {
                  v61 = vcvts_n_f32_s64(v58, 0x1FuLL);
                  v62 = v60 - v59;
                  v60 = *(v5 + 64);
                  do
                  {
                    v63 = v62 >> 1;
                    v64 = &v60[v62 >> 1];
                    v66 = *v64;
                    v65 = v64 + 1;
                    v62 += ~(v62 >> 1);
                    if (v66 < v61)
                    {
                      v60 = v65;
                    }

                    else
                    {
                      v62 = v63;
                    }
                  }

                  while (v62);
                }

                ++*(*__p + ((v60 - v59) << 30 >> 30));
              }
            }

            v68 = *(v5 + 40);
            v67 = *(v5 + 48);
            if (v68 != v67)
            {
              v69 = 0;
              v70 = *__p;
              do
              {
                if (v69 >= (*&__p[8] - v70) >> 2)
                {
                  break;
                }

                if (*(v70 + 4 * v69) >= 1)
                {
                  v71 = 0;
                  do
                  {
                    sub_19B973C04(&v257, v68);
                    ++v71;
                    v70 = *__p;
                  }

                  while (v71 < *(*__p + 4 * v69));
                  v67 = *(v5 + 48);
                }

                v68 += 112;
                ++v69;
              }

              while (v68 != v67);
            }

            v72 = v258;
            v73 = 0x6DB6DB6DB6DB6DB7 * ((v258 - v257) >> 4);
            if (v73 <= v15)
            {
              v87 = *(v5 + 40);
              *(v5 + 40) = v257;
              *(v5 + 48) = v72;
              v257 = v87;
              v258 = v67;
              v88 = *(v5 + 56);
              *(v5 + 56) = v259;
              v259 = v88;
              *(v5 + 88) = 1;
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v89 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v90 = *(v5 + 96);
                LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
                *(buf.__r_.__value_.__r.__words + 4) = v3;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v90;
                _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Resampled,Neff,%{public}lf", &buf, 0x16u);
              }

              v91 = sub_19B87DD40();
              if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v92 = *(v5 + 96);
                *v291 = 134349312;
                *&v291[4] = v3;
                *&v291[12] = 2050;
                *&v291[14] = v92;
                v76 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMParticleVector::resample(const CFAbsoluteTime, const int, CLParticleMapMatcherCommon::ParticleVector &)", "CoreLocation: %s\n", v76);
                goto LABEL_161;
              }
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v74 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
                *(buf.__r_.__value_.__r.__words + 4) = v3;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v73;
                _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected number of particles after resampling,%{public}d", &buf, 0x12u);
              }

              v75 = sub_19B87DD40();
              if ((*(v75 + 160) & 0x80000000) == 0 || (*(v75 + 164) & 0x80000000) == 0 || (*(v75 + 168) & 0x80000000) == 0 || *(v75 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                *v291 = 134349312;
                *&v291[4] = v3;
                *&v291[12] = 1026;
                *&v291[14] = v73;
                v76 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::resample(const CFAbsoluteTime, const int, CLParticleMapMatcherCommon::ParticleVector &)", "CoreLocation: %s\n", v76);
LABEL_161:
                if (v76 != &buf)
                {
                  free(v76);
                }
              }
            }

            if (*__p)
            {
              *&__p[8] = *__p;
              operator delete(*__p);
            }

            if (v73 <= v15)
            {
LABEL_166:
              v247 = a3;
              sub_19BA0EEA8(v5 + 104);
              v93 = *(v5 + 40);
              v254 = *(v5 + 48);
              v256 = v5;
              if (v93 != v254)
              {
                __asm { FMOV            V0.2D, #-1.0 }

                v249 = _Q0;
                do
                {
                  v98 = *v93;
                  v99 = *(v93 + 8);
                  if (v99)
                  {
                    atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
                    v100 = *(v93 + 20);
                    *__p = 0;
                    *&__p[8] = 0;
                    __p[16] = 1;
                    atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
                    *__p = *v98;
                    __p[16] = v100;
                    sub_19B8750F8(v99);
                    sub_19B8750F8(v99);
                  }

                  else
                  {
                    v101 = *(v93 + 20);
                    *__p = 0;
                    *&__p[8] = 0;
                    *__p = *v98;
                    __p[16] = v101;
                  }

                  if (sub_19BA2F92C(*(v5 + 120), __p))
                  {
                    buf.__r_.__value_.__r.__words[0] = __p;
                    v102 = sub_19BA2F99C(v5 + 112, __p);
                    if (!sub_19BA0D258(v102 + 7, v93))
                    {
                      goto LABEL_328;
                    }
                  }

                  else
                  {
                    *&buf.__r_.__value_.__l.__data_ = 0xBFF0000000000000;
                    buf.__r_.__value_.__r.__words[2] = 0;
                    v293 = 0;
                    v294 = 1;
                    *&v295[2] = 0;
                    *&v296[4] = 0u;
                    v297 = 0u;
                    v298 = 0u;
                    LOBYTE(v299) = 0;
                    memset(v302, 0, sizeof(v302));
                    v303 = 0u;
                    v304 = 1;
                    v305 = 0;
                    v307 = 0;
                    v308 = 0;
                    v306 = 0;
                    v309 = v249;
                    v310 = 0;
                    v311 = 0;
                    v312 = 0xBFF0000000000000;
                    v324 = 0;
                    v325 = 0;
                    memset(&v322[32], 0, 32);
                    v323 = 0;
                    v326 = 0u;
                    v327 = 0u;
                    v328 = 0u;
                    memset(v329, 0, 27);
                    memset(&v329[32], 0, 48);
                    v321 = 0u;
                    memset(v322, 0, 30);
                    v319 = 0u;
                    v320 = 0u;
                    v317 = 0u;
                    v318 = 0u;
                    v315 = 0u;
                    v316 = 0u;
                    v313 = 0u;
                    v314 = 0u;
                    v331 = 0xBFF0000000000000;
                    v330 = 0;
                    v332 = 0;
                    v333 = 0;
                    v334 = 0xBFF0000000000000;
                    v335 = 0xBFF0000000000000;
                    v336 = 0;
                    v337 = 0;
                    v338 = 0xBFF0000000000000;
                    v350 = 0;
                    v351 = 0;
                    v349 = 0;
                    memset(&v348[32], 0, 32);
                    v354 = 0u;
                    memset(v355, 0, 27);
                    v352 = 0u;
                    v353 = 0u;
                    memset(&v355[32], 0, 48);
                    v347 = 0u;
                    memset(v348, 0, 30);
                    v345 = 0u;
                    v346 = 0u;
                    v343 = 0u;
                    v344 = 0u;
                    v341 = 0u;
                    v342 = 0u;
                    v339 = 0u;
                    v340 = 0u;
                    v356 = 0;
                    v357 = xmmword_19BA8CF00;
                    v362 = 0;
                    v363 = 0;
                    v361 = 0;
                    v360 = 0u;
                    v358 = 0u;
                    memset(v359, 0, sizeof(v359));
                    v364 = 1;
                    v365 = -1;
                    if (!sub_19BA0D258(&buf, v93))
                    {
                      if (*(&v360 + 1))
                      {
                        sub_19B8750F8(*(&v360 + 1));
                      }

                      *v291 = &v359[8];
                      sub_19B988734(v291);
                      if (SHIBYTE(v344) < 0)
                      {
                        operator delete(*(&v343 + 1));
                      }

                      if (SHIBYTE(v318) < 0)
                      {
                        operator delete(*(&v317 + 1));
                      }

                      if (v302[0])
                      {
                        v302[1] = v302[0];
                        operator delete(v302[0]);
                      }

                      if (buf.__r_.__value_.__r.__words[2])
                      {
                        sub_19B8750F8(buf.__r_.__value_.__r.__words[2]);
                      }

LABEL_328:
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v227 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                        *(buf.__r_.__value_.__r.__words + 4) = v3;
                        _os_log_impl(&dword_19B873000, v227, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,candidate update failed", &buf, 0xCu);
                      }

                      v228 = sub_19B87DD40();
                      if (*(v228 + 160) > 1 || *(v228 + 164) > 1 || *(v228 + 168) > 1 || *(v228 + 152))
                      {
                        bzero(&buf, 0x65CuLL);
                        if (qword_1EAFE46D0 == -1)
                        {
                          goto LABEL_390;
                        }

LABEL_439:
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
LABEL_390:
                        *__p = 134349056;
                        *&__p[4] = v3;
                        v238 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v238);
                        if (v238 != &buf)
                        {
                          free(v238);
                        }
                      }

                      goto LABEL_392;
                    }

                    buf.__r_.__value_.__r.__words[0] = v3;
                    *v291 = __p;
                    v103 = sub_19BA2F99C(v5 + 112, __p);
                    sub_19BA0EF24((v103 + 7), &buf);
                    if (*(&v360 + 1))
                    {
                      sub_19B8750F8(*(&v360 + 1));
                    }

                    *v291 = &v359[8];
                    sub_19B988734(v291);
                    if (SHIBYTE(v344) < 0)
                    {
                      operator delete(*(&v343 + 1));
                    }

                    if (SHIBYTE(v318) < 0)
                    {
                      operator delete(*(&v317 + 1));
                    }

                    if (v302[0])
                    {
                      v302[1] = v302[0];
                      operator delete(v302[0]);
                    }

                    if (buf.__r_.__value_.__r.__words[2])
                    {
                      sub_19B8750F8(buf.__r_.__value_.__r.__words[2]);
                    }
                  }

                  v93 += 112;
                }

                while (v93 != v254);
              }

              *(v5 + 104) = v3;
              v104 = a2[1];
              v253 = *a2;
              if (v104)
              {
                atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v105 = *(v5 + 384);
              if (v253)
              {
                if (*(v5 + 128))
                {
                  v106 = *(v5 + 112);
                  v107 = 1;
                  v255 = (v5 + 120);
                  if (v106 == (v5 + 120))
                  {
                    v222 = v247;
                    if (!v104)
                    {
                      goto LABEL_368;
                    }

                    goto LABEL_367;
                  }

                  v250 = v104;
                  v252 = (v5 + 376);
                  while (v106[141] != v106[140])
                  {
                    v108 = v106[143];
                    sub_19B9F5AA8(v108);
                    v109 = (v106 + 143);
                    if (*(v108 + 40) <= 0.0)
                    {
                      v115 = 0.0;
                      v116 = 1.0;
                    }

                    else
                    {
                      v110 = v106[141];
                      v111 = v106[140];
                      if (v110 == v111)
                      {
                        v114 = 0.0;
                      }

                      else
                      {
                        v112 = 0x6DB6DB6DB6DB6DB7 * ((v110 - v111) >> 4);
                        v113 = 0.0;
                        do
                        {
                          v113 = v113 + *(v111 + 48);
                          v111 += 112;
                        }

                        while (v111 != v110);
                        v114 = v113 / v112;
                      }

                      v117 = *v109;
                      sub_19B9F5AA8(*v109);
                      v118 = 40.0 / *(v117 + 40);
                      if (v118 > 1.0)
                      {
                        v118 = 1.0;
                      }

                      if (v114 - v118 >= 0.0)
                      {
                        v115 = v114 - v118;
                      }

                      else
                      {
                        v115 = 0.0;
                      }

                      v119 = v114 + v118;
                      if (v119 <= 1.0)
                      {
                        v116 = v119;
                      }

                      else
                      {
                        v116 = 1.0;
                      }
                    }

                    v120 = v106[140];
                    v121 = v106[141];
                    if (v120 == v121)
                    {
                      v130 = v106[140];
                    }

                    else
                    {
                      do
                      {
                        v122 = *(v120 + 48);
                        if (v122 >= v115 && v122 <= v116)
                        {
                          ++*(v106 + 44);
                          if (*(v120 + 56) > *(v106 + 15))
                          {
                            v125 = *v120;
                            v124 = *(v120 + 8);
                            if (v124)
                            {
                              atomic_fetch_add_explicit((v124 + 8), 1uLL, memory_order_relaxed);
                            }

                            v126 = v106[9];
                            v106[8] = v125;
                            v106[9] = v124;
                            if (v126)
                            {
                              sub_19B8750F8(v126);
                            }

                            v127 = *(v120 + 16);
                            v128 = *(v120 + 32);
                            v106[14] = *(v120 + 48);
                            *(v106 + 5) = v127;
                            *(v106 + 6) = v128;
                            v129 = *(v120 + 56);
                            *(v106 + 129) = *(v120 + 65);
                            *(v106 + 15) = v129;
                            if (v120 != v106 + 8)
                            {
                              sub_19B967884(v106 + 19, *(v120 + 88), *(v120 + 96), 0x8E38E38E38E38E39 * ((*(v120 + 96) - *(v120 + 88)) >> 3));
                            }
                          }
                        }

                        v120 += 112;
                      }

                      while (v120 != v121);
                      v130 = v106[141];
                      v120 = v106[140];
                    }

                    *(v106 + 45) = -1227133513 * ((v130 - v120) >> 4);
                    v131 = *v252;
                    v132 = *(v256 + 392);
                    v133 = *(v256 + 424);
                    *(v106 + 16) = *(v256 + 408);
                    *(v106 + 17) = v133;
                    *(v106 + 14) = v131;
                    *(v106 + 15) = v132;
                    v134 = *(v256 + 440);
                    v135 = *(v256 + 456);
                    v136 = *(v256 + 488);
                    *(v106 + 20) = *(v256 + 472);
                    *(v106 + 21) = v136;
                    *(v106 + 18) = v134;
                    *(v106 + 19) = v135;
                    std::string::operator=((v106 + 44), (v5 + 504));
                    memcpy(v106 + 47, (v5 + 528), 0x118uLL);
                    v137 = v106[141];
                    v138 = v106[140];
                    if (v137 == v138)
                    {
                      v141 = 0.0;
                    }

                    else
                    {
                      v139 = 0x6DB6DB6DB6DB6DB7 * ((v137 - v138) >> 4);
                      v140 = 0.0;
                      do
                      {
                        v140 = v140 + *(v138 + 48);
                        v138 += 112;
                      }

                      while (v138 != v137);
                      v141 = v140 / v139;
                    }

                    v261 = v141;
                    if ((sub_19B9DF3F8(v253, (v106 + 28), v106 + 143, *(v106 + 48), &v261, 1) & 1) == 0)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v222 = v247;
                      v104 = v250;
                      v232 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                        *(buf.__r_.__value_.__r.__words + 4) = v105;
                        _os_log_impl(&dword_19B873000, v232, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,interpolateOnRoad returned false, determining mean road position", &buf, 0xCu);
                      }

                      v233 = sub_19B87DD40();
                      if (*(v233 + 160) > 1 || *(v233 + 164) > 1 || *(v233 + 168) > 1 || *(v233 + 152))
                      {
                        bzero(&buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        *__p = 134349056;
                        *&__p[4] = v105;
                        v231 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v231);
                        goto LABEL_364;
                      }

                      goto LABEL_366;
                    }

                    v142 = *(v106 + 136);
                    v143 = *(v106 + 48);
                    v144 = v106[143];
                    sub_19B9F5AA8(v144);
                    v145 = 1.0 - v142;
                    if (!v143)
                    {
                      v145 = v142;
                    }

                    v146 = v145 * *(v144 + 40);
                    *v291 = v291;
                    *&v291[8] = v291;
                    *&v291[16] = 0;
                    if (v146 <= 40.0)
                    {
                      if (((*(*v253 + 72))(v253, v291, v106 + 143, *(v106 + 48), 1, v142, v146 + 1.0) & 1) == 0)
                      {
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        v222 = v247;
                        v104 = v250;
                        v244 = off_1EAFE4708;
                        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                        {
                          LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                          *(buf.__r_.__value_.__r.__words + 4) = v105;
                          _os_log_impl(&dword_19B873000, v244, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadsConnected returned false, searching for connected candidates", &buf, 0xCu);
                        }

                        v245 = sub_19B87DD40();
                        if (*(v245 + 160) > 1 || *(v245 + 164) > 1 || *(v245 + 168) > 1 || *(v245 + 152))
                        {
                          bzero(&buf, 0x65CuLL);
                          if (qword_1EAFE46D0 != -1)
                          {
                            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                          }

                          *__p = 134349056;
                          *&__p[4] = v105;
                          v243 = _os_log_send_and_compose_impl();
                          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v243);
LABEL_423:
                          if (v243 != &buf)
                          {
                            free(v243);
                          }
                        }

LABEL_425:
                        sub_19B941414(v291);
                        goto LABEL_366;
                      }

                      v147 = *&v291[8];
                      if (*&v291[8] != v291)
                      {
                        v148 = 0;
                        v149 = 0;
                        v251 = v106 + 146;
                        while (1)
                        {
                          v150 = *(v147 + 32);
                          v151 = *(v147 + 40);
                          if (v151)
                          {
                            atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
                            v152 = *(v147 + 24);
                            *__p = 0;
                            *&__p[8] = 0;
                            __p[16] = 1;
                            atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
                            *__p = *v150;
                            __p[16] = v152;
                            sub_19B8750F8(v151);
                            sub_19B8750F8(v151);
                            v153 = *__p;
                            v154 = __p[16];
                          }

                          else
                          {
                            v154 = *(v147 + 24);
                            *__p = 0;
                            *&__p[8] = 0;
                            *__p = *v150;
                            __p[16] = v154;
                            v153 = *__p;
                          }

                          v155 = v106[4];
                          v156 = *(v106 + 48);
                          if (v153 != v155 || v154 != v156 || *&__p[8] != v106[5])
                          {
                            _ZF = v155 != v153 || v154 == v156;
                            if (_ZF)
                            {
                              ++v149;
                            }

                            if (sub_19BA2F92C(*v255, __p))
                            {
                              buf.__r_.__value_.__r.__words[0] = __p;
                              v158 = sub_19BA2F99C(v5 + 112, __p);
                              v159 = v158[143];
                              sub_19B9F5AA8(v159);
                              v160 = (v158 + 143);
                              if (*(v159 + 40) >= 40.0)
                              {
                                v163 = *v160;
                                sub_19B9F5AA8(*v160);
                                v161 = 1.0 - 40.0 / v163[5];
                                if (__p[16])
                                {
                                  v161 = 0.0;
                                  v162 = 40.0 / v163[5];
                                }

                                else
                                {
                                  v162 = 1.0;
                                }
                              }

                              else
                              {
                                v161 = 0.0;
                                v162 = 1.0;
                              }

                              v164 = v158[140];
                              v165 = v158[141];
                              v5 = v256;
                              if (v164 != v165)
                              {
                                v166 = 0;
                                v167 = 0.0;
                                do
                                {
                                  v168 = *(v164 + 48);
                                  v169 = v168 >= v161;
                                  v170 = v168 <= v162;
                                  v171 = v167 + v168;
                                  v172 = v169 && v170;
                                  if (v172)
                                  {
                                    v167 = v171;
                                  }

                                  v166 += v172;
                                  v164 += 112;
                                }

                                while (v164 != v165);
                                if (v166)
                                {
                                  ++*(v106 + 274);
                                  *(v106 + 209) = 1;
                                  v173 = v166 - 1227133513 * ((v106[141] - v106[140]) >> 4);
                                  if (v173 <= v148)
                                  {
                                    if (v173 == v148 || v173 > *(v106 + 290))
                                    {
                                      *v251 = *__p;
                                      *(v106 + 1184) = __p[16];
                                      *(v106 + 290) = v173;
                                    }

                                    v173 = v148;
                                  }

                                  else
                                  {
                                    v174 = v167 / v166;
                                    v260 = v174;
                                    *v251 = *(v106 + 23);
                                    *(v106 + 1184) = *(v106 + 200);
                                    *(v106 + 23) = *__p;
                                    v175 = __p[16];
                                    *(v106 + 200) = __p[16];
                                    *(v106 + 275) = v166;
                                    *(v106 + 290) = *(v106 + 45);
                                    *(v106 + 45) = v173;
                                    *(v106 + 139) = v174;
                                    v176 = *v160;
                                    sub_19B9F5AA8(*v160);
                                    v177 = 1.0 - v174;
                                    if (v175)
                                    {
                                      v177 = v174;
                                    }

                                    *(v106 + 138) = v177 * v176[5];
                                    v178 = *(v256 + 488);
                                    v180 = *(v256 + 440);
                                    v179 = *(v256 + 456);
                                    *(v106 + 47) = *(v256 + 472);
                                    *(v106 + 48) = v178;
                                    *(v106 + 45) = v180;
                                    *(v106 + 46) = v179;
                                    v181 = *v252;
                                    v182 = *(v256 + 392);
                                    v183 = *(v256 + 424);
                                    *(v106 + 43) = *(v256 + 408);
                                    *(v106 + 44) = v183;
                                    *(v106 + 41) = v181;
                                    *(v106 + 42) = v182;
                                    std::string::operator=((v106 + 98), (v256 + 504));
                                    memcpy(v106 + 101, (v256 + 528), 0x118uLL);
                                    if ((sub_19B9DF3F8(v253, (v106 + 82), v160, __p[16], &v260, 1) & 1) == 0)
                                    {
                                      if (qword_1EAFE46D0 != -1)
                                      {
                                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                                      }

                                      v222 = v247;
                                      v104 = v250;
                                      v241 = off_1EAFE4708;
                                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                                      {
                                        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                                        *(buf.__r_.__value_.__r.__words + 4) = v105;
                                        _os_log_impl(&dword_19B873000, v241, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,interpolateOnRoad returned false, determining outgoing road position", &buf, 0xCu);
                                      }

                                      v242 = sub_19B87DD40();
                                      if (*(v242 + 160) > 1 || *(v242 + 164) > 1 || *(v242 + 168) > 1 || *(v242 + 152))
                                      {
                                        bzero(&buf, 0x65CuLL);
                                        if (qword_1EAFE46D0 != -1)
                                        {
                                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                                        }

                                        v289 = 134349056;
                                        v290 = v105;
                                        v243 = _os_log_send_and_compose_impl();
                                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v243);
                                        goto LABEL_423;
                                      }

                                      goto LABEL_425;
                                    }
                                  }

                                  v148 = v173;
                                }
                              }
                            }
                          }

                          v147 = *(v147 + 8);
                          if (v147 == v291)
                          {
                            v185 = v149 > 1;
                            goto LABEL_273;
                          }
                        }
                      }
                    }

                    v148 = 0;
                    v185 = 0;
LABEL_273:
                    *(v106 + 208) = v185;
                    v186 = sub_19B8E3CB0();
                    if (*v186 == 1)
                    {
                      v187 = v106[141];
                      v188 = v106[140];
                      sub_19B8759E8(&buf, "CLMMPED,%{public}.1lf,candidate,ID,%{private}llu,fwd,%{public}d,countArndMean,%{public}d,bestParticleScore,%{public}.9lf,isCombined,%{public}d,isMulti,%{public}d,combinedWith,%{private}llu,fwd,%{public}d,incomingCnt,%{public}lu,outgoingCnt,%{public}d,combinedCnt,%{public}d,bestCombinedCnt,%{public}d,secondBestCombinedCnt,%{public}d,secondCombinedWith,%{private}llu");
                      v189 = 0x6DB6DB6DB6DB6DB7 * ((v187 - v188) >> 4);
                      sub_19BA2FBB8(&buf);
                      bzero(v186 + 56, 0x800uLL);
                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        snprintf(v186 + 56, 0x800uLL, &buf, v105, v106[4], *(v106 + 48), *(v106 + 44), v106[15], *(v106 + 209), *(v106 + 208), v106[23], *(v106 + 200), v189, *(v106 + 275), *(v106 + 45), v148, *(v106 + 290), v106[146]);
                      }

                      else
                      {
                        snprintf(v186 + 56, 0x800uLL, buf.__r_.__value_.__l.__data_, v105, v106[4], *(v106 + 48), *(v106 + 44), v106[15], *(v106 + 209), *(v106 + 208), v106[23], *(v106 + 200), v189, *(v106 + 275), *(v106 + 45), v148, *(v106 + 290), v106[146]);
                      }

                      Current = CFAbsoluteTimeGetCurrent();
                      sub_19B8759E8(__p, v186 + 56);
                      sub_19B8E3D48(v186, __p, Current);
                      if (SHIBYTE(v263) < 0)
                      {
                        operator delete(*__p);
                      }

                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }
                    }

                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v191 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      v192 = v106[4];
                      v193 = *(v106 + 48);
                      v194 = v106[15];
                      v195 = *(v106 + 209);
                      v196 = *(v106 + 208);
                      v197 = v106[23];
                      v198 = *(v106 + 200);
                      v199 = 0x6DB6DB6DB6DB6DB7 * ((v106[141] - v106[140]) >> 4);
                      v200 = *(v106 + 275);
                      v202 = *(v106 + 44);
                      v201 = *(v106 + 45);
                      v203 = *(v106 + 290);
                      v204 = v106[146];
                      LODWORD(buf.__r_.__value_.__l.__data_) = 134352641;
                      *(buf.__r_.__value_.__r.__words + 4) = v105;
                      WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
                      *(&buf.__r_.__value_.__r.__words[1] + 6) = v192;
                      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1026;
                      v293 = v193;
                      v294 = 1026;
                      *v295 = v202;
                      *&v295[4] = 2050;
                      *v296 = v194;
                      *&v296[8] = 1026;
                      *&v296[10] = v195;
                      *&v296[14] = 1026;
                      *&v296[16] = v196;
                      LOWORD(v297) = 2049;
                      *(&v297 + 2) = v197;
                      WORD5(v297) = 1026;
                      HIDWORD(v297) = v198;
                      LOWORD(v298) = 2050;
                      *(&v298 + 2) = v199;
                      WORD5(v298) = 1026;
                      HIDWORD(v298) = v200;
                      v299 = 1026;
                      v300 = v201;
                      v301 = 1026;
                      LODWORD(v302[0]) = v148;
                      WORD2(v302[0]) = 1026;
                      *(v302 + 6) = v203;
                      WORD1(v302[1]) = 2049;
                      *(&v302[1] + 4) = v204;
                      _os_log_impl(&dword_19B873000, v191, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,candidate,ID,%{private}llu,fwd,%{public}d,countArndMean,%{public}d,bestParticleScore,%{public}.9lf,isCombined,%{public}d,isMulti,%{public}d,combinedWith,%{private}llu,fwd,%{public}d,incomingCnt,%{public}lu,outgoingCnt,%{public}d,combinedCnt,%{public}d,bestCombinedCnt,%{public}d,secondBestCombinedCnt,%{public}d,secondCombinedWith,%{private}llu", &buf, 0x74u);
                    }

                    v205 = sub_19B87DD40();
                    if (*(v205 + 160) > 1 || *(v205 + 164) > 1 || *(v205 + 168) > 1 || *(v205 + 152))
                    {
                      bzero(&buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v206 = v106[4];
                      v207 = *(v106 + 48);
                      v208 = v106[15];
                      v209 = *(v106 + 209);
                      v210 = *(v106 + 208);
                      v211 = v106[23];
                      v212 = *(v106 + 200);
                      v213 = 0x6DB6DB6DB6DB6DB7 * ((v106[141] - v106[140]) >> 4);
                      v214 = *(v106 + 275);
                      v216 = *(v106 + 44);
                      v215 = *(v106 + 45);
                      v217 = *(v106 + 290);
                      v218 = v106[146];
                      *__p = 134352641;
                      *&__p[4] = v105;
                      *&__p[12] = 2049;
                      *&__p[14] = v206;
                      v263 = 1026;
                      v264 = v207;
                      v265 = 1026;
                      v266 = v216;
                      v267 = 2050;
                      v268 = v208;
                      v269 = 1026;
                      v270 = v209;
                      v271 = 1026;
                      v272 = v210;
                      v273 = 2049;
                      v274 = v211;
                      v275 = 1026;
                      v276 = v212;
                      v277 = 2050;
                      v278 = v213;
                      v279 = 1026;
                      v280 = v214;
                      v281 = 1026;
                      v282 = v215;
                      v283 = 1026;
                      v284 = v148;
                      v285 = 1026;
                      v286 = v217;
                      v287 = 2049;
                      v288 = v218;
                      v219 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v219);
                      if (v219 != &buf)
                      {
                        free(v219);
                      }
                    }

                    sub_19B941414(v291);
                    v220 = v106[1];
                    if (v220)
                    {
                      do
                      {
                        v221 = v220;
                        v220 = *v220;
                      }

                      while (v220);
                    }

                    else
                    {
                      do
                      {
                        v221 = v106[2];
                        _ZF = *v221 == v106;
                        v106 = v221;
                      }

                      while (!_ZF);
                    }

                    v106 = v221;
                    if (v221 == v255)
                    {
                      v107 = 1;
                      v222 = v247;
                      v104 = v250;
                      if (v250)
                      {
                        goto LABEL_367;
                      }

                      goto LABEL_368;
                    }
                  }

                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v222 = v247;
                  v104 = v250;
                  v229 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                    *(buf.__r_.__value_.__r.__words + 4) = v105;
                    _os_log_impl(&dword_19B873000, v229, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to determine best particle", &buf, 0xCu);
                  }

                  v230 = sub_19B87DD40();
                  if ((*(v230 + 160) & 0x80000000) != 0 && (*(v230 + 164) & 0x80000000) != 0 && (*(v230 + 168) & 0x80000000) != 0 && !*(v230 + 152))
                  {
                    goto LABEL_366;
                  }

                  bzero(&buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    goto LABEL_440;
                  }

                  goto LABEL_352;
                }

                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v222 = v247;
                v225 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                  *(buf.__r_.__value_.__r.__words + 4) = v105;
                  _os_log_impl(&dword_19B873000, v225, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, zero candidates,assessCandidates", &buf, 0xCu);
                }

                v226 = sub_19B87DD40();
                if ((*(v226 + 160) & 0x80000000) != 0 && (*(v226 + 164) & 0x80000000) != 0 && (*(v226 + 168) & 0x80000000) != 0 && !*(v226 + 152))
                {
                  goto LABEL_366;
                }

                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 == -1)
                {
                  goto LABEL_352;
                }
              }

              else
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v222 = v247;
                v223 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                  *(buf.__r_.__value_.__r.__words + 4) = v105;
                  _os_log_impl(&dword_19B873000, v223, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, geometry is null", &buf, 0xCu);
                }

                v224 = sub_19B87DD40();
                if ((*(v224 + 160) & 0x80000000) != 0 && (*(v224 + 164) & 0x80000000) != 0 && (*(v224 + 168) & 0x80000000) != 0 && !*(v224 + 152))
                {
                  goto LABEL_366;
                }

                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 == -1)
                {
LABEL_352:
                  *__p = 134349056;
                  *&__p[4] = v105;
                  v231 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMCandidateVector::assessCandidates(CLMapGeometryPtr, const CLMapCrumb &)", "CoreLocation: %s\n", v231);
LABEL_364:
                  if (v231 != &buf)
                  {
                    free(v231);
                  }

LABEL_366:
                  v107 = 0;
                  if (!v104)
                  {
LABEL_368:
                    if ((v107 & 1) == 0)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v234 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                        *(buf.__r_.__value_.__r.__words + 4) = v3;
                        _os_log_impl(&dword_19B873000, v234, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,assessCandidates failed", &buf, 0xCu);
                      }

                      v235 = sub_19B87DD40();
                      if (*(v235 + 160) > 1 || *(v235 + 164) > 1 || *(v235 + 168) > 1 || *(v235 + 152))
                      {
                        bzero(&buf, 0x65CuLL);
                        if (qword_1EAFE46D0 == -1)
                        {
                          goto LABEL_390;
                        }

                        goto LABEL_439;
                      }

                      goto LABEL_392;
                    }

                    if ((sub_19BA12B84(v5, v222) & 1) == 0)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v236 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
                        *(buf.__r_.__value_.__r.__words + 4) = v3;
                        _os_log_impl(&dword_19B873000, v236, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,extractSolution failed", &buf, 0xCu);
                      }

                      v237 = sub_19B87DD40();
                      if (*(v237 + 160) > 1 || *(v237 + 164) > 1 || *(v237 + 168) > 1 || *(v237 + 152))
                      {
                        bzero(&buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          goto LABEL_439;
                        }

                        goto LABEL_390;
                      }

                      goto LABEL_392;
                    }

                    v20 = 1;
LABEL_393:
                    buf.__r_.__value_.__r.__words[0] = &v257;
                    sub_19B988734(&buf);
                    goto LABEL_394;
                  }

LABEL_367:
                  sub_19B8750F8(v104);
                  goto LABEL_368;
                }
              }

LABEL_440:
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              goto LABEL_352;
            }

LABEL_140:
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v85 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
              *(buf.__r_.__value_.__r.__words + 4) = v3;
              _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,resample failed", &buf, 0xCu);
            }

            v86 = sub_19B87DD40();
            if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
            {
              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                goto LABEL_439;
              }

              goto LABEL_390;
            }

LABEL_392:
            v20 = 0;
            goto LABEL_393;
          }
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v80 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
          *(buf.__r_.__value_.__r.__words + 4) = v3;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v43;
          _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,invalid Neffsum,%{public}.3lf", &buf, 0x16u);
        }

        v81 = sub_19B87DD40();
        if ((*(v81 + 160) & 0x80000000) != 0 && (*(v81 + 164) & 0x80000000) != 0 && (*(v81 + 168) & 0x80000000) != 0 && !*(v81 + 152))
        {
LABEL_129:
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v82 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
            *(buf.__r_.__value_.__r.__words + 4) = v3;
            _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to compute likelihoods and csw vector", &buf, 0xCu);
          }

          v83 = sub_19B87DD40();
          if ((*(v83 + 160) & 0x80000000) == 0 || (*(v83 + 164) & 0x80000000) == 0 || (*(v83 + 168) & 0x80000000) == 0 || *(v83 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *__p = 134349056;
            *&__p[4] = v3;
            v84 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::resample(const CFAbsoluteTime, const int, CLParticleMapMatcherCommon::ParticleVector &)", "CoreLocation: %s\n", v84);
            if (v84 != &buf)
            {
              free(v84);
            }
          }

          goto LABEL_140;
        }

        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *__p = 134349312;
        *&__p[4] = v3;
        *&__p[12] = 2050;
        *&__p[14] = v43;
        v79 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::computeLikelihoodsAndCSWVector(const CFAbsoluteTime)", "CoreLocation: %s\n", v79);
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v77 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
          *(buf.__r_.__value_.__r.__words + 4) = v3;
          _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to computeLikelihoods", &buf, 0xCu);
        }

        v78 = sub_19B87DD40();
        if ((*(v78 + 160) & 0x80000000) != 0 && (*(v78 + 164) & 0x80000000) != 0 && (*(v78 + 168) & 0x80000000) != 0 && !*(v78 + 152))
        {
          goto LABEL_129;
        }

        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *__p = 134349056;
        *&__p[4] = v3;
        v79 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMParticleVector::computeLikelihoodsAndCSWVector(const CFAbsoluteTime)", "CoreLocation: %s\n", v79);
      }

      if (v79 != &buf)
      {
        free(v79);
      }

      goto LABEL_129;
    }

    if (*(v5 + 604))
    {
      goto LABEL_4;
    }

    if (*(v5 + 560) <= 0.0)
    {
      v15 = 96;
      v16 = 10;
    }

    else
    {
      v24 = *(v5 + 472);
      v15 = 96;
      v16 = 10;
      if (v24 >= 0.0 && v24 < 0.001)
      {
        if (*(a3 + 424) > 0.0 && (v25 = *(a3 + 336), v25 >= 0.0) && v25 < 0.001 || *(a3 + 468) == 1)
        {
LABEL_4:
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v6 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v7 = *(v5 + 384);
            v8 = *(v5 + 472);
            v9 = *(v5 + 604);
            LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
            *(buf.__r_.__value_.__r.__words + 4) = v7;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 1026;
            v293 = v9;
            _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reducing particles to half,speed,%{public}.1lf,static,%{public}d", &buf, 0x1Cu);
          }

          v10 = sub_19B87DD40();
          if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v11 = *(v5 + 384);
            v12 = *(v5 + 472);
            v13 = *(v5 + 604);
            *__p = 134349568;
            *&__p[4] = v11;
            *&__p[12] = 2050;
            *&__p[14] = v12;
            v263 = 1026;
            v264 = v13;
            v14 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v14);
            if (v14 != &buf)
            {
              free(v14);
            }
          }

          v15 = 48;
          v16 = 5;
        }
      }
    }

    if (*(a3 + 504) == 1 && *(a3 + 232) == 1 && *(a3 + 120) && *(a3 + 761) == *(v5 + 897))
    {
      do
      {
        sub_19B973C04(&v257, a3 + 120);
        --v16;
      }

      while (v16);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(v5 + 384);
        v28 = *(a3 + 176);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
        *(buf.__r_.__value_.__r.__words + 4) = v27;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v28;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Added prior particle,score,%{public}.8lf", &buf, 0x16u);
      }

      v29 = sub_19B87DD40();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v30 = *(v5 + 384);
        v31 = *(a3 + 176);
        *__p = 134349312;
        *&__p[4] = v30;
        *&__p[12] = 2050;
        *&__p[14] = v31;
        v32 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v32);
        if (v32 != &buf)
        {
          free(v32);
        }
      }
    }

    goto LABEL_58;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v17 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, geometry is null", &buf, 0xCu);
  }

  v18 = sub_19B87DD40();
  if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *__p = 134349056;
    *&__p[4] = v3;
    v19 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::prepareCandidates(CLMapGeometryPtr, const MMSnapData &)", "CoreLocation: %s\n", v19);
    if (v19 != &buf)
    {
      free(v19);
    }
  }

  v20 = 0;
LABEL_394:
  v239 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_19BA12A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_19B941414(&a63);
  if (a32)
  {
    sub_19B8750F8(a32);
  }

  a61 = &a40;
  sub_19B988734(&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA12B84(uint64_t a1, uint64_t a2)
{
  v269 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 384);
  if (*(a1 + 48) == *(a1 + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,particle count,0", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_446;
  }

  if (!*(a1 + 128))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,candidate count,0", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_446;
  }

  v5 = sub_19BA0E204((a1 + 104));
  if (!v5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,bestCandidate is nullptr", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_446;
  }

  v6 = v5;
  if (v5[31] <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,particles in candidate,0", buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) != 0 && (*(v17 + 164) & 0x80000000) != 0 && (*(v17 + 168) & 0x80000000) != 0 && !*(v17 + 152))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_446;
  }

  v7 = (v5 + 2);
  if (!*(v5 + 1))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v18 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,best particle road in best candidate is nullptr", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
LABEL_62:
      *v248 = 134349056;
      *&v248[4] = v2;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }

LABEL_64:
      v21 = 0;
      goto LABEL_65;
    }

LABEL_446:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    goto LABEL_62;
  }

  if (*(a1 + 864))
  {
    v8 = *(a1 + 872);
    *(a1 + 864) = 0u;
    if (v8)
    {
      sub_19B8750F8(v8);
    }

    *(a1 + 880) = 0;
  }

  v228 = 0;
  v227 = 0u;
  memset(v226, 0, sizeof(v226));
  v229 = 0xBFF0000000000000;
  if (v226 != (v6 + 1064))
  {
    sub_19BA2EB5C(v226, *(v6 + 1064), *(v6 + 1072), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 1072) - *(v6 + 1064)) >> 4));
  }

  if (*(v6 + 153) == 1)
  {
    if (*(a2 + 120))
    {
      v9 = *(a2 + 504) == 1 && (sub_19B97106C(a2 + 120, buf), *buf == *(v6 + 128)) && buf[16] == *(v6 + 144) && *&buf[8] == *(v6 + 136);
      v24 = (v6 + 128);
      if (!sub_19BA2F92C(*(a1 + 120), (v6 + 128)))
      {
        goto LABEL_113;
      }

      if (v9)
      {
        v25 = 1;
LABEL_75:
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v26 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          *&buf[4] = v2;
          *&buf[12] = 1026;
          *&buf[14] = v25;
          _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,extractSolution,using outgoing particles,previous,%{public}d", buf, 0x12u);
        }

        v27 = sub_19B87DD40();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v248 = 134349312;
          *&v248[4] = v2;
          *&v248[12] = 1026;
          *&v248[14] = v25;
          v28 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v28);
          if (v28 != buf)
          {
            free(v28);
          }
        }

        *(a1 + 896) = 1;
        *buf = v24;
        v29 = sub_19BA2F99C(a1 + 112, v24);
        v30 = v29[140];
        v31 = v29[141];
        v32 = v31 - v30;
        if (v31 - v30 >= 1)
        {
          v33 = *(&v226[0] + 1);
          if (*&v226[1] - *(&v226[0] + 1) >= v32)
          {
            if (v30 != v31)
            {
              v38 = 0;
              do
              {
                sub_19BA2E904(&v33[v38 / 8], v30 + v38);
                v38 += 112;
              }

              while (v30 + v38 != v31);
              v33 = (v33 + v38);
            }

            *(&v226[0] + 1) = v33;
          }

          else
          {
            v34 = 0x6DB6DB6DB6DB6DB7 * ((*(&v226[0] + 1) - *&v226[0]) >> 4);
            v35 = v34 + 0x6DB6DB6DB6DB6DB7 * (v32 >> 4);
            if (v35 > 0x249249249249249)
            {
              sub_19B8B8A40();
            }

            v36 = 0xDB6DB6DB6DB6DB6ELL * ((*&v226[1] - *&v226[0]) >> 4);
            if (v36 <= v35)
            {
              v36 = v34 + 0x6DB6DB6DB6DB6DB7 * (v32 >> 4);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((*&v226[1] - *&v226[0]) >> 4)) >= 0x124924924924924)
            {
              v37 = 0x249249249249249;
            }

            else
            {
              v37 = v36;
            }

            *&buf[32] = v226;
            if (v37)
            {
              sub_19B988AB4(v226, v37);
            }

            v39 = 16 * ((*(&v226[0] + 1) - *&v226[0]) >> 4);
            *buf = 0;
            *&buf[8] = v39;
            *&buf[16] = v39;
            v40 = v39 + v32;
            do
            {
              sub_19BA2E904(v39, v30);
              v39 += 112;
              v30 += 112;
              v32 -= 112;
            }

            while (v32);
            *&buf[16] = v40;
            sub_19B988B10(v226, v33, *(&v226[0] + 1), v40);
            *&buf[16] += *(&v226[0] + 1) - v33;
            *(&v226[0] + 1) = v33;
            v41 = *&buf[8] + *&v226[0] - v33;
            sub_19B988B10(v226, *&v226[0], v33, v41);
            v42 = *&v226[0];
            v43 = *&v226[1];
            *&v226[0] = v41;
            *(v226 + 8) = *&buf[16];
            *&buf[16] = v42;
            *&buf[24] = v43;
            *&buf[8] = v42;
            *buf = v42;
            sub_19B988C08(buf);
          }
        }

        goto LABEL_113;
      }
    }

    else
    {
      v24 = (v6 + 128);
      if (!sub_19BA2F92C(*(a1 + 120), (v6 + 128)))
      {
        goto LABEL_113;
      }
    }

    if (!sub_19BA0D49C(v6, (a1 + 792)))
    {
      goto LABEL_113;
    }

    v25 = 0;
    goto LABEL_75;
  }

LABEL_113:
  if (*(&v226[0] + 1) == *&v226[0])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v48 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,solutionParticleVector has zero particles", buf, 0xCu);
    }

    v49 = sub_19B87DD40();
    if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v248 = 134349056;
      *&v248[4] = v2;
      v50 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    v21 = 0;
    goto LABEL_359;
  }

  v44 = *(v6 + 248);
  v251 = *(v6 + 232);
  v252 = v44;
  v45 = *(v6 + 184);
  *v248 = *(v6 + 168);
  *&v248[16] = v45;
  v46 = *(v6 + 216);
  v249 = *(v6 + 200);
  v250 = v46;
  v47 = *(v6 + 280);
  v253 = *(v6 + 264);
  v254 = v47;
  if (*(v6 + 319) < 0)
  {
    sub_19B874C9C(&v255, *(v6 + 296), *(v6 + 304));
  }

  else
  {
    v255 = *(v6 + 296);
    v256 = *(v6 + 312);
  }

  memcpy(v257, (v6 + 320), sizeof(v257));
  v51 = *(v6 + 360);
  v52 = v51 < 19.0 && v51 > 0.0;
  if (v52)
  {
    v257[5] = 0x4033000000000000;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v53 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v54 = *(v6 + 360);
      *buf = 134349568;
      *&buf[4] = v2;
      *&buf[12] = 2050;
      *&buf[14] = v54;
      *&buf[22] = 2050;
      *&buf[24] = 0x4033000000000000;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,deweightCourse,courseUnc,%{public}.1lf,deweightUnc,%{public}.1lf", buf, 0x20u);
    }

    v55 = sub_19B87DD40();
    if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v56 = *(v6 + 360);
      LODWORD(v233[0]) = 134349568;
      *(v233 + 4) = v2;
      WORD2(v233[1]) = 2050;
      *(&v233[1] + 6) = v56;
      HIWORD(v233[2]) = 2050;
      *v234 = 0x4033000000000000;
      v57 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }
  }

  if (sub_19B9F5E90(*(v6 + 8), 0, *(v6 + 56), 7.5))
  {
    goto LABEL_146;
  }

  if ((*(*v7 + 20) & 0xFFFFFFFE) != 8)
  {
    goto LABEL_185;
  }

  if (*(a2 + 120) && ((sub_19B97106C(v6 + 8, buf), sub_19B97106C(a2 + 120, v233), *buf == v233[0]) && buf[16] == LOBYTE(v233[2]) && *&buf[8] == v233[1] || (*(a1 + 896) & 1) != 0 && (sub_19B97106C(a2 + 120, &v218), *(v6 + 128) == v218) && *(v6 + 144) == v220 && *(v6 + 136) == v219))
  {
    v72 = 1;
    v73 = sub_19B9F5E90(*(v6 + 8), 1, *(v6 + 56), 3.75);
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v74 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349568;
    *&buf[4] = v2;
    *&buf[12] = 1026;
    *&buf[14] = v73;
    *&buf[18] = 1026;
    *&buf[20] = v72;
    _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,invalidateCourse,particleIsOnSegmentsThatHasSmallCurves,%{public}d,particleInOnSameRoadAsPriorSnap,%{public}d", buf, 0x18u);
  }

  v75 = sub_19B87DD40();
  v76 = v72 & v73;
  if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v233[0]) = 134349568;
    *(v233 + 4) = v2;
    WORD2(v233[1]) = 1026;
    *(&v233[1] + 6) = v73;
    WORD1(v233[2]) = 1026;
    HIDWORD(v233[2]) = v72;
    v77 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v77);
    v7 = (v6 + 8);
    if (v77 != buf)
    {
      free(v77);
    }

    if (v76)
    {
      goto LABEL_146;
    }

LABEL_185:
    v71 = 0;
    if (!v52)
    {
      goto LABEL_188;
    }

    goto LABEL_186;
  }

  v7 = (v6 + 8);
  if (!v76)
  {
    goto LABEL_185;
  }

LABEL_146:
  *(&v253 + 1) = 0xBFF0000000000000;
  v257[5] = 0xBFF0000000000000;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v58 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v59 = *(v6 + 1088);
    v60 = *v59;
    v61 = *(v6 + 56);
    sub_19B9F5AA8(v59);
    v62 = v59[5];
    v63 = sub_19B9F5D9C(*(v6 + 1088));
    *buf = 134349825;
    *&buf[4] = v2;
    *&buf[12] = 2049;
    *&buf[14] = v60;
    *&buf[22] = 2050;
    *&buf[24] = v61 * v62;
    *&buf[32] = 1026;
    *&buf[34] = v63;
    _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Particle is on a curved section of road,%{private}lld,projection,%{public}.2lf,deweightCourse,%{public}d", buf, 0x26u);
  }

  v64 = sub_19B87DD40();
  if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v65 = *(v6 + 1088);
    v66 = *v65;
    v67 = *(v6 + 56);
    sub_19B9F5AA8(v65);
    v68 = *(v65 + 40);
    v69 = sub_19B9F5D9C(*(v6 + 1088));
    LODWORD(v233[0]) = 134349825;
    *(v233 + 4) = v2;
    WORD2(v233[1]) = 2049;
    *(&v233[1] + 6) = v66;
    HIWORD(v233[2]) = 2050;
    *v234 = v67 * v68;
    *&v234[8] = 1026;
    *&v234[10] = v69;
    v70 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v70);
    if (v70 != buf)
    {
      free(v70);
    }
  }

  v71 = 1;
LABEL_186:
  memset(buf, 0, 24);
  *&buf[24] = xmmword_19BA89720;
  buf[40] = 0;
  *&buf[48] = 0u;
  v259 = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v260 = _Q0;
  v261 = _Q0;
  v262 = _Q0;
  v263 = _Q0;
  v264 = 0xBFF0000000000000;
  v265 = 0;
  v266 = _Q0;
  v267 = _Q0;
  v268 = _Q0;
  sub_19BA16424(buf, v248, 0);
  v83 = *(&v226[0] + 1);
  for (i = *&v226[0]; i != v83; i += 14)
  {
    memset(v233, 0, sizeof(v233));
    *v234 = 0x3FF0000000000000;
    memset(&v234[8], 0, 32);
    LODWORD(v235) = 0;
    sub_19BA0F96C(a1, buf, i, v233);
    LODWORD(v235) = 1;
    *v234 = 0x3FF0000000000000;
    sub_19BA1647C(i, v233);
    sub_19B988454(i);
  }

LABEL_188:
  sub_19BA0F554(v226, v2);
  sub_19BA0F110(&v218, *&v226[0], *(&v226[0] + 1));
  if ((v71 & 1) == 0)
  {
    if (v218)
    {
      if (*(a2 + 504) == 1)
      {
        if (*(a2 + 120))
        {
          sub_19B97106C(a2 + 120, buf);
          sub_19B97106C(&v218, v233);
          if (*buf == v233[0] && buf[16] == LOBYTE(v233[2]) && *&buf[8] == v233[1])
          {
            v85 = v222;
            v86 = *(a2 + 168);
            v87 = v218;
            sub_19B9F5AA8(v218);
            v88 = v87[5];
            v89 = *(a1 + 856);
            sub_19BA164CC(v245, v226);
            v90 = (v85 - v86) * v88;
            v91 = v89 * 5.0;
            if (v90 > v91)
            {
              memset(v233, 0, sizeof(v233));
              *v234 = xmmword_19BA89720;
              v234[16] = 0;
              *&v234[24] = 0u;
              v235 = 0u;
              __asm { FMOV            V0.2D, #-1.0 }

              v236 = _Q0;
              v237 = _Q0;
              v238 = _Q0;
              v239 = _Q0;
              v240 = 0xBFF0000000000000;
              v241 = 0;
              v242 = _Q0;
              v243 = _Q0;
              v244 = _Q0;
              sub_19BA16424(v233, v248, 0);
              *(&v237 + 1) = 0xBFF0000000000000;
              *(&v238 + 1) = 0xBFF0000000000000;
              v93 = *v245;
              v94 = *&v245[8];
              if (*v245 != *&v245[8])
              {
                do
                {
                  memset(buf, 0, 24);
                  *&buf[24] = 0x3FF0000000000000;
                  memset(&buf[32], 0, 32);
                  LODWORD(v259) = 0;
                  sub_19BA0F96C(a1, v233, v93, buf);
                  LODWORD(v259) = 1;
                  *&buf[24] = 0x3FF0000000000000;
                  sub_19BA1647C(v93, buf);
                  sub_19B988454(v93);
                  v93 += 14;
                }

                while (v93 != v94);
                v93 = *v245;
                v94 = *&v245[8];
              }

              sub_19BA0F110(&v211, v93, v94);
              v95 = v211;
              if (v211)
              {
                v96 = *&v216;
                v97 = *(a2 + 168);
                sub_19B9F5AA8(v211);
                v98 = (v96 - v97) * *(v95 + 5);
                if (v98 < v91)
                {
                  sub_19BA165AC(v226, v245);
                  sub_19B9710EC(&v218, &v211);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v99 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134349568;
                    *&buf[4] = v2;
                    *&buf[12] = 2050;
                    *&buf[14] = v90;
                    *&buf[22] = 2050;
                    *&buf[24] = v98;
                    _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,invalidated course and recomputed solution,changeInDistance,%{public}.2lf,newChangeInDistance,%{public}.2lf", buf, 0x20u);
                  }

                  v100 = sub_19B87DD40();
                  if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    *v230 = 134349568;
                    *&v230[4] = v2;
                    *&v230[12] = 2050;
                    *&v230[14] = v90;
                    v231 = 2050;
                    v232 = v98;
                    v101 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v101);
                    if (v101 != buf)
                    {
                      free(v101);
                    }
                  }
                }
              }

              else
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v102 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134349056;
                  *&buf[4] = v2;
                  _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,newParticle road is nullptr,1", buf, 0xCu);
                }

                v103 = sub_19B87DD40();
                if ((*(v103 + 160) & 0x80000000) == 0 || (*(v103 + 164) & 0x80000000) == 0 || (*(v103 + 168) & 0x80000000) == 0 || *(v103 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  *v230 = 134349056;
                  *&v230[4] = v2;
                  v104 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v104);
                  if (v104 != buf)
                  {
                    free(v104);
                  }
                }
              }

              sub_19B966FCC(&v211);
            }

            sub_19BA16620(v245);
          }
        }
      }
    }
  }

  if (*(a2 + 504) != 1 || *(v6 + 152) != 1 || *(v6 + 153) != 1 || !v218 || !*v7 || !*(a2 + 120) || (sub_19B97106C(a2 + 120, buf), sub_19B97106C(&v218, v233), *buf == v233[0]) && buf[16] == LOBYTE(v233[2]) && *&buf[8] == v233[1] || (sub_19B97106C(&v218, &v211), v211 != *(v6 + 128)) || v213 != *(v6 + 144) || v212 != *(v6 + 136) || (sub_19B97106C(v7, v245), sub_19B97106C(a2 + 120, v230), *v245 != *v230) || v245[16] != v230[16])
  {
    v210 = 0;
    goto LABEL_275;
  }

  if (*&v245[8] != *&v230[8] || sub_19BA16668(&v218, a1, a2 + 120) <= *(a1 + 856) * 5.0)
  {
    v210 = 0;
    goto LABEL_275;
  }

  sub_19BA164CC(&v211, v226);
  sub_19B97106C(&v218, buf);
  v209 = sub_19BA0F244(&v211, buf, v2);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v105 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    *&buf[4] = v2;
    *&buf[12] = 1026;
    *&buf[14] = v209;
    _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,eliminated outgoing roadKey for local solution,%{public}d", buf, 0x12u);
  }

  v106 = sub_19B87DD40();
  if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v233[0]) = 134349312;
    *(v233 + 4) = v2;
    WORD2(v233[1]) = 1026;
    *(&v233[1] + 6) = v209;
    v107 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v107);
    if (v107 != buf)
    {
      free(v107);
    }
  }

  if (v212 == v211)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v193 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v2;
      *&buf[12] = 1026;
      *&buf[14] = v209;
      _os_log_impl(&dword_19B873000, v193, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Number of particles 0 after eliminating particles on combined road,%{public}d", buf, 0x12u);
    }

    v194 = sub_19B87DD40();
    if (*(v194 + 160) > 1 || *(v194 + 164) > 1 || *(v194 + 168) > 1 || *(v194 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v233[0]) = 134349312;
      *(v233 + 4) = v2;
      WORD2(v233[1]) = 1026;
      *(&v233[1] + 6) = v209;
      v195 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v195);
      if (v195 != buf)
      {
        free(v195);
      }
    }

    v210 = 0;
    goto LABEL_491;
  }

  sub_19BA0F110(v233, v211, v212);
  if (!v233[0])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v196 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v196, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,newParticle road is nullptr,2", buf, 0xCu);
    }

    v197 = sub_19B87DD40();
    if ((*(v197 + 160) & 0x80000000) != 0 && (*(v197 + 164) & 0x80000000) != 0 && (*(v197 + 168) & 0x80000000) != 0 && !*(v197 + 152))
    {
      goto LABEL_489;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v245 = 134349056;
    *&v245[4] = v2;
    v198 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v198);
    goto LABEL_487;
  }

  v108 = sub_19BA16668(v233, a1, a2 + 120);
  if (*(a1 + 472) < 0.75)
  {
    goto LABEL_262;
  }

  v109 = *(a1 + 856);
  if (v108 > v109 * 0.8)
  {
    goto LABEL_262;
  }

  if (v108 < v109 && (*(a1 + 897) & 1) == 0)
  {
    v201 = *(a1 + 480);
    v202 = *v234;
    v203 = *(&v220 + 2);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v204 = vabdd_f64(v201, v202);
    v205 = vabdd_f64(v201, v203);
    v206 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349568;
      *&buf[4] = v2;
      *&buf[12] = 2050;
      *&buf[14] = v204;
      *&buf[22] = 2050;
      *&buf[24] = v205;
      _os_log_impl(&dword_19B873000, v206, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,use new particle, course check, crumbCourseDiffWithNewParticle,%{public}.1lf,crumbCourseDiffWithPreviousParticle,%{public}.1lf", buf, 0x20u);
    }

    v207 = sub_19B87DD40();
    if (*(v207 + 160) > 1 || *(v207 + 164) > 1 || *(v207 + 168) > 1 || *(v207 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v245 = 134349568;
      *&v245[4] = v2;
      *&v245[12] = 2050;
      *&v245[14] = v204;
      v246 = 2050;
      v247 = v205;
      v208 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v208);
      if (v208 != buf)
      {
        free(v208);
      }
    }

    if (v204 < 35.0 && v205 > 60.0)
    {
LABEL_262:
      v110 = vabdd_f64(*(a1 + 480), *(&v220 + 2));
      v210 = v110 < 30.0;
      sub_19B9710EC(&v218, v233);
      sub_19BA165AC(v226, &v211);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v111 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v2;
        *&buf[12] = 1026;
        *&buf[14] = v110 < 30.0;
        _os_log_impl(&dword_19B873000, v111, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,new particle without the outgoing road accepted,courseIsUnreliable,%{public}d", buf, 0x12u);
      }

      v112 = sub_19B87DD40();
      if (*(v112 + 160) > 1 || *(v112 + 164) > 1 || *(v112 + 168) > 1 || *(v112 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v245 = 134349312;
        *&v245[4] = v2;
        *&v245[12] = 1026;
        *&v245[14] = v110 < 30.0;
        v113 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v113);
        if (v113 != buf)
        {
          free(v113);
        }
      }

      goto LABEL_490;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v199 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    *&buf[4] = v2;
    *&buf[12] = 1026;
    *&buf[14] = v209;
    _os_log_impl(&dword_19B873000, v199, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not using local solution without outgoing road,%{public}d", buf, 0x12u);
  }

  v200 = sub_19B87DD40();
  if (*(v200 + 160) > 1 || *(v200 + 164) > 1 || *(v200 + 168) > 1 || *(v200 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v245 = 134349312;
    *&v245[4] = v2;
    *&v245[12] = 1026;
    *&v245[14] = v209;
    v198 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v198);
LABEL_487:
    if (v198 != buf)
    {
      free(v198);
    }
  }

LABEL_489:
  v210 = 0;
LABEL_490:
  sub_19B966FCC(v233);
LABEL_491:
  sub_19BA16620(&v211);
LABEL_275:
  v115 = v218;
  v114 = v219;
  if (v219)
  {
    atomic_fetch_add_explicit(&v219->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v116 = (a1 + 256);
  v117 = *(a1 + 264);
  *(a1 + 256) = v115;
  *(a1 + 264) = v114;
  if (v117)
  {
    sub_19B8750F8(v117);
  }

  v118 = v221;
  *(a1 + 272) = v220;
  *(a1 + 288) = v118;
  *(a1 + 304) = v222;
  v119 = (a1 + 312);
  *(a1 + 312) = v223[0];
  *(a1 + 321) = *(v223 + 9);
  if (v116 != &v218)
  {
    sub_19B967884((a1 + 344), __p, v225, 0x8E38E38E38E38E39 * ((v225 - __p) >> 3));
  }

  *(a1 + 882) = 1;
  v120 = *(v6 + 152) == 1 && *(v6 + 153) == 1 && *(v6 + 1044) > (-1227133513 * ((*(v6 + 1072) - *(v6 + 1064)) >> 4));
  *(a1 + 368) = v120;
  if (!*(a1 + 256))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v151 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v151, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,best particle road is nullptr", buf, 0xCu);
    }

    v152 = sub_19B87DD40();
    if ((*(v152 + 160) & 0x80000000) != 0 && (*(v152 + 164) & 0x80000000) != 0 && (*(v152 + 168) & 0x80000000) != 0 && !*(v152 + 152))
    {
      goto LABEL_352;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v233[0]) = 134349056;
    *(v233 + 4) = v2;
    v153 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v153);
    goto LABEL_350;
  }

  v121 = (a1 + 376);
  if (*(a1 + 896) == 1 && (sub_19B97106C(a1 + 256, buf), *(v6 + 128) == *buf) && *(v6 + 144) == buf[16] && *(v6 + 136) == *&buf[8])
  {
    v122 = *(v6 + 600);
    v123 = *(v6 + 616);
    v124 = *(v6 + 648);
    *(a1 + 408) = *(v6 + 632);
    *(a1 + 424) = v124;
    *v121 = v122;
    *(a1 + 392) = v123;
    v125 = *(v6 + 664);
    v126 = *(v6 + 680);
    v127 = *(v6 + 712);
    *(a1 + 472) = *(v6 + 696);
    *(a1 + 488) = v127;
    *(a1 + 440) = v125;
    *(a1 + 456) = v126;
    std::string::operator=((a1 + 504), (v6 + 728));
    v128 = (a1 + 864);
    memcpy((a1 + 528), (v6 + 752), 0x118uLL);
    if (*(v6 + 8))
    {
      sub_19B911784((a1 + 864), v7);
      *(a1 + 880) = *(v6 + 28);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v181 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v2;
      }

      v182 = sub_19B87DD40();
      if ((*(v182 + 160) & 0x80000000) == 0 || (*(v182 + 164) & 0x80000000) == 0 || (*(v182 + 168) & 0x80000000) == 0 || *(v182 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        LODWORD(v233[0]) = 134349056;
        *(v233 + 4) = v2;
        v183 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v183);
        if (v183 != buf)
        {
          free(v183);
        }
      }
    }

    if (*v128)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v184 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v185 = **v128;
        v186 = *(v6 + 128);
        v187 = *v119;
        *buf = 134349825;
        *&buf[4] = v2;
        *&buf[12] = 2049;
        *&buf[14] = v185;
        *&buf[22] = 2049;
        *&buf[24] = v186;
        *&buf[32] = 2050;
        *&buf[34] = v187;
        _os_log_impl(&dword_19B873000, v184, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld,score,%{public}.8lf", buf, 0x2Au);
      }

      v188 = sub_19B87DD40();
      if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v189 = **v128;
        v190 = *(v6 + 128);
        v191 = *v119;
        LODWORD(v233[0]) = 134349825;
        *(v233 + 4) = v2;
        WORD2(v233[1]) = 2049;
        *(&v233[1] + 6) = v189;
        HIWORD(v233[2]) = 2049;
        *v234 = v190;
        *&v234[8] = 2050;
        *&v234[10] = v191;
        v192 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v192);
        if (v192 != buf)
        {
          free(v192);
        }
      }
    }
  }

  else
  {
    v129 = *(v6 + 168);
    v130 = *(v6 + 184);
    v131 = *(v6 + 216);
    *(a1 + 408) = *(v6 + 200);
    *(a1 + 424) = v131;
    *v121 = v129;
    *(a1 + 392) = v130;
    v132 = *(v6 + 232);
    v133 = *(v6 + 248);
    v134 = *(v6 + 280);
    *(a1 + 472) = *(v6 + 264);
    *(a1 + 488) = v134;
    *(a1 + 440) = v132;
    *(a1 + 456) = v133;
    std::string::operator=((a1 + 504), (v6 + 296));
    memcpy((a1 + 528), (v6 + 320), 0x118uLL);
  }

  *(a1 + 881) = 0;
  v135 = 0uLL;
  memset(buf, 0, 53);
  v136 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v136)
  {
    sub_19B8750F8(v136);
    v135 = 0uLL;
  }

  v138 = (a1 + 224);
  v137 = *(a1 + 224);
  *(a1 + 152) = 0;
  *(a1 + 156) = 1;
  *(a1 + 157) = v135;
  *(a1 + 173) = v135;
  *(a1 + 188) = 0;
  *(a1 + 192) = *&buf[28];
  *(a1 + 201) = *&buf[37];
  if (v137)
  {
    *(a1 + 232) = v137;
    operator delete(v137);
    *v138 = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
  }

  *v138 = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0xBFF0000000000000;
  if (*(a1 + 368) != 1 || *(a1 + 568) <= 0.0 || *(a1 + 480) < 0.0)
  {
    v139 = 1;
    goto LABEL_301;
  }

  v158 = *(a1 + 384);
  v159 = *(a1 + 276);
  v160 = *(a1 + 304);
  v161 = *(a1 + 256);
  sub_19B9F5AA8(v161);
  if (v159)
  {
    v162 = 1.0 - v160;
  }

  else
  {
    v162 = v160;
  }

  v163 = *(v161 + 40);
  v164 = sub_19BA0C01C(a1, *(a1 + 432), *(a1 + 440), *(a2 + 296), *(a2 + 304), *(a1 + 448));
  v165 = *(a2 + 544);
  v166 = *(a1 + 480);
  v167 = -1.0;
  if (v165 >= 0.0)
  {
    v168 = fmod(v166 - v165, 360.0);
    if (v168 < 0.0)
    {
      v168 = v168 + 360.0;
    }

    if (v168 > 180.0)
    {
      v168 = v168 + -360.0;
    }

    v167 = fabs(v168);
  }

  v169 = v162 * v163;
  v170 = fmod(v166 - *(a1 + 280), 360.0);
  if (v170 < 0.0)
  {
    v170 = v170 + 360.0;
  }

  if (v170 > 180.0)
  {
    v170 = v170 + -360.0;
  }

  v171 = fabs(v170);
  v172 = *(a1 + 568);
  if (v172 > 0.0 && v172 < 45.0 && v171 > 30.0)
  {
    v173 = 0;
LABEL_382:
    v139 = 1;
    if (v169 >= 0.0 && v169 < 35.0 && !v173)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v175 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v158;
        *&buf[12] = 2050;
        *&buf[14] = v169;
        _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not snapping course,reason,distanceToIntersection,%{public}.1lf", buf, 0x16u);
      }

      v176 = sub_19B87DD40();
      if (*(v176 + 160) > 1 || *(v176 + 164) > 1 || *(v176 + 168) > 1 || *(v176 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        LODWORD(v233[0]) = 134349312;
        *(v233 + 4) = v158;
        WORD2(v233[1]) = 2050;
        *(&v233[1] + 6) = v169;
        v177 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::shallUseSnapCourse(const MMSnapData &)", "CoreLocation: %s\n", v177);
        if (v177 != buf)
        {
          free(v177);
        }
      }

      v139 = 0;
    }

    goto LABEL_398;
  }

  v174 = *(a2 + 432);
  v139 = 1;
  if (v174 > 0.0 && v174 < 45.0)
  {
    v173 = v167 <= 30.0;
    goto LABEL_382;
  }

LABEL_398:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v178 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134350080;
    *&buf[4] = v158;
    *&buf[12] = 2050;
    *&buf[14] = v169;
    *&buf[22] = 2050;
    *&buf[24] = v164;
    *&buf[32] = 2050;
    *&buf[34] = v171;
    *&buf[42] = 2050;
    *&buf[44] = v167;
    _os_log_impl(&dword_19B873000, v178, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,distToNextMulti,%{public}.1lf,distFromPriorCrumb,%{public}.1lf,fabsCourseDiffWithSnap,%{public}.1lf,fabsCourseDiffWithPriorFullSnap,%{public}.1lf", buf, 0x34u);
  }

  v179 = sub_19B87DD40();
  if (*(v179 + 160) > 1 || *(v179 + 164) > 1 || *(v179 + 168) > 1 || *(v179 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v233[0]) = 134350080;
    *(v233 + 4) = v158;
    WORD2(v233[1]) = 2050;
    *(&v233[1] + 6) = v169;
    HIWORD(v233[2]) = 2050;
    *v234 = v164;
    *&v234[8] = 2050;
    *&v234[10] = v171;
    *&v234[18] = 2050;
    *&v234[20] = v167;
    v180 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::shallUseSnapCourse(const MMSnapData &)", "CoreLocation: %s\n", v180);
    if (v180 != buf)
    {
      free(v180);
    }
  }

LABEL_301:
  *(a1 + 848) = v139 ^ 1;
  *(a1 + 888) = *(a1 + 96);
  memset(v233, 0, sizeof(v233));
  *v234 = xmmword_19BA89720;
  v234[16] = 0;
  *&v234[24] = 0u;
  v235 = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v236 = _Q0;
  v237 = _Q0;
  v238 = _Q0;
  v239 = _Q0;
  v240 = 0xBFF0000000000000;
  v241 = 0;
  v242 = _Q0;
  v243 = _Q0;
  v244 = _Q0;
  sub_19BA16424(v233, a1 + 376, *(a1 + 904));
  if (v210)
  {
    *(&v237 + 1) = 0xBFF0000000000000;
    *(&v238 + 1) = 0xBFF0000000000000;
  }

  v211 = 0;
  v212 = 0;
  v213 = 0;
  v214 = 0x3FF0000000000000;
  v215 = 0u;
  v216 = 0u;
  v217 = 0;
  if (!sub_19BA0F96C(a1, v233, (a1 + 256), &v211))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v154 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(&dword_19B873000, v154, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,unable to calculate score", buf, 0xCu);
    }

    v155 = sub_19B87DD40();
    if ((*(v155 + 160) & 0x80000000) != 0 && (*(v155 + 164) & 0x80000000) != 0 && (*(v155 + 168) & 0x80000000) != 0 && !*(v155 + 152))
    {
      goto LABEL_352;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_349;
    }

    goto LABEL_473;
  }

  v217 = 1;
  v214 = 0x3FF0000000000000;
  sub_19BA1647C(a1 + 256, &v211);
  sub_19B988454((a1 + 256));
  if (sub_19BA0CB14(a1 + 136))
  {
    *(a1 + 556) = 0;
    v141 = sub_19BA0EC08((a1 + 104));
    if (v141 > 0.0)
    {
      v142 = *(a1 + 312) / v141;
      if (v142 > 1000000.0)
      {
        v142 = 1000000.0;
      }

      v143 = v142;
      *(a1 + 556) = v143;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v144 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v145 = **v116;
      v146 = *v119;
      *buf = 134349569;
      *&buf[4] = v2;
      *&buf[12] = 2049;
      *&buf[14] = v145;
      *&buf[22] = 2050;
      *&buf[24] = v146;
      _os_log_impl(&dword_19B873000, v144, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,bestParticleRoadID,%{private}lld,score,%{public}.8lf", buf, 0x20u);
    }

    v147 = sub_19B87DD40();
    if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v148 = **v116;
      v149 = *v119;
      *v245 = 134349569;
      *&v245[4] = v2;
      *&v245[12] = 2049;
      *&v245[14] = v148;
      v246 = 2050;
      v247 = v149;
      v150 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v150);
      if (v150 != buf)
      {
        free(v150);
      }
    }

    v21 = 1;
    goto LABEL_353;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v156 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *&buf[4] = v2;
    _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,unable to fill crumb", buf, 0xCu);
  }

  v157 = sub_19B87DD40();
  if ((*(v157 + 160) & 0x80000000) == 0 || (*(v157 + 164) & 0x80000000) == 0 || (*(v157 + 168) & 0x80000000) == 0 || *(v157 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
LABEL_349:
      *v245 = 134349056;
      *&v245[4] = v2;
      v153 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::MMFilterData::extractSolution(const MMSnapData &)", "CoreLocation: %s\n", v153);
LABEL_350:
      if (v153 != buf)
      {
        free(v153);
      }

      goto LABEL_352;
    }

LABEL_473:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    goto LABEL_349;
  }

LABEL_352:
  v21 = 0;
LABEL_353:
  if (__p)
  {
    v225 = __p;
    operator delete(__p);
  }

  if (v219)
  {
    sub_19B8750F8(v219);
  }

  if (SHIBYTE(v256) < 0)
  {
    operator delete(v255);
  }

LABEL_359:
  if (*(&v226[1] + 1))
  {
    *&v227 = *(&v226[1] + 1);
    operator delete(*(&v226[1] + 1));
  }

  *buf = v226;
  sub_19B988734(buf);
LABEL_65:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_19BA16280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_19B966FCC(&a55);
  sub_19BA16620(&a15);
  sub_19B966FCC(&a29);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_19BA16620(&a43);
  _Unwind_Resume(a1);
}

double sub_19BA16424(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 80) = *(a2 + 56);
  v3 = *(a2 + 80);
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 72);
  *(a1 + 104) = v4;
  v7 = *(a2 + 184);
  v6 = *(a2 + 192);
  *(a1 + 112) = v3;
  *(a1 + 120) = v6;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = v5;
  *(a1 + 144) = v7;
  *(a1 + 152) = *(a2 + 228);
  *(a1 + 160) = *(a2 + 200);
  *(a1 + 176) = *(a2 + 216);
  *(a1 + 184) = vextq_s8(*(a2 + 16), *(a2 + 16), 8uLL);
  *(a1 + 200) = *(a2 + 8);
  sub_19B9C138C(a1, a2, a3);
  return result;
}

__n128 sub_19BA1647C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v2 = a1 + 88;
  if (v3 == v4)
  {
LABEL_4:
    sub_19B973D80(v2, a2);
  }

  else
  {
    while (*(v3 + 64) != *(a2 + 64))
    {
      v3 += 72;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    *v3 = *a2;
    result = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = result;
  }

  return result;
}

uint64_t sub_19BA164CC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_19BA2EF54(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4 != v5)
  {
    sub_19B988D6C(a1 + 24, (v4 - v5) >> 2);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_19BA16584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  sub_19B988734(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA165AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_19BA2EB5C(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4));
    sub_19BA2EFD8((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_19BA16620(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_19B988734(&v4);
  return a1;
}

long double sub_19BA16668(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  if (*a3 && *a1)
  {
    return sub_19BA0C01C(a2, *(a1 + 32), *(a1 + 40), *(a3 + 32), *(a3 + 40), 0.0);
  }

  else
  {
    return -1.0;
  }
}

uint64_t sub_19BA16694(uint64_t a1, void *a2)
{
  *a1 = &unk_1F0E6E168;
  *(a1 + 8) = 257;
  *(a1 + 12) = 0;
  *(a1 + 16) = xmmword_19BA8D470;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = xmmword_19BA89490;
  *(a1 + 200) = 0x3FF0000000000000;
  *(a1 + 208) = *a2;
  v3 = a2[1];
  *(a1 + 216) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 224) = _Q1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 376) = 0xBFF0000000000000;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 404) = 1;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0xBFF0000000000000;
  *(a1 + 528) = 0xBFF0000000000000;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0xBFF0000000000000;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 851) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 718) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 928) = xmmword_19BA8C810;
  *(a1 + 944) = 0x415854A640000000;
  *(a1 + 968) = 0x3FF0000000000000;
  *(a1 + 976) = 0;
  *(a1 + 1007) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1023) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1040) = a1 + 1040;
  *(a1 + 1048) = a1 + 1040;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1108) = 1;
  *(a1 + 1112) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1208) = 0;
  *(a1 + 1212) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1257) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = _Q1;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0xBFF0000000000000;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1627) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1494) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1704) = 0xBFF0000000000000;
  *(a1 + 1696) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = xmmword_19BA89490;
  *(a1 + 1744) = 0x3FF0000000000000;
  *(a1 + 1752) = -1;
  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1784) = a1 + 1784;
  *(a1 + 1792) = a1 + 1784;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = a1 + 1808;
  *(a1 + 1816) = a1 + 1808;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0x600000006;
  *(a1 + 1856) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1864) = 0xBFF0000000000000;
  *(a1 + 1872) = 0xBFF0000000000000;
  *(a1 + 1944) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1952) = _Q1;
  *(a1 + 2072) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2112) = 0x3FF0000000000000;
  *(a1 + 2120) = 180;
  *(a1 + 2144) = 0;
  *(a1 + 2128) = 0u;
  *(a1 + 2200) = 0;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2152) = 0u;
  sub_19BA16AD8(a1);
  return a1;
}

void sub_19BA16A00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = *(v2 + 2176);
  if (v8)
  {
    *(v2 + 2184) = v8;
    operator delete(v8);
  }

  v9 = *(v2 + 2088);
  *(v2 + 2088) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  sub_19BA2F160((v2 + 2080));
  sub_19B98868C(va);
  sub_19B98868C(va);
  sub_19B9886E0(va);
  v10 = *v6;
  if (*v6)
  {
    *(v2 + 1848) = v10;
    operator delete(v10);
  }

  sub_19B916DC0(v5);
  sub_19B916DC0(v4);
  if (*(v2 + 1431) < 0)
  {
    operator delete(*(v2 + 1408));
  }

  sub_19B96FBE4((v2 + 1064));
  sub_19B9679F8(v3);
  sub_19BA2F1BC(v2 + 264);
  sub_19B988734(va);
  v11 = *(v2 + 216);
  if (v11)
  {
    sub_19B8750F8(v11);
  }

  _Unwind_Resume(a1);
}

double sub_19BA16AD8(uint64_t a1)
{
  v53[2] = *MEMORY[0x1E69E9840];
  *(a1 + 224) = 0xBFF0000000000000;
  sub_19BA2ECC0((a1 + 240));
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  memset(v13, 0, 24);
  *v12 = v13;
  sub_19B988734(v12);
  bzero(v13, 0x300uLL);
  v13[20] = 1;
  v15 = 0;
  v16 = 0u;
  memset(&v13[32], 0, 48);
  v14 = 0;
  v17 = 0xBFF0000000000000;
  v18 = 0u;
  v19 = 0;
  v20 = 1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v28 = 0u;
  v29 = _Q0;
  v30 = 0u;
  v31 = 0xBFF0000000000000;
  memset(&v41[32], 0, 32);
  v42 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, 27);
  memset(&v46[32], 0, 48);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, 30);
  v47 = 0xBFF0000000000000;
  v48 = xmmword_19BA89490;
  v49 = 0u;
  v50 = 0x3FF0000000000000;
  *(v52 + 7) = 0;
  v52[0] = 0;
  v51 = 0u;
  *(v53 + 7) = 0;
  v53[0] = 0;
  sub_19BA20B88(a1 + 264, v13);
  if (v52[0])
  {
    sub_19B8750F8(v52[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(*(&v36 + 1));
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (*(&v18 + 1))
  {
    sub_19B8750F8(*(&v18 + 1));
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (*&v13[8])
  {
    sub_19B8750F8(*&v13[8]);
  }

  *(a1 + 1032) = 0;
  sub_19B9679F8((a1 + 1040));
  *(a1 + 1208) = 0;
  *&v12[7] = 0u;
  memset(&v13[4], 0, 49);
  *(a1 + 1064) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1065) = *v12;
  v7 = *(a1 + 1096);
  *(a1 + 1088) = 0u;
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  *(a1 + 1104) = 0;
  *(a1 + 1108) = 1;
  *(a1 + 1112) = 0;
  *(a1 + 1116) = *v13;
  *(a1 + 1128) = *&v13[12];
  *(a1 + 1144) = *&v13[28];
  *(a1 + 1153) = *&v13[37];
  v8 = *(a1 + 1176);
  if (v8)
  {
    *(a1 + 1184) = v8;
    operator delete(v8);
  }

  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1212) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1257) = 0u;
  sub_19B967A5C(a1 + 1280);
  *(a1 + 1752) = -1;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  *v13 = v13;
  *&v13[8] = v13;
  *&v13[16] = 0;
  sub_19BA30054((a1 + 1784), v13);
  sub_19B916DC0(v13);
  *v13 = v13;
  *&v13[8] = v13;
  *&v13[16] = 0;
  sub_19BA30054((a1 + 1808), v13);
  sub_19B916DC0(v13);
  *(a1 + 1832) = 0x600000006;
  v9 = *(a1 + 1840);
  if (v9)
  {
    *(a1 + 1848) = v9;
    operator delete(v9);
  }

  *(a1 + 1856) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1864) = 0xBFF0000000000000;
  *(a1 + 1872) = 0xBFF0000000000000;
  sub_19B9866E4((a1 + 1880));
  sub_19B9899D0((a1 + 1904));
  *(a1 + 1920) = 0;
  *(a1 + 1904) = 0u;
  memset(v13, 0, 24);
  *v12 = v13;
  sub_19B98868C(v12);
  sub_19B9899D0((a1 + 1928));
  *(a1 + 1944) = 0;
  *(a1 + 1928) = 0u;
  memset(v13, 0, 24);
  *v12 = v13;
  sub_19B98868C(v12);
  *(a1 + 2072) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 1968) = 0xBFF0000000000000;
  *(a1 + 2048) = 0;
  result = 0.0;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2037) = 0;
  *(a1 + 2056) = 0xBFF0000000000000;
  *(a1 + 2064) = 0xBFF0000000000000;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA16E84(uint64_t a1, uint64_t a2)
{
  v351[111] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  *(a1 + 1968) = 0xBFF0000000000000;
  *(a1 + 2048) = 0;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2037) = 0;
  *(a1 + 2056) = 0xBFF0000000000000;
  *(a1 + 2064) = 0xBFF0000000000000;
  v6 = *(a1 + 208);
  v5 = *(a1 + 216);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a2 + 8);
      *buf = 134349056;
      *&buf[4] = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v20 = *(a2 + 8);
      *v296 = 134349056;
      *&v296[4] = v20;
      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v16);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  sub_19B9DEBC4(v6);
  v6[1] = *(a2 + 8);
  (*(*v6 + 96))(v6);
  v7 = *(a2 + 56);
  *(a2 + 152) = v7;
  v8 = *(&v7 + 1);
  v9 = *(a2 + 104);
  *(a2 + 168) = v9;
  *(a2 + 320) = *(&v7 + 1);
  *&v10 = v9;
  *(&v10 + 1) = v7;
  *(a2 + 288) = v7;
  *(a2 + 304) = v10;
  *(a2 + 328) = v7;
  *(a2 + 280) = 0;
  v11 = 0.0;
  if (*(a1 + 512) <= 0.0)
  {
LABEL_58:
    *(a2 + 152) = v7;
    *(a2 + 160) = v8;
    *(a2 + 168) = v9;
    *(a2 + 288) = v7;
    *(a2 + 296) = v8;
    *(a2 + 304) = v9;
    *(a2 + 312) = v7;
    *(a2 + 320) = v8;
    *(a2 + 328) = v7;
    *(a2 + 336) = v8;
    *(a2 + 280) = 0;
    if (((*(*a1 + 48))(a1, a2, a1 + 264) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v32 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = v4;
        _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not matching", buf, 0xCu);
      }

      v33 = sub_19B87DD40();
      if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v296 = 134349056;
        *&v296[4] = v4;
        v34 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      v21 = 1;
      if (v5)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v29 = (*(*a1 + 56))(a1, a2);
    (*(*v6 + 32))(v6, v29);
    (*(*v6 + 48))(v6, a2, 450.0);
    (*(*a1 + 32))(a1, a2, a1 + 264);
    sub_19B9866E4((a1 + 1880));
    if (*(a1 + 9) == 1)
    {
      v30 = *(a1 + 208);
      v31 = *(a1 + 216);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        *&buf[8] = v31;
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *&buf[8] = 0;
      }

      *buf = v30;
      sub_19B986730(a2, buf, (a1 + 168), a1 + 1832, (a1 + 1880), 0, 100.0);
      if (*&buf[8])
      {
        sub_19B8750F8(*&buf[8]);
      }

      if (v31)
      {
        sub_19B8750F8(v31);
      }
    }

    v229[0] = xmmword_19BA89490;
    v229[1] = 0u;
    v230 = 0x3FF0000000000000;
    memset(v231, 0, sizeof(v231));
    v232 = 0;
    __asm { FMOV            V1.2D, #-1.0 }

    v233 = _Q1;
    v235 = 0u;
    v234 = &v235;
    v236 = 0u;
    v237 = 0;
    v238 = 1;
    v239 = 0;
    *v244 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0;
    v245 = 0;
    v246 = 0xBFF0000000000000;
    v248 = 0;
    v247 = 0u;
    v249 = 1;
    v250 = 0.0;
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0;
    v255 = 0u;
    v256 = 0;
    v257 = 0;
    v258 = 0u;
    v224 = _Q1;
    v259 = _Q1;
    v260 = 0u;
    *v261 = 0xBFF0000000000000;
    *&v263[120] = 0;
    *&v263[128] = 0;
    memset(&v263[80], 0, 34);
    memset(&v263[136], 0, 75);
    memset(&v263[216], 0, 56);
    memset(v263, 0, 78);
    v262 = 0u;
    memset(&v261[8], 0, 80);
    v265 = 0u;
    *&v263[272] = xmmword_19BA8C810;
    v264 = 0x415854A640000000;
    v266 = 0x3FF0000000000000;
    v267 = 0;
    v268 = 0u;
    memset(v269, 0, 11);
    memset(&v269[2], 0, 11);
    v270 = 0;
    v226 = (a1 + 240);
    if (sub_19BA1B8A8(a1, (a1 + 240), a1 + 264, a2, 1, 0, v229))
    {
      goto LABEL_82;
    }

    v38 = *(a1 + 208);
    if (v38 && (*(*v38 + 104))(v38) && BYTE1(v269[3]) == 1 && *(a1 + 1912) != *(a1 + 1904) && BYTE2(v269[1]) == 1 && v247 && *(a1 + 768) == 1 && *(a1 + 384))
    {
      v39 = *(a2 + 192);
      if (v39 > 25.0 || v39 <= 0.0 || *(a2 + 104) < 0.0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v42 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v43 = *(a2 + 8);
          v44 = *(a2 + 192);
          *buf = 134349312;
          *&buf[4] = v43;
          *&buf[12] = 2050;
          *&buf[14] = v44;
          _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,checkForUserDeviationFromRoute skipped,courseUnc,%{public}.2lf", buf, 0x16u);
        }

        v45 = sub_19B87DD40();
        if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v46 = *(a2 + 8);
          v47 = *(a2 + 192);
          *v296 = 134349312;
          *&v296[4] = v46;
          *&v296[12] = 2050;
          *&v296[14] = v47;
          v48 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForUserDeviationFromRoute(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v48);
          if (v48 != buf)
          {
            free(v48);
          }
        }
      }

      else
      {
        v40 = *(a2 + 8);
        sub_19BA1B758(v296);
        if ((sub_19BA1B8A8(a1, v226, a1 + 264, a2, 0, 0, v296) & 1) == 0 && v310 == 1 && v303[0])
        {
          for (i = v255; i != *(&v255 + 1); i += 72)
          {
            if (*(i + 64) == 1)
            {
              goto LABEL_118;
            }
          }

          i = 0;
LABEL_118:
          v49 = v307;
          if (v307 != v308)
          {
            while (*(v49 + 64) != 1)
            {
              v49 += 72;
              if (v49 == v308)
              {
                goto LABEL_158;
              }
            }

            if (i && *i > 0.0)
            {
              v50 = *v49 / *i;
              v228 = sub_19BA16668(&v247, (a1 + 168), a1 + 384);
              v51 = sub_19BA16668(v303, (a1 + 168), a1 + 384);
              v52 = fmod(*(a2 + 104) - v304, 360.0);
              if (v52 < 0.0)
              {
                v52 = v52 + 360.0;
              }

              if (v52 <= 180.0)
              {
                v53 = v52;
              }

              else
              {
                v53 = v52 + -360.0;
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v54 = fabs(v50);
              v55 = fabs(v53);
              v56 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v57 = *v247;
                v58 = *v303[0];
                *buf = 134352129;
                *&buf[4] = v40;
                *&buf[12] = 2050;
                *&buf[14] = v228;
                *&buf[22] = 2050;
                *&buf[24] = v51;
                *&buf[32] = 2050;
                *&buf[34] = v55;
                *&buf[42] = 2050;
                *&buf[44] = v54;
                *&buf[52] = 2053;
                *&buf[54] = v251;
                *&buf[62] = 2053;
                *&buf[64] = *(&v251 + 1);
                *&buf[72] = 2050;
                *&buf[74] = v250;
                v314 = 2049;
                *v315 = v57;
                *&v315[8] = 2053;
                *&v315[10] = v305;
                *&v315[18] = 2053;
                *&v315[20] = v306;
                *v316 = 2050;
                *&v316[2] = v304;
                *&v316[10] = 2049;
                *&v316[12] = v58;
                _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf,courseDiffNewAndRawSolution,%{public}.2lf,factor,%{public}.5lf,bestParticle,%{sensitive}.8lf,%{sensitive}.8lf,%{public}.3lf,%{private}lld,newBestParticle,%{sensitive}.8lf,%{sensitive}.8lf,%{public}.3lf,%{private}lld", buf, 0x84u);
              }

              v59 = sub_19B87DD40();
              if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v60 = *v247;
                v61 = *v303[0];
                *v274 = 134352129;
                *&v274[4] = v40;
                *&v274[12] = 2050;
                *&v274[14] = v228;
                *&v274[22] = 2050;
                v275 = v51;
                v276 = 2050;
                v277 = v55;
                v278 = 2050;
                v279 = v54;
                v280 = 2053;
                v281 = v251;
                v282 = 2053;
                v283 = *(&v251 + 1);
                v284 = 2050;
                v285 = v250;
                v286 = 2049;
                v287 = v60;
                v288 = 2053;
                v289 = v305;
                v290 = 2053;
                v291 = v306;
                v292 = 2050;
                v293 = v304;
                v294 = 2049;
                v295 = v61;
                v62 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForUserDeviationFromRoute(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v62);
                if (v62 != buf)
                {
                  free(v62);
                }
              }

              v63 = v55 >= 25.0 || v54 < 2.0;
              if (!v63)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v64 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134349568;
                  *&buf[4] = v40;
                  *&buf[12] = 2050;
                  *&buf[14] = v54;
                  *&buf[22] = 2050;
                  *&buf[24] = v55;
                  _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without routeHints,local,factor,%{public}.5lf,courseDiffNewAndRawSolution,%{public}.2lf", buf, 0x20u);
                }

                v65 = sub_19B87DD40();
                if (*(v65 + 160) > 1 || *(v65 + 164) > 1 || *(v65 + 168) > 1 || *(v65 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  *v274 = 134349568;
                  *&v274[4] = v40;
                  *&v274[12] = 2050;
                  *&v274[14] = v54;
                  *&v274[22] = 2050;
                  v275 = v55;
                  v66 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForUserDeviationFromRoute(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v66);
                  if (v66 != buf)
                  {
                    free(v66);
                  }
                }

                sub_19BA1F4E0(v229, v296);
              }
            }
          }
        }

LABEL_158:
        sub_19BA1F438(v296);
      }
    }

    if (BYTE2(v269[1]) != 1 || *(a1 + 768) != 1 || !*(a1 + 384))
    {
      goto LABEL_427;
    }

    v67 = *(a1 + 208);
    if (v67)
    {
      if ((*(*v67 + 104))(v67))
      {
        v68 = 6.0;
      }

      else
      {
        v68 = 10.0;
      }
    }

    else
    {
      v68 = 10.0;
    }

    v69 = *(a2 + 24);
    if (v69 >= 0.0)
    {
      v71 = *(a1 + 528);
      v72 = vabdd_f64(v69, v71) > 3.0;
      v70 = v71 >= 0.0 && v72;
    }

    else
    {
      v70 = 0;
    }

    v73 = *(a2 + 8);
    v74 = sub_19BA16668(&v247, (a1 + 168), a1 + 384);
    v75 = *&v268 * 0.2;
    if (*&v268 * 0.2 < 0.1)
    {
      v75 = 0.1;
    }

    if (v75 > 0.4)
    {
      v75 = 0.4;
    }

    if (v74 < v75)
    {
      goto LABEL_427;
    }

    v76 = *(a1 + 1872);
    if (v76 >= 0.0 && vabdd_f64(*(&v259 + 1), v76) <= 6.0 || ((v77 = *&v268 * 3.0, v74 > *&v268 * 3.0) ? (_ZF = v247 == 0) : (_ZF = 1), _ZF || (BYTE1(v269[1]) & 1) != 0))
    {
LABEL_210:
      if (v74 < 0.0)
      {
        goto LABEL_427;
      }

      v89 = fmax(v68 * *&v268, 15.0) > v74 ? 1 : v70;
      if (v89)
      {
        goto LABEL_427;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v90 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v73;
        *&buf[12] = 2050;
        *&buf[14] = v74;
        _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected, recomputing without course,solutionDiff,%{public}.2lf", buf, 0x16u);
      }

      v91 = sub_19B87DD40();
      if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v296 = 134349312;
        *&v296[4] = v73;
        *&v296[12] = 2050;
        *&v296[14] = v74;
        v92 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v92);
        if (v92 != buf)
        {
          free(v92);
        }
      }

      sub_19BA1B758(v296);
      if ((sub_19BA1B8A8(a1, v226, a1 + 264, a2, 1, 1, v296) & 1) == 0 && v310 == 1)
      {
        v93 = sub_19BA16668(v303, (a1 + 168), a1 + 384);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v94 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349568;
          *&buf[4] = v73;
          *&buf[12] = 2050;
          *&buf[14] = v74;
          *&buf[22] = 2050;
          *&buf[24] = v93;
          _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,course,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf", buf, 0x20u);
        }

        v95 = sub_19B87DD40();
        if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v274 = 134349568;
          *&v274[4] = v73;
          *&v274[12] = 2050;
          *&v274[14] = v74;
          *&v274[22] = 2050;
          v275 = v93;
          v96 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v96);
          if (v96 != buf)
          {
            free(v96);
          }
        }

        if (v93 < v74 * 0.6)
        {
          sub_19BA1F4E0(v229, v296);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v103 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v73;
            _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without course, solutionDiffCheck", buf, 0xCu);
          }

          v104 = sub_19B87DD40();
          if (*(v104 + 160) <= 1 && *(v104 + 164) <= 1 && *(v104 + 168) <= 1 && !*(v104 + 152))
          {
            goto LABEL_426;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v274 = 134349056;
          *&v274[4] = v73;
          v105 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v105);
          if (v105 == buf)
          {
            goto LABEL_426;
          }

LABEL_425:
          free(v105);
LABEL_426:
          sub_19BA1F438(v296);
          goto LABEL_427;
        }

        if (vabdd_f64(v93, v74) < 2.0)
        {
          v97 = v73;
          sub_19B97106C(&v247, buf);
          sub_19B97106C(v303, v274);
          if (*buf != *v274 || buf[16] != v274[16] || *&buf[8] != *&v274[8])
          {
            v112 = *(a1 + 408);
            v113 = fmod((v112 - v250), 360.0);
            if (v113 < 0.0)
            {
              v113 = v113 + 360.0;
            }

            if (v113 > 180.0)
            {
              v113 = v113 + -360.0;
            }

            v114 = fabs(v113);
            v115 = fmod((v112 - v304), 360.0);
            if (v115 < 0.0)
            {
              v115 = v115 + 360.0;
            }

            if (v115 > 180.0)
            {
              v115 = v115 + -360.0;
            }

            v63 = v114 <= 60.0;
            v73 = v97;
            if (!v63 && fabs(v115) < 10.0)
            {
              sub_19BA1F4E0(v229, v296);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v116 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134349056;
                *&buf[4] = v97;
                _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without course, courseDiffCheck", buf, 0xCu);
              }

              v117 = sub_19B87DD40();
              if (*(v117 + 160) > 1 || *(v117 + 164) > 1 || *(v117 + 168) > 1 || (v73 = v97, *(v117 + 152)))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                *v274 = 134349056;
                *&v274[4] = v97;
                v118 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v118);
                if (v118 != buf)
                {
                  free(v118);
                }

                v73 = v97;
              }
            }
          }
        }
      }

      sub_19BA1F438(v296);
      if (BYTE1(v269[3]))
      {
        v119 = *(a1 + 1904);
        v120 = *(a1 + 1912);
        if (v119 == v120)
        {
          v122 = -1.0;
          v121 = -1.0;
        }

        else
        {
          v121 = -1.0;
          v122 = -1.0;
          do
          {
            v123 = sub_19BA0C01C((a1 + 168), *(a1 + 416), *(a1 + 424), v119[10], v119[11], 0.0);
            if (v123 < v122 || v122 < 0.0)
            {
              v122 = v123;
            }

            v125 = fmod(v119[13] - *(a1 + 408), 360.0);
            if (v125 < 0.0)
            {
              v125 = v125 + 360.0;
            }

            if (v125 > 180.0)
            {
              v125 = v125 + -360.0;
            }

            v126 = fabs(v125);
            if (v126 < v121 || v121 < 0.0)
            {
              v121 = v126;
            }

            v119 += 33;
          }

          while (v119 != v120);
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v131 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349568;
          *&buf[4] = v73;
          *&buf[12] = 2050;
          *&buf[14] = v121;
          *&buf[22] = 2050;
          *&buf[24] = v122;
          _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected,verifying routeHints,courseDiffBetweenPriorSolution,%{public}.2lf,distanceDiffBetweenPriorSolution,%{public}.2lf", buf, 0x20u);
        }

        v132 = sub_19B87DD40();
        if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v296 = 134349568;
          *&v296[4] = v73;
          *&v296[12] = 2050;
          *&v296[14] = v121;
          *&v296[22] = 2050;
          *&v296[24] = v122;
          v133 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v133);
          if (v133 != buf)
          {
            free(v133);
          }
        }

        if (v121 >= 30.0 || (v122 >= 4.0 ? (v134 = v122 < *&v268 + *&v268) : (v134 = 1), !v134))
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v137 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349312;
            *&buf[4] = v73;
            *&buf[12] = 2050;
            *&buf[14] = v74;
            _os_log_impl(&dword_19B873000, v137, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected, recomputing without routeHints,solutionDiff,%{public}.2lf", buf, 0x16u);
          }

          v138 = sub_19B87DD40();
          if (*(v138 + 160) > 1 || *(v138 + 164) > 1 || *(v138 + 168) > 1 || *(v138 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v296 = 134349312;
            *&v296[4] = v73;
            *&v296[12] = 2050;
            *&v296[14] = v74;
            v139 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v139);
            if (v139 != buf)
            {
              free(v139);
            }
          }

          sub_19BA1B758(v296);
          if ((sub_19BA1B8A8(a1, v226, a1 + 264, a2, 0, 1, v296) & 1) != 0 || v310 != 1)
          {
            goto LABEL_426;
          }

          v140 = sub_19BA16668(v303, (a1 + 168), a1 + 384);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v141 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v73;
            *&buf[12] = 2050;
            *&buf[14] = v74;
            *&buf[22] = 2050;
            *&buf[24] = v140;
            _os_log_impl(&dword_19B873000, v141, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,solutionDiff,%{public}.2lf,newSolutionDiff,%{public}.2lf", buf, 0x20u);
          }

          v142 = sub_19B87DD40();
          if (*(v142 + 160) > 1 || *(v142 + 164) > 1 || *(v142 + 168) > 1 || *(v142 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v274 = 134349568;
            *&v274[4] = v73;
            *&v274[12] = 2050;
            *&v274[14] = v74;
            *&v274[22] = 2050;
            v275 = v140;
            v143 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v143);
            if (v143 != buf)
            {
              free(v143);
            }
          }

          if (v140 >= v309 * 1.5 || v140 <= v309 * 0.1)
          {
            goto LABEL_426;
          }

          sub_19BA1F4E0(v229, v296);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v144 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v73;
            _os_log_impl(&dword_19B873000, v144, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter swapped with local filter without routeHints", buf, 0xCu);
          }

          v145 = sub_19B87DD40();
          if (*(v145 + 160) <= 1 && *(v145 + 164) <= 1 && *(v145 + 168) <= 1 && !*(v145 + 152))
          {
            goto LABEL_426;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          *v274 = 134349056;
          *&v274[4] = v73;
          v105 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v105);
          if (v105 == buf)
          {
            goto LABEL_426;
          }

          goto LABEL_425;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v135 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v73;
          _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected,routeHints are OK, skipping recomputation", buf, 0xCu);
        }

        v136 = sub_19B87DD40();
        if (*(v136 + 160) > 1 || *(v136 + 164) > 1 || *(v136 + 168) > 1 || *(v136 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
LABEL_355:
            *v296 = 134349056;
            *&v296[4] = v73;
            v130 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v130);
            if (v130 != buf)
            {
              free(v130);
            }

            goto LABEL_427;
          }

LABEL_660:
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          goto LABEL_355;
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v128 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v73;
          _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solution jump detected,routeHints are not used", buf, 0xCu);
        }

        v129 = sub_19B87DD40();
        if (*(v129 + 160) > 1 || *(v129 + 164) > 1 || *(v129 + 168) > 1 || *(v129 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_355;
          }

          goto LABEL_660;
        }
      }

LABEL_427:
      if ((*(*a1 + 72))(a1, v229, a1 + 264))
      {
        if ((*(*a1 + 16))(a1, v229))
        {
          v227 = 0;
          goto LABEL_452;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v148 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v4;
          _os_log_impl(&dword_19B873000, v148, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, adjustSolutionforRoadWidth failed", buf, 0xCu);
        }

        v149 = sub_19B87DD40();
        if (*(v149 + 160) > 1 || *(v149 + 164) > 1 || *(v149 + 168) > 1 || *(v149 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
LABEL_449:
            *v296 = 134349056;
            *&v296[4] = v4;
            v150 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v150);
            if (v150 != buf)
            {
              free(v150);
            }

            v227 = 1;
LABEL_452:
            v151 = *(a1 + 1872);
            v152 = v151 < 0.0;
            if (vabdd_f64(*(&v259 + 1), v151) > 6.0)
            {
              v152 = 1;
            }

            v225 = v152;
            if (!v152)
            {
LABEL_502:
              if ((v227 & 1) != 0 || (*(*a1 + 80))(a1, v229, a1 + 264))
              {
                v179 = *(a1 + 240);
                v178 = *(a1 + 248);
                sub_19BA16AD8(a1);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v180 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134349312;
                  *&buf[4] = v4;
                  *&buf[12] = 1026;
                  *&buf[14] = v179 != v178;
                  _os_log_impl(&dword_19B873000, v180, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset,shallReset,wasInitialized,%{public}d", buf, 0x12u);
                }

                v181 = sub_19B87DD40();
                if (*(v181 + 160) > 1 || *(v181 + 164) > 1 || *(v181 + 168) > 1 || *(v181 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  *v296 = 134349312;
                  *&v296[4] = v4;
                  *&v296[12] = 1026;
                  *&v296[14] = v179 != v178;
                  v182 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v182);
                  if (v182 != buf)
                  {
                    free(v182);
                  }
                }

                v232 = 0;
                sub_19BA2ECC0(v231);
                memset(v231, 0, 24);
                memset(buf, 0, 24);
                *v296 = buf;
                sub_19B988734(v296);
                if (*(&v231[1] + 1))
                {
                  *&v231[2] = *(&v231[1] + 1);
                  operator delete(*(&v231[1] + 1));
                }

                memset(&v231[1] + 8, 0, 24);
                *&v233 = 0xBFF0000000000000;
                sub_19BA0EEA8(&v233 + 8);
                bzero(buf, 0x300uLL);
                buf[20] = 1;
                memset(&v315[4], 0, 24);
                memset(&buf[32], 0, 49);
                *v316 = 0xBFF0000000000000;
                *&v316[8] = 0u;
                v317 = 0;
                v318 = 1;
                v319 = 0u;
                v320 = 0u;
                v321 = 0u;
                v322 = 0;
                v324 = 0;
                v325 = 0;
                *v323 = 0u;
                v326 = 0u;
                v327 = v224;
                v328 = 0u;
                v329 = 0xBFF0000000000000;
                memset(&v339[32], 0, 32);
                v340 = 0;
                v341 = 0u;
                v342 = 0u;
                v343 = 0u;
                memset(v344, 0, 27);
                memset(&v344[32], 0, 48);
                v330 = 0u;
                v331 = 0u;
                v332 = 0u;
                v333 = 0u;
                v334 = 0u;
                v335 = 0u;
                v336 = 0u;
                v337 = 0u;
                v338 = 0u;
                memset(v339, 0, 30);
                v345 = 0xBFF0000000000000;
                v347 = 0u;
                v346 = xmmword_19BA89490;
                v348 = 0x3FF0000000000000;
                *(v350 + 7) = 0;
                v350[0] = 0;
                v349 = 0u;
                *(v351 + 7) = 0;
                v351[0] = 0;
                sub_19BA20B88(&v236, buf);
                if (v350[0])
                {
                  sub_19B8750F8(v350[0]);
                }

                if (SHIBYTE(v335) < 0)
                {
                  operator delete(*(&v334 + 1));
                }

                if (v323[0])
                {
                  operator delete(v323[0]);
                }

                if (*&v316[16])
                {
                  sub_19B8750F8(*&v316[16]);
                }

                if (*&v315[4])
                {
                  operator delete(*&v315[4]);
                }

                if (*&buf[8])
                {
                  sub_19B8750F8(*&buf[8]);
                }

                v183 = *(a2 + 80);
                *&v261[16] = *(a2 + 64);
                *&v261[32] = v183;
                v184 = *(a2 + 112);
                *&v261[48] = *(a2 + 96);
                *&v261[64] = v184;
                v185 = *(a2 + 16);
                v258 = *a2;
                v259 = v185;
                v186 = *(a2 + 48);
                v260 = *(a2 + 32);
                *v261 = v186;
                std::string::operator=(&v261[80], (a2 + 128));
                memcpy(v263, (a2 + 152), 0x118uLL);
                if (v179 != v178 && ((*(*a1 + 24))(a1, v229) & 1) == 0)
                {
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v214 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134349056;
                    *&buf[4] = v4;
                    _os_log_impl(&dword_19B873000, v214, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to re-initialize filter", buf, 0xCu);
                  }

                  v215 = sub_19B87DD40();
                  if ((*(v215 + 160) & 0x80000000) == 0 || (*(v215 + 164) & 0x80000000) == 0 || (*(v215 + 168) & 0x80000000) == 0 || *(v215 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    *v296 = 134349056;
                    *&v296[4] = v4;
                    v216 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v216);
                    if (v216 != buf)
                    {
                      free(v216);
                    }
                  }

                  v21 = 0;
LABEL_615:
                  if (v269[0])
                  {
                    sub_19B8750F8(v269[0]);
                  }

                  if (SHIBYTE(v262) < 0)
                  {
                    operator delete(*&v261[80]);
                  }

                  if (v255)
                  {
                    *(&v255 + 1) = v255;
                    operator delete(v255);
                  }

                  if (*(&v247 + 1))
                  {
                    sub_19B8750F8(*(&v247 + 1));
                  }

                  if (v244[0])
                  {
                    v244[1] = v244[0];
                    operator delete(v244[0]);
                  }

                  if (*(&v236 + 1))
                  {
                    sub_19B8750F8(*(&v236 + 1));
                  }

                  sub_19BA2E9A8(v235);
                  if (*(&v231[1] + 1))
                  {
                    *&v231[2] = *(&v231[1] + 1);
                    operator delete(*(&v231[1] + 1));
                  }

                  *buf = v231;
                  sub_19B988734(buf);
                  if (v5)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_31;
                }
              }

              if (BYTE2(v269[1]) == 1)
              {
                if (v247)
                {
                  if (!*(a1 + 1056) || (v187 = *(a1 + 1048), *v247 != *(v187 + 16)) || v249 != *(v187 + 24))
                  {
                    operator new();
                  }
                }
              }

              if (*(a1 + 1010) == 1 && !*(a1 + 384))
              {
                goto LABEL_540;
              }

              if (BYTE2(v269[1]) == 1)
              {
                if (!v247)
                {
LABEL_540:
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v188 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134349056;
                    *&buf[4] = *(&v258 + 1);
                    _os_log_impl(&dword_19B873000, v188, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, prior or current snap is valid but bestparticle road is null", buf, 0xCu);
                  }

                  v189 = sub_19B87DD40();
                  if ((*(v189 + 160) & 0x80000000) == 0 || (*(v189 + 164) & 0x80000000) == 0 || (*(v189 + 168) & 0x80000000) == 0 || *(v189 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    *v296 = 134349056;
                    *&v296[4] = *(&v258 + 1);
                    v190 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 0, "void CLParticleMM::CLParticleMapMatcherFilterBase::updateIntersectionInfo(const MMFilterData &, const MMSnapData &, CLParticleMapMatcherCommon::IntersectionInfo &)", "CoreLocation: %s\n", v190);
                    if (v190 != buf)
                    {
                      free(v190);
                    }
                  }

LABEL_585:
                  if (!v225 && v263[112] == 1 && (v263[113] & 1) == 0)
                  {
                    v217 = *&v261[32];
                    if (*&v261[32] < 400.0 && *&v261[32] > 0.0 && (v257 != 1 || LOBYTE(v269[3]) == 1))
                    {
                      v218 = sub_19BA0C01C((a1 + 168), *&v261[8], *&v261[16], *v263, *&v263[8], 0.0);
                      v219 = v218 / v217;
                      if (v219 > 1.5)
                      {
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        v220 = off_1EAFE4708;
                        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 134351617;
                          *&buf[4] = *(&v258 + 1);
                          *&buf[12] = 2053;
                          *&buf[14] = *&v261[8];
                          *&buf[22] = 2053;
                          *&buf[24] = *&v261[16];
                          *&buf[32] = 2050;
                          *&buf[34] = *&v261[24];
                          *&buf[42] = 2050;
                          *&buf[44] = *&v261[56];
                          *&buf[52] = 2053;
                          *&buf[54] = *v263;
                          *&buf[62] = 2053;
                          *&buf[64] = *&v263[8];
                          *&buf[72] = 2050;
                          *&buf[74] = *&v263[16];
                          v314 = 2050;
                          *v315 = v218;
                          *&v315[8] = 2050;
                          *&v315[10] = *&v261[32];
                          *&v315[18] = 2050;
                          *&v315[20] = v219;
                          _os_log_impl(&dword_19B873000, v220, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,alt,%{public}.2lf,course,%{public}.1lf,snapLat,%{sensitive}.8lf,snapLon,%{sensitive}.8lf,snapCourse,%{public}.1lf,horizontalError,%{public}.2lf,hunc,%{public}.2lf,ratio,%{public}.2lf", buf, 0x70u);
                        }

                        v221 = sub_19B87DD40();
                        if (*(v221 + 160) > 1 || *(v221 + 164) > 1 || *(v221 + 168) > 1 || *(v221 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1EAFE46D0 != -1)
                          {
                            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                          }

                          *v296 = 134351617;
                          *&v296[4] = *(&v258 + 1);
                          *&v296[12] = 2053;
                          *&v296[14] = *&v261[8];
                          *&v296[22] = 2053;
                          *&v296[24] = *&v261[16];
                          *&v296[32] = 2050;
                          *&v296[34] = *&v261[24];
                          *&v296[42] = 2050;
                          *&v296[44] = *&v261[56];
                          *&v296[52] = 2053;
                          *&v296[54] = *v263;
                          *&v296[62] = 2053;
                          *&v296[64] = *&v263[8];
                          *&v296[72] = 2050;
                          *&v296[74] = *&v263[16];
                          v297 = 2050;
                          v298 = v218;
                          v299 = 2050;
                          v300 = *&v261[32];
                          v301 = 2050;
                          v302 = v219;
                          v222 = _os_log_send_and_compose_impl();
                          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::modifyHorizontalUncertainty(MMFilterData &)", "CoreLocation: %s\n", v222);
                          if (v222 != buf)
                          {
                            free(v222);
                          }
                        }

                        v223 = v218 * 1.05;
                        if (v218 * 1.05 > 400.0)
                        {
                          v223 = 400.0;
                        }

                        *&v261[32] = v223;
                      }
                    }
                  }

                  if (v263[112] == 1)
                  {
                    v208 = *(&v259 + 1);
                    *(a1 + 232) = *(&v259 + 1);
                    if (*(a1 + 10) == 1 && (BYTE1(v269[1]) & 1) == 0)
                    {
                      if (((*&v263[264] < 7u) & (0x58u >> v263[264]) & *(a1 + 11)) != 0 || (v209 = *(a1 + 1872), v209 >= 0.0) && vabdd_f64(v208, v209) <= 6.0)
                      {
                        (*(*a1 + 96))(a1, v229, a1 + 264);
                      }
                    }
                  }

                  if (v226 != v231)
                  {
                    sub_19BA2EB5C(v226, *&v231[0], *(&v231[0] + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v231[0] + 1) - *&v231[0]) >> 4));
                  }

                  sub_19BA1F280(a1 + 264, &v236);
                  v210 = *&v261[32];
                  *(a2 + 64) = *&v261[16];
                  *(a2 + 80) = v210;
                  v211 = *&v261[64];
                  *(a2 + 96) = *&v261[48];
                  *(a2 + 112) = v211;
                  v212 = v259;
                  *a2 = v258;
                  *(a2 + 16) = v212;
                  v213 = *v261;
                  *(a2 + 32) = v260;
                  *(a2 + 48) = v213;
                  std::string::operator=((a2 + 128), &v261[80]);
                  memcpy((a2 + 152), v263, 0x118uLL);
                  if (*(a2 + 264) == 1 && *(a2 + 265) == 1 && *(a2 + 280) == 3 && (*(a1 + 12) & 1) == 0)
                  {
                    *(a2 + 265) = 0;
                  }

                  v21 = v227 ^ 1u;
                  goto LABEL_615;
                }

                if (*(a1 + 1010))
                {
                  v191 = sub_19BA0C01C((a1 + 168), *(a1 + 416), *(a1 + 424), *&v251, *(&v251 + 1), *&v261[24]);
                  v192 = *(a1 + 392);
                  *buf = *(a1 + 384);
                  *&buf[8] = v192;
                  if (v192)
                  {
                    atomic_fetch_add_explicit((v192 + 8), 1uLL, memory_order_relaxed);
                  }

                  v193 = *(a1 + 416);
                  *&buf[16] = *(a1 + 400);
                  *&buf[32] = v193;
                  v194 = *(a1 + 432);
                  *&buf[56] = *(a1 + 440);
                  *&buf[65] = *(a1 + 449);
                  *&buf[48] = v194;
                  memset(&v315[4], 0, 24);
                  sub_19B96775C(&v315[4], *(a1 + 472), *(a1 + 480), 0x8E38E38E38E38E39 * ((*(a1 + 480) - *(a1 + 472)) >> 3));
                  *&v296[16] = 0;
                  v296[21] = 0;
                  *&v296[24] = 0;
                  *&v296[40] = 0;
                  *&v296[32] = 0;
                  v195 = *buf;
                  v196 = *&buf[8];
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                  }

                  *v296 = v195;
                  *&v296[8] = v196;
                  v197 = *a1;
                  v296[20] = buf[20];
                  *&v296[48] = *&buf[48];
                  v273 = 0.0;
                  v272 = 0;
                  *v274 = v274;
                  *&v274[8] = v274;
                  *&v274[16] = 0;
                  *&v311 = &v311;
                  *(&v311 + 1) = &v311;
                  v312 = 0;
                  v271 = 0;
                  v198 = (*(v197 + 88))(a1, v296, &v271, v274, &v311, &v273, &v272, v191);
                  if (v271 > 1)
                  {
                    v199 = v198;
                  }

                  else
                  {
                    v199 = 0;
                  }

                  if (v199)
                  {
                    v200 = *v296;
                    v201 = *&v296[8];
                    if (*&v296[8])
                    {
                      atomic_fetch_add_explicit((*&v296[8] + 8), 1uLL, memory_order_relaxed);
                    }

                    v202 = *&buf[8];
                    *buf = v200;
                    *&buf[8] = v201;
                    if (v202)
                    {
                      sub_19B8750F8(v202);
                    }

                    *&buf[48] = *&v296[48];
                    *&buf[16] = *&v296[16];
                    *&buf[32] = v273;
                    *&buf[40] = v272;
                  }

                  sub_19B916DC0(&v311);
                  sub_19B916DC0(v274);
                  if (*&v296[8])
                  {
                    sub_19B8750F8(*&v296[8]);
                  }

                  if (v199)
                  {
                    *(a1 + 1064) = 1;
                    *(a1 + 1200) = v271;
                    v203 = *buf;
                    v204 = *&buf[8];
                    if (*&buf[8])
                    {
                      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                    }

                    *(a1 + 1088) = v203;
                    v205 = *(a1 + 1096);
                    *(a1 + 1096) = v204;
                    if (v205)
                    {
                      sub_19B8750F8(v205);
                    }

                    v206 = *&buf[32];
                    *(a1 + 1104) = *&buf[16];
                    *(a1 + 1120) = v206;
                    *(a1 + 1136) = *&buf[48];
                    *(a1 + 1144) = *&buf[56];
                    *(a1 + 1153) = *&buf[65];
                    if ((a1 + 1088) != buf)
                    {
                      sub_19B967884((a1 + 1176), *&v315[4], *&v315[12], 0x8E38E38E38E38E39 * ((*&v315[12] - *&v315[4]) >> 3));
                    }

                    *(a1 + 1080) = *(a1 + 512);
                  }

                  if (*&v315[4])
                  {
                    *&v315[12] = *&v315[4];
                    operator delete(*&v315[4]);
                  }

                  if (*&buf[8])
                  {
                    sub_19B8750F8(*&buf[8]);
                  }
                }
              }

              if (*(a1 + 1064) == 1)
              {
                if (BYTE2(v269[1]) != 1 || (v207 = sub_19BA0C01C((a1 + 168), *(a1 + 1120), *(a1 + 1128), *v263, *&v263[8], *&v261[24]), *(a1 + 1072) = v207, v207 > 450.0))
                {
                  *(a1 + 1064) = 0;
                }
              }

              goto LABEL_585;
            }

            if ((v227 & 1) == 0)
            {
              v153 = sub_19BA1C484(a1, v229, a1 + 264);
              v154 = v153;
              if (v153)
              {
                v155 = 1.0;
                if (*(a1 + 512) > 0.0)
                {
                  v155 = v11;
                }

                *(a1 + 2200) = *(a1 + 2200) + v155;
                v267 = 1;
                *&v263[16] = *&v261[56];
              }

              else
              {
                *(a1 + 2200) = 0;
              }

              v263[113] = v153;
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v156 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v157 = *(a1 + 2200);
                *buf = 134349568;
                *&buf[4] = v4;
                *&buf[12] = 1026;
                *&buf[14] = v154;
                *&buf[18] = 2050;
                *&buf[20] = v157;
                _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,%{public}d,consecutiveAmbCount,%{public}.1lf", buf, 0x1Cu);
              }

              v158 = sub_19B87DD40();
              if (*(v158 + 160) > 1 || *(v158 + 164) > 1 || *(v158 + 168) > 1 || *(v158 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v159 = *(a1 + 2200);
                *v296 = 134349568;
                *&v296[4] = v4;
                *&v296[12] = 1026;
                *&v296[14] = v154;
                *&v296[18] = 2050;
                *&v296[20] = v159;
                v160 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v160);
                if (v160 != buf)
                {
                  free(v160);
                }
              }
            }

            v161 = v263[112];
            if (v263[112] == 1)
            {
              if ((*(a1 + 768) & 1) == 0)
              {
                *(a1 + 2096) = 0;
                *(a1 + 2104) = 0;
                *(a1 + 2112) = 0x3FF0000000000000;
              }
            }

            else if (*(a1 + 768))
            {
              *(a1 + 2096) = xmmword_19BA8BCB0;
              *(a1 + 2112) = 0;
            }

            v162 = -0.1;
            if (*(&v259 + 1) >= 0.0)
            {
              v163 = *(a1 + 528);
              if (v163 >= 0.0)
              {
                v162 = vabdd_f64(*(&v259 + 1), v163) * 0.1;
              }
            }

            if (v161 && (v263[113] & 1) == 0)
            {
              v164 = *(a1 + 2112) - v162;
              v165 = v162 + *(a1 + 2104);
            }

            else
            {
              v164 = v162 + *(a1 + 2112);
              v165 = *(a1 + 2104) - v162;
            }

            v166 = fmin(fmax(v164, 0.0), 1.0);
            *(a1 + 2112) = v166;
            v167 = fmin(fmax(v165, 0.0), 1.0);
            *(a1 + 2104) = v167;
            *(a1 + 2096) = *(a1 + 2096) + 1.0;
            *v263 = vmlaq_n_f64(vmulq_n_f64(*&v261[8], v166), *v263, v167);
            *&v263[176] = *v263;
            *&v263[128] = 3;
            if (v166 >= 1.0)
            {
              v168 = 0;
            }

            else
            {
              if (v167 < 1.0)
              {
LABEL_490:
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v169 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v170 = *(a1 + 2112);
                  v171 = *(a1 + 2104);
                  v172 = *(a1 + 2096);
                  *buf = 134350080;
                  *&buf[4] = *(&v258 + 1);
                  *&buf[12] = 2050;
                  *&buf[14] = v170;
                  *&buf[22] = 2050;
                  *&buf[24] = v171;
                  *&buf[32] = 2050;
                  *&buf[34] = v172;
                  *&buf[42] = 1026;
                  *&buf[44] = *&v263[128];
                  _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,fRawWeight,%{public}.2lf,fSnapWeight,%{public}.2lf,fTimeInMode,%{public}.2lf,snapType,%{public}d", buf, 0x30u);
                }

                v173 = sub_19B87DD40();
                if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v174 = *(a1 + 2112);
                  v175 = *(a1 + 2104);
                  v176 = *(a1 + 2096);
                  *v296 = 134350080;
                  *&v296[4] = *(&v258 + 1);
                  *&v296[12] = 2050;
                  *&v296[14] = v174;
                  *&v296[22] = 2050;
                  *&v296[24] = v175;
                  *&v296[32] = 2050;
                  *&v296[34] = v176;
                  *&v296[42] = 1026;
                  *&v296[44] = *&v263[128];
                  v177 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::MMPartialMatcher::getPartialMatchedSolution(MMSnapData &, const MMSnapData &)", "CoreLocation: %s\n", v177);
                  if (v177 != buf)
                  {
                    free(v177);
                  }
                }

                goto LABEL_502;
              }

              v168 = 1;
            }

            *&v263[128] = v168;
            goto LABEL_490;
          }

LABEL_655:
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          goto LABEL_449;
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v146 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v4;
          _os_log_impl(&dword_19B873000, v146, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, assessMatch failed", buf, 0xCu);
        }

        v147 = sub_19B87DD40();
        if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_449;
          }

          goto LABEL_655;
        }
      }

LABEL_82:
      v227 = 1;
      goto LABEL_452;
    }

    v79 = *(a1 + 408);
    v80 = fmod((v79 - v250), 360.0);
    if (v80 < 0.0)
    {
      v80 = v80 + 360.0;
    }

    if (v80 > 180.0)
    {
      v80 = v80 + -360.0;
    }

    v81 = fabs(v80);
    v273 = 0.0;
    v272 = 0;
    sub_19BA0C3BC((a1 + 168), &v273, &v272, *&v251, *(&v251 + 1), 0.0, v79, *(a1 + 416), *(a1 + 424));
    v82 = *(a1 + 2200);
    if (v82 <= 5.0)
    {
      if (v82 >= 10.0)
      {
        v83 = 1;
        goto LABEL_197;
      }
    }

    else
    {
      v83 = 1;
      if (v82 >= 10.0 || fabs(*&v263[88]) < 7.0)
      {
LABEL_197:
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v84 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v85 = *(a1 + 2200);
          *buf = 134350849;
          *&buf[4] = v73;
          *&buf[12] = 1026;
          *&buf[14] = v83;
          *&buf[18] = 2050;
          *&buf[20] = v85;
          *&buf[28] = 2050;
          *&buf[30] = fabs(*&v263[88]);
          *&buf[38] = 2050;
          *&buf[40] = v81;
          *&buf[48] = 2050;
          *&buf[50] = v273;
          *&buf[58] = 2053;
          *&buf[60] = v251;
          *&buf[68] = 2053;
          *&buf[70] = *(&v251 + 1);
          _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solutionJumpCheck,shouldNotPropagateFromLastSnap,%{public}d,consecutiveAmbiguityEpochCount,%{public}.1lf,deltaAz,%{public}.2lf,courseDiffWithPriorSolution,%{public}.2lf,acrossTrack,%{public}.2lf,bestLL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x4Eu);
        }

        v86 = sub_19B87DD40();
        if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v87 = *(a1 + 2200);
          *v296 = 134350849;
          *&v296[4] = v73;
          *&v296[12] = 1026;
          *&v296[14] = v83;
          *&v296[18] = 2050;
          *&v296[20] = v87;
          *&v296[28] = 2050;
          *&v296[30] = fabs(*&v263[88]);
          *&v296[38] = 2050;
          *&v296[40] = v81;
          *&v296[48] = 2050;
          *&v296[50] = v273;
          *&v296[58] = 2053;
          *&v296[60] = v251;
          *&v296[68] = 2053;
          *&v296[70] = *(&v251 + 1);
          v88 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v88);
          if (v88 != buf)
          {
            free(v88);
          }
        }

        if (!v83)
        {
          sub_19B973CD8(v296, a1 + 384);
          v98 = *(a1 + 208);
          v99 = *(a1 + 216);
          if (v99)
          {
            atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v98)
          {
            *v274 = 0;
            *buf = buf;
            *&buf[8] = buf;
            *&buf[16] = 0;
            (*(*v98 + 56))(v98, v296, buf, v274, *&v296[48], *&v268);
            sub_19B916DC0(buf);
          }

          if (*v296)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v100 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134350337;
              *&buf[4] = v73;
              *&buf[12] = 2050;
              *&buf[14] = v74;
              *&buf[22] = 2053;
              *&buf[24] = v251;
              *&buf[32] = 2053;
              *&buf[34] = *(&v251 + 1);
              *&buf[42] = 2053;
              *&buf[44] = *&v296[32];
              *&buf[52] = 2053;
              *&buf[54] = *&v296[40];
              _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replaced with previous propagated solution,%{public}.2lf,bestLL,%{sensitive}.7lf,%{sensitive}.7lf,newLL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x3Eu);
            }

            v101 = sub_19B87DD40();
            if (*(v101 + 160) > 1 || *(v101 + 164) > 1 || *(v101 + 168) > 1 || *(v101 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              *v274 = 134350337;
              *&v274[4] = v73;
              *&v274[12] = 2050;
              *&v274[14] = v74;
              *&v274[22] = 2053;
              v275 = *&v251;
              v276 = 2053;
              v277 = *(&v251 + 1);
              v278 = 2053;
              v279 = *&v296[32];
              v280 = 2053;
              v281 = *&v296[40];
              v102 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v102);
              if (v102 != buf)
              {
                free(v102);
              }
            }

            sub_19B973CD8(v274, &v247);
            sub_19B9710EC(&v247, v296);
            if (sub_19BA0CB14(&v236))
            {
              BYTE1(v269[1]) = 1;
              v267 = 1;
            }

            else
            {
              sub_19B9710EC(&v247, v274);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v109 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349056;
                *&buf[4] = v73;
                _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replacement failed as unable to fillCrumb", buf, 0xCu);
              }

              v110 = sub_19B87DD40();
              if ((*(v110 + 160) & 0x80000000) == 0 || (*(v110 + 164) & 0x80000000) == 0 || (*(v110 + 168) & 0x80000000) == 0 || *(v110 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                LODWORD(v311) = 134349056;
                *(&v311 + 4) = v73;
                v111 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v111);
                if (v111 != buf)
                {
                  free(v111);
                }
              }
            }

            sub_19B966FCC(v274);
          }

          else
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v106 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349056;
              *&buf[4] = v73;
              _os_log_impl(&dword_19B873000, v106, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,solutionJumpCheck,solution replacement failed as returned particle has invalid road", buf, 0xCu);
            }

            v107 = sub_19B87DD40();
            if ((*(v107 + 160) & 0x80000000) == 0 || (*(v107 + 164) & 0x80000000) == 0 || (*(v107 + 168) & 0x80000000) == 0 || *(v107 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              *v274 = 134349056;
              *&v274[4] = v73;
              v108 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "void CLParticleMM::CLParticleMapMatcherFilterBase::checkForSolutionJumpsAndRecomputeSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, MMFilterData &, CLMapCrumb &)", "CoreLocation: %s\n", v108);
              if (v108 != buf)
              {
                free(v108);
              }
            }
          }

          if (v99)
          {
            sub_19B8750F8(v99);
          }

          sub_19B966FCC(v296);
          goto LABEL_427;
        }

        goto LABEL_210;
      }
    }

    v83 = fabs(v273) < v77 && v81 < 30.0;
    goto LABEL_197;
  }

  v12 = *(a2 + 24);
  if (v12 < 0.0 || (v13 = *(a1 + 528), v13 < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to compute timeDiff", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v296 = 134349056;
      *&v296[4] = v4;
      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v16);
LABEL_27:
      if (v16 != buf)
      {
        free(v16);
      }

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v12 - v13 != 0.0)
  {
    v11 = vabdd_f64(v12, v13);
    if (v11 > 5.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v4;
        *&buf[12] = 2050;
        *&buf[14] = v11;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, dT, %{public}.1lf", buf, 0x16u);
      }

      v27 = sub_19B87DD40();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v296 = 134349312;
        *&v296[4] = v4;
        *&v296[12] = 2050;
        *&v296[14] = v11;
        v28 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      sub_19BA16AD8(a1);
      *(a1 + 2144) = 0;
      *(a1 + 2128) = 0u;
      *(a1 + 2152) = 0;
      *(a1 + 2160) = 0u;
      *&v7 = *(a2 + 56);
      v8 = *(a2 + 64);
      v9 = *(a2 + 104);
    }

    goto LABEL_58;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v24 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&buf[4] = v4;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,not matching, time betwen updates is 0.0", buf, 0xCu);
  }

  v25 = sub_19B87DD40();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v296 = 134349056;
    *&v296[4] = v4;
    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::mapMatch(CLMapCrumb &)", "CoreLocation: %s\n", v16);
    goto LABEL_27;
  }

LABEL_29:
  v21 = 0;
  if (v5)
  {
LABEL_30:
    sub_19B8750F8(v5);
  }

LABEL_31:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_19BA1B5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_19BA1F438(&STACK[0x4B0]);
  sub_19BA1F438(va);
  if (a7)
  {
    sub_19B8750F8(a7);
  }

  _Unwind_Resume(a1);
}

double sub_19BA1B758(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_19BA89490;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 96) = _Q1;
  *(a1 + 120) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 156) = 1;
  *(a1 + 160) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0xBFF0000000000000;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 276) = 1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0xBFF0000000000000;
  *(a1 + 400) = 0xBFF0000000000000;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0xBFF0000000000000;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 723) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 590) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 800) = xmmword_19BA8C810;
  *(a1 + 816) = 0x415854A640000000;
  *(a1 + 840) = 0x3FF0000000000000;
  *(a1 + 848) = 0;
  *(a1 + 879) = 0;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 895) = 0;
  *(a1 + 888) = 0;
  *(a1 + 904) = 0;
  return result;
}

uint64_t sub_19BA1B8A8(uint64_t a1, char ***a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v75 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 208);
  v13 = *(a1 + 216);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    v15 = *(a4 + 8);
    if ((a7 + 40) != a2)
    {
      sub_19BA2EB5C((a7 + 40), *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    v16 = *a4;
    v17 = *(a4 + 16);
    v18 = *(a4 + 48);
    *(a7 + 408) = *(a4 + 32);
    *(a7 + 424) = v18;
    *(a7 + 376) = v16;
    *(a7 + 392) = v17;
    v19 = *(a4 + 64);
    v20 = *(a4 + 80);
    v21 = *(a4 + 112);
    *(a7 + 472) = *(a4 + 96);
    *(a7 + 488) = v21;
    *(a7 + 440) = v19;
    *(a7 + 456) = v20;
    std::string::operator=((a7 + 504), (a4 + 128));
    memcpy((a7 + 528), (a4 + 152), 0x118uLL);
    if (*(a7 + 48) != *(a7 + 40) || ((*(*a1 + 24))(a1, a7) & 1) != 0)
    {
      v22 = *(a1 + 1032);
      v59 = 0;
      v58 = 0uLL;
      v60 = xmmword_19BA89720;
      v61 = 0;
      v62 = 0u;
      v63 = 0u;
      __asm { FMOV            V0.2D, #-1.0 }

      v64 = _Q0;
      v65 = _Q0;
      v66 = _Q0;
      v67 = _Q0;
      v68 = 0xBFF0000000000000;
      v69 = 0;
      v70 = _Q0;
      v71 = _Q0;
      v72 = _Q0;
      v28.n128_f64[0] = sub_19BA16424(&v58, a4, v22);
      *(a7 + 904) = *(a1 + 1032);
      if (a6)
      {
        *(&v65 + 1) = 0xBFF0000000000000;
        *(&v66 + 1) = 0xBFF0000000000000;
      }

      if ((*(*a1 + 40))(a1, a4, a7, a3, v28))
      {
        if (sub_19BA0FCCC(a7, 1, &v58))
        {
          v29 = 0;
          goto LABEL_45;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v37 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v74 = v15;
          _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, update failed", buf, 0xCu);
        }

        v38 = sub_19B87DD40();
        if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1 && !*(v38 + 152))
        {
LABEL_44:
          v29 = 1;
LABEL_45:
          *(a7 + 897) = 0;
          if (!a5)
          {
            goto LABEL_67;
          }

          if (*(a1 + 9) == 1)
          {
            if ((*(*a1 + 104))(a1, a7, a3))
            {
              v40 = *(a1 + 1904);
              v41 = *(a1 + 1912);
              if (v40 != v41)
              {
                v42 = 0;
                while (vabdd_f64(*(v40 + 184), *(a7 + 400)) <= 0.01)
                {
                  v42 |= sub_19BA0FCCC(a7, 2, v40);
                  v40 += 264;
                  if (v40 == v41)
                  {
                    goto LABEL_91;
                  }
                }

                sub_19B9882F8((a1 + 1904));
LABEL_91:
                *(a7 + 897) = v42 & 1;
                if (v42)
                {
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v52 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134349056;
                    v74 = v15;
                    _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,using route hints", buf, 0xCu);
                  }

                  v53 = sub_19B87DD40();
                  if (*(v53 + 160) > 1 || *(v53 + 164) > 1 || *(v53 + 168) > 1 || *(v53 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v56 = 134349056;
                    v57 = v15;
                    v54 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v54);
                    if (v54 != buf)
                    {
                      free(v54);
                    }
                  }
                }

LABEL_67:
                if ((v29 & 1) == 0)
                {
                  v55[0] = v14;
                  v55[1] = v13;
                  if (v13)
                  {
                    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v45 = sub_19BA0FD94(a7, v55, a3);
                  if (v13)
                  {
                    sub_19B8750F8(v13);
                  }

                  if (v45)
                  {
                    goto LABEL_73;
                  }

                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v49 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134349056;
                    v74 = v15;
                    _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, prepareCandidates failed", buf, 0xCu);
                  }

                  v50 = sub_19B87DD40();
                  if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v56 = 134349056;
                    v57 = v15;
                    v51 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v51);
                    if (v51 != buf)
                    {
                      free(v51);
                    }
                  }
                }

                v46 = 1;
                if (!v13)
                {
                  goto LABEL_75;
                }

                goto LABEL_74;
              }
            }

            else
            {
              sub_19B9882F8((a1 + 1904));
            }
          }

          *(a7 + 897) = 0;
          goto LABEL_67;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
LABEL_42:
          v56 = 134349056;
          v57 = v15;
          v39 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }

          goto LABEL_44;
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v35 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v74 = v15;
          _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filterReset, prediction failed", buf, 0xCu);
        }

        v36 = sub_19B87DD40();
        if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
        {
          goto LABEL_44;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_42;
        }
      }

      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      goto LABEL_42;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v43 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v74 = v15;
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unable to initialize filter", buf, 0xCu);
    }

    v44 = sub_19B87DD40();
    if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v58) = 134349056;
      *(&v58 + 4) = v15;
      v34 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v34);
LABEL_63:
      if (v34 != buf)
      {
        free(v34);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a4 + 8);
      *buf = 134349056;
      v74 = v31;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, prepareSolution", buf, 0xCu);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v33 = *(a4 + 8);
      LODWORD(v58) = 134349056;
      *(&v58 + 4) = v33;
      v34 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::prepareSolution(const std::vector<CLParticleMapMatcherCommon::Particle> &, const MMSnapData &, CLMapCrumb &, BOOL, BOOL, MMFilterData &)", "CoreLocation: %s\n", v34);
      goto LABEL_63;
    }
  }

LABEL_73:
  v46 = 0;
  if (v13)
  {
LABEL_74:
    sub_19B8750F8(v13);
  }

LABEL_75:
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}