void sub_19B7113D0(uint64_t a1, int *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    goto LABEL_39;
  }

  v3 = *a2;
  v4 = 1;
  if (*a2 > 51)
  {
    if (v3 != 52 && v3 != 56)
    {
LABEL_8:
      v4 = 0;
    }
  }

  else
  {
    if (!v3)
    {
      v7 = qword_1EAFE2998;
      goto LABEL_27;
    }

    if (v3 != 5)
    {
      goto LABEL_8;
    }
  }

  v5 = (v3 & 0xFFFFFFFE) == 10;
  v6 = v4 ^ 1;
  v7 = qword_1EAFE2998;
  if (v5)
  {
    v6 = 0;
  }

  if ((v6 & 1) == 0 && a2[1] > 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Received high / medium confidence in-vehicle event", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedVehicleState(const CLMotionActivity &)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *(a1 + 112) = 4;
    *buf = 0;
    sub_19B79A0E8(a1, 8, buf);
    goto LABEL_39;
  }

LABEL_27:
  if (v7 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
  }

  v11 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Received not in-vehicle event", buf, 2u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedVehicleState(const CLMotionActivity &)", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

LABEL_39:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B711744(uint64_t a1, int a2, int a3, int a4, unint64_t a5)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a2)
    {
      v10 = *(a1 + 80);
      if (v10)
      {
        v11 = v10 + 3000000 > a5;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v16 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = ((a5 - *(a1 + 80)) * 0.000001);
          *buf = 134349056;
          *&buf[4] = v17;
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Discount walk detection after a back to back SS transition. dt, %{public}.3f", buf, 0xCu);
        }

        v18 = sub_19B420058();
        if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
        {
          goto LABEL_36;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v66 = ((a5 - *(a1 + 80)) * 0.000001);
LABEL_34:
        v19 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }

        goto LABEL_36;
      }

      v12 = *(a1 + 56);
      if (v12 && v12 + 3000000 > a5)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v13 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v14 = ((a5 - *(a1 + 56)) * 0.000001);
          *buf = 134349056;
          *&buf[4] = v14;
          _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Discount walk detection right after sit->stand transition. dt, %{public}.3f", buf, 0xCu);
        }

        v15 = sub_19B420058();
        if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
        {
          goto LABEL_36;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v65 = ((a5 - *(a1 + 56)) * 0.000001);
        goto LABEL_34;
      }
    }

    ++*(a1 + 72);
LABEL_36:
    sub_19B69A8E4(*(a1 + 24), a5);
    goto LABEL_37;
  }

  if (*(a1 + 72))
  {
    --*(a1 + 72);
  }

LABEL_37:
  v20 = *(a1 + 24);
  if (*(v20 + 16) == 1)
  {
    *(v20 + 37696) = a4;
  }

  if (a2 && (*(a1 + 73) & 1) == 0 && *(a1 + 64))
  {
    v21 = *(a1 + 96);
    if ((a4 & 1) == 0 && *(v21 + 10816) != 1)
    {
      goto LABEL_82;
    }

    sub_19B79A0E8(v21, 4, buf);
    *(a1 + 73) = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v22 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Likely false re-enable via Stand->Sit detected. Reset SS FSM.", buf, 2u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  if (a4)
  {
    v25 = *(a1 + 24);
    if ((*(v25 + 16082) & 1) == 0)
    {
      if (!a3)
      {
        goto LABEL_67;
      }

      v26 = sub_19B7397C0(v25 + 5232, a5);
      sub_19B739E38(*(a1 + 24) + 5232, a5);
      v28 = 3.0;
      if (!*(a1 + 40))
      {
        v28 = 5.0;
      }

      if (v26 > v28 && v27 < v28)
      {
LABEL_67:
        if (a2 && *(a1 + 72) <= 1u)
        {
          v58 = *(a1 + 56);
          if (!v58)
          {
            goto LABEL_82;
          }

          v59 = a5 - v58;
          if (a5 <= v58)
          {
            goto LABEL_82;
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v60 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = (v59 * 0.000001);
            _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Sit->Stand %.2f seconds before walking detection", buf, 0xCu);
          }

          v61 = sub_19B420058();
          if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
            }

            v62 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::updateDistractedViewingState(BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v62);
            if (v62 != buf)
            {
              free(v62);
            }
          }

          if (v59 - 9000000 < 0xFFFFFFFFFF953041)
          {
            goto LABEL_82;
          }

          *(a1 + 112) = 3;
          *(a1 + 64) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v63 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = a5;
            _os_log_impl(&dword_19B41C000, v63, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Distracted viewing from sit->stand + walking event. timestampUs, %llu", buf, 0xCu);
          }

          v64 = sub_19B420058();
          if (*(v64 + 160) <= 1 && *(v64 + 164) <= 1 && *(v64 + 168) <= 1 && !*(v64 + 152))
          {
LABEL_81:
            *buf = a5;
            sub_19B79A0E8(a1, 1, buf);
            goto LABEL_82;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }
        }

        else
        {
          *(a1 + 112) = 1;
          *(a1 + 64) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v30 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *(a1 + 72);
            *buf = 67109376;
            *&buf[4] = v31;
            *&buf[8] = 2048;
            *&buf[10] = a5;
            _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Distracted viewing from walking event. numWalking, %d, timestampUs, %llu", buf, 0x12u);
          }

          v32 = sub_19B420058();
          if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
          {
            goto LABEL_81;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
          }

          v67 = *(a1 + 72);
        }

        v33 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::feedDistractedViewingEvent(TrackingDisableRoute, uint64_t)", "CoreLocation: %s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }

        goto LABEL_81;
      }
    }
  }

LABEL_82:
  if (*(a1 + 48) != a4)
  {
    v34 = sub_19B7397C0(*(a1 + 24) + 5232, a5);
    sub_19B739E38(*(a1 + 24) + 5232, a5);
    v36 = v35;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
    }

    v37 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 32))
      {
        v38 = "WalkDetector";
      }

      else
      {
        v38 = "StepDetector";
      }

      if (*(a1 + 48))
      {
        v39 = "Walking";
      }

      else
      {
        v39 = "No Walking";
      }

      if (a4)
      {
        v40 = "Walking";
      }

      else
      {
        v40 = "No Walking";
      }

      *buf = 136316162;
      *&buf[4] = v38;
      *&buf[12] = 2082;
      *&buf[14] = v39;
      v71 = 2082;
      v72 = v40;
      v73 = 2050;
      v74 = v34;
      v75 = 2050;
      v76 = v36;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "[CMHeadTrackingController] Via %s: Walk Detection changed : From %{public}s -> %{public}s, srcStaticFor, %{public}.2f secs, timeSinceLastSrcFrozen, %{public}.2f secs", buf, 0x34u);
    }

    v41 = sub_19B420058();
    if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      *(a1 + 32);
      *(a1 + 48);
      v42 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }
  }

  if (a4 && (*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 120))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v43 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v44 = (a5 - *(a1 + 120)) * 0.000001;
        *buf = 134217984;
        *&buf[4] = v44;
        _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between sit and walking: %f seconds", buf, 0xCu);
      }

      v45 = sub_19B420058();
      if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v68 = (a5 - *(a1 + 120)) * 0.000001;
        v46 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v46);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      v47 = (a5 - *(a1 + 120)) * 0.000001;
      v49 = *(a1 + 168);
      v48 = *(a1 + 176);
      if (v48 <= v47)
      {
        v48 = (a5 - *(a1 + 120)) * 0.000001;
      }

      if (v49 >= v47)
      {
        v49 = (a5 - *(a1 + 120)) * 0.000001;
      }

      *(a1 + 168) = v49;
      *(a1 + 176) = v48;
      *(a1 + 184) = v47 + *(a1 + 184);
      ++*(a1 + 192);
    }

    if (*(a1 + 56))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
      }

      v50 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v51 = (a5 - *(a1 + 56)) * 0.000001;
        *buf = 134217984;
        *&buf[4] = v51;
        _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEBUG, "[CMHeadTrackingController] Time between stand and walking: %f seconds", buf, 0xCu);
      }

      v52 = sub_19B420058();
      if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29E80);
        }

        v69 = (a5 - *(a1 + 56)) * 0.000001;
        v53 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadTrackingController::walkingDetectorCallback(BOOL, BOOL, BOOL, uint64_t)", "CoreLocation: %s\n", v53);
        if (v53 != buf)
        {
          free(v53);
        }
      }

      v54 = (a5 - *(a1 + 56)) * 0.000001;
      v56 = *(a1 + 136);
      v55 = *(a1 + 144);
      if (v55 <= v54)
      {
        v55 = (a5 - *(a1 + 56)) * 0.000001;
      }

      if (v56 >= v54)
      {
        v56 = (a5 - *(a1 + 56)) * 0.000001;
      }

      *(a1 + 136) = v56;
      *(a1 + 144) = v55;
      *(a1 + 152) = v54 + *(a1 + 152);
      ++*(a1 + 160);
    }
  }

  *(a1 + 48) = a4;
  v57 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B7127A0()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

const char *sub_19B7127D0(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "kUnknown";
  }

  else
  {
    return off_1E7535680[a1 - 1];
  }
}

void sub_19B71285C(float *a1, __int128 *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v22 = *a2;
  v23 = v3;
  v24[0] = a2[2];
  *(v24 + 13) = *(a2 + 45);
  if (sub_19B71959C())
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
    }

    v4 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Device still has original rear camera. Using unit-specific calibration info", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
      }

      LOWORD(v25) = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV5::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v7 = (&v22 + 7);
LABEL_55:
    sub_19B71913C(a1, v7);
    goto LABEL_56;
  }

  v8 = sub_19B719744();
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
  }

  v9 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v28 = v8;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "Rear camera was replaced. VCM actuator ID is %d", buf, 8u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
    }

    v25 = 67109120;
    v26 = v8;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV5::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (v8 == 4)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
    }

    v15 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "Using generic Alps calibration info", buf, 2u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
      }

      LOWORD(v25) = 0;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV5::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v7 = (v24 + 11);
    goto LABEL_55;
  }

  if (v8 == 3)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
    }

    v12 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "Using generic Mitsumi calibration info", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
      }

      LOWORD(v25) = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV5::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v7 = (&v23 + 9);
    goto LABEL_55;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
  }

  v19 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "Unrecongized VCM actuator. Not performing compensation", buf, 2u);
  }

  v20 = sub_19B420058();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29EA0);
    }

    LOWORD(v25) = 0;
    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV5::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

LABEL_56:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_19B712F98(_DWORD *a1)
{
  sub_19B718268(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B7131AC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    operator new();
  }

  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
  }

  v1 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_ERROR, "Pickup detection already started!", buf, 2u);
  }

  v2 = sub_19B420058();
  if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPickupManager startPickupUpdates]_block_invoke", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_19B7135FC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    if (qword_1EAFE3AD8 != -1)
    {
      dispatch_once(&qword_1EAFE3AD8, &unk_1F0E293E0);
    }

    sub_19B426A14(qword_1EAFE3AD0, 0, *(*(a1 + 32) + 16));
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
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
    }

    v4 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Stopped pickup detection updates", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPickupManager stopPickupUpdates]_block_invoke", "CoreLocation: %s\n");
LABEL_27:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
    }

    v7 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Pickup detection service already stopped!", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPickupManager stopPickupUpdates]_block_invoke", "CoreLocation: %s\n");
      goto LABEL_27;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B713A04(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
  }

  v2 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 134349056;
    v16 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Pickup Detection: %{public}ld", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E29EC0);
    }

    v14 = *(a1 + 40);
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPickupManager onPickupStateUpdated:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  objc_msgSend_delegate(*(a1 + 32), v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v11 = objc_msgSend_delegate(*(a1 + 32), v9, v10);
    result = objc_msgSend_pickupManager_didUpdateState_(v11, v12, *(a1 + 32), *(a1 + 40));
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B713C14()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

void sub_19B713C48(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

BOOL sub_19B713C8C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + (*(a1 + v2) * *(a1 + v2));
    v2 += 4;
  }

  while (v2 != 12);
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*(a2 + v4) * *(a2 + v4));
    v4 += 4;
  }

  while (v4 != 12);
  v6 = 0;
  if (sqrtf(v3) <= sqrtf(v5))
  {
    v7 = 0.0;
    do
    {
      v7 = v7 + (*(a2 + v6) * *(a2 + v6));
      v6 += 4;
    }

    while (v6 != 12);
  }

  else
  {
    v7 = 0.0;
    do
    {
      v7 = v7 + (*(a1 + v6) * *(a1 + v6));
      v6 += 4;
    }

    while (v6 != 12);
  }

  if (*(a1 + 48))
  {
    v8 = *(a2 + 48) == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && sqrtf(v7) <= 0.17453;
}

void sub_19B713D50(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 116) != a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 116);
      *buf = 67109376;
      v11 = v5;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMBleedToZero] Changed tracking behavior from %d to %d.", buf, 0xEu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
      }

      v9 = *(a1 + 116);
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMBleedToZero::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *a1 = 1084227584;
    *(a1 + 132) = 0;
    *(a1 + 116) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

float sub_19B713F68(uint64_t a1, float32x2_t *a2, float *a3, uint64_t a4)
{
  v8 = 0;
  v142 = *MEMORY[0x1E69E9840];
  v9 = 0.0;
  do
  {
    v9 = v9 + (a2->f32[v8] * a2->f32[v8]);
    ++v8;
  }

  while (v8 != 3);
  if (sqrtf(v9) > 0.000001)
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + (a3[v10] * a3[v10]);
      ++v10;
    }

    while (v10 != 3);
    if (sqrtf(v11) > 0.000001)
    {
      v12 = 0;
      v13 = 0.0;
      do
      {
        v13 = v13 + (a2->f32[v12] * a2->f32[v12]);
        ++v12;
      }

      while (v12 != 3);
      v14 = 0;
      v15 = 0.0;
      do
      {
        v15 = v15 + (a3[v14] * a3[v14]);
        ++v14;
      }

      while (v14 != 3);
      v16 = sqrtf(v13);
      v17 = a2->f32[1] / v16;
      v18 = a2->f32[0] / v16;
      v19 = a2[1].f32[0] / v16;
      v20 = sqrtf(v15);
      v23 = sub_19B66C1A4(a4, *a3 / v20, a3[1] / v20, a3[2] / v20);
      v24 = ((v19 * v22) + (v17 * v21)) + (v18 * v23);
      v25 = 1.0;
      if (v24 < 1.0)
      {
        v25 = -1.0;
        if (v24 > -1.0)
        {
          v25 = ((v19 * v22) + (v17 * v21)) + (v18 * v23);
        }
      }

      v26 = 0;
      v27 = (v17 * v22) - (v19 * v21);
      v28 = (v19 * v23) - (v18 * v22);
      v29 = (v18 * v21) - (v17 * v23);
      v137 = v27;
      v138 = v28;
      v139 = v29;
      v30 = 0.0;
      do
      {
        v30 = v30 + (*(&v137 + v26) * *(&v137 + v26));
        v26 += 4;
      }

      while (v26 != 12);
      v31 = acosf(v25);
      v32 = sqrtf(v30);
      if (v32 < 0.000001)
      {
        if (v31 < 1.57079633)
        {
          v33 = *a4;
          v34 = *(a4 + 4);
          v35 = *(a4 + 8);
          v36 = *(a4 + 12);
          goto LABEL_40;
        }

        v40 = 0;
        if (v19 <= 0.0)
        {
          v41 = -v19;
        }

        else
        {
          v41 = v19;
        }

        v42 = v41 <= 0.9;
        v43 = 0.0;
        v44 = (v19 * 0.0) - v17;
        v45 = v18 + (v19 * -0.0);
        v46 = (v18 * -0.0) + (v17 * 0.0);
        if (!v42)
        {
          v46 = v17 + (v18 * -0.0);
          v45 = (v18 * 0.0) - v19;
          v44 = (v17 * -0.0) + (v19 * 0.0);
        }

        v27 = (v45 * v19) - (v46 * v17);
        v28 = (v46 * v18) - (v44 * v19);
        v29 = (v44 * v17) - (v45 * v18);
        v137 = v27;
        v138 = v28;
        v139 = v29;
        do
        {
          v43 = v43 + (*(&v137 + v40) * *(&v137 + v40));
          v40 += 4;
        }

        while (v40 != 12);
        v32 = sqrtf(v43);
      }

      v47 = v31 / v32;
      v133 = v27 * v47;
      v134 = v28 * v47;
      v135 = v29 * v47;
      *v48.i64 = sub_19B66C264(buf, &v133);
      v33 = sub_19B66BF70(buf, a4, v48);
      v34 = v49;
      v35 = v50;
      v36 = v51;
      goto LABEL_40;
    }
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
  }

  v37 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    buf[0].i16[0] = 0;
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_ERROR, "[CMBleedToZero] unexpected 0 accel magnitude.", buf, 2u);
  }

  v38 = sub_19B420058();
  if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    LOWORD(v137) = 0;
    v39 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion CMBleedToZero::alignAttitudeWithGravity(const CMVector3d &, const CMVector3d &, const CMOQuaternion &) const", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  v33 = *a4;
  v34 = *(a4 + 4);
  v35 = *(a4 + 8);
  v36 = *(a4 + 12);
LABEL_40:
  v52 = 0;
  v137 = v33;
  v138 = v34;
  v53 = 0.0;
  v139 = v35;
  v140 = v36;
  do
  {
    v53 = v53 + (a3[v52] * a3[v52]);
    ++v52;
  }

  while (v52 != 3);
  v54 = sqrtf(v53);
  v55 = *a3 / v54;
  v56 = a3[1] / v54;
  v57 = a3[2] / v54;
  v58 = sub_19B606534(a1 + 8);
  buf[0].i32[0] = sub_19B66BFF4(v58, v59);
  *(buf[0].i64 + 4) = __PAIR64__(v61, v60);
  buf[0].i32[3] = v62;
  sub_19B66C1A4(buf[0].f32, v55, v56, v57);
  v64 = 0;
  v65 = 0;
  do
  {
    *v65.i32 = *v65.i32 + (a2->f32[v64] * a2->f32[v64]);
    ++v64;
  }

  while (v64 != 3);
  if (v63 <= 0.0)
  {
    v63 = -v63;
  }

  if (v63 > 0.9)
  {
    goto LABEL_50;
  }

  *v65.i32 = sqrtf(*v65.i32);
  v66 = a2[1].f32[0] / *v65.i32;
  v67 = -v66;
  if (v66 > 0.0)
  {
    v67 = a2[1].f32[0] / *v65.i32;
  }

  if (v67 > 0.9)
  {
LABEL_50:
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    v68 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEBUG, "[CMBleedToZero] Do not BTZ yaw because face or source frame z-axis is aligned with gravity.", buf, 2u);
    }

    v69 = sub_19B420058();
    if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
      }

      LOWORD(v133) = 0;
      v70 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMOQuaternion CMBleedToZero::relAttitudeBTZDefault(const CMVector3d &, const CMVector3d &, const CMOQuaternion &) const", "CoreLocation: %s\n");
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  v127 = vdiv_f32(*a2, vdup_lane_s32(v65, 0));
  v71 = sub_19B606534(a1 + 8);
  v133 = sub_19B66BF70(&v137, v71, v72);
  v134 = v73;
  v135 = v74;
  v136 = v75;
  v76 = 0.0;
  v77 = sub_19B66C1A4(&v133, 0.0, 0.0, 1.0);
  v78 = 0;
  _S13 = v127.f32[1];
  __asm { FMLA            S3, S1, V16.S[1] }

  v86 = _S3 + (v77 * v127.f32[0]);
  v87 = vmuls_lane_f32(v86, v127, 1);
  v88 = v66 * v86;
  v89 = v77 - (v86 * v127.f32[0]);
  v90 = _S1 - v87;
  v92 = v91 - v88;
  *v132 = v89;
  *&v132[1] = v90;
  *&v132[2] = v91 - v88;
  do
  {
    v76 = v76 + (*&v132[v78] * *&v132[v78]);
    ++v78;
  }

  while (v78 != 3);
  if (sqrtf(v76) <= 0.000001)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    v121 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_19B41C000, v121, OS_LOG_TYPE_ERROR, "[CMBleedToZero] unexpected 0 accel magnitude on zVecInS_pred_proj.", buf, 2u);
    }

    v122 = sub_19B420058();
    if ((*(v122 + 160) & 0x80000000) != 0 && (*(v122 + 164) & 0x80000000) != 0 && (*(v122 + 168) & 0x80000000) != 0 && !*(v122 + 152))
    {
      goto LABEL_104;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    v130.i16[0] = 0;
LABEL_101:
    v70 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion CMBleedToZero::relAttitudeBTZDefault(const CMVector3d &, const CMVector3d &, const CMOQuaternion &) const", "CoreLocation: %s\n");
LABEL_102:
    if (v70 != buf)
    {
      free(v70);
    }

    goto LABEL_104;
  }

  v93 = 0;
  v94 = 0.0;
  do
  {
    v94 = v94 + (*&v132[v93] * *&v132[v93]);
    ++v93;
  }

  while (v93 != 3);
  v95 = 0;
  v96 = sqrtf(v94);
  v97 = v90 / v96;
  buf[0].i64[0] = 0;
  buf[0].i32[2] = 1065353216;
  do
  {
    buf[0].f32[v95] = -buf[0].f32[v95];
    ++v95;
  }

  while (v95 != 3);
  v98 = 0;
  v99 = v89 / v96;
  v100 = 0.0;
  v101 = (v66 + (v127.f32[1] * 0.0)) + (v127.f32[0] * 0.0);
  v102 = (v66 * v101) + buf[0].f32[2];
  v103 = vadd_f32(vmul_n_f32(v127, v101), *buf[0].f32);
  v130 = v103;
  v131 = v102;
  do
  {
    v100 = v100 + (v130.f32[v98] * v130.f32[v98]);
    ++v98;
  }

  while (v98 != 3);
  if (sqrtf(v100) > 0.000001)
  {
    v104 = 0;
    v105 = 0.0;
    v106 = v92 / v96;
    do
    {
      v105 = v105 + (v130.f32[v104] * v130.f32[v104]);
      ++v104;
    }

    while (v104 != 3);
    v107 = sqrtf(v105);
    v108 = v103.f32[0] / v107;
    v103.f32[0] = v103.f32[1] / v107;
    v109 = v102 / v107;
    v110 = ((v106 * v109) + ((v103.f32[1] / v107) * v97)) + (v108 * v99);
    v111 = 1.0;
    if (v110 < 1.0)
    {
      v111 = -1.0;
      if (v110 > -1.0)
      {
        v111 = v110;
      }
    }

    v112 = 0;
    v113 = (v103.f32[0] * v106) - (v109 * v97);
    v114 = (v109 * v99) - (v108 * v106);
    v115 = (v108 * v97) - (v103.f32[0] * v99);
    v129[0] = v113;
    v129[1] = v114;
    v129[2] = v115;
    v116 = 0.0;
    do
    {
      v116 = v116 + (v129[v112] * v129[v112]);
      ++v112;
    }

    while (v112 != 3);
    v117 = acosf(v111);
    v118 = sqrtf(v116);
    v119 = v127.f32[0];
    if (v118 >= 0.000001)
    {
      v119 = v113 / v118;
      _S13 = v114 / v118;
      v66 = v115 / v118;
    }

    v128[0] = v117 * v119;
    v128[1] = v117 * _S13;
    v128[2] = v117 * v66;
    *v120.i64 = sub_19B66C264(buf, v128);
    v33 = sub_19B66BF70(buf, &v137, v120);
    goto LABEL_104;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
  }

  v123 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    buf[0].i16[0] = 0;
    _os_log_impl(&dword_19B41C000, v123, OS_LOG_TYPE_ERROR, "[CMBleedToZero] unexpected 0 accel magnitude on zVecInS_BTZ_proj.", buf, 2u);
  }

  v124 = sub_19B420058();
  if ((*(v124 + 160) & 0x80000000) == 0 || (*(v124 + 164) & 0x80000000) == 0 || (*(v124 + 168) & 0x80000000) == 0 || *(v124 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    LOWORD(v129[0]) = 0;
    goto LABEL_101;
  }

LABEL_104:
  v125 = *MEMORY[0x1E69E9840];
  return v33;
}

float sub_19B714A48(uint64_t a1, float *a2)
{
  v4 = sub_19B606534(a1 + 8);
  v5 = sub_19B69A550();
  v8 = sub_19B66C1A4(v4, *&v5, v6, v7);
  v10 = v9;
  v12 = v11;
  v13 = sub_19B606380(a1 + 8);
  v14 = sub_19B66C1A4(a2, *v13 + v8, v10 + v13[1], v12 + v13[2]);
  v15 = 0;
  *v19 = v14;
  v19[1] = v16;
  v19[2] = v17;
  do
  {
    *&v19[v15] = -*&v19[v15];
    ++v15;
  }

  while (v15 != 3);
  return *v19;
}

void sub_19B714B04(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float32x4_t a6@<Q0>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1065353216;
  sub_19B41E130((a5 + 12), a6);
  *(a5 + 12) = sub_19B713F68(a1, a2, a3, a4);
  *(a5 + 16) = v11;
  *(a5 + 20) = v12;
  *(a5 + 24) = v13;
  *a5 = sub_19B714A48(a1, (a5 + 12));
  *(a5 + 4) = v14;
  *(a5 + 8) = v15;
}

void sub_19B714B8C(uint64_t a1, float a2, float a3, float a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a1 >= 20.0 || *(a1 + 56) <= 2.5)
  {
    goto LABEL_35;
  }

  if (a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (a2 >= 20.0 || v8 <= a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 56);
      *buf = 134218752;
      v24 = a2;
      v25 = 2048;
      v26 = a4;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = v11;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CMBleedToZero] No extendedBTZ. TimeSinceAnchor %.2f, timeSinceLastUncorrelatedSrcMotion, %.2f, TimeSinceLastWalkingOrSitToStand, %.2f, quiescenceDuration, %.2f", buf, 0x2Au);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
      }

      v21 = *(a1 + 56);
      goto LABEL_33;
    }
  }

  else
  {
    *a1 = 1101004800;
    *(a1 + 40) = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    v13 = off_1EAFE29A0;
    v14 = a2;
    v15 = a4;
    v16 = a3;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 56);
      *buf = 134218752;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      v29 = 2048;
      v30 = v17;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CMBleedToZero] Set extendedBTZ. TimeSinceAnchor %.2f, timeSinceLastUncorrelatedSrcMotion, %.2f, TimeSinceLastWalkingOrSitToStand, %.2f, quiescenceDuration, %.2f", buf, 0x2Au);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
      }

      v22 = *(a1 + 56);
LABEL_33:
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMBleedToZero::updateExtendedBTZFromAnchor(const float, const float, const float)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B714F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, double a8)
{
  v68 = *MEMORY[0x1E69E9840];
  if (sub_19B713C8C(a2, a3))
  {
    *(a1 + 48) = vaddq_f64(*(a1 + 48), vdupq_lane_s64(*&a8, 0));
    *(a1 + 80) = *(a1 + 80) + a8;
    v15 = *(a1 + 64);
    if (v15 >= a8)
    {
      *(a1 + 64) = v15 - a8;
    }

    v16 = *(a1 + 72);
    if (v16 < a8)
    {
      goto LABEL_12;
    }

    v17 = v16 - a8;
LABEL_11:
    *(a1 + 72) = v17;
LABEL_12:
    v20 = 1;
    goto LABEL_13;
  }

  if (a5)
  {
    v18 = *(a1 + 64);
    *(a1 + 56) = *(a1 + 56) + a8;
    *(a1 + 80) = *(a1 + 80) + a8;
    if (v18 >= a8)
    {
      *(a1 + 64) = v18 - a8;
    }

    v19 = *(a1 + 72);
    if (v19 < a8)
    {
      goto LABEL_12;
    }

    v17 = v19 - a8;
    goto LABEL_11;
  }

  v23 = (a1 + 48);
  v24 = *(a1 + 48);
  v25 = vaddq_f64(*(a1 + 64), vdupq_lane_s64(*&a8, 0));
  *(a1 + 64) = v25;
  if (v24 >= a8)
  {
    *v23 = v24 - a8;
  }

  else
  {
    v26 = *(a1 + 56);
    if (v26 >= a8)
    {
      *(a1 + 56) = v26 - a8;
    }

    else
    {
      *v23 = 0.0;
      *(a1 + 56) = 0;
      v25.f64[0] = 0.0;
      *(a1 + 64) = 0;
    }
  }

  v48 = *(a1 + 80);
  if (v48 >= a8)
  {
    *(a1 + 80) = v48 - a8;
  }

  if (v25.f64[0] > 0.200000003)
  {
    *v23 = 0.0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    if (*a1 == 20.0)
    {
      *a1 = *(a1 + 4);
      *(a1 + 40) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
      }

      v49 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *a1;
        *buf = 134217984;
        *&buf[4] = v50;
        _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEFAULT, "[CMBleedToZero] Reset BTZ horizon from extendedBTZ to %.2f", buf, 0xCu);
      }

      v51 = sub_19B420058();
      if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
        }

        v52 = *a1;
        *v64 = 134217984;
        *&v64[4] = v52;
        v53 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMBleedToZero::updateMutualQuiescence(const CMRelDM::IMUData &, const CMRelDM::IMUData &, BOOL, double, const uint64_t)", "CoreLocation: %s\n", v53);
        if (v53 != buf)
        {
          free(v53);
        }
      }
    }
  }

  if (*(a1 + 72) <= 0.800000012)
  {
    goto LABEL_106;
  }

  *(a1 + 120) = a7;
  v54 = *(a1 + 80);
  *(a1 + 128) = v54;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v55 = *(a2 + 48);
  v56 = *(a3 + 48);
  if (v55 | v56)
  {
    if (!v55)
    {
      v20 = 0;
      v57 = 2;
      goto LABEL_110;
    }

    if (!v56)
    {
      v20 = 0;
      v57 = 1;
      goto LABEL_110;
    }

    *(a1 + 132) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
    }

    v58 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a7;
      _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_DEBUG, "[CMBleedToZero] Unexpected behavior: Cam controller disturbance threshold reached, but both srcIMU.qMode != kNotStatic and auxIMU.qMode != kNotStatic, timestamp: %llu", buf, 0xCu);
    }

    v59 = sub_19B420058();
    if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
      }

      *v64 = 134217984;
      *&v64[4] = a7;
      v60 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMBleedToZero::updateMutualQuiescence(const CMRelDM::IMUData &, const CMRelDM::IMUData &, BOOL, double, const uint64_t)", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

LABEL_106:
    v20 = 0;
    goto LABEL_13;
  }

  v20 = 0;
  v57 = 3;
LABEL_110:
  *(a1 + 132) = v57;
LABEL_13:
  *(a1 + 41) = v20;
  *(a1 + 43) = sub_19B713C8C(a2, a3);
  if (v20)
  {
    if (*(a1 + 40) == 1)
    {
      v21 = *(a1 + 56) < *a1;
    }

    else
    {
      v27 = *a1;
      if (*(a1 + 116))
      {
        v21 = *(a1 + 56) < fmaxf(v27, 1.0);
      }

      else
      {
        if (*(a1 + 48) >= fmaxf(v27, 5.0))
        {
          v22 = 1;
          *(a1 + 42) = 1;
LABEL_29:
          if ((*(a1 + 140) & 1) == 0)
          {
            ++*(a1 + 136);
          }

          *(a1 + 140) = 1;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
          }

          v28 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            v29 = *a1;
            v30 = *(a1 + 56);
            *buf = 134218240;
            *&buf[4] = v29;
            *&buf[12] = 2048;
            *&buf[14] = v30;
            _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[CMBleedToZero] horizon, %.3f, quiesenceLoose, %.3f", buf, 0x16u);
          }

          v31 = sub_19B420058();
          if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
            }

            v33 = *a1;
            v34 = *(a1 + 56);
            *v64 = 134218240;
            *&v64[4] = v33;
            v65 = 2048;
            v66 = v34;
            v35 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMBleedToZero::feedInputs(const CMRelDM::IMUData &, const CMRelDM::IMUData &, const CMOQuaternion &, const BOOL, const BOOL, const double, const uint64_t)", "CoreLocation: %s\n", v35);
            if (v35 != buf)
            {
              free(v35);
            }
          }

          v36 = a8;
          if (!v22)
          {
            *v64 = sub_19B447000((a2 + 56));
            *&v64[4] = v40;
            *&v64[8] = v41;
            v32.f32[0] = sub_19B447000((a3 + 56));
            v62 = __PAIR64__(v42, v32.u32[0]);
            v63 = v43;
LABEL_70:
            sub_19B714B04(a1, v64, &v62, a4, buf, v32);
            *(a1 + 88) = *buf;
            *(a1 + 100) = *&buf[12];
            goto LABEL_71;
          }

          if (*(a1 + 43) == 1)
          {
            *v64 = *(a2 + 12);
            *&v64[8] = *(a2 + 20);
            v62 = *(a3 + 12);
            v63 = *(a3 + 20);
            v37 = (a1 + 48);
            if (*(a1 + 48) < a8)
            {
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
              }

              v38 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "[CMBleedToZero] unexpected quiescentDurationStrict < dt.", buf, 2u);
              }

              v39 = sub_19B420058();
              if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
              {
                goto LABEL_68;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 == -1)
              {
LABEL_66:
                v46 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CMBleedToZero::feedInputs(const CMRelDM::IMUData &, const CMRelDM::IMUData &, const CMOQuaternion &, const BOOL, const BOOL, const double, const uint64_t)", "CoreLocation: %s\n", v46);
                if (v46 != buf)
                {
                  free(v46);
                }

LABEL_68:
                v36 = a8;
                goto LABEL_69;
              }

LABEL_115:
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
              goto LABEL_66;
            }
          }

          else
          {
            *v64 = *(a2 + 24);
            *&v64[8] = *(a2 + 32);
            v62 = *(a3 + 24);
            v63 = *(a3 + 32);
            v37 = (a1 + 56);
            if (*(a1 + 56) < a8)
            {
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29EE0);
              }

              v44 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[CMBleedToZero] unexpected quiescentDurationLoose < dt.", buf, 2u);
              }

              v45 = sub_19B420058();
              if ((*(v45 + 160) & 0x80000000) != 0 && (*(v45 + 164) & 0x80000000) != 0 && (*(v45 + 168) & 0x80000000) != 0 && !*(v45 + 152))
              {
                goto LABEL_68;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 == -1)
              {
                goto LABEL_66;
              }

              goto LABEL_115;
            }
          }

LABEL_69:
          *v32.i64 = *v37 - v36;
          *v37 = *v32.i64;
          goto LABEL_70;
        }

        v21 = *(a1 + 56) < fmaxf(v27 + v27, 5.0);
      }
    }

    v22 = !v21;
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 42) = v22 | a6;
  if ((v22 | a6) == 1)
  {
    goto LABEL_29;
  }

  *(a1 + 140) = 0;
LABEL_71:
  v47 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B7159E8()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B715A7C(float *a1, __int128 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v25 = *a2;
  v26 = v3;
  v4 = a2[3];
  v27[0] = a2[2];
  v27[1] = v4;
  if (sub_19B71959C())
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
    }

    v5 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Device still has original rear camera. Using unit-specific calibration info", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV6::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v8 = (&v25 | 0xA);
LABEL_55:
    sub_19B71913C(a1, v8);
    goto LABEL_56;
  }

  v9 = sub_19B719744();
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
  }

  v10 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = v9;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "Rear camera was replaced. VCM actuator ID is %d", buf, 8u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV6::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  if (v9 == 4)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
    }

    v16 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "Using generic Alps calibration info", buf, 2u);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
      }

      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV6::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v8 = v27 + 7;
    goto LABEL_55;
  }

  if (v9 == 3)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
    }

    v13 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_INFO, "Using generic Mitsumi calibration info", buf, 2u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV6::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v8 = &v26 + 6;
    goto LABEL_55;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
  }

  v20 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "Unrecongized VCM actuator. Not performing compensation", buf, 2u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F00);
    }

    v22 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV6::initializeCalibrationParamaters(const UInt8 *, int)", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

LABEL_56:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_19B7161B4(_DWORD *a1)
{
  sub_19B718268(a1);

  JUMPOUT(0x19EAE76F0);
}

__CFString *sub_19B717080(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E75356D0[a1];
  }
}

uint64_t sub_19B7170A0()
{
  if (qword_1ED71D5C8 != -1)
  {
    dispatch_once(&qword_1ED71D5C8, &unk_1F0E29F20);
  }

  return qword_1ED71D5C0;
}

void sub_19B7171A4(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B7171DC(uint64_t a1, int a2, double *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v24) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryAccelerometer] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryAccelerometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B750AC4(a1);
    v9 = *a3;
    if (*a3 > 0.0)
    {
      v10 = *(**(a1 + 32) + 16);
      if (*(a1 + 28) == 1)
      {
        v10(v9);
        (*(**(a1 + 32) + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A6A8);
      }

      else
      {
        v10(v9);
        v11 = *(a1 + 32);
        v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v12, *(a1 + 84));
        (*(*v11 + 16))(v11, @"MaxFIFOEvents", v13);
      }

      *(a1 + 29) = 0;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
    }

    v14 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v15 = *a3;
      *buf = 134349056;
      v24 = v15;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "[AccessoryAccelerometer] Setting update interval to %{public}f", buf, 0xCu);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
      }

      v22 = *a3;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryAccelerometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = rint(*a3 * 1000000.0);
    if (*a3 < 0.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    sub_19B4238F4(*(a1 + 32), v19);
    v20 = *a3;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_19B717630(uint64_t a1, int a2, double *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v17) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryAccelerometer] Unrecognized batch interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryAccelerometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
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
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
    }

    v9 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 134349056;
      v17 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[AccessoryAccelerometer] Setting batch interval to %{public}f", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
      }

      v15 = *a3;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryAccelerometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v12);
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

void sub_19B717988(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() != 13)
  {
    goto LABEL_56;
  }

  if (IOHIDEventGetIntegerValue() == 1)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
    }

    v2 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[AccessoryAccelerometer] Received shake data, discarding.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
      }

      LOWORD(v52) = 0;
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryAccelerometer::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n");
LABEL_54:
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  else
  {
    IOHIDEventGetFloatValue();
    v6 = v5;
    v28 = v6;
    IOHIDEventGetFloatValue();
    v8 = v7;
    v29 = v8;
    IOHIDEventGetFloatValue();
    v10 = v9;
    v30 = v10;
    TimeStamp = IOHIDEventGetTimeStamp();
    v12 = sub_19B41E070(TimeStamp);
    v27 = v12;
    IntegerValue = IOHIDEventGetIntegerValue();
    v32 = IntegerValue;
    v14 = sub_19B794CA4();
    v31 = v14;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
    }

    v15 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67241472;
      v41 = IntegerValue;
      v42 = 2050;
      v43 = v6;
      v44 = 2050;
      v45 = v8;
      v46 = 2050;
      v47 = v10;
      v48 = 2050;
      v49 = v14;
      v50 = 2050;
      v51 = v12;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "[AccessoryAccelerometer] seq,%{public}d,x,%{public}20.20f,y,%{public}20.20f,z,%{public}20.20f,sensorTime,%{public}llu,timestamp,%{public}20.20f", buf, 0x3Au);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
      }

      v52 = 67241472;
      LODWORD(v53[0]) = IntegerValue;
      WORD2(v53[0]) = 2050;
      *(v53 + 6) = v6;
      HIWORD(v53[0]) = 2050;
      *&v53[1] = v8;
      WORD4(v53[1]) = 2050;
      *(&v53[1] + 10) = v10;
      WORD1(v53[2]) = 2050;
      *(&v53[2] + 4) = v14;
      WORD6(v53[2]) = 2050;
      *(&v53[2] + 14) = v12;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryAccelerometer::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    sub_19B41DF08(a1, 0, &v27, 40);
    if ((*(a1 + 29) & 1) == 0)
    {
      v53[0] = xmmword_19B7BCE83;
      memset(&v53[1], 0, 48);
      v54[0] = xmmword_19B7BCEC3;
      *(a1 + 29) = 1;
      v52 = 0;
      memset(&v54[1], 0, 110);
      if (sub_19B74FCD0(a1, &v52))
      {
        memset(v39, 0, 44);
        v18 = sub_19B43EE18(*(a1 + 32));
        if (sub_19B7960E8(v39, v18, @"ARSC", 0x2CuLL))
        {
          v19 = 0;
          v20 = &v54[2] + 5;
          do
          {
            snprintf(v20, 0x2CuLL, "%02x", *(v39 + v19++));
            v20 += 2;
          }

          while (v19 != 44);
        }

        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
        }

        v21 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240707;
          v41 = v52;
          v42 = 2081;
          v43 = COERCE_DOUBLE(v53);
          v44 = 2081;
          v45 = COERCE_DOUBLE(v54);
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[AccessoryAccelerometer] config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s", buf, 0x1Cu);
        }

        v22 = sub_19B420058();
        if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
          }

          v33 = 67240707;
          v34 = v52;
          v35 = 2081;
          v36 = v53;
          v37 = 2081;
          v38 = v54;
          v23 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryAccelerometer::onAccelerometerData(const Sample &)", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        sub_19B41DF08(a1, 1, &v52, 196);
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
        }

        v24 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "[AccessoryAccelerometer] Service not found!", buf, 2u);
        }

        v25 = sub_19B420058();
        if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E285C0);
          }

          LOWORD(v39[0]) = 0;
          v4 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAccessoryAccelerometer::onAccelerometerData(const Sample &)", "CoreLocation: %s\n");
          goto LABEL_54;
        }
      }
    }
  }

LABEL_56:
  v26 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B7181B0()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B718268(_DWORD *a1)
{
  *a1 = &unk_1F0E318E8;
  sub_19B7182CC(a1);
  bzero(a1 + 18, 0x10uLL);

  return sub_19B674784(a1);
}

uint64_t sub_19B7182CC(_DWORD *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, a1);
  v3 = a1[11];
  if (v3 != -1)
  {
    notify_cancel(v3);
    a1[11] = -1;
  }

  v4 = a1[13];
  if (v4 != -1)
  {
    notify_cancel(v4);
    a1[13] = -1;
  }

  result = a1[15];
  if (result != -1)
  {
    result = notify_cancel(result);
    a1[15] = -1;
  }

  return result;
}

void sub_19B718344(_DWORD *a1)
{
  sub_19B718268(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B71837C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v4 = result;
    *(result + 72 + 8 * a2) = a3;
    if (*(result + 72) || *(result + 80))
    {
      if ((*(result + 44) & 0x80000000) != 0)
      {
        if (notify_register_check("com.apple.isp.focusing", (result + 44)))
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
          }

          v5 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v20 = "com.apple.isp.focusing";
            _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Could not register for notification %s", buf, 0xCu);
          }

          v6 = sub_19B420058();
          if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
            }

            v7 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMagnetometerCoexistenceNotifierCpasCamera::registerForNotificationsIfNecessary()", "CoreLocation: %s\n", v7);
            if (v7 != buf)
            {
              free(v7);
            }
          }
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_19B7198EC, @"com.apple.isp.focusing", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      if (v4[13] < 0)
      {
        if (notify_register_check("com.apple.isp.backcamerapower", v4 + 13))
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
          }

          v9 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v20 = "com.apple.isp.backcamerapower";
            _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Could not register for notification %s", buf, 0xCu);
          }

          v10 = sub_19B420058();
          if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
            }

            v11 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMagnetometerCoexistenceNotifierCpasCamera::registerForNotificationsIfNecessary()", "CoreLocation: %s\n", v11);
            if (v11 != buf)
            {
              free(v11);
            }
          }
        }

        v12 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(v12, v4, sub_19B7198EC, @"com.apple.isp.backcamerapower", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      if (v4[15] < 0)
      {
        if (notify_register_check("com.apple.isp.backcamerasensorconfig", v4 + 15))
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
          }

          v13 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v20 = "com.apple.isp.backcamerasensorconfig";
            _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Could not register for notification %s", buf, 0xCu);
          }

          v14 = sub_19B420058();
          if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
            }

            v15 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMagnetometerCoexistenceNotifierCpasCamera::registerForNotificationsIfNecessary()", "CoreLocation: %s\n", v15);
            if (v15 != buf)
            {
              free(v15);
            }
          }
        }

        v16 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(v16, v4, sub_19B7198EC, @"com.apple.isp.backcamerasensorconfig", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      sub_19B71899C(v4);
      sub_19B718D18(v4);
      v17 = *MEMORY[0x1E69E9840];

      return sub_19B719074(v4);
    }

    else
    {
      v18 = *MEMORY[0x1E69E9840];

      return sub_19B7182CC(result);
    }
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void sub_19B71899C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  state64 = 0;
  if (notify_get_state(*(a1 + 52), &state64))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v2 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v15 = "com.apple.isp.backcamerapower";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "Could not get state for %s", buf, 0xCu);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
      }

      v12 = 136315138;
      v13 = "com.apple.isp.backcamerapower";
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMagnetometerCoexistenceNotifierCpasCamera::updateCameraState()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  else
  {
    *(a1 + 56) = state64 != 0;
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v5 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 56);
      *buf = 67109120;
      LODWORD(v15) = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "camera state = %d", buf, 8u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
      }

      v8 = *(a1 + 56);
      v12 = 67109120;
      LODWORD(v13) = v8;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::updateCameraState()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    (*(*a1 + 48))(a1);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B718D18(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  state64 = 0;
  if (notify_get_state(*(a1 + 44), &state64))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v2 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "com.apple.isp.focusing";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "Could not get state for %s", buf, 0xCu);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
      }

      v13 = 136315138;
      v14 = "com.apple.isp.focusing";
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMagnetometerCoexistenceNotifierCpasCamera::updateFocusPosition()", "CoreLocation: %s\n");
LABEL_23:
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  else
  {
    v5 = state64;
    *(a1 + 48) = state64;
    v11 = v5 == 0xFFFF;
    sub_19B4455DC(a1, 1, &v11, 1);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v6 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 48);
      *buf = 67109120;
      LODWORD(v16) = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "focus position = %d", buf, 8u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
      }

      v9 = *(a1 + 48);
      v13 = 67109120;
      LODWORD(v14) = v9;
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::updateFocusPosition()", "CoreLocation: %s\n");
      goto LABEL_23;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B719074(_BYTE *a1)
{
  v2 = *(a1 + 12);
  if (v2 != 0xFFFF)
  {
    if (a1[56] == 1)
    {
      *(a1 + 4) = vmla_n_f32(*(a1 + 100), *(a1 + 88), v2);
      *(a1 + 10) = *(a1 + 27) + (*(a1 + 24) * v2);
    }

    else
    {
      bzero(a1 + 32, 0xCuLL);
    }
  }

  (*(*a1 + 64))(a1);

  return sub_19B4455DC(a1, 0, (a1 + 32), 12);
}

void sub_19B71913C(float *a1, __int16 *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  a1[22] = *a2 * 0.01;
  a1[23] = a2[1] * 0.01;
  a1[24] = a2[2] * 0.01;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    v5 = a1[22];
    v6 = a1[23];
    v7 = a1[24];
    *buf = 134218496;
    v26 = v5;
    v27 = 2048;
    v28 = v6;
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "VCM Delta.x,%f,VCM Delta.y,%f,VCM Delta.z,%f", buf, 0x20u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v19 = a1[22];
    v21 = a1[23];
    v23 = a1[24];
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::setCoexistenceInfo(const CameraCoexistenceInfo &)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v9.i64[0] = *(a1 + 11);
  v9.f32[2] = a1[24];
  v11 = vdivq_f32(v9, vdupq_n_s32(0x437F0000u));
  v9.f32[3] = a2[3];
  v11.i32[3] = vmulq_f32(v9, vdupq_n_s32(0x3C23D70Au)).i32[3];
  *(a1 + 22) = v11;
  a1[26] = a2[4] * 0.01;
  a1[27] = a2[5] * 0.01;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
  }

  v12 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    v13 = a1[25];
    v14 = a1[26];
    v15 = a1[27];
    *buf = 134218496;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    v29 = 2048;
    v30 = v15;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "Rear camera offset.x,%f,Rear camera offset.y,%f,Rear camera offset.z,%f", buf, 0x20u);
  }

  v16 = sub_19B420058();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v20 = a1[25];
    v22 = a1[26];
    v24 = a1[27];
    v17 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::setCoexistenceInfo(const CameraCoexistenceInfo &)", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B71959C()
{
  sub_19B420D84();
  if (*(qword_1ED71C908 + 16) != 1)
  {
    operator new();
  }

  return sub_19B65DF5C();
}

void sub_19B7196EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  sub_19B41FFEC(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_19B719744()
{
  sub_19B420D84();
  if (*(qword_1ED71C908 + 16) != 1)
  {
    operator new();
  }

  v0 = sub_19B65EB4C();
  return objc_msgSend_intValue(v0, v1, v2);
}

void sub_19B7198EC(int a1, uint64_t a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"com.apple.isp.focusing", 0))
  {
    if (CFStringCompare(theString1, @"com.apple.isp.backcamerapower", 0))
    {
      if (CFStringCompare(theString1, @"com.apple.isp.backcamerasensorconfig", 0))
      {
        return;
      }

      v5 = sub_19B420D84();
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B719DDC;
      v7[3] = &unk_1E75327D8;
      v7[4] = a2;
      v6 = v7;
    }

    else
    {
      v5 = sub_19B420D84();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_19B719C1C;
      v8[3] = &unk_1E75327D8;
      v8[4] = a2;
      v6 = v8;
    }
  }

  else
  {
    v5 = sub_19B420D84();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B719A5C;
    v9[3] = &unk_1E75327D8;
    v9[4] = a2;
    v6 = v9;
  }

  sub_19B420C9C(v5, v6);
}

uint64_t sub_19B719A5C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Received focusing notification", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::onFocusingNotification()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  sub_19B718D18(v1);
  result = sub_19B719074(v1);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B719C1C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Received camera state notification", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::onCameraStateNotification()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  sub_19B71899C(v1);
  result = sub_19B719074(v1);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B719DDC(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Received camera mode notification", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    LOWORD(v16) = 0;
    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::onCameraModeNotification()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  state64 = 0;
  if (notify_get_state(v1[15], &state64))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v5 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v19 = "com.apple.isp.backcamerasensorconfig";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Could not get state for %s", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
      }

      v16 = 136315138;
      v17 = "com.apple.isp.backcamerasensorconfig";
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMagnetometerCoexistenceNotifierCpasCamera::updateCameraMode()", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    v1[16] = state64;
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
    }

    v8 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      v9 = v1[16];
      *buf = 67109120;
      LODWORD(v19) = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "camera mode = %d", buf, 8u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29F40);
      }

      v11 = v1[16];
      v16 = 67109120;
      LODWORD(v17) = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasCamera::updateCameraMode()", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    (*(*v1 + 56))(v1);
  }

  result = sub_19B719074(v1);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B71A29C(int a1)
{
  result = 5.97;
  if (a1 > 15254)
  {
    if (a1 > 15732)
    {
      if (a1 > 19089)
      {
        if (a1 > 90602)
        {
          if (a1 <= 515651)
          {
            if (a1 == 90603)
            {
              return 4.85;
            }

            if (a1 != 515621)
            {
              return 4.4021;
            }

            return 5.0;
          }

          if (a1 == 515652)
          {
            return 7.0;
          }

          v2 = 519150;
        }

        else
        {
          if (a1 > 90120)
          {
            return 4.4021;
          }

          if (a1 == 19090)
          {
            return 9.0;
          }

          v2 = 19150;
        }

        if (a1 == v2)
        {
          return 4.45;
        }

        return 4.4021;
      }

      if (a1 > 18099)
      {
        if (a1 > 18239)
        {
          if (a1 == 18240)
          {
            return 9.59;
          }

          if (a1 != 19030)
          {
            return 4.4021;
          }

          return 7.0;
        }

        if (a1 != 18100)
        {
          if (a1 == 18200)
          {
            return 5.25;
          }

          return 4.4021;
        }

        return 5.0;
      }

      if (a1 != 15733)
      {
        if (a1 == 17150)
        {
          return result;
        }

        if (a1 == 18050)
        {
          return 5.91;
        }

        return 4.4021;
      }

      return 6.0;
    }

    if (a1 <= 15609)
    {
      if (a1 <= 15359)
      {
        if (a1 == 15255)
        {
          return 4.8;
        }

        if (a1 != 15330)
        {
          v4 = 15350;
          goto LABEL_96;
        }

        return 8.0;
      }

      if (a1 <= 15559)
      {
        if (a1 == 15360)
        {
          return 8.0;
        }

        v3 = 15460;
        goto LABEL_101;
      }

      if (a1 == 15560)
      {
        return 8.3;
      }

      if (a1 != 15592)
      {
        return 4.4021;
      }

      return 7.5;
    }

    if (a1 <= 15659)
    {
      if (a1 == 15610)
      {
        return 7.0;
      }

      if (a1 == 15620)
      {
        return 5.0;
      }

      if (a1 != 15652)
      {
        return 4.4021;
      }
    }

    else
    {
      if (a1 <= 15674)
      {
        if (a1 == 15670)
        {
          return 3.0;
        }

        return 4.4021;
      }

      if (a1 != 15675)
      {
        if (a1 != 15711)
        {
          return 4.4021;
        }

        return 6.0;
      }
    }

    return 7.3;
  }

  if (a1 <= 2070)
  {
    if (a1 <= 2019)
    {
      if (a1 > 63)
      {
        if (a1 > 65)
        {
          if (a1 != 66)
          {
            if (a1 == 2010)
            {
              return 6.35;
            }

            return 4.4021;
          }

          return 6.4;
        }

        if (a1 != 64)
        {
          return 8.0;
        }

        return 7.0;
      }

      switch(a1)
      {
        case 4:
          return result;
        case 6:
          return 6.37;
        case 8:
          return 9.33;
      }

      return 4.4021;
    }

    if (a1 <= 2047)
    {
      if (a1 == 2020)
      {
        return 7.55;
      }

      if (a1 != 2022)
      {
        if (a1 == 2024)
        {
          return 5.13;
        }

        return 4.4021;
      }

      return 5.38;
    }

    if (a1 > 2064)
    {
      if (a1 != 2065)
      {
        if (a1 == 2068)
        {
          return 8.8;
        }

        return 4.4021;
      }

      return 7.11;
    }

    if (a1 == 2048)
    {
      return 6.74;
    }

    if (a1 != 2061)
    {
      return 4.4021;
    }

    return 5.0;
  }

  if (a1 <= 12149)
  {
    if (a1 > 2149)
    {
      if (a1 <= 3015)
      {
        if (a1 != 2150)
        {
          if (a1 == 3015)
          {
            return 5.87;
          }

          return 4.4021;
        }

        return 4.6;
      }

      if (a1 != 3016)
      {
        if (a1 != 11805)
        {
          return 4.4021;
        }

        return 4.85;
      }

      return 7.5;
    }

    if (a1 != 2071)
    {
      if (a1 != 2101)
      {
        if (a1 == 2105)
        {
          return 3.71;
        }

        return 4.4021;
      }

      return 6.07;
    }

    return 5.91;
  }

  if (a1 > 15109)
  {
    if (a1 <= 15229)
    {
      if (a1 == 15110)
      {
        return 6.95;
      }

      if (a1 != 15150)
      {
        return 4.4021;
      }

      return 4.8;
    }

    if (a1 != 15230)
    {
      v3 = 15250;
LABEL_101:
      if (a1 != v3)
      {
        return 4.4021;
      }
    }

    return 8.0;
  }

  if (a1 <= 15054)
  {
    if (a1 != 12150)
    {
      if (a1 == 15030)
      {
        return 5.5;
      }

      return 4.4021;
    }

    return 9.33;
  }

  if (a1 != 15055)
  {
    v4 = 15100;
LABEL_96:
    if (a1 == v4)
    {
      return 7.8;
    }

    return 4.4021;
  }

  return 6.5;
}

void sub_19B71A7B4(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = objc_msgSend_workoutType(a1, a2, a3);
  v8 = objc_msgSend_CLMotionActivityTypeFromCMWorkoutType_(CMWorkout, v7, v6);
  if (a4 < 0.0)
  {
    goto LABEL_2;
  }

  if (v8 > 40)
  {
    if (v8 > 17149)
    {
      if (v8 == 90603 || v8 == 17150)
      {
        return;
      }
    }

    else if (v8 == 41 || v8 == 12150)
    {
      return;
    }

    goto LABEL_2;
  }

  if (v8 != 4)
  {
    if (v8 == 6)
    {
      sub_19B62977C(a4, 0.0, *(a2 + 12), 1.0);
      return;
    }

    if (v8 != 8)
    {
LABEL_2:

      sub_19B71A29C(v8);
    }
  }
}

void sub_19B71AA58(_DWORD *a1)
{
  sub_19B718268(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B71AA94(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  bzero(&v13, 0x12uLL);
  v2 = *(a1 + 64);
  v3 = 114;
  if (v2 == 1)
  {
    v3 = 138;
  }

  v4 = v2 == 2;
  v5 = 174;
  if (!v4)
  {
    v5 = v3;
  }

  v6 = (a1 + v5);
  v13 = *v6;
  v14 = *(v6 + 2);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29F60);
  }

  v7 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 64);
    *buf = 67110656;
    v30 = v13;
    v31 = 1024;
    v32 = SWORD1(v13);
    v33 = 1024;
    v34 = SWORD2(v13);
    v35 = 1024;
    v36 = SHIWORD(v13);
    v37 = 1024;
    v38 = v14;
    v39 = 1024;
    v40 = SHIWORD(v14);
    v41 = 1024;
    v42 = v8;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "Setting calibration data %d, %d, %d, %d, %d, %d from sensor mode %d", buf, 0x2Cu);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29F60);
    }

    v10 = *(a1 + 64);
    v15 = 67110656;
    v16 = v13;
    v17 = 1024;
    v18 = SWORD1(v13);
    v19 = 1024;
    v20 = SWORD2(v13);
    v21 = 1024;
    v22 = SHIWORD(v13);
    v23 = 1024;
    v24 = v14;
    v25 = 1024;
    v26 = SHIWORD(v14);
    v27 = 1024;
    v28 = v10;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV10::chooseOffsetData()", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  sub_19B71913C(a1, &v13);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B71B198(uint64_t a1)
{
  dispatch_release(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  sub_19B42C54C(a1, 0);
  return a1;
}

uint64_t sub_19B71B1EC(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  if (!**(result + 32))
  {
    operator new();
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B71B3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B71B42C(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_19B444AA4(v13, Dictionary);
  if (*(v2 + 16) && *(v2 + 24) && (*(v13[0] + 856))(v13) >= 1 && sub_19B6E75C0(v12, v13))
  {
    v4 = *(v2 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B71B6CC;
    block[3] = &unk_1E75333A0;
    block[4] = v2;
    v11[0] = *v12;
    *(v11 + 13) = *&v12[13];
    dispatch_async(v4, block);
  }

  else
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29F80);
    }

    v5 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "Bad pressure bias from daemon.", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29F80);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLPressureBiasProxy::start()_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  result = sub_19B445384(v13);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B71B6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19B445384(va);
  _Unwind_Resume(a1);
}

void sub_19B71B6F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  *(v2 + 24) = _Block_copy(*(a1 + 40));
  v4 = *(v2 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 32);
  *(v2 + 16) = v5;

  dispatch_retain(v5);
}

os_log_t sub_19B71B754()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

uint64_t sub_19B71B784(float *__src, float a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = &unk_1F0E2A978;
  v11 = 0;
  v8 = &v10;
  v9 = 0;
  sub_19B709958(&v8, __src);
  result = sub_19B709DB0(&v8, a2);
  if ((v11 & 1) == 0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
    }

    v5 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "receiver.fGotFit";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
      }
    }

    v6 = qword_1ED71C818;
    if (os_signpost_enabled(qword_1ED71C818))
    {
      buf = 68289539;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "receiver.fGotFit";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
      }
    }

    v7 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "receiver.fGotFit";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B71BA58(uint64_t a1, float *a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = (a3 * 4.0) + 2.0;
  if (a1 == a2)
  {
    v11 = a2;
  }

  else
  {
    v4 = (a1 + 24);
    while (v4 != a2)
    {
      v5 = *v4;
      v6 = *(v4 - 6);
      v4 += 6;
      if (v5 < v6)
      {
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
        }

        v7 = qword_1ED71C818;
        if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2082;
          v31 = "assert";
          v32 = 2081;
          v33 = "std::is_sorted(samples.begin(), samples.end())";
          _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
          }
        }

        v8 = qword_1ED71C818;
        if (os_signpost_enabled(qword_1ED71C818))
        {
          *buf = 68289539;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2082;
          v31 = "assert";
          v32 = 2081;
          v33 = "std::is_sorted(samples.begin(), samples.end())";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
          }
        }

        v9 = qword_1ED71C818;
        if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2082;
          v31 = "assert";
          v32 = 2081;
          v33 = "std::is_sorted(samples.begin(), samples.end())";
          _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        a1 = abort_report_np();
        break;
      }
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    v11 = a1;
    do
    {
      v12 = v10 >> 1;
      v13 = &v11[6 * (v10 >> 1)];
      v15 = *v13;
      v14 = v13 + 6;
      v10 += ~(v10 >> 1);
      if (v15 < v3)
      {
        v11 = v14;
      }

      else
      {
        v10 = v12;
      }
    }

    while (v10);
  }

  if (v11 == a1)
  {
    v16 = INFINITY;
  }

  else
  {
    v16 = vabds_f32(*(v11 - 6), v3);
  }

  if (v11 == a2)
  {
    v17 = INFINITY;
  }

  else
  {
    v17 = vabds_f32(*v11, v3);
  }

  v18 = v11;
  do
  {
    if (v11 == a1 && v18 == a2)
    {
      v20 = 72.0;
LABEL_47:
      v23 = -30.0;
      v24 = 3.0;
      goto LABEL_48;
    }

    if (v16 >= v17)
    {
      if (v18 + 6 == a2)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = vabds_f32(v18[6], v3);
      }

      v19 = v18;
      v18 += 6;
    }

    else
    {
      v19 = v11 - 6;
      if (v11 - 6 == a1)
      {
        v16 = INFINITY;
      }

      else
      {
        v16 = vabds_f32(*(v11 - 12), v3);
      }

      v11 -= 6;
    }
  }

  while (v18 - v11 < 72);
  v20 = 72.0;
  if (v19 == a2 || !v19)
  {
    goto LABEL_47;
  }

  v20 = vabds_f32(*v19, v3);
  if (v20 < 10.0)
  {
    v21 = *MEMORY[0x1E69E9840];
    return roundf((v20 * 0.3) + 7.0);
  }

  if (v20 >= 20.0)
  {
    goto LABEL_47;
  }

  v23 = -10.0;
  v24 = 2.0;
LABEL_48:
  result = fminf(v23 + (v20 * v24), 255.0);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B71BEA0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  *(a3 + 266) = 0u;
  *(a3 + 241) = 0u;
  *(a3 + 225) = 0u;
  *(a3 + 209) = 0u;
  *(a3 + 193) = 0u;
  *(a3 + 177) = 0u;
  *(a3 + 161) = 0u;
  *(a3 + 145) = 0u;
  *(a3 + 129) = 0u;
  *(a3 + 113) = 0u;
  *(a3 + 97) = 0u;
  *(a3 + 81) = 0u;
  *(a3 + 65) = 0u;
  *(a3 + 49) = 0u;
  *(a3 + 33) = 0u;
  *(a3 + 17) = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 257) = 0u;
  *a3 = 22;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v6 == v7)
  {
    *(a3 + 228) = -1;
    *(a3 + 246) = -1;
    *(a3 + 264) = -1;
    goto LABEL_76;
  }

  sub_19B71CAEC(v6, v7, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3)), 1, 0);
  v8 = **a1;
  v9 = *(*(a1 + 8) - 24);
  v10 = v9 - v8;
  v92 = a3;
  v93 = a2;
  if ((v9 - v8) < 6.6667)
  {
    *(a3 + 224) = 1084227584;
    v11 = 2.5;
    v12 = 1.0;
    v13 = 10.0;
LABEL_11:
    v18 = ((v8 + v9) + (v12 * -10.0)) * 0.5;
    *(a3 + 196) = v18;
    v15 = 1;
    goto LABEL_12;
  }

  v14 = 3.4028e38;
  v15 = 1;
  for (i = 2; i != 7; ++i)
  {
    v17 = fabsf((v10 / (i - 1)) + -10.0);
    if (v17 < v14)
    {
      v14 = v17;
      v15 = i;
    }
  }

  v13 = v10 / (v15 - 1);
  v12 = v13 / 10.0;
  *(a3 + 224) = (v13 / 10.0) * 5.0;
  if (v15 >= 7)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
    }

    v89 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      *buf_8 = 2082;
      *&buf_8[2] = "";
      v96 = 2082;
      v97 = "assert";
      v98 = 2081;
      v99 = "subfitCount <= Fit::kFitSegments - 2";
      _os_log_impl(&dword_19B41C000, v89, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
      }
    }

    v90 = qword_1ED71C818;
    if (os_signpost_enabled(qword_1ED71C818))
    {
      buf = 68289539;
      *buf_8 = 2082;
      *&buf_8[2] = "";
      v96 = 2082;
      v97 = "assert";
      v98 = 2081;
      v99 = "subfitCount <= Fit::kFitSegments - 2";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v90, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E286C0);
      }
    }

    v91 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      *buf_8 = 2082;
      *&buf_8[2] = "";
      v96 = 2082;
      v97 = "assert";
      v98 = 2081;
      v99 = "subfitCount <= Fit::kFitSegments - 2";
      _os_log_impl(&dword_19B41C000, v91, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    abort_report_np();
  }

  v11 = (v12 * 0.5) * 5.0;
  if (v15 == 1)
  {
    goto LABEL_11;
  }

  v18 = v8 + ((v12 * 0.5) * -10.0);
  *(a3 + 196) = v18;
  if (v15)
  {
LABEL_12:
    for (j = 0; j != v15; ++j)
    {
      v18 = v13 + v18;
      *(a3 + 200 + 4 * j) = v18;
    }

    if (v15 > 5)
    {
LABEL_17:
      v24 = *a1;
      v23 = *(a1 + 8);
      if (v23 == *a1)
      {
        v31 = *(a1 + 8);
      }

      else
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
        do
        {
          v26 = v25 >> 1;
          v27 = &v24[6 * (v25 >> 1)];
          v29 = *v27;
          v28 = v27 + 6;
          v25 += ~(v25 >> 1);
          if (v29 < (*(a3 + 196) - v11))
          {
            v24 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
        if (v23 == v24)
        {
          v31 = *(a1 + 8);
        }

        else
        {
          v30 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
          v31 = v24;
          do
          {
            v32 = v30 >> 1;
            v33 = (v31 + 24 * (v30 >> 1));
            v35 = *v33;
            v34 = v33 + 6;
            v30 += ~(v30 >> 1);
            if (v35 > (v11 + *(a3 + 200)))
            {
              v30 = v32;
            }

            else
            {
              v31 = v34;
            }
          }

          while (v30);
        }

        v23 = v24;
      }

      sub_19B73A8BC(v23, v31, 0, 0, &buf);
    }

    v20 = 0;
    v21 = v15 + 1;
    goto LABEL_16;
  }

  v21 = 1;
  v20 = 1;
LABEL_16:
  memset_pattern16((a3 + (4 * v21) + 196), &unk_19B7BD050, (24 - 4 * v21) + 4);
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v93)
  {
    v36 = 0;
    v37 = v92 + 4;
    v38 = (v92 + 228);
    v39 = vdup_n_s32(0x3C8EFA35u);
    v40 = vdup_n_s32(0x42652EE1u);
    while (1)
    {
      v41 = *(a1 + 8);
      if (v41 == *a1)
      {
        break;
      }

      v42 = (v36 * 4.0) + 2.0;
      v43 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *a1) >> 3);
      v44 = *a1;
      do
      {
        v45 = v43 >> 1;
        v46 = &v44[6 * (v43 >> 1)];
        v48 = *v46;
        v47 = v46 + 6;
        v43 += ~(v43 >> 1);
        if (v48 < (v42 + -2.0))
        {
          v44 = v47;
        }

        else
        {
          v43 = v45;
        }
      }

      while (v43);
      if (v41 == v44)
      {
        goto LABEL_50;
      }

      v49 = v42 + 2.0;
      v50 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v44) >> 3);
      v51 = v44;
      do
      {
        v52 = v50 >> 1;
        v53 = &v51[6 * (v50 >> 1)];
        v55 = *v53;
        v54 = v53 + 6;
        v50 += ~(v50 >> 1);
        if (v55 > v49)
        {
          v50 = v52;
        }

        else
        {
          v51 = v54;
        }
      }

      while (v50);
LABEL_51:
      v56 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v44) >> 3);
      if (v56 > 4)
      {
        v58 = 0;
        buf = 0;
        *buf_8 = 0;
        if (v44 == v51)
        {
          v61 = 0.0;
LABEL_68:
          v82 = 0;
          *v22.i32 = v56;
          buf = vdiv_f32(v58, vdup_lane_s32(v22, 0));
          *buf_8 = v61 / v56;
          v83 = v38;
          do
          {
            v84 = sqrtf(*sub_19B5BC0F0(&buf, v82)) * 100.0;
            if (v84 < 1.0)
            {
              v84 = 1.0;
            }

            *v83 = v84;
            v83 += 18;
            ++v82;
          }

          while (v82 != 3);
          goto LABEL_72;
        }

        v60 = *(v92 + 220);
        v59 = *(v92 + 224);
        v61 = 0.0;
        while (2)
        {
          v62 = 0;
          v63 = *v44;
          while (1)
          {
            v64 = *(v92 + 196 + 4 * v62);
            if ((v59 + v64) > v63)
            {
              break;
            }

            if (++v62 == 6)
            {
              v64 = v60;
              break;
            }
          }

          v65 = ((v63 - v64) / (v59 + v59)) + 0.5;
          if (v65 <= 0.0)
          {
            v74 = v37 + 24 * v62;
            v75 = *(v74 + 20);
            v76 = v63 * *(v74 + 8);
            v77 = *v74;
            v78 = *(v74 + 12);
          }

          else
          {
            if (v65 < 1.0)
            {
              v66 = v65 * (v65 * ((v65 * -2.0) + 3.0));
              v67 = v37 + 24 * v62;
              v68 = ((v63 * *(v67 + 8)) + *(v67 + 20)) * 0.017453;
              v69 = vmul_n_f32(*(v67 + 24), v63);
              v70 = (((v63 * *(v67 + 32)) + *(v67 + 44)) * 0.017453) - v68;
              v71 = vmul_f32(vadd_f32(vmul_n_f32(*v67, v63), *(v67 + 12)), v39);
              v72 = vadd_f32(v71, vmul_n_f32(vsub_f32(vmul_f32(vadd_f32(v69, *(v67 + 36)), v39), v71), v66));
              v73 = v68 + (v66 * v70);
              goto LABEL_65;
            }

            v79 = v37 + 24 * v62;
            v75 = *(v79 + 44);
            v76 = v63 * *(v79 + 32);
            v77 = *(v79 + 24);
            v78 = *(v79 + 36);
          }

          v72 = vmul_f32(vadd_f32(vmul_n_f32(v77, v63), v78), v39);
          v73 = (v76 + v75) * 0.017453;
LABEL_65:
          v80 = (v73 * 57.296) - v44[3];
          v81 = vsub_f32(vmul_f32(v72, v40), *(v44 + 1));
          v58 = vmla_f32(v58, v81, v81);
          buf = v58;
          v61 = v61 + (v80 * v80);
          *buf_8 = v61;
          v44 += 6;
          if (v44 == v51)
          {
            goto LABEL_68;
          }

          continue;
        }
      }

      v57 = sub_19B71BA58(*a1, v41, v36);
      *(v92 + 264 + v36) = v57;
      *(v92 + 246 + v36) = v57;
      *(v92 + 228 + v36) = v57;
LABEL_72:
      ++v36;
      ++v38;
      if (v36 == 18)
      {
        goto LABEL_76;
      }
    }

    v44 = *(a1 + 8);
LABEL_50:
    v51 = *(a1 + 8);
    goto LABEL_51;
  }

  v85 = (a3 + 228);
  for (k = 264; k != 282; ++k)
  {
    v87 = sub_19B71BA58(*a1, *(a1 + 8), k - 264);
    v85[36] = v87;
    v85[18] = v87;
    *v85++ = v87;
  }

LABEL_76:
  v88 = *MEMORY[0x1E69E9840];
}

void sub_19B71C7E8(uint64_t a1, uint64_t *a2, int a3, double a4)
{
  v6 = 0;
  __src = 0;
  v36 = 0;
  v37 = 0;
  v32 = a1 + 228;
  v7 = 86400.0;
  do
  {
    v8 = 0;
    v33 = v6;
    v9 = v32 + 18 * v6;
    do
    {
      v10 = __src;
      v36 = __src;
      v12 = *a2;
      v11 = a2[1];
      v13 = 7.0;
      if (*a2 != v11)
      {
        v14 = (v8 * 4.0) + 2.0;
        v15 = v14 + -2.0;
        v16 = v14 + 2.0;
        do
        {
          v7 = *v12;
          if (v15 <= *v12 && v7 < v16)
          {
            v7 = a4 - *(v12 + 16);
            v18 = fabsf(v7);
            if (v10 >= v37)
            {
              v19 = __src;
              v20 = v10 - __src;
              v21 = (v10 - __src) >> 2;
              v22 = v21 + 1;
              if ((v21 + 1) >> 62)
              {
                sub_19B5BE690();
              }

              v23 = v37 - __src;
              if ((v37 - __src) >> 1 > v22)
              {
                v22 = v23 >> 1;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v24 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                sub_19B4C4FA8(&__src, v24);
              }

              v25 = v21;
              v26 = (4 * v21);
              v27 = &v26[-v25];
              *v26 = v18;
              v10 = v26 + 1;
              memcpy(v27, v19, v20);
              v28 = __src;
              __src = v27;
              v36 = v10;
              v37 = 0;
              if (v28)
              {
                operator delete(v28);
              }
            }

            else
            {
              *v10++ = v18;
            }

            v36 = v10;
          }

          v12 += 24;
        }

        while (v12 != v11);
        if (v10 != __src)
        {
          if ((v10 - __src) > 8)
          {
            v29 = (__src + 8);
            if (__src + 8 != v10)
            {
              sub_19B66BBE4(__src, __src + 2, v10);
            }
          }

          else
          {
            v29 = v10 - 1;
          }

          v7 = *v29;
          v13 = *v29 / 86400.0;
        }
      }

      LOBYTE(v7) = *(v9 + v8);
      v30 = LODWORD(v7) * 0.01;
      if (a3)
      {
        if (v13 > 2.0 && v30 < 0.1)
        {
          v30 = 0.1;
        }
      }

      else
      {
        v31 = v13;
        if (v13 >= 6)
        {
          v31 = 6;
        }

        v30 = v30 + flt_19B7BCFAC[v31 & ~(v31 >> 31)];
      }

      if (v30 > 2.5)
      {
        v30 = 2.5;
      }

      v7 = v30 * 100.0;
      *(v9 + v8++) = v7;
    }

    while (v8 != 18);
    v6 = v33 + 1;
  }

  while (v33 != 2);
  if (__src)
  {
    v36 = __src;
    operator delete(__src);
  }
}

void sub_19B71CA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B71CAC8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 8) = v2;
  *(result + 20) = 1;
  return result;
}

void sub_19B71CAEC(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v223 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      goto LABEL_184;
    }

    if (v14 == 2)
    {
      v91 = *(a2 - 24);
      v90 = a2 - 24;
      if (v91 >= *v12)
      {
        goto LABEL_184;
      }

LABEL_107:
      v213 = *(v12 + 16);
      v184 = *v12;
      v96 = *v90;
      *(v12 + 16) = *(v90 + 16);
      *v12 = v96;
      v97 = v184;
      *(v90 + 16) = v213;
LABEL_108:
      *v90 = v97;
      goto LABEL_184;
    }

LABEL_10:
    if (v13 <= 575)
    {
      v102 = v12 + 24;
      v104 = v12 == a2 || v102 == a2;
      if (a4)
      {
        if (!v104)
        {
          v105 = 0;
          v106 = v12;
          do
          {
            v107 = v102;
            v108 = *(v106 + 24);
            if (v108 < *v106)
            {
              v186 = *(v106 + 28);
              v215 = *(v106 + 44);
              v109 = v105;
              while (1)
              {
                v110 = v12 + v109;
                *(v110 + 24) = *(v12 + v109);
                *(v110 + 40) = *(v12 + v109 + 16);
                if (!v109)
                {
                  break;
                }

                v109 -= 24;
                if (v108 >= *(v110 - 24))
                {
                  v111 = v12 + v109 + 24;
                  goto LABEL_127;
                }
              }

              v111 = v12;
LABEL_127:
              *v111 = v108;
              *(v111 + 20) = v215;
              *(v111 + 4) = v186;
            }

            v102 = v107 + 24;
            v105 += 24;
            v106 = v107;
          }

          while (v107 + 24 != a2);
        }
      }

      else if (!v104)
      {
        do
        {
          v146 = v102;
          v147 = *(a1 + 24);
          if (v147 < *a1)
          {
            v190 = *(a1 + 28);
            v219 = *(a1 + 44);
            v148 = v102;
            do
            {
              *v148 = *(v148 - 24);
              *(v148 + 16) = *(v148 - 8);
              v149 = *(v148 - 48);
              v148 -= 24;
            }

            while (v147 < v149);
            *v148 = v147;
            *(v148 + 20) = v219;
            *(v148 + 4) = v190;
          }

          v102 += 24;
          a1 = v146;
        }

        while (v146 + 24 != a2);
      }

      goto LABEL_184;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v112 = (v14 - 2) >> 1;
        v113 = v112;
        do
        {
          v114 = v113;
          if (v112 >= v113)
          {
            v115 = (2 * v113) | 1;
            v116 = v12 + 24 * v115;
            if (2 * v114 + 2 < v14 && *v116 < *(v116 + 24))
            {
              v116 += 24;
              v115 = 2 * v114 + 2;
            }

            v117 = v12 + 24 * v114;
            v118 = *v117;
            if (*v116 >= *v117)
            {
              v216 = *(v117 + 20);
              v187 = *(v117 + 4);
              do
              {
                v119 = v117;
                v117 = v116;
                v120 = *v116;
                *(v119 + 16) = *(v116 + 16);
                *v119 = v120;
                if (v112 < v115)
                {
                  break;
                }

                v121 = 2 * v115;
                v115 = (2 * v115) | 1;
                v116 = v12 + 24 * v115;
                v122 = v121 + 2;
                if (v122 < v14 && *v116 < *(v116 + 24))
                {
                  v116 += 24;
                  v115 = v122;
                }
              }

              while (*v116 >= v118);
              *v117 = v118;
              *(v117 + 20) = v216;
              *(v117 + 4) = v187;
            }
          }

          v113 = v114 - 1;
        }

        while (v114);
        v123 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v124 = 0;
          v217 = *(v12 + 16);
          v188 = *v12;
          v125 = v12;
          do
          {
            v126 = v125;
            v127 = v125 + 24 * v124;
            v125 = v127 + 24;
            v128 = 2 * v124;
            v124 = (2 * v124) | 1;
            v129 = v128 + 2;
            if (v129 < v123)
            {
              v131 = *(v127 + 48);
              v130 = v127 + 48;
              if (*(v130 - 24) < v131)
              {
                v125 = v130;
                v124 = v129;
              }
            }

            v132 = *v125;
            *(v126 + 16) = *(v125 + 16);
            *v126 = v132;
          }

          while (v124 <= ((v123 - 2) >> 1));
          a2 -= 24;
          if (v125 == a2)
          {
            *(v125 + 16) = v217;
            *v125 = v188;
          }

          else
          {
            v133 = *a2;
            *(v125 + 16) = *(a2 + 16);
            *v125 = v133;
            *(a2 + 16) = v217;
            *a2 = v188;
            v134 = v125 - v12 + 24;
            if (v134 >= 25)
            {
              v135 = (-2 - 0x5555555555555555 * (v134 >> 3)) >> 1;
              v136 = v12 + 24 * v135;
              v137 = *v125;
              if (*v136 < *v125)
              {
                v164 = *(v125 + 20);
                v161 = *(v125 + 4);
                do
                {
                  v138 = v125;
                  v125 = v136;
                  v139 = *v136;
                  *(v138 + 16) = *(v136 + 16);
                  *v138 = v139;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = v12 + 24 * v135;
                }

                while (*v136 < v137);
                *v125 = v137;
                *(v125 + 20) = v164;
                *(v125 + 4) = v161;
              }
            }
          }
        }

        while (v123-- > 2);
      }

      goto LABEL_184;
    }

    v15 = v14 >> 1;
    v16 = v12 + 24 * (v14 >> 1);
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v196 = *(v16 + 16);
          v167 = *v16;
          v22 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v196;
          *v9 = v167;
          if (*v16 < *v12)
          {
            v197 = *(v12 + 16);
            v168 = *v12;
            v23 = *v16;
            *(v12 + 16) = *(v16 + 16);
            *v12 = v23;
            *(v16 + 16) = v197;
            *v16 = v168;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v194 = *(v12 + 16);
          v165 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_27;
        }

        v200 = *(v12 + 16);
        v171 = *v12;
        v26 = *v16;
        *(v12 + 16) = *(v16 + 16);
        *v12 = v26;
        *(v16 + 16) = v200;
        *v16 = v171;
        if (*v9 < *v16)
        {
          v194 = *(v16 + 16);
          v165 = *v16;
          v27 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v27;
LABEL_27:
          *(a2 - 8) = v194;
          *v9 = v165;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v31 = *(v29 - 24);
      v30 = v29 - 24;
      v32 = v31;
      v33 = *v10;
      if (v31 >= *(v12 + 24))
      {
        if (v33 < v32)
        {
          v201 = *(v30 + 16);
          v172 = *v30;
          v37 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v201;
          *v10 = v172;
          if (*v30 < *v28)
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = *(v30 + 16);
            *v28 = *v30;
            *(v12 + 40) = v40;
            *(v30 + 16) = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_39;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = *(v30 + 16);
        *v28 = *v30;
        *(v12 + 40) = v45;
        *(v30 + 16) = v44;
        *v30 = v43;
        if (*v10 < *v30)
        {
          v203 = *(v30 + 16);
          v174 = *v30;
          v46 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v46;
          v34 = v174;
          *(a2 - 32) = v203;
LABEL_39:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v50 = *(v48 + 24);
      v49 = v48 + 24;
      v51 = v50;
      v52 = *v11;
      if (v50 >= *(v12 + 48))
      {
        if (v52 < v51)
        {
          v204 = *(v49 + 16);
          v175 = *v49;
          v56 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v204;
          *v11 = v175;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = *(v49 + 16);
            *v47 = *v49;
            *(v12 + 64) = v59;
            *(v49 + 16) = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_48;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = *(v49 + 16);
        *v47 = *v49;
        *(v12 + 64) = v62;
        *(v49 + 16) = v61;
        *v49 = v60;
        if (*v11 < *v49)
        {
          v205 = *(v49 + 16);
          v176 = *v49;
          v63 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v63;
          v53 = v176;
          *(a2 - 56) = v205;
LABEL_48:
          *v11 = v53;
        }
      }

      v64 = *v16;
      v65 = *v49;
      if (*v16 >= *v30)
      {
        if (v65 < v64)
        {
          v207 = *(v16 + 16);
          v178 = *v16;
          *v16 = *v49;
          *(v16 + 16) = *(v49 + 16);
          *(v49 + 16) = v207;
          *v49 = v178;
          if (*v16 < *v30)
          {
            v208 = *(v30 + 16);
            v179 = *v30;
            *v30 = *v16;
            *(v30 + 16) = *(v16 + 16);
            *(v16 + 16) = v208;
            *v16 = v179;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v206 = *(v30 + 16);
          v177 = *v30;
          *v30 = *v49;
          *(v30 + 16) = *(v49 + 16);
          goto LABEL_57;
        }

        v209 = *(v30 + 16);
        v180 = *v30;
        *v30 = *v16;
        *(v30 + 16) = *(v16 + 16);
        *(v16 + 16) = v209;
        *v16 = v180;
        if (*v49 < *v16)
        {
          v206 = *(v16 + 16);
          v177 = *v16;
          *v16 = *v49;
          *(v16 + 16) = *(v49 + 16);
LABEL_57:
          *(v49 + 16) = v206;
          *v49 = v177;
        }
      }

      v210 = *(v12 + 16);
      v181 = *v12;
      v66 = *v16;
      *(v12 + 16) = *(v16 + 16);
      *v12 = v66;
      *(v16 + 16) = v210;
      *v16 = v181;
      goto LABEL_59;
    }

    v20 = *v12;
    if (*v12 >= *v16)
    {
      if (v17 < v20)
      {
        v198 = *(v12 + 16);
        v169 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v198;
        *v9 = v169;
        if (*v12 < *v16)
        {
          v199 = *(v16 + 16);
          v170 = *v16;
          v25 = *v12;
          *(v16 + 16) = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v199;
          *v12 = v170;
        }
      }

      goto LABEL_59;
    }

    if (v17 >= v20)
    {
      v202 = *(v16 + 16);
      v173 = *v16;
      v41 = *v12;
      *(v16 + 16) = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v202;
      *v12 = v173;
      if (*v9 >= *v12)
      {
        goto LABEL_59;
      }

      v195 = *(v12 + 16);
      v166 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v195 = *(v16 + 16);
      v166 = *v16;
      v21 = *v9;
      *(v16 + 16) = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v195;
    *v9 = v166;
LABEL_59:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v68 = 0;
      v162 = *(v12 + 20);
      v159 = *(v12 + 4);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v67);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v211 = *(v12 + 16);
          v182 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v211;
          *v74 = v182;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v67);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      *(v12 - 4) = v162;
      *(v12 - 20) = v159;
      if (v70 < v71)
      {
        goto LABEL_80;
      }

      v79 = sub_19B71DD40(a1, v12 - 24, v159);
      if (sub_19B71DD40(v12, a2, v80))
      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_2;
        }

        goto LABEL_184;
      }

      if (!v79)
      {
LABEL_80:
        sub_19B71CAEC(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v163 = *(v12 + 20);
      v160 = *(v12 + 4);
      if (v67 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v212 = *(v12 + 16);
        v183 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v212;
        *v83 = v183;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      a5 = v160;
      *(v12 - 4) = v163;
      *(v12 - 20) = v160;
    }
  }

  if (v14 == 3)
  {
    v92 = v12 + 24;
    v93 = *(v12 + 24);
    v94 = *(a2 - 24);
    v90 = a2 - 24;
    v95 = v94;
    if (v93 < *v12)
    {
      if (v95 < v93)
      {
        goto LABEL_107;
      }

      v220 = *(v12 + 16);
      v191 = *v12;
      *v12 = *v92;
      *(v12 + 16) = *(v12 + 40);
      *v92 = v191;
      *(v12 + 40) = v220;
      if (*v90 < *(v12 + 24))
      {
        v97 = *v92;
        v150 = *(v12 + 40);
        v151 = *(v90 + 16);
        *v92 = *v90;
        *(v12 + 40) = v151;
        *(v90 + 16) = v150;
        goto LABEL_108;
      }

LABEL_184:
      v158 = *MEMORY[0x1E69E9840];
      return;
    }

    if (v95 >= v93)
    {
      goto LABEL_184;
    }

    v141 = *v92;
    v142 = *(v12 + 40);
    v143 = *(v90 + 16);
    *v92 = *v90;
    *(v12 + 40) = v143;
    *(v90 + 16) = v142;
    *v90 = v141;
LABEL_182:
    if (*(v12 + 24) < *v12)
    {
      v222 = *(v12 + 16);
      v193 = *v12;
      *v12 = *v92;
      *(v12 + 16) = *(v92 + 16);
      *v92 = v193;
      *(v92 + 16) = v222;
    }

    goto LABEL_184;
  }

  if (v14 == 4)
  {
    v92 = v12 + 24;
    v98 = *(v12 + 24);
    v99 = (v12 + 48);
    v100 = *(v12 + 48);
    if (v98 >= *v12)
    {
      if (v100 < v98)
      {
        v144 = *(v12 + 40);
        v145 = *v92;
        *v92 = *v99;
        *(v12 + 40) = *(v12 + 64);
        *v99 = v145;
        *(v12 + 64) = v144;
        if (*(v12 + 24) < *v12)
        {
          v218 = *(v12 + 16);
          v189 = *v12;
          *v12 = *v92;
          *(v12 + 16) = *(v12 + 40);
          *v92 = v189;
          *(v12 + 40) = v218;
        }
      }

      goto LABEL_179;
    }

    if (v100 >= v98)
    {
      v221 = *(v12 + 16);
      v192 = *v12;
      *v12 = *v92;
      *(v12 + 16) = *(v12 + 40);
      *v92 = v192;
      *(v12 + 40) = v221;
      if (v100 >= *(v12 + 24))
      {
        goto LABEL_179;
      }

      v101 = *(v12 + 40);
      v152 = *v92;
      *v92 = *v99;
      *(v12 + 40) = *(v12 + 64);
      *v99 = v152;
    }

    else
    {
      v214 = *(v12 + 16);
      v185 = *v12;
      *v12 = *v99;
      *(v12 + 16) = *(v12 + 64);
      *v99 = v185;
      v101 = v214;
    }

    *(v12 + 64) = v101;
LABEL_179:
    if (*v9 >= *v99)
    {
      goto LABEL_184;
    }

    v153 = *v99;
    v154 = *(v12 + 64);
    v155 = *(a2 - 8);
    *v99 = *v9;
    *(v12 + 64) = v155;
    *(a2 - 8) = v154;
    *v9 = v153;
    if (*v99 >= *v92)
    {
      goto LABEL_184;
    }

    v156 = *(v12 + 40);
    v157 = *v92;
    *v92 = *v99;
    *(v12 + 40) = *(v12 + 64);
    *v99 = v157;
    *(v12 + 64) = v156;
    goto LABEL_182;
  }

  if (v14 != 5)
  {
    goto LABEL_10;
  }

  v89 = *MEMORY[0x1E69E9840];

  sub_19B71DAF8(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), a5);
}

__n128 sub_19B71DAF8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[0];
  v7 = a3->n128_f32[0];
  if (a2->n128_f32[0] >= a1->n128_f32[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_f32[0] < a1->n128_f32[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_f32[0] < a2->n128_f32[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[0] < a3->n128_f32[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f32[0] < a2->n128_f32[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f32[0] < a1->n128_f32[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[0];
  if (a5->n128_f32[0] < a4->n128_f32[0])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    result.n128_u32[0] = a4->n128_u32[0];
    if (a4->n128_f32[0] < a3->n128_f32[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u32[0] = a3->n128_u32[0];
      if (a3->n128_f32[0] < a2->n128_f32[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u32[0] = a2->n128_u32[0];
        if (a2->n128_f32[0] < a1->n128_f32[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_19B71DD40(uint64_t a1, uint64_t a2, __n128 a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f32[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          goto LABEL_50;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        goto LABEL_50;
      }

      if (v9 >= v7)
      {
        goto LABEL_50;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      goto LABEL_50;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_19B71DAF8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
LABEL_50:
      result = 1;
      goto LABEL_51;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f32[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f32[0])
    {
      goto LABEL_50;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f32[0] >= v6->n128_f32[0])
    {
      goto LABEL_50;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    goto LABEL_50;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      goto LABEL_50;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f32[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    goto LABEL_50;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f32[0])
    {
      v65 = *(v47 + 4);
      v66 = *(v47 + 20);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 4) = v65;
      *(v53 + 20) = v66;
      if (++v49 == 8)
      {
        break;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      goto LABEL_50;
    }
  }

  result = v47 + 24 == a2;
LABEL_51:
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B71E7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B71E7C4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B71E888(uint64_t a1, uint64_t a2)
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B71FCD8;
  v4[3] = &unk_1E7532988;
  v4[4] = a2;
  sub_19B421668(v3, v4);
}

void sub_19B71E9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B71ED74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B71EE18(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_userInfo(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"CMSetDeviceOrientationTypeKey");
  v9 = objc_msgSend_intValue(v6, v7, v8);
  if (v9 >= 7)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v10 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = v9;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "The orientation %{public}d is not in bounds", buf, 8u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceOrientationManager onNotification:]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v20 = 0;
  *buf = CFAbsoluteTimeGetCurrent();
  LODWORD(v20) = v9;
  v14 = objc_msgSend_objectForKey_(v4, v13, @"CMPersistOrientationCallbackModeKey");
  if (!v14 || objc_msgSend_BOOLValue(v14, v15, v16))
  {
    objc_msgSend_setDeviceOrientationCallbackModePrivate_(*(a1 + 40), v15, v9);
  }

  result = objc_msgSend_onDeviceOrientation_(*(a1 + 40), v15, buf);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_19B71F504(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v4 = *(a1 + 32) + 64;

    return objc_msgSend_onDeviceOrientation_(result, v3, v4);
  }

  return result;
}

void sub_19B71F5C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B71FC2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 40) = *(v1 + 40);
    v2 = *(*(*(a1 + 40) + 8) + 40);
    if (v2)
    {
      dispatch_retain(v2);
    }
  }
}

os_log_t sub_19B71FCA8()
{
  result = os_log_create("com.apple.locationd.Motion", "Orientation");
  off_1ED71C7C0 = result;
  return result;
}

uint64_t sub_19B71FCE0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 255:
      return 0;
    case 2:
      (*(*a2 + 24))(a2, a1);
      break;
    case 1:
      (*(*a2 + 16))(a2, a1);
      break;
  }

  return 1;
}

void *sub_19B71FD80(void *a1)
{
  *a1 = &unk_1F0E339E8;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B71FE04(void *a1)
{
  sub_19B71FD80(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B71FE3C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, float32x4_t a4@<Q0>)
{
  v27 = *MEMORY[0x1E69E9840];
  v16[0] = 0uLL;
  v15 = 0xBFF0000000000000;
  sub_19B41E130(v16, a4);
  v17 = 0;
  memset(&v16[1], 0, 32);
  v18 = xmmword_19B7BA300;
  v19 = 0x1FF00000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a2 <= 18)
  {
    if (a2 > 6)
    {
      if (a2 == 7 || a2 == 15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (a2 == 2)
      {
        if ((sub_19B421620() & 0x100) != 0)
        {
          v7 = *(a1 + 56);
          if (!v7)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v7 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_12;
      }

      if (a2 == 3)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (a2 > 66)
    {
      if (a2 != 67)
      {
        if (a2 != 143)
        {
          if (a2 == 259)
          {
            v7 = *(a1 + 80);
            if (!v7)
            {
              goto LABEL_13;
            }

            goto LABEL_12;
          }

          goto LABEL_27;
        }

LABEL_16:
        v8 = *(a1 + 72);
        if (v8)
        {
          (*(*v8 + 32))(v8, &v15);
        }

        goto LABEL_38;
      }

LABEL_11:
      v7 = *(a1 + 64);
      if (!v7)
      {
LABEL_13:
        sub_19B4204F0(a3, &v15);
        goto LABEL_42;
      }

LABEL_12:
      (*(*v7 + 32))(v7, &v15);
      goto LABEL_13;
    }

    if (a2 == 19)
    {
      v7 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (a2 == 34)
    {
      v7 = *(a1 + 48);
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_27:
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v9 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v26 = a2;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Device motion mode (%{public}d) not supported, unable to get device motion", buf, 8u);
  }

  v10 = sub_19B420058();
  if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v23 = 67240192;
    v24 = a2;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "CLDeviceMotion::Sample CLDeviceMotion::getLastSample(const CLMotionTypeDeviceMotionMode)", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

LABEL_38:
  sub_19B4204F0(a3, &v15);
  if (a2 == 143)
  {
    v12 = *(a1 + 96);
    if (v12 >= 0.0)
    {
      v13 = *(a1 + 104);
      sub_19B688CC8(a3 + 8, v13, v12);
    }

    else
    {
      *(a3 + 96) = 1127481344;
    }
  }

LABEL_42:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B7201A0(void *a1, int a2, _OWORD *a3, int *a4, float32x2_t *a5, float32x4_t a6)
{
  v9 = *a6.i64;
  v41 = *MEMORY[0x1E69E9840];
  v24[0] = 0uLL;
  v23 = 0xBFF0000000000000;
  sub_19B41E130(v24, a6);
  v25 = 0;
  memset(&v24[1], 0, 32);
  v26 = xmmword_19B7BA300;
  v27 = 0x1FF00000000;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (a2 > 18)
  {
    if (a2 <= 66)
    {
      if (a2 == 19)
      {
        v12 = a1[4];
        if (!v12)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (a2 != 34)
      {
        goto LABEL_41;
      }

      v12 = a1[6];
      if (!v12)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (a2 == 67)
      {
LABEL_24:
        v12 = a1[8];
        if (!v12)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (a2 == 143)
      {
LABEL_13:
        v12 = a1[9];
        if (!v12)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (a2 != 259)
      {
        goto LABEL_41;
      }

      v12 = a1[10];
      if (!v12)
      {
        goto LABEL_41;
      }
    }

LABEL_40:
    (*(*v12 + 32))(v12, &v23);
    *a5 = v23;
    sub_19B6CB088(&v23, a4, v9);
    goto LABEL_41;
  }

  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 7 && a2 != 15)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    goto LABEL_24;
  }

  if (a2)
  {
    if (a2 != 2)
    {
      goto LABEL_41;
    }

    if ((sub_19B421620() & 0x100) != 0)
    {
      v12 = a1[7];
      if (!v12)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v12 = a1[5];
      if (!v12)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_40;
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v13 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    *&buf[4] = 0;
    _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Device motion mode (%{public}d) not supported, unable to get predicted device motion", buf, 8u);
  }

  v14 = sub_19B420058();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v31 = 67240192;
    v32 = 0;
    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLDeviceMotion::getPredictedSample(const CLMotionTypeDeviceMotionMode, const CFTimeInterval, CLDeviceMotion::Sample &, CMError &, CFTimeInterval &)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

LABEL_41:
  sub_19B4204F0(buf, &v23);
  v16 = v38;
  v17 = v39;
  v18 = v36;
  a3[4] = v37;
  a3[5] = v16;
  v19 = v40;
  a3[6] = v17;
  a3[7] = v19;
  v20 = v34;
  v21 = v35;
  *a3 = *buf;
  a3[1] = v20;
  a3[2] = v21;
  a3[3] = v18;
  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B7204FC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    *(a4 + 104) = *(a3 + 40);
    *(a4 + 96) = *(a3 + 56);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      v7 = *(a4 + 96);
      v6 = *(a4 + 104);
      *buf = 134218240;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Received geomagnetic model, declination,%f,timestamp,%f", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v11 = *(a4 + 104);
      v12 = *(a4 + 96);
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLDeviceMotion::onGeomagneticModelNotification(int, const CLGeomagneticModelProvider_Type::Notification &, const CLGeomagneticModelProvider_Type::NotificationData &, void *)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B7206F8(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = sub_19B43CCBC(a1, 0);
  *(v2 + 200) = 263;
  *(v2 + 202) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *v2 = &unk_1F0E31F98;
  if ((sub_19B421620() & 0x100) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion3Service";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Device motion service 3 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v6 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion3Service";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Device motion service 3 is not supported on this platform!", "{msg%{public}.0s:Device motion service 3 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion3Service";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Device motion service 3 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B7209B8(void *a1)
{
  sub_19B65C88C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B7209F4(void *a1)
{
  sub_19B65C88C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B720A30(void *a1)
{
  sub_19B65C88C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B720A68(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = sub_19B43CCBC(a1, 11);
  *(v2 + 200) = 26;
  *(v2 + 202) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *v2 = &unk_1F0E3B2B0;
  if ((sub_19B421620() & 0x40) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion6AlwaysOnService";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Device motion 6 always on service is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v6 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion6AlwaysOnService";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Device motion 6 always on service is not supported on this platform!", "{msg%{public}.0s:Device motion 6 always on service is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion6AlwaysOnService";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Device motion 6 always on service is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B720D28(void *a1)
{
  sub_19B65C88C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t *sub_19B720D60(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 + 40;
  (*(*v3 + 16))(v3);
  v5 = *(v2 + 2208);
  if (v5)
  {
    v6 = *(v2 + 2200);
    if (v6)
    {
      fwrite((v2 + 152), 1uLL, v6, v5);
    }

    *(v2 + 2200) = 0;
    sub_19B7217BC(v2, v4, v6);
  }

  (*(*v3 + 24))(v3);
  return a1;
}

uint64_t sub_19B720E40()
{
  if (qword_1ED71D5F8 != -1)
  {
    dispatch_once(&qword_1ED71D5F8, &unk_1F0E29FE0);
  }

  return qword_1ED71D5E0;
}

void sub_19B720E88()
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7F8 != -1)
  {
    dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
  }

  v0 = qword_1ED71C7F0;
  if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEBUG, "creating the BinaryLog instance", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLBinaryLog::create()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  operator new();
}

void sub_19B72170C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_19B740058(v18);
  MEMORY[0x19EAE76F0](v18, v19);
  _Unwind_Resume(a1);
}

void sub_19B721784(void *a1)
{
  sub_19B740058(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B7217BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 48) + 64), a2, a3);
  v4 = *(*(a1 + 48) + 80);
  if (v4 != pthread_self())
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3B308);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "(fMutex).__assertOwned()";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3B308);
      }
    }

    v8 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "(fMutex).__assertOwned()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3B308);
      }
    }

    v9 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "(fMutex).__assertOwned()";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  result = fclose(*(a1 + 2208));
  *(a1 + 2208) = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B721A48(char *a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v23 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 6) + 64), a2, a3);
  v4 = *(*(v3 + 6) + 80);
  if (v4 != pthread_self())
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3B308);
    }

    v15 = off_1ED71C828;
    p_vtable = "sE";
    v5 = "assert";
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "(fMutex).__assertOwned()";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3B308);
      }
    }

    v16 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "(fMutex).__assertOwned()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3B308);
      }
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "(fMutex).__assertOwned()";
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_32;
  }

  v5 = (v3 + 128);
  v6 = v3 + 128;
  if (v3[151] < 0)
  {
    v6 = *v5;
  }

  v7 = fopen(v6, "ab");
  *(v3 + 276) = v7;
  if (!v7)
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C7F8 == -1)
    {
LABEL_6:
      v9 = qword_1ED71C7F0;
      if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v5;
        if (v3[151] < 0)
        {
          v10 = *v5;
        }

        *buf = 136315138;
        *v18 = v10;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Unable to open %s", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_vtable[255] != -1)
        {
          dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
        }

        if (v3[151] < 0)
        {
          v12 = *v5;
        }

        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLBinaryLog::open()", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      goto LABEL_20;
    }

LABEL_32:
    dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
    goto LABEL_6;
  }

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B721E6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(a1 + 112))
  {
    goto LABEL_7;
  }

  v3 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v3 = *v3;
  }

  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v4;
  }

  if (sub_19B5E3A40(v3, v4))
  {
LABEL_7:
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    unlink(v5);
  }

  v6 = *(a1 + 112);
  if (v6 >= 1)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v7 = (a1 + 88);
    v8 = *(a1 + 111);
    v9 = a1 + 88;
    if (v8 < 0)
    {
      v9 = *v7;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = sub_19B721FF0;
    v10[3] = &unk_1F0E2A7F8;
    v10[5] = v2;
    if (v8 < 0)
    {
      sub_19B4C5138(__p, *(a1 + 88), *(a1 + 96));
      v6 = *(a1 + 112);
    }

    else
    {
      *__p = *v7;
      v12 = *(a1 + 104);
    }

    v10[4] = v14;
    v13 = v6;
    sub_19B6A2184(v9, v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    _Block_object_dispose(v14, 8);
  }
}

uint64_t sub_19B721FF0(uint64_t a1, char *a2)
{
  v4 = *(a1 + 40);
  if (*(a1 + 71) >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = &v24;
  sub_19B50FF5C(&v24, v5 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v24.__r_.__value_.__r.__words[0];
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

  *(&v6->__r_.__value_.__l.__data_ + v5) = 47;
  v8 = strlen(a2);
  v9 = std::string::append(&v24, a2, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v26 = v9->__r_.__value_.__r.__words[2];
  v25 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  sub_19B428B50(&v24, a2);
  if (*(v4 + 103) < 0)
  {
    sub_19B4C5138(&__dst, *(v4 + 80), *(v4 + 88));
  }

  else
  {
    __dst = *(v4 + 80);
  }

  v11 = std::string::append(&__dst, "_", 1uLL);
  v23 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (sub_19B740A40(v4, &v24.__r_.__value_.__l.__data_, &v23))
  {
    sub_19B428B50(v20, a2);
    if (*(v4 + 127) < 0)
    {
      sub_19B4C5138(&v18, *(v4 + 104), *(v4 + 112));
    }

    else
    {
      v18 = *(v4 + 104);
    }

    v13 = std::string::append(&v18, ".bz2", 4uLL);
    v19 = *v13;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (sub_19B740B0C(v4, v20, &v19))
    {
      v12 = 1;
    }

    else
    {
      sub_19B428B50(__p, a2);
      v12 = sub_19B740B0C(v4, __p, (v4 + 104));
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    v12 = 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
    if (!v12)
    {
      goto LABEL_45;
    }
  }

  else if (!v12)
  {
    goto LABEL_45;
  }

  if (++*(*(*(a1 + 32) + 8) + 24) > *(a1 + 72))
  {
    v14 = v26 >= 0 ? &v25 : v25;
    if (unlink(v14))
    {
      syslog(5, "%s,%s,Failed to delete log: %s", "NOTICE", "CLLog", v14);
    }
  }

LABEL_45:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  return 1;
}

void sub_19B7222F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B7223B8(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    return sub_19B4C5138(result + 48, *(a2 + 48), *(a2 + 56));
  }

  v2 = *(a2 + 48);
  *(result + 8) = *(a2 + 64);
  *(result + 3) = v2;
  return result;
}

void sub_19B7223E4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t sub_19B7223F8(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  v66 = a1 + 40;
  (*(v4 + 16))(a1 + 40);
  v67 = 256;
  if (v5[2192] == 1)
  {
    if (*(a1 + 2208) || (sub_19B721A48(a1, v6, v7), *(a1 + 2208)))
    {
      v65 = 0;
      v8 = *(a1 + 2200);
      v9 = (*(*a2 + 40))(a2);
      v10 = *(a1 + 2200);
      if (v9 + v8 >= 2048)
      {
        fwrite((a1 + 152), 1uLL, v10, *(a1 + 2208));
        v73 = v5;
        (*(*v5 + 16))(v5);
        v74 = 256;
        v11 = MEMORY[0x19EAE7D90](*(a1 + 2208));
        if (ferror(*(a1 + 2208)))
        {
          if (qword_1ED71C7F8 != -1)
          {
            dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
          }

          v14 = qword_1ED71C7F0;
          if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_FAULT))
          {
            v15 = *__error();
            v16 = __error();
            v17 = strerror(*v16);
            buf[0].st_dev = 67240450;
            *&buf[0].st_mode = v15;
            LOWORD(buf[0].st_ino) = 2082;
            *(&buf[0].st_ino + 2) = v17;
            _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed to determine if log rotation is needed. errno, %{public}d, %{public}s", buf, 0x12u);
          }

          v18 = sub_19B420058();
          if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7F8 != -1)
            {
              dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
            }

            v19 = *__error();
            v20 = __error();
            v21 = strerror(*v20);
            v75 = 67240450;
            *v76 = v19;
            *&v76[4] = 2082;
            *&v76[6] = v21;
            v22 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLBinaryLog::rotateIfNeeded(const double &)", "CoreLocation: %s\n", v22);
            if (v22 != buf)
            {
              free(v22);
            }
          }

          clearerr(*(a1 + 2208));
        }

        else
        {
          v25 = *(a1 + 12);
          if (v25 >= 1 && v11 > v25)
          {
            v26 = sub_19B740A34(a1, v12, v13);
            if (*(a1 + 79) >= 0)
            {
              v27 = *(a1 + 79);
            }

            else
            {
              v27 = *(a1 + 64);
            }

            v28 = v71;
            sub_19B50FF5C(v71, v27 + 4);
            if (v72 < 0)
            {
              v28 = v71[0];
            }

            if (v27)
            {
              if (*(a1 + 79) >= 0)
              {
                v29 = (a1 + 56);
              }

              else
              {
                v29 = *(a1 + 56);
              }

              memmove(v28, v29, v27);
            }

            strcpy(v28 + v27, "logs");
            sub_19B7405F4(v71, a1 + 80, a1 + 104, v26, &v70);
            if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v70.__r_.__value_.__l.__size_;
            }

            v31 = __p;
            sub_19B50FF5C(__p, size + 4);
            if (v69 < 0)
            {
              v31 = __p[0];
            }

            if (size)
            {
              if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v32 = &v70;
              }

              else
              {
                v32 = v70.__r_.__value_.__r.__words[0];
              }

              memmove(v31, v32, size);
            }

            strcpy(v31 + size, ".bz2");
            if (v72 >= 0)
            {
              v33 = v71;
            }

            else
            {
              v33 = v71[0];
            }

            if (stat(v33, buf))
            {
              if (v72 >= 0)
              {
                v36 = HIBYTE(v72);
              }

              else
              {
                v36 = v71[1];
              }

              v37 = buf;
              sub_19B50FF5C(buf, v36 + 1);
              if ((buf[0].st_gid & 0x80000000) != 0)
              {
                v37 = *&buf[0].st_dev;
              }

              if (v36)
              {
                if (v72 >= 0)
                {
                  v38 = v71;
                }

                else
                {
                  v38 = v71[0];
                }

                memmove(v37, v38, v36);
              }

              *(&v37->st_dev + v36) = 47;
              if ((buf[0].st_gid & 0x80000000) == 0)
              {
                v39 = buf;
              }

              else
              {
                v39 = *&buf[0].st_dev;
              }

              v40 = getuid();
              v41 = getgid();
              sub_19B5E3290(v39, v40, v41);
              if (SHIBYTE(buf[0].st_gid) < 0)
              {
                operator delete(*&buf[0].st_dev);
              }
            }

            sub_19B7217BC(a1, v34, v35);
            v43 = (a1 + 128);
            v44 = (a1 + 128);
            if (*(a1 + 151) < 0)
            {
              v44 = *v43;
            }

            if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v45 = &v70;
            }

            else
            {
              v45 = v70.__r_.__value_.__r.__words[0];
            }

            rename(v44, v45, v42);
            if (v48)
            {
              if (qword_1ED71C7F8 != -1)
              {
                dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
              }

              v49 = qword_1ED71C7F0;
              if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_DEFAULT))
              {
                v50 = (a1 + 128);
                if (*(a1 + 151) < 0)
                {
                  v50 = *v43;
                }

                v51 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
                v52 = v70.__r_.__value_.__r.__words[0];
                v53 = __error();
                v54 = &v70;
                if (v51 < 0)
                {
                  v54 = v52;
                }

                v55 = *v53;
                buf[0].st_dev = 136315650;
                *&buf[0].st_mode = v50;
                WORD2(buf[0].st_ino) = 2080;
                *(&buf[0].st_ino + 6) = v54;
                HIWORD(buf[0].st_gid) = 1024;
                buf[0].st_rdev = v55;
                _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEFAULT, "#Warning Failed to move aside log file %s to %s (%d)", buf, 0x1Cu);
              }

              v56 = sub_19B420058();
              if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C7F8 != -1)
                {
                  dispatch_once(&qword_1ED71C7F8, &unk_1F0E283C0);
                }

                if (*(a1 + 151) < 0)
                {
                  v43 = *v43;
                }

                v57 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
                v58 = v70.__r_.__value_.__r.__words[0];
                v59 = __error();
                v60 = &v70;
                if (v57 < 0)
                {
                  v60 = v58;
                }

                v61 = *v59;
                v75 = 136315650;
                *v76 = v43;
                *&v76[8] = 2080;
                *&v76[10] = v60;
                v77 = 1024;
                v78 = v61;
                v62 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "void CLBinaryLog::rotateIfNeeded(const double &)", "CoreLocation: %s\n", v62);
                if (v62 != buf)
                {
                  free(v62);
                }
              }
            }

            sub_19B721A48(a1, v46, v47);
            *(a1 + 2216) = 0;
            v63 = *(a1 + 16);
            v64 = *(a1 + 2224);
            *&buf[0].st_dev = MEMORY[0x1E69E9820];
            buf[0].st_ino = 3321888768;
            *&buf[0].st_uid = sub_19B721E6C;
            *&buf[0].st_rdev = &unk_1F0E2A8C8;
            buf[0].st_atimespec.tv_sec = a1;
            buf[0].st_blksize = v63;
            if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_19B4C5138(&buf[0].st_atimespec.tv_nsec, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
            }

            else
            {
              *&buf[0].st_atimespec.tv_nsec = v70;
            }

            if (SHIBYTE(v69) < 0)
            {
              sub_19B4C5138(&buf[0].st_ctimespec, __p[0], __p[1]);
            }

            else
            {
              buf[0].st_ctimespec = *__p;
              buf[0].st_birthtimespec.tv_sec = v69;
            }

            if (SHIBYTE(v72) < 0)
            {
              sub_19B4C5138(&buf[0].st_birthtimespec.tv_nsec, v71[0], v71[1]);
            }

            else
            {
              *&buf[0].st_birthtimespec.tv_nsec = *v71;
              buf[0].st_blocks = v72;
            }

            dispatch_async(v64, buf);
            if (SHIBYTE(buf[0].st_blocks) < 0)
            {
              operator delete(buf[0].st_birthtimespec.tv_nsec);
            }

            if (SHIBYTE(buf[0].st_birthtimespec.tv_sec) < 0)
            {
              operator delete(buf[0].st_ctimespec.tv_sec);
            }

            if (SHIBYTE(buf[0].st_mtimespec.tv_nsec) < 0)
            {
              operator delete(buf[0].st_atimespec.tv_nsec);
            }

            if (SHIBYTE(v69) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v70.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v72) < 0)
            {
              operator delete(v71[0]);
            }
          }
        }

        (*(*v5 + 24))(v5);
        v10 = 0;
        *(a1 + 2200) = 0;
      }

      if ((*(*a2 + 16))(a2, a1 + v10 + 152, 2048, &v65))
      {
        *(a1 + 2200) += v65;
      }
    }
  }

  result = (*(*v5 + 24))(v5);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B722D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_19B5C6074(&a33);
  sub_19B5C6074(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_19B722E04(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_assertInside(*(*(a1 + 48) + 64), a2, a3);
  pthread_self();
  sub_19B432FD8(*(a1 + 24), "LogFileRotationSizeBinary", (a1 + 12));
  v4 = *(a1 + 24);

  return sub_19B432FD8(v4, "LogFileStorageCountBinary", (a1 + 16));
}

uint64_t sub_19B722E70(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v33 = a1 + 40;
  (*(v2 + 16))(a1 + 40);
  v34 = 256;
  v7 = sub_19B740A34(a1, v4, v5);
  v8 = *(a1 + 2208);
  if (v8)
  {
    v9 = *(a1 + 2200);
    if (v9 >= 1)
    {
      if (!fwrite((a1 + 152), 1uLL, v9, v8))
      {
        syslog(5, "%s,%s,Failed to write CLBinaryLog Buffer to disk\n", "NOTICE", "CLLog");
      }

      *(a1 + 2200) = 0;
    }

    sub_19B7217BC(a1, v6, v9);
  }

  v10 = (a1 + 128);
  v11 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v11 = *v10;
  }

  if (!stat(v11, &v35))
  {
    sub_19B740890(a1, a1 + 80, v7, &v35);
    v15 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v15 = *v10;
    }

    if ((v35.st_gid & 0x80000000) == 0)
    {
      v16 = &v35;
    }

    else
    {
      v16 = *&v35.st_dev;
    }

    rename(v15, v16, v14);
    if (v17)
    {
      if (*(a1 + 151) < 0)
      {
        v10 = *v10;
      }

      st_gid_high = SHIBYTE(v35.st_gid);
      v19 = *&v35.st_dev;
      v20 = __error();
      v21 = &v35;
      if (st_gid_high < 0)
      {
        v21 = v19;
      }

      syslog(5, "%s,%s,Failed to move file %s to %s (%d)\n", "NOTICE", "CLLog", v10, v21, *v20);
    }

    if (SHIBYTE(v35.st_gid) < 0)
    {
      operator delete(*&v35.st_dev);
    }
  }

  sub_19B721A48(a1, v12, v13);
  *(a1 + 2216) = 0;
  if (*(a1 + 79) >= 0)
  {
    v22 = *(a1 + 79);
  }

  else
  {
    v22 = *(a1 + 64);
  }

  v23 = __src;
  sub_19B50FF5C(__src, v22 + 4);
  if (v32 < 0)
  {
    v23 = __src[0];
  }

  if (v22)
  {
    if (*(a1 + 79) >= 0)
    {
      v24 = (a1 + 56);
    }

    else
    {
      v24 = *(a1 + 56);
    }

    memmove(v23, v24, v22);
  }

  strcpy(v23 + v22, "logs");
  if (v32 >= 0)
  {
    v25 = __src;
  }

  else
  {
    v25 = __src[0];
  }

  if (!stat(v25, &v35))
  {
    v26 = v32 >= 0 ? __src : __src[0];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3321888768;
    v28[2] = sub_19B7231D8;
    v28[3] = &unk_1F0E2A860;
    v28[4] = a1;
    if (SHIBYTE(v32) < 0)
    {
      sub_19B4C5138(&__p, __src[0], __src[1]);
    }

    else
    {
      __p = *__src;
      v30 = v32;
    }

    sub_19B6A2184(v26, v28);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__src[0]);
  }

  return (*(*v3 + 24))(v3);
}

void sub_19B723174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_19B5C6074(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_19B7231D8(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 63) >= 0)
  {
    v5 = *(a1 + 63);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = &v37;
  sub_19B50FF5C(&v37, v5 + 1);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v37.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(a1 + 40);
    v8 = (a1 + 40);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(v6, v10, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 47;
  v11 = strlen(a2);
  v12 = std::string::append(&v37, a2, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v39 = v12->__r_.__value_.__r.__words[2];
  v38 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  sub_19B740144(&v35);
  v14 = std::string::append(&v35, "/", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = strlen(a2);
  v17 = std::string::append(&v36, a2, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  sub_19B428B50(&v36, a2);
  if (*(v4 + 103) < 0)
  {
    sub_19B4C5138(&__dst, *(v4 + 80), *(v4 + 88));
  }

  else
  {
    __dst = *(v4 + 80);
  }

  v19 = std::string::append(&__dst, "_", 1uLL);
  v35 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (sub_19B740A40(v4, &v36.__r_.__value_.__l.__data_, &v35))
  {
    sub_19B428B50(v32, a2);
    if (*(v4 + 127) < 0)
    {
      sub_19B4C5138(&v30, *(v4 + 104), *(v4 + 112));
    }

    else
    {
      v30 = *(v4 + 104);
    }

    v22 = std::string::append(&v30, ".bz2", 4uLL);
    v31 = *v22;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (sub_19B740B0C(v4, v32, &v31))
    {
      v21 = 1;
    }

    else
    {
      sub_19B428B50(__p, a2);
      v21 = sub_19B740B0C(v4, __p, (v4 + 104));
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }
  }

  else
  {
    v21 = 0;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else if (!v21)
  {
    goto LABEL_51;
  }

  if (v39 >= 0)
  {
    v23 = &v38;
  }

  else
  {
    v23 = v38;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v37;
  }

  else
  {
    v24 = v37.__r_.__value_.__r.__words[0];
  }

  rename(v23, v24, v20);
  if (v25)
  {
    v26 = __error();
    syslog(5, "%s,%s,Failed to move file %s to %s (%d)\n", "NOTICE", "CLLog", v23, v24, *v26);
  }

LABEL_51:
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  return 1;
}

void sub_19B723564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v48 - 121) < 0)
  {
    operator delete(*(v48 - 144));
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (*(v48 - 57) < 0)
  {
    operator delete(*(v48 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B723658()
{
  if (*(v0 - 89) < 0)
  {
    v1 = *(v0 - 112);
    JUMPOUT(0x19B72364CLL);
  }

  JUMPOUT(0x19B723650);
}

os_log_t sub_19B72366C()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

uint64_t sub_19B7237BC(void *a1)
{
  v2 = a1[6];
  kdebug_trace();
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(*(a1[4] + 16) + 16);

  return v5();
}

void sub_19B723974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__prepareDispatcher(WeakRetained, v1, v2);
}

void sub_19B723B38()
{
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B43D468(v1, "PocketStateMaxMonitorTime", &qword_1EAFE34B0);
  if (v2)
  {

    sub_19B41FFEC(v2);
  }
}

void sub_19B723BB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B723CD0()
{
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B438CCC(v1, "DisablePocketState", &byte_1ED71D600);
  if (v2)
  {

    sub_19B41FFEC(v2);
  }
}

void sub_19B723D48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B723F64(uint64_t a1)
{
  if (sub_19B6787A4())
  {
    v2 = sub_19B6787A4();
    v3 = *(*(a1 + 32) + 32);

    sub_19B426A14(v2, 0, v3);
  }
}

uint64_t sub_19B7240A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v8 = objc_msgSend_processName(v5, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"com.apple.CoreMotion.CMPocketStateManager.%@.%@", v8, *(a1 + 32));
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
  }

  v11 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
  {
    v14 = objc_msgSend_UTF8String(v10, v12, v13);
    v15 = *(a1 + 40);
    *buf = 136315394;
    v25 = v14;
    v26 = 2048;
    v27 = v15;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "ADClient: %s + %llu", buf, 0x16u);
  }

  v16 = sub_19B420058();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    objc_msgSend_UTF8String(v10, v17, v18);
    v23 = *(a1 + 40);
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPocketStateManager addToAggdScalarWithName:andScalar:]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v20 = *(a1 + 40);
  result = ADClientAddValueForScalarKey();
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B7246C4(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
  }

  v2 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
  {
    v3 = mach_absolute_time();
    v4 = sub_19B41E070(v3);
    v5 = *(a1 + 56);
    *buf = 134218240;
    v45 = v4;
    v46 = 2048;
    v47 = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "%f: query started with timeout %f", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v8 = mach_absolute_time();
    v9 = sub_19B41E070(v8);
    v10 = *(a1 + 56);
    v40 = 134218240;
    v41 = v9;
    v42 = 2048;
    v43 = v10;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]_block_invoke", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  objc_msgSend_addToAggdScalarWithName_andScalar_(*(a1 + 32), v7, @"queryStart", 1);
  v12 = *(a1 + 32);
  if (*(v12 + 8))
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v13 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_INFO, "Query aborted", buf, 2u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      LOWORD(v40) = 0;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]_block_invoke", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    objc_msgSend_addToAggdScalarWithName_andScalar_(*(a1 + 32), v15, @"queryAbort", 1);
    dispatch_source_cancel(*(*(a1 + 32) + 8));
    dispatch_release(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = 0;
    v12 = *(a1 + 32);
  }

  *(*(a1 + 32) + 8) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v12 + 16));
  if (*(*(a1 + 32) + 8))
  {
    v17 = [CMPocketStateQueueBlockPair alloc];
    v19 = objc_msgSend_initWithQueue_andBlock_(v17, v18, *(a1 + 40), *(a1 + 48));
    objc_msgSend_addObject_(*(*(a1 + 32) + 48), v20, v19);

    v21 = *(*(a1 + 32) + 8);
    v22 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
    dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    v23 = *(a1 + 32);
    v24 = *(v23 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_19B724E5C;
    handler[3] = &unk_1E7532988;
    handler[4] = v23;
    dispatch_source_set_event_handler(v24, handler);
    v25 = (a1 + 64);
    if (*(a1 + 64) <= *(*(a1 + 32) + 40))
    {
      v33 = sub_19B6787A4();
    }

    else
    {
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      v26 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_FAULT))
      {
        v27 = *(*(a1 + 32) + 40);
        v28 = *(a1 + 64);
        *buf = 134218240;
        v45 = v27;
        v46 = 2048;
        v47 = v28;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "Attempted to exceed max monitor time %f, %f", buf, 0x16u);
      }

      v29 = sub_19B420058();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
        }

        v30 = *(*(a1 + 32) + 40);
        v31 = *(a1 + 64);
        v40 = 134218240;
        v41 = v30;
        v42 = 2048;
        v43 = v31;
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]_block_invoke", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      v33 = sub_19B6787A4();
      v25 = (*(a1 + 32) + 40);
    }

    sub_19B6792B8(v33, *v25);
    dispatch_resume(*(*(a1 + 32) + 8));
  }

  else
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v34 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "Query timer failed to initialize", buf, 2u);
    }

    v35 = sub_19B420058();
    if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      LOWORD(v40) = 0;
      v37 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]_block_invoke", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    objc_msgSend_addToAggdScalarWithName_andScalar_(*(a1 + 32), v36, @"queryTimerFail", 1);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_19B724E5C(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
  }

  v2 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
  {
    v3 = mach_absolute_time();
    *buf = 134217984;
    v62 = sub_19B41E070(v3);
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "QueryTimerFire,%f", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v6 = mach_absolute_time();
    v53 = 134217984;
    v54 = sub_19B41E070(v6);
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  objc_msgSend_addToAggdScalarWithName_andScalar_(*(a1 + 32), v5, @"queryTimerFire", 1);
  v8 = *(*(a1 + 32) + 8);
  if (v8)
  {
    dispatch_source_cancel(v8);
    dispatch_release(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = 0;
    v10 = objc_msgSend_translateInternalState_(*(a1 + 32), v9, *(*(a1 + 32) + 24));
    v12 = objc_msgSend_externalStateToString_(*(a1 + 32), v11, v10);
    v13 = *(a1 + 32);
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"queryResponse.%@", v12);
    objc_msgSend_addToAggdScalarWithName_andScalar_(v13, v16, v15, 1);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v17 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      v18 = mach_absolute_time();
      v19 = sub_19B41E070(v18);
      v22 = objc_msgSend_UTF8String(v12, v20, v21);
      v25 = objc_msgSend_count(*(*(a1 + 32) + 48), v23, v24);
      *buf = 134218754;
      v62 = v19;
      v63 = 1024;
      v64 = v10;
      v65 = 2080;
      v66 = v22;
      v67 = 2048;
      v68 = v25;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "%f: query response external=%u (%s), cbcount=%lu", buf, 0x26u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      v28 = mach_absolute_time();
      v29 = sub_19B41E070(v28);
      v32 = objc_msgSend_UTF8String(v12, v30, v31);
      v35 = objc_msgSend_count(*(*(a1 + 32) + 48), v33, v34);
      v53 = 134218754;
      v54 = v29;
      v55 = 1024;
      v56 = v10;
      v57 = 2080;
      v58 = v32;
      v59 = 2048;
      v60 = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]_block_invoke", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v37 = *(*(a1 + 32) + 48);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v27, &v48, v52, 16);
    if (v38)
    {
      v41 = v38;
      v42 = *v49;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(v37);
          }

          objc_msgSend_dispatchWithState_andError_(*(*(&v48 + 1) + 8 * i), v39, v10, 0);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v48, v52, 16);
      }

      while (v41);
    }

    objc_msgSend_removeAllObjects(*(*(a1 + 32) + 48), v39, v40);
  }

  else
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v44 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_FAULT, "timer fired even though fQueryTimer is NULL", buf, 2u);
    }

    v45 = sub_19B420058();
    if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      LOWORD(v53) = 0;
      v46 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]_block_invoke", "CoreLocation: %s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

void sub_19B72551C(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_userInfo(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"CMSetPocketStateTypeKey");
  v9 = objc_msgSend_intValue(v6, v7, v8);
  v11 = v9;
  if (v9 < 4)
  {
    v16 = *(a1 + 40);
    v17 = objc_msgSend_translateExternalState_(v16, v10, v9);
    v18 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](v16, sel_onPocketStateUpdated_, v17);
  }

  else
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v12 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v20 = v11;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "The pocket state %d is not in bounds", buf, 8u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPocketStateManager onNotification:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_19B7257CC(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  objc_msgSend_delegate(*(a1 + 32), a2, a3);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = objc_msgSend_delegate(*(a1 + 32), v5, v6);
    v8 = *(a1 + 32);
    objc_msgSend_translateInternalState_(v8, v9, *(a1 + 40));

    return MEMORY[0x1EEE66B58](v7, sel_pocketStateManager_didUpdateState_, v8);
  }

  return result;
}

os_log_t sub_19B7258E0()
{
  result = os_log_create("com.apple.locationd.Motion", "Pocket");
  qword_1EAFE2868 = result;
  return result;
}

void sub_19B725914(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

long double sub_19B725958(double a1, double a2, double a3, double a4)
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

  return sub_19B725DA4(v42, v43, v44, v45);
}

long double sub_19B725DA4(double a1, double a2, double a3, double a4)
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

void sub_19B727840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B60DA60(va);
  v9 = v5[45];
  if (v9)
  {
    sub_19B41FFEC(v9);
  }

  sub_19B42AC20(v7);
  sub_19B674784(v5);
  MEMORY[0x19EAE76F0](v5, v6);
  _Unwind_Resume(a1);
}

void sub_19B72789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19B420D84();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B729D9C;
  v11[3] = &unk_1E7535820;
  v11[4] = a2;
  v11[5] = a1;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  sub_19B420C9C(v10, v11);
}

void *sub_19B727940(void *a1)
{
  *a1 = &unk_1F0E32658;
  sub_19B7279AC(a1);
  v2 = a1[45];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B42AC20(a1 + 13);

  return sub_19B674784(a1);
}

void sub_19B7279AC(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (v2)
  {
    sub_19B42AC20(v2 + 90);
    sub_19B42AC20(v2 + 61);
    sub_19B42AC20(v2 + 32);
    sub_19B42AC20(v2 + 3);
    MEMORY[0x19EAE76F0](v2, 0x1080C40300B9403);
    a1[5] = 0;
  }

  if (a1[6])
  {
    v3 = sub_19B4249E4();
    sub_19B426A14(v3, 0, a1[6]);
    v4 = a1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    a1[6] = 0;
  }

  if (a1[8])
  {
    v5 = sub_19B42AD98();
    sub_19B426A14(v5, 0, a1[8]);
    v6 = a1[8];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    a1[8] = 0;
  }

  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
  }

  v7 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Stopping orientation detection.", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::stopDetection()", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B727C2C(void *a1)
{
  sub_19B727940(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B727C64(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    goto LABEL_27;
  }

  if (IOHIDEventGetType() != 10)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v6 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v14) = IOHIDEventGetType();
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Received wrong event type %{public}u", buf, 8u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) <= 1 && *(v7 + 164) <= 1 && *(v7 + 168) <= 1 && !*(v7 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    IOHIDEventGetType();
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::onIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v5);
    if (v5 == buf)
    {
      goto LABEL_27;
    }

LABEL_26:
    free(v5);
LABEL_27:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  if ((IntegerValue - 107) <= 0xFFFFFFFFFFFFFFF8)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v3 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v14 = IntegerValue;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "Received invalid orientation %{public}ld", buf, 0xCu);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) != 0 && (*(v4 + 164) & 0x80000000) != 0 && (*(v4 + 168) & 0x80000000) != 0 && !*(v4 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::onIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v5);
    if (v5 == buf)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v9 = sub_19B794CA4();
  TimeStamp = IOHIDEventGetTimeStamp();
  v11 = sub_19B41E070(TimeStamp);
  v12 = *MEMORY[0x1E69E9840];

  sub_19B729F98(a1, v9, (IntegerValue - 100), v11);
}

unint64_t sub_19B728034(NSObject *a1)
{
  sub_19B453A10(a1);

  return sub_19B448530(a1, 1);
}

void sub_19B728074(uint64_t a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4)
  {
    sub_19B42AC20(v4 + 90);
    sub_19B42AC20(v4 + 61);
    sub_19B42AC20(v4 + 32);
    sub_19B42AC20(v4 + 3);
    MEMORY[0x19EAE76F0](v4, 0x1080C40300B9403);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 32);
  if (v5 < 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if (v6 == 1)
  {
    if (v5 >= 2 && a2 != 0)
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v8 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        *buf = 67240192;
        LODWORD(v47) = v9;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "forceAccelOnly for device %{public}d", buf, 8u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v41 = *(a1 + 32);
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::startDetection(BOOL)", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      *(a1 + 32) = 0;
    }

    *(a1 + 56) = 1092616192;
    *(a1 + 76) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 56) = 0x41A0000041C80000;
    v12 = sub_19B420D84();
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B43D468(v13, "OrientationGyroTimeout", (a1 + 88));
    if (v14)
    {
      sub_19B41FFEC(v14);
    }

    v15 = *(a1 + 88);
    *(a1 + 80) = v15 > 0.0;
    if (v15 > 0.0)
    {
      *(a1 + 112) = 8;
      sub_19B4432A0((a1 + 120), 8);
      sub_19B4432A0((a1 + 192), 8);
      sub_19B4432A0((a1 + 264), 8);
      *(a1 + 76) = 2;
    }

    v16 = sub_19B420D84();
    v17 = *(v16 + 24);
    v18 = *(v16 + 32);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = sub_19B444E58(v17, "OrientationStableVariance", (a1 + 84));
    if (v18)
    {
      sub_19B41FFEC(v18);
    }

    if ((v19 & 1) == 0)
    {
      *(a1 + 84) = 961656599;
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v20 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 88);
      v22 = *(a1 + 80);
      v23 = *(a1 + 84);
      *buf = 134349568;
      v47 = v21;
      v48 = 1026;
      v49 = v22;
      v50 = 2050;
      v51 = v23;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "fOrientationGyroTimeout,%{public}f,fEnableGyroTimeout,%{public}d,fMaxAccelerationVarianceForStability,%{public}f", buf, 0x1Cu);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v42 = *(a1 + 88);
      v44 = *(a1 + 80);
      v45 = *(a1 + 84);
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::startDetection(BOOL)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  v26 = sub_19B420D84();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B432FD8(v27, "OrientationAccelDecimation", (a1 + 76));
  if (v28)
  {
    sub_19B41FFEC(v28);
  }

  *(a1 + 72) = *(a1 + 76);
  if (*(a1 + 56) <= 0.0)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v33 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "Not starting orientation detection since requested accelerometer frequency < 0", buf, 2u);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      goto LABEL_98;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 == -1)
    {
LABEL_96:
      v39 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::startDetection(BOOL)", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }

      goto LABEL_98;
    }

LABEL_105:
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    goto LABEL_96;
  }

  if (!sub_19B4249E4())
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v35 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "No accelerometer; not detecting orientation!", buf, 2u);
    }

    v36 = sub_19B420058();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      goto LABEL_98;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_105;
  }

  if ((v6 & 1) != 0 || sub_19B42AD98())
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v29 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 34);
      *buf = 67240192;
      LODWORD(v47) = v30;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEFAULT, "fHasSeenACaseLatchCoverOnce, %{public}d", buf, 8u);
    }

    v31 = sub_19B420058();
    if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v43 = *(a1 + 34);
      v32 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::startDetection(BOOL)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    operator new();
  }

  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
  }

  v37 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_FAULT, "No gyro; not detecting orientation!", buf, 2u);
  }

  v38 = sub_19B420058();
  if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_105;
  }

LABEL_98:
  v40 = *MEMORY[0x1E69E9840];
}