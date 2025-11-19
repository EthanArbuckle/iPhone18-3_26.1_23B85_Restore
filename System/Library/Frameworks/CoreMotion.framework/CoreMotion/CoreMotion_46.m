void sub_19B67ED18(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v6 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138478339;
      v14 = v5;
      v15 = 1025;
      v16 = v7;
      v17 = 2049;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager setupBIO]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B67F084(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_startOdometryUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, 1);
}

uint64_t sub_19B67F12C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_startOdometryUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, a1[7]);
}

uint64_t sub_19B67FD08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 56) = *(v3 + 168);
  *(v3 + 72) = *(v3 + 184);
  *(v3 + 88) = *(v3 + 200);
  *(v3 + 104) = *(v3 + 216);
  *(v3 + 8) = *(v3 + 120);
  *(v3 + 24) = *(v3 + 136);
  *(v3 + 40) = *(v3 + 152);
  v4 = *(result + 40);
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[5];
  *(v3 + 216) = v4[6];
  *(v3 + 200) = v7;
  *(v3 + 184) = v6;
  *(v3 + 168) = v5;
  v9 = v4[1];
  v8 = v4[2];
  *(v3 + 120) = *v4;
  *(v3 + 136) = v9;
  *(v3 + 152) = v8;
  if (*(v3 + 232) == 1)
  {
    return MEMORY[0x1EEE66B58](*(result + 32), sel_sendOdometryToClientPrivate, a3);
  }

  *(v3 + 232) = 1;
  return result;
}

void sub_19B680ADC(uint64_t a1, CLConnectionMessage **a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v5 = Weak;
    if (Weak[4])
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v11 = objc_msgSend_setWithObjects_(v6, v10, v7, v8, v9, 0);
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11);
      v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMBackgroundInertialOdometry");
      v17 = v14;
      if (v5[6] == 8)
      {
        objc_msgSend_rotateArbitraryToTrueNorth(v14, v15, v16);
      }

      v18 = objc_msgSend_copy(v5[4], v15, v16);
      v19 = v5[5];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_19B680C38;
      v21[3] = &unk_1E7532C30;
      objc_copyWeak(&v22, (a1 + 32));
      v21[4] = v17;
      v21[5] = v18;
      objc_msgSend_addOperationWithBlock_(v19, v20, v21);
      objc_destroyWeak(&v22);
    }
  }
}

void sub_19B680C38(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = *(a1 + 40);
  if (Weak)
  {
    v3[2](v3, *(a1 + 32), 0);
    v3 = *(a1 + 40);
  }
}

void *sub_19B680C94(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 56));
  if (result)
  {
    v3 = result;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v4 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      *buf = 67240192;
      *&buf[4] = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Starting background InertialOdometry updates with reference frame: %{public}d", buf, 8u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v7 = *(a1 + 64);
      LODWORD(v24) = 67240192;
      HIDWORD(v24) = v7;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager startBackgroundUpdatesPrivateUsingReferenceFrame:enableNeuralPDR:toQueue:withHandler:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = v3[4];
    if (v9 != *(a1 + 40))
    {

      v3[4] = objc_msgSend_copy(*(a1 + 40), v10, v11);
    }

    v12 = v3[5];
    if (v12 != *(a1 + 32))
    {

      v3[5] = *(a1 + 32);
    }

    v3[6] = *(a1 + 64);
    v13 = v3[2];
    sub_19B428B50(buf, "PedestrianFence/kCLConnectionMessageBackgroundInertialOdometry");
    v14 = *(a1 + 48);
    CLConnectionClient::setHandlerForMessage();
    if (v26 < 0)
    {
      operator delete(*buf);
    }

    v22[0] = @"kCLConnectionMessageSubscribeKey";
    v22[1] = @"CMPedestrianFenceClientIdentifier";
    v23[0] = MEMORY[0x1E695E118];
    v17 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v15, v16);
    v23[1] = objc_msgSend_processName(v17, v18, v19);
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v23, v22, 2);
    sub_19B68177C();
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B680F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (v24)
  {
    sub_19B41FFEC(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B681088(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v3 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping background InertialOdometry updates", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager stopBackgroundUpdatesPrivate]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    if (v2[4])
    {
      v8 = @"kCLConnectionMessageSubscribeKey";
      v9 = MEMORY[0x1E695E110];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, &v9, &v8, 1);
      sub_19B68177C();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B6812E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  _Unwind_Resume(exception_object);
}

id sub_19B6813D4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v3 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 67240192;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "enableMotionSimulation,%{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v7 = *(a1 + 40);
      v13 = 67240192;
      v14 = v7;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager enableMotionSimulationPrivate:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v11 = @"CMPedestrianFenceEnableMotionSimulation";
    v12 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, *(a1 + 40));
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v12, &v11, 1);
    operator new();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B68169C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

os_log_t sub_19B681704()
{
  result = os_log_create("com.apple.locationd.Motion", "InertialOdometry");
  qword_1EAFE2A90 = result;
  return result;
}

void sub_19B681738(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B681824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

os_log_t sub_19B682A1C()
{
  result = os_log_create("com.apple.locationd.Motion", "HealthColdStorage");
  qword_1EAFE2AB0 = result;
  return result;
}

void sub_19B682B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B682BB0(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
  }

  v14 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Calorie response failed with error %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMNatalimeterInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B682DD8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal init]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B683120(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"CMNatalimetryRecordId";
  v4[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, *(a1 + 48));
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v4, &v3, 1);
  sub_19B686A4C();
}

void sub_19B683260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68328C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleQueryResponse_withHandler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B6832E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B683378(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v8 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEBUG))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      if (!v10)
      {
        v10 = @" ";
      }

      buf = 138413058;
      *buf_4 = v7;
      *&buf_4[8] = 1024;
      *&buf_4[10] = v9;
      v78 = 2112;
      v79 = v10;
      v80 = 2048;
      v81 = v11;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "%@, pid, %d, query since record, %@, %p", &buf, 0x26u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v13 = getpid();
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      if (!v14)
      {
        v14 = @" ";
      }

      *v71 = 138413058;
      *&v71[4] = v7;
      *&v71[12] = 1024;
      *&v71[14] = v13;
      v72 = 2112;
      v73 = v14;
      v74 = 2048;
      v75 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal _queryAbsoluteNatalimetryDataSinceDataRecord:withHandler:]_block_invoke", "CoreLocation: %s\n", v16);
      if (v16 != &buf)
      {
        free(v16);
      }
    }
  }

  started = objc_msgSend_startDate(*(a1 + 32), v5, v6);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v18, v19);
  if (v22 != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v26 = objc_msgSend_startDate(*(a1 + 32), v24, v25);
    objc_msgSend_timeIntervalSinceReferenceDate(v26, v27, v28);
    if (vabdd_f64(Current, v29) > 86400.0)
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v30 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
      {
        v31 = getpid();
        v34 = objc_msgSend_startDate(*(a1 + 32), v32, v33);
        buf = 67109378;
        *buf_4 = v31;
        *&buf_4[4] = 2112;
        *&buf_4[6] = v34;
        _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "Attempting to request data older than 24 hours, pid, %d, startDate %@", &buf, 0x12u);
      }

      v35 = sub_19B420058();
      if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
        }

        v36 = getpid();
        v39 = objc_msgSend_startDate(*(a1 + 32), v37, v38);
        *v71 = 67109378;
        *&v71[4] = v36;
        *&v71[8] = 2112;
        *&v71[10] = v39;
        v40 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMNatalimeterInternal _queryAbsoluteNatalimetryDataSinceDataRecord:withHandler:]_block_invoke", "CoreLocation: %s\n", v40);
        if (v40 != &buf)
        {
          free(v40);
        }
      }
    }
  }

  v69[0] = @"CMNatalimetryNatalieDataStartDate";
  v41 = MEMORY[0x1E696AD98];
  v42 = objc_msgSend_startDate(*(a1 + 32), v20, v21);
  objc_msgSend_timeIntervalSinceReferenceDate(v42, v43, v44);
  v70[0] = objc_msgSend_numberWithDouble_(v41, v45, v46);
  v69[1] = @"CMNatalimetryNatalieDataMets";
  v70[1] = objc_msgSend_mets(*(a1 + 32), v47, v48);
  v69[2] = @"CMNatalimetryNatalieDataNatalies";
  v70[2] = objc_msgSend_natalies(*(a1 + 32), v49, v50);
  v69[3] = @"CMNatalimetryNatalieDataBasalNatalies";
  v70[3] = objc_msgSend_basalNatalies(*(a1 + 32), v51, v52);
  v69[4] = @"CMNatalimetrySessionId";
  v53 = MEMORY[0x1E696AD98];
  v56 = objc_msgSend_activityType(*(a1 + 32), v54, v55);
  v70[4] = objc_msgSend_numberWithInteger_(v53, v57, v56);
  v69[5] = @"CMNatalimetryRecordId";
  v58 = MEMORY[0x1E696AD98];
  v61 = objc_msgSend_recordId(*(a1 + 32), v59, v60);
  v70[5] = objc_msgSend_numberWithInteger_(v58, v62, v61);
  v69[6] = @"CMNatalimetryNatalieDataSourceId";
  v65 = objc_msgSend_sourceId(*(a1 + 32), v63, v64);
  v70[6] = objc_msgSend_UUIDString(v65, v66, v67);
  *v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v68, v70, v69, 7);
  sub_19B686A4C();
}

void sub_19B683994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  if (a42)
  {
    sub_19B41FFEC(a42);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6839C0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleQueryResponse_withHandler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B683A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B683C54(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B683CB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B683D48(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B683E20(uint64_t result)
{
  v1 = result;
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(v2 + 32);
  if (v3 != *(result + 40) || (*(v2 + 24) & 1) == 0)
  {

    *(*(v1 + 32) + 32) = objc_msgSend_copy(*(v1 + 40), v4, v5);
    v6 = *(*(v1 + 32) + 8);
    sub_19B428B50(&__p, "kCLConnectionMessageNatalimetryUpdate");
    v9 = *(v1 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v11 < 0)
    {
      operator delete(__p);
    }

    v12 = @"kCLConnectionMessageSubscribeKey";
    v13[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v13, &v12, 1);
    sub_19B686B90();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B683FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B684010(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B684388;
      block[3] = &unk_1E7532B40;
      block[4] = v6;
      v19 = MEMORY[0x1E69E96A0];
      v20 = block;
      goto LABEL_7;
    }

    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMNatalimetryNatalieData");
    if (v16)
    {
      *(*(a1 + 32) + 24) = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B6843EC;
      v27[3] = &unk_1E7532B90;
      v27[4] = v16;
      v27[5] = v6;
      v19 = MEMORY[0x1E69E96A0];
      v20 = v27;
LABEL_7:
      dispatch_async(v19, v20);
      goto LABEL_8;
    }

    if (v18)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B684464;
      v26[3] = &unk_1E7532C08;
      v22 = *(a1 + 32);
      v26[4] = v18;
      v26[5] = v22;
      v26[6] = v6;
      v19 = MEMORY[0x1E69E96A0];
      v20 = v26;
      goto LABEL_7;
    }

    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v23 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "Error parsing update.", buf, 2u);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMNatalimeterInternal _startAbsoluteNatalimetryDataUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

LABEL_8:
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B684388(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6843EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B684464(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEBUG))
    {
      v7 = getpid();
      v8 = a1[4];
      v9 = a1[5];
      *buf = 138413058;
      v18 = v5;
      v19 = 1024;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2048;
      v24 = v9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "%@, pid, %d, update, %@, %p", buf, 0x26u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      getpid();
      v15 = a1[4];
      v16 = a1[5];
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal _startAbsoluteNatalimetryDataUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = a1[4];
  result = (*(a1[6] + 16))();
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B684738(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  sub_19B428B50(&__p, "kCLConnectionMessageNatalimetryUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 24) && *(v4 + 32))
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10 = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, &v10, &v9, 1);
    sub_19B686B90();
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
  }

  v5 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Error stopping calorie updates, not active clients.", &__p, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNatalimeterInternal _stopAbsoluteNatalimetryDataUpdates]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != &__p)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B6849DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B684E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6851D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_19B6855DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_19B685BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B685D68(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v4, sel__queryAbsoluteNatalimetryDataSinceRecord_withHandler_, v5);
}

uint64_t sub_19B685EF0(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D320 = result;
  return result;
}

uint64_t sub_19B685FF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startAbsoluteNatalimetryDataUpdatesWithHandler_, v5);
}

uint64_t sub_19B6860A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopAbsoluteNatalimetryDataUpdates, v4);
}

os_log_t sub_19B686A1C()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

void *sub_19B686AC0(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686B1C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B686B1C(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B686C04(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686C60((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B686C60(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B686D40(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686D9C((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B686D9C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B686E7C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B686ED8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B686ED8(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B686F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B686F4C(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    IOHIDDeviceClose(v2, 0);
    *(a1 + 8) = 0;
    v2 = *a1;
  }

  return a1;
}

uint64_t sub_19B686F9C()
{
  if (atomic_load_explicit(&qword_1ED71D338, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_1ED71D338, &v4, sub_19B68763C);
  }

  return qword_1ED71D330;
}

void *sub_19B687008(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = (a1 + 32);
  if (*(a1 + 32))
  {
    objc_msgSend_invalidate(*(a1 + 48), a2, a3);

    if (*v4)
    {
      if (*(a1 + 40) == 1)
      {
        IOHIDDeviceClose(*v4, 0);
        *(a1 + 40) = 0;
      }
    }
  }

  sub_19B686F4C(v4);

  return sub_19B674784(a1);
}

void sub_19B687088(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B687008(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6870C0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    if ((*(v1 + 40) & 1) == 0)
    {
      __assert_rtn("lidAngle", "CLLidAngleNotifier.mm", 70, "fIsOpen");
    }

    pReportLength = 5;
    v3 = IOHIDDeviceGetReport(v2, kIOHIDReportTypeInput, 7, &report, &pReportLength);
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = pReportLength == 5;
    }

    if (v5)
    {
      LODWORD(v4) = v13;
      *buf = v4 * 0.01;
      sub_19B4455DC(v1, 0, buf, 8);
    }

    else
    {
      v6 = v3;
      if (qword_1EAFE2AD8 != -1)
      {
        dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
      }

      v7 = qword_1EAFE2AE0;
      if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "std::optional<double> CLLidAngleNotifier::LidAngleSensor::lidAngle() const";
        v19 = 1026;
        v20 = v6;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[LidAngleSensor] %{public}s; reading lid angle sensor failed with status = %{public}d", buf, 0x12u);
      }

      v8 = sub_19B420058();
      if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AD8 != -1)
        {
          dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
        }

        v14 = 136446466;
        v15 = "std::optional<double> CLLidAngleNotifier::LidAngleSensor::lidAngle() const";
        v16 = 1026;
        v17 = v6;
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "std::optional<double> CLLidAngleNotifier::LidAngleSensor::lidAngle() const", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B687330(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = *(a1 + 32);
        if (v5)
        {
          if ((*(a1 + 40) & 1) == 0)
          {
            v6 = IOHIDDeviceOpen(v5, 0);
            *(a1 + 40) = v6 == 0;
            if (v6)
            {
              v8 = v6;
              if (qword_1EAFE2AD8 != -1)
              {
                dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
              }

              v9 = qword_1EAFE2AE0;
              if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "BOOL CLLidAngleNotifier::LidAngleSensor::open()";
                *&buf[12] = 1026;
                *&buf[14] = v8;
                _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[LidAngleSensor] %{public}s; opening lid angle sensor failed with status = %{public}d", buf, 0x12u);
              }

              v10 = sub_19B420058();
              if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2AD8 != -1)
                {
                  dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
                }

                v11 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLLidAngleNotifier::LidAngleSensor::open()", "CoreLocation: %s\n", v11);
                if (v11 != buf)
                {
                  free(v11);
                }
              }
            }

            if (*(a1 + 40) == 1)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = sub_19B6870C0;
              v18 = &unk_1E7534050;
              v19 = a1;
              v12 = objc_msgSend_scheduledTimerWithTimeInterval_repeats_block_(MEMORY[0x1E695DFF0], v7, 1, buf, 0.033);
              *(a1 + 48) = v12;
              v13 = v12;
              objc_msgSend_fire(*(a1 + 48), v14, v15);
            }
          }
        }
      }
    }

    else if (*(a1 + 32))
    {
      objc_msgSend_invalidate(*(a1 + 48), a2, 0);

      v16 = *(a1 + 32);
      if (v16)
      {
        if (*(a1 + 40) == 1)
        {
          IOHIDDeviceClose(v16, 0);
          *(a1 + 40) = 0;
        }
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B68760C()
{
  result = os_log_create("com.apple.locationd.Motion", "DisplayGravity");
  qword_1EAFE2AE0 = result;
  return result;
}

void sub_19B68763C()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
  if (v0)
  {
    v1 = v0;
    v2 = IOHIDManagerOpen(v0, 0);
    if (v2)
    {
      v3 = v2;
      if (qword_1EAFE2AD8 != -1)
      {
        dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
      }

      v4 = qword_1EAFE2AE0;
      if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_ERROR))
      {
        buf = 136446466;
        buf_4 = "IOHIDDeviceRef lidAngleSensorDevice()";
        v14 = 1026;
        v15 = v3;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[LidAngleSensor] %{public}s; opening HID manager failed with status = %{public}d", &buf, 0x12u);
      }

      v5 = sub_19B420058();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2AD8 != -1)
        {
          dispatch_once(&qword_1EAFE2AD8, &unk_1F0E29700);
        }

        v6 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "IOHIDDeviceRef lidAngleSensorDevice()", "CoreLocation: %s\n", v6);
        if (v6 != &buf)
        {
          free(v6);
        }
      }

      CFRelease(v1);
    }

    else
    {
      IOHIDManagerSetDeviceMatching(v1, &unk_1F0E6A408);
      v7 = IOHIDManagerCopyDevices(v1);
      v10 = objc_msgSend_anyObject(v7, v8, v9);
      IOHIDManagerClose(v1, 0);
      CFRelease(v1);

      if (v10)
      {
        operator new();
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B68791C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B686F4C(va);
  MEMORY[0x19EAE76F0](v7, v8);
  _Unwind_Resume(a1);
}

void sub_19B68794C()
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = xmmword_19B7BB4A0;
  v13 = unk_19B7BB4B0;
  v14 = xmmword_19B7BB4C0;
  v8 = xmmword_19B7BB460;
  v9 = unk_19B7BB470;
  v10 = xmmword_19B7BB480;
  v11 = unk_19B7BB490;
  v4 = xmmword_19B7BB420;
  v5 = unk_19B7BB430;
  v6 = xmmword_19B7BB440;
  v7 = unk_19B7BB450;
  v0 = xmmword_19B7BB3E0;
  v1 = unk_19B7BB3F0;
  v2 = xmmword_19B7BB400;
  v3 = unk_19B7BB410;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_19B68882C();
}

void sub_19B687C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B688964(va);
  v5 = (v3 - 112);
  v6 = -72;
  while (1)
  {
    v7 = *(v5 - 1);
    if (v7)
    {
      *v5 = v7;
      operator delete(v7);
    }

    v5 -= 3;
    v6 += 24;
    if (!v6)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_19B687CD0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[1] != *a1)
  {
    for (i = 0; 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v6) >> 3) > i; ++i)
    {
      v5 = sub_19B687E94(i);
      v6 = *a1;
      if (*(*a1 + 24 * i + 8) == *(*a1 + 24 * i))
      {
        continue;
      }

      v7 = v5;
      v8 = 0;
      do
      {
        v9 = sub_19B688064(v8);
        v10 = v9;
        v11 = 0;
        v12 = HIDWORD(v9);
        v13 = (*(*a1 + 24 * i) + 48 * v8);
        do
        {
          v14 = dword_19B7BB6B0[v11];
          v15 = v13[3];
          v16 = 0;
          if (v14 > 1)
          {
            v17 = v13[4];
            if (v14 == 2)
            {
              v18 = v13[4];
              v17 = v13[3];
            }

            else
            {
              v19 = 0;
              if (v14 != 3)
              {
                goto LABEL_16;
              }

              v18 = v13[5];
            }

            goto LABEL_15;
          }

          v17 = v13[2];
          if (!v14)
          {
            v18 = v13[2];
            v17 = *v13;
LABEL_15:
            v16 = v17;
            v19 = v18;
            goto LABEL_16;
          }

          v18 = v13[3];
          v19 = 0;
          if (v14 == 1)
          {
            goto LABEL_15;
          }

LABEL_16:
          *&v20 = __PAIR64__(v10, v7);
          *(&v20 + 1) = __PAIR64__(v14, v12);
          v21 = v16;
          v22 = v19;
          sub_19B688250(a2, &v20);
          ++v11;
        }

        while (v11 != 4);
        ++v8;
        v6 = *a1;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 24 * i + 8) - *(*a1 + 24 * i)) >> 4) > v8);
    }
  }
}

void sub_19B687E70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B687E94(unsigned int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 >= 3)
  {
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
    }

    v3 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
    {
      *buf = 67174657;
      v8 = a1;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "VO2MaxClassifier: Invalid biologicalSex index %{private}d", buf, 8u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static CLHKBiologicalSex CLVO2MaxClassifier::getBiologicalSexFromIndex(int)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    result = 0;
  }

  else
  {
    result = a1 + 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B688064(unsigned int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
    }

    v4 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v10 = a1;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Invalid age index: %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static std::pair<int, int> CLVO2MaxClassifier::getAgeRangeFromIndex(int)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 10 * a1 + 20;
    v3 = qword_19B7BB6C0[a1];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3 | v2;
}

void sub_19B688250(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_19B6888E4();
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
      sub_19B688A10(a1, v11);
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

void sub_19B688328(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2 >= 4)
  {

    sub_19B6884B8(a3);
  }

  else
  {
    v6 = dword_19B7BB6F0[a2];
    v7 = sub_19B6884B8(a3);
    if (v7 != -1)
    {
      v8 = v7;
      v9 = sub_19B687E94(v6);
      v10 = sub_19B688064(v8);
      v11 = v10;
      v12 = 0;
      v13 = HIDWORD(v10);
      v14 = (*(*a1 + 24 * v6) + 48 * v8);
      while (1)
      {
        v15 = dword_19B7BB6B0[v12];
        v16 = v14[3];
        v17 = 0;
        if (v15 <= 1)
        {
          v18 = v14[2];
          if (v15)
          {
            v19 = v14[3];
            v20 = 0;
            if (v15 != 1)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v19 = v14[2];
            v18 = *v14;
          }

          goto LABEL_13;
        }

        v18 = v14[4];
        if (v15 == 2)
        {
          break;
        }

        v20 = 0;
        if (v15 == 3)
        {
          v19 = v14[5];
LABEL_13:
          v17 = v18;
          v20 = v19;
        }

LABEL_14:
        *&v21 = __PAIR64__(v11, v9);
        *(&v21 + 1) = __PAIR64__(v15, v13);
        v22 = v17;
        v23 = v20;
        sub_19B688250(a4, &v21);
        if (++v12 == 4)
        {
          return;
        }
      }

      v19 = v14[4];
      v18 = v14[3];
      goto LABEL_13;
    }
  }
}

void sub_19B68849C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6884B8(unsigned int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 - 20 >= 0xB5)
  {
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
    }

    v6 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174657;
      v11 = a1;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter in getIndexFromAge: %{private}d", buf, 8u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E29720);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static int CLVO2MaxClassifier::getIndexFromAge(int)", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    if (a1 < 0x3C)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    if (a1 >= 0x32)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    if (a1 >= 0x28)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }

    if (a1 >= 0x1E)
    {
      result = v4;
    }

    else
    {
      result = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6886B4@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2 >= 4)
  {

    return sub_19B6884B8(a3);
  }

  else
  {
    v8 = dword_19B7BB6F0[a2];
    result = sub_19B6884B8(a3);
    if (result != -1)
    {
      v10 = result;
      sub_19B687E94(v8);
      sub_19B688064(v10);
      v11 = 0;
      v12 = (*(*a1 + 24 * v8) + 48 * v10);
      v13 = *v12;
      v14 = *(v12 + 2);
      v15 = *(v12 + 3);
      v16 = *(v12 + 4);
      while (1)
      {
        v17 = dword_19B7BB6B0[v11];
        if (v17 > 1)
        {
          v18 = v12[4];
          v22 = *(v12 + 3);
          if (v17 != 2)
          {
            v21 = 0.0;
            if (v17 != 3)
            {
              goto LABEL_12;
            }

            v18 = v12[5];
            v23 = *(v12 + 4);
          }
        }

        else
        {
          v18 = v12[2];
          v19 = *v12;
          if (v17)
          {
            v18 = v12[3];
            v20 = *(v12 + 2);
            v21 = 0.0;
            if (v17 != 1)
            {
              goto LABEL_12;
            }
          }
        }

        v21 = v18;
LABEL_12:
        if (v21 > a5 || v11++ == 3)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

void sub_19B6888C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6888FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

void sub_19B688964(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B6889B8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B6889B8(uint64_t *a1)
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

void sub_19B688A10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_19B4C5080();
}

os_log_t sub_19B688A58()
{
  result = os_log_create("com.apple.locationd.Motion", "Health");
  qword_1EAFE2A00 = result;
  return result;
}

float32x2_t sub_19B688A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = v2 + v2;
  v4 = v3;
  *&v2 = v2 * v4;
  v5 = *&v2;
  v6 = *a2 * v4;
  v7 = *(a2 + 8);
  v8 = vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v7, v7)));
  v9 = vmulq_f64(v7, v8);
  v10 = v9.f64[0];
  *v9.f64 = v9.f64[1];
  v9.f64[0] = *v9.f64;
  v11 = 1.0 - v9.f64[0] - v5;
  v12 = 1.0 - v10;
  *&v5 = v12 - v5;
  *v9.f64 = v12 - v9.f64[0];
  v13 = vrev64_s32(vcvt_f32_f64(vmulq_n_f64(v7, v4)));
  v14 = vcvt_f32_f64(vmulq_n_f64(v8, *a2));
  v15 = vsub_f32(v13, v14);
  *(a1 + 28) = v15.i32[0];
  *(a1 + 32) = LODWORD(v9.f64[0]);
  *v7.f64 = vmuld_lane_f64(v7.f64[0], v8, 1);
  *(a1 + 12) = *v7.f64 - v6;
  *(a1 + 16) = LODWORD(v5);
  *a1 = v11;
  *(a1 + 4) = *v7.f64 + v6;
  *(a1 + 8) = v15.i32[1];
  result = vadd_f32(v13, v14);
  *(a1 + 20) = result;
  return result;
}

double sub_19B688C20(double *a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v2 + v2;
  v5 = v3 + v3;
  v6 = a2[2];
  v7 = v6 + v6;
  v8 = v3 * (v3 + v3);
  v9 = v6 * (v6 + v6);
  *a1 = 1.0 - v8 - v9;
  v10 = 1.0 - v2 * (v2 + v2);
  a1[4] = v10 - v9;
  a1[8] = v10 - v8;
  v11 = v7 * a2[1];
  v12 = v4 * a2[3];
  a1[7] = v11 - v12;
  a1[5] = v11 + v12;
  v13 = v5 * *a2;
  v14 = v7 * a2[3];
  a1[3] = v13 - v14;
  a1[1] = v13 + v14;
  v15 = v7 * *a2;
  v16 = v5 * a2[3];
  a1[2] = v15 - v16;
  result = v15 + v16;
  a1[6] = result;
  return result;
}

void sub_19B688CC8(uint64_t a1, float a2, double a3)
{
  if (a3 >= 0.0)
  {
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v4;
    v24 = *(a1 + 24) + *(a1 + 24);
    v23 = *a1;
    v22 = -*a1;
    v9 = __sincos_stret(a2 * -0.5 * 0.0174532924);
    cosval = v9.__cosval;
    _Q1 = *(a1 + 8);
    _Q2 = vaddq_f64(_Q1, _Q1);
    _Q4.f64[0] = v22;
    _Q4.f64[1] = v23;
    v13 = vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vextq_s8(_Q2, _Q2, 8uLL), _Q4), _Q1, v24));
    _Q2.i64[0] = _Q2.i64[1];
    __asm { FMLS            D4, D2, V1.D[1] }

    *_Q1.f64 = _Q4.f64[0];
    v27 = vmulq_n_f64(vcvtq_f64_f32(v13), v9.__sinval);
    v28 = v9.__sinval * *_Q1.f64;
    sub_19B43F1C8(v25, &cosval, a1);
    v18 = v25[1];
    *a1 = v25[0];
    *(a1 + 16) = v18;
    v19 = *(a1 + 76);
    if (v19 >= 0.0)
    {
      v20 = v19 + a2;
      *(a1 + 76) = v20;
      v21 = 360.0;
      if (v20 >= 360.0)
      {
        v21 = -360.0;
      }

      else if (v20 >= 0.0)
      {
        return;
      }

      *(a1 + 76) = v20 + v21;
    }
  }
}

double sub_19B688DEC(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0.0;
  a1[2] = 0.0;
  v4 = a1 + 2;
  a1[3] = 0.0;
  v5 = a1 + 3;
  *a1 = 1.0;
  v6 = *a2;
  v7 = *(a3 + 4);
  v8 = *(a4 + 8);
  if (*a2 <= v7 || v6 <= v8)
  {
    if (v7 <= v6 || v7 <= v8)
    {
      v11 = sqrt(v8 + 1.0 - v6 - v7);
      result = v11 + v11;
      v13.i32[1] = 1037794527;
      if (result <= 1.0e-10)
      {
        return result;
      }

      v13.i32[0] = *a3;
      a1[3] = result * 0.25;
      v14 = *(a2 + 4);
      v15.i32[0] = vsub_f32(v13, v14).u32[0];
      v13.i32[1] = *a4;
      v15.i32[1] = vadd_f32(v13, v14).i32[1];
      *a1 = vdivq_f64(vcvtq_f64_f32(v15), vdupq_lane_s64(*&result, 0));
      v16 = a3 + 8;
      a3 = a4 + 4;
      a4 = v16;
      v5 = v4;
    }

    else
    {
      v18 = sqrt(v7 + 1.0 - v8 - v6);
      result = v18 + v18;
      if (result <= 1.0e-10)
      {
        return result;
      }

      v19 = *(a4 + 4);
      *a1 = (*(a2 + 8) - *a4) / result;
      v20 = (*(a3 + 8) + v19) / result;
      a1[2] = result * 0.25;
      a1[3] = v20;
      a4 = a2 + 4;
      v5 = a1 + 1;
    }
  }

  else
  {
    v17 = sqrt(v6 + 1.0 - v7 - v8);
    result = v17 + v17;
    if (result <= 1.0e-10)
    {
      return result;
    }

    *a1 = (*(a4 + 4) - *(a3 + 8)) / result;
    a1[1] = result * 0.25;
    a1[2] = (*(a2 + 4) + *a3) / result;
    a3 = a2 + 8;
  }

  result = (*a4 + *a3) / result;
  *v5 = result;
  return result;
}

std::string *sub_19B688FAC@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result < 0x8000)
  {
    if (result > 127)
    {
      if (result > 4127)
      {
        if (result >= 12288)
        {
          if (result == 12288)
          {
            v3 = 17;
            *(a2 + 23) = 17;
            *(a2 + 16) = 114;
            v5 = "kTypeDrivingOther";
          }

          else
          {
            if (result != 0x4000)
            {
              goto LABEL_87;
            }

            v3 = 19;
            *(a2 + 23) = 19;
            *(a2 + 15) = 1684370542;
            v5 = "kTypeDrivingMounted";
          }
        }

        else
        {
          if (result == 4128)
          {
            v7 = "kTypeDrivingOrWalkingSlow";
            return sub_19B432174(a2, v7, 0x19uLL);
          }

          if (result != 0x2000)
          {
            goto LABEL_87;
          }

          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1684955464;
          v5 = "kTypeVehicularInHand";
        }

        goto LABEL_84;
      }

      if (result > 511)
      {
        if (result == 512)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1667855457;
          v5 = "kTypeInVehicleStatic";
          goto LABEL_84;
        }

        if (result == 4096)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289206;
          v4 = "kTypeDriving";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 128)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289196;
          v4 = "kTypeCycling";
          goto LABEL_75;
        }

        if (result == 256)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1852144239;
          v5 = "kTypeInVehicleFrozen";
          goto LABEL_84;
        }
      }
    }

    else if (result > 11)
    {
      if (result > 31)
      {
        if (result == 32)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeWalkingSlow";
          goto LABEL_84;
        }

        if (result == 64)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289198;
          v4 = "kTypeRunning";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 12)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 2037539182;
          v5 = "kTypeSemiStationary";
          goto LABEL_84;
        }

        if (result == 16)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289195;
          v4 = "kTypeWalking";
          goto LABEL_75;
        }
      }
    }

    else if (result > 1)
    {
      if (result == 2)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1667855457;
        v4 = "kTypeStatic";
        goto LABEL_75;
      }

      if (result == 4)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1735289206;
        v4 = "kTypeMoving";
        goto LABEL_75;
      }
    }

    else
    {
      if (!result)
      {
        v3 = 12;
        *(a2 + 23) = 12;
        *(a2 + 8) = 1853321070;
        v4 = "kTypeUnknown";
        goto LABEL_75;
      }

      if (result == 1)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1852144239;
        v4 = "kTypeFrozen";
        goto LABEL_75;
      }
    }

LABEL_87:
    v3 = 5;
    *(a2 + 23) = 5;
    *a2 = 1330795077;
    *(a2 + 4) = 82;
    goto LABEL_85;
  }

  if (result < 528384)
  {
    if (result > 262271)
    {
      if (result >= 397312)
      {
        if (result == 397312)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeDrivingSeat";
          goto LABEL_84;
        }

        if (result != 462848)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeDrivingArm";
        goto LABEL_81;
      }

      if (result == 262272)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingArm";
        goto LABEL_81;
      }

      if (result != 327808)
      {
        goto LABEL_87;
      }

      v3 = 17;
      *(a2 + 23) = 17;
      *(a2 + 16) = 111;
      v5 = "kTypeCyclingTorso";
    }

    else
    {
      if (result > 131199)
      {
        if (result == 131200)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 1936290675;
          v5 = "kTypeCyclingChassis";
          goto LABEL_84;
        }

        if (result != 196608)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingLeg";
        goto LABEL_81;
      }

      if (result == 0x8000)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeMotorcycle";
        goto LABEL_81;
      }

      if (result != 65664)
      {
        goto LABEL_87;
      }

      v3 = 16;
      *(a2 + 23) = 16;
      v5 = "kTypeCyclingSeat";
    }

LABEL_84:
    *a2 = *v5;
    goto LABEL_85;
  }

  if (result <= 786447)
  {
    if (result > 655423)
    {
      if (result == 655424)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeRunningArm";
      }

      else
      {
        if (result != 720912)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeWalkingLeg";
      }

      goto LABEL_81;
    }

    if (result != 528384)
    {
      if (result != 589888)
      {
        goto LABEL_87;
      }

      v3 = 15;
      *(a2 + 23) = 15;
      v6 = "kTypeRunningLeg";
      goto LABEL_81;
    }

    v3 = 18;
    *(a2 + 23) = 18;
    *(a2 + 16) = 25701;
    v5 = "kTypeDrivingStowed";
    goto LABEL_84;
  }

  if (result <= 917515)
  {
    if (result != 786448)
    {
      if (result != 851980)
      {
        goto LABEL_87;
      }

      v7 = "kTypeSemiStationaryPocket";
      return sub_19B432174(a2, v7, 0x19uLL);
    }

    v3 = 15;
    *(a2 + 23) = 15;
    v6 = "kTypeWalkingArm";
LABEL_81:
    *a2 = *v6;
    *(a2 + 7) = *(v6 + 7);
    goto LABEL_85;
  }

  if (result == 917516)
  {
    v3 = 22;
    *(a2 + 23) = 22;
    qmemcpy(a2, "kTypeSemiStationaryArm", 22);
    goto LABEL_85;
  }

  if (result == 0x100000)
  {
    v3 = 19;
    *(a2 + 23) = 19;
    *(a2 + 15) = 1953853291;
    v5 = "kTypeMachineWorkout";
    goto LABEL_84;
  }

  if (result != 0x200000)
  {
    goto LABEL_87;
  }

  v3 = 12;
  *(a2 + 23) = 12;
  *(a2 + 8) = 1953853291;
  v4 = "kTypeWorkout";
LABEL_75:
  *a2 = *v4;
LABEL_85:
  *(a2 + v3) = 0;
  return result;
}

void sub_19B689580(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B68959C(uint64_t a1)
{
  *a1 = &unk_1F0E318B8;
  sub_19B689610(a1, 0, 0);
  dispatch_release(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B740058(a1);
}

uint64_t sub_19B689610(uint64_t a1, FILE *a2, char a3)
{
  v6 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v7 = v6[18];
  if (v7 != a2)
  {
    *(a1 + 184) = a2;
    if (v7 && *(a1 + 156) == 1)
    {
      fclose(v7);
    }

    *(a1 + 156) = a3;
  }

  return (*(*v6 + 24))(v6);
}

void sub_19B6896C4(uint64_t a1)
{
  sub_19B68959C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6896FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  sub_19B6897D0(a1, "Generic", 0, 2, "void CLLog::logHeader()", "%s\n", &a9);
  return (*(*v10 + 24))(v10);
}

void sub_19B6897BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6897D0(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, const char *a6, va_list a7, ...)
{
  v81 = *MEMORY[0x1E69E9840];
  v13 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  v14 = vsnprintf(__str, 0x1FFuLL, a6, a7);
  if ((v14 & 0x80000000) == 0)
  {
    if (v14 >= 0x1FF)
    {
      operator new[]();
    }

    v15 = v14 - 1;
    if (__str[v15] != 10)
    {
      __assert_rtn("vlog", "CLLog.mm", 173, "'\\n' == buffer[fullContentLength - 1]");
    }

    if (v14 >= 2)
    {
      v15 = v15;
      v16 = __str;
      do
      {
        if (*v16 == 10)
        {
          *v16 = 32;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 152) == 1)
    {
      v18 = *(a1 + 200);
      v19 = sub_19B6BB7A8(a4);
      fprintf(v18, "%s,%s,Time,%08.3f,Function,%s,", v19, a2, Current, a5);
      fputs(__str, *(a1 + 200));
    }

    else
    {
      v20 = *(a1 + 184);
      if (v20 && *(a1 + 160) >= a4)
      {
        v21 = sub_19B6BB7A8(a4);
        fprintf(v20, "%s,%s,Time,%08.3f,Function,%s,", v21, a2, Current, a5);
        fputs(__str, *(a1 + 184));
        if (*(a1 + 172) >= a4)
        {
          sub_19B68A3E8(a1, 3, *(a1 + 184));
        }

        v51[1] = v13;
        (*(*v13 + 16))(v13);
        v52 = 256;
        if (*(a1 + 12) >= 1)
        {
          v22 = *(a1 + 184);
          if (v22)
          {
            v23 = *(a1 + 151);
            if (v23 < 0)
            {
              v23 = *(a1 + 136);
            }

            if (v23)
            {
              v24 = *(a1 + 79);
              if (v24 < 0)
              {
                v24 = *(a1 + 64);
              }

              if (v24)
              {
                v51[0] = 0;
                fgetpos(v22, v51);
                if (v51[0] >= *(a1 + 12))
                {
                  v78 = v13;
                  (*(*v13 + 16))(v13);
                  v79 = 256;
                  sub_19B428B50(__p, ".log");
                  v27 = sub_19B740A34(a1, v25, v26);
                  sub_19B7405F4((a1 + 56), a1 + 80, __p, v27, &v77);
                  if (SHIBYTE(v54) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v77.__r_.__value_.__l.__size_;
                  }

                  v29 = &v75;
                  sub_19B50FF5C(&v75, size + 4);
                  if (v76 < 0)
                  {
                    v29 = v75;
                  }

                  if (size)
                  {
                    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v30 = &v77;
                    }

                    else
                    {
                      v30 = v77.__r_.__value_.__r.__words[0];
                    }

                    memmove(v29, v30, size);
                  }

                  strcpy(v29 + size, ".bz2");
                  sub_19B68B2AC(a1);
                  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v31 = &v77;
                  }

                  else
                  {
                    v31 = v77.__r_.__value_.__r.__words[0];
                  }

                  v32 = getuid();
                  v33 = getgid();
                  sub_19B5E3290(v31, v32, v33);
                  v35 = (a1 + 128);
                  v36 = (a1 + 128);
                  if (*(a1 + 151) < 0)
                  {
                    v36 = *v35;
                  }

                  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v37 = &v77;
                  }

                  else
                  {
                    v37 = v77.__r_.__value_.__r.__words[0];
                  }

                  rename(v36, v37, v34);
                  if (v38)
                  {
                    v39 = SHIBYTE(v76);
                    v40 = v75;
                    v41 = __error();
                    v42 = &v75;
                    if (v39 < 0)
                    {
                      v42 = v40;
                    }

                    syslog(3, "%s,%s,Failed to move aside log file %s (%d)\n", "ERROR", "CLLog", v42, *v41);
                  }

                  if (*(a1 + 151) < 0)
                  {
                    v35 = *v35;
                  }

                  sub_19B68AC64(a1, v35);
                  if (*(a1 + 103) < 0)
                  {
                    sub_19B4C5138(&__dst, *(a1 + 80), *(a1 + 88));
                  }

                  else
                  {
                    __dst = *(a1 + 80);
                    v74 = *(a1 + 96);
                  }

                  if (*(a1 + 79) < 0)
                  {
                    sub_19B4C5138(&v71, *(a1 + 56), *(a1 + 64));
                  }

                  else
                  {
                    v71 = *(a1 + 56);
                    v72 = *(a1 + 72);
                  }

                  v43 = *(a1 + 16);
                  v69[0] = 0;
                  v69[1] = v69;
                  v69[2] = 0x2020000000;
                  v70 = 0;
                  v63[0] = MEMORY[0x1E69E9820];
                  v63[1] = 3321888768;
                  v63[2] = sub_19B68B32C;
                  v63[3] = &unk_1F0E2A938;
                  v63[5] = a1;
                  if (SHIBYTE(v74) < 0)
                  {
                    sub_19B4C5138(&v64, __dst, *(&__dst + 1));
                  }

                  else
                  {
                    v64 = __dst;
                    v65 = v74;
                  }

                  v63[4] = v69;
                  v68 = v43;
                  if (SHIBYTE(v72) < 0)
                  {
                    sub_19B4C5138(&v66, v71, *(&v71 + 1));
                  }

                  else
                  {
                    v66 = v71;
                    v67 = v72;
                  }

                  v44 = *(a1 + 208);
                  __p[0] = MEMORY[0x1E69E9820];
                  __p[1] = 3321888768;
                  v54 = sub_19B68B704;
                  v55 = &unk_1F0E2A900;
                  v62 = v43;
                  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_19B4C5138(&v57, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v57 = v77;
                  }

                  if (SHIBYTE(v76) < 0)
                  {
                    sub_19B4C5138(&v58, v75, *(&v75 + 1));
                  }

                  else
                  {
                    v58 = v75;
                    v59 = v76;
                  }

                  if (SHIBYTE(v72) < 0)
                  {
                    sub_19B4C5138(&v60, v71, *(&v71 + 1));
                  }

                  else
                  {
                    v60 = v71;
                    v61 = v72;
                  }

                  v56 = v63;
                  dispatch_async(v44, __p);
                  if (SHIBYTE(v61) < 0)
                  {
                    operator delete(v60);
                  }

                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(v58);
                  }

                  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v57.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v67) < 0)
                  {
                    operator delete(v66);
                  }

                  if (SHIBYTE(v65) < 0)
                  {
                    operator delete(v64);
                  }

                  _Block_object_dispose(v69, 8);
                  if (SHIBYTE(v72) < 0)
                  {
                    operator delete(v71);
                  }

                  if (SHIBYTE(v74) < 0)
                  {
                    operator delete(__dst);
                  }

                  if (SHIBYTE(v76) < 0)
                  {
                    operator delete(v75);
                  }

                  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v77.__r_.__value_.__l.__data_);
                  }

                  (*(*v13 + 24))(v13);
                }
              }
            }
          }
        }

        (*(*v13 + 24))(v13);
      }

      v45 = *(a1 + 192);
      if (v45 && *(a1 + 164) >= a4)
      {
        v46 = sub_19B6BB7A8(a4);
        fprintf(v45, "%s,%s,Time,%08.3f,", v46, a2, Current);
        fputs(__str, *(a1 + 192));
      }

      if ((!a3 || *(a1 + 176)) && *(a1 + 168) >= a4)
      {
        if (a4)
        {
          v47 = 5;
        }

        else
        {
          v47 = 3;
        }

        syslog(v47, "%s", __str);
      }
    }
  }

  result = (*(*v13 + 24))(v13);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B68A018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Block_object_dispose(&a63, 8);
  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  sub_19B5C6074(&a79);
  sub_19B5C6074(&a20);
  if (v79)
  {
    MEMORY[0x19EAE76D0](v79, 0x1000C8077774924);
  }

  sub_19B5C6074(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_19B68A174(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, char *__src, va_list a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = strncpy(__dst, __src, 0x65CuLL);
  sub_19B68A22C(v13, __dst);
  result = sub_19B6897D0(a1, a2, a3, a4, a5, __dst, a7);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B68A22C(int a1, char *__s)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = strlen(__s);
  if (v3 < 1)
  {
LABEL_18:
    result = 1;
    goto LABEL_23;
  }

  v4 = &__s[v3];
  v5 = __s;
  while (1)
  {
    if (*v5 != 37)
    {
      v11 = v5;
      goto LABEL_17;
    }

    v6 = v5 + 1;
    v7 = v5[1];
    if (v7 == 123)
    {
      break;
    }

LABEL_10:
    v11 = v5 + 1;
    v12 = v5 + 1;
    if (v7 != 64)
    {
      if (v7 != 46)
      {
        goto LABEL_17;
      }

      if (v5[2] != 42)
      {
        goto LABEL_17;
      }

      v12 = v5 + 3;
      if (v5[3] != 80)
      {
        goto LABEL_17;
      }

      *(v5 + 1) = 9572;
    }

    *v12 = 112;
LABEL_17:
    v5 = v11 + 1;
    if (v11 + 1 >= v4)
    {
      goto LABEL_18;
    }
  }

  if (v6 != v4)
  {
    v8 = 0;
    while (1)
    {
      v9 = &v5[v8 + 2];
      if (v9 == v4)
      {
        break;
      }

      ++v8;
      if (*v9 == 125)
      {
        v10 = &v5[v8];
        memmove(v5, v6, v8 + 1);
        *++v10 = 37;
        v7 = v10[1];
        v5 = v10;
        goto LABEL_10;
      }
    }
  }

  if (qword_1ED71C7F8 != -1)
  {
    dispatch_once(&qword_1ED71C7F8, &unk_1F0E27E00);
  }

  v14 = qword_1ED71C7F0;
  result = os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v16 = 136446210;
    v17 = __s;
    _os_log_error_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Failed parse os_log format specifier for shimming:missing closing brace,format,%{public}s", &v16, 0xCu);
    result = 0;
  }

LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B68A3E8(uint64_t a1, int a2, FILE *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v16 = a1 + 40;
  (*(v5 + 16))(a1 + 40);
  v17 = 256;
  CFAbsoluteTimeGetCurrent();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  v7 = backtrace(v18, 128);
  v8 = a2 + 1;
  if (a2 + 1 < v7)
  {
    v9 = &v18[v8];
    do
    {
      if (dladdr(*v9, &v15))
      {
        if (v15.dli_sname)
        {
          basename(v15.dli_fname);
          v10 = *v9;
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx %s + %lu\n", "STATUS");
        }

        else
        {
          basename(v15.dli_fname);
          v12 = *v9;
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx 0x%08lx + %lu\n", "STATUS");
        }
      }

      else
      {
        v11 = *v9;
        fprintf(a3, "%s,%s,Time,%08.3f,%d\t0x%08lx\n");
      }

      ++v8;
      ++v9;
    }

    while (v7 != v8);
  }

  result = (*(*v6 + 24))(v6);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B68A610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_19B45E110(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68A63C(uint64_t a1, const char *a2, uint64_t a3)
{
  v40[2] = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 48) + 64), a2, a3);
  pthread_self();
  sub_19B438CCC(*(a1 + 24), "ShowError", (a1 + 154));
  sub_19B438CCC(*(a1 + 24), "LogShowUI", (a1 + 155));
  sub_19B432FD8(*(a1 + 24), "LogFileLevel", (a1 + 160));
  sub_19B432FD8(*(a1 + 24), "LogBufferLevel", (a1 + 164));
  sub_19B432FD8(*(a1 + 24), "LogConsoleLevel", (a1 + 168));
  sub_19B432FD8(*(a1 + 24), "LogStackLevel", (a1 + 172));
  sub_19B5EC788(*(a1 + 24), "LogFileDirectory", (a1 + 56));
  sub_19B5EC788(*(a1 + 24), "LogFilePrefix", (a1 + 80));
  sub_19B438CCC(*(a1 + 24), "LogFileFlush", (a1 + 157));
  sub_19B438CCC(*(a1 + 24), "LogFence", (a1 + 153));
  v39 = 0;
  sub_19B432FD8(*(a1 + 24), "LogBufferSize", &v39);
  if ((*(a1 + 160) & 0x80000000) != 0)
  {
    sub_19B689610(a1, 0, 0);
    goto LABEL_75;
  }

  v4 = *(a1 + 184);
  memset(&__p, 0, sizeof(__p));
  if (!sub_19B5EC788(*(a1 + 24), "LogFile", &__p))
  {
    goto LABEL_6;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_6:
    v6 = *(a1 + 79);
    if (v6 < 0)
    {
      if (!*(a1 + 64))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 79))
    {
      goto LABEL_43;
    }

    if ((*(a1 + 103) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 103))
    {
      goto LABEL_43;
    }

    if (v6 >= 0)
    {
      v7 = *(a1 + 79);
    }

    else
    {
      v7 = *(a1 + 64);
    }

    v8 = &v36;
    sub_19B50FF5C(&v36, v7 + 1);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v36.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 79) >= 0)
      {
        v9 = (a1 + 56);
      }

      else
      {
        v9 = *(a1 + 56);
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 47;
    v10 = *(a1 + 103);
    if (v10 >= 0)
    {
      v11 = (a1 + 80);
    }

    else
    {
      v11 = *(a1 + 80);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 103);
    }

    else
    {
      v12 = *(a1 + 88);
    }

    v13 = std::string::append(&v36, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = *(a1 + 127);
    if (v15 >= 0)
    {
      v16 = (a1 + 104);
    }

    else
    {
      v16 = *(a1 + 104);
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 127);
    }

    else
    {
      v17 = *(a1 + 112);
    }

    v18 = std::string::append(&v37, v16, v17);
    v19 = v18->__r_.__value_.__r.__words[0];
    v40[0] = v18->__r_.__value_.__l.__size_;
    *(v40 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v19;
    __p.__r_.__value_.__l.__size_ = v40[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v40 + 7);
    *(&__p.__r_.__value_.__s + 23) = v20;
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  if (v22)
  {
    if (v4)
    {
      v23 = *(a1 + 151);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(a1 + 136);
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      if (v22 == v23)
      {
        v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v27 = v24 >= 0 ? (a1 + 128) : *(a1 + 128);
        if (!memcmp(v26, v27, v22))
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v25 = __p.__r_.__value_.__r.__words[0];
    }

    if (v21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v25;
    }

    sub_19B68AC64(a1, p_p);
    if (!v4)
    {
      v29 = *(a1 + 216);
      if (v29)
      {
        sub_19B68E894(v29, *(a1 + 184));
      }
    }

LABEL_67:
    sub_19B68B20C(a1, *(a1 + 157));
    v30 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 157))
    {
      v31 = " and flushing immediately";
    }

    else
    {
      v31 = " no flush";
    }

    syslog(5, "%s,%s,logging locations to %s%s\n", "NOTICE", "CLLog", v30, v31);
    goto LABEL_73;
  }

  sub_19B689610(a1, 0, 0);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_75:
  if ((*(a1 + 164) & 0x80000000) != 0 || (v32 = v39, v39 < 1))
  {
    v34 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v34)
    {
      sub_19B41FFEC(v34);
    }

    *(a1 + 192) = 0;
  }

  else
  {
    if (v39 > 0xA00000)
    {
      v32 = 10485760;
      v39 = 10485760;
    }

    v33 = *(a1 + 216);
    if (!v33 || *(v33 + 16) != v32)
    {
      operator new();
    }

    *(a1 + 192) = sub_19B68E620(v33);
    syslog(5, "%s,%s,logging locations to an internal buffer with capacity %d\n", "NOTICE", "CLLog", v39);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_19B68ABD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B68AC64(uint64_t a1, char *a2)
{
  *&v70[1526] = *MEMORY[0x1E69E9840];
  v4 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  if (a2)
  {
    v5 = getuid();
    v6 = getgid();
    sub_19B5E3290(a2, v5, v6);
    v7 = fopen(a2, "a");
    if (v7)
    {
      sub_19B43212C((a1 + 128), a2);
      sub_19B689610(a1, v7, 1);
      sub_19B68B20C(a1, *(a1 + 157));
      v8 = *(a1 + 184);
      if (v8)
      {
        sub_19B5E49CC(v8);
      }

      sub_19B421798();
      sub_19B5F8AE4(__p);
      if (__p[23] >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      sub_19B428B50(&v65, v9);
      if (__p[23] < 0)
      {
        operator delete(*__p);
      }

      v10 = v67;
      v11 = v67;
      if (v67 < 0)
      {
        v10 = v66;
      }

      if (!v10)
      {
        if (v67 < 0)
        {
          v66 = 10;
          v12 = v65;
        }

        else
        {
          v67 = 10;
          v12 = &v65;
        }

        strcpy(v12, "Unplugged!");
        v11 = v67;
      }

      bzero(__p, 0x65CuLL);
      v14 = &v65;
      if (v11 < 0)
      {
        v14 = v65;
      }

      snprintf(__p, 0x65CuLL, "CoreLocation-%s\n", v14);
      sub_19B6896FC(a1, v15, 0, v16, v17, v18, v19, v20, __p);
      bzero(__p, 0x65CuLL);
      snprintf(__p, 0x65CuLL, "locationd was compiled on %s at %s\n", "Oct 22 2025", "21:31:11");
      sub_19B6896FC(a1, v21, 0, v22, v23, v24, v25, v26, __p);
      bufsize = 1024;
      if (_NSGetExecutablePath(buf, &bufsize))
      {
        bzero(__p, 0x65CuLL);
        v27 = sub_19B421798();
        v28 = v62;
        sub_19B5F88EC(v27, v62);
        if (v63 < 0)
        {
          v28 = v62[0];
        }

        sub_19B421798();
        sub_19B5F83A4(v60);
        if (v61 >= 0)
        {
          v29 = v60;
        }

        else
        {
          v29 = v60[0];
        }

        snprintf(__p, 0x65CuLL, "/usr/libexec/locationd @ system model %s / version %s\n", v28, v29);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }
      }

      else
      {
        bzero(__p, 0x65CuLL);
        v36 = sub_19B421798();
        v37 = v62;
        sub_19B5F88EC(v36, v62);
        if (v63 < 0)
        {
          v37 = v62[0];
        }

        sub_19B421798();
        sub_19B5F83A4(v60);
        if (v61 >= 0)
        {
          v38 = v60;
        }

        else
        {
          v38 = v60[0];
        }

        snprintf(__p, 0x65CuLL, "%s @ system model %s / version %s\n", buf, v37, v38);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }
      }

      sub_19B6896FC(a1, v30, 0, v31, v32, v33, v34, v35, __p);
      bzero(__p, 0x65CuLL);
      sub_19B421798();
      sub_19B5F8D44(v62);
      if (v63 >= 0)
      {
        v39 = v62;
      }

      else
      {
        v39 = v62[0];
      }

      snprintf(__p, 0x65CuLL, "IOPlatformSerialNumber: %s\n", v39);
      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      sub_19B6896FC(a1, v40, 0, v41, v42, v43, v44, v45, __p);
      bzero(v70, 0x5EAuLL);
      strcpy(__p, "Begin settings dump (read at construction of CLSettings or upon darwin notification 'com.apple.locationd/prefs')\n");
      sub_19B6896FC(a1, v46, 0, v47, v48, v49, v50, v51, __p);
      (*(**(a1 + 24) + 792))(*(a1 + 24));
      bzero(&__p[19], 0x649uLL);
      strcpy(__p, "End settings dump\n");
      sub_19B6896FC(a1, v52, 0, v53, v54, v55, v56, v57, __p);
      if (v67 < 0)
      {
        operator delete(v65);
      }
    }

    else
    {
      v13 = __error();
      syslog(3, "%s,%s,could not open locations log %s, errno %d\n", "ERROR", "CLLog", a2, *v13);
    }
  }

  result = (*(*v4 + 24))(v4);
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B68B178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_19B5C6074(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B68B20C(uint64_t a1, int a2)
{
  v3 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  *(v3 + 117) = a2 != 0;
  v4 = *(v3 + 144);
  if (v4)
  {
    setvbuf(v4, 0, a2 != 0, 0);
  }

  return (*(*v3 + 24))(v3);
}

uint64_t sub_19B68B2AC(uint64_t a1)
{
  v1 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v2 = v1[18];
  if (v2)
  {
    fflush(v2);
  }

  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B68B32C(uint64_t a1, char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  sub_19B428B50(v22, a2);
  if (*(a1 + 71) >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = v20;
  sub_19B50FF5C(v20, v5 + 1);
  if (v21 < 0)
  {
    v6 = v20[0];
  }

  if (v5)
  {
    if (*(a1 + 71) >= 0)
    {
      v7 = (a1 + 48);
    }

    else
    {
      v7 = *(a1 + 48);
    }

    memmove(v6, v7, v5);
  }

  *(v6 + v5) = 95;
  if (sub_19B740A40(v4, v22, v20))
  {
    sub_19B428B50(v18, a2);
    sub_19B428B50(v16, ".log.bz2");
    if (sub_19B740B0C(v4, v18, v16))
    {
      v8 = 1;
    }

    else
    {
      sub_19B428B50(v14, a2);
      sub_19B428B50(__p, ".log");
      v8 = sub_19B740B0C(v4, v14, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
    if (!v8)
    {
      goto LABEL_36;
    }
  }

  else if (!v8)
  {
    goto LABEL_36;
  }

  if (++*(*(*(a1 + 32) + 8) + 24) > *(a1 + 96))
  {
    LOBYTE(v22[0]) = 0;
    v9 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    if (snprintf(v22, 0x400uLL, "%s/%s", v9, a2) > 1023)
    {
      syslog(3, "%s,%s,Rotation path is too long, could not delete old logs.\n", "ERROR", "CLLog");
    }

    else if (unlink(v22))
    {
      perror("Failed to delete log");
    }
  }

LABEL_36:
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_19B68B598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B68B61C(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 71) < 0)
  {
    result = sub_19B4C5138(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v4;
  }

  if (*(a2 + 95) < 0)
  {
    return sub_19B4C5138(v3 + 72, *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(v3 + 11) = *(a2 + 88);
  *(v3 + 72) = v5;
  return result;
}

void sub_19B68B690(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68B6AC(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_19B68B704(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    goto LABEL_7;
  }

  v2 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v2 = *v2;
  }

  v3 = (a1 + 64);
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v3;
  }

  if (!sub_19B5E3A40(v2, v4))
  {
    if (*(a1 + 87) < 0)
    {
      v3 = *v3;
    }

    syslog(3, "%s,%s,Failed to write %s\n", "ERROR", "CLLog", v3);
  }

  else
  {
LABEL_7:
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    unlink(v5);
  }

  if ((*(a1 + 112) & 0x80000000) == 0)
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 32);

    sub_19B6A2184(v6, v7);
  }
}

char *sub_19B68B7E8(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B4C5138(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_19B4C5138(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_19B4C5138(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_19B68B884(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68B8B8(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_19B68B920(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v75 = a1 + 40;
  (*(v2 + 16))(a1 + 40);
  v76 = 256;
  v6 = sub_19B740A34(a1, v4, v5);
  if (*(a1 + 79) < 0)
  {
    sub_19B4C5138(&__dst, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __dst = *(a1 + 56);
    v74 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_19B4C5138(&v71, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v71 = *(a1 + 80);
    v72 = *(a1 + 96);
  }

  if (*(a1 + 216))
  {
    syslog(5, "%s,%s,dumping internal buffer\n", "NOTICE", "CLLog");
    sub_19B740964(a1, &v77);
    if ((v77.st_gid & 0x80000000) == 0)
    {
      v7 = &v77;
    }

    else
    {
      v7 = *&v77.st_dev;
    }

    v8 = fopen(v7, "a");
    v9 = v8;
    if (SHIBYTE(v77.st_gid) < 0)
    {
      operator delete(*&v77.st_dev);
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else if (v8)
    {
LABEL_13:
      sub_19B68E894(*(a1 + 216), v9);
      fclose(v9);
      v10 = 1;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  if (v74 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (!stat(p_dst, &v77))
  {
    v12 = HIBYTE(v74);
    if (v74 >= 0)
    {
      v13 = &__dst;
    }

    else
    {
      v13 = __dst;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3321888768;
    v66[2] = sub_19B68C4F8;
    v66[3] = &unk_1F0E2A7C0;
    v66[4] = a1;
    if (SHIBYTE(v72) < 0)
    {
      sub_19B4C5138(&v67, v71, *(&v71 + 1));
      v12 = HIBYTE(v74);
    }

    else
    {
      v67 = v71;
      v68 = v72;
    }

    if (v12 < 0)
    {
      sub_19B4C5138(&__p, __dst, *(&__dst + 1));
    }

    else
    {
      __p = __dst;
      v70 = v74;
    }

    sub_19B6A2184(v13, v66);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }
  }

  sub_19B68B2AC(a1);
  v14 = (a1 + 128);
  v15 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v15 = *v14;
  }

  if (!stat(v15, &v77))
  {
    sub_19B740964(a1, &v77);
    v17 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v17 = *v14;
    }

    if ((v77.st_gid & 0x80000000) == 0)
    {
      v18 = &v77;
    }

    else
    {
      v18 = *&v77.st_dev;
    }

    rename(v17, v18, v16);
    if ((v77.st_gid & 0x80000000) == 0)
    {
      v19 = &v77;
    }

    else
    {
      v19 = *&v77.st_dev;
    }

    sub_19B5E323C(v19);
    if (*(a1 + 151) < 0)
    {
      v14 = *v14;
    }

    sub_19B68AC64(a1, v14);
    if (SHIBYTE(v77.st_gid) < 0)
    {
      operator delete(*&v77.st_dev);
    }

    v10 = 1;
  }

  v65 = 0;
  sub_19B5FC534(&v77);
  if (sub_19B438CCC(*&v77.st_dev, "LogNatalimetry", &v65))
  {
    v20 = 1;
  }

  else
  {
    sub_19B5FC534(v63);
    v20 = sub_19B438CCC(v63[0], "LogCalorimetry", &v65);
    if (v63[1])
    {
      sub_19B41FFEC(v63[1]);
    }
  }

  if (v77.st_ino)
  {
    sub_19B41FFEC(v77.st_ino);
  }

  if (v20)
  {
    if (v65)
    {
      sub_19B5FCC64(0, &v62);
      v21 = std::string::append(&v62, "userinfo", 8uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      *&v77.st_uid = *(&v21->__r_.__value_.__l + 2);
      *&v77.st_dev = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v77, ".plist", 6uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v64 = v23->__r_.__value_.__r.__words[2];
      *v63 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v77.st_gid) < 0)
      {
        operator delete(*&v77.st_dev);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (v64 >= 0)
      {
        v25 = v63;
      }

      else
      {
        v25 = v63[0];
      }

      if (!stat(v25, &v77))
      {
        sub_19B74041C(&v60);
        v26 = std::string::append(&v60, "/", 1uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v61, "userinfo", 8uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v62, ".log", 4uLL);
        v31 = *&v30->__r_.__value_.__l.__data_;
        *&v77.st_uid = *(&v30->__r_.__value_.__l + 2);
        *&v77.st_dev = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (v64 >= 0)
        {
          v32 = v63;
        }

        else
        {
          v32 = v63[0];
        }

        if ((v77.st_gid & 0x80000000) == 0)
        {
          v33 = &v77;
        }

        else
        {
          v33 = *&v77.st_dev;
        }

        sub_19B5E338C(v32, v33);
        if ((v77.st_gid & 0x80000000) == 0)
        {
          v34 = &v77;
        }

        else
        {
          v34 = *&v77.st_dev;
        }

        sub_19B5E323C(v34);
        if (SHIBYTE(v77.st_gid) < 0)
        {
          operator delete(*&v77.st_dev);
        }
      }

      sub_19B5FCC64(0, &v61);
      v35 = std::string::append(&v61, "cache", 5uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&v77.st_uid = *(&v35->__r_.__value_.__l + 2);
      *&v77.st_dev = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v77, ".plist", 6uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v77.st_gid) < 0)
      {
        operator delete(*&v77.st_dev);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v62;
      }

      else
      {
        v39 = v62.__r_.__value_.__r.__words[0];
      }

      if (!stat(v39, &v77))
      {
        sub_19B74041C(&v59);
        v40 = std::string::append(&v59, "/", 1uLL);
        v41 = *&v40->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v60, "cache", 5uLL);
        v43 = *&v42->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v61, ".log", 4uLL);
        v45 = *&v44->__r_.__value_.__l.__data_;
        *&v77.st_uid = *(&v44->__r_.__value_.__l + 2);
        *&v77.st_dev = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v62;
        }

        else
        {
          v46 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v77.st_gid & 0x80000000) == 0)
        {
          v47 = &v77;
        }

        else
        {
          v47 = *&v77.st_dev;
        }

        sub_19B5E338C(v46, v47);
        if ((v77.st_gid & 0x80000000) == 0)
        {
          v48 = &v77;
        }

        else
        {
          v48 = *&v77.st_dev;
        }

        sub_19B5E323C(v48);
        if (SHIBYTE(v77.st_gid) < 0)
        {
          operator delete(*&v77.st_dev);
        }
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63[0]);
      }
    }
  }

  else
  {
    v65 = 0;
  }

  sub_19B740244(&v61);
  v49 = std::string::append(&v61, "/", 1uLL);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v51 = std::string::append(&v62, "com.apple.timed", 0xFuLL);
  v52 = *&v51->__r_.__value_.__l.__data_;
  *&v77.st_uid = *(&v51->__r_.__value_.__l + 2);
  *&v77.st_dev = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  v53 = std::string::append(&v77, ".plist", 6uLL);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v64 = v53->__r_.__value_.__r.__words[2];
  *v63 = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v77.st_gid) < 0)
  {
    operator delete(*&v77.st_dev);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v64 >= 0)
  {
    v55 = v63;
  }

  else
  {
    v55 = v63[0];
  }

  if (stat(v55, &v77))
  {
    goto LABEL_137;
  }

  sub_19B740144(&v62);
  sub_19B428B50(&v61, "com.apple.timed");
  sub_19B428B50(&v60, ".plist.log");
  sub_19B7405F4(&v62.__r_.__value_.__l.__data_, &v61, &v60, v6, &v77);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 >= 0)
  {
    v56 = v63;
  }

  else
  {
    v56 = v63[0];
  }

  if ((v77.st_gid & 0x80000000) == 0)
  {
    v57 = &v77;
  }

  else
  {
    v57 = *&v77.st_dev;
  }

  if (sub_19B5E338C(v56, v57) == 1)
  {
    syslog(5, "%s,%s,could not copy %s log\n", "WARNING", "CLLog", "com.apple.timed");
  }

  if ((SHIBYTE(v77.st_gid) & 0x80000000) == 0)
  {
LABEL_137:
    if (v10)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  operator delete(*&v77.st_dev);
  if ((v10 & 1) == 0)
  {
LABEL_138:
    syslog(5, "%s,%s,could not dump log file\n", "WARNING", "CLLog");
  }

LABEL_139:
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(__dst);
  }

  return (*(*v3 + 24))(v3);
}

void sub_19B68C25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v63 - 233) < 0)
  {
    operator delete(*(v63 - 256));
  }

  sub_19B5C6074((v63 - 232));
  _Unwind_Resume(a1);
}

uint64_t sub_19B68C4F8(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  sub_19B428B50(&v33, a2);
  if (*(a1 + 63) >= 0)
  {
    v5 = *(a1 + 63);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = &v32;
  sub_19B50FF5C(&v32, v5 + 1);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v32.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a1 + 63) >= 0)
    {
      v7 = (a1 + 40);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  if (sub_19B740A40(v4, &v33, &v32))
  {
    sub_19B428B50(&v31, a2);
    sub_19B428B50(v29, ".log.bz2");
    if (sub_19B740B0C(v4, &v31, v29))
    {
      v8 = 1;
    }

    else
    {
      sub_19B428B50(v27, a2);
      sub_19B428B50(__p, ".log");
      v8 = sub_19B740B0C(v4, v27, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  sub_19B74041C(&v31);
  v9 = std::string::append(&v31, "/", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = strlen(a2);
  v12 = std::string::append(&v32, a2, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34 = v12->__r_.__value_.__r.__words[2];
  v33 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 87) >= 0)
  {
    v14 = *(a1 + 87);
  }

  else
  {
    v14 = *(a1 + 72);
  }

  v15 = &v31;
  sub_19B50FF5C(&v31, v14 + 1);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v31.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 87) >= 0)
    {
      v16 = (a1 + 64);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    memmove(v15, v16, v14);
  }

  *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
  v17 = strlen(a2);
  v18 = std::string::append(&v31, a2, v17);
  v32 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v21 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32.__r_.__value_.__r.__words[0];
  }

  if (v34 >= 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33;
  }

  rename(v22, v23, v19);
  sub_19B5E323C(v23);
  if (v20 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  return 1;
}

void sub_19B68C814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_19B68C8E4(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B4C5138(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_19B4C5138(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_19B68C958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68C974(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

os_log_t sub_19B68C9CC()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

FILE ***sub_19B68C9FC(FILE ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_19B68E50C(v2);
    MEMORY[0x19EAE76F0](v3, 0x10B0C403E4C181ELL);
  }

  return a1;
}

void sub_19B68CA48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

FILE **sub_19B68CA80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_19B68E50C(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B68CAC4(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E349F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B68CB08(uint64_t a1)
{
  sub_19B60DA60(a1);

  JUMPOUT(0x19EAE76F0);
}

BOOL sub_19B68CB44(uint64_t a1, const __CFString *a2, const void *a3)
{
  sub_19B60F5FC(a1, a2, a3);

  return sub_19B432E80(a1);
}

os_log_t sub_19B68D2E8()
{
  result = os_log_create("com.apple.locationd.Motion", "Altimeter");
  qword_1EAFE2870 = result;
  return result;
}

void sub_19B68D3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B68D554(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
  }

  v14 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerSuitabilityManagerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B68D77C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMOdometerSuitability client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometerSuitabilityManagerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B68DB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v22)
  {
    sub_19B41FFEC(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68DB58(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    if (*a2)
    {
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
      if (DictionaryOfClasses)
      {
        v15 = DictionaryOfClasses;
        v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMOdometerSuitabilityObject");
        v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMErrorMessage");
        if (v18)
        {
          v19 = *(*(a1 + 32) + 16);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = sub_19B68DE6C;
          v27[3] = &unk_1E7532B90;
          v27[4] = v18;
          v27[5] = v6;
          v20 = v27;
          v21 = v19;
        }

        else
        {
          if (!v16)
          {
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
            }

            v23 = off_1ED71C838;
            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageOdometerSuitabilityUpdate message!", buf, 2u);
            }

            v24 = sub_19B420058();
            if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C830 != -1)
              {
                dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
              }

              v25 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerSuitabilityManagerProxy _startOdometerSuitabilityUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v25);
              if (v25 != buf)
              {
                free(v25);
              }
            }

            goto LABEL_9;
          }

          v21 = *(*(a1 + 32) + 16);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_19B68DF00;
          block[3] = &unk_1E7532B68;
          block[4] = v16;
          block[5] = v6;
          v20 = block;
        }

        dispatch_async(v21, v20);
      }
    }

LABEL_9:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B68DE6C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v7 = objc_msgSend_integerValue(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"CMErrorDomain", v7, 0);
  (*(v4 + 16))(v4, 0, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_19B68DF00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [CMOdometerSuitability alloc];
  started = objc_msgSend_startDate(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_suitableForRunning(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_suitableForWalking(*(a1 + 32), v10, v11);
  v14 = objc_msgSend_initWithStartDate_suitableForRunning_suitableForWalking_(v3, v13, started, v9, v12);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_19B68E0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_19B41FFEC(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B68E344(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_odometerSuitabilityManagerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startOdometerSuitabilityUpdatesWithHandler_, v5);
}

uint64_t sub_19B68E400(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_odometerSuitabilityManagerProxy(*(a1 + 32), a2, a3);

  return objc_msgSend__stopOdometerSuitabilityUpdates(v3, v4, v5);
}

void sub_19B68E4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

FILE **sub_19B68E50C(FILE **a1)
{
  sub_19B68E540(a1);
  sub_19B5F4684((a1 + 4));
  return a1;
}

uint64_t sub_19B68E540(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  v3 = *a1;
  if (*a1)
  {
    *a1 = 0;
    fclose(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    free(v4);
    a1[1] = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_19B68E81C(a1);
  (*(*v2 + 24))(v2);
  return v5;
}

void sub_19B68E60C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

FILE *sub_19B68E620(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  if (!*a1)
  {
    v3 = malloc_type_malloc(*(a1 + 4), 0x100004077774924uLL);
    a1[1] = v3;
    if (v3)
    {
      *a1 = funopen(a1, 0, sub_19B68E734, 0, sub_19B68E818);
      sub_19B68E81C(a1);
    }
  }

  v4 = *a1;
  (a1[4]->_bf._base)(v2);
  return v4;
}

void sub_19B68E71C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B68E734(uint64_t a1, const void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v7 = *(v6 - 24);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16) - v8;
    if (v9 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v9;
    }

    memcpy((v7 + v8), a2, v3);
    v10 = *(a1 + 16);
    v11 = (*(a1 + 20) + v3) % v10;
    if (*(a1 + 24) + v3 < v10)
    {
      v10 = *(a1 + 24) + v3;
    }

    *(a1 + 20) = v11;
    *(a1 + 24) = v10;
  }

  else
  {
    v3 = 0;
  }

  (*(*v6 + 24))(v6);
  return v3;
}

uint64_t sub_19B68E81C(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  *(v1 - 12) = 0;
  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B68E894(uint64_t a1, FILE *a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v5 = *(v4 - 24);
  if (v5)
  {
    if (*a1)
    {
      fflush(*a1);
      v5 = *(a1 + 8);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v5 + v7;
      v9 = *(v8 - 1);
      *(v8 - 1) = 0;
      fputs((*(a1 + 8) + *(a1 + 20)), a2);
      fputc(v9, a2);
      v5 = *(a1 + 8);
    }

    *(v5 + *(a1 + 20)) = 0;
    fputs(*(a1 + 8), a2);
    sub_19B68E81C(a1);
  }

  else
  {
    v6 = 0;
  }

  (*(*v4 + 24))(v4);
  return v6;
}

void sub_19B68E9B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

void sub_19B68EF3C(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = 0;
  *a1 = 0u;
  v4 = a1 + 14644;
  *(a1 + 15) = 0;
  v5 = a1 + 5332;
  *(a1 + 56) = a3;
  *(a1 + 60) = 257;
  *(a1 + 62) = 0;
  *(a1 + 66) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  sub_19B41E130((a1 + 92), 0);
  *(a1 + 108) = 0;
  *(a1 + 116) = 0x3200000000;
  *(a1 + 724) = 1;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0x3200000000;
  *(a1 + 960) = 0x6400000000;
  *(a1 + 2168) = 0x6400000000;
  *(a1 + 3776) = 0x6400000000;
  *(a1 + 4584) = 0x3200000000;
  *(a1 + 5192) = 0;
  *(a1 + 5200) = 0;
  *(a1 + 5208) = 0x3F80000000000000;
  *(a1 + 5216) = 0;
  *(a1 + 5221) = 0;
  *(a1 + 5232) = 0u;
  *(a1 + 5248) = 0u;
  *(a1 + 5264) = 0u;
  *(a1 + 5280) = 0u;
  *(a1 + 5296) = 0u;
  *(a1 + 5312) = 0;
  *(a1 + 5316) = 973279855;
  v6 = vdup_n_s32(0x3A03126Fu);
  *(a1 + 5320) = v6;
  *(a1 + 5328) = 0;
  *v5 = xmmword_19B7BB860;
  *(a1 + 5348) = 1065353216;
  sub_19B41E130((a1 + 5336), xmmword_19B7BB860);
  *(a1 + 5352) = 0u;
  *(a1 + 5368) = 0u;
  *(a1 + 5384) = 0x3A03126F00000000;
  *(a1 + 5392) = v6;
  *(a1 + 5400) = 0;
  *(v5 + 72) = xmmword_19B7BB860;
  *(a1 + 5420) = 1065353216;
  sub_19B41E130((a1 + 5408), xmmword_19B7BB860);
  *(a1 + 5424) = 0u;
  *(a1 + 5440) = 0x200000000;
  *(v5 + 124) = 1;
  *(a1 + 5468) = 0u;
  *(a1 + 5484) = 0x4B00000000;
  *(a1 + 5792) = 0u;
  *(a1 + 5808) = 0;
  bzero((a1 + 5816), 0x2778uLL);
  *(a1 + 5860) = 100;
  *(a1 + 7068) = 100;
  *(v5 + 2940) = 1;
  *(a1 + 8284) = 0u;
  *(a1 + 8304) = 100;
  *(v5 + 3376) = 1;
  *(a1 + 8720) = 0u;
  *(a1 + 8740) = 100;
  *(a1 + 9148) = 40;
  *(a1 + 9632) = 0u;
  *(a1 + 9648) = 0u;
  *(a1 + 9664) = 0;
  *(a1 + 9676) = 200;
  *(a1 + 12200) = 0;
  *(a1 + 12208) = 0u;
  *(a1 + 12224) = 0;
  *(a1 + 12176) = 0;
  *(a1 + 12160) = 0u;
  *(a1 + 12144) = 0u;
  *(a1 + 12128) = 0u;
  *(a1 + 12112) = 0u;
  *(a1 + 12096) = 0u;
  *(a1 + 12080) = 0u;
  *(a1 + 12240) = 200;
  *v4 = 1;
  *(a1 + 14656) = 0u;
  *(a1 + 14676) = 40;
  *(a1 + 14852) = 0u;
  *(v4 + 196) = 1;
  *(a1 + 14872) = 40;
  *(v4 + 392) = 1;
  *(a1 + 15048) = 0u;
  *(a1 + 15068) = 200;
  *(a1 + 15888) = 0;
  *(a1 + 15896) = 0;
  *(a1 + 15872) = 0u;
  __asm { FMOV            V0.2S, #5.0 }

  *(a1 + 15920) = _D0;
  *(a1 + 15928) = 0u;
  *(a1 + 15944) = 0;
  *(a1 + 15952) = 1065353216;
  sub_19B41E130((a1 + 15940), _D0);
  *(v4 + 1312) = 0;
  *(a1 + 15960) = 0;
  *(a1 + 15968) = 0u;
  *(a1 + 15984) = 0u;
  *(a1 + 16000) = 0u;
  *(a1 + 16016) = 0u;
  *(a1 + 16032) = 1065353216;
  sub_19B41E130((a1 + 16020), 0);
  *(v4 + 1392) = 0;
  *(a1 + 16040) = 0;
  *(a1 + 16048) = 0;
  *(v4 + 1408) = 0;
  *(a1 + 16056) = 0;
  *(v4 + 1416) = 0;
  *(v4 + 1420) = 0;
  *(a1 + 16072) = 0;
  *(a1 + 16080) = 1;
  *(v4 + 1440) = 1;
  *(v4 + 1442) = 0;
  sub_19B600060(a1 + 16088);
  *(a1 + 27000) = xmmword_19B7B7E30;
  _Q0 = sub_19B41E130((a1 + 27000), xmmword_19B7B7E30);
  *(a1 + 27048) = 0;
  *(a1 + 27016) = 0u;
  *(a1 + 27032) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 27052) = _Q0.i64[0];
  *(a1 + 27060) = 1065353216;
  _Q0.i64[0] = 0x500000000;
  *(a1 + 27064) = 0x500000000;
  *(a1 + 27136) = 0u;
  *(a1 + 27152) = 0;
  *(a1 + 27160) = 0u;
  *(a1 + 27176) = 0u;
  *(a1 + 27192) = 0;
  *(a1 + 27196) = 1065353216;
  sub_19B41E130((a1 + 27184), _Q0);
  *(a1 + 27200) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 27200), xmmword_19B7B7E30);
  *(a1 + 27216) = 0xA00000000;
  *(a1 + 27544) = 0;
  *(a1 + 27552) = 0;
  sub_19B6AD648(a1 + 27560);
  *(a1 + 27752) = 0;
  *(a1 + 27764) = 0;
  *(a1 + 27768) = 0;
  *(a1 + 27776) = 0;
  sub_19B5B9DCC(a1 + 27784);
}

void sub_19B68F560(_Unwind_Exception *a1)
{
  sub_19B69ACA4((v1 + v2));
  sub_19B69AD20(v1 + 24);
  _Unwind_Resume(a1);
}

void sub_19B68F590(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 12) != a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 12);
      *buf = 67109376;
      v15 = v5;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[RelDMService] Client mode changed from %d to %d", buf, 0xEu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v13 = *(a1 + 12);
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setClientMode(const CMRelDM::ClientMode, const BOOL)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(a1 + 12) = a2;
    if (a2 >= 5)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v9 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v15 = a2;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[RelDMService] Received unexpected client type: %d. Defaulting behavior to kVideo.", buf, 8u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || (LOBYTE(v8) = *(v10 + 152), v8))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::setClientMode(const CMRelDM::ClientMode, const BOOL)", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }

        LOBYTE(v8) = 0;
      }
    }

    else
    {
      v8 = 0x1010100uLL >> (8 * a2);
    }

    sub_19B68F90C(a1, v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B68F90C(uint64_t a1, int a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16082);
  v5 = *(a1 + 16);
  if (v5 == a2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 16) && (*(a1 + 37697) & 1) != 0)
  {
    v7 = *v4;
    if (!a2 && v5 == 1)
    {
      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *v4;
  }

  v6 = *(a1 + 16083) | v7;
LABEL_10:
  v8 = *(a1 + 17);
  if (v8 == (v6 & 1))
  {
LABEL_11:
    if ((*(a1 + 17) & 1) == 0 && *(a1 + 16) != a2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v9 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 16);
        *buf = 67109376;
        v56 = v10;
        v57 = 1024;
        v58 = a2;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[RelDMService] Tracking behavior changed from %d to %d", buf, 0xEu);
      }

      v11 = (v6 ^ 1) & v8;
      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v44 = *(a1 + 16);
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      *(a1 + 16) = a2;
      sub_19B5BA034((a1 + 27784), a2);
      sub_19B713D50(a1 + 15920, a2);
      sub_19B60FCC8(a1 + 5856, a2);
      if (v11 && *(a1 + 48))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v14 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "[RelDMService] Notifying delayed tracking behavior update callback subscribers.", buf, 2u);
        }

        v15 = sub_19B420058();
        if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v16 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }

        v17 = *(a1 + 48);
        if (!v17)
        {
          sub_19B69ADA0();
        }

        (*(*v17 + 48))(v17);
      }
    }

    goto LABEL_82;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v18 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 17);
    v20 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v21 = *(a1 + 37697);
    }

    else
    {
      v21 = 0;
    }

    v22 = v4[1];
    v23 = *v4;
    *buf = 67110656;
    v56 = v19;
    v57 = 1024;
    v58 = v6 & 1;
    v59 = 1024;
    v60 = v20;
    v61 = 1024;
    v62 = a2;
    v63 = 1024;
    v64 = v21;
    v65 = 1024;
    v66 = v22;
    v67 = 1024;
    v68 = v23;
    _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_INFO, "[RelDMService] fDelaySetTrackingBehaviorState changed from %d to %d, current fTrackingBehavior: %d, requested trackingBehavior %d, getInSteadyStatePedestrian: %d, fInComplexTransitionState: %d, fDisableTracking: %d.", buf, 0x2Cu);
  }

  v24 = sub_19B420058();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    if (*(a1 + 16))
    {
      v25 = *(a1 + 37697);
    }

    v45 = *(a1 + 17);
    v48 = *(a1 + 16);
    v53 = v4[1];
    v54 = *v4;
    v26 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  *(a1 + 17) = v6 & 1;
  if ((v6 & 1) == 0)
  {
    if (*(a1 + 16) != a2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v30 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v32 = *(a1 + 37697);
        }

        else
        {
          v32 = 0;
        }

        v39 = v4[1];
        v40 = *v4;
        *buf = 67110144;
        v56 = v31;
        v57 = 1024;
        v58 = a2;
        v59 = 1024;
        v60 = v32;
        v61 = 1024;
        v62 = v39;
        v63 = 1024;
        v64 = v40;
        _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_INFO, "[RelDMService] The previously delayed tracking behavior update from %d to %d will now occur, getInSteadyStatePedestrian: %d, inComplexTransitionState: %d, fDisableTracking: %d.", buf, 0x20u);
      }

      v41 = sub_19B420058();
      if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        if (*(a1 + 16))
        {
          v42 = *(a1 + 37697);
        }

        v47 = *(a1 + 16);
        v50 = v4[1];
        v52 = *v4;
        v43 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }
    }

    goto LABEL_11;
  }

  *(a1 + 18) = a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v27 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v28 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v29 = *(a1 + 37697);
    }

    else
    {
      v29 = 0;
    }

    v33 = v4[1];
    v34 = *v4;
    *buf = 67110144;
    v56 = v28;
    v57 = 1024;
    v58 = a2;
    v59 = 1024;
    v60 = v29;
    v61 = 1024;
    v62 = v33;
    v63 = 1024;
    v64 = v34;
    _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_INFO, "[RelDMService] Delaying tracking behavior update from %d to %d, getInSteadyStatePedestrian: %d, inComplexTransitionState: %d, fDisableTracking: %d.", buf, 0x20u);
  }

  v35 = sub_19B420058();
  if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    if (*(a1 + 16))
    {
      v36 = *(a1 + 37697);
    }

    v46 = *(a1 + 16);
    v49 = v4[1];
    v51 = *v4;
    v37 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

LABEL_82:
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B690328(uint64_t a1, uint64_t a2)
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[RelDMService] Overwriting existing fDelayedTrackingBehaviorUpdateCallback", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v15[0]) = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::subscribeDelayedTrackingBehaviorUpdateCallback(std::function<void ()>)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    if (v7 == a2)
    {
      v14 = buf;
      (*(*v7 + 24))(v7, buf);
    }

    else
    {
      v14 = (*(*v7 + 16))(v7);
    }
  }

  else
  {
    v14 = 0;
  }

  v8 = a1 + 24;
  if (buf != (a1 + 24))
  {
    v9 = v14;
    v10 = *(a1 + 48);
    if (v14 == buf)
    {
      if (v10 == v8)
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = 0;
        (*(**(a1 + 48) + 24))(*(a1 + 48), buf);
        (*(**(a1 + 48) + 32))(*(a1 + 48));
        *(a1 + 48) = 0;
        v14 = buf;
        (*(v15[0] + 24))(v15, a1 + 24);
        (*(v15[0] + 32))(v15);
      }

      else
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = *(a1 + 48);
      }

      *(a1 + 48) = v8;
    }

    else if (v10 == v8)
    {
      (*(*v10 + 24))(*(a1 + 48), buf);
      (*(**(a1 + 48) + 32))(*(a1 + 48));
      *(a1 + 48) = v14;
      v14 = buf;
    }

    else
    {
      v14 = *(a1 + 48);
      *(a1 + 48) = v9;
    }
  }

  result = sub_19B69AD20(buf);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B690778(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B45E110(a1);
  }

  _Unwind_Resume(a1);
}

void sub_19B690784(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(a1 + 5216) = 0;
    *(a1 + 5221) = 0;
    *(a1 + 5208) = 0x3C002D0000000000;
    *(a1 + 5192) = 0;
    *(a1 + 5200) = 0;
    *(a1 + 960) = 0;
    *(a1 + 2168) = 0;
    *(a1 + 3776) = 0;
    *(a1 + 116) = 0;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0;
    *(a1 + 5424) = 0u;
    *(a1 + 724) = 1;
    *(a1 + 4584) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[RelDMService] Clearing src buffers.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::clearAll(BOOL)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  *(a1 + 5468) = 0u;
  *(a1 + 5440) = 0;
  *(a1 + 5484) = 0;
  *(a1 + 5456) = 1;
  sub_19B60FED8(a1 + 5856, 0);
  sub_19B5B9FB8((a1 + 27784));
}

void sub_19B690DB4(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 68) = 0;
  *(a1 + 73) = 0;
  *(a1 + 108) = 1;
  *(a1 + 112) = 1065749138;
  *(a1 + 176) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (a2)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    *buf = 0u;
    *&buf[12] = 1065353216;
    sub_19B41E130(buf, 0);
    v9 = xmmword_19B7B7E30;
    sub_19B41E130(&v9, xmmword_19B7B7E30);
    v10 = 0uLL;
    *(a1 + 48) = 0;
    v3 = v9;
    *a1 = *buf;
    *(a1 + 16) = v3;
    *(a1 + 32) = v10;
    *(a1 + 108) = 0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] resetting", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::reset(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B690FE4(_DWORD *a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1[14] != a2)
  {
    a1[14] = a2;
    if (!a2)
    {
      a1[6616] = 0;
      a1[6622] = 0;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[14];
      *buf = 67240192;
      v10 = v4;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[RelDMService] Setting scheme to %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v8 = a1[14];
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setScheme(TrackingScheme)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B6911D0(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 37656) != a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 37656))
      {
        v5 = "true";
      }

      else
      {
        v5 = "false";
      }

      if (a2)
      {
        v6 = "true";
      }

      else
      {
        v6 = "false";
      }

      *buf = 136315394;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[RelDMService] Online headToHeadsetTransformationEstimation changed from: %s  to:%s", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      *(a1 + 37656);
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::enableOnlineHeadToHeadsetTransformationEstimator(BOOL)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(a1 + 37656) = a2;
    if ((a2 & 1) == 0)
    {
      sub_19B78F14C(a1 + 33904, v8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B69141C(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  if ((*(result + 16082) & 1) == 0)
  {
    *(result + 16082) = 1;
    sub_19B690B4C(result, 1);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6915DC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16082) == 1)
  {
    *(a1 + 16082) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v1 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "[RelDMService] Tracking is re-enabled.", buf, 2u);
    }

    v2 = sub_19B420058();
    if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v3 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::enableTracking()", "CoreLocation: %s\n", v3);
      if (v3 != buf)
      {
        free(v3);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B691794(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16082) & 1) == 0)
  {
    v7 = 0;
    *(a1 + 5272) = 0;
    goto LABEL_36;
  }

  if (*(a1 + 724) == 1)
  {
    sub_19B5BE7E0(a1 + 724);
  }

  v4 = *(a1 + 732);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 >= 0.00005)
  {
    *(a1 + 5272) = a2;
    v5 = a2;
    if (a2)
    {
      goto LABEL_8;
    }

LABEL_11:
    v6 = 3.4028e38;
    goto LABEL_12;
  }

  v5 = *(a1 + 5272);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_8:
  v6 = (a2 - v5) * 0.000001;
LABEL_12:
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_19B7399E4(a1 + 5232, a2);
    if (*(a1 + 724) == 1)
    {
      sub_19B5BE7E0(a1 + 724);
    }

    v10 = *(a1 + 732);
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    *buf = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[RelDMService] moveDuration, %.3f, var, %.4f, timeSinceAccelNonStatic, %.3f", buf, 0x20u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    sub_19B7399E4(a1 + 5232, a2);
    if (*(a1 + 724) == 1)
    {
      sub_19B5BE7E0(a1 + 724);
    }

    *(a1 + 732);
    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isSrcInMovingStateWhenTrackingDisabled(uint64_t)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v7 = sub_19B7399E4(a1 + 5232, a2) >= 0.4 && v6 <= 0.4;
LABEL_36:
  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_19B691AC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 5800);
  if (v8)
  {
    v9 = v8 >= a3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v11 = 0;
      v12 = *(a1 + 5800);
      v13 = 0.0;
      do
      {
        v13 = v13 + (*(a2 + v11) * *(a2 + v11));
        v11 += 4;
      }

      while (v11 != 12);
      v14 = *(a2 + 48);
      *buf = 134219008;
      v55 = v12;
      v56 = 2048;
      v57 = a3;
      v58 = 2048;
      v59 = (sqrtf(v13) * 57.296);
      v60 = 1024;
      v61 = v14;
      v62 = 2048;
      v63 = ((a3 - *&v12) / 1000000.0);
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[RelDMService] ReEnable/SitStandFSM: ts, %llu, inputTS, %llu, rot, %.3f, qMode, %d, staticDuration, %.3f", buf, 0x30u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v16 = 0;
      v17 = 0.0;
      do
      {
        v17 = v17 + (*(a2 + v16) * *(a2 + v16));
        v16 += 4;
      }

      while (v16 != 12);
      v48 = *(a1 + 5800);
      v53 = *(a2 + 48);
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = *(a1 + 5792);
  if (v19)
  {
    v20 = v19 + 1000000 >= a3;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    *(a1 + 5800) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v21 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v22 = ((a3 - *(a1 + 5792)) / 1000000.0);
      *buf = 134217984;
      v55 = v22;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[RelDMService] large gap in aux data, %.3f", buf, 0xCu);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v49 = ((a3 - *(a1 + 5792)) / 1000000.0);
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  v25 = 0;
  v26 = *(a1 + 5792);
  *(a1 + 5792) = a3;
  v27 = 0.0;
  do
  {
    v27 = v27 + (*(a2 + v25) * *(a2 + v25));
    v25 += 4;
  }

  while (v25 != 12);
  if (a3 <= v26 || v26 == 0)
  {
    v29 = 0;
  }

  else
  {
    v29 = a3 - v26;
  }

  if (sqrtf(v27) > 0.34907)
  {
    ++*(a1 + 5808);
  }

  v30 = *(a2 + 48);
  if (!v30 || *(a1 + 5808) >= 3u)
  {
    if (*(a1 + 16082) == 1 && *(a1 + 5800))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v31 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "[RelDMService] ReEnable/SitStandFSM: movement terminated static period.", buf, 2u);
      }

      v32 = sub_19B420058();
      if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v33 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    result = 0;
    *(a1 + 5800) = 0;
    *(a1 + 5808) = 0;
    goto LABEL_108;
  }

  v35 = *(a1 + 5800);
  if (v35)
  {
    if (v30 == 2)
    {
      v35 += v29;
      *(a1 + 5800) = v35;
    }

    if (v35 + a4 < a3)
    {
      if (*(a1 + 16082) == 1)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v36 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v37 = ((a3 - *(a1 + 5800)) / 0xF4240);
          *buf = 134349056;
          v55 = v37;
          _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEFAULT, "[RelDMService] ReEnable: reached staticDuration, %{public}.3f", buf, 0xCu);
        }

        v38 = sub_19B420058();
        if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1 && !*(v38 + 152))
        {
          goto LABEL_107;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v50 = ((a3 - *(a1 + 5800)) / 0xF4240);
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v43 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v44 = (a3 - *(a1 + 5800)) / 0xF4240;
          *buf = 134349056;
          v55 = v44;
          _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "[RelDMService] SitStandFSM: reached staticDuration, %{public}.3f", buf, 0xCu);
        }

        v45 = sub_19B420058();
        if (*(v45 + 160) <= 1 && *(v45 + 164) <= 1 && *(v45 + 168) <= 1 && !*(v45 + 152))
        {
          goto LABEL_107;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v52 = ((a3 - *(a1 + 5800)) / 0xF4240);
      }

      v46 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }

LABEL_107:
      *(a1 + 5808) = 0;
      result = 1;
      goto LABEL_108;
    }
  }

  else
  {
    *(a1 + 5800) = a3;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v39 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v40 = *(a1 + 5800);
    *buf = 134217984;
    v55 = v40;
    _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEBUG, "[RelDMService] ReEnable/SitStandFSM: gettingStatic, ts, %llu", buf, 0xCu);
  }

  v41 = sub_19B420058();
  if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v51 = *(a1 + 5800);
    v42 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  result = 0;
LABEL_108:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6925D4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  if (*(a1 + 3778))
  {
    v5 = a1 + 3784;
    v6 = *(a1 + 3778) + *(a1 + 3776) - 1;
    v7 = *(a1 + 3780);
    if (v6 < v7)
    {
      v7 = 0;
    }

    v8 = *(v5 + 8 * (v6 - v7));
    if (v8 >= a2)
    {
      if (v8 - a2 <= 0x9C3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v19 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v20 = *(a1 + 3776) + *(a1 + 3778) - 1;
          v21 = *(a1 + 3780);
          if (v20 < v21)
          {
            v21 = 0;
          }

          v22 = *(v5 + 8 * (v20 - v21));
          *buf = 134349312;
          v47 = a2;
          v48 = 2050;
          v49 = v22;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "[RelDMService] Src IMU timestamp went backwards. curr=%{public}llu, last=%{public}llu", buf, 0x16u);
        }

        v23 = sub_19B420058();
        if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
        {
          goto LABEL_71;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v24 = *(a1 + 3776) + *(a1 + 3778) - 1;
        v25 = *(a1 + 3780);
        if (v24 < v25)
        {
          v25 = 0;
        }

        v26 = *(v5 + 8 * (v24 - v25));
        v27 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::checkSrcIMUTimestamp(uint64_t, BOOL &) const", "CoreLocation: %s\n");
        goto LABEL_69;
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v28 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 3776) + *(a1 + 3778) - 1;
        v30 = *(a1 + 3780);
        if (v29 < v30)
        {
          v30 = 0;
        }

        v31 = *(v5 + 8 * (v29 - v30));
        *buf = 134349312;
        v47 = a2;
        v48 = 2050;
        v49 = v31;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "[RelDMService] Src IMU sample time went backwards. curr=%{public}llu, last=%{public}llu", buf, 0x16u);
      }

      v32 = sub_19B420058();
      if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
      {
        goto LABEL_71;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v33 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v34 = *(a1 + 3780);
      if (v33 < v34)
      {
        v34 = 0;
      }

      v45 = *(v5 + 8 * (v33 - v34));
LABEL_68:
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::checkSrcIMUTimestamp(uint64_t, BOOL &) const", "CoreLocation: %s\n");
LABEL_69:
      if (v27 != buf)
      {
        free(v27);
      }

      goto LABEL_71;
    }

    v9 = a2 - v8;
    if (a2 - v8 >= 0x1D4D)
    {
      if (v9 <= 0x4E20)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v10 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 3776) + *(a1 + 3778) - 1;
          v12 = *(a1 + 3780);
          if (v11 < v12)
          {
            v12 = 0;
          }

          v13 = *(v5 + 8 * (v11 - v12));
          *buf = 134350080;
          v47 = v13;
          v48 = 2050;
          v49 = a2;
          v50 = 1026;
          v51 = 7500;
          v52 = 2050;
          v53 = v9;
          v54 = 1026;
          v55 = 20000;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[RelDMService] Src IMU sample time interval is large. last=%{public}llu, new=%{public}llu, %{public}u < dt=%{public}llu <= %{public}u", buf, 0x2Cu);
        }

        v14 = sub_19B420058();
        if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v15 = *(a1 + 3776) + *(a1 + 3778) - 1;
          v16 = *(a1 + 3780);
          if (v15 < v16)
          {
            v16 = 0;
          }

          v43 = *(v5 + 8 * (v15 - v16));
          v17 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::checkSrcIMUTimestamp(uint64_t, BOOL &) const", "CoreLocation: %s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }

        goto LABEL_23;
      }

      *a3 = 1;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v35 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 3776) + *(a1 + 3778) - 1;
        v37 = *(a1 + 3780);
        if (v36 < v37)
        {
          v37 = 0;
        }

        v38 = *(v5 + 8 * (v36 - v37));
        *buf = 134349824;
        v47 = v38;
        v48 = 2050;
        v49 = a2;
        v50 = 1026;
        v51 = 7500;
        v52 = 2050;
        v53 = v9;
        _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_ERROR, "[RelDMService] Src IMU sample time interval is unexpectedly large. last=%{public}lluus , new=%{public}lluus, %{public}u < dt=%{public}lluus", buf, 0x26u);
      }

      v39 = sub_19B420058();
      if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
      {
LABEL_71:
        result = 0;
        goto LABEL_72;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v40 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v41 = *(a1 + 3780);
      if (v40 < v41)
      {
        v41 = 0;
      }

      v44 = *(v5 + 8 * (v40 - v41));
      goto LABEL_68;
    }
  }

LABEL_23:
  result = 1;
LABEL_72:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B692DB8(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16088) == 1)
  {
    v3 = *(a1 + 5424);
    if (v3)
    {
      if ((v3 + 1000000.0) < a2)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v5 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 5424);
          *buf = 134349568;
          v13 = a2;
          v14 = 2050;
          v15 = v6;
          v16 = 2050;
          v17 = (a2 - v6) * 0.000001;
          _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[RelDMService] Unexpectedly large time interval since last aux IMU sample, resetting. timestamp, %{public}llu, fLastAuxGyroTimestamp, %{public}llu, dt, %{public}f s", buf, 0x20u);
        }

        v7 = sub_19B420058();
        if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v11 = (a2 - *(a1 + 5424)) * 0.000001;
          v8 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::checkForLargeAuxDataGap(const uint64_t)", "CoreLocation: %s\n", v8);
          if (v8 != buf)
          {
            free(v8);
          }
        }

        sub_19B690B4C(a1, 1);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B693044(float32x2_t *a1, _OWORD *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_19B739578(&a1[654], a6);
  sub_19B692DB8(a1, a6);
  v24 = 0;
  result = sub_19B6925D4(a1, a6, &v24);
  if (result)
  {
    sub_19B6931F4(a1 + 651, a3);
    v13 = a1[649].i32[0];
    if ((v13 & 1) == 0)
    {
      sub_19B5BE720(&a1[14] + 2, a3);
      v14 = 0;
      v15 = 0.0;
      do
      {
        v15 = v15 + (a3->f32[v14] * a3->f32[v14]);
        ++v14;
      }

      while (v14 != 3);
      v23 = sqrtf(v15);
      sub_19B5BC034(&a1[90] + 4, &v23);
      sub_19B5BE720(&a1[573], a5);
      v13 = 0;
    }

    a1[649].i32[0] = v13 + 1;
    sub_19B5BE720(&a1[120], a4);
    result = sub_19B6932D8(&a1[271], a2);
    v16 = a1[472].u16[1];
    v17 = a1[472].u32[1];
    v18 = a1[472].u16[0];
    if (v18 + v16 >= v17)
    {
      v19 = a1[472].u32[1];
    }

    else
    {
      v19 = 0;
    }

    a1[v18 + v16 - v19 + 473] = a6;
    if (v17 <= v16)
    {
      v20 = v18 + 1;
      if (v20 >= v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = 0;
      }

      a1[472].i16[0] = v20 - v21;
    }

    else
    {
      LOWORD(v16) = v16 + 1;
      a1[472].i16[1] = v16;
      LODWORD(v16) = v16;
    }

    v22 = a1[650];
    if (v22)
    {
      if (v17 == v16)
      {
        a1[650] = (*&v22 - 1);
      }
    }
  }

  else if (v24 == 1)
  {

    sub_19B690784(a1, 1);
  }

  return result;
}

float32x2_t *sub_19B6931F4(float32x2_t *result, float32x2_t *a2)
{
  v2 = result->i32[0];
  v3 = result->i32[0] + 1;
  result->i32[0] = v3;
  if (result[2].i8[4] == 1)
  {
    v4 = 1.0 / v3;
    if (!v3)
    {
      v4 = 1.0;
    }

    if (v4 <= result->f32[1])
    {
      v4 = result->f32[1];
    }

    v5 = result[2].f32[0];
    v6 = v4 * (v5 - a2[1].f32[0]);
    result[1] = vsub_f32(result[1], vmul_n_f32(vsub_f32(result[1], *a2), v4));
    v7 = v5 - v6;
  }

  else
  {
    v8 = a2[1].f32[0];
    if (v2 > 2)
    {
      v10 = result->f32[1];
      v11 = result[2].f32[0];
      result[1] = vsub_f32(result[1], vmul_n_f32(vsub_f32(result[1], *a2), v10));
      v7 = v11 - (v10 * (v11 - v8));
    }

    else
    {
      v9 = 1.0 / v3;
      v7 = v9 * ((result[2].f32[0] * v2) + v8);
      result[1] = vmul_n_f32(vadd_f32(vmul_n_f32(result[1], v2), *a2), v9);
    }
  }

  result[2].f32[0] = v7;
  return result;
}

unsigned __int16 *sub_19B6932D8(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[8 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

void sub_19B693338(uint64_t a1, float32x2_t *a2, float *a3, int a4, unint64_t a5, __n128 a6)
{
  v6 = a5;
  v8 = a6.n128_f32[0];
  v219 = *MEMORY[0x1E69E9840];
  v11 = (a1 + 33824);
  v12 = a1 + 15956;
  if (*(a1 + 37656) == 1 && *(a1 + 33920) == 1)
  {
    v13 = a4;
    a6.n128_u32[0] = 1127481344;
    v15 = sub_19B78FE84(a1 + 33904, a2, a5, a6);
    v16 = sub_19B651B48((a1 + 33904), v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *&v156 = __PAIR64__(LODWORD(v17), LODWORD(v16));
    *(&v156 + 1) = __PAIR64__(LODWORD(v21), LODWORD(v19));
    v23 = sub_19B606534(a1 + 80);
    v25.f32[0] = sub_19B66BFF4(v23, v24);
    v168 = v25.f32[0];
    *v169 = v26;
    *&v169[4] = v27;
    *&v169[8] = v28;
    *buf = sub_19B66BF70(&v156, &v168, v25);
    *&buf[4] = v29;
    *&buf[8] = v30;
    *&buf[12] = v31;
    v32 = sub_19B66C31C(buf);
    v33 = 0;
    v165.i64[0] = __PAIR64__(v34, LODWORD(v32));
    v165.i32[2] = v35;
    v36 = 0.0;
    do
    {
      v36 = v36 + (v165.f32[v33] * v165.f32[v33]);
      ++v33;
    }

    while (v33 != 3);
    v154 = sqrtf(v36);
    if (v154 > 0.017453)
    {
      v37 = sub_19B66C070((a1 + 37640));
      v39 = v38;
      v151 = v41;
      v152 = v40;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v42 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v148 = *sub_19B606534(a1 + 80);
        v146 = *(sub_19B606534(a1 + 80) + 4);
        v144 = *(sub_19B606534(a1 + 80) + 8);
        v43 = *(sub_19B606534(a1 + 80) + 12);
        *v44.i64 = v154;
        v45 = sub_19B7900DC((a1 + 33904), v44);
        *buf = 134352384;
        *&buf[4] = v148;
        *&buf[12] = 2050;
        *&buf[14] = v146;
        v195 = 2050;
        v196 = v144;
        v197 = 2050;
        v198 = v43;
        v199 = 2050;
        v200 = v16;
        v201 = 2050;
        v202 = v18;
        v203 = 2050;
        v204 = v20;
        v205 = 2050;
        v206 = v22;
        v207 = 2050;
        v208 = v37;
        v209 = 2050;
        v210 = v39;
        v211 = 2050;
        v212 = v152;
        v213 = 2050;
        v214 = v151;
        v215 = 2050;
        v216 = v154;
        v217 = 2050;
        v218 = v45;
        _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "[RelDMService] Head to Headset attitude updated. Previous q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f , New q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f, Default q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f, angle between previous: %{public}.2f deg, angle between default: %{public}.2f deg", buf, 0x8Eu);
      }

      v46 = sub_19B420058();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
      {
        bzero(buf, 0x65CuLL);
        v150 = v8;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v149 = *sub_19B606534(a1 + 80);
        v147 = *(sub_19B606534(a1 + 80) + 4);
        v145 = *(sub_19B606534(a1 + 80) + 8);
        v47 = *(sub_19B606534(a1 + 80) + 12);
        v48 = *&v156;
        v49 = *(&v156 + 1);
        v50 = *(&v156 + 2);
        v51 = *(&v156 + 3);
        *v52.i64 = v154;
        v53 = sub_19B7900DC((a1 + 33904), v52);
        v168 = 3.9137e-34;
        *v169 = v149;
        *&v169[8] = 2050;
        *&v169[10] = v147;
        v170 = 2050;
        v171 = v145;
        v172 = 2050;
        v173 = v47;
        v174 = 2050;
        v175 = v48;
        v176 = 2050;
        v177 = v49;
        v178 = 2050;
        v179 = v50;
        v180 = 2050;
        v181 = v51;
        v182 = 2050;
        v183 = v37;
        v184 = 2050;
        v185 = v39;
        v186 = 2050;
        v187 = v152;
        v188 = 2050;
        v189 = v151;
        v190 = 2050;
        v191 = v154;
        v192 = 2050;
        v193 = v53;
        v54 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v54);
        if (v54 != buf)
        {
          free(v54);
        }

        v8 = v150;
      }
    }

    v55 = v156;
    *(a1 + 92) = v156;
    *(a1 + 108) = 1;
    *(a1 + 15940) = v55;
    *v12 = 1;
    *(a1 + 27000) = v55;
    v6 = a5;
    a4 = v13;
  }

  if (*(v12 + 126) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v56 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v56, OS_LOG_TYPE_INFO, "[RelDMService] Tracking will be re-enabled from getting anchor.", buf, 2u);
    }

    v57 = sub_19B420058();
    if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v168) = 0;
      v58 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    *(v12 + 130) = 1;
    goto LABEL_183;
  }

  if (!*(a1 + 56) || *(a1 + 108) != 1)
  {
    goto LABEL_183;
  }

  v155 = a4;
  if (sub_19B6137FC((a1 + 5856)))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v59 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&dword_19B41C000, v59, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] anchor is SKIPPED, timestamp: %llu", buf, 0xCu);
    }

    v60 = sub_19B420058();
    if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v168 = 3.852e-34;
      *v169 = v6;
LABEL_48:
      v61 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n");
LABEL_49:
      if (v61 != buf)
      {
        free(v61);
      }

      goto LABEL_183;
    }

    goto LABEL_183;
  }

  v62 = *(v12 + 132);
  if (v62 == 1)
  {
    v63 = *(a1 + 5424);
    if (v63)
    {
      if (v63 + 250000 < v6)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v64 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v65 = *(a1 + 5424);
          *buf = 134349312;
          *&buf[4] = v6;
          *&buf[12] = 2050;
          *&buf[14] = v65;
          _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_ERROR, "[RelDMService] anchor data is far ahead of IMU: anchor, %{public}llu, auxIMU, %{public}llu", buf, 0x16u);
        }

        v66 = sub_19B420058();
        if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v67 = *(a1 + 5424);
          v168 = 3.9123e-34;
          *v169 = v6;
          *&v169[8] = 2050;
          *&v169[10] = v67;
          v61 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n");
          goto LABEL_49;
        }

        goto LABEL_183;
      }
    }
  }

  v153 = v12 + 132;
  if (*(v12 + 124) == 1 && *(a1 + 56) != 1)
  {
    *(v12 + 124) = 256;
    if (v62)
    {
      sub_19B604800(v153, a1 + 80, 1);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v68 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering 2-IMU with anchored tracking.", buf, 2u);
      }

      v69 = sub_19B420058();
      if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        LOWORD(v168) = 0;
        v70 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v70);
        if (v70 != buf)
        {
          free(v70);
        }
      }
    }
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v71 = off_1EAFE29A0;
  v72 = v8;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v73 = *a3;
    v74 = a3[1];
    v75 = a3[2];
    v76 = a2->f32[0];
    v77 = a2->f32[1];
    v78 = a2[1].f32[0];
    v79 = a2[1].f32[1];
    *buf = 134220032;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    v195 = 2048;
    v196 = v73;
    v197 = 2048;
    v198 = v74;
    v199 = 2048;
    v200 = v75;
    v201 = 2048;
    v202 = v76;
    v203 = 2048;
    v204 = v77;
    v205 = 2048;
    v206 = v78;
    v207 = 2048;
    v208 = v79;
    _os_log_impl(&dword_19B41C000, v71, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor][AnchorBeforeTransform], timestamp: %llu, lidAngleDeg: %.1f, _r_fc: (%.2f, %.2f, %.2f), _q_cf: (%.3f, %.3f, %.3f, %.3f)", buf, 0x5Cu);
  }

  v80 = sub_19B420058();
  if (*(v80 + 160) > 1 || *(v80 + 164) > 1 || *(v80 + 168) > 1 || *(v80 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v81 = *a3;
    v82 = a3[1];
    v83 = a3[2];
    v84 = a2->f32[0];
    v85 = a2->f32[1];
    v86 = a2[1].f32[0];
    v87 = a2[1].f32[1];
    v168 = 3.8529e-34;
    *v169 = v6;
    *&v169[8] = 2048;
    *&v169[10] = v8;
    v170 = 2048;
    v171 = v81;
    v172 = 2048;
    v173 = v82;
    v174 = 2048;
    v175 = v83;
    v176 = 2048;
    v177 = v84;
    v178 = 2048;
    v179 = v85;
    v180 = 2048;
    v181 = v86;
    v182 = 2048;
    v183 = v87;
    v88 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v88);
    if (v88 != buf)
    {
      free(v88);
    }
  }

  v166 = -COERCE_DOUBLE(0x8000000080000000);
  v167 = 0;
  sub_19B66C264(&v165, &v166);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v89 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = v165.f32[0];
    *&buf[12] = 2048;
    *&buf[14] = v165.f32[1];
    v195 = 2048;
    v196 = v165.f32[2];
    v197 = 2048;
    v198 = v165.f32[3];
    _os_log_impl(&dword_19B41C000, v89, OS_LOG_TYPE_DEFAULT, "[SourceAnchorTransform] q_sc: [%.3f, %.3f, %.3f, %.3f] ", buf, 0x2Au);
  }

  v90 = sub_19B420058();
  if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v168 = 3.8523e-34;
    *v169 = v165.f32[0];
    *&v169[8] = 2048;
    *&v169[10] = v165.f32[1];
    v170 = 2048;
    v171 = v165.f32[2];
    v172 = 2048;
    v173 = v165.f32[3];
    v92 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "AnchorData CMRelDM::SourceAnchorTransform::transformAnchor(const CMVector3d &, const CMOQuaternion &, const BodyFaceTransform &, const float) const", "CoreLocation: %s\n", v92);
    if (v92 != buf)
    {
      free(v92);
    }
  }

  v168 = sub_19B66BF70(&v165, a2, v91);
  *v169 = v93;
  *&v169[4] = v94;
  *&v169[8] = v95;
  v96 = sub_19B606534(a1 + 80);
  v98.f32[0] = sub_19B66BFF4(v96, v97);
  *&v156 = __PAIR64__(v99, v98.u32[0]);
  *(&v156 + 1) = __PAIR64__(v101, v100);
  *buf = sub_19B66BF70(&v168, &v156, v98);
  *&buf[4] = v102;
  *&buf[8] = v103;
  *&buf[12] = v104;
  v105 = sub_19B66C1A4(v165.f32, *a3, a3[1], a3[2]);
  v107 = v106;
  v109 = v108;
  v110 = sub_19B606380(a1 + 80);
  v111.f32[0] = sub_19B66C1A4(buf, *v110, v110[1], v110[2]);
  v112 = v111.f32[0];
  v114 = v113;
  v116 = v115;
  v117 = sub_19B66BFF4(a2, v111);
  v118 = 0;
  v168 = v117;
  *v169 = v119;
  *&v169[4] = v120;
  *&v169[8] = v121;
  *&v156 = *a3;
  *(&v156 + 2) = a3[2];
  do
  {
    *(&v156 + v118) = -*(&v156 + v118);
    v118 += 4;
  }

  while (v118 != 12);
  v122 = sub_19B66C1A4(&v168, *&v156, *(&v156 + 1), *(&v156 + 2));
  v156 = *buf;
  v157 = 969384531;
  v158 = (v105 - v112) + 0.0;
  v159 = (v107 - v114) + 0.0;
  v160 = (v109 - v116) + 0.0;
  v161 = 961656599;
  v162 = v122;
  v163 = v123;
  v164 = v124;
  sub_19B5AF054(v11, &v156, v6);
  ++*a1;
  if ((*v11 & 1) == 0)
  {
    ++*(a1 + 4);
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v125 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v126 = v11[4];
    *buf = 67109120;
    *&buf[4] = v126;
    _os_log_impl(&dword_19B41C000, v125, OS_LOG_TYPE_DEBUG, "[RelDMService][feedAnchor] Bypass anchor correspondence %d:", buf, 8u);
  }

  v127 = sub_19B420058();
  if (*(v127 + 160) > 1 || *(v127 + 164) > 1 || *(v127 + 168) > 1 || *(v127 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v128 = v11[4];
    v168 = 1.5047e-36;
    *v169 = v128;
    v129 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v129);
    if (v129 != buf)
    {
      free(v129);
    }
  }

  if (*v11 & 1) != 0 || v155 < 2 || (v11[4])
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v130 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v155;
      *&buf[8] = 1024;
      *&buf[10] = v155 == 1;
      _os_log_impl(&dword_19B41C000, v130, OS_LOG_TYPE_DEBUG, "[RelDMService][feedAnchor] Number of faces:  %d:, overwrite anchor correspondence ?: %d", buf, 0xEu);
    }

    v131 = sub_19B420058();
    if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || *(v131 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v168 = 1.5047e-36;
      *v169 = v155;
      *&v169[4] = 1024;
      *&v169[6] = v155 == 1;
      v132 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v132);
      if (v132 != buf)
      {
        free(v132);
      }
    }

    sub_19B6033A0(v153, &v156, *(a1 + 56), v6);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v133 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134220032;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v72;
      v195 = 2048;
      v196 = v158;
      v197 = 2048;
      v198 = v159;
      v199 = 2048;
      v200 = v160;
      v201 = 2048;
      v202 = *&v156;
      v203 = 2048;
      v204 = *(&v156 + 1);
      v205 = 2048;
      v206 = *(&v156 + 2);
      v207 = 2048;
      v208 = *(&v156 + 3);
      _os_log_impl(&dword_19B41C000, v133, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] timestamp: %llu, lidAngleDeg: %.1f, r_bs: (%.2f, %.2f, %.2f), q_sb: (%.3f, %.3f, %.3f, %.3f)", buf, 0x5Cu);
    }

    v134 = sub_19B420058();
    if (*(v134 + 160) > 1 || *(v134 + 164) > 1 || *(v134 + 168) > 1 || *(v134 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v168 = 3.8529e-34;
      *v169 = v6;
      *&v169[8] = 2048;
      *&v169[10] = v72;
      v170 = 2048;
      v171 = v158;
      v172 = 2048;
      v173 = v159;
      v174 = 2048;
      v175 = v160;
      v176 = 2048;
      v177 = *&v156;
      v178 = 2048;
      v179 = *(&v156 + 1);
      v180 = 2048;
      v181 = *(&v156 + 2);
      v182 = 2048;
      v183 = *(&v156 + 3);
      v135 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v135);
      if (v135 != buf)
      {
        free(v135);
      }
    }

    if (*(a1 + 26424) == v6)
    {
      *(a1 + 15984) = 0u;
      *(a1 + 15968) = 0u;
      *(a1 + 16072) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v136 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&dword_19B41C000, v136, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] anchor is VALID, timestamp: %llu", buf, 0xCu);
      }

      v137 = sub_19B420058();
      if (*(v137 + 160) <= 1 && *(v137 + 164) <= 1 && *(v137 + 168) <= 1 && !*(v137 + 152))
      {
        goto LABEL_182;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v168 = 3.852e-34;
      *v169 = v6;
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v140 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&dword_19B41C000, v140, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] anchor is NOT-VALID, timestamp: %llu", buf, 0xCu);
      }

      v141 = sub_19B420058();
      if (*(v141 + 160) <= 1 && *(v141 + 164) <= 1 && *(v141 + 168) <= 1 && !*(v141 + 152))
      {
        goto LABEL_182;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v168 = 3.852e-34;
      *v169 = v6;
    }

    v142 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v142);
    if (v142 != buf)
    {
      free(v142);
    }

LABEL_182:
    *(a1 + 5824) = v6;
    goto LABEL_183;
  }

  ++*(a1 + 8);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v138 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_19B41C000, v138, OS_LOG_TYPE_DEFAULT, "[RelDMService] [feedAnchor][AnchorMotionCorrespondence] anchor is IGNORED, timestamp: %llu", buf, 0xCu);
  }

  v139 = sub_19B420058();
  if (*(v139 + 160) > 1 || *(v139 + 164) > 1 || *(v139 + 168) > 1 || *(v139 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v168 = 3.852e-34;
    *v169 = v6;
    goto LABEL_48;
  }

LABEL_183:
  v143 = *MEMORY[0x1E69E9840];
}

void sub_19B694D14(uint64_t a1, unint64_t a2, float *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) != 1)
  {
    goto LABEL_37;
  }

  v6 = a1 + 24576;
  v7 = a1 + 5352;
  v8 = sub_19B447000((a1 + 5408));
  v10 = v9;
  v12 = v11;
  v13 = sub_19B606534(a1 + 80);
  *buf = sub_19B66BFF4(v13, v14);
  v38 = COERCE_DOUBLE(__PAIR64__(v16, v15));
  v39 = v17;
  v34[0] = sub_19B66C1A4(buf, v8, v10, v12);
  v34[1] = v18;
  v34[2] = v19;
  sub_19B6AD8EC(a1 + 27560, v34);
  v20 = 0;
  v21 = 0.0;
  do
  {
    v21 = v21 + (*(v7 + v20) * *(v7 + v20));
    v20 += 4;
  }

  while (v20 != 12);
  *(v6 + 3160) = sqrtf(v21);
  if (!*(a1 + 56))
  {
    goto LABEL_37;
  }

  v22 = sub_19B606534(a1 + 80);
  sub_19B66C228(v22, *a3, a3[1], a3[2]);
  if (v23 <= 0.0)
  {
    v24 = -v23;
  }

  else
  {
    v24 = v23;
  }

  if (*(v6 + 3094))
  {
    if ((*(v6 + 3176) & 1) == 0 && v24 > 0.87266)
    {
      *(v6 + 3094) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v25 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v38 = (v24 * 57.296);
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[RelDMService] Turn OFF convergingToAnchorMode in perceptualFilter. headRawDps %{public}.3f", buf, 0xCu);
      }

      v26 = sub_19B420058();
      if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v35 = 134349056;
        v36 = (v24 * 57.296);
LABEL_35:
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::perceptualFilterUpdate(const uint64_t, const CMVector3d &)", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }
  }

  else
  {
    v27 = *(a1 + 26424);
    if (v27 && v27 + 250000 > a2)
    {
      *(v6 + 3094) = 1;
      *(v6 + 3084) = 0;
      *(v6 + 3088) = 0;
      *(a1 + 27628) = 0;
      *(a1 + 27633) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v28 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v29 = ((a2 - *(a1 + 26424)) * 0.000001);
        *buf = 134349056;
        v38 = v29;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "[RelDMService] Turn ON convergingToAnchorMode in perceptualFilter. timeSinceAnchorSeconds %{public}.2f", buf, 0xCu);
      }

      v30 = sub_19B420058();
      if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v31 = ((a2 - *(a1 + 26424)) * 0.000001);
        v35 = 134349056;
        v36 = v31;
        goto LABEL_35;
      }
    }
  }

LABEL_37:
  v33 = *MEMORY[0x1E69E9840];
}

void sub_19B695170(uint64_t a1, float32x2_t *a2, unint64_t a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 37664);
  v7 = a1 + 26464;
  v8 = a1 + 16080;
  if (*(a1 + 56) != 1)
  {
    goto LABEL_51;
  }

  v9 = *(a1 + 60);
  if (v9)
  {
    v10 = *(a1 + 27752);
    if (*(a1 + 16082) == 1)
    {
      sub_19B741280(a1 + 27752, *(a1 + 5800), a3, *(a1 + 37696));
    }

    else
    {
      v14 = *(a1 + 26424);
      v15 = a3 <= v14 || v14 == 0;
      v16 = 3.4028e38;
      if (!v15)
      {
        v16 = (a3 - v14) * 0.000001;
      }

      v17 = *(a1 + 16072);
      sub_19B740BEC(a1 + 27752, a1 + 15920, *(a1 + 16088), a3, v17, v16);
    }

    if (v10 != *(v7 + 1288))
    {
      if (*(v7 + 1288))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v18 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v8 + 2);
          *buf = 67240192;
          *&buf[4] = v19;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[RelDMService] Started requesting anchor, in DV %{public}d.", buf, 8u);
        }

        v20 = sub_19B420058();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v21 = *(v8 + 2);
          v101 = 67240192;
          LODWORD(v102) = v21;
LABEL_49:
          v26 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::camControllerUpdate(const uint64_t)", "CoreLocation: %s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v22 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(v8 + 2);
          *buf = 67240192;
          *&buf[4] = v23;
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[RelDMService] Stopped requesting anchor, in DV %{public}d.", buf, 8u);
        }

        v24 = sub_19B420058();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v25 = *(v8 + 2);
          v101 = 67240192;
          LODWORD(v102) = v25;
          goto LABEL_49;
        }
      }
    }
  }

  else
  {
    *(a1 + 27752) = 0;
    if (v9 != *(a1 + 61))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v11 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[RelDMService] Stop requesting anchor if screen is locked or off.", buf, 2u);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        LOWORD(v101) = 0;
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::camControllerUpdate(const uint64_t)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      *(a1 + 61) = *(a1 + 60);
    }
  }

LABEL_51:
  if (*(a1 + 3778))
  {
    if (*(a1 + 5432) && (v27 = *(a1 + 5424)) != 0)
    {
      v28 = a3 >= v27;
      v29 = a3 - v27;
      if (v29 != 0 && v28 && v29 > 0x9CE)
      {
        if (v29 < 0x75301)
        {
          v52 = *(a1 + 5200);
          if (sub_19B696264(a1, a3))
          {
            if (*(a1 + 5200) == v52)
            {
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
              }

              v54 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349312;
                *&buf[4] = a3;
                *&buf[12] = 2050;
                *&buf[14] = v52;
                _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_ERROR, "[RelDMService] Unexpected. activeIndex unchanged. %{public}llu, last, %{public}lu", buf, 0x16u);
              }

              v55 = sub_19B420058();
              if ((*(v55 + 160) & 0x80000000) == 0 || (*(v55 + 164) & 0x80000000) == 0 || (*(v55 + 168) & 0x80000000) == 0 || *(v55 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                }

                v101 = 134349312;
                v102 = *&a3;
                v103 = 2050;
                v104 = *&v52;
                v56 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v56);
                if (v56 != buf)
                {
                  free(v56);
                }
              }

              ++v6[2];
            }

            else
            {
              if ((*(v8 + 8) & 1) == 0)
              {
                sub_19B6969D8(a1, a2, v53);
              }

              v62.f32[0] = sub_19B66BFF4((a1 + 5408), v53);
              *buf = v62.i32[0];
              *&buf[4] = v63;
              *&buf[8] = v64;
              *&buf[12] = v65;
              v100.i32[0] = sub_19B66BF70(&a2[7], buf, v62);
              v100.i32[1] = v66;
              v100.i64[1] = __PAIR64__(v68, v67);
              *v69.i32 = (a3 - *(a1 + 5424));
              v97 = v69;
              v70.f32[0] = sub_19B66C31C(&v100);
              v71 = 0;
              v70.i32[1] = v73;
              v98 = vdiv_f32(vmul_f32(v70, vdup_n_s32(0x49742400u)), vdup_lane_s32(v97, 0));
              v99 = (v72 * 1000000.0) / *v97.i32;
              v74 = 0.0;
              do
              {
                v74 = v74 + (a2->f32[v71] * a2->f32[v71]);
                ++v71;
              }

              while (v71 != 3);
              v75 = 0;
              v76 = 0.0;
              do
              {
                v76 = v76 + (v98.f32[v75] * v98.f32[v75]);
                ++v75;
              }

              while (v75 != 3);
              v77 = (a1 + 5352);
              v78 = sqrtf(v74);
              if (v78 > 0.1)
              {
                v79 = sqrtf(v76);
                if (v79 > (v78 * 100.0))
                {
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                  }

                  v80 = off_1EAFE29A0;
                  v81 = v79;
                  v82 = v78;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134349312;
                    *&buf[4] = v81;
                    *&buf[12] = 2050;
                    *&buf[14] = v82;
                    _os_log_impl(&dword_19B41C000, v80, OS_LOG_TYPE_DEFAULT, "[RelDMService] Unexpected large discrepency between avgAuxOmega and instAuxOmega. avg, %{public}.3f, inst, %{public}.3f", buf, 0x16u);
                  }

                  v83 = sub_19B420058();
                  if (*(v83 + 160) > 1 || *(v83 + 164) > 1 || *(v83 + 168) > 1 || *(v83 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                    }

                    v101 = 134349312;
                    v102 = v81;
                    v103 = 2050;
                    v104 = v82;
                    v84 = _os_log_send_and_compose_impl();
                    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v84);
                    if (v84 != buf)
                    {
                      free(v84);
                    }
                  }
                }
              }

              v85 = *(a1 + 5400);
              v106 = *(a1 + 5384);
              v107 = v85;
              v108 = *(a1 + 5416);
              v86 = *(a1 + 5368);
              *buf = *v77;
              *&buf[16] = v86;
              *v77 = *a2->f32;
              v87 = *a2[2].f32;
              v88 = *a2[4].f32;
              v89 = *a2[6].f32;
              *(a1 + 5416) = a2[8];
              *(a1 + 5384) = v88;
              *(a1 + 5400) = v89;
              *(a1 + 5368) = v87;
              *(a1 + 5424) = *&a3;
              sub_19B694D14(a1, a3, &v98);
              if (*(v8 + 8))
              {
                goto LABEL_148;
              }

              v92 = *(a1 + 5432) + 1500000.0;
              v93 = *(a1 + 56);
              if (v92 <= a3 && v93 == 2)
              {
                v93 = 1;
                *(a1 + 56) = 1;
              }

              v95 = v93 != 1 || v92 > a3;
              v96 = !v95;
              if (!v93 || v96)
              {
LABEL_148:
                if ((*(v8 + 2) & 1) == 0)
                {
                  sub_19B696C1C(a1, buf, &v98, v52);
                  v91 = 24;
                  if (*v8)
                  {
                    v91 = 40;
                  }

                  sub_19B5E8F78(a1 + 27000, (a1 + 5352), (a1 + 16092 + v91), a3, v90);
                }
              }
            }
          }

          else
          {
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v57 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
            {
              v58 = *(a1 + 5200);
              *buf = 134349312;
              *&buf[4] = a3;
              *&buf[12] = 2050;
              *&buf[14] = v58;
              _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_ERROR, "[RelDMService] failed to find new activeIdxSrc, %{public}llu, last, %{public}lu", buf, 0x16u);
            }

            v59 = sub_19B420058();
            if ((*(v59 + 160) & 0x80000000) == 0 || (*(v59 + 164) & 0x80000000) == 0 || (*(v59 + 168) & 0x80000000) == 0 || *(v59 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
              }

              v60 = *(a1 + 5200);
              v101 = 134349312;
              v102 = *&a3;
              v103 = 2050;
              v104 = v60;
              v61 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v61);
              if (v61 != buf)
              {
                free(v61);
              }
            }

            ++v6[1];
          }
        }

        else
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v43 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            v44 = *(a1 + 5424);
            *buf = 134349312;
            *&buf[4] = a3;
            *&buf[12] = 2050;
            *&buf[14] = v44;
            _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_ERROR, "[RelDMService] Aux data timestamp has large gap: current, %{public}llu, last, %{public}llu", buf, 0x16u);
          }

          v45 = sub_19B420058();
          if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v46 = *(a1 + 5424);
            v101 = 134349312;
            v102 = *&a3;
            v103 = 2050;
            v104 = v46;
            v47 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v47);
            if (v47 != buf)
            {
              free(v47);
            }
          }

          *(a1 + 5200) = 0;
          *(a1 + 5424) = 0;
          if (sub_19B696264(a1, a3))
          {
            v48 = *a2[2].f32;
            v49 = *a2[4].f32;
            v50 = *a2[6].f32;
            *(a1 + 5416) = a2[8];
            v51 = *a2->f32;
            *(a1 + 5384) = v49;
            *(a1 + 5400) = v50;
            *(a1 + 5352) = v51;
            *(a1 + 5368) = v48;
            *(a1 + 5424) = *&a3;
            *(a1 + 5432) = *&a3;
          }

          sub_19B60FED8(a1 + 5856, 0);
          *(a1 + 16152) = 0;
          *(v8 + 1360) = 0;
          *v7 = 0;
          *(v7 + 24) = 0;
          ++*v6;
        }
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v30 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(a1 + 5424);
          *buf = 134349312;
          *&buf[4] = a3;
          *&buf[12] = 2050;
          *&buf[14] = v31;
          _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEBUG, "[RelDMService] Aux data timestamp stayed the same or went backwards: current, %{public}llu, last, %{public}llu", buf, 0x16u);
        }

        v32 = sub_19B420058();
        if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v33 = *(a1 + 5424);
          v101 = 134349312;
          v102 = *&a3;
          v103 = 2050;
          v104 = v33;
          v34 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }
      }
    }

    else
    {
      *(a1 + 5200) = 0;
      *(a1 + 5424) = 0;
      if (sub_19B696264(a1, a3))
      {
        v35 = *a2[2].f32;
        v36 = *a2[4].f32;
        v37 = *a2[6].f32;
        *(a1 + 5416) = a2[8];
        v38 = *a2->f32;
        *(a1 + 5384) = v36;
        *(a1 + 5400) = v37;
        *(a1 + 5352) = v38;
        *(a1 + 5368) = v35;
        *(a1 + 5424) = *&a3;
        *(a1 + 5432) = *&a3;
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v39 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "[RelDMService] Source IMU data missing", buf, 2u);
    }

    v40 = sub_19B420058();
    if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v101) = 0;
      v41 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    ++v6[3];
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B696264(uint64_t a1, unint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 3778))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v15 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "[RelDMService] calcActiveIndexSrc: srcBuffer is empty.", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_61;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
LABEL_71:
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    goto LABEL_59;
  }

  v4 = *sub_19B607AFC((a1 + 3776), 0);
  v5 = a2 + 5000;
  v6 = *sub_19B607AFC((a1 + 3776), 0);
  if (v4 > a2 + 5000)
  {
    v7 = (v6 - v5);
    v8 = mach_absolute_time();
    v9 = sub_19B41E070(v8) * 1000000.0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v10 = v7 * 0.001;
    v11 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v12 = *sub_19B607AFC((a1 + 3776), 0);
      *buf = 134349824;
      v46 = v9;
      v47 = 2050;
      v48 = v5;
      v49 = 2050;
      v50 = v12;
      v51 = 2050;
      v52 = v10;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[RelDMService] calcActiveIndexSrc: Aux data is too old compared to source data. {current: %{public}llu aux: %{public}llu source: %{public}llu diffMS: %{public}f}", buf, 0x2Au);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      goto LABEL_61;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v43 = *sub_19B607AFC((a1 + 3776), 0);
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::calcActiveIndexSrc(const uint64_t)", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (v6 < a2 || *sub_19B607AFC((a1 + 3776), 0) > v5)
  {
    v17 = a1 + 3784;
    v18 = *(a1 + 3778);
    v19 = *(a1 + 3776) + v18 - 1;
    v20 = *(a1 + 3780);
    if (v19 < v20)
    {
      v20 = 0;
    }

    v21 = *(v17 + 8 * (v19 - v20));
    if (v21 + 10000 >= a2)
    {
      v34 = *(a1 + 5200);
      while (v18 > v34)
      {
        if (*sub_19B607AFC((a1 + 3776), --v18) <= a2)
        {
          v35 = sub_19B607AFC((a1 + 3776), v18);
          if (v18 >= *(a1 + 3778) - 1 || (v36 = v18 + 1, v37 = a2 - *v35, *sub_19B607AFC((a1 + 3776), v18 + 1) - a2 >= v37))
          {
            v36 = v18;
          }

          *(a1 + 5200) = v36;
          goto LABEL_50;
        }
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v39 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "[RelDMService] Should not end up here.", buf, 2u);
      }

      v40 = sub_19B420058();
      if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
      {
        goto LABEL_61;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v22 = (a2 - v21);
      v23 = mach_absolute_time();
      v24 = sub_19B41E070(v23) * 1000000.0;
      if (qword_1EAFE2998 != -1)
      {
        v42 = v24;
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        v24 = v42;
      }

      v25 = v22 * 0.001;
      v26 = v24;
      v27 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 3776) + *(a1 + 3778) - 1;
        v29 = *(a1 + 3780);
        if (v28 < v29)
        {
          v29 = 0;
        }

        v30 = *(v17 + 8 * (v28 - v29));
        *buf = 134349824;
        v46 = v26;
        v47 = 2050;
        v48 = a2;
        v49 = 2050;
        v50 = v30;
        v51 = 2050;
        v52 = v25;
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[RelDMService] calcActiveIndexSrc: Unexpected Aux data is ahead of source IMU data. {current: %{public}llu aux: %{public}llu source: %{public}llu diffMS: %{public}f}", buf, 0x2Au);
      }

      v31 = sub_19B420058();
      if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
      {
        goto LABEL_61;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v32 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v33 = *(a1 + 3780);
      if (v32 < v33)
      {
        v33 = 0;
      }

      v44 = *(v17 + 8 * (v32 - v33));
    }

LABEL_59:
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::calcActiveIndexSrc(const uint64_t)", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
LABEL_61:
      result = 0;
      goto LABEL_62;
    }

LABEL_60:
    free(v14);
    goto LABEL_61;
  }

  *(a1 + 5200) = 0;
LABEL_50:
  result = 1;
LABEL_62:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6969D8(uint64_t a1, float32x2_t *a2, float32x4_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16088) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "[RelDMService] Calling feed initCheckBuffers when tracking already initialized", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedInitCheckBuffers(const IMUData &)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  else
  {
    *buf = sub_19B66BFF4(a2 + 7, a3);
    v19 = v8;
    v20 = v9;
    v21 = v10;
    sub_19B66C1A4(buf, a2->f32[0], a2->f32[1], a2[1].f32[0]);
    v12 = -v11;
    if (v11 > 0.0)
    {
      v12 = v11;
    }

    v13 = *(a1 + 5442);
    v14 = *(a1 + 5444);
    v15 = *(a1 + 5440);
    if (v15 + v13 >= v14)
    {
      v16 = *(a1 + 5444);
    }

    else
    {
      v16 = 0;
    }

    *(a1 + 4 * (v15 + v13 - v16) + 5448) = v12;
    if (v14 <= v13)
    {
      if (v15 + 1 < v14)
      {
        LOWORD(v14) = 0;
      }

      *(a1 + 5440) = v15 + 1 - v14;
    }

    else
    {
      *(a1 + 5442) = v13 + 1;
    }

    *buf = v11;
    sub_19B5BC034(a1 + 5456, buf);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void *sub_19B696C1C(uint64_t a1, uint64_t a2, float32x2_t *a3, unint64_t a4)
{
  v7 = 0;
  v73 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 33826);
  v59 = *a3;
  v60 = a3[1].f32[0];
  v9 = (*(a2 + 20) + *(a1 + 5372)) * -0.5;
  v61 = vmul_f32(vadd_f32(*(a2 + 12), *(a1 + 5364)), 0xBF000000BF000000);
  v62 = v9;
  *buf = *(a1 + 5376);
  *&buf[8] = *(a1 + 5384);
  do
  {
    *&buf[v7] = -*&buf[v7];
    v7 += 4;
  }

  while (v7 != 12);
  v63 = *buf;
  v64 = *&buf[8];
  v65 = *(a1 + 5388);
  v10 = *(a1 + 5400);
  v66 = *(a1 + 5396);
  v67 = v10;
  v68 = *(a1 + 5404);
  v69 = *(a1 + 5408);
  v11 = -1.0;
  if (*(a1 + 756) != *(a1 + 754) || (v12 = *(a1 + 5200), v12 < 0x30))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v45 = (v12 >> 1) - 24;
  v46 = sub_19B5BE518(a1 + 724, v45, 25);
  v47 = sub_19B613A10(a1 + 724, v45, 25, v46);
  v48 = sub_19B5BE518(a1 + 724, v45, 25) + -1.0;
  v49 = -v48;
  if (v48 > 0.0)
  {
    v49 = v48;
  }

  v11 = v47 + (v49 * v49);
  if (v47 < 0.000025 && v49 < 0.05)
  {
    v50 = *(a1 + 752) + *(a1 + 754) - 1;
    v51 = *(a1 + 756);
    if (v50 < v51)
    {
      v51 = 0;
    }

    v52 = *(a1 + 4 * (v50 - v51) + 760) + -1.0;
    if (v52 <= 0.0)
    {
      v52 = -v52;
    }

    if (v52 < 0.05)
    {
      v13 = 1;
      goto LABEL_6;
    }
  }

  v13 = 0;
  if (v47 < 0.01 && v49 < 0.1)
  {
    v53 = *(a1 + 752) + *(a1 + 754) - 1;
    v54 = *(a1 + 756);
    if (v53 < v54)
    {
      v54 = 0;
    }

    v55 = *(a1 + 4 * (v53 - v54) + 760) + -1.0;
    if (v55 <= 0.0)
    {
      v55 = -v55;
    }

    if (v55 < 0.1)
    {
      v13 = 2;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  v14 = 0;
  memset(v56, 0, 24);
  v15 = *(a1 + 5224);
  *buf = *(a1 + 5216);
  *&buf[8] = v15;
  do
  {
    *&buf[v14] = -*&buf[v14];
    v14 += 4;
  }

  while (v14 != 12);
  *&v56[24] = *buf;
  LODWORD(v57) = *&buf[8];
  *(&v57 + 4) = vdup_n_s32(0x3A03126Fu);
  HIDWORD(v57) = 973279855;
  *v58 = v13;
  *&v58[4] = v11;
  *&v58[8] = xmmword_19B7B7E30;
  sub_19B41E130(&v58[8], xmmword_19B7B7E30);
  v16 = a4 + 1;
  v17 = *(a1 + 5200);
  if (a4 + 1 <= v17)
  {
    do
    {
      v20 = v16;
      if (v16 == v17)
      {
        v21 = (a3[1].f32[0] + *(a1 + 5360)) * 0.5;
        v59 = vmul_f32(vadd_f32(*a3, *(a1 + 5352)), 0x3F0000003F000000);
        v60 = v21;
      }

      if (a4)
      {
        v22 = v16 >> 1;
        v28 = sub_19B697334((a1 + 116), v16 >> 1);
        v29 = 0;
        *buf = *v28;
        *&buf[8] = *(v28 + 8);
        do
        {
          *&buf[v29] = -*&buf[v29];
          v29 += 4;
        }

        while (v29 != 12);
        v26 = *buf;
        v27 = *&buf[8];
      }

      else
      {
        v22 = a4 >> 1;
        v23 = sub_19B697334((a1 + 116), a4 >> 1);
        if ((a4 >> 1) + 1 < *(a1 + 118) - 1)
        {
          v24 = v22 + 1;
        }

        else
        {
          v24 = *(a1 + 118) - 1;
        }

        v25 = sub_19B697334((a1 + 116), v24);
        v26 = vmul_f32(vadd_f32(*v23, *v25), 0xBF000000BF000000);
        v27 = (v23[1].f32[0] + v25[1].f32[0]) * -0.5;
      }

      *&v56[12] = v26;
      *&v56[20] = v27;
      v30 = sub_19B697334((a1 + 960), a4);
      v31 = sub_19B697334((a1 + 960), v20);
      v32 = (v30[1].f32[0] + v31[1].f32[0]) * 0.5;
      *v56 = vmul_f32(vadd_f32(*v30, *v31), 0x3F0000003F000000);
      *&v56[8] = v32;
      v33 = sub_19B697334((a1 + 4584), v22);
      v34 = *(v33 + 8);
      *(&v57 + 4) = *v33;
      HIDWORD(v57) = v34;
      *&v58[8] = *sub_19B69ADEC((a1 + 2168), v20);
      v35 = *&v56[16];
      *(a1 + 5280) = *v56;
      *(a1 + 5296) = v35;
      *(a1 + 5344) = *&v58[16];
      v36 = *v58;
      *(a1 + 5312) = v57;
      *(a1 + 5328) = v36;
      v37 = *sub_19B607AFC((a1 + 3776), v20);
      v38 = v37 - *sub_19B607AFC((a1 + 3776), a4);
      if (v38 >= 0x4E21)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v39 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v38;
          _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "[RelDMService] Unexpected large IMU dt passed to EKF. dt=%{public}llu", buf, 0xCu);
        }

        v40 = sub_19B420058();
        if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v70 = 134349056;
          v71 = v38;
          v41 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::processIMUData(const IMUData &, const CMVector3d &, const size_t)", "CoreLocation: %s\n", v41);
          if (v41 != buf)
          {
            free(v41);
          }
        }
      }

      v42 = v38 / 1000000.0;
      v43 = *sub_19B607AFC((a1 + 3776), v20);
      v44 = v42;
      sub_19B697518(a1, v56, &v59, v43, v44);
      if (v8[3830] == 1 && v8[94] == 1)
      {
        sub_19B78F638(a1 + 33904, v56, &v59, v43, v44);
      }

      if (*(a1 + 56) == 1)
      {
        *v8 = *(a1 + 27752);
        sub_19B5AE9DC(a1 + 33824, v56, &v59, v43, v44);
      }

      v16 = v20 + 1;
      v17 = *(a1 + 5200);
      a4 = v20;
    }

    while (v20 + 1 <= v17);
  }

  result = sub_19B607AFC((a1 + 3776), v17);
  *(a1 + 5816) = *result;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B697334(unsigned __int16 *a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1[1] <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v10 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 39,out of buffer range %zu.", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element &CMVectorBufferBase<float, 3>::operator[](const size_t) [T = float, N = 3]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = sub_19B5BEC4C(a1, a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B697518(uint64_t a1, uint64_t a2, float32x2_t *a3, unint64_t a4, double a5)
{
  v163 = *MEMORY[0x1E69E9840];
  if (*(a1 + 17) == 1)
  {
    sub_19B68F90C(a1, *(a1 + 18));
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v13 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[RelDMService] Missing BodyFace transform prevented feedEKFWithData.", buf, 2u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      goto LABEL_415;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    LOWORD(v153) = 0;
    goto LABEL_23;
  }

  v10 = (a1 + 12192);
  if (*(a1 + 16) == 1)
  {
    v11 = *(a1 + 37697);
    *(a1 + 37697) = 0;
    v12 = *(a1 + 5232);
    if (v12 <= 0x29 && ((1 << v12) & 0x20000000110) != 0 && (v12 == 8 || *(a1 + 5236) > 1) || sub_19B7399E4(a1 + 5232, a4) > 3.0 && *(a1 + 37696) == 1)
    {
      *(a1 + 37697) = 1;
      *(a1 + 37704) = a4;
    }

    else if (*(a1 + 37704) && sub_19B7397C0(a1 + 5232, a4) < 2.0 && *(a1 + 37704) + 10000000 > a4)
    {
      *(a1 + 37697) = 1;
    }

    if (*(a1 + 37697) == v11)
    {
      goto LABEL_57;
    }

    v16 = (a1 + 15920);
    if (*(a1 + 37697))
    {
      if (*v16 > 2.25)
      {
        sub_19B699D20(v16, 2.25);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v17 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[RelDMService, Entering steadyStatePedestrian.", buf, 2u);
      }

      v18 = sub_19B420058();
      if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
      {
        goto LABEL_57;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v153) = 0;
    }

    else
    {
      sub_19B699D20(v16, *(a1 + 15924));
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v19 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEFAULT, "[RelDMService], Exiting steadyStatePedestrian.", buf, 2u);
      }

      v20 = sub_19B420058();
      if (*(v20 + 160) <= 1 && *(v20 + 164) <= 1 && *(v20 + 168) <= 1 && !*(v20 + 152))
      {
        goto LABEL_57;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v153) = 0;
    }

    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::shortenBTZHorizonForMusic(const uint64_t)", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }

LABEL_57:
    if (*(a1 + 16) == 1)
    {
      *(a1 + 12232) = *(a1 + 37697);
    }
  }

  sub_19B60FF8C(a1 + 5856, a2, a3, (a1 + 16116), (a1 + 5232), *(a1 + 16072), a4, a5);
  if (*(a1 + 16080) == 1)
  {
    v23 = *(a1 + 12224) ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = *v10;
  if (*v10)
  {
    v24 = *(a1 + 12232);
  }

  v22.i32[0] = *(a1 + 15872);
  sub_19B5BA304((a1 + 27784), a2, a3, v23 & 1, v24 & 1, (a1 + 12200), a4, v22, *(a1 + 12104));
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 16072) <= 0.00499999989)
    {
      *(a1 + 37716) = 0;
    }

    else
    {
      v25 = *(a1 + 15976);
      if (v25 > 1.0)
      {
        v26 = v25 + *(a1 + 15968) * 2.0;
        *(a1 + 37720) = v26;
      }

      if (v25 == 0.0)
      {
        v27 = *(a1 + 37720);
        if (v27 > 0.0)
        {
          *(a1 + 37716) = v27 + *(a1 + 37716);
          *(a1 + 37720) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v28 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            v29 = *(a1 + 37716);
            *buf = 134217984;
            *&buf[4] = v29;
            _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[RelDMService], fAccumulatedShortQuiescenceSeconds, %.3f", buf, 0xCu);
          }

          v30 = sub_19B420058();
          if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v31 = *(a1 + 37716);
            v153 = 134217984;
            v154 = v31;
            v32 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::updateKeepBoresightCenteredState()", "CoreLocation: %s\n", v32);
            if (v32 != buf)
            {
              free(v32);
            }
          }
        }
      }
    }

    if (*(a1 + 37712))
    {
      if (*(a1 + 16072) < 0.00499999989 && ((*(a1 + 37697) & 1) != 0 || *(a1 + 15968) >= 1.0))
      {
        *(a1 + 37712) = 0;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v33 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "[RelDMService] keepBoresightCentered: Release boresight to normal tracking.", buf, 2u);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v153) = 0;
          v40 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::updateKeepBoresightCenteredState()", "CoreLocation: %s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }
      }
    }

    else
    {
      v35 = *(a1 + 37716);
      if (v35 > 12.5)
      {
        v36 = 1;
      }

      else
      {
        v36 = *(a1 + 37697);
      }

      if (v36)
      {
        v37 = 50.0;
      }

      else
      {
        v37 = 25.0;
      }

      v38 = *(a1 + 16072);
      if (v38 > (v35 + v37) || (v38 > v37 ? (v39 = *(a1 + 37697) == 0) : (v39 = 1), !v39))
      {
        *(a1 + 37712) = 1;
        sub_19B690784(a1, 0);
      }
    }
  }

  if ((*(a1 + 56) & 0xFFFFFFFE) == 2)
  {
LABEL_113:
    v41 = *(a1 + 5824) + 210000;
    v42 = *(a1 + 56) & 0xFFFFFFFE;
    v43 = v42 != 2 || v41 < a4;
    if (v41 < a4 && v42 == 2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v44 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v41 < a4;
        _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_DEFAULT, "[RelDMService] LongTimeSinceAnchor %d.", buf, 8u);
      }

      v45 = sub_19B420058();
      if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v153 = 67109120;
        LODWORD(v154) = v41 < a4;
        v46 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v46);
        if (v46 != buf)
        {
          free(v46);
        }
      }
    }

    v47 = *(a1 + 56);
    if (v47 == 3)
    {
      a5 = 0.0;
    }

    if (v41 < a4 && v47 == 2)
    {
      v48 = 0;
      v49 = 0;
      do
      {
        *v49.i32 = *v49.i32 + (*(a2 + 12 + v48) * *(a2 + 12 + v48));
        v48 += 4;
      }

      while (v48 != 12);
      *v49.i32 = sqrtf(*v49.i32);
      v50 = vdiv_f32(*(a2 + 12), vdup_lane_s32(v49, 0));
      v51 = *(a2 + 20);
      *buf = 0;
      *&buf[8] = 0;
      *&buf[12] = v50;
      *&buf[20] = v51 / *v49.i32;
      *&buf[24] = *(a2 + 24);
      v158 = *(a2 + 32);
      v159 = *(a2 + 36);
      v160 = *(a2 + 44);
      v161 = 1;
      v162 = *(a2 + 56);
      v52 = a5;
      v53 = a1 + 16088;
      v54 = buf;
    }

    else
    {
      v52 = a5;
      v53 = a1 + 16088;
      v54 = a2;
    }

    sub_19B6051DC(v53, v54, a3, v43, v52);
    if (!*(a2 + 48) || (v64 = 0.0, !a3[6].i32[0]))
    {
      if (*(a1 + 56) == 2)
      {
        sub_19B612AE8(a1 + 5856, a2, a3, (a1 + 16116), a4);
      }

      else
      {
        v65 = sub_19B612DF8(a1 + 5856, a2, a3, a4, v63);
      }

      v64 = (v65 * 9.8067) * 9.8067;
    }

    sub_19B603EEC(a1 + 16088, a2, a3, *(a1 + 56), a4, a5, v64);
    if (*(a1 + 56) == 1 && *(a1 + 26424) == a4)
    {
      *(a1 + 15984) = 0u;
      *(a1 + 15968) = 0u;
LABEL_414:
      *(a1 + 16072) = 0;
      goto LABEL_415;
    }

    goto LABEL_415;
  }

  v55 = (a1 + 5456);
  *(a1 + 16081) = 0;
  if (*(a1 + 16088))
  {
    v56 = sub_19B606534(a1 + 80);
    v58 = sub_19B61313C(a1 + 5856, a2, a3, v56, *(a1 + 62), v57);
    v59 = *(a1 + 16083);
    v60 = *(a1 + 32836);
    *(a1 + 16083) = v60;
    v61 = *(a1 + 16);
    if (v61 == 1)
    {
      if (*v10 && *(a1 + 12232) == 1 && (!*(a1 + 27784) || (*(a1 + 33744) & 1) == 0))
      {
        v62 = *(a1 + 12224) ^ 1;
      }

      else
      {
        v62 = 1;
      }

      v60 &= v62;
      *(a1 + 16083) = v60;
    }

    if (v59 != v60)
    {
      if (v60)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v72 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v72, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering complex transition.", buf, 2u);
        }

        v73 = sub_19B420058();
        if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v153) = 0;
LABEL_220:
          v79 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v79);
          if (v79 != buf)
          {
            free(v79);
          }
        }
      }

      else
      {
        if (v61 == 1)
        {
          sub_19B699D20((a1 + 15920), 1.0);
          *(a1 + 63) = 1;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v74 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v74, OS_LOG_TYPE_DEFAULT, "[RelDMService] Shorten Pedestrian BTZ horizon upon exiting complex transition.", buf, 2u);
          }

          v75 = sub_19B420058();
          if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            LOWORD(v153) = 0;
            v76 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v76);
            if (v76 != buf)
            {
              free(v76);
            }
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v77 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exiting complex transition.", buf, 2u);
        }

        v78 = sub_19B420058();
        if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v153) = 0;
          goto LABEL_220;
        }
      }
    }

    v80 = *v10;
    if (!*v10 || *(a1 + 12232) != 1)
    {
      *(a1 + 66) = 0;
      goto LABEL_257;
    }

    *&buf[8] = *(a1 + 16100);
    *buf = *(a1 + 16092);
    v81 = 24;
    if (*(a1 + 16080))
    {
      v81 = 40;
    }

    *&buf[12] = *(a1 + 16092 + v81);
    v150 = sub_19B604A8C(a1 + 80, buf, &buf[12]);
    v151 = v82;
    v152 = v83;
    v84 = sub_19B73888C(&v150);
    if (*(a1 + 66) == 1)
    {
      if ((*(a1 + 16083) & 1) == 0 && (*(a1 + 16064) & 1) == 0 && a4 - *(a1 + 72) <= 0x6ACFC0 && v84 >= 0.43633)
      {
        goto LABEL_256;
      }

      sub_19B699D20((a1 + 15920), 2.25);
      *(a1 + 66) = 0;
      *(a1 + 72) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v85 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v85, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exit lengthened BTZ horizon.", buf, 2u);
      }

      v86 = sub_19B420058();
      if (*(v86 + 160) <= 1 && *(v86 + 164) <= 1 && *(v86 + 168) <= 1 && !*(v86 + 152))
      {
        goto LABEL_256;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v153) = 0;
    }

    else
    {
      if (*(a1 + 12224))
      {
        v88 = 1;
      }

      else
      {
        v89 = *(a1 + 12208);
        v39 = v89 == 0;
        v90 = v89 + 2000000;
        v88 = v39 || v90 <= a4;
      }

      if (*(a1 + 63) & 1) != 0 || ((*(a1 + 16083) | *(a1 + 65) | v88))
      {
        goto LABEL_256;
      }

      v145 = *(a1 + 12216);
      if (v145 <= 0.0)
      {
        v145 = -v145;
      }

      if (v145 <= 0.43633 || v84 <= 0.7854)
      {
        goto LABEL_256;
      }

      sub_19B699D20((a1 + 15920), 5.0);
      *(a1 + 66) = 1;
      *(a1 + 72) = a4;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v146 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v147 = *(a1 + 12216);
        if (v147 <= 0.0)
        {
          v147 = -v147;
        }

        *buf = 134218240;
        *&buf[4] = (v147 * 57.296);
        *&buf[12] = 2048;
        *&buf[14] = (v84 * 57.296);
        _os_log_impl(&dword_19B41C000, v146, OS_LOG_TYPE_DEFAULT, "[RelDMService] Enter lengthened BTZ horizon. headYaw, %.2f, boreSightAngle, %.2f", buf, 0x16u);
      }

      v148 = sub_19B420058();
      if (*(v148 + 160) <= 1 && *(v148 + 164) <= 1 && *(v148 + 168) <= 1 && !*(v148 + 152))
      {
        goto LABEL_256;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v149 = *(a1 + 12216);
      if (v149 <= 0.0)
      {
        v149 = -v149;
      }

      v153 = 134218240;
      v154 = (v149 * 57.296);
      v155 = 2048;
      v156 = (v84 * 57.296);
    }

    v87 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::updateBTZHorizonAfterPedestrianHeadTurn(uint64_t)", "CoreLocation: %s\n", v87);
    if (v87 != buf)
    {
      free(v87);
    }

LABEL_256:
    v80 = *v10;
LABEL_257:
    v92 = *(a1 + 65);
    if (v80)
    {
      if ((*(a1 + 65) & 1) == 0)
      {
        if (*(a1 + 12233))
        {
          *(a1 + 65) = 1;
          sub_19B699D20((a1 + 15920), 1.0);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v96 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v96, OS_LOG_TYPE_DEFAULT, "[RelDMService] Enter ForceShortendBTZHorizon due to likelySlowBodyTurn.", buf, 2u);
          }

          v97 = sub_19B420058();
          if (*(v97 + 160) > 1 || *(v97 + 164) > 1 || *(v97 + 168) > 1 || *(v97 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            LOWORD(v153) = 0;
            goto LABEL_290;
          }
        }

LABEL_292:
        sub_19B714F7C(a1 + 15920, a2, a3, a1 + 16116, v58, *(a1 + 16083), a4, a5);
        if (*(a1 + 56) == 1)
        {
          v99 = *(a1 + 26424);
          v100 = a4 <= v99 || v99 == 0;
          v101 = (a4 - v99) * 0.000001;
          if (v100)
          {
            v101 = 3.4028e38;
          }

          v102 = *(a1 + 5832);
          if (v102 <= *(a1 + 5840))
          {
            v102 = *(a1 + 5840);
          }

          v103 = a4 <= v102 || v102 == 0;
          v104 = (a4 - v102) * 0.000001;
          if (v103)
          {
            v104 = 3.4028e38;
          }

          v105 = *(a1 + 5848);
          v106 = a4 <= v105 || v105 == 0;
          v107 = (a4 - v105) * 0.000001;
          if (v106)
          {
            v107 = 3.4028e38;
          }

          sub_19B714B8C(a1 + 15920, v101, v104, v107);
        }

        v108 = *(a1 + 16064);
        if (*(a1 + 15962) == 1)
        {
          v109 = *(a1 + 27752);
          *(a1 + 16064) = v109 ^ 1;
          if (v108 == (v109 ^ 1))
          {
            goto LABEL_398;
          }

          if ((v109 & 1) == 0)
          {
            if (*(a1 + 63) == 1 && (*(a1 + 64) & 1) == 0)
            {
              *(a1 + 64) = *(a1 + 16083) ^ 1;
            }

            *(a1 + 27660) = 0;
            *(a1 + 27664) = 0;
            *(a1 + 27628) = 0;
            *(a1 + 27633) = 0;
            *(a1 + 27668) = 1;
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v110 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v110, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering BTZ.", buf, 2u);
            }

            v111 = sub_19B420058();
            if (*(v111 + 160) > 1 || *(v111 + 164) > 1 || *(v111 + 168) > 1 || *(v111 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
              }

              LOWORD(v153) = 0;
LABEL_396:
              v132 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v132);
              if (v132 != buf)
              {
                free(v132);
              }

              goto LABEL_398;
            }

            goto LABEL_398;
          }
        }

        else
        {
          *(a1 + 16064) = 0;
          if (!v108)
          {
            goto LABEL_398;
          }
        }

        if (*(a1 + 64) == 1)
        {
          if ((*(a1 + 65) & 1) == 0)
          {
            if (*v10)
            {
              v112 = 5.0;
              if (*(a1 + 12232))
              {
                v112 = 2.25;
              }
            }

            else
            {
              v112 = 5.0;
            }

            sub_19B699D20((a1 + 15920), v112);
          }

          *(a1 + 63) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v127 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v127, OS_LOG_TYPE_DEFAULT, "[RelDMService] Reset BTZ horizon upon first BTZ after shortened horizon due to CT.", buf, 2u);
          }

          v128 = sub_19B420058();
          if (*(v128 + 160) > 1 || *(v128 + 164) > 1 || *(v128 + 168) > 1 || *(v128 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            LOWORD(v153) = 0;
            v129 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v129);
            if (v129 != buf)
            {
              free(v129);
            }
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v130 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v130, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exiting BTZ.", buf, 2u);
        }

        v131 = sub_19B420058();
        if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || *(v131 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v153) = 0;
          goto LABEL_396;
        }

LABEL_398:
        *(a1 + 16072) = *(a1 + 16072) + a5;
        sub_19B612470(a1 + 5856, a2, a3, a5);
        v133 = *(a1 + 12080);
        if (*(a1 + 16) == 1 && (*(a1 + 37712) & 1) != 0 || (*(a1 + 15960) & 1) != 0)
        {
          goto LABEL_412;
        }

        v134 = *(a1 + 16064);
        v135 = *(a1 + 62);
        if (v134 & 1) != 0 || (v135)
        {
          if (v133 >= a5 || ((v134 ^ 1 | v135) & 1) == 0)
          {
            goto LABEL_412;
          }

          *(a1 + 62) = 0;
          v136 = *(a1 + 15924);
        }

        else
        {
          if (*(a1 + 16072) < v133)
          {
            v133 = *(a1 + 16072);
          }

          if (v133 <= 15.0 || (*(a1 + 62) = 1, v136 = 3.0, *(a1 + 15924) <= 3.0))
          {
LABEL_412:
            if (*(a1 + 16064) == 1)
            {
              *buf = *(a1 + 16008);
              *&buf[12] = *(a1 + 16020);
              sub_19B6041DC(a1 + 16088, buf, a4);
              goto LABEL_414;
            }

            if (*(a1 + 56))
            {
              v138 = *(a1 + 26424);
              if (v138)
              {
                if (v138 + 250000 > a4)
                {
                  goto LABEL_113;
                }
              }
            }

            v139 = *(a1 + 5858);
            if (v139 == *(a1 + 7066))
            {
              if (v139 >= *(a1 + 9146))
              {
                v139 = *(a1 + 9146);
              }

              if (v139 >= 0x28)
              {
                if (sub_19B6137FC((a1 + 5856)))
                {
                  *(a1 + 5848) = a4;
                  if ((*(a1 + 16080) & 1) == 0)
                  {
                    *(a1 + 16080) = 257;
                    sub_19B6043EC(a1 + 16088);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                    }

                    v140 = off_1EAFE29A0;
                    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B41C000, v140, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering 1-IMU.", buf, 2u);
                    }

                    v141 = sub_19B420058();
                    if (*(v141 + 160) <= 1 && *(v141 + 164) <= 1 && *(v141 + 168) <= 1 && !*(v141 + 152))
                    {
                      goto LABEL_113;
                    }

                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                    }

                    LOWORD(v153) = 0;
                    goto LABEL_449;
                  }
                }

                else if (*(a1 + 16080) == 1 && (sub_19B6132E8(a1 + 5856) & 1) != 0)
                {
                  *(a1 + 16080) = 256;
                  sub_19B604800(a1 + 16088, a1 + 80, 0);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                  }

                  v142 = off_1EAFE29A0;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v142, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering 2-IMU.", buf, 2u);
                  }

                  v143 = sub_19B420058();
                  if (*(v143 + 160) <= 1 && *(v143 + 164) <= 1 && *(v143 + 168) <= 1 && !*(v143 + 152))
                  {
                    goto LABEL_113;
                  }

                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                  }

                  LOWORD(v153) = 0;
LABEL_449:
                  v144 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v144);
                  if (v144 != buf)
                  {
                    free(v144);
                  }

                  goto LABEL_113;
                }
              }
            }

            *(a1 + 16081) = 0;
            goto LABEL_113;
          }
        }

        sub_19B699D20((a1 + 15920), v136);
        goto LABEL_412;
      }

      if (*(a1 + 12233))
      {
        goto LABEL_292;
      }

      *(a1 + 65) = 0;
      if ((*(a1 + 63) & 1) == 0)
      {
        v93 = 5.0;
        if (*(a1 + 12232))
        {
          v93 = 2.25;
        }

LABEL_266:
        sub_19B699D20((a1 + 15920), v93);
      }
    }

    else
    {
      if ((*(a1 + 65) & 1) == 0)
      {
        goto LABEL_292;
      }

      *(a1 + 65) = 0;
      v93 = 5.0;
      if ((*(a1 + 63) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v94 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exit ForceShortendBTZHorizon.", buf, 2u);
    }

    v95 = sub_19B420058();
    if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v153) = 0;
LABEL_290:
      v98 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v98);
      if (v98 != buf)
      {
        free(v98);
      }

      goto LABEL_292;
    }

    goto LABEL_292;
  }

  if ((*(a1 + 16085) & 1) == 0)
  {
    if (*(a1 + 5444) == *(a1 + 5442))
    {
      goto LABEL_158;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v70 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v70, OS_LOG_TYPE_DEFAULT, "[RelDMService] Can't initialize due to accessory IMU buffers not being full.", buf, 2u);
    }

    v71 = sub_19B420058();
    if (*(v71 + 160) <= 1 && *(v71 + 164) <= 1 && *(v71 + 168) <= 1 && !*(v71 + 152))
    {
      goto LABEL_415;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    LOWORD(v153) = 0;
LABEL_23:
    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }

    goto LABEL_415;
  }

  if (*(a1 + 5488) != *(a1 + 5486))
  {
    goto LABEL_415;
  }

LABEL_158:
  v66 = 0.0;
  for (i = 3; i != 6; ++i)
  {
    v66 = v66 + (a3->f32[i] * a3->f32[i]);
  }

  v68 = sqrtf(v66) + -1.0;
  if (v68 <= 0.0)
  {
    v68 = -v68;
  }

  if (v68 < 0.5)
  {
    if (*(a1 + 16085))
    {
      if (*v55 == 1)
      {
        sub_19B5BE7E0(a1 + 5456);
      }

      v69 = *(a1 + 5460) < 0.2618 && sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0) < 0.5236;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v113 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        if (*v55 == 1)
        {
          sub_19B5BE7E0(a1 + 5456);
        }

        v114 = *(a1 + 5460);
        v115 = sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0);
        *buf = 134218240;
        *&buf[4] = v114;
        *&buf[12] = 2048;
        *&buf[14] = v115;
        _os_log_impl(&dword_19B41C000, v113, OS_LOG_TYPE_DEBUG, "[RelDMService] fResetTrackingAfterAuxGap, mean %.3f, maxCurr %.3f", buf, 0x16u);
      }

      v116 = sub_19B420058();
      if (*(v116 + 160) > 1 || *(v116 + 164) > 1 || *(v116 + 168) > 1 || *(v116 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        if (*v55 == 1)
        {
          sub_19B5BE7E0(a1 + 5456);
        }

        v117 = *(a1 + 5460);
        v153 = 134218240;
        v154 = v117;
        v155 = 2048;
        v156 = sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0);
        v118 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v118);
        if (v118 != buf)
        {
          free(v118);
        }

        if (!v69)
        {
          goto LABEL_415;
        }
      }

      else if (!v69)
      {
        goto LABEL_415;
      }
    }

    else if (sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0) >= 0.34907)
    {
      goto LABEL_415;
    }

    *buf = sub_19B447000((a2 + 56));
    *&buf[4] = v119;
    *&buf[8] = v120;
    v121.f32[0] = sub_19B447000(&a3[7]);
    v150 = v121.f32[0];
    v151 = v122;
    v152 = v123;
    sub_19B714B04(a1 + 15920, buf, &v150, a1 + 16116, &v153, v121);
    sub_19B60307C(a1 + 16088, a2, a3, &v153, a4);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v124 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v124, OS_LOG_TYPE_DEFAULT, "[RelDMService] Initializing EKF.", buf, 2u);
    }

    v125 = sub_19B420058();
    if (*(v125 + 160) > 1 || *(v125 + 164) > 1 || *(v125 + 168) > 1 || *(v125 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v150) = 0;
      v126 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v126);
      if (v126 != buf)
      {
        free(v126);
      }
    }

    *(a1 + 16085) = 0;
  }

LABEL_415:
  v137 = *MEMORY[0x1E69E9840];
}