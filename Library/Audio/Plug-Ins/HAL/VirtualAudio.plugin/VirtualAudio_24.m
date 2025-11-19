void sub_1F3B44(unint64_t a1)
{
  if (a1 < 0x8AD8F2FBA93869)
  {
    operator new();
  }

  sub_6ACD8();
}

void *sub_1F3BA0(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void sub_1F3C44()
{
  if ((atomic_load_explicit(&qword_6E6010, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6E6010))
    {
      v0[0] = 1936290409;
      v0[1] = dword_6E6018 + 1;
      v0[2] = 1836346212;
      v0[3] = dword_6E6018 + 2;
      v0[4] = 1936614497;
      v0[5] = dword_6E6018 + 3;
      v0[6] = 1819309171;
      v0[7] = dword_6E6018 + 4;
      v0[8] = 1752200307;
      v0[9] = dword_6E6018 + 5;
      v0[10] = 1885696611;
      v0[11] = dword_6E6018 + 6;
      dword_6E6018 += 7;
      v0[12] = 1936750180;
      v0[13] = dword_6E6018;
      sub_1F3D64(v0, 7);
      __cxa_guard_release(&qword_6E6010);
    }
  }
}

unsigned int *sub_1F3D64(unsigned int *result, uint64_t a2)
{
  qword_6E6008 = 0;
  qword_6E6000 = 0;
  qword_6E5FF8 = &qword_6E6000;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = &qword_6E6000;
    while (1)
    {
      if (v4 == &qword_6E6000)
      {
        v6 = &qword_6E6000;
      }

      else
      {
        v5 = v3;
        if (v3)
        {
          do
          {
            v6 = v5;
            v5 = v5[1];
          }

          while (v5);
        }

        else
        {
          v7 = &qword_6E6000;
          do
          {
            v6 = v7[2];
            v8 = *v6 == v7;
            v7 = v6;
          }

          while (v8);
        }

        v9 = *v2;
        if (*(v6 + 7) >= *v2)
        {
          if (v3)
          {
            v10 = &qword_6E6000;
            while (1)
            {
              while (1)
              {
                v11 = v3;
                v12 = *(v3 + 28);
                if (v9 >= v12)
                {
                  break;
                }

                v3 = *v11;
                v10 = v11;
                if (!*v11)
                {
                  goto LABEL_15;
                }
              }

              if (v12 >= v9)
              {
                break;
              }

              v10 = v11 + 1;
              v3 = v11[1];
              if (!v3)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            v10 = &qword_6E6000;
          }

          goto LABEL_14;
        }
      }

      if (v3)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = &qword_6E6000;
      }

LABEL_14:
      if (!*v10)
      {
LABEL_15:
        operator new();
      }

      v2 += 2;
      if (v2 == &result[2 * a2])
      {
        return result;
      }

      v4 = qword_6E5FF8;
      v3 = qword_6E6000;
    }
  }

  return result;
}

uint64_t sub_1F3F0C(uint64_t a1)
{
  sub_1F1CD4(@"VoiceOver", &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_125D8(__p, cf);
  v2 = *(a1 + 143);
  if (v2 >= 0)
  {
    v3 = *(a1 + 143);
  }

  else
  {
    v3 = *(a1 + 128);
  }

  v4 = v14;
  v5 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v3 != v4)
  {
    v8 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v2 >= 0)
  {
    v6 = (a1 + 120);
  }

  else
  {
    v6 = *(a1 + 120);
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = memcmp(v6, v7, v3) == 0;
  if (v5 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    return 0;
  }

  v9 = sub_8703C();
  return (*(*v9 + 232))(v9);
}

uint64_t sub_1F4064(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_1215C(a1, a2, a3, (a3 - a2) >> 3);
}

uint64_t sub_1F4128(uint64_t result, uint64_t a2)
{
  *a2 = off_6B8890;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_1F424C(int a1)
{
  if ((atomic_load_explicit(&qword_6E6128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6128))
  {
    sub_1F42D4(a1);

    __cxa_guard_release(&qword_6E6128);
  }
}

void sub_1F42D4(int a1)
{
  v34 = xmmword_517180;
  *v70 = xmmword_517180;
  sub_1E54B0(__p, v70, 4);
  sub_1F68D0(&unk_6E6068, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *v70 = v34;
  sub_1E54B0(v68, v70, 4);
  *v70 = v34;
  sub_1E54B0(v67, v70, 4);
  *v70 = 0x666D6963736D6963;
  sub_1E54B0(v66, v70, 2);
  *v70 = 0x736D6963696D6963;
  sub_1E54B0(v65, v70, 2);
  *v70 = 0x666D6963696D6963;
  sub_1E54B0(v64, v70, 2);
  *v70 = 0x666D6963736D6963;
  sub_1E54B0(v63, v70, 2);
  *v70 = 1768778083;
  sub_1E54B0(v62, v70, 1);
  *v70 = 1819109731;
  sub_1E54B0(v61, v70, 1);
  *v70 = 1936550243;
  sub_1E54B0(v60, v70, 1);
  *v70 = 1718446435;
  sub_1E54B0(v59, v70, 1);
  v2 = _os_feature_enabled_impl();
  if (qword_6E6070 == unk_6E6078)
  {
    qmemcpy(v70, "ivpvovpvcgpvcvmrgcrvgsmvpcps", 28);
    memset(v58, 0, sizeof(v58));
    sub_4625C(v58, v70, &v70[28], 7uLL);
    *v70 = xmmword_517190;
    memset(v57, 0, sizeof(v57));
    sub_4625C(v57, v70, &v70[16], 4uLL);
    qmemcpy(v70, " wargcrvccahgsmvivpvcvmiovpvcomicgpvtcmgcvmrplminkpstmsmmacmpcpspcts", sizeof(v70));
    memset(v56, 0, sizeof(v56));
    sub_4625C(v56, v70, &v71, 0x11uLL);
    if (v2)
    {
      v3 = v68;
    }

    else
    {
      v3 = v62;
    }

    sub_1E5534(&v100, 1651797297, v3, 1869442665, -1, v58);
    if (v2)
    {
      v4 = v68;
    }

    else
    {
      v4 = v61;
    }

    sub_1E5534(&v95, 1651797298, v4, 1869442665, -1, v58);
    if (v2)
    {
      v5 = v68;
    }

    else
    {
      v5 = v60;
    }

    sub_1E5534(&v90, 1650551601, v5, 1869442665, -1, v58);
    if (v2)
    {
      v6 = v68;
    }

    else
    {
      v6 = v59;
    }

    sub_1E5534(&v84, 1718514737, v6, 1869442665, -1, v58);
    if (v2)
    {
      v7 = v68;
    }

    else
    {
      v7 = v66;
    }

    sub_1E5534(&v82, 1650811245, v7, 1935827812, 1, v57);
    sub_1E5534(&v50, 1650811245, v7, 1668441188, 0, v57);
    if (v2)
    {
      v8 = v68;
    }

    else
    {
      v8 = v67;
    }

    sub_1E5534(&v44, 1986228839, v8, 1668441188, 0, v57);
    sub_1E5534(v43, 1937007986, v68, 1937007986, 0, v56);
    sub_1E5534(v42, 1937007986, v68, 1937007986, 1, v56);
    v80 = 0x766D736776726367;
    memset(v70, 0, 24);
    sub_4625C(v70, &v80, &v81, 2uLL);
    sub_1E5534(v41, 1634495520, qword_6E60C8, 1852796517, -1, v70);
    if (*v70)
    {
      operator delete(*v70);
    }

    memset(v70, 0, 24);
    sub_1E5534(&v80, 1870033508, qword_6E60C8, 1852796517, -1, v70);
    if (v2)
    {
      v9 = v68;
    }

    else
    {
      v9 = v65;
    }

    sub_1E55D4(&v40, 1668112945, v9);
    if (v2)
    {
      v10 = v68;
    }

    else
    {
      v10 = v64;
    }

    sub_1E55D4(&v39, 1668112946, v10);
    if (v2)
    {
      v11 = v68;
    }

    else
    {
      v11 = v63;
    }

    sub_1E55D4(&v38, 1668112947, v11);
    if ((atomic_load_explicit(&qword_6E6168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6168))
    {
      sub_1E560C(v70, &v100);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      sub_1E56A8(&v35, v70, &v70[64], 1uLL);
    }

    if ((atomic_load_explicit(&qword_6E61A8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_6E61A8))
      {
        sub_1E560C(v70, &v95);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        sub_1E56A8(&v35, v70, &v70[64], 1uLL);
      }
    }

    *v70 = v84;
    memset(&v70[8], 0, 24);
    sub_46980(&v70[8], v85, v86, (v86 - v85) >> 2);
    *&v70[32] = v87;
    memset(&v70[40], 0, 24);
    sub_46980(&v70[40], v88, v89, (v89 - v88) >> 2);
    *&v70[64] = v50;
    memset(v72, 0, sizeof(v72));
    sub_46980(v72, v51, v52, (v52 - v51) >> 2);
    v73 = v53;
    memset(v74, 0, sizeof(v74));
    sub_46980(v74, v54, v55, (v55 - v54) >> 2);
    v75 = v44;
    memset(v76, 0, sizeof(v76));
    sub_46980(v76, v45, v46, (v46 - v45) >> 2);
    v77 = v47;
    memset(v78, 0, sizeof(v78));
    sub_46980(v78, v48, v49, (v49 - v48) >> 2);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    sub_1E56A8(&v35, v70, &v79, 3uLL);
  }

  if (a1 && qword_6E60B0 == unk_6E60B8)
  {
    v42[0] = 0;
    v82 = 0x676C6F6272647623;
    LODWORD(v83[0]) = 0;
    PropertyDataSize = AudioObjectGetPropertyDataSize(1u, &v82, 0, 0, v42);
    v13 = PropertyDataSize;
    if (PropertyDataSize)
    {
      v28 = sub_5544(14);
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        sub_22CE0(&v100);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v13;
    }

    v14 = v42[0];
    v15 = v42[0] >> 2;
    __chkstk_darwin(PropertyDataSize);
    v17 = (v33 - ((v16 + 15) & 0x1FFFFFFF0));
    PropertyData = AudioObjectGetPropertyData(1u, &v82, 0, 0, v42, v17);
    v33[1] = v33;
    if (PropertyData)
    {
      v30 = sub_5544(14);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        *v70 = 136315394;
        *&v70[4] = "DeviceSettings_D40Family.cpp";
        *&v70[12] = 1024;
        *&v70[14] = 177;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to read current device list", v70, 0x12u);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = &off_6DDDD0;
      v32[2] = PropertyData;
    }

    if (v14 >= 4)
    {
      *&v19 = 136316418;
      v34 = v19;
      while (1)
      {
        v43[0] = 0;
        v41[0] = 8;
        v50 = 0x676C6F6275696420;
        LODWORD(v51) = 0;
        v20 = AudioObjectGetPropertyData(*v17, &v50, 0, 0, v41, v43);
        v84 = v43[0];
        LOBYTE(v85) = 1;
        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v41[0] == 8;
        }

        if (!v21 || v43[0] == 0)
        {
          v23 = sub_5544(21);
          v24 = *v23;
          if (*v23)
          {
            if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
            {
              v25 = *v17;
              *v70 = v34;
              *&v70[4] = "DeviceSettings_D40Family.cpp";
              *&v70[12] = 1024;
              *&v70[14] = 191;
              *&v70[18] = 1024;
              *&v70[20] = v25;
              *&v70[24] = 1024;
              *&v70[26] = v20;
              *&v70[30] = 1024;
              *&v70[32] = v42[0];
              *&v70[36] = 2048;
              *&v70[38] = v43[0];
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d failed to read device UID for device %u (status = %d, propSize = %u, uid = %p)", v70, 0x2Eu);
            }
          }
        }

        if (v43[0] && CFStringCompare(v43[0], @"Codec", 0) == kCFCompareEqualTo)
        {
          break;
        }

        sub_BDC5C(&v84);
        ++v17;
        if (!--v15)
        {
          goto LABEL_67;
        }
      }

      if ((atomic_load_explicit(&qword_6E6380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6380))
      {
        qword_6E6370 = 0x7074727545616E63;
        dword_6E6378 = 0;
        __cxa_guard_release(&qword_6E6380);
      }

      if (AudioObjectHasProperty(*v17, &qword_6E6370))
      {
        qmemcpy(v70, "cimicimscimfmCNAMCNApCNA", 24);
        sub_1E54B0(&v95, v70, 6);
        sub_1E55D4(v70, 1633775203, &v95);
        if ((atomic_load_explicit(&qword_6E63C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E63C0))
        {
          sub_1E560C(&v100, v70);
          v91 = 0;
          v90 = 0;
          v92 = 0;
          sub_1E56A8(&v90, &v100, v105, 1uLL);
        }

        v100 = &unk_6E6388;
        sub_1E5A9C(&qword_6E60B0, &v100);
        if (*&v70[40])
        {
          *&v70[48] = *&v70[40];
          operator delete(*&v70[40]);
        }

        if (*&v70[8])
        {
          *&v70[16] = *&v70[8];
          operator delete(*&v70[8]);
        }

        if (v95)
        {
          v96 = v95;
          operator delete(v95);
        }
      }

      sub_BDC5C(&v84);
    }
  }

LABEL_67:
  if (qword_6E6090 == unk_6E6098)
  {
    v95 = 0x726D76637670766FLL;
    if (v2)
    {
      v26 = v68;
    }

    else
    {
      v26 = v66;
    }

    v101 = 0;
    v102 = 0;
    v100 = 0;
    sub_4625C(&v100, &v95, &v96, 2uLL);
    sub_1E5534(v70, 1634495520, v26, 1935827812, 1, &v100);
    if (v100)
    {
      operator delete(v100);
    }

    v90 = 0x726D76637670766FLL;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    sub_4625C(&v95, &v90, &v91, 2uLL);
    sub_1E5534(&v100, 1634495520, v26, 1668441188, 0, &v95);
    if (v95)
    {
      operator delete(v95);
    }

    v84 = 0x726D76637670766FLL;
    v92 = 0;
    v90 = 0;
    v91 = 0;
    sub_4625C(&v90, &v84, &v85, 2uLL);
    if (v2)
    {
      v27 = v68;
    }

    else
    {
      v27 = v65;
    }

    sub_1E5534(&v95, 1668112945, v27, 1852796517, -1, &v90);
    if (v90)
    {
      operator delete(v90);
    }

    v82 = 0x726D76637670766FLL;
    v86 = 0;
    v84 = 0;
    v85 = 0;
    sub_4625C(&v84, &v82, v83, 2uLL);
    sub_1E5534(&v90, 1634495520, qword_6E60C8, 1852796517, -1, &v84);
    if (v84)
    {
      operator delete(v84);
    }

    v83[0] = 0;
    v82 = 0;
    v83[1] = 0;
    sub_1E5534(&v84, 1870033508, qword_6E60C8, 1852796517, -1, &v82);
    if ((atomic_load_explicit(&qword_6E6400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6400))
    {
      sub_1E560C(&v82, &v100);
      v51 = 0;
      v50 = 0;
      v52 = 0;
      sub_1E56A8(&v50, &v82, &v84, 1uLL);
    }

    if ((atomic_load_explicit(&qword_6E6440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6440))
    {
      sub_1E560C(&v82, v70);
      v51 = 0;
      v50 = 0;
      v52 = 0;
      sub_1E56A8(&v50, &v82, &v84, 1uLL);
    }

    if ((atomic_load_explicit(&qword_6E6480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6480))
    {
      sub_1E560C(&v82, &v95);
      v51 = 0;
      v50 = 0;
      v52 = 0;
      sub_1E56A8(&v50, &v82, &v84, 1uLL);
    }

    if ((atomic_load_explicit(&qword_6E64C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E64C0))
    {
      sub_1E560C(&v82, &v90);
      v51 = 0;
      v50 = 0;
      v52 = 0;
      sub_1E56A8(&v50, &v82, &v84, 1uLL);
    }

    if ((atomic_load_explicit(&qword_6E6500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6500))
    {
      sub_1E560C(&v82, &v84);
      v51 = 0;
      v50 = 0;
      v52 = 0;
      sub_1E56A8(&v50, &v82, &v84, 1uLL);
    }

    v82 = &unk_6E63C8;
    sub_1E5A9C(&qword_6E6090, &v82);
    v82 = &unk_6E6408;
    sub_1E5A9C(&qword_6E6090, &v82);
    v82 = &unk_6E6448;
    sub_1E5A9C(&qword_6E6090, &v82);
    v82 = &unk_6E6488;
    sub_1E5A9C(&qword_6E6090, &v82);
    v82 = &unk_6E64C8;
    sub_1E5A9C(&qword_6E6090, &v82);
    qword_6E60A8 = &unk_6E63C8;
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v85)
    {
      v86 = v85;
      operator delete(v85);
    }

    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }

    if (v91)
    {
      v92 = v91;
      operator delete(v91);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v96)
    {
      v97 = v96;
      operator delete(v96);
    }

    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    if (*&v70[40])
    {
      *&v70[48] = *&v70[40];
      operator delete(*&v70[40]);
    }

    if (*&v70[8])
    {
      *&v70[16] = *&v70[8];
      operator delete(*&v70[8]);
    }
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }

  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  if (v67[0])
  {
    v67[1] = v67[0];
    operator delete(v67[0]);
  }

  if (v68[0])
  {
    v68[1] = v68[0];
    operator delete(v68[0]);
  }
}

void sub_1F5F38(_Unwind_Exception *a1)
{
  *(v1 + 488) = v2;
  sub_1E5808((v1 + 488));
  sub_1E588C((v3 - 184));
  __cxa_guard_abort(&qword_6E63C0);
  sub_1E588C((v1 + 960));
  v5 = *(v3 - 248);
  if (v5)
  {
    *(v3 - 240) = v5;
    operator delete(v5);
  }

  sub_BDC5C(v1 + 1288);
  v6 = *(v1 + 688);
  if (v6)
  {
    *(v1 + 696) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 712);
  if (v7)
  {
    *(v1 + 720) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 736);
  if (v8)
  {
    *(v1 + 744) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 760);
  if (v9)
  {
    *(v1 + 768) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 784);
  if (v10)
  {
    *(v1 + 792) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 808);
  if (v11)
  {
    *(v1 + 816) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 832);
  if (v12)
  {
    *(v1 + 840) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 856);
  if (v13)
  {
    *(v1 + 864) = v13;
    operator delete(v13);
  }

  v14 = *(v1 + 880);
  if (v14)
  {
    *(v1 + 888) = v14;
    operator delete(v14);
  }

  v15 = *(v1 + 904);
  if (v15)
  {
    *(v1 + 912) = v15;
    operator delete(v15);
  }

  sub_1E5B6C(&qword_6E6068);
  _Unwind_Resume(a1);
}

void sub_1F66C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a2)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "DeviceSettingsFactory.cpp";
      v13 = 1024;
      v14 = 246;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((a3 - a2) >= 0x41)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      v4 = sub_5544(21);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315394;
          v12 = "DeviceSettingsFactory.cpp";
          v13 = 1024;
          v14 = 251;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d No valid region, but multiple pattern configs specified.", &v11, 0x12u);
        }
      }
    }

    if ((*(a1 + 24) & 1) == 0)
    {
      v6 = sub_5544(21);
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315394;
          v12 = "DeviceSettingsFactory.cpp";
          v13 = 1024;
          v14 = 252;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d No valid orientation, but multiple pattern configs specified.", &v11, 0x12u);
        }
      }
    }
  }
}

uint64_t sub_1F68D0(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  sub_46980(a1 + 96, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_1F6954(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v5 = v1[5];
  if (v5)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1F6990(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4 == v5)
  {
    v6 = *(v3 + 96);
  }

  else
  {
    v6 = *(v3 + 96);
    do
    {
      if (*v6 == *a2)
      {
        goto LABEL_6;
      }

      v6 += 4;
    }

    while (v6 != v5);
    v6 = v5;
LABEL_6:
    while (*v4 != *a3)
    {
      v4 += 4;
      if (v4 == v5)
      {
        v4 = v5;
        return v4 - v6 > 0;
      }
    }
  }

  return v4 - v6 > 0;
}

uint64_t sub_1F6A04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6B88D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1F6A98(caulk::product *a1, signed int a2)
{
  if (caulk::product::get_device_class(a1) == 1 && _os_feature_enabled_impl())
  {
    if (a2 > 1651797297)
    {
      if (a2 == 1651797298)
      {
        LODWORD(v4) = 1819109731;
      }

      else
      {
        if (a2 != 1718514737)
        {
          goto LABEL_57;
        }

        LODWORD(v4) = 1718446435;
      }
    }

    else
    {
      if (a2 != 1650551601)
      {
        if (a2 == 1651797297)
        {
          LODWORD(v4) = 1768778083;
          goto LABEL_18;
        }

LABEL_57:
        v29 = sub_5544(14);
        v30 = *v29;
        if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, a2);
          v31 = v34 >= 0 ? __p : __p[0];
          *buf = 136315906;
          v36 = "DeviceSettingsFactory.cpp";
          v37 = 1024;
          v38 = 345;
          v39 = 2080;
          *v40 = v31;
          *&v40[8] = 1024;
          *&v40[10] = a2;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Did not find vp mic id for internal id '%s' (%u)", buf, 0x22u);
          if (v34 < 0)
          {
            operator delete(__p[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Did not find vp mic id for internal id '%s' (%u)");
      }

      LODWORD(v4) = 1936550243;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    if (v5 == v6)
    {
      goto LABEL_57;
    }

    v4 = 0;
    do
    {
      for (i = *(*v5 + 32); i != *(*v5 + 40); i += 64)
      {
        if (*i == a2)
        {
          if ((v4 & 0x100000000) != 0)
          {
            v23 = sub_5544(14);
            v24 = *v23;
            if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v36 = "DeviceSettingsFactory.cpp";
              v37 = 1024;
              v38 = 335;
              v39 = 1024;
              *v40 = a2;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): More than one mic for virtual ID %u", buf, 0x18u);
            }

            v25 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v25, "More than one mic for virtual ID %u");
          }

          v8 = *(i + 8);
          if (*(i + 16) - v8 >= 5uLL)
          {
            v26 = sub_5544(14);
            v27 = *v26;
            if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v36 = "DeviceSettingsFactory.cpp";
              v37 = 1024;
              v38 = 337;
              v39 = 1024;
              *v40 = a2;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): More than one data source for virtual ID %u", buf, 0x18u);
            }

            v28 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v28, "More than one data source for virtual ID %u");
          }

          v4 = *v8 | 0x100000000;
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_57;
    }
  }

LABEL_18:
  v9 = sub_5544(21);
  if (*(v9 + 8))
  {
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, v4);
        v11 = v34 >= 0 ? __p : __p[0];
        *buf = 136315906;
        v36 = "DeviceSettingsFactory.cpp";
        v37 = 1024;
        v38 = 346;
        v39 = 1024;
        *v40 = a2;
        *&v40[4] = 2080;
        *&v40[6] = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved Internal Mic ID:%u to Data Source: %s", buf, 0x22u);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v12 = *(a1 + 12);
  v13 = *(a1 + 13) - v12;
  if (!v13)
  {
LABEL_31:
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v4);
      if (v34 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315650;
      v36 = "DeviceSettingsFactory.cpp";
      v37 = 1024;
      v38 = 357;
      v39 = 2080;
      *v40 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not find data source %s within ordered data sources", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "Could not find data source %s within ordered data sources");
  }

  v14 = 0;
  v15 = v13 >> 2;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  while (v4 != *(v12 + 4 * v14))
  {
    if (v15 == ++v14)
    {
      goto LABEL_31;
    }
  }

  v20 = sub_5544(21);
  if (*(v20 + 8))
  {
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v36 = "DeviceSettingsFactory.cpp";
        v37 = 1024;
        v38 = 358;
        v39 = 1024;
        *v40 = v14;
        *&v40[4] = 1024;
        *&v40[6] = a2;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d VP Mic ID:%u was found for Internal ID %u", buf, 0x1Eu);
      }
    }
  }

  return v14;
}

uint64_t sub_1F70D0(int a1)
{
  result = 0;
  switch(a1)
  {
    case 0:
    case 48:
    case 68:
    case 79:
    case 82:
    case 199:
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          v5 = 136315650;
          v6 = "DeviceSettingsFactory.cpp";
          v7 = 1024;
          v8 = 101;
          v9 = 1024;
          v10 = a1;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Product: %u does not support built in mics", &v5, 0x18u);
        }
      }

      return 1;
    case 1:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 69:
    case 70:
    case 71:
    case 72:
    case 76:
    case 89:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 136:
    case 137:
    case 142:
    case 143:
    case 144:
    case 145:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 178:
    case 180:
    case 183:
    case 184:
    case 186:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
      return result;
    case 2:
    case 3:
    case 4:
    case 5:
    case 73:
    case 74:
    case 75:
    case 77:
    case 78:
    case 80:
    case 81:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 134:
    case 135:
    case 138:
    case 139:
    case 140:
    case 141:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 177:
    case 179:
    case 181:
    case 182:
    case 185:
    case 187:
    case 196:
    case 197:
    case 198:
      return 1;
    default:
      if ((a1 - 2025) >= 7 && (a1 - 4013) >= 5)
      {
        return result;
      }

      return 1;
  }
}

uint64_t *sub_1F71EC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1)
    {
      sub_140AD4(*(v1 + 8), *v1);
    }

    operator delete();
  }

  return result;
}

unsigned int **sub_1F7248(unsigned int **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    if (v2)
    {
      sub_140C30(v2);
    }

    v3 = *(v1 + 5);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    sub_128368(v1 + 1);
    operator delete();
  }

  return result;
}

uint64_t sub_1F758C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AlwaysOnHapticDebug.cpp";
      v21 = 1024;
      v22 = 106;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v7 = *(a7 + 40);
  if (v7)
  {
    v8 = sub_4EFA20(v7, a3);
    if (v8)
    {
      v9 = v8;
      v10 = sub_5544(17);
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v9);
          if (v18 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          *buf = 136315906;
          v20 = "AlwaysOnHapticDebug.cpp";
          v21 = 1024;
          v22 = 130;
          v23 = 1024;
          v24 = v9;
          v25 = 2080;
          v26 = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error writing buffer to file: %d %s", buf, 0x22u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return 0;
}

void sub_1F7778(uint64_t a1, uint64_t a2)
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

void sub_1F7978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
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

unint64_t sub_1F79E8(AudioObjectID a1, double a2)
{
  v8 = a1;
  v7.mSelector = 1718839674;
  *&v7.mScope = a2;
  v2 = sub_542F0(&v8, &v7, 0, 0);
  if (v2 || (v3 & 1) == 0)
  {
    v5 = v2;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v5;
  }

  return HIDWORD(v2);
}

void sub_1F7A88()
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
  LOBYTE(v141) = 0;
  v142 = 0;
  LOBYTE(v143) = 0;
  v144 = 0;
  LOBYTE(v145) = 0;
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
  v159 = 0;
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
  v3 = 2;
  v5 = 5;
  LODWORD(__src) = 3;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x400000003;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  v10 = 16843009;
  LOWORD(v13) = 257;
  HIWORD(v13) = 257;
  LOWORD(v15) = 256;
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
  v93 = 1090519040;
  v94 = 1;
  v83 = -1040187392;
  v84 = 1;
  v66 = 0;
  v67 = 1;
  LOWORD(v68) = 257;
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

  v101 = 8;
  if ((v104 & 1) == 0)
  {
    v104 = 1;
  }

  v103 = 16;
  v107 = 13;
  v108 = 1;
  v109 = 13;
  v110 = 1;
  v111 = 13;
  v112 = 1;
  v115 = 13;
  v116 = 1;
  v132 = 19;
  v133 = 1;
  v134 = 3;
  v135 = 1;
  v136 = 12;
  v137 = 1;
  v138 = 19;
  v139 = 1;
  v151 = 6;
  v152 = 1;
  v153 = 19;
  v154 = 1;
  v155 = 10;
  v156 = 1;
  v157 = 5;
  v158 = 1;
  v140 = 257;
  if ((v142 & 1) == 0)
  {
    v142 = 1;
  }

  v141 = 4;
  if ((v146 & 1) == 0)
  {
    v146 = 1;
  }

  v145 = 8;
  if ((v144 & 1) == 0)
  {
    v144 = 1;
  }

  v143 = 2;
  sub_30F70C(&__src, 97);
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

void *sub_1F8148(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
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

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_469FC(v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

std::string *sub_1F826C(std::string *a1, char *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return sub_1D8C10(a1, a2);
  }

  result = sub_53E8(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_1F82A0()
{
  if ((atomic_load_explicit(&qword_6E6660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6660))
  {
    sub_1F831C();

    __cxa_guard_release(&qword_6E6660);
  }
}

void sub_1F831C()
{
  qword_6E6648 = &off_6B8920;
  qword_6E6650 = 0;
  qword_6E6658 = 561211748;
  v0 = objc_alloc_init(ADASManager);
  v1 = qword_6E6650;
  qword_6E6650 = v0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, &qword_6E6648, sub_1F83CC, @"HAENKnownAccessoriesDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_1F83CC()
{
  sub_CE168();
  sub_2E2774(v5);
  for (i = v5[1]; i != v5; i = i[1])
  {
    v1 = i[3];
    if (v1)
    {
      v2 = std::__shared_weak_count::lock(v1);
      if (v2)
      {
        v3 = v2;
        v4 = i[2];
        if (v4)
        {
          (*(*v4 + 360))(v4);
        }

        sub_1A8C0(v3);
      }
    }
  }

  sub_65310(v5);
}

void sub_1F8474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A8C0(v2);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void sub_1F8490(void *a1)
{
  sub_1F84C8(a1);

  operator delete();
}

void *sub_1F84C8(void *a1)
{
  *a1 = &off_6B8920;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, ADAFDarwinNotificationKeyUnknownWiredDeviceStatusChanged, 0);
  v3 = a1[2];
  if (v3 != 561211748)
  {
    if (qword_6EB708 != -1)
    {
      dispatch_once(&qword_6EB708, &stru_6B8978);
    }

    if (off_6EB718)
    {
      off_6EB718(v3);
    }
  }

  return a1;
}

void sub_1F8584(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
LABEL_5:
    off_6EB710 = dlsym(v1, "AudioDataAnalysisManagerCreate");
    off_6EB718 = dlsym(v1, "AudioDataAnalysisManagerDispose");
    qword_6EB720 = dlsym(v1, "AudioDataAnalysisManagerReset");
    off_6EB728 = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    qword_6EB730 = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    off_6EB738 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    qword_6EB740 = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    off_6EB748 = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    qword_6EB750 = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    qword_6EB758 = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    off_6EB760 = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    qword_6EB768 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    qword_6EB770 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    off_6EB778 = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    qword_6EB780 = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    qword_6EB788 = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    off_6EB790 = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    off_6EB798 = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    off_6EB7A0 = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    off_6EB7A8 = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    off_6EB7B0 = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    off_6EB7B8 = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    qword_6EB7C0 = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }
}

void sub_1F88DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *sub_5544(18);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2;
    LODWORD(v10[0]) = 136315906;
    *(v10 + 4) = "ADASManagerInterface.mm";
    WORD6(v10[0]) = 1024;
    *(v10 + 14) = 227;
    WORD1(v10[1]) = 2112;
    *(&v10[1] + 4) = v8;
    WORD6(v10[1]) = 1024;
    *(&v10[1] + 14) = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting USB device %@ connection state %d", v10, 0x22u);
  }

  sub_1F8A3C(a1);
  memset(v10, 0, sizeof(v10));
  *(&v10[1] + 1) = *a2;
  *&v10[2] = 2;
  v9 = *(a1 + 16);
  if (qword_6EB708 != -1)
  {
    dispatch_once(&qword_6EB708, &stru_6B8978);
  }

  if (off_6EB7A8)
  {
    off_6EB7A8(v9, v10, a3);
  }
}

void sub_1F8A3C(uint64_t a1)
{
  if (*(a1 + 16) == 561211748)
  {
    memset(__p, 0, sizeof(__p));
    if (qword_6EB708 != -1)
    {
      dispatch_once(&qword_6EB708, &stru_6B8978);
    }

    if (off_6EB710)
    {
      v2 = off_6EB710(2, __p);
      v3 = __p[0];
      *(a1 + 16) = v2;
      if (v3)
      {
        __p[1] = v3;
        operator delete(v3);
        v2 = *(a1 + 16);
      }

      if (v2 == 561211748)
      {
        v4 = sub_5544(14);
        v5 = sub_468EC(1, *v4, *(v4 + 8));
        v6 = v5;
        if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "ADASManagerInterface.mm";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 131;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unable to create ADAM client session for registering device", __p, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unable to create ADAM client session for registering device");
      }

      if (qword_6EB708 != -1)
      {
        dispatch_once(&qword_6EB708, &stru_6B8978);
      }
    }

    else
    {
      v2 = 560033897;
      *(a1 + 16) = 560033897;
    }

    if (off_6EB748)
    {
      off_6EB748(v2);
    }
  }
}

void sub_1F8C54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *sub_5544(18);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    v9 = *a2;
    *v12 = 136315906;
    *&v12[4] = "ADASManagerInterface.mm";
    *&v12[12] = 1024;
    *&v12[14] = 215;
    *&v12[18] = 2112;
    *&v12[20] = v8;
    *&v12[28] = 2112;
    *&v12[30] = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Marking device %@ as active (UID: %@)", v12, 0x26u);
  }

  sub_1F8A3C(a1);
  *&v12[24] = 0u;
  *&v12[8] = 0u;
  *v12 = *a3;
  v10 = *a2;
  v13 = 0;
  *&v12[24] = v10;
  v11 = *(a1 + 16);
  if (qword_6EB708 != -1)
  {
    dispatch_once(&qword_6EB708, &stru_6B8978);
  }

  if (off_6EB798)
  {
    off_6EB798(v11, v12);
  }
}

void sub_1F8DBC(uint64_t a1, void *a2, uint64_t *a3)
{
  sub_1F8A3C(a1);
  v6 = *sub_5544(18);
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    *v11 = 136315650;
    *&v11[4] = "ADASManagerInterface.mm";
    *&v11[12] = 1024;
    *&v11[14] = 201;
    *&v11[18] = 2112;
    *&v11[20] = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Registering USB device %@", v11, 0x1Cu);
  }

  *&v11[24] = 0u;
  *&v11[8] = 0u;
  *v11 = *a2;
  v9 = *a3;
  *&v11[32] = 18;
  v12 = 0;
  *&v11[24] = v9;
  v10 = *(a1 + 16);
  if (qword_6EB708 != -1)
  {
    dispatch_once(&qword_6EB708, &stru_6B8978);
  }

  if (off_6EB7A0)
  {
    off_6EB7A0(v10, v11);
  }
}

uint64_t sub_1F8F18(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    (*(*a1 + 24))(&v7);
    v3 = v7;
    v4 = v3;
    if (v3)
    {
      CFRelease(v3);
    }

    v5 = v4 != 0;

    LODWORD(v2) = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 | (v2 << 8);
}

uint64_t sub_1F8FA4(uint64_t a1, void *a2)
{
  if (*a2)
  {
    (*(*a1 + 24))(&v9);
    v2 = v9;
    v3 = v2;
    if (v2)
    {
      CFRelease(v2);
      v4 = [v3 valueForKey:@"value"];
      v5 = v4;
      if (v4)
      {
        v6 = [v4 BOOLValue];
        v7 = 1;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 8);
}

void sub_1F9094(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    v6 = *a2;
    v7 = [*(a1 + 8) getPreferenceFor:ADAFPreferenceKeyHAENKnownAccessories];
    if (v7)
    {
      v8 = *sub_5544(18);
      v9 = v8;
      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v21 = "ADASManagerInterface.mm";
        v22 = 1024;
        v23 = 153;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Known accessories: %@", buf, 0x1Cu);
      }

      v10 = [v7 valueForKey:v6];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
        CFRetain(v12);
        *a3 = v12;
        v13 = CFGetTypeID(v12);
        if (v13 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v17 = *sub_5544(18);
        v18 = v17;
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = *a2;
          *buf = 136315650;
          v21 = "ADASManagerInterface.mm";
          v22 = 1024;
          v23 = 157;
          v24 = 2112;
          v25 = v19;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to find ADAM entry for device %@", buf, 0x1Cu);
        }

        *a3 = 0;
      }
    }

    else
    {
      v15 = *sub_5544(18);
      v16 = v15;
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "ADASManagerInterface.mm";
        v22 = 1024;
        v23 = 148;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Known accessories is nil!", buf, 0x12u);
      }

      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_1F9358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_free_exception(v10);
    sub_1DB160(v11);
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1F93DC(uint64_t a1)
{
  v1 = [*(a1 + 8) getPreferenceFor:ADAFPreferenceKeyConnectedWiredDeviceIsHeadphone];
  v2 = v1;
  v3 = !v1 || [v1 BOOLValue];
  v4 = *sub_5544(10);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v9 = "ADASManagerInterface.mm";
    v8 = 136315650;
    if (v3)
    {
      v6 = "YES";
    }

    v10 = 1024;
    v11 = 121;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] Headphone connection: %s", &v8, 0x1Cu);
  }

  return v3;
}

id sub_1F953C(uint64_t a1)
{
  if ((**a1)(a1))
  {
    v2 = [*(a1 + 8) getPreferenceFor:ADAFPreferenceKeyVolumeLimitThreshold];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 intValue];
    }

    else
    {
      v4 = &stru_20 + 68;
    }
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_class())
  {
    v5 = *sub_5544(10);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = +[PASettings sharedInstance];
        v9 = [v8 currentEnrollmentProgress];
        v10 = "OFF";
        v17 = "PersonalAudioInterface.mm";
        v16 = 136315650;
        if (v9 == &dword_0 + 2)
        {
          v10 = "ON";
        }

        v18 = 1024;
        v19 = 240;
        v20 = 2080;
        v21 = v10;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PME EnrollmentProgressSpeech: %s", &v16, 0x1Cu);
      }
    }

    v11 = +[PASettings sharedInstance];
    v12 = [v11 currentEnrollmentProgress] == &dword_0 + 2;

    if (v12)
    {
      v4 = 0;
    }
  }

  v13 = *sub_5544(10);
  v14 = v13;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "ADASManagerInterface.mm";
    v18 = 1024;
    v19 = 104;
    v20 = 1024;
    LODWORD(v21) = v4;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] SPL Target Settings SPL: %u", &v16, 0x18u);
  }

  return v4;
}

id sub_1F97BC(uint64_t a1)
{
  v1 = [*(a1 + 8) getPreferenceFor:ADAFPreferenceKeyVolumeLimitEnabled];
  v2 = [v1 BOOLValue];

  return v2;
}

void sub_1F9814(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(&unk_6F5A60);
  v4 = qword_6F5A50;
  if (!qword_6F5A50)
  {
    goto LABEL_23;
  }

  v5 = &qword_6F5A50;
  do
  {
    v6 = sub_1F9A5C((v4 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v4 = *(v4 + ((v6 >> 4) & 8));
  }

  while (v4);
  if (v5 == &qword_6F5A50 || (sub_1F9A5C(a2, v5 + 8) & 0x80) != 0)
  {
LABEL_23:
    v18 = 0;
    *a1 = 0;
  }

  else
  {
    v7 = sub_5544(25);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a2 + 8);
      v10 = (v9 + 24);
      if (*(v9 + 47) < 0)
      {
        v10 = *v10;
      }

      sub_22170(v21, *(v9 + 48));
      v11 = v22;
      v12 = v21[0];
      sub_22170(__p, *a2);
      v13 = v21;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v20 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15 = *(a2 + 4);
      *buf = 136316418;
      v24 = "DSPChainCache.cpp";
      v25 = 1024;
      v26 = 26;
      v27 = 2080;
      v28 = v10;
      v29 = 2080;
      v30 = v13;
      v31 = 2080;
      v32 = v14;
      v33 = 1024;
      v34 = v15;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Retrieving cached DSPChain [%s/%s] for VADContext [%s/%u].", buf, 0x36u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }

    v16 = v5[7];
    *a1 = v5[6];
    *(a1 + 8) = v16;
    if (v16)
    {
      v17 = (v16 + 8);
      v18 = 1;
      atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
    }

    else
    {
      v18 = 1;
    }
  }

  *(a1 + 16) = v18;
  std::mutex::unlock(&unk_6F5A60);
}

void sub_1F9A2C(_Unwind_Exception *a1)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  std::mutex::unlock(&unk_6F5A60);
  _Unwind_Resume(a1);
}

uint64_t sub_1F9A5C(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 < v3)
    {
      return 255;
    }
  }

  else if (v2 < v3)
  {
    return 255;
  }

  if (v3 < v2)
  {
    return 1;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  v7 = v5 == v6;
  if (v5 < v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

void sub_1F9AB4(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock(&unk_6F5A60);
  v4 = sub_5544(25);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 8);
    v7 = (v6 + 24);
    if (*(v6 + 47) < 0)
    {
      v7 = *v7;
    }

    sub_22170(v20, *(v6 + 48));
    v8 = v21;
    v9 = v20[0];
    sub_22170(__p, *a1);
    v10 = v20;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v19 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = *(a1 + 4);
    *buf = 136316418;
    v23 = "DSPChainCache.cpp";
    v24 = 1024;
    v25 = 38;
    v26 = 2080;
    v27 = v7;
    v28 = 2080;
    v29 = v10;
    v30 = 2080;
    v31 = v11;
    v32 = 1024;
    v33 = v12;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Caching DSPChain [%s/%s] for VADContext [%s/%u].", buf, 0x36u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  v13 = qword_6F5A50;
  if (!qword_6F5A50)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v14 = v13;
      if ((sub_1F9A5C(a1, (v13 + 32)) & 0x80) == 0)
      {
        break;
      }

      v13 = *v14;
      if (!*v14)
      {
        goto LABEL_20;
      }
    }

    if ((sub_1F9A5C((v14 + 32), a1) & 0x80) == 0)
    {
      break;
    }

    v13 = *(v14 + 8);
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  v16 = *a2;
  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(v14 + 56);
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;
  if (v17)
  {
    sub_1A8C0(v17);
  }

  std::mutex::unlock(&unk_6F5A60);
}

void sub_1F9D30(_Unwind_Exception *a1)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  std::mutex::unlock(&unk_6F5A60);
  _Unwind_Resume(a1);
}

uint64_t *sub_1F9D64(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 12) == 1)
    {
      notify_cancel(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1F9DC4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1F9E1C(uint64_t a1)
{
  v36 = a1;
  v3 = (a1 + 8);
  v2 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_46980(&v42, v4, v2[4], (v2[4] - v4) >> 2);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v40 = 0;
  v41 = 0;
  __p = 0;
  v8 = v42;
  v9 = v43 - v42;
  sub_46980(&__p, v42, v43, (v43 - v42) >> 2);
  v10 = __p;
  if (v7 != v6)
  {
    v11 = v40;
    while (1)
    {
      v12 = *v7;
      v13 = v10;
      if (v10 != v11)
      {
        break;
      }

LABEL_6:
      v7 += 4;
LABEL_12:
      if (v7 == v6)
      {
        goto LABEL_15;
      }
    }

    while (*v13 != v12)
    {
      if (++v13 == v11)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v6 -= 4;
      if (v7 == v6)
      {
        break;
      }

      v14 = *v6;
      v15 = v10;
      while (*v15 != v14)
      {
        if (++v15 == v11)
        {
          *v7 = v14;
          v7 += 4;
          *v6 = v12;
          goto LABEL_12;
        }
      }
    }
  }

  v6 = v7;
LABEL_15:
  v35 = v9;
  if (v10)
  {
    v40 = v10;
    operator delete(v10);
  }

  *&v38.mSelector = 0x676C6F626E6E696FLL;
  v38.mElement = 0;
  v16 = *v3;
  if (*v3 != v6)
  {
    do
    {
      v17 = *v16;
      v18 = sub_5544(1);
      v19 = sub_5544(32);
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
          if ((v21 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_26;
        }
      }

      if ((v21 & v22) == 0)
      {
        v18 = v19;
      }

      if (*(v18 + 8))
      {
LABEL_26:
        v23 = *v18;
        if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_IONotificationManager.cpp";
          v46 = 1024;
          v47 = 134;
          v48 = 1024;
          LODWORD(v49) = v17;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding non null IOProc listener for VAD %u.", buf, 0x18u);
        }
      }

LABEL_29:
      sub_4E890();
      sub_73838(v17, &v38, sub_53F34, v2);
      v16 += 4;
    }

    while (v16 != v6);
    v16 = *v3;
  }

  if (v6 != v16 || *(a1 + 16) - v16 != v35)
  {
    if (v5 != v3)
    {
      sub_16B928(v5, v16, *(a1 + 16), (*(a1 + 16) - v16) >> 2);
    }

    v24 = sub_5544(1);
    v25 = sub_5544(32);
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
        goto LABEL_41;
      }
    }

    if ((v27 & v28) == 0)
    {
      v24 = v25;
    }

LABEL_41:
    v29 = *v24;
    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v2[3];
      v30 = v2[4];
      sub_128174(&v37, v31, v30);
      v32 = (v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v37 : v37.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_IONotificationManager.cpp";
      v46 = 1024;
      v47 = 148;
      v48 = 2048;
      v49 = v30 - v31;
      v50 = 2080;
      v51 = v32;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Monitoring IO state for %lu VADs %s.", buf, 0x26u);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }
  }

  v33 = v2[2];
  if (*(v33 + 12) == 1)
  {
    notify_post(*v33);
  }

  if (v8)
  {
    operator delete(v8);
  }

  return sub_1F9DC4(&v36);
}

caulk::concurrent::message **sub_1FA51C(caulk::concurrent::message *a1)
{
  v36 = a1;
  __p = 0;
  v1 = *(a1 + 3);
  v38 = 0;
  v39 = 0;
  sub_46980(&__p, v1[3], v1[4], (v1[4] - v1[3]) >> 2);
  v2 = __p;
  v35 = v38;
  if (__p != v38)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *v2;
      inAddress.mSelector = *v2;
      strcpy(buf, "niogbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = sub_542F0(&inAddress.mSelector, buf, 0, 0);
      v8 = v6;
      if (v6)
      {
        goto LABEL_58;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_57;
      }

      if (v6)
      {
        inAddress.mSelector = v5;
        strcpy(buf, "oinnbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v9 = sub_542F0(&inAddress.mSelector, buf, 0, 0);
        v8 = v9;
        if (v9)
        {
          goto LABEL_58;
        }

        if ((v10 & 1) == 0)
        {
LABEL_57:
          v8 = 0;
LABEL_58:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v8;
        }

        if (v9)
        {
          v44 = v5;
          *&inAddress.mSelector = 0x676C6F6264616370;
          inAddress.mElement = 0;
          sub_6A8C4(buf, &v44, &inAddress);
          v34 = v4;
          if (*buf || (buf[16] & 1) == 0)
          {
            v30 = __cxa_allocate_exception(0x10uLL);
            v31 = *buf;
            *v30 = &off_6DDDD0;
            v30[2] = v31;
          }

          v11 = *&buf[8];
          if (!*&buf[8])
          {
            v41 = 0;
LABEL_61:
            v32 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v32, "Could not construct");
          }

          CFRetain(*&buf[8]);
          v41 = v11;
          if (buf[16])
          {
            if (*&buf[8])
            {
              CFRelease(*&buf[8]);
              v11 = v41;
              if (!v41)
              {
                goto LABEL_61;
              }
            }
          }

          sub_6AADC(&v42, v11);
          v12 = v42;
          v13 = v43;
          if (v42 != v43)
          {
            v14 = 0;
            v15 = v42;
            while (1)
            {
              v16 = *v15;
              inAddress.mSelector = *v15;
              strcpy(buf, "pytpbolg");
              buf[9] = 0;
              *&buf[10] = 0;
              v18 = sub_542F0(&inAddress.mSelector, buf, 0, 0);
              if (v18)
              {
                goto LABEL_56;
              }

              if ((v17 & 1) == 0)
              {
                LODWORD(v18) = 0;
LABEL_56:
                v28 = __cxa_allocate_exception(0x10uLL);
                *v28 = &off_6DDDD0;
                v28[2] = v18;
              }

              v19 = sub_5544(1);
              v20 = sub_5544(32);
              v21 = 0;
              v22 = HIDWORD(v18);
              *buf = 0x100000002;
              v23 = *(v19 + 8);
              while (1)
              {
                v24 = *&buf[v21];
                if (((v23 & v24) != 0) != ((*(v20 + 8) & v24) != 0))
                {
                  break;
                }

                v21 += 4;
                if (v21 == 8)
                {
                  if ((v23 & 1) == 0)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_27;
                }
              }

              if ((v23 & v24) == 0)
              {
                v19 = v20;
              }

              if (*(v19 + 8))
              {
LABEL_27:
                v25 = *v19;
                if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136316162;
                  *&buf[4] = "VirtualAudio_IONotificationManager.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 55;
                  v46 = 1024;
                  v47 = v16;
                  v48 = 1024;
                  v49 = v22;
                  v50 = 2048;
                  v51 = v5;
                  _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Active port %u, type %u for device %lu", buf, 0x28u);
                }
              }

LABEL_30:
              if (v22 <= 1886216808)
              {
                if (v22 == 1885892674)
                {
                  v26 = !sub_1FB090(v16);
                  v27 = 4;
                  goto LABEL_41;
                }

                if (v22 == 1885892706)
                {
                  v26 = !sub_1FB090(v16);
                  v27 = 8;
LABEL_41:
                  if (v26)
                  {
                    v27 = 0;
                  }

                  v14 |= v27;
                }
              }

              else
              {
                switch(v22)
                {
                  case 0x7073706B:
                    v14 |= 2uLL;
                    break;
                  case 0x70726563:
                    v14 |= 0x10uLL;
                    break;
                  case 0x706D6269:
                    v14 |= 1uLL;
                    break;
                }
              }

              if (++v15 == v13)
              {
                v14 = v14;
                if (v12)
                {
                  goto LABEL_47;
                }

                goto LABEL_48;
              }
            }
          }

          v14 = 0;
          if (v42)
          {
LABEL_47:
            v43 = v12;
            operator delete(v12);
          }

LABEL_48:
          if (v41)
          {
            CFRelease(v41);
          }

          v4 = v14 | v34;
          v3 = 1;
        }
      }

      if (++v2 == v35)
      {
        goto LABEL_63;
      }
    }
  }

  v4 = 0;
  v3 = 0;
LABEL_63:
  sub_5D38C(v1, v3, v4, 0);
  if (__p)
  {
    operator delete(__p);
  }

  return sub_1FAFFC(&v36);
}

void sub_1FAF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, caulk::concurrent::message *a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1FAFFC(&a17);
  _Unwind_Resume(a1);
}

void sub_1FAFE4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1FAFECLL);
  }

  sub_1CC130(a1);
}

caulk::concurrent::message **sub_1FAFFC(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x28uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1FB050(uint64_t a1)
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

BOOL sub_1FB090(AudioObjectID a1)
{
  v13.mElement = 0;
  v14 = a1;
  *&v13.mSelector = 0x676C6F6269616170;
  v2 = sub_542F0(&v14, &v13, 0, 0);
  v13.mElement = 0;
  v14 = a1;
  *(&v5 + 1) = v3;
  *&v5 = v2;
  v4 = v5 >> 32;
  *&v13.mSelector = 0x676C6F6270657074;
  v6 = sub_542F0(&v14, &v13, 0, 0);
  if ((v4 & 0x100000000) == 0 || (v8 = 0, !v4))
  {
    *(&v10 + 1) = v7;
    *&v10 = v6;
    v9 = v10 >> 32;
    if ((v9 & 0x100000000) == 0)
    {
      LODWORD(v9) = 1701868910;
    }

    return v9 == 1701868400 || v9 == 1701869160;
  }

  return v8;
}

void sub_1FB140(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  operator delete();
}

uint64_t sub_1FB17C()
{
  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

CFStringRef sub_1FB1C0()
{
  if (MGIsQuestionValid())
  {
    MGGetSInt32Answer();
  }

  sub_2288C(v9);
  sub_22564(&v10, "AID", 3);
  std::ostream::operator<<();
  if ((v17 & 0x10) != 0)
  {
    v1 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v1 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v0 = 0;
      v8 = 0;
      goto LABEL_16;
    }

    locale = v12[1].__locale_;
    v1 = v12[3].__locale_;
  }

  v0 = v1 - locale;
  if ((v1 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v8 = v1 - locale;
  if (v0)
  {
    memmove(&__p, locale, v0);
  }

LABEL_16:
  *(&__p + v0) = 0;
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = CFStringCreateWithCString(0, p_p, 0x600u);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v10 = v5;
  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_1FB474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D3DAC(&a15);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1FB4B0(void *a1, uint64_t a2)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "AggregateDevice_CommonBase.cpp";
      *&v12[12] = 1024;
      *&v12[14] = 3725;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  (*(*a2 + 136))(v12, a2);
  if (!*&v12[8])
  {
    goto LABEL_19;
  }

  v4 = std::__shared_weak_count::lock(*&v12[8]);
  if (v4)
  {
    v5 = *v12;
  }

  else
  {
    v5 = 0;
  }

  if (*&v12[8])
  {
    std::__shared_weak_count::__release_weak(*&v12[8]);
  }

  if (!v5)
  {
LABEL_19:
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *v12 = 136315394;
        *&v12[4] = "AggregateDevice_CommonBase.cpp";
        *&v12[12] = 1024;
        *&v12[14] = 3728;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mainDevice is NULL]: Got NULL for the aggregate's main physical device", v12, 0x12u);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v11, "Got NULL for the aggregate's main physical device");
  }

  if ((*(*v5 + 400))(v5))
  {
    *a1 = v5;
    a1[1] = v4;
    if (!v4)
    {
      return;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    if (!v4)
    {
      return;
    }
  }

  sub_1A8C0(v4);
}

void sub_1FB72C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1FB770(unsigned __int8 *a1)
{
  if (((*(*a1 + 400))(a1) & 1) == 0)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "PhysicalDevice.h";
      v8 = 1024;
      v9 = 381;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return a1[264];
}

void sub_1FB8BC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 664);
  v3 = *(a1 + 672);
  if (v2 != v3)
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *(*v2 + 152);
      if (sub_DDE9C((v6 + 1008), 2))
      {
        v7 = *sub_5544(42);
        v8 = v7;
        if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = (v6 + 712);
          if (*(v6 + 735) < 0)
          {
            v9 = *v9;
          }

          *buf = 136315906;
          v18 = "DSPChain.mm";
          v19 = 1024;
          v20 = 3782;
          v21 = 2048;
          v22 = v4;
          v23 = 2080;
          v24 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting AULoudnessNormalizer DRC personalization coefficient to %lu on chain '%s'.", buf, 0x26u);
        }

        v10 = (*(*v6 + 72))(v6, 1685287015, 1886548844, 0, v5);
        if (v10)
        {
          v11 = *sub_5544(42);
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              sub_22170(__p, v10);
              v14 = __p;
              if (v16 < 0)
              {
                v14 = __p[0];
              }

              *buf = 136315650;
              v18 = "DSPChain.mm";
              v19 = 1024;
              v20 = 3789;
              v21 = 2080;
              v22 = v14;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to set DRC personalization coefficient on AULN: %s", buf, 0x1Cu);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }
      }

      v2 += 16;
    }

    while (v2 != v3);
  }
}

void sub_1FBB38(uint64_t a1, uint64_t a2)
{
  sub_98A08(*(a2 + 56));
  sub_98A08(*(a2 + 32));
  v3 = *(a2 + 8);

  sub_477A0(v3);
}

void sub_1FBB7C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) == 1 && *(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 32) == 1 && *(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_1FBBEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  if (!(*(*a1 + 88))(a1))
  {
    goto LABEL_26;
  }

  v10 = (*(*a1 + 96))(a1, a2, a3);
  if (!v10)
  {
    v20 = sub_5544(17);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 128))(v29, a1);
      v22 = v30;
      v23 = v29[0];
      if (a2)
      {
        v24 = "output";
      }

      else
      {
        v24 = "input";
      }

      sub_53E8(__p, v24);
      v25 = v29;
      if (v22 < 0)
      {
        v25 = v23;
      }

      if (v28 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      *buf = 136316162;
      v32 = "AggregateDevice_CommonBase.cpp";
      v33 = 1024;
      v34 = 494;
      v35 = 2080;
      v36 = v25;
      v37 = 2080;
      v38 = v26;
      v39 = 1024;
      v40 = a3;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encountered a null stream in AggregateDevice_CommonBase::GetDSPOverlayTuningConditionState() for device '%s'.Direction: %s, stream index: %u", buf, 0x2Cu);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    goto LABEL_26;
  }

  v11 = *(v10 + 152);
  v12 = *(v11 + 1128);
  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = v11 + 1128;
  v14 = *a4;
  v15 = v11 + 1128;
  do
  {
    v16 = *(v12 + 32);
    v17 = v16 >= v14;
    v18 = v16 < v14;
    if (v17)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * v18);
  }

  while (v12);
  if (v15 == v13 || v14 < *(v15 + 32))
  {
LABEL_26:
    v19 = 0;
    *a5 = 0;
    goto LABEL_27;
  }

  sub_2CCB20((a5 + 8), v15 + 48);
  v19 = 1;
LABEL_27:
  a5[96] = v19;
}

void sub_1FBE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1FBE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = 640;
  if (a7)
  {
    v9 = 664;
  }

  v10 = (a1 + v9);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 == v12)
  {
LABEL_6:
    v17 = sub_5544(17);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v27, a3);
      v19 = v28;
      v20 = v27[0];
      sub_22170(__p, a2);
      v21 = v27;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v26 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *buf = 136315906;
      v30 = "AggregateDevice_CommonBase.cpp";
      v31 = 1024;
      v32 = 399;
      v33 = 2080;
      v34 = v21;
      v35 = 2080;
      v36 = v22;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d could not find dspproperty %s for AU %s", buf, 0x26u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    return 0;
  }

  else
  {
    while (1)
    {
      v16 = *(*v11 + 152);
      if ((*(*v16 + 104))(v16, a2, a3, a6))
      {
        break;
      }

      v11 += 16;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    v24 = *(*v16 + 112);

    return v24(v16, a2, a3, a4, a5, a6);
  }
}

void sub_1FC0A8(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1FC0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 640;
  while (2)
  {
    v10 = v8;
    v11 = *(a1 + v9);
    v12 = *(a1 + v9 + 8);
    while (v11 != v12)
    {
      if ((*(**(*v11 + 152) + 104))(*(*v11 + 152), a2, a3, a4))
      {
        return 1;
      }

      v11 += 16;
    }

    v8 = 1;
    v9 = 664;
    if ((v10 & 1) == 0)
    {
      continue;
    }

    break;
  }

  v13 = sub_5544(17);
  v14 = *v13;
  if (*v13)
  {
    result = os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_22170(v22, a3);
    v16 = v23;
    v17 = v22[0];
    sub_22170(__p, a2);
    v18 = v22;
    if (v16 < 0)
    {
      v18 = v17;
    }

    if (v21 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136315906;
    v25 = "AggregateDevice_CommonBase.cpp";
    v26 = 1024;
    v27 = 382;
    v28 = 2080;
    v29 = v18;
    v30 = 2080;
    v31 = v19;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d could not find dspproperty %s for AU %s", buf, 0x26u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  return 0;
}

void sub_1FC298(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_1FC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 368))(a1) & 1) == 0)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v29 = 1024;
      v30 = 310;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v8 = 0;
  v9 = 640;
LABEL_3:
  v10 = v8;
  v11 = *(a1 + v9);
  v12 = *(a1 + v9 + 8);
  while (1)
  {
    if (v11 == v12)
    {
      v8 = 1;
      v9 = 664;
      if (v10)
      {
        v14 = sub_5544(14);
        v15 = *v14;
        if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          v29 = 1024;
          v30 = 327;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate a DSP chain with the given parameters, but HasDSPParameter returned true.", buf, 0x12u);
        }

        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "Unable to locate a DSP chain with the given parameters, but HasDSPParameter returned true.");
      }

      goto LABEL_3;
    }

    v13 = *(*v11 + 152);
    v27 = 0.0;
    if (!(*(*v13 + 64))(v13, a2, a3, &v27, a4))
    {
      break;
    }

    v11 += 16;
  }

  v17 = sub_5544(17);
  v18 = sub_5544(25);
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
      if ((v20 & 1) == 0)
      {
        return v27;
      }

      goto LABEL_20;
    }
  }

  if ((v20 & v21) == 0)
  {
    v17 = v18;
  }

  if (*(v17 + 8))
  {
LABEL_20:
    v22 = *v17;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v29 = 1024;
      v30 = 321;
      v31 = 2048;
      v32 = v27;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d chain->GetParameter: %f.", buf, 0x1Cu);
    }
  }

  return v27;
}

uint64_t sub_1FC630(uint64_t a1, uint64_t a2)
{
  sub_4EBC(a1);
  v4 = 664;
  if (*(a2 + 184))
  {
    v4 = 640;
  }

  v5 = a1 + v4;
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 == v7)
  {
    return 0;
  }

  while (1)
  {
    sub_65234(v10, *v6 + 120);
    sub_76388(v11, v10);
    sub_65310(v10);
    v10[0] = a2;
    if (v11 != sub_15D650(v11[1], v11, v10))
    {
      break;
    }

    sub_87980(v11);
    v6 += 2;
    if (v6 == v7)
    {
      return 0;
    }
  }

  v8 = *v6;
  sub_87980(v11);
  return v8;
}

uint64_t sub_1FC718(AudioObjectID *a1, AudioTimeStamp *a2, UInt32 a3)
{
  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "AggregateDevice_CommonBase.cpp";
      v16 = 1024;
      v17 = 650;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_4EBC(a1);
  result = AudioDeviceGetNearestStartTime(a1[32], a2, a3);
  if (result)
  {
    v7 = result;
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "AggregateDevice_CommonBase.cpp";
        v16 = 1024;
        v17 = 655;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to get nearest start time.", &v14, 0x12u);
      }
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = &off_6DDDD0;
    v10[2] = v7;
  }

  return result;
}

uint64_t sub_1FC944(AudioObjectID *a1, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "AggregateDevice_CommonBase.cpp";
      v16 = 1024;
      v17 = 639;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_4EBC(a1);
  result = AudioDeviceTranslateTime(a1[32], a2, a3);
  if (result)
  {
    v7 = result;
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "AggregateDevice_CommonBase.cpp";
        v16 = 1024;
        v17 = 644;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to translate time.", &v14, 0x12u);
      }
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = &off_6DDDD0;
    v10[2] = v7;
  }

  return result;
}

uint64_t sub_1FCB70(AudioObjectID *a1, AudioTimeStamp *a2)
{
  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "AggregateDevice_CommonBase.cpp";
      v14 = 1024;
      v15 = 629;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_4EBC(a1);
  result = AudioDeviceGetCurrentTime(a1[32], a2);
  if (result)
  {
    v5 = result;
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "AggregateDevice_CommonBase.cpp";
        v14 = 1024;
        v15 = 634;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to get current time.", &v12, 0x12u);
      }
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    *v8 = &off_6DDDD0;
    v8[2] = v5;
  }

  return result;
}

void sub_1FCD90(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1FCDA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B8CE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1FCE14(uint64_t a1, uint64_t a2)
{
  sub_4EBC(a1);
  if (*(a2 + 16) != *(a1 + 200))
  {
    v50 = sub_5544(14);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
    {
      std::to_string(&__p, *(a1 + 200));
      v52 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v53 = __p.__r_.__value_.__r.__words[0];
      std::to_string(&v58, *(a2 + 16));
      p_p = &__p;
      if (v52 < 0)
      {
        p_p = v53;
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &v58;
      }

      else
      {
        v55 = v58.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 188;
      v61 = 2080;
      v62 = *&p_p;
      v63 = 2080;
      v64 = v55;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Encountered malformed sample rate description. Expected %s entries, found %s", buf, 0x26u);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Encountered malformed sample rate description. Expected %s entries, found %s");
  }

  v4 = *(a1 + 192);
  v5 = &unk_517000;
  if (v4 == (a1 + 184))
  {
    goto LABEL_43;
  }

  v6 = 0;
  do
  {
    v7 = v4[3];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = v4[2];
        if (v10)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!v6)
          {
            *buf = v10;
            *&buf[8] = v8;
            atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v11 = sub_3230D0(a2, buf);
            std::__shared_weak_count::__release_weak(v9);
            v12 = sub_5544(17);
            v13 = sub_5544(37);
            v14 = 0;
            *buf = 0x100000002;
            v15 = *(v12 + 8);
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
                goto LABEL_18;
              }
            }

            if ((v15 & v16) == 0)
            {
              v12 = v13;
            }

LABEL_18:
            v17 = *v12;
            if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              sub_23148(&__p, v10 + 2);
              v18 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v18 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              *&buf[4] = "AggregateDevice_CommonBase.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 198;
              v61 = 2048;
              v62 = v11;
              v63 = 2080;
              v64 = v18;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Synchronously setting sample rate to %f Hz on physical device %s.", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v6 = (*(*&v10->_os_unfair_lock_opaque + 112))(v10, v11);
            if (v6)
            {
              v19 = sub_5544(17);
              v20 = sub_5544(37);
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
                  goto LABEL_31;
                }
              }

              if ((v22 & v23) == 0)
              {
                v19 = v20;
              }

LABEL_31:
              v24 = *v19;
              if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                (*(*a1 + 128))(&__p, a1);
                v57 = a2;
                v25 = v5;
                v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                v27 = __p.__r_.__value_.__r.__words[0];
                sub_22170(&v58, v6);
                v28 = &__p;
                if (v26 < 0)
                {
                  v28 = v27;
                }

                v29 = &v58;
                if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v29 = v58.__r_.__value_.__r.__words[0];
                }

                *buf = 136316162;
                *&buf[4] = "AggregateDevice_CommonBase.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 202;
                v61 = 2048;
                v62 = v11;
                v63 = 2080;
                v64 = v28;
                v65 = 2080;
                v66 = v29;
                _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempt to set sample rate to %f Hz on physical device %s failed with result '%s'", buf, 0x30u);
                if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v58.__r_.__value_.__l.__data_);
                }

                v5 = v25;
                a2 = v57;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          sub_1A8C0(v9);
        }

        sub_1A8C0(v9);
      }
    }

    v4 = v4[1];
  }

  while (v4 != (a1 + 184));
  if (!v6)
  {
LABEL_43:
    (*(*a1 + 136))(&__p, a1);
    *buf = 0;
    *&buf[8] = 0;
    if (__p.__r_.__value_.__l.__size_)
    {
      v30 = std::__shared_weak_count::lock(__p.__r_.__value_.__l.__size_);
      if (v30)
      {
        v31 = *&__p.__r_.__value_.__l.__data_;
        atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *buf = v31;
        *&buf[8] = v30;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        if (*(&v31 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v31 + 1));
        }

        sub_1A8C0(v30);
      }

      else
      {
        *buf = 0;
        *&buf[8] = 0;
        size = __p.__r_.__value_.__l.__size_;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        if (size)
        {
          std::__shared_weak_count::__release_weak(size);
        }

        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
      *&__p.__r_.__value_.__l.__data_ = 0uLL;
    }

    v33 = sub_3230D0(a2, buf);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_weak(__p.__r_.__value_.__l.__size_);
    }

    *&v58.__r_.__value_.__l.__data_ = v33;
    v34 = *(a1 + 128);
    if (*(a1 + 436) == 1)
    {
      strcpy(buf, "trsnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v35 = sub_1FD614(0, v34, buf, &v58);
    }

    else
    {
      strcpy(buf, "trsnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v35 = sub_1FD614(1, v34, buf, &v58);
    }

    v6 = v35;
    if (v35)
    {
      v36 = sub_5544(17);
      v37 = sub_5544(37);
      v38 = 0;
      *buf = v5[233];
      v39 = *(v36 + 8);
      while (1)
      {
        v40 = *&buf[v38];
        if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
        {
          break;
        }

        v38 += 4;
        if (v38 == 8)
        {
          goto LABEL_66;
        }
      }

      if ((v39 & v40) == 0)
      {
        v36 = v37;
      }

LABEL_66:
      v41 = *v36;
      if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = v58.__r_.__value_.__r.__words[0];
        sub_22170(&__p, v6);
        v43 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 223;
        v61 = 2048;
        v62 = *&v42;
        v63 = 2080;
        v64 = v43;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d Waiting for aggregate device's sample rate to update to %f Hz failed with result '%s'", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v44 = 0;
  v45 = 640;
  do
  {
    v46 = v44;
    v47 = *(a1 + v45);
    v48 = *(a1 + v45 + 8);
    while (v47 != v48)
    {
      sub_124C38(*v47, 0);
      v47 += 2;
    }

    v44 = 1;
    v45 = 664;
  }

  while ((v46 & 1) == 0);
  return v6;
}

void sub_1FD580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1FD614(int a1, AudioObjectID a2, uint64_t a3, double *a4)
{
  v8 = sub_5544(14);
  if ((*(v8 + 8) & 1) != 0 && *v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
  {
    v54.__cv_.__sig = *a3;
    *v54.__cv_.__opaque = *(a3 + 8);
    sub_22CE0(&v55);
  }

  buf = *a3;
  if (AudioObjectHasProperty(a2, &buf))
  {
    memset(v55.__m_.__opaque, 0, sizeof(v55.__m_.__opaque));
    v55.__m_.__sig = 850045863;
    memset(v54.__cv_.__opaque, 0, sizeof(v54.__cv_.__opaque));
    v54.__cv_.__sig = 1018212795;
    v46 = 0;
    sub_745E8(v45, a2, a3, &v54, &v55, &v46);
    v40 = a2;
    v41 = *a3;
    v42 = *(a3 + 8);
    v43 = 0;
    v44 = 0;
    if (!a1)
    {
      buf = *a3;
      if (!sub_66E40(a2, &buf))
      {
        v30 = sub_5544(14);
        v14 = 1852797029;
        if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          v37 = *a3;
          v38 = *(a3 + 8);
          sub_22CE0(__p);
        }

        goto LABEL_71;
      }

      v24 = COERCE_DOUBLE(sub_1FE190(&v40));
      if (!v25 && *a4 == v24)
      {
        v33 = sub_5544(14);
        if ((*(v33 + 8) & 1) == 0)
        {
          goto LABEL_70;
        }

        v29 = *v33;
        if (!*v33 || !os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_70;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v48 = 1024;
        v49 = 294;
        v50 = 1024;
        LODWORD(v51) = a2;
        goto LABEL_69;
      }

      v26 = sub_5544(14);
      if ((*(v26 + 8) & 1) != 0 && *v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
      {
        v37 = *a3;
        v38 = *(a3 + 8);
        sub_22CE0(__p);
      }

      buf = *a3;
      v14 = AudioObjectSetPropertyData(a2, &buf, 0, 0, 8u, a4);
      if (v14)
      {
        v27 = sub_5544(14);
        if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v14);
          v35 = *a3;
          v36 = *(a3 + 8);
          sub_22CE0(&v37);
        }

        goto LABEL_71;
      }
    }

    v9 = COERCE_DOUBLE(sub_1FE190(&v40));
    if (!v10 && *a4 == v9)
    {
      v28 = sub_5544(14);
      if ((*(v28 + 8) & 1) == 0)
      {
        goto LABEL_70;
      }

      v29 = *v28;
      if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_70;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v48 = 1024;
      v49 = 322;
      v50 = 1024;
      LODWORD(v51) = a2;
LABEL_69:
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_70:
      v14 = 0;
LABEL_71:
      sub_73C20(v45);
      std::condition_variable::~condition_variable(&v54);
      std::mutex::~mutex(&v55);
      return v14;
    }

    v11 = 2000;
LABEL_9:
    v12 = COERCE_DOUBLE(sub_1FE190(&v40));
    v14 = v13;
    if (v13)
    {
      goto LABEL_71;
    }

    if (*a4 == v12)
    {
      v31 = sub_5544(14);
      if ((*(v31 + 8) & 1) != 0 && *v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v37 = *a3;
        v38 = *(a3 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_70;
    }

    if (v11 <= 0)
    {
      v32 = sub_5544(14);
      v14 = 2003329396;
      if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
      {
        v37 = *a3;
        v38 = *(a3 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_71;
    }

    v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v16 = sub_5544(14);
    if (*(v16 + 8))
    {
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v48 = 1024;
          v49 = 354;
          v50 = 2080;
          v51 = "with timeout";
          v52 = 1024;
          v53 = a2;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v55;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v55);
    v18.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v46 & 1) != 0 || v18.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_33:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v11 += (std::chrono::system_clock::now().__d_.__rep_ - v15.__d_.__rep_) / -1000;
        goto LABEL_9;
      }

      v19.__d_.__rep_ = v18.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v19.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_32:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v18.__d_.__rep_)
      {
        goto LABEL_33;
      }
    }

    std::chrono::steady_clock::now();
    v20.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v20.__d_.__rep_)
    {
      v21 = 0;
      goto LABEL_30;
    }

    if (v20.__d_.__rep_ < 1)
    {
      if (v20.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v21 = 0x8000000000000000;
        goto LABEL_30;
      }
    }

    else if (v20.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_28;
    }

    v21 = 1000 * v20.__d_.__rep_;
LABEL_28:
    if (v21 > (v19.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v22.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_31:
      std::condition_variable::__do_timed_wait(&v54, &buf, v22);
      std::chrono::steady_clock::now();
      goto LABEL_32;
    }

LABEL_30:
    v22.__d_.__rep_ = v21 + v19.__d_.__rep_;
    goto LABEL_31;
  }

  v23 = sub_5544(14);
  v14 = 2003332927;
  if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
  {
    v54.__cv_.__sig = *a3;
    *v54.__cv_.__opaque = *(a3 + 8);
    sub_22CE0(&v55);
  }

  return v14;
}

void sub_1FE0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, AudioObjectPropertySelector a27)
{
  sub_73C20(&a27);
  std::condition_variable::~condition_variable((v27 - 232));
  std::mutex::~mutex((v27 - 184));
  _Unwind_Resume(a1);
}

uint64_t sub_1FE190(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  sub_1FE35C(&v10, a1, &buf, v2, *(a1 + 24));
  v3 = v10;
  if (v10)
  {
    v4 = sub_5544(14);
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v9, v3);
        v6 = *v1;
        v7 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v12)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void sub_1FE33C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1FE35C(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, UInt32 a4, const void *a5)
{
  result = AudioObjectHasProperty(*a2, inAddress);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = sub_543D0(*a2, inAddress, a4, a5);
    ioDataSize = result;
    if (result)
    {
      v11 = 0;
      result = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, &v11);
      *a1 = result;
      if (!result)
      {
        *(a1 + 8) = v11;
        *(a1 + 16) = 1;
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_1FE438(os_unfair_lock_s *a1, double a2)
{
  v4 = sub_5544(17);
  v5 = sub_5544(37);
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
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_23148(&__p, a1 + 2);
    v10 = v23 >= 0 ? &__p : __p;
    *buf = 136315906;
    *&buf[4] = "AggregateDevice_CommonBase.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 683;
    v25 = 2048;
    v26 = a2;
    v27 = 2080;
    v28 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Synchronously setting sample rate to %f Hz on aggregate device %s.", buf, 0x26u);
    if (v23 < 0)
    {
      operator delete(__p);
    }
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_27;
  }

  sub_1FB4B0(&__p, a1);
  v11 = __p;
  if (__p && sub_1FB770(__p))
  {
    v12 = (*(*v11 + 104))(v11);
    v13 = fabs(a2);
    v14 = fabs(v12);
    if (v13 < v14)
    {
      v13 = v14;
    }

    if (v13 < 1.0)
    {
      v13 = 1.0;
    }

    if (vabdd_f64(a2, v12) > fabs(v13 * 2.22044605e-16))
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 693;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Accessory device controlled. Other sample rates not supported.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Accessory device controlled. Other sample rates not supported.");
    }

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  if (v22)
  {
    sub_1A8C0(v22);
  }

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  (*(*&a1->_os_unfair_lock_opaque + 208))(buf, a1, a2);
  v16 = (*(*&a1->_os_unfair_lock_opaque + 216))(a1, buf);
  sub_4B0F4(*&buf[8]);
  return v16;
}

void sub_1FE780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v14);
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1FEF0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_free_exception(v21);
  sub_1DB0E0(&a19);
  sub_71E0C(*(v19 + 704));
  sub_70ABC(v19 + 720);
  sub_13AB3C(v19 + 408);
  std::mutex::~mutex((v19 + 344));
  if (*(v19 + 343) < 0)
  {
    operator delete(*(v19 + 320));
  }

  if (*(v19 + 319) < 0)
  {
    operator delete(*v20);
  }

  if (*(v19 + 295) < 0)
  {
    operator delete(*(v19 + 272));
  }

  sub_69C68(&a19);
  if (*(v19 + 239) < 0)
  {
    operator delete(*a10);
  }

  if (*(v19 + 215) < 0)
  {
    operator delete(*v24);
  }

  sub_98A08(*v23);
  sub_98A08(*v22);
  v25 = *a9;
  if (*a9)
  {
    *(v19 + 128) = v25;
    operator delete(v25);
  }

  sub_28EE30(*(v19 + 104));
  sub_98A08(*(v19 + 72));
  sub_98A08(*(v19 + 40));
  sub_98A08(*(v19 + 8));
  operator delete();
}

void sub_1FF098(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a2 != 1936876644 && *a2 != 1936879204)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3086;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((*(*a1 + 32))(a1) > a5)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      v23 = a2[2];
      sub_22CE0(&__p);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561211770;
  }

  v13 = 616;
  if (a2[1] == 1768845428)
  {
    v13 = 592;
  }

  v14 = a1 + v13;
  if (*(a1 + v13 + 16) != 1)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3090;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty should have blocked this code path because the appropriate device list's size is not 1.", buf, 0x12u);
      }
    }
  }

  sub_5659C(buf, (*(v14 + 8) + 16), "", 3091);
  (*(**buf + 48))(*buf, a2, a3, a4, a5, a6);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }
}

void sub_1FF458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1FF4A0(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7)
{
  if (a2 != 1953719148)
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2392;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1869968496)
  {
    v12 = a1 + 23;
    v13 = a1[24];
    if (v13 == a1 + 23)
    {
LABEL_12:
      if (v13 != v12)
      {
        sub_5659C(buf, v13 + 2, "", 2407);
        v34 = 0x6F75747054547323;
        v35 = 0;
        (*(**buf + 48))(*buf, &v34, a4, a5, a6, a7);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        return;
      }
    }

    else
    {
      do
      {
        v14 = v13[3];
        if (v14)
        {
          v15 = std::__shared_weak_count::lock(v14);
          if (v15)
          {
            v16 = v15;
            v17 = v13[2];
            if (v17)
            {
              strcpy(buf, "#sTTptuo");
              buf[9] = 0;
              *&buf[10] = 0;
              v18 = (*(*v17 + 16))(v17, buf);
              sub_1A8C0(v16);
              if (v18)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_1A8C0(v16);
            }
          }
        }

        v13 = v13[1];
      }

      while (v13 != v12);
    }

    v19 = a1[83];
    for (i = a1[84]; v19 != i; v19 += 16)
    {
      if (!(*(**(*v19 + 152) + 104))(*(*v19 + 152), 1987013737, 64001, 0))
      {
        continue;
      }

      v21 = *(*v19 + 192);
      if (!v21)
      {
        continue;
      }

      v22 = *(*v19 + 184);
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v23 = std::__shared_weak_count::lock(v21);
      std::__shared_weak_count::__release_weak(v21);
      if (v23)
      {
        v24 = v22 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        if (!v23)
        {
          continue;
        }
      }

      else
      {
        v25 = (*(*v22 + 136))(v22);
        v26 = sub_5544(17);
        v28 = *v26;
        if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
        {
          v29 = *a7;
          v30 = (*(*a1 + 120))(a1);
          *buf = 136315906;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2426;
          v37 = 2048;
          v38 = v29;
          v39 = 1024;
          v40 = v30;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%25s:%-5d Setting thermal gain %f on aggregate device %u.", buf, 0x22u);
        }

        v27.n128_f32[0] = *a7;
        if (v25 != 1935895666)
        {
          sub_5B898(&unk_6E66F0, v27.n128_f32[0]);
        }

        (*(*v22 + 16))(v22, v27);
      }

      sub_1A8C0(v23);
    }
  }
}

void sub_1FF8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1FF91C(uint64_t a1, int a2, int a3, const __CFDictionary **a4)
{
  if (a2 != 1886413412)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "AggregateDevice_CommonBase.cpp";
      *&v22[12] = 1024;
      *&v22[14] = 2989;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v22, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1869968496)
  {
    v5 = (a1 + 184);
    v6 = *(a1 + 192);
    strcpy(v22, "wBPPptuo");
    v22[9] = 0;
    *&v22[10] = 0;
    if (v6 == (a1 + 184))
    {
LABEL_12:
      if (v6 != v5)
      {
        v12 = sub_5544(17);
        if (*(v12 + 8))
        {
          v13 = *v12;
          if (*v12)
          {
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
            {
              *v22 = 136315394;
              *&v22[4] = "AggregateDevice_CommonBase.cpp";
              *&v22[12] = 1024;
              *&v22[14] = 3006;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Legacy: Setting PeakPowerBudget (AEA property supported)", v22, 0x12u);
            }
          }
        }

        v14 = *a4;
        if (!v14)
        {
          v17 = sub_5544(14);
          v18 = *v17;
          if (*v17)
          {
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
            {
              *v22 = 136315394;
              *&v22[4] = "AggregateDevice_CommonBase.cpp";
              *&v22[12] = 1024;
              *&v22[14] = 3009;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Dictionary is null!", v22, 0x12u);
            }
          }
        }

        sub_5659C(v22, v6 + 2, "", 3011);
        v15 = *v22;
        v16 = sub_203364(v14, @"device peak power budget");
        (*(*v15 + 216))(v15, v16);
        if (*&v22[8])
        {
          sub_1A8C0(*&v22[8]);
        }
      }
    }

    else
    {
      do
      {
        v7 = v6[3];
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            v9 = v8;
            v10 = v6[2];
            if (v10)
            {
              v11 = (*(*v10 + 16))(v10, v22);
              sub_1A8C0(v9);
              if (v11)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_1A8C0(v9);
            }
          }
        }

        v6 = v6[1];
      }

      while (v6 != v5);
    }
  }
}

void sub_1FFC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1FFC6C(uint64_t a1, int a2, int a3, uint64_t a4, void **a5)
{
  if (a2 != 1869574756)
  {
    v32 = sub_5544(14);
    v33 = *v32;
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "AggregateDevice_CommonBase.cpp";
      v40 = 1024;
      v41 = 2799;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1768845428)
  {
    v5 = *(a1 + 640);
    for (i = *(a1 + 648); v5 != i; v5 += 16)
    {
      v9 = *(*v5 + 152);
      if ((*(*v9 + 104))(v9, 1685287015, 1818980210, 0))
      {
        v10 = *a5;
        if ((*a5 - 1) >= 5)
        {
          v26 = sub_5544(14);
          v27 = *v26;
          if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v39 = "AggregateDevice_CommonBase.cpp";
            v40 = 1024;
            v41 = 2810;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v28 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v28, "Precondition failure.");
        }

        if (v10 == 5)
        {
          v11 = 1970040690;
        }

        else
        {
          v11 = 1818980210;
        }

        v12 = sub_5544(17);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
        {
          sub_22170(__p, v11);
          v14 = __p;
          if (v37 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136315906;
          v39 = "AggregateDevice_CommonBase.cpp";
          v40 = 1024;
          v41 = 2813;
          v42 = 2080;
          *v43 = v14;
          *&v43[8] = 1024;
          *&v43[10] = v10;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Setting orientation override {%s, %d}", buf, 0x22u);
          if (v37 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v15 = (*(*v9 + 128))(v9, 1685287015, v11, a5, a4, 0, 0, 0);
        if (v15)
        {
          v19 = sub_5544(14);
          v20 = *v19;
          if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            sub_22170(__p, v11);
            v21 = v37 >= 0 ? __p : __p[0];
            *buf = 136315906;
            v39 = "AggregateDevice_CommonBase.cpp";
            v40 = 1024;
            v41 = 2816;
            v42 = 1024;
            *v43 = v15;
            *&v43[4] = 2080;
            *&v43[6] = v21;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) setting DSP Property %s", buf, 0x22u);
            if (v37 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v22 = __cxa_allocate_exception(0x10uLL);
          *v22 = &off_6DDDD0;
          v22[2] = v15;
        }

        __p[0] = 0;
        v35 = 8;
        if (((*(*v9 + 104))(v9, 1685287015, 1869768052, 0) & 1) == 0)
        {
          v29 = sub_5544(14);
          v30 = *v29;
          if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v39 = "AggregateDevice_CommonBase.cpp";
            v40 = 1024;
            v41 = 2822;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): LockOrientation Property is present, but OrientationEffectiveTime is missing", buf, 0x12u);
          }

          v31 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v31, "LockOrientation Property is present, but OrientationEffectiveTime is missing");
        }

        v16 = (*(*v9 + 120))(v9, 1685287015, 1869768052, __p, &v35, 0, 0, 0);
        if (v16)
        {
          v23 = sub_5544(14);
          v24 = *v23;
          if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v39 = "AggregateDevice_CommonBase.cpp";
            v40 = 1024;
            v41 = 2825;
            v42 = 1024;
            *v43 = v16;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) obtaining DSP Property for orientation effective time", buf, 0x18u);
          }

          v25 = __cxa_allocate_exception(0x10uLL);
          *v25 = &off_6DDDD0;
          v25[2] = v16;
        }

        v17 = sub_5544(17);
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v39 = "AggregateDevice_CommonBase.cpp";
            v40 = 1024;
            v41 = 2826;
            v42 = 2048;
            *v43 = __p[0];
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d orientation effective time: %llu", buf, 0x1Cu);
          }
        }

        a5[1] = __p[0];
      }
    }
  }
}

uint64_t sub_200390(uint64_t result, int a2, int a3, uint64_t a4, int *a5)
{
  if (a2 != 1869575794)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "AggregateDevice_CommonBase.cpp";
      v30 = 1024;
      v31 = 2858;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1768845428)
  {
    v5 = *(result + 640);
    for (i = *(result + 648); v5 != i; v5 += 16)
    {
      v9 = *(*v5 + 152);
      result = (*(*v9 + 104))(v9, 1685287015, 1818980210, 0);
      if (result)
      {
        v10 = *a5;
        if ((*a5 - 1) >= 5)
        {
          v20 = sub_5544(14);
          v21 = *v20;
          if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "AggregateDevice_CommonBase.cpp";
            v30 = 1024;
            v31 = 2868;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v22 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v22, "Precondition failure.");
        }

        if (v10 == 5)
        {
          v11 = 1970040690;
        }

        else
        {
          v11 = 1818980210;
        }

        v12 = sub_5544(17);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
        {
          sub_22170(__p, v11);
          v14 = __p;
          if (v27 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136315906;
          v29 = "AggregateDevice_CommonBase.cpp";
          v30 = 1024;
          v31 = 2871;
          v32 = 2080;
          *v33 = v14;
          *&v33[8] = 1024;
          *&v33[10] = v10;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Setting orientation override {%s, %d}", buf, 0x22u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        result = (*(*v9 + 128))(v9, 1685287015, v11, a5, a4, 0, 0, 0);
        v15 = result;
        if (result)
        {
          v16 = sub_5544(14);
          v17 = *v16;
          if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            sub_22170(__p, v11);
            if (v27 >= 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0];
            }

            *buf = 136315906;
            v29 = "AggregateDevice_CommonBase.cpp";
            v30 = 1024;
            v31 = 2874;
            v32 = 1024;
            *v33 = v15;
            *&v33[4] = 2080;
            *&v33[6] = v18;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) setting DSP Property %s", buf, 0x22u);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v19 = __cxa_allocate_exception(0x10uLL);
          *v19 = &off_6DDDD0;
          v19[2] = v15;
        }
      }
    }
  }

  return result;
}

void sub_200820(uint64_t *a1, int a2, int a3, unsigned int *a4)
{
  if (a2 != 1969844082)
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2910;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1768845428)
  {
    v5 = a1[80];
    v6 = a1[81];
    if (v5 != v6)
    {
      v8 = "AggregateDevice_CommonBase.cpp";
      do
      {
        v9 = *(*v5 + 152);
        (*(*v9 + 184))(&v46, v9);
        if ((*(*a1 + 400))(a1, 1685287015, 1818980210, 0))
        {
          v10 = v47;
          if (v46 == v47)
          {
            goto LABEL_71;
          }

          v11 = v46 + 16;
          do
          {
            v12 = (*(**(v11 - 16) + 64))(*(v11 - 16));
            if (v11 == v10)
            {
              v13 = 1;
            }

            else
            {
              v13 = v12;
            }

            v11 += 16;
          }

          while (v13 != 1);
          if ((v12 & 1) == 0)
          {
LABEL_71:
            if ((*(*v9 + 56))(v9, 1685287015, 1969844082, 0))
            {
              v14 = *a4;
              v45 = 0.0;
              if (v14 >= 5)
              {
                v34 = sub_5544(14);
                v35 = *v34;
                if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = v8;
                  *&buf[12] = 1024;
                  *&buf[14] = 2930;
                  _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
                }

                v36 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v36, "Precondition failure.");
              }

              (*(*v9 + 64))(v9, 1685287015, 1969844082, &v45, 0);
              if (v14 == v45)
              {
                v15 = sub_5544(17);
                v16 = *v15;
                if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
                {
                  v17 = v8;
                  sub_22170(v43, 0x75696F72u);
                  v18 = v44;
                  v19 = v43[0];
                  sub_22170(&__p, 0x75696F72u);
                  v20 = v43;
                  if (v18 < 0)
                  {
                    v20 = v19;
                  }

                  p_p = &__p;
                  if (v51 < 0)
                  {
                    p_p = __p;
                  }

                  *buf = 136316418;
                  v8 = v17;
                  *&buf[4] = v17;
                  *&buf[12] = 1024;
                  *&buf[14] = 2947;
                  *&buf[18] = 2080;
                  *&buf[20] = v20;
                  *&buf[28] = 1024;
                  *&buf[30] = v14;
                  v53 = 2080;
                  v54 = p_p;
                  v55 = 1024;
                  v56 = v14;
                  _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Got UI orientation param {%s, %u}, skipping redundant orientation update {%s, %u}", buf, 0x32u);
                  if (v51 < 0)
                  {
                    operator delete(__p);
                  }

                  if (v44 < 0)
                  {
                    operator delete(v43[0]);
                  }
                }
              }

              else
              {
                v22 = sub_5544(17);
                v23 = *v22;
                if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
                {
                  sub_22170(v43, 0x75696F72u);
                  v24 = v43;
                  if (v44 < 0)
                  {
                    v24 = v43[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = v8;
                  *&buf[12] = 1024;
                  *&buf[14] = 2937;
                  *&buf[18] = 2080;
                  *&buf[20] = v24;
                  *&buf[28] = 1024;
                  *&buf[30] = v14;
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%25s:%-5d Setting UI orientation param {%s, %u}", buf, 0x22u);
                  if (v44 < 0)
                  {
                    operator delete(v43[0]);
                  }
                }

                v25 = (*(*v9 + 72))(v9, 1685287015, 1969844082, 0, v14);
                if (v25)
                {
                  v30 = sub_5544(14);
                  v31 = *v30;
                  if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
                  {
                    sub_22170(v43, 0x75696F72u);
                    v32 = v44 >= 0 ? v43 : v43[0];
                    *buf = 136315906;
                    *&buf[4] = v8;
                    *&buf[12] = 1024;
                    *&buf[14] = 2940;
                    *&buf[18] = 1024;
                    *&buf[20] = v25;
                    *&buf[24] = 2080;
                    *&buf[26] = v32;
                    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) setting DSP Property %s", buf, 0x22u);
                    if (v44 < 0)
                    {
                      operator delete(v43[0]);
                    }
                  }

                  v33 = __cxa_allocate_exception(0x10uLL);
                  *v33 = &off_6DDDD0;
                  v33[2] = v25;
                }

                if (byte_6E6737 >= 0)
                {
                  v26 = &qword_6E6720;
                }

                else
                {
                  v26 = qword_6E6720;
                }

                if (byte_6E6737 >= 0)
                {
                  v27 = byte_6E6737;
                }

                else
                {
                  v27 = unk_6E6728;
                }

                __p = CFStringCreateWithBytes(0, v26, v27, 0x8000100u, 0);
                if (!__p)
                {
                  v41 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v41, "Could not construct");
                }

                valuePtr = v14;
                cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                if (!cf)
                {
                  v40 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v40, "Could not construct");
                }

                v43[0] = &__p;
                v43[1] = &dword_0 + 1;
                v28 = sub_69CE8(v43);
                v42 = v28;
                memset(buf, 0, 24);
                sub_1215C(buf, a1[18], a1[19], (a1[19] - a1[18]) >> 3);
                v29 = *buf;
                sub_A9D34(&v42, *buf, *&buf[8], 1, 0);
                if (v29)
                {
                  operator delete(v29);
                }

                if (v28)
                {
                  CFRelease(v28);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (__p)
                {
                  CFRelease(__p);
                }
              }
            }
          }
        }

        *buf = &v46;
        sub_F5714(buf);
        v5 += 16;
      }

      while (v5 != v6);
    }
  }
}

void sub_200FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char *a28)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  a28 = &a21;
  sub_F5714(&a28);
  _Unwind_Resume(a1);
}

CFComparisonResult sub_201118(CFComparisonResult result, int a2, int a3, const __CFString *a4, unsigned int *a5)
{
  if (a2 != 1685287011)
  {
    v42 = sub_5544(14);
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v48 = 1024;
      v49 = 3240;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1869968496)
  {
    v5 = *(result + 664);
    for (i = *(result + 672); v5 != i; v5 += 16)
    {
      v9 = *(*v5 + 152);
      v10 = sub_5544(27);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_48540(__p, a4);
        v12 = __p;
        if (v46 < 0)
        {
          v12 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v48 = 1024;
        v49 = 3248;
        v50 = 2080;
        v51 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set DSPConfig Qualifier String: %s", buf, 0x1Cu);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (CFStringCompare(a4, @"haptics protection mode", 0))
      {
        result = CFStringCompare(a4, @"loudness normalizer reset", 0);
        if (result == kCFCompareEqualTo)
        {
          result = (*(*v9 + 104))(v9, 1818521197, 1920165236, 0);
          if (result)
          {
            v13 = *a5;
            LODWORD(__p[0]) = v13;
            if (v13 != 2)
            {
              v38 = sub_5544(14);
              v39 = sub_468EC(1, *v38, *(v38 + 8));
              v40 = v39;
              if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "DSPChain.mm";
                v48 = 1024;
                v49 = 3500;
                v50 = 1024;
                LODWORD(v51) = v13;
                _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Invalid reset value for AULN - Expected 2 and got: %u", buf, 0x18u);
              }

              v41 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v41, "Invalid reset value for AULN - Expected 2 and got: %u");
            }

            v14 = sub_5544(25);
            v15 = sub_5544(32);
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
                goto LABEL_27;
              }
            }

            if ((v17 & v18) == 0)
            {
              v14 = v15;
            }

LABEL_27:
            v23 = *v14;
            v24 = v23;
            if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "DSPChain.mm";
              v48 = 1024;
              v49 = 3504;
              v50 = 1024;
              LODWORD(v51) = 2;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resetting AULoudnessNormalizer: %u", buf, 0x18u);
            }

            result = (*(*v9 + 128))(v9, 1818521197, 1920165236, __p, 4, 0, 0, 0);
            v25 = result;
            if (result)
            {
              v30 = sub_5544(14);
              v31 = sub_468EC(1, *v30, *(v30 + 8));
              v32 = v31;
              if (v31)
              {
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "DSPChain.mm";
                  v48 = 1024;
                  v49 = 3507;
                  v50 = 1024;
                  LODWORD(v51) = v25;
                  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) resetting AULoudnessNormalizer", buf, 0x18u);
                }
              }

              v33 = __cxa_allocate_exception(0x10uLL);
              *v33 = &off_6DDDD0;
              v33[2] = v25;
            }
          }
        }
      }

      else
      {
        result = (*(*v9 + 104))(v9, 1751216240, 88000, 0);
        if (result)
        {
          v19 = *a5;
          LODWORD(__p[0]) = v19;
          if (v19 >= 3)
          {
            v34 = sub_5544(14);
            v35 = sub_468EC(1, *v34, *(v34 + 8));
            v36 = v35;
            if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "DSPChain.mm";
              v48 = 1024;
              v49 = 3487;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            v37 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v37, "Precondition failure.");
          }

          v20 = *sub_5544(27);
          v21 = v20;
          if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "DSPChain.mm";
            v48 = 1024;
            v49 = 3489;
            v50 = 1024;
            LODWORD(v51) = v19;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Haptics Protection Mode: %u", buf, 0x18u);
          }

          result = (*(*v9 + 128))(v9, 1751216240, 88000, __p, 4, 0, 0, 0);
          v22 = result;
          if (result)
          {
            v26 = sub_5544(14);
            v27 = sub_468EC(1, *v26, *(v26 + 8));
            v28 = v27;
            if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "DSPChain.mm";
              v48 = 1024;
              v49 = 3492;
              v50 = 1024;
              LODWORD(v51) = v22;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) setting DSP Property for Haptics Protection", buf, 0x18u);
            }

            v29 = __cxa_allocate_exception(0x10uLL);
            *v29 = &off_6DDDD0;
            v29[2] = v22;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20194C(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, unsigned int *a4, UInt32 a5, const void *a6)
{
  if (*(a1 + 308))
  {
    v12 = *(a1 + 128);

    return sub_140EB8(v12, a2, a3, a4, a5, a6);
  }

  else
  {
    if (a3 != 4 || !a4)
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&__p);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    mScope = a2->mScope;
    if (mScope != 1768845428 && mScope != 1869968496)
    {
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "AggregateDevice_CommonBase.cpp";
          v24 = 1024;
          v25 = 3461;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v18, "Precondition failure.");
    }

    v8 = *a4;
    v9 = a2->mElement;
    v10 = *(*a1 + 416);

    return v10();
  }
}

void sub_201C74(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_189A00();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1E2544(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void *sub_201D4C(void *a1, void *a2, uint64_t *a3)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = *a3;
    result = a1;
    while (*result != v5)
    {
      if (++result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 1; i != a2; ++i)
      {
        if (*i != v5)
        {
          *result++ = *i;
          v5 = *a3;
        }
      }
    }
  }

  return result;
}

CFTypeRef sub_201DB4(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void *sub_201DE8(void *result, void *a2)
{
  *result = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  return result;
}

uint64_t sub_201E54(uint64_t a1, int a2)
{
  result = (*(*a1 + 400))(a1);
  if ((result & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "PhysicalDevice.h";
      v10 = 1024;
      v11 = 395;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a1 + 256) == a2)
  {
    *(a1 + 260) = a2;
    *(a1 + 264) = 1;
  }

  return result;
}

uint64_t sub_202060(uint64_t a1, int a2)
{
  if (((*(*a1 + 400))(a1) & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "PhysicalDevice.h";
      v10 = 1024;
      v11 = 405;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a2 == -1 || (result = sub_2021DC(a1, a2), result))
  {
    if (*(a1 + 264) == 1)
    {
      *(a1 + 264) = 0;
    }

    result = sub_315E70();
    *(a1 + 256) = result;
  }

  return result;
}

uint64_t sub_2021DC(uint64_t a1, int a2)
{
  if (((*(*a1 + 400))(a1) & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "PhysicalDevice.h";
      v10 = 1024;
      v11 = 388;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  result = sub_1FB770(a1);
  if (result)
  {
    return *(a1 + 260) == a2;
  }

  return result;
}

void sub_202340(uint64_t a1, int a2, float a3)
{
  v39 = a3;
  sub_1FB4B0(&v37, a1);
  v4 = v37;
  if (v37)
  {
    v5 = sub_202804(v37);
    (*(*&v4->_os_unfair_lock_opaque + 256))(&v47, v4, 0, v5);
    if (v48)
    {
      v6 = std::__shared_weak_count::lock(v48);
      if (v6)
      {
        v7 = v47;
      }

      else
      {
        v7 = 0;
      }

      if (v48)
      {
        std::__shared_weak_count::__release_weak(v48);
      }

      if (v7)
      {
        (*(*v7 + 144))(&v33, v7);
        v8 = 0uLL;
        memset(__src, 0, 24);
        v9 = v33;
        v10 = v34;
        if (v33 != v34)
        {
          while (1)
          {
            v40 = 0;
            v11 = v9[1];
            if (v11)
            {
              break;
            }

LABEL_40:
            v9 += 2;
            if (v9 == v10)
            {
              v8 = *__src;
              v28 = __src[2];
              goto LABEL_43;
            }
          }

          v12 = std::__shared_weak_count::lock(v11);
          v41 = v12;
          if (v12)
          {
            v13 = *v9;
            v40 = v13;
            if (!v13)
            {
LABEL_38:
              if (v12)
              {
                sub_1A8C0(v12);
              }

              goto LABEL_40;
            }
          }

          else
          {
            v13 = v40;
            if (!v40)
            {
              goto LABEL_38;
            }
          }

          v14 = __src[1];
          if (__src[1] >= __src[2])
          {
            v15 = __src[1] - __src[0];
            v16 = (__src[1] - __src[0]) >> 4;
            v17 = v16 + 1;
            if ((v16 + 1) >> 60)
            {
              sub_189A00();
            }

            v18 = __src[2] - __src[0];
            if ((__src[2] - __src[0]) >> 3 > v17)
            {
              v17 = v18 >> 3;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF0)
            {
              v19 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            v46 = __src;
            if (v19)
            {
              sub_1DC690(v19);
            }

            v20 = (16 * v16);
            v43 = 0;
            v44 = 16 * v16;
            v45 = (16 * v16);
            if (!v16)
            {
              if (v15 < 1)
              {
                if (__src[1] == __src[0])
                {
                  v21 = 1;
                }

                else
                {
                  v21 = v15 >> 3;
                }

                v49 = v46;
                sub_1DC690(v21);
              }

              v20 = (v20 - (((v15 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
              v44 = v20;
              *&v45 = v20;
            }

            v22 = v41;
            *v20 = v40;
            v20[1] = v22;
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              v20 = v45;
            }

            *&v45 = v20 + 2;
            v23 = (__src[1] - v14);
            memcpy(v20 + 2, v14, __src[1] - v14);
            *&v45 = &v23[v45];
            __src[1] = v14;
            v24 = v14 - __src[0];
            v25 = (v44 - (v14 - __src[0]));
            memcpy(v25, __src[0], v24);
            v26 = __src[0];
            v27 = __src[2];
            __src[0] = v25;
            *&__src[1] = v45;
            *&v45 = v26;
            *(&v45 + 1) = v27;
            v43 = v26;
            v44 = v26;
            sub_A0650(&v43);
          }

          else
          {
            *__src[1] = v13;
            v14[1] = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            __src[1] = v14 + 2;
          }

          v12 = v41;
          goto LABEL_38;
        }

        v28 = 0;
LABEL_43:
        v32 = v8;
        v35 = v8;
        v36 = v28;
        memset(__src, 0, 24);
        v47 = __src;
        sub_72C14(&v47);
        v47 = &v33;
        sub_202B60(&v47);
        v30 = *(&v32 + 1);
        v29 = v32;
        if (v32 != *(&v32 + 1))
        {
          while ((*(**v29 + 152))() != a2)
          {
            v29 += 2;
            if (v29 == *(&v32 + 1))
            {
              v29 = *(&v32 + 1);
              break;
            }
          }

          v30 = *(&v35 + 1);
        }

        if (v29 != v30)
        {
          v31 = *v29;
          v47 = 0x676C6F62766F6C6DLL;
          LODWORD(v48) = 0;
          (*(*v31 + 48))(v31, &v47, 0, 0, 4, &v39);
        }

        v47 = &v35;
        sub_72C14(&v47);
      }

      if (v6)
      {
        sub_1A8C0(v6);
      }
    }
  }

  if (v38)
  {
    sub_1A8C0(v38);
  }
}

void sub_202774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  *(v20 - 136) = &a15;
  sub_72C14((v20 - 136));
  if (v19)
  {
    sub_1A8C0(v19);
  }

  if (a19)
  {
    sub_1A8C0(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_202804(os_unfair_lock_s *a1)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  strcpy(v25, "cwdv");
  v25[8] = 0;
  v26 = 3;
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 44731016;
  v2 = sub_809C0();
  *buf = off_6B8C68;
  *&v37[4] = buf;
  sub_2574C4(__p, v2, &v22, buf);
  sub_76388(&v20, __p);
  sub_65310(__p);
  sub_85148(buf);
  v3 = v21;
  if (v21 != &v20)
  {
    while (1)
    {
      v4 = v3[2];
      v5 = v3[3];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v4 + 200);
      if (v6)
      {
        v7 = *(v4 + 192);
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v8 = std::__shared_weak_count::lock(v6);
        if (v8)
        {
          v9 = v8;
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v6);
          sub_1A8C0(v9);
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            v11 = v7 == a1;
            sub_1A8C0(v10);
          }

          else
          {
            v11 = 0;
          }

          v6 = v9;
        }

        else
        {
          v11 = 0;
        }

        std::__shared_weak_count::__release_weak(v6);
        if (!v5)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
        if (!v5)
        {
          goto LABEL_15;
        }
      }

      sub_1A8C0(v5);
LABEL_15:
      if (v11)
      {
        break;
      }

      v3 = v3[1];
      if (v3 == &v20)
      {
        goto LABEL_17;
      }
    }
  }

  if (v3 == &v20)
  {
LABEL_17:
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_23148(__p, a1 + 2);
      if (v19 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v34 = 1024;
      v35 = 3746;
      v36 = 2080;
      *v37 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): No input port type found for connected accessory physical device %s.", buf, 0x1Cu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No input port type found for connected accessory physical device %s.");
  }

  v16 = *(v3[2] + 144);
  sub_87980(&v20);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  sub_477A0(v28[0]);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v16;
}

void sub_202B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_65310(va);
  sub_85148(v2 - 128);
  sub_46934(va1);
  _Unwind_Resume(a1);
}

void sub_202B60(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_202C88(uint64_t a1@<X8>)
{
  v2 = sub_8703C();
  (*(*v2 + 344))(buf);
  v3 = *buf;
  if (*buf)
  {
    sub_27A4();
    (*(qword_6E94F8 + 16))();
    v4 = sub_5544(8);
    v5 = sub_5544(35);
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
        goto LABEL_12;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_12:
    v14 = *v4;
    if (v14)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v17 = 1024;
        v18 = 2527;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Connected accessory device update.", buf, 0x12u);
      }
    }

    sub_271104(a1, v3, 1667327075);
  }

  v9 = sub_5544(17);
  v10 = sub_5544(16);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      goto LABEL_18;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

LABEL_18:
  v15 = *v9;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AggregateDevice_CommonBase.cpp";
    v17 = 1024;
    v18 = 3856;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", buf, 0x12u);
  }

  sub_20301C(a1, 1);
}

void sub_20301C(uint64_t a1, int a2)
{
  v3[0] = 0;
  v5 = 0;
  *a1 = a2;
  *(a1 + 4) = 0;
  sub_20309C(a1 + 8, v3);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v5 == 1)
  {
    sub_175F78(v4);
  }
}

void sub_203078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_175F78(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_20309C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *a1 = *a2;
    sub_175EEC((a1 + 16), a2 + 16);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_2030F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    sub_175F78((v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_2031FC(_Unwind_Exception *a1)
{
  sub_20323C(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_20323C(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  sub_477A0(*(a1 + 80));
  v4 = *(a1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_203290(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2032D0(a2);
  }

  sub_189A00();
}

void sub_2032D0(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_6ACD8();
}

const void **sub_203330(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_203364(const __CFDictionary *a1, const void *a2)
{
  if (!a1 || !a2 || (Value = CFDictionaryGetValue(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_6FCD8(Value);
}

void sub_2033E8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a2 != 1684103987)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v18 = "AggregateDevice_CommonBase.cpp";
      *&v18[8] = 1024;
      *&v18[10] = 3270;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_D66A8(buf, a1 + 184, 3273);
  v11 = *&v18[4];
  if (*&v18[4] == buf)
  {
    v12 = 1;
  }

  else
  {
    v12 = 1;
    do
    {
      if ((*(**(v11 + 16) + 16))(*(v11 + 16), a2))
      {
        v16 = 0;
        (*(**(v11 + 16) + 40))(*(v11 + 16), a2, a3, a4, a5, &v16);
        v12 &= v16;
      }

      v11 = *(v11 + 8);
    }

    while (v11 != buf);
  }

  sub_87980(buf);
  *a6 = v12;
}

void sub_203614(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  if (*a2 != 1953719148)
  {
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2344;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v12 = (a1 + 184);
  v13 = *(a1 + 192);
  if (v13 == (a1 + 184))
  {
LABEL_11:
    if (v13 != v12)
    {
      sub_5659C(buf, v13 + 2, "", 2356);
      v38 = 0x6F75747054547323;
      v39 = 0;
      (*(**buf + 40))(*buf, &v38, a3, a4, a5, a6);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      return;
    }
  }

  else
  {
    do
    {
      v14 = v13[3];
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = v13[2];
          if (v17)
          {
            strcpy(buf, "#sTTptuo");
            buf[9] = 0;
            *&buf[10] = 0;
            v18 = (*(*v17 + 16))(v17, buf);
            sub_1A8C0(v16);
            if (v18)
            {
              goto LABEL_11;
            }
          }

          else
          {
            sub_1A8C0(v16);
          }
        }
      }

      v13 = v13[1];
    }

    while (v13 != v12);
  }

  v19 = sub_71E60(a2[1]);
  v20 = 640;
  if (v19)
  {
    v20 = 664;
  }

  v21 = (a1 + v20);
  v22 = *v21;
  v23 = v21[1];
  if (*v21 != v23)
  {
    do
    {
      if (v19 != sub_F5EFC(*v22))
      {
        goto LABEL_32;
      }

      if (!(*(**(*v22 + 152) + 104))(*(*v22 + 152), 1987013737, 64001, 0))
      {
        goto LABEL_32;
      }

      v24 = *(*v22 + 192);
      if (!v24)
      {
        goto LABEL_32;
      }

      v25 = *(*v22 + 184);
      atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v26 = std::__shared_weak_count::lock(v24);
      std::__shared_weak_count::__release_weak(v24);
      if (v26)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        LODWORD(v38) = 0;
        v28 = (*(*v25 + 216))(v25, &v38);
        v29 = v28;
        if (v28)
        {
          v32 = sub_5544(14);
          v33 = *v32;
          if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "AggregateDevice_CommonBase.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2381;
            v41 = 1024;
            v42 = v29;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) obtaining DSP Parameter related to ThermalScalarGain property", buf, 0x18u);
          }

          v34 = __cxa_allocate_exception(0x10uLL);
          *v34 = &off_6DDDD0;
          v34[2] = v29;
        }

        v30 = (*(*v25 + 136))(v25);
        v31 = *&v38;
        if (v30 != 1935895666)
        {
          v31 = sub_E9780(&unk_6E66F0, *&v38);
        }

        *a6 = v31;
      }

      sub_1A8C0(v26);
LABEL_32:
      v22 += 2;
    }

    while (v22 != v23);
  }
}

void sub_203A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_203AD8(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = v5[3];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = v7;
          v9 = v5[2];
          if (v9)
          {
            v10 = (*(*v9 + 16))(v9, a3);
            sub_1A8C0(v8);
            if (v10)
            {
              return v5;
            }
          }

          else
          {
            sub_1A8C0(v8);
          }
        }
      }

      v5 = v5[1];
    }

    while (v5 != v3);
  }

  return v3;
}

void sub_203BA4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, CFDictionaryRef *a5)
{
  if (*a2 != 1886413426)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2956;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a2[1] == 1869968496)
  {
    v33 = 0x6F75747050504272;
    v34 = 0;
    v9 = (a1 + 184);
    v10 = *(a1 + 192);
    strcpy(buf, "rBPPptuo");
    buf[9] = 0;
    *&buf[10] = 0;
    if (v10 == (a1 + 184))
    {
LABEL_12:
      if (v10 != v9)
      {
        v31 = 8;
        sub_5659C(buf, v10 + 2, "", 2976);
        (*(**buf + 40))(*buf, &v33, a3, a4, &v31, &v32);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        v44 = v32;
        __p[0] = &v44;
        __p[1] = &dword_0 + 2;
        v16 = sub_20A6B0(__p);
        v35 = v16;
        sub_20A838(&v36, &v35);
        *buf = &v36;
        *&buf[8] = 1;
        v17 = sub_69CE8(buf);
        v30 = v17;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v36)
        {
          CFRelease(v36);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        v18 = sub_5544(17);
        if (*(v18 + 8))
        {
          v19 = *v18;
          if (*v18)
          {
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
            {
              v20 = *a2;
              if (v20 > 7)
              {
                v21 = "unknown";
              }

              else
              {
                v21 = off_6BD200[v20];
              }

              sub_53E8(&v36, v21);
              if (v38 >= 0)
              {
                v22 = &v36;
              }

              else
              {
                v22 = v36;
              }

              v23 = CFCopyDescription(v17);
              v35 = v23;
              sub_1267C(__p, v23);
              if (v23)
              {
                CFRelease(v23);
              }

              v24 = __p;
              if (v29 < 0)
              {
                v24 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = "AggregateDevice_CommonBase.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2982;
              v40 = 2080;
              v41 = v22;
              v42 = 2080;
              v43 = v24;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Legacy: Get %s Dictionary description: %s", buf, 0x26u);
              if (v29 < 0)
              {
                operator delete(__p[0]);
              }

              if (v38 < 0)
              {
                operator delete(v36);
              }
            }
          }
        }

        *a5 = v17;
      }
    }

    else
    {
      do
      {
        v11 = v10[3];
        if (v11)
        {
          v12 = std::__shared_weak_count::lock(v11);
          if (v12)
          {
            v13 = v12;
            v14 = v10[2];
            if (v14)
            {
              v15 = (*(*v14 + 16))(v14, buf);
              sub_1A8C0(v13);
              if (v15)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_1A8C0(v13);
            }
          }
        }

        v10 = v10[1];
      }

      while (v10 != v9);
    }
  }
}

void sub_203F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_204048(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, _DWORD *a5, CFDictionaryRef *a6)
{
  if (*a2 != 1952997988)
  {
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2438;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a2[1] == 1869968496)
  {
    if (sub_6AE80())
    {
      if (sub_6F9C4((a1 + 184)))
      {
        v12 = sub_6FB1C();
        sub_735A0(buf, v12, 1);
      }

      else
      {
        if (a4)
        {
          sub_6FB1C();
          sub_6FB88(*a4);
        }

        v20 = sub_5544(17);
        v21 = *v20;
        if (*v20)
        {
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "AggregateDevice_CommonBase.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2465;
            v49 = 2080;
            v50 = "Speaker";
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS: Getting %s ThermalBudget", buf, 0x1Cu);
          }
        }

        v22 = sub_6FB1C();
        sub_735A0(buf, v22, 0);
      }

      *a6 = *buf;
      *a5 = *&buf[8];
      return;
    }

    v42 = 0x6F75747054684277;
    v43 = 0;
    v13 = (a1 + 184);
    v14 = *(a1 + 192);
    strcpy(buf, "wBhTptuo");
    buf[9] = 0;
    *&buf[10] = 0;
    if (v14 == (a1 + 184))
    {
LABEL_22:
      if (v14 != v13)
      {
        v40 = 4;
        v41 = 0;
        sub_5659C(buf, v14 + 2, "", 2494);
        (*(**buf + 40))(*buf, &v42, a3, a4, &v40, &v41);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        sub_88CE8(&v45, "HapticTargetPower");
        LODWORD(valuePtr[0]) = v41;
        cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
        if (!cf)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v36, "Could not construct");
        }

        *buf = &v45;
        *&buf[8] = 1;
        v23 = sub_69CE8(buf);
        v39 = v23;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v45)
        {
          CFRelease(v45);
        }

        v24 = sub_5544(17);
        if (*(v24 + 8))
        {
          v25 = *v24;
          if (*v24)
          {
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
            {
              v26 = *a2;
              if (v26 > 7)
              {
                v27 = "unknown";
              }

              else
              {
                v27 = off_6BD200[v26];
              }

              sub_53E8(&v45, v27);
              if (v47 >= 0)
              {
                v30 = &v45;
              }

              else
              {
                v30 = v45;
              }

              v31 = CFCopyDescription(v23);
              v44 = v31;
              sub_1267C(valuePtr, v31);
              if (v31)
              {
                CFRelease(v31);
              }

              v32 = valuePtr;
              if (v38 < 0)
              {
                v32 = valuePtr[0];
              }

              *buf = 136315906;
              *&buf[4] = "AggregateDevice_CommonBase.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2499;
              v49 = 2080;
              v50 = v30;
              v51 = 2080;
              v52 = v32;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Legacy: Get %s Dictionary description: %s", buf, 0x26u);
              if (v38 < 0)
              {
                operator delete(valuePtr[0]);
              }

              if (v47 < 0)
              {
                operator delete(v45);
              }
            }
          }
        }

        *a6 = v23;
        return;
      }
    }

    else
    {
      do
      {
        v15 = v14[3];
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = v14[2];
            if (v18)
            {
              v19 = (*(*v18 + 16))(v18, buf);
              sub_1A8C0(v17);
              if (v19)
              {
                goto LABEL_22;
              }
            }

            else
            {
              sub_1A8C0(v17);
            }
          }
        }

        v14 = v14[1];
      }

      while (v14 != v13);
    }

    *a5 = 0;
    v28 = sub_5544(17);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2487;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d kVirtualAudioDevicePropertyThermalBudget for CPMS is a write-only property", buf, 0x12u);
    }
  }
}

void sub_2045D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2046A4(uint64_t a1, int a2, int a3, unsigned int a4, int *a5, _DWORD *a6, CFDictionaryRef *a7)
{
  if (a2 != 1952998002)
  {
    v59 = sub_5544(14);
    v60 = *v59;
    if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2660;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 != 1869968496)
  {
    return;
  }

  if (sub_6AE80())
  {
    if (sub_6F9C4((a1 + 184)))
    {
      v150 = a7;
      v159[0] = 0;
      v159[1] = 0;
      v158 = v159;
      v151 = (a1 + 184);
      v149 = a5;
      v10 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
      if (!v10)
      {
        v63 = sub_5544(14);
        v64 = *v63;
        if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "EDTUtilsImpl.h";
          *&buf[12] = 1024;
          *&buf[14] = 46;
          *&buf[18] = 2080;
          *&buf[20] = "IODeviceTree:/product/audio";
          _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
        }

        v65 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v65, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
      }

      v11 = CFStringCreateWithBytes(0, "actuator-cpms-bgd_inst", 22, 0x8000100u, 0);
      *buf = v11;
      if (!v11)
      {
        v66 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v66, "Could not construct");
      }

      CFProperty = IORegistryEntryCreateCFProperty(v10, v11, kCFAllocatorDefault, 0);
      cf = CFProperty;
      if (!CFProperty)
      {
        goto LABEL_97;
      }

      v13 = CFGetTypeID(CFProperty);
      if (v13 != CFDataGetTypeID())
      {
        v67 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v67, "Could not construct");
      }

      if (!cf)
      {
LABEL_97:
        v62 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v62, "Could not construct");
      }

      sub_28DF08(&v172, cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }

      IOObjectRelease(v10);
      v15 = v172;
      v14 = v173;
      if (v172 == v173)
      {
        v68 = sub_5544(14);
        v69 = *v68;
        if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "StandardUtilities.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1120;
          *&buf[18] = 2080;
          *&buf[20] = "IODeviceTree:/product/audio";
          *&buf[28] = 2080;
          *&buf[30] = "actuator-cpms-bgd_inst";
          _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Power Budget empty for EDT path '%s'; key '%s'", buf, 0x26u);
        }

        v18 = 0;
        v70 = 0;
        if (!v14)
        {
LABEL_109:
          v157 = v70;
          sub_28E8A0(qword_6E9398, &v157, &v158);
          v71 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
          if (!v71)
          {
            v81 = sub_5544(14);
            v82 = *v81;
            if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "EDTUtilsImpl.h";
              *&buf[12] = 1024;
              *&buf[14] = 46;
              *&buf[18] = 2080;
              *&buf[20] = "IODeviceTree:/product/audio";
              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
            }

            v83 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v83, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
          }

          v72 = CFStringCreateWithBytes(0, "actuator-cpms-bgd_100ms", 23, 0x8000100u, 0);
          *buf = v72;
          if (!v72)
          {
            v84 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v84, "Could not construct");
          }

          v73 = IORegistryEntryCreateCFProperty(v71, v72, kCFAllocatorDefault, 0);
          cf = v73;
          if (!v73)
          {
            goto LABEL_124;
          }

          v74 = CFGetTypeID(v73);
          if (v74 != CFDataGetTypeID())
          {
            v85 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v85, "Could not construct");
          }

          if (!cf)
          {
LABEL_124:
            v80 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v80, "Could not construct");
          }

          sub_28DF08(&v172, cf);
          if (cf)
          {
            CFRelease(cf);
          }

          if (*buf)
          {
            CFRelease(*buf);
          }

          IOObjectRelease(v71);
          v76 = v172;
          v75 = v173;
          if (v172 == v173)
          {
            v86 = sub_5544(14);
            v87 = *v86;
            if (*v86 && os_log_type_enabled(*v86, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = "StandardUtilities.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1120;
              *&buf[18] = 2080;
              *&buf[20] = "IODeviceTree:/product/audio";
              *&buf[28] = 2080;
              *&buf[30] = "actuator-cpms-bgd_100ms";
              _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Power Budget empty for EDT path '%s'; key '%s'", buf, 0x26u);
            }

            v79 = 0;
            v88 = 0;
            if (!v75)
            {
LABEL_136:
              v157 = v88;
              sub_28E8A0(qword_6E9390, &v157, &v158);
              v89 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
              if (!v89)
              {
                v99 = sub_5544(14);
                v100 = *v99;
                if (*v99 && os_log_type_enabled(*v99, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "EDTUtilsImpl.h";
                  *&buf[12] = 1024;
                  *&buf[14] = 46;
                  *&buf[18] = 2080;
                  *&buf[20] = "IODeviceTree:/product/audio";
                  _os_log_impl(&dword_0, v100, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
                }

                v101 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v101, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
              }

              v90 = CFStringCreateWithBytes(0, "actuator-cpms-bgd_1s", 20, 0x8000100u, 0);
              *buf = v90;
              if (!v90)
              {
                v102 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v102, "Could not construct");
              }

              v91 = IORegistryEntryCreateCFProperty(v89, v90, kCFAllocatorDefault, 0);
              cf = v91;
              if (!v91)
              {
                goto LABEL_151;
              }

              v92 = CFGetTypeID(v91);
              if (v92 != CFDataGetTypeID())
              {
                v103 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v103, "Could not construct");
              }

              if (!cf)
              {
LABEL_151:
                v98 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v98, "Could not construct");
              }

              sub_28DF08(&v172, cf);
              if (cf)
              {
                CFRelease(cf);
              }

              if (*buf)
              {
                CFRelease(*buf);
              }

              IOObjectRelease(v89);
              v94 = v172;
              v93 = v173;
              if (v172 == v173)
              {
                v104 = sub_5544(14);
                v105 = *v104;
                if (*v104 && os_log_type_enabled(*v104, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = "StandardUtilities.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1120;
                  *&buf[18] = 2080;
                  *&buf[20] = "IODeviceTree:/product/audio";
                  *&buf[28] = 2080;
                  *&buf[30] = "actuator-cpms-bgd_1s";
                  _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Power Budget empty for EDT path '%s'; key '%s'", buf, 0x26u);
                }

                v97 = 0;
                v106 = 0;
                if (!v93)
                {
LABEL_163:
                  v157 = v106;
                  sub_28E8A0(qword_6E9388, &v157, &v158);
                  v107 = sub_28EC48(&v158);
                  v156 = v107;
                  v108 = sub_6FB1C();
                  if (v107)
                  {
                    v109 = v108;
                    TypeID = CFDictionaryGetTypeID();
                    if (TypeID == CFGetTypeID(v107))
                    {
                      Count = CFDictionaryGetCount(v107);
                      v161 = 0;
                      v162 = 0;
                      v160 = &v161;
                      sub_4788C(&cf, Count);
                      sub_4788C(&values, Count);
                      CFDictionaryGetKeysAndValues(v107, cf, values);
                      if (Count)
                      {
                        v112 = 0;
                        v154 = Count;
                        do
                        {
                          sub_125D8(__p, *(cf + v112));
                          v113 = values[v112];
                          if (!v113 || (v114 = CFArrayGetTypeID(), v114 != CFGetTypeID(v113)))
                          {
                            v147 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v147, "Could not convert");
                          }

                          v115 = CFArrayGetCount(v113);
                          if (v115 << 32)
                          {
                            if (!(v115 >> 62))
                            {
                              sub_1D7C28(v115);
                            }

                            sub_189A00();
                          }

                          v155 = 0u;
                          if (v115 >= 1)
                          {
                            v116 = 0;
                            v117 = v115 & 0x7FFFFFFF;
                            do
                            {
                              ValueAtIndex = CFArrayGetValueAtIndex(v113, v116);
                              v119 = sub_6FCD8(ValueAtIndex);
                              v120 = (*(&v155 + 1) - v155) >> 2;
                              v121 = v120 + 1;
                              if ((v120 + 1) >> 62)
                              {
                                sub_189A00();
                              }

                              if (-v155 >> 1 > v121)
                              {
                                v121 = -v155 >> 1;
                              }

                              if (-v155 >= 0x7FFFFFFFFFFFFFFCLL)
                              {
                                v122 = 0x3FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v122 = v121;
                              }

                              if (v122)
                              {
                                sub_1D7C28(v122);
                              }

                              v123 = (4 * v120);
                              *v123 = v119;
                              v124 = v123 + 1;
                              memcpy(0, v155, *(&v155 + 1) - v155);
                              if (v155)
                              {
                                operator delete(v155);
                              }

                              *&v125 = 0;
                              *(&v125 + 1) = v124;
                              v155 = v125;
                              ++v116;
                            }

                            while (v117 != v116);
                          }

                          *buf = *__p;
                          v126 = v164;
                          __p[1] = 0;
                          v164 = 0;
                          __p[0] = 0;
                          *&buf[24] = v155;
                          *&buf[16] = v126;
                          v170 = 0;
                          if (!*sub_6F86C(&v160, &v171, buf))
                          {
                            operator new();
                          }

                          if (v155)
                          {
                            *&buf[32] = v155;
                            operator delete(v155);
                          }

                          if ((buf[23] & 0x80000000) != 0)
                          {
                            operator delete(*buf);
                          }

                          if (SHIBYTE(v164) < 0)
                          {
                            operator delete(__p[0]);
                          }

                          ++v112;
                        }

                        while (v112 != v154);
                      }

                      if (values)
                      {
                        v166 = values;
                        operator delete(values);
                      }

                      if (cf)
                      {
                        v168[0] = cf;
                        operator delete(cf);
                      }

                      v127 = v109 + 104;
                      sub_28EE30(*(v109 + 104));
                      v128 = v161;
                      *(v109 + 96) = v160;
                      *(v109 + 104) = v128;
                      v129 = v162;
                      *(v109 + 112) = v162;
                      if (v129)
                      {
                        v128[2] = v127;
                        v160 = &v161;
                        v161 = 0;
                        v162 = 0;
                        v128 = 0;
                      }

                      else
                      {
                        *(v109 + 96) = v127;
                      }

                      sub_28EE30(v128);
                      v130 = sub_5544(14);
                      v131 = *v130;
                      if (*v130)
                      {
                        v132 = v156;
                        if (os_log_type_enabled(*v130, OS_LOG_TYPE_DEFAULT))
                        {
                          v133 = CFCopyDescription(v156);
                          cf = v133;
                          sub_1267C(&v172, v133);
                          if (v133)
                          {
                            CFRelease(v133);
                          }

                          v134 = &v172;
                          if (v174 < 0)
                          {
                            v134 = v172;
                          }

                          *buf = 136315650;
                          *&buf[4] = "StandardUtilities.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1214;
                          *&buf[18] = 2080;
                          *&buf[20] = v134;
                          _os_log_impl(&dword_0, v131, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS-Actuator: Get ThermalBudgetRange Array description: %s", buf, 0x1Cu);
                          if (SHIBYTE(v174) < 0)
                          {
                            operator delete(v172);
                          }
                        }
                      }

                      else
                      {
                        v132 = v156;
                      }

                      sub_28EE30(v159[0]);
                      *v150 = v132;
                      v172 = 0x6F75747054684272;
                      LODWORD(v173) = 0;
                      cf = 0x6F75747050504272;
                      LODWORD(v168[0]) = 0;
                      v135 = *(a1 + 192);
                      if (v135 == v151)
                      {
LABEL_220:
                        if (v135 != v151)
                        {
                          sub_5659C(buf, v135 + 2, "", 2685);
                          if (sub_71704())
                          {
                            v141 = *buf;
                            if (sub_72C9C(*buf))
                            {
                              LODWORD(v160) = 8;
                              (*(*v141 + 40))(v141, &v172, a4, v149, &v160, &values);
                              (*(*v141 + 40))(v141, &cf, a4, v149, &v160, __p);
                              v142 = sub_6FB1C();
                              sub_2E42E4(v142, values, __p[0]);
                            }
                          }

                          if (sub_71704() && (v143 = *buf, (*(**buf + 16))(*buf, &v172)))
                          {
                            LODWORD(__p[0]) = 8;
                            (*(*v143 + 40))(v143, &v172, a4, v149, __p, &values);
                            v144 = sub_6FB1C();
                            sub_2E40A0(v144, values, SHIDWORD(values));
                          }

                          else if (sub_310658())
                          {
                            v145 = *buf;
                            if ((*(**buf + 16))(*buf, &cf))
                            {
                              LODWORD(__p[0]) = 8;
                              (*(*v145 + 40))(v145, &cf, a4, v149, __p, &values);
                              v146 = sub_6FB1C();
                              sub_2E40A0(v146, values, SHIDWORD(values));
                            }
                          }

                          if (*&buf[8])
                          {
                            sub_1A8C0(*&buf[8]);
                          }
                        }
                      }

                      else
                      {
                        do
                        {
                          v136 = v135[3];
                          if (v136)
                          {
                            v137 = std::__shared_weak_count::lock(v136);
                            if (v137)
                            {
                              v138 = v137;
                              v139 = v135[2];
                              if (v139)
                              {
                                v140 = sub_6FA60(v139);
                                sub_1A8C0(v138);
                                if (v140)
                                {
                                  goto LABEL_220;
                                }
                              }

                              else
                              {
                                sub_1A8C0(v138);
                              }
                            }
                          }

                          v135 = v135[1];
                        }

                        while (v135 != v151);
                      }

                      return;
                    }

                    v148 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v148, "Could not convert");
                  }

                  else
                  {
                    v148 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v148, "Could not construct");
                  }
                }
              }

              else
              {
                v95 = sub_5544(14);
                if (*(v95 + 8))
                {
                  v96 = *v95;
                  if (*v95)
                  {
                    if (os_log_type_enabled(*v95, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136315650;
                      *&buf[4] = "StandardUtilities.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1115;
                      *&buf[18] = 2080;
                      *&buf[20] = "actuator-cpms-bgd_1s";
                      _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Power Budget T::key %s returned valid", buf, 0x1Cu);
                    }
                  }
                }

                v97 = *v94;
              }

              operator delete(v94);
              v106 = v97;
              goto LABEL_163;
            }
          }

          else
          {
            v77 = sub_5544(14);
            if (*(v77 + 8))
            {
              v78 = *v77;
              if (*v77)
              {
                if (os_log_type_enabled(*v77, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "StandardUtilities.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1115;
                  *&buf[18] = 2080;
                  *&buf[20] = "actuator-cpms-bgd_100ms";
                  _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Power Budget T::key %s returned valid", buf, 0x1Cu);
                }
              }
            }

            v79 = *v76;
          }

          operator delete(v76);
          v88 = v79;
          goto LABEL_136;
        }
      }

      else
      {
        v16 = sub_5544(14);
        if (*(v16 + 8))
        {
          v17 = *v16;
          if (*v16)
          {
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "StandardUtilities.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1115;
              *&buf[18] = 2080;
              *&buf[20] = "actuator-cpms-bgd_inst";
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Power Budget T::key %s returned valid", buf, 0x1Cu);
            }
          }
        }

        v18 = *v15;
      }

      operator delete(v15);
      v70 = v18;
      goto LABEL_109;
    }

    if (a5)
    {
      sub_6FB1C();
      if (sub_6FB88(*a5))
      {
        return;
      }
    }

    v168[0] = 0;
    v168[1] = 0;
    cf = v168;
    sub_28E448(&v172);
    v27 = v172;
    if (v172 == v173)
    {
      v37 = sub_5544(14);
      v38 = *v37;
      if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "StandardUtilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1120;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        *&buf[28] = 2080;
        *&buf[30] = "speaker-cpms-bgd_inst";
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Power Budget empty for EDT path '%s'; key '%s'", buf, 0x26u);
      }

      v30 = 0;
      v39 = 0;
      if (!v27)
      {
LABEL_62:
        __p[0] = v39;
        sub_28E8A0(qword_6E9398, __p, &cf);
        sub_28DFF0(&v172);
        v40 = v172;
        if (v172 == v173)
        {
          v44 = sub_5544(14);
          v45 = *v44;
          if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "StandardUtilities.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1120;
            *&buf[18] = 2080;
            *&buf[20] = "IODeviceTree:/product/audio";
            *&buf[28] = 2080;
            *&buf[30] = "speaker-cpms-bgd_100ms";
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Power Budget empty for EDT path '%s'; key '%s'", buf, 0x26u);
          }

          v43 = 0;
          v46 = 0;
          if (!v40)
          {
LABEL_73:
            __p[0] = v46;
            sub_28E8A0(qword_6E9390, __p, &cf);
            sub_28DAB0(&v172);
            v47 = v172;
            if (v172 == v173)
            {
              v51 = sub_5544(14);
              v52 = *v51;
              if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = "StandardUtilities.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1120;
                *&buf[18] = 2080;
                *&buf[20] = "IODeviceTree:/product/audio";
                *&buf[28] = 2080;
                *&buf[30] = "speaker-cpms-bgd_1s";
                _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Power Budget empty for EDT path '%s'; key '%s'", buf, 0x26u);
              }

              v50 = 0;
              v53 = 0;
              if (!v47)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v48 = sub_5544(14);
              if (*(v48 + 8))
              {
                v49 = *v48;
                if (*v48)
                {
                  if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    *&buf[4] = "StandardUtilities.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1115;
                    *&buf[18] = 2080;
                    *&buf[20] = "speaker-cpms-bgd_1s";
                    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Power Budget T::key %s returned valid", buf, 0x1Cu);
                  }
                }
              }

              v50 = *v47;
            }

            operator delete(v47);
            v53 = v50;
LABEL_84:
            __p[0] = v53;
            sub_28E8A0(qword_6E9388, __p, &cf);
            v54 = sub_28EC48(&cf);
            v160 = v54;
            v55 = sub_5544(14);
            v56 = *v55;
            if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_DEFAULT))
            {
              v57 = CFCopyDescription(v54);
              values = &v57->isa;
              sub_1267C(&v172, v57);
              if (v57)
              {
                CFRelease(v57);
              }

              v58 = &v172;
              if (v174 < 0)
              {
                v58 = v172;
              }

              *buf = 136315650;
              *&buf[4] = "StandardUtilities.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1237;
              *&buf[18] = 2080;
              *&buf[20] = v58;
              _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS-Speaker: Get ThermalBudgetRange Array description: %s", buf, 0x1Cu);
              if (SHIBYTE(v174) < 0)
              {
                operator delete(v172);
              }
            }

            sub_28EE30(v168[0]);
            *a7 = v54;
            return;
          }
        }

        else
        {
          v41 = sub_5544(14);
          if (*(v41 + 8))
          {
            v42 = *v41;
            if (*v41)
            {
              if (os_log_type_enabled(*v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                *&buf[4] = "StandardUtilities.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1115;
                *&buf[18] = 2080;
                *&buf[20] = "speaker-cpms-bgd_100ms";
                _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Power Budget T::key %s returned valid", buf, 0x1Cu);
              }
            }
          }

          v43 = *v40;
        }

        operator delete(v40);
        v46 = v43;
        goto LABEL_73;
      }
    }

    else
    {
      v28 = sub_5544(14);
      if (*(v28 + 8))
      {
        v29 = *v28;
        if (*v28)
        {
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "StandardUtilities.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1115;
            *&buf[18] = 2080;
            *&buf[20] = "speaker-cpms-bgd_inst";
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Power Budget T::key %s returned valid", buf, 0x1Cu);
          }
        }
      }

      v30 = *v27;
    }

    operator delete(v27);
    v39 = v30;
    goto LABEL_62;
  }

  values = 0x6F75747054684272;
  LODWORD(v166) = 0;
  v19 = (a1 + 184);
  v20 = *(a1 + 192);
  strcpy(buf, "rBhTptuo");
  buf[9] = 0;
  *&buf[10] = 0;
  if (v20 != (a1 + 184))
  {
    v21 = a5;
    while (1)
    {
      v22 = v20[3];
      if (v22)
      {
        v23 = std::__shared_weak_count::lock(v22);
        if (v23)
        {
          v24 = v23;
          v25 = v20[2];
          if (v25)
          {
            v26 = (*(*v25 + 16))(v25, buf);
            sub_1A8C0(v24);
            if (v26)
            {
              a5 = v21;
              break;
            }
          }

          else
          {
            sub_1A8C0(v24);
          }
        }
      }

      v20 = v20[1];
      if (v20 == v19)
      {
        return;
      }
    }
  }

  if (v20 != v19)
  {
    LODWORD(v157) = 8;
    sub_5659C(buf, v20 + 2, "", 2748);
    (*(**buf + 40))(*buf, &values, a4, a5, &v157, __p);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    v171 = __p[0];
    cf = &v171;
    v168[0] = (&dword_0 + 2);
    v31 = sub_20A6B0(&cf);
    v158 = v31;
    sub_20A838(&v172, &v158);
    *buf = &v172;
    *&buf[8] = 1;
    v32 = sub_69CE8(buf);
    v160 = v32;
    if (v173)
    {
      CFRelease(v173);
    }

    if (v172)
    {
      CFRelease(v172);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    v33 = sub_5544(17);
    if (*(v33 + 8))
    {
      v34 = *v33;
      if (*v33)
      {
        if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
        {
          v35 = CFCopyDescription(v32);
          cf = v35;
          sub_1267C(&v172, v35);
          if (v35)
          {
            CFRelease(v35);
          }

          v36 = &v172;
          if (v174 < 0)
          {
            v36 = v172;
          }

          *buf = 136315650;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2754;
          *&buf[18] = 2080;
          *&buf[20] = v36;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Legacy: Get ThermalBudgetRange Dictionary description: %s", buf, 0x1Cu);
          if (SHIBYTE(v174) < 0)
          {
            operator delete(v172);
          }
        }
      }
    }

    *a7 = v32;
    *a6 = 8;
  }
}

void sub_20682C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2069BCLL);
  }

  JUMPOUT(0x205E5CLL);
}

void sub_206838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  __cxa_end_catch();
  sub_28EE30(a23);
  _Unwind_Resume(a1);
}

void sub_206844(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2069BCLL);
  }

  JUMPOUT(0x205E5CLL);
}

void sub_206854(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2069BCLL);
  }

  JUMPOUT(0x205E5CLL);
}

void sub_206860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34)
{
  sub_1DB0E0(&a34);
  sub_4BA7C(&a20);
  JUMPOUT(0x2069B4);
}

void sub_206888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_free_exception(v11);
  sub_4BA7C(va);
  JUMPOUT(0x2069B4);
}

void sub_2068B8()
{
  v1 = *(v0 - 184);
  if (v1)
  {
    sub_1A8C0(v1);
  }

  JUMPOUT(0x2069BCLL);
}

void sub_2068C8()
{
  sub_28F034(v0 - 128);
  sub_28EFF0(v0 - 192);
  JUMPOUT(0x206974);
}

void sub_2068FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_4BA7C(va);
  JUMPOUT(0x2069B4);
}

void sub_206938(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  sub_28EE30(a25);
  JUMPOUT(0x2069ACLL);
}

uint64_t sub_2069C4(uint64_t result, int a2, int a3, _DWORD *a4, uint64_t a5)
{
  if (a2 != 1869574756)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "AggregateDevice_CommonBase.cpp";
      v30 = 1024;
      v31 = 2765;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1768845428)
  {
    v5 = *(result + 640);
    for (i = *(result + 648); v5 != i; v5 += 16)
    {
      v9 = *(*v5 + 152);
      result = (*(*v9 + 104))(v9, 1685287015, 1818980210, 0);
      if (result)
      {
        v26 = 4;
        v27 = 0;
        v10 = (*(*v9 + 120))(v9, 1685287015, 1818980210, &v27, &v26, 0, 0, 0);
        if (v10)
        {
          v12 = sub_5544(14);
          v13 = *v12;
          if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v29 = "AggregateDevice_CommonBase.cpp";
            v30 = 1024;
            v31 = 2778;
            v32 = 1024;
            v33 = v10;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) obtaining DSP Property for lock orientation", buf, 0x18u);
          }

          v14 = __cxa_allocate_exception(0x10uLL);
          *v14 = &off_6DDDD0;
          v14[2] = v10;
        }

        *a5 = v27;
        v25 = 0;
        v24 = 8;
        if (((*(*v9 + 104))(v9, 1685287015, 1869768052, 0) & 1) == 0)
        {
          v18 = sub_5544(14);
          v19 = *v18;
          if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "AggregateDevice_CommonBase.cpp";
            v30 = 1024;
            v31 = 2785;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): LockOrientation Property is present, but OrientationEffectiveTime is missing", buf, 0x12u);
          }

          v20 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v20, "LockOrientation Property is present, but OrientationEffectiveTime is missing");
        }

        result = (*(*v9 + 120))(v9, 1685287015, 1869768052, &v25, &v24, 0, 0, 0);
        v11 = result;
        if (result)
        {
          v15 = sub_5544(14);
          v16 = *v15;
          if (*v15)
          {
            if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v29 = "AggregateDevice_CommonBase.cpp";
              v30 = 1024;
              v31 = 2788;
              v32 = 1024;
              v33 = v11;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) obtaining DSP Property for orientation effective time", buf, 0x18u);
            }
          }

          v17 = __cxa_allocate_exception(0x10uLL);
          *v17 = &off_6DDDD0;
          v17[2] = v11;
        }

        *(a5 + 8) = v25;
        *a4 = 16;
      }
    }
  }

  return result;
}

uint64_t sub_206EBC(uint64_t result, int a2, int a3, int *a4, _DWORD *a5)
{
  if (a2 != 1869575794)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "AggregateDevice_CommonBase.cpp";
      v22 = 1024;
      v23 = 2835;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1768845428)
  {
    v5 = *(result + 640);
    for (i = *(result + 648); v5 != i; v5 += 16)
    {
      v9 = *(*v5 + 152);
      result = (*(*v9 + 104))(v9, 1685287015, 1818980210, 0);
      if (result)
      {
        v18 = 4;
        v19 = 0;
        result = (*(*v9 + 120))(v9, 1685287015, 1818980210, &v19, &v18, 0, 0, 0);
        v10 = result;
        if (result)
        {
          v12 = sub_5544(14);
          v13 = *v12;
          if (*v12)
          {
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v21 = "AggregateDevice_CommonBase.cpp";
              v22 = 1024;
              v23 = 2847;
              v24 = 1024;
              v25 = v10;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) obtaining DSP Property for lock orientation", buf, 0x18u);
            }
          }

          v14 = __cxa_allocate_exception(0x10uLL);
          *v14 = &off_6DDDD0;
          v14[2] = v10;
        }

        v11 = v18;
        *a5 = v19;
        *a4 = v11;
      }
    }
  }

  return result;
}

void sub_207190(void *a1, int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 != 1969844082)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "AggregateDevice_CommonBase.cpp";
      v26 = 1024;
      v27 = 2882;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 1768845428)
  {
    v6 = a1[80];
    for (i = a1[81]; v6 != i; v6 += 16)
    {
      v10 = *(*v6 + 152);
      if ((*(*a1 + 400))(a1, 1685287015, 1818980210, 0) && (*(*v10 + 56))(v10, 1685287015, 1969844082, 0))
      {
        v23 = 0.0;
        v11 = (*(*v10 + 64))(v10, 1685287015, 1969844082, &v23, 0);
        v12 = sub_5544(17);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
        {
          sub_22170(__p, 0x75696F72u);
          v14 = __p;
          if (v22 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136315906;
          v25 = "AggregateDevice_CommonBase.cpp";
          v26 = 1024;
          v27 = 2896;
          v28 = 2080;
          v29 = v14;
          v30 = 1024;
          v31 = v23;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Getting UI orientation {%s, %d}", buf, 0x22u);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v11)
        {
          v15 = sub_5544(14);
          v16 = *v15;
          if (*v15)
          {
            if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v25 = "AggregateDevice_CommonBase.cpp";
              v26 = 1024;
              v27 = 2898;
              v28 = 1024;
              LODWORD(v29) = v11;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) obtaining DSP param for UI orientation", buf, 0x18u);
            }
          }

          v17 = __cxa_allocate_exception(0x10uLL);
          *v17 = &off_6DDDD0;
          v17[2] = v11;
        }

        *a5 = v23;
        *a4 = 4;
      }
    }
  }
}

void sub_207580(uint64_t a1, int a2, unsigned int a3, const __CFString *a4, void *a5)
{
  if (a2 != 1685287011)
  {
    v59 = sub_5544(14);
    v60 = *v59;
    if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3184;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v8 = sub_71E60(a3);
  v9 = 640;
  if (v8)
  {
    v9 = 664;
  }

  v10 = (a1 + v9);
  v12 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v13 = sub_5544(17);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AggregateDevice_CommonBase.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3191;
    *&buf[18] = 2112;
    *&buf[20] = a4;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Get DSPConfig Qualifier String: %@", buf, 0x1Cu);
  }

  if (v11 != v12)
  {
    if (CFStringCompare(a4, @"dsp chain names", 0))
    {
      v15 = v11 - v12;
      if (v15 != 16)
      {
        v16 = sub_5544(17);
        v17 = *v16;
        if (*v16)
        {
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "AggregateDevice_CommonBase.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3211;
            *&buf[18] = 2048;
            *&buf[20] = v15 >> 4;
            v67 = 2112;
            v68 = a4;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %lu streams, returning property data of last stream for qualifier string: %@", buf, 0x26u);
          }
        }
      }

      v18 = *(*(v10[1] - 16) + 152);
      if (CFStringCompare(a4, @"haptics protection mode", 0))
      {
        if (CFStringCompare(a4, @"loudness normalizer reset", 0))
        {
          if (CFStringCompare(a4, @"dsp chain name", 0))
          {
            if (CFStringCompare(a4, @"dsp chain active", 0) == kCFCompareEqualTo)
            {
              v19 = *sub_5544(25);
              v20 = v19;
              if (v19)
              {
                v21 = v19;
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  if ((*(v18 + 448) & 1) != 0 || *(v18 + 584) || *(v18 + 672) || (v22 = *(v18 + 1160)) != 0 && (*(v22 + 104) & 1) != 0 || *(v18 + 1168))
                  {
                    v23 = "yes";
                  }

                  else
                  {
                    v23 = "no";
                  }

                  *buf = 136315650;
                  *&buf[4] = "DSPChain.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 3547;
                  *&buf[18] = 2080;
                  *&buf[20] = v23;
                  _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d DSP chain is active: %s", buf, 0x1Cu);
                }
              }

              if ((*(v18 + 448) & 1) != 0 || *(v18 + 584) || *(v18 + 672) || (v24 = *(v18 + 1160)) != 0 && (*(v24 + 104) & 1) != 0 || *(v18 + 1168))
              {
                v25 = &kCFBooleanTrue;
              }

              else
              {
                v25 = &kCFBooleanFalse;
              }

              *a5 = *v25;
            }

            return;
          }

          v46 = *sub_5544(25);
          v47 = v46;
          if (v46)
          {
            v48 = v46;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v18 + 735) < 0)
              {
                sub_54A0(__p, *(v18 + 712), *(v18 + 720));
              }

              else
              {
                *__p = *(v18 + 712);
                v65 = *(v18 + 728);
              }

              v49 = __p;
              if (v65 < 0)
              {
                v49 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "DSPChain.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3542;
              *&buf[18] = 2080;
              *&buf[20] = v49;
              _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPChain Name: %s", buf, 0x1Cu);
              if (SHIBYTE(v65) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          if (*(v18 + 735) < 0)
          {
            sub_54A0(buf, *(v18 + 712), *(v18 + 720));
          }

          else
          {
            *buf = *(v18 + 712);
            *&buf[16] = *(v18 + 728);
          }

          if (buf[23] >= 0)
          {
            v50 = buf;
          }

          else
          {
            v50 = *buf;
          }

          *a5 = CFStringCreateWithCString(kCFAllocatorDefault, v50, 0x600u);
          goto LABEL_97;
        }

        if (!(*(*v18 + 104))(v18, 1818521197, 1920165236, 0))
        {
          return;
        }

        LODWORD(__p[0]) = 0;
        LODWORD(v62[0]) = 4;
        v40 = (*(*v18 + 120))(v18, 1818521197, 1920165236, __p, v62, 0, 0, 0);
        if (v40)
        {
          v55 = sub_5544(14);
          v56 = sub_468EC(1, *v55, *(v55 + 8));
          v57 = v56;
          if (v56 && os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "DSPChain.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3534;
            *&buf[18] = 1024;
            *&buf[20] = v40;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) getting AULoudnessNormalizer", buf, 0x18u);
          }

          v58 = __cxa_allocate_exception(0x10uLL);
          *v58 = &off_6DDDD0;
          v58[2] = v40;
        }

        *a5 = __p[0];
        v41 = *sub_5544(27);
        v39 = v41;
        if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "DSPChain.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3537;
          *&buf[18] = 1024;
          *&buf[20] = __p[0];
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LoudnessNormalizer Reset: %u", buf, 0x18u);
        }
      }

      else
      {
        if (!(*(*v18 + 104))(v18, 1751216240, 88000, 0))
        {
          return;
        }

        LODWORD(__p[0]) = 0;
        LODWORD(v62[0]) = 4;
        v37 = (*(*v18 + 120))(v18, 1751216240, 88000, __p, v62, 0, 0, 0);
        if (v37)
        {
          v51 = sub_5544(14);
          v52 = sub_468EC(1, *v51, *(v51 + 8));
          v53 = v52;
          if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "DSPChain.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3521;
            *&buf[18] = 1024;
            *&buf[20] = v37;
            _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) obtaining DSP Property for Haptics Protection Mode", buf, 0x18u);
          }

          v54 = __cxa_allocate_exception(0x10uLL);
          *v54 = &off_6DDDD0;
          v54[2] = v37;
        }

        *a5 = __p[0];
        v38 = *sub_5544(27);
        v39 = v38;
        if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "DSPChain.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3524;
          *&buf[18] = 1024;
          *&buf[20] = __p[0];
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Haptics Protection Mode: %u", buf, 0x18u);
        }
      }

      return;
    }

    memset(buf, 0, 24);
    v28 = *v10;
    v29 = v10[1];
    if (*v10 == v29)
    {
      v35 = 0;
      v36 = 0;
      v34 = 0;
    }

    else
    {
      do
      {
        v30 = *(*v28 + 152);
        if (*(v30 + 735) < 0)
        {
          sub_54A0(v62, *(v30 + 712), *(v30 + 720));
        }

        else
        {
          v31 = v30 + 712;
          *v62 = *v31;
          v63 = *(v31 + 16);
        }

        sub_1D3D28(__p, v62, 32);
        if (v65 >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = __p[0];
        }

        if (v65 >= 0)
        {
          v33 = HIBYTE(v65);
        }

        else
        {
          v33 = __p[1];
        }

        std::string::append(buf, v32, v33);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        v28 += 16;
      }

      while (v28 != v29);
      v34 = buf[23];
      v36 = *buf;
      v35 = *&buf[8];
    }

    if ((v34 & 0x80u) == 0)
    {
      v42 = buf;
    }

    else
    {
      v42 = v36;
    }

    if (v42)
    {
      if ((v34 & 0x80u) == 0)
      {
        v43 = v34;
      }

      else
      {
        v43 = v35;
      }

      v44 = CFStringCreateWithBytes(0, v42, v43, 0x8000100u, 0);
      __p[0] = v44;
      if (!v44)
      {
        v45 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v45, "Could not construct");
      }
    }

    else
    {
      v44 = 0;
      __p[0] = 0;
    }

    *a5 = CFRetain(v44);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

LABEL_97:
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    return;
  }

  v26 = sub_5544(17);
  v27 = *v26;
  if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AggregateDevice_CommonBase.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3195;
    *&buf[18] = 2112;
    *&buf[20] = a4;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No client visible streams for qualifier string: %@", buf, 0x1Cu);
  }
}