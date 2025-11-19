void sub_452374(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D7748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4523E8(void *a1)
{
  sub_452420(a1);

  operator delete();
}

void *sub_452420(void *a1)
{
  *a1 = off_6D76A0;
  sub_450714(a1, 0);
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    v7 = *v6;
    if (v7)
    {
      v8 = 0;
      v9 = 4;
      do
      {
        if (*&v6[v9])
        {
          v10 = *&v6[v9];
          operator delete[]();
        }

        ++v8;
        v9 += 4;
      }

      while (v8 < v7);
    }

    operator delete();
  }

  v11 = sub_5544(26);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 136315394;
    *&v18[4] = "ANCInterface.cpp";
    v19 = 1024;
    v20 = 69;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d ANCInterface removed", v18, 0x12u);
  }

  *v18 = a1 + 275;
  sub_A9CA4(v18);
  v13 = a1[274];
  if (v13)
  {
    sub_1A8C0(v13);
  }

  v14 = a1[15];
  if (v14)
  {
    sub_1A8C0(v14);
  }

  v15 = a1[6];
  if (v15)
  {
    sub_1A8C0(v15);
  }

  v16 = a1[3];
  if (v16)
  {
    sub_1A8C0(v16);
  }

  return a1;
}

void sub_4525EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_4525FC(AudioObjectID *a1, OSStatus (__cdecl *a2)(AudioObjectID, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v4 = sub_5544(17);
  v5 = sub_5544(32);
  v6 = 0;
  *v12 = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&v12[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      if ((v7 & 1) == 0)
      {
        return AudioDeviceStart(*a1, a2);
      }

      goto LABEL_9;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

  if (*(v4 + 8))
  {
LABEL_9:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a1;
      *v12 = 136315650;
      *&v12[4] = "Aggregate_HAL_Common.cpp";
      v13 = 1024;
      v14 = 116;
      v15 = 1024;
      v16 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting IO on Aggregate %u", v12, 0x18u);
    }
  }

  return AudioDeviceStart(*a1, a2);
}

uint64_t sub_452748(AudioObjectID *a1, OSStatus (__cdecl *a2)(AudioObjectID, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v4 = sub_5544(17);
  v5 = sub_5544(32);
  v6 = 0;
  *v12 = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&v12[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      if ((v7 & 1) == 0)
      {
        return AudioDeviceStop(*a1, a2);
      }

      goto LABEL_9;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

  if (*(v4 + 8))
  {
LABEL_9:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a1;
      *v12 = 136315650;
      *&v12[4] = "Aggregate_HAL_Common.cpp";
      v13 = 1024;
      v14 = 130;
      v15 = 1024;
      v16 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Stopping IO on Aggregate %u", v12, 0x18u);
    }
  }

  return AudioDeviceStop(*a1, a2);
}

void sub_452894()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v0 = sub_106F10();
  v11 = (v0 > 0xFFu) & v0;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v15 = 16777473;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v18 = 0;
  v19 = 0;
  v20 = -1044381696;
  v21 = 1;
  v22 = -1044381696;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = -1056964608;
  v27 = 1;
  v28 = -1033371648;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = -1033371648;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  v36 = -1044381696;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = -1033371648;
  v41 = 1;
  v42 = 0;
  v43 = 1;
  v44 = -1033371648;
  v45 = 1;
  v46 = -1055916032;
  v47 = 1;
  v48 = -1033371648;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = -1055916032;
  v53 = 1;
  v54 = -1033371648;
  v55 = 1;
  v56 = -1055916032;
  v57 = 1;
  v58 = -1033371648;
  v59 = 1;
  v60 = 0;
  v61 = 1;
  v62 = -1055916032;
  v63 = 1;
  v64 = -1043333120;
  v65 = 1;
  v66 = 0x40000000;
  v67 = 1;
  v68 = 16777472;
  v69 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 1;
  v73 = 1103626240;
  v74 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 1094713344;
  v78 = 1;
  v79 = 1094713344;
  v80 = 1;
  v81 = 1094713344;
  v82 = 1;
  v83 = -1061158912;
  v84 = 1;
  v85 = 1107296256;
  v86 = 1;
  v87 = 1107296256;
  v88 = 1;
  v89 = 1092616192;
  v90 = 1;
  v91 = 0;
  v92 = 1;
  v93 = 0;
  v94 = 1;
  v95 = 16777472;
  v96[0] = 0;
  v96[72] = 0;
  v96[80] = 0;
  v96[120] = 0;
  v96[128] = 0;
  v96[200] = 0;
  v96[208] = 0;
  v96[248] = 0;
  LOBYTE(v97) = 0;
  v98 = 0;
  LOBYTE(v99) = 0;
  v100 = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  LOBYTE(v103) = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  LOBYTE(v107) = 0;
  v108 = 0;
  LOBYTE(v109) = 0;
  v110 = 0;
  LOBYTE(v111) = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  LOBYTE(v115) = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 1;
  v130 = 0;
  v131 = 0;
  LOBYTE(v132) = 0;
  v133 = 0;
  LOBYTE(v134) = 0;
  v135 = 0;
  LOBYTE(v136) = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  LOBYTE(v151) = 0;
  v152 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  LOBYTE(v155) = 0;
  v156 = 0;
  LOBYTE(v157) = 0;
  v158 = 0;
  LOBYTE(v159) = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  LOBYTE(__p) = 0;
  v165 = 0;
  v166.__r_.__value_.__s.__data_[0] = 0;
  v167 = 0;
  v168.__r_.__value_.__s.__data_[0] = 0;
  v169 = 0;
  v170.__r_.__value_.__s.__data_[0] = 0;
  v171 = 0;
  v172 = 256;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x200000001;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  v10 = 16777472;
  LOWORD(v13) = 257;
  HIWORD(v13) = 257;
  v15 = 16843009;
  v64 = -1047527424;
  v65 = 1;
  v73 = 1103101952;
  v74 = 1;
  v79 = 0;
  v80 = 1;
  v81 = 0;
  v82 = 1;
  v77 = 0;
  v78 = 1;
  v93 = 0;
  v94 = 1;
  v83 = -1040187392;
  v84 = 1;
  v66 = 0;
  v67 = 1;
  v95 = 16843009;
  if ((v98 & 1) == 0)
  {
    v98 = 1;
  }

  v97 = 1836282987;
  if ((v100 & 1) == 0)
  {
    v100 = 1;
  }

  v99 = 2;
  if ((v102 & 1) == 0)
  {
    v102 = 1;
  }

  v101 = 4;
  if ((v104 & 1) == 0)
  {
    v104 = 1;
  }

  v103 = 0;
  v107 = 13;
  v108 = 1;
  v109 = 13;
  v110 = 1;
  v111 = 13;
  v112 = 1;
  v115 = 3;
  v116 = 1;
  v129 = 0;
  v132 = 18;
  v133 = 1;
  v134 = 3;
  v135 = 1;
  v136 = 12;
  v137 = 1;
  v138 = 18;
  v139 = 1;
  v140 = 256;
  v151 = 18;
  v152 = 1;
  v153 = 18;
  v154 = 1;
  v155 = 10;
  v156 = 1;
  v157 = 5;
  v158 = 1;
  v159 = 1;
  v160 = 1;
  sub_30F70C(&__src, 73);
  if (v165 == 1)
  {
    if (SHIBYTE(v164) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v164 = v181;
  }

  else
  {
    __p = __src;
    v164 = v181;
    v165 = 1;
  }

  sub_1F826C(&v166, "_top_mic_general");
  sub_1F826C(&v168, "_top_mic_measurement");
  sub_1F826C(&v170, "_top_mic_hearing_accessibility");
  LOBYTE(v18) = 1;
  sub_47DB04(&v1);
  sub_1E0054(v96);
  sub_477A0(v17[0]);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

uint64_t sub_452F08(_WORD *a1)
{
  result = (*(*a1 + 160))(a1);
  if (result)
  {
    return (a1[92] & 1) == 0;
  }

  return result;
}

void sub_452F5C(uint64_t a1)
{
  *a1 = off_6D7780;
  if (*(a1 + 871) < 0)
  {
    operator delete(*(a1 + 848));
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  sub_42A4D8(a1 + 720);
  sub_24FAA4(a1);

  operator delete();
}

uint64_t sub_452FE8(uint64_t a1)
{
  *a1 = off_6D7780;
  if (*(a1 + 871) < 0)
  {
    operator delete(*(a1 + 848));
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  sub_42A4D8(a1 + 720);

  return sub_24FAA4(a1);
}

uint64_t sub_453060()
{
  if (qword_6E8528 != -1)
  {
    dispatch_once(&qword_6E8528, &stru_6BD0C8);
  }

  if (byte_6E8520 == 1)
  {
    qmemcpy(&v3, "morvtshvgsmv", 12);
    qword_6FF3B8 = 0;
    unk_6FF3C0 = 0;
    qword_6FF3B0 = 0;
    v0 = &v3 + 12;
    v1 = 3;
  }

  else
  {
    v3 = xmmword_517550;
    qword_6FF3B8 = 0;
    unk_6FF3C0 = 0;
    qword_6FF3B0 = 0;
    v0 = &v4;
    v1 = 4;
  }

  return sub_4625C(&qword_6FF3B0, &v3, v0, v1);
}

void sub_45314C(void *a1, void *a2, uint64_t a3, __int128 *a4, int a5, char a6)
{
  v12 = 0;
  while (dword_5C75B8[v12] != a5)
  {
    if (++v12 == 8)
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Port_AirPlay_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 31;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }
  }

  *v20 = a5;
  *&v20[4] = 0x6570756E70632177;
  v21 = 1;
  sub_44E44(v22, &unk_6FF368);
  v16 = sub_108CA8(a5);
  if (a5 == 1885433975)
  {
    v17 = 12;
  }

  else
  {
    v17 = 14;
  }

  v23 = v17 | v16 | v23 & 0xFFF0;
  if (sub_108CA8(a5))
  {
    v18 = 1728;
  }

  else
  {
    v18 = 1744;
  }

  v23 = v23 & 0xF80F | v18;
  if ((atomic_load_explicit(&qword_6FF3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FF3C8))
  {
    sub_453060();
    __cxa_guard_release(&qword_6FF3C8);
  }

  if (*(a3 + 23) < 0)
  {
    sub_54A0(buf, *a3, *(a3 + 8));
  }

  else
  {
    *buf = *a3;
    *&buf[16] = *(a3 + 16);
  }

  v28 = 0u;
  *__p = 0u;
  *v26 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_25160C(a1, v20, a2, &qword_6FF3B0, buf, a4, v19, a4, a6, 1);
  v24 = v19;
  sub_72C14(&v24);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v26[0]);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_477A0(v22[1]);
  *a1 = off_6D7780;
  operator new();
}

void sub_453640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_guard_abort(&qword_6FF3C8);
  sub_477A0(a17);
  _Unwind_Resume(a1);
}

void sub_4536FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = a3;
  sub_909B4(a1, a2, a3, a4, a5, a6, a7);
  if (*(a1 + 1192) != *(a1 + 1196) && a6 != 0)
  {
    v12 = 0;
    do
    {
      v13 = a7[v12];
      if (!v13)
      {
        break;
      }

      if (v13->mNumberBuffers)
      {
        v14 = 0;
        v15 = 16;
        do
        {
          v16 = *(&v13->mNumberBuffers + v15);
          __B = *(a1 + 1196);
          vDSP_vsmul(v16, 1, &__B, v16, 1, v9);
          ++v14;
          v15 += 16;
        }

        while (v14 < v13->mNumberBuffers);
      }

      ++v12;
    }

    while (v12 != a6);
  }
}

void sub_453944(unint64_t a1)
{
  sub_13ABB0(a1);

  operator delete();
}

uint64_t sub_453988(uint64_t a1, unsigned int a2)
{
  if (a2 != 1885565807)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_ContinuityScreen_Aspen.cpp";
      v14 = 1024;
      v15 = 53;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_ContinuityScreen_Aspen.cpp";
      v14 = 1024;
      v15 = 54;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

uint64_t sub_453B5C(caulk::build::detail *a1)
{
  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315394;
    *&buf[1] = "Device_ContinuityScreen_Aspen.cpp";
    v10 = 1024;
    v11 = 20;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d initializing Device_HAL_Common", buf, 0x12u);
  }

  sub_4ADCC0(a1);
  v4 = sub_5544(18);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315650;
    *&buf[1] = "Device_ContinuityScreen_Aspen.cpp";
    v10 = 1024;
    v11 = 22;
    v12 = 1024;
    v13 = 1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d initialized Device_HAL_Common: %u", buf, 0x18u);
  }

  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315394;
    *&buf[1] = "Device_ContinuityScreen_Aspen.cpp";
    v10 = 1024;
    v11 = 26;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating controls and ports", buf, 0x12u);
  }

  if ((*(*a1 + 88))(a1, 1))
  {
    sub_15DD68();
  }

  return 1;
}

void sub_45415C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_24EBDC(v41);
  std::__shared_weak_count::~__shared_weak_count(v40);
  operator delete(v43);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_1E19A0(&a38);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  _Unwind_Resume(a1);
}

void sub_454270(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D7C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4542E4(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

void sub_454320()
{
  v0 = sub_5544(41);
  if (*(v0 + 8))
  {
    v1 = *v0;
    if (*v0)
    {
      if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEBUG))
      {
        v2 = 136315394;
        v3 = "AudioIOMonitor.cpp";
        v4 = 1024;
        v5 = 342;
        _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Stopping I/O", &v2, 0x12u);
      }
    }
  }
}

void sub_4543E4()
{
  v0 = sub_5544(41);
  if (*(v0 + 8))
  {
    v1 = *v0;
    if (*v0)
    {
      if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEBUG))
      {
        v2 = 136315394;
        v3 = "AudioIOMonitor.cpp";
        v4 = 1024;
        v5 = 337;
        _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting I/O", &v2, 0x12u);
      }
    }
  }
}

void sub_4544A8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 8) != 1819304813)
  {
    return;
  }

  if (!*(a4 + 16))
  {
    v59 = sub_5544(14);
    v60 = *v59;
    if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
    {
      *v69 = 136315394;
      *&v69[4] = "AudioIOMonitor.cpp";
      *&v69[12] = 1024;
      *&v69[14] = 301;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v69, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_88A00(&v65, (*(a4 + 8) + 16), "", 302);
  if (*(a4 + 16) <= 1uLL)
  {
    v8 = *(v65 + 144);
  }

  else
  {
    v8 = 1651663971;
  }

  v9 = *(v65 + 184);
  sub_2A33C8(v69);
  v10 = std::string::append(v69, "/AudioCapture", 0xDuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v69[23] & 0x80000000) != 0)
  {
    operator delete(*v69);
  }

  v12 = std::string::append(&__dst, "/VA", 3uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v64 = v12->__r_.__value_.__r.__words[2];
  *v63 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  sub_2A33C8(v69);
  v14 = std::string::append(v69, "/AudioCapture", 0xDuLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v69[23] & 0x80000000) != 0)
  {
    operator delete(*v69);
  }

  v16 = std::string::append(&__dst, "/ANC", 4uLL);
  v62 = v16->__r_.__value_.__r.__words[0];
  v17 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
  v16->__r_.__value_.__r.__words[0] = 0;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((byte_6E8548 & 1) == 0)
  {
    if (!sub_112204(@"RingBufferDuration", @"com.apple.audio.virtualaudio", &qword_6E8530))
    {
      if (sub_2869D0(@"CaptureIOData"))
      {
        goto LABEL_56;
      }

      if (sub_2869D0(@"EnableVADTelephonyMonitor"))
      {
        goto LABEL_56;
      }

      v22 = MGGetSInt32Answer();
      if (v22 != 7 || (caulk::build::detail::get_kind(v22) & 1) == 0)
      {
        goto LABEL_56;
      }

      v23 = sub_5544(14);
      v24 = sub_468EC(3, *v23, *(v23 + 8));
      v25 = v24;
      if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 136315394;
        *&v69[4] = "RunTimeDefaults.mm";
        *&v69[12] = 1024;
        *&v69[14] = 1908;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (Internal only) No defaults key was set, ring buffer capture options set on HomePod", v69, 0x12u);
      }

      goto LABEL_51;
    }

    v18 = *sub_5544(14);
    v19 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_6E8547 >= 0)
      {
        v20 = &qword_6E8530;
      }

      else
      {
        v20 = qword_6E8530;
      }

      *v69 = 136315906;
      *&v69[4] = "RunTimeDefaults.mm";
      *&v69[12] = 1024;
      *&v69[14] = 1893;
      *&v69[18] = 2080;
      *&v69[20] = "RingBufferDuration";
      *&v69[28] = 2080;
      *&v69[30] = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %s", v69, 0x26u);
    }

    if (byte_6E8547 < 0)
    {
      if (qword_6E8538 != 4)
      {
        if (qword_6E8538 == 5)
        {
          v21 = qword_6E8530;
LABEL_46:
          v30 = *v21;
          v31 = *(v21 + 4);
          if (v30 != 1919903859 || v31 != 116)
          {
            goto LABEL_56;
          }

LABEL_51:
          v29 = 0x100000;
LABEL_55:
          qword_6E49A0 |= v29;
          goto LABEL_56;
        }

        if (qword_6E8538 == 6)
        {
          v21 = qword_6E8530;
LABEL_39:
          v26 = *v21;
          v27 = *(v21 + 2);
          if (v26 != 1836216174 || v27 != 27745)
          {
            goto LABEL_56;
          }

          v29 = 0x200000;
          goto LABEL_55;
        }

LABEL_56:
        byte_6E8548 = 1;
        goto LABEL_57;
      }

      v21 = qword_6E8530;
    }

    else
    {
      v21 = &qword_6E8530;
      if (byte_6E8547 != 4)
      {
        if (byte_6E8547 != 5)
        {
          if (byte_6E8547 != 6)
          {
            goto LABEL_56;
          }

          goto LABEL_39;
        }

        goto LABEL_46;
      }
    }

    if (*v21 == 1735290732)
    {
      v29 = 0x400000;
      goto LABEL_55;
    }

    goto LABEL_56;
  }

LABEL_57:
  v33 = qword_6E49A0;
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_70;
  }

  if (v8 > 1885629549)
  {
    if (v8 > 1886614639)
    {
      if (v8 == 1886743662)
      {
        goto LABEL_70;
      }

      v34 = 1886614640;
    }

    else
    {
      if (v8 == 1885629550)
      {
        goto LABEL_70;
      }

      v34 = 1885890164;
    }
  }

  else if (v8 > 1885418099)
  {
    if (v8 == 1885418100)
    {
      goto LABEL_70;
    }

    v34 = 1885433443;
  }

  else
  {
    if (v8 == 1751409257)
    {
      goto LABEL_70;
    }

    v34 = 1819306350;
  }

  if (v8 != v34)
  {
    v52 = sub_5544(41);
    if (*(v52 + 8))
    {
      v53 = *v52;
      if (*v52)
      {
        if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEBUG))
        {
          *v69 = 136315394;
          *&v69[4] = "AudioIOMonitor.cpp";
          *&v69[12] = 1024;
          *&v69[14] = 331;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d ignoring stream that is not client visible", v69, 0x12u);
        }
      }
    }

    goto LABEL_141;
  }

LABEL_70:
  if (*a2)
  {
    v35 = 72;
  }

  else
  {
    v35 = 48;
  }

  sub_455238(v69, v8, a2, (a1 + 96));
  v36 = a1 + v35;
  if (*(v36 + 23) < 0)
  {
    operator delete(*v36);
  }

  *v36 = *v69;
  *(v36 + 16) = *&v69[16];
  if (*(a1 + 16))
  {
    for (i = *(a1 + 32); i; i = v38[1])
    {
      while (1)
      {
        v38 = i;
        if (!sub_45604C(a2, i + 8))
        {
          break;
        }

        i = *v38;
        if (!*v38)
        {
          goto LABEL_82;
        }
      }

      if (!sub_45604C(v38 + 8, a2))
      {
        if (v64 >= 0)
        {
          v39 = v63;
        }

        else
        {
          v39 = v63[0];
        }

        sub_455238(v69, v8, a2, (a1 + 96));
        if (v69[23] >= 0)
        {
          v40 = v69;
        }

        else
        {
          v40 = *v69;
        }

        if (qword_6FF450 != -1)
        {
          dispatch_once(&qword_6FF450, &stru_6D7D20);
        }

        if (off_6FF448)
        {
          off_6FF448(v33, v39, v40, 1667327590, 0, a3);
        }

        operator new();
      }
    }

LABEL_82:
    operator new();
  }

  v41 = sub_5544(41);
  if ((*(v41 + 8) & 1) != 0 && *v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(&__dst, v8);
    sub_618A4(&__p);
  }

  v42 = sub_5544(41);
  if ((*(v42 + 8) & 1) == 0)
  {
    goto LABEL_141;
  }

  v43 = *v42;
  if (!*v42 || !os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_141;
  }

  sub_63250(v69);
  if (*a2)
  {
    v44 = "Output, ";
  }

  else
  {
    v44 = "Input, ";
  }

  if (*a2)
  {
    v45 = 8;
  }

  else
  {
    v45 = 7;
  }

  sub_22564(v69, v44, v45);
  v46 = a2[1];
  if (v46)
  {
    v47 = "Underlying, ";
  }

  else
  {
    v47 = "Client, ";
  }

  if (v46)
  {
    v48 = 12;
  }

  else
  {
    v48 = 8;
  }

  sub_22564(v69, v47, v48);
  v49 = a2[2];
  if (v49 == 1)
  {
    v50 = "pre-DSP, ";
    v51 = 9;
  }

  else
  {
    if (v49 != 2)
    {
      goto LABEL_122;
    }

    v50 = "post-DSP, ";
    v51 = 10;
  }

  sub_22564(v69, v50, v51);
LABEL_122:
  sub_22564(v69, "Index: ", 7);
  v54 = a2[3];
  std::ostream::operator<<();
  if ((v76 & 0x10) != 0)
  {
    v56 = v75;
    if (v75 < v72)
    {
      v75 = v72;
      v56 = v72;
    }

    v57 = __src;
    goto LABEL_129;
  }

  if ((v76 & 8) != 0)
  {
    v57 = *&v69[24];
    v56 = v70;
LABEL_129:
    v55 = v56 - v57;
    if (v56 - v57 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_755AC();
    }

    if (v55 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v56 - v57;
    if (v55)
    {
      memmove(&__dst, v57, v55);
    }

    goto LABEL_135;
  }

  v55 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_135:
  __dst.__r_.__value_.__s.__data_[v55] = 0;
  if (v74 < 0)
  {
    operator delete(v73);
  }

  std::locale::~locale(&v69[16]);
  std::ostream::~ostream();
  std::ios::~ios();
  p_dst = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  *v69 = 136315650;
  *&v69[4] = "AudioIOMonitor.cpp";
  *&v69[12] = 1024;
  *&v69[14] = 322;
  *&v69[18] = 2080;
  *&v69[20] = p_dst;
  _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d stream identity: %s", v69, 0x1Cu);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_141:
  if (v17 < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }

  if (v66)
  {
    sub_1A8C0(v66);
  }
}

void sub_45510C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v34 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_455238(std::string *a1, signed int a2, int *a3, const void **a4)
{
  memset(&__dst, 0, sizeof(__dst));
  if (a2 > 1886154612)
  {
    if (a2 <= 1886614624)
    {
      if (a2 > 1886545250)
      {
        if (a2 > 1886610287)
        {
          if (a2 == 1886610288)
          {
            *(&__dst.__r_.__value_.__s + 23) = 17;
            __dst.__r_.__value_.__s.__data_[16] = 101;
            v10 = "VAD_SystemCapture";
            goto LABEL_131;
          }

          if (a2 == 1886613611)
          {
            *(&__dst.__r_.__value_.__s + 23) = 18;
            LOWORD(__dst.__r_.__value_.__r.__words[2]) = 29285;
            *&__dst.__r_.__value_.__l.__data_ = *"VAD_BuiltInSpeaker";
            v20 = &__dst.__r_.__value_.__s.__data_[18];
            goto LABEL_133;
          }

          if (a2 != 1886613618)
          {
            goto LABEL_172;
          }

          v15 = "VAD_SpeakerTelemetryInput";
          goto LABEL_125;
        }

        if (a2 == 1886545251)
        {
          *(&__dst.__r_.__value_.__s + 23) = 12;
          LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1919252073;
          v9 = "VAD_Receiver";
          goto LABEL_128;
        }

        if (a2 != 1886549104)
        {
          if (a2 == 1886609775)
          {
            *(&__dst.__r_.__value_.__s + 23) = 20;
            LODWORD(__dst.__r_.__value_.__r.__words[2]) = 1953853556;
            v8 = "VAD_CarPlayAuxOutput";
            goto LABEL_101;
          }

          goto LABEL_172;
        }

        v15 = "VAD_ReceiverTapStreamInput";
LABEL_111:
        v16 = 26;
        goto LABEL_126;
      }

      if (a2 > 1886222184)
      {
        if (a2 != 1886222185)
        {
          if (a2 != 1886284905)
          {
            if (a2 != 1886287212)
            {
              goto LABEL_172;
            }

            *(&__dst.__r_.__value_.__s + 23) = 15;
            v18 = "VAD_NULL_Output";
            goto LABEL_106;
          }

          *(&__dst.__r_.__value_.__s + 23) = 14;
          v17 = "VAD_NULL_Input";
LABEL_114:
          __dst.__r_.__value_.__r.__words[0] = *v17;
          *(__dst.__r_.__value_.__r.__words + 6) = *(v17 + 6);
          v20 = (&__dst | 0xE);
          goto LABEL_133;
        }

        *(&__dst.__r_.__value_.__s + 23) = 12;
        LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1667845476;
        v9 = "VAD_WiredMic";
      }

      else
      {
        if (a2 == 1886154613)
        {
          v11 = 11;
          *(&__dst.__r_.__value_.__s + 23) = 11;
          *(__dst.__r_.__value_.__r.__words + 7) = 1953845093;
          __dst.__r_.__value_.__r.__words[0] = *"VAD_LineOut";
          goto LABEL_120;
        }

        if (a2 == 1886216809)
        {
          *(&__dst.__r_.__value_.__s + 23) = 14;
          v17 = "VAD_BuiltInMic";
          goto LABEL_114;
        }

        if (a2 != 1886216820)
        {
          goto LABEL_172;
        }

        *(&__dst.__r_.__value_.__s + 23) = 12;
        LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1953853550;
        v9 = "VAD_HFPInput";
      }
    }

    else
    {
      if (a2 <= 1886675571)
      {
        if (a2 <= 1886614639)
        {
          if (a2 == 1886614625)
          {
            *(&__dst.__r_.__value_.__s + 23) = 20;
            LODWORD(__dst.__r_.__value_.__r.__words[2]) = 1953853556;
            v8 = "VAD_CarPlayAltOutput";
            goto LABEL_101;
          }

          if (a2 == 1886614633)
          {
            *(&__dst.__r_.__value_.__s + 23) = 20;
            LODWORD(__dst.__r_.__value_.__r.__words[2]) = 1953853550;
            v8 = "VAD_CarPlayMainInput";
            goto LABEL_101;
          }

          if (a2 != 1886614639)
          {
            goto LABEL_172;
          }

          *(&__dst.__r_.__value_.__s + 23) = 21;
          v13 = "VAD_CarPlayMainOutput";
          goto LABEL_95;
        }

        if (a2 != 1886614640)
        {
          if (a2 == 1886675561)
          {
            *(&__dst.__r_.__value_.__s + 23) = 20;
            LODWORD(__dst.__r_.__value_.__r.__words[2]) = 1953853550;
            v8 = "VAD_ThunderboltInput";
            goto LABEL_101;
          }

          if (a2 != 1886675567)
          {
            goto LABEL_172;
          }

          *(&__dst.__r_.__value_.__s + 23) = 21;
          v13 = "VAD_ThunderboltOutput";
          goto LABEL_95;
        }

        v15 = "VAD_SpeakerTapStreamInput";
        goto LABEL_125;
      }

      if (a2 <= 1886740851)
      {
        if (a2 == 1886675572)
        {
          v15 = "VAD_ThunderboltTapStreamInput";
          v16 = 29;
          goto LABEL_126;
        }

        if (a2 != 1886680169)
        {
          if (a2 != 1886680175)
          {
            goto LABEL_172;
          }

          v11 = 13;
          *(&__dst.__r_.__value_.__s + 23) = 13;
          v12 = "VAD_TTYOutput";
          goto LABEL_119;
        }

        *(&__dst.__r_.__value_.__s + 23) = 12;
        LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1953853550;
        v9 = "VAD_TTYInput";
      }

      else if (a2 > 1886745448)
      {
        if (a2 != 1886745449)
        {
          if (a2 != 1886745455)
          {
            goto LABEL_172;
          }

          v11 = 13;
          *(&__dst.__r_.__value_.__s + 23) = 13;
          v12 = "VAD_USBOutput";
          goto LABEL_119;
        }

        *(&__dst.__r_.__value_.__s + 23) = 12;
        LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1953853550;
        v9 = "VAD_USBInput";
      }

      else
      {
        if (a2 == 1886740852)
        {
          *(&__dst.__r_.__value_.__s + 23) = 20;
          LODWORD(__dst.__r_.__value_.__r.__words[2]) = 1953853550;
          v8 = "VAD_USBAudioTapInput";
          goto LABEL_101;
        }

        if (a2 != 1886743662)
        {
          goto LABEL_172;
        }

        *(&__dst.__r_.__value_.__s + 23) = 12;
        LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1802398060;
        v9 = "VAD_BBUplink";
      }
    }

LABEL_128:
    __dst.__r_.__value_.__r.__words[0] = *v9;
    v20 = (&__dst | 0xC);
    goto LABEL_133;
  }

  if (a2 <= 1885629549)
  {
    if (a2 <= 1885433442)
    {
      if (a2 <= 1885418099)
      {
        if (a2 != 1651663971)
        {
          if (a2 == 1751409257)
          {
            *(&__dst.__r_.__value_.__s + 23) = 15;
            v18 = "VAD_HapticDebug";
            goto LABEL_106;
          }

          if (a2 != 1819306350)
          {
            goto LABEL_172;
          }

          *(&__dst.__r_.__value_.__s + 23) = 17;
          __dst.__r_.__value_.__s.__data_[16] = 114;
          v10 = "VAD_LPMicInjector";
          goto LABEL_131;
        }

        v11 = 13;
        *(&__dst.__r_.__value_.__s + 23) = 13;
        v12 = "VAD_Broadcast";
LABEL_119:
        __dst.__r_.__value_.__r.__words[0] = *v12;
        *(__dst.__r_.__value_.__r.__words + 5) = *(v12 + 5);
LABEL_120:
        v20 = (&__dst | v11);
        goto LABEL_133;
      }

      if (a2 != 1885418100)
      {
        if (a2 != 1885430644)
        {
          if (a2 != 1885432182)
          {
            goto LABEL_172;
          }

          *(&__dst.__r_.__value_.__s + 23) = 14;
          v17 = "VAD_ActuatorIV";
          goto LABEL_114;
        }

        *(&__dst.__r_.__value_.__s + 23) = 12;
        LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1919906913;
        v9 = "VAD_Actuator";
        goto LABEL_128;
      }

      v15 = "VAD_BluetoothA2DPTapInput";
LABEL_125:
      v16 = 25;
      goto LABEL_126;
    }

    if (a2 <= 1885564780)
    {
      if (a2 == 1885433443)
      {
        *(&__dst.__r_.__value_.__s + 23) = 4;
        LODWORD(__dst.__r_.__value_.__l.__data_) = 1129201989;
        v20 = &__dst.__r_.__value_.__s.__data_[4];
        goto LABEL_133;
      }

      if (a2 == 1885433953)
      {
        *(&__dst.__r_.__value_.__s + 23) = 16;
        v19 = "VAD_AirPlayAudio";
        goto LABEL_109;
      }

      if (a2 != 1885433971)
      {
        goto LABEL_172;
      }

      *(&__dst.__r_.__value_.__s + 23) = 17;
      __dst.__r_.__value_.__s.__data_[16] = 110;
      v10 = "VAD_AirPlayScreen";
LABEL_131:
      *&__dst.__r_.__value_.__l.__data_ = *v10;
      p_dst = &__dst;
LABEL_132:
      v20 = &p_dst->__r_.__value_.__s.__data_[17];
      goto LABEL_133;
    }

    if (a2 == 1885564781)
    {
      *(&__dst.__r_.__value_.__s + 23) = 17;
      __dst.__r_.__value_.__s.__data_[16] = 99;
      v10 = "VAD_ContinuityMic";
      goto LABEL_131;
    }

    if (a2 == 1885565044)
    {
      *(&__dst.__r_.__value_.__s + 23) = 19;
      *(&__dst.__r_.__value_.__r.__words[1] + 7) = 1953853550;
      v14 = "VAD_CarPlayTapInput";
      goto LABEL_116;
    }

    if (a2 != 1885565807)
    {
      goto LABEL_172;
    }

    v15 = "VAD_ContinuityScreenOutput";
    goto LABEL_111;
  }

  if (a2 <= 1885892673)
  {
    if (a2 <= 1885889644)
    {
      if (a2 != 1885629550)
      {
        if (a2 != 1885631344)
        {
          if (a2 != 1885888867)
          {
            goto LABEL_172;
          }

          v11 = 13;
          *(&__dst.__r_.__value_.__s + 23) = 13;
          v12 = "VAD_HACOutput";
          goto LABEL_119;
        }

        *(&__dst.__r_.__value_.__s + 23) = 15;
        v18 = "VAD_DisplayPort";
LABEL_106:
        __dst.__r_.__value_.__r.__words[0] = *v18;
        *(__dst.__r_.__value_.__r.__words + 7) = *(v18 + 7);
        v20 = (&__dst | 0xF);
        goto LABEL_133;
      }

      *(&__dst.__r_.__value_.__s + 23) = 14;
      v17 = "VAD_BBDownlink";
      goto LABEL_114;
    }

    if (a2 == 1885889645)
    {
      *(&__dst.__r_.__value_.__s + 23) = 8;
      v21 = 0x494D44485F444156;
      goto LABEL_103;
    }

    if (a2 != 1885889652)
    {
      if (a2 == 1885890164)
      {
        v15 = "VAD_BluetoothHFPTapInput";
        v16 = 24;
        goto LABEL_126;
      }

LABEL_172:
      v38 = sub_5544(14);
      v39 = *v38;
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, a2);
        v40 = v42 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "AudioIOMonitor.cpp";
        v45 = 1024;
        v46 = 230;
        v47 = 2080;
        v48 = v40;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected port type:%s in switch statement", buf, 0x1Cu);
        if (v42 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 17;
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 17;
        p_dst = &__dst;
      }

      p_dst->__r_.__value_.__s.__data_[16] = 109;
      *&p_dst->__r_.__value_.__l.__data_ = *"VAD_UnknownStream";
      goto LABEL_132;
    }

    *(&__dst.__r_.__value_.__s + 23) = 16;
    v19 = "VAD_HDMITapInput";
LABEL_109:
    *&__dst.__r_.__value_.__l.__data_ = *v19;
    v20 = &__dst.__r_.__value_.__s.__data_[16];
    goto LABEL_133;
  }

  if (a2 <= 1885894515)
  {
    if (a2 != 1885892674)
    {
      if (a2 != 1885892706)
      {
        if (a2 != 1885892727)
        {
          goto LABEL_172;
        }

        *(&__dst.__r_.__value_.__s + 23) = 19;
        *(&__dst.__r_.__value_.__r.__words[1] + 7) = 1936027247;
        v14 = "VAD_WiredHeadphones";
LABEL_116:
        *&__dst.__r_.__value_.__l.__data_ = *v14;
        v20 = &__dst.__r_.__value_.__s.__data_[19];
        goto LABEL_133;
      }

      v11 = 13;
      *(&__dst.__r_.__value_.__s + 23) = 13;
      v12 = "VAD_HFPOutput";
      goto LABEL_119;
    }

    *(&__dst.__r_.__value_.__s + 23) = 8;
    v21 = 0x504432415F444156;
LABEL_103:
    __dst.__r_.__value_.__r.__words[0] = v21;
    v20 = &__dst.__r_.__value_.__s.__data_[8];
    goto LABEL_133;
  }

  if (a2 > 1886152046)
  {
    if (a2 != 1886152047)
    {
      if (a2 == 1886152052)
      {
        v15 = "VAD_BluetoothLETapInput";
        v16 = 23;
        goto LABEL_126;
      }

      goto LABEL_172;
    }

    *(&__dst.__r_.__value_.__s + 23) = 21;
    v13 = "VAD_BluetoothLEOutput";
LABEL_95:
    *&__dst.__r_.__value_.__l.__data_ = *v13;
    *(&__dst.__r_.__value_.__r.__words[1] + 5) = *(v13 + 13);
    v20 = &__dst.__r_.__value_.__s.__data_[21];
LABEL_133:
    *v20 = 0;
    goto LABEL_134;
  }

  if (a2 != 1885894516)
  {
    if (a2 == 1886152041)
    {
      *(&__dst.__r_.__value_.__s + 23) = 20;
      LODWORD(__dst.__r_.__value_.__r.__words[2]) = 1953853550;
      v8 = "VAD_BluetoothLEInput";
LABEL_101:
      *&__dst.__r_.__value_.__l.__data_ = *v8;
      v20 = &__dst.__r_.__value_.__s.__data_[20];
      goto LABEL_133;
    }

    goto LABEL_172;
  }

  v15 = "VAD_HeadphonesWiredTapStreamInput";
  v16 = 33;
LABEL_126:
  sub_1D8C58(&__dst, v15, v16);
LABEL_134:
  v23 = a3[2];
  v24 = *a3;
  if (v23 == 1 && v24 == 1)
  {
    v25 = "_PreDSP";
    v26 = 7;
LABEL_140:
    std::string::append(&__dst, v25, v26);
    goto LABEL_141;
  }

  if (v23 == 2 && !v24)
  {
    v25 = "_PostDSP";
    v26 = 8;
    goto LABEL_140;
  }

LABEL_141:
  if (a2 == 1885433443)
  {
    v27 = a3[3];
    if (v27 > 5)
    {
      v28 = sub_5544(14);
      v29 = *v28;
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        v30 = a3[3];
        *buf = 136315650;
        *&buf[4] = "AudioIOMonitor.cpp";
        v45 = 1024;
        v46 = 267;
        v47 = 1024;
        LODWORD(v48) = v30;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected stream index:%u in switch statement", buf, 0x18u);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 18;
        v31 = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 18;
        v31 = &__dst;
      }

      strcpy(v31, "UnknownStreamIndex");
    }

    else
    {
      std::string::append(&__dst, off_6D7D40[v27], qword_5C7308[v27]);
    }
  }

  if (*(a4 + 23) >= 0)
  {
    v32 = *(a4 + 23);
  }

  else
  {
    v32 = a4[1];
  }

  v33 = buf;
  sub_B0848(buf, v32 + 1);
  if (SBYTE3(v48) < 0)
  {
    v33 = *buf;
  }

  if (v32)
  {
    if (*(a4 + 23) >= 0)
    {
      v34 = a4;
    }

    else
    {
      v34 = *a4;
    }

    memmove(v33, v34, v32);
  }

  *&v33[v32] = 95;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &__dst;
  }

  else
  {
    v35 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v37 = std::string::append(buf, v35, size);
  *a1 = *v37;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE3(v48) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_455F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_455FA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_455FD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_45600C(id a1)
{
  v1 = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (v1)
  {
    v2 = dlsym(v1, "NewAudioCapturerImpl");
    if (v2)
    {
      off_6FF448 = v2;
    }
  }
}

BOOL sub_45604C(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a1[2];
      v6 = a2[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        return a1[3] < a2[3];
      }
    }
  }

  return v2;
}

void sub_456090(uint64_t a1)
{
  sub_4560C8(a1);

  operator delete();
}

uint64_t sub_4560C8(uint64_t a1)
{
  *a1 = off_6D7CA0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = &off_6D9760;
  sub_47506C(*(a1 + 32));
  return a1;
}

void sub_456258(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 95) < 0)
  {
    operator delete(*(v14 + 72));
  }

  if (*(v14 + 71) < 0)
  {
    operator delete(*v15);
  }

  *v14 = &off_6D9760;
  sub_47506C(*(v14 + 32));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_4562CC(uint64_t a1, int a2)
{
  v3 = sub_5544(18);
  v4 = *v3;
  if (*v3)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "Device_HDMI_Aspen.cpp";
      v7 = 1024;
      v8 = 410;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d stream ID = %u", &v5, 0x18u);
    }
  }

  operator new();
}

void sub_45640C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_456454(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D7FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_4564C8(uint64_t a1, unsigned int a2)
{
  if (a2 != 1885889645 && a2 != 1885631344)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_HDMI_Aspen.cpp";
      v15 = 1024;
      v16 = 399;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_HDMI_Aspen.cpp";
        v15 = 1024;
        v16 = 400;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_4566A8(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  *(a1 + 220);
  sub_15DCEC();
}

void sub_4570A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, char a32, uint64_t a33)
{
  if (*(v33 - 177) < 0)
  {
    operator delete(*(v33 - 200));
  }

  sub_477A0(*(v33 - 152));
  _Unwind_Resume(a1);
}

void sub_4572E0(uint64_t a1)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    cf = v2;
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    sub_125D8(a1, v3);
    CFRelease(cf);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_45739C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_20B45C(&a10);
  _Unwind_Resume(a1);
}

void sub_4573D8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        LODWORD(v8[0]) = 1885889645;
        __dst[1] = 0;
        v11 = 0;
        __dst[0] = 0;
        sub_4625C(__dst, v8, v8 + 4, 1uLL);
        *v15 = *__dst;
        v16 = v11;
        strcpy(v17, "cwdv");
        v17[8] = 0;
        v18 = 3;
        v20[0] = 0;
        v20[1] = 0;
        v19 = v20;
        v21 = 44739242;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        sub_161C7C(v25, v3, v15);
        sub_B0484(&v26, v25);
        for (i = v27; i != &v26; i = i[1])
        {
          v7 = i[2];
          sub_4572E0(v8);
          if (SHIBYTE(v9) < 0)
          {
            sub_54A0(__dst, v8[0], v8[1]);
          }

          else
          {
            *__dst = *v8;
            v11 = v9;
          }

          v14 = 0u;
          v13 = 0u;
          v12 = 0u;
          (*(*v7 + 128))(v7, __dst);
          if (SHIBYTE(v14) < 0)
          {
            operator delete(*(&v13 + 1));
          }

          if (SBYTE7(v13) < 0)
          {
            operator delete(v12);
          }

          if (SHIBYTE(v11) < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(v9) < 0)
          {
            operator delete(v8[0]);
          }
        }

        sub_87980(&v26);
        sub_65310(v25);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(v22);
        }

        sub_477A0(v20[0]);
        if (v15[0])
        {
          v15[1] = v15[0];
          operator delete(v15[0]);
        }
      }

      sub_1A8C0(v5);
    }
  }
}

void sub_4575DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_65310((v27 - 96));
  sub_46934(&a26);
  sub_1A8C0(v26);
  _Unwind_Resume(a1);
}

void sub_457648(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_457658(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

unsigned __int8 *sub_457674(uint64_t a1)
{
  if (*(a1 + 888) != -1)
  {
    MGCancelNotifications();
  }

  return sub_4B08A4(a1);
}

BOOL sub_4576B8(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  if (a2->mScope == 1735159650 && a2->mSelector == 1684103987 && a2->mElement == 0)
  {
    v15 = v4;
    v16 = v5;
    v13 = 0x676C6F6265414333;
    v14 = 0;
    v9 = *&a2->mSelector;
    mElement = a2->mElement;
    v11 = a3;
    v12 = a4;
    sub_185D3C((a1 + 536), &v13, &v9);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_457744(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (a2[1] == 1735159650 && *a2 == 1684103987 && a2[2] == 0)
  {
    v15 = v4;
    v16 = v5;
    v13 = 0x676C6F6265414333;
    v14 = 0;
    v9 = *a2;
    v10 = a2[2];
    v11 = a3;
    v12 = a4;
    sub_17C118((a1 + 536), &v13, &v9);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

uint64_t sub_4577D0(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 2003332927;
LABEL_18:
    exception[2] = v15;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19 = *&a2->mSelector;
      v22 = a2->mElement;
      sub_22CE0(__p);
    }

    goto LABEL_17;
  }

  if (!a6)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v20 = *&a2->mSelector;
      v23 = a2->mElement;
      sub_22CE0(__p);
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 561211770;
    goto LABEL_18;
  }

  return sub_FDAC4(a1, a2, a3, a4, a5, a6);
}

void sub_457B6C(unsigned __int8 *a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v22 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v23 = *&a2->mSelector;
      v27 = a2->mElement;
      sub_22CE0(__p);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = &off_6DDDD0;
    v17[2] = 561211770;
  }

  if (!a6)
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v24 = *&a2->mSelector;
      v28 = a2->mElement;
      sub_22CE0(__p);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = &off_6DDDD0;
    v19[2] = 561211770;
  }

  if (a2->mSelector == 1885434482)
  {
    v13 = a1[896];
LABEL_14:
    *a6 = v13;
    return;
  }

  if (a2->mSelector == 1684103987)
  {
    v12 = *a5;
    if (v12 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v20 = sub_5544(14);
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        v25 = *&a2->mSelector;
        v29 = a2->mElement;
        sub_22CE0(__p);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      *v21 = &off_6DDDD0;
      v21[2] = 561211770;
    }

    strcpy(buf, "3CAebolg");
    buf[9] = 0;
    v32 = 0;
    LODWORD(__p[0]) = 0;
    if ((*(*a1 + 16))(a1, buf))
    {
      (*(*a1 + 40))(a1, buf, a3, a4, a5, __p);
      v13 = LODWORD(__p[0]) != 1;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_14;
  }

  sub_5C0D8(a1, a2, a3, a4, a5, a6);
}

void sub_45821C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_458240(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 2003332927;
LABEL_20:
    exception[2] = v12;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      v17 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 561211770;
    goto LABEL_20;
  }

  if (a2->mSelector == 1684103987 || a2->mSelector == 1885434482)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_458584(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1684103987 || a2->mSelector == 1885434482)
  {
    return 1;
  }

  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

void sub_4585EC(void *a1)
{
  *a1 = off_6D7D80;
  sub_13A300((a1 + 67));
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_458658(void *a1)
{
  *a1 = off_6D7D80;
  sub_13A300((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_4586B0(uint64_t a1, UInt32 a2, __int128 *a3, int a4)
{
  v7 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v7 = off_6D7D80;
  *(v7 + 536) = 0u;
  *(v7 + 552) = 0u;
  *(v7 + 568) = 0u;
  *(v7 + 584) = 0u;
  *(v7 + 600) = 0u;
  *(v7 + 616) = 0u;
  *(v7 + 632) = 0u;
  *(v7 + 648) = 0u;
  *(v7 + 664) = 0u;
  *(v7 + 680) = 0u;
  *(v7 + 696) = 0u;
  *(v7 + 712) = 0u;
  *(v7 + 728) = 0u;
  *(v7 + 744) = 0u;
  *(v7 + 760) = 0u;
  *(v7 + 776) = 0u;
  *(v7 + 792) = 0u;
  *(v7 + 808) = 0u;
  *(v7 + 824) = 0u;
  *(v7 + 840) = 0u;
  *(v7 + 856) = 0u;
  *(v7 + 872) = 0;
  sub_165D0C(v7 + 536);
  *(a1 + 880) = a4;
  *(a1 + 888) = -1;
  v12.mElement = 0;
  v13 = a2;
  *&v12.mSelector = 0x676C6F6270617272;
  v8 = sub_542F0(&v13, &v12, 0, 0);
  *(&v10 + 1) = v9;
  *&v10 = v8;
  *(a1 + 896) = ((v10 >> 32) >> 32) & (HIDWORD(v8) != 0);
  sub_4B4F1C(a1, 1, 0x6F757470u, 0);
  return a1;
}

void sub_4587B4(_Unwind_Exception *a1)
{
  sub_13A300(v2);
  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4587D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    (*(*a6 + 48))(a6, a1, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    v6 = 2003329396;
    v8 = sub_5544(25);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ANCControlInterface.cpp";
      v12 = 1024;
      v13 = 108;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Client passed NULL context.", &v10, 0x12u);
    }
  }

  return v6;
}

uint64_t sub_4589B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    (*(*a6 + 40))(a6, a1, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    v6 = 2003329396;
    v8 = sub_5544(25);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ANCControlInterface.cpp";
      v12 = 1024;
      v13 = 88;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Client passed NULL context.", &v10, 0x12u);
    }
  }

  return v6;
}

uint64_t sub_458B90(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    *a4 = (*(*a5 + 32))(a5, a1, a2, a3);
  }

  else
  {
    v5 = 2003329396;
    v7 = sub_5544(25);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "ANCControlInterface.cpp";
      v11 = 1024;
      v12 = 67;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Client passed NULL context.", &v9, 0x12u);
    }
  }

  return v5;
}

uint64_t sub_458D6C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 0;
    *a2 = (*(*a3 + 24))(a3, a1);
  }

  else
  {
    v3 = 2003329396;
    v5 = sub_5544(25);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "ANCControlInterface.cpp";
      v9 = 1024;
      v10 = 47;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Client passed NULL context.", &v7, 0x12u);
    }
  }

  return v3;
}

uint64_t sub_458F40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LOBYTE(v2) = (*(*a2 + 16))(a2, a1);
  }

  else
  {
    v3 = sub_5544(25);
    v2 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "ANCControlInterface.cpp";
        v7 = 1024;
        v8 = 28;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Client passed NULL context.", &v5, 0x12u);
      }

      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

void sub_459280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PersonalAudioListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_459518(uint64_t a1)
{
  v2 = *sub_5544(25);
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "PersonalAudioInterface.mm";
    v7 = 1024;
    v8 = 311;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PA update for personalMediaEnabledByRouteUID", &v5, 0x12u);
  }

  return [*(a1 + 32) _fire];
}

id sub_4595EC(uint64_t a1)
{
  v2 = *sub_5544(25);
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "PersonalAudioInterface.mm";
    v7 = 1024;
    v8 = 320;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PA update for personalMediaConfigurationByRouteUID", &v5, 0x12u);
  }

  return [*(a1 + 32) _fire];
}

id sub_4596C0(uint64_t a1)
{
  v2 = *sub_5544(25);
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "PersonalAudioInterface.mm";
    v7 = 1024;
    v8 = 329;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PA update for accommodationTypesByRouteUID", &v5, 0x12u);
  }

  return [*(a1 + 32) _fire];
}

id **sub_459858(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_4598A8(id *a1)
{
  v8 = a1;
  v2 = *a1;
  std::mutex::lock((*a1 + 32));
  v3 = *a1;
  v4 = *(*a1 + 1);
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *(v4 + 32);
    if (!v6)
    {
      sub_46A74();
    }

    (*(*v6 + 48))(v6);
    v4 += 40;
  }

  std::mutex::unlock((v2 + 32));
  return sub_459858(&v8);
}

uint64_t sub_459E28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  sub_52C88(a1 + 8);
  v5 = (a2 + 32);
  v6 = *(a2 + 32);
  if (v6)
  {
    if (v6 == a2 + 8)
    {
      *(a1 + 32) = v4;
      (*(**v5 + 24))(*v5, v4);
      return a1;
    }

    *(a1 + 32) = v6;
  }

  else
  {
    v5 = (a1 + 32);
  }

  *v5 = 0;
  return a1;
}

BOOL sub_45A1A0(void *a1, int a2)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v4 = +[PASettings sharedInstance];
  v5 = [v4 personalMediaEnabledForRouteUID:*a1];

  if (!v5)
  {
    return 0;
  }

  v6 = +[PASettings sharedInstance];
  v7 = ([v6 accommodationTypesForRouteUID:*a1] & a2) != 0;

  return v7;
}

void *sub_45A250()
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v0 = +[PASettings sharedInstance];
  v1 = [v0 personalMediaConfiguration];
  v2 = [v1 preset];

  return v2;
}

void *sub_45A2E0()
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v0 = +[PASettings sharedInstance];
  v1 = [v0 personalMediaConfiguration];
  v2 = [v1 presetAdjustments];
  v3 = [v2 objectForKey:PAPresetAdjustmentSpeechModeKey];

  return v3;
}

void *sub_45A398(void *a1)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = +[PASettings sharedInstance];
  v3 = [v2 personalMediaConfigurationForRouteUID:*a1];
  v4 = [v3 preset];

  return v4;
}

void *sub_45A430(void *a1)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = +[PASettings sharedInstance];
  v3 = [v2 personalMediaConfigurationForRouteUID:*a1];
  v4 = [v3 presetAdjustments];
  v5 = [v4 objectForKey:PAPresetAdjustmentSpeechModeKey];

  return v5;
}

uint64_t sub_45A4F0()
{
  sub_17DCC4();
  v0 = *sub_5544(10);
  v1 = v0;
  if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = "OFF";
    v5 = "PersonalAudioInterface.mm";
    v4 = 136315650;
    if (byte_6FF590)
    {
      v2 = "ON";
    }

    v6 = 1024;
    v7 = 60;
    v8 = 2080;
    v9 = v2;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PME keep VolumeLimit chain: %s", &v4, 0x1Cu);
  }

  return byte_6FF590;
}

void sub_45A5EC(uint64_t a1, uint64_t a2)
{
  v4 = +[PersonalAudioListener sharedInstance];
  sub_51F38(v5, a2);
  [v4 addListener:v5 withID:a1];
  sub_4C70(v5);
}

void sub_45A688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4C70(va);

  _Unwind_Resume(a1);
}

uint64_t sub_45A6B0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v41 = *(a3 + 2);
  v6 = a3[3] / *(a1 + 632);
  if (a3 && (*(a1 + 484) & 1) != 0 && *a3)
  {
    v8 = 0;
    v9 = (a3 + 4);
    do
    {
      bzero(*v9, *(v9 - 1));
      ++v8;
      v9 += 2;
    }

    while (v8 < *a3);
  }

  v40 = 1;
  (*(**(a1 + 688) + 64))(*(a1 + 688), a4, v6, &v40);
  v10 = *(a1 + 688);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ANCInterface.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 194;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mAncManager is NULL]: mAncManager is null, cannot query channel offset", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "mAncManager is null, cannot query channel offset");
  }

  v12 = *(v10 + 64);
  v13 = sub_1E8088(*(v11 + 8));
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (((v14 - *v13) & 0x8000000000000000) == 0)
    {
      v15 = v14 - *v13;
      operator new();
    }

    sub_189A00();
  }

  v16 = *(a1 + 712);
  *buf = xmmword_517510;
  if (v16)
  {
    sub_475148(v16, buf, (v12 - 8), v6);
    v17 = *(a1 + 712);
    *buf = xmmword_5174F0;
    if (v17)
    {
      sub_475148(v17, buf, (v12 - 8), v6);
      v18 = *(a1 + 712);
      *buf = xmmword_517560;
      if (v18)
      {
        sub_475148(v18, buf, (v12 - 8), v6);
        v19 = *(a1 + 712);
        *buf = xmmword_517570;
        if (v19)
        {
          sub_475148(v19, buf, (v12 - 8), v6);
        }
      }
    }
  }

  v20 = *(a1 + 704);
  if (v20)
  {
    v21 = *(a1 + 720);
    if (v21)
    {
      sub_478E94(v21, 1u, *(a1 + 696), v20);
    }

    *(a1 + 704) = 0;
  }

  v22 = *(a1 + 688);
  v23 = v22[272];
  if (v23)
  {
    v22[272] = 0;
    if (v23)
    {
      v24 = *(a1 + 720);
      if (v24)
      {
        sub_478E94(v24, 0, (v22 + 16), v23);
        v22 = *(a1 + 688);
      }
    }
  }

  if (v22[278])
  {
    v25 = v22[275];
    v27 = *v25;
    v26 = v25[1];
    if (v26 == *v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = *v25;
    }

    v30 = v25[3];
    v29 = v25[4];
    if (v29 == v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v25[3];
    }

    v22[278] = 0;
    v32 = (v26 - v27);
    if (v32)
    {
      if (v28)
      {
        v33 = *(a1 + 720);
        if (v33)
        {
          sub_478E94(v33, 2u, v28, v32);
        }
      }
    }

    v34 = (v29 - v30);
    if (v34)
    {
      if (v31)
      {
        v35 = *(a1 + 720);
        if (v35)
        {
          sub_478E94(v35, 3u, v31, v34);
        }
      }
    }
  }

  return 0;
}

void sub_45AB38(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_45AB44(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_45AB5C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 163;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45AC44()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 158;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45AD2C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 153;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45AE14()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 146;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45AEFC()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 138;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45AFE4()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 134;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B0CC()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 133;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B1B4()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 132;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B29C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 131;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B384()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 130;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B46C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 129;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B554()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 128;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B63C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice_ANCMonitor.h";
      v5 = 1024;
      v6 = 127;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "calling this function is illegal.");
}

void sub_45B740(uint64_t a1)
{
  v1 = *(a1 + 584);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      v3 = v2;
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v2);
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        sub_1A8C0(v4);
      }

      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_45B7F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_45B740(a1);
  *a2 = 0;
  a2[1] = 0;
}

BOOL sub_45B824(uint64_t a1)
{
  sub_45B740(a1);
  if (!*(a1 + 544))
  {
    return 0;
  }

  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = 0x676C6F62676F696ELL;
  inAddress.mElement = 0;
  if (AudioObjectGetPropertyData(*(a1 + 536), &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  if (outData >= 2)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "AggregateDevice_ANCMonitor.cpp";
      v14 = 1024;
      v15 = 588;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a non-BOOLean value", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The HAL returned a non-BOOLean value");
  }

  if (ioDataSize != 4)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "AggregateDevice_ANCMonitor.cpp";
        v14 = 1024;
        v15 = 589;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned an oddly sized value", buf, 0x12u);
      }
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "The HAL returned an oddly sized value");
  }

  return outData == 1;
}

uint64_t sub_45BA58(uint64_t a1, unsigned int a2)
{
  sub_45B740(a1);
  if (!*(a1 + 688))
  {
    v73 = sub_5544(14);
    v74 = *v73;
    if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 413;
      _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mANCInterface is NULL]: Invalid mANCInterface", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid mANCInterface");
  }

  v4 = sub_5544(26);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 415;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Stopping ANC", buf, 0x12u);
  }

  v6 = *(*(a1 + 688) + 16);
  if (!v6 || ((*(*v6 + 16))(v6) & 1) == 0)
  {
    result = sub_310254((&dword_0 + 3));
    if (!result)
    {
      return result;
    }
  }

  sub_363558();
  result = sub_363124(&qword_6EB2A8);
  if ((result & 0x10) != 0)
  {
    return result;
  }

  result = sub_51840(a1, a2, 0);
  if ((~result & 3) != 0)
  {
    if (a2 == 1)
    {
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else if (a2 || (result & 2) == 0)
    {
      return result;
    }

    if (!*(a1 + 544))
    {
      v76 = sub_5544(14);
      v77 = *v76;
      if (*v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 439;
        _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mHALIOProcID is NULL]: No HAL IO Proc has been set.", buf, 0x12u);
      }

      v78 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v78, "No HAL IO Proc has been set.");
    }

    sub_5659C(buf, (a1 + 576), "", 539);
    (*(**buf + 160))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    v29 = sub_5544(17);
    v30 = sub_5544(26);
    v31 = 0;
    *buf = 0x100000002;
    v32 = *(v29 + 8);
    while (1)
    {
      v33 = *&buf[v31];
      if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
      {
        break;
      }

      v31 += 4;
      if (v31 == 8)
      {
        goto LABEL_51;
      }
    }

    if ((v32 & v33) == 0)
    {
      v29 = v30;
    }

LABEL_51:
    v34 = sub_5544(32);
    v35 = 0;
    *buf = 0x100000002;
    v36 = *(v29 + 8);
    while (1)
    {
      v37 = *&buf[v35];
      if (((v36 & v37) != 0) != ((*(v34 + 8) & v37) != 0))
      {
        break;
      }

      v35 += 4;
      if (v35 == 8)
      {
        goto LABEL_57;
      }
    }

    if ((v36 & v37) == 0)
    {
      v29 = v34;
    }

LABEL_57:
    v38 = *v29;
    if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(&v116, a2);
      v39 = v116.__m_.__opaque[15];
      sig = v116.__m_.__sig;
      v41 = (*(*a1 + 120))(a1);
      *buf = 136315906;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      v42 = v39 >= 0 ? &v116 : sig;
      *&buf[12] = 1024;
      *&buf[14] = 442;
      v111 = 2080;
      v112 = v42;
      v113 = 1024;
      LODWORD(v114) = v41;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping IO type %s on AggregateDevice %u.", buf, 0x22u);
      if (v116.__m_.__opaque[15] < 0)
      {
        operator delete(v116.__m_.__sig);
      }
    }

    if (a2 == 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = *(a1 + 544);
    }

    v44 = AudioDeviceStop(*(a1 + 536), v43);
    if (v44)
    {
      v45 = sub_5544(17);
      v46 = sub_5544(26);
      v47 = 0;
      *buf = 0x100000002;
      v48 = *(v45 + 8);
      while (1)
      {
        v49 = *&buf[v47];
        if (((v48 & v49) != 0) != ((*(v46 + 8) & v49) != 0))
        {
          break;
        }

        v47 += 4;
        if (v47 == 8)
        {
          goto LABEL_74;
        }
      }

      if ((v48 & v49) == 0)
      {
        v45 = v46;
      }

LABEL_74:
      v50 = *v45;
      if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v116, v44);
        v51 = v116.__m_.__opaque[15];
        v52 = v116.__m_.__sig;
        sub_23148(&v115, (a1 + 8));
        v53 = &v116;
        if (v51 < 0)
        {
          v53 = v52;
        }

        if (v115.__cv_.__opaque[15] >= 0)
        {
          v54 = &v115;
        }

        else
        {
          v54 = v115.__cv_.__sig;
        }

        *buf = 136315906;
        *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 445;
        v111 = 2080;
        v112 = v53;
        v113 = 2080;
        v114 = v54;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", buf, 0x26u);
        if (v115.__cv_.__opaque[15] < 0)
        {
          operator delete(v115.__cv_.__sig);
        }

        if (v116.__m_.__opaque[15] < 0)
        {
          operator delete(v116.__m_.__sig);
        }
      }
    }

    v55 = sub_45CF28(a1);
    if (sub_95E00(a1))
    {
      LODWORD(v56) = 0;
LABEL_135:
      result = *(a1 + 712);
      if (result)
      {
        result = (*(*result + 32))(result);
      }

      if (v44)
      {
        v79 = sub_5544(14);
        v80 = *v79;
        if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 470;
          _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stopResult): Unable to stop IO.", buf, 0x12u);
        }

        v81 = __cxa_allocate_exception(0x10uLL);
        *v81 = &off_6DDDD0;
        v81[2] = v44;
      }

      if (v56)
      {
        v82 = sub_5544(14);
        v83 = *v82;
        if (*v82 && os_log_type_enabled(*v82, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&v116, v56);
          v84 = v116.__m_.__opaque[15] >= 0 ? &v116 : v116.__m_.__sig;
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 474;
          v111 = 2080;
          v112 = v84;
          _os_log_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (isRunningResult): Error waiting to receive kAudioDevicePropertyDeviceIsRunning property notification while stopping I/O proc: %s", buf, 0x1Cu);
          if (v116.__m_.__opaque[15] < 0)
          {
            operator delete(v116.__m_.__sig);
          }
        }

        v85 = __cxa_allocate_exception(0x10uLL);
        *v85 = &off_6DDDD0;
        v85[2] = v56;
      }

      if (v55)
      {
        v86 = sub_5544(14);
        v87 = *v86;
        if (*v86 && os_log_type_enabled(*v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 478;
          _os_log_impl(&dword_0, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (didStopResult): Error calling DidStopIO on physical devices.", buf, 0x12u);
        }

        v88 = __cxa_allocate_exception(0x10uLL);
        *v88 = &off_6DDDD0;
        v88[2] = v55;
      }

      return result;
    }

    v57 = *(a1 + 536);
    v98 = 0x676C6F62676F696ELL;
    v99 = 0;
    v58 = sub_5544(14);
    if ((*(v58 + 8) & 1) != 0 && *v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_DEBUG))
    {
      v115.__cv_.__sig = v98;
      *v115.__cv_.__opaque = v99;
      sub_22CE0(&v116);
    }

    *buf = v98;
    *&buf[8] = v99;
    if (!AudioObjectHasProperty(v57, buf))
    {
      v69 = sub_5544(14);
      LODWORD(v56) = 2003332927;
      if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
      {
        v115.__cv_.__sig = v98;
        *v115.__cv_.__opaque = v99;
        sub_22CE0(&v116);
      }

      goto LABEL_135;
    }

    memset(v116.__m_.__opaque, 0, sizeof(v116.__m_.__opaque));
    v116.__m_.__sig = 850045863;
    memset(v115.__cv_.__opaque, 0, sizeof(v115.__cv_.__opaque));
    v115.__cv_.__sig = 1018212795;
    v109 = 0;
    sub_745E8(v108, v57, &v98, &v115, &v116, &v109);
    v103 = v57;
    v104 = v98;
    v105 = v99;
    v106 = 0;
    v107 = 0;
    if (!sub_45CFF0(&v103))
    {
      v70 = sub_5544(14);
      if ((*(v70 + 8) & 1) == 0)
      {
        goto LABEL_133;
      }

      v56 = *v70;
      if (*v70)
      {
        if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "HALPropertySynchronizer.h";
          *&buf[12] = 1024;
          *&buf[14] = 322;
          v111 = 1024;
          LODWORD(v112) = v57;
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
        }

LABEL_133:
        LODWORD(v56) = 0;
      }

LABEL_134:
      sub_73C20(v108);
      std::condition_variable::~condition_variable(&v115);
      std::mutex::~mutex(&v116);
      goto LABEL_135;
    }

    v97 = v44;
    v59 = 2000;
LABEL_94:
    v60 = sub_45CFF0(&v103);
    v56 = HIDWORD(v60);
    if (HIDWORD(v60))
    {
      v44 = v97;
      goto LABEL_134;
    }

    if (!v60)
    {
      v71 = sub_5544(14);
      v44 = v97;
      if ((*(v71 + 8) & 1) == 0)
      {
        goto LABEL_133;
      }

      v56 = *v71;
      if (*v71)
      {
        if (os_log_type_enabled(*v71, OS_LOG_TYPE_DEBUG))
        {
          v100 = v98;
          v101 = v99;
          sub_22CE0(__p);
        }

        goto LABEL_133;
      }

      goto LABEL_134;
    }

    if (v59 <= 0)
    {
      v72 = sub_5544(14);
      LODWORD(v56) = 2003329396;
      v44 = v97;
      if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
      {
        v100 = v98;
        v101 = v99;
        sub_22CE0(__p);
      }

      goto LABEL_134;
    }

    v61.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v62 = sub_5544(14);
    if (*(v62 + 8))
    {
      v63 = *v62;
      if (*v62)
      {
        if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "HALPropertySynchronizer.h";
          *&buf[12] = 1024;
          *&buf[14] = 354;
          v111 = 2080;
          v112 = "with timeout";
          v113 = 1024;
          LODWORD(v114) = v57;
          _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *buf = &v116;
    buf[8] = 1;
    std::mutex::lock(&v116);
    v64.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v109 & 1) != 0 || v64.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_118:
        if (buf[8] == 1)
        {
          std::mutex::unlock(*buf);
        }

        sub_1DB4C4(__p);
        v59 += (std::chrono::system_clock::now().__d_.__rep_ - v61.__d_.__rep_) / -1000;
        goto LABEL_94;
      }

      v65.__d_.__rep_ = v64.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v65.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_117:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v64.__d_.__rep_)
      {
        goto LABEL_118;
      }
    }

    std::chrono::steady_clock::now();
    v66.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v66.__d_.__rep_)
    {
      v67 = 0;
      goto LABEL_115;
    }

    if (v66.__d_.__rep_ < 1)
    {
      if (v66.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v67 = 0x8000000000000000;
        goto LABEL_115;
      }
    }

    else if (v66.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v67 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_113;
    }

    v67 = 1000 * v66.__d_.__rep_;
LABEL_113:
    if (v67 > (v65.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v68.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_116:
      std::condition_variable::__do_timed_wait(&v115, buf, v68);
      std::chrono::steady_clock::now();
      goto LABEL_117;
    }

LABEL_115:
    v68.__d_.__rep_ = v67 + v65.__d_.__rep_;
    goto LABEL_116;
  }

  v8 = sub_5544(17);
  v9 = sub_5544(26);
  v10 = 0;
  *buf = 0x100000002;
  v11 = *(v8 + 8);
  while (1)
  {
    v12 = *&buf[v10];
    if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
    {
      break;
    }

    v10 += 4;
    if (v10 == 8)
    {
      goto LABEL_20;
    }
  }

  if ((v11 & v12) == 0)
  {
    v8 = v9;
  }

LABEL_20:
  v13 = sub_5544(32);
  v14 = 0;
  *buf = 0x100000002;
  v15 = *(v8 + 8);
  while (1)
  {
    v16 = *&buf[v14];
    if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
    {
      break;
    }

    v14 += 4;
    if (v14 == 8)
    {
      goto LABEL_26;
    }
  }

  if ((v15 & v16) == 0)
  {
    v8 = v13;
  }

LABEL_26:
  v17 = *v8;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(&v116, a2);
    v18 = v116.__m_.__opaque[15];
    v19 = v116.__m_.__sig;
    v20 = (*(*a1 + 120))(a1);
    *buf = 136315906;
    *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
    v21 = v18 >= 0 ? &v116 : v19;
    *&buf[12] = 1024;
    *&buf[14] = 428;
    v111 = 2080;
    v112 = v21;
    v113 = 1024;
    LODWORD(v114) = v20;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping IO type %s on AggregateDevice %u.", buf, 0x22u);
    if (v116.__m_.__opaque[15] < 0)
    {
      operator delete(v116.__m_.__sig);
    }
  }

  if (a2 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 544);
  }

  result = AudioDeviceStop(*(a1 + 536), v22);
  v23 = result;
  if (result)
  {
    v24 = sub_5544(17);
    v25 = sub_5544(26);
    v26 = 0;
    *buf = 0x100000002;
    v27 = *(v24 + 8);
    while (1)
    {
      v28 = *&buf[v26];
      if (((v27 & v28) != 0) != ((*(v25 + 8) & v28) != 0))
      {
        break;
      }

      v26 += 4;
      if (v26 == 8)
      {
        goto LABEL_170;
      }
    }

    if ((v27 & v28) == 0)
    {
      v24 = v25;
    }

LABEL_170:
    v89 = *v24;
    if (v89 && os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&v116, v23);
      v90 = v116.__m_.__opaque[15];
      v91 = v116.__m_.__sig;
      sub_23148(&v115, (a1 + 8));
      v92 = &v116;
      if (v90 < 0)
      {
        v92 = v91;
      }

      if (v115.__cv_.__opaque[15] >= 0)
      {
        v93 = &v115;
      }

      else
      {
        v93 = v115.__cv_.__sig;
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 431;
      v111 = 2080;
      v112 = v92;
      v113 = 2080;
      v114 = v93;
      _os_log_impl(&dword_0, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", buf, 0x26u);
      if (v115.__cv_.__opaque[15] < 0)
      {
        operator delete(v115.__cv_.__sig);
      }

      if (v116.__m_.__opaque[15] < 0)
      {
        operator delete(v116.__m_.__sig);
      }
    }

    v94 = sub_5544(14);
    v95 = *v94;
    if (*v94)
    {
      if (os_log_type_enabled(*v94, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 434;
        _os_log_impl(&dword_0, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stopResult): Unable to stop IO.", buf, 0x12u);
      }
    }

    v96 = __cxa_allocate_exception(0x10uLL);
    *v96 = &off_6DDDD0;
    v96[2] = v23;
  }

  return result;
}

void sub_45CE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v17 - 232));
  std::mutex::~mutex((v17 - 184));
  _Unwind_Resume(a1);
}

uint64_t sub_45CF28(uint64_t a1)
{
  sub_5659C(&v2, (a1 + 576), "", 560);
  (*(*v2 + 168))(v2);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return 0;
}

void sub_45CFA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v13 = v12[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x45CF90);
}

unint64_t sub_45CFF0(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_A2458(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_45D19C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_45D1C0(uint64_t a1, unsigned int a2)
{
  sub_45B740(a1);
  v4 = *(a1 + 688);
  if (!v4)
  {
    v107 = sub_5544(14);
    v108 = *v107;
    if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 333;
      _os_log_impl(&dword_0, v108, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mANCInterface is NULL]: Invalid mANCInterface", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid mANCInterface");
  }

  if (!*(a1 + 544))
  {
    v110 = sub_5544(14);
    v111 = *v110;
    if (*v110 && os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 334;
      _os_log_impl(&dword_0, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mHALIOProcID is NULL]: No HAL IO Proc has been set.", buf, 0x12u);
    }

    v112 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v112, "No HAL IO Proc has been set.");
  }

  *buf = 0;
  (*(*v4 + 104))(v4, 0x10000, buf);
  if (*buf == 0.0)
  {
    v5 = sub_5544(26);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 338;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Enabling ANC", buf, 0x12u);
    }

    sub_45E9DC(a1);
  }

  v7 = sub_5544(26);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 342;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Starting ANC", buf, 0x12u);
  }

  v9 = *(*(a1 + 688) + 16);
  if ((!v9 || ((*(*v9 + 16))(v9) & 1) == 0) && !sub_310254((&dword_0 + 3)))
  {
    return;
  }

  sub_363558();
  if ((sub_363124(&qword_6EB2A8) & 0x10) != 0)
  {
    return;
  }

  v10 = sub_51840(a1, a2, 1);
  if ((v10 & 3) != 0)
  {
    v12 = (v10 & 1) == 0 || a2 != 1;
    v13 = sub_5544(17);
    v14 = sub_5544(26);
    v15 = 0;
    if (v12)
    {
      *buf = 0x100000002;
      v16 = *(v13 + 8);
      while (1)
      {
        v17 = *&buf[v15];
        if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
        {
          break;
        }

        v15 += 4;
        if (v15 == 8)
        {
          goto LABEL_40;
        }
      }

      if ((v16 & v17) == 0)
      {
        v13 = v14;
      }

LABEL_40:
      v28 = sub_5544(32);
      v29 = 0;
      *buf = 0x100000002;
      v30 = *(v13 + 8);
      while (1)
      {
        v31 = *&buf[v29];
        if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
        {
          break;
        }

        v29 += 4;
        if (v29 == 8)
        {
          goto LABEL_52;
        }
      }

      if ((v30 & v31) == 0)
      {
        v13 = v28;
      }

LABEL_52:
      v36 = *v13;
      if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, a2);
        v37 = SHIBYTE(v142);
        v38 = __p;
        v39 = (*(*a1 + 120))(a1);
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
        v40 = v37 >= 0 ? &__p : v38;
        *&buf[12] = 1024;
        *&buf[14] = 398;
        v155 = 2080;
        v156 = v40;
        v157 = 1024;
        LODWORD(v158) = v39;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting IO type %s on AggregateDevice %u.", buf, 0x22u);
        if (SHIBYTE(v142) < 0)
        {
          operator delete(__p);
        }
      }

      v41 = AudioDeviceStart(*(a1 + 536), 0);
      if (v41)
      {
        sub_51840(a1, a2, 0);
        v42 = sub_5544(17);
        v43 = sub_5544(26);
        v44 = 0;
        *buf = 0x100000002;
        v45 = *(v42 + 8);
        while (1)
        {
          v46 = *&buf[v44];
          if (((v45 & v46) != 0) != ((*(v43 + 8) & v46) != 0))
          {
            break;
          }

          v44 += 4;
          if (v44 == 8)
          {
            goto LABEL_194;
          }
        }

        if ((v45 & v46) == 0)
        {
          v42 = v43;
        }

LABEL_194:
        v129 = *v42;
        if (v129 && os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, v41);
          v130 = SHIBYTE(v142);
          v131 = __p;
          sub_23148(&v153, (a1 + 8));
          p_p = &__p;
          if (v130 < 0)
          {
            p_p = v131;
          }

          if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v133 = &v153;
          }

          else
          {
            v133 = v153.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 403;
          v155 = 2080;
          v156 = p_p;
          v157 = 2080;
          v158 = v133;
          _os_log_impl(&dword_0, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", buf, 0x26u);
          if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v153.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v142) < 0)
          {
            operator delete(__p);
          }
        }

        v134 = sub_5544(14);
        v135 = *v134;
        if (*v134)
        {
          if (os_log_type_enabled(*v134, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 404;
            _os_log_impl(&dword_0, v135, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (startResult): Unable to start IO.", buf, 0x12u);
          }
        }

        v136 = __cxa_allocate_exception(0x10uLL);
        *v136 = &off_6DDDD0;
        v136[2] = v41;
      }
    }

    else
    {
      *buf = 0x100000002;
      v26 = *(v13 + 8);
      while (1)
      {
        v27 = *&buf[v15];
        if (((v26 & v27) != 0) != ((*(v14 + 8) & v27) != 0))
        {
          break;
        }

        v15 += 4;
        if (v15 == 8)
        {
          goto LABEL_46;
        }
      }

      if ((v26 & v27) == 0)
      {
        v13 = v14;
      }

LABEL_46:
      v32 = sub_5544(32);
      v33 = 0;
      *buf = 0x100000002;
      v34 = *(v13 + 8);
      while (1)
      {
        v35 = *&buf[v33];
        if (((v34 & v35) != 0) != ((*(v32 + 8) & v35) != 0))
        {
          break;
        }

        v33 += 4;
        if (v33 == 8)
        {
          goto LABEL_66;
        }
      }

      if ((v34 & v35) == 0)
      {
        v13 = v32;
      }

LABEL_66:
      v47 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        v48 = (*(*a1 + 120))(a1);
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 393;
        v155 = 1024;
        LODWORD(v156) = v48;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant NULL I/O proc start request on AggregateDevice %u. Returning before AudioDeviceStart() call.", buf, 0x18u);
      }
    }

    return;
  }

  sub_5659C(buf, (a1 + 576), "", 355);
  v18 = (*(**buf + 96))(*buf, 0, 0);
  v19 = (*(*v18 + 120))(v18, a1 + 608);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v19)
  {
    v113 = sub_5544(14);
    v114 = *v113;
    if (*v113 && os_log_type_enabled(*v113, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 356;
      _os_log_impl(&dword_0, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (formatResult) [error formatResult is an error]: Stream::GetCurrentFormat() returned an error.", buf, 0x12u);
    }

    v115 = __cxa_allocate_exception(0x10uLL);
    *v115 = &off_6DDDD0;
    v115[2] = v19;
  }

  v20 = *(a1 + 608);
  v21 = *(a1 + 624);
  v22 = sub_1E84C4(*(*(a1 + 688) + 32));
  v23 = *(a1 + 632);
  v24 = *(a1 + 620);
  if (v23)
  {
    if ((v24 & 0x20) != 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = *(a1 + 636);
      if (!v25)
      {
        v23 = 0;
        goto LABEL_71;
      }
    }

    v23 = 8 * (v23 / v25);
  }

LABEL_71:
  __p = v20;
  v141 = v21 / v22;
  v142 = 1;
  v143 = v21 / v22;
  v144 = 1;
  v139 = 1819304813;
  v140 = v24;
  v145 = v23;
  v146 = 0;
  v49 = *(a1 + 600);
  *buf = *(a1 + 592);
  *&buf[8] = v49;
  if (v49)
  {
    atomic_fetch_add_explicit((v49 + 16), 1uLL, memory_order_relaxed);
  }

  sub_CF934(v137, buf, 1);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  v50 = *(a1 + 712);
  *buf = xmmword_517510;
  if (v50)
  {
    (*(*v50 + 16))(v50, buf, &__p, v137);
    v51 = *(a1 + 712);
    *buf = xmmword_5174F0;
    if (v51)
    {
      (*(*v51 + 16))(v51, buf, &__p, v137);
      v52 = *(a1 + 712);
      *buf = xmmword_517560;
      if (v52)
      {
        (*(*v52 + 16))(v52, buf, &__p, v137);
        v53 = *(a1 + 712);
        *buf = xmmword_517570;
        if (v53)
        {
          (*(*v53 + 16))(v53, buf, &__p, v137);
          v54 = *(a1 + 712);
          *buf = xmmword_517580;
          if (v54)
          {
            (*(*v54 + 16))(v54, buf, &__p, v137);
            v55 = *(a1 + 712);
            *buf = xmmword_517590;
            if (v55)
            {
              (*(*v55 + 16))(v55, buf, &__p, v137);
            }
          }
        }
      }
    }
  }

  v56 = *(a1 + 720);
  if (v56 && byte_701580 == 1)
  {
    v57 = sub_5544(17);
    v58 = sub_5544(41);
    v59 = 0;
    *buf = 0x100000002;
    v60 = *(v57 + 8);
    while (1)
    {
      v61 = *&buf[v59];
      if (((v60 & v61) != 0) != ((*(v58 + 8) & v61) != 0))
      {
        break;
      }

      v59 += 4;
      if (v59 == 8)
      {
        goto LABEL_91;
      }
    }

    if ((v60 & v61) == 0)
    {
      v57 = v58;
    }

    v60 = *(v57 + 8);
LABEL_91:
    if (v60)
    {
      v62 = *v57;
      if (v62)
      {
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "AudioEANCMonitor.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 165;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring EANC data log", buf, 0x12u);
        }
      }
    }

    v63 = 0;
    v64 = v56 + 8;
    do
    {
      v65 = &(&off_6DA158)[2 * v63];
      v66 = *v65;
      buf[0] = 0;
      Current = CFAbsoluteTimeGetCurrent();
      if ((atomic_load_explicit(&qword_6FC310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC310))
      {
        qword_6FC308 = CFTimeZoneCopySystem();
        __cxa_guard_release(&qword_6FC310);
      }

      GregorianDate = CFAbsoluteTimeGetGregorianDate(Current, qword_6FC308);
      snprintf(buf, 0x40uLL, "%04d%02d%02d.%02d%02d%02d", GregorianDate.year, (*&GregorianDate.year >> 8) >> 24, (*&GregorianDate.year >> 16) >> 24, (*&GregorianDate.year >> 24) >> 24, *&GregorianDate.month >> 24, llround(GregorianDate.second));
      sub_2A33C8(&v153);
      v69 = std::string::append(&v153, "/AudioCapture", 0xDuLL);
      v70 = *&v69->__r_.__value_.__l.__data_;
      v149.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&v149.__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      v71 = std::string::append(&v149, "/ANC/", 5uLL);
      v72 = *&v71->__r_.__value_.__l.__data_;
      v150.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
      *&v150.__r_.__value_.__l.__data_ = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      v73 = strlen(buf);
      v74 = std::string::append(&v150, buf, v73);
      v75 = *&v74->__r_.__value_.__l.__data_;
      v151.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
      *&v151.__r_.__value_.__l.__data_ = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      v76 = std::string::append(&v151, "_", 1uLL);
      v77 = *&v76->__r_.__value_.__l.__data_;
      v152.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
      *&v152.__r_.__value_.__l.__data_ = v77;
      v76->__r_.__value_.__l.__size_ = 0;
      v76->__r_.__value_.__r.__words[2] = 0;
      v76->__r_.__value_.__r.__words[0] = 0;
      v78 = strlen(v66);
      v79 = std::string::append(&v152, v66, v78);
      v80 = *&v79->__r_.__value_.__l.__data_;
      v148 = v79->__r_.__value_.__r.__words[2];
      *v147 = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      if (v148 >= 0)
      {
        v81 = v147;
      }

      else
      {
        v81 = v147[0];
      }

      if (v148 >= 0)
      {
        v82 = HIBYTE(v148);
      }

      else
      {
        v82 = v147[1];
      }

      v83 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v81, v82, 0);
      *(v64 + 8 * v63) = off_701588(v83, *(v65 + 2));
      CFRelease(v83);
      if (!*(v64 + 8 * v63))
      {
        v84 = sub_5544(17);
        v85 = sub_5544(41);
        v86 = 0;
        *buf = 0x100000002;
        v87 = *(v84 + 8);
        while (1)
        {
          v88 = *&buf[v86];
          if (((v87 & v88) != 0) != ((*(v85 + 8) & v88) != 0))
          {
            break;
          }

          v86 += 4;
          if (v86 == 8)
          {
            goto LABEL_124;
          }
        }

        if ((v87 & v88) == 0)
        {
          v84 = v85;
        }

LABEL_124:
        v89 = *v84;
        if (v89 && os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AudioEANCMonitor.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 175;
          v155 = 2080;
          v156 = v66;
          _os_log_impl(&dword_0, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d Configuring EANC data log %s failed", buf, 0x1Cu);
        }
      }

      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147[0]);
      }

      ++v63;
    }

    while (v63 != 4);
  }

  sub_65310(v137);
  v90 = *(a1 + 712);
  if (v90)
  {
    (*(*v90 + 24))(v90);
  }

  sub_5659C(buf, (a1 + 576), "", 497);
  (*(**buf + 144))(*buf);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  v91 = sub_5544(17);
  v92 = sub_5544(26);
  v93 = 0;
  *buf = 0x100000002;
  v94 = *(v91 + 8);
  while (1)
  {
    v95 = *&buf[v93];
    if (((v94 & v95) != 0) != ((*(v92 + 8) & v95) != 0))
    {
      break;
    }

    v93 += 4;
    if (v93 == 8)
    {
      goto LABEL_139;
    }
  }

  if ((v94 & v95) == 0)
  {
    v91 = v92;
  }

LABEL_139:
  v96 = sub_5544(32);
  v97 = 0;
  *buf = 0x100000002;
  v98 = *(v91 + 8);
  while (1)
  {
    v99 = *&buf[v97];
    if (((v98 & v99) != 0) != ((*(v96 + 8) & v99) != 0))
    {
      break;
    }

    v97 += 4;
    if (v97 == 8)
    {
      goto LABEL_145;
    }
  }

  if ((v98 & v99) == 0)
  {
    v91 = v96;
  }

LABEL_145:
  v100 = *v91;
  if (v100 && os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(&__p, a2);
    v101 = SHIBYTE(v142);
    v102 = __p;
    v103 = (*(*a1 + 120))(a1);
    *buf = 136315906;
    *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
    v104 = v101 >= 0 ? &__p : v102;
    *&buf[12] = 1024;
    *&buf[14] = 368;
    v155 = 2080;
    v156 = v104;
    v157 = 1024;
    LODWORD(v158) = v103;
    _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting IO type %s on AggregateDevice %u.", buf, 0x22u);
    if (SHIBYTE(v142) < 0)
    {
      operator delete(__p);
    }
  }

  if (a2 == 1)
  {
    v105 = 0;
  }

  else
  {
    v105 = *(a1 + 544);
  }

  v106 = AudioDeviceStart(*(a1 + 536), v105);
  if (v106)
  {
    sub_51840(a1, a2, 0);
    v116 = sub_5544(17);
    v117 = sub_5544(26);
    v118 = 0;
    *buf = 0x100000002;
    v119 = *(v116 + 8);
    while (1)
    {
      v120 = *&buf[v118];
      if (((v119 & v120) != 0) != ((*(v117 + 8) & v120) != 0))
      {
        break;
      }

      v118 += 4;
      if (v118 == 8)
      {
        goto LABEL_177;
      }
    }

    if ((v119 & v120) == 0)
    {
      v116 = v117;
    }

LABEL_177:
    v121 = *v116;
    if (v121 && os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v106);
      v122 = SHIBYTE(v142);
      v123 = __p;
      sub_23148(&v153, (a1 + 8));
      v124 = &__p;
      if (v122 < 0)
      {
        v124 = v123;
      }

      if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v125 = &v153;
      }

      else
      {
        v125 = v153.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 376;
      v155 = 2080;
      v156 = v124;
      v157 = 2080;
      v158 = v125;
      _os_log_impl(&dword_0, v121, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", buf, 0x26u);
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v142) < 0)
      {
        operator delete(__p);
      }
    }

    sub_45CF28(a1);
    v126 = sub_5544(14);
    v127 = *v126;
    if (*v126 && os_log_type_enabled(*v126, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 378;
      _os_log_impl(&dword_0, v127, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (startResult): Unable to start IO.", buf, 0x12u);
    }

    v128 = __cxa_allocate_exception(0x10uLL);
    *v128 = &off_6DDDD0;
    v128[2] = v106;
  }

  sub_5659C(buf, (a1 + 576), "", 518);
  (*(**buf + 152))(*buf);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }
}

void sub_45E638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_guard_abort(&qword_6FC310);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void sub_45E64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v28 < 0)
  {
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void sub_45E6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  if (a2)
  {
    v23 = *(v20 - 184);
    if (v23)
    {
      sub_1A8C0(v23);
    }

    v24 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v25 = v24[2];
      __cxa_end_catch();
      v26 = a19;
      if (!v25)
      {
        JUMPOUT(0x45E04CLL);
      }
    }

    else
    {
      __cxa_end_catch();
      v26 = a19;
      v25 = 2003329396;
    }

    (*(*v19 + 272))(v19, v26);
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27)
    {
      if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *(v20 - 192) = 136315394;
        v29 = v20 - 192;
        *(v29 + 4) = "AggregateDevice_ANCMonitor.cpp";
        *(v20 - 180) = 1024;
        *(v29 + 14) = 385;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (didStartResult): Error calling DidStartIO on physical devices.", (v20 - 192), 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v25;
  }

  _Unwind_Resume(a1);
}

void sub_45E7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  if (a2)
  {
    v22 = *(v19 - 184);
    if (v22)
    {
      sub_1A8C0(v22);
    }

    v23 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v24 = v23[2];
      __cxa_end_catch();
      if (!v24)
      {
        JUMPOUT(0x45DE58);
      }
    }

    else
    {
      __cxa_end_catch();
      v24 = 2003329396;
    }

    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25)
    {
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *(v19 - 192) = 136315394;
        v27 = v19 - 192;
        *(v27 + 4) = "AggregateDevice_ANCMonitor.cpp";
        *(v19 - 180) = 1024;
        *(v27 + 14) = 365;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (willStartResult): Error calling WillStartIO on physical devices.", (v19 - 192), 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v24;
  }

  _Unwind_Resume(a1);
}

void sub_45E8F8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_45E90C(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  _Unwind_Resume(a1);
}

void sub_45E920(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_65310(&a19);
  JUMPOUT(0x45E9D4);
}

uint64_t sub_45E9DC(uint64_t a1)
{
  v2 = sub_8703C();
  if ((*(*v2 + 40))(v2) == 560488803 && (v3 = sub_8703C(), !(*(*v3 + 64))(v3)))
  {
    sub_363558();
    v4 = (sub_363124(&qword_6EB2A8) & 0x10) == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_5544(17);
  v6 = sub_5544(26);
  v7 = 0;
  *v12 = 0x100000002;
  v8 = *(v5 + 8);
  while (1)
  {
    v9 = *&v12[v7];
    if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
    {
      break;
    }

    v7 += 4;
    if (v7 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

LABEL_10:
  v10 = *v5;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315650;
    *&v12[4] = "AggregateDevice_ANCMonitor.cpp";
    v13 = 1024;
    v14 = 828;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enabling ANC: %u", v12, 0x18u);
  }

  return (*(**(a1 + 688) + 96))(*(a1 + 688), 0x10000, v4);
}

uint64_t sub_45EBD0(uint64_t a1, void *a2)
{
  v9 = 0;
  if ((sub_D46DC(a2, &v9) & 1) == 0)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "AggregateDevice_ANCMonitor.cpp";
      v12 = 1024;
      v13 = 325;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Called with an invalid sample rate description", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  v3.n128_u64[0] = v9;
  v4 = *(*a1 + 112);

  return v4(a1, v3);
}

void sub_45ED50(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_45B740(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v8 = 0;
  v9 = 0;
  v4 = *(a1 + 584);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 576);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = v7;
      v9 = v5;
      sub_1A8C0(v5);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_D3628(a2, &v8);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_45EE14(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  sub_4B0F4(*v2);
  _Unwind_Resume(a1);
}

void sub_45EE3C(uint64_t *a1)
{
  v2 = (*(*a1 + 120))(a1);
  sub_10852C(v8, 0, v2, a1[68]);
  v3 = v9;
  v4 = *(v9 + 2);
  if (v4)
  {
    bzero(v9 + 12, 4 * v4);
    sub_10834C(v8);
    v3 = v9;
  }

  free(v3);
  v5 = (*(*a1 + 120))(a1);
  sub_10852C(v8, 1, v5, a1[68]);
  v6 = v9;
  v7 = *(v9 + 2);
  if (v7)
  {
    bzero(v9 + 12, 4 * v7);
    sub_10834C(v8);
    v6 = v9;
  }

  free(v6);
}

void sub_45EF40(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[27];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v7 = a1 + 26;
  v8 = a1[26];
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_1A8C0(v5);
  v9 = std::__shared_weak_count::lock(v6);
  if (v9)
  {
    sub_1A8C0(v9);
    v10 = 0;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  v7 = (*(a1[70] + 24) + 16);
LABEL_9:
  v11 = v7[1];
  *a2 = *v7;
  a2[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  if ((v10 & 1) == 0)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_45F020(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_45B740(a1);
  outData = 0;
  inAddress.mElement = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6275696420;
  PropertyData = AudioObjectGetPropertyData(*(a1 + 536), &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v5 = sub_5544(17);
    v6 = sub_5544(26);
    v7 = 0;
    *buf = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&buf[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_8:
    v10 = *v5;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, PropertyData);
      v11 = v16 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
      v21 = 1024;
      v22 = 687;
      v23 = 2080;
      v24 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectGetPropertyData(kAudioDevicePropertyDeviceUID) returned status %s.", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v12 = outData;
  if (outData)
  {
    *buf = outData;
    v13 = CFGetTypeID(outData);
    if (v13 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    sub_F76D4(a2, v12);
    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_45F248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  __cxa_free_exception(v15);
  sub_1DB0E0(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_45F2C0(uint64_t a1)
{
  sub_45B740(a1);
  v1 = sub_5544(17);
  v2 = sub_5544(26);
  v3 = 0;
  *v8 = 0x100000002;
  v4 = *(v1 + 8);
  while (1)
  {
    v5 = *&v8[v3];
    if (((v4 & v5) != 0) != ((*(v2 + 8) & v5) != 0))
    {
      break;
    }

    v3 += 4;
    if (v3 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & v5) == 0)
  {
    v1 = v2;
  }

LABEL_7:
  v6 = *v1;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136315394;
    *&v8[4] = "AggregateDevice_ANCMonitor.cpp";
    v9 = 1024;
    v10 = 668;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting sample rate is not supported on AggregateDevice_ANCMonitor", v8, 0x12u);
  }

  return 1970171760;
}

double sub_45F3E4(uint64_t a1)
{
  v5 = 0.0;
  v4 = 8;
  v2 = 0x676C6F626E737274;
  v3 = 0;
  (*(*a1 + 40))(a1, &v2, 0, 0, &v4, &v5);
  return v5;
}

uint64_t sub_45F458(uint64_t a1)
{
  sub_45B740(a1);
  v1 = sub_5544(17);
  v2 = sub_5544(26);
  v3 = 0;
  *v8 = 0x100000002;
  v4 = *(v1 + 8);
  while (1)
  {
    v5 = *&v8[v3];
    if (((v4 & v5) != 0) != ((*(v2 + 8) & v5) != 0))
    {
      break;
    }

    v3 += 4;
    if (v3 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & v5) == 0)
  {
    v1 = v2;
  }

LABEL_7:
  v6 = *v1;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136315394;
    *&v8[4] = "AggregateDevice_ANCMonitor.cpp";
    v9 = 1024;
    v10 = 649;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d AggregateDevice_ANCMonitor does not have any Client Visible streams", v8, 0x12u);
  }

  return 0;
}

uint64_t sub_45F598(uint64_t a1, uint64_t a2)
{
  sub_45B740(a1);
  result = (*(*a1 + 16))(a1, a2);
  if ((result & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "AggregateDevice_ANCMonitor.cpp";
        v10 = 1024;
        v11 = 282;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  return result;
}

uint64_t sub_45F6DC(uint64_t a1, uint64_t a2)
{
  sub_45B740(a1);
  result = (*(*a1 + 16))(a1, a2);
  if ((result & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "AggregateDevice_ANCMonitor.cpp";
        v10 = 1024;
        v11 = 274;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  return result;
}

uint64_t sub_45F820(uint64_t a1, uint64_t a2)
{
  sub_45B740(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AggregateDevice_ANCMonitor.cpp";
      v10 = 1024;
      v11 = 265;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  return 0;
}

uint64_t sub_45F968(uint64_t a1, uint64_t a2)
{
  sub_45B740(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AggregateDevice_ANCMonitor.cpp";
      v10 = 1024;
      v11 = 256;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  return 0;
}

uint64_t sub_45FAB0(uint64_t a1, unsigned int *a2)
{
  sub_45B740(a1);
  v3 = sub_5544(17);
  v4 = sub_5544(26);
  v5 = 0;
  *buf = 0x100000002;
  v6 = *(v3 + 8);
  while (1)
  {
    v7 = *&buf[v5];
    if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
    {
      break;
    }

    v5 += 4;
    if (v5 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v6 & v7) == 0)
  {
    v3 = v4;
  }

LABEL_7:
  v8 = *v3;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_22170(__p, *a2);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "AggregateDevice_ANCMonitor.cpp";
    v14 = 1024;
    v15 = 247;
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d HasProperty() for selector '%s' not supported by AggregateDevice_ANCMonitor.", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_45FC10(unint64_t a1)
{
  sub_45FC48(a1);

  operator delete();
}

uint64_t sub_45FC48(unint64_t a1)
{
  *a1 = off_6D8038;
  sub_45B740(a1);
  v2 = sub_8703C();
  (*(*v2 + 56))(v2, sub_45FE0C);
  v3 = sub_8703C();
  (*(*v3 + 80))(v3, sub_45FE0C);
  (*(**(a1 + 688) + 96))(*(a1 + 688), 0x10000, 0.0);
  sub_140AD4(*(a1 + 536), *(a1 + 544));
  v4 = *(a1 + 688);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_140C30(*(a1 + 536));
  v5 = *(a1 + 696);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 720);
  *(a1 + 720) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 712);
  *(a1 + 712) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 600);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 584);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_128368((a1 + 552));

  return sub_13C180(a1);
}

uint64_t sub_45FE14(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  return a1;
}

uint64_t sub_45FE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_ANCMonitor.cpp";
        v30 = 1024;
        v31 = 713;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inNow is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a3)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_ANCMonitor.cpp";
        v30 = 1024;
        v31 = 714;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inInputData is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a4)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_ANCMonitor.cpp";
        v30 = 1024;
        v31 = 715;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inInputTime is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a5)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21)
    {
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_ANCMonitor.cpp";
        v30 = 1024;
        v31 = 716;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: outOutputData is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a6)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_ANCMonitor.cpp";
        v30 = 1024;
        v31 = 717;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inOutputTime is NULL.", buf, 0x12u);
      }
    }
  }

  if (a7)
  {
    v27 = a7;
    *(a7 + 448) = pthread_self();
    *(a7 + 440) = 1;
    (*(*a7 + 600))(a7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "AggregateDevice_ANCMonitor.cpp";
      v30 = 1024;
      v31 = 718;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inClientData is NULL.", buf, 0x12u);
    }

    sub_59898(&v27, 0);
  }

  v13 = v27;
  if (v27)
  {
    *(v27 + 440) = 0;
    *(v13 + 448) = 0;
  }

  return 0;
}

void sub_460588(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_4F08C();
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x38uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v4;
    *(v5 + 32) = v3;
    *(v5 + 40) = a2;
    *v5 = off_6D8370;
    *(v5 + 8) = 0;
    caulk::concurrent::messenger::enqueue(&unk_70A4E0, v5);
    if (v3)
    {

      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_46064C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

caulk::concurrent::message **sub_46066C(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_4606B4(a1);
  return sub_460728(&v2);
}

void sub_4606A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_460728(va);
  _Unwind_Resume(a1);
}

void sub_4606B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 24);
      if (v5)
      {
        sub_460870(v5);
      }

      sub_1A8C0(v4);
    }
  }
}

caulk::concurrent::message **sub_460728(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6D8398;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x38uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4607A4(caulk::concurrent::message *this)
{
  *this = off_6D8398;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_460814(caulk::concurrent::message *this)
{
  *this = off_6D8398;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t (***sub_460870(uint64_t a1))(void)
{
  notify_cancel(**(a1 + 24));
  result = *(a1 + 32);
  if (result)
  {
    v3 = **result;

    return v3();
  }

  return result;
}

void sub_4608E4(caulk::concurrent::message *this)
{
  *this = off_6D8398;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_460954(caulk::concurrent::message *this)
{
  *this = off_6D8398;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t (***sub_4609B0(uint64_t a1))(void)
{
  v2 = *(a1 + 24);
  v3 = (v2 + 8);
  if (*(v2 + 31) < 0)
  {
    v3 = *v3;
  }

  v4 = *(v2 + 64);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_2903D0;
  handler[3] = &unk_6BD1E0;
  handler[4] = v2;
  notify_register_dispatch(v3, v2, v4, handler);

  return sub_460A54(a1);
}

uint64_t (***sub_460A54(uint64_t a1))(void)
{
  v2 = *(a1 + 24);
  state64 = 0;
  if (notify_get_state(*v2, &state64))
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "StandardUtilities.cpp";
      v11 = 1024;
      v12 = 1574;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): notify_get_state() failed.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "notify_get_state() failed.");
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = **result;

    return v4();
  }

  return result;
}

void sub_460BF0(void *a1)
{
  sub_460C28(a1);

  operator delete();
}

void *sub_460C28(void *a1)
{
  sub_460870(a1);
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  sub_460C98(a1 + 3);
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t *sub_460C98(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    notify_cancel(*v1);

    sub_36D42C(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_460D10(uint64_t a1)
{
  sub_460D48(a1);

  operator delete();
}

uint64_t sub_460D48(uint64_t a1)
{
  *a1 = off_6D8300;
  sub_460DB0(a1, 0);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  return a1;
}

void sub_460DB0(uint64_t a1, int a2)
{
  v4 = *sub_5544(18);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Acquiring";
    if (!a2)
    {
      v6 = "Releasing";
    }

    v7 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v7 = *v7;
    }

    v9 = 136315906;
    v10 = "ReceiverProximityIODelegate.mm";
    v11 = 1024;
    v12 = 31;
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s MMAssertion %s", &v9, 0x26u);
  }

  v8 = *(a1 + 8);
  if (a2)
  {
    sub_1CC3A4(v8);
  }

  else
  {
    sub_1CC3E0(v8);
  }
}

uint64_t sub_460EEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6D8328;
  a2[1] = v2;
  return result;
}

void sub_460F8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D83C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_461000(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4612B4(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_461450(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_461544(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_461608(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_4616CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

BOOL sub_461A64(uint64_t *a1)
{
  v2 = sub_461C10(a1[1], a1[2], 1);
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = *(v2 + 96);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = *(v2 + 88);
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v5 = std::__shared_weak_count::lock(v3);
  v6 = v5;
  if (!v5)
  {
LABEL_8:
    v4 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_1A8C0(v5);
  v7 = std::__shared_weak_count::lock(v6);
  if (!v7)
  {
    v4 = 0;
  }

LABEL_9:
  v8 = a1[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0)
  {
    v10 = v4 == 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = v4 == a1[3];
  sub_1A8C0(v9);
  if (v7)
  {
LABEL_14:
    sub_1A8C0(v7);
  }

LABEL_15:
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    if (v10)
    {
      return 1;
    }
  }

  else if (v10)
  {
    return 1;
  }

LABEL_21:
  v12 = sub_5544(2);
  v13 = *v12;
  if (*v12)
  {
    result = os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v14 = 136315394;
    v15 = "RouteToPartnerHandler.cpp";
    v16 = 1024;
    v17 = 126;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Something went wrong ! Not routed to partner port", &v14, 0x12u);
  }

  return 0;
}

uint64_t sub_461C10(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "RouteToPartnerHandler.cpp";
      v12 = 1024;
      v13 = 18;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Invalid VAD argument", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid VAD argument");
  }

  v4 = sub_9F278(a1, a3);
  if (!v4[2])
  {
    return 0;
  }

  v5 = *(*v4 + 28);

  return sub_9E618(a2, v5);
}

void sub_461D84(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_461C10(a1[1], a1[2], 1);
  if (!v4)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RouteToPartnerHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - No output port found for default vad", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Error routing to partner port - No output port found for default vad");
  }

  v5 = v4;
  v6 = *(v4 + 96);
  __p[0] = *(v4 + 88);
  __p[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_25704(buf, __p, "", 107);
  sub_11319C(&v27, *buf);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v28;
  if (v28 != &v27)
  {
    while (1)
    {
      sub_88A00(buf, v7 + 2, "", 109);
      v8 = *(*buf + 184);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if ((v8 & 1) == 0)
      {
        break;
      }

      v7 = v7[1];
      if (v7 == &v27)
      {
        goto LABEL_13;
      }
    }
  }

  if (v7 == &v27)
  {
LABEL_13:
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(v5 + 96);
      v24[0] = *(v5 + 88);
      v24[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_11AB44(__p, v24);
      if (v26 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "RouteToPartnerHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 113;
      v30 = 2080;
      v31 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - No valid partner port available for port %s", buf, 0x1Cu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Error routing to partner port - No valid partner port available for port %s");
  }

  v15 = v7[2];
  v14 = v7[3];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v16 = a1[4];
  a1[3] = v15;
  a1[4] = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(v5 + 96);
  if (v17 && (v18 = *(v5 + 88), atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed), (v19 = std::__shared_weak_count::lock(v17)) != 0))
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a2 = v18;
    a2[1] = v19;
    sub_1A8C0(v19);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  v20 = a1[4];
  a2[2] = a1[3];
  a2[3] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_65310(&v27);
}

void sub_462174(void *a1)
{
  *a1 = off_6D8928;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_4621E0(void *a1)
{
  *a1 = off_6D8928;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

BOOL sub_46222C(uint64_t *a1)
{
  v2 = sub_461C10(a1[1], a1[2], 0);
  v3 = v2;
  if (v2 && v2 != a1[3])
  {
    return 1;
  }

  v5 = sub_5544(2);
  v6 = *v5;
  if (*v5)
  {
    result = os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v7 = a1[3];
    v8 = 136315906;
    v9 = "RouteToPartnerHandler.cpp";
    v10 = 1024;
    v11 = 80;
    v12 = 2048;
    v13 = v3;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Something went wrong ! Input ports didn't change (current input port: %p, previous input port: %p)", &v8, 0x26u);
  }

  return 0;
}

void sub_46233C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_461C10(a1[1], a1[2], 1);
  if (!v4)
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RouteToPartnerHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - No output port found for default vad", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Error routing to partner port - No output port found for default vad");
  }

  v5 = v4;
  v6 = *(v4 + 96);
  __p[0] = *(v4 + 88);
  __p[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_25704(buf, __p, "", 57);
  sub_250A70(&v48, *buf);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v49;
  if (v49 != &v48)
  {
    while (1)
    {
      sub_88A00(buf, v7 + 2, "", 59);
      v8 = *(*buf + 184);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v8)
      {
        break;
      }

      v7 = v7[1];
      if (v7 == &v48)
      {
        goto LABEL_13;
      }
    }
  }

  if (v7 == &v48)
  {
LABEL_13:
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(v5 + 88);
      v12 = *(v5 + 96);
      v45[0] = v11;
      v45[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_11AB44(__p, v45);
      if (v47 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "RouteToPartnerHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 62;
      v51 = 2080;
      v52 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - No valid partner port available for port %s", buf, 0x1Cu);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Error routing to partner port - No valid partner port available for port %s");
    goto LABEL_25;
  }

  v15 = sub_461C10(a1[1], a1[2], 0);
  a1[3] = v15;
  if (!v15)
  {
    v43 = sub_5544(14);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RouteToPartnerHandler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 65;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - No valid input port in route", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Error routing to partner port - No valid input port in route");
LABEL_25:
  }

  v17 = v7[2];
  v16 = v7[3];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = a1[3];
  }

  v18 = *(v15 + 96);
  if (v18)
  {
    v19 = *(v15 + 88);
    v20 = 1;
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v21 = std::__shared_weak_count::lock(v18);
    v22 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v21);
      v23 = std::__shared_weak_count::lock(v22);
      v20 = 0;
      if (!v23)
      {
        v19 = 0;
      }

      if (!v16)
      {
LABEL_42:
        v25 = v19 == 0;
        if (!v23)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v19 = 0;
      v23 = 0;
      if (!v16)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    v22 = 0;
    v19 = 0;
    v23 = 0;
    v20 = 1;
    if (!v16)
    {
      goto LABEL_42;
    }
  }

  v24 = std::__shared_weak_count::lock(v16);
  if (!v24)
  {
    goto LABEL_42;
  }

  v25 = v19 == v17;
  sub_1A8C0(v24);
  if (v23)
  {
LABEL_43:
    sub_1A8C0(v23);
  }

LABEL_44:
  v26 = 0;
  if (v25)
  {
    v27 = v17;
  }

  else
  {
    v27 = 0;
  }

  if (v16 && v25)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v26 = v16;
    v27 = v17;
  }

  if ((v20 & 1) == 0)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v28 = a1[3];
  v29 = *(v28 + 96);
  if (v29)
  {
    v30 = *(v28 + 88);
    v31 = 1;
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v32 = std::__shared_weak_count::lock(v29);
    v33 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v32);
      v34 = std::__shared_weak_count::lock(v33);
      v31 = 0;
      if (!v34)
      {
        v30 = 0;
      }

      if (!v16)
      {
LABEL_66:
        v36 = v30 == 0;
        if (!v34)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v30 = 0;
      v34 = 0;
      if (!v16)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v33 = 0;
    v30 = 0;
    v34 = 0;
    v31 = 1;
    if (!v16)
    {
      goto LABEL_66;
    }
  }

  v35 = std::__shared_weak_count::lock(v16);
  if (!v35)
  {
    goto LABEL_66;
  }

  v36 = v30 == v17;
  sub_1A8C0(v35);
  if (v34)
  {
LABEL_67:
    sub_1A8C0(v34);
  }

LABEL_68:
  if (v16)
  {
    v37 = v36;
  }

  else
  {
    v37 = 1;
  }

  if (v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v17;
  }

  if ((v37 & 1) == 0)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v39 = v16;
    if (v31)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v39 = 0;
  v17 = v38;
  if ((v31 & 1) == 0)
  {
LABEL_78:
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_79:
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  *a2 = v27;
  a2[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  a2[2] = v17;
  a2[3] = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_65310(&v48);
}

void sub_462924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  sub_65310(&a14);
  _Unwind_Resume(a1);
}

void sub_4629C4(uint64_t a1)
{
  sub_4629FC(a1);

  operator delete();
}

uint64_t sub_4629FC(uint64_t a1)
{
  *a1 = off_6D8958;
  v2 = *(qword_7000B0 + 72);
  v3 = qword_7000B0 + 80;
  if (v2 != (qword_7000B0 + 80))
  {
    do
    {
      (*(**(a1 + 24) + 40))(*(a1 + 24), v2[5]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    dispatch_release(v7);
  }

  v12 = (a1 + 144);
  sub_11C50(&v12);
  v12 = (a1 + 120);
  sub_11C50(&v12);
  v8 = *(a1 + 96);
  if (v8)
  {
    *(a1 + 104) = v8;
    operator delete(v8);
  }

  sub_477A0(*(a1 + 80));
  sub_2D0E3C(a1 + 40);
  v9 = *(a1 + 32);
  if (v9)
  {
    sub_1A8C0(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return a1;
}

uint64_t sub_462B34(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_462BB4()
{
  v0 = sub_5544(6);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "TimeSyncClockDeviceManager.cpp";
      v5 = 1024;
      v6 = 146;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ClockDeviceList listener activated", &v3, 0x12u);
    }
  }

  v2 = sub_102E90();
  sub_462C7C(v2);
}

void sub_462C7C(uint64_t a1)
{
  v3 = sub_5544(6);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "TimeSyncClockDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 125;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reading HAL clock list ...", buf, 0x12u);
  }

  v5 = *(a1 + 8);
  strcpy(v31, "#klcbolg");
  BYTE1(v31[1]) = 0;
  WORD1(v31[1]) = 0;
  if ((sub_20D3D8(v5) & 1) == 0)
  {
    v35.__r_.__value_.__s.__data_[0] = 0;
    v8 = 2003332927;
    goto LABEL_54;
  }

  *buf = 2003329396;
  buf[8] = 0;
  v46 = 0;
  v6 = sub_20D604(v5);
  LODWORD(v36) = v6;
  if (v6)
  {
    sub_128080(&__p, v6 >> 2);
    v7 = sub_20D678(v5);
    *buf = v7;
    if (v7)
    {
      v8 = v7;
      v35.__r_.__value_.__s.__data_[0] = 0;
LABEL_13:
      v11 = __p;
      if (!__p)
      {
        goto LABEL_54;
      }

      v9 = 0;
      goto LABEL_15;
    }

    v1 = buf;
    sub_1280F8(&buf[8], &__p);
    v8 = *buf;
    v35.__r_.__value_.__s.__data_[0] = 0;
    if ((v46 & 1) == 0)
    {
      goto LABEL_13;
    }

    *&v35.__r_.__value_.__l.__data_ = *&buf[8];
    v10 = *&buf[16];
    memset(&buf[8], 0, 24);
    v11 = __p;
    v1 = v10;
    if (__p)
    {
      v9 = 1;
LABEL_15:
      v39 = v11;
      operator delete(v11);
      if ((v46 & 1) != 0 && *&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }

LABEL_18:
      if (!v8 && (v9 & 1) != 0)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        sub_46980(&v32, v35.__r_.__value_.__l.__data_, v1, &v1[-v35.__r_.__value_.__r.__words[0]] >> 2);
        if (v35.__r_.__value_.__r.__words[0])
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        memset(v31, 0, sizeof(v31));
        v12 = v32;
        v13 = v33;
        if (v32 == v33)
        {
          v23 = 0;
          v22 = 0;
        }

        else
        {
          do
          {
            v14 = *v12;
            v15 = *(a1 + 8);
            strcpy(v41, "diucbolg");
            v41[9] = 0;
            v42 = 0;
            if ((sub_20D3D8(v15) & 1) == 0)
            {
              *buf = 2003332927;
              buf[8] = 0;
              buf[24] = 0;
LABEL_51:
              exception = __cxa_allocate_exception(0x10uLL);
              v26 = *buf;
              *exception = &off_6DDDD0;
              exception[2] = v26;
            }

            *buf = 2003329396;
            buf[8] = 0;
            buf[24] = 0;
            if (sub_20D604(v15))
            {
              v43 = 0;
              *buf = sub_20D678(v15);
              if (!*buf)
              {
                __p = &off_6DACD8;
                v39 = 0;
                *&buf[8] = &off_6DACD8;
                *&buf[16] = v43;
                buf[24] = 1;
                sub_8AAAC(&__p);
              }
            }

            if (*buf || (buf[24] & 1) == 0)
            {
              goto LABEL_51;
            }

            sub_224064(&v36, *&buf[16]);
            v36 = &off_6DACD8;
            if (buf[24] == 1)
            {
              sub_8AAAC(&buf[8]);
            }

            v16 = sub_5544(6);
            v17 = *v16;
            if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
            {
              sub_48540(&__p, theString);
              p_p = &__p;
              if (v40 < 0)
              {
                p_p = __p;
              }

              *buf = 136315650;
              *&buf[4] = "TimeSyncClockDeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 135;
              *&buf[18] = 2080;
              *&buf[20] = p_p;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Clock device '%s' is available", buf, 0x1Cu);
              if (v40 < 0)
              {
                operator delete(__p);
              }
            }

            memset(&v35, 0, sizeof(v35));
            if (theString)
            {
              CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
              if (CStringPtr)
              {
                sub_1D8C10(&v35, CStringPtr);
              }

              else
              {
                *buf = 0;
                v20 = theString;
                v47.length = CFStringGetLength(theString);
                v47.location = 0;
                CFStringGetBytes(v20, v47, 0x8000100u, 0, 0, 0, 0, buf);
                if (*buf != -1)
                {
                  if (*buf > -2)
                  {
                    operator new();
                  }

                  sub_189A00();
                }

                v21 = theString;
                v48.length = CFStringGetLength(theString);
                v48.location = 0;
                CFStringGetBytes(v21, v48, 0x8000100u, 0, 0, 0, *buf, buf);
                **buf = 0;
                sub_1D8C10(&v35, 0);
                operator delete(0);
              }
            }

            sub_8AAAC(&v36);
            sub_28CA74(v31, &v35);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            ++v12;
          }

          while (v12 != v13);
          v22 = v31[0];
          v23 = v31[1];
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_4817C(&v28, v22, v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
        *buf = a1;
        memset(&buf[8], 0, 24);
        sub_4817C(&buf[8], v28, v29, 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
        v24 = *(a1 + 168);
        operator new();
      }

LABEL_54:
      v27 = __cxa_allocate_exception(0x10uLL);
      *v27 = &off_6DDDD0;
      v27[2] = v8;
    }
  }

  else
  {
    v1 = 0;
    v8 = 0;
    *&v35.__r_.__value_.__l.__data_ = 0uLL;
  }

  v9 = 1;
  goto LABEL_18;
}

void sub_4633C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_463478(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_11C50(&v2);
    operator delete();
  }

  return result;
}

uint64_t *sub_4634D8(std::string **a1)
{
  v41 = a1;
  v2 = *a1;
  data = (*a1)[4].__r_.__value_.__l.__data_;
  if (data != (*a1)[4].__r_.__value_.__l.__size_)
  {
    while (1)
    {
      v4 = data[1];
      v42 = *data;
      if (&v2[3].__r_.__value_.__r.__words[1] == sub_9C238(&v2[3], v42, HIDWORD(v42)))
      {
        break;
      }

      v5 = sub_5544(6);
      v6 = *v5;
      if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        sub_68108(&__p, &v42);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v49 = "TimeSyncClockDeviceManager.cpp";
        v50 = 1024;
        v51 = 167;
        v52 = 2080;
        v53 = p_p;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d TimeSync clock already present for %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v8 = data + 2;
      size = v2[4].__r_.__value_.__l.__size_;
      if (data + 2 == size)
      {
        v11 = data;
      }

      else
      {
        do
        {
          v10 = v8[1];
          *(v8 - 2) = *v8;
          *(v8 - 1) = v10;
          v8 += 2;
        }

        while (v8 != size);
        v11 = v8 - 2;
      }

      v2[4].__r_.__value_.__l.__size_ = v11;
LABEL_58:
      if (data == v2[4].__r_.__value_.__l.__size_)
      {
        goto LABEL_67;
      }
    }

    v12 = (*(*v2[1].__r_.__value_.__l.__data_ + 48))(v2[1].__r_.__value_.__r.__words[0], v4);
    cf = v12;
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    v14 = sub_5544(6);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      if (!cf)
      {
        v39 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v39, "Could not construct");
      }

      sub_125D8(&__p, cf);
      v16 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v49 = "TimeSyncClockDeviceManager.cpp";
      v50 = 1024;
      v51 = 176;
      v52 = 2080;
      v53 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Looking for HAL Clock device : %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (!cf)
    {
      v34 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v34, "Could not construct");
    }

    v18 = a1[1];
    v17 = a1[2];
    sub_125D8(v43, cf);
    v19 = v44;
    if (v18 == v17)
    {
LABEL_37:
      v25 = 0;
      if ((v19 & 0x80) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v44 & 0x80u) == 0)
      {
        v20 = v44;
      }

      else
      {
        v20 = v43[1];
      }

      if ((v44 & 0x80u) == 0)
      {
        v21 = v43;
      }

      else
      {
        v21 = v43[0];
      }

      while (1)
      {
        v22 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
        v23 = v22;
        if ((v22 & 0x80u) != 0)
        {
          v22 = v18->__r_.__value_.__l.__size_;
        }

        if (v20 == v22)
        {
          v24 = v23 >= 0 ? v18 : v18->__r_.__value_.__r.__words[0];
          if (!memcmp(v21, v24, v20))
          {
            break;
          }
        }

        if (++v18 == v17)
        {
          goto LABEL_37;
        }
      }

      v25 = 1;
      if ((v19 & 0x80) != 0)
      {
LABEL_52:
        operator delete(v43[0]);
        if (!v25)
        {
          goto LABEL_53;
        }

        goto LABEL_39;
      }
    }

    if (!v25)
    {
LABEL_53:
      data += 2;
LABEL_56:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_58;
    }

LABEL_39:
    v26 = sub_5544(6);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
    {
      sub_68108(&__p, &v42);
      v28 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v49 = "TimeSyncClockDeviceManager.cpp";
      v50 = 1024;
      v51 = 183;
      v52 = 2080;
      v53 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Found timesync clock ref for %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v47 = &v42;
    sub_463E28(&v2[3], v42, HIDWORD(v42))[5] = v4;
    v29 = v2[2].__r_.__value_.__r.__words[2];
    if (!v29)
    {
      v36 = sub_5544(14);
      v37 = *v36;
      if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v49 = "TimeSyncClockDeviceManager.cpp";
        v50 = 1024;
        v51 = 188;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v38, "Precondition failure.");
    }

    (*(*v29 + 48))(v29, &v42);
    v30 = data + 2;
    v31 = v2[4].__r_.__value_.__l.__size_;
    if (data + 2 == v31)
    {
      v33 = data;
    }

    else
    {
      do
      {
        v32 = v30[1];
        *(v30 - 2) = *v30;
        *(v30 - 1) = v32;
        v30 += 2;
      }

      while (v30 != v31);
      v33 = v30 - 2;
    }

    v2[4].__r_.__value_.__l.__size_ = v33;
    goto LABEL_56;
  }

LABEL_67:
  if (&v2[5] != (a1 + 1))
  {
    sub_D03B8(&v2[5], a1[1], a1[2], 0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3));
  }

  return sub_463478(&v41);
}

void sub_463DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_end_catch();
  sub_463478(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_463E28(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      v6 = *(v4 + 9);
      v7 = v6 > a3;
      if (v5 != a2)
      {
        v7 = v5 > a2;
      }

      if (!v7)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_11;
      }
    }

    v8 = v6 < a3;
    v9 = v5 == a2;
    v10 = v5 < a2;
    if (v9)
    {
      v10 = v8;
    }

    if (!v10)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }
}

void sub_463F38(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((*(*v3 + 24))(v3) == TSNullClockIdentifier)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "TimeSyncClockDeviceManager.cpp";
      v28 = 1024;
      v29 = 115;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No gPTP System Domain Clock present ?", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No gPTP System Domain Clock present ?");
  }

  else
  {
    v4 = (*(*v3 + 32))(v3);
    if (v4)
    {
      v5 = sub_5544(6);
      v6 = *v5;
      if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_68108(&__p, a1 + 2);
        v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v27 = "TimeSyncClockDeviceManager.cpp";
        v28 = 1024;
        v29 = 218;
        v30 = 2080;
        v31 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created time sync clock device for %s, Adding to pending requests (to wait for HAL clock)", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v9 = v2[12];
      v8 = v2[13];
      v10 = *(a1 + 1);
      v11 = v9;
      if (v9 != v8)
      {
        v11 = v2[12];
        while (*v11 != v10)
        {
          v11 += 16;
          if (v11 == v8)
          {
            goto LABEL_16;
          }
        }
      }

      if (v11 == v8)
      {
LABEL_16:
        v12 = v2[14];
        if (v8 >= v12)
        {
          v14 = v8 - v9;
          v15 = (v8 - v9) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            sub_189A00();
          }

          v17 = v12 - v9;
          if (v17 >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            if (!(v18 >> 60))
            {
              operator new();
            }

            sub_6ACD8();
          }

          v19 = (16 * v15);
          *v19 = v10;
          v19[1] = v4;
          v13 = 16 * v15 + 16;
          memcpy(0, v9, v14);
          v2[12] = 0;
          v2[13] = v13;
          v2[14] = 0;
          if (v9)
          {
            operator delete(v9);
          }
        }

        else
        {
          *v8 = v10;
          *(v8 + 1) = v4;
          v13 = (v8 + 16);
        }

        v2[13] = v13;
      }

      sub_462C7C(v2);
    }

    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "TimeSyncClockDeviceManager.cpp";
      v28 = 1024;
      v29 = 118;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [gptpClock is NULL]: Could not create gPTP clock reference", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not create gPTP clock reference");
  }
}

void sub_464368(unsigned int *a1)
{
  v2 = sub_5544(6);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_68108(&__p, a1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v10 = "TimeSyncClockDeviceManager.cpp";
    v11 = 1024;
    v12 = 106;
    v13 = 2080;
    v14 = p_p;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d gPTP TimeSyncManager is now available. Creating clock %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v5 = sub_102E90();
  v6 = *a1;
  v7 = *(v5 + 168);
  operator new();
}

void sub_4644B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_4644C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  v3 = *(a2 + 168);
  v5 = v4;
  *a1 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_464548;
  block[3] = &unk_6D8988;
  block[4] = a1;
  block[5] = &v5;
  dispatch_sync(v3, block);
}

void sub_464548(uint64_t a1)
{
  v2 = **(a1 + 40);
  v3 = *v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_464B70;
  v6[3] = &unk_6D8968;
  v6[4] = v3;
  v6[5] = v2[1];
  sub_464B70(v6, &v7);
  v4 = *(a1 + 32);
  v5 = *v4;
  *v4 = v7;
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_464624(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

const void *sub_464B70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *v3;
  v6 = v3[1];
  v7 = sub_9C238(v4 + 72, *v3, v6);
  v8 = *(v4 + 24);
  if (v4 + 80 == v7)
  {
    result = (*(*v8 + 16))(*(v4 + 24), sub_464CD4, v3);
    *a2 = 0;
  }

  else
  {
    v9 = sub_463E28(v4 + 72, v5, v6);
    result = (*(*v8 + 48))(v8, v9[5]);
    *a2 = result;
    if (result)
    {
      v11 = CFGetTypeID(result);
      result = CFStringGetTypeID();
      if (v11 != result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }
  }

  return result;
}

void sub_464CAC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_20B45C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_464CD4(unsigned int *a1)
{
  v2 = sub_102E90();
  v3 = sub_5544(6);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    sub_68108(&__p, a1);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v11 = "TimeSyncClockDeviceManager.cpp";
    v12 = 1024;
    v13 = 250;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d TimeSyncManager is now available. Adding gPTP Timesync manager (%s)", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (((*(**(v2 + 24) + 56))(*(v2 + 24)) & 1) == 0)
  {
    v6 = sub_5544(6);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "TimeSyncClockDeviceManager.cpp";
        v12 = 1024;
        v13 = 253;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding gPTP timesync manager failed", buf, 0x12u);
      }
    }
  }

  return (*(**(v2 + 24) + 64))(*(v2 + 24), sub_464368, a1);
}

void sub_464EB4()
{
  qword_7000B8 = 850045863;
  unk_7000C0 = 0u;
  unk_7000D0 = 0u;
  unk_7000E0 = 0u;
  qword_7000F0 = 0;
  qword_7000F8 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  global_queue = dispatch_get_global_queue(0, 0);
  *&qword_700100 = 0u;
  *&qword_700110 = 0u;
  qword_700118 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, global_queue);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_464FBC;
  handler[3] = &unk_6D89C8;
  handler[4] = &qword_7000B8;
  dispatch_source_set_event_handler(qword_700118, handler);
  dispatch_resume(qword_700118);
}

void sub_464FBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  CFSetApplyFunction(*(v1 + 64), sub_4650C0, 0);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  while (v2 != v3)
  {
    sub_465050(v2);
    v2 += 48;
  }

  std::mutex::unlock(v1);
}

CFPropertyListRef sub_465050(uint64_t a1)
{
  result = CFPreferencesCopyAppValue(*a1, *(a1 + 8));
  if (result)
  {
    v4 = result;
    v3 = *(a1 + 40);
    if (!v3)
    {
      sub_46A74();
    }

    return (*(*v3 + 48))(v3, &v4);
  }

  return result;
}

uint64_t sub_4650DC(const __CFString *a1, const __CFString *a2, _BYTE *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = v4;
  valuePtr = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(v5);
    }

    else if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    else if (v6 != CFStringGetTypeID() || (CFStringGetCString(v5, buffer, 64, 0x600u), sscanf(buffer, "%d", &valuePtr) != 1))
    {
LABEL_13:
      v7 = valuePtr;
      CFRelease(v5);
      return v7;
    }

    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_13;
  }

  return 0;
}

BOOL sub_4651FC(const __CFString *a1, const __CFString *a2, _BYTE *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = v4;
  valuePtr = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = CFGetTypeID(v4);
  if (v6 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v5);
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v6 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    Value = valuePtr != 0;
    if (a3)
    {
LABEL_10:
      *a3 = 1;
    }
  }

  else
  {
    if (v6 != CFStringGetTypeID())
    {
      Value = 0;
      goto LABEL_17;
    }

    CFStringGetCString(v5, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      if (a3)
      {
        *a3 = 1;
      }

      Value = valuePtr != 0;
      goto LABEL_17;
    }

    v9 = buffer[0];
    if (buffer[0])
    {
      v10 = &buffer[1];
      do
      {
        *(v10 - 1) = __tolower(v9);
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    if (*buffer ^ 0x6F6E | buffer[2])
    {
      if (*buffer != 1936482662 || v15 != 101)
      {
        if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v15))
        {
          Value = 1;
          if (a3)
          {
            *a3 = 1;
          }
        }

        else
        {
          Value = valuePtr;
        }

        goto LABEL_17;
      }
    }

    Value = 0;
    if (a3)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  CFRelease(v5);
  return Value != 0;
}

void *sub_4653F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_4654F4(v8, a4);
  *a1 = a2;
  a1[1] = a3;
  sub_4654F4((a1 + 2), v8);
  sub_36D5C4(v8);
  return a1;
}

void sub_465484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_36D5C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4654A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_36D5C4(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_4654F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_46558C(uint64_t a1)
{
  sub_5659C(v7, (a1 + 8), "", 50);
  v2 = *v7;
  if (*&v7[8])
  {
    sub_1A8C0(*&v7[8]);
  }

  if ((sub_3E7F7C(v2) & 1) == 0)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 136315394;
      *&v7[4] = "RoutingHandlerAction_ChangeSpeakerOutputChannelConfiguration.cpp";
      *&v7[12] = 1024;
      *&v7[14] = 52;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = *(a1 + 28);

  sub_3E808C(v2, v3, a1 + 32);
}

void sub_4656F0(uint64_t a1)
{
  sub_5659C(v7, (a1 + 8), "", 41);
  v2 = *v7;
  if (*&v7[8])
  {
    sub_1A8C0(*&v7[8]);
  }

  if ((sub_3E7F7C(v2) & 1) == 0)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 136315394;
      *&v7[4] = "RoutingHandlerAction_ChangeSpeakerOutputChannelConfiguration.cpp";
      *&v7[12] = 1024;
      *&v7[14] = 43;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = *(a1 + 24);

  sub_3E808C(v2, v3, a1 + 32);
}

void sub_465854(void *a1)
{
  *a1 = off_6D89F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_4658C0(void *a1)
{
  *a1 = off_6D89F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_46590C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = off_6D89F8;
  *(a1 + 8) = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0;
  if ((sub_3E7F7C(a2) & 1) == 0)
  {
    v32 = sub_5544(14);
    v33 = *v32;
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = "Device_Speaker_Aspen.cpp";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = 214;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  strcpy(buf, "crsstpni");
  BYTE1(buf[2]) = 0;
  HIWORD(buf[2]) = 0;
  sub_2C4188(&__p, a2);
  data = __p.__r_.__value_.__l.__data_;
  if (LODWORD(__p.__r_.__value_.__l.__data_) || (v43 & 1) == 0)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = data;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  size = __p.__r_.__value_.__l.__size_;
  sub_46980(&v38, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2], (__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__l.__size_) >> 2);
  if (size)
  {
    operator delete(size);
  }

  strcpy(buf, "shCSptuo");
  BYTE1(buf[2]) = 0;
  HIWORD(buf[2]) = 0;
  sub_2C4188(&__p, a2);
  v9 = __p.__r_.__value_.__l.__data_;
  if (LODWORD(__p.__r_.__value_.__l.__data_) || (v43 & 1) == 0)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    *v31 = &off_6DDDD0;
    v31[2] = v9;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v10 = __p.__r_.__value_.__l.__size_;
  sub_46980(&v35, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2], (__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__l.__size_) >> 2);
  if (v10)
  {
    operator delete(v10);
  }

  sub_ABF48();
  v11 = qword_6FD608;
  if (qword_6FD608 == &xmmword_6FD610)
  {
LABEL_24:
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      sub_24C060(&v41, v38, v39);
      v23 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
      v24 = v41.__r_.__value_.__r.__words[0];
      sub_10898C(&__p, v35, v36);
      v25 = &v41;
      if (v23 < 0)
      {
        v25 = v24;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      buf[0] = 136315906;
      *&buf[1] = "Device_Speaker_Aspen.cpp";
      v45 = 1024;
      v46 = 102;
      v47 = 2080;
      v48 = v25;
      v49 = 2080;
      v50 = p_p;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unable to find Channel Configuration for Data Sources: (Telemetry: %s, Output: %s)", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v27, "Unable to find Channel Configuration for Data Sources: (Telemetry: %s, Output: %s)");
  }

  v12 = v38;
  v13 = v39 - v38;
  v14 = v35;
  v15 = v36 - v35;
  while (1)
  {
    v16 = *(v11 + 40);
    if (*(v11 + 48) - v16 == v13 && !memcmp(v16, v12, v13))
    {
      v17 = *(v11 + 64);
      if (*(v11 + 72) - v17 == v15 && !memcmp(v17, v14, v15))
      {
        break;
      }
    }

    v18 = *(v11 + 8);
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = *(v11 + 16);
        v20 = *v19 == v11;
        v11 = v19;
      }

      while (!v20);
    }

    v11 = v19;
    if (v19 == &xmmword_6FD610)
    {
      goto LABEL_24;
    }
  }

  v28 = *(v11 + 32);
  if (v14)
  {
    operator delete(v14);
  }

  if (v12)
  {
    operator delete(v12);
  }

  *(a1 + 28) = v28;
  *(a1 + 32) = *a3;
  return a1;
}

void sub_466294(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 88));
  sub_65310(v2);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_4697E4((v1 + 32), 0);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t *sub_4662FC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_323E38(v2);
    operator delete();
  }

  return a1;
}

void *sub_466344(void *result, void *a2)
{
  if (a2[6])
  {
    v3 = a2 + 4;
    v31 = 1751409255;
    sub_F31A0(buf, (a2 + 4));
    sub_25B090(v32, buf, 1);
    for (i = a2[5]; i != v3; i = i[1])
    {
      v5 = i[3];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = i[2];
          if (v8 && (*(*v8 + 480))(v8))
          {
            v33 = i[2];
            v9 = i[3];
            v34 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1A8C0(v7);
            v35 = 0x4000000000;
            v36 = 2;
            LOBYTE(__p) = 0;
            v38 = 0;
            sub_65310(buf);
            if (v34)
            {
              if (v32[2])
              {
                v10 = std::__shared_weak_count::lock(v34);
                v11 = v10;
                if (v10 && (v12 = v33, atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed), sub_1A8C0(v10), (v13 = std::__shared_weak_count::lock(v11)) != 0))
                {
                  v14 = v13;
                  if (v12)
                  {
                    v15 = (*(*v12 + 88))(v12, 0);
                    v16 = (*(*v12 + 88))(v12, 1);
                    sub_1A8C0(v14);
                    v12 = v15 | (v16 << 32);
                  }

                  else
                  {
                    sub_1A8C0(v13);
                  }
                }

                else
                {
                  v12 = 0;
                }

                inData = 0;
                v40 = 0;
                if (v34)
                {
                  v17 = std::__shared_weak_count::lock(v34);
                  v18 = v17;
                  if (v17)
                  {
                    v19 = v33;
                    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    inData = v19;
                    v40 = v17;
                    sub_1A8C0(v17);
                  }

                  else
                  {
                    inData = 0;
                    v40 = 0;
                  }
                }

                else
                {
                  v18 = 0;
                }

                v20 = v35;
                v21 = HIDWORD(v35);
                v22 = v36;
                sub_80534(buf, &__p);
                LOBYTE(v51) = 0;
                v53 = 0;
                v41[0] = 0;
                v45 = 0;
                sub_F330C(v32, &v31, v12, &inData, v20, v21, v22 & 1, 0, buf, 0, 0, v41, 0);
                if (v53 == 1 && v52 < 0)
                {
                  operator delete(v51);
                }

                if (v50 == 1 && v49 < 0)
                {
                  operator delete(*buf);
                }

                if (v18)
                {
                  std::__shared_weak_count::__release_weak(v18);
                }

                if (v11)
                {
                  std::__shared_weak_count::__release_weak(v11);
                }

                operator new();
              }

              v28 = sub_5544(14);
              v29 = *v28;
              if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "Aggregate_HAL_Common.cpp";
                v47 = 1024;
                v48 = 52;
                _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }
            }

            else
            {
              v26 = sub_5544(14);
              v27 = *v26;
              if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "Aggregate_HAL_Common.cpp";
                v47 = 1024;
                v48 = 51;
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Precondition failure.");
          }

          sub_1A8C0(v7);
        }
      }
    }

    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *v41 = 136315394;
      v42 = "HapticDebugManager.cpp";
      v43 = 1024;
      v44 = 47;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): No master haptic device is specified", v41, 0x12u);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v25, "No master haptic device is specified");
  }

  *result = 0;
  return result;
}

void sub_466A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_free_exception(v34);
  sub_466D88(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_466D88(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_128368((a1 + 8));
  return a1;
}

uint64_t *sub_466DE0(uint64_t a1)
{
  sub_4662FC((a1 + 56));
  *(a1 + 24) = off_6D8AC0;
  sub_1F7248((a1 + 48));

  return sub_1F71EC((a1 + 32));
}

void sub_466E44(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D8A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_466EB8(uint64_t a1)
{
  v2 = sub_5544(27);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v15 = "HapticDebugManager.cpp";
        v16 = 1024;
        v17 = 111;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Received Haptic Preference Update", buf, 0x12u);
      }
    }
  }

  if (!a1)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "HapticDebugManager.cpp";
      v16 = 1024;
      v17 = 113;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "HapticDebugManager.cpp";
      v16 = 1024;
      v17 = 116;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v13, "Postcondition failure.");
  }

  v6 = sub_8703C();
  v7 = (*(*v6 + 128))(v6);
  sub_467428(v5, v7);
  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_467428(void *a1, int a2)
{
  v4 = sub_5544(27);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    sub_53E8(&v45, off_6D3BE8[*a1]);
    v6 = v45.__m_.__opaque[15];
    sig = v45.__m_.__sig;
    sub_53E8(&v44, off_6D3BE8[a2]);
    v8 = &v45;
    if (v6 < 0)
    {
      v8 = sig;
    }

    if (v44.__cv_.__opaque[15] >= 0)
    {
      v9 = &v44;
    }

    else
    {
      v9 = v44.__cv_.__sig;
    }

    buf = 136315906;
    buf_4 = "HapticDebugManager.cpp";
    v38 = 1024;
    v39 = 184;
    v40 = 2080;
    v41 = v8;
    v42 = 2080;
    v43 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Old State: %s, New State: %s", &buf, 0x26u);
    if (v44.__cv_.__opaque[15] < 0)
    {
      operator delete(v44.__cv_.__sig);
    }

    if (v45.__m_.__opaque[15] < 0)
    {
      operator delete(v45.__m_.__sig);
    }
  }

  v10 = *a1;
  if (*a1 == a2)
  {
    v11 = sub_5544(27);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      sub_53E8(&v45, off_6D3BE8[a2]);
      v13 = v45.__m_.__opaque[15] >= 0 ? &v45 : v45.__m_.__sig;
      buf = 136315650;
      buf_4 = "HapticDebugManager.cpp";
      v38 = 1024;
      v39 = 188;
      v40 = 2080;
      v41 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Redundant update to maggie debug preference state : %s", &buf, 0x1Cu);
      if (v45.__m_.__opaque[15] < 0)
      {
        operator delete(v45.__m_.__sig);
      }
    }

    v10 = *a1;
  }

  *a1 = a2;
  if (v10 == 1)
  {
    v16 = sub_5544(27);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      buf = 136315394;
      buf_4 = "HapticDebugManager.cpp";
      v38 = 1024;
      v39 = 206;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disabling IO Haptic Debug", &buf, 0x12u);
    }

    v18 = a1[3];
    if (v18)
    {
      v19 = std::__shared_weak_count::lock(v18);
      if (v19)
      {
        v20 = a1[2];
        if (v20)
        {
          sub_3259EC(v20, 0);
LABEL_40:
          sub_1A8C0(v19);
          goto LABEL_41;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = sub_5544(27);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
    {
      buf = 136315394;
      buf_4 = "HapticDebugManager.cpp";
      v38 = 1024;
      v39 = 208;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d No IO Delegate to disable", &buf, 0x12u);
    }

    if (!v19)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v10 != 2)
  {
    goto LABEL_42;
  }

  v14 = sub_5544(27);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315394;
    buf_4 = "HapticDebugManager.cpp";
    v38 = 1024;
    v39 = 200;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disabling kAlways Haptic Debug", &buf, 0x12u);
  }

  if (!a1[1])
  {
    v32 = sub_5544(14);
    v33 = *v32;
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "HapticDebugManager.cpp";
      v38 = 1024;
      v39 = 201;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_4697E4(a1 + 1, 0);
LABEL_41:
  a2 = *a1;
LABEL_42:
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v23 = sub_5544(27);
      v24 = *v23;
      if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
      {
        buf = 136315394;
        buf_4 = "HapticDebugManager.cpp";
        v38 = 1024;
        v39 = 223;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Enabling kAlways Haptic Debug", &buf, 0x12u);
      }

      sub_466344(&v35, a1);
      if (v35)
      {
        operator new();
      }

      sub_1F7248(&v35);
    }

    return;
  }

  v25 = sub_5544(27);
  v26 = *v25;
  if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315394;
    buf_4 = "HapticDebugManager.cpp";
    v38 = 1024;
    v39 = 238;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Enabling IO Haptic Debug", &buf, 0x12u);
  }

  v27 = a1[3];
  if (v27)
  {
    v28 = std::__shared_weak_count::lock(v27);
    if (v28)
    {
      v29 = a1[2];
      if (v29)
      {
        sub_32531C(v29);
        sub_3259EC(v29, 1u);
LABEL_61:
        sub_1A8C0(v28);
        return;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = sub_5544(27);
  v31 = *v30;
  if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315394;
    buf_4 = "HapticDebugManager.cpp";
    v38 = 1024;
    v39 = 240;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d No IO Delegate to enable", &buf, 0x12u);
  }

  if (v28)
  {
    goto LABEL_61;
  }
}

void sub_469524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, AudioObjectPropertySelector a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_73C20(&a63);
  std::condition_variable::~condition_variable((v63 - 232));
  std::mutex::~mutex((v63 - 184));
  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  if (a19)
  {
    sub_1A8C0(a19);
  }

  sub_1F7248(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_4697E4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      if (*(v2 + 8))
      {
        v3 = *(v2 + 40);
        if (v3)
        {
          v4 = v3[1];
          if (v4)
          {
            (*(*v4 + 32))(v3[1]);
            v3 = *(v2 + 40);
            *(v2 + 40) = 0;
            if (!v3)
            {
LABEL_11:
              sub_452748(*v2, **(v2 + 8));
              v5 = *(v2 + 40);
              *(v2 + 40) = 0;
              if (v5)
              {
                (*(*v5 + 8))(v5);
              }

              sub_65310((v2 + 16));
              sub_1F71EC((v2 + 8));
              sub_1F7248(v2);

              operator delete();
            }
          }

          else
          {
            *(v2 + 40) = 0;
          }

          (*(*v3 + 8))(v3);
          goto LABEL_11;
        }

        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "AlwaysOnHapticDebug.cpp";
          v15 = 1024;
          v16 = 140;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v13, 0x12u);
        }
      }

      else
      {
        v8 = sub_5544(14);
        v9 = *v8;
        if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "AlwaysOnHapticDebug.cpp";
          v15 = 1024;
          v16 = 139;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v13, 0x12u);
        }
      }
    }

    else
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "AlwaysOnHapticDebug.cpp";
        v15 = 1024;
        v16 = 138;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v13, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return result;
}