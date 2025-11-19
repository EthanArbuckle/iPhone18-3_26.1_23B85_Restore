void sub_19B94D6A8(uint64_t a1, __int128 *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = vsubq_f64(*(a2 + 8), *(a1 + 80));
  v56 = v4;
  if (*(a1 + 1) == 1)
  {
    v5 = sqrt(vaddvq_f64(vmulq_f64(v4, v4)));
    v6 = *(a1 + 512);
    v7 = *(a1 + 520);
    if (v6 >= v7)
    {
      v9 = *(a1 + 504);
      v10 = v6 - v9;
      v11 = (v6 - v9) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        sub_19B8F3F74();
      }

      v13 = v7 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        sub_19B8D9954(a1 + 504, v15);
      }

      v16 = (v6 - v9) >> 3;
      v17 = (8 * v11);
      v18 = (8 * v11 - 8 * v16);
      *v17 = v5;
      v8 = v17 + 1;
      memcpy(v18, v9, v10);
      v19 = *(a1 + 504);
      *(a1 + 504) = v18;
      *(a1 + 512) = v8;
      *(a1 + 520) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v6 = v5;
      v8 = v6 + 1;
    }

    *(a1 + 512) = v8;
  }

  v20 = 0;
  v55[0] = *(a2 + 3) * *(a2 + 3) * 0.5;
  v55[1] = v55[0];
  v54[0] = 0x3FF0000000000000;
  v54[1] = 0;
  v54[2] = 0;
  v54[3] = 0x3FF0000000000000;
  v21 = 1;
  v22 = 0.0;
  v23 = 0.0;
  while (1)
  {
    v24 = v21;
    v25 = sub_19B94FF2C(v54, v20, 0);
    v26 = *(a1 + 120);
    v27 = sub_19B94FF2C(v54, v20, 1uLL);
    v28 = sub_19B94FF2C(v54, v20, 0);
    v29 = *(a1 + 128);
    v30 = *(a1 + 136);
    v31 = v25 * v26;
    v32 = sub_19B950834(v55, v20) + v25 * v31;
    if (v32 <= 0.0)
    {
      break;
    }

    v33 = sub_19B950834(v55, v20);
    v34 = v27 + v28 * v30;
    v35 = v34 * v29;
    v36 = 1.0 / v32;
    *(a1 + 120) = *(a1 + 120) * (1.0 / v32 * v33);
    v37 = v32 + v34 * (v34 * v29);
    if (v37 <= 0.0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v45 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v60 = v20;
        _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
      }

      v46 = sub_19B87DD40();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || (v23 = 0.0, v22 = 0.0, *(v46 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 == -1)
        {
LABEL_38:
          v57 = 134217984;
          v58 = v20;
          v47 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<double, 2>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = double, N = 2, P = 2UL]", "CoreLocation: %s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }

          v23 = 0.0;
          v22 = 0.0;
          goto LABEL_41;
        }

LABEL_44:
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
        goto LABEL_38;
      }

      goto LABEL_41;
    }

    v38 = 1.0 / v37;
    v39 = v32 * (1.0 / v37);
    v40 = *(a1 + 136);
    *(a1 + 128) = v39 * *(a1 + 128);
    *(a1 + 136) = v40 + v31 * -(v34 * v36);
    v41 = sub_19B950834(&v56, v20);
    v21 = 0;
    v42 = v38 * v41;
    v22 = v22 + v42 * (v31 + v35 * v40);
    v23 = v23 + v42 * v35;
    v20 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
  }

  v43 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v60 = v20;
    _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v44 = sub_19B87DD40();
  if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || (v23 = 0.0, v22 = 0.0, *(v44 + 152)))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

LABEL_41:
  v48 = v23 + *(a1 + 88);
  *(a1 + 80) = v22 + *(a1 + 80);
  *(a1 + 88) = v48;
  *(a1 + 72) = *a2;
  *(a1 + 100) = *(a2 + 9);
  v49 = *(a1 + 232);
  v51 = a2[1];
  v50 = a2[2];
  v52 = *a2;
  *(a1 + 224) = *(a2 + 6);
  *(a1 + 192) = v51;
  *(a1 + 208) = v50;
  *(a1 + 176) = v52;
  if ((v49 & 1) == 0)
  {
    *(a1 + 232) = 1;
  }

  v53 = *MEMORY[0x1E69E9840];
}

void sub_19B94DC44(uint64_t a1, void *a2, uint64_t a3, int a4, double a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = [objc_msgSend(objc_msgSend(a2 "objectAtIndexedSubscript:{"deltaPosition_m"), "isValid"}")];
  if (a3 && ((v10 | a4 ^ 1) & 1) != 0)
  {
    if ((v10 | a4))
    {
      [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{a3), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
      v12 = v11;
      [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{a3 - 1), "cfAbsTimestamp"), "timeIntervalSinceReferenceDate"}];
      v14 = v12 - v13;
      v15 = v12 - a5;
      if (v15 < 0.0 && *a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v16 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] time between first inertial to next location is negative.", buf, 2u);
        }

        v17 = sub_19B87DD40();
        if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v18 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::interpolateInertialOdometryDeltaPosition(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, const size_t, const CFAbsoluteTime, const BOOL)", "CoreLocation: %s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }

      v19 = v15 / v14;
      if (fabs(v14) < 2.22044605e-16 && *a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v20 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] repeated timestamps of inertialOdometry.", buf, 2u);
        }

        v21 = sub_19B87DD40();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v22 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::interpolateInertialOdometryDeltaPosition(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, const size_t, const CFAbsoluteTime, const BOOL)", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }

      if (v19 > 1.0 && *a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v23 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] interpolationScaleFactor is greater than 1.", buf, 2u);
        }

        v24 = sub_19B87DD40();
        if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v25 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::interpolateInertialOdometryDeltaPosition(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, const size_t, const CFAbsoluteTime, const BOOL)", "CoreLocation: %s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }
      }

      [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{a3), "deltaPosition_m"), "X"}];
      v27 = v26;
      [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{a3), "deltaPosition_m"), "Y"}];
      v29 = sqrt(v28 * v28 + v27 * v27);
      v30 = atan2(v28, v27);
      if (a4)
      {
        *(a1 + 304) = a3;
        *(a1 + 312) = v19 * v29;
        *(a1 + 320) = v30;
      }

      else
      {
        *(a1 + 328) = a3;
        *(a1 + 336) = (1.0 - v19) * v29;
        *(a1 + 344) = v30;
      }
    }

    else
    {
      *(a1 + 336) = 0;
      *(a1 + 344) = 0;
      *(a1 + 328) = a3;
    }
  }

  else
  {
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 304) = a3;
  }

  v31 = *MEMORY[0x1E69E9840];
}

unint64_t sub_19B94E1C8(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a3 "lastObject")];
  v67[1] = 0.0;
  v67[2] = 0.0;
  v67[0] = v6 * v6 * 0.5;
  v67[3] = v67[0];
  sub_19B94EDC0(&v64, v67);
  v63[0] = 1.0;
  v63[1] = 0.0;
  v63[2] = 0.0;
  v63[3] = 1.0;
  if ((*(a1 + 352) & 0x80000000) == 0)
  {
    v7 = *(a1 + 352) & 0x7FFFFFFFLL;
    do
    {
      v8 = [a2 objectAtIndexedSubscript:v7];
      v9 = [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{v7), "deltaPosition_m"), "isValid"}];
      v10 = 0.0;
      v11 = 0.0;
      if (v9)
      {
        [objc_msgSend(v8 deltaPosition_m];
        v10 = v12;
        [objc_msgSend(v8 "deltaPosition_m")];
      }

      v13 = sqrt(v11 * v11 + v10 * v10);
      if (*(a1 + 352) == v7)
      {
        v13 = v13 - *(a1 + 360);
      }

      v14 = 0.0;
      if (v9)
      {
        v14 = atan2(v11, v10);
      }

      v15 = __sincos_stret(v14 + *(a1 + 368));
      [objc_msgSend(a3 "lastObject")];
      v17 = v16;
      [objc_msgSend(a3 "lastObject")];
      v61 = 0.0;
      v62 = 0.0;
      sub_19BA0C1C0((a1 + 8), &v62, &v61, &v60, v17, v18, 0.0, -(v13 * v15.__cosval), v13 * v15.__sinval, 0.0);
      if (*(a1 + 296) == 1)
      {
        v19 = *(a1 + 276);
      }

      else
      {
        v19 = 1;
      }

      v20 = [CLTripSegmentLocation alloc];
      v21 = [v8 cfAbsTimestamp];
      v22 = [(CLTripSegmentLocation *)v20 initWithTime:v21 latitude:1 longitude:v19 horizontalAccuracy:v62 course:v61 courseAccuracy:-1.0 speed:-1.0 speedAccuracy:-1.0 altitude:-1.0 altitudeAccuracy:-1.0 locType:-1.0 referenceFrame:0xBFF0000000000000];
      [(CLTripSegmentLocation *)v22 setLocationReconstructionType:2];
      if (*(a1 + 296) == 1)
      {
        [(CLTripSegmentLocation *)v22 setSignalEnvironmentType:*(a1 + 272)];
      }

      else if (*a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v23 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[openLoopPropagationHead] FirstConsumedMeasurement is not initialized.", buf, 2u);
        }

        v24 = sub_19B87DD40();
        if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          LOWORD(v59[0]) = 0;
          v25 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::openLoopPropagationHead(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }
      }

      v26 = [a3 lastObject];
      [(CLTripSegmentLocation *)v22 latitude];
      v28 = v27;
      [(CLTripSegmentLocation *)v22 longitude];
      v30 = v29;
      [v26 latitude];
      v32 = v31;
      [v26 longitude];
      [v26 setCourse:{sub_19BA0C44C((a1 + 8), v28, v30, v32, v33)}];
      [v26 course];
      v35 = v34 <= 0.0;
      v36 = -1.0;
      if (!v35)
      {
        v36 = 10.0;
      }

      [v26 setCourseAccuracy:v36];
      [v26 course];
      v38 = v37 * 0.0174532924;
      [v26 latitude];
      v40 = v39;
      [v26 longitude];
      v42 = v41;
      [(CLTripSegmentLocation *)v22 latitude];
      v44 = v43;
      [(CLTripSegmentLocation *)v22 longitude];
      v45 = 0.0;
      v47 = sub_19BA0C01C((a1 + 8), v40, v42, v44, v46, 0.0);
      v48 = __sincos_stret(v38);
      v59[0] = -(v47 * v48.__sinval);
      v59[1] = v48.__cosval * v47;
      v59[2] = v48.__cosval;
      v59[3] = v48.__sinval;
      if (v9)
      {
        v49 = 1.05;
      }

      else
      {
        v49 = 1.6;
      }

      v50 = 25.0;
      if (v9)
      {
        v50 = 16.0;
      }

      *v58 = v49;
      *&v58[1] = v50;
      sub_19B94F27C(&v64, v63, v59, v58);
      v51 = 0;
      *buf = v64 + 0.0 + v66 * v65 * v66;
      v69 = v65 * v66 + 0.0;
      v70 = v66 * v65 + 0.0;
      v71 = v65 + 0.0;
      v52 = 1;
      do
      {
        v53 = v52;
        v54 = sub_19B94FF2C(buf, v51, v51);
        v52 = 0;
        v45 = v45 + v54;
        v51 = 1;
      }

      while ((v53 & 1) != 0);
      [v26 setHorizontalAccuracy:sqrt(v45)];
      [a3 addObject:v22];

      v35 = v7-- <= 0;
    }

    while (!v35);
  }

  result = [a3 count];
  if (result > 1)
  {
    [objc_msgSend(a3 objectAtIndex:{result - 2), "horizontalAccuracy"}];
    result = [objc_msgSend(a3 "lastObject")];
  }

  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B94E75C(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 timestamp];
  v5 = [a3 timestamp];

  return [v4 compare:v5];
}

void sub_19B94E7A8(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a3 "lastObject")];
  v56[1] = 0.0;
  v56[2] = 0.0;
  v56[0] = v6 * v6 * 0.5;
  v56[3] = v56[0];
  sub_19B94EDC0(&v53, v56);
  v52[0] = 1.0;
  v52[1] = 0.0;
  v52[2] = 0.0;
  v52[3] = 1.0;
  v7 = *(a1 + 328);
  if (v7 < [a2 count])
  {
    while (1)
    {
      v8 = [a2 objectAtIndexedSubscript:v7];
      v9 = [objc_msgSend(v8 "deltaPosition_m")];
      v10 = 0.0;
      v11 = 0.0;
      if (v9)
      {
        [objc_msgSend(v8 deltaPosition_m];
        v10 = v12;
        [objc_msgSend(v8 "deltaPosition_m")];
      }

      v13 = sqrt(v11 * v11 + v10 * v10);
      if (v7 == *(a1 + 328))
      {
        v13 = v13 - *(a1 + 336);
      }

      v14 = 0.0;
      if (v9)
      {
        v14 = atan2(v11, v10);
      }

      if ((*(a1 + 392) & 1) == 0)
      {
        break;
      }

      v15 = __sincos_stret(v14 + *(a1 + 384));
      v16 = v13 * v15.__cosval;
      v17 = -(v13 * v15.__sinval);
      [objc_msgSend(a3 "lastObject")];
      v19 = v18;
      [objc_msgSend(a3 "lastObject")];
      v50 = 0.0;
      v51 = 0.0;
      v20 = 0.0;
      sub_19BA0C1C0((a1 + 8), &v51, &v50, &v49, v19, v21, 0.0, v16, v17, 0.0);
      v48[0] = v17;
      v48[1] = v16;
      v48[2] = v15.__cosval;
      v48[3] = v15.__sinval;
      if (v9)
      {
        v22 = 1.05;
      }

      else
      {
        v22 = 1.6;
      }

      v23 = 25.0;
      if (v9)
      {
        v23 = 16.0;
      }

      *v47 = v22;
      *&v47[1] = v23;
      sub_19B94F27C(&v53, v52, v48, v47);
      v24 = 0;
      *buf = v53 + 0.0 + v55 * v54 * v55;
      v58 = v54 * v55 + 0.0;
      v59 = v55 * v54 + 0.0;
      v60 = v54 + 0.0;
      v25 = 1;
      do
      {
        v26 = v25;
        v27 = sub_19B94FF2C(buf, v24, v24);
        v25 = 0;
        v20 = v20 + v27;
        v24 = 1;
      }

      while ((v26 & 1) != 0);
      [objc_msgSend(a3 "lastObject")];
      v29 = v28;
      [objc_msgSend(a3 "lastObject")];
      v31 = v50;
      v30 = v51;
      v33 = sub_19BA0C44C((a1 + 8), v29, v32, v51, v50);
      if (*(a1 + 232) == 1)
      {
        v34 = *(a1 + 212);
      }

      else
      {
        v34 = 1;
      }

      v35 = sqrt(v20);
      v36 = [CLTripSegmentLocation alloc];
      v37 = [v8 cfAbsTimestamp];
      if (v33 <= 0.0)
      {
        v38 = -1.0;
      }

      else
      {
        v38 = 10.0;
      }

      v39 = [(CLTripSegmentLocation *)v36 initWithTime:v37 latitude:1 longitude:v34 horizontalAccuracy:v30 course:v31 courseAccuracy:v35 speed:v33 speedAccuracy:v38 altitude:-1.0 altitudeAccuracy:-1.0 locType:-1.0 referenceFrame:0xBFF0000000000000];
      [(CLTripSegmentLocation *)v39 setLocationReconstructionType:2];
      if (*(a1 + 232) == 1)
      {
        [(CLTripSegmentLocation *)v39 setSignalEnvironmentType:*(a1 + 208)];
      }

      else if (*a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v40 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[openLoopPropagationTail] LastConsumedMeasurement is not initialized.", buf, 2u);
        }

        v41 = sub_19B87DD40();
        if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v42 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::openLoopPropagationTail(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v42);
          if (v42 != buf)
          {
            free(v42);
          }
        }
      }

      [a3 addObject:v39];

      if (++v7 >= [a2 count])
      {
        goto LABEL_52;
      }
    }

    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v43 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[openLoopPropagationTail] course offset is not initialized.", buf, 2u);
      }

      v44 = sub_19B87DD40();
      if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v48[0]) = 0;
        v45 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::openLoopPropagationTail(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }
    }
  }

LABEL_52:
  v46 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B94EDC0(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v2 >= v3)
  {
    v4 = v2 - v3;
  }

  else
  {
    v4 = -(v2 - v3);
  }

  if (v4 <= 1.00000002e-16)
  {
    for (i = 1; ; --i)
    {
      v8 = sub_19B94FF2C(a2, i, i);
      if (!i)
      {
        v9 = *sub_19B9502B4(a1 + 16, 0, 1uLL);
        v8 = v8 + -(v9 * *sub_19B9502B4(a1 + 16, 0, 1uLL)) * *(a1 + 8);
      }

      *sub_19B95063C(a1, i) = v8;
      if (*sub_19B95063C(a1, i) <= 0.0)
      {
        break;
      }

      if (!i)
      {
        result = 1;
        goto LABEL_25;
      }

      v10 = sub_19B94FF2C(a2, i - 1, i);
      v11 = v10 / *sub_19B95063C(a1, i);
      *sub_19B9502B4(a1 + 16, i - 1, i) = v11;
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v12 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v18 = i;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<double, 2>::factor(const CMMatrix<T, N, N> &) [T = double, N = 2]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  result = 0;
LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B94F084(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T &CMVector<double, 2>::operator[](const size_t) [T = double, N = 2]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 8 * a2;
}

void sub_19B94F27C(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a1 + 16;
  v9 = a2[1];
  v10 = a2[3];
  a2[2] = a2[2] + *a2 * *(a1 + 16);
  a2[3] = v10 + v9 * *(a1 + 16);
  for (i = 1; ; --i)
  {
    v12 = 0;
    *(&v48 + i) = 0;
    v13 = 1;
    v14 = 0.0;
    do
    {
      v15 = v13;
      v16 = *sub_19B8D7BD0(a2, i, v12);
      v17 = v16 * *sub_19B8D7BD0(a2, i, v12);
      v18 = sub_19B95063C(a1, v12);
      v13 = 0;
      v14 = v14 + v17 * *v18;
      *(&v48 + i) = v14;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = *sub_19B8D7BD0(a3, i, v19);
      v23 = v22 * *sub_19B8D7BD0(a3, i, v19);
      v24 = sub_19B950834(a4, v19);
      v20 = 0;
      v14 = v14 + v23 * v24;
      *(&v48 + i) = v14;
      v19 = 1;
    }

    while ((v21 & 1) != 0);
    if (v14 <= 0.0)
    {
      break;
    }

    if (!i)
    {
      *a1 = v48;
      goto LABEL_26;
    }

    v25 = 0;
    v26 = 0.0;
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = *sub_19B8D7BD0(a2, 0, v25);
      v30 = v29 * *sub_19B95063C(a1, v25);
      v31 = sub_19B8D7BD0(a2, i, v25);
      v27 = 0;
      v26 = v26 + v30 * *v31;
      v25 = 1;
    }

    while ((v28 & 1) != 0);
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = v33;
      v35 = *sub_19B8D7BD0(a3, 0, v32);
      v36 = v35 * sub_19B950834(a4, v32);
      v37 = sub_19B8D7BD0(a3, i, v32);
      v33 = 0;
      v26 = v26 + v36 * *v37;
      v32 = 1;
    }

    while ((v34 & 1) != 0);
    *sub_19B9502B4(v8, 0, i) = v26 / v14;
    v38 = *sub_19B9502B4(v8, 0, i);
    *a2 = *a2 - v38 * *sub_19B8D7BD0(a2, i, 0);
    v39 = *sub_19B9502B4(v8, 0, i);
    a2[2] = a2[2] - v39 * *sub_19B8D7BD0(a2, i, 1uLL);
    v40 = *sub_19B9502B4(v8, 0, i);
    *a3 = *a3 - v40 * *sub_19B8D7BD0(a3, i, 0);
    v41 = *sub_19B9502B4(v8, 0, i);
    a3[2] = a3[2] - v41 * *sub_19B8D7BD0(a3, i, 1uLL);
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
  }

  v42 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v47 = i;
    _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v43 = sub_19B87DD40();
  if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v44 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CMFactoredMatrix<double, 2>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, CMMatrix<T, N, M> &, const CMVector<T, M> &) [T = double, N = 2, M = 2UL]", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

LABEL_26:
  v45 = *MEMORY[0x1E69E9840];
}

double sub_19B94F70C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = sub_19B94FF2C(a1, v4, 0);
      v11 = v10 * sub_19B94FF2C(a2, 0, v6);
      *sub_19B8D7BD0(&v16, v4, v6) = v11;
      v12 = sub_19B94FF2C(a1, v4, 1uLL);
      v13 = sub_19B94FF2C(a2, 1uLL, v6);
      v14 = sub_19B8D7BD0(&v16, v4, v6);
      v8 = 0;
      *v14 = *v14 + v12 * v13;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    v5 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return v16;
}

double sub_19B94F808(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = *&v8[v6] - sub_19B950B90(a1, v6);
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

double sub_19B94F874(uint64_t a1, double *a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = sub_19B94FF2C(a1, v4, 0) * *a2;
    *sub_19B94F084(&v12, v4) = v7;
    v8 = sub_19B94FF2C(a1, v4, 1uLL);
    v9 = a2[1];
    v10 = sub_19B94F084(&v12, v4);
    v5 = 0;
    *v10 = *v10 + v8 * v9;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v12;
}

os_log_t sub_19B94F924()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

void sub_19B94F954()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t *sub_19B94F9A0(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      v7 = v2[2];
      *(v5 + 16) = v2[1];
      *(v5 + 32) = v7;
      *v5 = v6;
      *(v5 + 48) = *(v2 + 6);
      *(v5 + 56) = *(v2 + 7);
      *(v5 + 64) = *(v2 + 8);
      *(v5 + 72) = *(v2 + 72);
      v2 += 5;
      v5 += 80;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_19B94FA38(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B94FA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

double *sub_19B94FADC(void *a1, double a2)
{
  if (a2 == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a2;
  }

  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (*&v2 >= *&v3)
    {
      *&v5 = *&v2 % *&v3;
    }
  }

  else
  {
    *&v5 = (*&v3 - 1) & *&v2;
  }

  v6 = *(*a1 + 8 * *&v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v8 = *(v7 + 1);
    if (v8 == *&v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != *&v5)
    {
      goto LABEL_21;
    }

LABEL_20:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_20;
  }

  return v7;
}

os_log_t sub_19B94FEFC()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

double sub_19B94FF2C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v8 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 2;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T CMMatrix<double, 2>::operator()(size_t, size_t) const [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v11 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 2;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T CMMatrix<double, 2>::operator()(size_t, size_t) const [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  result = *(a1 + 8 * (a2 + 2 * a3));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9502B4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v8 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 2;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T &CMFactoredMatrix<double, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = double, N = 2]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 <= a2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v11 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T &CMFactoredMatrix<double, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = double, N = 2]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 8 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_19B95063C(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T &CMFactoredMatrix<double, 2>::DiagonalMatrix::operator()(size_t) [T = double, N = 2]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 8 * a2;
}

double sub_19B950834(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T CMVector<double, 2>::operator[](const size_t) const [T = double, N = 2]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 8 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B950A2C(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

double *sub_19B950ADC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a3;
  if (a3 == 0.0)
  {
    v3 = 0.0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = vcnt_s8(a2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (*&v3 >= a2)
    {
      *&v5 = *&v3 % a2;
    }
  }

  else
  {
    *&v5 = *&v3 & (a2 - 1);
  }

  v6 = *(a1 + 8 * *&v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = *(result + 1);
    if (*&v3 == v8)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      if (v8 != *&v5)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_19B950B90(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 4;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "T CMMatrix<double, 2>::operator[](size_t) const [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 8 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9511F0(uint64_t a1)
{
  [*(a1 + 32) setIdentityToken:*(a1 + 40)];
  [*(a1 + 32) setStorageToken:0];
  v2 = *(a1 + 32);

  return [v2 manageConnection];
}

uint64_t sub_19B95146C(uint64_t a1)
{
  [*(a1 + 32) destroyConnection];
  v2 = *(a1 + 32);

  return [v2 tearDown];
}

uint64_t sub_19B9516BC(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v1 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 32) UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v8[0] = 2082;
      *&v8[1] = "";
      v9 = 2082;
      v10 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v4 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v5 = [*(v1 + 32) UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v8[0] = 2082;
      *&v8[1] = "";
      v9 = 2082;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession destroying connection (dealloc)", "{msg%{public}.0s:#backgroundActivitySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9518B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B951DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B951E74(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession Default handler received message", "{msg%{public}.0s:#backgroundActivitySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
    }

    v7 = a2[1];
    v9 = *a2;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v4 handleMessage:&v9];
    if (v10)
    {
      sub_19B8750F8(v10);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B952044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9523E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B952638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void *sub_19B952F44(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B952FA0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B952FA0(uint64_t a1, char *a2, void *a3)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B952FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953254(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v15[2] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
LABEL_7:
      v4 = CFCopyUserName();
      goto LABEL_8;
    }

    v2 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
LABEL_8:
  v5 = v4;
  sub_19B87BBB4();
  if (sub_19B93CCA4() && (v6 = getenv("_SET_CLPERSISTENTSTORE_TEST_PATH")) != 0)
  {
    v7 = MEMORY[0x1E696AEC0];
    v15[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v15[1] = v5;
    sub_19B8759E8(&v13, [objc_msgSend(v7 pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 2)), "UTF8String"}]);
    *a2 = v13;
    a2[2] = v14;
  }

  else if (v5)
  {
    v8 = CFCopyHomeDirectoryURLForUser();
    v9 = v8;
    if (v8)
    {
      v10 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
      v11 = v10;
      if (v10)
      {
        sub_19B929670(v10, &v13);
        *a2 = v13;
        a2[2] = v14;
        CFRelease(v11);
      }

      CFRelease(v9);
    }

    CFRelease(v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B9533D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFCopyUserName();
  sub_19B929670(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_19B95355C(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_19B953528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *sub_19B95355C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (qword_1ED5192A8 != -1)
  {
    dispatch_once(&qword_1ED5192A8, &unk_1F0E6D610);
  }

  result = qword_1ED5192A0;
  if (qword_1ED5192A0)
  {

    return sub_19B929670(result, a1);
  }

  return result;
}

void sub_19B9535D8(int a1@<W0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEFAULT))
    {
      v15.__r_.__value_.__r.__words[0] = 0x304020100;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "no mutable store path for type, %{public}d", &v15, 8u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v15, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    v16[0] = 0x304020100;
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
    goto LABEL_36;
  }

  if (a1)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    v10 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v15.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v15.__r_.__value_.__r.__words[0]) = a1;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "could not get mutable store path for type, %{public}d", &v15, 8u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v15, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    LODWORD(v16[0]) = 67240192;
    HIDWORD(v16[0]) = a1;
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
LABEL_36:
    if (v9 != &v15)
    {
      free(v9);
    }

LABEL_38:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_39;
  }

  sub_19B8759E8(__p, "root");
  sub_19B953254(__p, &v15);
  sub_19B8759E8(v16, "/Library/Caches/locationd/");
  if ((v17 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v16[1];
  }

  v6 = std::string::append(&v15, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B9539B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953A04(std::string *a1@<X8>)
{
  sub_19B95355C(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework/Support/", 0x3AuLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_19B953A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953A8C(std::string *a1@<X8>)
{
  sub_19B95355C(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework", 0x31uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_19B953AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B953B28()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

void sub_19B954588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9545AC(uint64_t a1, void *a2)
{
  sub_19B8759E8(__p, [objc_msgSend(a2 "UUIDString")]);
  sub_19B95D580(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B954608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B95476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9547A0(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) processTripSegmentData:*(*(*(a1 + 56) + 8) + 40) withOptions:*(*(*(a1 + 64) + 8) + 40) outputHandler:*(a1 + 40)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v8 = [v2 code];
      v9 = 2114;
      v10 = [v2 domain];
      v11 = 2113;
      v12 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,processTripData returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B9555A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B9555FC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) constructRouteWithID:*(*(*(a1 + 56) + 8) + 40) withOptions:*(*(*(a1 + 64) + 8) + 40) usingRoadData:*(*(*(a1 + 72) + 8) + 40) startRoad:*(*(*(a1 + 80) + 8) + 40) endRoad:*(*(*(a1 + 88) + 8) + 40) modeOfTransport:*(a1 + 96) outputHandler:*(a1 + 40)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_msgSend(*(*(*(a1 + 56) + 8) + 40) "UUIDString")];
      *buf = 136446979;
      v9 = v4;
      v10 = 2050;
      v11 = [v2 code];
      v12 = 2114;
      v13 = [v2 domain];
      v14 = 2113;
      v15 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteUsingRoadData for tripID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(*(*(*(a1 + 56) + 8) + 40) "UUIDString")];
      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B9561F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B95621C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) simulateLocationOnRouteID:*(*(*(a1 + 56) + 8) + 40) withOptions:*(*(*(a1 + 64) + 8) + 40) usingRoadData:*(*(*(a1 + 72) + 8) + 40) modeOfTransport:*(a1 + 80) constantSpeed:*(a1 + 40) outputHandler:*(a1 + 88)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_msgSend(*(*(*(a1 + 56) + 8) + 40) "UUIDString")];
      *buf = 136446979;
      v9 = v4;
      v10 = 2050;
      v11 = [v2 code];
      v12 = 2114;
      v13 = [v2 domain];
      v14 = 2113;
      v15 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,simulateLocationOnRoute for tripID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(*(*(*(a1 + 56) + 8) + 40) "UUIDString")];
      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B958178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B9581CC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) matchLocations:*(*(*(a1 + 56) + 8) + 40) toRoute:*(*(*(a1 + 64) + 8) + 40) waypoints:*(*(*(a1 + 72) + 8) + 40) withOptions:*(*(*(a1 + 80) + 8) + 40) andRouteID:*(*(*(a1 + 88) + 8) + 40) modeOfTransport:*(a1 + 96) outputHandler:*(a1 + 40)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "UUIDString")];
      *buf = 136446979;
      v9 = v4;
      v10 = 2050;
      v11 = [v2 code];
      v12 = 2114;
      v13 = [v2 domain];
      v14 = 2113;
      v15 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocations for routeID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "UUIDString")];
      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B9590E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B959110(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) propagateLocation:*(*(*(a1 + 56) + 8) + 40) route:*(*(*(a1 + 64) + 8) + 40) distance:*(*(*(a1 + 72) + 8) + 40) withOptions:*(a1 + 88) modeOfTransport:*(a1 + 40) outputHandler:*(a1 + 80)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 80);
      *buf = 134349827;
      v10 = v4;
      v11 = 2050;
      v12 = [v2 code];
      v13 = 2114;
      v14 = [v2 domain];
      v15 = 2113;
      v16 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,propagateLocation,distance,%{public}.2lf,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v8 = *(a1 + 80);
      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B959C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B959CC0(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) generateWaypointsOnTheRoute:*(*(*(a1 + 56) + 8) + 40) forRouteID:*(*(*(a1 + 64) + 8) + 40) withOptions:*(*(*(a1 + 72) + 8) + 40) modeOfTransport:*(a1 + 80) outputHandler:*(a1 + 40)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v8 = [v2 code];
      v9 = 2114;
      v10 = [v2 domain];
      v11 = 2113;
      v12 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,generateWaypointsOnTheRoute,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B95A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19B95A6AC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) constructRouteFromWaypoints:*(*(*(a1 + 56) + 8) + 40) forRouteID:*(*(*(a1 + 64) + 8) + 40) withOptions:*(*(*(a1 + 72) + 8) + 40) outputHandler:*(a1 + 40)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v8 = [v2 code];
      v9 = 2114;
      v10 = [v2 domain];
      v11 = 2113;
      v12 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteFromWaypoints,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B95B688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B95B6B4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) getMatchedLocationCandidates:*(*(*(a1 + 56) + 8) + 40) dataID:*(*(*(a1 + 64) + 8) + 40) modeOfTransport:*(a1 + 80) options:*(*(*(a1 + 72) + 8) + 40) outputHandler:*(a1 + 40)];
  if (v2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v3 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v9 = [v2 code];
      v10 = 2114;
      v11 = [v2 domain];
      v12 = 2113;
      v13 = [v2 localizedDescription];
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLTSP,getMatchedLocationCandidates,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [v2 code];
      [v2 domain];
      [v2 localizedDescription];
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  result = (*(*(a1 + 48) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B95BBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::mutex::unlock(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19B95CC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19B95CCD0(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_msgSend(objc_msgSend(a2 "tripSegmentID")];
      [a2 distance_m];
      v7 = v6;
      [a2 distanceUnc_m];
      v9 = v8;
      [objc_msgSend(a2 "startDate")];
      v11 = v10;
      [objc_msgSend(a2 "endDate")];
      *buf = 136447746;
      v26 = v5;
      v27 = 2050;
      v28 = v7;
      v29 = 2050;
      v30 = v9;
      v31 = 2050;
      v32 = v11;
      v33 = 2050;
      v34 = v12;
      v35 = 1026;
      v36 = [a2 modeOfTransport];
      v37 = 1026;
      v38 = [objc_msgSend(a2 "tripLocations")];
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,received reconstructed trip,ID,%{public}s,distance,%{public}.2lf,distance unc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locations,%{public}d", buf, 0x40u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(objc_msgSend(a2 "tripSegmentID")];
      [a2 distance_m];
      [a2 distanceUnc_m];
      [objc_msgSend(a2 "startDate")];
      [objc_msgSend(a2 "endDate")];
      [a2 modeOfTransport];
      [objc_msgSend(a2 "tripLocations")];
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v15 = sub_19BA3C324();
    v16 = [*(a1 + 32) tripSegmentID];
    v17 = [a2 tripSegmentID];
    v18 = *(*(*(a1 + 40) + 8) + 24);
    v19 = [*(a1 + 32) tripLocations];
    v20 = *(*(a1 + 48) + 8);
    v21 = 0.0;
    if (*(v20 + 48) >= 0.0)
    {
      v22 = mach_continuous_time();
      v21 = vabdd_f64(sub_19B994BF4(v22), *(v20 + 48)) * 1000.0;
    }

    sub_19BA3C480(v15, v16, v17, v18, v19, a2, v21);
    if ([*(a1 + 32) isFinalPart])
    {
      v23 = sub_19BA3C324();
      sub_19BA3D1E8(v23);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B95D0C0()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

uint64_t sub_19B95D0F0(std::mutex *a1, void **a2)
{
  std::mutex::lock(a1);
  v4 = sub_19B95D148(a1, a2);
  std::mutex::unlock(a1);
  return v4;
}

uint64_t sub_19B95D148(uint64_t a1, void **a2)
{
  if (sub_19B95D1AC(a1, a2))
  {
    return *(*(sub_19B95D310(a1 + 64, a2) + 56) + 1384);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B95D1AC(uint64_t a1, void **a2)
{
  result = sub_19B95D210(a1 + 64, a2);
  if (result)
  {
    return *(sub_19B95D310(a1 + 64, a2) + 56) != 0;
  }

  return result;
}

uint64_t sub_19B95D210(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_19B95D278(a2, v2 + 4) & 0x80) == 0)
      {
        if ((sub_19B95D278(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_19B95D278(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_19B95D2B0(a1, v2, v5, v6);
}

uint64_t sub_19B95D2B0(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t sub_19B95D310(uint64_t a1, void **a2)
{
  v2 = *sub_19B95D3B8(a1, &v4, a2);
  if (!v2)
  {
    sub_19B95D440();
  }

  return v2;
}

void *sub_19B95D3B8(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_19B95D278(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_19B95D278(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_19B95D4E0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_19B95D52C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_19B95D52C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_19B95D580(uint64_t a1, char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  if (sub_19B95D210(a1 + 64, a2))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v6 = *(a1 + 80) - 1;
      *buf = 136446466;
      *&buf[4] = v5;
      v14 = 2050;
      v15 = v6;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData stats submitted and element erased,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
      }

      if (a2[23] < 0)
      {
        v8 = *a2;
      }

      v12 = *(a1 + 80) - 1;
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::removeTrip(const std::string &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *buf = a2;
    v10 = sub_19B95D310(a1 + 64, a2);
    sub_19BA3A1F8(*(v10 + 56) + 48);
    sub_19B95D834((a1 + 64), a2);
  }

  std::mutex::unlock(a1);
  v11 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B95D804()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B95D834(uint64_t **a1, void **a2)
{
  v3 = sub_19B95D890(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_19B8F128C(a1, v3);
  sub_19B95D52C((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_19B95D890(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_19B95D278((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_19B95D278(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void sub_19B95D910(uint64_t a1, uint64_t a2, int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a3 && !sub_19B95D210(a1 + 88, a2))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "CLTSP,sharedData,stopProcessingForTrip,trip added to map,%{public}s", buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
      }

      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v38 = 136446210;
      v39 = v8;
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::stopProcessingForTripInternal(const std::string &, BOOL)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    *buf = a2;
    *(sub_19B95E314(a1 + 88, a2) + 56) = Current;
  }

  if (sub_19B95D1AC(a1, a2) && sub_19B95D210(a1 + 88, a2))
  {
    sub_19B95E004(a1, a2, &v36);
    sub_19B95E280(a1, a2, 13);
    if (v36)
    {
      *v36 = 0x3F847AE147AE147BLL;
    }

    sub_19B95E4C8((a1 + 88), a2);
    [+[CLMapsXPCServiceManager sharedInstance](CLMapsXPCServiceManager stopConstructRouteFromLocation];
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v11 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v12 = *v36;
      v13 = *(a2 + 23);
      v14 = *a2;
      v15 = sub_19B95D148(a1, a2);
      if (v13 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = v14;
      }

      *buf = 134349570;
      *&buf[4] = v12;
      v45 = 2082;
      v46 = v16;
      v47 = 1026;
      v48 = v15;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_INFO, "CLTSP,sharedData,stopProcessingForTrip,max processing time set to,%{public}.2lf,for id,%{public}s,status,%{public}d", buf, 0x1Cu);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v18 = *v36;
      v19 = *(a2 + 23);
      v20 = *a2;
      v21 = sub_19B95D148(a1, a2);
      if (v19 >= 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = v20;
      }

      v38 = 134349570;
      v39 = v18;
      v40 = 2082;
      v41 = v22;
      v42 = 1026;
      v43 = v21;
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::stopProcessingForTripInternal(const std::string &, BOOL)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    if (v37)
    {
      sub_19B8750F8(v37);
    }
  }

  v24 = *(a1 + 88);
  if (v24 != a1 + 96)
  {
    do
    {
      if (vabdd_f64(CFAbsoluteTimeGetCurrent(), *(v24 + 56)) <= 21600.0)
      {
        v33 = *(v24 + 8);
        if (v33)
        {
          do
          {
            v32 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v32 = *(v24 + 16);
            v34 = *v32 == v24;
            v24 = v32;
          }

          while (!v34);
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
        }

        v25 = (v24 + 32);
        v26 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          v27 = (v24 + 32);
          if (*(v24 + 55) < 0)
          {
            v27 = *v25;
          }

          v28 = *(a1 + 104) - 1;
          *buf = 136446466;
          *&buf[4] = v27;
          v45 = 2050;
          v46 = v28;
          _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_INFO, "CLTSP,sharedData,stop trip processing element erased due to timeout,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
        }

        v29 = sub_19B87DD40();
        if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
          }

          if (*(v24 + 55) < 0)
          {
            v25 = *v25;
          }

          v30 = *(a1 + 104) - 1;
          v38 = 136446466;
          v39 = v25;
          v40 = 2050;
          v41 = v30;
          v31 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::stopProcessingForTripInternal(const std::string &, BOOL)", "CoreLocation: %s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        v32 = sub_19B95E510((a1 + 88), v24);
      }

      v24 = v32;
    }

    while (v32 != (a1 + 96));
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_19B95DFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B95E004(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (sub_19B95D1AC(a1, a2))
  {
    *buf = a2;
    v6 = sub_19B95D310(a1 + 64, a2);
    v8 = *(v6 + 56);
    v7 = *(v6 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v8)
      {
        *a3 = v8 + 32;
        a3[1] = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v7);
        goto LABEL_25;
      }

      sub_19B8750F8(v7);
    }

    else if (v8)
    {
      *a3 = v8 + 32;
      a3[1] = 0;
      goto LABEL_25;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
  }

  v9 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = *(a1 + 80);
    *buf = 136446466;
    *&buf[4] = v10;
    v18 = 1026;
    v19 = v11;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getProcessingTimeTrackerInternal,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v12 = sub_19B87DD40();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
    }

    if (*(a2 + 23) < 0)
    {
      v13 = *a2;
    }

    v16 = *(a1 + 80);
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker> CLTripSegmentSharedData::getProcessingTimeTrackerInternal(const std::string &)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_25:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B95E280(uint64_t a1, void **a2, uint64_t a3)
{
  result = sub_19B95D1AC(a1, a2);
  if (result)
  {
    result = sub_19B95D310(a1 + 64, a2);
    if (!*(*(result + 56) + 1384))
    {
      result = sub_19B95D310(a1 + 64, a2);
      *(*(result + 56) + 1384) = a3;
    }
  }

  return result;
}

uint64_t sub_19B95E314(uint64_t a1, void **a2)
{
  result = *sub_19B95D3B8(a1, &v3, a2);
  if (!result)
  {
    sub_19B95E3AC();
  }

  return result;
}

void sub_19B95E448(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_19B95E464(v3, v2);
  _Unwind_Resume(a1);
}

void sub_19B95E464(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_19B95E4C8(uint64_t **a1, void **a2)
{
  v3 = sub_19B95D890(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_19B95E510(a1, v3);
  return 1;
}

uint64_t *sub_19B95E510(uint64_t **a1, uint64_t a2)
{
  v3 = sub_19B8F128C(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_19B95EA9C(uint64_t a1)
{
  [*(a1 + 32) setIdentityToken:*(a1 + 40)];
  [*(a1 + 32) setStorageToken:0];
  v2 = *(a1 + 32);

  return [v2 manageConnection];
}

void sub_19B95F00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B95F094(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession Default handler received message", "{msg%{public}.0s:#fullAccuracySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
    }

    v7 = a2[1];
    v9 = *a2;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v4 handleMessage:&v9];
    if (v10)
    {
      sub_19B8750F8(v10);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B95F264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B95F4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_19B95FB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B95FDB8(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v1 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 32) UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v8[0] = 2082;
      *&v8[1] = "";
      v9 = 2082;
      v10 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }
    }

    v4 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v5 = [*(v1 + 32) UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v8[0] = 2082;
      *&v8[1] = "";
      v9 = 2082;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession destroying connection (dealloc)", "{msg%{public}.0s:#fullAccuracySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B95FFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9601B0(uint64_t a1)
{
  [*(a1 + 32) destroyConnection];
  v2 = *(a1 + 32);

  return [v2 tearDown];
}

void *sub_19B9602C8(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B960324((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B960324(uint64_t a1, char *a2, void *a3)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B96037C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B960580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  MEMORY[0x19EAE98C0](v28, v29);
  _Unwind_Resume(a1);
}

CLBBTimeFreqTransferCallbackAssertion *sub_19B96068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLBBTFTA,reason missing";
    v9 = "{msg%{public}.0s:CLBBTFTA,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLBBTFTA,bundleID or bundlePath needed";
    v9 = "{msg%{public}.0s:CLBBTFTA,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLBBTFTA,nil callback queue";
    v9 = "{msg%{public}.0s:CLBBTFTA,nil callback queue}";
    goto LABEL_35;
  }

  if (!a5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,nil callback block}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLBBTFTA,nil callback block";
    v9 = "{msg%{public}.0s:CLBBTFTA,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, 0x12u);
LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  v14[0] = @"kCLConnectionMessageBundleIdentifierKey";
  v14[1] = @"kCLConnectionMessageBundlePathKey";
  v15[0] = a1;
  v15[1] = a2;
  v14[2] = @"kCLConnectionMessagePurposeKey";
  v15[2] = a3;
  result = -[CLBBTimeFreqTransferCallbackAssertion initWithRegistrationMessageName:messageDictionary:dispatchQueue:codeBlock:]([CLBBTimeFreqTransferCallbackAssertion alloc], "initWithRegistrationMessageName:messageDictionary:dispatchQueue:codeBlock:", "kCLConnectionMessageBBTimeFreqTransferAssert", [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3], a4, a5);
LABEL_37:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B960C68(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "CLBBTFTA,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLCallbackAssertionInternal::CLCallbackAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, BBTimeFreqTransferCallback)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B960E60(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    v17[0] = 68289282;
    v17[1] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBBTFTA, Connection Message:%{public, location:escape_only}s}", v17, 0x1Cu);
  }

  v7 = CLConnectionMessage::name(*a2);
  if (*(v7 + 23) < 0 && *(v7 + 8) == 49 && !memcmp(*v7, "kCLConnectionMessageBBTimeFreqTransferAssertError", 0x31uLL))
  {
    result = CLConnectionMessage::getDictionary(*a2);
    if (*(v3 + 8))
    {
      v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"CLBBTFTA Error" code:0 userInfo:result];
      result = (*(*(v3 + 8) + 16))();
    }
  }

  else
  {
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) < 0 && *(v8 + 8) == 49 && !memcmp(*v8, "kCLConnectionMessageBBTimeFreqTransferMeasurement", 0x31uLL))
    {
      Dictionary = CLConnectionMessage::getDictionary(*a2);
      result = *(v3 + 8);
      if (result)
      {
        result = (*(result + 16))(result, Dictionary, 0, 0);
      }
    }

    else
    {
      result = CLConnectionMessage::name(*a2);
      if (*(result + 23) < 0 && *(result + 8) == 31 && **result == 0x656E6E6F434C436BLL && *(*result + 8) == 0x73654D6E6F697463 && *(*result + 16) == 0x53534E4765676173 && *(*result + 23) == 0x70614D7461654853)
      {
        v13 = CLConnectionMessage::getDictionary(*a2);
        result = *(v3 + 8);
        if (result)
        {
          result = (*(result + 16))(result, 0, v13, 0);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B961718()
{
  qword_1ED5192B0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [qword_1ED5192B0 setDateStyle:1];
  [qword_1ED5192B0 setTimeStyle:4];
  v0 = qword_1ED5192B0;

  return MEMORY[0x1EEE66B58](v0, sel_setFormatterBehavior_);
}

os_log_t sub_19B961BF8()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EAFE47C0 = result;
  return result;
}

void sub_19B963BBC()
{
  v11 = *MEMORY[0x1E69E9840];
  if (byte_1EAFE5108 == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
    }

    v0 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEBUG, "CLMM, memory cache and tile count limit already set", buf, 2u);
    }

    v1 = sub_19B87DD40();
    if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
      }

      v2 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static void CLGeoMapAccessTileLoader::setTileMemoryCacheAndCountLimits()", "CoreLocation: %s\n", v2);
      if (v2 != buf)
      {
        free(v2);
      }
    }
  }

  else
  {
    [MEMORY[0x1E69A2610] setMemoryCacheCountLimit:9];
    [MEMORY[0x1E69A2610] setMemoryCacheTotalCostLimit:153600];
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
    }

    v3 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v8 = 153600;
      v9 = 1024;
      v10 = 9;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "CLMM,GEOTileLoader memory cache,%d,tile count limit,%d", buf, 0xEu);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static void CLGeoMapAccessTileLoader::setTileMemoryCacheAndCountLimits()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    byte_1EAFE5108 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B963F34()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B964614(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = *v5;
    *(a1 + 16) = a3;
    sub_19B8750F8(v4);
  }

  else
  {
    *a1 = *v5;
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_19B964678(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 roadID];
  v16 = v2;
  if ([a1 coordinateCount] >= 2)
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    v12 = *[a1 coordinates];
    sub_19B8F1158(&__p, &v12);
    v3 = 1;
    v4 = 16;
    while ([a1 coordinateCount] > v3)
    {
      v11 = *([a1 coordinates] + v4);
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.7lf", v11];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.7lf", *(&v11 + 1)];
      [v5 doubleValue];
      *&v11 = v7;
      [v6 doubleValue];
      *(&v11 + 1) = v8;
      if (vabdd_f64(*(&v12 + 1), v8) >= 0.0000001 || vabdd_f64(*&v12, *&v11) >= 0.0000001)
      {
        sub_19B8F1158(&__p, &v11);
      }

      v12 = v11;
      ++v3;
      v4 += 16;
    }

    v9 = __p;
    if ((v14 - __p) >= 0x11)
    {
      sub_19B8F1FB4([a1 isRail], objc_msgSend(a1, "isBridge"), objc_msgSend(a1, "isTunnel"), &__p, &v16);
      v2 = v16;
      v9 = __p;
    }

    if (v9)
    {
      v14 = v9;
      operator delete(v9);
    }
  }

  return v2;
}

void sub_19B964834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B964860(unsigned __int8 *a1, uint64_t *a2, void *a3, int a4, double a5)
{
  v160 = *MEMORY[0x1E69E9840];
  *a2 = 0xBFF0000000000000;
  if (*a1 != 1 || (v7 = *(a1 + 8)) == 0 || *(v7 + 18) != 1 || (v11 = *(a1 + 22), v11 > 0.0) && vabdd_f64(a5, v11) <= 0.9)
  {
    if (!a4)
    {
      goto LABEL_39;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v17 = *(v16 + 18);
      }

      else
      {
        v17 = -1;
      }

      v18 = *a1;
      v19 = *(a1 + 22);
      *buf = 67240704;
      *v141 = v17;
      *&v141[4] = 1026;
      *&v141[6] = v18;
      *v142 = 2050;
      *&v142[2] = v19;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,isTunnel,%{public}d,isSnapUsable,%{public}d,lastAssistanceTime,%{public}.1lf", buf, 0x18u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) <= 1 && *(v20 + 164) <= 1 && *(v20 + 168) <= 1 && !*(v20 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = *(v21 + 18);
    }

    else
    {
      v22 = -1;
    }

    v23 = *a1;
    v24 = *(a1 + 22);
    *v116 = 67240704;
    *&v116[4] = v22;
    *&v116[8] = 1026;
    *&v116[10] = v23;
    *&v116[14] = 2050;
    *&v116[16] = v24;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v14);
    goto LABEL_37;
  }

  if ([MEMORY[0x1E69A1E80] isLocationShiftRequiredForCoordinate:{*(a1 + 12), *(a1 + 13)}])
  {
    if (!a4)
    {
      goto LABEL_39;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *v141 = a5;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,no TEPA, shifted coordinates", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    *v116 = 134349056;
    *&v116[4] = a5;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v14);
LABEL_37:
    if (v14 != buf)
    {
      free(v14);
    }

LABEL_39:
    v25 = 0;
    goto LABEL_40;
  }

  v28 = *(a1 + 8);
  v29 = *(a1 + 9);
  v112 = v28;
  v113 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *(v28 + 18);
  v31 = *(a1 + 14);
  *(a2 + 72) = 0;
  if (v30 != 1)
  {
    v32 = 0;
    v33 = 0.0;
    goto LABEL_96;
  }

  v32 = 0;
  v33 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v106 = _Q0;
  while (1)
  {
    v39 = v112;
    if (!v112)
    {
      goto LABEL_96;
    }

    if (v32 == 200)
    {
      break;
    }

    sub_19B9F5AA8(v112);
    v40 = v39[5];
    *a2 = a5;
    v41 = v112;
    v42 = *(v112 + 18);
    v43 = v42 - *(v112 + 17);
    if (v43)
    {
      v44 = *(v42 - 16);
    }

    else
    {
      v44 = 0uLL;
    }

    *(a2 + 1) = v44;
    v45 = v43 >> 4;
    v46 = -1.0;
    if (v45 >= 2)
    {
      v46 = sub_19B9F5C98(v41, v45 - 2);
      v41 = v112;
    }

    *(a2 + 4) = v46;
    a2[8] = *(v41 + 12);
    if (sub_19B9F5D9C(v41) >= 1)
    {
      *(a2 + 72) = 1;
    }

    v47 = fmod(*(a1 + 22) - *(a2 + 4), 360.0);
    if (v47 < 0.0)
    {
      v47 = v47 + 360.0;
    }

    if (v47 > 180.0)
    {
      v47 = v47 + -360.0;
    }

    if (fabs(v47) > 7.5)
    {
      *(a2 + 72) = 1;
    }

    v48 = v112;
    sub_19B9F5AA8(v112);
    v49 = 1.0 - v31;
    v50 = v48[5];
    v110 = 0;
    v111 = 0.0;
    v108 = &v108;
    v109 = &v108;
    *v116 = 0;
    *&v116[16] = v106;
    *v117 = 0uLL;
    *&v117[16] = 0xBFF0000000000000;
    v129 = 0;
    v130 = 0;
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    memset(v134, 0, sizeof(v134));
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    memset(v125, 0, sizeof(v125));
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    memset(v118, 0, sizeof(v118));
    *&v117[24] = 0u;
    v139 = 0xBFF0000000000000;
    v138 = 0;
    *&v116[8] = a5;
    if (!(*(**a3 + 80))(*a3, v116, &v108, 0, 1, &v112, 1, &v111, v31, v50 * (1.0 - v31) + 1.0))
    {
      goto LABEL_76;
    }

    if (v110 != 1 || v111 < 0.0)
    {
      if (a4)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v57 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *v141 = v110;
          _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,multi-outbound,%{public}d", buf, 8u);
        }

        v58 = sub_19B87DD40();
        if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
          }

          v114 = 67240192;
          v115 = v110;
          v59 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v59);
          if (v59 != buf)
          {
            free(v59);
          }
        }
      }

      v56 = 0;
      *a2 = 0xBFF0000000000000;
      goto LABEL_91;
    }

    v51 = v109[2];
    v52 = v109[3];
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = v113;
    v112 = v51;
    v113 = v52;
    if (v53)
    {
      sub_19B8750F8(v53);
      v51 = v112;
    }

    v54 = sub_19B9F5D20(v51, 0, 1u);
    if (v54 < 0.0)
    {
      goto LABEL_73;
    }

    v55 = fmod(v54 - *(a2 + 4), 360.0);
    if (v55 < 0.0)
    {
      v55 = v55 + 360.0;
    }

    if (v55 > 180.0)
    {
      v55 = v55 + -360.0;
    }

    if (fabs(v55) > 7.5)
    {
LABEL_73:
      *(a2 + 72) = 1;
    }

    v31 = 0.0;
    if (v112)
    {
      v56 = *(v112 + 18);
    }

    else
    {
LABEL_76:
      v56 = 0;
    }

LABEL_91:
    if (SHIBYTE(v121) < 0)
    {
      operator delete(*(&v120 + 1));
    }

    v33 = v33 + v40 * v49;
    sub_19B916DC0(&v108);
    ++v32;
    if ((v56 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  *a2 = 0xBFF0000000000000;
  if (a4)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v81 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *v141 = 201;
      _os_log_impl(&dword_19B873000, v81, OS_LOG_TYPE_DEBUG, "CLMM,TEPA,outgoing reached max iterations,%{public}d", buf, 8u);
    }

    v82 = sub_19B87DD40();
    if (*(v82 + 160) > 1 || *(v82 + 164) > 1 || *(v82 + 168) > 1 || *(v82 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      *v116 = 0xC904020100;
      v83 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v83);
      if (v83 != buf)
      {
        free(v83);
      }
    }

    v32 = 201;
LABEL_96:
    v60 = *a2;
    if (*a2 > 0.0)
    {
      *(a2 + 14) = v33;
      a2[3] = 0x4039000000000000;
      *(a2 + 5) = xmmword_19BA8BD40;
      a2[7] = 0xBFF0000000000000;
      v61 = *(a1 + 4);
      if (v61 > 0.0)
      {
        a2[6] = *(a1 + 5);
        *(a2 + 7) = v61;
      }

      *(a1 + 22) = v60;
      a2[11] = 0;
      a2[12] = 0;
      v62 = a2 + 11;
      *(a2 + 13) = v33;
      v63 = *(a1 + 8);
      v64 = *(a1 + 9);
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = v113;
      v112 = v63;
      v113 = v64;
      if (v65)
      {
        sub_19B8750F8(v65);
        v63 = v112;
      }

      if (*(v63 + 18) == 1)
      {
        v66 = 0;
        v67 = *(a1 + 14);
        __asm { FMOV            V0.2D, #-1.0 }

        v107 = _Q0;
        while (1)
        {
          v69 = v112;
          if (!v112)
          {
            goto LABEL_166;
          }

          if (v66 == 200)
          {
            a2[13] = 0xBFF0000000000000;
            *v62 = 0;
            a2[12] = 0;
            if (a4)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
              }

              v84 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67240192;
                *v141 = 201;
                _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_DEBUG, "CLMM,TEPA,incoming reached max iterations,%{public}d", buf, 8u);
              }

              v85 = sub_19B87DD40();
              if (*(v85 + 160) > 1 || *(v85 + 164) > 1 || *(v85 + 168) > 1 || *(v85 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
                }

                *v116 = 0xC904020100;
                v86 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v86);
                if (v86 != buf)
                {
                  free(v86);
                }
              }
            }

            v66 = 201;
            goto LABEL_166;
          }

          sub_19B9F5AA8(v112);
          *(a2 + 13) = *(a2 + 13) + v69[5] * v67;
          v70 = v112;
          v71 = *(v112 + 17);
          if (*(v112 + 18) == v71)
          {
            v72 = 0uLL;
          }

          else
          {
            v72 = *v71;
          }

          *v62 = v72;
          sub_19B9F5AA8(v70);
          v73 = v70[5];
          v110 = 0;
          v111 = 0.0;
          v108 = &v108;
          v109 = &v108;
          *v116 = 0;
          *&v116[16] = v107;
          *v117 = 0uLL;
          *&v117[16] = 0xBFF0000000000000;
          v129 = 0;
          v130 = 0;
          v126 = 0u;
          v127 = 0u;
          v128 = 0;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          memset(v134, 0, sizeof(v134));
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          memset(v125, 0, sizeof(v125));
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          memset(v118, 0, sizeof(v118));
          *&v117[24] = 0u;
          v139 = 0xBFF0000000000000;
          v138 = 0;
          *&v116[8] = a5;
          if (!(*(**a3 + 80))(*a3, v116, 0, &v108, 0, &v112, 1, &v111, v67, v73 * v67 + 1.0))
          {
            goto LABEL_132;
          }

          if (v110 != 1 || v111 < 0.0)
          {
            break;
          }

          v74 = v109[2];
          v75 = v109[3];
          if (v75)
          {
            atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v76 = v113;
          v112 = v74;
          v113 = v75;
          if (v76)
          {
            sub_19B8750F8(v76);
            v74 = v112;
          }

          v67 = 1.0;
          if (!v74)
          {
            goto LABEL_132;
          }

          v77 = *(v74 + 18);
LABEL_133:
          if (SHIBYTE(v121) < 0)
          {
            operator delete(*(&v120 + 1));
          }

          sub_19B916DC0(&v108);
          ++v66;
          if ((v77 & 1) == 0)
          {
            goto LABEL_166;
          }
        }

        a2[13] = 0xBFF0000000000000;
        *v62 = 0;
        a2[12] = 0;
        if (a4)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
          }

          v78 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67240192;
            *v141 = v110;
            _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,multi-inbound,%{public}d", buf, 8u);
          }

          v79 = sub_19B87DD40();
          if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
            }

            v114 = 67240192;
            v115 = v110;
            v80 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v80);
            if (v80 != buf)
            {
              free(v80);
            }
          }
        }

LABEL_132:
        v77 = 0;
        goto LABEL_133;
      }

      v66 = 0;
LABEL_166:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v87 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v88 = a2[1];
        v89 = a2[2];
        v90 = a2[11];
        v91 = a2[12];
        v92 = a2[6];
        v93 = a2[7];
        v94 = a2[13];
        v95 = a2[14];
        *buf = 134351617;
        *v141 = a5;
        *&v141[8] = 2053;
        *v142 = v88;
        *&v142[8] = 2053;
        v143 = v89;
        v144 = 2053;
        v145 = v90;
        v146 = 2053;
        v147 = v91;
        v148 = 2050;
        v149 = v92;
        v150 = 2050;
        v151 = v93;
        v152 = 2050;
        v153 = v94;
        v154 = 2050;
        v155 = v95;
        v156 = 1026;
        v157 = v32;
        v158 = 1026;
        v159 = v66;
        _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,TEPA,ell,%{sensitive}.7lf,%{sensitive}.7lf,sll,%{sensitive}.7lf,%{sensitive}.7lf,alt,%{public}.1lf,vUnc,%{public}.1lf,length,%{public}.2lf,distFromCurrentParticle,%{public}.1lf,iterCountOut,%{public}d,iterCountIn,%{public}d", buf, 0x68u);
      }

      v96 = sub_19B87DD40();
      if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v97 = a2[1];
        v98 = a2[2];
        v99 = a2[11];
        v100 = a2[12];
        v101 = a2[6];
        v102 = a2[7];
        v103 = a2[13];
        v104 = a2[14];
        *v116 = 134351617;
        *&v116[4] = a5;
        *&v116[12] = 2053;
        *&v116[14] = v97;
        *&v116[22] = 2053;
        *&v116[24] = v98;
        *v117 = 2053;
        *&v117[2] = v99;
        *&v117[10] = 2053;
        *&v117[12] = v100;
        *&v117[20] = 2050;
        *&v117[22] = v101;
        *&v117[30] = 2050;
        *&v117[32] = v102;
        LOWORD(v118[0]) = 2050;
        *(v118 + 2) = v103;
        HIWORD(v118[2]) = 2050;
        *&v118[3] = v104;
        LOWORD(v118[5]) = 1026;
        *(&v118[5] + 2) = v32;
        HIWORD(v118[6]) = 1026;
        v118[7] = v66;
        v105 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v105);
        if (v105 != buf)
        {
          free(v105);
        }
      }
    }
  }

  v25 = *a2 > 0.0;
  if (v113)
  {
    sub_19B8750F8(v113);
  }

LABEL_40:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_19B965A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a20)
  {
    sub_19B8750F8(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B965AA8(double *a1, uint64_t a2, void *a3, int a4)
{
  v149 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 96);
  v9 = *(a2 + 76);
  v10 = *(a2 + 44);
  if (v10 >= 0.0)
  {
    a1[6] = v9;
    a1[1] = v10;
  }

  if (*a1 != 1 || (v11 = *(a1 + 8)) == 0 || ((v12 = a1[7], v13 = v9 - v12, v12 > 0.0) ? (v14 = v13 > 5.0) : (v14 = 1), v14 || *(v11 + 18) != 1 || (v8 == 3 || a1[2] <= 0.0) && ((v15 = a1[6], v15 <= 0.0) || (v13 = a1[1], v13 < 0.0) || v9 - v15 > 15.0)))
  {
    if (!a4)
    {
      goto LABEL_49;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a2 + 76);
      v23 = *(a1 + 8);
      if (v23)
      {
        v24 = *(v23 + 18);
      }

      else
      {
        v24 = -1;
      }

      v25 = *a1;
      v27 = *(a1 + 6);
      v26 = *(a1 + 7);
      v28 = *(a1 + 1);
      v29 = *(a1 + 2);
      *buf = 134351104;
      v138 = v22;
      v139 = 1026;
      *v140 = v24;
      *&v140[4] = 1026;
      *&v140[6] = v25;
      *v141 = 2050;
      *&v141[2] = v26;
      *v142 = 2050;
      *&v142[2] = 0x4014000000000000;
      *v143 = 2050;
      *&v143[2] = v28;
      *v144 = 2050;
      *&v144[2] = v27;
      v145 = 2050;
      v146 = 0x402E000000000000;
      v147 = 2050;
      v148 = v29;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,NotPropagating,isTunnel,%{public}d,isSnapUsable,%{public}d,particleTime,%{public}.2lf,particleTimeOut,%{public}.1lf,speed,%{public}.2lf,speedTime,%{public}.2lf,speedTimeOut,%{public}.1lf,speedLimit,%{public}.1lf", buf, 0x54u);
    }

    v30 = sub_19B87DD40();
    if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v31 = *(a2 + 76);
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = *(v32 + 18);
    }

    else
    {
      v33 = -1;
    }

    v34 = *a1;
    v36 = *(a1 + 6);
    v35 = *(a1 + 7);
    v37 = *(a1 + 1);
    v38 = *(a1 + 2);
    *v119 = 134351104;
    *&v119[4] = v31;
    *&v119[12] = 1026;
    *&v119[14] = v33;
    *&v119[18] = 1026;
    *&v119[20] = v34;
    *&v119[24] = 2050;
    *&v119[26] = v35;
    *&v119[34] = 2050;
    *&v119[36] = 0x4014000000000000;
    *&v119[44] = 2050;
    *&v119[46] = v37;
    *&v119[54] = 2050;
    *&v119[56] = v36;
    *&v119[64] = 2050;
    *&v119[66] = 0x402E000000000000;
    *&v119[74] = 2050;
    *&v119[76] = v38;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v20);
    goto LABEL_47;
  }

  if ([MEMORY[0x1E69A1E80] isLocationShiftRequiredForCoordinate:{a1[12], a1[13], v13}] && *(a2 + 132) != 2)
  {
    if (!a4)
    {
      goto LABEL_49;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 76);
      *buf = 134349056;
      v138 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,NotPropagating, shifting is required but accessory is outputting  unshifted coordinates", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v19 = *(a2 + 76);
    *v119 = 134349056;
    *&v119[4] = v19;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v20);
LABEL_47:
    if (v20 != buf)
    {
      free(v20);
    }

LABEL_49:
    v39 = 0;
    goto LABEL_50;
  }

  v42 = *(a2 + 76) - a1[7];
  if (v42 < 0.0)
  {
    if (!a4)
    {
      goto LABEL_49;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v43 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a2 + 76);
      v45 = *(a1 + 7);
      *buf = 134349312;
      v138 = v44;
      v139 = 2050;
      *v140 = v45;
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,NotPropagating,time lower than particleTime, %{public}.2lf", buf, 0x16u);
    }

    v46 = sub_19B87DD40();
    if (*(v46 + 160) <= 1 && *(v46 + 164) <= 1 && *(v46 + 168) <= 1 && !*(v46 + 152))
    {
      goto LABEL_49;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v47 = *(a2 + 76);
    v48 = *(a1 + 7);
    *v119 = 134349312;
    *&v119[4] = v47;
    *&v119[12] = 2050;
    *&v119[14] = v48;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v20);
    goto LABEL_47;
  }

  if (v8 == 3 || (v49 = a1[2], v49 <= 0.0))
  {
    v49 = a1[1];
  }

  else if (a1[1] >= v49)
  {
    v49 = a1[1];
  }

  v50 = v42 * v49;
  if (v42 * v49 <= 225.0)
  {
    v51 = v42 * v49;
  }

  else
  {
    v51 = 225.0;
  }

  if (v42 * v49 > 225.0 && a4 != 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v53 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v54 = *(a2 + 76);
      *buf = 134349568;
      v138 = v54;
      v139 = 2050;
      *v140 = v50;
      *&v140[8] = 2050;
      *v141 = 0x406C200000000000;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,limit distance to propagate,orig,%{public}.1lf,new,%{public}.1lf", buf, 0x20u);
    }

    v55 = sub_19B87DD40();
    if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v56 = *(a2 + 76);
      *v119 = 134349568;
      *&v119[4] = v56;
      *&v119[12] = 2050;
      *&v119[14] = v50;
      *&v119[22] = 2050;
      *&v119[24] = 0x406C200000000000;
      v57 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }

    v51 = 225.0;
  }

  *v119 = 0;
  *&v119[8] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v97 = _Q0;
  *&v119[16] = _Q0;
  *&v119[32] = 0;
  *&v119[40] = 0;
  *&v119[48] = 0xBFF0000000000000;
  v129 = 0;
  v130 = 0;
  memset(&v127[32], 0, 32);
  v128 = 0;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  memset(v134, 0, 27);
  memset(&v134[32], 0, 48);
  memset(v127, 0, 30);
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  memset(&v119[56], 0, 32);
  v136 = 0xBFF0000000000000;
  v135 = 0;
  v100[0] = v100;
  v100[1] = v100;
  v101 = 0;
  v99 = 0;
  if (((*(**a3 + 80))(*a3, v119, v100, 0, 1, a1 + 64, *(a1 + 84), &v99, a1[14], v51) & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_118;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v65 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,roadsAtIntersection returned false", buf, 2u);
    }

    v66 = sub_19B87DD40();
    if (*(v66 + 160) <= 1 && *(v66 + 164) <= 1 && *(v66 + 168) <= 1 && !*(v66 + 152))
    {
      goto LABEL_118;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    *v114 = 0;
    v64 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v64);
    goto LABEL_116;
  }

  if (v101 >= 2)
  {
    if (!a4)
    {
      goto LABEL_118;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v62 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v138 = v101;
      v139 = 2050;
      *v140 = v51;
      _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,multi-outbound,%{public}lu,intersection within the distance,%{public}.2lf, needed to be travelled returned", buf, 0x16u);
    }

    v63 = sub_19B87DD40();
    if (*(v63 + 160) <= 1 && *(v63 + 164) <= 1 && *(v63 + 168) <= 1 && !*(v63 + 152))
    {
      goto LABEL_118;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    *v114 = 134349312;
    *&v114[4] = v101;
    v115 = 2050;
    v116 = v51;
    v64 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v64);
LABEL_116:
    if (v64 != buf)
    {
      free(v64);
    }

LABEL_118:
    v39 = 0;
    goto LABEL_178;
  }

  sub_19B9676B4(v114, (a1 + 8));
  v98[0] = v98;
  v98[1] = v98;
  v98[2] = 0;
  if (((*(**a3 + 88))(*a3, v114, v98, v51) & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_176;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v84 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,moveOnRoad returned false", buf, 2u);
    }

    v85 = sub_19B87DD40();
    if (*(v85 + 160) <= 1 && *(v85 + 164) <= 1 && *(v85 + 168) <= 1 && !*(v85 + 152))
    {
      goto LABEL_176;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_173;
    }

    goto LABEL_190;
  }

  if (!*v114)
  {
    if (!a4)
    {
      goto LABEL_176;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v86 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_FAULT, "CLMM,NotPropagating,NULL road", buf, 2u);
    }

    v87 = sub_19B87DD40();
    if ((*(v87 + 160) & 0x80000000) != 0 && (*(v87 + 164) & 0x80000000) != 0 && (*(v87 + 168) & 0x80000000) != 0 && !*(v87 + 152))
    {
      goto LABEL_176;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    LOWORD(v102) = 0;
    v88 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v88);
    goto LABEL_174;
  }

  if (*(*v114 + 18))
  {
    if (a4)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v67 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v68 = *(a2 + 76);
        v69 = *(a1 + 1);
        v70 = *(a1 + 2);
        *buf = 134350337;
        v138 = v68;
        v139 = 2053;
        *v140 = v118;
        *&v140[8] = 2053;
        *v141 = *(&v118 + 1);
        *&v141[8] = 2050;
        *v142 = v117;
        *&v142[8] = 2050;
        *v143 = v69;
        *&v143[8] = 2050;
        *v144 = v70;
        _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Propagating,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,speed,%{public}.1lf,speedLimit,%{public}.1lf", buf, 0x3Eu);
      }

      v71 = sub_19B87DD40();
      if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v72 = *(a2 + 76);
        v73 = *(a1 + 1);
        v74 = *(a1 + 2);
        v102 = 134350337;
        v103 = v72;
        v104 = 2053;
        v105 = v118;
        v106 = 2053;
        v107 = *(&v118 + 1);
        v108 = 2050;
        v109 = v117;
        v110 = 2050;
        v111 = v73;
        v112 = 2050;
        v113 = v74;
        v75 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v75);
        if (v75 != buf)
        {
          free(v75);
        }
      }
    }

    v76 = *(a2 + 76);
    a1[6] = v76;
    *(a2 + 4) = v118;
    v77 = v117;
    *(a2 + 60) = v117;
    *(a2 + 52) = 0x3FC999999999999ALL;
    *(a2 + 68) = 0x4008000000000000;
    *(a2 + 28) = xmmword_19BA896C0;
    v78 = *(a2 + 96);
    if (v78 != 3)
    {
      *(a2 + 44) = v97;
    }

    v79 = a1[4];
    if (v79 <= 0.0)
    {
      v81 = 0.0;
      v83 = -1.0;
    }

    else
    {
      v80 = (a2 + 36);
      v81 = a1[5];
      *(a2 + 28) = v81;
      v82 = v79 + v42 * 0.15;
      *(a2 + 36) = v82;
      if (v82 > 200.0)
      {
        v80 = &unk_19BA8BD50;
      }

      v83 = *v80;
      *(a2 + 36) = *v80;
    }

    *(a2 + 20) = 0x4024000000000000;
    v91 = (a2 + 20);
    v92 = 10.0;
    if ((v78 & 0xFFFFFFF7) == 1)
    {
      v93 = a1[3] + v42 * 0.5;
      *v91 = v93;
      v94 = &unk_19BA8BD58;
      if (v93 >= 10.0)
      {
        v94 = (a2 + 20);
      }

      v95 = *v94;
      *v91 = *v94;
      v96 = &unk_19BA8BD60;
      if (v95 <= 149.0)
      {
        v96 = (a2 + 20);
      }

      v92 = *v96;
      *v91 = *v96;
    }

    *(a2 + 100) = *(a2 + 4);
    *(a2 + 136) = *(a2 + 132);
    *(a2 + 116) = v77;
    v39 = 1;
    sub_19B966EDC(a1, v114, 1, v76, v92, v81, v83);
    goto LABEL_177;
  }

  if (a4)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v89 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,solution moved away from tunnel", buf, 2u);
    }

    v90 = sub_19B87DD40();
    if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_173:
        LOWORD(v102) = 0;
        v88 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v88);
LABEL_174:
        if (v88 != buf)
        {
          free(v88);
        }

        goto LABEL_176;
      }

LABEL_190:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      goto LABEL_173;
    }
  }

LABEL_176:
  v39 = 0;
LABEL_177:
  sub_19B9679F8(v98);
  sub_19B966FCC(v114);
LABEL_178:
  sub_19B916DC0(v100);
  if (SHIBYTE(v123) < 0)
  {
    operator delete(*(&v122 + 1));
  }

LABEL_50:
  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

void sub_19B966E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  sub_19B9679F8(&a14);
  sub_19B966FCC(&a29);
  sub_19B916DC0(&a18);
  if (a64 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19B966EDC(uint64_t a1, uint64_t *a2, char a3, double a4, double a5, double a6, double a7)
{
  *(a1 + 56) = a4;
  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = (a1 + 64);
  v16 = *(a1 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v13;
  if (v16)
  {
    sub_19B8750F8(v16);
  }

  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  *(a1 + 112) = a2[6];
  *(a1 + 80) = v17;
  *(a1 + 96) = v18;
  v19 = *(a2 + 7);
  *(a1 + 129) = *(a2 + 65);
  *(a1 + 120) = v19;
  if (v15 != a2)
  {
    sub_19B967884((a1 + 152), a2[11], a2[12], 0x8E38E38E38E38E39 * ((a2[12] - a2[11]) >> 3));
  }

  *a1 = a3;
  *(a1 + 32) = a7;
  *(a1 + 40) = a6;
  *(a1 + 24) = a5;
  v20 = *(a1 + 64);
  if (v20)
  {
    v21 = *(v20 + 32);
    if (v21 <= 0.0)
    {
      v21 = -1.0;
    }

    *(a1 + 16) = v21;
  }
}

void *sub_19B966FCC(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

void sub_19B96700C(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 1);
  *a1 = v3;
  if ((*(a2 + 264) & 1) == 0)
  {
    goto LABEL_7;
  }

  v23 = 0.0;
  v24 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  *(a1 + 56) = 0;
  if (*(a1 + 8))
  {
    v5 = v3 - *(a1 + 72);
    if (v5 >= 0.0 && v5 <= 2.2 && sub_19BA0BE88((a1 + 496), &v22, &v21, &v25, *(a2 + 36), *(a2 + 37), *(a2 + 9), *(a1 + 352), *(a1 + 360), *(a1 + 136)) && sqrt(v21 * v21 + v22 * v22) / v5 <= 3.8)
    {
      v17 = v21;
      v18 = v22;
      if ((*(a2 + 228) & 1) != 0 || *(a2 + 12) <= 2.2 || sub_19BA0BE88((a1 + 496), &v24, &v23, &v25, *(a2 + 7), *(a2 + 8), *(a2 + 9), *(a1 + 120), *(a1 + 128), *(a1 + 136)))
      {
        v19 = 0.0;
        sub_19BA0C3BC((a1 + 496), &v20, &v19, *(a2 + 36), *(a2 + 37), *(a2 + 9), *(a2 + 21), *(a2 + 7), *(a2 + 8));
        v16 = v19;
        if (v19 > *(a1 + 48))
        {
          *(a1 + 56) = 1;
        }

        *(a1 + 48) = v16;
        v6.f64[0] = v24;
        v7 = *(a1 + 8) + 1;
        v6.f64[1] = v23;
        v8.f64[0] = v18;
        v8.f64[1] = v17;
        goto LABEL_11;
      }
    }

LABEL_7:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 41) = 0u;

    sub_19B967A5C(a1 + 64);
    return;
  }

  v6 = 0uLL;
  v7 = 1;
  v8 = 0uLL;
LABEL_11:
  *(a1 + 8) = v7;
  v9 = vaddq_f64(v8, *(a1 + 32));
  *(a1 + 16) = vaddq_f64(v6, *(a1 + 16));
  *(a1 + 32) = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  *(a1 + 96) = a2[2];
  *(a1 + 112) = v12;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[7];
  *(a1 + 160) = a2[6];
  *(a1 + 176) = v15;
  *(a1 + 128) = v13;
  *(a1 + 144) = v14;
  std::string::operator=((a1 + 192), (a2 + 8));

  memcpy((a1 + 216), a2 + 152, 0x118uLL);
}

uint64_t sub_19B967214(uint64_t *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2) < 4u)
  {
LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  v3 = sqrt(*(a1 + 3) * *(a1 + 3) + *(a1 + 2) * *(a1 + 2));
  v4 = sqrt(*(a1 + 5) * *(a1 + 5) + *(a1 + 4) * *(a1 + 4));
  if ((a1[7] & 1) == 0)
  {
    v5 = v3 - v4;
LABEL_20:
    if (v5 > 5.0 && a2 != 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v13 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a1;
        v15 = *(a1 + 56);
        *buf = 134350080;
        v24 = v14;
        v25 = 1026;
        *v26 = v15;
        *&v26[4] = 2050;
        *&v26[6] = v3;
        *&v26[14] = 2050;
        *&v26[16] = v4;
        *&v26[24] = 2050;
        *&v26[26] = 0x403D000000000000;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLMM, %{public}.1lf,isMovingAway,%{public}d,deltaPosChange,%{public}.1lf,deltaSnapChange,%{public}.1lf,thresholdDiff,%{public}.1lf", buf, 0x30u);
      }

      v16 = sub_19B87DD40();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v20 = *a1;
        v22 = *(a1 + 56);
        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::StuckAtEndOfRoad::isStuckAtEndOfRoad(const BOOL)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    goto LABEL_36;
  }

  v5 = v3 - v4;
  if (*(a1 + 6) <= 15.0 || v5 <= 29.0)
  {
    goto LABEL_20;
  }

  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      v7 = *a1;
      v8 = a1[6];
      *buf = 134350080;
      v24 = v7;
      v25 = 2050;
      *v26 = v8;
      *&v26[8] = 2050;
      *&v26[10] = v3;
      *&v26[18] = 2050;
      *&v26[20] = v4;
      *&v26[28] = 2050;
      *&v26[30] = 0x403D000000000000;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "CLMM,%{public}.1lf,detected stuck,alongTrackRawToSnap,%{public}.1lf,deltaPosChange,%{public}.1lf,deltaSnapChange,%{public}.1lf,thresholdDiff,%{public}.1lf", buf, 0x34u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v19 = *a1;
      v21 = a1[6];
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::StuckAtEndOfRoad::isStuckAtEndOfRoad(const BOOL)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  result = 1;
LABEL_37:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B967684()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B9676B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 65);
  *(a1 + 88) = 0;
  *(a1 + 65) = v7;
  *(a1 + 56) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_19B96775C(a1 + 88, *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  return a1;
}

void sub_19B967744(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B96775C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B9677D8(result, a4);
  }

  return result;
}

void sub_19B9677BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9677D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_19B967828(a1, a2);
  }

  sub_19B8B8A40();
}

void sub_19B967828(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void *sub_19B967884(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0x8E38E38E38E38E39 * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v10 = 0x8E38E38E38E38E39 * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x1C71C71C71C71C7)
      {
        v12 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v12 = v11;
      }

      sub_19B9677D8(v7, v12);
    }

    sub_19B8B8A40();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0x8E38E38E38E38E39 * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18 - 4);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v14 - 4);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16 - 4);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void *sub_19B9679F8(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_19B967A5C(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *v7 = 0xBFF0000000000000;
  *&v9[120] = 0;
  *&v9[128] = 0;
  memset(&v9[80], 0, 34);
  memset(&v9[136], 0, 75);
  memset(&v9[216], 0, 56);
  memset(&v7[8], 0, 80);
  memset(v9, 0, 78);
  v8 = 0u;
  *&v9[272] = 0xBFF0000000000000;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = *v7;
  *a1 = 0uLL;
  *(a1 + 16) = _Q0;
  *(a1 + 96) = *&v7[48];
  *(a1 + 112) = *&v7[64];
  *(a1 + 64) = *&v7[16];
  *(a1 + 80) = *&v7[32];
  std::string::operator=((a1 + 128), &v7[80]);
  memcpy((a1 + 152), v9, 0x118uLL);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(*&v7[80]);
  }
}

void sub_19B967B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLGetUncertaintyScaleFactors(unsigned int a1, double *a2, double *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v7 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#CLEU,CLGetUncertaintyScaleFactors,input horzontal or vertical SF pointer is NULL", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      goto LABEL_23;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  if (a1 - 100 <= 0xFFFFFF9C)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v21 = a1;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "#CLEU,CLGetUncertaintyScaleFactors,confidence out of bounds,%{public}d", buf, 8u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) != 0 && (*(v6 + 164) & 0x80000000) != 0 && (*(v6 + 168) & 0x80000000) != 0 && !*(v6 + 152))
    {
      goto LABEL_23;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 == -1)
    {
LABEL_21:
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGetUncertaintyScaleFactors(unsigned int, double *, double *)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }

LABEL_23:
      result = 0;
      goto LABEL_37;
    }

LABEL_42:
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    goto LABEL_21;
  }

  *a2 = sub_19B968D48(a1, dbl_19BA8BD68);
  *a3 = sub_19B968D48(a1, dbl_19BA8BDF8);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
  }

  v12 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a2;
    v14 = *a3;
    *buf = 67240704;
    v21 = a1;
    v22 = 2050;
    v23 = v13;
    v24 = 2050;
    v25 = v14;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "#CLEU,CLGetUncertaintyScaleFactors,conf,%{public}d,horzSF,%{public}f,vertSF,%{public}f", buf, 0x1Cu);
  }

  v15 = sub_19B87DD40();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v18 = *a2;
    v19 = *a3;
    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGetUncertaintyScaleFactors(unsigned int, double *, double *)", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  result = 1;
LABEL_37:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19B968D48(unsigned int a1, double *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a2 > a1)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v4 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      v5 = *a2;
      *buf = 67240448;
      v23 = a1;
      v24 = 1026;
      v25 = v5;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#CLEU,linearInterp,x is less than the first point in table,x,%{public}d,table[0].first,%{public}d", buf, 0xEu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
      }

      v20 = *a2;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "double linearInterp(unsigned int, std::array<std::pair<unsigned int, double>, size>) [size = 9UL]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    result = a2[1];
    goto LABEL_43;
  }

  if (*(a2 + 32) >= a1)
  {
    v12 = 0;
    v13 = a2 + 1;
    do
    {
      v14 = *(v13 - 2);
      if (v14 == a1)
      {
        result = *v13;
        goto LABEL_43;
      }

      if (v12 && v14 > a1)
      {
        v19 = *MEMORY[0x1E69E9840];
        return *v13 + -(*v13 - *(v13 - 2)) / (v14 - *(v13 - 6)) * (v14 - a1);
      }

      v13 += 2;
      --v12;
    }

    while (v12 != -9);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v15 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "#CLEU,linearInterp,failed to find table points bounding x", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_41;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v9 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a2 + 32);
      *buf = 67240448;
      v23 = a1;
      v24 = 1026;
      v25 = v10;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "#CLEU,linearInterp,x is greater than the last point in table,x,%{public}d,table[size-1].first,%{public}d", buf, 0xEu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_41;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v21 = *(a2 + 32);
  }

  v17 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 0, "double linearInterp(unsigned int, std::array<std::pair<unsigned int, double>, size>) [size = 9UL]", "CoreLocation: %s\n", v17);
  if (v17 != buf)
  {
    free(v17);
  }

LABEL_41:
  result = a2[17];
LABEL_43:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B969238()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

const void *sub_19B969268@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19B8BA1C8(a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B890AD4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

CLBeaconRegion *sub_19B96935C()
{
  result = [[CLBeaconRegion alloc] initWithIdentifier:@"CLBeaconRegionAnyIdentifier"];
  qword_1EAFE5110 = result;
  return result;
}

void sub_19B96A800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  MEMORY[0x19EAE98C0](v28, v29);
  _Unwind_Resume(a1);
}

CLGnssExtensionsClient *sub_19B96A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLGnssExtensions,reason missing";
    v9 = "{msg%{public}.0s:CLGnssExtensions,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLGnssExtensions,bundleID or bundlePath needed";
    v9 = "{msg%{public}.0s:CLGnssExtensions,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLGnssExtensions,nil callback queue";
    v9 = "{msg%{public}.0s:CLGnssExtensions,nil callback queue}";
    goto LABEL_35;
  }

  if (!a5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,nil callback block}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "CLGnssExtensions,nil callback block";
    v9 = "{msg%{public}.0s:CLGnssExtensions,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, 0x12u);
LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  v14[0] = @"kCLConnectionMessageBundleIdentifierKey";
  v14[1] = @"kCLConnectionMessageBundlePathKey";
  v15[0] = a1;
  v15[1] = a2;
  v14[2] = @"kCLConnectionMessagePurposeKey";
  v15[2] = a3;
  result = -[CLGnssExtensionsClient initWithRegistrationMessageName:messageDictionary:dispatchQueue:codeBlock:]([CLGnssExtensionsClient alloc], "initWithRegistrationMessageName:messageDictionary:dispatchQueue:codeBlock:", "kCLConnectionMessageGnssExtensionsClient", [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3], a4, a5);
LABEL_37:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B96AE78(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "CLGnssExtensions,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLGnssExtensionsCallbackAssertionInternal::CLGnssExtensionsCallbackAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, GnssExtensionsCallback)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B96B070(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    v12[0] = 68289282;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssExtensions, Connection Message:%{public, location:escape_only}s}", v12, 0x1Cu);
  }

  v7 = CLConnectionMessage::name(*a2);
  if (*(v7 + 23) < 0 && *(v7 + 8) == 45 && !memcmp(*v7, "kCLConnectionMessageGnssExtensionsClientError", 0x2DuLL))
  {
    result = CLConnectionMessage::getDictionary(*a2);
    if (*(v3 + 8))
    {
      v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"CLGnssExtensions Error" code:0 userInfo:result];
      result = (*(*(v3 + 8) + 16))();
    }
  }

  else
  {
    result = CLConnectionMessage::name(*a2);
    if (*(result + 23) < 0 && *(result + 8) == 38)
    {
      result = memcmp(*result, "kCLConnectionMessageGnssExtensionsData", 0x26uLL);
      if (!result)
      {
        Dictionary = CLConnectionMessage::getDictionary(*a2);
        result = *(v3 + 8);
        if (result)
        {
          result = (*(result + 16))(result, Dictionary, 0);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B96B7B8()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

BOOL sub_19B96B7E8(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 >= 51.1 && v2 <= 61.1 && *a2 >= -13.2 && *a2 <= 1.87)
  {
    return 1;
  }

  if (v2 >= 49.866 && v2 <= 61.1 && *a2 >= -6.48 && *a2 <= 0.15)
  {
    return 1;
  }

  if (v2 >= 50.688 && v2 <= 61.1 && *a2 >= 0.15 && *a2 <= 1.43)
  {
    return 1;
  }

  if (v2 >= 29.32 && v2 <= 35.8 && *a2 >= 130.0 && *a2 <= 141.0)
  {
    return 1;
  }

  if (v2 >= 35.8 && v2 <= 41.3 && *a2 >= 135.8 && *a2 <= 142.95)
  {
    return 1;
  }

  if (v2 >= 41.3 && v2 <= 45.7 && *a2 >= 139.5 && *a2 <= 145.8)
  {
    return 1;
  }

  if (v2 >= 25.7 && v2 <= 34.756 && *a2 >= 128.837 && *a2 <= 130.0)
  {
    return 1;
  }

  if (v2 >= 23.861 && v2 <= 27.891 && *a2 >= 122.927 && *a2 <= 131.426)
  {
    return 1;
  }

  if (v2 >= -45.0 && v2 <= 4.3 && *a2 >= 104.0 && *a2 <= 156.25)
  {
    return 1;
  }

  if (v2 >= 0.0 && v2 <= 7.408 && *a2 >= 108.75 && *a2 <= 119.215)
  {
    return 1;
  }

  if (v2 >= -14.25 && v2 <= 8.35 && *a2 >= 88.9289 && *a2 <= 108.75)
  {
    return 1;
  }

  if (v2 >= -56.4 && v2 <= -28.0)
  {
    v3 = *a2;
    if (*a2 >= 155.0 && v3 <= 180.1)
    {
      return 1;
    }

    if (v3 >= -180.1 && v3 <= -175.74)
    {
      return 1;
    }
  }

  if (v2 >= -9.0 && v2 <= 27.3 && *a2 >= 67.0 && *a2 <= 92.17)
  {
    return 1;
  }

  if (v2 >= 27.3 && v2 <= 35.44 && *a2 >= 71.746 && *a2 <= 77.876)
  {
    return 1;
  }

  if (v2 >= 26.29 && v2 <= 27.8959 && *a2 >= 79.734 && *a2 <= 88.251)
  {
    return 1;
  }

  if (v2 >= 27.3 && v2 <= 29.15 && *a2 >= 77.83 && *a2 <= 84.154)
  {
    return 1;
  }

  if (v2 >= 27.3 && v2 <= 30.0 && *a2 >= 77.83 && *a2 <= 82.4)
  {
    return 1;
  }

  if (v2 >= 24.18 && v2 <= 29.338 && *a2 >= 63.36 && *a2 <= 71.746)
  {
    return 1;
  }

  if (v2 >= 29.338 && v2 <= 30.917 && *a2 >= 66.437 && *a2 <= 71.746)
  {
    return 1;
  }

  if (v2 >= 30.917 && v2 <= 33.0 && *a2 >= 69.584 && *a2 <= 71.746)
  {
    return 1;
  }

  if (v2 >= -36.08 && v2 <= -18.04 && *a2 >= 11.32 && *a2 <= 37.9)
  {
    return 1;
  }

  if (v2 >= -18.5 && v2 <= -13.45 && *a2 >= 23.5008 && *a2 <= 41.892382)
  {
    return 1;
  }

  if (v2 >= -13.45 && v2 <= 1.68 && *a2 >= 30.905 && *a2 <= 40.987)
  {
    return 1;
  }

  if (v2 >= 1.68 && v2 <= 3.388 && *a2 >= 31.324836 && *a2 <= 40.987)
  {
    return 1;
  }

  if (v2 >= -13.8 && v2 <= -12.44 && *a2 >= 24.07 && *a2 <= 28.33)
  {
    return 1;
  }

  if (v2 >= 11.671 && v2 <= 14.258 && *a2 >= -62.322 && *a2 <= -59.263)
  {
    return 1;
  }

  if (v2 >= 22.950919 && v2 <= 27.567702 && *a2 >= -79.487787 && *a2 <= -72.604668)
  {
    return 1;
  }

  if (v2 >= 21.74346 && v2 <= 27.567702 && *a2 >= -76.173118 && *a2 <= -72.604668)
  {
    return 1;
  }

  if (v2 >= 20.668412 && v2 <= 27.567702 && *a2 >= -73.949372 && *a2 <= -72.604668)
  {
    return 1;
  }

  if (v2 >= 8.3 && v2 <= 17.45 && *a2 >= 99.675 && *a2 <= 102.316)
  {
    return 1;
  }

  if (v2 >= 14.481 && v2 <= 17.51 && *a2 >= 102.286 && *a2 <= 104.683)
  {
    return 1;
  }

  if (v2 >= 17.45 && v2 <= 19.45 && *a2 >= 98.1 && *a2 <= 100.94)
  {
    return 1;
  }

  if (v2 >= 18.142198 && v2 <= 18.315026 && *a2 >= -63.184398 && *a2 <= -62.912807)
  {
    return 1;
  }

  if (v2 >= 16.914842 && v2 <= 17.240077 && *a2 >= -61.964541 && *a2 <= -61.607641)
  {
    return 1;
  }

  if (v2 >= 21.497173 && v2 <= 26.635702 && *a2 >= 88.025462 && *a2 <= 92.577511)
  {
    return 1;
  }

  if (v2 >= 32.166353 && v2 <= 32.577428 && *a2 >= -65.0 && *a2 <= -64.50204)
  {
    return 1;
  }

  if (v2 >= 26.902547 && v2 <= 27.854393 && *a2 >= 89.351473 && *a2 <= 91.521758)
  {
    return 1;
  }

  if (v2 >= 19.103 && v2 <= 20.058 && *a2 >= -81.654 && *a2 <= -79.5)
  {
    return 1;
  }

  if (v2 >= -23.5 && v2 <= -8.32 && *a2 >= -166.288 && *a2 <= -155.88)
  {
    return 1;
  }

  if (v2 >= 34.3297 && v2 <= 35.757 && *a2 >= 32.09 && *a2 <= 34.6509)
  {
    return 1;
  }

  if (v2 >= 15.06 && v2 <= 15.816 && *a2 >= -61.61 && *a2 <= -60.984)
  {
    return 1;
  }

  if (v2 >= -53.02 && v2 <= -50.229 && *a2 >= -61.937 && *a2 <= -56.853)
  {
    return 1;
  }

  if (v2 >= -21.1769 && v2 <= -12.1 && *a2 >= 176.19 && *a2 <= 180.1)
  {
    return 1;
  }

  if (v2 >= -21.1769 && v2 <= -15.057 && *a2 >= -180.1 && *a2 <= -178.097)
  {
    return 1;
  }

  v4 = v2 > 49.589 || v2 < 49.07;
  if (!v4 && *a2 >= -2.82 && *a2 <= -1.96)
  {
    return 1;
  }

  v5 = v2 < 2.6019;
  if (v2 > 8.469)
  {
    v5 = 1;
  }

  return !v5 && *a2 >= -59.5 && *a2 <= -54.489 || v2 >= 22.178 && v2 <= 22.4435 && *a2 >= 113.828 && *a2 <= 114.4585 || v2 >= 22.4435 && v2 <= 22.502 && *a2 >= 113.952 && *a2 <= 114.4585 || v2 >= 17.366 && v2 <= 18.926 && *a2 >= -78.498 && *a2 <= -75.908 || !v4 && *a2 >= -2.82 && *a2 <= -1.96 || v2 >= 22.175 && v2 <= 22.203 && *a2 >= 113.53 && *a2 <= 113.6 || v2 >= 22.107 && v2 <= 22.175 && *a2 >= 113.548 && *a2 <= 113.6 || v2 >= 35.656 && v2 <= 36.201 && *a2 >= 14.04 && *a2 <= 14.713 || v2 >= -20.76 && v2 <= -19.6 && *a2 >= 56.9 && *a2 <= 58.4 || v2 >= 16.61 && v2 <= 16.91 && *a2 >= -62.3 && *a2 <= -62.06 || v2 >= -0.6 && v2 <= -0.42 && *a2 >= 166.866 && *a2 <= 167.028 || v2 >= -19.3 && v2 <= -18.67 && *a2 >= -170.126 && *a2 <= -169.6 || v2 >= -25.858 && v2 <= -23.42 && *a2 >= -131.33 && *a2 <= -123.664 || v2 >= -14.457 && v2 <= -12.864 && *a2 >= -173.081 && *a2 <= -171.117 || v2 >= -16.4 && v2 <= -15.4 && *a2 >= -6.2 && *a2 <= -5.0 || v2 >= 16.986 && v2 <= 17.508 && *a2 >= -62.918 && *a2 <= -62.478 || v2 >= -5.4 && v2 <= -3.15 && *a2 >= 54.5 && *a2 <= 56.8 || v2 >= -12.139 && v2 <= -6.353 && *a2 >= 156.267 && *a2 <= 167.87 || !v5 && *a2 >= -59.5 && *a2 <= -54.489 || v2 >= -9.8 && v2 <= -8.01 && *a2 >= -172.9 && *a2 <= -170.9 || v2 >= -22.115 && v2 <= -14.7 && *a2 >= -176.47 && *a2 <= -172.98 || v2 >= 10.0 && v2 <= 11.585 && *a2 >= -61.8316 && *a2 <= -60.32 || v2 >= 20.8 && v2 <= 22.35 && *a2 >= -72.56 && *a2 <= -70.81 || v2 >= 17.555 && v2 <= 18.9639 && *a2 >= -65.11 && *a2 <= -64.14;
}

BOOL sub_19B96CD5C(double *a1, double *a2)
{
  v2 = *a1;
  result = 1;
  if ((*a1 < 27.6 || v2 > 90.0 || *a2 < -180.0 || *a2 > -65.0) && (v2 < 37.1 || v2 > 90.0 || *a2 < 2.75 || *a2 > 129.7))
  {
    if (v2 < -49.0 || v2 > 0.0 || (*a2 >= -93.0 ? (v3 = *a2 > -30.0) : (v3 = 1), v3))
    {
      if ((v2 < 22.7 || v2 > 90.0 || *a2 < 97.7 || *a2 > 122.7) && (v2 < 5.24 || v2 > 33.0 || *a2 < -29.8 || *a2 > 54.475) && (v2 < 31.75 || v2 > 49.0 || *a2 < -13.0 || *a2 > 3.0))
      {
        v4 = v2 < -1.0 || v2 > 28.0;
        if ((v4 || *a2 < -120.0 || *a2 > -81.67) && (v2 < 14.3 || v2 > 25.4 || *a2 < -163.4 || *a2 > -150.8))
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_19B96CF60(double a1, double a2)
{
  v3 = a2;
  v4 = a1;
  if (sub_19B96CD5C(&v4, &v3))
  {
    return 2;
  }

  if (sub_19B96B7E8(&v4, &v3))
  {
    return 1;
  }

  if (sub_19B96C9D8(&v4, &v3))
  {
    return 0;
  }

  return 2;
}

BOOL sub_19B96CFC8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, double a5)
{
  sub_19B96D0EC(a1, *a2, *a3, a4, &v8);
  v6 = v8;
  if (!v8)
  {
    operator new();
  }

  if (*(v8 + 8) < a5)
  {
    *(v8 + 8) = a5;
  }

  if (v9)
  {
    sub_19B8750F8(v9);
  }

  return v6 == 0;
}

void sub_19B96D0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B96D0EC(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!sub_19B96D240(a1, v13, &v10) || (v7 = v10, v10 == v11))
  {
LABEL_5:
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v7;
      if (**v7 == *a4)
      {
        break;
      }

      v7 += 2;
      if (v7 == v11)
      {
        goto LABEL_5;
      }
    }

    v9 = v7[1];
    *a5 = v8;
    a5[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v14 = &v10;
  sub_19B8F0E84(&v14);
}

void sub_19B96D19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19B8F0E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B96D1B4(uint64_t a1, unint64_t *a2)
{
  v3 = sub_19B96DBFC(a1, a2);
  if (v3 == v4)
  {
    return 0;
  }

  while (v3[4] != *a2 || v3[5] != a2[1])
  {
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v3[2];
        v7 = *v6 == v3;
        v3 = v6;
      }

      while (!v7);
    }

    v3 = v6;
    if (v6 == v4)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_19B96D240(uint64_t a1, unint64_t *a2, void *a3)
{
  v5 = sub_19B96DBFC(a1, a2);
  if (v5 != v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      if (*(v7 + 4) == *a2 && *(v7 + 5) == a2[1])
      {
        sub_19B96D2F0(a3, v7 + 3);
      }

      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }

  return *a3 != a3[1];
}

void sub_19B96D2F0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_19B8B8AB0();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

BOOL sub_19B96D414(void *a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2)
  {
    a1[2] = a3;
    v7 = *a2;
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a1[1];
    *a1 = v7;
    a1[1] = v6;
    if (v8)
    {
      sub_19B8750F8(v8);
    }
  }

  return v3 != 0;
}

void *sub_19B96D47C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
  }

  v3 = a1[5];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19B96D4C8(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if ((*(result + 116) & 1) != 0 || (v4 = *(result + 108), (~v4 & 0x7FFFFFFF) == 0) || (*(result + 117) & 1) != 0 || (v5 = *(result + 112), (~v5 & 0x7FFFFFFF) == 0) || *(*v2 + 116) == 1)
    {

      return sub_19B9F63A4(result, v2);
    }

    else
    {
      v6 = *(*v2 + 108);
      result = sub_19B9F63A4(result, v2);
      if (result && (v6 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v5 == v6;
      }
    }
  }

  return result;
}

uint64_t sub_19B96D58C(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if ((*(result + 116) & 1) != 0 || (v4 = *(result + 108), (~v4 & 0x7FFFFFFF) == 0) || (*(result + 117) & 1) != 0 || (v5 = *(result + 112), (~v5 & 0x7FFFFFFF) == 0) || *(*v2 + 117) == 1)
    {

      return sub_19B9F6408(result, v2);
    }

    else
    {
      v6 = *(*v2 + 112);
      result = sub_19B9F6408(result, v2);
      if (result && (v6 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v5 == v6;
      }
    }
  }

  return result;
}

uint64_t sub_19B96D650(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if (*(result + 116) & 1) != 0 || (v4 = *(result + 108), (~v4 & 0x7FFFFFFF) == 0) || (v5 = *v2, (*(*v2 + 116)) || (v6 = *(v5 + 108), (~v6 & 0x7FFFFFFF) == 0) || *(v5 + 117) == 1)
    {

      return sub_19B9F646C(result, v2);
    }

    else
    {
      v7 = *(v5 + 112);
      result = sub_19B9F646C(result, v2);
      if (result && (v7 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v4 == v7;
      }
    }
  }

  return result;
}

uint64_t sub_19B96D714(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if (*(result + 117) & 1) != 0 || (v4 = *(result + 112), (~v4 & 0x7FFFFFFF) == 0) || (v5 = *v2, (*(*v2 + 116)) || (v6 = *(v5 + 108), (~v6 & 0x7FFFFFFF) == 0) || *(v5 + 117) == 1)
    {

      return sub_19B9F64D0(result, v2);
    }

    else
    {
      v7 = *(v5 + 112);
      result = sub_19B9F64D0(result, v2);
      if (result && (v7 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v4 == v7;
      }
    }
  }

  return result;
}

double sub_19B96D7D8(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  v4 = *a1;
  if (v3 != a2)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = (v4[18] - v4[17]) >> 4;
  v6 = -1.0;
  v7 = v5 - 2;
  if (v5 >= 2)
  {
LABEL_5:
    v6 = sub_19B9F5C98(v4, v7);
  }

  v8 = 180.0;
  if (*(a1 + 24))
  {
    v8 = 0.0;
  }

  return v6 - v8;
}

void sub_19B96D848(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 && *v2)
  {
    v4 = sub_19B96DCE4(a1, *v2);
    v6 = *a2;
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(v4 + 56);
    *(v4 + 48) = v6;
    *(v4 + 56) = v5;
    if (v7)
    {
      sub_19B8750F8(v7);
    }
  }
}

uint64_t sub_19B96D8C4(uint64_t result, unint64_t ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*v2)
    {
      v4 = result;
      if (*(result + 16))
      {
        result = sub_19B8F07E0(result, *v2);
        if (result)
        {
          v5 = **a2;

          return sub_19B96DD80(v4, v5);
        }
      }
    }
  }

  return result;
}

BOOL sub_19B96D934(void *a1, void *a2)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  if (a1[2])
  {
    v7 = *a1;
    v5 = a1 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      v8 = -1.0;
      while (1)
      {
        v9 = v6[6];
        if (v8 < 0.0)
        {
          break;
        }

        if (v9)
        {
          v10 = *(v9 + 48) + *(v9 + 56);
          if (v10 < v8)
          {
            goto LABEL_10;
          }
        }

LABEL_15:
        v13 = v6[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v6[2];
            v15 = *v14 == v6;
            v6 = v14;
          }

          while (!v15);
        }

        v6 = v14;
        if (v14 == v5)
        {
          return v8 >= 0.0;
        }
      }

      v10 = *(v9 + 48) + *(v9 + 56);
LABEL_10:
      v11 = v6[7];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = a2[1];
      *a2 = v9;
      a2[1] = v11;
      if (v12)
      {
        sub_19B8750F8(v12);
      }

      v8 = v10;
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_19B96DA2C@<X0>(uint64_t result@<X0>, unint64_t ***a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4 && (v6 = result, (result = sub_19B8F07E0(result, *v4)) != 0))
  {
    result = sub_19B96DCE4(v6, **a2);
    v7 = *(result + 56);
    *a3 = *(result + 48);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_19B96DAE0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6D860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void *sub_19B96DBFC(uint64_t a1, unint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = a2[1];
  while (1)
  {
    v6 = v3[4];
    v7 = v3[5];
    v8 = v5 < v7;
    if (v4 != v6)
    {
      v8 = v4 < v6;
    }

    if (!v8)
    {
      break;
    }

    v2 = v3;
LABEL_12:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  v9 = v7 < v5;
  if (v4 == v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6 < v4;
  }

  if (v10)
  {
    ++v3;
    goto LABEL_12;
  }

  v12 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v13 = v12[4];
      v15 = v13 == v4;
      v14 = v13 < v4;
      if (v15)
      {
        v14 = v12[5] < v5;
      }

      v15 = !v14;
      v16 = v14;
      if (v15)
      {
        result = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
  }

  for (i = v3[1]; i; i = *(i + v20))
  {
    v18 = *(i + 32);
    v15 = v4 == v18;
    v19 = v4 < v18;
    if (v15)
    {
      v19 = v5 < *(i + 40);
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = 8;
    }
  }

  return result;
}

uint64_t sub_19B96DCE4(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_19B8F08E8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_19B96DD80(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_19B8F1950(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_19B8F3444(a1, v3);
  return 1;
}

uint64_t sub_19B96F4F0(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v21 = *a2;
  v22 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B93D204(a1, &v21, a3);
  if (v22)
  {
    sub_19B8750F8(v22);
  }

  *a1 = &unk_1F0E6D8B0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = a1 + 912;
  *(a1 + 920) = a1 + 912;
  *(a1 + 992) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 984) = a1 + 992;
  sub_19B988568(a1 + 1008);
  sub_19B988568(a1 + 1848);
  *(a1 + 2688) = 0;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0;
  *(a1 + 2732) = 1;
  *(a1 + 2736) = 0;
  *(a1 + 2744) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2792) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 2808) = 0u;
  *(a1 + 2824) = 0;
  *(a1 + 2856) = 0u;
  *(a1 + 2872) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2832) = 0u;
  *(a1 + 2876) = 1;
  *(a1 + 2880) = 0;
  *(a1 + 2960) = 0;
  *(a1 + 2944) = 0u;
  *(a1 + 2888) = 0u;
  *(a1 + 2904) = 0u;
  *(a1 + 2920) = 0u;
  *(a1 + 2936) = 0;
  *(a1 + 2968) = 0xFFFFFFFFLL;
  *(a1 + 2976) = &unk_1F0E6D9A8;
  *(a1 + 2984) = 30;
  *(a1 + 2992) = 0u;
  *(a1 + 3008) = 0u;
  *(a1 + 3024) = 0u;
  *(a1 + 3040) = 0;
  *(a1 + 3048) = a1 + 3048;
  *(a1 + 3056) = a1 + 3048;
  *(a1 + 3064) = 0;
  *(a1 + 3072) = a1 + 3072;
  *(a1 + 3080) = a1 + 3072;
  *(a1 + 3088) = 0;
  *(a1 + 3096) = a1 + 3096;
  *(a1 + 3104) = a1 + 3096;
  *(a1 + 3112) = 0;
  *(a1 + 3120) = a1 + 3120;
  *(a1 + 3128) = a1 + 3120;
  *(a1 + 3152) = 0;
  *(a1 + 3136) = 0u;
  *(a1 + 3176) = 0;
  *(a1 + 3184) = 0;
  *(a1 + 3192) = 0u;
  *(a1 + 3208) = 0u;
  *(a1 + 3217) = 0u;
  *(a1 + 3240) = 0u;
  *(a1 + 3256) = 0xBFF0000000000000;
  *(a1 + 3264) = 0xBFF0000000000000;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0xBFF0000000000000;
  *(a1 + 3512) = 0;
  *(a1 + 3520) = 0;
  *(a1 + 3504) = 0;
  *(a1 + 3472) = 0u;
  *(a1 + 3488) = 0u;
  *(a1 + 3587) = 0u;
  *(a1 + 3560) = 0u;
  *(a1 + 3576) = 0u;
  *(a1 + 3528) = 0u;
  *(a1 + 3544) = 0u;
  *(a1 + 3624) = 0u;
  *(a1 + 3640) = 0u;
  *(a1 + 3608) = 0u;
  *(a1 + 3454) = 0u;
  *(a1 + 3440) = 0u;
  *(a1 + 3424) = 0u;
  *(a1 + 3408) = 0u;
  *(a1 + 3392) = 0u;
  *(a1 + 3376) = 0u;
  *(a1 + 3360) = 0u;
  *(a1 + 3344) = 0u;
  *(a1 + 3328) = 0u;
  *(a1 + 3312) = 0u;
  *(a1 + 3296) = 0u;
  *(a1 + 3656) = 0;
  *(a1 + 3688) = 0u;
  *(a1 + 3664) = xmmword_19BA8C810;
  *(a1 + 3680) = 0x415854A640000000;
  *(a1 + 3704) = 0x3FF0000000000000;
  *(a1 + 3712) = 0;
  *(a1 + 3824) = 0;
  *(a1 + 3832) = 0xBFF0000000000000;
  *(a1 + 3840) = 0xBFF0000000000000;
  *(a1 + 3864) = 0;
  *(a1 + 3848) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 3872) = _Q0;
  *(a1 + 3904) = 0;
  *(a1 + 3888) = 0u;
  *(a1 + 3908) = 1;
  *(a1 + 3912) = 0;
  *(a1 + 3992) = 0;
  *(a1 + 3976) = 0u;
  *(a1 + 3968) = 0;
  *(a1 + 3952) = 0u;
  *(a1 + 3936) = 0u;
  *(a1 + 3920) = 0u;
  *(a1 + 4000) = _Q0;
  *(a1 + 4016) = _Q0;
  *(a1 + 4032) = 0;
  *(a1 + 4104) = 0;
  *(a1 + 4072) = 0u;
  *(a1 + 4088) = 0u;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4112) = _Q0;
  *(a1 + 4128) = 1;
  if (sub_19B93C1F4())
  {
    *(a1 + 3160) = 0;
LABEL_8:
    v11 = 30.0;
    goto LABEL_10;
  }

  v10 = sub_19B93CBFC();
  *(a1 + 3160) = (v10 & 1) == 0;
  if (v10)
  {
    goto LABEL_8;
  }

  v11 = 70.0;
LABEL_10:
  *(a1 + 3168) = v11;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v12 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 3160);
    v14 = *(a1 + 3168);
    *buf = 67240448;
    v28 = v13;
    v29 = 2050;
    v30 = v14;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,Constructor,fUseSpeedCheckForDOT,%{public}d,fMaxDistanceForTIntersectionForDOT,%{public}.1lf", buf, 0x12u);
  }

  v15 = sub_19B87DD40();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v16 = *(a1 + 3160);
    v17 = *(a1 + 3168);
    v23 = 67240448;
    v24 = v16;
    v25 = 2050;
    v26 = v17;
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLParticleMapMatcher::CLParticleMapMatcher(CLMapGeometryPtr, const std::string &)", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  srandom(0);
  bzero((a1 + 3720), 0x68uLL);
  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B96FA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = (v19 + 4088);
  sub_19B98868C(&a19);
  a19 = (v19 + 4064);
  sub_19B98868C(&a19);
  sub_19B9886E0(&a19);
  sub_19B96FB20((v19 + 3824));
  if (*(v19 + 3391) < 0)
  {
    operator delete(*(v19 + 3368));
  }

  sub_19B916DC0(v23);
  sub_19B916DC0(v22);
  sub_19B916DC0(v21);
  sub_19B916DC0(v20);
  *(v19 + 2976) = a11;
  sub_19B98A184(v19 + 3000);
  sub_19B96FBA4((v19 + 2848));
  sub_19B96FBE4((v19 + 2688));
  sub_19B96FC24(v19 + 1848);
  sub_19B96FC24(v19 + 1008);
  sub_19B98A0DC(*(v19 + 992));
  v25 = *(v19 + 960);
  if (v25)
  {
    *(v19 + 968) = v25;
    operator delete(v25);
  }

  v26 = *(v19 + 936);
  if (v26)
  {
    *(v19 + 944) = v26;
    operator delete(v26);
  }

  sub_19B9679F8(a12);
  a19 = (v19 + 888);
  sub_19B988734(&a19);
  a19 = (v19 + 864);
  sub_19B988734(&a19);
  sub_19B93D56C(v19);
  _Unwind_Resume(a1);
}

void *sub_19B96FB20(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

void *sub_19B96FB60(void *a1)
{
  *a1 = &unk_1F0E6D9A8;
  sub_19B98A184((a1 + 3));
  return a1;
}

void *sub_19B96FBA4(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

void *sub_19B96FBE4(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

uint64_t sub_19B96FC24(uint64_t a1)
{
  v2 = *(a1 + 760);
  if (v2)
  {
    *(a1 + 768) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 680);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = *(a1 + 656);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  return a1;
}

uint64_t sub_19B96FC9C(uint64_t a1)
{
  *a1 = &unk_1F0E6D8B0;
  v21 = (a1 + 4088);
  sub_19B98868C(&v21);
  v21 = (a1 + 4064);
  sub_19B98868C(&v21);
  v21 = (a1 + 4040);
  sub_19B9886E0(&v21);
  v2 = *(a1 + 3976);
  if (v2)
  {
    *(a1 + 3984) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 3896);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  if (*(a1 + 3391) < 0)
  {
    operator delete(*(a1 + 3368));
  }

  sub_19B916DC0((a1 + 3120));
  sub_19B916DC0((a1 + 3096));
  sub_19B916DC0((a1 + 3072));
  sub_19B916DC0((a1 + 3048));
  *(a1 + 2976) = &unk_1F0E6D9A8;
  sub_19B98A184(a1 + 3000);
  v4 = *(a1 + 2944);
  if (v4)
  {
    *(a1 + 2952) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 2864);
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  v6 = *(a1 + 2800);
  if (v6)
  {
    *(a1 + 2808) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 2720);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  v8 = *(a1 + 2608);
  if (v8)
  {
    *(a1 + 2616) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 2528);
  if (v9)
  {
    sub_19B8750F8(v9);
  }

  v10 = *(a1 + 2504);
  if (v10)
  {
    sub_19B8750F8(v10);
  }

  if (*(a1 + 2119) < 0)
  {
    operator delete(*(a1 + 2096));
  }

  v11 = *(a1 + 1944);
  if (v11)
  {
    *(a1 + 1952) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1864);
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  v13 = *(a1 + 1768);
  if (v13)
  {
    *(a1 + 1776) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 1688);
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  v15 = *(a1 + 1664);
  if (v15)
  {
    sub_19B8750F8(v15);
  }

  if (*(a1 + 1279) < 0)
  {
    operator delete(*(a1 + 1256));
  }

  v16 = *(a1 + 1104);
  if (v16)
  {
    *(a1 + 1112) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 1024);
  if (v17)
  {
    sub_19B8750F8(v17);
  }

  sub_19B98A0DC(*(a1 + 992));
  v18 = *(a1 + 960);
  if (v18)
  {
    *(a1 + 968) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 936);
  if (v19)
  {
    *(a1 + 944) = v19;
    operator delete(v19);
  }

  sub_19B9679F8((a1 + 912));
  v21 = (a1 + 888);
  sub_19B988734(&v21);
  v21 = (a1 + 864);
  sub_19B988734(&v21);
  return sub_19B93D56C(a1);
}

void sub_19B96FEC0(uint64_t a1)
{
  sub_19B96FC9C(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B96FEF8(uint64_t a1, uint64_t a2, int *a3, double a4)
{
  LODWORD(v23) = 0;
  BYTE5(v23) = 0;
  DWORD2(v23) = 0;
  v24 = 0uLL;
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v7;
  v22 = v6;
  v8 = *(a2 + 48);
  BYTE4(v23) = *(a2 + 20);
  v25 = v8;
  v19 = 0;
  v20 = 0;
  v18[0] = v18;
  v18[1] = v18;
  v18[2] = 0;
  v17[0] = v17;
  v17[1] = v17;
  v17[2] = 0;
  *a3 = 0;
  v9 = sub_19B970048(*(a1 + 8), *(a1 + 16), &v21, a3, v18, a4, v17, &v20, &v19);
  if (*a3 > 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = v21;
    v11 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 8);
    *a2 = v12;
    *(a2 + 8) = v11;
    if (v13)
    {
      sub_19B8750F8(v13);
    }

    v14 = v24;
    *(a2 + 16) = v23;
    *(a2 + 32) = v14;
    *(a2 + 48) = v25;
    v15 = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v15;
    *(a2 + 24) = -1082130432;
  }

  sub_19B916DC0(v17);
  sub_19B916DC0(v18);
  if (v22)
  {
    sub_19B8750F8(v22);
  }

  return v10;
}

void sub_19B970020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  sub_19B916DC0(&a10);
  sub_19B916DC0(&a13);
  if (a19)
  {
    sub_19B8750F8(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B970048(uint64_t a1, std::__shared_weak_count *a2, uint64_t **a3, int *a4, uint64_t *a5, double a6, uint64_t a7, void *a8, void *a9)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  *a8 = 0;
  *a9 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v41 = _Q0;
  do
  {
    sub_19B916DC0(a5);
    *a4 = 0;
    v66[0] = 0.0;
    v42[0] = 0;
    v42[1] = 0;
    v43 = v41;
    v44 = 0;
    v45 = 0;
    v46 = 0xBFF0000000000000;
    v58 = 0;
    v59 = 0;
    memset(&v56[32], 0, 32);
    v57 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    memset(v63, 0, 27);
    memset(&v63[32], 0, 48);
    memset(v56, 0, 30);
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v64 = 0;
    v65 = 0xBFF0000000000000;
    if ((*(*a1 + 80))(a1, v42, a5, 0, 1, a3, *(a3 + 20), v66, *(a3 + 6), a6))
    {
      v21 = v66[0];
      if (v66[0] == -1.0)
      {
        goto LABEL_6;
      }

      v23 = a5[1];
      v24 = *a4;
      if (v23 == a5)
      {
        v25 = 0;
        v28 = a5;
      }

      else
      {
        v25 = 0;
        v26 = **a3;
        v27 = *(a3 + 20);
        v28 = a5;
        do
        {
          if (**(v23 + 16) == v26 && *(v23 + 32) != v27)
          {
            v28 = v23;
          }

          else
          {
            *a4 = ++v24;
            v25 = v23;
          }

          v23 = *(v23 + 8);
        }

        while (v23 != a5);
      }

      a6 = a6 - v21;
      if (v24 < 2)
      {
        if (v24 != 1)
        {
          sub_19B916DC0(a5);
LABEL_6:
          v22 = 0;
          v9 = 1;
          goto LABEL_36;
        }

        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v33)
        {
          atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
        }

        v35 = a3[1];
        *a3 = v34;
        a3[1] = v33;
        if (v35)
        {
          sub_19B8750F8(v35);
        }

        *(a3 + 20) = *(v25 + 32);
        a3[6] = *(v25 + 40);
        *a4 = 0;
        v36 = a5[1];
        if (v36 == a5)
        {
          v22 = 1;
        }

        else
        {
          do
          {
            if (**(v36 + 16) != **a3 || *(v36 + 32) == *(a3 + 20))
            {
              sub_19B9131FC();
            }

            v36 = *(v36 + 8);
            v22 = 1;
          }

          while (v36 != a5);
        }
      }

      else
      {
        if (v28 != a5)
        {
          v30 = *v28;
          v29 = v28[1];
          *(v30 + 8) = v29;
          *v29 = v30;
          --a5[2];
          v31 = v28[3];
          if (v31)
          {
            sub_19B8750F8(v31);
          }

          operator delete(v28);
        }

        v22 = 0;
        v32 = *(&v53 + 1);
        *a8 = v53;
        *a9 = v32;
        a3[6] = v58;
        v9 = 1;
      }
    }

    else
    {
      v22 = 0;
      v9 = 0;
    }

LABEL_36:
    if (SHIBYTE(v52) < 0)
    {
      operator delete(*(&v51 + 1));
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_41;
    }

    ++v15;
  }

  while (v15 != 30);
  v9 = 1;
LABEL_41:
  if (a2)
  {
    sub_19B8750F8(a2);
  }

  return v9 & 1;
}

void sub_19B970390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    sub_19B8750F8(a9);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B9703C0(uint64_t a1, double a2)
{
  v2 = -1.0;
  if (*(a1 + 1008) == 1)
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v4 = *(a1 + 1016);
    v5 = *(a1 + 1024);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v4;
    v14 = v5;
    v6 = *(a1 + 1064);
    v16 = *(a1 + 1036);
    v21 = v6;
    v11 = 0.0;
    v12 = 0.0;
    v10[0] = v10;
    v10[1] = v10;
    v10[2] = 0;
    v9[0] = v9;
    v9[1] = v9;
    v9[2] = 0;
    v8 = 0;
    if (sub_19B970048(*(a1 + 8), *(a1 + 16), &v13, &v8, v10, a2, v9, &v12, &v11) && (fabs(v12) >= 0.00003 || fabs(v11) >= 0.00003))
    {
      v2 = sub_19BA0C01C((a1 + 608), *(a1 + 1280), *(a1 + 1288), v12, v11, *(a1 + 1200));
    }

    sub_19B916DC0(v9);
    sub_19B916DC0(v10);
    if (v14)
    {
      sub_19B8750F8(v14);
    }
  }

  return v2;
}

void sub_19B9704DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  sub_19B916DC0(&a10);
  sub_19B916DC0(&a13);
  if (a19)
  {
    sub_19B8750F8(a19);
  }

  _Unwind_Resume(a1);
}

void sub_19B970504()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v114 = *MEMORY[0x1E69E9840];
  v11 = *v8;
  v12 = v8[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v57 = *v11;
    LOBYTE(v58) = v1;
    sub_19B8750F8(v12);
    sub_19B8750F8(v12);
  }

  else
  {
    v57 = *v11;
    LOBYTE(v58) = v1;
  }

  v13 = sub_19B98A250(v10 + 984, &v57);
  v14 = (v10 + 992);
  if (v10 + 992 != v13)
  {
    v15 = v13;
    if (*(v13 + 72) > 95)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v28 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v59) = 0;
        _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLMM,Unexpected out of bounds array access attempt", &v59, 2u);
      }

      v29 = sub_19B87DD40();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(&v59, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v30 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLParticleMapMatcher::updateCandidate(const CLMapRoadPtr &, BOOL, double, double, double)", "CoreLocation: %s\n", v30);
        if (v30 != &v59)
        {
          free(v30);
        }
      }
    }

    else
    {
      v17 = *v9;
      v16 = v9[1];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v13 + 64);
      *(v15 + 56) = v17;
      *(v15 + 64) = v16;
      if (v18)
      {
        sub_19B8750F8(v18);
      }

      v19 = *(v15 + 72);
      v20 = (v15 + 8 * v19);
      v20[141] = v5;
      v20[237] = v3;
      v20[333] = v7;
      *(v15 + 72) = v19 + 1;
    }

    goto LABEL_69;
  }

  memset(v37, 0, 28);
  v37[14] = 1;
  *&v37[16] = 0;
  memset(&v37[28], 0, 33);
  HIDWORD(v38) = 0;
  LOBYTE(v38) = 0;
  *&v39 = 0;
  DWORD2(v39) = 0;
  v40[0] = 1;
  memset(&v40[8], 0, 24);
  __asm { FMOV            V2.2D, #-1.0 }

  v41 = _Q2;
  *&v42[0] = 0xBFF0000000000000;
  *&v43[120] = 0;
  *&v43[128] = 0;
  memset(&v43[80], 0, 34);
  memset(&v43[136], 0, 75);
  memset(&v43[216], 0, 56);
  memset(v43, 0, 78);
  memset(v42 + 8, 0, 88);
  *&v43[272] = 0xBFF0000000000000;
  v44 = 0u;
  *&v45 = 0xBFF0000000000000;
  *(&v45 + 1) = 0xBFF0000000000000;
  v46 = 0u;
  *v47 = 0xBFF0000000000000;
  *&v48[120] = 0;
  *&v48[128] = 0;
  memset(&v48[80], 0, 34);
  memset(&v48[136], 0, 75);
  memset(&v48[216], 0, 56);
  memset(v48, 0, 78);
  memset(&v47[8], 0, 96);
  *&v48[272] = xmmword_19BA89720;
  v50 = 0u;
  v51 = _Q2;
  v52 = 0u;
  *v53 = 0xBFF0000000000000;
  v54[15] = 0;
  LODWORD(v54[16]) = 0;
  memset(&v54[10], 0, 34);
  memset(&v54[17], 0, 75);
  memset(&v54[27], 0, 56);
  memset(v54, 0, 78);
  memset(&v53[8], 0, 96);
  v54[34] = 0xBFF0000000000000;
  *&v56 = 0;
  v55 = 0u;
  *(&v56 + 1) = 0x3FF0000000000000;
  bzero(v49, 0xC00uLL);
  v27 = *v9;
  v26 = v9[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49[0] = v5;
  v49[96] = v3;
  v49[192] = v7;
  *v37 = 1;
  v59 = v57;
  v60 = v58;
  v61 = v27;
  v62 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v63 = *v37;
  v64 = *&v37[4];
  if (*&v37[8])
  {
    atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
  }

  v65 = *&v37[12];
  v66 = 0u;
  v68[0] = *&v37[32];
  *(v68 + 9) = *(&v37[36] + 1);
  v67 = *&v37[28];
  v69 = 0;
  v71 = 0;
  v70 = 0;
  sub_19B96775C(&v69, 0, 0, 0);
  v74 = v39;
  v75 = 0u;
  v76 = *v40;
  v77 = *&v40[16];
  v78 = v41;
  v79 = 0u;
  v80 = v42[0];
  v81 = v42[1];
  v82 = v42[2];
  v83 = v42[3];
  v72 = v38;
  v73 = 0;
  v84 = v42[4];
  v85 = v42[5];
  v86 = 0;
  memcpy(v87, v43, sizeof(v87));
  v92 = *&v47[16];
  v93 = *&v47[32];
  v94 = *&v47[48];
  v95 = *&v47[64];
  v88 = v44;
  v89 = v45;
  v90 = v46;
  v91 = *v47;
  if ((v47[103] & 0x80000000) != 0)
  {
    sub_19B874C9C(&v96, *&v47[80], *&v47[88]);
  }

  else
  {
    v96 = *&v47[80];
    v97 = *&v47[96];
  }

  memcpy(v98, v48, sizeof(v98));
  v99 = *&v48[280];
  memcpy(v100, v49, sizeof(v100));
  v105 = *&v53[16];
  v106 = *&v53[32];
  v107 = *&v53[48];
  v108 = *&v53[64];
  v101 = v50;
  v102 = v51;
  v103 = v52;
  v104 = *v53;
  if ((v53[103] & 0x80000000) != 0)
  {
    sub_19B874C9C(&__p, *&v53[80], *&v53[88]);
  }

  else
  {
    __p = *&v53[80];
    v110 = *&v53[96];
  }

  memcpy(v111, v54, sizeof(v111));
  v112 = v55;
  v113 = v56;
  v31 = *v14;
  if (!*v14)
  {
LABEL_50:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v32 = v31;
      v33 = v31[4];
      if (v59 != v33)
      {
        if (v59 >= v33)
        {
          if (v33 >= v59)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v34 = *(v32 + 48);
      if ((v60 & 1) == 0 || (v32[6] & 1) == 0)
      {
        break;
      }

      v35 = v32[5];
      if (*(&v59 + 1) >= v35)
      {
        if (v35 >= *(&v59 + 1))
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

LABEL_46:
      v31 = *v32;
      if (!*v32)
      {
        goto LABEL_50;
      }
    }

    if (v60)
    {
      goto LABEL_46;
    }

    if ((v32[6] & 1) == 0)
    {
      break;
    }

LABEL_49:
    v31 = v32[1];
    if (!v31)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  if (SHIBYTE(v110) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (*(&v64 + 1))
  {
    sub_19B8750F8(*(&v64 + 1));
  }

  if (v62)
  {
    sub_19B8750F8(v62);
  }

  if ((v53[103] & 0x80000000) != 0)
  {
    operator delete(*&v53[80]);
  }

  if ((v47[103] & 0x80000000) != 0)
  {
    operator delete(*&v47[80]);
  }

  if (v26)
  {
    sub_19B8750F8(v26);
  }

LABEL_69:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_19B970FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B9887B8(v5 + 176);
  sub_19B966FCC(&STACK[0x1570]);
  if (STACK[0x1560])
  {
    sub_19B8750F8(STACK[0x1560]);
  }

  sub_19B98887C(va);
  _Unwind_Resume(a1);
}

void sub_19B97106C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3[0] = *a1;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_19B964614(a2, v3, *(a1 + 20));

    sub_19B8750F8(v2);
  }

  else
  {
    sub_19B964614(a2, v3, *(a1 + 20));
  }
}

uint64_t sub_19B9710EC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(a1 + 48) = a2[6];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 7);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v9;
  if (a1 != a2)
  {
    sub_19B967884((a1 + 88), a2[11], a2[12], 0x8E38E38E38E38E39 * ((a2[12] - a2[11]) >> 3));
  }

  return a1;
}

uint64_t sub_19B971188(uint64_t a1)
{
  v219 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v193 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 2064);
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    if (*(a1 + 2152) > 0.0)
    {
      v4 = *(a1 + 2152);
    }

    else
    {
      v4 = 0.0;
    }
  }

  v5 = *(a1 + 1224);
  if (v5 >= 0.0)
  {
    v6 = *(a1 + 1640);
    if (v3 >= 0.0 && v6 < 2.2)
    {
      v5 = (v3 + v5) * 0.5;
    }

    *(a1 + 1792) = v5;
  }

  else
  {
    *(a1 + 1792) = 0;
    v6 = *(a1 + 1640);
    v5 = 0.0;
  }

  v7 = v6 * v5;
  if (*(a1 + 2048) <= 0.0 || v6 >= 2.2)
  {
    *(a1 + 1800) = v7;
    v8 = -1.0;
  }

  else
  {
    v8 = sub_19BA0C01C((a1 + 608), *(a1 + 1184), *(a1 + 1192), *(a1 + 2024), *(a1 + 2032), *(a1 + 1200));
    if (v8 > 300.0)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_89;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v9 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 1640);
        *buf = 134349312;
        *&buf[4] = v8;
        *&buf[12] = 2050;
        *&buf[14] = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLMM, Position jump(m),%{public}.1lf,dT(s),%{public}.1lf", buf, 0x16u);
      }

      v11 = sub_19B87DD40();
      if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
      {
        goto LABEL_89;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v12 = *(a1 + 1640);
      LODWORD(v208[0]) = 134349312;
      *(v208 + 4) = v8;
      WORD2(v208[1]) = 2050;
      *(&v208[1] + 6) = v12;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v13);
LABEL_87:
      if (v13 != buf)
      {
        free(v13);
      }

LABEL_89:
      v43 = 0;
      v44 = a1;
LABEL_90:
      ++*(v44 + 104);
      goto LABEL_335;
    }

    *(a1 + 1800) = v7;
    if (v8 < 0.0 || *(a1 + 1792) <= 0.0 || (*(a1 + 1356) & 1) != 0)
    {
      if (v8 >= 0.0 && (*(a1 + 1356) & 1) == 0)
      {
        *(a1 + 1800) = v8;
      }
    }

    else
    {
      *(a1 + 1800) = (v7 + v8) * 0.5;
    }
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 1136);
      v16 = *(a1 + 1800);
      *buf = 134349824;
      *&buf[4] = v15;
      *&buf[12] = 2050;
      *&buf[14] = v16;
      *&buf[22] = 2050;
      *&buf[24] = v7;
      LOWORD(v213[0]) = 2050;
      *(v213 + 2) = v8;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,predictionAndUpdate,distance,%{public}.1lf,distBasedOnSpeed,%{public}.1lf,distBasedOnPos,%{public}.1lf", buf, 0x2Au);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v18 = *(a1 + 1136);
      v19 = *(a1 + 1800);
      LODWORD(v208[0]) = 134349824;
      *(v208 + 4) = v18;
      WORD2(v208[1]) = 2050;
      *(&v208[1] + 6) = v19;
      HIWORD(v208[2]) = 2050;
      *&v208[3] = v7;
      LOWORD(v208[4]) = 2050;
      *(&v208[4] + 2) = v8;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v21 = a1;
  *(a1 + 1608) = 0xBFF0000000000000;
  if (*(a1 + 872) == *(a1 + 864))
  {
LABEL_334:
    v43 = 1;
    goto LABEL_335;
  }

  v184 = *(a1 + 872) - *(a1 + 864);
  v22 = *(a1 + 1800);
  v23 = *(a1 + 1640);
  v24 = v23 * v23;
  if (*(a1 + 1356) == 1 && v23 > 4.9)
  {
    v25 = 24.01;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v24;
        *&buf[12] = 2050;
        *&buf[14] = 0x4038028F5C28F5C4;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,dT2 limited,from,%{public}.1lf,to,%{public}.1lf", buf, 0x16u);
      }

      v27 = sub_19B87DD40();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LODWORD(v208[0]) = 134349312;
        *(v208 + 4) = v24;
        WORD2(v208[1]) = 2050;
        *(&v208[1] + 6) = 0x4038028F5C28F5C4;
        v28 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v28);
        v21 = a1;
        if (v28 != buf)
        {
          free(v28);
        }
      }

      else
      {
        v21 = a1;
      }
    }
  }

  else
  {
    v25 = v23 * v23;
  }

  v29 = v25 * ((v4 * v4 + *(v21 + 1312) * *(v21 + 1312)) * 0.25);
  *(v21 + 1808) = v29;
  v30 = *(v21 + 1792);
  v31 = v25 * 3.0;
  if (v30 >= 8.05555556)
  {
    v31 = v25;
  }

  *(v21 + 1816) = v31;
  v32 = v25 * (v30 * v30 * 0.25);
  *(v21 + 1824) = v32;
  *(v21 + 1832) = sqrt(v29 + v31 + v32);
  v33 = *(v21 + 1640);
  if (v33 <= 0.0 || v33 > 75.0 || ((v33 > 4.9) & (*(v21 + 1356) ^ 1)) != 0)
  {
    if (*(v21 + 96) != 1)
    {
      goto LABEL_89;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v39 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 1640);
      *buf = 134349568;
      *&buf[4] = v40;
      *&buf[12] = 2050;
      *&buf[14] = 0x401399999999999ALL;
      *&buf[22] = 2050;
      *&buf[24] = 0x4052C00000000000;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "#Warning CLMM,unexpected,dT,%{public}.1lf,minMoreThan,0,threshold1,%{public}.1lf,threshold2,%{public}.1lf", buf, 0x20u);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
    {
      goto LABEL_89;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v42 = *(a1 + 1640);
    LODWORD(v208[0]) = 134349568;
    *(v208 + 4) = v42;
    WORD2(v208[1]) = 2050;
    *(&v208[1] + 6) = 0x401399999999999ALL;
    HIWORD(v208[2]) = 2050;
    v208[3] = 0x4052C00000000000;
    v13 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v13);
    goto LABEL_87;
  }

  v34 = (v21 + 864);
  if (*(v21 + 2688) == 1)
  {
    v35 = sub_19BA0C01C((v21 + 608), *(v21 + 2120), *(v21 + 2128), *(v21 + 2744), *(v21 + 2752), *(v21 + 1200));
    v36 = *(v21 + 2824);
    v37 = 4 * v36;
    if (v36 >= 1)
    {
      v38 = 4 * v36;
      if (v37 <= 1)
      {
        v37 = 1;
      }

      do
      {
        sub_19B973C04(v21 + 864, v21 + 2712);
        --v37;
      }

      while (v37);
      v37 = v38;
    }
  }

  else
  {
    v37 = 0;
    v35 = 0.0;
  }

  if (*(v21 + 2232) == 1)
  {
    v45 = v21 + 3048;
    v46 = v21 + 3096;
    *&buf[16] = 0;
    buf[21] = 0;
    *&buf[24] = 0;
    v213[0] = 0;
    v213[1] = 0;
    v47 = *(v21 + 1856);
    v48 = *(v21 + 1864);
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    *buf = v47;
    *&buf[8] = v48;
    v49 = *(v21 + 1904);
    buf[20] = *(v21 + 1876);
    v213[2] = v49;
    sub_19B916DC0((v21 + 3048));
    sub_19B916DC0((v21 + 3096));
    LODWORD(v195) = 0;
    v50 = sub_19B970048(*(v21 + 8), *(v21 + 16), buf, &v195, (v21 + 3048), 80.0, v21 + 3096, v208, &v198);
    if (*&buf[8])
    {
      sub_19B8750F8(*&buf[8]);
    }

    if ((v50 & 1) == 0)
    {
      v99 = v21;
      v43 = 0;
      goto LABEL_422;
    }

    v51 = v37;
    v52 = *(v21 + 3104);
    if (v52 == v46)
    {
      v53 = 0;
    }

    else
    {
      v53 = 0;
      do
      {
        memset(buf, 0, 20);
        *&buf[20] = 1;
        *&buf[24] = 0;
        v217 = 0;
        v218 = 0;
        __p = 0;
        memset(v213, 0, sizeof(v213));
        v214 = 0u;
        v215 = 0;
        v54 = *(v52 + 16);
        v55 = *(v52 + 24);
        if (v55)
        {
          atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
          v56 = *&buf[8];
          *buf = v54;
          *&buf[8] = v55;
          if (v56)
          {
            sub_19B8750F8(v56);
          }
        }

        else
        {
          *buf = *(v52 + 16);
          *&buf[8] = 0;
        }

        v213[2] = *(v52 + 40);
        buf[20] = *(v52 + 32);
        v53 += 6;
        v57 = 6;
        do
        {
          sub_19B973C04(v34, buf);
          --v57;
        }

        while (v57);
        if (__p)
        {
          v217 = __p;
          operator delete(__p);
        }

        if (*&buf[8])
        {
          sub_19B8750F8(*&buf[8]);
        }

        v52 = *(v52 + 8);
      }

      while (v52 != v46);
    }

    v163 = *(a1 + 3056);
    v191 = v53;
    if (v163 != v45)
    {
      v191 = v53;
      do
      {
        memset(buf, 0, 20);
        *&buf[20] = 1;
        *&buf[24] = 0;
        v217 = 0;
        v218 = 0;
        __p = 0;
        memset(v213, 0, sizeof(v213));
        v214 = 0u;
        v215 = 0;
        v164 = *(v163 + 16);
        v165 = *(v163 + 24);
        if (v165)
        {
          atomic_fetch_add_explicit((v165 + 8), 1uLL, memory_order_relaxed);
          v166 = *&buf[8];
          *buf = v164;
          *&buf[8] = v165;
          if (v166)
          {
            sub_19B8750F8(v166);
          }
        }

        else
        {
          *buf = *(v163 + 16);
          *&buf[8] = 0;
        }

        v213[2] = *(v163 + 40);
        buf[20] = *(v163 + 32);
        v191 += 6;
        v167 = 6;
        do
        {
          sub_19B973C04(v34, buf);
          --v167;
        }

        while (v167);
        if (__p)
        {
          v217 = __p;
          operator delete(__p);
        }

        if (*&buf[8])
        {
          sub_19B8750F8(*&buf[8]);
        }

        v163 = *(v163 + 8);
      }

      while (v163 != v45);
    }

    v58 = v53 + v51 + v191;
    v21 = a1;
    if (*(a1 + 2232))
    {
      v168 = 12;
      do
      {
        sub_19B973C04(v34, a1 + 1856);
        --v168;
      }

      while (v168);
      v58 += 12;
      v180 = 12;
      v37 = v51;
    }

    else
    {
      v37 = v51;
      v180 = 0;
    }
  }

  else
  {
    v191 = 0;
    v180 = 0;
    v58 = v37;
  }

  v182 = v2;
  v181 = v37;
  v187 = v58;
  if (*(v21 + 114) == 1 && ((v59 = *(v21 + 88), v60 = vabdd_f64(*(v21 + 1152), v59), v59 >= 0.0) ? (v61 = v60 <= 6.0) : (v61 = 0), v61 && (v62 = *(v21 + 4040), v183 = *(v21 + 4048), v62 != v183)))
  {
    v189 = 0;
    do
    {
      v64 = *v62;
      v63 = *(v62 + 8);
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = *(v62 + 16);
      v66 = *(v62 + 20);
      LOWORD(v198) = *(v62 + 21);
      BYTE2(v198) = *(v62 + 23);
      v67 = *(v62 + 24);
      v68 = *(v62 + 28);
      v70 = *(v62 + 32);
      v69 = *(v62 + 40);
      v187 += 2;
      v189 += 2;
      v71 = 1;
      v186 = v62;
      v72 = *(v62 + 48);
      do
      {
        v73 = v71;
        memset(buf, 0, 20);
        *&buf[20] = 1;
        *&buf[24] = 0;
        v217 = 0;
        v218 = 0;
        __p = 0;
        memset(v213, 0, sizeof(v213));
        v214 = 0u;
        v215 = 0;
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          v74 = *&buf[8];
          *buf = v64;
          *&buf[8] = v63;
          if (v74)
          {
            sub_19B8750F8(v74);
          }
        }

        else
        {
          *buf = v64;
          *&buf[8] = 0;
        }

        *&buf[16] = v65;
        buf[20] = v66;
        *&buf[21] = v198;
        buf[23] = BYTE2(v198);
        *&buf[24] = v67;
        *&buf[28] = v68;
        v213[0] = v70;
        v213[1] = v69;
        v213[2] = v72;
        sub_19B973C04(v34, buf);
        if (__p)
        {
          v217 = __p;
          operator delete(__p);
        }

        if (*&buf[8])
        {
          sub_19B8750F8(*&buf[8]);
        }

        v71 = 0;
      }

      while ((v73 & 1) != 0);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v75 = off_1EAFE4708;
      v76 = v67;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v77 = *(a1 + 1136);
        v78 = *v64;
        *buf = 134350337;
        *&buf[4] = v77;
        *&buf[12] = 2053;
        *&buf[14] = v70;
        *&buf[22] = 2053;
        *&buf[24] = v69;
        LOWORD(v213[0]) = 2050;
        *(v213 + 2) = v76;
        WORD1(v213[1]) = 2049;
        *(&v213[1] + 4) = v78;
        WORD2(v213[2]) = 1026;
        *(&v213[2] + 6) = v66;
        _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHint,add particle,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,rseg,%{private}lld,fwd,%{public}d", buf, 0x3Au);
      }

      v79 = sub_19B87DD40();
      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v80 = *(a1 + 1136);
        v81 = *v64;
        LODWORD(v208[0]) = 134350337;
        *(v208 + 4) = v80;
        WORD2(v208[1]) = 2053;
        *(&v208[1] + 6) = v70;
        HIWORD(v208[2]) = 2053;
        v208[3] = v69;
        LOWORD(v208[4]) = 2050;
        *(&v208[4] + 2) = v76;
        WORD1(v208[5]) = 2049;
        *(&v208[5] + 4) = v81;
        WORD2(v208[6]) = 1026;
        *(&v208[6] + 6) = v66;
        v82 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v82);
        if (v82 != buf)
        {
          free(v82);
        }
      }

      if (v63)
      {
        sub_19B8750F8(v63);
      }

      v62 = v186 + 56;
      v21 = a1;
    }

    while (v186 + 56 != v183);
  }

  else
  {
    v189 = 0;
  }

  if (*(v21 + 2684) == 1)
  {
    v195 = &v195;
    v196 = &v195;
    v197 = 0;
    if (((*(*v193 + 64))(v193, &v195, v21 + 1128, 1, 40.0) & 1) == 0 && *(v21 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v83 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "CLMM,railway search,roadsWithinDistance returned false", buf, 2u);
      }

      v84 = sub_19B87DD40();
      if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v208[0]) = 0;
        v85 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v85);
        if (v85 != buf)
        {
          free(v85);
        }
      }
    }

    if (!v197 || (v86 = v196, v196 == &v195))
    {
      v87 = 0;
    }

    else
    {
      v87 = 0;
      do
      {
        if (*(v86[2] + 17) == 1)
        {
          memset(v208, 0, 20);
          WORD2(v208[2]) = 1;
          LODWORD(v208[3]) = 0;
          v210 = 0;
          v211 = 0;
          v209 = 0;
          memset(&v208[4], 0, 49);
          v88 = v86[2];
          v89 = v86[3];
          if (v89)
          {
            atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
            v90 = v208[1];
            v208[0] = v88;
            v208[1] = v89;
            if (v90)
            {
              sub_19B8750F8(v90);
            }
          }

          else
          {
            v208[0] = v86[2];
            v208[1] = 0;
          }

          v91 = *(v86 + 3);
          *&v208[2] = *(v86 + 2);
          *&v208[4] = v91;
          v208[6] = v86[8];
          sub_19B973C04(v34, v208);
          sub_19B973C04(v34, v208);
          if (*(v21 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v92 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v93 = *(v21 + 1136);
              v94 = *v86[2];
              *buf = 134350081;
              *&buf[4] = v93;
              *&buf[12] = 2053;
              *&buf[14] = v208[4];
              *&buf[22] = 2053;
              *&buf[24] = v208[5];
              LOWORD(v213[0]) = 2050;
              *(v213 + 2) = *&v208[3];
              WORD1(v213[1]) = 2049;
              *(&v213[1] + 4) = v94;
              _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_DEBUG, "CLMM,railwayParticle,timestamp,%{public}.3lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.3lf,rseg,%{private}lld", buf, 0x34u);
            }

            v95 = sub_19B87DD40();
            if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v96 = *(v21 + 1136);
              v97 = *v86[2];
              v198 = 134350081;
              v199 = v96;
              v200 = 2053;
              v201 = v208[4];
              v202 = 2053;
              v203 = v208[5];
              v204 = 2050;
              v205 = *&v208[3];
              v206 = 2049;
              v207 = v97;
              v98 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v98);
              if (v98 != buf)
              {
                free(v98);
              }
            }
          }

          if (v209)
          {
            v210 = v209;
            operator delete(v209);
          }

          if (v208[1])
          {
            sub_19B8750F8(v208[1]);
          }

          v87 += 2;
        }

        v86 = v86[1];
      }

      while (v86 != &v195);
    }

    sub_19B916DC0(&v195);
  }

  else
  {
    v87 = 0;
  }

  v2 = v182;
  if (*(v21 + 2512) == 1 && *(v21 + 2233) == 1)
  {
    v100 = 4;
    do
    {
      sub_19B973C04(v34, v21 + 2520);
      --v100;
    }

    while (v100);
    v187 += 4;
    v101 = 4;
  }

  else
  {
    v101 = 0;
  }

  if (*(v21 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v102 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v103 = -1227133513 * ((*(a1 + 872) - *(a1 + 864)) >> 4);
      *buf = 67242240;
      *&buf[4] = v103;
      *&buf[8] = 1026;
      *&buf[10] = -1227133513 * (v184 >> 4);
      *&buf[14] = 1026;
      *&buf[16] = v187;
      *&buf[20] = 1026;
      *&buf[22] = v181;
      *&buf[26] = 1026;
      *&buf[28] = 0;
      LOWORD(v213[0]) = 1026;
      *(v213 + 2) = v191;
      HIWORD(v213[0]) = 1026;
      LODWORD(v213[1]) = v180;
      WORD2(v213[1]) = 1026;
      *(&v213[1] + 6) = v101;
      WORD1(v213[2]) = 1026;
      HIDWORD(v213[2]) = v189;
      _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_DEBUG, "CLMM,prediction,NrParticles,%{public}d,NrStandard,%{public}d,NrNew,%{public}d,NrPriorIntersectionParticles,%{public}d,NrNewAlternateCandidateNoiseParticles,%{public}d,NrNewFwdIntersectionParticles,%{public}d,NrNewBiasedToPrior,%{public}d,NrNewAmbiguous,%{public}d,NrNewRouteParticles,%{public}d", buf, 0x38u);
    }

    v104 = sub_19B87DD40();
    if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v105 = -1227133513 * ((*(a1 + 872) - *(a1 + 864)) >> 4);
      LODWORD(v208[0]) = 67242240;
      HIDWORD(v208[0]) = v105;
      LOWORD(v208[1]) = 1026;
      *(&v208[1] + 2) = -1227133513 * (v184 >> 4);
      HIWORD(v208[1]) = 1026;
      LODWORD(v208[2]) = v187;
      WORD2(v208[2]) = 1026;
      *(&v208[2] + 6) = v181;
      WORD1(v208[3]) = 1026;
      HIDWORD(v208[3]) = 0;
      LOWORD(v208[4]) = 1026;
      *(&v208[4] + 2) = v191;
      HIWORD(v208[4]) = 1026;
      LODWORD(v208[5]) = v180;
      WORD2(v208[5]) = 1026;
      *(&v208[5] + 6) = v101;
      WORD1(v208[6]) = 1026;
      HIDWORD(v208[6]) = v189;
      v106 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v106);
      if (v106 != buf)
      {
        free(v106);
      }
    }
  }

  v107 = a1;
  v108 = *(a1 + 864);
  if (v108 == *(a1 + 872))
  {
    v113 = 0.0;
    goto LABEL_298;
  }

  v109 = 0;
  v110 = -1227133513 * (v184 >> 4);
  v188 = v181 - 1227133513 * (v184 >> 4);
  v185 = v191 + v188;
  v111 = v189 + v180 + v191 + v188;
  if (v111 <= v87 + v111)
  {
    v111 += v87;
  }

  v190 = v111;
  v192 = v22;
  if (v22 + v35 <= 0.0)
  {
    v112 = 0.1;
  }

  else
  {
    v112 = v22 + v35 + 0.0;
  }

  v113 = 0.0;
  while (1)
  {
    if (v109 < v110)
    {
      if (byte_1EAFE4E38)
      {
        byte_1EAFE4E38 = 0;
        v114 = *&dword_1EAFE4E3C;
      }

      else
      {
        do
        {
          v115 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v116 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v117 = (v116 * v116) + (v115 * v115);
        }

        while (v117 >= 1.0);
        v114 = 0.0;
        if (v117 != 0.0)
        {
          v118 = sqrtf((logf((v116 * v116) + (v115 * v115)) * -2.0) / v117);
          *&dword_1EAFE4E3C = v116 * v118;
          byte_1EAFE4E38 = 1;
          v114 = v115 * v118;
        }
      }

      v119 = *(a1 + 1832);
      v120 = v119 * v114;
      if ((-1171354717 * v109) <= 0x1745D174 && v119 < 8.0)
      {
        v120 = fabs(v120) / v119 * 8.0;
      }

      else if ((-252645135 * v109) <= 0xF0F0F0F)
      {
        v120 = fabs(v120) / v119 * 34.0;
      }

      if (((*(*v193 + 88))(v193, v108, a1 + 912, v192 + v120) & 1) == 0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v171 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v171, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,standard particles", buf, 2u);
          }

          v172 = sub_19B87DD40();
          if (*(v172 + 160) > 1 || *(v172 + 164) > 1 || *(v172 + 168) > 1 || *(v172 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 == -1)
            {
              goto LABEL_419;
            }

            goto LABEL_427;
          }
        }

        goto LABEL_421;
      }

      goto LABEL_284;
    }

    if (v109 < v188)
    {
      v122 = *(v108 + 8);
      v208[0] = *v108;
      v208[1] = v122;
      if (v122)
      {
        atomic_fetch_add_explicit((v122 + 8), 1uLL, memory_order_relaxed);
      }

      v123 = *(v108 + 16);
      v124 = *(v108 + 32);
      v208[6] = *(v108 + 48);
      *&v208[2] = v123;
      *&v208[4] = v124;
      v125 = *(v108 + 65);
      *&v208[7] = *(v108 + 56);
      *(&v208[8] + 1) = v125;
      v210 = 0;
      v211 = 0;
      v209 = 0;
      sub_19B96775C(&v209, *(v108 + 88), *(v108 + 96), 0x8E38E38E38E38E39 * ((*(v108 + 96) - *(v108 + 88)) >> 3));
      v126 = 4;
      while (1)
      {
        v127 = (*(*v193 + 88))(v193, v108, a1 + 912, v112);
        if ((v127 & 1) == 0)
        {
          break;
        }

        v128 = v208[0];
        if (**v108 == *v208[0] && *(v108 + 20) != BYTE4(v208[2]))
        {
          v129 = v208[1];
          if (v208[1])
          {
            atomic_fetch_add_explicit((v208[1] + 8), 1uLL, memory_order_relaxed);
          }

          v130 = *(v108 + 8);
          *v108 = v128;
          *(v108 + 8) = v129;
          if (v130)
          {
            sub_19B8750F8(v130);
          }

          v131 = *&v208[2];
          v132 = *&v208[4];
          *(v108 + 48) = v208[6];
          *(v108 + 16) = v131;
          *(v108 + 32) = v132;
          v133 = *&v208[7];
          *(v108 + 65) = *(&v208[8] + 1);
          *(v108 + 56) = v133;
          if (v108 != v208)
          {
            sub_19B967884((v108 + 88), v209, v210, 0x8E38E38E38E38E39 * ((v210 - v209) >> 3));
          }

          if (--v126)
          {
            continue;
          }
        }

        goto LABEL_279;
      }

      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v139 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v139, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,prior intersection particles", buf, 2u);
        }

        v140 = sub_19B87DD40();
        if (*(v140 + 160) > 1 || *(v140 + 164) > 1 || *(v140 + 168) > 1 || *(v140 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LOWORD(v198) = 0;
          v141 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v141);
          if (v141 != buf)
          {
            free(v141);
          }
        }
      }

      ++*(a1 + 108);
LABEL_279:
      if (v209)
      {
        v210 = v209;
        operator delete(v209);
      }

      v2 = v182;
      v110 = -1227133513 * (v184 >> 4);
      if (v208[1])
      {
        sub_19B8750F8(v208[1]);
      }

      if ((v127 & 1) == 0)
      {
        v43 = 0;
        goto LABEL_335;
      }

      goto LABEL_284;
    }

    if (v109 < v185)
    {
      if (((*(*v193 + 88))(v193, v108, a1 + 912, ((v109 - v188) % 6 + 1) * 3.5 + 0.0) & 1) == 0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v173 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v173, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,fwd intersection particles", buf, 2u);
          }

          v174 = sub_19B87DD40();
          if (*(v174 + 160) > 1 || *(v174 + 164) > 1 || *(v174 + 168) > 1 || *(v174 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 == -1)
            {
              goto LABEL_419;
            }

            goto LABEL_427;
          }
        }

        goto LABEL_421;
      }

      goto LABEL_284;
    }

    if (v109 >= v180 + v185)
    {
      break;
    }

    if (byte_1EAFE4E38)
    {
      byte_1EAFE4E38 = 0;
      v134 = *&dword_1EAFE4E3C;
    }

    else
    {
      do
      {
        v135 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
        v136 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
        v137 = (v136 * v136) + (v135 * v135);
      }

      while (v137 >= 1.0);
      v134 = 0.0;
      if (v137 != 0.0)
      {
        v138 = sqrtf((logf((v136 * v136) + (v135 * v135)) * -2.0) / v137);
        *&dword_1EAFE4E3C = v136 * v138;
        byte_1EAFE4E38 = 1;
        v134 = v135 * v138;
      }
    }

    if (((*(*v193 + 88))(v193, v108, a1 + 912, *(a1 + 1832) * v134 + 0.0) & 1) == 0)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v175 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,prior snap particles", buf, 2u);
        }

        v176 = sub_19B87DD40();
        if (*(v176 + 160) > 1 || *(v176 + 164) > 1 || *(v176 + 168) > 1 || *(v176 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_419;
          }

          goto LABEL_427;
        }
      }

      goto LABEL_421;
    }

LABEL_284:
    if (!*v108)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v155 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_ERROR, "CLMM,NULL road", buf, 2u);
      }

      v156 = sub_19B87DD40();
      if ((*(v156 + 160) & 0x80000000) != 0 && (*(v156 + 164) & 0x80000000) != 0 && (*(v156 + 168) & 0x80000000) != 0 && !*(v156 + 152))
      {
        goto LABEL_89;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_323;
      }

      goto LABEL_425;
    }

    if (*(v108 + 32) == 0.0 && *(v108 + 40) == 0.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v169 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_ERROR, "CLMM,Unexpected particle with snapLat == snapLon == 0", buf, 2u);
      }

      v170 = sub_19B87DD40();
      if ((*(v170 + 160) & 0x80000000) != 0 && (*(v170 + 164) & 0x80000000) != 0 && (*(v170 + 168) & 0x80000000) != 0 && !*(v170 + 152))
      {
        goto LABEL_89;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_323:
        LOWORD(v208[0]) = 0;
        v13 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v13);
        goto LABEL_87;
      }

LABEL_425:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      goto LABEL_323;
    }

    *(v108 + 56) = 0;
    *(v108 + 64) = 0;
    *(v108 + 72) = 0;
    *(v108 + 96) = *(v108 + 88);
    memset(buf, 0, 24);
    *&buf[24] = 0x3FF0000000000000;
    memset(v213, 0, sizeof(v213));
    LODWORD(v214) = 0;
    sub_19B940928(a1, a1 + 656, v108, (a1 + 1128), v208, &v198, &v195, buf, 0);
    v142 = *&buf[16];
    *(v108 + 56) = *buf;
    *(v108 + 72) = v142;
    LODWORD(v214) = 1;
    *&buf[24] = 0x3FF0000000000000;
    sub_19B973D80(v108 + 88, buf);
    ++v109;
    v113 = v113 + *(v108 + 56);
    v108 += 112;
    v143 = *(a1 + 872);
    if (v108 == v143)
    {
      if (v113 > 0.0)
      {
        v157 = *v34;
        if (*v34 != v108)
        {
          v158 = 0.0;
          do
          {
            v159 = *(v157 + 56) / v113;
            *(v157 + 64) = v159;
            v158 = v158 + v159;
            *&v159 = v158;
            *buf = LODWORD(v159);
            sub_19B973EC0((a1 + 936), buf);
            v157 += 112;
            v143 = *(a1 + 872);
          }

          while (v157 != v143);
          v157 = *v34;
        }

        if (v143 != v157)
        {
          v160 = 0.0;
          do
          {
            v160 = v160 + *(v157 + 64) * *(v157 + 64);
            v157 += 112;
          }

          while (v157 != v143);
          if (v160 > 0.0)
          {
            *(a1 + 1608) = 1.0 / v160;
          }
        }

        goto LABEL_334;
      }

LABEL_298:
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v149 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v113;
          _os_log_impl(&dword_19B873000, v149, OS_LOG_TYPE_ERROR, "CLMM,totalScore<=0,%{public}.1lf", buf, 0xCu);
        }

        v150 = sub_19B87DD40();
        v107 = a1;
        if ((*(v150 + 160) & 0x80000000) == 0 || (*(v150 + 164) & 0x80000000) == 0 || (*(v150 + 168) & 0x80000000) == 0 || *(v150 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LODWORD(v208[0]) = 134349056;
          *(v208 + 4) = v113;
          v151 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v151);
          if (v151 != buf)
          {
            free(v151);
          }

          v107 = a1;
        }
      }

      v152 = v107;
      v153 = *(v107 + 872);
      v154 = *(v152 + 864);
      while (v153 != v154)
      {
        v153 -= 14;
        sub_19B988BB4(v153);
      }

      v43 = 0;
      v44 = a1;
      *(a1 + 872) = v154;
      goto LABEL_90;
    }
  }

  if (v109 < v190)
  {
    goto LABEL_284;
  }

  if (byte_1EAFE4E38)
  {
    byte_1EAFE4E38 = 0;
    v144 = *&dword_1EAFE4E3C;
  }

  else
  {
    do
    {
      v145 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
      v146 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
      v147 = (v146 * v146) + (v145 * v145);
    }

    while (v147 >= 1.0);
    v144 = 0.0;
    if (v147 != 0.0)
    {
      v148 = sqrtf((logf((v146 * v146) + (v145 * v145)) * -2.0) / v147);
      *&dword_1EAFE4E3C = v146 * v148;
      byte_1EAFE4E38 = 1;
      v144 = v145 * v148;
    }
  }

  if ((*(*v193 + 88))(v193, v108, a1 + 912, v192 + *(a1 + 1832) * v144))
  {
    goto LABEL_284;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v177 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v177, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,alternate ambiguous particles", buf, 2u);
    }

    v178 = sub_19B87DD40();
    if (*(v178 + 160) > 1 || *(v178 + 164) > 1 || *(v178 + 168) > 1 || *(v178 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_419:
        LOWORD(v208[0]) = 0;
        v179 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v179);
        if (v179 != buf)
        {
          free(v179);
        }

        goto LABEL_421;
      }

LABEL_427:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      goto LABEL_419;
    }
  }

LABEL_421:
  v43 = 0;
  v99 = a1;
LABEL_422:
  ++*(v99 + 108);
LABEL_335:
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v161 = *MEMORY[0x1E69E9840];
  return v43;
}