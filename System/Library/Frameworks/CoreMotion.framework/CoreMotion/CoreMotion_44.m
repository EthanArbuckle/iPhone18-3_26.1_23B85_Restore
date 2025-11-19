os_log_t sub_19B639648()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

void sub_19B6396A4(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x19EAE76F0);
}

void sub_19B639788(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_19B6397C4(uint64_t a1, double *a2)
{
  if (objc_loadWeak((a1 + 8)))
  {
    v4 = [CMDisplayGravity alloc];
    v5 = *(a2 + 1);
    block = *a2;
    v11 = v5;
    v12 = *(a2 + 2);
    v7 = objc_msgSend_initWithDisplayGravity_timestamp_(v4, v6, &block, a2[6]);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3321888768;
    *&v11 = sub_19B639904;
    *(&v11 + 1) = &unk_1F0E3A818;
    objc_copyWeak(&v8, (a1 + 8));
    v9 = v7;
    objc_copyWeak(&v12, &v8);
    *(&v12 + 1) = v9;
    dispatch_async(MEMORY[0x1E69E96A0], &block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v12);
  }
}

uint64_t sub_19B6398B8(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E3A848))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_19B639904(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak && (v5 = Weak[1], objc_msgSend_fDisplayGravityHandler(v5, v3, v4)))
  {
    v8 = objc_msgSend_fDisplayGravityHandler(v5, v6, v7);
    v9 = *(a1 + 40);
    v10 = *(v8 + 16);

    v10(v8, v9);
  }

  else
  {
    v11 = *(a1 + 40);
  }
}

uint64_t sub_19B6399D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_19B639A54(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B6B1560(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

os_log_t sub_19B639AA0()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

void sub_19B639AD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B639B0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19B639B3C(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E349C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B639B7C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B4C5080();
}

void *sub_19B639C48(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B639CA4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B639CA4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B639CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B639D1C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B639D58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B639D90(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_19B639DC0(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E34900))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B639E04(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B639E4C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B63DB50(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x19EAE76F0](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_19B63DB90(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedAccessoryConfig_, result);
  }

  return result;
}

uint64_t sub_19B63E704(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedSourceDeviceIMU_, result);
  }

  return result;
}

uint64_t sub_19B63E718(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedAccessoryDeviceMotion_, result);
  }

  return result;
}

uint64_t sub_19B63E730(uint64_t a1, void *a2, uint64_t a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (v5[561] == 1)
  {
    objc_sync_enter(*(a1 + 32));
    v6 = *(*(a1 + 32) + 720);
    v9 = objc_msgSend_motionActivity(a2, v7, v8);
    sub_19B5E7094(v6, v9);
    objc_sync_exit(v5);
  }

  v10 = objc_msgSend_motionActivity(a2, a2, a3);
  v11 = *v10;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v12 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v13 = CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 264));
    *buf = 136446466;
    v95 = v13;
    v96 = 2082;
    v97 = CLMotionActivity::activityTypeToString(v11);
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[CMMediaSession] Previous Source Activity: %{public}s, Current Source Activity: %{public}s", buf, 0x16u);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 264));
    CLMotionActivity::activityTypeToString(v11);
    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = *(a1 + 32);
  objc_sync_enter(v16);
  v17 = *(*(a1 + 32) + 8);
  if (!v10[2])
  {
    sub_19B738A58(v17 + 5232, v10);
  }

  sub_19B7113D0(*(v17 + 37736), v10);
  v18 = *(a1 + 32);
  v19 = *(v18 + 240);
  if (v19)
  {
    v20 = *(v18 + 264);
    if ((v20 > 0xB || ((1 << v20) & 0xC06) == 0) && v11 <= 0xB && ((1 << v11) & 0xC06) != 0)
    {
      sub_19B6A7EE8((v19 + 32), @"staticActivityStateDuration");
      v18 = *(a1 + 32);
      v46 = *(v18 + 268);
      if (v46 <= 0x29 && ((1 << v46) & 0x20000000110) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v47 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is pedestrian. Case 1-1.", buf, 2u);
        }

        v48 = sub_19B420058();
        if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v49 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v49);
          if (v49 != buf)
          {
            free(v49);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 512), @"srcActivityStationaryAndHeadsetActivityPedestrianDuration");
        v18 = *(a1 + 32);
        v46 = *(v18 + 268);
      }

      if (v46 == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v50 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is other moving. Case 2-1.", buf, 2u);
        }

        v51 = sub_19B420058();
        if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v52 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 528), @"srcActivityStationaryAndHeadsetActivityOtherMovingDuration");
        v18 = *(a1 + 32);
        v46 = *(v18 + 268);
      }

      if (v46 == 2)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v53 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is static. Case 3-1.", buf, 2u);
        }

        v54 = sub_19B420058();
        if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v55 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v55);
          if (v55 != buf)
          {
            free(v55);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 544), @"srcActivityStationaryAndHeadsetActivityStationaryDuration");
        v18 = *(a1 + 32);
      }
    }

    v21 = *(v18 + 264);
    if (v21 <= 0xB && ((1 << v21) & 0xC06) != 0 && (v11 > 0xB || ((1 << v11) & 0xC06) == 0))
    {
      sub_19B6A80D8((*(v18 + 240) + 32), @"staticActivityStateDuration");
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v56 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v56, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 1-3 and 1-4.", buf, 2u);
      }

      v57 = sub_19B420058();
      if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v58 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      v59 = *(*(a1 + 32) + 240);
      if (*(v59 + 512) > 0.0)
      {
        sub_19B6A80D8((v59 + 512), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v60 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 2-3 and 2-4.", buf, 2u);
      }

      v61 = sub_19B420058();
      if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v62 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v62);
        if (v62 != buf)
        {
          free(v62);
        }
      }

      v63 = *(*(a1 + 32) + 240);
      if (*(v63 + 528) > 0.0)
      {
        sub_19B6A80D8((v63 + 528), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v64 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 3-3 and 3-4.", buf, 2u);
      }

      v65 = sub_19B420058();
      if (*(v65 + 160) > 1 || *(v65 + 164) > 1 || *(v65 + 168) > 1 || *(v65 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v66 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v66);
        if (v66 != buf)
        {
          free(v66);
        }
      }

      v18 = *(a1 + 32);
      v67 = *(v18 + 240);
      if (*(v67 + 544) > 0.0)
      {
        sub_19B6A80D8((v67 + 544), &stru_1F0E3D7A0);
        v18 = *(a1 + 32);
      }
    }

    v22 = *(v18 + 264);
    if (v22 != 4 && v22 != 41 && (v11 == 41 || v11 == 4))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v23 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entering walking.", buf, 2u);
      }

      v24 = sub_19B420058();
      if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 560), @"srcActivityWalking");
      v18 = *(a1 + 32);
      if (*(v18 + 268) == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v26 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered walking. Headset is already walking. Case 4-1.", buf, 2u);
        }

        v27 = sub_19B420058();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v28 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v28);
          if (v28 != buf)
          {
            free(v28);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 576), @"srcActivityWalkingWhenHeadsetActivityWalking");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v29 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered walking. Headset is already walking. Case 7-1.", buf, 2u);
        }

        v30 = sub_19B420058();
        if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v31 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 624), @"headsetActivityWalkingWhenSrcActivityWalking");
        v18 = *(a1 + 32);
      }
    }

    v32 = *(v18 + 264);
    if ((v32 == 41 || v32 == 4) && v11 != 4 && v11 != 41)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v33 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting walking.", buf, 2u);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v35 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      v36 = *(*(a1 + 32) + 240);
      if (*(v36 + 560) > 0.0)
      {
        sub_19B6A80D8((v36 + 560), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v37 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting walking. Headset don't care. Case 4-3 and 4-4.", buf, 2u);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v39 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      v40 = *(*(a1 + 32) + 240);
      if (*(v40 + 576) > 0.0)
      {
        sub_19B6A80D8((v40 + 576), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v41 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting walking. Headset don't care. Case 7-3 and 7-4.", buf, 2u);
      }

      v42 = sub_19B420058();
      if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v43 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      v18 = *(a1 + 32);
      v44 = *(v18 + 240);
      if (*(v44 + 624) > 0.0)
      {
        sub_19B6A80D8((v44 + 624), &stru_1F0E3D7A0);
        v18 = *(a1 + 32);
      }
    }

    v45 = *(v18 + 264);
    if (v45 > 51)
    {
      if (v45 == 52 || v45 == 56)
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (!v45)
      {
        goto LABEL_119;
      }

      if (v45 == 5)
      {
        goto LABEL_215;
      }
    }

    if ((v45 & 0xFFFFFFFE) == 0xA)
    {
      goto LABEL_215;
    }

LABEL_119:
    if (v11 > 51)
    {
      if (v11 != 52 && v11 != 56)
      {
        goto LABEL_212;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_215;
      }

      if (v11 != 5)
      {
LABEL_212:
        if ((v11 & 0xFFFFFFFE) != 0xA)
        {
          goto LABEL_215;
        }
      }
    }

    sub_19B6A7EE8((*(v18 + 240) + 48), @"vehicularActivityStateDuration");
    v18 = *(a1 + 32);
    if ((*(*(v18 + 8) + 16080) & 1) == 0)
    {
      sub_19B6A7EE8((*(v18 + 240) + 80), @"inVehicle2IMUDuration");
      v18 = *(a1 + 32);
    }

LABEL_215:
    v68 = *(v18 + 264);
    if (v68 > 51)
    {
      if (v68 == 52 || v68 == 56)
      {
        goto LABEL_222;
      }
    }

    else
    {
      if (!v68)
      {
        goto LABEL_233;
      }

      if (v68 == 5)
      {
LABEL_222:
        if (v11 > 51)
        {
          if (v11 == 52 || v11 == 56)
          {
            goto LABEL_233;
          }
        }

        else
        {
          if (!v11)
          {
LABEL_229:
            sub_19B6A80D8((*(v18 + 240) + 48), @"vehicularActivityStateDuration");
            v18 = *(a1 + 32);
            v69 = *(v18 + 240);
            if (*(v69 + 80) > 0.0)
            {
              sub_19B6A80D8((v69 + 80), &stru_1F0E3D7A0);
              v18 = *(a1 + 32);
              v69 = *(v18 + 240);
            }

            v71 = *(v69 + 160);
            v70 = (v69 + 160);
            if (v71 > 0.0)
            {
              sub_19B6A80D8(v70, &stru_1F0E3D7A0);
              v18 = *(a1 + 32);
            }

            goto LABEL_233;
          }

          if (v11 == 5)
          {
LABEL_233:
            v72 = *(v18 + 264);
            if ((v72 > 0x29 || ((1 << v72) & 0x20000000110) == 0) && v11 <= 0x29 && ((1 << v11) & 0x20000000110) != 0)
            {
              sub_19B6A7EE8((*(v18 + 240) + 64), @"pedestrianActivityStateDuration");
              v18 = *(a1 + 32);
              if ((*(*(v18 + 8) + 16080) & 1) == 0)
              {
                sub_19B6A7EE8((*(v18 + 240) + 96), @"srcPedestrian2IMUDuration");
                v18 = *(a1 + 32);
              }

              v76 = *(v18 + 268);
              if (v76 <= 0x29 && ((1 << v76) & 0x20000000110) != 0)
              {
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                v77 = off_1EAFE29A0;
                if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered pedestrian. Headset is already pedestrian. Case 5-1.", buf, 2u);
                }

                v78 = sub_19B420058();
                if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                  }

                  v79 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v79);
                  if (v79 != buf)
                  {
                    free(v79);
                  }
                }

                sub_19B6A7EE8((*(*(a1 + 32) + 240) + 592), @"srcActivityPedestrianWhenHeadsetActivityPedestrian");
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                v80 = off_1EAFE29A0;
                if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v80, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered pedestrian. Headset is already pedestrian. Case 6-1.", buf, 2u);
                }

                v81 = sub_19B420058();
                if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                  }

                  v82 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v82);
                  if (v82 != buf)
                  {
                    free(v82);
                  }
                }

                sub_19B6A7EE8((*(*(a1 + 32) + 240) + 608), @"headsetActivityPedestrianWhenSessionSrcActivityPedestrian");
                v18 = *(a1 + 32);
              }
            }

            v73 = *(v18 + 264);
            if (v73 <= 0x29 && ((1 << v73) & 0x20000000110) != 0 && (v11 > 0x29 || ((1 << v11) & 0x20000000110) == 0))
            {
              sub_19B6A80D8((*(v18 + 240) + 64), @"pedestrianActivityStateDuration");
              v83 = *(*(a1 + 32) + 240);
              if (*(v83 + 96) > 0.0)
              {
                sub_19B6A80D8((v83 + 96), &stru_1F0E3D7A0);
                v83 = *(*(a1 + 32) + 240);
              }

              v85 = *(v83 + 176);
              v84 = (v83 + 176);
              if (v85 > 0.0)
              {
                sub_19B6A80D8(v84, &stru_1F0E3D7A0);
              }

              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
              }

              v86 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v86, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting pedestrian. Headset don't care. Case 5-3 and 5-4.", buf, 2u);
              }

              v87 = sub_19B420058();
              if (*(v87 + 160) > 1 || *(v87 + 164) > 1 || *(v87 + 168) > 1 || *(v87 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                v88 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v88);
                if (v88 != buf)
                {
                  free(v88);
                }
              }

              v89 = *(*(a1 + 32) + 240);
              if (*(v89 + 592) > 0.0)
              {
                sub_19B6A80D8((v89 + 592), &stru_1F0E3D7A0);
              }

              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
              }

              v90 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v90, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting pedestrian. Headset don't care. Case 6-3 and 6-4.", buf, 2u);
              }

              v91 = sub_19B420058();
              if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                v92 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v92);
                if (v92 != buf)
                {
                  free(v92);
                }
              }

              v18 = *(a1 + 32);
              v93 = *(v18 + 240);
              if (*(v93 + 608) > 0.0)
              {
                sub_19B6A80D8((v93 + 608), &stru_1F0E3D7A0);
                v18 = *(a1 + 32);
              }
            }

            *(v18 + 264) = v11;
            goto LABEL_240;
          }
        }

        if ((v11 & 0xFFFFFFFE) != 0xA)
        {
          goto LABEL_229;
        }

        goto LABEL_233;
      }
    }

    if ((v68 & 0xFFFFFFFE) != 0xA)
    {
      goto LABEL_233;
    }

    goto LABEL_222;
  }

LABEL_240:
  result = objc_sync_exit(v16);
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B64048C(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = a3;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[CMMediaSession][HeadsetActivity] Status encountered an error: %{public}@", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v14 = 138543362;
      v15 = a3;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (a2 == 1)
    {
      v8 = *(v7 + 608);
      v9 = *(v7 + 616);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_19B64070C;
      v13[3] = &unk_1E7533A40;
      v13[4] = v7;
      objc_msgSend_startActivityUpdatesToQueue_withHandler_(v8, 1, v9, v13);
    }

    else
    {
      v10 = *(v7 + 616);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_19B642FB0;
      v12[3] = &unk_1E7532988;
      v12[4] = v7;
      objc_msgSend_addOperationWithBlock_(v10, a2, v12);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B64070C(uint64_t a1, void *a2, const char *a3)
{
  v112 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v109 = a3;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[CMMediaSession][HeadsetActivity] Activity encountered an error: %{public}@", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_394;
    }

    goto LABEL_279;
  }

  if (a2)
  {
    v8 = *objc_msgSend_motionActivity(a2, a2, 0);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v9 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v10 = CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 268));
      *buf = 136315394;
      v109 = v10;
      v110 = 2080;
      v111 = CLMotionActivity::activityTypeToString(v8);
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[CMMediaSession][HeadsetActivity] Previous Headphone Activity: %s, Current headphone activity: %s", buf, 0x16u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 268));
      CLMotionActivity::activityTypeToString(v8);
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *(a1 + 32);
    objc_sync_enter(v13);
    v14 = *(a1 + 32);
    v15 = *(v14 + 240);
    if (!v15)
    {
      goto LABEL_278;
    }

    v16 = *(v14 + 268);
    if (v16 == 3 || v8 != 3)
    {
      if (v16 == 3 && v8 != 3)
      {
        sub_19B6A80D8((v15 + 432), @"headsetActivityOtherDuration");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v26 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset other moving stopped.", buf, 2u);
        }

        v27 = sub_19B420058();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v28 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v28);
          if (v28 != buf)
          {
            free(v28);
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v29 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting other moving. Source don't care. Case 2-7 and 2-8.", buf, 2u);
        }

        v30 = sub_19B420058();
        if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v31 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        v14 = *(a1 + 32);
        v32 = *(v14 + 240);
        if (*(v32 + 528) > 0.0)
        {
          sub_19B6A80D8((v32 + 528), &stru_1F0E3D7A0);
          v14 = *(a1 + 32);
        }
      }

      if (*(v14 + 268) != 4 && v8 == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v33 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset walking started.", buf, 2u);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v35 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 448), @"headsetActivityWalkingDuration");
        v36 = *(*(a1 + 32) + 268);
        goto LABEL_137;
      }
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v17 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headphone other moving started.", buf, 2u);
      }

      v18 = sub_19B420058();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v19 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 432), @"headsetActivityOtherDuration");
      v14 = *(a1 + 32);
      v20 = *(v14 + 264);
      if (v20 <= 0xB && ((1 << v20) & 0xC06) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v21 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered other moving. Source already static. Case 2-5.", buf, 2u);
        }

        v22 = sub_19B420058();
        if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v23 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 528), @"srcActivityStationaryAndHeadsetActivityOtherMovingDuration");
        v14 = *(a1 + 32);
      }
    }

    v36 = *(v14 + 268);
    if (v36 == 4 && v8 != 4)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v37 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset walking stopped.", buf, 2u);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v39 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 448), @"headsetActivityWalkingDuration");
      v36 = *(*(a1 + 32) + 268);
    }

    if (v36 != 8 && v8 == 8)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v40 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset running started.", buf, 2u);
      }

      v41 = sub_19B420058();
      if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v42 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 464), @"headsetActivityRunningDuration");
      v36 = *(*(a1 + 32) + 268);
      goto LABEL_181;
    }

LABEL_137:
    if (v36 == 8 && v8 != 8)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v43 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset running stopped.", buf, 2u);
      }

      v44 = sub_19B420058();
      if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v45 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 464), @"headsetActivityRunningDuration");
      v36 = *(*(a1 + 32) + 268);
    }

    if (v36 != 2 && v8 == 2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v46 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset static started.", buf, 2u);
      }

      v47 = sub_19B420058();
      if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v48 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v48);
        if (v48 != buf)
        {
          free(v48);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 480), @"headsetActivityStationaryDuration");
      v49 = *(*(a1 + 32) + 264);
      if (v49 <= 0xB && ((1 << v49) & 0xC06) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v50 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered static. Source is already static. Case 3-5.", buf, 2u);
        }

        v51 = sub_19B420058();
        if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v52 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 544), @"srcActivityStationaryAndHeadsetActivityStationaryDuration");
      }

      goto LABEL_209;
    }

LABEL_181:
    if (v36 == 2 && v8 != 2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v53 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset static stopped.", buf, 2u);
      }

      v54 = sub_19B420058();
      if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v55 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v55);
        if (v55 != buf)
        {
          free(v55);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 480), @"headsetActivityStationaryDuration");
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v56 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v56, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exited static. Source is don't care. Case 3-7 and 3-8.", buf, 2u);
      }

      v57 = sub_19B420058();
      if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v58 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      v59 = *(*(a1 + 32) + 240);
      if (*(v59 + 544) > 0.0)
      {
        sub_19B6A80D8((v59 + 544), &stru_1F0E3D7A0);
      }
    }

LABEL_209:
    v60 = *(a1 + 32);
    v61 = *(v60 + 268);
    if ((v61 > 0x29 || ((1 << v61) & 0x20000000110) == 0) && v8 <= 0x29 && ((1 << v8) & 0x20000000110) != 0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v80 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v80, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset pedestrian started.", buf, 2u);
      }

      v81 = sub_19B420058();
      if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v82 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v82);
        if (v82 != buf)
        {
          free(v82);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 496), @"headsetActivityPedestrianDuration");
      v60 = *(a1 + 32);
      v83 = *(v60 + 264);
      if (v83 <= 0xB && ((1 << v83) & 0xC06) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v84 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v84, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered ped. Source is already static. Case 1-5.", buf, 2u);
        }

        v85 = sub_19B420058();
        if (*(v85 + 160) > 1 || *(v85 + 164) > 1 || *(v85 + 168) > 1 || *(v85 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v86 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v86);
          if (v86 != buf)
          {
            free(v86);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 512), @"srcActivityStationaryAndHeadsetActivityPedestrianDuration");
        v60 = *(a1 + 32);
        v83 = *(v60 + 264);
      }

      if (v83 <= 0x29 && ((1 << v83) & 0x20000000110) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v87 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v87, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered pedestrian. Source is already pedestrian. Case 5-5.", buf, 2u);
        }

        v88 = sub_19B420058();
        if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v89 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v89);
          if (v89 != buf)
          {
            free(v89);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 592), @"srcActivityPedestrianWhenHeadsetActivityPedestrian");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v90 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v90, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered pedestrian. Source is already pedestrian. Case 6-5.", buf, 2u);
        }

        v91 = sub_19B420058();
        if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v92 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v92);
          if (v92 != buf)
          {
            free(v92);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 608), @"headsetActivityPedestrianWhenSessionSrcActivityPedestrian");
        v60 = *(a1 + 32);
      }
    }

    v62 = *(v60 + 268);
    if (v62 <= 0x29 && ((1 << v62) & 0x20000000110) != 0 && (v8 > 0x29 || ((1 << v8) & 0x20000000110) == 0))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v93 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v93, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset pedestrian stopped.", buf, 2u);
      }

      v94 = sub_19B420058();
      if (*(v94 + 160) > 1 || *(v94 + 164) > 1 || *(v94 + 168) > 1 || *(v94 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v95 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v95);
        if (v95 != buf)
        {
          free(v95);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 496), @"headsetActivityPedestrianDuration");
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v96 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v96, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 1-7 and 1-8.", buf, 2u);
      }

      v97 = sub_19B420058();
      if (*(v97 + 160) > 1 || *(v97 + 164) > 1 || *(v97 + 168) > 1 || *(v97 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v98 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v98);
        if (v98 != buf)
        {
          free(v98);
        }
      }

      v99 = *(*(a1 + 32) + 240);
      if (*(v99 + 512) > 0.0)
      {
        sub_19B6A80D8((v99 + 512), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v100 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v100, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 5-7 and 5-8.", buf, 2u);
      }

      v101 = sub_19B420058();
      if (*(v101 + 160) > 1 || *(v101 + 164) > 1 || *(v101 + 168) > 1 || *(v101 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v102 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v102);
        if (v102 != buf)
        {
          free(v102);
        }
      }

      v103 = *(*(a1 + 32) + 240);
      if (*(v103 + 592) > 0.0)
      {
        sub_19B6A80D8((v103 + 592), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v104 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v104, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 6-7 and 6-8.", buf, 2u);
      }

      v105 = sub_19B420058();
      if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || *(v105 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v106 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v106);
        if (v106 != buf)
        {
          free(v106);
        }
      }

      v60 = *(a1 + 32);
      v107 = *(v60 + 240);
      if (*(v107 + 608) > 0.0)
      {
        sub_19B6A80D8((v107 + 608), &stru_1F0E3D7A0);
        v60 = *(a1 + 32);
      }
    }

    v63 = *(v60 + 268);
    if (v63 != 4 && v63 != 41 && (v8 == 41 || v8 == 4))
    {
      v64 = *(v60 + 264);
      if (v64 == 41 || v64 == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v65 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v65, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered walking. Source is already walking. Case 4-5.", buf, 2u);
        }

        v66 = sub_19B420058();
        if (*(v66 + 160) > 1 || *(v66 + 164) > 1 || *(v66 + 168) > 1 || *(v66 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v67 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v67);
          if (v67 != buf)
          {
            free(v67);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 576), @"srcActivityWalkingWhenHeadsetActivityWalking");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v68 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered walking. Source is already walking. Case 7-5.", buf, 2u);
        }

        v69 = sub_19B420058();
        if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v70 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v70);
          if (v70 != buf)
          {
            free(v70);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 624), @"headsetActivityWalkingWhenSrcActivityWalking");
        v63 = *(*(a1 + 32) + 268);
      }
    }

    if ((v63 == 41 || v63 == 4) && v8 != 4 && v8 != 41)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v71 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v71, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting walking. Source is don't care. Case 4-7 and 4-8.", buf, 2u);
      }

      v72 = sub_19B420058();
      if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v73 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v73);
        if (v73 != buf)
        {
          free(v73);
        }
      }

      v74 = *(*(a1 + 32) + 240);
      if (*(v74 + 576) > 0.0)
      {
        sub_19B6A80D8((v74 + 576), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v75 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v75, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting walking. Source is don't care. Case 7-7 and 7-8.", buf, 2u);
      }

      v76 = sub_19B420058();
      if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v77 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v77);
        if (v77 != buf)
        {
          free(v77);
        }
      }

      v78 = *(*(a1 + 32) + 240);
      if (*(v78 + 624) > 0.0)
      {
        sub_19B6A80D8((v78 + 624), &stru_1F0E3D7A0);
      }
    }

LABEL_278:
    objc_sync_exit(v13);
    *(*(a1 + 32) + 268) = v8;
    goto LABEL_279;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v24 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[CMMediaSession][HeadsetActivity] No activity returned!", buf, 2u);
  }

  v25 = sub_19B420058();
  if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 == -1)
    {
LABEL_10:
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }

      goto LABEL_279;
    }

LABEL_394:
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    goto LABEL_10;
  }

LABEL_279:
  v79 = *MEMORY[0x1E69E9840];
}

void sub_19B642FB0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v2 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMMediaSession][HeadsetActivity] Device disconnected. Resetting headphone activity type to unknown.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  *(*(a1 + 32) + 268) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6431F8(uint64_t a1)
{
  v2 = mach_continuous_time();
  v3 = sub_19B41E070(v2);
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 561) == 1)
  {
    sub_19B5E6BD8(*(v5 + 720), v3);
    v5 = *(a1 + 32);
  }

  v6 = *(v5 + 8);
  sub_19B69A71C(v6);
  v7 = *(v6 + 37736);

  sub_19B710554(v7, (v4 * 1000000.0));
}

void *sub_19B6444CC(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[281];
    if (v3)
    {
      v2[282] = v3;
      operator delete(v3);
    }

    v4 = v2[275];
    if (v4)
    {
      v2[276] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B644550(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2)
  {
    *(a1 + 16) = 0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    v9 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "[RelDM] Resetting UnTimesyncedAuxSampleHelper. Clearing buffer: %s", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::UnTimesyncedAuxSampleHelper::reset(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B646B34(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__stopJitterBufferLevelRetryTimer(*(a1 + 32), a2, a3);
  *(*(a1 + 32) + 744) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 2;
  v4 = *(*(a1 + 32) + 744);
  v5 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v4, v5, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
  v6 = *(a1 + 32);
  v7 = *(v6 + 744);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B646C50;
  v8[3] = &unk_1E75338E8;
  v8[4] = v6;
  v8[5] = v9;
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(*(*(a1 + 32) + 744));
  _Block_object_dispose(v9, 8);
}

void sub_19B646C50(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  objc_msgSend__feedAdaptiveLatencyJitterBufferLevel(*(a1 + 32), a2, a3);
  if (*(*(a1 + 32) + 752) != -1)
  {
LABEL_2:
    objc_msgSend__stopJitterBufferLevelRetryTimer(*(a1 + 32), v4, v5);
    goto LABEL_17;
  }

  if (*(*(*(a1 + 40) + 8) + 24) < 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Failed to feed JBL value, using default value for prediction", buf, 2u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startJitterBufferLevelRetryTimer]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    goto LABEL_2;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v14 = 0x3FF0000000000000;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Failed to feed JBL value, retrying in %{public}.1f sec", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startJitterBufferLevelRetryTimer]_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  --*(*(*(a1 + 40) + 8) + 24);
LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B650C48(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  sub_19B6D6344();
  v2 = sub_19B7851B0();
  *(*(a1 + 32) + 752) = sub_19B788BEC(v2);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 752);
    *buf = 67240192;
    v29 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Current JBL: %{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v27 = *(*(a1 + 32) + 752);
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAdaptiveLatencyJitterBufferLevel]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = mach_continuous_time();
  v8 = sub_19B41E070(v7);
  v9 = v8;
  v10 = *(a1 + 32);
  v11 = *(v10 + 752);
  if (v11 != 0xFFFF)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      sub_19B6F6664(v12, v11, *(v10 + 754), (v8 * 1000000.0));
      v10 = *(a1 + 32);
    }

    v13 = *(v10 + 240);
    if (v13)
    {
      LOWORD(v8) = *(v10 + 752);
      v14 = *&v8;
      v15 = *(v13 + 1000);
      if (v15 <= v14)
      {
        v15 = v14;
      }

      *(v13 + 1000) = v15;
      v16 = *(v13 + 992);
      if (v16 >= v14)
      {
        v16 = v14;
      }

      *(v13 + 992) = v16;
      *(v13 + 1008) = *(v13 + 1008) + v14;
      ++*(v13 + 1016);
      v17 = a1 + 32;
      sub_19B5C9FEC(*(*(a1 + 32) + 240), *(*(a1 + 32) + 752));
      if (*(*v17 + 752) > *(*v17 + 754))
      {
        v18 = *(*v17 + 240);
        v19 = *(v18 + 2012);
        if (v19 != -1)
        {
          *(v18 + 2012) = v19 + 1;
        }
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v20 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "[CMMediaSession] log JBL CA metric", buf, 2u);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAdaptiveLatencyJitterBufferLevel]_block_invoke", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }
  }

  v23 = *(a1 + 32);
  objc_sync_enter(v23);
  v24 = *(a1 + 32);
  if (*(v24 + 561) == 1)
  {
    sub_19B5E7D28(*(v24 + 720), *(v24 + 752), *(v24 + 754), v9);
  }

  result = objc_sync_exit(v23);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B651B18()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

float32_t sub_19B651B48(float32x2_t *a1, float32x4_t a2)
{
  v6.i32[0] = sub_19B66BFF4(a1, a2);
  *(v6.i64 + 4) = __PAIR64__(v3, v2);
  v6.i32[3] = v4;
  return sub_19B66C070(&v6);
}

uint64_t sub_19B651B78(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B6F5CE0(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B651BC8(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B651C10(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B651C54(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B651CE4;
  block[3] = &unk_1E7532988;
  block[4] = a1;
  if (qword_1EAFE3B58 != -1)
  {
    dispatch_once(&qword_1EAFE3B58, block);
  }

  return qword_1EAFE3B50;
}

void sub_19B651D7C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B743DA8(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B651DB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 108))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v8;
  v8[0] = 0;
  v8[1] = 0;
  v9 = a2;
  v3 = (a1 + 104);
  ++*(a1 + 104);
  v10 = a1 + 104;
  v4 = sub_19B65427C(a1 + 80, (a1 + 104));
  if (v4 + 5 != &v7)
  {
    sub_19B6543B4(v4 + 5, v7, v8);
  }

  v5 = v8[0];
  v4[8] = v9;
  v2 = *v3;
  sub_19B654634(&v7, v5);
  return v2;
}

void sub_19B651E80(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v13[0] = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_19B654758(v5, v13);
    }

    else
    {
LABEL_9:
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      v7 = qword_1EAFE2820;
      if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v18 = v8;
        v19 = 1026;
        v20 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27F8 != -1)
        {
          dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
        }

        v10 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v10 = *v10;
        }

        v13[1] = 136446466;
        v14 = v10;
        v15 = 1026;
        v16 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::removeClient(int) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B652124(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_19B65487C(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_19B6522B4(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = objc_alloc_init(CLNotifierServiceAdapter);
    *(a1 + 48) = v3;
    objc_msgSend_setValid_(v3, v4, 1);
    objc_msgSend_setAdaptedNotifier_(*(a1 + 48), v5, a1);
    return *(a1 + 48);
  }

  return result;
}

uint64_t sub_19B652330(uint64_t a1, int a2, int *a3, char *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = a2;
  if (*(a1 + 108))
  {
LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  v6 = *(a1 + 88);
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = a1 + 88;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v9 == a1 + 88 || *(v9 + 32) > a2)
  {
LABEL_9:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v10 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v11 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v11 = *v11;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = v11;
      WORD6(buf[0]) = 1026;
      *(buf + 14) = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      v13 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v13 = *v13;
      }

      *v35 = 136446466;
      *&v35[4] = v13;
      v36 = 1026;
      v37 = a2;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::registerForNotification(int, const Notification_T &, const RegistrationInfo_T &) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    goto LABEL_24;
  }

  *v35 = v9;
  v17 = *a3;
  v20 = *(v9 + 48);
  v19 = v9 + 48;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = v19;
  do
  {
    if (*(v18 + 28) >= v17)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 28) < v17));
  }

  while (v18);
  if (v21 == v19 || v17 < *(v21 + 28))
  {
LABEL_33:
    v21 = v19;
  }

  v22 = *(a1 + 64);
  if (!v22)
  {
    goto LABEL_41;
  }

  v23 = a1 + 64;
  do
  {
    if (*(v22 + 32) >= v17)
    {
      v23 = v22;
    }

    v22 = *(v22 + 8 * (*(v22 + 32) < v17));
  }

  while (v22);
  if (v23 != a1 + 64 && v17 >= *(v23 + 32))
  {
    v33 = v23;
    v30 = *(v23 + 56);
    v31 = *a4;
    *&buf[0] = &v34;
    *(sub_19B65570C(v23 + 40, &v34) + 32) = v31;
    memset(buf, 0, 320);
    if (v21 == v19 && (*(*a1 + 128))(a1, a3, buf))
    {
      sub_19B65538C();
    }

    if (v30)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_41:
    v24 = a1 + 56;
    v33 = a1 + 64;
    v25 = byte_1EAFE3011;
    v32 = v17;
    *&buf[0] = &v32;
    *(sub_19B655538(a1 + 56, &v32) + 80) = v25;
    v32 = *a3;
    *&buf[0] = &v32;
    v26 = sub_19B655538(a1 + 56, &v32);
    v27 = v26[9];
    v26[8] = 0;
    v26[9] = 0;
    if (v27)
    {
      sub_19B41FFEC(v27);
    }

    v28 = *a4;
    v32 = *a3;
    *&buf[0] = &v32;
    v29 = sub_19B655538(v24, &v32);
    *&buf[0] = &v34;
    *(sub_19B65570C((v29 + 5), &v34) + 32) = v28;
  }

  (*(*a1 + 168))(a1, a3);
LABEL_45:
  if (v21 == v19)
  {
    LODWORD(buf[0]) = *a3;
    sub_19B6562C0(*v35 + 40, buf);
  }

  result = 1;
LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B6527F8(uint64_t a1, int a2, int *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v16 = *(v6 + 48);
    v14 = v6 + 48;
    v15 = v16;
    if (!v16)
    {
      goto LABEL_32;
    }

    v17 = *a3;
    v18 = v14;
    do
    {
      if (*(v15 + 28) >= v17)
      {
        v18 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 28) < v17));
    }

    while (v15);
    if (v18 == v14 || v17 < *(v18 + 28))
    {
LABEL_32:
      v18 = v14;
    }

    result = v18 != v14;
  }

  else
  {
LABEL_8:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v7 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      *buf = 136446466;
      v20 = v8;
      v21 = 1026;
      v22 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      if (*(a1 + 31) < 0)
      {
        v10 = *(a1 + 8);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::clientRegistered(int, const Notification_T &) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B652A84(char *a1, int a2, int *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_19B65638C((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_19B65638C((v15 + 40), &v25);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
              }

              v16 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v19 = sub_19B420058();
              if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v3 ^ 1u;
}

void sub_19B652E58(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = v2;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      v7 = *(v6 + 72);
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      if (v7)
      {
        sub_19B41FFEC(v7);
      }
    }
  }
}

uint64_t sub_19B652EA8(uint64_t a1, int *a2, void *__dst)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  memcpy(__dst, v8, 0x140uLL);
  return 1;
}

uint64_t sub_19B65300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  result = (*(*a1 + 152))(a1, a2, v6, a3, a4, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6530BC(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  v11[6] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v10 = v11;
      memset(v11, 0, 32);
      sub_19B656A70(buf, a2, &v10);
      sub_19B656930();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_19B41FFEC(v7);
    }

    if (*(v6 + 56))
    {
      sub_19B65648C();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B6535D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19B656DE8(va);
  sub_19B6556D0(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_19B653618(uint64_t a1)
{
  *(&v35[202] + 2) = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) == 1)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v2 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v33 = v3;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      if (*(a1 + 31) < 0)
      {
        v5 = *(a1 + 8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::listClients() [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v7 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v9 = *(a1 + 96);
      *buf = 136315394;
      v33 = v8;
      v34 = 2048;
      v35[0] = v9;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      if (*(a1 + 31) < 0)
      {
        v11 = *(a1 + 8);
      }

      v29 = *(a1 + 96);
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::listClients() [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *(a1 + 80);
    if (v13 != (a1 + 88))
    {
      v14 = (a1 + 8);
      do
      {
        v15 = v13[5];
        if (v15 != v13 + 6)
        {
          do
          {
            if (qword_1EAFE27F8 != -1)
            {
              dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
            }

            v16 = qword_1EAFE2820;
            if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
            {
              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v14;
              }

              v18 = *(v13 + 8);
              v19 = *(v15 + 7);
              *buf = 136315650;
              v33 = v17;
              v34 = 1024;
              LODWORD(v35[0]) = v18;
              WORD2(v35[0]) = 1024;
              *(v35 + 6) = v19;
              _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            v20 = sub_19B420058();
            if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
              }

              if (*(a1 + 31) < 0)
              {
                v21 = *v14;
              }

              v30 = *(v13 + 8);
              v31 = *(v15 + 7);
              v22 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::listClients() [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v22);
              if (v22 != buf)
              {
                free(v22);
              }
            }

            v23 = v15[1];
            if (v23)
            {
              do
              {
                v24 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v24 = v15[2];
                v25 = *v24 == v15;
                v15 = v24;
              }

              while (!v25);
            }

            v15 = v24;
          }

          while (v24 != v13 + 6);
        }

        v26 = v13[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v13[2];
            v25 = *v27 == v13;
            v13 = v27;
          }

          while (!v25);
        }

        v13 = v27;
      }

      while (v27 != (a1 + 88));
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B653C30(uint64_t a1, const char *a2, int *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = sub_19B707260(a1, a2, a3);
  if (v10 && (*(*a1 + 216))(a1, v14))
  {
    v13 = 0;
    (*(*a1 + 152))(a1, &v13, v14, 0, 0xFFFFFFFFLL, 0);
  }

  result = v10 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B653D24(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x17012000000;
    v28 = sub_19B428A7C;
    v29 = nullsub_1;
    v30 = &unk_19B840009;
    v7 = dispatch_semaphore_create(0);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B656E44;
    block[3] = &unk_1E7533B58;
    block[5] = &v20;
    block[6] = &v25;
    block[4] = v7;
    dispatch_async(global_queue, block);
    v9 = dispatch_time(0, 2000000000);
    v10 = dispatch_semaphore_wait(v7, v9);
    dispatch_release(v7);
    if (v10 || *(v21 + 24) != 1)
    {
      bzero(a2, 0x140uLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
      }

      v14 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "Warning: can't get GyroBiasFit from CLGyroCalibrationDatabaseGetBiasFitAtTemperature()", buf, 2u);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
        }

        v16 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGyroCalibrationDatabaseRemote::getBiasFit(CLMotionTypeGyroBiasFit &)", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v6 = 0;
    }

    else
    {
      memcpy(a2, v26 + 6, 0x140uLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
      }

      v11 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "successfully got GyroBiasFit from CLGyroCalibrationDatabaseGetBiasFitAtTemperature()", buf, 2u);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
        }

        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGyroCalibrationDatabaseRemote::getBiasFit(CLMotionTypeGyroBiasFit &)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      v6 = 1;
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v6 = sub_19B707210(a2, v4, v5) != 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_19B6541AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(&STACK[0x6D8], 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B654200(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = -1;
  sub_19B707320(&v4, a2, a3);
  return v4;
}

BOOL sub_19B654230(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = 0;
  sub_19B708260(&v4, a2, a3);
  return v4 != 0;
}

uint64_t *sub_19B65427C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_19B65435C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_19B4385F8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t **sub_19B6543B4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_19B654588(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          sub_19B654518(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_19B654588(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_19B6545DC(&v12);
  }

  if (a2 != a3)
  {
    sub_19B654688();
  }

  return result;
}

void sub_19B654504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B6545DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B654518(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_19B65435C(a1, v3, v5, a2);
  return a2;
}

void *sub_19B654588(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_19B6545DC(uint64_t a1)
{
  sub_19B654634(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_19B654634(*a1, v2);
  }

  return a1;
}

void sub_19B654634(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B654634(a1, *a2);
    sub_19B654634(a1, a2[1]);

    operator delete(a2);
  }
}

os_log_t sub_19B654728()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

uint64_t sub_19B654758(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_19B6547C8(a1, v4);
  return 1;
}

uint64_t *sub_19B6547C8(uint64_t **a1, uint64_t a2)
{
  v3 = sub_19B654808(a1, a2);
  sub_19B654634(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t *sub_19B654808(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_19B4271C4(v6, a2);
  return v3;
}

uint64_t sub_19B65487C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_19B654918(a1, v2, v3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_19B654CBC(a1, v5, v6);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19B654918(void *a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v8 = qword_1EAFE2960;
      v9 = os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR);
      v10 = MEMORY[0x1E69E5450];
      if (v9)
      {
        v11 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
        *buf = 134218498;
        v29 = v4;
        v30 = 2048;
        v31 = 0;
        v32 = 2080;
        v33 = v11;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v13 = *(v10 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v22 = 134218498;
      v23 = v4;
      v24 = 2048;
      v25 = 0;
      v26 = 2080;
      v27 = v13;
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v15 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        v16 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
        *buf = 134218498;
        v29 = v4;
        v30 = 2048;
        v31 = 0;
        v32 = 2080;
        v33 = v16;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v17 = sub_19B420058();
      if ((*(v17 + 160) & 0x80000000) != 0 && (*(v17 + 164) & 0x80000000) != 0 && (*(v17 + 168) & 0x80000000) != 0 && !*(v17 + 152))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v18 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v22 = 134218498;
      v23 = v4;
      v24 = 2048;
      v25 = 0;
      v26 = 2080;
      v27 = v18;
    }

    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = char, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:241:46)]", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  result = sub_19B655098(&v21, a1, v7);
LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B654CBC(void *a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v9 = qword_1EAFE2960;
      v10 = os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR);
      v11 = MEMORY[0x1E69E5450];
      if (v10)
      {
        v12 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
        *buf = 134218498;
        v24 = v4;
        v25 = 2048;
        v26 = 0;
        v27 = 2080;
        v28 = v12;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v21 = *(v11 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v16 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        v17 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
        *buf = 134218498;
        v24 = v4;
        v25 = 2048;
        v26 = 0;
        v27 = 2080;
        v28 = v17;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v18 = sub_19B420058();
      if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v22 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = char, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:250:46)]", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

LABEL_28:
    v20 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return objc_msgSend_cppObjectPtr(a1, v7, v8);
}

uint64_t sub_19B655098(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_cppObjectPtr(a2, a2, a3))
  {
    v6 = objc_msgSend_compatibilityInfo(a2, v4, v5);
    if (objc_msgSend_isEqual_(v6, v7, &unk_1F0E6A4F8))
    {
      v8 = objc_msgSend_serialized(a2, v4, v5);
      if (objc_msgSend_length(v8, v9, v10) != 1)
      {
        if (qword_1EAFE2958 != -1)
        {
          dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
        }

        v20 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v21 = qword_1EAFE2960;
        if (os_signpost_enabled(qword_1EAFE2960))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The total size of the POD types on the 2 architectures is expected to be the same.", "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v22 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
      }

      v13 = objc_msgSend_serialized(a2, v11, v12);
      v16 = objc_msgSend_bytes(v13, v14, v15);
      objc_msgSend_setCppObjectPtr_(a2, v17, v16);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return objc_msgSend_cppObjectPtr(a2, v4, v5);
}

os_log_t sub_19B65535C()
{
  result = os_log_create("com.apple.locationd.Support", "Support");
  qword_1EAFE2960 = result;
  return result;
}

uint64_t sub_19B655440(uint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((*(result + 108) & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v13) = *(*a3 + 32);
    v9 = sub_19B655800(a4);
    v10 = *a3;
    v14 = (*a2 + 32);
    v11 = sub_19B65570C(v10 + 40, v14);
    result = (*(*v7 + 192))(v7, v8, &v13, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return objc_msgSend_onNotification_withData_(*(*a2 + 64), v12, *(*a3 + 32), a4, v13);
    }
  }

  return result;
}

uint64_t *sub_19B655538(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19B655640(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_19B65568C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_19B65568C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  v3 = *(a1 + 16);

  sub_19B654634(a1 + 8, v3);
}

uint64_t sub_19B6556D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B654634(a1, *(a1 + 8));
  return a1;
}

uint64_t *sub_19B65570C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19B6557E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B655800(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_19B65589C(a1, v2, v3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_19B655C30(a1, v5, v6);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19B65589C(void *a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v8 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v23 = v4;
        v24 = 2048;
        v25 = 0;
        v26 = 2080;
        v27 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
      {
        goto LABEL_23;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
LABEL_21:
        v16 = 134218498;
        v17 = v4;
        v18 = 2048;
        v19 = 0;
        v20 = 2080;
        v21 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGyroCalibrationDatabase_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:241:46)]", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }

LABEL_23:
        result = 0;
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v11 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v23 = v4;
        v24 = 2048;
        v25 = 0;
        v26 = 2080;
        v27 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_23;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
        goto LABEL_21;
      }
    }

    dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    goto LABEL_21;
  }

  result = sub_19B655FFC(&v15, a1, v7);
LABEL_24:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B655C30(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v9 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        goto LABEL_25;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
LABEL_23:
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGyroCalibrationDatabase_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:250:46)]", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }

LABEL_25:
        v16 = *MEMORY[0x1E69E9840];
        return 0;
      }
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v13 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        goto LABEL_25;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
        goto LABEL_23;
      }
    }

    dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    goto LABEL_23;
  }

  v11 = *MEMORY[0x1E69E9840];

  return objc_msgSend_cppObjectPtr(a1, v7, v8);
}

uint64_t sub_19B655FFC(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_cppObjectPtr(a2, a2, a3))
  {
    v6 = objc_msgSend_compatibilityInfo(a2, v4, v5);
    if (objc_msgSend_isEqual_(v6, v7, &unk_1F0E6A4F8))
    {
      v8 = objc_msgSend_serialized(a2, v4, v5);
      if (objc_msgSend_length(v8, v9, v10) != 320)
      {
        if (qword_1EAFE2958 != -1)
        {
          dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
        }

        v20 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v21 = qword_1EAFE2960;
        if (os_signpost_enabled(qword_1EAFE2960))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The total size of the POD types on the 2 architectures is expected to be the same.", "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
          }
        }

        v22 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
      }

      v13 = objc_msgSend_serialized(a2, v11, v12);
      v16 = objc_msgSend_bytes(v13, v14, v15);
      objc_msgSend_setCppObjectPtr_(a2, v17, v16);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return objc_msgSend_cppObjectPtr(a2, v4, v5);
}

uint64_t *sub_19B6562C0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19B65638C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_19B654808(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_19B656430(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B656540(uint64_t a1, int *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    if (v4)
    {
      v8 = *a2;
      v9 = a1 + 64;
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_19B655800(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = (a1 + 88);
          v13 = (a1 + 8);
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 88;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 32), v15 >= v17))
            {
              v38 = v16;
              sub_19B655440(a1, &v38, &v39, a3);
              v25 = *(a1 + 64);
              if (!v25)
              {
                break;
              }

              v26 = *a2;
              v27 = v5;
              do
              {
                if (*(v25 + 32) >= v26)
                {
                  v27 = v25;
                }

                v25 = *(v25 + 8 * (*(v25 + 32) < v26));
              }

              while (v25);
              if (v27 == v5 || v26 < *(v27 + 32))
              {
                break;
              }

              v39 = v27;
              v29 = *(v27 + 48);
              v11 = (v27 + 48);
              v28 = v29;
              if (v29)
              {
                v30 = v11;
                v31 = v28;
                do
                {
                  if (*(v31 + 28) >= v17)
                  {
                    v30 = v31;
                  }

                  v31 = *(v31 + 8 * (*(v31 + 28) < v17));
                }

                while (v31);
                if (v30 == v11 || v17 < *(v30 + 7))
                {
                  do
                  {
                    v32 = *(v28 + 28);
                    v33 = v17 < v32;
                    v34 = v17 >= v32;
                    if (v33)
                    {
                      v11 = v28;
                    }

                    v28 = *(v28 + 8 * v34);
                  }

                  while (v28);
                }

                else
                {
                  v35 = v30[1];
                  if (v35)
                  {
                    do
                    {
                      v11 = v35;
                      v35 = *v35;
                    }

                    while (v35);
                  }

                  else
                  {
                    do
                    {
                      v11 = v30[2];
                      v36 = *v11 == v30;
                      v30 = v11;
                    }

                    while (!v36);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 88;
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
              }

              v18 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 8;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              v21 = sub_19B420058();
              if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
                }

                v22 = a1 + 8;
                if (*(a1 + 31) < 0)
                {
                  v22 = *v13;
                }

                v23 = *(v11 + 7);
                v40 = 136446466;
                v41 = v22;
                v42 = 1026;
                v43 = v23;
                v24 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v24);
                if (v24 != buf)
                {
                  free(v24);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

__n128 sub_19B656A18(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u32[0];
  a1->n128_u64[1] = a2->n128_u64[1];
  v3 = a2 + 1;
  v4 = a2[1].n128_u64[0];
  a1->n128_u32[0] = v2;
  a1[1].n128_u64[0] = v4;
  v5 = a1 + 1;
  v6 = a2[1].n128_u64[1];
  a1[1].n128_u64[1] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    a2->n128_u64[1] = v3;
    v3->n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
  }

  else
  {
    a1->n128_u64[1] = v5;
  }

  result = a2[2];
  a1[2] = result;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a1[3].n128_u8[0] = a2[3].n128_u8[0];
  return result;
}

uint64_t sub_19B656A70(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_19B656AC8((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void *sub_19B656AC8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_19B656B20(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_19B656B20(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_19B656BA8(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_19B656BA8(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_19B656C40(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_19B656C40(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_19B656DE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B654634(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_19B656E24(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

intptr_t sub_19B656E44(void *a1, const char *a2, uint64_t a3)
{
  *(*(a1[5] + 8) + 24) = sub_19B707210(*(a1[6] + 8) + 48, a2, a3);
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

void sub_19B6572EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B65731C(uint64_t a1, CLConnectionMessage **a2)
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

  if (qword_1EAFE2B08 != -1)
  {
    dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
  }

  v14 = qword_1EAFE2B10;
  if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with error, %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B08 != -1)
    {
      dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSpringTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B657544(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2B08 != -1)
    {
      dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
    }

    v8 = qword_1EAFE2B10;
    if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_INFO))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      *buf = 138412802;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2048;
      v23 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "Client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B08 != -1)
      {
        dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
      }

      getpid();
      v17 = *(a1 + 32);
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSpringTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v13 = *(a1 + 32);
  if (*(v13 + 24) == 1)
  {
    v14 = objc_msgSend_copy(*(v13 + 32), v5, v6);
    objc_msgSend__startWithHandler_(*(a1 + 32), v15, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B657A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  sub_19B41FFEC(v19);
  _Unwind_Resume(a1);
}

void sub_19B657B08(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  *(*(a1 + 32) + 32) = *(a1 + 40);
  operator new();
}

void sub_19B657C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  sub_19B41FFEC(v17);
  _Unwind_Resume(a1);
}

void sub_19B657C98(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopResponse_handler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  *(*(a1 + 32) + 24) = 1;
}

void sub_19B657D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B657EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  sub_19B41FFEC(v17);
  _Unwind_Resume(a1);
}

void sub_19B657EF8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopResponse_handler_(v3, a2, &v5, *(a1 + 40));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  *(*(a1 + 32) + 24) = 0;
}

void sub_19B657F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6583DC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_19B65843C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  if (v4 == 100)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = objc_msgSend_intValue(*(a1 + 32), v5, v6);
    v8 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"CMErrorDomain", v10, 0);
  }

  v12 = *(v7 + 16);

  return v12(v7, v8);
}

uint64_t sub_19B6584D0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_19B6585A8(uint64_t a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = @"CMSpringKeyDataRecord";
    v13[0] = v2;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, &v12, 1);
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5 = objc_msgSend_initWithUUIDString_(v3, v4, @"00000000-0000-0000-0000-000000000000");
    v6 = [CMSleepData alloc];
    v8 = objc_msgSend_initWithSessionId_(v6, v7, v5);
    v10 = @"CMSpringKeyDataRecord";
    v11 = v8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
  }

  sub_19B659120();
}

void sub_19B65874C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B658778(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v5, v10, v6, v7, v8, v9, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11)) != 0)
  {
    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMSpringKeyDataArray");
    if (v15)
    {
      v18 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B658B78;
      v26[3] = &unk_1E7532B90;
      v26[5] = v4;
      v4 = v15;
    }

    else if (v17)
    {
      v18 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_19B658BF0;
      v25[3] = &unk_1E7532B90;
      v25[5] = v4;
      v4 = v17;
    }

    else
    {
      if (qword_1EAFE2B08 != -1)
      {
        dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
      }

      v20 = qword_1EAFE2B10;
      if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Error parsing query response.", buf, 2u);
      }

      v21 = sub_19B420058();
      if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B08 != -1)
        {
          dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
        }

        v24 = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSpringTrackerInternal _querySpringDataFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      v18 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_19B658C08;
      v23[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v18 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B658B14;
    block[3] = &unk_1E7532B40;
  }

  v18[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B658B14(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B658B78(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B658C08(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B658E8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  return objc_msgSend__startWithHandler_(v4, v5, v6);
}

uint64_t sub_19B658F98(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__stopWithHandler_, v5);
}

uint64_t sub_19B6590AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v4, sel__querySpringDataFromRecord_handler_, v5);
}

os_log_t sub_19B6590F0()
{
  result = os_log_create("com.apple.locationd.Position", "Spring");
  qword_1EAFE2B10 = result;
  return result;
}

void *sub_19B659194(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6591F0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6591F0(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B659248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B659264(uint64_t a1, const char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1 + 1560) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1564) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  context = espresso_create_context();
  *a1 = context;
  if (context)
  {
    plan = espresso_create_plan();
    *(a1 + 8) = plan;
    if (plan)
    {
      v6 = strlen(a2);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_19B4C51DC();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(&buf[0].__r_.__value_.__s + 23) = v6;
      if (v6)
      {
        memcpy(buf, a2, v6);
      }

      buf[0].__r_.__value_.__s.__data_[v7] = 0;
      v13 = std::string::append(buf, "/model.espresso.net", 0x13uLL);
      __p = *v13;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      v14 = *(a1 + 8);
      if (espresso_plan_add_network())
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
        }

        v15 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Failed to add network to Espresso plan", buf, 2u);
        }

        v16 = sub_19B420058();
        if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
        {
          goto LABEL_89;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 == -1)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v17 = *(a1 + 8);
        if (espresso_plan_build())
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
          }

          v18 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "Failed to build Espresso plan", buf, 2u);
          }

          v19 = sub_19B420058();
          if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
          {
            goto LABEL_89;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 == -1)
          {
            goto LABEL_69;
          }
        }

        else if (espresso_network_bind_buffer())
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
          }

          v20 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "Failed to bind input buffer", buf, 2u);
          }

          v21 = sub_19B420058();
          if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
          {
            goto LABEL_89;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 == -1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (!espresso_network_bind_buffer())
          {
            *(a1 + 1564) = 1;
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
            }

            v25 = off_1ED71C838;
            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "The Espresso Network is ready", buf, 2u);
            }

            v26 = sub_19B420058();
            if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
            {
              goto LABEL_89;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
            }

            v24 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v24);
            goto LABEL_87;
          }

          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
          }

          v22 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Failed to bind output buffer", buf, 2u);
          }

          v23 = sub_19B420058();
          if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
          {
            goto LABEL_89;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 == -1)
          {
LABEL_69:
            v24 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v24);
LABEL_87:
            if (v24 != buf)
            {
              free(v24);
            }

LABEL_89:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_91;
          }
        }
      }

      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
      goto LABEL_69;
    }

    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    v10 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Failed to create Espresso plan", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_100;
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Failed to create Espresso context", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 == -1)
      {
LABEL_24:
        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "CMPdrMLModel::CMPdrMLModel(const char *)", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }

        goto LABEL_91;
      }

LABEL_100:
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
      goto LABEL_24;
    }
  }

LABEL_91:
  v27 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B659CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B659D48(void *a1)
{
  if (a1[1])
  {
    espresso_plan_destroy();
  }

  if (*a1)
  {
    espresso_context_destroy();
  }

  return a1;
}

uint64_t sub_19B659D88(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a1 + 24 * *(a1 + 1556);
  v4 = *a2;
  *(v3 + 368) = *(a2 + 2);
  *(v3 + 352) = v4;
  v5 = *(a1 + 1556);
  if ((v5 + 1) <= 0x31)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 1556) = v6;
  if (*(a1 + 1560))
  {
    *(a1 + 1552) = v6;
    v7 = v6;
  }

  else
  {
    v7 = *(a1 + 1552);
  }

  *(a1 + 1560) = v7 == v6;
  return sub_19B659DE4(a1, a3);
}

uint64_t sub_19B659DE4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1564) == 1)
  {
    if (*(a1 + 1560) != 1)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
      }

      v11 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "ImuData Buffer not ready", buf, 2u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_25;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 1552);
    v6 = 24 * (50 - v5);
    memcpy(v4, (a1 + 352 + 24 * v5), v6);
    v7 = *(a1 + 1552);
    if (v7 >= 1)
    {
      memcpy(&v4[v6], (a1 + 352), 24 * v7);
    }

    v8 = *(a1 + 8);
    if (!espresso_plan_execute_sync())
    {
      v16 = *(a1 + 184);
      v17 = *(v16 + 8);
      *a2 = *v16;
      *(a2 + 8) = v17;
      result = 1;
      goto LABEL_26;
    }

    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Failed to execute Espresso plan", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 == -1)
      {
LABEL_23:
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMPdrMLModel::predict(Velocity &, double)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }

        goto LABEL_25;
      }

LABEL_32:
      dispatch_once(&qword_1ED71C830, &unk_1F0E29300);
      goto LABEL_23;
    }
  }

LABEL_25:
  result = 0;
LABEL_26:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B65A23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B65A26C(uint64_t a1, CLConnectionMessage **a2)
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

  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v14 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "CMIndoorOutdoor, Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMIndoorOutdoorManagerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

_BYTE *sub_19B65A494(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v8 = qword_1EAFE2A80;
    if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_DEFAULT))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      *buf = 138412802;
      v17 = v7;
      v18 = 1024;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "CMIndoorOutdoor, client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A78 != -1)
      {
        dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
      }

      getpid();
      v15 = *(a1 + 32);
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMIndoorOutdoorManagerInternal init]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  result = *(a1 + 32);
  if (result[40] == 1)
  {
    result = objc_msgSend__startIndoorOutdoorUpdates(result, v5, v6);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B65A7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B65A838(uint64_t result)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 32))
  {
    v1 = result;
    sub_19B428B50(&__p, "kCLConnectionMessageIndoorOutdoorUpdate");
    v4 = *(v1 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v6 < 0)
    {
      operator delete(__p);
    }

    v7 = @"kCLConnectionMessageSubscribeKey";
    v8[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v8, &v7, 1);
    sub_19B5D12C8();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B65A9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t sub_19B65A9F4(uint64_t a1, CLConnectionMessage **a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
  if (*a2)
  {
    v10 = DictionaryOfClasses == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v13, @"CMErrorDomain", 103, 0);
LABEL_11:
      v26 = v14;
      v27 = *(a1 + 32);
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      v30 = *MEMORY[0x1E69E9840];

      return objc_msgSend_indoorOutdoorManager_updateFailedWithError_(v28, v15, v29, v26);
    }

    goto LABEL_32;
  }

  v16 = DictionaryOfClasses;
  v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  v19 = objc_msgSend_objectForKeyedSubscript_(v16, v18, @"CMIndoorOutdoorStateKey");
  if (v17)
  {
    v20 = *(*(a1 + 32) + 16);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = objc_msgSend_intValue(v17, v21, v22);
      v14 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"CMErrorDomain", v24, 0);
      goto LABEL_11;
    }

    goto LABEL_32;
  }

  if (!v19)
  {
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v36 = qword_1EAFE2A80;
    if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_FAULT, "IndoorOutdoor, unable to parse kCLConnectionMessageIndoorOutdoorUpdate message", buf, 2u);
    }

    v37 = sub_19B420058();
    if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A78 != -1)
      {
        dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
      }

      v38 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMIndoorOutdoorManagerInternal _startIndoorOutdoorUpdates]_block_invoke", "CoreLocation: %s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    v39 = *(*(a1 + 32) + 16);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v41 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v40, @"CMErrorDomain", 103, 0);
      result = objc_msgSend_indoorOutdoorManager_updateFailedWithError_(*(*(a1 + 32) + 16), v42, *(*(a1 + 32) + 24), v41);
    }

    goto LABEL_32;
  }

  v31 = *(*(a1 + 32) + 16);
  result = objc_opt_respondsToSelector();
  if ((result & 1) == 0)
  {
LABEL_32:
    v43 = *MEMORY[0x1E69E9840];
    return result;
  }

  v32 = *(a1 + 32);
  v33 = *(v32 + 16);
  v34 = *(v32 + 24);
  v35 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66B58](v33, sel_indoorOutdoorManager_didChangeTo_, v34);
}

void sub_19B65AE00(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  sub_19B428B50(&__p, "kCLConnectionMessageIndoorOutdoorUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (*(*(a1 + 32) + 40))
  {
    v8 = @"kCLConnectionMessageSubscribeKey";
    v9 = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, &v9, &v8, 1);
    sub_19B5D12C8();
  }

  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v4 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, Error stopping updates, no active clients", &__p, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMIndoorOutdoorManagerInternal _stopIndoorOutdoorUpdates]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != &__p)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B65B088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B65B140(uint64_t result)
{
  if (*(*(result + 32) + 32))
  {
    if (*(result + 40))
    {
      sub_19B65BD10();
    }
  }

  return result;
}

void sub_19B65B220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  v17 = *(v15 - 32);
  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B65B244(uint64_t a1, CLConnectionMessage **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
  if (*a2)
  {
    v10 = DictionaryOfClasses == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v9, @"CMErrorDomain", 103, 0);
LABEL_9:
    v22 = *(v11 + 16);
    v23 = *MEMORY[0x1E69E9840];
    v24 = v12;
    v25 = v11;
    v26 = 0;
LABEL_10:

    return v22(v25, v26, v24);
  }

  v13 = DictionaryOfClasses;
  v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMIndoorOutdoorStateKey");
  if (v14)
  {
    v11 = *(a1 + 32);
    v19 = MEMORY[0x1E696ABC0];
    v20 = objc_msgSend_intValue(v14, v17, v18);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"CMErrorDomain", v20, 0);
    goto LABEL_9;
  }

  v26 = v16;
  if (v16)
  {
    v25 = *(a1 + 32);
    v22 = *(v25 + 16);
    v28 = *MEMORY[0x1E69E9840];
    v24 = 0;
    goto LABEL_10;
  }

  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v29 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_FAULT, "IndoorOutdoor, Unable to parse query.", buf, 2u);
  }

  v30 = sub_19B420058();
  if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v32 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMIndoorOutdoorManagerInternal _lastKnownIndoorOutdoorStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  v33 = *(a1 + 32);
  v34 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v31, @"CMErrorDomain", 103, 0);
  result = (*(v33 + 16))(v33, 0, v34);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B65BCE0()
{
  result = os_log_create("com.apple.locationd.Motion", "IndoorOutdoor");
  qword_1EAFE2A80 = result;
  return result;
}

void *sub_19B65BD7C(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B65BDD8((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B65BDD8(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B65BE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B65BE44()
{
  result = sub_19B421620();
  if ((result & 0x400) != 0)
  {
    operator new();
  }

  return result;
}

void sub_19B65BEEC(_Unwind_Exception *a1)
{
  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_19B65BF14(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
  }

  v6 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    v14 = a2;
    v15 = 2050;
    v16 = a3;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLMagicMountNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (a2)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v9 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v14 = a2;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Unrecognized notification,%{public}d", buf, 8u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLMagicMountNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else if (sub_19B744690(a1 + 32))
  {
    sub_19B4238F4(*(a1 + 40), a3 != 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B65C274(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
  }

  v3 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v10 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v8 = *(a2 + 1);
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLMagicMountNotifier::visitPong(const CMMagicMountReport::Pong *)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B65C444(uint64_t a1, unsigned __int8 *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
  }

  v4 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = *(a1 + 64);
    v9 = mach_absolute_time();
    *buf = 67241216;
    *&buf[4] = v5;
    LOWORD(v20) = 1026;
    *(&v20 + 2) = v6;
    HIWORD(v20) = 1026;
    v21 = v7;
    v22 = 2050;
    v23 = v8;
    v24 = 2050;
    v25 = sub_19B41E070(v9);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,mountStatus,%{public}u,APAwake,%{public}u,isSimulated,%{public}u,timestamp,%{public}lf,now,%{public}lf", buf, 0x28u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E27CE0);
    }

    v11 = a2[1];
    v12 = a2[2];
    v13 = a2[3];
    v14 = *(a1 + 64);
    v15 = mach_absolute_time();
    sub_19B41E070(v15);
    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLMagicMountNotifier::visitMagicMountState(const CMMagicMountReport::MagicMountState *)", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v20 = 0;
  *buf = *(a1 + 64);
  LOBYTE(v20) = a2[1];
  *(&v20 + 1) = *(a2 + 1);
  result = sub_19B41DF08(a1, 0, buf, 16);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B65C6DC(void *a1)
{
  sub_19B65C7D8(a1 + 4);

  return sub_19B674784(a1);
}

void sub_19B65C718(void *a1)
{
  sub_19B65C7D8(a1 + 4);
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B65C768(void *a1)
{
  v1 = a1 - 4;
  sub_19B65C7D8(a1);

  return sub_19B674784(v1);
}

os_log_t sub_19B65C7A8()
{
  result = os_log_create("com.apple.locationd.Motion", "MagicMount");
  qword_1EAFE2990 = result;
  return result;
}

void *sub_19B65C7D8(void *a1)
{
  *a1 = &unk_1F0E32238;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    v3 = sub_19B6B1B7C(v2);
    MEMORY[0x19EAE76F0](v3, 0xA0C40D4F6A234);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  return a1;
}

void sub_19B65C84C(void *a1)
{
  sub_19B65C7D8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B65C88C(void *a1)
{
  *a1 = &unk_1F0E321E8;
  sub_19B65C92C(a1);
  v2 = a1[27];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B760468(a1);
}

void sub_19B65C8F4(void *a1)
{
  sub_19B65C88C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B65C92C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *buf = 0;
  sub_19B43D7EC(a1, buf);
  if (*(a1 + 202) == 1)
  {
    *(a1 + 202) = 0;
    v2 = *(a1 + 208);
    *(v2 + 181) = 0;
    sub_19B4441E8(v2);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_19B43EE18(*(a1 + 208));
      v5 = *(*(a1 + 208) + 16);
      v6 = *(*(a1 + 208) + 20);
      *buf = 134349568;
      *&buf[4] = v4;
      v13 = 1026;
      v14 = v6;
      v15 = 1026;
      v16 = v5;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath closed,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", buf, 0x18u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      sub_19B43EE18(*(a1 + 208));
      v10 = *(*(a1 + 208) + 20);
      v11 = *(*(a1 + 208) + 16);
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionServiceSPU::stop()", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

double sub_19B65CB64(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v5 = *(a1 + 208);
  if (v5)
  {
    if (*(a1 + 202) == 1 && (v6 = (*(*v5 + 32))(v5)) != 0)
    {
      v8 = v6;
      sub_19B41E194(v6, a2, v7);

      CFRelease(v8);
    }

    else
    {
      os_unfair_lock_lock((a1 + 88));
      v10 = *(a1 + 96);
      v11 = *(a1 + 128);
      *(a2 + 16) = *(a1 + 112);
      *(a2 + 32) = v11;
      *a2 = v10;
      v12 = *(a1 + 144);
      v13 = *(a1 + 160);
      v14 = *(a1 + 176);
      *(a2 + 96) = *(a1 + 192);
      *(a2 + 64) = v13;
      *(a2 + 80) = v14;
      *(a2 + 48) = v12;

      os_unfair_lock_unlock((a1 + 88));
    }
  }

  else
  {
    *a2 = 0xBFF0000000000000;
    v15 = 0uLL;
    sub_19B41E130(&v15, a3);
    result = *v15.i64;
    *(a2 + 8) = v15;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 96) = 0;
    *(a2 + 36) = 0;
    *(a2 + 52) = 0;
    *(a2 + 44) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  return result;
}

os_log_t sub_19B65CC9C()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

void sub_19B65CCEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

CFTypeRef sub_19B65DB98(const char *a1, uint64_t a2)
{
  v3 = IOServiceNameMatching(a1);
  if (!v3)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v3);
  if (!MatchingService)
  {
    return 0;
  }

  v6 = MatchingService;
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a2);
  CFProperty = IORegistryEntryCreateCFProperty(v6, v7, *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v6);
  return CFProperty;
}

const void *sub_19B65DC20()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DB98("compass", "compass-calibration");
  if (!v0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v6 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "Invalid cpas data.", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CFDataRef CLMagnetometerCoexistenceLocal::copyCompassCalibrationData()", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    goto LABEL_28;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID())
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v3 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "The cpas data is not a CFData type.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CFDataRef CLMagnetometerCoexistenceLocal::copyCompassCalibrationData()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    CFRelease(v1);
LABEL_28:
    v1 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

BOOL sub_19B65DF5C()
{
  v47 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DC20();
  if (v0)
  {
    v1 = v0;
    BytePtr = CFDataGetBytePtr(v0);
    if (!BytePtr)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v11 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Cpas pointer is NULL.", buf, 2u);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) <= 1 && *(v12 + 164) <= 1 && *(v12 + 168) <= 1 && !*(v12 + 152))
      {
        goto LABEL_56;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n");
      goto LABEL_54;
    }

    v3 = BytePtr;
    Length = CFDataGetLength(v1);
    if (Length >= 2)
    {
      v5 = *v3;
      if (Length == 76 && v5 == 5)
      {
        v6 = 5;
      }

      else
      {
        if (Length != 76 || v5 != 6)
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
          }

          v30 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            LODWORD(v44) = v5;
            _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "Unexpected cpas version: %u.", buf, 8u);
          }

          v31 = sub_19B420058();
          if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
          {
            goto LABEL_56;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 == -1)
          {
            goto LABEL_53;
          }

          goto LABEL_131;
        }

        v6 = 8;
      }

      v14 = CFDataCreate(*MEMORY[0x1E695E480], v3 + 2, v6);
      if (v14)
      {
        v15 = v14;
        v16 = CFDataGetBytePtr(v14);
        if (v16)
        {
          v17 = v16;
          v18 = sub_19B65DB98("AppleH4CamIn", "BackCameraSerialNumber");
          v19 = v18;
          if (!v18 || (v20 = CFGetTypeID(v18), v20 != CFDataGetTypeID()))
          {
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v32 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_FAULT, "Invalid back camera serial number data.", buf, 2u);
            }

            v33 = sub_19B420058();
            if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
              }

              v34 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v34);
              if (v34 != buf)
              {
                free(v34);
              }
            }

            v10 = 0;
LABEL_83:
            CFRelease(v1);
            if (!v19)
            {
LABEL_59:
              if (v15)
              {
                CFRelease(v15);
              }

              goto LABEL_61;
            }

LABEL_58:
            CFRelease(v19);
            goto LABEL_59;
          }

          if (CFDataGetLength(v19) == v6)
          {
            v21 = CFDataGetBytePtr(v19);
            if (v21)
            {
              if (*v17 == *v21)
              {
                v22 = 1;
                do
                {
                  v23 = v22;
                  if (v6 == v22)
                  {
                    break;
                  }

                  v24 = v17[v22];
                  v25 = v21[v22++];
                }

                while (v24 == v25);
                v10 = v23 >= v6;
                goto LABEL_83;
              }

LABEL_120:
              CFRelease(v1);
              v10 = 0;
              goto LABEL_58;
            }

            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v41 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_FAULT, "Current serial number data is NULL.", buf, 2u);
            }

            v42 = sub_19B420058();
            if ((*(v42 + 160) & 0x80000000) != 0 && (*(v42 + 164) & 0x80000000) != 0 && (*(v42 + 168) & 0x80000000) != 0 && !*(v42 + 152))
            {
              goto LABEL_120;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v40 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v40);
            if (v40 == buf)
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            v38 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
            {
              *buf = 134218240;
              v44 = CFDataGetLength(v19);
              v45 = 2048;
              v46 = v6;
              _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_FAULT, "Incorrect back camera serial number length. Actual length %ld. Expected length %lu.", buf, 0x16u);
            }

            v39 = sub_19B420058();
            if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
            {
              goto LABEL_120;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
            }

            CFDataGetLength(v19);
            v40 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v40);
            if (v40 == buf)
            {
              goto LABEL_120;
            }
          }

          free(v40);
          goto LABEL_120;
        }

        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
        }

        v35 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "Original serial number pointer is NULL.", buf, 2u);
        }

        v36 = sub_19B420058();
        if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
          }

          v37 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v37);
          if (v37 != buf)
          {
            free(v37);
          }
        }

LABEL_57:
        v10 = 0;
        v19 = v1;
        goto LABEL_58;
      }
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v26 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "Original serial number data is NULL.", buf, 2u);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
    {
      goto LABEL_56;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 == -1)
    {
      goto LABEL_53;
    }

LABEL_131:
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
LABEL_53:
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n");
LABEL_54:
    if (v13 != buf)
    {
      free(v13);
    }

LABEL_56:
    v15 = 0;
    goto LABEL_57;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
  }

  v7 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Cpas data is NULL.", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMagnetometerCoexistenceLocal::deviceStillHasOriginalCamera()", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = 0;
LABEL_61:
  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_19B65EB4C()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DB98("AppleH4CamIn", "BackCameraModuleFocusActuatorID");
  v1 = v0;
  valuePtr = -1;
  if (v0 && (v2 = CFGetTypeID(v0), v2 == CFNumberGetTypeID()))
  {
    if (CFNumberGetType(v1) == kCFNumberSInt32Type)
    {
      if (!CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = -1;
      }
    }

    else
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v9 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        Type = CFNumberGetType(v1);
        v19 = 1024;
        v20 = 3;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "VCM actuator ID data type %d does not match expected type %d", buf, 0xEu);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
        }

        v13 = 67109376;
        v14 = CFNumberGetType(v1);
        v15 = 1024;
        v16 = 3;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "NSNumber *CLMagnetometerCoexistenceLocal::cameraVcmId()", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v3 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Bailing while checking VCM actuator ID.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      LOWORD(v13) = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "NSNumber *CLMagnetometerCoexistenceLocal::cameraVcmId()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    if (!v1)
    {
      goto LABEL_21;
    }
  }

  CFRelease(v1);
  if (valuePtr == -1)
  {
LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  result = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, valuePtr);
LABEL_22:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_19B65EF28()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = sub_19B65DC20();
  if (v0)
  {
    v1 = v0;
    BytePtr = CFDataGetBytePtr(v0);
    if (BytePtr)
    {
      v3 = BytePtr;
      Length = CFDataGetLength(v1);
      if (Length >= 2)
      {
        v7 = Length;
        v8 = *v3;
        v9 = objc_msgSend_mutableCopy(v1, v5, v6);
        v11 = v9;
        if (v9)
        {
          if (v7 == 76 && v8 == 5)
          {
            objc_msgSend_resetBytesInRange_(v9, v10, 2, 5);
          }

          else if (v7 == 76 && v8 == 6)
          {
            objc_msgSend_resetBytesInRange_(v9, v10, 2, 8);
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
      }

      v15 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "#Warning CPAS pointer is NULL.", buf, 2u);
      }

      v16 = sub_19B420058();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
        }

        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "NSData *CLMagnetometerCoexistenceLocal::sanitizedCompassCalibrationData()", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    v11 = 0;
LABEL_34:
    CFRelease(v1);
    goto LABEL_35;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
  }

  v12 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data is NULL.", buf, 2u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29380);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "NSData *CLMagnetometerCoexistenceLocal::sanitizedCompassCalibrationData()", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v11 = 0;
LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_19B65F380(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B65F3B8(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    *(a1 + 96) = *a3;
    sub_19B65F5BC(a1);
    v6 = *(a1 + 96);
  }

  else if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v7 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v12 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "[AccessoryActivity] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryActivity::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  else
  {
    *(a1 + 88) = *a3;
    sub_19B65F5BC(a1);
    v5 = *(a1 + 88);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B65F5BC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_19B750AC4(a1);
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (v3 + v2 > 0.0)
  {
    *(a1 + 29) = 0;
  }

  if (v3 <= 0.0)
  {
    v4 = 0.0;
    if (v2 <= 0.0)
    {
      goto LABEL_14;
    }
  }

  else if (v2 <= 0.0)
  {
    v2 = v3;
  }

  else if (v3 < v2)
  {
    v2 = v3;
  }

  if (v2 > 0.0)
  {
    v4 = fmax(v2, 1.0);
    goto LABEL_15;
  }

  v4 = v2;
LABEL_14:
  *(a1 + 104) = 514;
LABEL_15:
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
  }

  v5 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v13 = v4;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[AccessoryActivity] Setting update interval to %{public}f", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryActivity::updateReportInterval()", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = rint(v4 * 1000000.0);
  if (v4 < 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  result = sub_19B4238F4(*(a1 + 32), v9);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B65F814(uint64_t a1, int a2)
{
  sub_19B750848(a1, a2);
  if ((a2 | 2) == 2)
  {
    v4 = *(*a1 + 48);

    v4(a1);
  }
}

uint64_t sub_19B65F888(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = sub_19B74FBF4(a1);
  v9[0] = v2;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = sub_19B74FBA4(v2);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[AccessoryActivity] sending accessory status to clients: %{public}@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v9[1] = 138543362;
    v10 = sub_19B74FBA4(v2);
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::sendAccessoryStatus()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = mach_absolute_time();
  sub_19B41E070(v6);
  result = sub_19B41DF08(a1, 2, v9, 4);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B65FA94(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  if (DataValue)
  {
    v3 = DataValue;
    IntegerValue = IOHIDEventGetIntegerValue();
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v5 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68157955;
      *v61 = IntegerValue;
      *&v61[4] = 2097;
      *&v61[6] = v3;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "[AccessoryActivity] payload,{%{private}.*P}", buf, 0x12u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      *v53 = 68157955;
      *&v53[4] = IntegerValue;
      *&v53[8] = 2097;
      *&v53[10] = v3;
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v8 = *v3;
    if (!*v3 && IntegerValue == 12)
    {
      v9 = *(v3 + 1);
      *&v51[7] = *(v3 + 2);
      *v51 = v9;
      TimeStamp = IOHIDEventGetTimeStamp();
      *&v51[11] = sub_19B41E070(TimeStamp);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v11 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
      {
        if (v51[0] > 4uLL)
        {
          v12 = @"?";
        }

        else
        {
          v12 = off_1E7533BA0[v51[0]];
        }

        *buf = 138543874;
        *v61 = v12;
        *&v61[8] = 1026;
        *&v61[10] = *&v51[1];
        *&v61[14] = 2050;
        *&v61[16] = *&v51[3];
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "[AccessoryActivity] Activity,%{public}@,seq,%{public}u,sensorTime,%{public}llu", buf, 0x1Cu);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
        }

        if (v51[0] > 4uLL)
        {
          v30 = @"?";
        }

        else
        {
          v30 = off_1E7533BA0[v51[0]];
        }

        *v53 = 138543874;
        *&v53[4] = v30;
        *&v53[12] = 1026;
        *&v53[14] = *&v51[1];
        *&v53[18] = 2050;
        *&v53[20] = *&v51[3];
        v31 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v32 = a1;
      v33 = 0;
      v34 = 19;
LABEL_91:
      sub_19B41DF08(v32, v33, v51, v34);
      goto LABEL_92;
    }

    if (v8 == 1 && IntegerValue == 21)
    {
      v16 = *(v3 + 1);
      *&v51[16] = *(v3 + 17);
      *v51 = v16;
      v17 = IOHIDEventGetTimeStamp();
      v52 = sub_19B41E070(v17);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v18 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
      {
        if (v51[0] > 2uLL)
        {
          v19 = @"?";
        }

        else
        {
          v19 = off_1E7533BC8[v51[0]];
        }

        if (v51[1] > 2uLL)
        {
          v35 = @"?";
        }

        else
        {
          v35 = off_1E7533BE0[v51[1]];
        }

        *buf = 138544130;
        *v61 = v19;
        *&v61[8] = 2114;
        *&v61[10] = v35;
        *&v61[18] = 1026;
        *&v61[20] = *&v51[2];
        v62 = 2050;
        v63 = *&v51[12];
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_INFO, "[AccessoryActivity] SitStand,transition,%{public}@,state,%{public}@,seq,%{public}u,sensorTime,%{public}llu", buf, 0x26u);
      }

      v36 = sub_19B420058();
      if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
        }

        if (v51[0] > 2uLL)
        {
          v37 = @"?";
        }

        else
        {
          v37 = off_1E7533BC8[v51[0]];
        }

        if (v51[1] > 2uLL)
        {
          v38 = @"?";
        }

        else
        {
          v38 = off_1E7533BE0[v51[1]];
        }

        *v53 = 138544130;
        *&v53[4] = v37;
        *&v53[12] = 2114;
        *&v53[14] = v38;
        *&v53[22] = 1026;
        *&v53[24] = *&v51[2];
        v54 = 2050;
        v55 = *&v51[12];
        v39 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      v32 = a1;
      v33 = 1;
      v34 = 28;
      goto LABEL_91;
    }

    if (v8 == 2 && IntegerValue == 22)
    {
      v50 = *(v3 + 1);
      v20 = *(v3 + 9);
      v21 = v3[11];
      v22 = v3[12];
      v23 = v3[13];
      v24 = *(v3 + 14);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      v25 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
      {
        if (v21 > 4)
        {
          v26 = @"?";
        }

        else
        {
          v26 = off_1E7533BA0[v21];
        }

        if (v22 > 2)
        {
          v41 = @"?";
        }

        else
        {
          v41 = off_1E7533BC8[v22];
        }

        if (v23 > 2)
        {
          v42 = @"?";
        }

        else
        {
          v42 = off_1E7533BE0[v23];
        }

        *buf = 67241474;
        *v61 = v20;
        *&v61[4] = 2050;
        *&v61[6] = v50;
        *&v61[14] = 2114;
        *&v61[16] = v26;
        v62 = 2114;
        v63 = v41;
        v64 = 2114;
        v65 = v42;
        v66 = 2050;
        v67 = v24;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_INFO, "[AccessoryActivity] seq,%{public}u,sensorTime,%{public}llu,activity,%{public}@,transition,%{public}@,state,%{public}@,transitionTime,%{public}llu", buf, 0x3Au);
      }

      v43 = sub_19B420058();
      if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
        }

        if (v21 > 4)
        {
          v44 = @"?";
        }

        else
        {
          v44 = off_1E7533BA0[v21];
        }

        if (v22 > 2)
        {
          v45 = @"?";
        }

        else
        {
          v45 = off_1E7533BC8[v22];
        }

        if (v23 > 2)
        {
          v46 = @"?";
        }

        else
        {
          v46 = off_1E7533BE0[v23];
        }

        *v53 = 67241474;
        *&v53[4] = v20;
        *&v53[8] = 2050;
        *&v53[10] = v50;
        *&v53[18] = 2114;
        *&v53[20] = v44;
        v54 = 2114;
        v55 = v45;
        v56 = 2114;
        v57 = v46;
        v58 = 2050;
        v59 = v24;
        v47 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v47);
        if (v47 != buf)
        {
          free(v47);
        }
      }

      v53[0] = v21;
      *&v53[1] = v20;
      *&v53[3] = v50;
      v48 = IOHIDEventGetTimeStamp();
      *&v53[11] = sub_19B41E070(v48);
      sub_19B41DF08(a1, 0, v53, 19);
      if (*(a1 + 105) != v23 || *(a1 + 104) != v22)
      {
        buf[0] = v22;
        buf[1] = v23;
        *&buf[2] = v20;
        *v61 = v24;
        *&v61[8] = v50;
        v49 = IOHIDEventGetTimeStamp();
        *&v61[16] = sub_19B41E070(v49);
        sub_19B41DF08(a1, 1, buf, 28);
        *(a1 + 105) = v23;
        *(a1 + 104) = v22;
      }

      goto LABEL_92;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v27 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *v61 = v8;
      *&v61[4] = 2050;
      *&v61[6] = IntegerValue;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[AccessoryActivity] Unexpected payload type %{public}u or length %{public}zu", buf, 0x12u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      *v53 = 67240448;
      *&v53[4] = v8;
      *&v53[8] = 2050;
      *&v53[10] = IntegerValue;
LABEL_31:
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryActivity::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
    }

    v13 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "[AccessoryActivity] Invalid payload", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28100);
      }

      *v53 = 0;
      goto LABEL_31;
    }
  }

LABEL_92:
  v40 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B660714()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B660C90(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    operator new();
  }

  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
  }

  v1 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_ERROR, "CallHandedness service already started!", buf, 2u);
  }

  v2 = sub_19B420058();
  if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMCallHandednessManager startCallHandednessUpdates]_block_invoke", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_19B661128(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    if (qword_1EAFE3A30 != -1)
    {
      dispatch_once(&qword_1EAFE3A30, &unk_1F0E29D60);
    }

    sub_19B426A14(qword_1EAFE3A40, 0, *(*(a1 + 32) + 16));
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      v2 = *(a1 + 32);
    }

    *(v2 + 16) = 0;
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
    }

    v4 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 134217984;
      v13 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Stopped CallHandedness updates. Current Time: %f", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
      }

      v11 = *(a1 + 40);
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCallHandednessManager stopCallHandednessUpdates]_block_invoke", "CoreLocation: %s\n");
LABEL_27:
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
    }

    v8 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "CallHandedness service already stopped!", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E293C0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMCallHandednessManager stopCallHandednessUpdates]_block_invoke", "CoreLocation: %s\n");
      goto LABEL_27;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B661630(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7F8 != -1)
  {
    dispatch_once(&qword_1ED71C7F8, &unk_1F0E28120);
  }

  v2 = qword_1ED71C7F0;
  if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "CallHandedness Detection: %ld", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E28120);
    }

    v12 = *(a1 + 40);
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCallHandednessManager onCallHandednessStateUpdated:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = objc_msgSend_delegate(*(a1 + 32), v5, v6);
  result = objc_msgSend_callHandednessManager_didUpdateState_(v8, v9, *(a1 + 32), *(a1 + 40));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B66181C()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

os_log_t sub_19B66184C()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

void sub_19B661880(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B661C80()
{
  result = sub_19B421620();
  if ((result & 0x400000000) != 0)
  {
    if (sub_19B5F972C())
    {
      operator new();
    }

    operator new();
  }

  return result;
}

void *sub_19B661DD8(void *a1)
{
  *a1 = &unk_1F0E33458;
  sub_19B661E40(a1, 0, 0);

  return sub_19B674784(a1);
}

void sub_19B661E40(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_36;
  }

  if (a3 == 1)
  {
    (*(*a1 + 48))(a1);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
    }

    v5 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v12 = 1;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "CMPickupService started, %zd", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 == -1)
      {
LABEL_23:
        v7 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMPickupService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n");
LABEL_34:
        if (v7 != buf)
        {
          free(v7);
        }

        goto LABEL_36;
      }

LABEL_39:
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
      goto LABEL_23;
    }
  }

  else if (a3)
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
    }

    v8 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "CMPickupService expects only 1 client", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CMPickupService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n");
      goto LABEL_34;
    }
  }

  else
  {
    (*(*a1 + 56))(a1);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E27D00);
    }

    v3 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v12 = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "CMPickupService stopped, %zd", buf, 0xCu);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_39;
    }
  }

LABEL_36:
  v10 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6622A0()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

void sub_19B66296C(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6629A4(uint64_t a1, int a2, double *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v19) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryMagnetometer] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v9 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 134349056;
      v19 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[AccessoryMagnetometer] Setting update interval to %{public}f", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v17 = *a3;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = rint(*a3 * 1000000.0);
    if (*a3 < 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_19B4238F4(*(a1 + 32), v14);
    v15 = *a3;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B662D28(uint64_t a1, int a2, double *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v17) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryMagnetometer] Unrecognized batch interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v9 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 134349056;
      v17 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[AccessoryMagnetometer] Setting batch interval to %{public}f", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v15 = *a3;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryMagnetometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    sub_19B424A2C(*(a1 + 32), *a3);
    v13 = *a3;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B663080(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 21)
  {
    IOHIDEventGetFloatValue();
    v3 = v2;
    v25 = v3;
    IOHIDEventGetFloatValue();
    v5 = v4;
    v26 = v5;
    IOHIDEventGetFloatValue();
    v7 = v6;
    v27 = v7;
    TimeStamp = IOHIDEventGetTimeStamp();
    v9 = sub_19B41E070(TimeStamp);
    v24 = v9;
    IntegerValue = IOHIDEventGetIntegerValue();
    v29 = IntegerValue;
    v11 = sub_19B794CA4();
    v28 = v11;
    v12 = *(a1 + 84);
    v30 = v12;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
    }

    v13 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67241728;
      v38 = IntegerValue;
      v39 = 2050;
      v40 = v3;
      v41 = 2050;
      v42 = v5;
      v43 = 2050;
      v44 = v7;
      v45 = 2050;
      v46 = v12;
      v47 = 2050;
      v48 = v11;
      v49 = 2050;
      v50 = v9;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[AccessoryMagnetometer] seq,%{public}d,x,%{public}20.20f,y,%{public}20.20f,z,%{public}20.20f,temp,%{public}20.20f,sensorTime,%{public}llu,timestamp,%{public}20.20f", buf, 0x44u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
      }

      v51 = 67241728;
      LODWORD(v52[0]) = IntegerValue;
      WORD2(v52[0]) = 2050;
      *(v52 + 6) = v3;
      HIWORD(v52[0]) = 2050;
      *&v52[1] = v5;
      WORD4(v52[1]) = 2050;
      *(&v52[1] + 10) = v7;
      WORD1(v52[2]) = 2050;
      *(&v52[2] + 4) = v12;
      WORD6(v52[2]) = 2050;
      *(&v52[2] + 14) = v11;
      WORD3(v52[3]) = 2050;
      *(&v52[3] + 1) = v9;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryMagnetometer::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    sub_19B41DF08(a1, 0, &v24, 40);
    if ((*(a1 + 29) & 1) == 0)
    {
      v52[0] = xmmword_19B7BA472;
      memset(&v52[1], 0, 48);
      v53[0] = xmmword_19B7BA4B2;
      *(a1 + 29) = 1;
      v53[1] = unk_19B7BA4C2;
      v51 = 0;
      v54 = 0;
      v55 = 0;
      if (sub_19B74FCD0(a1, &v51))
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
        }

        v16 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240707;
          v38 = v51;
          v39 = 2081;
          v40 = COERCE_DOUBLE(v52);
          v41 = 2081;
          v42 = COERCE_DOUBLE(v53);
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[AccessoryMagnetometer] config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s", buf, 0x1Cu);
        }

        v17 = sub_19B420058();
        if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
          }

          v31 = 67240707;
          v32 = v51;
          v33 = 2081;
          v34 = v52;
          v35 = 2081;
          v36 = v53;
          v18 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryMagnetometer::onMagnetometerData(const Sample &)", "CoreLocation: %s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }

        sub_19B41DF08(a1, 1, &v51, 108);
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
        }

        v20 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "[AccessoryMagnetometer] Service not found!", buf, 2u);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28B00);
          }

          LOWORD(v31) = 0;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAccessoryMagnetometer::onMagnetometerData(const Sample &)", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }
    }
  }

  else if (IOHIDEventGetType() == 15)
  {
    IOHIDEventGetFloatValue();
    *&v19 = v19;
    *(a1 + 84) = LODWORD(v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B663714()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B663744(void *a1)
{
  *a1 = &unk_1F0E32728;
  sub_19B42A568(a1 + 3);
  return a1;
}

void sub_19B66378C(void *a1)
{
  *a1 = &unk_1F0E32728;
  sub_19B42A568(a1 + 3);

  JUMPOUT(0x19EAE76F0);
}

const void **sub_19B6637F0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B446FB8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **sub_19B6638FC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B446FB8(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_19B663F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B6640B4(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"CMIMUCalTestCommandMessage";
  v4[0] = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, a1 + 40, 104);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v4, &v3, 1);
  sub_19B66451C();
}

void sub_19B6641A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B664590(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6645EC((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6645EC(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B664644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B664668(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = xmmword_19B7BA520;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Set linkModel initial angles from LyingDown state", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::setLinkModelJointAngles(const EventT *) [T = CMSitStandDetector::ELyingDown]", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_19B664818()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v0 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_INFO, "[SitStandDetector] resetFSM forced FSM to init state.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::logReset(const EventT *) [T = CMSitStandDetector::EReset]", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B6649BC(uint64_t a1, float a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E38160;
  *(a1 + 8) = 9;
  *(a1 + 16) = 512;
  v3 = a2;
  *(a1 + 24) = v3;
  *(a1 + 32) = vmulq_n_f64(xmmword_19B7BA530, v3);
  *(a1 + 48) = v3 * 0.3;
  v4.i64[1] = 0x3FF921FB54442D18;
  *(a1 + 56) = xmmword_19B7BA540;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 92) = 0;
  *(a1 + 96) = 1;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0x6400000000;
  *(a1 + 532) = 1;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0x6400000000;
  *(a1 + 968) = 0x6400000000;
  *(a1 + 1776) = 0x6400000000;
  *(a1 + 4984) = 0x6400000000;
  *(a1 + 10592) = 1;
  *(a1 + 10604) = 0u;
  *(a1 + 10620) = 0x200000000;
  *(a1 + 10636) = 1;
  *(a1 + 10648) = 0u;
  v4.i64[0] = 0x200000000;
  *(a1 + 10664) = 0x200000000;
  *(a1 + 10680) = 1;
  *(a1 + 10692) = 0u;
  *(a1 + 10708) = 0x700000000;
  *(a1 + 10744) = 1;
  *(a1 + 10756) = 0u;
  *(a1 + 10772) = 0x700000000;
  *(a1 + 10808) = 0;
  *(a1 + 10816) = 0;
  *(a1 + 10824) = 0u;
  *(a1 + 10840) = 0u;
  *(a1 + 10856) = 0u;
  *(a1 + 10872) = 0x3F80000000000000;
  sub_19B41E130((a1 + 10864), v4);
  *(a1 + 10912) = 0u;
  *(a1 + 10896) = 0u;
  *(a1 + 10880) = 0u;
  sub_19B664E00();
}

void sub_19B664DB0(_Unwind_Exception *exception_object)
{
  v3 = 0;
  v4 = v1 + 10904;
  while (1)
  {
    v5 = *(v4 + v3);
    *(v4 + v3) = 0;
    if (v5)
    {
      MEMORY[0x19EAE76F0](v5, 0x1000C40FF89C88ELL);
    }

    v3 -= 8;
    if (v3 == -24)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_19B664EF4(uint64_t a1, char a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == 2)
  {
    *(a1 + 92) = 0;
  }

  else
  {
    if (a2)
    {
      v5 = 1;
    }

    else
    {
      if (!*(a1 + 92))
      {
        goto LABEL_23;
      }

      v5 = -1;
    }

    v6 = v5 + *(a1 + 92);
    *(a1 + 92) = v6;
    if (v6 >= 2u)
    {
      sub_19B79A0E8(a1, 2, &v12);
      v7 = *(a1 + 10912);
      if (v7 && *(a1 + 10920))
      {
        v7(1, a3);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
      }

      v8 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Walking detection forced FSM to standing state.", buf, 2u);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
        }

        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::walkingDetectorCallback(BOOL, uint64_t)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }
  }

LABEL_23:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B66510C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16) | 2) == 2)
  {
    sub_19B79A0E8(a1, 1, &v9);
    v4 = *(a1 + 10912);
    if (v4 && *(a1 + 10920))
    {
      v4(2, a2);
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Strict period of head static forced FSM from standing/init state to sitting state.", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::auxSustainedStaticEventCallback(uint64_t)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6652F0(uint64_t a1, float *a2)
{
  if ((atomic_load_explicit(qword_1ED71CB60, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = __cxa_guard_acquire(qword_1ED71CB60);
    a2 = v13;
    if (v14)
    {
      xmmword_1ED71CD08 = xmmword_19B7BA618;
      unk_1ED71CD18 = unk_19B7BA628;
      xmmword_1ED71CD28 = xmmword_19B7BA638;
      unk_1ED71CD38 = unk_19B7BA648;
      xmmword_1ED71CCC8 = xmmword_19B7BA5D8;
      unk_1ED71CCD8 = unk_19B7BA5E8;
      xmmword_1ED71CCE8 = xmmword_19B7BA5F8;
      unk_1ED71CCF8 = unk_19B7BA608;
      xmmword_1ED71CC88 = xmmword_19B7BA598;
      unk_1ED71CC98 = unk_19B7BA5A8;
      xmmword_1ED71CCA8 = xmmword_19B7BA5B8;
      unk_1ED71CCB8 = unk_19B7BA5C8;
      __cxa_guard_release(qword_1ED71CB60);
      a2 = v13;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB68, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = __cxa_guard_acquire(&qword_1ED71CB68);
    a2 = v15;
    if (v16)
    {
      memcpy(&unk_1ED71D0B8, &unk_19B7BA658, 0x110uLL);
      __cxa_guard_release(&qword_1ED71CB68);
      a2 = v15;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB70, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = __cxa_guard_acquire(&qword_1ED71CB70);
    a2 = v17;
    if (v18)
    {
      xmmword_1ED71CEA8 = xmmword_19B7BA808;
      unk_1ED71CEB8 = unk_19B7BA818;
      xmmword_1ED71CEC8 = xmmword_19B7BA828;
      xmmword_1ED71CE68 = xmmword_19B7BA7C8;
      unk_1ED71CE78 = unk_19B7BA7D8;
      xmmword_1ED71CE88 = xmmword_19B7BA7E8;
      unk_1ED71CE98 = unk_19B7BA7F8;
      xmmword_1ED71CE28 = xmmword_19B7BA788;
      unk_1ED71CE38 = unk_19B7BA798;
      xmmword_1ED71CE48 = xmmword_19B7BA7A8;
      unk_1ED71CE58 = unk_19B7BA7B8;
      xmmword_1ED71CE08 = xmmword_19B7BA768;
      unk_1ED71CE18 = unk_19B7BA778;
      __cxa_guard_release(&qword_1ED71CB70);
      a2 = v17;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB78, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v19 = __cxa_guard_acquire(&qword_1ED71CB78);
    a2 = v20;
    if (v19)
    {
      xmmword_1ED71D078 = xmmword_19B7BA8F8;
      xmmword_1ED71D088 = unk_19B7BA908;
      xmmword_1ED71D098 = xmmword_19B7BA918;
      xmmword_1ED71D0A8 = unk_19B7BA928;
      xmmword_1ED71D038 = xmmword_19B7BA8B8;
      xmmword_1ED71D048 = unk_19B7BA8C8;
      xmmword_1ED71D058 = xmmword_19B7BA8D8;
      xmmword_1ED71D068 = unk_19B7BA8E8;
      xmmword_1ED71CFF8 = xmmword_19B7BA878;
      xmmword_1ED71D008 = unk_19B7BA888;
      xmmword_1ED71D018 = xmmword_19B7BA898;
      xmmword_1ED71D028 = unk_19B7BA8A8;
      xmmword_1ED71CFB8 = xmmword_19B7BA838;
      xmmword_1ED71CFC8 = unk_19B7BA848;
      xmmword_1ED71CFD8 = xmmword_19B7BA858;
      xmmword_1ED71CFE8 = unk_19B7BA868;
      __cxa_guard_release(&qword_1ED71CB78);
      a2 = v20;
    }
  }

  for (i = 0; i != 24; i += 2)
  {
    if (*&qword_1ED71CB60[i + 37] >= a2[2])
    {
      break;
    }
  }

  v4 = 0;
  v5 = *&qword_1ED71CB60[i + 38];
  do
  {
    if (*&qword_1ED71CB60[v4 + 171] >= a2[3])
    {
      break;
    }

    v4 += 2;
  }

  while (v4 != 34);
  v6 = 0;
  v7 = v5 * *&qword_1ED71CB60[v4 + 172];
  do
  {
    if (*&qword_1ED71CB60[v6 + 85] >= a2[6])
    {
      break;
    }

    v6 += 2;
  }

  while (v6 != 26);
  v8 = 0;
  v9 = v7 * *&qword_1ED71CB60[v6 + 86];
  do
  {
    if (*&qword_1ED71CB60[v8 + 139] >= a2[8])
    {
      break;
    }

    v8 += 2;
  }

  while (v8 != 32);
  v10 = v9 * *&qword_1ED71CB60[v8 + 140];
  if (a2[4] < 0.05)
  {
    v10 = 0.0;
  }

  v11 = v10;
  v22 = v11;
  sub_19B5BC034(a1 + 10592, &v22);
  if (*(a1 + 10624) != *(a1 + 10622))
  {
    return 0;
  }

  if (*(a1 + 10592) == 1)
  {
    sub_19B5BE7E0(a1 + 10592);
  }

  if (((v21 = *(a1 + 10596), v21 >= 40.0) || *(a1 + 10710)) && (sub_19B5BC034(a1 + 10680, &v21), *(a1 + 10604) = 0u, *(a1 + 10620) = 0, *(a1 + 10592) = 1, *(a1 + 10712) == *(a1 + 10710)) && sub_19B5C0034((a1 + 10708), sub_19B5C0258, 0) >= 20.0 && sub_19B5C0034((a1 + 10708), sub_19B5C024C, 0) >= 40.0)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}