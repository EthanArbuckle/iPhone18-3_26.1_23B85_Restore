void sub_325960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_3259EC(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    goto LABEL_6;
  }

  v5 = sub_5544(17);
  v6 = *v5;
  if (*v5)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "HapticDebugIODelegate.cpp";
      v9 = 1024;
      v10 = 267;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HapticDebugDelegate not instantiated yet", &v7, 0x12u);
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {
LABEL_6:
    atomic_store(a2, (v3 + 32));
  }
}

void sub_325AD0()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0;
  v0 = sub_106F10();
  v10[4] = (v0 > 0xFFu) & v0;
  v10[5] = 1;
  *&v10[6] = 0;
  v11 = 0;
  v12 = 16777473;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v15 = 0;
  v16 = 0;
  v17 = -1044381696;
  v18 = 1;
  v19 = -1044381696;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = -1056964608;
  v24 = 1;
  v25 = -1033371648;
  v26 = 1;
  v27 = 0;
  v28 = 1;
  v29 = -1033371648;
  v30 = 1;
  v31 = 0;
  v32 = 1;
  v33 = -1044381696;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = -1033371648;
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = -1033371648;
  v42 = 1;
  v43 = -1055916032;
  v44 = 1;
  v45 = -1033371648;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = -1055916032;
  v50 = 1;
  v51 = -1033371648;
  v52 = 1;
  v53 = -1055916032;
  v54 = 1;
  v55 = -1033371648;
  v56 = 1;
  v57 = 0;
  v58 = 1;
  v59 = -1055916032;
  v60 = 1;
  v61 = -1043333120;
  v62 = 1;
  v63 = 0x40000000;
  v64 = 1;
  v65 = 16777472;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 1;
  v70 = 1103626240;
  v71 = 1;
  v72 = 0;
  v73 = 1;
  v74 = 1094713344;
  v75 = 1;
  v76 = 1094713344;
  v77 = 1;
  v78 = 1094713344;
  v79 = 1;
  v80 = -1061158912;
  v81 = 1;
  v82 = 1107296256;
  v83 = 1;
  v84 = 1107296256;
  v85 = 1;
  v86 = 1092616192;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 16777472;
  v93[0] = 0;
  v93[72] = 0;
  v93[80] = 0;
  v93[120] = 0;
  v93[128] = 0;
  v93[200] = 0;
  v93[208] = 0;
  v93[248] = 0;
  LOBYTE(v94) = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  v97 = 0;
  LOBYTE(v98) = 0;
  v99 = 0;
  LOBYTE(v100) = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  v105 = 0;
  LOBYTE(v106) = 0;
  v107 = 0;
  LOBYTE(v108) = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  LOBYTE(v112) = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
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
  v126 = 1;
  v127 = 0;
  v128 = 0;
  LOBYTE(v129) = 0;
  v130 = 0;
  LOBYTE(v131) = 0;
  v132 = 0;
  LOBYTE(v133) = 0;
  v134 = 0;
  LOBYTE(v135) = 0;
  v136 = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  LOBYTE(v140) = 0;
  v141 = 0;
  LOBYTE(v142) = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  LOBYTE(v148) = 0;
  v149 = 0;
  LOBYTE(v150) = 0;
  v151 = 0;
  LOBYTE(v152) = 0;
  v153 = 0;
  LOBYTE(v154) = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  LOBYTE(__p) = 0;
  v162 = 0;
  v163.__r_.__value_.__s.__data_[0] = 0;
  v164 = 0;
  v165.__r_.__value_.__s.__data_[0] = 0;
  v166 = 0;
  v167.__r_.__value_.__s.__data_[0] = 0;
  v168 = 0;
  v169 = 256;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x200000001;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  *v10 = 0x101010101000100;
  *&v10[12] = 257;
  v12 = 16843008;
  v61 = -1047527424;
  v62 = 1;
  v70 = 1103101952;
  v71 = 1;
  v76 = 0;
  v77 = 1;
  v78 = 0;
  v79 = 1;
  v74 = 0;
  v75 = 1;
  v90 = 1090519040;
  v91 = 1;
  v80 = -1040187392;
  v81 = 1;
  v63 = 0;
  v64 = 1;
  v92 = 16843009;
  if ((v95 & 1) == 0)
  {
    v95 = 1;
  }

  v94 = 1836282987;
  if ((v97 & 1) == 0)
  {
    v97 = 1;
  }

  v96 = 2;
  if ((v99 & 1) == 0)
  {
    v99 = 1;
  }

  v98 = 2;
  if ((v101 & 1) == 0)
  {
    v101 = 1;
  }

  v100 = 4;
  if ((v139 & 1) == 0)
  {
    v139 = 1;
  }

  v138 = 2;
  if ((v143 & 1) == 0)
  {
    v143 = 1;
  }

  v142 = 2;
  if ((v141 & 1) == 0)
  {
    v141 = 1;
  }

  v140 = 2;
  v104 = 13;
  v105 = 1;
  v106 = 13;
  v107 = 1;
  v108 = 13;
  v109 = 1;
  v112 = 13;
  v113 = 1;
  v129 = 18;
  v130 = 1;
  v131 = 3;
  v132 = 1;
  v133 = 12;
  v134 = 1;
  v135 = 18;
  v136 = 1;
  v137 = 257;
  v148 = 18;
  v149 = 1;
  v150 = 18;
  v151 = 1;
  v152 = 10;
  v153 = 1;
  v154 = 5;
  v155 = 1;
  sub_30F70C(&__src, 84);
  if (v162 == 1)
  {
    if (SHIBYTE(v161) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v161 = v178;
  }

  else
  {
    __p = __src;
    v161 = v178;
    v162 = 1;
  }

  sub_1F826C(&v163, "_top_mic_general");
  sub_1F826C(&v165, "_top_mic_measurement");
  sub_1F826C(&v167, "_top_mic_hearing_accessibility");
  LOBYTE(v15) = 1;
  sub_47DB04(&v1);
  sub_1E0054(v93);
  sub_477A0(v14[0]);
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

void sub_326188(uint64_t a1, unsigned int **a2, int a3)
{
  v3 = *(a1 + 880);
  if (!v3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "Device_HPMic_Aspen.cpp";
      v9 = 1024;
      v10 = 575;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No valid support policy present", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No valid support policy present");
  }

  sub_408A74(v3, a2, a3);
}

void sub_3262B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 936));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_326328(a2, *(a1 + 912), *(a1 + 920), (*(a1 + 920) - *(a1 + 912)) >> 2);

  std::mutex::unlock((a1 + 936));
}

void sub_326328(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      sub_1D7C28(a4);
    }

    sub_189A00();
  }
}

void sub_3263A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3263C0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 144) != 1886216809)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_310328(&theData);
  v47 = v51;
  if (v51 == 1)
  {
    v5 = theData;
    __p[1] = 0;
    v49 = 0;
    __p[0] = 0;
    if (theData && (BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(v5), BytePtr))
    {
      v8 = Length;
      if (Length <= 3)
      {
        v42 = sub_5544(14);
        v43 = *v42;
        if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 754;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      else
      {
        LODWORD(v9) = *BytePtr;
        v10 = sub_5544(18);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 766;
          v57 = 1024;
          *v58 = WORD1(v9);
          *&v58[4] = 1024;
          *&v58[6] = BYTE1(v9);
          LOWORD(v59) = 1024;
          *(&v59 + 2) = v9;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mic Trim gains: version %d, size %d, entries %d", buf, 0x24u);
        }

        if (WORD1(v9) == 1 && (v9 & 0xFF00) == 0x200)
        {
          v9 = v9;
          if (v9)
          {
            if (v8 > 7)
            {
              v29 = (BytePtr + 4);
              v9 = v9;
              while (1)
              {
                v13 = __p[0];
                v12 = __p[1];
                if (v9 <= ((__p[1] - __p[0]) >> 2))
                {
                  break;
                }

                v30 = (*v29 >> 16) * 0.1;
                v31 = *v29 * 0.1;
                v52 = v31;
                v53 = v30;
                sub_2B4F3C(__p, &v53);
                sub_2B4F3C(__p, &v52);
                v32 = sub_5544(18);
                v33 = *v32;
                if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = "Device_HPMic_Aspen.cpp";
                  v55 = 1024;
                  v56 = 787;
                  v57 = 2048;
                  *v58 = v30;
                  *&v58[8] = 2048;
                  v59 = v31;
                  _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parsed trim gains: %f %f", buf, 0x26u);
                }

                if (++v29 > &BytePtr[v8 - 4])
                {
                  v13 = __p[0];
                  v12 = __p[1];
                  break;
                }
              }
            }

            else
            {
              v12 = 0;
              v13 = 0;
            }

            v34 = v12 - v13;
            if (v9 < v34 >> 2)
            {
              v35 = v34 - 4;
              do
              {
                v12 -= 4;
                v20 = v9 >= v35 >> 2;
                v35 -= 4;
              }

              while (!v20);
              __p[1] = v12;
            }
          }

          else
          {
            v27 = sub_5544(18);
            v28 = *v27;
            if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "Device_HPMic_Aspen.cpp";
              v55 = 1024;
              v56 = 772;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Number of Mic trim gain entries is zero", buf, 0x12u);
            }
          }

          v36 = v49;
          *a3 = *__p;
          a3[2] = v36;
          goto LABEL_51;
        }

        v44 = sub_5544(14);
        v45 = *v44;
        if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 768;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }
    }

    else
    {
      v40 = sub_5544(14);
      v41 = *v40;
      if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        v55 = 1024;
        v56 = 753;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v14 = a1[110];
  v17 = *(v14 + 72);
  v15 = v14 + 72;
  v16 = v17;
  if (!v17)
  {
    goto LABEL_55;
  }

  v18 = v15;
  do
  {
    v19 = *(v16 + 32);
    v20 = v19 >= 0x706D6269;
    v21 = v19 < 0x706D6269;
    if (v20)
    {
      v18 = v16;
    }

    v16 = *(v16 + 8 * v21);
  }

  while (v16);
  if (v18 == v15 || *(v18 + 32) > 0x706D6269u)
  {
LABEL_55:
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_HPMic_Aspen.cpp";
      v55 = 1024;
      v56 = 811;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unable to locate built-in mic sub-port information", buf, 0x12u);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "Unable to locate built-in mic sub-port information");
  }

  for (i = *(v18 + 40); i != *(v18 + 48); ++i)
  {
    v23 = sub_5544(18);
    if (*(v23 + 8))
    {
      v24 = *v23;
      if (*v23)
      {
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, *i);
          v25 = __p;
          if (v49 < 0)
          {
            v25 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 817;
          v57 = 2080;
          *v58 = v25;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting trim for Data Source ID %s", buf, 0x1Cu);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    v53 = 0.0;
    v26 = *i;
    *buf = 0x696E707461747363;
    *&buf[8] = v26;
    if ((*(*a1 + 16))(a1, buf))
    {
      LODWORD(__p[0]) = 4;
      (*(*a1 + 40))(a1, buf, 0, 0, __p, &v53);
      sub_2B4F3C(a3, &v53);
    }
  }

LABEL_51:
  if (v47)
  {
    if (theData)
    {
      CFRelease(theData);
    }
  }
}

void sub_326B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v17);
  sub_2B50D0(&a16);
  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void *sub_326BE0@<X0>(void *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 1886216809)
  {
    v3 = *(result[111] + 32);
    if (!v3)
    {
      v10 = *sub_5544(14);
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "Device_HPMic_Aspen.cpp";
          v15 = 1024;
          v16 = 584;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mTransducerDatabase.mBuiltInMicDefaultSubPort is NULL]: No default sub-port specified for built-in mic.", &v13, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default sub-port specified for built-in mic.");
    }

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if ((v5 - v4) >= 0x41 && v4 != v5)
    {
      v9 = v4;
      while (v9[8] != 1869442665)
      {
        v9 += 16;
        if (v9 == v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v9;
    }

LABEL_8:
    v13 = *v4;
    return sub_1E54B0(a3, &v13, 1);
  }

  else
  {
    v8 = result[110];
    if (v8)
    {

      return sub_40AC30(a3, v8, a2);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  return result;
}

uint64_t sub_326DBC(uint64_t a1, unsigned int a2)
{
  if (a2 != 1752197486)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_HPMic_Aspen.cpp";
      v15 = 1024;
      v16 = 567;
      v17 = 2080;
      v18 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      v14 = "Device_HPMic_Aspen.cpp";
      v15 = 1024;
      v16 = 568;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType: %s.", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType: %s.");
  }

  return 0;
}

void sub_326FCC(void *a1@<X8>)
{
  if (sub_310A30())
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_CE168();
    sub_53E8(__p, "AOP Audio-1");
    sub_CDEB8(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_327034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_327058(_DWORD *a1)
{
  sub_4ADCC0(a1);
  HIBYTE(v25[6]) = 0;
  v25[7] = 0;
  strcpy(v25, "Ms2icrscbolg");
  if ((*(*a1 + 16))(a1, &v25[2]))
  {
    (*(*a1 + 48))(a1, &v25[2], 0, 0, 4, v25);
  }

  sub_147688();
  inAddress = 0x696E70746D757465;
  LODWORD(inAddress_8) = 0;
  v2 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v2, &inAddress))
  {
    v33[0] = 0x676C6F626D757465;
    LODWORD(v33[1]) = 0;
    operator new();
  }

  *&v32.mSelector = 0x696E7074766F6C64;
  v32.mElement = 0;
  v3 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v3, &v32))
  {
    v4 = *(a1 + 11);
    v33[0] = *(a1 + 10);
    v33[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (sub_40ADD4(*(a1 + 110), 0x696D6963u) || sub_40ADD4(*(a1 + 110), 0x696D6931u))
  {
    v5 = sub_5544(18);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_HPMic_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 720;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating an internal microphone port", buf, 0x12u);
    }

    sub_33E58C(v33);
    v7 = sub_5544(18);
    if (*(v7 + 8))
    {
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
        {
          v9 = v33;
          if (v34 < 0)
          {
            v9 = v33[0];
          }

          *buf = 136315650;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 723;
          *&buf[18] = 2080;
          *&buf[20] = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Localized microphone name: '%s'", buf, 0x1Cu);
        }
      }
    }

    v10 = *(a1 + 11);
    theDict[0] = *(a1 + 10);
    theDict[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    }

    inAddress = 0;
    inAddress_8 = 0;
    v28 = 0;
    if (SHIBYTE(v34) < 0)
    {
      sub_54A0(buf, v33[0], v33[1]);
    }

    else
    {
      *buf = *v33;
      *&buf[16] = v34;
    }

    v37 = 0u;
    v36 = 0u;
    *&buf[24] = 0u;
    sub_46AC8C();
    sub_2360B8();
  }

  sub_4B77B0(a1, &qword_6EA980, 0);
  inAddress = 0x707472755354656ELL;
  LODWORD(inAddress_8) = 0;
  if ((*(*a1 + 16))(a1, &inAddress))
  {
    *buf = 0;
    (*(*a1 + 48))(a1, &inAddress, 0, 0, 4, buf);
  }

  *&v32.mSelector = 0x6F7574706D757465;
  v32.mElement = 5;
  if ((*(*a1 + 16))(a1, &v32))
  {
    *buf = 1;
    (*(*a1 + 48))(a1, &v32, 0, 0, 4, buf);
  }

  v30 = 0x676C6F624D434373;
  v31 = 0;
  if ((*(*a1 + 16))(a1, &v30))
  {
    theDict[0] = 0;
    v24 = 8;
    (*(*a1 + 40))(a1, &v30, 0, 0, &v24, theDict);
    v11 = theDict[0];
    if (!theDict[0])
    {
      v21 = sub_5544(14);
      v22 = *v21;
      if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 490;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [maxChannelInfo is NULL]: Invalid Maximum Channel Info", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid Maximum Channel Info");
    }

    v33[0] = theDict[0];
    LOWORD(v33[1]) = 1;
    if (CFDictionaryContainsKey(theDict[0], @"MaxInputChannelCount"))
    {
      if ((sub_2E7334(v11, @"MaxInputChannelCount", a1 + 225) & 1) == 0)
      {
        v12 = sub_5544(18);
        v13 = *v12;
        if (*v12)
        {
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "Device_HPMic_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 497;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to convert max num input channels to UInt32", buf, 0x12u);
          }
        }
      }

      v14 = sub_5544(18);
      if (*(v14 + 8))
      {
        v15 = *v14;
        if (*v14)
        {
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
          {
            v16 = a1[225];
            *buf = 136315650;
            *&buf[4] = "Device_HPMic_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 501;
            *&buf[18] = 1024;
            *&buf[20] = v16;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Codec specified a maximum number of input channels: %u", buf, 0x18u);
          }
        }
      }
    }

    sub_A1D30(v33);
  }

  if (_os_feature_enabled_impl())
  {
    v17 = sub_46AC8C();
    (*(*a1 + 408))(a1, v17 + 96, 1);
  }

  v18 = *(a1 + 10);
  v19 = *(a1 + 11);
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 125);
  operator new();
}

uint64_t *sub_327A9C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_327AF0(uint64_t a1)
{
  v9 = a1;
  v1 = *(a1 + 8);
  if (v1 && *(v1 + 8) != -1)
  {
    std::mutex::lock((*(a1 + 16) + 936));
    memset(&v10, 0, sizeof(v10));
    *buf = xmmword_5172F0;
    operator new();
  }

  v2 = sub_5544(18);
  v3 = sub_5544(29);
  v4 = 0;
  *buf = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&buf[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_10:
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_HPMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 851;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Repaired mic check updated for expired HPMic device, ignoring.", buf, 0x12u);
  }

  return sub_327A9C(&v9);
}

void sub_328118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v25);
  if (__p)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v26 + 936));
  sub_327A9C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_3281D0(uint64_t a1, double a2)
{
  v17 = a2;
  v4 = sub_4AF738(a1, a2);
  (*(*a1 + 200))(buf, a1);
  if (*&buf[8])
  {
    v5 = std::__shared_weak_count::lock(*&buf[8]);
    if (v5)
    {
      v6 = *buf;
    }

    else
    {
      v6 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    v15 = 0x676C6F62616F7372;
    v16 = 0;
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && (*(*v6 + 16))(v6, &v15))
    {
      v8 = sub_5544(18);
      v9 = sub_5544(37);
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
          goto LABEL_19;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_19:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 527;
        v19 = 2048;
        v20 = a2;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Informing AOP of Codec sample rate %f Hz", buf, 0x1Cu);
      }

      (*(*v6 + 48))(v6, &v15, 0, 0, 8, &v17);
    }

    if (v5)
    {
      sub_1A8C0(v5);
    }
  }

  return v4;
}

void sub_328400(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_328424(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *a2;
      v12 = a2[2];
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_3285D8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v53 = sub_5544(14);
    if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v55 = sub_5544(14);
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91);
    }

    v56 = __cxa_allocate_exception(0x10uLL);
    *v56 = &off_6DDDD0;
    v56[2] = 561211770;
  }

  if (!a6)
  {
    v57 = sub_5544(14);
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91);
    }

    v58 = __cxa_allocate_exception(0x10uLL);
    *v58 = &off_6DDDD0;
    v58[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1685483629)
  {
    switch(v12)
    {
      case 1162046576:
        v17 = *a6;
        v18 = sub_5544(18);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "Device_HPMic_Aspen.cpp";
          v84 = 1024;
          v85 = 365;
          v86 = 1024;
          LODWORD(v87) = v17;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyCodecLowPowerModeEnable = %u.", &buf, 0x18u);
        }

        break;
      case 1162701936:
        v20 = *a6;
        v21 = sub_5544(18);
        v22 = *v21;
        if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "Device_HPMic_Aspen.cpp";
          v84 = 1024;
          v85 = 377;
          v86 = 1024;
          LODWORD(v87) = v20;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyMicrophoneLowPowerModeEnable = %u.", &buf, 0x18u);
        }

        break;
      case 1634759542:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v63 = sub_5544(14);
          if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
          {
            v90.__cv_.__sig = *a2;
            *v90.__cv_.__opaque = *(a2 + 8);
            sub_22CE0(&v91);
          }

          v64 = __cxa_allocate_exception(0x10uLL);
          *v64 = &off_6DDDD0;
          v64[2] = 561211770;
        }

        v14 = *(a2 + 4);
        buf.mSelector = 1987013732;
        buf.mScope = v14;
        buf.mElement = 0;
        (*(*a1 + 48))(a1, &buf, a3, a4, a5, a6);
        return;
      default:
        goto LABEL_33;
    }

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (v12 > 1836414052)
  {
    if (v12 == 1836414053)
    {
      if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
      {
        v61 = sub_5544(14);
        if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
        {
          v90.__cv_.__sig = *a2;
          *v90.__cv_.__opaque = *(a2 + 8);
          sub_22CE0(&v91);
        }

        v62 = __cxa_allocate_exception(0x10uLL);
        *v62 = &off_6DDDD0;
        v62[2] = 561211770;
      }
    }

    else if (v12 == 1987013732 && (*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v15 = sub_5544(14);
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v90.__cv_.__sig = *a2;
        *v90.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v91);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = &off_6DDDD0;
      v16[2] = 561211770;
    }

    goto LABEL_33;
  }

  if (v12 == 1685483630)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v59 = sub_5544(14);
      if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
      {
        v90.__cv_.__sig = *a2;
        *v90.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v91);
      }

      v60 = __cxa_allocate_exception(0x10uLL);
      *v60 = &off_6DDDD0;
      v60[2] = 561211770;
    }

    *(a1 + 904) = *a6 != 0;
    return;
  }

  if (v12 != 1768255076)
  {
LABEL_33:

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (__PAIR64__(*(a2 + 4), 1768255076) == qword_6EA9B0 && *(a2 + 8) == dword_6EA9B8)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v65 = sub_5544(14);
      if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
      {
        v90.__cv_.__sig = *a2;
        *v90.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v91);
      }

      v66 = __cxa_allocate_exception(0x10uLL);
      *v66 = &off_6DDDD0;
      v66[2] = 561211770;
    }

    v13 = *a6;
    if (v13)
    {
      if (atomic_fetch_add((a1 + 908), 1u))
      {
        return;
      }
    }

    else
    {
      if (!atomic_load((a1 + 908)))
      {
        v67 = sub_5544(14);
        v68 = *v67;
        if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
        {
          buf.mSelector = 136315394;
          *&buf.mScope = "Device_HPMic_Aspen.cpp";
          v84 = 1024;
          v85 = 404;
          _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Attempt to power off the built-in mic when mMicPowerOnCount is 0.", &buf, 0x12u);
        }

        v69 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v69, "Attempt to power off the built-in mic when mMicPowerOnCount is 0.");
      }

      if (atomic_fetch_add((a1 + 908), 0xFFFFFFFF) != 1)
      {
        return;
      }
    }

    v26 = sub_5544(18);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
    {
      v28 = "dis";
      *&buf.mScope = "Device_HPMic_Aspen.cpp";
      buf.mSelector = 136315650;
      if (v13)
      {
        v28 = "en";
      }

      v84 = 1024;
      v85 = 410;
      v86 = 2080;
      v87 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%25s:%-5d Non-redundant requesting to %sable microphone power. Calling the HAL.", &buf, 0x1Cu);
    }

    v29 = *(a1 + 268);
    inData = v13 != 0;
    v30 = sub_5544(14);
    if ((*(v30 + 8) & 1) != 0 && *v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91);
    }

    buf = *a2;
    if (AudioObjectHasProperty(v29, &buf))
    {
      memset(v91.__m_.__opaque, 0, sizeof(v91.__m_.__opaque));
      v90.__cv_.__sig = 1018212795;
      memset(v90.__cv_.__opaque, 0, sizeof(v90.__cv_.__opaque));
      v91.__m_.__sig = 850045863;
      v82 = 0;
      sub_745E8(v81, v29, a2, &v90, &v91, &v82);
      v76 = v29;
      v77 = *a2;
      v78 = *(a2 + 8);
      v79 = a3;
      v80 = a4;
      buf = *a2;
      if (!sub_66E40(v29, &buf))
      {
        v35 = sub_5544(14);
        if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          v73 = *a2;
          v74 = *(a2 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_118;
      }

      v31 = sub_32A0F0(&v76);
      if (!HIDWORD(v31) && inData == v31)
      {
        v32 = sub_5544(14);
        if ((*(v32 + 8) & 1) == 0)
        {
          goto LABEL_118;
        }

        v33 = *v32;
        if (!*v32 || !os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_118;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v84 = 1024;
        v85 = 294;
        v86 = 1024;
        LODWORD(v87) = v29;
LABEL_62:
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_118:
        sub_73C20(v81);
        std::condition_variable::~condition_variable(&v90);
        std::mutex::~mutex(&v91);
        return;
      }

      v36 = sub_5544(14);
      if ((*(v36 + 8) & 1) != 0 && *v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
      {
        v73 = *a2;
        v74 = *(a2 + 8);
        sub_22CE0(__p);
      }

      buf = *a2;
      v37 = AudioObjectSetPropertyData(v29, &buf, a3, a4, 4u, &inData);
      if (v37)
      {
        v38 = sub_5544(14);
        if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v37);
          v71 = *a2;
          v72 = *(a2 + 8);
          sub_22CE0(&v73);
        }

        goto LABEL_118;
      }

      v39 = sub_32A0F0(&v76);
      if (!HIDWORD(v39) && inData == v39)
      {
        v40 = sub_5544(14);
        if ((*(v40 + 8) & 1) == 0)
        {
          goto LABEL_118;
        }

        v33 = *v40;
        if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_118;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v84 = 1024;
        v85 = 322;
        v86 = 1024;
        LODWORD(v87) = v29;
        goto LABEL_62;
      }

      v41 = 2000;
LABEL_84:
      v42 = sub_32A0F0(&v76);
      if (HIDWORD(v42))
      {
        goto LABEL_118;
      }

      if (inData == v42)
      {
        v51 = sub_5544(14);
        if ((*(v51 + 8) & 1) != 0 && *v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
        {
          v73 = *a2;
          v74 = *(a2 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_118;
      }

      if (v41 <= 0)
      {
        v52 = sub_5544(14);
        if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
        {
          v73 = *a2;
          v74 = *(a2 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_118;
      }

      v43.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v44 = sub_5544(14);
      if (*(v44 + 8))
      {
        v45 = *v44;
        if (*v44)
        {
          if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315906;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v84 = 1024;
            v85 = 354;
            v86 = 2080;
            v87 = "with timeout";
            v88 = 1024;
            v89 = v29;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
          }
        }
      }

      sub_27A4();
      LOBYTE(__p[0]) = sub_2E6B08();
      *&buf.mSelector = &v91;
      LOBYTE(buf.mElement) = 1;
      std::mutex::lock(&v91);
      v46.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
      while (1)
      {
        if ((v82 & 1) != 0 || v46.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
        {
LABEL_108:
          if (LOBYTE(buf.mElement) == 1)
          {
            std::mutex::unlock(*&buf.mSelector);
          }

          sub_1DB4C4(__p);
          v41 += (std::chrono::system_clock::now().__d_.__rep_ - v43.__d_.__rep_) / -1000;
          goto LABEL_84;
        }

        v47.__d_.__rep_ = v46.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v47.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_107:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v46.__d_.__rep_)
        {
          goto LABEL_108;
        }
      }

      std::chrono::steady_clock::now();
      v48.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v48.__d_.__rep_)
      {
        v49 = 0;
        goto LABEL_105;
      }

      if (v48.__d_.__rep_ < 1)
      {
        if (v48.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v49 = 0x8000000000000000;
          goto LABEL_105;
        }
      }

      else if (v48.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v49 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_103;
      }

      v49 = 1000 * v48.__d_.__rep_;
LABEL_103:
      if (v49 > (v47.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v50.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_106:
        std::condition_variable::__do_timed_wait(&v90, &buf, v50);
        std::chrono::steady_clock::now();
        goto LABEL_107;
      }

LABEL_105:
      v50.__d_.__rep_ = v49 + v47.__d_.__rep_;
      goto LABEL_106;
    }

    v34 = sub_5544(14);
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91);
    }
  }

  else
  {
    v23 = sub_5544(18);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_HPMic_Aspen.cpp";
      v84 = 1024;
      v85 = 419;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown property address using selector kAppleEmbeddedAudio_DevicePropertyInputEnableDevice. Ignoring.", &buf, 0x12u);
    }
  }
}

void sub_32A00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v17 - 216));
  std::mutex::~mutex((v17 - 168));
  _Unwind_Resume(a1);
}

unint64_t sub_32A0F0(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
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

void sub_32A29C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_32A2BC(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  if (!a6)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 > 1685483629)
  {
    if (v12 == 1685483630)
    {
      v18 = sub_5544(18);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, *a2);
        v20 = v36 >= 0 ? &__p : *&__p.mSelector;
        *buf = 136315650;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        v38 = 1024;
        v39 = 320;
        v40 = 2080;
        v41 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property '%s' is write-only", buf, 0x1Cu);
        if (v36 < 0)
        {
          operator delete(*&__p.mSelector);
        }
      }

      *a5 = 0;
    }

    else
    {
      if (v12 != 1835103844)
      {
LABEL_13:

        sub_5C0D8(a1, a2, a3, a4, a5, a6);
        return;
      }

      v15 = *a5;
      if (v15 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v29 = sub_5544(14);
        if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          v33 = *a2;
          v34 = *(a2 + 2);
          sub_22CE0(&__p);
        }

        v30 = __cxa_allocate_exception(0x10uLL);
        *v30 = &off_6DDDD0;
        v30[2] = 561211770;
      }

      __p.mSelector = 1986290211;
      *&__p.mScope = *(a2 + 4);
      LODWORD(v33) = 16;
      sub_5C0D8(a1, &__p, 0, 0, &v33, buf);
      v16 = *buf;
      *a6 = v16;
    }
  }

  else
  {
    if (v12 != 1064725619)
    {
      if (v12 == 1634759542)
      {
        v13 = *a5;
        if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v27 = sub_5544(14);
          if (*v27)
          {
            if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
            {
              v33 = *a2;
              v34 = *(a2 + 2);
              sub_22CE0(&__p);
            }
          }

          v28 = __cxa_allocate_exception(0x10uLL);
          *v28 = &off_6DDDD0;
          v28[2] = 561211770;
        }

        v14 = *(a2 + 1);
        *buf = 1987013732;
        *&buf[4] = v14;
        *&buf[8] = 0;
        (*(*a1 + 40))(a1, buf, a3, a4, a5, a6);
        return;
      }

      goto LABEL_13;
    }

    v17 = *a5;
    if (v17 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v31 = sub_5544(14);
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        v33 = *a2;
        v34 = *(a2 + 2);
        sub_22CE0(&__p);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = &off_6DDDD0;
      v32[2] = 561211770;
    }

    *a6 = 1;
  }
}

void sub_32AD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_32AD9C(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_27:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *&a2->mSelector;
      v18 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_27;
  }

  mSelector = a2->mSelector;
  result = 4;
  if (a2->mSelector <= 1835103843)
  {
    if (mSelector == 1064725619 || mSelector == 1634759542)
    {
      return result;
    }

    v10 = 1685483630;
  }

  else
  {
    if (mSelector > 1986290210)
    {
      if (mSelector == 1987013732)
      {
        return result;
      }

      if (mSelector == 1986290211)
      {
        return 16;
      }

      goto LABEL_16;
    }

    if (mSelector == 1835103844)
    {
      return result;
    }

    v10 = 1986229104;
  }

  if (mSelector == v10)
  {
    return result;
  }

LABEL_16:

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_32B12C(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  v3 = 1;
  if (a2->mSelector <= 1685483629)
  {
    if (mSelector != 1064725619)
    {
      if (mSelector != 1634759542)
      {
        return sub_BE734(a1, a2);
      }

      return v3;
    }

    return 0;
  }

  if (mSelector == 1685483630)
  {
    return v3;
  }

  if (mSelector == 1835103844)
  {
    return 0;
  }

  return sub_BE734(a1, a2);
}

uint64_t sub_32B198(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    goto LABEL_11;
  }

  result = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector == 1685483630 || mSelector == 1835103844)
    {
      return result;
    }

LABEL_11:
    sub_4DFC0(a1);
    return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
  }

  if (mSelector == 1064725619)
  {
    return a2->mScope == 1869968496;
  }

  if (mSelector != 1634759542)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_32B29C(uint64_t a1)
{
  sub_32B2D4(a1);

  operator delete();
}

uint64_t sub_32B2D4(uint64_t a1)
{
  *a1 = off_6C1D20;
  v2 = *(a1 + 1000);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::mutex::~mutex((a1 + 936));
  v3 = *(a1 + 912);
  if (v3)
  {
    *(a1 + 920) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 880);
  *(a1 + 880) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_13A300(a1 + 536);

  return sub_4B2820(a1);
}

uint64_t sub_32B384(uint64_t a1, UInt32 a2, uint64_t a3)
{
  v6 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v6 = off_6C1D20;
  sub_165D0C((v6 + 67));
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 != 1)
  {
    *inAddress = &inAddress[8];
    *&inAddress[8] = 0;
    v24[0] = 0;
    v24[1] = 0;
    *&inAddress[16] = 0;
    v23 = v24;
    sub_407194(inAddress, 0x706D6269u, 1768778083);
    sub_407194(inAddress, 0x706D6269u, 1768778033);
    sub_407194(inAddress, 0x706D7769u, 1701669219);
    sub_407194(inAddress, 0x70747469u, 1701669219);
    sub_40736C(inAddress, 0x656D6963u, 1886222185);
    sub_40736C(inAddress, 0x656D6963u, 1886680169);
    sub_40736C(inAddress, 0x696D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6931u, 1886216809);
    sub_40736C(inAddress, 0x736D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6932u, 1886216809);
    sub_40736C(inAddress, 0x6C6D6963u, 1886216809);
    sub_40736C(inAddress, 0x666D6963u, 1886216809);
    sub_40736C(inAddress, 0x6265616Du, 1886216809);
    operator new();
  }

  *(a1 + 880) = 0;
  *(a1 + 888) = sub_46AC8C();
  *(a1 + 896) = 0;
  *(a1 + 900) = 2;
  *(a1 + 904) = 0;
  *(a1 + 932) = 0;
  *(a1 + 916) = 0;
  *(a1 + 924) = 0;
  *(a1 + 908) = 0;
  *(a1 + 936) = 850045863;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1000) = dispatch_queue_create("Repaired Mic Check Queue", 0);
  if (!a2)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_HPMic_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 163;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

    goto LABEL_18;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_HPMic_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 164;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_28;
  }

  v8 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v8, &qword_6EA9B0))
  {
    v9 = (*(*a1 + 120))(a1);
    inData = 0;
    strcpy(inAddress, "dneitpni");
    inAddress[9] = 0;
    *&inAddress[10] = 0;
    v10 = AudioObjectSetPropertyData(v9, inAddress, 0, 0, 4u, &inData);
    if (v10)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = &off_6DDDD0;
      v18[2] = v10;
    }

    if (atomic_load((a1 + 908)))
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *inAddress = 136315394;
        *&inAddress[4] = "Device_HPMic_Aspen.cpp";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 172;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Postcondition failure.");
LABEL_28:
    }
  }

  return a1;
}

void sub_32B910(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_709640);
  sub_13A300(v1 + 536);
  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_32BA1C(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6EA9B0);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_HPMic_Aspen.cpp";
        v8 = 1024;
        v9 = 101;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting HPMic power to be disabled.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 0;
    return sub_2C152C(v5);
  }

  return result;
}

uint64_t sub_32BB28(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6EA9B0);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_HPMic_Aspen.cpp";
        v8 = 1024;
        v9 = 89;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting HPMic power to be enabled.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 1;
    return sub_2C152C(v5);
  }

  return result;
}

void sub_32BC78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C1F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_32BCEC(uint64_t a1, int a2)
{
  v3 = sub_5544(18);
  v4 = *v3;
  if (*v3)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "Device_USB_iAP_Aspen.cpp";
      v7 = 1024;
      v8 = 420;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d stream ID = %u", &v5, 0x18u);
    }
  }

  operator new();
}

void sub_32BE2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_32BE74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C21C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_32BEE8(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886745455)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_USB_iAP_Aspen.cpp";
      v14 = 1024;
      v15 = 407;
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
      v13 = "Device_USB_iAP_Aspen.cpp";
      v14 = 1024;
      v15 = 408;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_32C0BC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = sub_5544(18);
    v5 = sub_5544(38);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_8:
    v9 = sub_5544(37);
    v10 = 0;
    *buf = 0x100000002;
    v11 = *(v4 + 8);
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
        goto LABEL_14;
      }
    }

    if ((v11 & v12) == 0)
    {
      v4 = v9;
    }

LABEL_14:
    v13 = *v4;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 382;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting sample rate from USB HAL device.", buf, 0x12u);
    }

    outData = 0.0;
    ioDataSize = 8;
    v14 = (*(*a1 + 120))(a1);
    PropertyData = AudioObjectGetPropertyData(v14, &qword_6EAA38, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v16 = sub_5544(18);
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          v42 = 1024;
          v43 = 386;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d HAL reported an error attempting to get the sample rate.", buf, 0x12u);
        }
      }
    }

    v18 = sub_5544(18);
    v19 = sub_5544(38);
    v20 = 0;
    *buf = 0x100000002;
    v21 = *(v18 + 8);
    while (1)
    {
      v22 = *&buf[v20];
      if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
      {
        break;
      }

      v20 += 4;
      if (v20 == 8)
      {
        goto LABEL_27;
      }
    }

    if ((v21 & v22) == 0)
    {
      v18 = v19;
    }

LABEL_27:
    v23 = sub_5544(37);
    v24 = 0;
    *buf = 0x100000002;
    v25 = *(v18 + 8);
    while (1)
    {
      v26 = *&buf[v24];
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        goto LABEL_33;
      }
    }

    if ((v25 & v26) == 0)
    {
      v18 = v23;
    }

LABEL_33:
    v27 = *v18;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = (*(*a1 + 120))(a1);
      *buf = 136315906;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 387;
      v44 = 1024;
      LODWORD(v45[0]) = v28;
      WORD2(v45[0]) = 2048;
      *(v45 + 6) = outData;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d USB HAL device %u reported a sample rate of %f.", buf, 0x22u);
    }

    if (!PropertyData)
    {
      v29 = sub_5544(18);
      v30 = sub_5544(38);
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
          goto LABEL_43;
        }
      }

      if ((v32 & v33) == 0)
      {
        v29 = v30;
      }

LABEL_43:
      v34 = sub_5544(37);
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
          goto LABEL_49;
        }
      }

      if ((v36 & v37) == 0)
      {
        v29 = v34;
      }

LABEL_49:
      v38 = *v29;
      if (v38)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          v42 = 1024;
          v43 = 391;
          v44 = 2048;
          *v45 = outData;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling SetSampleRate() to value reported by USB HAL device (%f).", buf, 0x1Cu);
        }
      }

      sub_32C584(a1, 0, outData);
    }
  }
}

void sub_32C584(uint64_t a1, int a2, double a3)
{
  v6 = sub_5544(18);
  v7 = sub_5544(38);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_7:
  v11 = sub_5544(37);
  v13 = 0;
  *buf = 0x100000002;
  v14 = *(v6 + 8);
  while (1)
  {
    v15 = *&buf[v13];
    if (((v14 & v15) != 0) != ((*(v11 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_13;
    }
  }

  if ((v14 & v15) == 0)
  {
    v6 = v11;
  }

LABEL_13:
  v16 = *v6;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v71 = 1024;
    v72 = 500;
    v73 = 2048;
    *v74 = a3;
    *&v74[8] = 1024;
    *&v74[10] = a2;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Entered Device_USB_iAP_Aspen::SetSampleRate(sampleRate %f, synchronous %u).", buf, 0x22u);
  }

  v12.n128_u64[0] = 0;
  if (a3 >= 0.0)
  {
    v12.n128_f64[0] = a3;
  }

  if (a3 <= 4294967300.0)
  {
    v17 = v12.n128_f64[0];
  }

  else
  {
    v17 = 4294967300.0;
  }

  inData = v17;
  v18 = (*(*a1 + 104))(a1, v12);
  v19 = sub_5544(18);
  v20 = sub_5544(38);
  v21 = 0;
  *buf = 0x100000002;
  v22 = *(v19 + 8);
  while (1)
  {
    v23 = *&buf[v21];
    if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
    {
      break;
    }

    v21 += 4;
    if (v21 == 8)
    {
      goto LABEL_27;
    }
  }

  if ((v22 & v23) == 0)
  {
    v19 = v20;
  }

LABEL_27:
  v24 = sub_5544(37);
  v25 = 0;
  *buf = 0x100000002;
  v26 = *(v19 + 8);
  while (1)
  {
    v27 = *&buf[v25];
    if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
    {
      break;
    }

    v25 += 4;
    if (v25 == 8)
    {
      goto LABEL_33;
    }
  }

  if ((v26 & v27) == 0)
  {
    v19 = v24;
  }

LABEL_33:
  v28 = *v19;
  if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v71 = 1024;
    v72 = 509;
    v73 = 1024;
    *v74 = v17;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling IAPManager::SetSampleRateForUSB() with %u", buf, 0x18u);
  }

  if (!sub_3435DC(v17))
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v71 = 1024;
      v72 = 511;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): IAPDigitalAudioSetSampleRate() failed.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
LABEL_95:
  }

  if (v17 != v18)
  {
    v29 = sub_5544(18);
    v30 = sub_5544(38);
    v31 = 0;
    if (a2)
    {
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
          goto LABEL_49;
        }
      }

      if ((v32 & v33) == 0)
      {
        v29 = v30;
      }

LABEL_49:
      v36 = sub_5544(37);
      v37 = 0;
      *buf = 0x100000002;
      v38 = *(v29 + 8);
      while (1)
      {
        v39 = *&buf[v37];
        if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
        {
          break;
        }

        v37 += 4;
        if (v37 == 8)
        {
          goto LABEL_61;
        }
      }

      if ((v38 & v39) == 0)
      {
        v29 = v36;
      }

LABEL_61:
      v44 = *v29;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        v45 = (*(*a1 + 120))(a1);
        *buf = 136315906;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 519;
        v73 = 1024;
        *v74 = v45;
        *&v74[4] = 2048;
        *&v74[6] = v17;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling Device_HAL_Common::SetSampleRateSynchronously() on USB HAL device %u with rate %f.", buf, 0x22u);
      }

      v46 = sub_4AF738(a1, v17);
      if (v46)
      {
        v47 = v46;
        v48 = sub_5544(14);
        v49 = *v48;
        if (!*v48 || !os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *buf = 136315394;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 521;
        v50 = "%25s:%-5d EXCEPTION (status) [error status is an error]: Device_HAL_Common::SetSampleRateSynchronously() failed to set sample rate.";
LABEL_93:
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, v50, buf, 0x12u);
LABEL_94:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = v47;
        goto LABEL_95;
      }
    }

    else
    {
      *buf = 0x100000002;
      v34 = *(v29 + 8);
      while (1)
      {
        v35 = *&buf[v31];
        if (((v34 & v35) != 0) != ((*(v30 + 8) & v35) != 0))
        {
          break;
        }

        v31 += 4;
        if (v31 == 8)
        {
          goto LABEL_55;
        }
      }

      if ((v34 & v35) == 0)
      {
        v29 = v30;
      }

LABEL_55:
      v40 = sub_5544(37);
      v41 = 0;
      *buf = 0x100000002;
      v42 = *(v29 + 8);
      while (1)
      {
        v43 = *&buf[v41];
        if (((v42 & v43) != 0) != ((*(v40 + 8) & v43) != 0))
        {
          break;
        }

        v41 += 4;
        if (v41 == 8)
        {
          goto LABEL_70;
        }
      }

      if ((v42 & v43) == 0)
      {
        v29 = v40;
      }

LABEL_70:
      v51 = *v29;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        v52 = (*(*a1 + 120))(a1);
        *buf = 136315906;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 525;
        v73 = 1024;
        *v74 = v52;
        *&v74[4] = 2048;
        *&v74[6] = v17;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling AudioObjectSetPropertyData() on USB HAL device %u with rate %f.", buf, 0x22u);
      }

      v53 = (*(*a1 + 120))(a1);
      v54 = AudioObjectSetPropertyData(v53, &qword_6EAA38, 0, 0, 8u, &inData);
      if (v54)
      {
        v47 = v54;
        v65 = sub_5544(14);
        v49 = *v65;
        if (!*v65 || !os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *buf = 136315394;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 528;
        v50 = "%25s:%-5d EXCEPTION (status) [error status is an error]: AudioObjectSetPropertyData() failed to set sample rate.";
        goto LABEL_93;
      }
    }
  }

  v55 = sub_5544(18);
  v56 = sub_5544(38);
  v57 = 0;
  *buf = 0x100000002;
  v58 = *(v55 + 8);
  while (1)
  {
    v59 = *&buf[v57];
    if (((v58 & v59) != 0) != ((*(v56 + 8) & v59) != 0))
    {
      break;
    }

    v57 += 4;
    if (v57 == 8)
    {
      goto LABEL_80;
    }
  }

  if ((v58 & v59) == 0)
  {
    v55 = v56;
  }

LABEL_80:
  v60 = sub_5544(37);
  v61 = 0;
  *buf = 0x100000002;
  v62 = *(v55 + 8);
  while (1)
  {
    v63 = *&buf[v61];
    if (((v62 & v63) != 0) != ((*(v60 + 8) & v63) != 0))
    {
      break;
    }

    v61 += 4;
    if (v61 == 8)
    {
      goto LABEL_86;
    }
  }

  if ((v62 & v63) == 0)
  {
    v55 = v60;
  }

LABEL_86:
  v64 = *v55;
  if (v64 && os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v71 = 1024;
    v72 = 532;
    _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "%25s:%-5d Exited Device_USB_iAP_Aspen::SetSampleRate().", buf, 0x12u);
  }
}

void sub_32CE40(uint64_t a1)
{
  sub_4ADCC0(a1);
  v2 = *(a1 + 88);
  __p = *(a1 + 80);
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_32D1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_32D23C(int a1, os_unfair_lock_s *a2)
{
  if (!a2)
  {
    v59 = sub_5544(14);
    v60 = *v59;
    if (*v59)
    {
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 444;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", buf, 0x12u);
      }
    }
  }

  if (a1 == 1684500341)
  {
    v77 = 1886745455;
    v79 = 0;
    outData = 0uLL;
    sub_4625C(&outData, &v77, &outData, 1uLL);
    *buf = outData;
    *&buf[16] = v79;
    strcpy(&buf[24], "cwdv");
    BYTE2(v81) = 0;
    LODWORD(v83) = 3;
    v85[0] = 0;
    v85[1] = 0;
    v84 = v85;
    v86 = 44739242;
    v88 = 0;
    v89 = 0;
    __p = 0;
    sub_161C7C(ioDataSize, a2, buf);
    sub_B0484(&v74, ioDataSize);
    sub_65310(ioDataSize);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v85[0]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v76 != 1)
    {
      v64 = sub_5544(14);
      v65 = *v64;
      if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
      {
        v66 = v76;
        sub_22170(&outData, 0x7075736Fu);
        v67 = SHIBYTE(v79);
        v68 = outData;
        sub_23148(ioDataSize, a2 + 2);
        p_outData = &outData;
        if (v67 < 0)
        {
          p_outData = v68;
        }

        if (v73 >= 0)
        {
          v70 = ioDataSize;
        }

        else
        {
          v70 = *ioDataSize;
        }

        *buf = 136316162;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 457;
        *&buf[18] = 2048;
        *&buf[20] = v66;
        *&buf[28] = 2080;
        v81 = p_outData;
        v82 = 2080;
        v83 = v70;
        _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Found %lu ports of type '%s' in device %s (looking for exactly 1)", buf, 0x30u);
        if (v73 < 0)
        {
          operator delete(*ioDataSize);
        }

        if (SHIBYTE(v79) < 0)
        {
          operator delete(outData);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Found %lu ports of type '%s' in device %s (looking for exactly 1)");
    }

    v5 = *(v75 + 16);
    v4 = *(v75 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (*(*v5 + 152))(v5);
    sub_2AAE6C(v5);
    if (v6 != (*(*v5 + 152))(v5))
    {
      if ((v6 & 1) == 0)
      {
        v7 = sub_5544(18);
        v8 = sub_5544(38);
        v9 = 0;
        *buf = 0x100000002;
        v10 = *(v7 + 8);
        while (1)
        {
          v11 = *&buf[v9];
          if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
          {
            break;
          }

          v9 += 4;
          if (v9 == 8)
          {
            goto LABEL_18;
          }
        }

        if ((v10 & v11) == 0)
        {
          v7 = v8;
        }

LABEL_18:
        v12 = sub_5544(37);
        v13 = 0;
        *buf = 0x100000002;
        v14 = *(v7 + 8);
        while (1)
        {
          v15 = *&buf[v13];
          if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
          {
            break;
          }

          v13 += 4;
          if (v13 == 8)
          {
            goto LABEL_24;
          }
        }

        if ((v14 & v15) == 0)
        {
          v7 = v12;
        }

LABEL_24:
        v16 = *v7;
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 75;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Entered Device_USB_iAP_Aspen::ReconcileSampleRates().", buf, 0x12u);
        }

        v17 = sub_5544(18);
        v18 = sub_5544(38);
        v19 = 0;
        *buf = 0x100000002;
        v20 = *(v17 + 8);
        while (1)
        {
          v21 = *&buf[v19];
          if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
          {
            break;
          }

          v19 += 4;
          if (v19 == 8)
          {
            goto LABEL_33;
          }
        }

        if ((v20 & v21) == 0)
        {
          v17 = v18;
        }

LABEL_33:
        v22 = sub_5544(37);
        v23 = 0;
        *buf = 0x100000002;
        v24 = *(v17 + 8);
        while (1)
        {
          v25 = *&buf[v23];
          if (((v24 & v25) != 0) != ((*(v22 + 8) & v25) != 0))
          {
            break;
          }

          v23 += 4;
          if (v23 == 8)
          {
            goto LABEL_39;
          }
        }

        if ((v24 & v25) == 0)
        {
          v17 = v22;
        }

LABEL_39:
        v26 = *v17;
        if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 79;
          *&buf[18] = 2048;
          *&buf[20] = 0x40E5888000000000;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting iAP and driver to default sample rate of %f kHz.", buf, 0x1Cu);
        }

        sub_32C584(a2, 1, 44100.0);
        v27 = sub_5544(18);
        v28 = sub_5544(38);
        v29 = 0;
        *buf = 0x100000002;
        v30 = v27[1];
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
            goto LABEL_48;
          }
        }

        if ((v30 & v31) == 0)
        {
          v27 = v28;
        }

LABEL_48:
        v32 = sub_5544(37);
        v33 = 0;
        *buf = 0x100000002;
        v34 = v27[1];
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
            goto LABEL_54;
          }
        }

        if ((v34 & v35) == 0)
        {
          v27 = v32;
        }

LABEL_54:
        if (*v27)
        {
          *&outData = 0;
          ioDataSize[0] = 8;
          v36 = (*(*&a2->_os_unfair_lock_opaque + 120))(a2);
          PropertyData = AudioObjectGetPropertyData(v36, &qword_6EAA38, 0, 0, ioDataSize, &outData);
          if (PropertyData)
          {
            v61 = sub_5544(14);
            v62 = *v61;
            if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "Device_USB_iAP_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 88;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: AudioObjectGetPropertyData() failed to get sample rate.", buf, 0x12u);
            }

            v63 = __cxa_allocate_exception(0x10uLL);
            *v63 = &off_6DDDD0;
            v63[2] = PropertyData;
          }

          if (*&outData != 44100.0)
          {
            v38 = sub_5544(18);
            v39 = sub_5544(38);
            v40 = 0;
            *buf = 0x100000002;
            v41 = *(v38 + 8);
            while (1)
            {
              v42 = *&buf[v40];
              if (((v41 & v42) != 0) != ((*(v39 + 8) & v42) != 0))
              {
                break;
              }

              v40 += 4;
              if (v40 == 8)
              {
                goto LABEL_63;
              }
            }

            if ((v41 & v42) == 0)
            {
              v38 = v39;
            }

LABEL_63:
            v43 = sub_5544(37);
            v44 = 0;
            *buf = 0x100000002;
            v45 = *(v38 + 8);
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
                goto LABEL_69;
              }
            }

            if ((v45 & v46) == 0)
            {
              v38 = v43;
            }

LABEL_69:
            v47 = *v38;
            if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "Device_USB_iAP_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 89;
              *&buf[18] = 2048;
              *&buf[20] = 0x40E5888000000000;
              *&buf[28] = 1024;
              LODWORD(v81) = *&outData;
              _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d iAP USB: Driver sample rate was not successfully set. target: %f; actual: %u", buf, 0x22u);
            }
          }
        }

        v48 = sub_5544(18);
        v49 = sub_5544(38);
        v50 = 0;
        *buf = 0x100000002;
        v51 = *(v48 + 8);
        while (1)
        {
          v52 = *&buf[v50];
          if (((v51 & v52) != 0) != ((*(v49 + 8) & v52) != 0))
          {
            break;
          }

          v50 += 4;
          if (v50 == 8)
          {
            goto LABEL_78;
          }
        }

        if ((v51 & v52) == 0)
        {
          v48 = v49;
        }

LABEL_78:
        v53 = sub_5544(37);
        v54 = 0;
        *buf = 0x100000002;
        v55 = *(v48 + 8);
        while (1)
        {
          v56 = *&buf[v54];
          if (((v55 & v56) != 0) != ((*(v53 + 8) & v56) != 0))
          {
            break;
          }

          v54 += 4;
          if (v54 == 8)
          {
            goto LABEL_84;
          }
        }

        if ((v55 & v56) == 0)
        {
          v48 = v53;
        }

LABEL_84:
        v57 = *v48;
        if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 92;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Exited Device_USB_iAP_Aspen::ReconcileSampleRates().", buf, 0x12u);
        }
      }

      v58 = sub_809C0();
      *buf = v5;
      *&buf[8] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_257CE8(v58, buf);
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    if (v4)
    {
      sub_1A8C0(v4);
    }

    sub_87980(&v74);
  }
}

void sub_32DC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  sub_87980(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_32DD14(uint64_t a1, double a2)
{
  v4 = sub_5544(18);
  v5 = sub_5544(37);
  v6 = 0;
  *v11 = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&v11[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 136315650;
    *&v11[4] = "Device_USB_iAP_Aspen.cpp";
    v12 = 1024;
    v13 = 355;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting iAP sample rate to %f Hz", v11, 0x1Cu);
  }

  sub_32C584(a1, 1, a2);
  return 0;
}

void sub_32DE60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x32DE2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_32DE90(uint64_t a1)
{
  v2 = sub_5544(18);
  v3 = sub_5544(38);
  v4 = 0;
  *buf = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&buf[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_7:
  v7 = sub_5544(37);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v2 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_13;
    }
  }

  if ((v9 & v10) == 0)
  {
    v2 = v7;
  }

LABEL_13:
  v11 = *v2;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v42 = 1024;
    v43 = 336;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Entered Device_USB_iAP_Aspen::GetSampleRate().", buf, 0x12u);
  }

  outData = 0;
  ioDataSize = 8;
  v12 = (*(*a1 + 120))(a1);
  PropertyData = AudioObjectGetPropertyData(v12, &qword_6EAA38, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v35 = PropertyData;
    v36 = sub_5544(14);
    v37 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 342;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: AudioObjectGetPropertyData() failed to get sample rate.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v35;
  }

  v14 = sub_5544(18);
  v15 = sub_5544(38);
  v16 = 0;
  *buf = 0x100000002;
  v17 = *(v14 + 8);
  while (1)
  {
    v18 = *&buf[v16];
    if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
    {
      break;
    }

    v16 += 4;
    if (v16 == 8)
    {
      goto LABEL_23;
    }
  }

  if ((v17 & v18) == 0)
  {
    v14 = v15;
  }

LABEL_23:
  v19 = sub_5544(37);
  v20 = 0;
  *buf = 0x100000002;
  v21 = *(v14 + 8);
  while (1)
  {
    v22 = *&buf[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_29;
    }
  }

  if ((v21 & v22) == 0)
  {
    v14 = v19;
  }

LABEL_29:
  v23 = *v14;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = (*(*a1 + 120))(a1);
    *buf = 136315906;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v42 = 1024;
    v43 = 343;
    v44 = 1024;
    v45 = v24;
    v46 = 2048;
    v47 = outData;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d USB HAL device %u reports a sample rate of %f.", buf, 0x22u);
  }

  v25 = sub_5544(18);
  v26 = sub_5544(38);
  v27 = 0;
  *buf = 0x100000002;
  v28 = *(v25 + 8);
  while (1)
  {
    v29 = *&buf[v27];
    if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
    {
      break;
    }

    v27 += 4;
    if (v27 == 8)
    {
      goto LABEL_38;
    }
  }

  if ((v28 & v29) == 0)
  {
    v25 = v26;
  }

LABEL_38:
  v30 = sub_5544(37);
  v31 = 0;
  *buf = 0x100000002;
  v32 = *(v25 + 8);
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
      goto LABEL_44;
    }
  }

  if ((v32 & v33) == 0)
  {
    v25 = v30;
  }

LABEL_44:
  v34 = *v25;
  if (v34)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 345;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Exited Device_USB_iAP_Aspen::GetSampleRate().", buf, 0x12u);
    }
  }
}

unsigned __int8 *sub_32E370(uint64_t a1)
{
  v2 = sub_3419E4();
  sub_341E40(v2, sub_32D23C);
  v3 = sub_3419E4();
  sub_342570(v3, 1684500341, sub_32E3DC);

  return sub_4B08A4(a1);
}

uint64_t sub_32E3DC(uint64_t result, uint64_t a2)
{
  if (result == 1684500341)
  {
    if (!a2)
    {
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          v5 = 136315394;
          v6 = "Device_USB_iAP_Aspen.cpp";
          v7 = 1024;
          v8 = 488;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", &v5, 0x12u);
        }
      }
    }

    result = sub_6FE08(a2 + 536, &qword_6EAA68);
    if (result)
    {
      return sub_6FF5C(a2 + 536, &qword_6EAA68);
    }
  }

  return result;
}

BOOL sub_32E4D8(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  mScope = a2->mScope;
  if (*&a2->mSelector == qword_6EAA48 && a2->mElement == dword_6EAA50 || *&a2->mSelector == qword_6EAA58 && a2->mElement == dword_6EAA60 || *&a2->mSelector == qword_6EAA68 && a2->mElement == dword_6EAA70)
  {
    v14 = v4;
    v15 = v5;
    v12 = *&a2->mSelector;
    mElement = a2->mElement;
    v8 = *&a2->mSelector;
    v9 = a2->mElement;
    v10 = a3;
    v11 = a4;
    sub_185D3C((a1 + 536), &v12, &v8);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_32E5E8(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  v6 = a2[1];
  if (*a2 == qword_6EAA48 && a2[2] == dword_6EAA50 || *a2 == qword_6EAA58 && a2[2] == dword_6EAA60 || *a2 == qword_6EAA68 && a2[2] == dword_6EAA70)
  {
    v14 = v4;
    v15 = v5;
    v12 = *a2;
    v13 = a2[2];
    v8 = *a2;
    v9 = a2[2];
    v10 = a3;
    v11 = a4;
    sub_17C118((a1 + 536), &v12, &v8);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_32E6F8(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v32 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v33 = *&a2->mSelector;
      v37 = a2->mElement;
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  if (!a6)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v34 = *&a2->mSelector;
      v38 = a2->mElement;
      sub_22CE0(__p);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      v35 = *&a2->mSelector;
      v39 = a2->mElement;
      sub_22CE0(__p);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = &off_6DDDD0;
    v28[2] = 1852797029;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1853059699)
  {
    if (mSelector != 1836414053)
    {
      if (mSelector == 1853059619)
      {
        v29 = sub_5544(14);
        v30 = *v29;
        if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "Device_USB_iAP_Aspen.cpp";
          v43 = 1024;
          v44 = 241;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): kAudioDevicePropertyAvailableNominalSampleRates cannot be set (kAudioHardwareUnsupportedOperationError).", buf, 0x12u);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        *v31 = &off_6DDDD0;
        v31[2] = 1970171760;
      }

LABEL_25:

      sub_FDAC4(a1, a2, a3, a4, a5, a6);
      return;
    }

    v16 = sub_3419E4();
    v17 = *a6 != 0;

    sub_34332C(v16, v17);
  }

  else
  {
    if (mSelector != 1853059700)
    {
      if (mSelector == 1987013732)
      {
        v13 = sub_3419E4();
        if (sub_3428D4(v13))
        {
          v14 = (*a6 + 100.0) / 100.0;
          v15 = sub_3419E4();
          sub_342CD8(v15, v14);
          if (sub_6FE08(a1 + 536, &qword_6EAA48))
          {
            sub_6FF5C(a1 + 536, &qword_6EAA48);
          }

          if (sub_6FE08(a1 + 536, &qword_6EAA58))
          {

            sub_6FF5C(a1 + 536, &qword_6EAA58);
          }
        }

        return;
      }

      goto LABEL_25;
    }

    if (a5 != 8)
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19)
      {
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "StandardUtilities.h";
          v43 = 1024;
          v44 = 155;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) == inDataSize", buf, 0x12u);
        }
      }
    }

    v18 = *a6;

    sub_32C584(a1, 0, v18);
  }
}

void sub_32EF70(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v31 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(theArray);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v32 = *&a2->mSelector;
      v35 = a2->mElement;
      sub_22CE0(theArray);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    *v25 = &off_6DDDD0;
    v25[2] = 561211770;
  }

  if (!a6)
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v33 = *&a2->mSelector;
      v36 = a2->mElement;
      sub_22CE0(theArray);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1986229103)
  {
    if (mSelector != 1986229104)
    {
      if (mSelector == 1986290211)
      {
        *a6 = xmmword_517240;
        return;
      }

      if (mSelector == 1987013732)
      {
        v14 = sub_3419E4();
        *a6 = (sub_342A00(v14) * 100.0) + -100.0;
        return;
      }

LABEL_18:

      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      return;
    }

    v17 = sub_3419E4();
    v16 = sub_3428D4(v17);
LABEL_17:
    *a6 = v16;
    return;
  }

  if (mSelector == 1836414053)
  {
    v15 = sub_3419E4();
    v16 = sub_343174(v15);
    goto LABEL_17;
  }

  if (mSelector != 1853059619)
  {
    if (mSelector == 1853059700)
    {
      (*(*a1 + 104))(a1);

      sub_2161C0(a5, a6, v13);
      return;
    }

    goto LABEL_18;
  }

  sub_343744(theArray);
  if (theArray[0] && (Count = CFArrayGetCount(theArray[0]), v19 = Count, Count))
  {
    if (((16 * Count) & 0xFFFFFFFF0uLL) > *a5)
    {
      *a5 = 0;
      v28 = sub_5544(14);
      v29 = *v28;
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "Device_USB_iAP_Aspen.cpp";
        v40 = 1024;
        v41 = 549;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): ioDataSize is insufficient (kAudioHardwareBadPropertySizeError).", buf, 0x12u);
      }

      v30 = __cxa_allocate_exception(0x10uLL);
      *v30 = &off_6DDDD0;
      v30[2] = 561211770;
    }

    v20 = 0;
    *a5 = 16 * Count;
    do
    {
      *buf = 0;
      sub_2E4528(theArray, v20, buf);
      LODWORD(v21) = *buf;
      *&a6[4 * v20++] = vdupq_lane_s64(COERCE__INT64(v21), 0);
    }

    while (v19 != v20);
  }

  else
  {
    *a5 = 0;
  }

  sub_A0804(theArray);
}

void sub_32F62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_A0804(va);
  _Unwind_Resume(a1);
}

uint64_t sub_32F650(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *&a2->mSelector;
      v18 = a2->mElement;
      sub_22CE0(__p);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = &off_6DDDD0;
    v14[2] = 561211770;
  }

  mSelector = a2->mSelector;
  v9 = 4;
  if (a2->mSelector > 1986229103)
  {
    if (mSelector == 1986229104 || mSelector == 1987013732)
    {
      return v9;
    }

    if (mSelector == 1986290211)
    {
      return 16;
    }
  }

  else
  {
    switch(mSelector)
    {
      case 0x6D757465u:
        return v9;
      case 0x6E737223u:
        sub_343744(&theArray);
        if (theArray)
        {
          v9 = 16 * CFArrayGetCount(theArray);
        }

        else
        {
          v9 = 0;
        }

        sub_A0804(&theArray);
        return v9;
      case 0x6E737274u:
        return 8;
    }
  }

  return sub_5BD20(a1, a2, a3, a4);
}

void sub_32FA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A0804(va);
  _Unwind_Resume(a1);
}

BOOL sub_32FA44(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  v3 = 1;
  if (a2->mSelector <= 1986229103)
  {
    if (mSelector == 1836414053)
    {
      return v3;
    }

    if (mSelector != 1853059619)
    {
      if (mSelector != 1853059700)
      {
        return sub_BE734(a1, a2);
      }

      return v3;
    }

    return 0;
  }

  switch(mSelector)
  {
    case 0x76637370u:
      return 0;
    case 0x766F6C64u:
      return v3;
    case 0x76646223u:
      return 0;
  }

  return sub_BE734(a1, a2);
}

BOOL sub_32FAD0(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  result = 1;
  if (a2->mSelector > 1986229103)
  {
    v6 = mSelector == 1986229104 || mSelector == 1986290211;
    v7 = 1987013732;
  }

  else
  {
    v6 = mSelector == 1836414053 || mSelector == 1853059619;
    v7 = 1853059700;
  }

  if (!v6 && mSelector != v7)
  {
    sub_4DFC0(a1);
    return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
  }

  return result;
}

void sub_32FB78(void *a1)
{
  *a1 = off_6C1FD8;
  sub_13A300((a1 + 67));
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_32FBE4(void *a1)
{
  *a1 = off_6C1FD8;
  sub_13A300((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_32FC3C(uint64_t a1, UInt32 a2, __int128 *a3)
{
  v4 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v4 = off_6C1FD8;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0u;
  *(v4 + 856) = 0u;
  *(v4 + 872) = 0;
  sub_165D0C(v4 + 536);
  v5 = sub_3419E4();
  sub_342180(v5, 1684500341, sub_32E3DC, a1);
  return a1;
}

uint64_t sub_32FD18(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886155119 && a2 != 1886155113)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_LDCM_Aspen.cpp";
      v15 = 1024;
      v16 = 111;
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
        v14 = "Device_LDCM_Aspen.cpp";
        v15 = 1024;
        v16 = 112;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_32FEF8(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if (qword_6E8528 != -1)
  {
    dispatch_once(&qword_6E8528, &stru_6BD0C8);
  }

  LOBYTE(v1) = byte_6E8520;
  sub_2BBB5C();
}

void sub_330300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_3303B0(void *a1, AudioObjectID a2, double a3)
{
  v12 = a2;
  inAddress.mSelector = 1936941859;
  *&inAddress.mScope = a3;
  sub_127F10(&v7, &v12, &inAddress, 0, 0);
  v4 = v7;
  if (v7 || (v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = v8;
  sub_46980(a1, v8, v9, (v9 - v8) >> 2);
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_330488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_3304AC(AudioObjectID a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v82.__cv_.__sig = *a2;
    *v82.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v83);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v83.__m_.__opaque, 0, sizeof(v83.__m_.__opaque));
    v83.__m_.__sig = 850045863;
    memset(v82.__cv_.__opaque, 0, sizeof(v82.__cv_.__opaque));
    v82.__cv_.__sig = 1018212795;
    v74 = 0;
    sub_745E8(v73, a1, a2, &v82, &v83, &v74);
    v69 = *a2;
    v7 = *(a2 + 8);
    v68 = a1;
    v70 = v7;
    v71 = 0;
    v72 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        __p = *a2;
        LODWORD(v51) = *(a2 + 8);
        sub_22CE0(&v65);
      }

LABEL_106:
      sub_73C20(v73);
      std::condition_variable::~condition_variable(&v82);
      std::mutex::~mutex(&v83);
      return;
    }

    sub_331310(&v65, &v68);
    if (v67)
    {
      goto LABEL_8;
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    sub_46980(&v62, v65, v66, (v66 - v65) >> 2);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_46980(&v59, *a3, a3[1], (a3[1] - *a3) >> 2);
    v15 = v62;
    v16 = v59;
    if (v63 - v62 == v60 - v59)
    {
      v17 = memcmp(v62, v59, v63 - v62) == 0;
      if (!v16)
      {
LABEL_28:
        if (v15)
        {
          v63 = v15;
          operator delete(v15);
          if (v17)
          {
LABEL_32:
            v18 = sub_5544(14);
            if (*(v18 + 8))
            {
              v12 = *v18;
              if (!*v18)
              {
                goto LABEL_37;
              }

              if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
              {
                buf.mSelector = 136315650;
                *&buf.mScope = "HALPropertySynchronizer.h";
                v76 = 1024;
                v77 = 294;
                v78 = 1024;
                LODWORD(v79) = a1;
                _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
              }
            }

LABEL_36:
            LOBYTE(v12) = 0;
LABEL_37:
            if (v65)
            {
              operator delete(v65);
            }

            if (v12)
            {
              sub_331310(&v65, &v68);
              if (v67)
              {
LABEL_41:
                v39 = 2000;
                while (1)
                {
                  sub_331310(&__p, &v68);
                  v19 = __p;
                  if (v52)
                  {
                    goto LABEL_43;
                  }

                  v47 = 0;
                  v48 = 0;
                  v49 = 0;
                  sub_46980(&v47, __p, v51, (v51 - __p) >> 2);
                  v44 = 0;
                  v45 = 0;
                  v46 = 0;
                  sub_46980(&v44, *a3, a3[1], (a3[1] - *a3) >> 2);
                  v21 = v47;
                  v22 = v44;
                  if (v48 - v47 == v45 - v44)
                  {
                    break;
                  }

                  v23 = 0;
                  if (v44)
                  {
                    goto LABEL_49;
                  }

LABEL_50:
                  if (v21)
                  {
                    v48 = v21;
                    operator delete(v21);
                  }

                  if (v23)
                  {
                    v20 = 16;
                    if (!v19)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_54;
                  }

                  if (v39 <= 0)
                  {
                    v32 = sub_5544(14);
                    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
                    {
                      v40 = *a2;
                      v41 = *(a2 + 8);
                      sub_22CE0(&v42);
                    }

LABEL_43:
                    v20 = 1;
                    if (!v19)
                    {
                      goto LABEL_55;
                    }

LABEL_54:
                    operator delete(v19);
                    goto LABEL_55;
                  }

                  v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                  v25 = sub_5544(14);
                  if (*(v25 + 8))
                  {
                    v26 = *v25;
                    if (*v25)
                    {
                      if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
                      {
                        buf.mSelector = 136315906;
                        *&buf.mScope = "HALPropertySynchronizer.h";
                        v76 = 1024;
                        v77 = 354;
                        v78 = 2080;
                        v79 = "with timeout";
                        v80 = 1024;
                        v81 = a1;
                        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
                      }
                    }
                  }

                  sub_27A4();
                  LOBYTE(v42) = sub_2E6B08();
                  *&buf.mSelector = &v83;
                  LOBYTE(buf.mElement) = 1;
                  std::mutex::lock(&v83);
                  v27.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
                  while ((v74 & 1) == 0 && v27.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
                  {
                    v28.__d_.__rep_ = v27.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
                    if (v28.__d_.__rep_ >= 1)
                    {
                      std::chrono::steady_clock::now();
                      v29.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                      if (v29.__d_.__rep_)
                      {
                        if (v29.__d_.__rep_ < 1)
                        {
                          if (v29.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                          {
                            goto LABEL_73;
                          }

                          v30 = 0x8000000000000000;
                        }

                        else
                        {
                          if (v29.__d_.__rep_ > 0x20C49BA5E353F7)
                          {
                            v30 = 0x7FFFFFFFFFFFFFFFLL;
                            goto LABEL_74;
                          }

LABEL_73:
                          v30 = 1000 * v29.__d_.__rep_;
LABEL_74:
                          if (v30 > (v28.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                          {
                            v31.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_77:
                            std::condition_variable::__do_timed_wait(&v82, &buf, v31);
                            std::chrono::steady_clock::now();
                            goto LABEL_78;
                          }
                        }
                      }

                      else
                      {
                        v30 = 0;
                      }

                      v31.__d_.__rep_ = v30 + v28.__d_.__rep_;
                      goto LABEL_77;
                    }

LABEL_78:
                    if (std::chrono::steady_clock::now().__d_.__rep_ >= v27.__d_.__rep_)
                    {
                      break;
                    }
                  }

                  if (LOBYTE(buf.mElement) == 1)
                  {
                    std::mutex::unlock(*&buf.mSelector);
                  }

                  sub_1DB4C4(&v42);
                  v20 = 0;
                  v39 += (std::chrono::system_clock::now().__d_.__rep_ - v24.__d_.__rep_) / -1000;
                  if (v19)
                  {
                    goto LABEL_54;
                  }

LABEL_55:
                  if (v20)
                  {
                    if (v20 == 16)
                    {
                      v33 = sub_5544(14);
                      if ((*(v33 + 8) & 1) != 0 && *v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
                      {
                        v42 = *a2;
                        v43 = *(a2 + 8);
                        sub_22CE0(&__p);
                      }
                    }

                    goto LABEL_104;
                  }
                }

                v23 = memcmp(v47, v44, v48 - v47) == 0;
                if (!v22)
                {
                  goto LABEL_50;
                }

LABEL_49:
                v45 = v22;
                operator delete(v22);
                goto LABEL_50;
              }

              v56 = 0;
              v57 = 0;
              v58 = 0;
              sub_46980(&v56, v65, v66, (v66 - v65) >> 2);
              v53 = 0;
              v54 = 0;
              v55 = 0;
              sub_46980(&v53, *a3, a3[1], (a3[1] - *a3) >> 2);
              v34 = v56;
              v35 = v53;
              v36 = v57 - v56 == v54 - v53 && memcmp(v56, v53, v57 - v56) == 0;
              if (v35)
              {
                v54 = v35;
                operator delete(v35);
              }

              if (v34)
              {
                v57 = v34;
                operator delete(v34);
                if (!v36)
                {
                  goto LABEL_41;
                }
              }

              else if (!v36)
              {
                goto LABEL_41;
              }

              v37 = sub_5544(14);
              if (*(v37 + 8))
              {
                v38 = *v37;
                if (*v37)
                {
                  if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEBUG))
                  {
                    buf.mSelector = 136315650;
                    *&buf.mScope = "HALPropertySynchronizer.h";
                    v76 = 1024;
                    v77 = 322;
                    v78 = 1024;
                    LODWORD(v79) = a1;
                    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
                  }
                }
              }

LABEL_104:
              if (v65)
              {
                operator delete(v65);
              }
            }

            goto LABEL_106;
          }
        }

        else if (v17)
        {
          goto LABEL_32;
        }

LABEL_8:
        v8 = sub_5544(14);
        if ((*(v8 + 8) & 1) != 0 && *v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v56 = *a2;
          LODWORD(v57) = *(a2 + 8);
          sub_22CE0(&__p);
        }

        buf = *a2;
        v9 = sub_1F79B8(a1, &buf, *a3, a3[1]);
        if (!v9)
        {
          LOBYTE(v12) = 1;
          goto LABEL_37;
        }

        v10 = v9;
        v11 = sub_5544(14);
        v12 = *v11;
        if (!*v11)
        {
          goto LABEL_37;
        }

        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, v10);
          v53 = *a2;
          LODWORD(v54) = *(a2 + 8);
          sub_22CE0(&v56);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v17 = 0;
      if (!v59)
      {
        goto LABEL_28;
      }
    }

    v60 = v16;
    operator delete(v16);
    goto LABEL_28;
  }

  v13 = sub_5544(14);
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    v82.__cv_.__sig = *a2;
    *v82.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v83);
  }
}

void sub_3311E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, AudioObjectPropertySelector a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_73C20(&a61);
  std::condition_variable::~condition_variable((v61 - 216));
  std::mutex::~mutex((v61 - 168));
  _Unwind_Resume(a1);
}

void sub_331310(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v13, a2, buf, v4, *(a2 + 24));
  v5 = v13;
  if (v13)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v5);
        v9 = *v3;
        v10 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v16 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v7 = v14;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v8 = v18;
    *a1 = *buf;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_331510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_331550(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_33158C(uint64_t a1, __int128 *a2, AudioObjectPropertySelector a3)
{
  v3 = sub_331660(a1, a2, 1, a3);
  if (v3)
  {
    v4 = sub_5544(23);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "Stream_USB_iAP_Aspen.cpp";
        v9 = 1024;
        v10 = 159;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v7, 0x12u);
      }
    }
  }

  return v3;
}

uint64_t sub_331660(uint64_t a1, __int128 *a2, int a3, AudioObjectPropertySelector a4)
{
  v8 = *a2;
  v9 = sub_5544(11);
  if (*(v9 + 8))
  {
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v30 = "IAPManager.cpp";
        v31 = 1024;
        v32 = 398;
        v33 = 1024;
        v34 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d +- IAPManager::GetNearestSampleRateForUSB(inSampleRate: %u)", buf, 0x18u);
      }
    }
  }

  v11 = IAPDigitalAudioSupportedSampleRate();
  v12 = sub_5544(11);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v30 = "IAPManager.cpp";
    v31 = 1024;
    v32 = 401;
    v33 = 1024;
    v34 = v8;
    v35 = 1024;
    LODWORD(v36) = v11;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d IAPDigitalAudioSupportedSampleRate(%u) returned %u.", buf, 0x1Eu);
  }

  if (v11 != v8)
  {
    v15 = 560226676;
    v16 = sub_5544(23);
    v17 = *v16;
    if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      return v15;
    }

    *buf = 136315906;
    v30 = "Stream_USB_iAP_Aspen.cpp";
    v31 = 1024;
    v32 = 208;
    v33 = 1024;
    v34 = v8;
    v35 = 1024;
    LODWORD(v36) = v11;
    v18 = "%25s:%-5d Format's sample rate %u Hz is not a supported iAP digital audio rate (nearest is %u Hz)";
    v19 = v17;
    v20 = 30;
LABEL_18:
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    return v15;
  }

  if (!sub_3435DC(v8))
  {
    v15 = 2003329396;
    v21 = sub_5544(23);
    v22 = *v21;
    if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      return v15;
    }

    *buf = 136315394;
    v30 = "Stream_USB_iAP_Aspen.cpp";
    v31 = 1024;
    v32 = 202;
    v18 = "%25s:%-5d Error setting the iAP digital audio sample rate";
    v19 = v22;
    v20 = 18;
    goto LABEL_18;
  }

  if (a3)
  {
    v14 = sub_2ACD60(a1, a2, a4);
  }

  else
  {
    v14 = sub_2ADE94(a1, a2, a4);
  }

  v15 = v14;
  if (v14)
  {
    v23 = sub_5544(23);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v15);
        if (v28 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 136315906;
        v30 = "Stream_USB_iAP_Aspen.cpp";
        v31 = 1024;
        v32 = 198;
        v33 = 1024;
        v34 = v15;
        v35 = 2080;
        v36 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') setting the HAL stream format", buf, 0x22u);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v15;
}

uint64_t sub_3319CC(uint64_t a1, __int128 *a2)
{
  v2 = sub_331660(a1, a2, 1, 0x73666D74u);
  if (v2)
  {
    v3 = sub_5544(23);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "Stream_USB_iAP_Aspen.cpp";
        v8 = 1024;
        v9 = 170;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v6, 0x12u);
      }
    }
  }

  return v2;
}

uint64_t sub_331AA4(uint64_t a1, __int128 *a2, AudioObjectPropertySelector a3)
{
  v3 = sub_331660(a1, a2, 0, a3);
  if (v3)
  {
    v4 = sub_5544(23);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "Stream_USB_iAP_Aspen.cpp";
        v9 = 1024;
        v10 = 148;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v7, 0x12u);
      }
    }
  }

  return v3;
}

uint64_t sub_331B78(uint64_t a1, __int128 *a2)
{
  v2 = sub_331660(a1, a2, 0, 0x73666D74u);
  if (v2)
  {
    v3 = sub_5544(23);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "Stream_USB_iAP_Aspen.cpp";
        v8 = 1024;
        v9 = 137;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v6, 0x12u);
      }
    }
  }

  return v2;
}

uint64_t sub_331C50(uint64_t a1, uint64_t a2, AudioObjectPropertySelector a3)
{
  if (*a2 != *(a2 + 8))
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "Stream_USB_iAP_Aspen.cpp";
      v51 = 1024;
      v52 = 81;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): specified StreamFormatList is not empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "specified StreamFormatList is not empty");
  }

  sub_343744(theArray);
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
    if (!Count)
    {
      v14 = sub_5544(23);
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v50 = "Stream_USB_iAP_Aspen.cpp";
          v51 = 1024;
          v52 = 91;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IAPDigitalAudioCopySupportSampleRates() returned a CFArrayRef with a count of 0", buf, 0x12u);
        }
      }
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = sub_D5304(a1, &v45, a3);
    if (v7)
    {
      v8 = sub_5544(23);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v7);
        v10 = v44 >= 0 ? __p : __p[0];
        v11 = *(a1 + 80);
        *buf = 136316162;
        v50 = "Stream_USB_iAP_Aspen.cpp";
        v51 = 1024;
        v52 = 96;
        v53 = 1024;
        v54 = v7;
        v55 = 2080;
        v56 = v10;
        v57 = 1024;
        v58 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') getting the HAL stream formats for stream %u", buf, 0x28u);
        if (v44 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        LODWORD(__p[0]) = 0;
        if (sub_2E4528(theArray, i, __p))
        {
          v17 = sub_5544(23);
          v18 = *v17;
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v50 = "Stream_USB_iAP_Aspen.cpp";
            v51 = 1024;
            v52 = 107;
            v53 = 1024;
            v54 = __p[0];
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to resolve iAP digital audio sample rate %u Hz to a HAL stream format", buf, 0x18u);
          }

          v19 = v45;
          if (v46 != v45)
          {
            while (LODWORD(__p[0]) < v19[5] || LODWORD(__p[0]) > v19[6])
            {
              v19 += 7;
              if (v19 == v46)
              {
                goto LABEL_46;
              }
            }
          }

          if (v46 != v19)
          {
            v22 = *(a2 + 8);
            v23 = *(a2 + 16);
            if (v22 >= v23)
            {
              v28 = 0x6DB6DB6DB6DB6DB7 * ((v22 - *a2) >> 3);
              v29 = v28 + 1;
              if ((v28 + 1) > 0x492492492492492)
              {
                sub_189A00();
              }

              v30 = 0x6DB6DB6DB6DB6DB7 * ((v23 - *a2) >> 3);
              if (2 * v30 > v29)
              {
                v29 = 2 * v30;
              }

              if (v30 >= 0x249249249249249)
              {
                v31 = 0x492492492492492;
              }

              else
              {
                v31 = v29;
              }

              if (v31)
              {
                sub_2AE238(v31);
              }

              v32 = 56 * v28;
              v33 = *v19;
              v34 = *(v19 + 1);
              v35 = *(v19 + 2);
              *(v32 + 48) = v19[6];
              *(v32 + 16) = v34;
              *(v32 + 32) = v35;
              *v32 = v33;
              v27 = 56 * v28 + 56;
              v36 = *(a2 + 8) - *a2;
              v37 = v32 - v36;
              memcpy((v32 - v36), *a2, v36);
              v38 = *a2;
              *a2 = v37;
              *(a2 + 8) = v27;
              *(a2 + 16) = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              v24 = *v19;
              v25 = *(v19 + 1);
              v26 = *(v19 + 2);
              *(v22 + 48) = v19[6];
              *(v22 + 16) = v25;
              *(v22 + 32) = v26;
              *v22 = v24;
              v27 = v22 + 56;
            }

            *(a2 + 8) = v27;
          }
        }

        else
        {
          v20 = sub_5544(23);
          v21 = *v20;
          if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v50 = "Stream_USB_iAP_Aspen.cpp";
            v51 = 1024;
            v52 = 117;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not convert to a UInt32 array value from the CFArrayRef returned by IAPDigitalAudioCopySupportSampleRates()", buf, 0x12u);
          }
        }

LABEL_46:
        ;
      }
    }

    if (v45)
    {
      operator delete(v45);
    }
  }

  else
  {
    v12 = sub_5544(23);
    v7 = 2003329396;
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "Stream_USB_iAP_Aspen.cpp";
      v51 = 1024;
      v52 = 124;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d IAPDigitalAudioCopySupportSampleRates() returned a NULL CFArrayRef", buf, 0x12u);
    }
  }

  sub_A0804(theArray);
  return v7;
}

void sub_3321F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_A0804(&a19);
  _Unwind_Resume(a1);
}

void sub_332280(void *a1)
{
  *a1 = off_6BF930;
  sub_13BFA8(a1);

  operator delete();
}

unsigned __int8 *sub_3322F4(_WORD *a1)
{
  v28[0] = 0;
  v29 = 0;
  atomic_fetch_add((sub_809C0() + 656), 1u);
  v30 = 0x706D776970687077;
  v32 = 0;
  v31 = 0uLL;
  sub_4625C(&v31, &v30, &v31, 2uLL);
  *v11 = v31;
  v12 = v32;
  v32 = 0;
  v31 = 0uLL;
  strcpy(v13, "cwdv");
  v14 = 0;
  v15 = 3;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v19 = 44739242;
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_161C7C(&v23, a1, v11);
  sub_B0484(&cf, &v23);
  for (i = v26; i != &cf; i = *(i + 8))
  {
    (*(**(i + 16) + 512))(*(i + 16), 0, 0, 0);
    v3 = sub_809C0();
    v4 = *(i + 24);
    v10[0] = *(i + 16);
    v10[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_257CE8(v3, v10);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  sub_87980(&cf);
  sub_65310(&v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v17);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  *&v31 = 0x7075736F70687077;
  v24 = 0;
  v23 = 0uLL;
  sub_4625C(&v23, &v31, &v31 + 8, 2uLL);
  *v11 = v23;
  v12 = v24;
  strcpy(v13, "cwdv");
  v14 = 0;
  v15 = 3;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v19 = 44739242;
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_161C7C(&cf, a1, v11);
  v5 = v27;
  sub_65310(&cf);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v17);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (v5)
  {
    sub_1F82A0();
    (*(*a1 + 128))(v11, a1);
    if (v12 >= 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = v11[0];
    }

    if (v6)
    {
      if (v12 >= 0)
      {
        v7 = HIBYTE(v12);
      }

      else
      {
        v7 = v11[1];
      }

      cf = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      cf = 0;
    }

    (*(qword_6E6648 + 64))(&qword_6E6648, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  sub_4B08E8(a1);
  a1[266] = 0;
  return sub_240CCC(v28);
}

void sub_3326C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32)
{
  sub_1DB0E0(&a32);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_240CCC((v32 - 136));
  _Unwind_Resume(a1);
}

void sub_332784(uint64_t a1, int **a2, char a3)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - *a2) >= 5)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "Device_USB_Aspen.cpp";
      v39 = 1024;
      v40 = 1373;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v3 != v4)
  {
    v7 = *v3;
    v36 = *v3;
    v8 = sub_5544(18);
    if (*(v8 + 8))
    {
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v38 = "Device_USB_Aspen.cpp";
          v39 = 1024;
          v40 = 1380;
          v41 = 1024;
          LODWORD(v42) = v7;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to activate sub-port with ID %u", buf, 0x18u);
        }
      }
    }

    sub_4B4674(v33, a1);
    sub_76388(&v34, v33);
    v10 = v35;
    if (v35 == &v34)
    {
      sub_87980(&v34);
      sub_65310(v33);
      goto LABEL_51;
    }

    v11 = 0;
    while (1)
    {
      (*(*v10[2] + 168))(&v31);
      v12 = v31;
      v13 = v31;
      if (v31 != v32)
      {
        v13 = v31;
        while (*v13 != v36)
        {
          if (++v13 == v32)
          {
            goto LABEL_22;
          }
        }
      }

      if (v13 == v32)
      {
LABEL_22:
        v17 = 1;
        if (!v31)
        {
          goto LABEL_24;
        }

LABEL_23:
        v32 = v12;
        operator delete(v12);
        goto LABEL_24;
      }

      v14 = *(v10[2] + 144);
      if (v14 > 1886740851)
      {
        if (v14 != 1886740852 && v14 != 1886745449)
        {
LABEL_20:
          if (a3)
          {
            goto LABEL_38;
          }

          v16 = 1869968496;
          goto LABEL_34;
        }
      }

      else if (v14 != 1885894516 && v14 != 1886222185)
      {
        goto LABEL_20;
      }

      if ((a3 & 1) == 0)
      {
LABEL_38:
        v19 = sub_5544(14);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          sub_23148(__p, (v10[2] + 8));
          v21 = v30 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v38 = "Device_USB_Aspen.cpp";
          v39 = 1024;
          v40 = 1398;
          v41 = 2080;
          v42 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Scope of Port (%s) does not match scope of input parameter", buf, 0x1Cu);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v22 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v22, "Scope of Port (%s) does not match scope of input parameter");
      }

      v16 = 1768845428;
LABEL_34:
      *buf = 1936945763;
      v38 = v16;
      (*(*a1 + 48))(a1, buf, 0, 0, 4, &v36);
      v17 = 0;
      v11 = 1;
      v12 = v31;
      if (v31)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v17)
      {
        v10 = v10[1];
        if (v10 != &v34)
        {
          continue;
        }
      }

      sub_87980(&v34);
      sub_65310(v33);
      if (v11)
      {
        return;
      }

LABEL_51:
      v26 = sub_5544(14);
      v27 = *v26;
      if (*v26)
      {
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v38 = "Device_USB_Aspen.cpp";
          v39 = 1024;
          v40 = 1408;
          v41 = 1024;
          LODWORD(v42) = v36;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not locate sub-port with ID: %u in order to activate it.", buf, 0x18u);
        }
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v28, "Could not locate sub-port with ID: %u in order to activate it.");
    }
  }
}

void sub_332C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_87980(&a19);
  sub_65310(&a16);
  _Unwind_Resume(a1);
}

void sub_332D0C(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  strcpy(v28, "cwdv");
  v28[8] = 0;
  v29 = 3;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v32 = 44739210;
  sub_161C7C(v24, a1, &v25);
  if (v24[2])
  {
    v2 = sub_5544(18);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 894;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down current output ref port", buf, 0x12u);
    }

    sub_B0484(buf, v24);
    v4 = *&buf[8];
    if (*&buf[8] != buf)
    {
      while (1)
      {
        v5 = *(v4 + 16);
        v6 = v5[36];
        if (v6 == 1886745449)
        {
          goto LABEL_12;
        }

        if (v6 == 1886222185)
        {
          break;
        }

LABEL_16:
        v11 = *(v4 + 24);
        v23[0] = v5;
        v23[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_4B0AE8(a1, v23);
        if (v11)
        {
          sub_1A8C0(v11);
        }

        v4 = *(v4 + 8);
        if (v4 == buf)
        {
          goto LABEL_21;
        }
      }

      (*(*v5 + 512))(v5, 0, 0, 0);
      v7 = sub_809C0();
      v8 = *(v4 + 24);
      *v36 = *(v4 + 16);
      *&v36[8] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_257CE8(v7, v36);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

LABEL_12:
      v9 = sub_5544(18);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        *v36 = 136315394;
        *&v36[4] = "Device_USB_Aspen.cpp";
        *&v36[12] = 1024;
        *&v36[14] = 910;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down current input port of output device", v36, 0x12u);
      }

      *(a1 + 533) = 0;
      v5 = *(v4 + 16);
      goto LABEL_16;
    }

LABEL_21:
    sub_87980(buf);
  }

  v12 = sub_333248(a1);
  if (v12)
  {
    sub_161C7C(buf, v12, &v25);
    if (*&buf[16])
    {
      v13 = *&buf[8];
      v14 = *(*&buf[8] + 24);
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = *(v13 + 16);
          if (v17)
          {
            v18 = v17[36];
            if (v18 == 1886745449)
            {
              goto LABEL_30;
            }

            if (v18 == 1886222185)
            {
              (*(*v17 + 512))(v17, 0, 0, 0);
              v19 = sub_809C0();
              *v36 = v17;
              *&v36[8] = v16;
              atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_257CE8(v19, v36);
              std::__shared_weak_count::__release_weak(v16);
LABEL_30:
              v20 = sub_5544(18);
              v21 = *v20;
              if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
              {
                *v36 = 136315394;
                *&v36[4] = "Device_USB_Aspen.cpp";
                *&v36[12] = 1024;
                *&v36[14] = 937;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down input port", v36, 0x12u);
              }

              v22[0] = v17;
              v22[1] = v16;
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_4B0AE8(v12, v22);
              sub_1A8C0(v16);
              *(v12 + 533) = 0;
              sub_3334F8(v12);
            }
          }

          sub_1A8C0(v16);
        }
      }
    }
  }

  else
  {
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
  }

  sub_65310(buf);
  sub_65310(v24);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v31[0]);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_3331A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__shared_weak_count::__release_weak(v18);
  sub_1A8C0(v18);
  sub_65310((v19 - 128));
  sub_65310(&a15);
  sub_46934(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_333248(uint64_t a1)
{
  v1 = a1;
  strcpy(v13, "DIclbolg");
  BYTE1(v13[1]) = 0;
  WORD1(v13[1]) = 0;
  sub_339DEC(&v18, a1);
  LOBYTE(v14) = 0;
  v15 = 0;
  v2 = v20;
  if ((v20 & 1) == 0)
  {
    goto LABEL_31;
  }

  v3 = cf;
  v14 = cf;
  v15 = 1;
  if (cf)
  {
    CFRetain(cf);
  }

  v13[3] = v3;
  sub_CE168();
  sub_2E2774(v13);
  v4 = v13[1];
  if (v3)
  {
    CFRetain(v3);
  }

  if (v4 != v13)
  {
    while (1)
    {
      v5 = v4[3];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v4[2];
          if (v8)
          {
            if (v8 != v1)
            {
              v9 = (*(*v8 + 120))(v8);
              inAddress.mElement = 0;
              v17 = v9;
              *&inAddress.mSelector = 0x676C6F626C634944;
              sub_33A098(&v18, &v17, &inAddress, 0, 0);
              if (v20 == 1)
              {
                v10 = cf;
                if (!v3)
                {
                  if (!cf)
                  {
                    sub_1A8C0(v7);
                    goto LABEL_23;
                  }

                  v11 = 0;
                  goto LABEL_20;
                }

                if (cf)
                {
                  v11 = CFNumberCompare(v3, cf, 0) == kCFCompareEqualTo;
LABEL_20:
                  CFRelease(v10);
                  sub_1A8C0(v7);
                  if (v11)
                  {
                    break;
                  }

                  goto LABEL_16;
                }
              }
            }
          }

          sub_1A8C0(v7);
        }
      }

LABEL_16:
      v4 = v4[1];
      if (v4 == v13)
      {
        v4 = v13;
        break;
      }
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

LABEL_23:
  if (v4 != v13)
  {
    sub_5659C(&v18, v4 + 2, "", 1544);
    v1 = v18;
    if (cf)
    {
      sub_1A8C0(cf);
    }
  }

  sub_65310(v13);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4 == v13)
  {
LABEL_31:
    v1 = 0;
    if (!v2)
    {
      return v1;
    }
  }

  else if (!v2)
  {
    return v1;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v1;
}

void sub_3334A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  sub_65310(va);
  sub_21794C(va1);
  sub_339B0C(va2);
  _Unwind_Resume(a1);
}

void sub_3334F8(uint64_t a1)
{
  if (!_os_feature_enabled_impl() || (strcpy(buf, "ndihbolg"), buf[9] = 0, *&buf[10] = 0, v2 = sub_59410(a1), *(&v5 + 1) = v3, *&v5 = v2, v4 = v5 >> 32, (v4 & 0x100000000) == 0) || !v4)
  {
    if (*(a1 + 532) != 1 || (*(a1 + 533) & 1) == 0)
    {
      v42 = sub_3364F8(a1);
      v6 = (*(*a1 + 88))(a1, 1);
      v7 = (*(*a1 + 88))(a1, 0);
      v8 = sub_3364F8(a1);
      v9 = sub_5544(18);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        p_str = &__str;
        (*(*a1 + 128))(&__str, a1);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        v12 = (*(*a1 + 88))(a1, 0);
        v13 = (*(*a1 + 88))(a1, 1);
        *buf = 136316418;
        *&buf[4] = "Device_USB_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1067;
        *&buf[18] = 2080;
        *&buf[20] = p_str;
        v48 = 1024;
        v49 = v42;
        v50 = 1024;
        v51 = v12;
        v52[0] = 1024;
        *&v52[1] = v13;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device %s hasSpeakerTapStream %d num input streams %u num output streams %u", buf, 0x2Eu);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      v14 = sub_333248(a1);
      if (v14)
      {
        sub_3364F8(v14);
        if (v6)
        {
          goto LABEL_20;
        }
      }

      else if (v6)
      {
        goto LABEL_20;
      }

      if (v7 <= v8)
      {
        v15 = sub_5544(18);
        v16 = *v15;
        if (*v15)
        {
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "Device_USB_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1074;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d USB audio device has no streams", buf, 0x12u);
          }
        }
      }

LABEL_20:
      v17 = sub_5544(18);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 128))(&__str, a1);
        v19 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        v20 = __str.__r_.__value_.__r.__words[0];
        v21 = sub_33658C(a1);
        *buf = 136315906;
        *&buf[4] = "Device_USB_Aspen.cpp";
        v22 = v19 >= 0 ? &__str : v20;
        *&buf[12] = 1024;
        *&buf[14] = 1075;
        *&buf[18] = 2080;
        *&buf[20] = v22;
        v48 = 1024;
        v49 = v21;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d USB device %s HasHeadsetInfo: %d", buf, 0x22u);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (sub_336780(a1) || (sub_292208(a1) & 1) != 0)
      {
        v23 = 1;
        if (!v6)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v23 = *(a1 + 535);
        if (!v6)
        {
LABEL_106:
          if (v7 > v8 && (*(a1 + 533) & 1) == 0)
          {
            (*(*a1 + 448))(a1, 0);
            sub_4B8CE4();
          }

          return;
        }
      }

      if ((*(a1 + 532) & 1) == 0)
      {
        v24 = (*(*a1 + 448))(a1, 1);
        v25 = (*(*a1 + 88))(a1, 1);
        v27 = v24 > 2 || v25 != 1;
        if (((v27 | v23) & 1) == 0 && *(a1 + 524) != 0xA00000001EDBLL)
        {
          (*(*a1 + 456))(&__str, a1);
          memset(&v54, 0, sizeof(v54));
          strcpy(v43, "manlbolg");
          BYTE1(v43[1]) = 0;
          WORD1(v43[1]) = 0;
          sub_3397D8(buf, a1);
          LOBYTE(cf) = 0;
          LOBYTE(v46) = 0;
          if (buf[24] == 1)
          {
            v28 = *&buf[16];
            *&buf[16] = 0;
            cf = &off_6DACD8;
            theString = v28;
            LOBYTE(v46) = 1;
            sub_8AAAC(&buf[8]);
            sub_48540(buf, theString);
            if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v54.__r_.__value_.__l.__data_);
            }

            v54 = *buf;
          }

          else
          {
            std::string::operator=(&v54, &__str);
          }

          if (v46 == 1)
          {
            sub_8AAAC(&cf);
          }

          sub_1F82A0();
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &__str;
          }

          else
          {
            v29 = __str.__r_.__value_.__r.__words[0];
          }

          if (v29)
          {
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            *buf = CFStringCreateWithBytes(0, v29, size, 0x8000100u, 0);
            if (!*buf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }
          }

          else
          {
            *buf = 0;
          }

          v32 = (*(qword_6E6648 + 40))(&qword_6E6648, buf);
          if (*buf)
          {
            CFRelease(*buf);
          }

          if ((v32 & 0x100) != 0 && !v32)
          {
            sub_1F82A0();
            if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v54;
            }

            else
            {
              v33 = v54.__r_.__value_.__r.__words[0];
            }

            if (v33)
            {
              if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v34 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v34 = v54.__r_.__value_.__l.__size_;
              }

              *buf = CFStringCreateWithBytes(0, v33, v34, 0x8000100u, 0);
              if (!*buf)
              {
                v35 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v35, "Could not construct");
              }
            }

            else
            {
              *buf = 0;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = &__str;
            }

            else
            {
              v36 = __str.__r_.__value_.__r.__words[0];
            }

            if (v36)
            {
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v37 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v37 = __str.__r_.__value_.__l.__size_;
              }

              cf = CFStringCreateWithBytes(0, v36, v37, 0x8000100u, 0);
              if (!cf)
              {
                v38 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v38, "Could not construct");
              }
            }

            else
            {
              cf = 0;
            }

            (*(qword_6E6648 + 48))(&qword_6E6648, buf, &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (*buf)
            {
              CFRelease(*buf);
            }
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        sub_1F82A0();
        (*(*a1 + 128))(buf, a1);
        if (buf[23] >= 0)
        {
          v39 = buf;
        }

        else
        {
          v39 = *buf;
        }

        if (v39)
        {
          if (buf[23] >= 0)
          {
            v40 = buf[23];
          }

          else
          {
            v40 = *&buf[8];
          }

          __str.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, v39, v40, 0x8000100u, 0);
          if (!__str.__r_.__value_.__r.__words[0])
          {
            v41 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v41, "Could not construct");
          }
        }

        else
        {
          __str.__r_.__value_.__r.__words[0] = 0;
        }

        (*(qword_6E6648 + 64))(&qword_6E6648, &__str, 1);
        if (__str.__r_.__value_.__r.__words[0])
        {
          CFRelease(__str.__r_.__value_.__l.__data_);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        (*(*a1 + 448))(a1, 1);
        sub_4B7D7C();
      }

      goto LABEL_106;
    }
  }
}

void sub_335E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  __cxa_free_exception(v44);
  sub_452F0(v49);
  sub_1A8C0(v50);
  std::__shared_weak_count::__release_weak(v48);
  *v47 = off_6BD250;
  sub_24EBDC(v47);
  std::__shared_weak_count::~__shared_weak_count(v46);
  operator delete(v52);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  sub_1E19A0(&a38);
  _Unwind_Resume(a1);
}

BOOL sub_3364F8(uint64_t a1)
{
  v2 = sub_59410(a1);
  result = 0;
  *(&v6 + 1) = v4;
  *&v6 = v2;
  v5 = v6 >> 32;
  if ((v5 & 0x100000000) != 0)
  {
    if (v5)
    {
      return (*(*a1 + 88))(a1, 1) != 0;
    }
  }

  return result;
}

BOOL sub_33658C(uint64_t a1)
{
  sub_339EE8(&v7, a1, COERCE_DOUBLE(1735159650));
  v1 = sub_5544(18);
  v2 = *v1;
  if (*v1 && os_log_type_enabled(*v1, OS_LOG_TYPE_INFO))
  {
    if (v9 == 1)
    {
      sub_B1190(&__p, theDict);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v11 = "Device_USB_Aspen.cpp";
      v12 = 1024;
      v13 = 1742;
      v14 = 2080;
      v15 = p_p;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Contents of HeadsetInfo: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *buf = 136315650;
      v11 = "Device_USB_Aspen.cpp";
      v12 = 1024;
      v13 = 1742;
      v14 = 2080;
      v15 = "empty";
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Contents of HeadsetInfo: %s", buf, 0x1Cu);
    }
  }

  if (v9 != 1)
  {
    return 0;
  }

  if (theDict)
  {
    v4 = CFDictionaryGetCount(theDict) != 0;
    if ((v9 & 1) == 0)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_8AAAC(&v7);
  return v4;
}

void sub_33674C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_8AAAC(&a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_336780(uint64_t a1)
{
  v1 = (a1 + 524);
  if (*(a1 + 524) == 0x110A000005ACLL)
  {
    return 0;
  }

  v3 = sub_3398F0(a1, 1869968496);
  if (HIDWORD(v3))
  {
    if (v3 != 1751412840)
    {
      return 0;
    }
  }

  v4 = sub_3398F0(a1, 1768845428);
  if (HIDWORD(v4))
  {
    if (*v1 != 0x110C000005ACLL && v4 != 1752000867)
    {
      return 0;
    }
  }

  strcpy(v14, "CFAubolg");
  v14[9] = 0;
  v15 = 0;
  sub_339DEC(v11, a1);
  if (v13 != 1)
  {
    return 0;
  }

  v5 = v12;
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_21;
  }

  v6 = sub_339B4C(v12);
  if (v6 <= 0xFFu)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
LABEL_21:
  }

  v8 = v6 == 4 || v6 == 13;
  CFRelease(v5);
  return v8;
}

void sub_33690C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v10);
  sub_339B0C(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_336938(uint64_t a1, int a2)
{
  v3 = sub_338BCC(a2 == 1768845428, a1);
  v4 = sub_5544(22);
  v5 = sub_5544(31);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a2 == 1768845428 ? "Input" : "Output";
    sub_22170(__p, v3);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    v17 = 1024;
    v18 = 1576;
    v19 = 2080;
    v20 = v10;
    v21 = 2080;
    v22 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s using headset value: '%s'", buf, 0x26u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    v12 = v3 == 1786082146;
  }

  else
  {
    v12 = 1;
  }

  return !v12;
}

uint64_t sub_336AF0(_BYTE *a1, int a2, int a3)
{
  v5 = sub_336C34(a2, a1);
  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
  {
    v8 = "output";
    v11 = 136315906;
    v12 = "Device_USB_Aspen.cpp";
    if (a2 == 1768845428)
    {
      v8 = "input";
    }

    v13 = 1024;
    v14 = 1565;
    v15 = 2080;
    v16 = v8;
    if (v5 == 1)
    {
      v9 = "Supported";
    }

    else
    {
      v9 = "Not Supported";
    }

    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d USB %s device Telephony format: %s", &v11, 0x26u);
  }

  if (v5 == 1)
  {
    return sub_31122C() ^ 1 | a3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_336C34(int a1, _BYTE *a2)
{
  if (sub_48EDC())
  {
    v4 = 1;
  }

  else if (MGGetBoolAnswer())
  {
    v4 = MGGetBoolAnswer();
  }

  else
  {
    v4 = 0;
  }

  if (qword_6E8380 != -1)
  {
    dispatch_once(&qword_6E8380, &stru_6BD048);
  }

  result = 2;
  if (a2 && ((v4 | byte_6E837A) & 1) != 0)
  {
    if (a2[535])
    {
      return 1;
    }

    else if (a1 == 1869968496)
    {
      v9 = (*(*a2 + 448))(a2, 1);
      if ((*(*a2 + 88))(a2, 1) != 1 || v9 >= 3)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else if (a1 == 1768845428)
    {
      v6 = sub_4DADAC(a2, 0);
      v7 = (*(*a2 + 88))(a2, 0);
      if (v7 + (((*(*a2 + 312))(a2) >> 1) >> 31) != 1 || v6 >= 3)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_336E14(void *a1)
{
  v2 = (*(*a1 + 120))(a1);
  sub_24FF44(v6, 0x706D7769u, v2);
  v5 = a1;
  if (sub_7E96C())
  {
    v3 = a1[11];
    v8 = a1[10];
    v9 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_3394D4(v10, &v5);
    (*(*a1 + 128))(&__p, a1);
    operator new();
  }

  v4 = a1[11];
  v8 = a1[10];
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_3394D4(v10, &v5);
  (*(*a1 + 128))(&__p, a1);
  operator new();
}

void sub_337740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(&a9 + 1))
  {
    sub_1A8C0(*(&a9 + 1));
  }

  sub_1E19A0(&a14);
  _Unwind_Resume(a1);
}

void sub_3378D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = qword_6EABA0;
  v6 = (*(*a3 + 120))(a3);
  sub_24FF44(v18, v5, v6);
  v7 = sub_5544(18);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(v21, v18);
    v9 = v22;
    v10 = v21[0];
    (*(*a3 + 128))(__p, a3);
    v11 = v21;
    if (v9 < 0)
    {
      v11 = v10;
    }

    if (v20 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    v28 = 1024;
    v29 = 814;
    v30 = 2080;
    v31 = v11;
    v32 = 2080;
    v33 = v12;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a USB output port with name %s and UID %s", buf, 0x26u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (sub_289798() & 1) != 0 || (sub_31122C())
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    qmemcpy(buf, "gcrvmorvtshv", sizeof(buf));
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_4625C(&v15, buf, &v28, 3uLL);
  }

  if (sub_4DAD0C(a2))
  {
    v13 = a3[11];
    v23 = a3[10];
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    }

    (*(*a3 + 128))(v21, a3);
    sub_4B6FF0(__p, a3, 0x6F757470u);
    operator new();
  }

  v14 = a3[11];
  v25 = a3[10];
  v26 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  (*(*a3 + 128))(buf, a3);
  sub_4B6FF0(v21, a3, 0x6F757470u);
  sub_227ADC();
}

void sub_337E80(uint64_t a1, void *a2)
{
  v3 = qword_6EAC00;
  v4 = (*(*a2 + 120))(a2);
  sub_24FF44(v15, v3, v4);
  v5 = sub_5544(18);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(v16, v15);
    v7 = v18;
    v8 = *v16;
    (*(*a2 + 128))(__p, a2);
    v9 = v16;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v14 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 868;
    *&buf[18] = 2080;
    *&buf[20] = v9;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a USB tap input port with name %s and UID %s", buf, 0x26u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*v16);
    }
  }

  if ((sub_286E80() & 1) != 0 || sub_31122C())
  {
    memset(buf, 0, 24);
  }

  else
  {
    qmemcpy(v16, "gcrvmorvtshv", sizeof(v16));
    memset(buf, 0, 24);
    sub_4625C(buf, v16, &v17, 3uLL);
  }

  v11 = a2[11];
  v12 = a2[10];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  (*(*a2 + 128))(v16, a2);
  sub_4B6FF0(__p, a2, 0x696E7074u);
  sub_227ADC();
}

void sub_3381D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1E19A0(va);
  _Unwind_Resume(a1);
}

const __CFArray *sub_338284(uint64_t a1)
{
  v13 = 0x7074727561736573;
  v14 = 0;
  result = (*(*a1 + 16))(a1, &v13);
  if (result)
  {
    theArray = 0;
    v10 = 1;
    v11 = 8;
    (*(*a1 + 40))(a1, &v13, 0, 0, &v11, &theArray);
    result = theArray;
    if (theArray)
    {
      v3 = 0;
      v8 = theArray;
      v9 = 1;
LABEL_4:
      LODWORD(result) = CFArrayGetCount(result);
      while (v3 < result)
      {
        v7 = 0;
        if ((sub_2E4528(&v8, v3, &v7) & 1) == 0)
        {
          v4 = sub_5544(14);
          v5 = *v4;
          if (*v4)
          {
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "Device_USB_Aspen.cpp";
              v16 = 1024;
              v17 = 1514;
              _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Channels CFArray contained a non-UInt32 value.", buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = 2003329396;
        }

        *buf = 0x707472756D757465;
        *&buf[8] = v7;
        (*(*a1 + 48))(a1, buf, 0, 0, 4, &v10);
        ++v3;
        result = v8;
        if (v8)
        {
          goto LABEL_4;
        }
      }

      return sub_A0804(&v8);
    }
  }

  return result;
}

void sub_3384F8(unsigned int a1, uint64_t a2, uint64_t a3)
{
  *inAddress = 1936941859;
  *&inAddress[4] = a1;
  *&inAddress[8] = 0;
  sub_4DFC0(a3);
  if (AudioObjectHasProperty(*(a3 + 268), inAddress))
  {
    *inAddress = 1936945763;
    *&inAddress[4] = a1;
    *&inAddress[8] = 0;
    LODWORD(v20[0]) = 4;
    LODWORD(v18[0]) = 0;
    (*(*a3 + 40))(a3, inAddress, 0, 0, v20, v18);
    v6 = LODWORD(v18[0]);
    v7 = sub_5544(18);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v20;
      sub_23148(v20, (a2 + 8));
      if (v21 < 0)
      {
        v9 = v20[0];
      }

      sub_23148(v18, (a3 + 8));
      v10 = v19;
      v11 = v18[0];
      sub_22170(__p, a1);
      v12 = v18;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *inAddress = 136316418;
      *&inAddress[4] = "Device_USB_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 191;
      v23 = 2048;
      v24 = v6;
      v25 = 2080;
      v26 = v9;
      v27 = 2080;
      v28 = v12;
      v29 = 2080;
      v30 = v13;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activating sub-port for active data source with ID: %lu for port: '%s' on USB device: '%s'. Scope: '%s'.", inAddress, 0x3Au);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }

    LODWORD(v18[0]) = v6;
    sub_1E54B0(inAddress, v18, 1);
    v14 = *(a2 + 80);
    v15 = *(a2 + 88);
    v20[0] = v14;
    v20[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_FC464(inAddress, v20, a3);
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    if (*inAddress)
    {
      *&inAddress[8] = *inAddress;
      operator delete(*inAddress);
    }
  }
}

void sub_338770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_3387F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D7FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_338868(uint64_t a1)
{
  v15 = 1885892727;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  sub_4625C(v16, &v15, v16, 1uLL);
  *buf = *v16;
  *&buf[16] = v17;
  strcpy(v19, "cwdv");
  v19[8] = 0;
  v20 = 3;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v23 = 44739242;
  v25 = 0;
  v26 = 0;
  __p = 0;
  sub_161C7C(v11, a1, buf);
  sub_B0484(&v12, v11);
  sub_65310(v11);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v22[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v14 == 1)
  {
    goto LABEL_6;
  }

  v7 = sub_5544(14);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    v9 = v14;
    sub_22170(v16, 0x70687077u);
    v10 = v17 >= 0 ? v16 : v16[0];
    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1479;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *v19 = 2080;
    *&v19[2] = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Found %u ports of type '%s' (expected 1)", buf, 0x22u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  if (v14 == 1)
  {
LABEL_6:
    v2 = sub_338BCC(1, a1);
    if (*(a1 + 535) == 1)
    {
      v3 = sub_5544(18);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1485;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Detected a USB display device (speaker)", buf, 0x12u);
        }
      }
    }

    (*(**(v13 + 16) + 512))(*(v13 + 16), 1, 1, v2);
    v5 = sub_809C0();
    v6 = *(v13 + 24);
    *buf = *(v13 + 16);
    *&buf[8] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_257CE8(v5, buf);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  sub_87980(&v12);
}

void sub_338B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_87980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_338BCC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 535) != 1)
  {
    v3 = a1;
    v6 = sub_291720(a1, 1, a2);
    v7 = v6;
    if (v6 && v6 != 1784965235 && v6 != 1784965232)
    {
      return v7;
    }

    v8 = sub_333248(a2);
    v9 = v8;
    if (v8)
    {
      (*(*v8 + 456))(&v41, v8);
      v10 = HIBYTE(v43);
      if (v43 < 0)
      {
        v10 = v42;
      }

      if (v10)
      {
        sub_1F82A0();
        if (v43 >= 0)
        {
          v11 = &v41;
        }

        else
        {
          v11 = v41;
        }

        if (v11)
        {
          if (v43 >= 0)
          {
            v12 = HIBYTE(v43);
          }

          else
          {
            v12 = v42;
          }

          *buf = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
          if (!*buf)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        else
        {
          *buf = 0;
        }

        v15 = (*(qword_6E6648 + 32))();
        if (*buf)
        {
          CFRelease(*buf);
        }

        v14 = *&v15 & ((v15 & 0x100) >> 8);
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    v16 = (*(*a2 + 448))(a2, 1);
    v17 = (*(*a2 + 88))(a2, 1);
    if (v16 > 2 || v17 != 1)
    {
      v19 = HIBYTE(v43);
      if (v43 < 0)
      {
        v19 = v42;
      }

      if (v19)
      {
        v20 = sub_5544(18);
        v3 = *v20;
        if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_Aspen.cpp";
          v45 = 1024;
          v46 = 1660;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Checking USB for Headphone parity", buf, 0x12u);
        }

        if ((v14 & 1) != 0 || sub_336780(v9))
        {
          v21 = sub_5544(18);
          v3 = 1784965235;
          v22 = *v21;
          if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
          {
            sub_23148(__p, (a2 + 8));
            v23 = (v40 & 0x80u) == 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "Device_USB_Aspen.cpp";
            v45 = 1024;
            v46 = 1664;
            v47 = 2080;
            v48 = v23;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Partner device meets Parity Guidelines - Forcing Headset sub type for %s", buf, 0x1Cu);
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_94;
        }
      }

      goto LABEL_86;
    }

    if (sub_336780(a2))
    {
      v24 = 0;
      if (v3)
      {
        v3 = 1784965235;
      }

      else
      {
        v3 = 1784965232;
      }

      goto LABEL_95;
    }

    (*(*a2 + 456))(__p, a2);
    sub_1F82A0();
    if ((v40 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v25)
    {
      if ((v40 & 0x80u) == 0)
      {
        v26 = v40;
      }

      else
      {
        v26 = __p[1];
      }

      *buf = CFStringCreateWithBytes(0, v25, v26, 0x8000100u, 0);
      if (!*buf)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
      }
    }

    else
    {
      *buf = 0;
    }

    v28 = (*(qword_6E6648 + 32))();
    if (*buf)
    {
      CFRelease(*buf);
    }

    if ((v28 & 0x100) != 0)
    {
      v30 = sub_5544(18);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = __p;
        if ((v40 & 0x80u) != 0)
        {
          v32 = __p[0];
        }

        *&buf[4] = "Device_USB_Aspen.cpp";
        v45 = 1024;
        v46 = 1630;
        v33 = "is";
        *buf = 136315906;
        if ((v28 & 1) == 0)
        {
          v33 = "is not";
        }

        v47 = 2080;
        v48 = v32;
        v49 = 2080;
        v50 = v33;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d According to ADAM, device %s %s headphones", buf, 0x26u);
      }

      if (v28)
      {
        v34 = 0;
        if (v3)
        {
          v3 = 1784965235;
        }

        else
        {
          v3 = 1784965232;
        }

LABEL_84:
        if (v40 < 0)
        {
          operator delete(__p[0]);
          if (v34)
          {
            goto LABEL_86;
          }
        }

        else if (v34)
        {
LABEL_86:
          v35 = sub_31122C() ^ 1;
          if (!v7)
          {
            LOBYTE(v35) = 0;
          }

          if ((v35 & 1) == 0)
          {
            v36 = sub_5544(18);
            v7 = 1786082146;
            v37 = *v36;
            if (*v36)
            {
              if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "Device_USB_Aspen.cpp";
                v45 = 1024;
                v46 = 1676;
                _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Forcing USB Default sub type", buf, 0x12u);
              }
            }
          }

          v24 = 1;
LABEL_95:
          if (SHIBYTE(v43) < 0)
          {
            operator delete(v41);
            if ((v24 & 1) == 0)
            {
              return v3;
            }
          }

          else if ((v24 & 1) == 0)
          {
            return v3;
          }

          return v7;
        }

LABEL_94:
        v24 = 0;
        goto LABEL_95;
      }

      v7 = 0;
    }

    else
    {
      v29 = sub_5544(18);
      v3 = *v29;
      if (*v29)
      {
        v29 = os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_Aspen.cpp";
          v45 = 1024;
          v46 = 1645;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Not registered with ADAM as headphones", buf, 0x12u);
        }
      }

      if (caulk::product::get_device_class(v29) == 1)
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v34 = 1;
    goto LABEL_84;
  }

  v3 = 1781740087;
  if (*(a2 + 524) != 0x1114000005ACLL)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_USB_Aspen.cpp";
        v45 = 1024;
        v46 = 1590;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Apple Studio Display has kJackDescriptor_Unknown.", buf, 0x12u);
      }
    }
  }

  return v3;
}

void sub_339358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_339460(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C26A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3394D4(void **a1, uint64_t *a2)
{
  LODWORD(v33) = 1701669219;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  sub_4625C(&v30, &v33, &v33 + 4, 1uLL);
  v4 = v30;
  sub_4D8CD4(a1, v30, v31);
  if (v4)
  {
    operator delete(v4);
  }

  sub_4B6FF0(&v28, *a2, 0x696E7074u);
  v6 = v28;
  v5 = v29;
  v7 = v29 - v28;
  v8 = (v29 - v28) >> 4;
  if (v8 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (v9 - v10 >= v7)
    {
      v38 = a1[1];
      v39 = v10;
      v33 = a1;
      v34 = &v38;
      v35 = &v39;
      if (v29 != v28)
      {
        do
        {
          *v10 = *v6;
          v17 = v6[1];
          v10[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          v6 += 2;
          v10 += 2;
        }

        while (v6 != v5);
        v39 = v10;
      }

      LOBYTE(v36) = 1;
      sub_119534(&v33);
      a1[1] = v10;
    }

    else
    {
      v11 = *a1;
      v12 = v10 - *a1;
      v13 = v8 + (v12 >> 4);
      if (v13 >> 60)
      {
        sub_189A00();
      }

      v14 = v9 - v11;
      v15 = (v9 - v11) >> 3;
      if (v15 > v13)
      {
        v13 = v15;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v13;
      }

      v37 = a1;
      if (v16)
      {
        sub_1DC690(v16);
      }

      v18 = 16 * (v12 >> 4);
      v36 = 0;
      v19 = (v18 + v7);
      v20 = v18;
      do
      {
        *v20 = *v6;
        v21 = v6[1];
        *(v20 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v20 += 16;
        v6 += 2;
      }

      while (v20 != v19);
      memcpy(v19, v10, a1[1] - v10);
      v22 = *a1;
      v23 = &v19[a1[1] - v10];
      a1[1] = v10;
      v24 = v10 - v22;
      v25 = (v18 - (v10 - v22));
      memcpy(v25, v22, v24);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v23;
      v27 = a1[2];
      a1[2] = v36;
      v35 = v26;
      v36 = v27;
      v33 = v26;
      v34 = v26;
      sub_A0650(&v33);
    }
  }

  v33 = &v28;
  sub_72C14(&v33);
}

void sub_3396F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 - 56) = va;
  sub_72C14((v2 - 56));
  sub_72C14(va);
  _Unwind_Resume(a1);
}

void sub_339764(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3397D8(uint64_t a1, uint64_t a2)
{
  result = sub_5BA08(a2);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    result = sub_59580(a2);
    v8 = result;
    if (result)
    {
      v7 = 0;
      result = sub_5C060(a2);
      *a1 = result;
      if (!result)
      {
        v5 = v7;
        v6[0] = &off_6DACD8;
        v6[1] = 0;
        *(a1 + 8) = &off_6DACD8;
        *(a1 + 16) = v5;
        *(a1 + 24) = 1;
        return sub_8AAAC(v6);
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_3398F0(uint64_t a1, int a2)
{
  if (!(*(*a1 + 88))(a1, a2 != 1768845428))
  {
    goto LABEL_5;
  }

  v4 = (*(*a1 + 96))(a1, a2 != 1768845428, 0);
  if (!v4)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 136315394;
      *&v21[1] = "Device_USB_Aspen.cpp";
      v22 = 1024;
      v23 = 247;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v21, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = v4;
  strcpy(v21, "spatbolg");
  BYTE1(v21[2]) = 0;
  HIWORD(v21[2]) = 0;
  v6 = sub_59410(v4);
  *(&v9 + 1) = v7;
  *&v9 = v6;
  v8 = v9 >> 32;
  if ((v8 & 0x100000000) == 0)
  {
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_5:
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
LABEL_6:
    v21[0] = 1952805485;
    v21[1] = a2;
    v21[2] = 0;
    v13 = sub_59410(v5);
    *(&v16 + 1) = v14;
    *&v16 = v13;
    v15 = v16 >> 32;
    if ((v15 & 0x100000000) == 0)
    {
      LODWORD(v15) = 0;
    }

    v12 = v15 & 0xFFFFFF00;
    v11 = v15;
    v10 = 0x100000000;
  }

  return v10 | v12 | v11;
}

uint64_t sub_339B0C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_339B4C(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberFloat32Type:
        v5 = sub_339D6C(a1, kCFNumberFloat32Type);
        goto LABEL_18;
      case kCFNumberFloat64Type:
        v5 = sub_339DAC(a1, kCFNumberFloat64Type);
        goto LABEL_18;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
        goto LABEL_23;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_23;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_23;
      case kCFNumberLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_23;
      case kCFNumberLongLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_23;
      case kCFNumberFloatType:
        v5 = sub_339D6C(a1, kCFNumberFloatType);
        goto LABEL_18;
      case kCFNumberDoubleType:
        v5 = sub_339DAC(a1, kCFNumberDoubleType);
        goto LABEL_18;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_23;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_23:
        v6 = Value != 0;
        if (Value)
        {
          LOBYTE(v5) = valuePtr;
        }

        else
        {
          LOBYTE(v5) = 0;
        }

        break;
      case kCFNumberCGFloatType:
        v5 = sub_339DAC(a1, kCFNumberCGFloatType);
LABEL_18:
        v6 = HIBYTE(v5);
        break;
      default:
        goto LABEL_6;
    }
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      LOBYTE(v5) = CFBooleanGetValue(a1);
      v6 = 1;
    }

    else
    {
LABEL_6:
      v6 = 0;
      LOBYTE(v5) = 0;
    }
  }

  return v5 | (v6 << 8);
}

uint64_t sub_339D6C(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t sub_339DAC(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

void sub_339DEC(uint64_t a1, uint64_t a2)
{
  if (sub_5BA08(a2))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (sub_59580(a2))
    {
      v9 = 0;
      v4 = sub_5C060(a2);
      *a1 = v4;
      if (!v4)
      {
        v5 = v9;
        v8 = v9;
        sub_290014(&v7, &v8);
        v6 = v7;
        *(a1 + 16) = 1;
        *(a1 + 8) = v6;
        if (v5)
        {
          CFRelease(v5);
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void *sub_339EE8(uint64_t a1, uint64_t a2, double a3)
{
  v10 = 1751474532;
  v11 = a3;
  result = sub_339F80(&v6, a2);
  *a1 = 0;
  *(a1 + 16) = 0;
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    *a1 = &off_6DDB78;
    *(a1 + 8) = v5;
    *(a1 + 16) = 1;
    return sub_8AAAC(&v7);
  }

  return result;
}

uint64_t sub_339F80(uint64_t a1, uint64_t a2)
{
  result = sub_5BA08(a2);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    result = sub_59580(a2);
    v8 = result;
    if (result)
    {
      v7 = 0;
      result = sub_5C060(a2);
      *a1 = result;
      if (!result)
      {
        v5 = v7;
        v6[0] = &off_6DDB78;
        v6[1] = 0;
        *(a1 + 8) = &off_6DDB78;
        *(a1 + 16) = v5;
        *(a1 + 24) = 1;
        return sub_8AAAC(v6);
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_33A098(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, UInt32 a4, const void *a5)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = sub_543D0(*a2, inAddress, a4, a5);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v11 = outData;
        v14 = outData;
        sub_290014(&v13, &v14);
        v12 = v13;
        *(a1 + 16) = 1;
        *(a1 + 8) = v12;
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_33A19C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_33A1D0(_BYTE *a1)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  strcpy(v32, "cwdv");
  v32[8] = 0;
  v33 = 3;
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v36 = 44739226;
  sub_161C7C(&v26, a1, &v29);
  if (v28)
  {
    v2 = v27;
    v3 = *(v27 + 24);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = *(v2 + 16);
        if (v5)
        {
          v6 = sub_336938(a1, 1869968496);
          v7 = v5[36];
          v8 = sub_31122C();
          if (v7 == 1885892727)
          {
            v9 = v8;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            v10 = sub_5544(18);
            v11 = *v10;
            if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
            {
              *buf = 136315906;
              *&buf[4] = "Device_USB_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1002;
              v41 = 1024;
              v42 = v7 == 1885892727;
              v43 = 1024;
              v44 = v6;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device Currently headphones? %u. Should be headphones? %u", buf, 0x1Eu);
            }

            if (v6 != (v7 == 1885892727))
            {
              v24[0] = 0;
              v25 = 0;
              atomic_fetch_add((sub_809C0() + 656), 1u);
              v12 = sub_5544(18);
              v13 = *v12;
              if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "Device_USB_Aspen.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1009;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down current output port", buf, 0x12u);
              }

              if (v7 == 1885892727)
              {
                (*(*v5 + 512))(v5, 0, 0, 0);
                v14 = sub_809C0();
                *buf = v5;
                *&buf[8] = v4;
                atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_257CE8(v14, buf);
                std::__shared_weak_count::__release_weak(v4);
              }

              if (v6)
              {
                (*(*a1 + 368))(a1);
              }

              v23[0] = v5;
              v23[1] = v4;
              atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_4B0AE8(a1, v23);
              sub_1A8C0(v4);
              a1[532] = 0;
              sub_3334F8(a1);
              sub_240CCC(v24);
            }
          }

          else
          {
            v17 = v5[76];
            v18 = sub_5544(18);
            v19 = v17 & 0xDFFFFFFF;
            v20 = *v18;
            if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
            {
              *buf = 136315906;
              *&buf[4] = "Device_USB_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 991;
              v41 = 1024;
              v42 = v19 == 1214539380;
              v43 = 1024;
              v44 = v6;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- Currently headphones? %u. Should be headphones? %u", buf, 0x1Eu);
            }

            if (v6 != (v19 == 1214539380))
            {
              v21 = sub_5544(18);
              v22 = *v21;
              if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "Device_USB_Aspen.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 995;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d Updating subport type on headphones port", buf, 0x12u);
              }

              sub_338868(a1);
            }
          }

LABEL_26:
          sub_1A8C0(v4);
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v15 = sub_5544(18);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 971;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d USB Device - port expired", buf, 0x12u);
    }

    if (v4)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  sub_65310(&v26);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v35[0]);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_33A6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__shared_weak_count::__release_weak(v16);
  sub_240CCC(&a11);
  sub_1A8C0(v16);
  sub_65310(&a13);
  sub_46934(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_33A760(uint64_t a1)
{
  v2 = (*(*a1 + 88))(a1, 0);
  v3 = (*(*a1 + 88))(a1, 1);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = (v2 - 1), (v6 = (*(*a1 + 96))(a1, 0, v5)) == 0))
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  else
  {
    v7 = sub_59410(v6);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(&v13 + 1) = v11;
    *&v13 = v7;
    v12 = v13 >> 32;
    if ((v12 & 0x100000000) != 0 && v12)
    {
      v10 = v5 & 0xFFFFFF00;
      v9 = v5;
      v8 = 0x100000000;
    }
  }

  return v8 | v10 | v9;
}

void sub_33A884(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = 1768845428;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 > 1886740851)
  {
    if (a2 != 1886745455)
    {
      if (a2 == 1886745449)
      {
        goto LABEL_12;
      }

      if (a2 != 1886740852)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_9;
  }

  if (a2 == 1885892727)
  {
LABEL_9:
    if (a2 == 1886740852)
    {
      v5 = 1768845428;
    }

    else
    {
      v5 = 1869968496;
    }

    goto LABEL_12;
  }

  if (a2 != 1885894516 && a2 != 1886222185)
  {
LABEL_15:
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        inAddress.mSelector = 136315650;
        *&inAddress.mScope = "Device_USB_Aspen.cpp";
        v14 = 1024;
        v15 = 1435;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Request for default sub-ports for invalid port type: %u", &inAddress, 0x18u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Request for default sub-ports for invalid port type: %u");
  }

LABEL_12:
  inAddress.mSelector = 1936945763;
  inAddress.mScope = v5;
  inAddress.mElement = 0;
  sub_4DFC0(a1);
  if (AudioObjectHasProperty(*(a1 + 268), &inAddress))
  {
    inAddress.mSelector = 1936945763;
    inAddress.mScope = v5;
    inAddress.mElement = 0;
    v11 = 0;
    v12 = 4;
    (*(*a1 + 40))(a1, &inAddress, 0, 0, &v12, &v11);
    v10 = v11;
    sub_9EF84(a3, &v10);
  }
}

uint64_t sub_33AAF0(uint64_t a1, signed int a2)
{
  if (a2 > 1886740851)
  {
    if (a2 == 1886740852 || a2 == 1886745455)
    {
      return 0;
    }

    v2 = 1886745449;
  }

  else
  {
    if (a2 == 1885892727 || a2 == 1885894516)
    {
      return 0;
    }

    v2 = 1886222185;
  }

  if (a2 != v2)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_USB_Aspen.cpp";
      v15 = 1024;
      v16 = 1363;
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
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "Device_USB_Aspen.cpp";
      v15 = 1024;
      v16 = 1364;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_33AD20(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  LOBYTE(__p) = 0;
  v3 = 0;
  atomic_fetch_add((sub_809C0() + 656), 1u);
  sub_3334F8(a1);
  sub_240CCC(&__p);
  v5 = xmmword_517300;
  v6 = 1735159650;
  v3 = 0;
  v4 = 0;
  __p = 0;
  sub_2C8104(&__p, &v5, &v7, 2uLL);
}

void sub_33AF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_33AF74(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = sub_4B5C4C(*a1);
  sub_33B2AC(v1, v2);
  sub_33B318(v1);
  operator delete();
}

unsigned __int8 *sub_33B2AC(unsigned __int8 *result, int a2)
{
  if (a2 == 1)
  {
    v2 = result;
    v3[0] = 0;
    v4 = 0;
    atomic_fetch_add((sub_809C0() + 656), 1u);
    sub_3334F8(v2);
    return sub_240CCC(v3);
  }

  return result;
}

unsigned __int8 *sub_33B318(os_unfair_lock_s *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v7 = 0x676C6F626869646ELL;
    v8 = 0;
    v5 = 0;
    v6 = 4;
    (*(*&a1->_os_unfair_lock_opaque + 40))(a1, &v7, 0, 0, &v6, &v5);
    if (v5)
    {
      return (*(*&a1->_os_unfair_lock_opaque + 440))(a1);
    }

    else
    {
      sub_4B5C4C(a1);
      v3[0] = 0;
      v4 = 0;
      atomic_fetch_add((sub_809C0() + 656), 1u);
      sub_3334F8(a1);
      return sub_240CCC(v3);
    }
  }

  return result;
}

void sub_33B418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240CCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_33B42C(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  if (!a4)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "Device_USB_Aspen.cpp";
      v10 = 1024;
      v11 = 626;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_33B318(a4);
  return 0;
}

uint64_t sub_33B550(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  if (!a4)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "Device_USB_Aspen.cpp";
      v12 = 1024;
      v13 = 662;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = sub_4B5C4C(a4);
  sub_33B2AC(a4, v5);
  return 0;
}

unsigned __int8 *sub_33B684(uint64_t a1)
{
  (*(*a1 + 424))(a1);
  (*(*a1 + 440))(a1);

  return sub_4B08A4(a1);
}

uint64_t sub_33B714(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v22 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v18 = 2003332927;
LABEL_30:
    exception[2] = v18;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v23 = *&a2->mSelector;
      v27 = a2->mElement;
      sub_22CE0(__p);
    }

    goto LABEL_25;
  }

  if (!a6)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v24 = *&a2->mSelector;
      v28 = a2->mElement;
      sub_22CE0(__p);
    }

LABEL_25:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v18 = 561211770;
    goto LABEL_30;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v25 = *&a2->mSelector;
      v29 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v18 = 1852797029;
    goto LABEL_30;
  }

  if (a2->mSelector == 1684304756)
  {
    v12 = *a6;
    v13 = a1;
    v14 = 1869968496;
    goto LABEL_9;
  }

  if (a2->mSelector == 1685287523)
  {
    v12 = *a6;
    v13 = a1;
    v14 = 1768845428;
LABEL_9:

    return sub_4B6D4C(v13, v14, v12);
  }

  return sub_FDAC4(a1, a2, a3, a4, a5, a6);
}

void sub_33BC68(_BYTE *a1, uint64_t a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *ioDataSize = *a2;
      v35 = *(a2 + 8);
      sub_22CE0(&inAddress);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *ioDataSize = *a2;
      v35 = *(a2 + 8);
      sub_22CE0(&inAddress);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = &off_6DDDD0;
    v28[2] = 561211770;
  }

  if (!a6)
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *ioDataSize = *a2;
      v35 = *(a2 + 8);
      sub_22CE0(&inAddress);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1818446147)
  {
    switch(v12)
    {
      case 1684304756:
        v20 = a1;
        v21 = 1869968496;
        break;
      case 1685287523:
        v20 = a1;
        v21 = 1768845428;
        break;
      case 1685288051:
        v17 = a1;
        v18 = 1869968496;
        goto LABEL_20;
      default:
LABEL_22:

        sub_5C0D8(a1, a2, a3, a4, a5, a6);
        return;
    }

    v19 = sub_4B6BA0(v20, v21);
    goto LABEL_33;
  }

  if (v12 > 1936876402)
  {
    if (v12 == 1967211588)
    {
      if (a1[535])
      {
        v24 = &kCFBooleanTrue;
      }

      else
      {
        v24 = &kCFBooleanFalse;
      }

      *a6 = *v24;
      return;
    }

    if (v12 != 1936876403)
    {
      goto LABEL_22;
    }

    v17 = a1;
    v18 = 1768845428;
LABEL_20:
    v19 = sub_4B6798(v17, v18);
LABEL_33:
    *a6 = v19;
    return;
  }

  if (v12 != 1818446148)
  {
    if (v12 == 1835103844)
    {
      v13 = *a5;
      if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v31 = sub_5544(14);
        if (*v31)
        {
          if (os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
          {
            *ioDataSize = *a2;
            v35 = *(a2 + 8);
            sub_22CE0(&inAddress);
          }
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        *v32 = &off_6DDDD0;
        v32[2] = 561211770;
      }

      v14 = (*(*a1 + 120))(a1);
      inAddress.mSelector = 1986290211;
      *&inAddress.mScope = *(a2 + 4);
      if (AudioObjectHasProperty(v14, &inAddress))
      {
        ioDataSize[0] = sub_543D0(v14, &inAddress, 0, 0);
        if (ioDataSize[0])
        {
          PropertyData = AudioObjectGetPropertyData(v14, &inAddress, 0, 0, ioDataSize, &outData);
          if (!PropertyData)
          {
            v16 = outData;
            *a6 = v16;
            return;
          }
        }

        else
        {
          PropertyData = 2003329396;
        }
      }

      else
      {
        PropertyData = 2003332927;
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = &off_6DDDD0;
      v33[2] = PropertyData;
    }

    goto LABEL_22;
  }

  v22 = (*(*a1 + 120))(a1);
  sub_33C4EC(&outData, v22, COERCE_DOUBLE(1735159650));
  v23 = outData;
  *a6 = outData;
  if (v23 != 0.0)
  {
    CFRelease(*&v23);
  }
}

void sub_33C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_33C4EC(void *a1, AudioObjectID a2, double a3)
{
  v11 = a2;
  inAddress.mSelector = 1818446148;
  *&inAddress.mScope = a3;
  sub_33A098(&v7, &v11, &inAddress, 0, 0);
  v4 = v7;
  if (v7 || (v9 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v5;
    CFRelease(v5);
  }

  else
  {
    *a1 = 0;
  }
}

void sub_33C5C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_33C5D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_33C5D8(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_33C618(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
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

  if (a2->mSelector == 1818446148 || a2->mSelector == 1835103844)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_33C930(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v4 = 0;
  mSelector = a2->mSelector;
  if (a2->mSelector > 1818446147)
  {
    if (mSelector > 1936876402)
    {
      v6 = mSelector == 1936876403;
      v7 = 2020898165;
    }

    else
    {
      v6 = mSelector == 1818446148;
      v7 = 1835103844;
    }

    if (!v6 && mSelector != v7)
    {
      goto LABEL_18;
    }

    return v4;
  }

  if (mSelector == 1684304756 || mSelector == 1685287523)
  {
    v13 = v2;
    v14 = v3;
    mScope = a2->mScope;
    v12.mSelector = 1936945763;
    v12.mScope = mScope;
    v12.mElement = 0;
    return sub_BE734(a1, &v12);
  }

  if (mSelector == 1685288051)
  {
    return v4;
  }

LABEL_18:

  return sub_BE734(a1, a2);
}

uint64_t sub_33CA10(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1818446147)
  {
    if (mSelector == 1818446148 || mSelector == 1835103844)
    {
      return 1;
    }

    v10 = 1936876403;
  }

  else
  {
    if (mSelector == 1684304756 || mSelector == 1685287523)
    {
      mScope = a2->mScope;
      v7 = 1936945763;
      goto LABEL_16;
    }

    v10 = 1685288051;
  }

  if (mSelector != v10)
  {
    sub_4DFC0(a1);
    v11 = *(a1 + 268);
    p_inAddress = a2;
    return AudioObjectHasProperty(v11, p_inAddress) != 0;
  }

  mScope = a2->mScope;
  v7 = 1936941859;
LABEL_16:
  inAddress.mSelector = v7;
  inAddress.mScope = mScope;
  inAddress.mElement = 0;
  sub_4DFC0(a1);
  v11 = *(a1 + 268);
  p_inAddress = &inAddress;
  return AudioObjectHasProperty(v11, p_inAddress) != 0;
}

void sub_33CB04(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

void *sub_33CB40(uint64_t a1, AudioObjectID a2, double a3)
{
  v11 = a2;
  inAddress.mSelector = 1836411236;
  *&inAddress.mScope = a3;
  result = sub_12794C(&v6, &v11, &inAddress, 0, 0);
  *a1 = 0;
  *(a1 + 16) = 0;
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    *a1 = &off_6DACD8;
    *(a1 + 8) = v5;
    *(a1 + 16) = 1;
    return sub_8AAAC(&v7);
  }

  return result;
}

const void *sub_33CBE0(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFBooleanGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFBooleanGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_33CCC4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_30F6A4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_33CD04(uint64_t a1, AudioObjectID a2, void **a3)
{
  sub_33C4EC(&v112, a2, COERCE_DOUBLE(1735159650));
  sub_53E8(&outData, ":");
  sub_33CB40(&__str, a2, COERCE_DOUBLE(1735159650));
  if (__str.__r_.__value_.__s.__data_[16] == 1)
  {
    sub_65388(&cf, __str.__r_.__value_.__l.__size_);
    if (!cf.__r_.__value_.__r.__words[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    sub_53E8(v110, "");
    v6 = cf.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v111) < 0)
    {
      sub_54A0(__p, v110[0], v110[1]);
    }

    else
    {
      *__p = *v110;
      *&__p[16] = v111;
    }

    if (v6 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v6)))
    {
      sub_1DAFFC(&v113, v6);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      v113 = *__p;
    }

    if (SHIBYTE(v111) < 0)
    {
      operator delete(v110[0]);
    }

    if (cf.__r_.__value_.__r.__words[0])
    {
      CFRelease(cf.__r_.__value_.__l.__data_);
    }

    std::operator+<char>();
    v8 = std::string::append(__p, ":", 1uLL);
    v9 = v8->__r_.__value_.__r.__words[0];
    cf.__r_.__value_.__r.__words[0] = v8->__r_.__value_.__l.__size_;
    *(cf.__r_.__value_.__r.__words + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v117 < 0)
    {
      operator delete(outData);
    }

    outData = v9;
    *v116 = cf.__r_.__value_.__r.__words[0];
    *&v116[7] = *(cf.__r_.__value_.__r.__words + 7);
    v117 = v10;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (__str.__r_.__value_.__s.__data_[16])
    {
      sub_8AAAC(&__str);
    }
  }

  v11 = v112;
  if (v112)
  {
    CFRetain(v112);
  }

  v109 = v11;
  sub_2288C(__p);
  *&__p[*(*&__p[16] - 24) + 24] = *&__p[*(*&__p[16] - 24) + 24] & 0xFFFFFFB5 | 8;
  if (!v11)
  {
    v105 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v105, "Could not construct");
  }

  sub_4A8F8(v11);
  std::ostream::operator<<();
  if ((v128 & 0x10) != 0)
  {
    v13 = v127;
    if (v127 < v124)
    {
      v127 = v124;
      v13 = v124;
    }

    v14 = __src;
  }

  else
  {
    if ((v128 & 8) == 0)
    {
      v12 = 0;
      *(&cf.__r_.__value_.__s + 23) = 0;
      goto LABEL_39;
    }

    v14 = v121;
    v13 = v122;
  }

  v12 = v13 - v14;
  if (v13 - v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&cf.__r_.__value_.__s + 23) = v13 - v14;
  if (v12)
  {
    memmove(&cf, v14, v12);
  }

LABEL_39:
  cf.__r_.__value_.__s.__data_[v12] = 0;
  *&__p[16] = v15;
  if (v126 < 0)
  {
    operator delete(v125);
  }

  std::locale::~locale(&__p[32]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v16 = std::string::insert(&cf, 0, ":", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v113, ":", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cf.__r_.__value_.__l.__data_);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  v20 = *(a3 + 23);
  v21 = v20 < 0;
  if (v20 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21)
  {
    v23 = a3[1];
  }

  else
  {
    v23 = *(a3 + 23);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  p_str = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  else
  {
    p_str = &__str;
  }

  v26 = &v23[v22];
  if (v23 && size)
  {
    v29 = p_str->__r_.__value_.__s.__data_[0];
    v27 = &p_str->__r_.__value_.__s.__data_[1];
    v28 = v29;
    v30 = v22;
    v31 = &v23[v22];
    do
    {
      v32 = v30 + 1;
      while (*v30 != v28)
      {
        ++v30;
        ++v32;
        if (v30 == v26)
        {
          goto LABEL_72;
        }
      }

      v33 = size - 1;
      v34 = v27;
      while (v33)
      {
        if (v32 == v26)
        {
          goto LABEL_72;
        }

        v36 = *v32++;
        v35 = v36;
        v37 = *v34++;
        --v33;
        if (v35 != v37)
        {
          goto LABEL_69;
        }
      }

      v31 = v30;
LABEL_69:
      ++v30;
    }

    while (v30 != v26);
  }

  else
  {
    v31 = &v23[v22];
  }

LABEL_72:
  v38 = v31 - v22;
  if (v31 != v26 || size == 0)
  {
    v40 = v38;
  }

  else
  {
    v40 = -1;
  }

  v41 = sub_5544(18);
  v42 = *v41;
  if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v43 = a3;
    }

    else
    {
      v43 = *a3;
    }

    v44 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v44 = __str.__r_.__value_.__r.__words[0];
    }

    p_outData = &outData;
    if ((v117 & 0x80u) != 0)
    {
      p_outData = outData;
    }

    *__p = 136316162;
    *&__p[4] = "Device_USB_Aspen.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 341;
    *&__p[18] = 2080;
    *&__p[20] = v43;
    *&__p[28] = 2080;
    *&__p[30] = v44;
    v120 = 2080;
    v121 = p_outData;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d UID is %s will search for last occurrence of %s, and replace it with %s", __p, 0x30u);
  }

  v46 = *(a3 + 23);
  if (v40 == -1)
  {
    if (v46 < 0)
    {
      sub_54A0(&v108, *a3, a3[1]);
    }

    else
    {
      v108 = *a3;
    }
  }

  else
  {
    if (v46 < 0)
    {
      sub_54A0(&v108, *a3, a3[1]);
    }

    else
    {
      v108 = *a3;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __str.__r_.__value_.__l.__size_;
    }

    if ((v117 & 0x80u) == 0)
    {
      v48 = &outData;
    }

    else
    {
      v48 = outData;
    }

    if ((v117 & 0x80u) == 0)
    {
      v49 = v117;
    }

    else
    {
      v49 = *v116;
    }

    std::string::replace(&v108, v40, v47, v48, v49);
    v50 = sub_5544(18);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
    {
      v52 = &v108;
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v108.__r_.__value_.__r.__words[0];
      }

      *__p = 136315650;
      *&__p[4] = "Device_USB_Aspen.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 350;
      *&__p[18] = 2080;
      *&__p[20] = v52;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updated USB UID is %s", __p, 0x1Cu);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v117 < 0)
  {
    operator delete(outData);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  sub_33CB40(&outData, a2, COERCE_DOUBLE(1735159650));
  if (v116[8] != 1)
  {
    v54 = 0;
    goto LABEL_169;
  }

  sub_65388(v110, *v116);
  if (!v110[0])
  {
    v107 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v107, "Could not construct");
  }

  sub_53E8(&v113, "");
  v53 = v110[0];
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_54A0(__p, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = v113;
  }

  if (v53 && (v55 = CFStringGetTypeID(), v55 == CFGetTypeID(v53)))
  {
    sub_1DAFFC(&__str, v53);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    __str = *__p;
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (v110[0])
  {
    CFRelease(v110[0]);
  }

  v57 = __str.__r_.__value_.__l.__size_;
  v56 = __str.__r_.__value_.__r.__words[0];
  v58 = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = __str.__r_.__value_.__l.__size_;
    v58 = __str.__r_.__value_.__r.__words[0];
  }

  if (!v59)
  {
    goto LABEL_164;
  }

  v60 = v58 + v59;
  v61 = v58;
  v62 = v60;
  do
  {
    v63 = v61;
    v64 = v61;
    while (1)
    {
      v65 = *v64++;
      if (v65 == 58)
      {
        break;
      }

      v63 = v64;
      if (v64 == v60)
      {
        v63 = v62;
        goto LABEL_140;
      }
    }

    v61 = (&v63->__r_.__value_.__l.__data_ + 1);
    v62 = v63;
  }

  while (v64 != v60);
LABEL_140:
  v66 = v63 - v58;
  if (v63 == v60)
  {
    v66 = -1;
  }

  v67 = v66 + 1;
  if ((v66 + 1) < 2)
  {
    goto LABEL_164;
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v66 == __str.__r_.__value_.__l.__size_ - 1)
    {
      goto LABEL_164;
    }
  }

  else
  {
    if (v66 == HIBYTE(__str.__r_.__value_.__r.__words[2]) - 1)
    {
      goto LABEL_164;
    }

    v56 = &__str;
    v57 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  v68 = v66 - 1;
  if (v57 >= v66 - 1)
  {
    v69 = v66 - 1;
  }

  else
  {
    v69 = v57;
  }

  if (v57 - v69 > 1)
  {
    v57 = v69 + 1;
  }

  if (v57)
  {
    v70 = v56 + v57;
    v71 = v56;
    v72 = v70;
    do
    {
      v73 = v71;
      v74 = v71;
      while (1)
      {
        v75 = *v74++;
        if (v75 == 58)
        {
          break;
        }

        v73 = v74;
        if (v74 == v70)
        {
          v73 = v72;
          goto LABEL_159;
        }
      }

      v71 = (&v73->__r_.__value_.__l.__data_ + 1);
      v72 = v73;
    }

    while (v74 != v70);
LABEL_159:
    v54 = 0;
    if (v73 == v70)
    {
      goto LABEL_165;
    }

    v76 = v73 - v56;
    if (v76 == -1)
    {
      goto LABEL_165;
    }

    v77 = v76 - v66;
    if (v77 < 0)
    {
      v77 = -v77;
    }

    if (v77 >= 2)
    {
      std::string::basic_string(__p, &__str, v76 + 1, v68, &v112);
      v103 = std::stoul(__p, 0, 16);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string(__p, &__str, v67, 0xFFFFFFFFFFFFFFFFLL, &v112);
      v104 = std::stoul(__p, 0, 16);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v54 = v103 | (v104 << 32);
      goto LABEL_165;
    }
  }

LABEL_164:
  v54 = 0;
LABEL_165:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v116[8])
  {
    sub_8AAAC(&outData);
  }

LABEL_169:
  sub_4B1A68(a1, a2, a3, &v108, v54);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  *a1 = off_6C24B8;
  *(a1 + 532) = 0;
  *(a1 + 534) = 0;
  strcpy(__p, "DDAubolg");
  __p[9] = 0;
  *&__p[10] = 0;
  if (!AudioObjectHasProperty(a2, __p))
  {
    goto LABEL_174;
  }

  LODWORD(cf.__r_.__value_.__l.__data_) = sub_543D0(a2, __p, 0, 0);
  if (!LODWORD(cf.__r_.__value_.__l.__data_))
  {
    goto LABEL_174;
  }

  outData = 0;
  if (AudioObjectGetPropertyData(a2, __p, 0, 0, &cf, &outData))
  {
    goto LABEL_174;
  }

  v97 = outData;
  __str.__r_.__value_.__r.__words[0] = outData;
  sub_33CBE0(&v113, &__str.__r_.__value_.__l.__data_);
  v98 = v113.__r_.__value_.__r.__words[0];
  if (v97)
  {
    CFRelease(v97);
  }

  v110[0] = v98;
  if (v98)
  {
    v99 = sub_27CA94(v98);
    CFRelease(v98);
    *(a1 + 535) = v99;
    if (v99)
    {
      v100 = sub_5544(18);
      v101 = *v100;
      if (*v100)
      {
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 128))(&outData, a1);
          v102 = (v117 & 0x80u) == 0 ? &outData : outData;
          *__p = 136315650;
          *&__p[4] = "Device_USB_Aspen.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 378;
          *&__p[18] = 2080;
          *&__p[20] = v102;
          _os_log_impl(&dword_0, v101, OS_LOG_TYPE_INFO, "%25s:%-5d Device with UID %s is Apple Display", __p, 0x1Cu);
          if (v117 < 0)
          {
            operator delete(outData);
          }
        }
      }
    }
  }

  else
  {
LABEL_174:
    *(a1 + 535) = 0;
  }

  if (*(a1 + 535) == 1)
  {
    v78 = __p;
    (*(*a1 + 464))(__p, a1);
    v79 = __p[23];
    v81 = *__p;
    v80 = *&__p[8];
    if (__p[23] < 0)
    {
      v78 = *__p;
    }

    if (__p[23] >= 0)
    {
      v80 = __p[23];
    }

    v82 = &v78[v80];
    if (v80 >= 14)
    {
      v83 = v78;
      do
      {
        v84 = memchr(v83, 65, v80 - 13);
        if (!v84)
        {
          break;
        }

        if (*v84 == 0x6F4C206F69647541 && *(v84 + 6) == 0x6B636162706F6F4CLL)
        {
          goto LABEL_189;
        }

        v83 = v84 + 1;
        v80 = v82 - v83;
      }

      while (v82 - v83 > 13);
    }

    v84 = v82;
LABEL_189:
    if (v84 == v82)
    {
      v86 = -1;
    }

    else
    {
      v86 = v84 - v78;
    }

    if (v79 < 0)
    {
      operator delete(v81);
    }

    v87 = sub_5544(18);
    v88 = *v87;
    if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 464))(&outData, a1);
      if ((v117 & 0x80u) == 0)
      {
        v89 = &outData;
      }

      else
      {
        v89 = outData;
      }

      v90 = "yes";
      *&__p[4] = "Device_USB_Aspen.cpp";
      *&__p[12] = 1024;
      *__p = 136315906;
      if (v86 == -1)
      {
        v90 = "no";
      }

      *&__p[14] = 1733;
      *&__p[18] = 2080;
      *&__p[20] = v89;
      *&__p[28] = 2080;
      *&__p[30] = v90;
      _os_log_impl(&dword_0, v88, OS_LOG_TYPE_INFO, "%25s:%-5d IsAudioLoopbackDevice() - modelUID is %s. Loopback found: %s", __p, 0x26u);
      if (v117 < 0)
      {
        operator delete(outData);
      }
    }

    v91 = 1869968496;
    if (v86 == -1)
    {
      v95 = *(a1 + 268);
      strcpy(__p, "#mtsptuo");
      __p[9] = 0;
      *&__p[10] = 0;
      LODWORD(outData) = 0;
      AudioObjectGetPropertyDataSize(v95, __p, 0, 0, &outData);
      v92 = outData < 4;
      if (outData >= 4)
      {
        v91 = 1869968496;
      }

      else
      {
        v91 = 1768845428;
      }

      v93 = 2;
    }

    else
    {
      v92 = 0;
      v93 = 1;
    }

    goto LABEL_211;
  }

  v94 = *(a1 + 268);
  strcpy(__p, "#mtsptuo");
  __p[9] = 0;
  *&__p[10] = 0;
  LODWORD(outData) = 0;
  AudioObjectGetPropertyDataSize(v94, __p, 0, 0, &outData);
  if (outData >= 4)
  {
    v93 = 0;
    v92 = 0;
    v91 = 1869968496;
LABEL_211:
    sub_4B4F1C(a1, v93, v91, v92);
  }

  return a1;
}