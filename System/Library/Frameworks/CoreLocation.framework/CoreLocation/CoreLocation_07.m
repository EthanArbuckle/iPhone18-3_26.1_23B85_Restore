void sub_19B973AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B973C04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_19B9888FC(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    v7 = *(a2 + 56);
    v8 = *(a2 + 65);
    *(v3 + 88) = 0;
    *(v3 + 65) = v8;
    *(v3 + 56) = v7;
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    sub_19B96775C(v3 + 88, *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
    result = v3 + 112;
    *(a1 + 8) = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_19B973CBC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_19B973CD8(uint64_t a1, uint64_t a2)
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

void sub_19B973D68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B973D80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_19B8B8A40();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_19B967828(a1, v13);
    }

    v14 = 72 * v10;
    *v14 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 32);
    v17 = *(a2 + 48);
    *(v14 + 64) = *(a2 + 64);
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    v9 = 72 * v10 + 72;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = v4 + 72;
  }

  *(a1 + 8) = v9;
}

void sub_19B973EC0(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_19B8B8A40();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B8F1D64(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *sub_19B973FA0(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_19B988AB4(result, a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B974074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B988C08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B974088(uint64_t a1)
{
  v357 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 1656);
  if (*(a1 + 1656))
  {
    v3 = *(a1 + 1664);
    *v2 = 0;
    v2[1] = 0;
    if (v3)
    {
      sub_19B8750F8(v3);
    }
  }

  if (*(a1 + 872) == *(a1 + 864))
  {
    v22 = 1;
    goto LABEL_74;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM,extractSolution", &buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v280 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v6);
      if (v6 != &buf)
      {
        free(v6);
      }
    }
  }

  LOBYTE(v280) = 0;
  v7 = (a1 + 984);
  v281 = 0u;
  v8 = (a1 + 992);
  v282 = 0;
  v283 = 1;
  v284 = 0;
  v285 = 0u;
  v286 = 0u;
  v287 = 0u;
  v288 = 0;
  *v289 = 0u;
  v290 = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  v292 = _Q1;
  v293 = 0u;
  v291 = 0;
  v294 = 0xBFF0000000000000;
  v306 = 0;
  v307 = 0;
  v305 = 0;
  memset(&v304[32], 0, 32);
  v308 = 0u;
  v309 = 0u;
  v310 = 0u;
  memset(v311, 0, 27);
  memset(&v311[32], 0, 48);
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  v298 = 0u;
  *__p = 0u;
  v300 = 0u;
  v301 = 0u;
  v302 = 0u;
  v303 = 0u;
  memset(v304, 0, 30);
  v313 = 0xBFF0000000000000;
  v312 = 0;
  v314 = 0;
  v323 = 0;
  v322 = 0u;
  v315 = 0u;
  v316 = 0u;
  v317 = 0u;
  v318 = 0u;
  memset(v319, 0, sizeof(v319));
  v320 = 0u;
  v321 = 0;
  v324 = 1;
  v325 = 0;
  v329 = 0;
  v327 = 0u;
  v328 = 0u;
  v326 = 0u;
  v332 = 0u;
  memset(v333, 0, sizeof(v333));
  *&_Q1 = *(a1 + 1224);
  v330 = 0u;
  v331 = 0u;
  if (*&_Q1 == 0.0 || *(a1 + 1356) == 1)
  {
    *(a1 + 3144) = *(a1 + 1136);
  }

  v12 = *v7;
  if (*v7 == v8)
  {
    goto LABEL_44;
  }

  v13 = 0;
  v273 = (a1 + 1128);
  v14 = a1 + 992;
  do
  {
    if (!v12[7])
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v25 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLMM,NULL road, bad candidate", &buf, 2u);
      }

      v26 = sub_19B87DD40();
      if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
      {
        goto LABEL_63;
      }

      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_61;
      }

      goto LABEL_649;
    }

    if (*(v12 + 200))
    {
      v15 = 216;
    }

    else
    {
      v15 = 76;
    }

    v16 = *(v12 + v15);
    if (v16 > v13)
    {
      v14 = v12;
      v13 = v16;
    }

    v17 = v12[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = v12[2];
        _ZF = *v18 == v12;
        v12 = v18;
      }

      while (!_ZF);
    }

    v12 = v18;
  }

  while (v18 != v8);
  if (v13 <= 0)
  {
LABEL_44:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLMM,Unexpected bestCount<=0", &buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_63;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_61;
    }

    goto LABEL_649;
  }

  if (v14 == v8)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMM,Unexpected no best candidate found", &buf, 2u);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_63;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_61;
    }

    goto LABEL_649;
  }

  *(a1 + 1649) = 0;
  if (*(v14 + 200) != 1 || *(v14 + 192) != 1 || *(v14 + 212) <= *(v14 + 208))
  {
    goto LABEL_220;
  }

  v19 = sub_19B98A250(a1 + 984, (v14 + 224));
  if (v8 == v19)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v32 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLMM,Unexpected. There should be an outgoing road", &buf, 2u);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      goto LABEL_63;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_61;
    }

LABEL_649:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
LABEL_61:
    v338[0] = 0;
    v27 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v27);
    if (v27 != &buf)
    {
      free(v27);
    }

    goto LABEL_63;
  }

  memset(v343, 0, 20);
  v20 = *(v19 + 56);
  v21 = *(v19 + 64);
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    *v343 = v20;
    *&v343[8] = v21;
  }

  else
  {
    *v343 = *(v19 + 56);
  }

  if (!v20)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v38 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLMM,Unexpected NULL outgoing road candidate", &buf, 2u);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        goto LABEL_650;
      }

      goto LABEL_120;
    }

LABEL_122:
    if (*&v343[8])
    {
      sub_19B8750F8(*&v343[8]);
    }

LABEL_63:
    v22 = 0;
    goto LABEL_64;
  }

  *&v343[16] = 0;
  v343[20] = *(v19 + 48);
  v343[21] = 0;
  v34 = *(v14 + 856);
  *&v345 = v34;
  v35 = *(v14 + 848);
  *&v346 = *(v14 + 840);
  *(&v346 + 1) = v35;
  v347 = *(v14 + 960);
  if (*&v346 == 0.0 && v35 == 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v36 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "CLMM,Unexpected outgoing snapLat==snapLon==0", &buf, 2u);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_120;
      }

LABEL_650:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
LABEL_120:
      v338[0] = 0;
      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v40);
      if (v40 != &buf)
      {
        free(v40);
      }
    }

    goto LABEL_122;
  }

  *v335 = 0;
  v334 = 0.0;
  v279 = 0;
  memset(&buf, 0, sizeof(buf));
  v349 = 1.0;
  memset(v350, 0, sizeof(v350));
  sub_19B940928(a1, a1 + 656, v343, v273, v335, &v334, &v279, &buf, 0);
  v41 = 1;
  v278 = 1;
  v277 = 1;
  v42 = *(v14 + 5136);
  v43 = fmod(v42 - v34, 360.0);
  if (v43 < 0.0)
  {
    v43 = v43 + 360.0;
  }

  if (v43 > 180.0)
  {
    v43 = v43 + -360.0;
  }

  if (fabs(v43) < 45.0)
  {
    v41 = 0;
    v277 = 0;
  }

  v276 = 0;
  v44 = *(a1 + 1232);
  if (v44 < 0.0)
  {
    v271 = 0;
    v45 = 0;
    v46 = 1;
    goto LABEL_154;
  }

  v47 = fmod(v44 - v34, 360.0);
  if (v47 < 0.0)
  {
    v47 = v47 + 360.0;
  }

  if (v47 > 180.0)
  {
    v47 = v47 + -360.0;
  }

  if (fabs(v47) >= 25.0)
  {
    v45 = 0;
  }

  else
  {
    v45 = 1;
    HIBYTE(v276) = 1;
  }

  if (*(v14 + 248) >= 7.5)
  {
    v46 = 1;
  }

  else
  {
    v278 = v45;
    v46 = v45;
    if (!v45)
    {
      v271 = 0;
      v46 = 0;
      goto LABEL_154;
    }
  }

  if (!v41 || (v45 & 1) != 0 || *(a1 + 1320) >= 20.0)
  {
    v271 = 0;
  }

  else
  {
    v48 = fmod(v42 - v44, 360.0);
    if (v48 < 0.0)
    {
      v48 = v48 + 360.0;
    }

    if (v48 > 180.0)
    {
      v48 = v48 + -360.0;
    }

    v49 = fabs(v48);
    v271 = v49 < 10.0;
    LOBYTE(v276) = v49 < 10.0;
    if (v49 < 10.0)
    {
      v46 = 0;
    }

    v278 = v46;
  }

LABEL_154:
  if (*(a1 + 96) == 1)
  {
    v50 = sub_19B8E3CB0();
    buf.__r_.__value_.__r.__words[0] = *(a1 + 1136);
    *v338 = *(v14 + 5136);
    v51 = *(a1 + 1232);
    v274 = *(a1 + 1320);
    v275 = v51;
    sub_19B977E84(v50, &buf, v338, &v345, &v275, (v14 + 248), &v278, &v274, &v277, &v276 + 1, &v276);
    v52 = v45;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v53 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v54 = *(a1 + 1136);
      v55 = *(v14 + 5136);
      v56 = *(a1 + 1232);
      v57 = *(v14 + 248);
      v58 = *(a1 + 1320);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134351360;
      *(buf.__r_.__value_.__r.__words + 4) = v54;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v55;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
      v349 = v34;
      *v350 = 2050;
      *&v350[2] = v56;
      *&v350[10] = 2050;
      *&v350[12] = v57;
      *&v350[20] = 1026;
      *&v350[22] = v46;
      *&v350[26] = 2050;
      *&v350[28] = v58;
      v351 = 1026;
      v352 = v41;
      v353 = 1026;
      v354 = v52;
      v355 = 1026;
      v356 = v271;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCourseAligned,%{public}d, isMeanCandidateAlignedWithCourse,%{public}d", &buf, 0x56u);
    }

    v59 = sub_19B87DD40();
    v45 = v52;
    if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v60 = *(a1 + 1136);
      v61 = *(v14 + 5136);
      v62 = *(a1 + 1232);
      v63 = *(v14 + 248);
      v64 = *(a1 + 1320);
      *v338 = 134351360;
      *&v338[2] = v60;
      v338[6] = 2050;
      *&v338[7] = v61;
      v338[11] = 2050;
      *&v338[12] = v34;
      v338[16] = 2050;
      *&v338[17] = v62;
      v338[21] = 2050;
      *&v338[22] = v63;
      v338[26] = 1026;
      v65 = v46;
      *&v338[27] = v46;
      v338[29] = 2050;
      *&v338[30] = v64;
      v338[34] = 1026;
      *&v338[35] = v41;
      v338[37] = 1026;
      v66 = v45;
      *&v338[38] = v45;
      v338[40] = 1026;
      v339 = v271;
      v67 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v67);
      if (v67 != &buf)
      {
        free(v67);
      }

      v45 = v66;
      v46 = v65;
    }
  }

  if (*(a1 + 1792) < 8.05555556 && (*(v14 + 196) > 1 || *(a1 + 1208) > 10.0))
  {
    v68 = 15.0;
    if (*(a1 + 1224) > 0.0 && (*(a1 + 1356) & 1) == 0 && vabdd_f64(*(a1 + 1136), *(a1 + 3144)) < 20.0)
    {
      v68 = 7.5;
    }

    if ((v41 & v45) != 0)
    {
      v69 = v68 * 0.6;
    }

    else
    {
      v69 = v68;
    }

    if (*(a1 + 96) == 1)
    {
      v70 = v45;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v71 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v72 = *(a1 + 1136);
        v73 = *(v14 + 248);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
        *(buf.__r_.__value_.__r.__words + 4) = v72;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v73;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v349 = v69;
        _os_log_impl(&dword_19B873000, v71, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,exit distance check,distance,%{public}.2lf,exitDistance,%{public}.2lf", &buf, 0x20u);
      }

      v74 = sub_19B87DD40();
      v45 = v70;
      if (*(v74 + 160) > 1 || *(v74 + 164) > 1 || *(v74 + 168) > 1 || *(v74 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v75 = *(a1 + 1136);
        v76 = *(v14 + 248);
        *v338 = 134349568;
        *&v338[2] = v75;
        v338[6] = 2050;
        *&v338[7] = v76;
        v338[11] = 2050;
        *&v338[12] = v69;
        v77 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v77);
        if (v77 != &buf)
        {
          free(v77);
        }

        v45 = v70;
      }
    }

    if (v46)
    {
      v46 = *(v14 + 248) > v69;
    }

    v278 = v46;
  }

  if (v41 && v45 && *(a1 + 1320) < 20.0)
  {
    if (!v46)
    {
      goto LABEL_204;
    }

LABEL_202:
    if (*(a1 + 1224) <= 0.0)
    {
      goto LABEL_204;
    }

    v78 = *(a1 + 1356) ^ 1;
  }

  else
  {
    if (v46 && *(v14 + 212) > 2 * *(v14 + 208))
    {
      goto LABEL_202;
    }

LABEL_204:
    v78 = 0;
  }

  *(a1 + 1650) = v78 & 1;
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v79 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v80 = *(a1 + 1136);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = v80;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v78 & 1;
      _os_log_impl(&dword_19B873000, v79, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,outgoing condition,%{public}d", &buf, 0x12u);
    }

    v81 = sub_19B87DD40();
    if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v82 = *(a1 + 1136);
      *v338 = 134349312;
      *&v338[2] = v82;
      v338[6] = 1026;
      *&v338[7] = v78 & 1;
      v83 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v83);
      if (v83 != &buf)
      {
        free(v83);
      }
    }
  }

  *(a1 + 1649) = 1;
  if (*&v343[8])
  {
    sub_19B8750F8(*&v343[8]);
  }

LABEL_220:
  memset(v338, 0, 20);
  v338[10] = 1;
  *&v338[12] = 0;
  v342 = 0;
  __src = 0;
  v341 = 0;
  memset(&v338[16], 0, 49);
  v84 = *(a1 + 1320);
  if (v84 < 19.0)
  {
    *(a1 + 1320) = 0x4033000000000000;
    sub_19B9C138C(a1 + 656, v273, *(a1 + 752));
  }

  v85 = *(a1 + 864);
  if (v85 != *(a1 + 872))
  {
    while (2)
    {
      *(v85 + 80) = 0;
      sub_19B97106C(v85, &buf);
      if (buf.__r_.__value_.__r.__words[0] == *(v14 + 32) && buf.__r_.__value_.__s.__data_[16] == *(v14 + 48))
      {
        if (buf.__r_.__value_.__l.__size_ == *(v14 + 40))
        {
          if ((*(a1 + 1650) & 1) != 0 || *(v14 + 200) != 1 || *(v14 + 192) != 1)
          {
            goto LABEL_257;
          }

          v86 = *(v85 + 48);
          v87 = *(v14 + 528);
          if (buf.__r_.__value_.__s.__data_[16])
          {
            if (v86 <= v87)
            {
              goto LABEL_257;
            }

LABEL_253:
            *(v85 + 80) = 0;
LABEL_254:
            v85 += 112;
            if (v85 == *(a1 + 872))
            {
              goto LABEL_264;
            }

            continue;
          }

          if (v86 < v87)
          {
            goto LABEL_253;
          }

LABEL_257:
          *(v85 + 80) = 1;
          memset(&buf, 0, sizeof(buf));
          v349 = 1.0;
          memset(v350, 0, sizeof(v350));
          sub_19B940928(a1, a1 + 656, v85, v273, v343, v335, &v334, &buf, 0);
          v92 = buf.__r_.__value_.__r.__words[2];
          *(v85 + 56) = buf.__r_.__value_.__r.__words[0];
          *(v85 + 72) = v92;
          if (*(v85 + 56) > *&v338[28])
          {
            v94 = *v85;
            v93 = *(v85 + 8);
            if (v93)
            {
              atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
            }

            v95 = *&v338[4];
            *v338 = v94;
            *&v338[4] = v93;
            if (v95)
            {
              sub_19B8750F8(v95);
            }

            v96 = *(v85 + 16);
            v97 = *(v85 + 32);
            *&v338[24] = *(v85 + 48);
            *&v338[8] = v96;
            *&v338[16] = v97;
            v98 = *(v85 + 65);
            *&v338[28] = *(v85 + 56);
            *(&v338[32] + 1) = v98;
            if (v85 != v338)
            {
              sub_19B967884(&__src, *(v85 + 88), *(v85 + 96), 0x8E38E38E38E38E39 * ((*(v85 + 96) - *(v85 + 88)) >> 3));
            }
          }

          goto LABEL_254;
        }

        if (!*(a1 + 1650))
        {
LABEL_242:
          if (*(v14 + 200) != 1)
          {
            goto LABEL_253;
          }

          if (*(v14 + 192))
          {
            goto LABEL_253;
          }

          sub_19B97106C(v85, &buf);
          if (buf.__r_.__value_.__r.__words[0] != *(v14 + 224) || buf.__r_.__value_.__s.__data_[16] != *(v14 + 240) || buf.__r_.__value_.__l.__size_ != *(v14 + 232))
          {
            goto LABEL_253;
          }

          v90 = *(v85 + 48);
          v91 = *(v14 + 1120);
          if (buf.__r_.__value_.__s.__data_[16])
          {
            if (v90 < v91)
            {
              goto LABEL_253;
            }
          }

          else if (v90 < v91)
          {
            goto LABEL_253;
          }

          *(v85 + 80) = 1;
          goto LABEL_257;
        }
      }

      else if ((*(a1 + 1650) & 1) == 0)
      {
        goto LABEL_242;
      }

      break;
    }

    if (*(v14 + 200) == 1 && *(v14 + 192) == 1)
    {
      sub_19B97106C(v85, &buf);
      if (buf.__r_.__value_.__r.__words[0] == *(v14 + 224) && buf.__r_.__value_.__s.__data_[16] == *(v14 + 240) && buf.__r_.__value_.__l.__size_ == *(v14 + 232))
      {
        v88 = *(v85 + 48);
        v89 = *(v14 + 1120);
        if (buf.__r_.__value_.__s.__data_[16])
        {
          if (v88 >= v89)
          {
            goto LABEL_257;
          }
        }

        else if (v88 >= v89)
        {
          goto LABEL_257;
        }
      }
    }

    goto LABEL_242;
  }

LABEL_264:
  *(a1 + 1008) = 1;
  v99 = *v338;
  v100 = *&v338[4];
  if (*&v338[4])
  {
    atomic_fetch_add_explicit((*&v338[4] + 8), 1uLL, memory_order_relaxed);
  }

  v272 = (a1 + 1016);
  *(a1 + 1016) = v99;
  v101 = *(a1 + 1024);
  *(a1 + 1024) = v100;
  if (v101)
  {
    sub_19B8750F8(v101);
  }

  *(a1 + 1064) = *&v338[24];
  v102 = *&v338[16];
  *(a1 + 1032) = *&v338[8];
  *(a1 + 1048) = v102;
  *(a1 + 1072) = *&v338[28];
  *(a1 + 1081) = *(&v338[32] + 1);
  if (v272 != v338)
  {
    sub_19B967884((a1 + 1104), __src, v341, 0x8E38E38E38E38E39 * ((v341 - __src) >> 3));
  }

  if (*(a1 + 1650) == 1)
  {
    sub_19B97106C(v338, &buf);
    v103 = (v14 + 224);
    if (*(v14 + 224) == buf.__r_.__value_.__r.__words[0] && *(v14 + 240) == buf.__r_.__value_.__s.__data_[16] && *(v14 + 232) == buf.__r_.__value_.__l.__size_)
    {
      v104 = *(v14 + 688);
      v105 = *(v14 + 704);
      v106 = *(v14 + 736);
      *(a1 + 1160) = *(v14 + 720);
      *(a1 + 1176) = v106;
      *v273 = v104;
      *(a1 + 1144) = v105;
      v107 = *(v14 + 752);
      v108 = *(v14 + 768);
      v109 = *(v14 + 800);
      *(a1 + 1224) = *(v14 + 784);
      *(a1 + 1240) = v109;
      *(a1 + 1192) = v107;
      *(a1 + 1208) = v108;
      std::string::operator=((a1 + 1256), (v14 + 816));
      memcpy((a1 + 1280), (v14 + 840), 0x118uLL);
      v111 = *(v14 + 56);
      v110 = *(v14 + 64);
      if (v110)
      {
        atomic_fetch_add_explicit((v110 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 1656) = v111;
      v112 = *(a1 + 1664);
      *(a1 + 1664) = v110;
      if (v112)
      {
        sub_19B8750F8(v112);
      }

      if (*(a1 + 96) == 1 && *v2)
      {
        v113 = sub_19B8E3CB0();
        buf.__r_.__value_.__r.__words[0] = *(a1 + 1136);
        *v343 = **(a1 + 1656);
        sub_19B977FE0(v113, &buf, v343, (v14 + 224));
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v114 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v115 = *(a1 + 1136);
          v116 = **(a1 + 1656);
          v117 = *v103;
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349569;
          *(buf.__r_.__value_.__r.__words + 4) = v115;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v116;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2049;
          v349 = v117;
          _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld", &buf, 0x20u);
        }

        v118 = sub_19B87DD40();
        if (*(v118 + 160) > 1 || *(v118 + 164) > 1 || *(v118 + 168) > 1 || *(v118 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v119 = *(a1 + 1136);
          v120 = **(a1 + 1656);
          v121 = *v103;
          *v343 = 134349569;
          *&v343[4] = v119;
          *&v343[12] = 2049;
          *&v343[14] = v120;
          v344 = 2049;
          v345 = v121;
          v122 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v122);
          if (v122 != &buf)
          {
            free(v122);
          }
        }
      }

      if (v84 >= 19.0)
      {
        goto LABEL_329;
      }

LABEL_328:
      *(a1 + 1320) = v84;
      sub_19B9C138C(a1 + 656, v273, *(a1 + 752));
      goto LABEL_329;
    }
  }

  if (*(v14 + 200) == 1 && (*(v14 + 192) & 1) == 0)
  {
    sub_19B97106C(v338, &buf);
    if (*(v14 + 224) == buf.__r_.__value_.__r.__words[0] && *(v14 + 240) == buf.__r_.__value_.__s.__data_[16] && *(v14 + 232) == buf.__r_.__value_.__l.__size_)
    {
      sub_19B911784(v2, (v14 + 56));
      if (*(a1 + 96) == 1)
      {
        if (*v2)
        {
          v123 = sub_19B8E3CB0();
          buf.__r_.__value_.__r.__words[0] = *(a1 + 1136);
          *v343 = **(a1 + 1656);
          *v335 = **v338;
          sub_19B9780D8(v123, &buf, v343, v335);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v124 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v125 = *(a1 + 1136);
            v126 = **(a1 + 1656);
            v127 = **v338;
            LODWORD(buf.__r_.__value_.__l.__data_) = 134349569;
            *(buf.__r_.__value_.__r.__words + 4) = v125;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v126;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2049;
            v349 = v127;
            _os_log_impl(&dword_19B873000, v124, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Using particle on outgoing,incomingID,%{private}lld,outgoingID,%{private}lld", &buf, 0x20u);
          }

          v128 = sub_19B87DD40();
          if (*(v128 + 160) > 1 || *(v128 + 164) > 1 || *(v128 + 168) > 1 || *(v128 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v129 = *(a1 + 1136);
            v130 = **(a1 + 1656);
            v131 = **v338;
            *v343 = 134349569;
            *&v343[4] = v129;
            *&v343[12] = 2049;
            *&v343[14] = v130;
            v344 = 2049;
            v345 = v131;
            v132 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v132);
            if (v132 != &buf)
            {
              free(v132);
            }
          }
        }
      }
    }
  }

  v133 = *(v14 + 4968);
  v134 = *(v14 + 4984);
  v135 = *(v14 + 5016);
  *(a1 + 1160) = *(v14 + 5000);
  *(a1 + 1176) = v135;
  *v273 = v133;
  *(a1 + 1144) = v134;
  v136 = *(v14 + 5032);
  v137 = *(v14 + 5048);
  v138 = *(v14 + 5080);
  *(a1 + 1224) = *(v14 + 5064);
  *(a1 + 1240) = v138;
  *(a1 + 1192) = v136;
  *(a1 + 1208) = v137;
  std::string::operator=((a1 + 1256), (v14 + 5096));
  memcpy((a1 + 1280), (v14 + 5120), 0x118uLL);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v139 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v140 = *(a1 + 1136);
      sub_19B97106C(v338, &buf);
      *v343 = 134349313;
      *&v343[4] = v140;
      *&v343[12] = 2049;
      *&v343[14] = buf.__r_.__value_.__r.__words[0];
      _os_log_impl(&dword_19B873000, v139, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,bestParticleRoadID,%{private}lld", v343, 0x16u);
    }

    v141 = sub_19B87DD40();
    if (*(v141 + 160) > 1 || *(v141 + 164) > 1 || *(v141 + 168) > 1 || *(v141 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v142 = *(a1 + 1136);
      sub_19B97106C(v338, v343);
      *v335 = 134349313;
      *&v335[4] = v142;
      v336 = 2049;
      v337 = *v343;
      v143 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v143);
      if (v143 != &buf)
      {
        free(v143);
      }
    }
  }

  if (v84 < 19.0 && (*(a1 + 1649) & 1) == 0)
  {
    goto LABEL_328;
  }

LABEL_329:
  if (*(a1 + 1490) == 1)
  {
    v144 = 0.0;
    if (*(a1 + 1528) == 1)
    {
      goto LABEL_401;
    }
  }

  if (*(a1 + 1649) == 1)
  {
    v144 = 0.0;
    if (*(a1 + 1650) != 1)
    {
      goto LABEL_401;
    }
  }

  v145 = *v7;
  v144 = 0.0;
  if (*v7 == v8)
  {
    goto LABEL_401;
  }

  v146 = 3.0;
  v147 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  v148 = &dword_19B873000;
  while (2)
  {
    if (v145 == v14 || *(v14 + 200) == 1 && v145[4] == *(v14 + 224) && *(v145 + 48) == *(v14 + 240) && v145[5] == *(v14 + 232))
    {
      goto LABEL_364;
    }

    v149 = *(v145 + 17);
    if (v149 == 0.0)
    {
      goto LABEL_364;
    }

    if (v149 > v144)
    {
      v144 = *(v145 + 17);
    }

    v150 = *(v14 + 136) / v149;
    v151 = v150 <= 1000000.0 ? v150 : 1000000.0;
    if (v151 > v146)
    {
LABEL_364:
      v160 = v145[1];
      if (v160)
      {
        do
        {
          v161 = v160;
          v160 = *v160;
        }

        while (v160);
      }

      else
      {
        do
        {
          v161 = v145[2];
          _ZF = *v161 == v145;
          v145 = v161;
        }

        while (!_ZF);
      }

      v145 = v161;
      if (v161 == v8)
      {
        goto LABEL_401;
      }

      continue;
    }

    break;
  }

  v152 = *(v14 + 5136);
  v153 = fmod(v152 - *(v145 + 642), 360.0);
  if (v153 < 0.0)
  {
    v153 = v153 + 360.0;
  }

  if (v153 > 180.0)
  {
    v153 = v153 + -360.0;
  }

  v154 = fabs(v153);
  *v335 = 0;
  v334 = 0.0;
  sub_19BA0C3BC((a1 + 608), v335, &v334, *(v14 + 5120), *(v14 + 5128), *(v14 + 5040), v152, *(v145 + 640), *(v145 + 641));
  if (v154 >= 35.0)
  {
    goto LABEL_363;
  }

  if (*(a1 + 1848) == 1 && *(a1 + 2233) != 1 && ((v270 = v334, v155 = fabs(v334), v156 = *v335, v157 = fabs(*v335), v157 > 2.0) ? (_NF = v155 < 1.5) : (_NF = 0), !_NF ? (v159 = v157 <= 10.0) : (v159 = 0), v159))
  {
    if (*(a1 + 96) == 1)
    {
      v162 = v147;
      v163 = v148;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v164 = *(v162 + 225);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349824;
        *(buf.__r_.__value_.__r.__words + 4) = v154;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v156;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v349 = v151;
        *v350 = 2050;
        *&v350[2] = v270;
        _os_log_impl(v163, v164, OS_LOG_TYPE_DEBUG, "CLMM,ambiguous solution not detected,fabsCourseDiff,%{public}.1lf,acrossTrack,%{public}.1lf,ratio,%{public}.3lf,alongTrackToAlt,%{public}.1lf", &buf, 0x2Au);
      }

      v165 = sub_19B87DD40();
      v148 = v163;
      v147 = v162;
      if (*(v165 + 160) > 1 || *(v165 + 164) > 1 || *(v165 + 168) > 1 || *(v165 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v166 = *(v162 + 225);
        *v343 = 134349824;
        *&v343[4] = v154;
        *&v343[12] = 2050;
        *&v343[14] = v156;
        v344 = 2050;
        v345 = v151;
        LOWORD(v346) = 2050;
        *(&v346 + 2) = v270;
        v167 = v148;
        v168 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v168);
        if (v168 != &buf)
        {
          free(v168);
        }

        v148 = v167;
        v147 = v162;
      }
    }
  }

  else
  {
    *(a1 + 1393) = 1;
  }

  if (*(a1 + 1393) != 1)
  {
LABEL_363:
    v146 = 3.0;
    goto LABEL_364;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v169 = *(v147 + 225);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349824;
      *(buf.__r_.__value_.__r.__words + 4) = v154;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = *v335;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
      v349 = v151;
      *v350 = 2050;
      *&v350[2] = v334;
      _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_DEBUG, "CLMM,ambiguous solution detected,fabsCourseDiff,%{public}.1lf,acrossTrack,%{public}.1lf,ratio,%{public}.3lf,alongTrackToAlt,%{public}.1lf", &buf, 0x2Au);
    }

    v170 = sub_19B87DD40();
    if (*(v170 + 160) > 1 || *(v170 + 164) > 1 || *(v170 + 168) > 1 || *(v170 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v171 = *(v147 + 225);
      *v343 = 134349824;
      *&v343[4] = v154;
      *&v343[12] = 2050;
      *&v343[14] = *v335;
      v344 = 2050;
      v345 = v151;
      LOWORD(v346) = 2050;
      *(&v346 + 2) = v334;
      v172 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v172);
      if (v172 != &buf)
      {
        free(v172);
      }
    }
  }

  *(a1 + 1648) = 1;
  sub_19B9710EC(a1 + 1680, v145 + 10);
  *(a1 + 1672) = 1;
  if (*(a1 + 1848) == 1 && (*(a1 + 2233) & 1) == 0)
  {
    *(a1 + 3152) = *(a1 + 1136);
  }

LABEL_401:
  if (*(a1 + 1393) != 1)
  {
    goto LABEL_430;
  }

  v173 = *(a1 + 4040);
  v174 = *(a1 + 4048);
  if (v173 == v174)
  {
    goto LABEL_430;
  }

  v175 = v173 + 20;
  while (2)
  {
    sub_19B97106C(v272, &buf);
    v176 = v175 - 20;
    v177 = *(v175 - 20);
    v178 = *(v175 - 12);
    if (v178)
    {
      atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
      v179 = *v175;
      atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
      v181 = *v177;
      v180 = v177[1];
      sub_19B8750F8(v178);
    }

    else
    {
      v179 = *v175;
      v181 = *v177;
      v180 = v177[1];
    }

    _ZF = buf.__r_.__value_.__r.__words[0] == v181 && buf.__r_.__value_.__s.__data_[16] == v179;
    if (_ZF)
    {
      v183 = buf.__r_.__value_.__l.__size_ == v180;
      if (!v178)
      {
        goto LABEL_415;
      }

      goto LABEL_414;
    }

    v183 = 0;
    if (v178)
    {
LABEL_414:
      sub_19B8750F8(v178);
    }

LABEL_415:
    if (!v183)
    {
      v175 += 56;
      if (v176 + 56 == v174)
      {
        goto LABEL_430;
      }

      continue;
    }

    break;
  }

  *(a1 + 1393) = 0;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v184 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v185 = *(a1 + 1136);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = v185;
    _os_log_impl(&dword_19B873000, v184, OS_LOG_TYPE_DEBUG, "%{public}.1lf,CLMM,ambiguity reverted using route-hints", &buf, 0xCu);
  }

  v186 = sub_19B87DD40();
  if (*(v186 + 160) > 1 || *(v186 + 164) > 1 || *(v186 + 168) > 1 || *(v186 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v187 = *(a1 + 1136);
    *v343 = 134349056;
    *&v343[4] = v187;
    v188 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v188);
    if (v188 != &buf)
    {
      free(v188);
    }
  }

LABEL_430:
  if (*(a1 + 1848) == 1 && *(a1 + 2233) == 1 && (*(a1 + 1393) & 1) == 0 && *(a1 + 1136) - *(a1 + 3152) < 3.1)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v189 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v189, OS_LOG_TYPE_DEBUG, "CLMM,ambiguous solution hysteresis", &buf, 2u);
      }

      v190 = sub_19B87DD40();
      if (*(v190 + 160) > 1 || *(v190 + 164) > 1 || *(v190 + 168) > 1 || *(v190 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v343 = 0;
        v191 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v191);
        if (v191 != &buf)
        {
          free(v191);
        }
      }
    }

    *(a1 + 1393) = 1;
    *(a1 + 1648) = 1;
    *(a1 + 1672) = 0;
  }

  v192 = *&v338[28];
  *(a1 + 1616) = *&v338[28];
  if (v144 <= 0.0)
  {
    v193 = *(a1 + 1632);
  }

  else
  {
    v193 = v192 / v144;
    *(a1 + 1632) = v193;
    if (v193 > 1000000.0)
    {
      *(a1 + 1632) = 0x412E848000000000;
      v193 = 1000000.0;
    }
  }

  *(a1 + 1408) = 1;
  v194 = *&v338[16];
  *(a1 + 1280) = *&v338[16];
  v195 = *&v338[12];
  *(a1 + 1296) = *&v338[12];
  *(a1 + 1416) = v194;
  *(a1 + 1432) = v195;
  v196 = *v338;
  *(a1 + 1248) = *(*v338 + 20);
  *(a1 + 1400) = *&v338[24];
  *(a1 + 1304) = v13;
  v197 = v193;
  *(a1 + 1308) = v197;
  if (*(v196 + 71) < 0)
  {
    sub_19B874C9C(&buf, *(v196 + 48), *(v196 + 56));
  }

  else
  {
    buf = *(v196 + 48);
  }

  std::string::operator=((a1 + 1256), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 1240) = **v338;
  v198 = *(a1 + 1232);
  v199 = -1.0;
  if (v198 >= 0.0)
  {
    v200 = fmod(v198 - *(a1 + 1296), 360.0);
    if (v200 < 0.0)
    {
      v200 = v200 + 360.0;
    }

    if (v200 > 180.0)
    {
      v200 = v200 + -360.0;
    }

    v199 = fabs(v200);
  }

  *(a1 + 1600) = v199;
  if ((*(a1 + 1357) & 1) == 0 && (*(a1 + 816) & 1) == 0)
  {
    v213 = *(a1 + 824) - *(a1 + 832);
    if (v213 >= 0.0 && v213 < 30.0)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v214 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v215 = *(a1 + 1648);
          LODWORD(buf.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v215;
          _os_log_impl(&dword_19B873000, v214, OS_LOG_TYPE_DEBUG, "CLMM,dismounted recently,doNotSnapCourse,%{public}d", &buf, 8u);
        }

        v216 = sub_19B87DD40();
        if (*(v216 + 160) > 1 || *(v216 + 164) > 1 || *(v216 + 168) > 1 || *(v216 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v217 = *(a1 + 1648);
          *v343 = 67240192;
          *&v343[4] = v217;
          v218 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v218);
          if (v218 != &buf)
          {
            free(v218);
          }
        }
      }

      goto LABEL_633;
    }
  }

  v201 = sub_19BA0C01C((a1 + 608), *(a1 + 1184), *(a1 + 1192), *(a1 + 2024), *(a1 + 2032), *(a1 + 1200));
  v202 = sub_19B9703C0(a1, 35.0);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v203 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = v202;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v201;
      _os_log_impl(&dword_19B873000, v203, OS_LOG_TYPE_DEBUG, "CLMM,distToNextMulti,%{public}.1lf, distFromPriorCrumb,%{public}.1lf", &buf, 0x16u);
    }

    v204 = sub_19B87DD40();
    if (*(v204 + 160) > 1 || *(v204 + 164) > 1 || *(v204 + 168) > 1 || *(v204 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v343 = 134349312;
      *&v343[4] = v202;
      *&v343[12] = 2050;
      *&v343[14] = v201;
      v205 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v205);
      if (v205 != &buf)
      {
        free(v205);
      }
    }
  }

  v206 = *(a1 + 1320);
  if (v206 <= 0.0 || v206 >= 45.0 || *(a1 + 1600) <= 30.0)
  {
    if (*(a1 + 776) == 1)
    {
      v208 = *(a1 + 800);
      if (v208 > 0.0 && v208 < 45.0)
      {
        v207 = *(a1 + 792) <= 30.0;
        goto LABEL_485;
      }
    }

    v209 = (a1 + 1648);
    v207 = 1;
  }

  else
  {
    v207 = 0;
LABEL_485:
    v209 = (a1 + 1648);
    if ((*(a1 + 1648) & 1) == 0 && v202 >= 0.0 && v202 < 35.0 && (v207 & 1) == 0)
    {
      *(a1 + 1648) = 1;
      if (*(a1 + 96) != 1)
      {
        goto LABEL_502;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v210 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
        *(buf.__r_.__value_.__r.__words + 4) = v202;
        _os_log_impl(&dword_19B873000, v210, OS_LOG_TYPE_DEBUG, "CLMM,not snapping course,reason,distanceToIntersection,%{public}.1lf", &buf, 0xCu);
      }

      v211 = sub_19B87DD40();
      if (*(v211 + 160) > 1 || *(v211 + 164) > 1 || *(v211 + 168) > 1 || (v207 = *(v211 + 152)) != 0)
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v343 = 134349056;
        *&v343[4] = v202;
        v212 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v212);
        if (v212 != &buf)
        {
          free(v212);
        }

LABEL_502:
        v207 = 0;
      }
    }
  }

  if ((*v209 & 1) == 0 && !(v207 & 1 | ((*(a1 + 1649) & 1) == 0)) && *(v14 + 200) == 1 && *(v14 + 192) == 1 && sub_19BA0C01C((a1 + 608), *(a1 + 1280), *(a1 + 1288), *(v14 + 408), *(v14 + 416), *(a1 + 1200)) < 35.0)
  {
    *(a1 + 1648) = 1;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v219 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v220 = *(a1 + 1600);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
        *(buf.__r_.__value_.__r.__words + 4) = v220;
        _os_log_impl(&dword_19B873000, v219, OS_LOG_TYPE_DEBUG, "CLMM,not snapping course,reason,at intersection,fabsCourseDifference,%{public}.1lf", &buf, 0xCu);
      }

      v221 = sub_19B87DD40();
      if (*(v221 + 160) > 1 || *(v221 + 164) > 1 || *(v221 + 168) > 1 || *(v221 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v222 = *(a1 + 1600);
        *v343 = 134349056;
        *&v343[4] = v222;
        v223 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v223);
        if (v223 != &buf)
        {
          free(v223);
        }
      }
    }
  }

  v224 = *(a1 + 1320);
  if (v224 > 0.0 && v224 < 5.0 && *(a1 + 752) == 1 && *(a1 + 1600) > 45.0)
  {
    *(a1 + 1648) = 1;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v225 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v226 = *(a1 + 1600);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
        *(buf.__r_.__value_.__r.__words + 4) = v226;
        _os_log_impl(&dword_19B873000, v225, OS_LOG_TYPE_DEBUG, "CLMM,not snapping course,reason,turning,fabsCourseDifference,%{public}.1lf", &buf, 0xCu);
      }

      v227 = sub_19B87DD40();
      if (*(v227 + 160) > 1 || *(v227 + 164) > 1 || *(v227 + 168) > 1 || *(v227 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v228 = *(a1 + 1600);
        *v343 = 134349056;
        *&v343[4] = v228;
        v229 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v229);
        if (v229 != &buf)
        {
          free(v229);
        }
      }
    }
  }

  if (*v209 == 1 && (*(a1 + 1224) < 0.2 || *(a1 + 1356) == 1) && v201 < 2.5 && (*(a1 + 1600) > 135.0 || *(a1 + 776) == 1 && *(a1 + 792) > 30.0))
  {
    *(a1 + 1648) = 0;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v230 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v231 = *(a1 + 1136);
        v232 = *(a1 + 1600);
        v233 = *(a1 + 792);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
        *(buf.__r_.__value_.__r.__words + 4) = v231;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v232;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v349 = v233;
        _os_log_impl(&dword_19B873000, v230, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,snapping course,reason,gps course not reliable,%{public}.1lf,fabsCourseDiffWithPriorSnap,%{public}.1lf", &buf, 0x20u);
      }

      v234 = sub_19B87DD40();
      if (*(v234 + 160) > 1 || *(v234 + 164) > 1 || *(v234 + 168) > 1 || *(v234 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v235 = *(a1 + 1136);
        v236 = *(a1 + 1600);
        v237 = *(a1 + 792);
        *v343 = 134349568;
        *&v343[4] = v235;
        *&v343[12] = 2050;
        *&v343[14] = v236;
        v344 = 2050;
        v345 = v237;
        v238 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v238);
        if (v238 != &buf)
        {
          free(v238);
        }
      }
    }

    if (*(a1 + 1600) > 135.0 && (*(a1 + 776) & 1) == 0)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v239 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v240 = *(a1 + 1136);
          v241 = *(a1 + 1232);
          v242 = *(a1 + 1296);
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
          *(buf.__r_.__value_.__r.__words + 4) = v240;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v241;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
          v349 = v242;
          _os_log_impl(&dword_19B873000, v239, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,overwriting unreliable GPS course,static case, priorCourse,%{public}.1lf,newCourse,%{public}.1lf", &buf, 0x20u);
        }

        v243 = sub_19B87DD40();
        if (*(v243 + 160) > 1 || *(v243 + 164) > 1 || *(v243 + 168) > 1 || *(v243 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v244 = *(a1 + 1136);
          v245 = *(a1 + 1232);
          v246 = *(a1 + 1296);
          *v343 = 134349568;
          *&v343[4] = v244;
          *&v343[12] = 2050;
          *&v343[14] = v245;
          v344 = 2050;
          v345 = v246;
          v247 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v247);
          if (v247 != &buf)
          {
            free(v247);
          }
        }
      }

      *(a1 + 1232) = *(a1 + 1296);
      *(a1 + 1320) = 0x403DE66666666666;
      *(a1 + 1600) = 0;
    }
  }

  if (*v209 == 1 && *(a1 + 384) == 1 && *(a1 + 1224) < 5.0 && v201 < 5.0 && fabs(*(a1 + 1640)) < 1.4)
  {
    v248 = fmod(*(a1 + 1296) - *(a1 + 288), 360.0);
    if (v248 < 0.0)
    {
      v248 = v248 + 360.0;
    }

    if (v248 > 180.0)
    {
      v248 = v248 + -360.0;
    }

    if (fabs(v248) < 10.0 && (*(a1 + 1600) > 135.0 || *(a1 + 776) == 1 && *(a1 + 792) > 135.0))
    {
      *(a1 + 1648) = 0;
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v249 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v250 = *(a1 + 1136);
          v251 = *(a1 + 1600);
          v252 = *(a1 + 792);
          LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
          *(buf.__r_.__value_.__r.__words + 4) = v250;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v251;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
          v349 = v252;
          _os_log_impl(&dword_19B873000, v249, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,snapping course, reason,gps course flipping at low speeds,%{public}.1lf,fabsCourseDiffWithPriorSnap,%{public}.1lf", &buf, 0x20u);
        }

        v253 = sub_19B87DD40();
        if (*(v253 + 160) > 1 || *(v253 + 164) > 1 || *(v253 + 168) > 1 || *(v253 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v254 = *(a1 + 1136);
          v255 = *(a1 + 1600);
          v256 = *(a1 + 792);
          *v343 = 134349568;
          *&v343[4] = v254;
          *&v343[12] = 2050;
          *&v343[14] = v255;
          v344 = 2050;
          v345 = v256;
          v257 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v257);
          if (v257 != &buf)
          {
            free(v257);
          }
        }
      }

      if (*(a1 + 1600) > 135.0 && (*(a1 + 776) & 1) == 0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v258 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v259 = *(a1 + 1136);
            v260 = *(a1 + 1232);
            v261 = *(a1 + 1296);
            LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
            *(buf.__r_.__value_.__r.__words + 4) = v259;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v260;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
            v349 = v261;
            _os_log_impl(&dword_19B873000, v258, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,overwriting unreliable GPS course,low speed case,priorCourse,%{public}.1lf,newCourse,%{public}.1lf", &buf, 0x20u);
          }

          v262 = sub_19B87DD40();
          if (*(v262 + 160) > 1 || *(v262 + 164) > 1 || *(v262 + 168) > 1 || *(v262 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v263 = *(a1 + 1136);
            v264 = *(a1 + 1232);
            v265 = *(a1 + 1296);
            *v343 = 134349568;
            *&v343[4] = v263;
            *&v343[12] = 2050;
            *&v343[14] = v264;
            v344 = 2050;
            v345 = v265;
            v266 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::extractSolution()", "CoreLocation: %s\n", v266);
            if (v266 != &buf)
            {
              free(v266);
            }
          }
        }

        *(a1 + 1232) = *(a1 + 1296);
        *(a1 + 1320) = 0x403DE66666666666;
        *(a1 + 1600) = 0;
      }
    }
  }

LABEL_633:
  if (*(a1 + 1648) == 1)
  {
    *(a1 + 1296) = *(a1 + 1232);
  }

  v267 = *(a1 + 1393);
  memset(&buf, 0, sizeof(buf));
  v349 = 1.0;
  memset(v350, 0, sizeof(v350));
  sub_19B940928(a1, a1 + 656, v272, v273, (a1 + 1576), (a1 + 1584), (a1 + 1568), &buf, v267);
  v268 = buf.__r_.__value_.__r.__words[0];
  v269 = buf.__r_.__value_.__r.__words[2];
  *(a1 + 1072) = buf.__r_.__value_.__r.__words[0];
  *(a1 + 1088) = v269;
  *(a1 + 1592) = *&v350[24];
  *(a1 + 1616) = v268;
  *(a1 + 1360) = v269;
  if (__src)
  {
    v341 = __src;
    operator delete(__src);
  }

  if (*&v338[4])
  {
    sub_19B8750F8(*&v338[4]);
  }

  if (v330)
  {
    operator delete(v330);
  }

  v22 = 1;
LABEL_64:
  if (*(&v322 + 1))
  {
    sub_19B8750F8(*(&v322 + 1));
  }

  if (*(&v320 + 1))
  {
    sub_19B8750F8(*(&v320 + 1));
  }

  if (SHIBYTE(v300) < 0)
  {
    operator delete(__p[1]);
  }

  if (v289[0])
  {
    operator delete(v289[0]);
  }

  if (*(&v281 + 1))
  {
    sub_19B8750F8(*(&v281 + 1));
  }

LABEL_74:
  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_19B977D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_19B966FCC(&STACK[0x3E0]);
  sub_19B96FC24(va);
  _Unwind_Resume(a1);
}

void sub_19B977E84(_BYTE *a1, void *a2, void *a3, float *a4, void *a5, void *a6, unsigned __int8 *a7, void *a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v24, "CLMM,Time,%{public}.1lf,snapCourse,%{public}.2lf,outgoingSnapCourse,%{public}.2lf, crumbCourse,%{public}.2lf, outgoingDistanceFromIntersection,%{public}.2lf,outgoingCondition,%{public}d,crumbCourseUnc,%{public}.2lf,significantCourseChange,%{public}d,isCourseAligned,%{public}d, isMeanCandidateAlignedWithCourse,%{public}d");
    sub_19B98A2F4(&v24);
    bzero(a1 + 56, 0x800uLL);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    v20 = *a5;
    snprintf(a1 + 56, 0x800uLL, v19, *a2, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19B977FE0(_BYTE *a1, void *a2, void *a3, void *a4)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v13, "CLMM,%{public}.1lf,Using outgoing,incomingID,%{private}lld,outgoingID,%{private}lld");
    sub_19B98A2F4(&v13);
    bzero(a1 + 56, 0x800uLL);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v13;
    }

    else
    {
      v8 = v13.__r_.__value_.__r.__words[0];
    }

    v9 = *a3;
    snprintf(a1 + 56, 0x800uLL, v8, *a2, *a3, *a4);
    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19B9780D8(_BYTE *a1, void *a2, void *a3, void *a4)
{
  if (*a1 == 1)
  {
    sub_19B8759E8(&v13, "CLMM,%{public}.1lf,Using particle on outgoing,incomingID,%{private}lld,outgoingID,%{private}lld");
    sub_19B98A2F4(&v13);
    bzero(a1 + 56, 0x800uLL);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v13;
    }

    else
    {
      v8 = v13.__r_.__value_.__r.__words[0];
    }

    v9 = *a3;
    snprintf(a1 + 56, 0x800uLL, v8, *a2, *a3, *a4);
    Current = CFAbsoluteTimeGetCurrent();
    sub_19B8759E8(__p, a1 + 56);
    sub_19B8E3D48(a1, __p, Current);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19B9781D0(uint64_t a1)
{
  *&v65[803] = *MEMORY[0x1E69E9840];
  if (*(a1 + 872) == *(a1 + 864))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 1136);
      *buf = 134349056;
      v61 = v22;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,roadWithAdustment,number of particles are 0", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v24 = *(a1 + 1136);
      v54 = 134349056;
      v55 = v24;
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  *(a1 + 1440) = 0u;
  if (*(a1 + 1008))
  {
    if (!*(a1 + 1016))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v31 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 1136);
        *buf = 134349056;
        v61 = v32;
        _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,roadWithAdustment,road is nullptr", buf, 0xCu);
      }

      v33 = sub_19B87DD40();
      if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v34 = *(a1 + 1136);
        v54 = 134349056;
        v55 = v34;
        v29 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLParticleMapMatcher::adjustSolutionforRoadWidth()", "CoreLocation: %s\n");
        goto LABEL_56;
      }

      goto LABEL_58;
    }

    v52 = 0;
    v53 = 0.0;
    sub_19BA0C3BC((a1 + 608), &v53, &v52, *(a1 + 1416), *(a1 + 1424), *(a1 + 1200), *(a1 + 1432), *(a1 + 1184), *(a1 + 1192));
    v2 = *(a1 + 1016);
    if (!v2)
    {
      goto LABEL_58;
    }

    v3 = *(v2 + 20);
    if (v3 == 9 || ((v4 = *(v2 + 72), v4 != 255) ? (v5 = v4 == 6) : (v5 = 1), v5))
    {
      v6 = *(v2 + 16) ? 5.55000007 : 7.4000001;
    }

    else
    {
      v6 = *(v2 + 96);
      if (v6 < 0.000001)
      {
        if ((v3 & 0xFFFFFFFE) == 8)
        {
          v37 = 7.4;
          if (*(v2 + 16))
          {
            v37 = 5.55;
          }
        }

        else
        {
          v37 = sub_19B988DA8(v3, *(v2 + 16));
        }

        v6 = v37;
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 1136);
      v9 = *(a1 + 1016);
      v10 = *(v9 + 20);
      LODWORD(v9) = *(v9 + 16);
      *buf = 134350080;
      v61 = v8;
      v62 = 1026;
      *v63 = v10;
      *&v63[4] = 1026;
      *&v63[6] = v9;
      *v64 = 2050;
      *&v64[2] = v6;
      v65[0] = 2050;
      *&v65[1] = v53;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,frc,%{public}d,oneway,%{public}d,roadWidth,%{public}.1lf,acrossTrack,%{public}.3lf", buf, 0x2Cu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v12 = *(a1 + 1136);
      v13 = *(a1 + 1016);
      v14 = *(v13 + 20);
      LODWORD(v13) = *(v13 + 16);
      v54 = 134350080;
      v55 = v12;
      v56 = 1026;
      *v57 = v14;
      *&v57[4] = 1026;
      *&v57[6] = v13;
      *v58 = 2050;
      *&v58[2] = v6;
      *v59 = 2050;
      *&v59[2] = v53;
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::adjustSolutionforRoadWidth()", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (v6 < 0.000001)
    {
      goto LABEL_58;
    }

    *(a1 + 1552) = v6;
    v16 = *(a1 + 1280);
    v50 = *(a1 + 1288);
    v51 = v16;
    v17 = *(a1 + 768);
    v18 = *(a1 + 1136);
    if (v17 <= 0.0 || vabdd_f64(v18, v17) > 120.0)
    {
      *(a1 + 760) = sub_19B96CF60(*(a1 + 1184), *(a1 + 1192));
      *(a1 + 768) = v18;
    }

    v19 = v6 * 0.5;
    if (*(*(a1 + 1016) + 16))
    {
LABEL_31:
      v20 = fabs(v53);
      if (v20 < v19)
      {
LABEL_32:
        *(a1 + 1280) = *(a1 + 1184);
        goto LABEL_58;
      }

      v38 = v19 + -1.85000002;
      if (v19 <= 1.85000002)
      {
        v38 = v19 * 0.85;
      }

      v39 = v20 - v38;
      if (v53 >= 0.0)
      {
        v36 = -v39;
      }

      else
      {
        v36 = v39;
      }

LABEL_83:
      sub_19BA0C0F8((a1 + 608), &v51, &v50, *(a1 + 1184), *(a1 + 1192), *(a1 + 1200), *(a1 + 1432), v36);
      *(a1 + 1568) = v36;
      *(a1 + 1408) = 2;
      v41 = v50;
      v40 = v51;
      *(a1 + 1280) = v51;
      *(a1 + 1288) = v41;
      *(a1 + 1440) = v40;
      *(a1 + 1448) = v41;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v42 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v43 = *(a1 + 1136);
        *buf = 134349824;
        v61 = v43;
        v62 = 2050;
        *v63 = v53;
        *&v63[8] = 2050;
        *v64 = v36;
        *&v64[8] = 2050;
        *v65 = v19;
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,roadWidthCorrection,acrossTrack,%{public}.2lf,correction,%{public}.2lf,halfRoadWidth,%{public}.2lf", buf, 0x2Au);
      }

      v44 = sub_19B87DD40();
      if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v45 = *(a1 + 1136);
        v54 = 134349824;
        v55 = v45;
        v56 = 2050;
        *v57 = v53;
        *&v57[8] = 2050;
        *v58 = v36;
        *&v58[8] = 2050;
        *v59 = v19;
LABEL_55:
        v29 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::adjustSolutionforRoadWidth()", "CoreLocation: %s\n");
LABEL_56:
        if (v29 != buf)
        {
          free(v29);
        }

        goto LABEL_58;
      }

      goto LABEL_58;
    }

    v35 = *(a1 + 760);
    v36 = 0.0;
    if (v35 == 2)
    {
      if (v53 > 0.0 && v53 < v19)
      {
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (v53 < 0.0)
        {
          v36 = fabs(v53) + 1.85000002;
        }

        goto LABEL_83;
      }

      v48 = v19 + -1.85000002;
      if (v19 <= 1.85000002)
      {
        v48 = v19 * 0.85;
      }

      v49 = v53 - v48;
    }

    else
    {
      if (v35 != 1)
      {
        if (v35)
        {
          goto LABEL_83;
        }

        goto LABEL_31;
      }

      if (v53 < 0.0)
      {
        v46 = fabs(v53);
        if (v46 < v19)
        {
          goto LABEL_32;
        }

        v47 = v19 + -1.85000002;
        if (v19 <= 1.85000002)
        {
          v47 = v19 * 0.85;
        }

        v36 = v46 - v47;
        goto LABEL_83;
      }

      if (v53 <= 0.0)
      {
        goto LABEL_83;
      }

      v49 = v53 + 1.85000002;
    }

    v36 = -v49;
    goto LABEL_83;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v25 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 1136);
    *buf = 134349056;
    v61 = v26;
    _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,roadWithAdustment,snap invalid or frc = 9", buf, 0xCu);
  }

  v27 = sub_19B87DD40();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v28 = *(a1 + 1136);
    v54 = 134349056;
    v55 = v28;
    goto LABEL_55;
  }

LABEL_58:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_19B978C00(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 872) == *(a1 + 864) || *(a1 + 1392) != 1)
  {
    goto LABEL_67;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,performPartialMatching", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::performPartialMatching()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 1280);
  v6 = *(a1 + 1288);
  if (*(a1 + 1490) == 1 && *(a1 + 1528) == 1)
  {
    *(a1 + 1456) = v5;
    *(a1 + 1464) = v6;
    *(a1 + 2972) = 0;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,skipping partial match as solution is inside tunnel", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::performPartialMatching()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    goto LABEL_67;
  }

  if (*(a1 + 2200) < 4.0)
  {
    *(a1 + 2972) = 0;
  }

  v10 = *(a1 + 1600);
  v11 = *(a1 + 1360);
  if (v10 >= 0.0 && v10 < 25.0)
  {
    v14 = *(a1 + 2972);
    if (v11 > 10.0)
    {
LABEL_39:
      v13 = v14 + 2;
      goto LABEL_47;
    }

LABEL_44:
    if (v14 <= 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v14 - 1;
    }

    goto LABEL_47;
  }

  if (v11 <= 6.0)
  {
    if (v10 > 45.0)
    {
      if (v11 <= 8.0)
      {
        v21 = *(a1 + 2972);
        if (v11 <= 10.0)
        {
          v13 = v21 + 4;
        }

        else
        {
          v13 = v21 + 3;
        }

        goto LABEL_47;
      }

      v14 = *(a1 + 2972);
      goto LABEL_39;
    }

    v14 = *(a1 + 2972);
    goto LABEL_44;
  }

  v13 = *(a1 + 2972) + 1;
LABEL_47:
  *(a1 + 2972) = v13;
  if (v13 >= 1)
  {
    if (v13 >= 0x1F)
    {
      v13 = 30;
      *(a1 + 2972) = 30;
    }

    v15 = v13 / 40.0;
    v5 = *(a1 + 1184) * v15 + (1.0 - v15) * v5;
    v6 = v15 * *(a1 + 1192) + (1.0 - v15) * v6;
    if (v10 >= 0.0 && v10 > 20.0)
    {
      *(a1 + 1296) = *(a1 + 1232);
    }

    *(a1 + 1408) = 3;
    *(a1 + 1280) = v5;
    *(a1 + 1288) = v6;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v16 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 2972);
        *buf = 67240704;
        v24 = v17;
        v25 = 2050;
        v26 = v15;
        v27 = 2050;
        v28 = 1.0 - v15;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,partial snapping,poorVarFactorCount,%{public}d,weightGPS,%{public}.2lf,weightSnap,%{public}.2lf", buf, 0x1Cu);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v22 = *(a1 + 2972);
        v19 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::performPartialMatching()", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }
  }

  *(a1 + 1456) = v5;
  *(a1 + 1464) = v6;
LABEL_67:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B979230(uint64_t a1, double *a2, double *a3, _BYTE *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  *a4 = 1;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = &v53;
  v54 = &v53;
  v55 = 0;
  v10 = *(a1 + 1208);
  *&v46[16] = *(a1 + 1192);
  v47 = v10;
  v11 = *(a1 + 1240);
  v48 = *(a1 + 1224);
  v49 = v11;
  v12 = *(a1 + 1144);
  v45[0] = *(a1 + 1128);
  v45[1] = v12;
  v13 = *(a1 + 1176);
  v45[2] = *(a1 + 1160);
  *v46 = v13;
  if (*(a1 + 1279) < 0)
  {
    sub_19B874C9C(&v50, *(a1 + 1256), *(a1 + 1264));
  }

  else
  {
    v50 = *(a1 + 1256);
    v51 = *(a1 + 1272);
  }

  memcpy(v52, (a1 + 1280), sizeof(v52));
  *&v46[8] = *&v52[17];
  *(&v48 + 1) = v52[19];
  if ((*(*v9 + 64))(v9, &v53, v45, 1, *a2))
  {
    if (v55)
    {
      v14 = v54;
      if (v54 != &v53)
      {
        v15 = 1;
        while (1)
        {
          v16 = v14[2];
          if ((*(v16 + 17) & 1) == 0)
          {
            break;
          }

LABEL_43:
          v14 = v14[1];
          if (v14 == &v53)
          {
            if (v15)
            {
              goto LABEL_81;
            }

            *a4 = 0;
            v27 = 1;
LABEL_97:
            v39 = 1;
            goto LABEL_98;
          }
        }

        v17 = v14[3];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = *(a1 + 1016);
        if (*v18 == *v16)
        {
          goto LABEL_38;
        }

        v19 = *(v14 + 10);
        if (*(v18 + 71) < 0)
        {
          sub_19B874C9C(buf, *(v18 + 48), *(v18 + 56));
        }

        else
        {
          *buf = *(v18 + 48);
          v57 = *(v18 + 64);
        }

        if (*(v16 + 71) < 0)
        {
          sub_19B874C9C(__p, *(v16 + 48), *(v16 + 56));
        }

        else
        {
          *__p = *(v16 + 48);
          v44 = *(v16 + 64);
        }

        v20 = HIBYTE(v57);
        if (v57 >= 0)
        {
          v21 = HIBYTE(v57);
        }

        else
        {
          v21 = *&buf[8];
        }

        v22 = HIBYTE(v44);
        v23 = SHIBYTE(v44);
        if (v44 < 0)
        {
          v22 = __p[1];
        }

        if (v21 == v22)
        {
          if (v57 >= 0)
          {
            v24 = buf;
          }

          else
          {
            v24 = *buf;
          }

          if (v44 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          v26 = memcmp(v24, v25, v21) == 0;
          if ((v23 & 0x80000000) == 0)
          {
LABEL_36:
            if (v20 < 0)
            {
              operator delete(*buf);
              if (v26)
              {
                goto LABEL_38;
              }
            }

            else if (v26)
            {
LABEL_38:
              v27 = 0;
              v28 = 16;
LABEL_39:
              if (v17)
              {
                sub_19B8750F8(v17);
              }

              if ((v28 | 0x10) != 0x10)
              {
                goto LABEL_97;
              }

              v15 = 0;
              goto LABEL_43;
            }

            v29 = fmod(*(a1 + 1432) - v19, 360.0);
            if (v29 < 0.0)
            {
              v29 = v29 + 360.0;
            }

            if (v29 > 180.0)
            {
              v29 = v29 + -360.0;
            }

            v27 = 1;
            if (fabs(v29) >= *a3)
            {
              v28 = 0;
            }

            else
            {
              *a4 = 1;
              v28 = 1;
              v27 = 0;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v26 = 0;
          if ((SHIBYTE(v44) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }
        }

        operator delete(__p[0]);
        v20 = HIBYTE(v57);
        goto LABEL_36;
      }

LABEL_81:
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v37 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_INFO, "CLMM,Unexpected roadsWithinDistance returned only railways", buf, 2u);
        }

        v38 = sub_19B87DD40();
        if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1)
        {
          v39 = *(v38 + 152);
          if (!*(v38 + 152))
          {
            v27 = 0;
            goto LABEL_98;
          }
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(__p[0]) = 0;
        v40 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessParallelRoadsWithinDist(const double &, const double &, BOOL &)", "CoreLocation: %s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }

      v27 = 0;
      v39 = 0;
LABEL_98:
      v33 = v27 | v39;
    }

    else
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v34 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLMM,Unexpected roadsWithinDistance returned empty list", buf, 2u);
        }

        v35 = sub_19B87DD40();
        if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LOWORD(__p[0]) = 0;
          v36 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::assessParallelRoadsWithinDist(const double &, const double &, BOOL &)", "CoreLocation: %s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }
      }

      v33 = 0;
    }
  }

  else
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v30 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMM,roadsWithinDistance returned false", buf, 2u);
      }

      v31 = sub_19B87DD40();
      if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(__p[0]) = 0;
        v32 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessParallelRoadsWithinDist(const double &, const double &, BOOL &)", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    v33 = 0;
    ++*(a1 + 108);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  sub_19B916DC0(&v53);
  if (v8)
  {
    sub_19B8750F8(v8);
  }

  v41 = *MEMORY[0x1E69E9840];
  return v33;
}

void sub_19B9799E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_19B916DC0(&a72);
  if (v72)
  {
    sub_19B8750F8(v72);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B979A54(uint64_t a1)
{
  v107 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 872);
  v3 = *(a1 + 864);
  if (v2 != v3 && (*(a1 + 652) & 1) != 0)
  {
    v4 = 1;
    goto LABEL_196;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMM,prepareSeeding", &buf, 2u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v90) = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v7);
      if (v7 != &buf)
      {
        free(v7);
      }
    }
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 1208);
  v11 = *(a1 + 1328);
  if (v11 > 0.0)
  {
    v12 = *(a1 + 1336);
    if (v12 > 0.0)
    {
      v10 = sqrt(v12 / 2.45 * (v12 / 2.45) + v11 / 2.45 * (v11 / 2.45));
    }
  }

  v13 = v10 * 4.0;
  v14 = 75.0;
  if (v13 >= 75.0)
  {
    v14 = v13;
    if (v13 > 249.9999)
    {
      v14 = 249.9999;
    }
  }

  if (v2 != v3 && *(a1 + 1008) == 1)
  {
    v15 = *(a1 + 1184);
    if (v15 == 0.0 && *(a1 + 1192) == 0.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v16 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb lat==lon==0", &buf, 2u);
      }

      v17 = sub_19B87DD40();
      if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
LABEL_48:
          LOWORD(v90) = 0;
          v22 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v22);
          if (v22 != &buf)
          {
            free(v22);
          }

          goto LABEL_50;
        }

LABEL_201:
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        goto LABEL_48;
      }

      goto LABEL_50;
    }

    v18 = *(a1 + 1280);
    v19 = *(a1 + 1288);
    if (v18 == 0.0 && v19 == 0.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v20 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb snapLat==snapLon==0", &buf, 2u);
      }

      v21 = sub_19B87DD40();
      if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_48;
        }

        goto LABEL_201;
      }

LABEL_50:
      v4 = 0;
      ++*(a1 + 104);
      if (v9)
      {
        goto LABEL_195;
      }

      goto LABEL_196;
    }

    v23 = sub_19BA0C01C((a1 + 608), v15, *(a1 + 1192), v18, v19, *(a1 + 1200));
    if (v14 < v23)
    {
      v14 = v23 + 10.0;
    }
  }

  v24 = 1249.9995;
  if (v14 <= 1249.9995)
  {
    v24 = v14;
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLMM,Unexpected maxDistance,%{public}.1lf", &buf, 0xCu);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LODWORD(v90) = 134349056;
      *(&v90 + 4) = v14;
      v27 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v27);
      if (v27 != &buf)
      {
        free(v27);
      }
    }
  }

  v8[9] = 0;
  v85 = &v85;
  v86 = &v85;
  v87 = 0;
  if (((*(*v8 + 64))(v8, &v85, a1 + 1128, 1, v24) & 1) == 0)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v31 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEBUG, "CLMM,roadsWithinDistance returned false", &buf, 2u);
      }

      v32 = sub_19B87DD40();
      if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v90) = 0;
        v33 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v33);
        if (v33 != &buf)
        {
          free(v33);
        }
      }
    }

    v4 = 0;
    ++*(a1 + 108);
    goto LABEL_194;
  }

  if (!v87)
  {
    v4 = 0;
    ++*(a1 + 104);
    goto LABEL_194;
  }

  v28 = (a1 + 888);
  v29 = *(a1 + 896);
  v30 = *(a1 + 888);
  while (v29 != v30)
  {
    v29 -= 14;
    sub_19B988BB4(v29);
  }

  *(a1 + 896) = v30;
  sub_19B973FA0((a1 + 888), 0x60uLL);
  v74 = v3;
  v75 = v9;
  *(a1 + 968) = *(a1 + 960);
  sub_19B97AB8C((a1 + 960), 0x60uLL);
  v90 = 0uLL;
  LODWORD(v91) = 0;
  WORD2(v91) = 1;
  DWORD2(v91) = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v92 = 0u;
  memset(v93, 0, sizeof(v93));
  v34 = v86;
  if (v86 != &v85)
  {
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    while (1)
    {
      if (*(v34[2] + 17) == 1 && *(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v38 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMM,including railway", &buf, 2u);
        }

        v39 = sub_19B87DD40();
        if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LOWORD(__dst[0]) = 0;
          v40 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v40);
          if (v40 != &buf)
          {
            free(v40);
          }
        }
      }

      LODWORD(v79) = 0;
      __dst[0] = 0;
      __dst[1] = 0;
      WORD2(v79) = 1;
      DWORD2(v79) = 0;
      v83 = 0;
      v84 = 0;
      __p = 0;
      v80 = 0u;
      memset(v81, 0, 33);
      v42 = v34[2];
      v41 = v34[3];
      if (v41)
      {
        atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
        v43 = __dst[1];
        __dst[0] = v42;
        __dst[1] = v41;
        if (v43)
        {
          sub_19B8750F8(v43);
          v42 = __dst[0];
        }
      }

      else
      {
        __dst[0] = v34[2];
        __dst[1] = 0;
      }

      v44 = *(v34 + 3);
      v79 = *(v34 + 2);
      v80 = v44;
      v81[0] = v34[8];
      if (v42)
      {
        buf = 0uLL;
        *&v98 = 0;
        *(&v98 + 1) = 0x3FF0000000000000;
        v99 = 0u;
        v100 = 0u;
        LODWORD(v101) = 0;
        sub_19B940928(a1, a1 + 656, v34 + 2, (a1 + 1128), v76, &v89, &v88, &buf, 0);
        v45 = *&buf;
        v81[1] = buf;
        v81[3] = v98;
        if (*&buf <= v37)
        {
          v49 = v37;
          if (*&buf <= v36)
          {
            v45 = v36;
          }
        }

        else
        {
          v47 = __dst[0];
          v46 = __dst[1];
          if (__dst[1])
          {
            atomic_fetch_add_explicit(__dst[1] + 1, 1uLL, memory_order_relaxed);
          }

          v48 = *(&v90 + 1);
          *&v90 = v47;
          *(&v90 + 1) = v46;
          if (v48)
          {
            sub_19B8750F8(v48);
          }

          v91 = v79;
          v92 = v80;
          *v93 = v81[0];
          *&v93[8] = *&v81[1];
          *&v93[17] = *(&v81[2] + 1);
          sub_19B967884(&v94, __p, v83, 0x8E38E38E38E38E39 * ((v83 - __p) >> 3));
          v49 = *&v81[1];
          v45 = v37;
        }

        sub_19B973C04(a1 + 888, __dst);
        v35 = v35 + *&v81[1];
        v37 = v49;
        v36 = v45;
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v50 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "CLMM,Unexpected NULL road", &buf, 2u);
        }

        v51 = sub_19B87DD40();
        if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LOWORD(v76[0]) = 0;
          v52 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::prepareSeeding()", "CoreLocation: %s\n", v52);
          if (v52 != &buf)
          {
            free(v52);
          }
        }

        ++*(a1 + 104);
      }

      if (__p)
      {
        v83 = __p;
        operator delete(__p);
      }

      if (__dst[1])
      {
        sub_19B8750F8(__dst[1]);
      }

      if (!v42)
      {
        break;
      }

      v34 = v34[1];
      if (v34 == &v85)
      {
        goto LABEL_139;
      }
    }

    v4 = 0;
LABEL_189:
    v9 = v75;
    goto LABEL_190;
  }

  v35 = 0.0;
LABEL_139:
  v53 = *v28;
  v54 = *v28;
  if (*v28 == *(a1 + 896))
  {
    v4 = 0;
    ++*(a1 + 104);
    goto LABEL_190;
  }

  v55 = 0.0;
  do
  {
    v56 = *(v54 + 56) / v35;
    *(v54 + 64) = v56;
    v55 = v55 + v56;
    *&v56 = v55;
    LODWORD(buf) = LODWORD(v56);
    sub_19B973EC0((a1 + 960), &buf);
    v54 += 112;
  }

  while (v54 != *(a1 + 896));
  *(a1 + 1624) = 0;
  if (v2 == v74)
  {
    goto LABEL_185;
  }

  v57 = v86;
  if (v86 == &v85)
  {
    *(a1 + 1632) = 0;
    goto LABEL_185;
  }

  do
  {
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v101 = 0;
    v102 = 0;
    *(&v100 + 1) = 0;
    v103 = 0;
    v59 = v57[2];
    v58 = v57[3];
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&buf = v59;
    *(&buf + 1) = v58;
    v60 = *(v57 + 2);
    v61 = *(v57 + 3);
    *&v100 = v57[8];
    v98 = v60;
    v99 = v61;
    v62 = *(a1 + 1016);
    if (v59 == v62)
    {
      goto LABEL_176;
    }

    if (*(v59 + 71) < 0)
    {
      sub_19B874C9C(__dst, *(v59 + 48), *(v59 + 56));
      v62 = *(a1 + 1016);
    }

    else
    {
      *__dst = *(v59 + 48);
      *&v79 = *(v59 + 64);
    }

    if (*(v62 + 71) < 0)
    {
      sub_19B874C9C(v76, *(v62 + 48), *(v62 + 56));
    }

    else
    {
      *v76 = *(v62 + 48);
      v77 = *(v62 + 64);
    }

    v63 = BYTE7(v79);
    if ((SBYTE7(v79) & 0x80u) == 0)
    {
      v64 = BYTE7(v79);
    }

    else
    {
      v64 = __dst[1];
    }

    v65 = HIBYTE(v77);
    v66 = SHIBYTE(v77);
    if (v77 < 0)
    {
      v65 = v76[1];
    }

    if (v64 == v65)
    {
      if ((SBYTE7(v79) & 0x80u) == 0)
      {
        v67 = __dst;
      }

      else
      {
        v67 = __dst[0];
      }

      if (v77 >= 0)
      {
        v68 = v76;
      }

      else
      {
        v68 = v76[0];
      }

      v69 = memcmp(v67, v68, v64) == 0;
      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_169;
      }

LABEL_168:
      operator delete(v76[0]);
      v63 = BYTE7(v79);
      goto LABEL_169;
    }

    v69 = 0;
    if (SHIBYTE(v77) < 0)
    {
      goto LABEL_168;
    }

LABEL_169:
    if (v63 < 0)
    {
      operator delete(__dst[0]);
      if (v69)
      {
        goto LABEL_176;
      }
    }

    else if (v69)
    {
      goto LABEL_176;
    }

    if (*v59 != **(a1 + 1016))
    {
      __dst[0] = 0;
      __dst[1] = 0;
      *&v79 = 0;
      *(&v79 + 1) = 0x3FF0000000000000;
      v80 = 0u;
      memset(v81, 0, 20);
      sub_19B940928(a1, a1 + 656, v57 + 2, (a1 + 1128), v76, &v89, &v88, __dst, 0);
      if (*__dst > *(a1 + 1624))
      {
        *(a1 + 1624) = __dst[0];
      }
    }

LABEL_176:
    if (v58)
    {
      sub_19B8750F8(v58);
    }

    v57 = v57[1];
  }

  while (v57 != &v85);
  v70 = *(a1 + 1624);
  *(a1 + 1632) = 0;
  if (v70 <= 0.0)
  {
    v4 = 1;
    goto LABEL_189;
  }

  v71 = *(a1 + 1616) / v70;
  *(a1 + 1632) = v71;
  v9 = v75;
  if (v71 > 1000000.0)
  {
    *(a1 + 1632) = 0x412E848000000000;
  }

LABEL_185:
  v4 = 1;
LABEL_190:
  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (*(&v90 + 1))
  {
    sub_19B8750F8(*(&v90 + 1));
  }

LABEL_194:
  sub_19B916DC0(&v85);
  if (v9)
  {
LABEL_195:
    sub_19B8750F8(v9);
  }

LABEL_196:
  v72 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_19B97AAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (v56)
  {
    sub_19B8750F8(v56);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B97AB8C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_19B8F1D64(result, a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

uint64_t sub_19B97AC2C(uint64_t a1, _BYTE *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 872) == *(a1 + 864))
  {
    result = 1;
    *a2 = 1;
  }

  else
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v4 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM,assessMatchAndNeedForReseed", buf, 2u);
      }

      v5 = sub_19B87DD40();
      if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v38.__r_.__value_.__l.__data_) = 0;
        v6 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }

    *(a1 + 1360) = *(a1 + 1088);
    *(a1 + 1376) = *(a1 + 1576);
    v7 = *(a1 + 1632);
    *(a1 + 1308) = v7;
    *(a1 + 1368) = *(a1 + 1592);
    v8 = *(a1 + 1016);
    *(a1 + 1489) = *(v8 + 19);
    *(a1 + 1490) = *(v8 + 18);
    if (*(a1 + 1649) == 1)
    {
      v9 = *(a1 + 1650) ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v11 = sub_19B93F034(a1, a1 + 1128, v9 & 1);
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v12 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        sub_19B8D6654(a1 + 1128, buf);
        v13 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v38.__r_.__value_.__l.__data_) = 136380675;
        *(v38.__r_.__value_.__r.__words + 4) = v13;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,postEvaluateMatch,%{private}s", &v38, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      v14 = sub_19B87DD40();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        sub_19B8D6654(a1 + 1128, &v38);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v38;
        }

        else
        {
          v15 = v38.__r_.__value_.__r.__words[0];
        }

        v39 = 136380675;
        v40 = v15;
        v16 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    *(a1 + 1392) = v11;
    *(a1 + 1478) = *(a1 + 841) & v11;
    if ((*(a1 + 1488) & 1) == 0)
    {
      sub_19B966EDC(a1 + 3824, (a1 + 1016), v11, *(a1 + 1136), *(a1 + 1208), *(a1 + 1200), *(a1 + 1216));
    }

    sub_19B96700C(a1 + 3176, (a1 + 1128));
    v17 = sub_19B967214((a1 + 3176), *(a1 + 96));
    if (v17)
    {
      *(a1 + 1392) = 0;
      *(a1 + 1478) = 0;
    }

    else if (v11)
    {
      *(a1 + 2968) = 0;
      *(a1 + 2832) = 0u;
    }

    else
    {
      *(a1 + 1408) = 0;
      *(a1 + 1280) = *(a1 + 1184);
      *(a1 + 1296) = *(a1 + 1232);
      if (*(a1 + 1088) > 70.0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v18 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(a1 + 1088);
            LODWORD(buf[0].__r_.__value_.__l.__data_) = 134349312;
            *(buf[0].__r_.__value_.__r.__words + 4) = v19;
            WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2050;
            *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 0x4051800000000000;
            _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to varFactor,%{public}.1lf,max,%{public}.1lf", buf, 0x16u);
          }

          v20 = sub_19B87DD40();
          if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v21 = *(a1 + 1088);
            LODWORD(v38.__r_.__value_.__l.__data_) = 134349312;
            *(v38.__r_.__value_.__r.__words + 4) = v21;
            WORD2(v38.__r_.__value_.__r.__words[1]) = 2050;
            *(&v38.__r_.__value_.__r.__words[1] + 6) = 0x4051800000000000;
            v22 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v22);
            if (v22 != buf)
            {
              free(v22);
            }
          }
        }

        *a2 = 1;
      }

      v23 = *(a1 + 2968);
      if ((v23 & 0x80000000) == 0)
      {
        *(a1 + 2968) = v23 + 1;
        if (v23 >= 0x1E)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v24 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              buf[0].__r_.__value_.__r.__words[0] = 0x1E04020100;
              _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to badMatchCount,max,%{public}d", buf, 8u);
            }

            v25 = sub_19B87DD40();
            if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v38.__r_.__value_.__r.__words[0] = 0x1E04020100;
              v26 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v26);
              if (v26 != buf)
              {
                free(v26);
              }
            }
          }

          *a2 = 1;
        }
      }

      if ((*a2 & 1) == 0 && *(a1 + 1848) == 1 && *(a1 + 1136) - *(a1 + 1976) < 4.9)
      {
        if (*(a1 + 1088) <= 50.0 || *(a1 + 1928) <= 50.0 || (v27 = *(a1 + 1608), v27 < 0.0) || (v33 = *(a1 + 2448), v33 >= 2.5) || v27 >= 2.5 || v33 < 0.0)
        {
          *(a1 + 2832) = *(a1 + 1800) + *(a1 + 2832);
          v28 = sub_19BA0C01C((a1 + 608), *(a1 + 2120), *(a1 + 2128), *(a1 + 1280), *(a1 + 1288), *(a1 + 1200)) + *(a1 + 2840);
          *(a1 + 2840) = v28;
          v29 = *(a1 + 2832);
          if (v29 > 80.0 && v29 / v28 > 5.0)
          {
            *a2 = 1;
            if (*(a1 + 96) == 1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v30 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to stuck at dead-end while observations move away", buf, 2u);
              }

              v31 = sub_19B87DD40();
              if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                LOWORD(v38.__r_.__value_.__l.__data_) = 0;
                v32 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v32);
                if (v32 != buf)
                {
                  free(v32);
                }
              }
            }
          }
        }

        else
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v34 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLMM,Reseeding due to Neff", buf, 2u);
            }

            v35 = sub_19B87DD40();
            if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              LOWORD(v38.__r_.__value_.__l.__data_) = 0;
              v36 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessMatchAndNeedForReseed(BOOL &)", "CoreLocation: %s\n", v36);
              if (v36 != buf)
              {
                free(v36);
              }
            }
          }

          *a2 = 1;
        }
      }
    }

    result = v17 ^ 1u;
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B97B7CC(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,reseed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      LOWORD(v46) = 0;
      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::reseed()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B97BE0C(a1);
  if (*(a1 + 888) == *(a1 + 896) && (sub_19B979A54(a1) & 1) == 0)
  {
    v36 = 0;
    if (!v5)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v46 = 0uLL;
  v47 = 0;
  sub_19B973FA0(&v46, 0x60uLL);
  v6 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 896) - *(a1 + 888)) >> 4);
  *buf = 0;
  sub_19B988C58(&__p, v6);
  sub_19B98A0DC(*(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  v7 = *(a1 + 896);
  v8 = *(a1 + 888);
  if ((-1227133513 * ((v7 - v8) >> 4)) <= 95 && v8 != v7)
  {
    do
    {
      sub_19B973C04(&v46, v8);
      v10 = *(v8 + 20);
      v12 = *(v8 + 40);
      v11 = *(v8 + 48);
      v13 = *(v8 + 32);
      sub_19B970504();
      v8 += 112;
      v7 = *(a1 + 896);
    }

    while (v8 != v7);
  }

  v14 = *(&v46 + 1);
  v15 = v46;
  if (*(&v46 + 1) - v46 != 10752)
  {
    v16 = 0;
    do
    {
      v17 = random();
      v18 = *(a1 + 960);
      v19 = *(a1 + 968);
      if (v19 == v18)
      {
        v22 = *(a1 + 968);
      }

      else
      {
        v20 = vcvts_n_f32_s64(v17, 0x1FuLL);
        v21 = v19 - v18;
        v22 = *(a1 + 960);
        do
        {
          v23 = v21 >> 1;
          v24 = &v22[v21 >> 1];
          v26 = *v24;
          v25 = v24 + 1;
          v21 += ~(v21 >> 1);
          if (v26 < v20)
          {
            v22 = v25;
          }

          else
          {
            v21 = v23;
          }
        }

        while (v21);
      }

      if (v19 != v22)
      {
        ++*(__p + ((v22 - v18) << 30 >> 30));
      }

      ++v16;
      v14 = *(&v46 + 1);
      v15 = v46;
    }

    while (96 - 0x6DB6DB6DB6DB6DB7 * ((*(&v46 + 1) - v46) >> 4) > v16);
    v7 = *(a1 + 896);
  }

  v27 = *(a1 + 888);
  if (v27 != v7)
  {
    v28 = 0;
    v29 = __p;
    do
    {
      if (v28 >= (v45 - v29) >> 2)
      {
        break;
      }

      if (*&v29[4 * v28] >= 1)
      {
        v30 = 0;
        do
        {
          sub_19B973C04(&v46, v27);
          v31 = *(v27 + 20);
          v33 = *(v27 + 40);
          v32 = *(v27 + 48);
          v34 = *(v27 + 32);
          sub_19B970504();
          ++v30;
          v29 = __p;
        }

        while (v30 < *(__p + v28));
        v7 = *(a1 + 896);
      }

      v27 += 112;
      ++v28;
    }

    while (v27 != v7);
    v14 = *(&v46 + 1);
    v15 = v46;
  }

  v35 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 4);
  v36 = v35 < 0x61;
  if (v35 >= 0x61)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v39 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v35;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLMM,Unexpected number of particles after resampling,%{public}d", buf, 8u);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v48 = 67240192;
      v49 = v35;
      v41 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::reseed()", "CoreLocation: %s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    ++*(a1 + 104);
  }

  else
  {
    v37 = *(a1 + 864);
    *(a1 + 864) = v15;
    *(a1 + 872) = v14;
    v46 = v37;
    v38 = *(a1 + 880);
    *(a1 + 880) = v47;
    v47 = v38;
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  *buf = &v46;
  sub_19B988734(buf);
  if (v5)
  {
LABEL_63:
    sub_19B8750F8(v5);
  }

LABEL_64:
  v42 = *MEMORY[0x1E69E9840];
  return v36;
}

void sub_19B97BDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  a21 = &a15;
  sub_19B988734(&a21);
  if (v21)
  {
    sub_19B8750F8(v21);
  }

  _Unwind_Resume(a1);
}

void sub_19B97BE0C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v2 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 1136);
    v4 = *(a1 + 1184);
    v5 = *(a1 + 1192);
    *buf = 134349569;
    *&buf[4] = v3;
    *&buf[12] = 2053;
    *&buf[14] = v4;
    *&buf[22] = 2053;
    *&v28 = v5;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterResetForReseed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v7 = *(a1 + 1136);
    v8 = *(a1 + 1184);
    v9 = *(a1 + 1192);
    v19 = 134349569;
    *v20 = v7;
    *&v20[8] = 2053;
    *&v20[10] = v8;
    *&v20[18] = 2053;
    *&v21 = v9;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLParticleMapMatcher::resetForReseed()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  sub_19B93D614(a1);
  *(a1 + 2968) = -1;
  v11 = *(a1 + 872);
  v12 = *(a1 + 864);
  while (v11 != v12)
  {
    v11 -= 14;
    sub_19B988BB4(v11);
  }

  *(a1 + 872) = v12;
  sub_19B98A0DC(*(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 2832) = 0u;
  sub_19B9679F8((a1 + 912));
  buf[0] = 0;
  *&buf[8] = 0u;
  v28 = 0u;
  LODWORD(v29) = 0;
  WORD2(v29) = 1;
  DWORD2(v29) = 0;
  v30 = 0u;
  memset(v31, 0, 33);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v35 = 0;
  *(a1 + 2704) = 0;
  *(a1 + 2688) = *buf;
  v13 = *(a1 + 2720);
  *(a1 + 2712) = 0;
  *(a1 + 2720) = 0;
  if (v13)
  {
    sub_19B8750F8(v13);
  }

  *(a1 + 2760) = v31[0];
  v14 = v30;
  *(a1 + 2728) = v29;
  *(a1 + 2744) = v14;
  *(a1 + 2768) = *&v31[1];
  *(a1 + 2777) = *(&v31[2] + 1);
  if ((a1 + 2688) == buf)
  {
    v15 = 0;
  }

  else
  {
    sub_19B967884((a1 + 2800), 0, 0, 0);
    v15 = v35;
  }

  *(a1 + 2824) = v15;
  *(a1 + 2972) = 0;
  LOBYTE(v19) = 0;
  *&v20[4] = 0uLL;
  LODWORD(v21) = 0;
  WORD2(v21) = 1;
  DWORD2(v21) = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  *(a1 + 2848) = 0;
  v16 = *(a1 + 2864);
  *(a1 + 2856) = 0;
  *(a1 + 2864) = 0;
  if (v16)
  {
    sub_19B8750F8(v16);
  }

  *(a1 + 2904) = *v23;
  v17 = v22;
  *(a1 + 2872) = v21;
  *(a1 + 2888) = v17;
  *(a1 + 2912) = *&v23[8];
  *(a1 + 2921) = *&v23[17];
  if ((a1 + 2848) != &v19)
  {
    sub_19B967884((a1 + 2944), 0, 0, 0);
  }

  sub_19B97C244(a1 + 3824);
  *(a1 + 4032) = 0;
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (*&v20[12])
  {
    sub_19B8750F8(*&v20[12]);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (*(&v28 + 1))
  {
    sub_19B8750F8(*(&v28 + 1));
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_19B97C244(uint64_t a1)
{
  v13[0] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v13[8] = _Q0;
  v15 = 0uLL;
  v14 = 0;
  v16 = _Q0;
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  __p = 0;
  v23 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v24 = 0;
  v25 = 0xBFF0000000000000;
  v7 = *v13;
  v8 = *&v13[16];
  v9 = v16;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = v9;
  *a1 = v7;
  *(a1 + 16) = v8;
  v10 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v10)
  {
    sub_19B8750F8(v10);
  }

  v11 = v20;
  *(a1 + 80) = v19;
  *(a1 + 96) = v11;
  *(a1 + 112) = *v21;
  *(a1 + 120) = *&v21[8];
  *(a1 + 129) = *&v21[17];
  if (v13 == a1)
  {
    *(a1 + 176) = 0xBFF0000000000000;
  }

  else
  {
    sub_19B967884((a1 + 152), 0, 0, 0);
    v12 = __p;
    *(a1 + 176) = v25;
    if (v12)
    {
      v23 = v12;
      operator delete(v12);
    }
  }

  if (v18)
  {
    sub_19B8750F8(v18);
  }
}

void sub_19B97C354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B96FB20(va);
  _Unwind_Resume(a1);
}

void sub_19B97C368(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v2 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[142];
    v4 = a1[148];
    v5 = a1[149];
    *buf = 134349569;
    v15 = v3;
    v16 = 2053;
    v17 = v4;
    v18 = 2053;
    v19 = v5;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterReset,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v11 = a1[142];
    v12 = a1[148];
    v13 = a1[149];
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMapMatcher::reset()", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  sub_19B97BE0C(a1);
  v8 = a1[112];
  v9 = a1[111];
  while (v8 != v9)
  {
    v8 -= 14;
    sub_19B988BB4(v8);
  }

  a1[112] = v9;
  a1[121] = a1[120];
  sub_19B97C5D4((a1 + 126));
  sub_19B97C5D4((a1 + 231));
  sub_19B916DC0(a1 + 381);
  sub_19B916DC0(a1 + 384);
  sub_19B916DC0(a1 + 387);
  sub_19B916DC0(a1 + 390);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B97C5D4(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *(a1 + 8) = 0;
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  v2[1] = 0;
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = v20;
  *(a1 + 24) = v19;
  *(a1 + 40) = v4;
  *(a1 + 56) = *v21;
  *(a1 + 64) = *&v21[8];
  *(a1 + 73) = *&v21[17];
  if (v2 == &v17)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_19B967884((a1 + 96), 0, 0, 0);
    v5 = v17;
    v6 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  *(a1 + 672) = v5;
  v7 = *(a1 + 680);
  *(a1 + 680) = v6;
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  v8 = v20;
  *(a1 + 688) = v19;
  *(a1 + 704) = v8;
  *(a1 + 720) = *v21;
  *(a1 + 728) = *&v21[8];
  *(a1 + 737) = *&v21[17];
  if ((a1 + 672) != &v17)
  {
    sub_19B967884((a1 + 760), v22, v23, 0x8E38E38E38E38E39 * ((v23 - v22) >> 3));
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *v14 = 0xBFF0000000000000;
  *&v16[120] = 0;
  *&v16[128] = 0;
  memset(&v16[80], 0, 34);
  memset(&v16[136], 0, 75);
  memset(&v16[216], 0, 56);
  memset(&v14[8], 0, 80);
  memset(v16, 0, 78);
  v15 = 0u;
  *&v16[272] = 0xBFF0000000000000;
  *(a1 + 168) = *v14;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v14[64];
  *(a1 + 216) = *&v14[48];
  *(a1 + 200) = *&v14[32];
  *(a1 + 184) = *&v14[16];
  std::string::operator=((a1 + 248), &v14[80]);
  memcpy((a1 + 272), v16, 0x118uLL);
  *a1 = 0;
  *(a1 + 552) = 0;
  *(a1 + 664) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 639) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 830) = 0;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(*&v14[80]);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v18)
  {
    sub_19B8750F8(v18);
  }
}

void sub_19B97C848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_19B966FCC((v30 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_19B97C874(uint64_t a1, uint64_t *a2, double a3)
{
  v3 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_19B964860((a1 + 3824), a2, &v6, *(a1 + 96), a3);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  return v4;
}

void sub_19B97C8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B97C8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = sub_19B965AA8((a1 + 3824), a2, &v5, *(a1 + 96));
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  return v3;
}

void sub_19B97C954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B97C96C(uint64_t a1, uint64_t a2)
{
  v610 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v36 = *(a2 + 8);
      *buf = 134349056;
      *&buf[4] = v36;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", buf, 0xCu);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) != 0 && (*(v37 + 164) & 0x80000000) != 0 && (*(v37 + 168) & 0x80000000) != 0 && !*(v37 + 152))
    {
      goto LABEL_816;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v38 = *(a2 + 8);
    *v604 = 134349056;
    *&v604[4] = v38;
    v39 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v39);
LABEL_142:
    if (v39 != buf)
    {
      free(v39);
    }

    goto LABEL_816;
  }

  if (*(a1 + 96) == 1)
  {
    sub_19B9DEBC4(v4);
  }

  *(a1 + 1848) = *(a1 + 1008);
  v5 = *(a1 + 1016);
  v6 = *(a1 + 1024);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1856) = v5;
  v7 = *(a1 + 1864);
  *(a1 + 1864) = v6;
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  v8 = *(a1 + 1048);
  *(a1 + 1872) = *(a1 + 1032);
  *(a1 + 1904) = *(a1 + 1064);
  *(a1 + 1888) = v8;
  *(a1 + 1912) = *(a1 + 1072);
  *(a1 + 1921) = *(a1 + 1081);
  sub_19B967884((a1 + 1944), *(a1 + 1104), *(a1 + 1112), 0x8E38E38E38E38E39 * ((*(a1 + 1112) - *(a1 + 1104)) >> 3));
  v9 = (a1 + 1128);
  v10 = *(a1 + 1208);
  *(a1 + 2032) = *(a1 + 1192);
  *(a1 + 2048) = v10;
  v11 = *(a1 + 1240);
  *(a1 + 2064) = *(a1 + 1224);
  *(a1 + 2080) = v11;
  v12 = *(a1 + 1144);
  *(a1 + 1968) = *(a1 + 1128);
  *(a1 + 1984) = v12;
  v13 = *(a1 + 1176);
  *(a1 + 2000) = *(a1 + 1160);
  *(a1 + 2016) = v13;
  std::string::operator=((a1 + 2096), (a1 + 1256));
  __src = (a1 + 1280);
  memcpy((a1 + 2120), (a1 + 1280), 0x118uLL);
  v14 = *(a1 + 1608);
  *(a1 + 2432) = *(a1 + 1592);
  *(a1 + 2448) = v14;
  *(a1 + 2464) = *(a1 + 1624);
  *(a1 + 2475) = *(a1 + 1635);
  v15 = *(a1 + 1576);
  *(a1 + 2400) = *(a1 + 1560);
  *(a1 + 2416) = v15;
  v16 = *(a1 + 1656);
  v17 = *(a1 + 1664);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2496) = v16;
  v18 = *(a1 + 2504);
  *(a1 + 2504) = v17;
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  *(a1 + 2512) = *(a1 + 1672);
  v19 = *(a1 + 1680);
  v20 = *(a1 + 1688);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2520) = v19;
  v21 = *(a1 + 2528);
  *(a1 + 2528) = v20;
  if (v21)
  {
    sub_19B8750F8(v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 2536) = *(a1 + 1696);
  *(a1 + 2552) = v22;
  *(a1 + 2568) = *(a1 + 1728);
  *(a1 + 2576) = *(a1 + 1736);
  *(a1 + 2585) = *(a1 + 1745);
  sub_19B967884((a1 + 2608), *(a1 + 1768), *(a1 + 1776), 0x8E38E38E38E38E39 * ((*(a1 + 1776) - *(a1 + 1768)) >> 3));
  v23 = *(a1 + 1808);
  *(a1 + 2632) = *(a1 + 1792);
  *(a1 + 2648) = v23;
  *(a1 + 2664) = *(a1 + 1824);
  *(a1 + 2678) = *(a1 + 1838);
  v24 = *(a2 + 96);
  if (v24 >= 0.0)
  {
    *(a1 + 3872) = *(a2 + 8);
    *(a1 + 3832) = v24;
  }

  *(a1 + 3712) = 0;
  v25 = *(a2 + 104);
  v26 = *(a2 + 192);
  *(a1 + 848) = v25;
  *(a1 + 856) = v26;
  v27 = *(a1 + 1357);
  v28 = *(a1 + 1136);
  if (*(a1 + 816) != v27 || *(a1 + 832) == 0.0)
  {
    *(a1 + 832) = v28;
    *(a1 + 816) = v27;
  }

  *(a1 + 824) = v28;
  v29 = *(a2 + 56);
  *(a2 + 152) = v29;
  v30 = *(a2 + 64);
  *(a2 + 160) = v30;
  *(a2 + 168) = v25;
  *(a2 + 288) = v29;
  *(a2 + 296) = v30;
  *(a2 + 304) = v25;
  *(a2 + 312) = v29;
  *(a2 + 320) = v30;
  *(a2 + 328) = v29;
  *(a2 + 336) = v30;
  *(a2 + 280) = 0;
  v577 = (a2 + 152);
  if (*(a2 + 8) - *(a1 + 1976) <= 6.0)
  {
    v32 = *(a1 + 3016);
    v31 = *(a1 + 3008);
    goto LABEL_43;
  }

  v31 = *(a1 + 3008);
  v32 = *(a1 + 3016);
  *(a1 + 3040) = 0;
  v33 = v32 - v31;
  if (v33 >= 3)
  {
    do
    {
      operator delete(*v31);
      v31 = (*(a1 + 3008) + 8);
      *(a1 + 3008) = v31;
      v32 = *(a1 + 3016);
      v33 = v32 - v31;
    }

    while (v33 > 2);
  }

  if (v33 == 1)
  {
    v34 = 512;
    goto LABEL_41;
  }

  if (v33 == 2)
  {
    v34 = 1024;
LABEL_41:
    *(a1 + 3032) = v34;
  }

  *(a1 + 2992) = 0;
  v24 = *(a2 + 96);
LABEL_43:
  if (v32 == v31)
  {
    v40 = 0;
  }

  else
  {
    v40 = ((v32 - v31) << 7) - 1;
  }

  v41 = *(a1 + 3032);
  v42 = *(a1 + 3040);
  v43 = v42 + v41;
  if (v40 == v42 + v41)
  {
    if (v41 < 0x400)
    {
      v44 = *(a1 + 3024);
      v45 = *(a1 + 3000);
      if (v32 - v31 < (v44 - v45))
      {
        operator new();
      }

      if (v44 == v45)
      {
        v46 = 1;
      }

      else
      {
        v46 = (v44 - v45) >> 2;
      }

      sub_19B98A894(v46);
    }

    *(a1 + 3032) = v41 - 1024;
    *buf = *v31;
    *(a1 + 3008) = v31 + 1;
    sub_19B98A790((a1 + 3000), buf);
    v42 = *(a1 + 3040);
    v31 = *(a1 + 3008);
    v41 = *(a1 + 3032);
    v43 = v41 + v42;
  }

  v47 = v24;
  (*(v31 + ((v43 >> 7) & 0x1FFFFFFFFFFFFF8)))[v43 & 0x3FF] = v47;
  *(a1 + 3040) = v42 + 1;
  if ((v42 + 1) > *(a1 + 2984))
  {
    v48 = (*(v31 + ((v41 >> 7) & 0x1FFFFFFFFFFFFF8)))[v41 & 0x3FF];
    *(a1 + 2992) = *(a1 + 2992) - v48;
    *(a1 + 2996) = *(a1 + 2996) - (v48 * v48);
    *(a1 + 3040) = v42;
    *(a1 + 3032) = v41 + 1;
    if (v41 + 1 >= 0x800)
    {
      operator delete(*v31);
      *(a1 + 3008) += 8;
      *(a1 + 3032) -= 1024;
    }
  }

  *(a1 + 2992) = *(a1 + 2992) + v47;
  *(a1 + 2996) = *(a1 + 2996) + (v47 * v47);
  v49 = *(a1 + 4024);
  if (v49 < 0.0)
  {
    if (*(a2 + 24) - *(a1 + 4008) >= 900.0)
    {
      v49 = 5.55555556;
    }

    else
    {
      v49 = 1.66666667;
    }
  }

  if (*(a2 + 96) <= v49 && (*(a1 + 2232) & 1) == 0)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v59 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v60 = *(a2 + 8);
        *buf = 134349056;
        *&buf[4] = v60;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, not matching", buf, 0xCu);
      }

      v61 = sub_19B87DD40();
      if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v62 = *(a2 + 8);
        *v604 = 134349056;
        *&v604[4] = v62;
        v63 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v63);
        if (v63 != buf)
        {
          free(v63);
        }
      }
    }

    goto LABEL_114;
  }

  if (*(a2 + 348) == 1)
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v50 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEBUG, "CLMM,opportunistic tile download only, favorable GPS conditions", buf, 2u);
      }

      v51 = sub_19B87DD40();
      if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v604 = 0;
        v52 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }
      }
    }

    v53 = *(a1 + 112);
  }

  else
  {
    v53 = 1;
  }

  v54 = (a1 + 1144);
  if (*(a1 + 4128) == 1 && (v53 & 1) != 0)
  {
    v55 = *(a1 + 3040);
    v53 = 1;
    if (v55)
    {
      if (v55 >= *(a1 + 2984))
      {
        if ((*(a1 + 2992) / v55) <= 22.222)
        {
          v53 = 1;
        }

        else
        {
          if (*(a1 + 96) != 1)
          {
LABEL_100:
            v53 = 0;
            goto LABEL_116;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v56 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEBUG, "CLMM,opportunistic tile download only, high speed threshold", buf, 2u);
          }

          v57 = sub_19B87DD40();
          if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || (v53 = *(v57 + 152)) != 0)
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v604 = 0;
            v58 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v58);
            if (v58 != buf)
            {
              free(v58);
            }

            goto LABEL_100;
          }
        }
      }
    }
  }

LABEL_116:
  v65 = v53 & (*(a1 + 113) == 0);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v66 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v67 = *(a2 + 8);
      *buf = 134349312;
      *&buf[4] = v67;
      *&buf[12] = 1026;
      *&buf[14] = v65;
      _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMM,match,%{public}.1lf,allowsNetworkUsage,%{public}d", buf, 0x12u);
    }

    v68 = sub_19B87DD40();
    if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v69 = *(a2 + 8);
      *v604 = 134349312;
      *&v604[4] = v69;
      *&v604[12] = 1026;
      *&v604[14] = v65;
      v70 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v70);
      if (v70 != buf)
      {
        free(v70);
      }
    }
  }

  (*(*v4 + 32))(v4, v65);
  (*(*v4 + 48))(v4, a2, 450.0);
  v4[1] = *(a2 + 8);
  (*(*v4 + 96))(v4);
  v71 = a1 + 992;
  sub_19B98A0DC(*(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  *(a1 + 944) = *(a1 + 936);
  sub_19B97AB8C((a1 + 936), 0xC0uLL);
  sub_19B97C5D4(a1 + 1008);
  v72 = *a2;
  v73 = *(a2 + 16);
  v74 = *(a2 + 48);
  *(a1 + 1160) = *(a2 + 32);
  *(a1 + 1176) = v74;
  *v9 = v72;
  *(a1 + 1144) = v73;
  v75 = *(a2 + 64);
  v76 = *(a2 + 80);
  v77 = *(a2 + 112);
  *(a1 + 1224) = *(a2 + 96);
  *(a1 + 1240) = v77;
  *(a1 + 1192) = v75;
  *(a1 + 1208) = v76;
  std::string::operator=((a1 + 1256), (a2 + 128));
  memcpy(__src, v577, 0x118uLL);
  v78 = *(a1 + 1976);
  v79 = *(a1 + 1136) - v78;
  *(a1 + 1640) = v79;
  if (v79 == 0.0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_816;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v80 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_INFO, "CLMM,Time difference between updates is zero,update ignored", buf, 2u);
    }

    v81 = sub_19B87DD40();
    if (*(v81 + 160) <= 1 && *(v81 + 164) <= 1 && *(v81 + 168) <= 1 && !*(v81 + 152))
    {
      goto LABEL_816;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v604 = 0;
    v39 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v39);
    goto LABEL_142;
  }

  if (*(a1 + 1356) == 1)
  {
    v82 = 4.9;
    if (v79 > 4.9 && (*(a1 + 2232) & 1) != 0)
    {
      v83 = *(a1 + 1480);
      v84 = v83 > v78 + 1.2 || v83 <= 0.0;
      v82 = 4.9;
      if (!v84)
      {
        v82 = 75.0;
      }
    }
  }

  else
  {
    v82 = 4.9;
  }

  if (v79 < 0.0 || v79 > v82)
  {
    sub_19B97BE0C(a1);
  }

  if (*(a1 + 864) == *(a1 + 872))
  {
    *(a1 + 1640) = 0;
  }

  sub_19B93DA44(a1, v9);
  sub_19B9C138C(a1 + 656, v9, *(a1 + 752));
  sub_19B9866E4((a1 + 4040));
  if (*(a1 + 114) == 1)
  {
    v85 = *(a1 + 8);
    v86 = *(a1 + 16);
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      *&buf[8] = v86;
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *&buf[8] = 0;
    }

    *buf = v85;
    sub_19B986730(v9, buf, (a1 + 608), a1 + 48, (a1 + 4040), 1, 200.0);
    if (*&buf[8])
    {
      sub_19B8750F8(*&buf[8]);
    }

    if (v86)
    {
      sub_19B8750F8(v86);
    }
  }

  ++*(a1 + 100);
  if (!sub_19B971188(a1))
  {
    goto LABEL_815;
  }

  v569 = a1 + 1856;
  v576 = (a1 + 1128);
  if (*(a1 + 872) == *(a1 + 864) || *(a1 + 114) != 1)
  {
    v90 = 0;
LABEL_442:
    v219 = (a1 + 1856);
    goto LABEL_443;
  }

  v87 = *(a1 + 88);
  if (*(a1 + 4112) < 0.0 || vabdd_f64(*(a1 + 4120), v87) > 6.0)
  {
    *(a1 + 4112) = v87;
  }

  *(a1 + 4120) = v87;
  v88 = *(a1 + 4072);
  v89 = *(a1 + 4064);
  if (v88 != v89)
  {
    sub_19B98984C((a1 + 4088), v89, v88, 0xF83E0F83E0F83E1 * ((v88 - v89) >> 3));
  }

  sub_19B9882F8((a1 + 4064));
  if (*(a1 + 114) != 1 || *(a1 + 4040) == *(a1 + 4048))
  {
    goto LABEL_440;
  }

  v90 = 0;
  v91 = *(a1 + 88);
  if (v91 < 0.0 || vabdd_f64(*(a1 + 1152), v91) > 2.5)
  {
LABEL_441:
    sub_19B9882F8((a1 + 4064));
    goto LABEL_442;
  }

  if (vabdd_f64(v91, *(a1 + 4112)) < 60.0)
  {
    goto LABEL_440;
  }

  v92 = *(a1 + 1136);
  v93 = *(a1 + 16);
  v572 = *(a1 + 8);
  if (v93)
  {
    atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v572)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v135 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_ERROR, "CLMM,Unexpected,invalid geometry pointer,generateRouteHint", buf, 2u);
    }

    v136 = sub_19B87DD40();
    if ((*(v136 + 160) & 0x80000000) == 0 || (*(v136 + 164) & 0x80000000) == 0 || (*(v136 + 168) & 0x80000000) == 0 || *(v136 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v604 = 0;
      v137 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v137);
      if (v137 != buf)
      {
        free(v137);
      }
    }

    v134 = 0;
    goto LABEL_415;
  }

  v586 = 0;
  v587 = 0;
  v588 = 0;
  v556 = v93;
  if (*(a1 + 2232) != 1)
  {
    goto LABEL_199;
  }

  sub_19B97106C(v569, v584);
  v94 = *(a1 + 4040);
  if (v94 == *(a1 + 4048))
  {
    goto LABEL_199;
  }

  v570 = v3;
  while (1)
  {
    v95 = *v94;
    v96 = *(v94 + 8);
    if (v96)
    {
      atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      v97 = *(v94 + 20);
      atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      v99 = *v95;
      v98 = v95[1];
      sub_19B8750F8(v96);
    }

    else
    {
      v97 = *(v94 + 20);
      v99 = *v95;
      v98 = v95[1];
    }

    _ZF = v584[0] == v99 && v585 == v97;
    v101 = _ZF && v584[1] == v98;
    v3 = v570;
    if (v96)
    {
      sub_19B8750F8(v96);
    }

    if (v101)
    {
      break;
    }

    v94 += 56;
    if (v94 == *(a1 + 4048))
    {
      goto LABEL_199;
    }
  }

  v186 = *(a1 + 1152);
  if (v186 >= 0.0)
  {
    v188 = *(a1 + 1992);
    v189 = vabdd_f64(v186, v188) * 72.0;
    if (v188 >= 0.0)
    {
      v187 = v189;
    }

    else
    {
      v187 = -72.0;
    }
  }

  else
  {
    v187 = -72.0;
  }

  v190 = fmax(*(a1 + 1800), 0.0) + vcvts_n_f32_s64(random(), 0x1FuLL) * 0.25;
  if (v190 <= v187)
  {
    v187 = v190;
  }

  sub_19B973CD8(v599, v569);
  v581 = COERCE_DOUBLE(&v581);
  v582 = &v581;
  v583 = 0;
  if (v94 != *(a1 + 4048))
  {
    sub_19B9117CC();
  }

  v580 = 0;
  if (((*(*v572 + 56))(v572, v599, &v581, &v580, *&v599[48], v187) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v213 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v92;
      _os_log_impl(&dword_19B873000, v213, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,failed as not enough route roads are available", buf, 0xCu);
    }

    v3 = v570;
    v214 = sub_19B87DD40();
    if (*(v214 + 160) <= 1 && *(v214 + 164) <= 1 && *(v214 + 168) <= 1 && !*(v214 + 152))
    {
      goto LABEL_412;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v604 = 134349056;
    *&v604[4] = v92;
    v215 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v215);
    goto LABEL_409;
  }

  if (v583 <= v580)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v216 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      *&buf[4] = v92;
      *&buf[12] = 1026;
      *&buf[14] = v580;
      *&buf[18] = 2050;
      *&buf[20] = v583;
      _os_log_impl(&dword_19B873000, v216, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,route index,%{public}d,is more than number of route roads,%{public}ld", buf, 0x1Cu);
    }

    v3 = v570;
    v217 = sub_19B87DD40();
    if ((*(v217 + 160) & 0x80000000) != 0 && (*(v217 + 164) & 0x80000000) != 0 && (*(v217 + 168) & 0x80000000) != 0 && !*(v217 + 152))
    {
      goto LABEL_412;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    *v604 = 134349568;
    *&v604[4] = v92;
    *&v604[12] = 1026;
    *&v604[14] = v580;
    *&v604[18] = 2050;
    *&v604[20] = v583;
    v215 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v215);
LABEL_409:
    if (v215 != buf)
    {
      free(v215);
    }

    v3 = v570;
    v71 = a1 + 992;
LABEL_412:
    sub_19B916DC0(&v581);
    sub_19B966FCC(v599);
    v134 = 0;
    goto LABEL_413;
  }

  v191 = *&v599[24];
  v192 = 5.0;
  if (*&v599[48] <= 0.97 && *&v599[48] >= 0.03)
  {
    if (*(a1 + 1320) <= 0.0 || (v193 = *(a1 + 1232), v193 < 0.0))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v194 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = 0x403E000000000000;
        _os_log_impl(&dword_19B873000, v194, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,course deweighted,unc,%{public}.2lf", buf, 0x16u);
      }

      v195 = sub_19B87DD40();
      if (*(v195 + 160) > 1 || *(v195 + 164) > 1 || *(v195 + 168) > 1 || (v192 = 30.0, *(v195 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v604 = 134349312;
        *&v604[4] = v92;
        *&v604[12] = 2050;
        *&v604[14] = 0x403E000000000000;
        v196 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v196);
        if (v196 != buf)
        {
          free(v196);
        }

        v192 = 30.0;
      }

      goto LABEL_360;
    }

    v532 = fmod(v193 - v191, 360.0);
    if (v532 < 0.0)
    {
      v532 = v532 + 360.0;
    }

    if (v532 > 180.0)
    {
      v532 = v532 + -360.0;
    }

    v533 = fabs(v532);
    v534 = *(a1 + 4032);
    if (v533 >= 135.0)
    {
      *(a1 + 4032) = v534 + 1;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v541 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v542 = *(a1 + 1232);
        v543 = *(a1 + 4032);
        *buf = 134349824;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v191;
        *&buf[22] = 2050;
        *&buf[24] = v542;
        *&buf[32] = 1026;
        *&buf[34] = v543;
        _os_log_impl(&dword_19B873000, v541, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
      }

      v544 = sub_19B87DD40();
      if (*(v544 + 160) <= 1 && *(v544 + 164) <= 1 && *(v544 + 168) <= 1 && !*(v544 + 152))
      {
        goto LABEL_1052;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_1050;
      }

      goto LABEL_1053;
    }

    if (v533 > 60.0 && v534 >= 1)
    {
      *(a1 + 4032) = v534 + 1;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v545 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v546 = *(a1 + 1232);
        v547 = *(a1 + 4032);
        *buf = 134349824;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v191;
        *&buf[22] = 2050;
        *&buf[24] = v546;
        *&buf[32] = 1026;
        *&buf[34] = v547;
        _os_log_impl(&dword_19B873000, v545, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is different than crumb course,%{public}.1lf, and rejections are high,rejection,%{public}d", buf, 0x26u);
      }

      v548 = sub_19B87DD40();
      if (*(v548 + 160) <= 1 && *(v548 + 164) <= 1 && *(v548 + 168) <= 1 && !*(v548 + 152))
      {
        goto LABEL_1052;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_1050:
        v549 = *(a1 + 1232);
        v550 = *(a1 + 4032);
        *v604 = 134349824;
        *&v604[4] = v92;
        *&v604[12] = 2050;
        *&v604[14] = v191;
        *&v604[22] = 2050;
        *&v604[24] = v549;
        *&v604[32] = 1026;
        *&v604[34] = v550;
        v551 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v551);
        if (v551 != buf)
        {
          free(v551);
        }

LABEL_1052:
        sub_19B916DC0(&v581);
        sub_19B966FCC(v599);
        v134 = 0;
        v3 = v570;
        goto LABEL_413;
      }

LABEL_1053:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      goto LABEL_1050;
    }

    if (v533 > 80.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v536 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v537 = *(a1 + 1232);
        *buf = 134349568;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v191;
        *&buf[22] = 2050;
        *&buf[24] = v537;
        _os_log_impl(&dword_19B873000, v536, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,routeCourse,%{public}.1lf,is somewhat different than crumb course,%{public}.1lf", buf, 0x20u);
      }

      v538 = sub_19B87DD40();
      if (*(v538 + 160) > 1 || *(v538 + 164) > 1 || *(v538 + 168) > 1 || *(v538 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v539 = *(a1 + 1232);
        *v604 = 134349568;
        *&v604[4] = v92;
        *&v604[12] = 2050;
        *&v604[14] = v191;
        *&v604[22] = 2050;
        *&v604[24] = v539;
        v540 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v540);
        if (v540 != buf)
        {
          free(v540);
        }
      }

      goto LABEL_387;
    }
  }

LABEL_360:
  v197 = *&v599[32];
  v198 = *&v599[40];
  v199 = v582;
  v200 = v580;
  if (v580 < 0)
  {
    do
    {
      v199 = *v199;
    }

    while (!__CFADD__(v200++, 1));
  }

  else if (v580)
  {
    v201 = v580 + 1;
    do
    {
      v199 = *(v199 + 1);
      --v201;
    }

    while (v201 > 1);
  }

  v202 = sub_19BA0C01C((a1 + 608), *&v599[32], *&v599[40], v199[6], v199[7], 0.0);
  memset(v604, 0, 24);
  *&v604[24] = xmmword_19BA89720;
  v604[40] = 0;
  memset(v605, 0, 32);
  __asm { FMOV            V1.2D, #-1.0 }

  *&v605[112] = _Q1;
  *&v605[128] = 0xBFF0000000000000;
  memset(&v605[160], 0, 20);
  *&v605[180] = 1;
  *&v605[184] = 0;
  memset(&v605[192], 0, 24);
  *&v605[32] = v197;
  *&v605[40] = v198;
  *&v605[48] = *(a1 + 1200);
  *&v605[56] = v191;
  if (v202 < 8.0)
  {
    v202 = 8.0;
  }

  *&v605[64] = v202;
  *&v605[72] = v192;
  *&v605[80] = 0x3FF0000000000000;
  v204 = *(a1 + 1312);
  *&v605[88] = *(a1 + 1224);
  *&v605[96] = v204;
  v605[104] = *(a1 + 1356);
  *&v605[136] = vextq_s8(*v54, *v54, 8uLL);
  *&v605[152] = *(a1 + 1136);
  sub_19B988344(v604, 0);
  v206 = *v599;
  v205 = *&v599[8];
  if (*&v599[8])
  {
    atomic_fetch_add_explicit((*&v599[8] + 8), 1uLL, memory_order_relaxed);
  }

  v207 = *&v605[168];
  *&v605[160] = v206;
  *&v605[168] = v205;
  if (v207)
  {
    sub_19B8750F8(v207);
  }

  *&v605[176] = *&v599[16];
  *&v605[192] = *&v599[32];
  *&v605[208] = *&v599[48];
  sub_19B989CC8(&v586, v604);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v208 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v209 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
    *buf = 134350593;
    *&buf[4] = v92;
    *&buf[12] = 2053;
    *&buf[14] = *&v605[32];
    *&buf[22] = 2053;
    *&buf[24] = *&v605[40];
    *&buf[32] = 2050;
    *&buf[34] = *&v605[56];
    *&buf[42] = 2050;
    *&buf[44] = *&v605[64];
    *&buf[52] = 2050;
    *&buf[54] = *&v605[72];
    *&buf[62] = 2050;
    v607 = v209;
    _os_log_impl(&dword_19B873000, v208, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,meas,moveOnRouteRoads,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu", buf, 0x48u);
  }

  v210 = sub_19B87DD40();
  if (*(v210 + 160) > 1 || *(v210 + 164) > 1 || *(v210 + 168) > 1 || *(v210 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v211 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
    *v589 = 134350593;
    *&v589[4] = v92;
    *&v589[12] = 2053;
    *&v589[14] = *&v605[32];
    *&v589[22] = 2053;
    v590 = *&v605[40];
    v591 = 2050;
    v592 = *&v605[56];
    v593 = 2050;
    v594 = *&v605[64];
    v595 = 2050;
    v596 = *&v605[72];
    v597 = 2050;
    v598 = v211;
    v212 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v212);
    if (v212 != buf)
    {
      free(v212);
    }
  }

  if (*&v605[168])
  {
    sub_19B8750F8(*&v605[168]);
  }

LABEL_387:
  sub_19B916DC0(&v581);
  sub_19B966FCC(v599);
  v3 = v570;
LABEL_199:
  v102 = v586;
  v557 = v587;
  if (v587 != v586)
  {
    goto LABEL_200;
  }

  v138 = *(a1 + 4040);
  if (v138 == *(a1 + 4048))
  {
    goto LABEL_200;
  }

  v139 = *(a1 + 4048);
  v140 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v561 = _Q0;
  do
  {
    v144 = sub_19BA0C01C((a1 + 608), v138[4], v138[5], *(a1 + 1160), *(a1 + 1168), 0.0);
    memset(v604, 0, 24);
    *&v604[24] = xmmword_19BA89720;
    v604[40] = 0;
    memset(v605, 0, 32);
    *&v605[80] = 0xBFF0000000000000;
    *&v605[112] = v561;
    *&v605[128] = 0xBFF0000000000000;
    memset(&v605[160], 0, 20);
    *&v605[180] = 1;
    *&v605[184] = 0;
    memset(&v605[192], 0, 24);
    *&v605[32] = *(v138 + 2);
    *&v605[48] = *(a1 + 1200);
    v145 = *(v138 + 6);
    if (v144 < 8.0)
    {
      v144 = 8.0;
    }

    *&v605[56] = *(v138 + 6);
    *&v605[64] = v144;
    *&v605[72] = 0x4014000000000000;
    v146 = *(a1 + 1312);
    *&v605[88] = *(a1 + 1224);
    *&v605[96] = v146;
    v605[104] = *(a1 + 1356);
    *&v605[136] = vextq_s8(*v54, *v54, 8uLL);
    *&v605[152] = *(a1 + 1136);
    sub_19B988344(v604, 0);
    *&v605[80] = 1.0 / *&v605[72];
    v148 = *v138;
    v147 = *(v138 + 1);
    if (v147)
    {
      atomic_fetch_add_explicit((v147 + 8), 1uLL, memory_order_relaxed);
    }

    v149 = *&v605[168];
    *&v605[160] = v148;
    *&v605[168] = v147;
    if (v149)
    {
      sub_19B8750F8(v149);
    }

    v150 = *(v138 + 1);
    v151 = *(v138 + 2);
    *&v605[208] = v138[6];
    *&v605[176] = v150;
    *&v605[192] = v151;
    if (*(a1 + 1320) <= 0.0 || (v152 = *(a1 + 1232), v152 < 0.0))
    {
      if (*(a1 + 1848) != 1)
      {
        goto LABEL_286;
      }

      v152 = *(a1 + 2136);
      if (v152 < 0.0)
      {
        goto LABEL_286;
      }
    }

    v153 = fmod(v152 - *&v605[56], 360.0);
    if (v153 < 0.0)
    {
      v153 = v153 + 360.0;
    }

    v154 = v153 + -360.0;
    if (v153 <= 180.0)
    {
      v154 = v153;
    }

    if ((v155 = fabs(v154), v155 < 135.0) && (v155 <= 60.0 || *(a1 + 4032) <= 0) && (v155 <= 80.0 || (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4048) - *(a1 + 4040)) >> 3)) < 2))
    {
      if (v154 == 0.0)
      {
        v165 = *&v605[80];
      }

      else
      {
        v165 = 1.0 / v155;
      }

      *&v605[80] = v165;
      sub_19B988344(v604, 0);
      v166 = v587;
      if (v587 >= v588)
      {
        v179 = sub_19B989D6C(&v586, v604);
      }

      else
      {
        *v587 = *v604;
        v167 = *&v604[16];
        v168 = *&v604[32];
        v169 = *&v605[16];
        v166[3] = *v605;
        v166[4] = v169;
        v166[1] = v167;
        v166[2] = v168;
        v170 = *&v605[32];
        v171 = *&v605[48];
        v172 = *&v605[80];
        v166[7] = *&v605[64];
        v166[8] = v172;
        v166[5] = v170;
        v166[6] = v171;
        v173 = *&v605[96];
        v174 = *&v605[112];
        v175 = *&v605[144];
        v166[11] = *&v605[128];
        v166[12] = v175;
        v166[9] = v173;
        v166[10] = v174;
        *(v166 + 26) = *&v605[160];
        v176 = *&v605[168];
        *(v166 + 27) = *&v605[168];
        if (v176)
        {
          atomic_fetch_add_explicit((v176 + 8), 1uLL, memory_order_relaxed);
        }

        v177 = *&v605[176];
        v178 = *&v605[192];
        *(v166 + 32) = *&v605[208];
        v166[14] = v177;
        v166[15] = v178;
        v179 = v166 + 264;
      }

      v587 = v179;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v180 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v181 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
        *buf = 134350849;
        *&buf[4] = v92;
        *&buf[12] = 2053;
        *&buf[14] = *&v605[32];
        *&buf[22] = 2053;
        *&buf[24] = *&v605[40];
        *&buf[32] = 2050;
        *&buf[34] = *&v605[56];
        *&buf[42] = 2050;
        *&buf[44] = *&v605[64];
        *&buf[52] = 2050;
        *&buf[54] = *&v605[72];
        *&buf[62] = 2050;
        v607 = v181;
        v608 = 2050;
        v609 = *&v605[80];
        _os_log_impl(&dword_19B873000, v180, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,meas,projection,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu,confidence,%{public}.4lf", buf, 0x52u);
      }

      v182 = sub_19B87DD40();
      if (*(v182 + 160) > 1 || *(v182 + 164) > 1 || *(v182 + 168) > 1 || *(v182 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v183 = 0xF83E0F83E0F83E1 * ((*(a1 + 4072) - *(a1 + 4064)) >> 3);
        *v599 = 134350849;
        *&v599[4] = v92;
        *&v599[12] = 2053;
        *&v599[14] = *&v605[32];
        *&v599[22] = 2053;
        *&v599[24] = *&v605[40];
        *&v599[32] = 2050;
        *&v599[34] = *&v605[56];
        *&v599[42] = 2050;
        *&v599[44] = *&v605[64];
        *&v599[52] = 2050;
        *&v599[54] = *&v605[72];
        v600 = 2050;
        v601 = v183;
        v602 = 2050;
        v603 = *&v605[80];
        v164 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v164);
        goto LABEL_297;
      }
    }

    else
    {
LABEL_286:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v156 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v157 = *(v138 + 6);
        v158 = *(a1 + 1232);
        v159 = *(a1 + 4032);
        *buf = 134349824;
        *&buf[4] = v92;
        *&buf[12] = 2050;
        *&buf[14] = v157;
        *&buf[22] = 2050;
        *&buf[24] = v158;
        *&buf[32] = 1026;
        *&buf[34] = v159;
        _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints, no meas, projection,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
      }

      v160 = sub_19B87DD40();
      ++v140;
      if (*(v160 + 160) > 1 || *(v160 + 164) > 1 || *(v160 + 168) > 1 || *(v160 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v161 = *(v138 + 6);
        v162 = *(a1 + 1232);
        v163 = *(a1 + 4032);
        *v599 = 134349824;
        *&v599[4] = v92;
        *&v599[12] = 2050;
        *&v599[14] = v161;
        *&v599[22] = 2050;
        *&v599[24] = v162;
        *&v599[32] = 1026;
        *&v599[34] = v163;
        v164 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v164);
LABEL_297:
        if (v164 != buf)
        {
          free(v164);
        }
      }
    }

    if (*&v605[168])
    {
      sub_19B8750F8(*&v605[168]);
    }

    v138 += 7;
  }

  while (v138 != v139);
  v102 = v586;
  v557 = v587;
  if (v140 > 0 && 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4048) - *(a1 + 4040)) >> 3) == v140 && v587 == v586)
  {
    ++*(a1 + 4032);
  }

LABEL_200:
  if (v557 == v102)
  {
    v134 = 0;
    v71 = a1 + 992;
LABEL_413:
    v93 = v556;
    goto LABEL_414;
  }

  *(a1 + 4032) = 0;
  v103 = -1.0;
  v560 = 0.0;
  v104 = -1.0;
  do
  {
    v105 = *(a1 + 4088);
    v106 = *(a1 + 4096);
    if (v105 == v106)
    {
      goto LABEL_228;
    }

    v563 = 1;
    do
    {
      v107 = vabdd_f64(v105[23], *(v102 + 184));
      if (v103 < 0.0)
      {
        v103 = v107;
      }

      v108 = sub_19BA0C01C((a1 + 608), *(v102 + 80), *(v102 + 88), v105[10], v105[11], 0.0);
      if (v108 < v104 || v104 < 0.0)
      {
        v104 = v108;
      }

      if (v108 < 0.001)
      {
        v110 = *(v102 + 256) >= 0.2;
        *v599 = v599;
        *&v599[8] = v599;
        *&v599[16] = 0;
        if ((*(*v572 + 72))(v572, v599, v102 + 208, v110, 0))
        {
          v111 = *&v599[16];
          v563 = *&v599[16] > 1uLL;
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v112 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v92;
            *&buf[12] = 1026;
            *&buf[14] = v111 > 1;
            *&buf[18] = 2050;
            *&buf[20] = *&v599[16];
            _os_log_impl(&dword_19B873000, v112, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,duplicate measurement check,measurementGood,%{public}d,vector,%{public}lu", buf, 0x1Cu);
          }

          v113 = sub_19B87DD40();
          if (*(v113 + 160) > 1 || *(v113 + 164) > 1 || *(v113 + 168) > 1 || *(v113 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v604 = 134349568;
            *&v604[4] = v92;
            *&v604[12] = 1026;
            *&v604[14] = v111 > 1;
            *&v604[18] = 2050;
            *&v604[20] = *&v599[16];
            v114 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v114);
            if (v114 != buf)
            {
              free(v114);
            }
          }
        }

        sub_19B941414(v599);
      }

      v105 += 33;
    }

    while (v105 != v106);
    if (v563)
    {
LABEL_228:
      v115 = v92;
      v116 = *(v102 + 128);
      v117 = *(a1 + 4072);
      if (v117 >= *(a1 + 4080))
      {
        v130 = sub_19B989D6C((a1 + 4064), v102);
      }

      else
      {
        *v117 = *v102;
        v118 = *(v102 + 16);
        v119 = *(v102 + 32);
        v120 = *(v102 + 64);
        *(v117 + 48) = *(v102 + 48);
        *(v117 + 64) = v120;
        *(v117 + 16) = v118;
        *(v117 + 32) = v119;
        v121 = *(v102 + 80);
        v122 = *(v102 + 96);
        v123 = *(v102 + 128);
        *(v117 + 112) = *(v102 + 112);
        *(v117 + 128) = v123;
        *(v117 + 80) = v121;
        *(v117 + 96) = v122;
        v124 = *(v102 + 144);
        v125 = *(v102 + 160);
        v126 = *(v102 + 192);
        *(v117 + 176) = *(v102 + 176);
        *(v117 + 192) = v126;
        *(v117 + 144) = v124;
        *(v117 + 160) = v125;
        *(v117 + 208) = *(v102 + 208);
        v127 = *(v102 + 216);
        *(v117 + 216) = v127;
        if (v127)
        {
          atomic_fetch_add_explicit((v127 + 8), 1uLL, memory_order_relaxed);
        }

        v128 = *(v102 + 224);
        v129 = *(v102 + 240);
        *(v117 + 256) = *(v102 + 256);
        *(v117 + 224) = v128;
        *(v117 + 240) = v129;
        v130 = v117 + 264;
      }

      v560 = v560 + v116;
      *(a1 + 4072) = v130;
      v92 = v115;
    }

    v102 += 264;
  }

  while (v102 != v557);
  if (v104 < 0.0 || v103 <= 0.0 || v103 >= 5.0 || v104 <= v103 * 50.0)
  {
    v71 = a1 + 992;
    v93 = v556;
    if (v560 > 0.0)
    {
      v184 = *(a1 + 4064);
      v185 = *(a1 + 4072);
      while (v184 != v185)
      {
        *(v184 + 128) = *(v184 + 128) / v560;
        v184 += 264;
      }
    }

    v134 = 1;
  }

  else
  {
    v71 = a1 + 992;
    v93 = v556;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v131 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v92;
      *&buf[12] = 2050;
      *&buf[14] = v104;
      _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,jump in route hint measurement,%{public}.3lf,rejecting", buf, 0x16u);
    }

    v132 = sub_19B87DD40();
    if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      *v604 = 134349312;
      *&v604[4] = v92;
      *&v604[12] = 2050;
      *&v604[14] = v104;
      v133 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::generateRouteHintMeasurement()", "CoreLocation: %s\n", v133);
      if (v133 != buf)
      {
        free(v133);
      }
    }

    sub_19B9882F8((a1 + 4064));
    v134 = 0;
  }

LABEL_414:
  *buf = &v586;
  sub_19B98868C(buf);
LABEL_415:
  if (v93)
  {
    sub_19B8750F8(v93);
    if (v134)
    {
      goto LABEL_417;
    }

LABEL_440:
    v90 = 0;
    goto LABEL_441;
  }

  if (!v134)
  {
    goto LABEL_440;
  }

LABEL_417:
  v218 = *(a1 + 4064);
  v219 = (a1 + 1856);
  if (v218 == *(a1 + 4072))
  {
    v90 = 0;
  }

  else
  {
    v220 = *(a1 + 4072);
    v221 = *(v218 + 184);
    v222 = vabdd_f64(v221, *(a1 + 1152));
    v90 = v222 <= 0.01;
    if (v222 > 0.01)
    {
      goto LABEL_441;
    }

    while (1)
    {
      *&v605[224] = 0;
      *&v605[232] = 0;
      memset(&v605[184], 0, 34);
      memset(&v605[240], 0, 75);
      memset(&v605[320], 0, 56);
      *&v605[166] = 0u;
      *&v605[152] = 0u;
      *&v605[136] = 0u;
      memset(&v605[56], 0, 80);
      *&v605[40] = 0u;
      *&v605[376] = 0xBFF0000000000000;
      *&v605[8] = *(v218 + 80);
      v223 = *(v218 + 104);
      v224 = *(v218 + 112);
      v225 = *(v218 + 120);
      *&v605[24] = *(v218 + 96);
      *&v605[32] = v224;
      *&v605[144] = v225;
      *&v605[152] = *(v218 + 160);
      *&v605[168] = *(v218 + 176);
      v226 = *(v218 + 144);
      *&v605[48] = *(v218 + 136);
      *&v605[56] = v223;
      *v604 = 0;
      *&v604[32] = 0;
      *&v604[40] = 0;
      *v605 = 0xBFF0000000000000;
      *&v605[136] = v226;
      v605[180] = *(v218 + 152);
      *&v604[24] = v221;
      *&v604[8] = vextq_s8(*(v218 + 192), *(v218 + 192), 8uLL);
      v227 = *(a1 + 864);
      v228 = *(a1 + 872);
      while (v227 != v228)
      {
        memset(buf, 0, 24);
        *&buf[24] = 0x3FF0000000000000;
        memset(&buf[32], 0, 32);
        LODWORD(v607) = 0;
        sub_19B940928(a1, v218, v227, v604, v599, v589, &v586, buf, 0);
        LODWORD(v607) = 2;
        *&buf[24] = *(v218 + 128);
        v229 = (v227 + 11);
        sub_19B973D80(v229, buf);
        sub_19B988454((v229 - 88));
        v227 = (v229 + 24);
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v230 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v231 = *(a1 + 1136);
        *buf = 134349056;
        *&buf[4] = v231;
        _os_log_impl(&dword_19B873000, v230, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,used route-hint", buf, 0xCu);
      }

      v232 = sub_19B87DD40();
      if (*(v232 + 160) > 1 || *(v232 + 164) > 1 || *(v232 + 168) > 1 || *(v232 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v233 = *(a1 + 1136);
        *v599 = 134349056;
        *&v599[4] = v233;
        v234 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::integrateRouteHint()", "CoreLocation: %s\n", v234);
        if (v234 != buf)
        {
          free(v234);
        }
      }

      if ((v605[103] & 0x80000000) != 0)
      {
        operator delete(*&v605[80]);
      }

      if (v218 + 264 == v220)
      {
        break;
      }

      v221 = *(v218 + 448);
      v218 += 264;
      if (vabdd_f64(v221, *(a1 + 1152)) > 0.01)
      {
        goto LABEL_441;
      }
    }

    v90 = 1;
    v219 = (a1 + 1856);
  }

LABEL_443:
  *(a1 + 1845) = v90;
  v235 = *(a1 + 872);
  v236 = *(a1 + 864);
  v237 = (a1 + 1128);
  if (v235 == v236)
  {
LABEL_454:
    sub_19B98A0DC(*(a1 + 992));
    *(a1 + 984) = v71;
    *(a1 + 992) = 0u;
    v245 = *(a1 + 872);
    v246 = *(a1 + 864);
    v247 = v245 - v246;
    if (v245 == v246)
    {
      goto LABEL_798;
    }

    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v248 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v248, OS_LOG_TYPE_DEBUG, "CLMM,resample", buf, 2u);
      }

      v249 = sub_19B87DD40();
      v219 = (a1 + 1856);
      if (*(v249 + 160) > 1 || *(v249 + 164) > 1 || *(v249 + 168) > 1 || *(v249 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v604 = 0;
        v250 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::resample()", "CoreLocation: %s\n", v250);
        if (v250 != buf)
        {
          free(v250);
        }

        v219 = (a1 + 1856);
      }
    }

    v567 = v71;
    if (*(a1 + 1224) == 0.0 || *(a1 + 1356) == 1)
    {
      v251 = (a1 + 1128);
      v252 = 5;
      v253 = 48;
    }

    else
    {
      v251 = (a1 + 1128);
      v252 = 10;
      v253 = 96;
    }

    memset(v604, 0, 24);
    v254 = v253;
    sub_19B973FA0(v604, v253);
    *buf = 0;
    sub_19B988C58(v599, 0x6DB6DB6DB6DB6DB7 * (v247 >> 4));
    if (*(a1 + 2232) == 1 && *(a1 + 2489) == 1 && *v219)
    {
      v255 = v252;
      do
      {
        sub_19B973C04(v604, v219);
        v256 = *(a1 + 1876);
        v257 = *(a1 + 1904);
        v258 = *(a1 + 1888);
        v259 = *(a1 + 1896);
        sub_19B970504();
        --v255;
      }

      while (v255);
    }

    else
    {
      v252 = 0;
    }

    v260 = 0;
    v562 = (a1 + 984);
    v261 = v254 - v252;
    do
    {
      v262 = random();
      v263 = *(a1 + 936);
      v264 = *(a1 + 944);
      if (v264 != v263)
      {
        v265 = vcvts_n_f32_s64(v262, 0x1FuLL);
        v266 = v264 - v263;
        v264 = *(a1 + 936);
        do
        {
          v267 = v266 >> 1;
          v268 = &v264[v266 >> 1];
          v270 = *v268;
          v269 = v268 + 1;
          v266 += ~(v266 >> 1);
          if (v270 < v265)
          {
            v264 = v269;
          }

          else
          {
            v266 = v267;
          }
        }

        while (v266);
      }

      v271 = v264 - v263;
      v272 = *v599;
      ++*(*v599 + (v271 << 30 >> 30));
      ++v260;
    }

    while (v260 != v261);
    v273 = *(a1 + 864);
    v274 = *(a1 + 872);
    if (v273 != v274)
    {
      v275 = 0;
      do
      {
        if (v275 >= (*&v599[8] - v272) >> 2)
        {
          break;
        }

        if (*(v272 + 4 * v275) >= 1)
        {
          v276 = 0;
          do
          {
            sub_19B973C04(v604, v273);
            v277 = *(v273 + 20);
            v279 = *(v273 + 40);
            v278 = *(v273 + 48);
            v280 = *(v273 + 32);
            sub_19B970504();
            ++v276;
            v272 = *v599;
          }

          while (v276 < *(*v599 + 4 * v275));
          v274 = *(a1 + 872);
        }

        v273 += 112;
        ++v275;
      }

      while (v273 != v274);
    }

    v281 = *&v604[8];
    v282 = 0x6DB6DB6DB6DB6DB7 * ((*&v604[8] - *v604) >> 4);
    if (v282 <= v254)
    {
      v286 = *(a1 + 864);
      *(a1 + 864) = *v604;
      *(a1 + 872) = v281;
      *v604 = v286;
      *&v604[8] = v274;
      v287 = *(a1 + 880);
      *(a1 + 880) = *&v604[16];
      *&v604[16] = v287;
    }

    else if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v283 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        *&buf[4] = v282;
        _os_log_impl(&dword_19B873000, v283, OS_LOG_TYPE_ERROR, "CLMM,Unexpected number of particles after resampling,%{public}d", buf, 8u);
      }

      v284 = sub_19B87DD40();
      if ((*(v284 + 160) & 0x80000000) == 0 || (*(v284 + 164) & 0x80000000) == 0 || (*(v284 + 168) & 0x80000000) == 0 || *(v284 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v589 = 67240192;
        *&v589[4] = v282;
        v285 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::resample()", "CoreLocation: %s\n", v285);
        if (v285 != buf)
        {
          free(v285);
        }
      }
    }

    if (*v599)
    {
      *&v599[8] = *v599;
      operator delete(*v599);
    }

    *buf = v604;
    sub_19B988734(buf);
    if (v282 > v254)
    {
      goto LABEL_820;
    }

    v237 = v251;
    if (*(a1 + 872) == *(a1 + 864))
    {
LABEL_798:
      if ((sub_19B974088(a1) & 1) == 0)
      {
        goto LABEL_820;
      }

      sub_19B9781D0(a1);
      v434 = (a1 + 1856);
      if ((sub_19B979A54(a1) & 1) == 0)
      {
        goto LABEL_815;
      }

      v599[0] = 0;
      if ((sub_19B97AC2C(a1, v599) & 1) == 0)
      {
        goto LABEL_820;
      }

      if (v599[0] == 1 && !sub_19B97B7CC(a1))
      {
        goto LABEL_815;
      }

      if (*(a1 + 1392) == 1 && (v435 = *(a1 + 1016), *(a1 + 777) = *(v435 + 16), *(a1 + 780) = *(v435 + 20), *(a1 + 784) = *(a1 + 1649), *(a1 + 2232) == 1))
      {
        v436 = *(a1 + 1240);
        if (*(a1 + 2080) != v436)
        {
          v437 = fmod(*(a1 + 1432) - *(a1 + 2272), 360.0);
          if (v437 < 0.0)
          {
            v437 = v437 + 360.0;
          }

          if (v437 > 180.0)
          {
            v437 = v437 + -360.0;
          }

          if (fabs(v437) > 45.0)
          {
            v438 = *(a1 + 3080);
            if (v438 == a1 + 3072)
            {
              v440 = 1;
            }

            else
            {
              do
              {
                v439 = **(v438 + 16);
                _ZF = v436 == v439;
                v440 = v436 != v439;
                if (_ZF)
                {
                  break;
                }

                v438 = *(v438 + 8);
              }

              while (v438 != a1 + 3072);
            }

            for (i = *(a1 + 3128); i != a1 + 3120; i = *(i + 8))
            {
              if (v436 == **(i + 16))
              {
                goto LABEL_927;
              }
            }

            if (v440)
            {
              v571 = v3;
              v445 = *(a1 + 1024);
              if (v445)
              {
                atomic_fetch_add_explicit(&v445->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v446 = *(a1 + 1856);
              v447 = *(a1 + 1864);
              if (v447)
              {
                atomic_fetch_add_explicit(&v447->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v449 = *(v435 + 136);
              v448 = *(v435 + 144);
              v450 = 0uLL;
              v451 = 0uLL;
              if (v448 != v449)
              {
                v451 = *v449;
              }

              v454 = v446 + 136;
              v453 = *(v446 + 136);
              v452 = *(v454 + 8);
              if (v452 != v453)
              {
                v450 = *v453;
              }

              v574 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
              v455 = vmovn_s64(vcgtq_f64(v574, vabdq_f64(v451, v450)));
              if (vand_s8(v455, vdup_lane_s32(v455, 1)).u8[0])
              {
                goto LABEL_860;
              }

              v456 = 0uLL;
              v457 = 0uLL;
              if (v448 != v449)
              {
                v457 = *v449;
              }

              if (v452 != v453)
              {
                v456 = v452[-1];
              }

              v458 = vmovn_s64(vcgtq_f64(v574, vabdq_f64(v457, v456)));
              if (vand_s8(v458, vdup_lane_s32(v458, 1)).u8[0])
              {
                goto LABEL_860;
              }

              v459 = 0uLL;
              v460 = 0uLL;
              if (v448 != v449)
              {
                v460 = v448[-1];
              }

              if (v452 != v453)
              {
                v459 = *v453;
              }

              v461 = vmovn_s64(vcgtq_f64(v574, vabdq_f64(v460, v459)));
              if (vand_s8(v461, vdup_lane_s32(v461, 1)).u8[0])
              {
                goto LABEL_860;
              }

              v462 = 0uLL;
              v463 = 0uLL;
              if (v448 != v449)
              {
                v463 = v448[-1];
              }

              if (v452 != v453)
              {
                v462 = v452[-1];
              }

              v464 = vmovn_s64(vcgtq_f64(v574, vabdq_f64(v463, v462)));
              if (vand_s8(v464, vdup_lane_s32(v464, 1)).u8[0])
              {
LABEL_860:
                v465 = 1;
              }

              else
              {
                v465 = 0;
              }

              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v466 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v467 = *(a1 + 1136);
                  v468 = **(a1 + 1016);
                  v469 = **(a1 + 1856);
                  *buf = 134349825;
                  *&buf[4] = v467;
                  *&buf[12] = 1026;
                  *&buf[14] = v465;
                  *&buf[18] = 2049;
                  *&buf[20] = v468;
                  *&buf[28] = 2049;
                  *&buf[30] = v469;
                  _os_log_impl(&dword_19B873000, v466, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping check,connecting roads,%{public}d,current road,%{private}lld,prior road,%{private}lld", buf, 0x26u);
                }

                v470 = sub_19B87DD40();
                if (*(v470 + 160) > 1 || *(v470 + 164) > 1 || *(v470 + 168) > 1 || *(v470 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v471 = *(a1 + 1136);
                  v472 = **(a1 + 1016);
                  v473 = **(a1 + 1856);
                  *v604 = 134349825;
                  *&v604[4] = v471;
                  *&v604[12] = 1026;
                  *&v604[14] = v465;
                  *&v604[18] = 2049;
                  *&v604[20] = v472;
                  *&v604[28] = 2049;
                  *&v604[30] = v473;
                  v474 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v474);
                  if (v474 != buf)
                  {
                    free(v474);
                  }
                }
              }

              if (v447)
              {
                sub_19B8750F8(v447);
              }

              if (v445)
              {
                sub_19B8750F8(v445);
              }

              if ((v465 & 1) == 0)
              {
                v475 = *(a1 + 1656);
                if (!v475 || !*v475)
                {
                  goto LABEL_907;
                }

                v476 = *(a1 + 1016);
                v477 = *(a1 + 1024);
                if (v477)
                {
                  atomic_fetch_add_explicit(&v477->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v478 = *(a1 + 1856);
                v479 = *(a1 + 1864);
                if (v479)
                {
                  atomic_fetch_add_explicit(&v479->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v480 = *(*(a1 + 1656) + 136);
                v566 = 0u;
                v568 = 0u;
                if (*(*(a1 + 1656) + 144) != v480)
                {
                  v566 = *v480;
                }

                v481 = v478[18];
                if (v481 != v478[17])
                {
                  v568 = *(v481 - 16);
                }

                if (*(a1 + 96))
                {
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v482 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    v483 = *(a1 + 1136);
                    v484 = *v478;
                    v485 = **(a1 + 1656);
                    v486 = *v476;
                    *buf = 134349825;
                    *&buf[4] = v483;
                    *&buf[12] = 2049;
                    *&buf[14] = v484;
                    *&buf[22] = 2049;
                    *&buf[24] = v485;
                    *&buf[32] = 2049;
                    *&buf[34] = v486;
                    _os_log_impl(&dword_19B873000, v482, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping check,prior road,%{private}lld, connected to the incoming road,%{private}lld, of the current solution road,%{private}lld", buf, 0x2Au);
                  }

                  v487 = sub_19B87DD40();
                  if (*(v487 + 160) > 1 || *(v487 + 164) > 1 || *(v487 + 168) > 1 || *(v487 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                    }

                    v488 = *(a1 + 1136);
                    v489 = *v478;
                    v490 = **(a1 + 1656);
                    v491 = *v476;
                    *v604 = 134349825;
                    *&v604[4] = v488;
                    *&v604[12] = 2049;
                    *&v604[14] = v489;
                    *&v604[22] = 2049;
                    *&v604[24] = v490;
                    *&v604[32] = 2049;
                    *&v604[34] = v491;
                    v492 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v492);
                    if (v492 != buf)
                    {
                      free(v492);
                    }
                  }
                }

                v493 = vmovn_s64(vcgtq_f64(v574, vabdq_f64(v566, v568)));
                v575 = vand_s8(v493, vdup_lane_s32(v493, 1)).u8[0];
                if (v479)
                {
                  sub_19B8750F8(v479);
                }

                if (v477)
                {
                  sub_19B8750F8(v477);
                }

                v3 = v571;
                if ((v575 & 1) == 0)
                {
LABEL_907:
                  v494 = sub_19BA0C01C((a1 + 608), *(a1 + 2256), *(a1 + 2264), *(a1 + 1416), *(a1 + 1424), *(a1 + 1200)) > 35.0 || *(a1 + 2680) > 15;
                  if (*(a1 + 96) == 1)
                  {
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                    }

                    v495 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      v496 = *(a1 + 1136);
                      v497 = *(a1 + 2272);
                      v498 = *(a1 + 1432);
                      v499 = **(a1 + 1016);
                      v500 = **(a1 + 1856);
                      *buf = 134350337;
                      *&buf[4] = v496;
                      *&buf[12] = 1026;
                      *&buf[14] = v494;
                      *&buf[18] = 2050;
                      *&buf[20] = v497;
                      *&buf[28] = 2050;
                      *&buf[30] = v498;
                      *&buf[38] = 2049;
                      *&buf[40] = v499;
                      *&buf[48] = 2049;
                      *&buf[50] = v500;
                      _os_log_impl(&dword_19B873000, v495, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping between roads detected,reset,%{public}d,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", buf, 0x3Au);
                    }

                    v501 = sub_19B87DD40();
                    if (*(v501 + 160) > 1 || *(v501 + 164) > 1 || *(v501 + 168) > 1 || *(v501 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                      }

                      v502 = *(a1 + 1136);
                      v503 = *(a1 + 2272);
                      v504 = *(a1 + 1432);
                      v505 = **(a1 + 1016);
                      v506 = **(a1 + 1856);
                      *v604 = 134350337;
                      *&v604[4] = v502;
                      *&v604[12] = 1026;
                      *&v604[14] = v494;
                      *&v604[18] = 2050;
                      *&v604[20] = v503;
                      *&v604[28] = 2050;
                      *&v604[30] = v504;
                      *&v604[38] = 2049;
                      *&v604[40] = v505;
                      *v605 = 2049;
                      *&v605[2] = v506;
                      v507 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v507);
                      if (v507 != buf)
                      {
                        free(v507);
                      }
                    }
                  }

                  v3 = v571;
                  if (v494)
                  {
                    (*(*a1 + 40))(a1);
                    v64 = 0;
                    ++*(a1 + 104);
                    v3 = v571;
                    goto LABEL_817;
                  }
                }
              }
            }
          }
        }

LABEL_927:
        sub_19B91737C((a1 + 3072), *(a1 + 3056), a1 + 3048);
        v434 = (a1 + 1856);
        sub_19B916DC0((a1 + 3048));
        v443 = (a1 + 3096);
        sub_19B91737C((a1 + 3120), *(a1 + 3104), a1 + 3096);
      }

      else
      {
        sub_19B916DC0((a1 + 3072));
        v443 = (a1 + 3120);
      }

      sub_19B916DC0(v443);
      if (*(a1 + 1008) == 1)
      {
        v508 = **(a1 + 1016);
        *buf = v508;
        v509 = *(a1 + 1036);
        buf[8] = *(a1 + 1036);
        if (!*(a1 + 928) || (v510 = *(a1 + 920), v508 != *(v510 + 16)) || v509 != *(v510 + 24))
        {
          sub_19B9838D4();
        }

        if (*(a1 + 1008) == 1 && *(a1 + 1848) == 1)
        {
          if (v508 == **v434 && v509 == *(a1 + 1876))
          {
            v511 = *(a1 + 2680) + 1;
          }

          else
          {
            v511 = 0;
          }

          *(a1 + 1840) = v511;
          v512 = sub_19BA0C01C((a1 + 608), *(a1 + 1888), *(a1 + 1896), *(a1 + 1048), *(a1 + 1056), *(a1 + 1200));
          sub_19B973CD8(buf, v434);
          *v604 = 0;
          if (sub_19B96FEF8(a1, buf, v604, v512))
          {
            *(a1 + 2688) = 1;
            *(a1 + 2824) = *v604;
            sub_19B9710EC(a1 + 2712, buf);
            *(a1 + 2704) = *(a1 + 1976);
          }

          sub_19B966FCC(buf);
        }

        else
        {
          *(a1 + 1840) = 0;
        }
      }

      if (*(a1 + 2688) == 1)
      {
        if (*(a1 + 1008) != 1 || (v513 = sub_19BA0C01C((a1 + 608), *(a1 + 2744), *(a1 + 2752), *(a1 + 1280), *(a1 + 1288), *(a1 + 1200)), *(a1 + 2696) = v513, v513 > 450.0))
        {
          *(a1 + 2688) = 0;
        }
      }

      sub_19B978C00(a1);
      if (*(a1 + 1184) == 0.0 && *(a1 + 1192) == 0.0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v514 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v514, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb lat==lon==0", buf, 2u);
        }

        v515 = sub_19B87DD40();
        if ((*(v515 + 160) & 0x80000000) == 0 || (*(v515 + 164) & 0x80000000) == 0 || (*(v515 + 168) & 0x80000000) == 0 || *(v515 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          *v604 = 0;
          v516 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v516);
          if (v516 != buf)
          {
            free(v516);
          }
        }

LABEL_820:
        (*(*a1 + 40))(a1);
        v64 = 0;
        ++*(a1 + 104);
        goto LABEL_817;
      }

      if (*(a1 + 1008) == 1)
      {
        if (*__src == 0.0 && *(a1 + 1288) == 0.0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v517 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v517, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb snapLat==snapLon==0", buf, 2u);
          }

          v518 = sub_19B87DD40();
          if ((*(v518 + 160) & 0x80000000) == 0 || (*(v518 + 164) & 0x80000000) == 0 || (*(v518 + 168) & 0x80000000) == 0 || *(v518 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v604 = 0;
            v519 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v519);
            if (v519 != buf)
            {
              free(v519);
            }
          }

          goto LABEL_820;
        }

        v520 = *(a1 + 1016);
        if (v520)
        {
          *(a1 + 1477) = *(v520 + 17);
        }
      }

      v521 = *v237;
      v522 = v237[1];
      v523 = v237[3];
      *(a2 + 32) = v237[2];
      *(a2 + 48) = v523;
      *a2 = v521;
      *(a2 + 16) = v522;
      v524 = v237[4];
      v525 = v237[5];
      v526 = v237[7];
      *(a2 + 96) = v237[6];
      *(a2 + 112) = v526;
      *(a2 + 64) = v524;
      *(a2 + 80) = v525;
      std::string::operator=((a2 + 128), (a1 + 1256));
      memcpy(v577, __src, 0x118uLL);
      if (*(a1 + 1392) == 1)
      {
        *(a1 + 4008) = *(a1 + 1152);
        if (*(a1 + 776) == 1 && *(a1 + 1648) == 1)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v527 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v527, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse engaged but not snapping course", buf, 2u);
            }

            v528 = sub_19B87DD40();
            if (*(v528 + 160) > 1 || *(v528 + 164) > 1 || *(v528 + 168) > 1 || *(v528 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              *v604 = 0;
              v529 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "CoreLocation: %s\n", v529);
              if (v529 != buf)
              {
                free(v529);
              }
            }
          }

          *(a2 + 168) = *(a1 + 848);
        }

        sub_19B98392C(a1, a2);
        v530 = *(a1 + 1392);
        *buf = *(a2 + 192);
        if (v530 & 1) != 0 && (sub_19B93D7A0(a1, buf))
        {
          v531 = buf;
LABEL_1000:
          *(a2 + 192) = *v531;
LABEL_114:
          v64 = 1;
          goto LABEL_817;
        }
      }

      else
      {
        *(a2 + 168) = *(a1 + 848);
        ++*(a1 + 104);
        *buf = *(a2 + 192);
      }

      v531 = (a1 + 856);
      goto LABEL_1000;
    }

    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v288 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v288, OS_LOG_TYPE_DEBUG, "CLMM,Assessing candidates", buf, 2u);
      }

      v289 = sub_19B87DD40();
      if (*(v289 + 160) > 1 || *(v289 + 164) > 1 || *(v289 + 168) > 1 || *(v289 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v604 = 0;
        v290 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v290);
        if (v290 != buf)
        {
          free(v290);
        }
      }
    }

    v291 = *(a1 + 16);
    v564 = *(a1 + 8);
    if (v291)
    {
      atomic_fetch_add_explicit(&v291->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v552 = v291;
    v558 = *(a1 + 1000);
    v292 = *(a1 + 984);
    if (v292 != v567)
    {
      while (1)
      {
        size = v292[2].__r_.__value_.__l.__size_;
        v292[8].__r_.__value_.__s.__data_[8] = 0;
        v292[8].__r_.__value_.__s.__data_[0] = 0;
        if (!size)
        {
          break;
        }

        if (*(size + 17) == 1)
        {
          *(a1 + 1844) = 1;
        }

        v294 = *v576;
        v295 = *(a1 + 1144);
        v296 = *(a1 + 1176);
        *&v292[208].__r_.__value_.__r.__words[1] = *(a1 + 1160);
        *&v292[209].__r_.__value_.__l.__data_ = v296;
        *&v292[207].__r_.__value_.__l.__data_ = v294;
        *&v292[207].__r_.__value_.__r.__words[2] = v295;
        v297 = *(a1 + 1192);
        v298 = *(a1 + 1208);
        v299 = *(a1 + 1240);
        *&v292[211].__r_.__value_.__l.__data_ = *(a1 + 1224);
        *&v292[211].__r_.__value_.__r.__words[2] = v299;
        *&v292[209].__r_.__value_.__r.__words[2] = v297;
        *&v292[210].__r_.__value_.__r.__words[1] = v298;
        std::string::operator=((v292 + 5096), (a1 + 1256));
        memcpy(&v292[213].__r_.__value_.__r.__words[1], __src, 0x118uLL);
        if ((sub_19B9DF3F8(v564, &v292[207], &v292[2].__r_.__value_.__l.__size_, v292[2].__r_.__value_.__s.__data_[0], &v292[111], v292[3].__r_.__value_.__l.__data_) & 1) == 0)
        {
          v237 = (a1 + 1128);
          v428 = v552;
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v432 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v432, OS_LOG_TYPE_DEBUG, "CLMM,interpolateOnRoad returned false, determining mean road position", buf, 2u);
            }

            v433 = sub_19B87DD40();
            if (*(v433 + 160) > 1 || *(v433 + 164) > 1 || *(v433 + 168) > 1 || *(v433 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              *v604 = 0;
              v431 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v431);
LABEL_789:
              if (v431 != buf)
              {
                free(v431);
              }

              goto LABEL_791;
            }
          }

          goto LABEL_791;
        }

        *&v292[225].__r_.__value_.__r.__words[2] = xmmword_19BA8BCC0;
        if (SLODWORD(v292[3].__r_.__value_.__l.__data_) < 1)
        {
          v300 = 0;
        }

        else
        {
          v300 = 0;
          v301 = v292;
          v302 = 237;
          do
          {
            if (sub_19BA0C01C((a1 + 608), *&v292[213].__r_.__value_.__l.__size_, *&v292[213].__r_.__value_.__r.__words[2], v301[141], v301[237], *(a1 + 1200)) <= 40.0)
            {
              v303 = v301[333];
              if (v303 > *&v292[226].__r_.__value_.__l.__data_)
              {
                *&v292[226].__r_.__value_.__l.__data_ = v303;
                v303 = v301[333];
              }

              ++v300;
              if (v303 < *&v292[225].__r_.__value_.__r.__words[2])
              {
                *&v292[225].__r_.__value_.__r.__words[2] = v303;
              }
            }

            v304 = v302 - 236;
            ++v302;
            ++v301;
          }

          while (v304 < SLODWORD(v292[3].__r_.__value_.__l.__data_));
        }

        HIDWORD(v292[3].__r_.__value_.__r.__words[0]) = v300;
        v305 = *(a1 + 872);
        v306 = *(a1 + 864);
        if (v306 != v305)
        {
          v307 = 0.0;
          do
          {
            sub_19B97106C(v306, buf);
            if (*buf == v292[1].__r_.__value_.__l.__size_ && buf[16] == v292[2].__r_.__value_.__s.__data_[0] && *&buf[8] == v292[1].__r_.__value_.__r.__words[2] && *(v306 + 56) > v307)
            {
              v305 = v306;
              v307 = *(v306 + 56);
            }

            v306 += 112;
          }

          while (v306 != *(a1 + 872));
          if (v306 != v305)
          {
            v309 = *v305;
            v308 = *(v305 + 8);
            if (v308)
            {
              atomic_fetch_add_explicit((v308 + 8), 1uLL, memory_order_relaxed);
            }

            v310 = v292[3].__r_.__value_.__r.__words[2];
            v292[3].__r_.__value_.__l.__size_ = v309;
            v292[3].__r_.__value_.__r.__words[2] = v308;
            if (v310)
            {
              sub_19B8750F8(v310);
            }

            v311 = *(v305 + 16);
            v312 = *(v305 + 32);
            v292[5].__r_.__value_.__l.__size_ = *(v305 + 48);
            *&v292[4].__r_.__value_.__l.__data_ = v311;
            *&v292[4].__r_.__value_.__r.__words[2] = v312;
            v313 = *(v305 + 56);
            *(&v292[6].__r_.__value_.__l.__data_ + 1) = *(v305 + 65);
            *&v292[5].__r_.__value_.__r.__words[2] = v313;
            if (&v292[3].__r_.__value_.__r.__words[1] != v305)
            {
              sub_19B967884(v292[7].__r_.__value_.__r.__words, *(v305 + 88), *(v305 + 96), 0x8E38E38E38E38E39 * ((*(v305 + 96) - *(v305 + 88)) >> 3));
            }
          }
        }

        if (*(a1 + 96) == 1)
        {
          v314 = sub_19B8E3CB0();
          if (*v314 == 1)
          {
            v315 = *(a1 + 1136);
            sub_19B8759E8(buf, "CLMM,Time,%{public}.1lf,candidate,roadID,%{private}llu,fwd,%{public}d,countAroundMean,%{public}d");
            sub_19B98A2F4(buf);
            bzero(v314 + 56, 0x800uLL);
            if (buf[23] >= 0)
            {
              snprintf(v314 + 56, 0x800uLL, buf, v315, v292[1].__r_.__value_.__l.__size_, v292[2].__r_.__value_.__s.__data_[0], HIDWORD(v292[3].__r_.__value_.__r.__words[0]));
            }

            else
            {
              snprintf(v314 + 56, 0x800uLL, *buf, v315, v292[1].__r_.__value_.__l.__size_, v292[2].__r_.__value_.__s.__data_[0], HIDWORD(v292[3].__r_.__value_.__r.__words[0]));
            }

            Current = CFAbsoluteTimeGetCurrent();
            sub_19B8759E8(v604, v314 + 56);
            sub_19B8E3D48(v314, v604, Current);
            if ((v604[23] & 0x80000000) != 0)
            {
              operator delete(*v604);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v317 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v318 = *(a1 + 1136);
            v319 = v292[1].__r_.__value_.__l.__size_;
            v320 = v292[2].__r_.__value_.__s.__data_[0];
            v321 = HIDWORD(v292[3].__r_.__value_.__r.__words[0]);
            *buf = 134349825;
            *&buf[4] = v318;
            *&buf[12] = 2049;
            *&buf[14] = v319;
            *&buf[22] = 1026;
            *&buf[24] = v320;
            *&buf[28] = 1026;
            *&buf[30] = v321;
            _os_log_impl(&dword_19B873000, v317, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,candidate,roadID,%{private}llu,fwd,%{public}d,countAroundMean,%{public}d", buf, 0x22u);
          }

          v322 = sub_19B87DD40();
          if (*(v322 + 160) > 1 || *(v322 + 164) > 1 || *(v322 + 168) > 1 || *(v322 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v323 = *(a1 + 1136);
            v324 = v292[1].__r_.__value_.__l.__size_;
            v325 = v292[2].__r_.__value_.__s.__data_[0];
            v326 = HIDWORD(v292[3].__r_.__value_.__r.__words[0]);
            *v604 = 134349825;
            *&v604[4] = v323;
            *&v604[12] = 2049;
            *&v604[14] = v324;
            *&v604[22] = 1026;
            *&v604[24] = v325;
            *&v604[28] = 1026;
            *&v604[30] = v326;
            v327 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v327);
            if (v327 != buf)
            {
              free(v327);
            }
          }
        }

        v328 = v292->__r_.__value_.__l.__size_;
        if (v328)
        {
          do
          {
            v329 = v328;
            v328 = v328->__r_.__value_.__r.__words[0];
          }

          while (v328);
        }

        else
        {
          do
          {
            v329 = v292->__r_.__value_.__r.__words[2];
            _ZF = v329->__r_.__value_.__r.__words[0] == v292;
            v292 = v329;
          }

          while (!_ZF);
        }

        v292 = v329;
        if (v329 == v567)
        {
          goto LABEL_589;
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v237 = (a1 + 1128);
      v428 = v552;
      v429 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v429, OS_LOG_TYPE_ERROR, "CLMM,NULL road, bad candidate", buf, 2u);
      }

      v430 = sub_19B87DD40();
      if ((*(v430 + 160) & 0x80000000) == 0 || (*(v430 + 164) & 0x80000000) == 0 || (*(v430 + 168) & 0x80000000) == 0 || *(v430 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v604 = 0;
        v431 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v431);
        goto LABEL_789;
      }

LABEL_791:
      v553 = 0;
      ++*(a1 + 104);
LABEL_794:
      if (v428)
      {
        sub_19B8750F8(v428);
        if ((v553 & 1) == 0)
        {
          goto LABEL_815;
        }
      }

      else if (!v553)
      {
        goto LABEL_815;
      }

      goto LABEL_798;
    }

LABEL_589:
    if (v558 < 2)
    {
      v553 = 1;
      v237 = (a1 + 1128);
      goto LABEL_793;
    }

    v330 = *v562;
    v553 = 1;
    v331 = v567;
    v237 = (a1 + 1128);
    if (*v562 == v567)
    {
LABEL_793:
      v428 = v552;
      goto LABEL_794;
    }

    __asm { FMOV            V0.2D, #-1.0 }

    v555 = _Q0;
LABEL_593:
    v584[0] = 0;
    v333 = *(a1 + 1136);
    *v604 = 0;
    *&v604[8] = v333;
    *&v604[16] = v555;
    *&v604[32] = 0;
    *&v604[40] = 0;
    *v605 = 0xBFF0000000000000;
    *&v605[224] = 0;
    *&v605[232] = 0;
    memset(&v605[184], 0, 34);
    memset(&v605[240], 0, 75);
    memset(&v605[320], 0, 56);
    memset(&v605[8], 0, 174);
    *&v605[376] = 0xBFF0000000000000;
    *v589 = v589;
    *&v589[8] = v589;
    *&v589[16] = 0;
    v334 = 5424;
    if (v330[2].__r_.__value_.__s.__data_[0])
    {
      v334 = 5416;
    }

    if (((*(*v564 + 80))(v564, v604, v589, 0, 1, &v330[2].__r_.__value_.__l.__size_, *(&v330->__r_.__value_.__l.__data_ + v334), 40.0) & 1) == 0)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v399 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v399, OS_LOG_TYPE_DEBUG, "CLMM,roadsAtIntersection returned false, searching for connected candidates", buf, 2u);
        }

        v400 = sub_19B87DD40();
        if (*(v400 + 160) > 1 || *(v400 + 164) > 1 || *(v400 + 168) > 1 || *(v400 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          *v599 = 0;
          v401 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v401);
          if (v401 != buf)
          {
            free(v401);
          }
        }
      }

      ++*(a1 + 108);
      goto LABEL_694;
    }

    if (!*&v589[16])
    {
      goto LABEL_740;
    }

    if (SLODWORD(v330[3].__r_.__value_.__l.__data_) <= 0)
    {
      if ((*(a1 + 96) & 1) == 0)
      {
        goto LABEL_740;
      }

LABEL_698:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v403 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v403, OS_LOG_TYPE_DEBUG, "CLMM,unexpected incomingCount < 1", buf, 2u);
      }

      v404 = sub_19B87DD40();
      if (*(v404 + 160) > 1 || *(v404 + 164) > 1 || *(v404 + 168) > 1 || *(v404 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v599 = 0;
        v405 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v405);
LABEL_738:
        if (v405 != buf)
        {
          free(v405);
        }
      }

LABEL_740:
      v402 = 37;
      goto LABEL_741;
    }

    v573 = 0;
    v335 = *&v605[224];
    v336 = v330;
    v337 = 333;
    v338 = *&v605[104];
    v339 = *&v605[112];
    while (1)
    {
      v340 = v336[333];
      if (v330[2].__r_.__value_.__s.__data_[0] == 1)
      {
        if (v340 <= v335)
        {
          goto LABEL_603;
        }
      }

      else if (v340 >= v335)
      {
LABEL_603:
        if (sub_19BA0C01C((a1 + 608), v338, v339, v336[141], v336[237], *(a1 + 1200)) > 40.0)
        {
          v341 = v573;
        }

        else
        {
          v341 = (v573 + 1);
        }

        v573 = v341;
      }

      v342 = v337 - 332;
      ++v337;
      ++v336;
      if (v342 >= SLODWORD(v330[3].__r_.__value_.__l.__data_))
      {
        v343 = *(a1 + 96);
        if (v573 < 1)
        {
          if (!*(a1 + 96))
          {
            goto LABEL_740;
          }

          goto LABEL_698;
        }

        if (*(a1 + 96))
        {
          v344 = sub_19B8E3CB0();
          if (*v344 == 1)
          {
            v345 = *(a1 + 1136);
            sub_19B8759E8(buf, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,incoming,countAroundMean,%{public}d");
            sub_19B98A2F4(buf);
            bzero(v344 + 56, 0x800uLL);
            if (buf[23] >= 0)
            {
              snprintf(v344 + 56, 0x800uLL, buf, v345, v330[1].__r_.__value_.__l.__size_, HIDWORD(v330[3].__r_.__value_.__r.__words[0]));
            }

            else
            {
              snprintf(v344 + 56, 0x800uLL, *buf, v345, v330[1].__r_.__value_.__l.__size_, HIDWORD(v330[3].__r_.__value_.__r.__words[0]));
            }

            v346 = CFAbsoluteTimeGetCurrent();
            sub_19B8759E8(v599, v344 + 56);
            sub_19B8E3D48(v344, v599, v346);
            if ((v599[23] & 0x80000000) != 0)
            {
              operator delete(*v599);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v347 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v348 = *(a1 + 1136);
            v349 = v330[1].__r_.__value_.__l.__size_;
            v350 = HIDWORD(v330[3].__r_.__value_.__r.__words[0]);
            *buf = 134349569;
            *&buf[4] = v348;
            *&buf[12] = 2049;
            *&buf[14] = v349;
            *&buf[22] = 1026;
            *&buf[24] = v350;
            _os_log_impl(&dword_19B873000, v347, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,incoming,countAroundMean,%{public}d", buf, 0x1Cu);
          }

          v351 = sub_19B87DD40();
          if (*(v351 + 160) > 1 || *(v351 + 164) > 1 || *(v351 + 168) > 1 || *(v351 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v352 = *(a1 + 1136);
            v353 = v330[1].__r_.__value_.__l.__size_;
            v354 = HIDWORD(v330[3].__r_.__value_.__r.__words[0]);
            *v599 = 134349569;
            *&v599[4] = v352;
            *&v599[12] = 2049;
            *&v599[14] = v353;
            *&v599[22] = 1026;
            *&v599[24] = v354;
            v355 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v355);
            if (v355 != buf)
            {
              free(v355);
            }
          }
        }

        LODWORD(v330[8].__r_.__value_.__r.__words[2]) = v573;
        v356 = *&v589[8];
        if (*&v589[8] == v589)
        {
          goto LABEL_726;
        }

        v565 = 0;
        v554 = 0;
        v559 = 0;
        while (2)
        {
          v357 = *(v356 + 16);
          v358 = *v357;
          if (*v357 == v330[1].__r_.__value_.__l.__size_ && v330[2].__r_.__value_.__s.__data_[0] != *(v356 + 32))
          {
            goto LABEL_678;
          }

          v359 = *(v356 + 24);
          if (v359)
          {
            atomic_fetch_add_explicit(&v359->__shared_owners_, 1uLL, memory_order_relaxed);
            v360 = *(v356 + 32);
            atomic_fetch_add_explicit(&v359->__shared_owners_, 1uLL, memory_order_relaxed);
            v358 = *v357;
            v361 = v357[1];
            sub_19B8750F8(v359);
            sub_19B8750F8(v359);
          }

          else
          {
            v360 = *(v356 + 32);
            v361 = v357[1];
          }

          ++v565;
          v586 = v358;
          v587 = v361;
          LOBYTE(v588) = v360;
          v362 = sub_19B98A250(v562, &v586);
          v581 = 0.0;
          if (v567 == v362)
          {
            v374 = v559;
            goto LABEL_676;
          }

          v363 = v362;
          if (*(v362 + 72) < 1)
          {
LABEL_677:
            v237 = (a1 + 1128);
LABEL_678:
            v356 = *(v356 + 8);
            if (v356 != v589)
            {
              continue;
            }

            if (v559 >= 1)
            {
              v330[8].__r_.__value_.__s.__data_[8] = 1;
              if (v565 > 1)
              {
                v330[8].__r_.__value_.__s.__data_[0] = 1;
              }

              HIDWORD(v330[8].__r_.__value_.__r.__words[0]) = v554;
              v331 = v567;
              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v406 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v407 = *(a1 + 1136);
                  v408 = v330[1].__r_.__value_.__l.__size_;
                  v409 = v330[8].__r_.__value_.__s.__data_[8];
                  v410 = v330[8].__r_.__value_.__s.__data_[0];
                  *buf = 134349825;
                  *&buf[4] = v407;
                  *&buf[12] = 2049;
                  *&buf[14] = v408;
                  *&buf[22] = 1026;
                  *&buf[24] = v409;
                  *&buf[28] = 1026;
                  *&buf[30] = v410;
                  _os_log_impl(&dword_19B873000, v406, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,isCombined,%{public}d,isMulti,%{public}d", buf, 0x22u);
                }

                v411 = sub_19B87DD40();
                if (*(v411 + 160) > 1 || *(v411 + 164) > 1 || *(v411 + 168) > 1 || *(v411 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v412 = *(a1 + 1136);
                  v413 = v330[1].__r_.__value_.__l.__size_;
                  v414 = v330[8].__r_.__value_.__s.__data_[8];
                  v415 = v330[8].__r_.__value_.__s.__data_[0];
                  *v599 = 134349825;
                  *&v599[4] = v412;
                  *&v599[12] = 2049;
                  *&v599[14] = v413;
                  *&v599[22] = 1026;
                  *&v599[24] = v414;
                  *&v599[28] = 1026;
                  *&v599[30] = v415;
                  v416 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v416);
                  if (v416 != buf)
                  {
                    free(v416);
                  }
                }
              }

              v402 = 0;
              goto LABEL_741;
            }

LABEL_726:
            if (*(a1 + 96) != 1)
            {
              v402 = 37;
              v331 = v567;
              goto LABEL_741;
            }

            v331 = v567;
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v417 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v418 = *(a1 + 1136);
              v419 = v330[1].__r_.__value_.__l.__size_;
              *buf = 134349313;
              *&buf[4] = v418;
              *&buf[12] = 2049;
              *&buf[14] = v419;
              _os_log_impl(&dword_19B873000, v417, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,roadID,%{private}llu,no particles after the intersection", buf, 0x16u);
            }

            v420 = sub_19B87DD40();
            if (*(v420 + 160) > 1 || *(v420 + 164) > 1 || *(v420 + 168) > 1 || *(v420 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v421 = *(a1 + 1136);
              v422 = v330[1].__r_.__value_.__l.__size_;
              *v599 = 134349313;
              *&v599[4] = v421;
              *&v599[12] = 2049;
              *&v599[14] = v422;
              v405 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v405);
              goto LABEL_738;
            }

            goto LABEL_740;
          }

          break;
        }

        v364 = 0;
        v365 = 0;
        v366 = 0.0;
        v367 = *&v605[104];
        v368 = *&v605[112];
        v369 = v362;
        v370 = 0.0;
        while (2)
        {
          v371 = v369[333];
          v372 = *(v356 + 40);
          if (*(v363 + 48) == 1)
          {
            if (v371 <= v372)
            {
              goto LABEL_646;
            }
          }

          else if (v371 >= v372)
          {
            goto LABEL_646;
          }

          v373 = sub_19BA0C01C((a1 + 608), v367, v368, v369[141], v369[237], *(a1 + 1200));
          if (v373 <= 40.0)
          {
            v366 = v366 + v369[333];
            v581 = v366;
            v370 = v370 + v373;
            v364 = (v364 + 1);
          }

LABEL_646:
          ++v365;
          ++v369;
          if (v365 < *(v363 + 72))
          {
            continue;
          }

          break;
        }

        if (!v364)
        {
          goto LABEL_677;
        }

        ++v554;
        v581 = v366 / v364;
        v374 = v364 + v573;
        if (v364 + v573 <= v559)
        {
          v374 = v559;
          goto LABEL_676;
        }

        if (*(a1 + 96) == 1)
        {
          v375 = sub_19B8E3CB0();
          if (*v375 == 1)
          {
            v376 = *(a1 + 1136);
            sub_19B8759E8(buf, "CLMM,Time,%{public}.1lf,combinedBest,roadID,%{private}llu,incomingCount,%{public}d,outgoingCount,%{public}d");
            sub_19B98A2F4(buf);
            bzero(v375 + 56, 0x800uLL);
            if (buf[23] >= 0)
            {
              snprintf(v375 + 56, 0x800uLL, buf, v376, v330[1].__r_.__value_.__l.__size_, v573, v364);
            }

            else
            {
              snprintf(v375 + 56, 0x800uLL, *buf, v376, v330[1].__r_.__value_.__l.__size_, v573, v364);
            }

            v377 = CFAbsoluteTimeGetCurrent();
            sub_19B8759E8(v599, v375 + 56);
            sub_19B8E3D48(v375, v599, v377);
            if ((v599[23] & 0x80000000) != 0)
            {
              operator delete(*v599);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v378 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v379 = *(a1 + 1136);
            v380 = v330[1].__r_.__value_.__l.__size_;
            *buf = 134349825;
            *&buf[4] = v379;
            *&buf[12] = 2049;
            *&buf[14] = v380;
            *&buf[22] = 1026;
            *&buf[24] = v573;
            *&buf[28] = 1026;
            *&buf[30] = v364;
            _os_log_impl(&dword_19B873000, v378, OS_LOG_TYPE_DEBUG, "CLMM,Time,%{public}.1lf,combinedBest,roadID,%{private}llu,incomingCount,%{public}d,outgoingCount,%{public}d", buf, 0x22u);
          }

          v381 = sub_19B87DD40();
          if (*(v381 + 160) > 1 || *(v381 + 164) > 1 || *(v381 + 168) > 1 || *(v381 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v382 = *(a1 + 1136);
            v383 = v330[1].__r_.__value_.__l.__size_;
            *v599 = 134349825;
            *&v599[4] = v382;
            *&v599[12] = 2049;
            *&v599[14] = v383;
            *&v599[22] = 1026;
            *&v599[24] = v573;
            *&v599[28] = 1026;
            *&v599[30] = v364;
            v384 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v384);
            if (v384 != buf)
            {
              free(v384);
            }
          }
        }

        v385 = *&v605[32];
        *&v330[13].__r_.__value_.__r.__words[1] = *&v605[16];
        *&v330[14].__r_.__value_.__l.__data_ = v385;
        v386 = *&v605[64];
        *&v330[14].__r_.__value_.__r.__words[2] = *&v605[48];
        *&v330[15].__r_.__value_.__r.__words[1] = v386;
        v387 = *&v604[16];
        *&v330[10].__r_.__value_.__r.__words[2] = *v604;
        *&v330[11].__r_.__value_.__r.__words[1] = v387;
        v388 = *v605;
        *&v330[12].__r_.__value_.__l.__data_ = *&v604[32];
        *&v330[12].__r_.__value_.__r.__words[2] = v388;
        std::string::operator=(v330 + 16, &v605[80]);
        memcpy(&v330[17], &v605[104], 0x118uLL);
        HIDWORD(v330[8].__r_.__value_.__r.__words[2]) = v364;
        LODWORD(v330[9].__r_.__value_.__l.__data_) = v374;
        *&v330[10].__r_.__value_.__l.__size_ = v370 / v364;
        v330[46].__r_.__value_.__r.__words[2] = *(v356 + 40);
        v390 = *(v363 + 56);
        v389 = *(v363 + 64);
        if (v389)
        {
          atomic_fetch_add_explicit(&v389->__shared_owners_, 1uLL, memory_order_relaxed);
          v391 = *(v363 + 48);
          *&v330[9].__r_.__value_.__r.__words[1] = *v390;
          v330[10].__r_.__value_.__s.__data_[0] = v391;
          sub_19B8750F8(v389);
        }

        else
        {
          v392 = *(v363 + 48);
          *&v330[9].__r_.__value_.__r.__words[1] = *v390;
          v330[10].__r_.__value_.__s.__data_[0] = v392;
        }

        v393 = *v576;
        v394 = *(a1 + 1144);
        v395 = *(a1 + 1176);
        *&v330[30].__r_.__value_.__l.__data_ = *(a1 + 1160);
        *&v330[30].__r_.__value_.__r.__words[2] = v395;
        *&v330[28].__r_.__value_.__r.__words[2] = v393;
        *&v330[29].__r_.__value_.__r.__words[1] = v394;
        v396 = *(a1 + 1192);
        v397 = *(a1 + 1208);
        v398 = *(a1 + 1240);
        *&v330[32].__r_.__value_.__r.__words[2] = *(a1 + 1224);
        *&v330[33].__r_.__value_.__r.__words[1] = v398;
        *&v330[31].__r_.__value_.__r.__words[1] = v396;
        *&v330[32].__r_.__value_.__l.__data_ = v397;
        std::string::operator=(v330 + 34, (a1 + 1256));
        memcpy(&v330[35], __src, 0x118uLL);
        if (sub_19B9DF3F8(v564, &v330[28].__r_.__value_.__r.__words[2], (v363 + 56), *(v363 + 48), &v581, 1))
        {
LABEL_676:
          v559 = v374;
          goto LABEL_677;
        }

        v237 = (a1 + 1128);
        v331 = v567;
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v425 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v425, OS_LOG_TYPE_DEBUG, "CLMM,interpolateOnRoad returned false, determining outgoing road position", buf, 2u);
          }

          v426 = sub_19B87DD40();
          if (*(v426 + 160) > 1 || *(v426 + 164) > 1 || *(v426 + 168) > 1 || *(v426 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            *v599 = 0;
            v427 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::assessCandidates()", "CoreLocation: %s\n", v427);
            if (v427 != buf)
            {
              free(v427);
            }
          }
        }

        ++*(a1 + 104);
LABEL_694:
        v402 = 1;
LABEL_741:
        sub_19B916DC0(v589);
        if ((v605[103] & 0x80000000) != 0)
        {
          operator delete(*&v605[80]);
        }

        if (v402 != 37 && v402)
        {
          v553 = 0;
          goto LABEL_793;
        }

        v423 = v330->__r_.__value_.__l.__size_;
        if (v423)
        {
          do
          {
            v424 = v423;
            v423 = v423->__r_.__value_.__r.__words[0];
          }

          while (v423);
        }

        else
        {
          do
          {
            v424 = v330->__r_.__value_.__r.__words[2];
            _ZF = *v424 == v330;
            v330 = v424;
          }

          while (!_ZF);
        }

        v330 = v424;
        if (v424 == v331)
        {
          v553 = 1;
          goto LABEL_793;
        }

        goto LABEL_593;
      }
    }
  }

  v238 = 0.0;
  v239 = *(a1 + 864);
  do
  {
    v238 = v238 + *(v239 + 56);
    v239 += 112;
  }

  while (v239 != v235);
  if (v238 > 0.0)
  {
    *(a1 + 944) = *(a1 + 936);
    v240 = 0.0;
    do
    {
      v241 = *(v236 + 56) / v238;
      *(v236 + 64) = v241;
      v240 = v240 + v241;
      *&v241 = v240;
      *buf = LODWORD(v241);
      sub_19B973EC0((a1 + 936), buf);
      v236 += 112;
    }

    while (v236 != *(a1 + 872));
    v242 = *(a1 + 864);
    if (v236 != v242)
    {
      v243 = v242 - 112;
      v244 = 0.0;
      do
      {
        v244 = v244 + *(v243 + 176) * *(v243 + 176);
        v243 += 112;
      }

      while (v236 - 112 != v243);
      if (v244 > 0.0)
      {
        *(a1 + 1608) = 1.0 / v244;
      }
    }

    goto LABEL_454;
  }

  do
  {
    v235 -= 14;
    sub_19B988BB4(v235);
  }

  while (v235 != v236);
  *(a1 + 872) = v236;
LABEL_815:
  (*(*a1 + 40))(a1);
LABEL_816:
  v64 = 0;
LABEL_817:
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v441 = *MEMORY[0x1E69E9840];
  return v64;
}

void sub_19B9835E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_19B916DC0(&a46);
  sub_19B966FCC(&a65);
  STACK[0x3E0] = &a52;
  sub_19B98868C(&STACK[0x3E0]);
  if (a26)
  {
    sub_19B8750F8(a26);
  }

  if (a38)
  {
    sub_19B8750F8(a38);
  }

  _Unwind_Resume(a1);
}

void sub_19B98392C(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(a2 + 264) == 1 && (*(a2 + 265) & 1) == 0)
  {
    v4 = *(a2 + 80);
    if (v4 < 400.0 && v4 > 0.0)
    {
      if (*(a1 + 1649) != 1 || (*(a1 + 1650) & 1) != 0 || ((v6 = *(a1 + 4016), v7 = vabdd_f64(*(a2 + 8), v6), v6 >= 0.0) ? (v8 = v7 <= 2.0) : (v8 = 0), v8))
      {
        v9 = sub_19BA0C01C((a1 + 608), *(a2 + 56), *(a2 + 64), *(a2 + 152), *(a2 + 160), 0.0);
        v10 = v9 / *(a2 + 80);
        if (v10 > 1.5)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v11 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v12 = *(a2 + 8);
              v13 = *(a2 + 56);
              v14 = *(a2 + 64);
              v15 = *(a2 + 104);
              v16 = *(a2 + 152);
              v17 = *(a2 + 160);
              v18 = *(a2 + 168);
              v19 = *(a2 + 72);
              v20 = *(a2 + 80);
              *buf = 134351617;
              v34 = v12;
              v35 = 2053;
              v36 = v13;
              v37 = 2053;
              v38 = v14;
              v39 = 2050;
              v40 = v19;
              v41 = 2050;
              v42 = v15;
              v43 = 2053;
              v44 = v16;
              v45 = 2053;
              v46 = v17;
              v47 = 2050;
              v48 = v18;
              v49 = 2050;
              v50 = v9;
              v51 = 2050;
              v52 = v20;
              v53 = 2050;
              v54 = v10;
              _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,alt,%{public}.2lf,course,%{public}.1lf,snapLat,%{sensitive}.8lf,snapLon,%{sensitive}.8lf,snapCourse,%{public}.1lf,horizontalError,%{public}.2lf,hunc,%{public}.2lf,ratio,%{public}.2lf", buf, 0x70u);
            }

            v21 = sub_19B87DD40();
            if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v24 = *(a2 + 8);
              v25 = *(a2 + 56);
              v26 = *(a2 + 64);
              v27 = *(a2 + 72);
              v28 = *(a2 + 104);
              v29 = *(a2 + 152);
              v30 = *(a2 + 160);
              v31 = *(a2 + 168);
              v32 = *(a2 + 80);
              v22 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::modifyHorizontalUncertainty(CLMapCrumb &)", "CoreLocation: %s\n", v22);
              if (v22 != buf)
              {
                free(v22);
              }
            }
          }

          v23 = v9 * 1.05;
          if (v9 * 1.05 > 400.0)
          {
            v23 = 400.0;
          }

          *(a2 + 80) = v23;
          *(a1 + 4016) = *(a2 + 8);
        }
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B983CAC(uint64_t a1, double *a2, double a3, double a4, double a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 1432);
  v10 = fmod(v9 - a5, 360.0);
  if (v10 < 0.0)
  {
    v10 = v10 + 360.0;
  }

  if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  v11 = fabs(v10);
  if (v11 > 8.0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_45;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,no DOT, course is not aligned", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v22[0]) = 0;
    goto LABEL_43;
  }

  if (v11 > *a2)
  {
    *a2 = v11;
    v9 = *(a1 + 1432);
  }

  v21 = 0.0;
  v22[0] = 0.0;
  sub_19BA0C3BC((a1 + 608), v22, &v21, *(a1 + 1416), *(a1 + 1424), *(a1 + 1200), v9, a3, a4);
  if (fabs(v22[0]) > 5.0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_45;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMM,across track too large, not suitable DOT assistance", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_43;
    }

LABEL_48:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
LABEL_43:
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::runDirectionOfTravelHelper(double, double, double, double &)", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }

    goto LABEL_45;
  }

  if (fabs(v21) <= 45.0)
  {
    result = 1;
    goto LABEL_46;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,along track too large, not suitable DOT assistance", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }
  }

LABEL_45:
  result = 0;
LABEL_46:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B984144(uint64_t a1, double *a2)
{
  v216 = *MEMORY[0x1E69E9840];
  bzero(a2, 0x68uLL);
  v4 = *(a1 + 3720);
  if (v4 > 0.0 && vabdd_f64(*(a1 + 1136), v4 + -1.0) < 0.9)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_111;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,feedback interval check", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      goto LABEL_111;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_13;
    }

LABEL_289:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
LABEL_13:
    *v142 = 0;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
    goto LABEL_14;
  }

  if (!*(a1 + 1248) && sub_19B93C6C4() && !sub_19B93C3A8() && (sub_19B93CBFC() & 1) == 0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_111;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,frc,0", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) <= 1 && *(v11 + 164) <= 1 && *(v11 + 168) <= 1 && !*(v11 + 152))
    {
      goto LABEL_111;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_289;
  }

  if (*(a1 + 2232) != 1 || *(a1 + 1392) != 1 || (*(a1 + 2233) & 1) != 0 || (*(a1 + 1393) & 1) != 0 || *(a1 + 1136) - *(a1 + 1976) > 1.5)
  {
    goto LABEL_111;
  }

  if (*(a1 + 2688) == 1 && *(a1 + 2696) < 36.0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_111;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close to prior intersection", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) <= 1 && *(v9 + 164) <= 1 && *(v9 + 168) <= 1 && !*(v9 + 152))
    {
      goto LABEL_111;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_289;
  }

  v12 = fmod(*(a1 + 1296) - *(a1 + 1432), 360.0);
  if (v12 < 0.0)
  {
    v12 = v12 + 360.0;
  }

  if (v12 > 180.0)
  {
    v12 = v12 + -360.0;
  }

  if (fabs(v12) > 1.0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_111;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v13 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,course not aligned to full snap", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      goto LABEL_111;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_289;
  }

  v141 = -1.0;
  if (!sub_19B983CAC(a1, &v141, *(a1 + 2256), *(a1 + 2264), *(a1 + 2272)))
  {
LABEL_111:
    v27 = 0;
    goto LABEL_112;
  }

  if (*(a1 + 1490) != 1 || *(a1 + 1528) != 1)
  {
    *v142 = 0x4044000000000000;
    v131[0] = 1;
    *buf = 0x4046800000000000;
    if ((sub_19B979230(a1, v142, buf, v131) & 1) == 0)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_111;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v25 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,assessParallelRoadsWithinDist returned false,unexpected", buf, 2u);
      }

      v26 = sub_19B87DD40();
      if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
      {
        goto LABEL_111;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_306;
    }

    if (v131[0] == 1)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_111;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v15 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close to a road with similar course", buf, 2u);
      }

      v16 = sub_19B87DD40();
      if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
      {
        goto LABEL_111;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_80;
      }

LABEL_306:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
LABEL_80:
      LOWORD(v137[0]) = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v7);
LABEL_14:
      if (v7 != buf)
      {
        free(v7);
      }

      goto LABEL_111;
    }
  }

  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = 70.0;
  v20 = sub_19B9703C0(a1, 70.0);
  v21 = *(a1 + 1224);
  if (v20 >= 0.0)
  {
    if (v20 - v21 >= 18.0)
    {
      v19 = v20 + -1.0;
      if (v21 >= 5.0 || (*(a1 + 3160) & 1) == 0)
      {
        goto LABEL_156;
      }

      if (*(a1 + 96) != 1)
      {
        goto LABEL_154;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v32 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too slow when nearing intersection", buf, 2u);
      }

      v33 = sub_19B87DD40();
      if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
      {
        goto LABEL_154;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_139:
        *v142 = 0;
        v34 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }

        goto LABEL_154;
      }
    }

    else
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_154;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v30 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close to next intersection", buf, 2u);
      }

      v31 = sub_19B87DD40();
      if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
      {
        goto LABEL_154;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_139;
      }
    }

    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    goto LABEL_139;
  }

  if (v21 < 5.0)
  {
    sub_19B973CD8(v142, a1 + 1016);
    if (((*(*v18 + 88))(v18, v142, a1 + 912, *(a1 + 3168)) & 1) == 0)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_153;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v35 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
      {
        goto LABEL_153;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_151;
      }

      goto LABEL_312;
    }

    v22 = fmod(*&v146 - *(a1 + 1232), 360.0);
    if (v22 < 0.0)
    {
      v22 = v22 + 360.0;
    }

    if (v22 > 180.0)
    {
      v22 = v22 + -360.0;
    }

    if (fabs(v22) > 8.0)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_153;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v23 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,too close large road direction change", buf, 2u);
      }

      v24 = sub_19B87DD40();
      if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
      {
        goto LABEL_153;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_151:
        LOWORD(v137[0]) = 0;
        v37 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }

LABEL_153:
        sub_19B966FCC(v142);
LABEL_154:
        v27 = 0;
        goto LABEL_196;
      }

LABEL_312:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      goto LABEL_151;
    }

    sub_19B966FCC(v142);
  }

LABEL_156:
  sub_19B973CD8(v137, a1 + 1016);
  if (((*(*v18 + 88))(v18, v137, a1 + 912, -15.0) & 1) == 0)
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_194;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v42 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
    }

    v43 = sub_19B87DD40();
    if (*(v43 + 160) <= 1 && *(v43 + 164) <= 1 && *(v43 + 168) <= 1 && !*(v43 + 152))
    {
      goto LABEL_194;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_183;
    }

    goto LABEL_310;
  }

  if (sub_19B983CAC(a1, &v141, v139, v140, v138))
  {
    sub_19B8759E8(__p, "Start");
    v38 = sub_19B8D72F4(a1 + 1128, (a1 + 608), __p, a2 + 1, a2 + 2, v139, v140);
    if (v136 < 0)
    {
      operator delete(__p[0]);
    }

    if (v38)
    {
      v39 = sub_19BA0C01C((a1 + 608), *(a1 + 1048), *(a1 + 1056), v139, v140, *(a1 + 1200));
      sub_19B973CD8(v131, a1 + 1016);
      if (v19 - *(a1 + 1224) < 18.0)
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_223;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v40 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,predicted point is too close to intersection", buf, 2u);
        }

        v41 = sub_19B87DD40();
        if (*(v41 + 160) <= 1 && *(v41 + 164) <= 1 && *(v41 + 168) <= 1 && !*(v41 + 152))
        {
          goto LABEL_223;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_220;
        }

LABEL_315:
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
LABEL_220:
        *v142 = 0;
        v60 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v60);
LABEL_221:
        if (v60 != buf)
        {
          free(v60);
        }

        goto LABEL_223;
      }

      if (((*(*v18 + 88))(v18, v131, a1 + 912) & 1) == 0)
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_223;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v58 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
        }

        v59 = sub_19B87DD40();
        if (*(v59 + 160) <= 1 && *(v59 + 164) <= 1 && *(v59 + 168) <= 1 && !*(v59 + 152))
        {
          goto LABEL_223;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_220;
        }

        goto LABEL_315;
      }

      if (!sub_19B983CAC(a1, &v141, v133, v134, v132))
      {
LABEL_223:
        v27 = 0;
LABEL_224:
        sub_19B966FCC(v131);
        goto LABEL_195;
      }

      v47 = v133;
      v48 = v134;
      a2[4] = v134;
      a2[3] = v47;
      v49 = *(a1 + 1016);
      v50 = *(v49 + 16);
      v51 = sub_19B93EFE4(a1, *(v49 + 20), v50);
      a2[8] = v51;
      if ((v50 & 1) == 0)
      {
        v52 = *(a1 + 760);
        if (v52)
        {
          v53 = v51 * 0.5;
          a2[8] = v53;
          v54 = v53 * 0.5;
          v55 = -(v53 * 0.5);
          if (v52 == 1)
          {
            v56 = v55;
          }

          else
          {
            v56 = v54;
          }

          *v142 = 0;
          v126[0] = 0.0;
          if (sub_19BA0C0F8((a1 + 608), v142, v126, v47, v48, *(a1 + 1200), v132, v56))
          {
            v57 = v126[0];
            a2[3] = *v142;
            a2[4] = v57;
            v51 = a2[8];
          }

          else
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v61 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLMM,Unexpected calculateNewPosUsingAcrossTrack fail", buf, 2u);
            }

            v62 = sub_19B87DD40();
            if ((*(v62 + 160) & 0x80000000) == 0 || (*(v62 + 164) & 0x80000000) == 0 || (*(v62 + 168) & 0x80000000) == 0 || *(v62 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v130 = 0;
              v63 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v63);
              if (v63 != buf)
              {
                free(v63);
              }
            }

            v51 = a2[8] + a2[8];
            a2[8] = v51;
          }
        }
      }

      v64 = fmax(v51, 15.0);
      if (v19 <= v64 + 1.0)
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_223;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v117 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v117, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,current particle within the stopDistanceFromIntersection", buf, 2u);
        }

        v118 = sub_19B87DD40();
        if (*(v118 + 160) <= 1 && *(v118 + 164) <= 1 && *(v118 + 168) <= 1 && !*(v118 + 152))
        {
          goto LABEL_223;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v142 = 0;
        v60 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v60);
        goto LABEL_221;
      }

      sub_19B973CD8(v126, a1 + 1016);
      if (v19 - v64 >= (*(a1 + 1224) + 15.0) * 1.5)
      {
        v65 = (*(a1 + 1224) + 15.0) * 1.5;
      }

      else
      {
        v65 = v19 - v64;
      }

      if ((*(*v18 + 88))(v18, v126, a1 + 912, v65))
      {
        if (!sub_19B983CAC(a1, &v141, v128, v129, v127))
        {
          goto LABEL_300;
        }

        v66 = fmin(v39, 15.0);
        a2[5] = v66 + v65;
        v67 = v141;
        if (v141 < 3.0)
        {
          v67 = 3.0;
        }

        a2[7] = v67;
        sub_19B8759E8(v124, "Predicted");
        v68 = sub_19B8D72F4(a1 + 1128, (a1 + 608), v124, a2 + 3, a2 + 4, a2[3], a2[4]);
        if (v125 < 0)
        {
          operator delete(v124[0]);
        }

        if (v68)
        {
          a2[6] = v132;
          *a2 = *(a1 + 1136) + 1.0;
          __asm { FMOV            V1.2D, #1.0 }

          v74 = vaddq_f64(*(a1 + 1144), _Q1);
          *(a2 + 11) = v74;
          LODWORD(v74.f64[0]) = *(*v131 + 16);
          *&v74.f64[0] = vmovl_u8(*&v74.f64[0]).u64[0];
          *&v74.f64[0] = vuzp2_s16(vext_s8(*&v74.f64[0], *&v74.f64[0], 2uLL), *&v74.f64[0]);
          *(a2 + 18) = vuzp1_s8(*&v74.f64[0], *&v74.f64[0]).u32[0];
          *(a2 + 76) = *(a1 + 1248) == 0;
          v27 = 1;
          *(a2 + 20) = 1;
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v75 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v76 = *(a2 + 6);
              v77 = *(a2 + 7);
              v78 = *(a2 + 8);
              v79 = *a2;
              v80 = *(a2 + 1);
              v82 = *(a2 + 2);
              v81 = *(a2 + 3);
              v83 = *(a2 + 4);
              v84 = *(a2 + 5);
              v85 = *(a1 + 1224);
              v86 = *(a2 + 73);
              v87 = *(a2 + 74);
              v88 = *(a2 + 72);
              v89 = *(a2 + 75);
              v90 = *(a2 + 76);
              v91 = *(a2 + 12);
              v92 = *(a2 + 20);
              *buf = 134353665;
              *&buf[4] = v79;
              v180 = 2053;
              v181 = v81;
              v182 = 2053;
              v183 = v83;
              v184 = 2050;
              v185 = v76;
              v186 = 2050;
              v187 = v77;
              v188 = 2050;
              v189 = v78;
              v190 = 2053;
              v191 = v80;
              v192 = 2053;
              v193 = v82;
              v194 = 2050;
              v195 = v84;
              v196 = 2050;
              v197 = v85;
              v198 = 1026;
              v199 = v86;
              v200 = 1026;
              v201 = v87;
              v202 = 1026;
              v203 = v88;
              v204 = 1026;
              v205 = v89;
              v206 = 2050;
              v207 = v64;
              v208 = 1026;
              v209 = v90;
              v210 = 2050;
              v211 = v91;
              v212 = 2050;
              v213 = v66;
              v214 = 1026;
              v215 = v92;
              _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEBUG, "CLMM,DOT,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.1lf,courseUnc,%{public}.1lf,rw,%{public}.1lf,startLat,%{sensitive}.7lf,startLon,%{sensitive}.7lf,length,%{public}.1lf,speed,%{public}.3lf,isOneWay,%{public}d,isRailWay,%{public}d,isTunnel,%{public}d,isBridge,%{public}d,distFromIntersection,%{public}.1lf,isFreeway,%{public}d,machContinuousTime,%{public}.3lf,lookBehindDistance,%{public}.2lf,type,%{public}d", buf, 0xA8u);
            }

            v93 = sub_19B87DD40();
            if (*(v93 + 160) > 1 || *(v93 + 164) > 1 || *(v93 + 168) > 1 || *(v93 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v94 = *(a2 + 6);
              v95 = *(a2 + 7);
              v96 = *(a2 + 8);
              v97 = *a2;
              v98 = *(a2 + 1);
              v100 = *(a2 + 2);
              v99 = *(a2 + 3);
              v101 = *(a2 + 4);
              v102 = *(a2 + 5);
              v103 = *(a1 + 1224);
              v104 = *(a2 + 73);
              v105 = *(a2 + 74);
              v106 = *(a2 + 72);
              v107 = *(a2 + 75);
              v108 = *(a2 + 76);
              v109 = *(a2 + 12);
              v110 = *(a2 + 20);
              *v142 = 134353665;
              *&v142[4] = v97;
              v143 = 2053;
              v144 = v99;
              v145 = 2053;
              v146 = v101;
              v147 = 2050;
              v148 = v94;
              v149 = 2050;
              v150 = v95;
              v151 = 2050;
              v152 = v96;
              v153 = 2053;
              v154 = v98;
              v155 = 2053;
              v156 = v100;
              v157 = 2050;
              v158 = v102;
              v159 = 2050;
              v160 = v103;
              v161 = 1026;
              v162 = v104;
              v163 = 1026;
              v164 = v105;
              v165 = 1026;
              v166 = v106;
              v167 = 1026;
              v168 = v107;
              v169 = 2050;
              v170 = v64;
              v171 = 1026;
              v172 = v108;
              v173 = 2050;
              v174 = v109;
              v175 = 2050;
              v176 = v66;
              v177 = 1026;
              v178 = v110;
              v111 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v111);
              if (v111 != buf)
              {
                free(v111);
              }
            }
          }

          *(a1 + 3712) = 1;
          v112 = *a2;
          v113 = *(a2 + 2);
          *(a1 + 3736) = *(a2 + 1);
          *(a1 + 3752) = v113;
          *(a1 + 3720) = v112;
          v114 = *(a2 + 3);
          v115 = *(a2 + 4);
          v116 = *(a2 + 5);
          *(a1 + 3816) = a2[12];
          *(a1 + 3784) = v115;
          *(a1 + 3800) = v116;
          *(a1 + 3768) = v114;
          goto LABEL_301;
        }

        if (*(a1 + 96) != 1)
        {
          goto LABEL_300;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v122 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v122, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,computeSnapCoordinatesFromRawGPSCoordinates predicted returned false", buf, 2u);
        }

        v123 = sub_19B87DD40();
        if (*(v123 + 160) <= 1 && *(v123 + 164) <= 1 && *(v123 + 168) <= 1 && !*(v123 + 152))
        {
LABEL_300:
          v27 = 0;
LABEL_301:
          sub_19B966FCC(v126);
          goto LABEL_224;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v142 = 0;
        v121 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v121);
      }

      else
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_300;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v119 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v119, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,DOT particle assistance", buf, 2u);
        }

        v120 = sub_19B87DD40();
        if (*(v120 + 160) <= 1 && *(v120 + 164) <= 1 && *(v120 + 168) <= 1 && !*(v120 + 152))
        {
          goto LABEL_300;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v142 = 0;
        v121 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v121);
      }

      if (v121 != buf)
      {
        free(v121);
      }

      goto LABEL_300;
    }

    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v45 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "CLMM,no DOT,computeSnapCoordinatesFromRawGPSCoordinates lookBehind returned false", buf, 2u);
      }

      v46 = sub_19B87DD40();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
LABEL_183:
          *v142 = 0;
          v44 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getDirectionOfTravelAssistance(CLGpsAssistant_Type::DirectionOfTravelAssistance &)", "CoreLocation: %s\n", v44);
          if (v44 != buf)
          {
            free(v44);
          }

          goto LABEL_194;
        }

LABEL_310:
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        goto LABEL_183;
      }
    }
  }

LABEL_194:
  v27 = 0;
LABEL_195:
  sub_19B966FCC(v137);
LABEL_196:
  if (v17)
  {
    sub_19B8750F8(v17);
  }

LABEL_112:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}