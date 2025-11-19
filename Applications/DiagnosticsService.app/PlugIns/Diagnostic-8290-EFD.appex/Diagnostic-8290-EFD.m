id *sub_100001764(id *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    [a2 acceleration];
    v4 = v3;
    v6 = fabs(v5);
    v7 = [v2[4] xThreshold];
    [v7 doubleValue];
    if (v6 > fabs(v8))
    {
    }

    else
    {
      v9 = [v2[4] zThreshold];
      [v9 doubleValue];
      v11 = fabs(v10);

      if (fabs(v4) <= v11)
      {
        return [v2[4] stop];
      }
    }

    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v2[4] xThreshold];
      [v14 doubleValue];
      v16 = fabs(v15);
      v17 = [v2[4] zThreshold];
      [v17 doubleValue];
      v19 = 134219010;
      v20 = v6;
      v21 = 2048;
      v22 = fabs(v4);
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = fabs(v18);
      v27 = 2112;
      v28 = @"IncorrectOrientationNotification";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Gyroscope values { x: %f z: %f } are out of the thresholds allowed { x: %f z: %f }. Posting %@", &v19, 0x34u);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"IncorrectOrientationNotification" object:0];

    return [v2[4] stop];
  }

  return result;
}

void sub_100001EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Block_object_dispose((v29 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100001F1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 acceleration];
    v10 = *(*(a1 + 40) + 8);
    if (v7 > *(v10 + 24))
    {
      *(v10 + 24) = v7;
    }

    v11 = *(*(a1 + 48) + 8);
    if (v7 < *(v11 + 24))
    {
      *(v11 + 24) = v7;
    }

    v12 = *(*(a1 + 56) + 8);
    if (v8 > *(v12 + 24))
    {
      *(v12 + 24) = v8;
    }

    v13 = *(*(a1 + 64) + 8);
    if (v8 < *(v13 + 24))
    {
      *(v13 + 24) = v8;
    }

    v14 = *(*(a1 + 72) + 8);
    if (v9 > *(v14 + 24))
    {
      *(v14 + 24) = v9;
    }

    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 24);
    if (v9 < v16)
    {
      *(v15 + 24) = v9;
      v16 = *(*(*(a1 + 80) + 8) + 24);
    }

    v17 = *(*(*(a1 + 40) + 8) + 24);
    v18 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(*(*(a1 + 56) + 8) + 24);
    v20 = *(*(*(a1 + 64) + 8) + 24);
    v21 = *(*(*(a1 + 72) + 8) + 24);
    v22 = vabdd_f64(v17, v18);
    v23 = vabdd_f64(v19, v20);
    v24 = vabdd_f64(v21, v16);
    if (v23 < v24)
    {
      v23 = v24;
    }

    if (v22 >= v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v26 = [*(a1 + 32) threshold];
    [v26 doubleValue];
    v28 = v27;

    if (v25 > v28)
    {
      v29 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = [*(a1 + 32) threshold];
        [v33 doubleValue];
        v34 = [NSNumber numberWithDouble:?];
        v35 = [NSNumber numberWithDouble:v17 - v18];
        v36 = [NSNumber numberWithDouble:v19 - v20];
        v37 = [NSNumber numberWithDouble:v21 - v16];
        v38 = 138413058;
        v39 = v34;
        v40 = 2112;
        v41 = v35;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v37;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Motion detection threshold value %@ exceeded. X: %@ Y: %@ Z: %@", &v38, 0x2Au);
      }

      *(*(*(a1 + 88) + 8) + 24) = 1;
      v30 = +[NSNotificationCenter defaultCenter];
      [v30 postNotificationName:@"MotionDetectedNotification" object:0];
    }

    v31 = *(*(a1 + 88) + 8);
    if (*(v31 + 24) == 1)
    {
      *(v31 + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 64) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 48) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
      *(*(*(a1 + 80) + 8) + 24) = 0x10000000000000;
      *(*(*(a1 + 64) + 8) + 24) = 0x10000000000000;
      *(*(*(a1 + 40) + 8) + 24) = 0x10000000000000;
    }
  }

  else
  {
    v32 = [*(a1 + 32) motionManager];
    [v32 stopAccelerometerUpdates];
  }
}

void sub_100002BD8(uint64_t a1)
{
  dsema = [*(a1 + 32) chamberReadySemaphore];
  v2 = [*(a1 + 32) inputs];
  v3 = dispatch_time(0, 1000000000 * [v2 detectChamberReadyWaitTime]);
  if (dispatch_semaphore_wait(dsema, v3))
  {
    v4 = [*(a1 + 32) started];

    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) inputs];
        *buf = 67109120;
        v10 = [v6 detectChamberReadyWaitTime];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Chamber is not ready within timeout specified: %u", buf, 8u);
      }

      [*(a1 + 32) stop];
      v7 = [*(a1 + 32) delegate];
      [v7 handleChamberStatus:2];
    }
  }

  else
  {
  }
}

id archiveFiles(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[DSMutableArchive archive];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      v14 = v7;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * v13);
        v24 = v14;
        v16 = [v8 addURL:v15 error:&v24];
        v7 = v24;

        if ((v16 & 1) == 0)
        {
          v21 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10000F534(v7, v21);
          }

          v20 = v9;
          goto LABEL_15;
        }

        v13 = v13 + 1;
        v14 = v7;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;

  v18 = DKTemporaryDirectoryURL();
  v23 = v7;
  v19 = [v8 archiveAsTempFileWithTemplate:v6 directory:v18 suffix:@".tar.gz" error:&v23];
  v7 = v23;

  if (!v19)
  {
    v20 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000F5AC(v7, v20);
    }

LABEL_15:

    v19 = 0;
  }

  return v19;
}

FFTSetup AAT_initWithLength(FFTSetup result)
{
  if (!qword_100024208)
  {
    if (result < 2)
    {
      v1 = 0;
    }

    else
    {
      v1 = 0;
      v2 = 1;
      do
      {
        v2 *= 2;
        ++v1;
      }

      while (v2 < result);
    }

    result = vDSP_create_fftsetup(v1, 0);
    qword_100024208 = result;
  }

  return result;
}

void AAT_processFrequencyResponseGxx(float *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t *a8)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F624();
  }

  v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    sub_10000F69C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = a6 >> 1;
  if (a6 >= 2)
  {
    v72 = 0;
    do
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v73 = (a5 + 8 * v72++);
        v74 = *v73;
        v75 = v73[1];
        *buf = 67109632;
        v156 = v72;
        v157 = 2048;
        v158 = v74;
        v159 = 2048;
        v160 = v75;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "  bin%d: %.0f - %.0f\n", buf, 0x1Cu);
      }

      else
      {
        ++v72;
      }
    }

    while (v72 != v20);
  }

  v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v21)
  {
    sub_10000F6D8(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F714();
  }

  v29 = 0;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a3 + 4 * v29++);
      *buf = 67109376;
      v156 = v29;
      v157 = 2048;
      v158 = v30;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %.21g\n", buf, 0x12u);
    }

    else
    {
      ++v29;
    }
  }

  while (v29 != 5);
  v31 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v31)
  {
    sub_10000F6D8(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F78C();
  }

  v39 = 0;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v40 = a1[v39++];
      *buf = 67109376;
      v156 = v39;
      v157 = 2048;
      v158 = v40;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %.21g\n", buf, 0x12u);
    }

    else
    {
      ++v39;
    }
  }

  while (v39 != 5);
  v41 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v41)
  {
    sub_10000F6D8(v41, v42, v43, v44, v45, v46, v47, v48);
  }

  v147 = a7;
  v49 = 1;
  do
  {
    v50 = v49;
    v49 = (2 * v49);
  }

  while (v50 < a2);
  v146 = malloc_type_calloc(v50, 4uLL, 0x100004052888210uLL);
  cblas_scopy_NEWLAPACK_ILP64();
  v151 = malloc_type_calloc(v50, 4uLL, 0x100004052888210uLL);
  v51 = a2 + a4 - 1;
  if (a4 <= a2)
  {
    v52 = a2 - a4;
  }

  else
  {
    v52 = a4 - a2;
  }

  v53 = (v52 + v51);
  __F = a1;
  v54 = malloc_type_calloc(v53, 4uLL, 0x100004052888210uLL);
  v55 = malloc_type_calloc(v51 + a2, 4uLL, 0x100004052888210uLL);
  cblas_scopy_NEWLAPACK_ILP64();
  vDSP_conv(v55, 1, __F, 1, &v54[v52], 1, v51, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F804();
  }

  if (v51 >= 0xF)
  {
    v56 = 15;
  }

  else
  {
    v56 = a2 + a4 - 1;
  }

  v57 = v53 - v56;
  if (v57 < v53)
  {
    v58 = v57;
    do
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v60 = v54[v58++];
        *buf = 67109376;
        v156 = v58;
        v157 = 2048;
        v158 = v60;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d:  %.21g\n", buf, 0x12u);
        v59 = v58;
      }

      else
      {
        v59 = ++v58;
      }
    }

    while (v59 < v53);
  }

  v61 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v61)
  {
    sub_10000F6D8(v61, v62, v63, v64, v65, v66, v67, v68);
  }

  free(v55);
  if (v53)
  {
    v69 = 0;
    v70 = 0.0;
    do
    {
      v71 = fabsf(v54[v69]);
      if (v71 > v70)
      {
        v70 = v71;
      }

      ++v69;
    }

    while (v53 != v69);
  }

  cblas_scopy_NEWLAPACK_ILP64();
  free(v54);
  v76 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v76)
  {
    sub_10000F888(v76, v77, v78, v79, v80, v81, v82, v83);
  }

  v84 = 0;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v85 = *(&v151->real + v84++);
      *buf = 67109376;
      v156 = v84;
      v157 = 2048;
      v158 = v85;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %.21g\n", buf, 0x12u);
    }

    else
    {
      ++v84;
    }
  }

  while (v84 != 5);
  v86 = v50 >> 1;
  v87 = (v50 >> 1) + 1;
  v88 = malloc_type_calloc(v87, 4uLL, 0x100004052888210uLL);
  v154 = v88;
  sub_100004FFC(v146, v50, v147, &v154);
  free(v146);
  v89 = malloc_type_calloc(v87, 4uLL, 0x100004052888210uLL);
  v153 = v89;
  sub_100004FFC(v151, v50, v147, &v153);
  v90 = 0;
  do
  {
    v89[v90 / 4] = log10f(v89[v90 / 4] / *&v88[v90]) * 10.0;
    v90 += 4;
  }

  while (((2 * v50) & 0x1FFFFFFFCLL) + 4 != v90);
  free(v151);
  free(v88);
  v91 = malloc_type_calloc(v50, 4uLL, 0x100004052888210uLL);
  v93 = v91;
  if (v50)
  {
    v94 = 0;
    *v92.i32 = v147 / v50;
    v95 = vdupq_n_s64(v50 - 1);
    v96 = xmmword_100015150;
    v97 = xmmword_100015160;
    v98 = vdupq_n_s64(4uLL);
    v99 = v91 + 2;
    do
    {
      v100 = vmovn_s64(vcgeq_u64(v95, v97));
      if (vuzp1_s16(v100, v92).u8[0])
      {
        *(v99 - 2) = *v92.i32 * v94;
      }

      if (vuzp1_s16(v100, v92).i8[2])
      {
        *(v99 - 1) = *v92.i32 * (v94 + 1);
      }

      if (vuzp1_s16(v92, vmovn_s64(vcgeq_u64(v95, *&v96))).i32[1])
      {
        *v99 = *v92.i32 * (v94 + 2);
        v99[1] = *v92.i32 * (v94 + 3);
      }

      v94 += 4;
      v96 = vaddq_s64(v96, v98);
      v97 = vaddq_s64(v97, v98);
      v99 += 4;
    }

    while (((v50 + 3) & 0x1FFFFFFFCLL) != v94);
  }

  v101 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v101)
  {
    sub_10000F8C4(v101, v102, v103, v104, v105, v106, v107, v108);
  }

  v109 = 0;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v110 = v89[v109++];
      *buf = 67109376;
      v156 = v109;
      v157 = 2048;
      v158 = v110;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %.21g\n", buf, 0x12u);
    }

    else
    {
      ++v109;
    }
  }

  while (v109 != 5);
  if (a6 >= 2)
  {
    v111 = 0;
    v112 = v93[1] - *v93;
    v113 = *a8;
    v114 = v50 >> 1;
    do
    {
      v115 = 0;
      v116 = (a5 + 8 * v111);
      v117 = v116[1];
      while (v93[v115] <= *v116)
      {
        if (v87 == ++v115)
        {
          v118 = 0;
          goto LABEL_93;
        }
      }

      v119 = 0.0;
      if (v86 < v115)
      {
        goto LABEL_100;
      }

      v118 = v115;
LABEL_93:
      v120 = v118;
      v121 = v118 - 1;
      v122 = v118;
      v123 = &v93[v122];
      while (*v123 <= v117)
      {
        ++v121;
        ++v123;
        if (v114 == v121)
        {
          LODWORD(v121) = 0;
          break;
        }
      }

      v119 = 0.0;
      if (v120 <= v121)
      {
        v124 = (v121 + 1) - v120;
        v125 = &v89[v122];
        do
        {
          v126 = *v125++;
          v119 = v119 + (__exp10f(v126 / 10.0) * v112);
          --v124;
        }

        while (v124);
      }

LABEL_100:
      *(v113 + 4 * v111++) = log10f(v119) * 10.0;
    }

    while (v111 != v20);
  }

  v127 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v127)
  {
    sub_10000F900(v127, v128, v129, v130, v131, v132, v133, v134);
  }

  if (a6 >= 2)
  {
    v143 = 0;
    do
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v144 = *(*a8 + 4 * v143++);
        *buf = 67109376;
        v156 = v143;
        v157 = 2048;
        v158 = v144;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %.21f\n", buf, 0x12u);
      }

      else
      {
        ++v143;
      }
    }

    while (v143 != v20);
  }

  v135 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v135)
  {
    sub_10000F6D8(v135, v136, v137, v138, v139, v140, v141, v142);
  }

  free(v89);
  free(v93);
}

void sub_100004FFC(const DSPComplex *a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v8 = a2 >> 1;
  v9 = malloc_type_calloc((a2 >> 1) + 1, 4uLL, 0x100004052888210uLL);
  if (a2 < 2)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v11 *= 2;
      ++v10;
    }

    while (v11 < a2);
  }

  v65 = a4;
  v12 = v11 / 2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F93C();
  }

  __Z.realp = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
  __Z.imagp = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
  vDSP_ctoz(a1, 2, &__Z, 1, v12);
  vDSP_fft_zrip(qword_100024208, &__Z, 1, v10, 1);
  realp = __Z.realp;
  imagp = __Z.imagp;
  if (v11 >= 2)
  {
    v15 = __Z.realp;
    v16 = __Z.imagp;
    v17 = (v11 / 2);
    do
    {
      *v15 = *v15 * 0.5;
      ++v15;
      *v16 = *v16 * 0.5;
      ++v16;
      --v17;
    }

    while (v17);
  }

  realp[v12] = *imagp;
  *imagp = 0.0;
  if (v12 + 1 < v11)
  {
    v18 = ~v12 + v11;
    v19 = 4 * v12 + 4;
    v20 = (imagp + v19);
    v21 = (realp + v19);
    v22 = v12 - 1;
    do
    {
      *v21++ = LODWORD(realp[v22]);
      *v20++ = -imagp[v22--];
      --v18;
    }

    while (v18);
  }

  v23 = 1.0 / a3;
  v24 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v24)
  {
    sub_10000F9C8(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  for (i = 0; i != 5; ++i)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v33 = __Z.realp[i];
      v34 = __Z.imagp[i];
      *buf = 67109632;
      v68 = i + 1;
      v69 = 2048;
      v70 = v33;
      v71 = 2048;
      v72 = v34;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %8g  +  %8gi\n", buf, 0x1Cu);
    }
  }

  v35 = 0;
  v37 = __Z.realp;
  v36 = __Z.imagp;
  do
  {
    v38 = ((v23 * v37[v35 / 4]) * (v23 * v37[v35 / 4])) + ((v23 * v36[v35 / 4]) * (v23 * v36[v35 / 4]));
    v9[v35 / 4] = (v38 + v38) / (v23 * a2);
    v35 += 4;
  }

  while (((2 * a2) & 0x1FFFFFFFCLL) + 4 != v35);
  free(v36);
  free(__Z.realp);
  *v9 = *v9 * 0.5;
  if ((a2 & 1) == 0)
  {
    v9[v8] = v9[v8] * 0.5;
  }

  v39 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v39)
  {
    sub_10000FA04(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  v47 = 0;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v48 = v9[v47++];
      *buf = 67109376;
      v68 = v47;
      v69 = 2048;
      v70 = v48;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %.21g\n", buf, 0x12u);
    }

    else
    {
      ++v47;
    }
  }

  while (v47 != 5);
  v49 = 0;
  v50 = *v65;
  v51 = 4 * v8;
  v52 = v9 - 2;
  do
  {
    if (!v49 || v51 == v49)
    {
      v54 = v9[v49 / 4];
    }

    else
    {
      v53 = &v52[v49 / 4];
      if (v49 == 4 || 4 * (v8 - 1) == v49)
      {
        v54 = ((v53[1] + v53[2]) + v53[3]) / 3.0;
      }

      else
      {
        v54 = ((((v52[v49 / 4] + v52[v49 / 4 + 1]) + v53[2]) + v52[v49 / 4 + 3]) + v52[v49 / 4 + 4]) / 5.0;
      }
    }

    *(v50 + v49) = v54;
    v49 += 4;
  }

  while (v51 + 4 != v49);
  v55 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v55)
  {
    sub_10000FA40(v55, v56, v57, v58, v59, v60, v61, v62);
  }

  v63 = 0;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v64 = *(*v65 + 4 * v63++);
      *buf = 67109376;
      v68 = v63;
      v69 = 2048;
      v70 = v64;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: %.21g\n", buf, 0x12u);
    }

    else
    {
      ++v63;
    }
  }

  while (v63 != 5);
  free(v9);
}

void AAT_processCrackledData(const float *a1, int a2, int a3, int a4, int a5, const vDSP_biquad_SetupStruct **a6, float *a7, float *a8, float *a9, _DWORD *a10)
{
  if (a3 <= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000FB5C();
    }
  }

  else if (a4 <= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000FAEC();
    }
  }

  else if (a5 <= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000FA7C();
    }
  }

  else
  {
    v11 = (2 * a3 / a4);
    if (v11 >= 1)
    {
      v45 = a9;
      v17 = a2;
      v18 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
      vDSP_biquad(*a6, a7, a1, 1, v18, 1, v17);
      v19 = (v11 + 1);
      __chkstk_darwin();
      v21 = (&v45 - v20);
      v22 = 0;
      v23 = 0;
      do
      {
        if (a2 - v11 < 1)
        {
          v29 = 0.0;
        }

        else
        {
          v24 = 0.0;
          v25 = (a2 - v11);
          v26 = v18;
          do
          {
            v27 = v26[v22];
            v28 = *v26++;
            v24 = v24 + (v28 * v27);
            --v25;
          }

          while (v25);
          v29 = v24;
        }

        *&v21[v23++] = v29;
        ++v22;
      }

      while (v23 != v19);
      free(v18);
      v30 = &v21[v11];
      v31 = *v30;
      if (*v30 <= *(v30 - 1))
      {
        v31 = *(v30 - 1);
      }

      v32 = ((v11 + 1.0) * 0.5);
      v33 = floor(v32) - a5;
      if (v33 <= (a5 - 1))
      {
        LODWORD(v34) = 0;
        v35 = 0.0;
        v36 = v45;
      }

      else
      {
        v34 = 0;
        v35 = 0.0;
        v36 = v45;
        do
        {
          v35 = v35 + fabsf(*&v21[(a5 - 1) + v34]);
          v37 = (a5 + v34++);
        }

        while (v33 > v37);
      }

      v38 = *v21;
      v39 = (ceil(v32) + a5 + -1.0);
      if (v19 - a5 > v39)
      {
        v40 = v39;
        v41 = &v21[v39];
        v42 = v40 + a5 - v19;
        do
        {
          v43 = *v41++;
          v35 = v35 + fabsf(v43);
          LODWORD(v34) = v34 + 1;
        }

        while (!__CFADD__(v42++, 1));
      }

      *a8 = v31;
      *v36 = v31 / (v35 / v34);
      *a10 = v38;
    }
  }
}

void sub_100005840(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100005874(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100005C90(uint64_t a1)
{
  v2 = [*(a1 + 32) testCompletionSemaphore];
  v3 = [*(a1 + 32) inputs];
  v4 = [v3 sequenceTimeout];
  v5 = [v4 unsignedLongValue];
  v6 = [*(a1 + 32) inputs];
  v7 = [v6 sequences];
  v8 = dispatch_time(0, 1000000000 * v5 * [v7 count]);
  v9 = dispatch_semaphore_wait(v2, v8);

  if (v9)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio test has timed out while waiting for completion.", v11, 2u);
    }

    [*(a1 + 32) endTesting:4294966292 immediately:0];
  }
}

id sub_1000063B4(uint64_t a1)
{
  v2 = [*(a1 + 32) testEndedSemaphore];
  v3 = [*(a1 + 32) airpodsInputs];
  v4 = [v3 chamberInputs];
  v5 = dispatch_time(0, 1000000000 * [v4 testCompleteAlertTime]);
  dispatch_semaphore_wait(v2, v5);

  [*(a1 + 32) stopAlerts];
  v6 = *(a1 + 32);

  return [v6 setFinished:1];
}

void sub_100008104(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) setAudioSystemResults:v2];

  dsema = dispatch_semaphore_create(0);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v3 = [*(a1 + 32) inputs];
  v4 = [v3 sequences];

  v5 = [v4 countByEnumeratingWithState:&v81 objects:v97 count:16];
  if (v5)
  {
    v6 = v5;
    v70 = 0;
    v7 = *v82;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v82 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v81 + 1) + 8 * i);
        if ([*(a1 + 32) testFailed])
        {
          dispatch_semaphore_signal(dsema);
        }

        else
        {
          v10 = [v9 outputs];
          v11 = [v10 count];

          if (v11 == 1)
          {
            [*(a1 + 32) testSequence:v9 completionSemaphore:dsema];
          }

          else
          {
            v95 = NSLocalizedDescriptionKey;
            v96 = @"Sequence has more than 1 output.";
            v12 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v13 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-64 userInfo:v12];

            [*(a1 + 32) failedToExecuteWithError:v13];
            dispatch_semaphore_signal(dsema);
            v70 = v13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v81 objects:v97 count:16];
    }

    while (v6);
  }

  else
  {
    v70 = 0;
  }

  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Waiting for sequences to complete...", buf, 2u);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v15 = [*(a1 + 32) inputs];
  v16 = [v15 sequences];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (!v17)
  {
LABEL_28:

    v27 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "All sequences complete", buf, 2u);
    }

    if (*(a1 + 40) == 1)
    {
      v28 = [*(a1 + 32) rawRecordings];
      v29 = [@"RecordedAudio" stringByAppendingString:@"XXXXXX"];
      v30 = v70;
      obj = archiveFiles(v28, v29, v70);

      v31 = DiagnosticLogHandleForCategory();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v70)
      {
        if (v32)
        {
          *buf = 138412290;
          v93 = v70;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "ERROR archiving recording data: %@", buf, 0xCu);
        }
      }

      else
      {
        if (v32)
        {
          *buf = 138412290;
          v93 = obj;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Successfully archived raw audio to [%@]", buf, 0xCu);
        }

        v31 = objc_alloc_init(NSFileManager);
        v35 = [*(a1 + 32) tmpdir];
        v36 = [@"RecordedAudio" stringByAppendingString:@".tar.gz"];
        v37 = [v35 URLByAppendingPathComponent:v36];

        v76 = 0;
        v38 = [v31 moveItemAtURL:obj toURL:v37 error:&v76];
        v30 = v76;
        v39 = DiagnosticLogHandleForCategory();
        v40 = v39;
        if (v38)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v93 = v37;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Successfully renamed raw audio archive to [%@]", buf, 0xCu);
          }

          v40 = obj;
          obj = v37;
        }

        else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_10000FCBC();
        }
      }
    }

    else
    {
      obj = 0;
      v30 = v70;
    }

    if ([*(a1 + 32) isCancelled])
    {
      goto LABEL_78;
    }

    if (([*(a1 + 32) testFailed] & 1) == 0)
    {
      v41 = [*(a1 + 32) result];
      [v41 setStatusCode:&off_10001D7A0];
    }

    v88 = @"dbResults";
    v42 = [*(a1 + 32) audioSystemResults];
    v89 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    v44 = [*(a1 + 32) result];
    [v44 setData:v43];

    if (*(a1 + 40) != 1)
    {
      goto LABEL_78;
    }

    v45 = v30;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v46 = [*(a1 + 32) inputs];
    v47 = [v46 sequences];

    v48 = [v47 countByEnumeratingWithState:&v72 objects:v87 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v73;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v73 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = [*(*(&v72 + 1) + 8 * j) completedResultCount];
          v50 += [v53 intValue];
        }

        v49 = [v47 countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v49);
    }

    else
    {
      v50 = 0;
    }

    if (obj && ([*(a1 + 32) rawRecordings], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "count"), v54, v55 == v50))
    {
      v56 = [*(a1 + 32) writeCurrentResultsToJson];
      v57 = v56;
      v30 = v45;
      if (v56)
      {
        v86[0] = obj;
        v86[1] = v56;
        v58 = [NSArray arrayWithObjects:v86 count:2];
        v59 = [*(a1 + 32) archiveNameTemplate];
        v60 = archiveFiles(v58, v59, v30);

        v61 = DiagnosticLogHandleForCategory();
        v62 = v61;
        if (v30)
        {
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_10000FD24();
          }
        }

        else
        {
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v93 = v60;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Successfully created combined results archive at [%@]", buf, 0xCu);
          }

          v85 = v60;
          v62 = [NSArray arrayWithObjects:&v85 count:1];
          v67 = [*(a1 + 32) result];
          [v67 setFiles:v62];
        }
      }

      else
      {
        v63 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Unable to include test results in archive. Prioritizing Kets over recorded audio", buf, 2u);
        }

        v64 = [*(a1 + 32) result];
        v65 = [v64 statusCode];
        v66 = [v65 isEqualToNumber:&off_10001D7A0];

        if (!v66)
        {
          goto LABEL_77;
        }

        v60 = [*(a1 + 32) result];
        [v60 setStatusCode:&off_10001D7B8];
      }
    }

    else
    {
      v57 = [*(a1 + 32) result];
      [v57 setStatusCode:&off_10001D7B8];
      v30 = v45;
    }

LABEL_77:

LABEL_78:
    [*(a1 + 32) testFinishedSuccessfully];
    goto LABEL_79;
  }

  v19 = v17;
  v20 = *v78;
  *&v18 = 136315138;
  v68 = v18;
  while (1)
  {
    if (*v78 != v20)
    {
      objc_enumerationMutation(obj);
    }

    v21 = [*(a1 + 32) inputs];
    v22 = [v21 sequenceTimeout];
    v23 = dispatch_time(0, 1000000000 * [v22 unsignedLongValue]);
    v24 = dispatch_semaphore_wait(dsema, v23);

    v25 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = "timed out";
      if (!v24)
      {
        v26 = "finished";
      }

      *buf = v68;
      v93 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sequence has %s while waiting for completion.", buf, 0xCu);
    }

    if (v24)
    {
      break;
    }

    if (!--v19)
    {
      v19 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
      if (!v19)
      {
        goto LABEL_28;
      }
    }
  }

  v33 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Timed out while waiting on sequence completion semaphore. Ending test.", buf, 2u);
  }

  v90 = NSLocalizedDescriptionKey;
  v91 = @"Timed out waiting for sequences to finish running.";
  v34 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v30 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-71 userInfo:v34];

  [*(a1 + 32) failedToExecuteWithError:v30];
  [*(a1 + 32) setFinished:1];
LABEL_79:
}

void sub_100008EDC(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "This is the first time failedToExecuteWithError was called. Using this error for the failing status code", v7, 2u);
  }

  v3 = [*(a1 + 32) result];
  [v3 setData:&__NSDictionary0__struct];

  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) code]);
  v5 = [*(a1 + 32) result];
  [v5 setStatusCode:v4];

  [*(a1 + 32) setTestFailed:1];
  v6 = [*(a1 + 32) audioTest];
  [v6 cancel];
}

uint64_t sub_100009C38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009C50(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000A0FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) testFailed])
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v42 = v8;
      v9 = "Test appears to have already failed. Not proceeding with completion block for sequence {%@}";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    if ([v5 count])
    {
      v10 = objc_alloc_init(NSMutableArray);
      v11 = *(a1 + 32);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = [*(a1 + 72) index];
      [v11 parseTestResults:v5 fromOutput:v12 withFile:v13 parsedResults:v10 sequenceIndex:v14 error:v6];

      v15 = [*(a1 + 32) audioSystemResults];
      [v15 addObject:v10];

      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
      [*(a1 + 72) setCompletedResultCount:v16];

      goto LABEL_7;
    }

LABEL_27:
    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10000FF60(a1, v24, v25, v26, v27, v28, v29, v30);
    }

    v33 = NSLocalizedDescriptionKey;
    v34 = @"Sequence completed with no results";
    v31 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v32 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-72 userInfo:v31];

    [*(a1 + 32) failedToExecuteWithError:v32];
    dispatch_semaphore_signal(*(a1 + 48));

    goto LABEL_11;
  }

  v18 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10000FE90();
  }

  if (v6)
  {
    if ([v6 code] == -2 || objc_msgSend(v6, "code") == -3)
    {
      v39 = NSLocalizedDescriptionKey;
      v19 = [v6 localizedDescription];
      v40 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v21 = -56;
    }

    else
    {
      v37 = NSLocalizedDescriptionKey;
      v19 = [v6 localizedDescription];
      v38 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v21 = -67;
    }

    v22 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:v21 userInfo:v20];
  }

  else
  {
    v35 = NSLocalizedDescriptionKey;
    v36 = @"Sequence completed with nil result";
    v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v22 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-72 userInfo:v19];
  }

  if (!v22)
  {
    if ([0 count])
    {
      [*(a1 + 72) setCompletedResultCount:&off_10001D7D0];
LABEL_7:
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        *buf = 138412290;
        v42 = v17;
        v9 = "Completion finished for test sequence %@";
        goto LABEL_9;
      }

LABEL_10:

      dispatch_semaphore_signal(*(a1 + 48));
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  v23 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_10000FEF8();
  }

  [*(a1 + 32) failedToExecuteWithError:v22];
  dispatch_semaphore_signal(*(a1 + 48));

LABEL_11:
}

void sub_10000BD9C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000BDD4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t sensorEventTypeToString(unsigned int a1)
{
  if (a1 < 5)
  {
    return *(&off_10001C670 + a1);
  }

  [NSException raise:NSGenericException format:@"Unexpected DAChamberSensorEventType.", v1, v2];
  return 0;
}

void ALSHIDEventCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a4 && (isKindOfClass & 1) != 0)
  {
    [v6 handleHIDEvent:a4];
  }
}

void sub_10000D058(uint64_t a1)
{
  if ([*(a1 + 32) HIDSystemClient])
  {
    CFRelease([*(a1 + 32) HIDSystemClient]);
    [*(a1 + 32) setHIDSystemClient:0];
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Release system client", buf, 2u);
    }
  }

  if ([*(a1 + 32) HIDServiceClient])
  {
    CFRelease([*(a1 + 32) HIDServiceClient]);
    [*(a1 + 32) setHIDServiceClient:0];
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Release service client", v4, 2u);
    }
  }
}

BOOL sub_10000DED8(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 length] && objc_msgSend(v2, "length") < 0x101;

  return v3;
}

BOOL sub_10000DF28(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 length] && objc_msgSend(v2, "length") < 0x33;

  return v3;
}

void sub_10000E168(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  v5 = a2;
  v7 = [v3 dk_numberFromRequiredKey:v5 lowerBound:&off_10001D8A8 upperBound:&off_10001D8C0 failed:v4 + 24];
  v6 = [*(a1 + 40) inputValueToName];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

void sub_10000E20C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E30C;
  v10[3] = &unk_10001C728;
  v11 = objc_alloc_init(OutputSpecification);
  v12 = v5;
  v13 = *(a1 + 40);
  v7 = v5;
  v8 = v11;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  v9 = [*(a1 + 32) outputSpecifications];
  [v9 setObject:v8 forKeyedSubscript:v6];
}

void sub_10000E30C(uint64_t a1)
{
  v2 = [*(a1 + 40) dk_numberFromRequiredKey:@"mode" lowerBound:&off_10001D8A8 upperBound:&off_10001D8D8 failed:*(*(a1 + 48) + 8) + 24];
  [*(a1 + 32) setMode:v2];

  v3 = [*(a1 + 40) dk_numberFromRequiredKey:@"channel" lowerBound:&off_10001D8A8 upperBound:&off_10001D8D8 failed:*(*(a1 + 48) + 8) + 24];
  [*(a1 + 32) setChannel:v3];
}

void sub_10000F534(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR finding log(s): %@", &v2, 0xCu);
}

void sub_10000F5AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ERROR archiving logs: %@", &v2, 0xCu);
}

void sub_10000F624()
{
  sub_100005868();
  sub_10000585C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000F714()
{
  sub_100005868();
  sub_10000585C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000F78C()
{
  sub_100005868();
  sub_10000585C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000F804()
{
  sub_100005868();
  sub_10000585C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10000F93C()
{
  sub_100005868();
  sub_10000585C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10000FBCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to disable headphone exposure notifications: %@", &v2, 0xCu);
}

void sub_10000FC44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to restore original headphone exposure notification setting: %@", &v2, 0xCu);
}

void sub_10000FD8C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000BDB8();
  sub_10000BDC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000FE18(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localizedDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Error clearing temporary files: %@", a1, 0xCu);
}

void sub_10000FFD0(void *a1)
{
  [a1 inputID];
  sub_10000BDB8();
  sub_10000BDC4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100010050(uint64_t a1, void *a2)
{
  v7 = [a2 outputDevice];
  sub_10000BDC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000101A4(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "DAWifiSensor: Scan completed with error: %@", &v4, 0xCu);
}