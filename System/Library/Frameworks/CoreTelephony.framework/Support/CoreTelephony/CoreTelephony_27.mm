void sub_1001B6B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B6CB4(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I isTrafficDescriptorMatched matchAll", v45, 2u);
    }
  }

  else
  {
    v7 = *(a3 + 8);
    v8 = *(a3 + 16);
    if (v7 != v8)
    {
      v9 = *(a2 + 264);
      v10 = *(a2 + 263);
      if (v10 >= 0)
      {
        v11 = *(a2 + 263);
      }

      else
      {
        v11 = a2[31];
      }

      if (v10 >= 0)
      {
        v12 = a2 + 30;
      }

      else
      {
        v12 = a2[30];
      }

      while (1)
      {
        if (v9)
        {
          v13 = *(v7 + 23);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v7 + 8);
          }

          if (v11 == v13)
          {
            v15 = v14 >= 0 ? v7 : *v7;
            if (!memcmp(v12, v15, v11))
            {
              break;
            }
          }
        }

        v7 += 24;
        if (v7 == v8)
        {
          return 0;
        }
      }
    }

    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    if (v16 != v17)
    {
      v18 = *(a2 + 72);
      v19 = *(a2 + 71);
      if (v19 >= 0)
      {
        v20 = *(a2 + 71);
      }

      else
      {
        v20 = a2[7];
      }

      if (v19 >= 0)
      {
        v21 = a2 + 6;
      }

      else
      {
        v21 = a2[6];
      }

      while (1)
      {
        if (v18)
        {
          v22 = *(v16 + 23);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v16 + 8);
          }

          if (v20 == v22)
          {
            v24 = v23 >= 0 ? v16 : *v16;
            if (!memcmp(v21, v24, v20))
            {
              break;
            }
          }
        }

        v16 += 24;
        if (v16 == v17)
        {
          return 0;
        }
      }
    }

    v25 = *(a3 + 56);
    v26 = *(a3 + 64);
    if (v25 != v26)
    {
      while (*(a2 + 208) != 1 || (CSIPacketAddress::operator==() & 1) == 0)
      {
        v25 += 24;
        if (v25 == v26)
        {
          return 0;
        }
      }
    }

    v27 = *(a3 + 80);
    v28 = *(a3 + 88);
    if (v27 != v28)
    {
      while (!*(a2 + 224) || *(a2 + 111) != *v27)
      {
        result = 0;
        if (++v27 == v28)
        {
          return result;
        }
      }
    }

    v29 = *(a3 + 104);
    v30 = *(a3 + 112);
    if (v29 != v30)
    {
      while (!*(a2 + 214) || *(a2 + 106) != *v29)
      {
        result = 0;
        if (++v29 == v30)
        {
          return result;
        }
      }
    }

    v31 = *(a3 + 128);
    v32 = *(a3 + 136);
    if (v31 != v32)
    {
      v33 = *(a3 + 128);
      while (1)
      {
        if (*(a2 + 220))
        {
          if (*(a2 + 108) == *v33 && *(a2 + 109) == v33[1])
          {
            break;
          }
        }

        result = 0;
        v33 += 2;
        if (v33 == v32)
        {
          return result;
        }
      }
    }

    v35 = *(a3 + 152);
    v36 = *(a3 + 160);
    if (v35 != v36)
    {
      v37 = *(a2 + 176);
      v38 = *(a2 + 175);
      if (v38 >= 0)
      {
        v39 = *(a2 + 175);
      }

      else
      {
        v39 = a2[20];
      }

      if (v38 >= 0)
      {
        v40 = a2 + 19;
      }

      else
      {
        v40 = a2[19];
      }

      while (1)
      {
        if (v37)
        {
          v41 = *(v35 + 23);
          v42 = v41;
          if ((v41 & 0x80u) != 0)
          {
            v41 = *(v35 + 8);
          }

          if (v39 == v41)
          {
            v43 = v42 >= 0 ? v35 : *v35;
            if (!memcmp(v40, v43, v39))
            {
              break;
            }
          }
        }

        result = 0;
        v35 += 24;
        if (v35 == v36)
        {
          return result;
        }
      }
    }

    if (v31 != v32)
    {
      v44 = *(a2 + 106);
      while ((!*(a2 + 214) || v44 < *v31 || v44 > v31[1]) && ((*(a2 + 220) & 1) == 0 || *(a2 + 108) < *v31 || *(a2 + 109) > v31[1]))
      {
        result = 0;
        v31 += 2;
        if (v31 == v32)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

void sub_1001B704C(uint64_t a1, char a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (!v7)
      {
LABEL_127:
        sub_100004A34(v6);
        return;
      }

      v66 = a2;
      v68 = v5;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v8 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v7 + 104))(&v96, v7, v8);
      v67 = v7;
      sub_1001BD7A8(a1 + 80, *(a1 + 80));
      v9 = *(a1 + 104);
      if (v9 != (a1 + 112))
      {
        v69 = (a1 + 80);
        do
        {
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v70 = v9;
          MCCAndMNC::MCCAndMNC(&v92, *(v9 + 16), *(v9 + 17));
          if (MCCAndMNC::operator==())
          {
            v88 = 0;
            v89 = 0;
            v90 = 0;
            sub_1001BD970(&v88, v70[5], v70[6], 0x34F72C234F72C235 * ((v70[6] - v70[5]) >> 3));
            v10 = v88;
            v11 = v89;
            if (v88 != v89)
            {
              do
              {
                v12 = *(v10 + 26);
                v71 = v10 + 208;
                v72 = v10;
                if (v12 == *(v10 + 27))
                {
                  goto LABEL_37;
                }

                do
                {
                  v14 = *(v12 + 8);
                  v13 = *(v12 + 16);
                  if (v14 == v13)
                  {
                    v12 += 120;
                  }

                  else
                  {
                    do
                    {
                      v15 = *v14;
                      v16 = *(v14 + 1);
                      v17 = v14[8];
                      for (i = *(a1 + 152); i != *(a1 + 160); i += 24)
                      {
                        if (v15 == *i)
                        {
                          if (v14[8])
                          {
                            if (!i[8] || v16 == *(i + 1))
                            {
LABEL_27:
                              v14 += 24;
                              goto LABEL_28;
                            }
                          }

                          else if (!i[8])
                          {
                            goto LABEL_27;
                          }
                        }
                      }

                      v19 = *(a1 + 56);
                      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109376;
                        if (v17)
                        {
                          v20 = v16;
                        }

                        else
                        {
                          v20 = 0xFFFFFF;
                        }

                        *&buf[4] = v15;
                        LOWORD(v101) = 1024;
                        *(&v101 + 2) = v20;
                        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I updateHomePlmnUrspList_sync remove [sst:%d, sd:%d] as it is not allowed", buf, 0xEu);
                        v13 = *(v12 + 16);
                      }

                      v21 = v13 - (v14 + 24);
                      if (v13 != v14 + 24)
                      {
                        memmove(v14, v14 + 24, v13 - (v14 + 24));
                      }

                      v13 -= 24;
                      *(v12 + 16) = &v14[v21];
LABEL_28:
                      ;
                    }

                    while (v14 != v13);
                    if (*(v12 + 8) == v13)
                    {
                      sub_1001BDAF0(v86, (v12 + 120), *(v72 + 27), v12);
                      sub_1001BA28C(v71, v22);
                    }

                    else
                    {
                      v12 += 120;
                    }

                    v10 = v72;
                  }
                }

                while (v12 != *(v10 + 27));
                if (*v71 == v12)
                {
LABEL_37:
                  sub_1001BDBC4(v86, (v10 + 232), v89, v10);
                  sub_1001BD7A8(&v88, v23);
                  v10 = v72;
                }

                else
                {
                  v10 += 232;
                }

                v11 = v89;
              }

              while (v10 != v89);
              v10 = v88;
            }

            if (v10 != v11)
            {
              v24 = *(a1 + 88);
              do
              {
                v25 = v10;
                if (v24 >= *(a1 + 96))
                {
                  v24 = sub_1001BDD7C(v69, v10);
                }

                else
                {
                  sub_1001BDCE8(v69, v10);
                  v24 += 232;
                }

                *(a1 + 88) = v24;
                v10 = v25 + 232;
              }

              while (v25 + 232 != v11);
            }

            *buf = &v88;
            sub_1001B8B00(buf);
          }

          else
          {
            v26 = *(a1 + 56);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              MCCAndMNC::getMcc(&v88, &v96);
              IntValue = MCC::getIntValue(&v88);
              MCCAndMNC::getMnc(buf, &v96);
              v28 = MCC::getIntValue(buf);
              MCCAndMNC::getMcc(v86, &v92);
              v29 = MCC::getIntValue(v86);
              MCCAndMNC::getMnc(v84, &v92);
              v30 = MCC::getIntValue(v84);
              *v103 = 67109888;
              v104 = IntValue;
              v105 = 1024;
              v106 = v28;
              v107 = 1024;
              v108 = v29;
              v109 = 1024;
              v110 = v30;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I fUrspRuleMap skip non-hplmn, hplmn[%u,%u], upsiPlmn[%u,%u]", v103, 0x1Au);
              if (v85 < 0)
              {
                operator delete(v84[1]);
              }

              if (v87 < 0)
              {
                operator delete(v86[1]);
              }

              if (v102 < 0)
              {
                operator delete(v101);
              }

              if (v91 < 0)
              {
                operator delete(v89);
              }
            }
          }

          if (SHIBYTE(v95) < 0)
          {
            operator delete(*(&v94 + 1));
          }

          if (SHIBYTE(v93) < 0)
          {
            operator delete(*(&v92 + 1));
          }

          v31 = v70;
          v32 = v70[1];
          if (v32)
          {
            do
            {
              v33 = v32;
              v32 = *v32;
            }

            while (v32);
          }

          else
          {
            do
            {
              v33 = v31[2];
              v34 = *v33 == v31;
              v31 = v33;
            }

            while (!v34);
          }

          v9 = v33;
        }

        while (v33 != (a1 + 112));
      }

      v35 = *(a1 + 80);
      v36 = *(a1 + 88);
      v37 = 126 - 2 * __clz(0x34F72C234F72C235 * (&v36[-v35] >> 3));
      if (v36 == v35)
      {
        v38 = 0;
      }

      else
      {
        v38 = v37;
      }

      sub_1001BDF08(v35, v36, &v92, v38, 1);
      sub_1001B7C20(a1);
      sub_1001B7DE8(a1);
      v39 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v67 + 80))(v67, v39, 1, 0);
      ServiceMap = Registry::getServiceMap(*(a1 + 176));
      v41 = ServiceMap;
      if (v42 < 0)
      {
        v43 = (v42 & 0x7FFFFFFFFFFFFFFFLL);
        v44 = 5381;
        do
        {
          v42 = v44;
          v45 = *v43++;
          v44 = (33 * v44) ^ v45;
        }

        while (v45);
      }

      std::mutex::lock(ServiceMap);
      *&v92 = v42;
      v46 = sub_100009510(&v41[1].__m_.__sig, &v92);
      if (v46)
      {
        v48 = v46[3];
        v47 = v46[4];
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v41);
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v47);
          v49 = 0;
          if (!v48)
          {
            goto LABEL_121;
          }

LABEL_78:
          if (v66)
          {
            *buf = 0;
            v50 = xpc_dictionary_create(0, 0, 0);
            v51 = v50;
            if (v50)
            {
              *buf = v50;
            }

            else
            {
              v51 = xpc_null_create();
              *buf = v51;
              if (!v51)
              {
                v52 = xpc_null_create();
                v51 = 0;
                goto LABEL_86;
              }
            }

            if (xpc_get_type(v51) == &_xpc_type_dictionary)
            {
              xpc_retain(v51);
              goto LABEL_87;
            }

            v52 = xpc_null_create();
LABEL_86:
            *buf = v52;
LABEL_87:
            xpc_release(v51);
            if (*(a1 + 120))
            {
              v78 = xpc_BOOL_create(1);
              if (!v78)
              {
                v78 = xpc_null_create();
              }

              *&v92 = buf;
              *(&v92 + 1) = "result";
              sub_10000F688(&v92, &v78, &object);
              xpc_release(object);
              object = 0;
              xpc_release(v78);
              v78 = 0;
            }

            else
            {
              v82 = xpc_BOOL_create(0);
              if (!v82)
              {
                v82 = xpc_null_create();
              }

              *&v92 = buf;
              *(&v92 + 1) = "result";
              sub_10000F688(&v92, &v82, &v83);
              xpc_release(v83);
              v83 = 0;
              xpc_release(v82);
              v82 = 0;
              v80 = xpc_string_create("URSP_CONFIG_DECODING_FAIL");
              if (!v80)
              {
                v80 = xpc_null_create();
              }

              *&v92 = buf;
              *(&v92 + 1) = "fail_reason";
              sub_10000F688(&v92, &v80, &v81);
              xpc_release(v81);
              v81 = 0;
              xpc_release(v80);
              v80 = 0;
            }

            MCCAndMNC::getStringValue(&v92, &v96);
            if ((SBYTE7(v93) & 0x80u) == 0)
            {
              v53 = &v92;
            }

            else
            {
              v53 = v92;
            }

            v76 = xpc_string_create(v53);
            if (!v76)
            {
              v76 = xpc_null_create();
            }

            v88 = buf;
            v89 = "plmn";
            sub_10000F688(&v88, &v76, &v77);
            xpc_release(v77);
            v77 = 0;
            xpc_release(v76);
            v76 = 0;
            if (SBYTE7(v93) < 0)
            {
              operator delete(v92);
            }

            v54 = Registry::getServiceMap(*(a1 + 176));
            v55 = v54;
            if (v56 < 0)
            {
              v57 = (v56 & 0x7FFFFFFFFFFFFFFFLL);
              v58 = 5381;
              do
              {
                v56 = v58;
                v59 = *v57++;
                v58 = (33 * v58) ^ v59;
              }

              while (v59);
            }

            std::mutex::lock(v54);
            *&v92 = v56;
            v60 = sub_100009510(&v55[1].__m_.__sig, &v92);
            if (v60)
            {
              v62 = v60[3];
              v61 = v60[4];
              if (v61)
              {
                atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v55);
                atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v61);
                v63 = 0;
                if (!v62)
                {
                  goto LABEL_109;
                }

                goto LABEL_113;
              }
            }

            else
            {
              v62 = 0;
            }

            std::mutex::unlock(v55);
            v61 = 0;
            v63 = 1;
            if (!v62)
            {
LABEL_109:
              v64 = 0;
              if (v63)
              {
                goto LABEL_115;
              }

              goto LABEL_114;
            }

LABEL_113:
            v65 = (*(*v62 + 792))(v62);
            v64 = v65 == PersonalitySpecificImpl::simSlot(a1);
            if (v63)
            {
LABEL_115:
              v74 = xpc_BOOL_create(v64);
              if (!v74)
              {
                v74 = xpc_null_create();
              }

              *&v92 = buf;
              *(&v92 + 1) = "is_data_preferred";
              sub_10000F688(&v92, &v74, &v75);
              xpc_release(v75);
              v75 = 0;
              xpc_release(v74);
              v73 = *buf;
              v74 = 0;
              if (*buf)
              {
                xpc_retain(*buf);
              }

              else
              {
                v73 = xpc_null_create();
              }

              (*(*v48 + 16))(v48, "metricUrspConfigUpdate", &v73);
              xpc_release(v73);
              v73 = 0;
              xpc_release(*buf);
              goto LABEL_121;
            }

LABEL_114:
            sub_100004A34(v61);
            goto LABEL_115;
          }

LABEL_121:
          if ((v49 & 1) == 0)
          {
            sub_100004A34(v47);
          }

          if (SHIBYTE(v99) < 0)
          {
            operator delete(*(&v98 + 1));
          }

          v6 = v68;
          if (SHIBYTE(v97) < 0)
          {
            operator delete(*(&v96 + 1));
          }

          goto LABEL_127;
        }
      }

      else
      {
        v48 = 0;
      }

      std::mutex::unlock(v41);
      v47 = 0;
      v49 = 1;
      if (!v48)
      {
        goto LABEL_121;
      }

      goto LABEL_78;
    }
  }
}

void sub_1001B7A44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001B7C20(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  if (v1 != v2)
  {
    v4 = 1;
    do
    {
      v5 = a1[7];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v1;
        UrspTrafficDescriptor::toString(__p, (v1 + 1));
        v7 = __p;
        if (v13 < 0)
        {
          v7 = *__p;
        }

        *buf = 67109634;
        *&buf[4] = v4;
        v15 = 1024;
        v16 = v6;
        v17 = 2080;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fHplmnUrsp Rule#%u, prec=%u, td=%s", buf, 0x18u);
        if (v13 < 0)
        {
          operator delete(*__p);
        }
      }

      v9 = v1[26];
      v8 = v1[27];
      while (v9 != v8)
      {
        v10 = a1[7];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          RouteSelectionDescriptor::toString(buf, v9);
          if (SHIBYTE(v18) >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          *__p = 136315138;
          *&__p[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I                            rsd=%s", __p, 0xCu);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(*buf);
          }
        }

        v9 = (v9 + 120);
      }

      ++v4;
      v1 += 29;
    }

    while (v1 != v2);
  }
}

void sub_1001B7DE8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v66 = v3;
      v68 = *(a1 + 64);
      if (v68)
      {
        v4 = *(a1 + 128);
          ;
        }

        *(a1 + 136) = v4;
        v6 = *(a1 + 80);
        v7 = *(a1 + 88);
        if (v6 != v7)
        {
          v67 = *(a1 + 88);
          do
          {
            if (*(v6 + 8) == 1)
            {
              v8 = *(a1 + 56);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No need to report matchAll td", buf, 2u);
              }
            }

            else
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              TrafficDescriptor::TrafficDescriptor(buf);
              v9 = v70;
              if (v70 >= v71)
              {
                v10 = sub_1001C14EC(&v69);
              }

              else
              {
                TrafficDescriptor::TrafficDescriptor();
                v10 = v9 + 304;
              }

              v70 = v10;
              TrafficDescriptor::~TrafficDescriptor(buf);
              v12 = *(v6 + 40);
              v11 = *(v6 + 48);
              if (v12 != v11)
              {
                v72 = 0uLL;
                v73 = 0;
                do
                {
                  v14 = v69;
                  v13 = v70;
                  while (v14 != v13)
                  {
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    *buf = 0u;
                    TrafficDescriptor::TrafficDescriptor(buf, v14);
                    sub_1001696A4(&v77, v12);
                    v15 = *(&v72 + 1);
                    if (*(&v72 + 1) >= v73)
                    {
                      v16 = sub_1001C1784(&v72, buf);
                    }

                    else
                    {
                      TrafficDescriptor::TrafficDescriptor(*(&v72 + 1), buf);
                      v16 = v15 + 304;
                    }

                    *(&v72 + 1) = v16;
                    TrafficDescriptor::~TrafficDescriptor(buf);
                    v14 = (v14 + 304);
                  }

                  ++v12;
                }

                while (v12 != v11);
                sub_1001C18CC(&v69, v72, *(&v72 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v72 + 1) - v72) >> 4));
                *buf = &v72;
                sub_1001B8A7C(buf);
              }

              v18 = *(v6 + 160);
              v17 = *(v6 + 168);
              if (v18 != v17)
              {
                v72 = 0uLL;
                v73 = 0;
                do
                {
                  v20 = v69;
                  v19 = v70;
                  while (v20 != v19)
                  {
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    *buf = 0u;
                    TrafficDescriptor::TrafficDescriptor(buf, v20);
                    sub_1001696A4((&v83 + 8), v18);
                    v21 = *(&v72 + 1);
                    if (*(&v72 + 1) >= v73)
                    {
                      v22 = sub_1001C1784(&v72, buf);
                    }

                    else
                    {
                      TrafficDescriptor::TrafficDescriptor(*(&v72 + 1), buf);
                      v22 = v21 + 304;
                    }

                    *(&v72 + 1) = v22;
                    TrafficDescriptor::~TrafficDescriptor(buf);
                    v20 = (v20 + 304);
                  }

                  ++v18;
                }

                while (v18 != v17);
                sub_1001C18CC(&v69, v72, *(&v72 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v72 + 1) - v72) >> 4));
                *buf = &v72;
                sub_1001B8A7C(buf);
              }

              v24 = *(v6 + 64);
              v23 = *(v6 + 72);
              if (v24 != v23)
              {
                v72 = 0uLL;
                v73 = 0;
                do
                {
                  v26 = v69;
                  v25 = v70;
                  while (v26 != v25)
                  {
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    *buf = 0u;
                    TrafficDescriptor::TrafficDescriptor(buf, v26);
                    sub_1001B88C0((&v85 + 8), v24);
                    v27 = *(&v72 + 1);
                    if (*(&v72 + 1) >= v73)
                    {
                      v28 = sub_1001C1784(&v72, buf);
                    }

                    else
                    {
                      TrafficDescriptor::TrafficDescriptor(*(&v72 + 1), buf);
                      v28 = v27 + 304;
                    }

                    *(&v72 + 1) = v28;
                    TrafficDescriptor::~TrafficDescriptor(buf);
                    v26 = (v26 + 304);
                  }

                  v24 = (v24 + 24);
                }

                while (v24 != v23);
                sub_1001C18CC(&v69, v72, *(&v72 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v72 + 1) - v72) >> 4));
                *buf = &v72;
                sub_1001B8A7C(buf);
              }

              v29 = *(v6 + 112);
              v30 = *(v6 + 120);
              if (v29 != v30)
              {
                v72 = 0uLL;
                v73 = 0;
                do
                {
                  v32 = v69;
                  v31 = v70;
                  while (v32 != v31)
                  {
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    *buf = 0u;
                    TrafficDescriptor::TrafficDescriptor(buf, v32);
                    WORD2(v87) = *v29;
                    BYTE6(v87) = 1;
                    v33 = *(&v72 + 1);
                    if (*(&v72 + 1) >= v73)
                    {
                      v34 = sub_1001C1784(&v72, buf);
                    }

                    else
                    {
                      TrafficDescriptor::TrafficDescriptor(*(&v72 + 1), buf);
                      v34 = v33 + 304;
                    }

                    *(&v72 + 1) = v34;
                    TrafficDescriptor::~TrafficDescriptor(buf);
                    v32 = (v32 + 304);
                  }

                  ++v29;
                }

                while (v29 != v30);
                sub_1001C18CC(&v69, v72, *(&v72 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v72 + 1) - v72) >> 4));
                *buf = &v72;
                sub_1001B8A7C(buf);
              }

              v35 = *(v6 + 136);
              v36 = *(v6 + 144);
              if (v35 != v36)
              {
                v72 = 0uLL;
                v73 = 0;
                do
                {
                  v38 = v69;
                  v37 = v70;
                  while (v38 != v37)
                  {
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    *buf = 0u;
                    TrafficDescriptor::TrafficDescriptor(buf, v38);
                    DWORD2(v87) = *v35;
                    if (BYTE12(v87) != 1)
                    {
                      BYTE12(v87) = 1;
                    }

                    v39 = *(&v72 + 1);
                    if (*(&v72 + 1) >= v73)
                    {
                      v40 = sub_1001C1784(&v72, buf);
                    }

                    else
                    {
                      TrafficDescriptor::TrafficDescriptor(*(&v72 + 1), buf);
                      v40 = v39 + 304;
                    }

                    *(&v72 + 1) = v40;
                    TrafficDescriptor::~TrafficDescriptor(buf);
                    v38 = (v38 + 304);
                  }

                  ++v35;
                }

                while (v35 != v36);
                sub_1001C18CC(&v69, v72, *(&v72 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v72 + 1) - v72) >> 4));
                *buf = &v72;
                sub_1001B8A7C(buf);
              }

              v41 = *(v6 + 88);
              v42 = *(v6 + 96);
              if (v41 != v42)
              {
                v72 = 0uLL;
                v73 = 0;
                do
                {
                  v44 = v69;
                  v43 = v70;
                  while (v44 != v43)
                  {
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    *buf = 0u;
                    TrafficDescriptor::TrafficDescriptor(buf, v44);
                    v45 = *v41;
                    if ((v88 & 1) == 0)
                    {
                      LOBYTE(v88) = 1;
                    }

                    HIWORD(v87) = v45;
                    v46 = *(&v72 + 1);
                    if (*(&v72 + 1) >= v73)
                    {
                      v47 = sub_1001C1784(&v72, buf);
                    }

                    else
                    {
                      TrafficDescriptor::TrafficDescriptor(*(&v72 + 1), buf);
                      v47 = v46 + 304;
                    }

                    *(&v72 + 1) = v47;
                    TrafficDescriptor::~TrafficDescriptor(buf);
                    v44 = (v44 + 304);
                  }

                  ++v41;
                }

                while (v41 != v42);
                sub_1001C18CC(&v69, v72, *(&v72 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v72 + 1) - v72) >> 4));
                *buf = &v72;
                sub_1001B8A7C(buf);
              }

              v48 = *(v6 + 24);
              if (*(v6 + 16) != v48)
              {
                v73 = 0;
                v72 = 0uLL;
                v49 = *(v6 + 16);
                if (v49 == v48)
                {
                  v55 = 0;
                  v54 = 0;
                }

                else
                {
                  do
                  {
                    v51 = v69;
                    v50 = v70;
                    while (v51 != v50)
                    {
                      v91 = 0u;
                      v92 = 0u;
                      v89 = 0u;
                      v90 = 0u;
                      v87 = 0u;
                      v88 = 0u;
                      v85 = 0u;
                      v86 = 0u;
                      v83 = 0u;
                      v84 = 0u;
                      v81 = 0u;
                      v82 = 0u;
                      v79 = 0u;
                      v80 = 0u;
                      v77 = 0u;
                      v78 = 0u;
                      v75 = 0u;
                      v76 = 0u;
                      *buf = 0u;
                      TrafficDescriptor::TrafficDescriptor(buf, v51);
                      sub_1001696A4(&v89, v49);
                      v52 = *(&v72 + 1);
                      if (*(&v72 + 1) >= v73)
                      {
                        v53 = sub_1001C1784(&v72, buf);
                      }

                      else
                      {
                        TrafficDescriptor::TrafficDescriptor(*(&v72 + 1), buf);
                        v53 = v52 + 304;
                      }

                      *(&v72 + 1) = v53;
                      TrafficDescriptor::~TrafficDescriptor(buf);
                      v51 = (v51 + 304);
                    }

                    ++v49;
                  }

                  while (v49 != v48);
                  v55 = *(&v72 + 1);
                  v54 = v72;
                }

                sub_1001C18CC(&v69, v54, v55, 0x86BCA1AF286BCA1BLL * ((v55 - v54) >> 4));
                *buf = &v72;
                sub_1001B8A7C(buf);
              }

              v56 = v70;
              if (v69 != v70)
              {
                v57 = v69 + 240;
                do
                {
                  if ((TrafficDescriptor::empty((v57 - 240)) & 1) == 0)
                  {
                    if (v57[24] != 1)
                    {
                      goto LABEL_97;
                    }

                    v58 = PersonalitySpecificImpl::simSlot(a1);
                    if ((v57[24] & 1) == 0)
                    {
                      sub_1000D1644();
                    }

                    if (((*(*v68 + 64))(v68, v58, v57) & 1) == 0)
                    {
                      v64 = *(a1 + 56);
                      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                      {
                        if ((v57[24] & 1) == 0)
                        {
                          sub_1000D1644();
                        }

                        v65 = v57;
                        if (v57[23] < 0)
                        {
                          v65 = *v57;
                        }

                        *buf = 136446210;
                        *&buf[4] = v65;
                        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I fHplmnTrafficDescriptors: skip invalid DNN %{public}s", buf, 0xCu);
                      }
                    }

                    else
                    {
LABEL_97:
                      v59 = *(a1 + 56);
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                      {
                        TrafficDescriptor::toString(buf, (v57 - 240));
                        v60 = (SBYTE7(v75) & 0x80u) == 0 ? buf : *buf;
                        LODWORD(v72) = 136446210;
                        *(&v72 + 4) = v60;
                        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I fHplmnTrafficDescriptors: add td %{public}s", &v72, 0xCu);
                        if (SBYTE7(v75) < 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      v61 = *(a1 + 136);
                      if (v61 >= *(a1 + 144))
                      {
                        v62 = sub_1001C1BA8(a1 + 128, (v57 - 240));
                      }

                      else
                      {
                        TrafficDescriptor::TrafficDescriptor(*(a1 + 136), (v57 - 240));
                        v62 = v61 + 304;
                        *(a1 + 136) = v61 + 304;
                      }

                      *(a1 + 136) = v62;
                    }
                  }

                  v63 = v57 + 64;
                  v57 += 304;
                }

                while (v63 != v56);
              }

              *buf = &v69;
              sub_1001B8A7C(buf);
              v7 = v67;
            }

            v6 += 232;
          }

          while (v6 != v7);
        }
      }

      sub_100004A34(v66);
    }
  }
}

void sub_1001B87B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  TrafficDescriptor::~TrafficDescriptor(&a23);
  a23 = &a16;
  sub_1001B8A7C(&a23);
  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

CSIPacketAddress *sub_1001B88C0(CSIPacketAddress *a1, const CSIPacketAddress *a2)
{
  if (*(a1 + 24) == 1)
  {
    CSIPacketAddress::operator=();
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1001B8904(char **a1, char **a2)
{
  v3 = a1 + 19;
  if (v3 != a2)
  {
    sub_1001BD814(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v4 = a1[19];
  for (i = a1[20]; v4 != i; v4 += 24)
  {
    v6 = a1[7];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v4[8] == 1)
      {
        v7 = *(v4 + 1);
      }

      else
      {
        v7 = 0xFFFFFF;
      }

      v8 = *v4;
      *buf = 67109376;
      v11 = v8;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I updateAllowedNssaiList_sync [sst:%u|sd:%u]", buf, 0xEu);
    }
  }

  return (*(*a1 + 6))(a1, 0);
}

void sub_1001B8A7C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        TrafficDescriptor::~TrafficDescriptor((v4 - 304));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1001B8B00(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001BD7A8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1001B8B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      if (v7 >= a4[2])
      {
        v7 = sub_1001B8BEC(a4, v5);
      }

      else
      {
        sub_1001B8D38(a4, v7, v5);
        v7 += 232;
        a4[1] = v7;
      }

      a4[1] = v7;
      v5 += 232;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1001B8BEC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001B8E6C(a1, v6);
  }

  v13 = 0;
  v14 = 232 * v2;
  sub_1001B8D38(a1, 232 * v2, a2);
  v15 = (232 * v2 + 232);
  v7 = a1[1];
  v8 = 232 * v2 + *a1 - v7;
  sub_1001B8EC8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001B9090(&v13);
  return v12;
}

void sub_1001B8D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001B9090(va);
  _Unwind_Resume(a1);
}

__n128 sub_1001B8D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = *(a3 + 80);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 104) = *(a3 + 104);
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 128) = *(a3 + 128);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = *(a3 + 136);
  *(a2 + 152) = *(a3 + 152);
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 176) = *(a3 + 176);
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = *(a3 + 184);
  *(a2 + 200) = *(a3 + 200);
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  result = *(a3 + 208);
  *(a2 + 208) = result;
  *(a2 + 224) = *(a3 + 224);
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  return result;
}

void sub_1001B8E6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001B8EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_1001B8D38(a1, a4, v7);
      v7 += 232;
      a4 = v12 + 232;
      v12 += 232;
    }

    while (v7 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1001B8F80(a1, a2, a3);
  return sub_1001B8FDC(v9);
}

uint64_t sub_1001B8F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v8[3] = v3;
    v8[4] = v4;
    v6 = a2;
    do
    {
      v8[0] = (v6 + 208);
      sub_1001BA238(v8);
      result = sub_1001BD39C(v6 + 8);
      v6 += 232;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t sub_1001B8FDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001B9028(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001B9028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[5] = v5;
    v10[6] = v6;
    v8 = a3;
    do
    {
      v10[0] = (v8 - 24);
      sub_1001BA238(v10);
      result = sub_1001BD39C(v8 - 224);
      v8 -= 232;
    }

    while (v8 != a5);
  }

  return result;
}

uint64_t sub_1001B9090(uint64_t a1)
{
  sub_1001B90C8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001B90C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 232;
      v5 = (v2 - 24);
      sub_1001BA238(&v5);
      result = sub_1001BD39C(v2 - 224);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1001B9134(uint64_t *a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001B8E6C(a1, v6);
  }

  v13 = 0;
  v14 = 232 * v2;
  sub_1001B9280(a1, (232 * v2), a2);
  v15 = (232 * v2 + 232);
  v7 = a1[1];
  v8 = 232 * v2 + *a1 - v7;
  sub_1001B8EC8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001B9090(&v13);
  return v12;
}

void sub_1001B926C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001B9090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B9280(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = a2;
  *a2 = *a3;
  sub_1001B9300((a2 + 8), a3 + 8);
  v4[26] = 0;
  v4[27] = 0;
  v4 += 26;
  v4[2] = 0;
  return sub_1001B97B8(v4, *(a3 + 208), *(a3 + 216), 0xEEEEEEEEEEEEEEEFLL * ((*(a3 + 216) - *(a3 + 208)) >> 3));
}

uint64_t sub_1001B9300(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10004EFD0(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10004EFD0(a1 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1001B9510(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100034C50(a1 + 80, *(a2 + 80), *(a2 + 88), *(a2 + 88) - *(a2 + 80));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1001B964C(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 1);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_1001B9744(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_10004EFD0(a1 + 152, *(a2 + 152), *(a2 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 160) - *(a2 + 152)) >> 3));
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_100034C50(a1 + 176, *(a2 + 176), *(a2 + 184), *(a2 + 184) - *(a2 + 176));
  return a1;
}

void sub_1001B9470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  v8 = *v6;
  if (*v6)
  {
    v2[17] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v2[14] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v2[11] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v2[8] = v11;
    operator delete(v11);
  }

  sub_1000087B4(va);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B9510(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001B95A8(result, a4);
  }

  return result;
}

void sub_1001B9580(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B95A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001B95F4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001B95F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001B964C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001B96C8(result, a4);
  }

  return result;
}

void sub_1001B96AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B96C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1001B9700(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001B9700(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001B9744(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_1001B979C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B97B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001B9840(result, a4);
  }

  return result;
}

void sub_1001B9820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001BA238(&a9);
  _Unwind_Resume(a1);
}

void sub_1001B9840(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_1001B988C(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001B988C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001B98E4(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1001B998C(a1, v4, v6);
      v6 += 60;
      v4 = v12 + 120;
      v12 += 120;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1001BA154(v9);
  return v4;
}

__n128 sub_1001B998C(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v5 = *a3;
  *(a2 + 2) = *(a3 + 2);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_1001B9A94(a2 + 8, *(a3 + 1), *(a3 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 2) - *(a3 + 1)) >> 3));
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_10004EFD0(a2 + 32, *(a3 + 4), *(a3 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 5) - *(a3 + 4)) >> 3));
  v6 = *(a3 + 14);
  v7 = a3[30];
  *(a2 + 64) = 0;
  *(a2 + 60) = v7;
  *(a2 + 56) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_1001B9BB4(a2 + 64, *(a3 + 8), *(a3 + 9), (*(a3 + 9) - *(a3 + 8)) >> 7);
  result = *(a3 + 44);
  *(a2 + 101) = *(a3 + 101);
  *(a2 + 88) = result;
  return result;
}

void sub_1001B9A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001B9A94(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001B9B10(result, a4);
  }

  return result;
}

void sub_1001B9AF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B9B10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001B9B5C(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001B9B5C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001B9BB4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001B9C3C(result, a4);
  }

  return result;
}

void sub_1001B9C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001BA044(&a9);
  _Unwind_Resume(a1);
}

void sub_1001B9C3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    sub_1001B9C78(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001B9C78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001B9CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1001B9D60(v4, v6);
      v6 += 128;
      v4 = v11 + 128;
      v11 += 128;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1001B9F40(v8);
  return v4;
}

uint64_t sub_1001B9D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B9E20(a1, a2);
  sub_1001B9E20(v4 + 32, a2 + 32);
  sub_1001B9E20(a1 + 64, a2 + 64);
  sub_1001B9E20(a1 + 96, a2 + 96);
  return a1;
}

void sub_1001B9DB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    v3 = *(v1 + 64);
    if (v3)
    {
      *(v1 + 72) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 56) == 1)
  {
    v4 = *(v1 + 32);
    if (v4)
    {
      *(v1 + 40) = v4;
      operator delete(v4);
    }
  }

  if (*(v1 + 24) == 1)
  {
    v5 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v5;
      operator delete(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B9E20(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1001B9E70(a1, a2);
  return a1;
}

void sub_1001B9E50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101760EC4(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001B9E70(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1001B9EC4(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1001B9EC4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_1001B9F24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B9F40(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001B9F8C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1001B9F8C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = v6;
      if (*(v6 - 8) == 1)
      {
        v8 = *(v6 - 4);
        if (v8)
        {
          *(v6 - 3) = v8;
          operator delete(v8);
        }
      }

      if (*(v6 - 40) == 1)
      {
        v9 = *(v6 - 8);
        if (v9)
        {
          *(v6 - 7) = v9;
          operator delete(v9);
        }
      }

      if (*(v6 - 72) == 1)
      {
        v10 = *(v6 - 12);
        if (v10)
        {
          *(v6 - 11) = v10;
          operator delete(v10);
        }
      }

      v6 -= 16;
      if (*(v7 - 104) == 1)
      {
        v11 = *v6;
        if (*v6)
        {
          *(v7 - 15) = v11;
          operator delete(v11);
        }
      }
    }

    while (v6 != a5);
  }
}

void sub_1001BA044(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001BA098(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001BA098(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    if (*(v4 - 8) == 1)
    {
      v6 = *(v4 - 4);
      if (v6)
      {
        *(v4 - 3) = v6;
        operator delete(v6);
      }
    }

    if (*(v4 - 40) == 1)
    {
      v7 = *(v4 - 8);
      if (v7)
      {
        *(v4 - 7) = v7;
        operator delete(v7);
      }
    }

    if (*(v4 - 72) == 1)
    {
      v8 = *(v4 - 12);
      if (v8)
      {
        *(v4 - 11) = v8;
        operator delete(v8);
      }
    }

    v4 -= 16;
    if (*(v5 - 104) == 1)
    {
      v9 = *v4;
      if (*v4)
      {
        *(v5 - 15) = v9;
        operator delete(v9);
      }
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1001BA154(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001BA18C(a1);
  }

  return a1;
}

void sub_1001BA18C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      sub_1001BA1E0(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_1001BA1E0(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 64);
  sub_1001BA044(&v4);
  v4 = (a2 + 32);
  sub_1000087B4(&v4);
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;
    operator delete(v3);
  }
}

void sub_1001BA238(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001BA28C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001BA28C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1001BA1E0(a1, i))
  {
    i -= 120;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1001BA2E0(uint64_t a1)
{
  if (*(a1 + 232) == 1)
  {
    v3 = (a1 + 208);
    sub_1001BA238(&v3);
    sub_1001BD39C(a1 + 8);
  }

  return a1;
}

void *sub_1001BA330(void *result, const CSIPacketAddress *a2, const CSIPacketAddress *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      sub_1001B95A8(v7, v12);
    }

    sub_1000CE3D4();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    while (v6 != a3)
    {
      result = CSIPacketAddress::operator=();
      v6 = (v6 + 24);
      v9 += 24;
    }

    v7[1] = v9;
  }

  else
  {
    v15 = (a2 + v14);
    if (v13 != v9)
    {
      do
      {
        result = CSIPacketAddress::operator=();
        v6 = (v6 + 24);
        v9 += 24;
        v14 -= 24;
      }

      while (v14);
      v13 = v7[1];
    }

    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      result = v13;
      do
      {
        CSIPacketAddress::CSIPacketAddress(result, v15);
        v15 = (v15 + 24);
        result = (v17 + 24);
        v16 += 24;
      }

      while (v15 != a3);
    }

    v7[1] = v16;
  }

  return result;
}

void *sub_1001BA4EC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1001B96C8(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

char *sub_1001BA610(char **a1, int *a2, int *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100034AE8(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 2)
  {
    while (v5 != a3)
    {
      v16 = *v5++;
      *result = v16;
      result += 4;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5++;
        *result = v13;
        result += 4;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v14 = v11;
    }

    else
    {
      v14 = v11;
      do
      {
        v15 = *v12++;
        *v11 = v15;
        v11 += 4;
        v14 += 4;
      }

      while (v12 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void sub_1001BA734(__n128 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 120;
  v55 = a2 - 360;
  v56 = a2 - 240;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v54 = *(a2 - 120);
      v48 = a2 - 120;
      if (v54 < v9->n128_u8[0])
      {
LABEL_79:
        v50 = v9;
LABEL_80:
        v53 = v48;
LABEL_81:

        sub_1001BBE98(v50, v53);
      }

      return;
    }

LABEL_10:
    if (v12 <= 2879)
    {
      if (a5)
      {

        sub_1001BAEB8(v9, a2);
      }

      else
      {

        sub_1001BB15C(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_1001BC128(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 60 * (v13 >> 1);
    v16 = *v8;
    if (v12 >= 0x3C01)
    {
      v17 = *v15;
      if (v17 >= v9->n128_u8[0])
      {
        if (v16 < v17)
        {
          sub_1001BBE98(v15, (a2 - 120));
          if (*v15 < v9->n128_u8[0])
          {
            v18 = v9;
            v19 = v15;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v18 = v9;
        if (v16 < v17)
        {
          goto LABEL_17;
        }

        sub_1001BBE98(v9, v15);
        if (*v8 < *v15)
        {
          v18 = v15;
LABEL_17:
          v19 = (a2 - 120);
LABEL_26:
          sub_1001BBE98(v18, v19);
        }
      }

      v24 = &v9[7].n128_u8[8];
      v23 = v9[7].n128_u8[8];
      v25 = v9 + 120 * v14;
      v28 = *(v25 - 120);
      v27 = (v25 - 120);
      v26 = v28;
      v29 = *v56;
      if (v28 >= v23)
      {
        if (v29 < v26)
        {
          sub_1001BBE98(v27, v56);
          if (*v27 < *v24)
          {
            v30 = &a1[7].n128_i16[4];
            v31 = v27;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v30 = &a1[7].n128_i16[4];
        if (v29 < v26)
        {
          goto LABEL_31;
        }

        sub_1001BBE98(v30, v27);
        if (*v56 < *v27)
        {
          v30 = v27;
LABEL_31:
          v31 = (a2 - 240);
LABEL_39:
          sub_1001BBE98(v30, v31);
        }
      }

      v32 = a1 + 120 * v14;
      v35 = v32[120];
      v34 = (v32 + 120);
      v33 = v35;
      v36 = *v55;
      if (v35 >= a1[15].n128_u8[0])
      {
        if (v36 < v33)
        {
          sub_1001BBE98(v34, v55);
          if (*v34 < a1[15].n128_u8[0])
          {
            v37 = &a1[15];
            v38 = v34;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v37 = &a1[15];
        if (v36 < v33)
        {
          goto LABEL_44;
        }

        sub_1001BBE98(v37, v34);
        if (*v55 < *v34)
        {
          v37 = v34;
LABEL_44:
          v38 = (a2 - 360);
LABEL_48:
          sub_1001BBE98(v37, v38);
        }
      }

      v39 = *v15;
      v40 = *v34;
      if (v39 >= *v27)
      {
        if (v40 < v39)
        {
          sub_1001BBE98(v15, v34);
          if (*v15 < *v27)
          {
            v41 = v27;
            v42 = v15;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v41 = v27;
        if (v40 < v39)
        {
          goto LABEL_53;
        }

        sub_1001BBE98(v27, v15);
        if (*v34 < *v15)
        {
          v41 = v15;
LABEL_53:
          v42 = v34;
LABEL_57:
          sub_1001BBE98(v41, v42);
        }
      }

      sub_1001BBE98(a1, v15);
      goto LABEL_59;
    }

    v20 = v9->n128_u8[0];
    if (v20 >= *v15)
    {
      if (v16 < v20)
      {
        sub_1001BBE98(v9, (a2 - 120));
        if (v9->n128_u8[0] < *v15)
        {
          v21 = v15;
          v22 = v9;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v21 = v15;
      if (v16 < v20)
      {
        goto LABEL_22;
      }

      sub_1001BBE98(v15, v9);
      if (*v8 < v9->n128_u8[0])
      {
        v21 = v9;
LABEL_22:
        v22 = (a2 - 120);
LABEL_35:
        sub_1001BBE98(v21, v22);
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && a1[-8].n128_u8[8] >= a1->n128_u8[0])
    {
      v9 = sub_1001BB3E4(a1, a2);
      goto LABEL_66;
    }

    v43 = sub_1001BB6C8(a1, a2);
    if ((v44 & 1) == 0)
    {
      goto LABEL_64;
    }

    v45 = sub_1001BB9C8(a1, v43);
    v9 = (v43 + 60);
    if (sub_1001BB9C8(v43 + 60, a2))
    {
      a4 = -v11;
      a2 = v43;
      if (v45)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v45)
    {
LABEL_64:
      sub_1001BA734(a1, v43, a3, -v11, a5 & 1);
      v9 = (v43 + 60);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      sub_1001BADA0(v9, &v9[7].n128_i16[4], &v9[15], a2 - 120);
      return;
    }

    if (v13 == 5)
    {
      sub_1001BADA0(v9, &v9[7].n128_i16[4], &v9[15], &v9[22].n128_u8[8]);
      v52 = *(a2 - 120);
      v51 = (a2 - 120);
      if (v52 < v9[22].n128_u8[8])
      {
        sub_1001BBE98(&v9[22].n128_i16[4], v51);
        if (v9[22].n128_u8[8] < v9[15].n128_u8[0])
        {
          sub_1001BBE98(&v9[15], &v9[22].n128_i64[1]);
          if (v9[15].n128_u8[0] < v9[7].n128_u8[8])
          {
            sub_1001BBE98(&v9[7].n128_i16[4], &v9[15]);
            if (v9[7].n128_u8[8] < v9->n128_u8[0])
            {
              v53 = &v9[7].n128_i64[1];
              v50 = v9;
              goto LABEL_81;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v46 = v9[7].n128_u8[8];
  v49 = *(a2 - 120);
  v48 = a2 - 120;
  v47 = v49;
  if (v46 >= v9->n128_u8[0])
  {
    if (v47 < v46)
    {
      sub_1001BBE98(&v9[7].n128_i16[4], v48);
      if (v9[7].n128_u8[8] < v9->n128_u8[0])
      {
        v50 = v9;
        v53 = &v9[7].n128_i64[1];
        goto LABEL_81;
      }
    }
  }

  else
  {
    if (v47 < v46)
    {
      goto LABEL_79;
    }

    sub_1001BBE98(v9, &v9[7].n128_i64[1]);
    if (*v48 < v9[7].n128_u8[8])
    {
      v50 = &v9[7].n128_i16[4];
      goto LABEL_80;
    }
  }
}

void sub_1001BADA0(__int16 *a1, __int16 *a2, __int16 *a3, unsigned __int8 *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (v8 >= *a1)
  {
    if (v9 < v8)
    {
      sub_1001BBE98(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_1001BBE98(a1, v10);
      goto LABEL_10;
    }

    sub_1001BBE98(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    sub_1001BBE98(a3, a4);
    if (*a3 < *a2)
    {
      sub_1001BBE98(a2, a3);
      if (*a2 < *v7)
      {

        sub_1001BBE98(v7, a2);
      }
    }
  }
}

void sub_1001BAEB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    v21[11] = v2;
    v21[12] = v3;
    v6 = a1 + 120;
    if (a1 + 120 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        if (v8[120] < *v8)
        {
          memset(&__p[11], 0, 101);
          v18 = *v6;
          v19 = v6[2];
          *__p = *(v8 + 8);
          *&__p[16] = *(v8 + 18);
          *(v8 + 16) = 0;
          *(v8 + 17) = 0;
          *&__p[24] = *(v8 + 152);
          *&__p[40] = *(v8 + 21);
          *(v8 + 18) = 0;
          *(v8 + 19) = 0;
          *(v8 + 20) = 0;
          *(v8 + 21) = 0;
          v10 = *(v8 + 44);
          *&__p[52] = *(v8 + 90);
          *&__p[48] = v10;
          *&__p[56] = *(v8 + 184);
          *&__p[72] = *(v8 + 25);
          *(v8 + 23) = 0;
          *(v8 + 24) = 0;
          *(v8 + 25) = 0;
          v11 = *(v8 + 13);
          *&__p[93] = *(v8 + 221);
          v12 = v7;
          *&__p[80] = v11;
          while (1)
          {
            v13 = &a1[v12];
            *(v13 + 60) = *&a1[v12];
            v13[122] = a1[v12 + 2];
            sub_100015184(&a1[v12 + 128], &a1[v12 + 8]);
            sub_100071A6C(&a1[v12 + 152]);
            *(v13 + 152) = *(v13 + 2);
            *(v13 + 21) = *(v13 + 6);
            *(v13 + 5) = 0;
            *(v13 + 6) = 0;
            *(v13 + 4) = 0;
            *(v13 + 44) = *(v13 + 14);
            *(v13 + 90) = *(v13 + 30);
            sub_1001BC0E8(&a1[v12 + 184]);
            *(v13 + 184) = *(v13 + 4);
            *(v13 + 25) = *(v13 + 10);
            *(v13 + 9) = 0;
            *(v13 + 10) = 0;
            *(v13 + 8) = 0;
            *(v13 + 13) = *(v13 + 88);
            *(v13 + 221) = *(v13 + 101);
            if (!v12)
            {
              break;
            }

            v12 -= 120;
            if (v18 >= *(v13 - 120))
            {
              v14 = &a1[v12 + 120];
              goto LABEL_10;
            }
          }

          v14 = a1;
LABEL_10:
          *v14 = v18;
          *(v14 + 2) = v19;
          v17 = *(v13 + 1);
          v16 = v13 + 8;
          v15 = v17;
          if (v17)
          {
            *(v14 + 16) = v15;
            operator delete(v15);
            *v16 = 0;
            *(v16 + 1) = 0;
            *(v16 + 2) = 0;
          }

          *v16 = *__p;
          *(v14 + 16) = *&__p[8];
          sub_100071A6C((v16 + 24));
          *(v16 + 3) = *&__p[24];
          *(v14 + 40) = *&__p[32];
          memset(&__p[24], 0, 24);
          *(v16 + 26) = *&__p[52];
          *(v16 + 12) = *&__p[48];
          sub_1001BC0E8((v16 + 56));
          *(v16 + 7) = *&__p[56];
          *(v14 + 72) = *&__p[64];
          memset(&__p[56], 0, 24);
          *(v16 + 93) = *&__p[93];
          *(v16 + 5) = *&__p[80];
          v21[0] = &__p[56];
          sub_1001BA044(v21);
          v21[0] = &__p[24];
          sub_1000087B4(v21);
        }

        v6 = v9 + 120;
        v7 += 120;
        v8 = v9;
      }

      while (v9 + 120 != a2);
    }
  }
}

unsigned __int8 *sub_1001BB15C(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v16[11] = v2;
    v16[12] = v3;
    v5 = result + 120;
    if (result + 120 != a2)
    {
      v6 = result - 120;
      do
      {
        v7 = v5;
        if (result[120] < *result)
        {
          memset(&__p[11], 0, 101);
          v13 = *v5;
          v14 = v5[2];
          *__p = *(result + 8);
          *&__p[16] = *(result + 18);
          *(result + 16) = 0;
          *(result + 17) = 0;
          *&__p[24] = *(result + 152);
          *&__p[40] = *(result + 21);
          *(result + 18) = 0;
          *(result + 19) = 0;
          *(result + 20) = 0;
          *(result + 21) = 0;
          v8 = *(result + 44);
          *&__p[52] = *(result + 90);
          *&__p[48] = v8;
          *&__p[56] = *(result + 184);
          *&__p[72] = *(result + 25);
          *(result + 23) = 0;
          *(result + 24) = 0;
          *(result + 25) = 0;
          v9 = *(result + 13);
          *&__p[93] = *(result + 221);
          v10 = v6;
          *&__p[80] = v9;
          do
          {
            *(v10 + 120) = *(v10 + 60);
            v10[242] = v10[122];
            sub_100015184((v10 + 248), v10 + 8);
            sub_100071A6C((v10 + 272));
            *(v10 + 17) = *(v10 + 152);
            *(v10 + 36) = *(v10 + 21);
            *(v10 + 20) = 0;
            *(v10 + 21) = 0;
            *(v10 + 19) = 0;
            *(v10 + 74) = *(v10 + 44);
            *(v10 + 150) = *(v10 + 90);
            sub_1001BC0E8((v10 + 304));
            *(v10 + 19) = *(v10 + 184);
            *(v10 + 40) = *(v10 + 25);
            *(v10 + 24) = 0;
            *(v10 + 25) = 0;
            *(v10 + 23) = 0;
            *(v10 + 328) = *(v10 + 13);
            *(v10 + 341) = *(v10 + 221);
            v11 = *v10;
            v10 -= 120;
          }

          while (v13 < v11);
          v12 = *(v10 + 31);
          *(v10 + 120) = v13;
          v10[242] = v14;
          if (v12)
          {
            *(v10 + 32) = v12;
            operator delete(v12);
            *(v10 + 31) = 0;
            *(v10 + 32) = 0;
            *(v10 + 33) = 0;
          }

          *(v10 + 248) = *__p;
          *(v10 + 33) = *&__p[16];
          sub_100071A6C((v10 + 272));
          *(v10 + 17) = *&__p[24];
          *(v10 + 36) = *&__p[40];
          memset(&__p[24], 0, 24);
          *(v10 + 74) = *&__p[48];
          *(v10 + 150) = *&__p[52];
          sub_1001BC0E8((v10 + 304));
          *(v10 + 19) = *&__p[56];
          *(v10 + 40) = *&__p[72];
          memset(&__p[56], 0, 24);
          *(v10 + 328) = *&__p[80];
          *(v10 + 341) = *&__p[93];
          v16[0] = &__p[56];
          sub_1001BA044(v16);
          v16[0] = &__p[24];
          sub_1000087B4(v16);
        }

        v5 = v7 + 120;
        v6 += 120;
        result = v7;
      }

      while (v7 + 120 != a2);
    }
  }

  return result;
}

__n128 *sub_1001BB3E4(__int8 *a1, unint64_t a2)
{
  v2 = a2;
  memset(&v25[17], 0, 101);
  v24 = *a1;
  *v25 = a1[2];
  v4 = (a1 + 8);
  *&v25[6] = *(a1 + 8);
  *&v25[22] = *(a1 + 3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v5 = (a1 + 32);
  *&v25[30] = *(a1 + 2);
  *&v25[46] = *(a1 + 6);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v7 = (a1 + 56);
  v6 = *(a1 + 14);
  *&v25[58] = *(a1 + 30);
  *&v25[54] = v6;
  v8 = (a1 + 64);
  *&v25[62] = *(a1 + 4);
  *&v25[78] = *(a1 + 10);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v9 = *(a1 + 88);
  *&v25[99] = *(a1 + 101);
  *&v25[86] = v9;
  if (v24 >= *(a2 - 120))
  {
    v12 = (a1 + 120);
    do
    {
      v10 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v12 = (v12 + 120);
    }

    while (v24 >= v10->n128_u8[0]);
  }

  else
  {
    v10 = a1;
    do
    {
      v11 = v10[7].n128_u8[8];
      v10 = (v10 + 120);
    }

    while (v24 >= v11);
  }

  if (v10 < a2)
  {
    do
    {
      v13 = *(v2 - 120);
      v2 -= 120;
    }

    while (v24 < v13);
  }

  while (v10 < v2)
  {
    sub_1001BBE98(v10, v2);
    do
    {
      v14 = v10[7].n128_u8[8];
      v10 = (v10 + 120);
    }

    while (v24 >= v14);
    do
    {
      v15 = *(v2 - 120);
      v2 -= 120;
    }

    while (v24 < v15);
  }

  v16 = &v10[-8].n128_u8[8];
  if (&v10[-8].n128_i8[8] != a1)
  {
    v17 = *v16;
    a1[2] = v10[-8].n128_i8[10];
    *a1 = v17;
    sub_100015184(v4, v10 - 7);
    sub_100071A6C(v5);
    *(a1 + 2) = *(v10 - 88);
    *(a1 + 6) = v10[-5].n128_u64[1];
    v10[-6].n128_u64[1] = 0;
    v10[-5].n128_u64[0] = 0;
    v10[-5].n128_u64[1] = 0;
    v18 = v10[-4].n128_u32[0];
    *(v7 + 2) = v10[-4].n128_u16[2];
    *v7 = v18;
    sub_1001BC0E8(v8);
    *(a1 + 4) = *(v10 - 56);
    *(a1 + 10) = v10[-3].n128_u64[1];
    v10[-4].n128_u64[1] = 0;
    v10[-3].n128_u64[0] = 0;
    v10[-3].n128_u64[1] = 0;
    v19 = v10[-2];
    *(v8 + 37) = *(v10 - 19);
    *(v8 + 24) = v19;
  }

  v10[-8].n128_u8[10] = v25[0];
  *v16 = v24;
  v20 = v10[-7].n128_u64[0];
  if (v20)
  {
    v10[-7].n128_u64[1] = v20;
    operator delete(v20);
    v10[-7].n128_u64[0] = 0;
    v10[-7].n128_u64[1] = 0;
    v10[-6].n128_u64[0] = 0;
  }

  v10[-7] = *&v25[6];
  v10[-6].n128_u64[0] = *&v25[22];
  sub_100071A6C(&v10[-6].n128_i64[1]);
  *(v10 - 88) = *&v25[30];
  v10[-5].n128_u64[1] = *&v25[46];
  memset(&v25[30], 0, 24);
  v21 = *&v25[54];
  v10[-4].n128_u16[2] = *&v25[58];
  v10[-4].n128_u32[0] = v21;
  sub_1001BC0E8(&v10[-4].n128_i64[1]);
  *(v10 - 56) = *&v25[62];
  v10[-3].n128_u64[1] = *&v25[78];
  memset(&v25[62], 0, 24);
  v22 = *&v25[86];
  *(v10 - 19) = *&v25[99];
  v10[-2] = v22;
  v26 = &v25[62];
  sub_1001BA044(&v26);
  v26 = &v25[30];
  sub_1000087B4(&v26);
  return v10;
}

unint64_t sub_1001BB6C8(__int16 *a1, unint64_t a2)
{
  v4 = 0;
  memset(&__p_5[11], 0, 101);
  v27 = *a1;
  v28 = *(a1 + 2);
  v5 = (a1 + 4);
  *__p_5 = *(a1 + 4);
  *&__p_5[16] = *(a1 + 3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v6 = (a1 + 16);
  *&__p_5[24] = *(a1 + 2);
  *&__p_5[40] = *(a1 + 6);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v8 = a1 + 28;
  v7 = *(a1 + 14);
  *&__p_5[52] = a1[30];
  *&__p_5[48] = v7;
  v9 = (a1 + 32);
  *&__p_5[56] = *(a1 + 4);
  *&__p_5[72] = *(a1 + 10);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v10 = *(a1 + 44);
  *&__p_5[93] = *(a1 + 101);
  *&__p_5[80] = v10;
  do
  {
    v11 = LOBYTE(a1[v4 + 60]);
    v4 += 60;
  }

  while (v11 < v27);
  v12 = &a1[v4];
  if (v4 == 60)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      v14 = *(a2 - 120);
      a2 -= 120;
    }

    while (v14 >= v27);
  }

  else
  {
    do
    {
      v13 = *(a2 - 120);
      a2 -= 120;
    }

    while (v13 >= v27);
  }

  v15 = &a1[v4];
  if (v12 < a2)
  {
    v16 = a2;
    do
    {
      sub_1001BBE98(v15, v16);
      do
      {
        v17 = *(v15 + 120);
        v15 += 120;
      }

      while (v17 < v27);
      do
      {
        v18 = *(v16 - 120);
        v16 -= 120;
      }

      while (v18 >= v27);
    }

    while (v15 < v16);
  }

  v19 = (v15 - 120);
  if ((v15 - 120) != a1)
  {
    v20 = *v19;
    *(a1 + 2) = *(v15 - 118);
    *a1 = v20;
    sub_100015184(v5, (v15 - 112));
    sub_100071A6C(v6);
    *(a1 + 2) = *(v15 - 88);
    *(a1 + 6) = *(v15 - 72);
    *(v15 - 88) = 0;
    *(v15 - 80) = 0;
    *(v15 - 72) = 0;
    v21 = *(v15 - 64);
    v8[2] = *(v15 - 60);
    *v8 = v21;
    sub_1001BC0E8(v9);
    *(a1 + 4) = *(v15 - 56);
    *(a1 + 10) = *(v15 - 40);
    *(v15 - 56) = 0;
    *(v15 - 48) = 0;
    *(v15 - 40) = 0;
    v22 = *(v15 - 32);
    *(v9 + 37) = *(v15 - 19);
    *(v9 + 24) = v22;
  }

  *(v15 - 118) = v28;
  *v19 = v27;
  v23 = *(v15 - 112);
  if (v23)
  {
    *(v15 - 104) = v23;
    operator delete(v23);
    *(v15 - 112) = 0;
    *(v15 - 104) = 0;
    *(v15 - 96) = 0;
  }

  *(v15 - 112) = *__p_5;
  *(v15 - 96) = *&__p_5[16];
  sub_100071A6C(v15 - 88);
  *(v15 - 88) = *&__p_5[24];
  *(v15 - 72) = *&__p_5[40];
  memset(&__p_5[24], 0, 24);
  v24 = *&__p_5[48];
  *(v15 - 60) = *&__p_5[52];
  *(v15 - 64) = v24;
  sub_1001BC0E8(v15 - 56);
  *(v15 - 56) = *&__p_5[56];
  *(v15 - 40) = *&__p_5[72];
  memset(&__p_5[56], 0, 24);
  v25 = *&__p_5[80];
  *(v15 - 19) = *&__p_5[93];
  *(v15 - 32) = v25;
  v30 = &__p_5[56];
  sub_1001BA044(&v30);
  v30 = &__p_5[24];
  sub_1000087B4(&v30);
  return v15 - 120;
}

BOOL sub_1001BB9C8(__int16 *a1, __int16 *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 120);
        v5 = (a2 - 60);
        v10 = *(a2 - 120);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          sub_1001BBE98(a1 + 60, v5);
          if (*(v3 + 120) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = (v3 + 60);
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          sub_1001BBE98(a1, (a1 + 60));
          if (*v5 >= *(v3 + 120))
          {
            return 1;
          }

          a1 = v3 + 60;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        sub_1001BBE98(a1, v8);
        return 1;
      case 4:
        sub_1001BADA0(a1, a1 + 60, a1 + 120, a2 - 120);
        return 1;
      case 5:
        sub_1001BADA0(a1, a1 + 60, a1 + 120, a1 + 360);
        v7 = *(v2 - 120);
        v6 = (v2 - 60);
        if (v7 >= *(v3 + 360))
        {
          return 1;
        }

        sub_1001BBE98(v3 + 180, v6);
        if (*(v3 + 360) >= *(v3 + 240))
        {
          return 1;
        }

        sub_1001BBE98(v3 + 120, (v3 + 180));
        if (*(v3 + 240) >= *(v3 + 120))
        {
          return 1;
        }

        sub_1001BBE98(v3 + 60, (v3 + 120));
        if (*(v3 + 120) >= *v3)
        {
          return 1;
        }

        v8 = (v3 + 60);
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 60);
      if (*(a2 - 120) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = (a1 + 120);
  v11 = *(a1 + 240);
  v13 = *(a1 + 120);
  if (v13 < *a1)
  {
    if (v11 >= v13)
    {
      sub_1001BBE98(a1, (a1 + 60));
      if (*(v3 + 240) >= *(v3 + 120))
      {
        goto LABEL_31;
      }

      a1 = v3 + 60;
    }

    v14 = (v3 + 120);
    goto LABEL_30;
  }

  if (v11 < v13)
  {
    sub_1001BBE98(a1 + 60, (a1 + 120));
    if (*(v3 + 120) < *v3)
    {
      a1 = v3;
      v14 = (v3 + 60);
LABEL_30:
      sub_1001BBE98(a1, v14);
    }
  }

LABEL_31:
  v15 = (v3 + 180);
  if (v3 + 180 == v2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v27 = v2;
  while (1)
  {
    if (*v15 < *v12)
    {
      memset(&__p[11], 0, 101);
      v28 = *v15;
      v29 = v15[2];
      *__p = *(v15 + 8);
      *&__p[16] = *(v15 + 3);
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *&__p[24] = *(v15 + 2);
      *&__p[40] = *(v15 + 6);
      *(v15 + 3) = 0;
      *(v15 + 4) = 0;
      *(v15 + 5) = 0;
      *(v15 + 6) = 0;
      v18 = *(v15 + 14);
      *&__p[52] = *(v15 + 30);
      *&__p[48] = v18;
      *&__p[56] = *(v15 + 4);
      *&__p[72] = *(v15 + 10);
      *(v15 + 8) = 0;
      *(v15 + 9) = 0;
      *(v15 + 10) = 0;
      v19 = *(v15 + 88);
      *&__p[93] = *(v15 + 101);
      v20 = v16;
      *&__p[80] = v19;
      while (1)
      {
        v21 = v3 + v20;
        *(v21 + 180) = *(v3 + v20 + 240);
        v21[362] = *(v3 + v20 + 242);
        sub_100015184(v3 + v20 + 368, (v3 + v20 + 248));
        sub_100071A6C(v3 + v20 + 392);
        *(v21 + 392) = *(v21 + 17);
        *(v21 + 51) = *(v21 + 36);
        *(v21 + 35) = 0;
        *(v21 + 36) = 0;
        *(v21 + 34) = 0;
        *(v21 + 104) = *(v21 + 74);
        *(v21 + 210) = *(v21 + 150);
        sub_1001BC0E8(v3 + v20 + 424);
        *(v21 + 424) = *(v21 + 19);
        *(v21 + 55) = *(v21 + 40);
        *(v21 + 39) = 0;
        *(v21 + 40) = 0;
        *(v21 + 38) = 0;
        *(v21 + 28) = *(v21 + 328);
        *(v21 + 461) = *(v21 + 341);
        if (v20 == -240)
        {
          break;
        }

        v20 -= 120;
        if (v28 >= v21[120])
        {
          v22 = v3 + v20 + 360;
          goto LABEL_39;
        }
      }

      v22 = v3;
LABEL_39:
      *v22 = v28;
      *(v22 + 2) = v29;
      v25 = *(v21 + 31);
      v24 = v21 + 248;
      v23 = v25;
      if (v25)
      {
        *(v22 + 16) = v23;
        operator delete(v23);
        *v24 = 0;
        *(v24 + 1) = 0;
        *(v24 + 2) = 0;
      }

      *v24 = *__p;
      *(v22 + 16) = *&__p[8];
      sub_100071A6C((v24 + 24));
      *(v24 + 3) = *&__p[24];
      *(v22 + 40) = *&__p[32];
      memset(&__p[24], 0, 24);
      *(v24 + 26) = *&__p[52];
      *(v24 + 12) = *&__p[48];
      sub_1001BC0E8((v24 + 56));
      *(v24 + 7) = *&__p[56];
      *(v22 + 72) = *&__p[64];
      memset(&__p[56], 0, 24);
      *(v24 + 93) = *&__p[93];
      *(v24 + 5) = *&__p[80];
      v31 = &__p[56];
      sub_1001BA044(&v31);
      v31 = &__p[24];
      sub_1000087B4(&v31);
      ++v17;
      v2 = v27;
      if (v17 == 8)
      {
        return v15 + 120 == v27;
      }
    }

    v12 = v15;
    v16 += 120;
    v15 += 120;
    if (v15 == v2)
    {
      return 1;
    }
  }
}

void sub_1001BBE98(__int16 *a1, uint64_t a2)
{
  memset(v22, 0, sizeof(v22));
  v20 = *a1;
  v21 = *(a1 + 2);
  v5 = *(a1 + 4);
  v4 = a1 + 4;
  v6 = *(a1 + 3);
  *v4 = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v17 = v6;
  v19 = *(a1 + 4);
  v18 = v5;
  *&v22[13] = v19;
  v15 = *(a1 + 6);
  v16 = *(a1 + 5);
  *&v22[21] = v16;
  *&v22[29] = v15;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v7 = *(a1 + 14);
  *&v22[41] = a1[30];
  *&v22[37] = v7;
  v8 = *(a1 + 10);
  v13 = *(a1 + 9);
  v14 = *(a1 + 8);
  *&v22[45] = v14;
  *&v22[53] = v13;
  *&v22[61] = v8;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v9 = *(a1 + 44);
  *&v22[82] = *(a1 + 101);
  *&v22[69] = v9;
  LOWORD(v7) = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v7;
  sub_100015184(v4, (a2 + 8));
  sub_100071A6C((a1 + 16));
  *(a1 + 2) = *(a2 + 32);
  *(a1 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v10 = *(a2 + 56);
  a1[30] = *(a2 + 60);
  *(a1 + 14) = v10;
  sub_1001BC0E8((a1 + 32));
  *(a1 + 4) = *(a2 + 64);
  *(a1 + 10) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v11 = *(a2 + 88);
  *(a1 + 101) = *(a2 + 101);
  *(a1 + 44) = v11;
  *a2 = v20;
  *(a2 + 2) = v21;
  v12 = *(a2 + 8);
  if (v12)
  {
    *(a2 + 16) = v12;
    operator delete(v12);
  }

  *(a2 + 8) = v18;
  *(a2 + 24) = v17;
  sub_100071A6C(a2 + 32);
  *(a2 + 32) = v19;
  *(a2 + 40) = v16;
  *(a2 + 48) = v15;
  memset(&v22[13], 0, 24);
  *(a2 + 56) = *&v22[37];
  *(a2 + 60) = *&v22[41];
  sub_1001BC0E8(a2 + 64);
  *(a2 + 64) = v14;
  *(a2 + 72) = v13;
  *(a2 + 80) = v8;
  memset(&v22[45], 0, 24);
  *(a2 + 88) = *&v22[69];
  *(a2 + 101) = *&v22[82];
  v23[0] = &v22[45];
  sub_1001BA044(v23);
  v23[0] = &v22[13];
  sub_1000087B4(v23);
}

void sub_1001BC0E8(uint64_t a1)
{
  if (*a1)
  {
    sub_1001BA098(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

__int16 *sub_1001BC128(unsigned __int8 *a1, unsigned __int8 *a2, __int16 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 121)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[120 * v10];
      do
      {
        sub_1001BC258(a1, a4, v9, v12);
        v12 -= 120;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          sub_1001BBE98(v13, a1);
          sub_1001BC258(a1, a4, v9, a1);
        }

        v13 += 60;
      }

      while (v13 != a3);
    }

    if (v8 >= 121)
    {
      v14 = 0xEEEEEEEEEEEEEEEFLL * (v8 >> 3);
      do
      {
        sub_1001BC590(a1, v6, a4, v14);
        v6 -= 120;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_1001BC258(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v31[11] = v4;
    v31[12] = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xEEEEEEEEEEEEEEEFLL * (&a4[-a1] >> 3)))
    {
      v11 = (0xDDDDDDDDDDDDDDDELL * (&a4[-a1] >> 3)) | 1;
      v12 = (a1 + 120 * v11);
      if ((0xDDDDDDDDDDDDDDDELL * (&a4[-a1] >> 3) + 2) >= a3)
      {
        v13 = *v12;
      }

      else
      {
        v13 = *v12;
        v14 = v12[120];
        v15 = v13 >= v14;
        if (v13 <= v14)
        {
          v13 = v12[120];
        }

        if (!v15)
        {
          v12 += 120;
          v11 = 0xDDDDDDDDDDDDDDDELL * (&a4[-a1] >> 3) + 2;
        }
      }

      if (v13 >= *a4)
      {
        memset(&__p_5[11], 0, 101);
        v28 = *a4;
        v29 = a4[2];
        *__p_5 = *(a4 + 8);
        *&__p_5[16] = *(a4 + 3);
        *(a4 + 1) = 0;
        *(a4 + 2) = 0;
        *&__p_5[24] = *(a4 + 2);
        *&__p_5[40] = *(a4 + 6);
        *(a4 + 3) = 0;
        *(a4 + 4) = 0;
        *(a4 + 5) = 0;
        *(a4 + 6) = 0;
        v16 = *(a4 + 14);
        *&__p_5[52] = *(a4 + 30);
        *&__p_5[48] = v16;
        *&__p_5[56] = *(a4 + 4);
        *&__p_5[72] = *(a4 + 10);
        *(a4 + 8) = 0;
        *(a4 + 9) = 0;
        *(a4 + 10) = 0;
        v17 = *(a4 + 88);
        *&__p_5[93] = *(a4 + 101);
        *&__p_5[80] = v17;
        do
        {
          v18 = v12;
          v19 = *v12;
          v7[2] = v18[2];
          *v7 = v19;
          sub_100015184((v7 + 8), (v18 + 8));
          sub_100071A6C((v7 + 32));
          *(v7 + 2) = *(v18 + 2);
          *(v7 + 6) = *(v18 + 6);
          *(v18 + 4) = 0;
          *(v18 + 5) = 0;
          *(v18 + 6) = 0;
          v20 = *(v18 + 14);
          *(v7 + 30) = *(v18 + 30);
          *(v7 + 14) = v20;
          sub_1001BC0E8((v7 + 64));
          *(v7 + 4) = *(v18 + 4);
          *(v7 + 10) = *(v18 + 10);
          *(v18 + 8) = 0;
          *(v18 + 9) = 0;
          *(v18 + 10) = 0;
          v21 = *(v18 + 88);
          *(v7 + 101) = *(v18 + 101);
          *(v7 + 88) = v21;
          if (v9 < v11)
          {
            break;
          }

          v12 = (a1 + 120 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v22 = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            v22 = *v12;
            v23 = v12[120];
            v24 = v22 >= v23;
            if (v22 <= v23)
            {
              v22 = v12[120];
            }

            if (v24)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 += 120;
              v11 = 2 * v11 + 2;
            }
          }

          v7 = v18;
        }

        while (v22 >= v28);
        v18[2] = v29;
        *v18 = v28;
        v25 = *(v18 + 1);
        if (v25)
        {
          *(v18 + 2) = v25;
          operator delete(v25);
          *(v18 + 1) = 0;
          *(v18 + 2) = 0;
          *(v18 + 3) = 0;
        }

        *(v18 + 8) = *__p_5;
        *(v18 + 3) = *&__p_5[16];
        sub_100071A6C((v18 + 32));
        *(v18 + 2) = *&__p_5[24];
        *(v18 + 6) = *&__p_5[40];
        memset(&__p_5[24], 0, 24);
        v26 = *&__p_5[52];
        *(v18 + 14) = *&__p_5[48];
        *(v18 + 30) = v26;
        sub_1001BC0E8((v18 + 64));
        *(v18 + 4) = *&__p_5[56];
        *(v18 + 10) = *&__p_5[72];
        memset(&__p_5[56], 0, 24);
        v27 = *&__p_5[93];
        *(v18 + 88) = *&__p_5[80];
        *(v18 + 101) = v27;
        v31[0] = &__p_5[56];
        sub_1001BA044(v31);
        v31[0] = &__p_5[24];
        sub_1000087B4(v31);
      }
    }
  }
}

void sub_1001BC590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    memset(&__p_5[11], 0, 101);
    v25 = *a1;
    v26 = *(a1 + 2);
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    *__p_5 = v7;
    *&__p_5[8] = v8;
    v24 = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *&__p_5[24] = *(a1 + 32);
    *&__p_5[40] = *(a1 + 48);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v9 = *(a1 + 56);
    *&__p_5[52] = *(a1 + 60);
    *&__p_5[48] = v9;
    *&__p_5[56] = *(a1 + 64);
    *&__p_5[72] = *(a1 + 80);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v10 = *(a1 + 88);
    *&__p_5[93] = *(a1 + 101);
    *&__p_5[80] = v10;
    v11 = sub_1001BC8EC(a1, a3, a4);
    v12 = v11;
    v13 = (a2 - 120);
    if (v11 == (a2 - 120))
    {
      *(v11 + 2) = v26;
      *v11 = v25;
      v20 = *(v11 + 1);
      if (v20)
      {
        *(v12 + 2) = v20;
        operator delete(v20);
        *(v12 + 1) = 0;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0;
      }

      *(v12 + 4) = *__p_5;
      *(v12 + 3) = v24;
      sub_100071A6C((v12 + 16));
      *(v12 + 2) = *&__p_5[24];
      *(v12 + 6) = *&__p_5[40];
      memset(&__p_5[24], 0, 24);
      v21 = *&__p_5[52];
      *(v12 + 14) = *&__p_5[48];
      v12[30] = v21;
      sub_1001BC0E8((v12 + 32));
      *(v12 + 4) = *&__p_5[56];
      *(v12 + 10) = *&__p_5[72];
      memset(&__p_5[56], 0, 24);
      v22 = *&__p_5[93];
      *(v12 + 44) = *&__p_5[80];
      *(v12 + 101) = v22;
    }

    else
    {
      v23 = v7;
      v14 = *v13;
      *(v11 + 2) = *(a2 - 118);
      *v11 = v14;
      sub_100015184((v11 + 4), (a2 - 112));
      sub_100071A6C((v12 + 16));
      *(v12 + 2) = *(a2 - 88);
      *(v12 + 6) = *(a2 - 72);
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      v15 = *(a2 - 64);
      v12[30] = *(a2 - 60);
      *(v12 + 14) = v15;
      sub_1001BC0E8((v12 + 32));
      v16 = (a2 - 56);
      *(v12 + 4) = *(a2 - 56);
      *(v12 + 10) = *(a2 - 40);
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v17 = *(a2 - 32);
      *(v12 + 101) = *(a2 - 19);
      *(v12 + 44) = v17;
      v18 = (v12 + 60);
      *v13 = v25;
      *(a2 - 118) = v26;
      v19 = *(a2 - 112);
      if (v19)
      {
        *(a2 - 104) = v19;
        operator delete(v19);
        *(a2 - 112) = 0;
        *(a2 - 104) = 0;
        *(a2 - 96) = 0;
      }

      *(a2 - 112) = v23;
      *(a2 - 104) = v8;
      *(a2 - 96) = v24;
      sub_100071A6C(a2 - 88);
      *(a2 - 88) = *&__p_5[24];
      *(a2 - 72) = *&__p_5[40];
      memset(&__p_5[24], 0, 24);
      *(a2 - 64) = *&__p_5[48];
      *(a2 - 60) = *&__p_5[52];
      sub_1001BC0E8(a2 - 56);
      *(a2 - 56) = *&__p_5[56];
      *(a2 - 40) = *&__p_5[72];
      memset(&__p_5[56], 0, 24);
      *(a2 - 32) = *&__p_5[80];
      *(a2 - 19) = *&__p_5[93];
      sub_1001BC9FC(a1, v18, a3, 0xEEEEEEEEEEEEEEEFLL * ((v18 - a1) >> 3));
    }

    v28[0] = &__p_5[56];
    sub_1001BA044(v28);
    v28[0] = &__p_5[24];
    sub_1000087B4(v28);
  }
}

void sub_1001BC8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001B5FE4(va);
  _Unwind_Resume(a1);
}

__int16 *sub_1001BC8EC(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[60 * v5];
    v8 = v7 + 60;
    if (2 * v5 + 2 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v10 = *(v7 + 240);
      v9 = v7 + 120;
      if (*(v9 - 120) >= v10)
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v9;
        v5 = 2 * v5 + 2;
      }
    }

    v11 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v11;
    sub_100015184((a1 + 4), (v8 + 4));
    sub_100071A6C((a1 + 16));
    *(a1 + 2) = *(v8 + 2);
    *(a1 + 6) = *(v8 + 6);
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    v12 = *(v8 + 14);
    a1[30] = v8[30];
    *(a1 + 14) = v12;
    sub_1001BC0E8((a1 + 32));
    *(a1 + 4) = *(v8 + 4);
    *(a1 + 10) = *(v8 + 10);
    *(v8 + 8) = 0;
    *(v8 + 9) = 0;
    *(v8 + 10) = 0;
    v13 = *(v8 + 44);
    *(a1 + 101) = *(v8 + 101);
    *(a1 + 44) = v13;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void sub_1001BC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v24[12] = v4;
    v24[13] = v5;
    v8 = v6 >> 1;
    v9 = (a1 + 120 * (v6 >> 1));
    v10 = (a2 - 120);
    if (*v9 < *(a2 - 120))
    {
      memset(v23, 0, sizeof(v23));
      v21 = *v10;
      v22 = *(a2 - 118);
      v19 = *(a2 - 104);
      v20 = *(a2 - 112);
      v18 = *(a2 - 96);
      *(a2 - 112) = 0;
      *(a2 - 104) = 0;
      *&v23[13] = *(a2 - 88);
      *&v23[29] = *(a2 - 72);
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      v11 = *(a2 - 64);
      *&v23[41] = *(a2 - 60);
      *&v23[37] = v11;
      *&v23[45] = *(a2 - 56);
      *&v23[61] = *(a2 - 40);
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v12 = *(a2 - 32);
      *&v23[82] = *(a2 - 19);
      *&v23[69] = v12;
      do
      {
        v13 = v9;
        v14 = *v9;
        v10[2] = v13[2];
        *v10 = v14;
        sub_100015184((v10 + 8), (v13 + 8));
        sub_100071A6C((v10 + 32));
        *(v10 + 2) = *(v13 + 2);
        *(v10 + 6) = *(v13 + 6);
        *(v13 + 4) = 0;
        *(v13 + 5) = 0;
        *(v13 + 6) = 0;
        v15 = *(v13 + 14);
        *(v10 + 30) = *(v13 + 30);
        *(v10 + 14) = v15;
        sub_1001BC0E8((v10 + 64));
        *(v10 + 4) = *(v13 + 4);
        *(v10 + 10) = *(v13 + 10);
        *(v13 + 8) = 0;
        *(v13 + 9) = 0;
        *(v13 + 10) = 0;
        v16 = *(v13 + 88);
        *(v10 + 101) = *(v13 + 101);
        *(v10 + 88) = v16;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 120 * v8);
        v10 = v13;
      }

      while (*v9 < v21);
      *v13 = v21;
      v13[2] = v22;
      v17 = *(v13 + 1);
      if (v17)
      {
        *(v13 + 2) = v17;
        operator delete(v17);
        *(v13 + 1) = 0;
        *(v13 + 2) = 0;
        *(v13 + 3) = 0;
      }

      *(v13 + 1) = v20;
      *(v13 + 2) = v19;
      *(v13 + 3) = v18;
      sub_100071A6C((v13 + 32));
      *(v13 + 2) = *&v23[13];
      *(v13 + 6) = *&v23[29];
      memset(&v23[13], 0, 24);
      *(v13 + 14) = *&v23[37];
      *(v13 + 30) = *&v23[41];
      sub_1001BC0E8((v13 + 64));
      *(v13 + 4) = *&v23[45];
      *(v13 + 10) = *&v23[61];
      memset(&v23[45], 0, 24);
      *(v13 + 88) = *&v23[69];
      *(v13 + 101) = *&v23[82];
      v24[0] = &v23[45];
      sub_1001BA044(v24);
      v24[0] = &v23[13];
      sub_1000087B4(v24);
    }
  }
}

void sub_1001BCCA4(uint64_t *a1, uint64_t a2, __int16 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1001BCDF0(a1);
    if (a4 <= 0x222222222222222)
    {
      v9 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
      {
        v10 = 0x222222222222222;
      }

      else
      {
        v10 = v9;
      }

      sub_1001B9840(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xEEEEEEEEEEEEEEEFLL * (v11 >> 3) >= a4)
  {
    sub_1001BCE30(&v14, a2, a3, v8);
    sub_1001BA28C(a1, v12);
  }

  else
  {
    sub_1001BCE30(&v13, a2, a2 + v11, v8);
    a1[1] = sub_1001B98E4(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_1001BCDF0(uint64_t *a1)
{
  if (*a1)
  {
    sub_1001BA28C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1001BCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 40;
    do
    {
      v9 = v7 - 40;
      v8 = *(v7 - 40);
      *(a4 + 2) = *(v7 - 38);
      *a4 = v8;
      if (a4 == v7 - 40)
      {
        v11 = *(v7 + 16);
        *(a4 + 60) = *(v7 + 20);
        *(a4 + 56) = v11;
      }

      else
      {
        sub_1001BD814((a4 + 8), *(v7 - 32), *(v7 - 24), 0xAAAAAAAAAAAAAAABLL * ((*(v7 - 24) - *(v7 - 32)) >> 3));
        sub_100008234((a4 + 32), *(v7 - 8), *v7, 0xAAAAAAAAAAAAAAABLL * ((*v7 - *(v7 - 8)) >> 3));
        v10 = *(v7 + 16);
        *(a4 + 60) = *(v7 + 20);
        *(a4 + 56) = v10;
        sub_1001BCF2C((a4 + 64), *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 7);
      }

      v12 = *(v7 + 48);
      *(a4 + 101) = *(v7 + 61);
      *(a4 + 88) = v12;
      a4 += 120;
      v7 += 120;
    }

    while (v9 + 120 != a3);
    return a3;
  }

  return result;
}

void sub_1001BCF2C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 7)
  {
    sub_1001BC0E8(a1);
    if (!(a4 >> 57))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 6;
      if (v9 >> 6 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFF80)
      {
        v11 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1001B9C3C(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 7)
  {
    sub_1001BD048(&v15, a2, a3, v8);
    sub_1001BA098(a1, v13);
  }

  else
  {
    sub_1001BD048(&v14, a2, a2 + v12, v8);
    a1[1] = sub_1001B9CC0(a1, a2 + v12, a3, a1[1]);
  }
}

uint64_t sub_1001BD048(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_1001BD0D0(a4, v5);
    sub_1001BD0D0(a4 + 32, v5 + 32);
    sub_1001BD0D0(a4 + 64, v5 + 64);
    sub_1001BD0D0(a4 + 96, v5 + 96);
    a4 += 128;
    v5 += 128;
  }

  while (v5 != v6);
  return v6;
}

void sub_1001BD0D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 3;
      v5 = *a2;

      sub_1000D0394(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001B9EC4(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = 1;
  }
}

uint64_t sub_1001BD180(uint64_t a1, const CSIPacketAddress *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1001B95F4(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  CSIPacketAddress::CSIPacketAddress((24 * v2), a2);
  v11 = 24 * v2 + 24;
  sub_1001BD2FC(a1, &__p);
  v7 = *(a1 + 8);
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1001BD2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const CSIPacketAddress **sub_1001BD2FC(const CSIPacketAddress **result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 + *result - v6);
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      CSIPacketAddress::CSIPacketAddress(result, v5);
      v5 = (v5 + 24);
      result = (v8 + 24);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t sub_1001BD39C(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v8 = (a1 + 152);
  sub_1000087B4(&v8);
  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    *(a1 + 88) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    *(a1 + 64) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 32);
  sub_1000087B4(&v8);
  v8 = (a1 + 8);
  sub_1000087B4(&v8);
  return a1;
}

uint64_t sub_1001BD448(uint64_t *a1, __int16 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_1000CE3D4();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001B988C(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  sub_1001B998C(a1, 120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = a1[1];
  v8 = 120 * v2 + *a1 - v7;
  sub_1001BD57C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001BD6C0(&v13);
  return v12;
}

void sub_1001BD568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001BD6C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001BD57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 2) = *(v7 + 2);
      *a4 = v8;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v9 = *(v7 + 56);
      *(a4 + 60) = *(v7 + 60);
      *(a4 + 56) = v9;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = 0;
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v10 = *(v7 + 88);
      *(a4 + 101) = *(v7 + 101);
      *(a4 + 88) = v10;
      v7 += 120;
      a4 += 120;
    }

    while (v7 != a3);
    v15 = a4;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      sub_1001BA1E0(a1, v5);
      v5 += 120;
    }
  }

  return sub_1001BA154(v12);
}

uint64_t sub_1001BD6C0(uint64_t a1)
{
  sub_1001BD6F8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001BD6F8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    sub_1001BA1E0(v5, v4 - 120);
  }
}

uint64_t sub_1001BD740(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v4 = (a1 + 64);
    sub_1001BA044(&v4);
    v4 = (a1 + 32);
    sub_1000087B4(&v4);
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 16) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_1001BD7A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 232)
  {
    v5 = (i - 24);
    sub_1001BA238(&v5);
    result = sub_1001BD39C(i - 224);
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_1001BD814(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_1001B9B10(v6, v11);
    }

    sub_1000CE3D4();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t sub_1001BD970(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001BD9F8(result, a4);
  }

  return result;
}

void sub_1001BD9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001B8B00(&a9);
  _Unwind_Resume(a1);
}

void sub_1001BD9F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    sub_1001B8E6C(a1, a2);
  }

  sub_1000CE3D4();
}

_BYTE *sub_1001BDA48(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1001B9280(a1, v4, v6);
      v6 += 232;
      v4 = v12 + 232;
      v12 += 232;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1001B8FDC(v9);
  return v4;
}

__int16 *sub_1001BDAF0(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    *(a4 + 2) = *(v5 + 2);
    *a4 = v7;
    sub_100015184(a4 + 8, (v5 + 4));
    sub_100071A6C(a4 + 32);
    *(a4 + 32) = *(v5 + 2);
    *(a4 + 48) = *(v5 + 6);
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 6) = 0;
    v8 = *(v5 + 14);
    *(a4 + 60) = v5[30];
    *(a4 + 56) = v8;
    sub_1001BC0E8(a4 + 64);
    *(a4 + 64) = *(v5 + 4);
    *(a4 + 80) = *(v5 + 10);
    *(v5 + 8) = 0;
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    v9 = *(v5 + 44);
    *(a4 + 101) = *(v5 + 101);
    *(a4 + 88) = v9;
    a4 += 120;
    v5 += 60;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1001BDBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    *(a4 + 8) = *(v5 + 8);
    sub_100071A6C(a4 + 16);
    *(a4 + 16) = *(v5 + 16);
    *(a4 + 32) = *(v5 + 32);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    sub_100071A6C(a4 + 40);
    *(a4 + 40) = *(v5 + 40);
    *(a4 + 56) = *(v5 + 56);
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    sub_100015184(a4 + 64, (v5 + 64));
    sub_100015184(a4 + 88, (v5 + 88));
    sub_100015184(a4 + 112, (v5 + 112));
    sub_100015184(a4 + 136, (v5 + 136));
    sub_100071A6C(a4 + 160);
    *(a4 + 160) = *(v5 + 160);
    *(a4 + 176) = *(v5 + 176);
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    *(v5 + 176) = 0;
    sub_100015184(a4 + 184, (v5 + 184));
    sub_1001BCDF0((a4 + 208));
    *(a4 + 208) = *(v5 + 208);
    *(a4 + 224) = *(v5 + 224);
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    *(v5 + 224) = 0;
    a4 += 232;
    v5 += 232;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1001BDCE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_1001B9300(v4 + 8, a2 + 8);
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  result = sub_1001B97B8(v4 + 208, *(a2 + 208), *(a2 + 216), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
  *(a1 + 8) = v4 + 232;
  return result;
}

void sub_1001BDD5C(_Unwind_Exception *a1)
{
  sub_1001BD39C(v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t sub_1001BDD7C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1001B8E6C(a1, v6);
  }

  v7 = 232 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  sub_1001B9300(v7 + 8, a2 + 8);
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  v7 += 208;
  *(v7 + 16) = 0;
  sub_1001B97B8(v7, *(a2 + 208), *(a2 + 216), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
  *&v16 = v16 + 232;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_1001B8EC8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1001B9090(&v14);
  return v13;
}

void sub_1001BDEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001BD39C(v4);
  sub_1001B9090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001BDF08(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 232;
  v56 = (a2 - 696);
  v57 = (a2 - 464);
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0x34F72C234F72C235 * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v55 = *(a2 - 232);
      v49 = (a2 - 232);
      if (v55 < *v10)
      {
LABEL_80:
        v51 = v10;
LABEL_81:
        v54 = v49;
LABEL_82:

        return sub_1001BFF7C(v51, v54);
      }

      return result;
    }

LABEL_11:
    if (v13 <= 5567)
    {
      if (a5)
      {

        return sub_1001BE670(v10, a2);
      }

      else
      {

        return sub_1001BEA8C(v10, a2);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_1001C0348(v10, a2, a2, a3);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v10[232 * (v14 >> 1)];
    v17 = *v9;
    if (v13 >= 0x7401)
    {
      v18 = *v16;
      if (v18 >= *v10)
      {
        if (v17 < v18)
        {
          sub_1001BFF7C(v16, a2 - 232);
          if (*v16 < *v10)
          {
            v19 = v10;
            v20 = v16;
            goto LABEL_27;
          }
        }
      }

      else
      {
        v19 = v10;
        if (v17 < v18)
        {
          goto LABEL_18;
        }

        sub_1001BFF7C(v10, v16);
        if (*v9 < *v16)
        {
          v19 = v16;
LABEL_18:
          v20 = (a2 - 232);
LABEL_27:
          sub_1001BFF7C(v19, v20);
        }
      }

      v25 = v10 + 232;
      v24 = v10[232];
      v26 = &v10[232 * v15];
      v29 = *(v26 - 232);
      v28 = (v26 - 232);
      v27 = v29;
      v30 = *v57;
      if (v29 >= v24)
      {
        if (v30 < v27)
        {
          sub_1001BFF7C(v28, v57);
          if (*v28 < *v25)
          {
            v31 = v8 + 232;
            v32 = v28;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v31 = v8 + 232;
        if (v30 < v27)
        {
          goto LABEL_32;
        }

        sub_1001BFF7C(v31, v28);
        if (*v57 < *v28)
        {
          v31 = v28;
LABEL_32:
          v32 = (a2 - 464);
LABEL_39:
          sub_1001BFF7C(v31, v32);
        }
      }

      v33 = &v8[232 * v15];
      v36 = v33[232];
      v35 = (v33 + 232);
      v34 = v36;
      v37 = *v56;
      if (v36 >= v8[464])
      {
        if (v37 < v34)
        {
          sub_1001BFF7C(v35, v56);
          if (*v35 < v8[464])
          {
            v38 = v8 + 464;
            v39 = v35;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v38 = v8 + 464;
        if (v37 < v34)
        {
          goto LABEL_44;
        }

        sub_1001BFF7C(v38, v35);
        if (*v56 < *v35)
        {
          v38 = v35;
LABEL_44:
          v39 = (a2 - 696);
LABEL_48:
          sub_1001BFF7C(v38, v39);
        }
      }

      v40 = *v16;
      v41 = *v35;
      if (v40 >= *v28)
      {
        if (v41 < v40)
        {
          sub_1001BFF7C(v16, v35);
          if (*v16 < *v28)
          {
            v42 = v28;
            v43 = v16;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v42 = v28;
        if (v41 < v40)
        {
          goto LABEL_53;
        }

        sub_1001BFF7C(v28, v16);
        if (*v35 < *v16)
        {
          v42 = v16;
LABEL_53:
          v43 = v35;
LABEL_57:
          sub_1001BFF7C(v42, v43);
        }
      }

      v22 = v8;
      v23 = v16;
      goto LABEL_59;
    }

    v21 = *v10;
    if (v21 >= *v16)
    {
      if (v17 < v21)
      {
        sub_1001BFF7C(v10, a2 - 232);
        if (*v10 < *v16)
        {
          v22 = v16;
          v23 = v10;
          goto LABEL_59;
        }
      }
    }

    else
    {
      v22 = v16;
      if (v17 < v21)
      {
        goto LABEL_23;
      }

      sub_1001BFF7C(v16, v10);
      if (*v9 < *v10)
      {
        v22 = v10;
LABEL_23:
        v23 = (a2 - 232);
LABEL_59:
        sub_1001BFF7C(v22, v23);
      }
    }

    if ((a5 & 1) == 0 && *(v8 - 232) >= *v8)
    {
      result = sub_1001BEEBC(v8, a2);
      v10 = result;
      goto LABEL_67;
    }

    v44 = sub_1001BF3CC(v8, a2);
    if ((v45 & 1) == 0)
    {
      goto LABEL_65;
    }

    v46 = sub_1001BF8F0(v8, v44);
    v10 = v44 + 232;
    result = sub_1001BF8F0(v44 + 232, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v44;
      if (v46)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v46)
    {
LABEL_65:
      result = sub_1001BDF08(v8, v44, a3, -v12, a5 & 1);
      v10 = v44 + 232;
LABEL_67:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      return sub_1001BE558(v10, v10 + 232, v10 + 464, a2 - 232);
    }

    if (v14 == 5)
    {
      result = sub_1001BE558(v10, v10 + 232, v10 + 464, v10 + 696);
      v53 = *(a2 - 232);
      v52 = (a2 - 232);
      if (v53 < v10[696])
      {
        result = sub_1001BFF7C(v10 + 696, v52);
        if (v10[696] < v10[464])
        {
          result = sub_1001BFF7C(v10 + 464, v10 + 696);
          if (v10[464] < v10[232])
          {
            result = sub_1001BFF7C(v10 + 232, v10 + 464);
            if (v10[232] < *v10)
            {
              v54 = (v10 + 232);
              v51 = v10;
              goto LABEL_82;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_11;
  }

  v47 = v10[232];
  v50 = *(a2 - 232);
  v49 = (a2 - 232);
  v48 = v50;
  if (v47 >= *v10)
  {
    if (v48 < v47)
    {
      result = sub_1001BFF7C(v10 + 232, v49);
      if (v10[232] < *v10)
      {
        v51 = v10;
        v54 = (v10 + 232);
        goto LABEL_82;
      }
    }
  }

  else
  {
    if (v48 < v47)
    {
      goto LABEL_80;
    }

    result = sub_1001BFF7C(v10, v10 + 232);
    if (*v49 < v10[232])
    {
      v51 = (v10 + 232);
      goto LABEL_81;
    }
  }

  return result;
}

char *sub_1001BE558(char *result, char *a2, char *a3, char *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (v8 >= *result)
  {
    if (v9 < v8)
    {
      result = sub_1001BFF7C(a2, a3);
      if (*a2 < *v7)
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = sub_1001BFF7C(result, v10);
      goto LABEL_10;
    }

    result = sub_1001BFF7C(result, a2);
    if (*a3 < *a2)
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = sub_1001BFF7C(a3, a4);
    if (*a3 < *a2)
    {
      result = sub_1001BFF7C(a2, a3);
      if (*a2 < *v7)
      {

        return sub_1001BFF7C(v7, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1001BE670(uint64_t result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v25[12] = v2;
    v25[13] = v3;
    v5 = result;
    v6 = result + 232;
    if ((result + 232) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v6;
        v10 = v8[232];
        if (v10 < *v8)
        {
          v23[0] = 0;
          v22 = v10;
          LOBYTE(v23[0]) = v8[240];
          *&v23[1] = *(v8 + 248);
          v23[3] = *(v8 + 33);
          *(v8 + 31) = 0;
          *(v8 + 32) = 0;
          *&v23[4] = *(v8 + 17);
          v23[6] = *(v8 + 36);
          *(v8 + 33) = 0;
          *(v8 + 34) = 0;
          *(v8 + 35) = 0;
          *(v8 + 36) = 0;
          *&v23[7] = *(v8 + 296);
          v23[9] = *(v8 + 39);
          *(v8 + 37) = 0;
          *(v8 + 38) = 0;
          *(v8 + 39) = 0;
          *&v23[10] = *(v8 + 20);
          v23[12] = *(v8 + 42);
          *(v8 + 40) = 0;
          *(v8 + 41) = 0;
          *(v8 + 42) = 0;
          *&v23[13] = *(v8 + 344);
          v23[15] = *(v8 + 45);
          *(v8 + 43) = 0;
          *(v8 + 44) = 0;
          *(v8 + 45) = 0;
          *&v23[16] = *(v8 + 23);
          v23[18] = *(v8 + 48);
          *(v8 + 46) = 0;
          *(v8 + 47) = 0;
          *(v8 + 48) = 0;
          *&v23[19] = *(v8 + 392);
          v23[21] = *(v8 + 51);
          *(v8 + 49) = 0;
          *(v8 + 50) = 0;
          *(v8 + 51) = 0;
          *&v23[22] = *(v8 + 26);
          v23[24] = *(v8 + 54);
          *(v8 + 52) = 0;
          *(v8 + 53) = 0;
          *(v8 + 54) = 0;
          *v24 = *(v8 + 440);
          *&v24[16] = *(v8 + 57);
          *(v8 + 55) = 0;
          *(v8 + 56) = 0;
          *(v8 + 57) = 0;
          v11 = v7;
          LOBYTE(v12) = *v8;
          while (1)
          {
            v13 = v5 + v11;
            *(v13 + 232) = v12;
            *(v13 + 240) = *(v5 + v11 + 8);
            sub_100071A6C(v5 + v11 + 248);
            *(v13 + 248) = *(v13 + 16);
            *(v13 + 264) = *(v13 + 32);
            *(v13 + 24) = 0;
            *(v13 + 32) = 0;
            *(v13 + 16) = 0;
            sub_100071A6C(v5 + v11 + 272);
            *(v13 + 272) = *(v13 + 40);
            *(v13 + 288) = *(v13 + 56);
            *(v13 + 48) = 0;
            *(v13 + 56) = 0;
            *(v13 + 40) = 0;
            sub_100015184(v13 + 296, (v13 + 64));
            sub_100015184(v13 + 320, (v13 + 88));
            sub_100015184(v13 + 344, (v13 + 112));
            sub_100015184(v13 + 368, (v13 + 136));
            sub_100071A6C(v5 + v11 + 392);
            *(v13 + 392) = *(v13 + 160);
            *(v13 + 408) = *(v13 + 176);
            *(v13 + 168) = 0;
            *(v13 + 176) = 0;
            *(v13 + 160) = 0;
            sub_100015184(v13 + 416, (v13 + 184));
            sub_1001BCDF0((v5 + v11 + 440));
            *(v13 + 440) = *(v13 + 208);
            *(v13 + 456) = *(v13 + 224);
            *(v13 + 216) = 0;
            *(v13 + 224) = 0;
            *(v13 + 208) = 0;
            if (!v11)
            {
              break;
            }

            v12 = *(v13 - 232);
            v11 -= 232;
            if (v22 >= v12)
            {
              v14 = v5 + v11 + 232;
              goto LABEL_10;
            }
          }

          v14 = v5;
LABEL_10:
          *v14 = v22;
          *(v14 + 8) = v23[0];
          sub_100071A6C(v13 + 16);
          *(v13 + 16) = v23[1];
          *(v14 + 24) = *&v23[2];
          memset(&v23[1], 0, 24);
          sub_100071A6C(v13 + 40);
          *(v13 + 40) = v23[4];
          *(v14 + 48) = *&v23[5];
          memset(&v23[4], 0, 24);
          v17 = *(v13 + 64);
          v16 = (v13 + 64);
          v15 = v17;
          if (v17)
          {
            *(v14 + 72) = v15;
            operator delete(v15);
            *v16 = 0;
            v16[1] = 0;
            v16[2] = 0;
          }

          *v16 = v23[7];
          *(v14 + 72) = *&v23[8];
          memset(&v23[7], 0, 24);
          v18 = v16[3];
          if (v18)
          {
            *(v14 + 96) = v18;
            operator delete(v18);
            v16[3] = 0;
            v16[4] = 0;
            v16[5] = 0;
          }

          v16[3] = v23[10];
          *(v14 + 96) = *&v23[11];
          memset(&v23[10], 0, 24);
          v19 = v16[6];
          if (v19)
          {
            *(v14 + 120) = v19;
            operator delete(v19);
            v16[6] = 0;
            v16[7] = 0;
            v16[8] = 0;
          }

          v16[6] = v23[13];
          *(v14 + 120) = *&v23[14];
          memset(&v23[13], 0, 24);
          v20 = v16[9];
          if (v20)
          {
            *(v14 + 144) = v20;
            operator delete(v20);
            v16[9] = 0;
            v16[10] = 0;
            v16[11] = 0;
          }

          v16[9] = v23[16];
          *(v14 + 144) = *&v23[17];
          memset(&v23[16], 0, 24);
          sub_100071A6C((v16 + 12));
          v16[12] = v23[19];
          *(v14 + 168) = *&v23[20];
          memset(&v23[19], 0, 24);
          v21 = v16[15];
          if (v21)
          {
            *(v14 + 192) = v21;
            operator delete(v21);
            v16[15] = 0;
            v16[16] = 0;
            v16[17] = 0;
          }

          v16[15] = v23[22];
          *(v14 + 192) = *&v23[23];
          memset(&v23[22], 0, 24);
          sub_1001BCDF0(v16 + 18);
          v16[18] = *v24;
          *(v14 + 216) = *&v24[8];
          memset(v24, 0, sizeof(v24));
          v25[0] = v24;
          sub_1001BA238(v25);
          result = sub_1001BD39C(v23);
        }

        v6 = (v9 + 232);
        v7 += 232;
        v8 = v9;
      }

      while (v9 + 232 != a2);
    }
  }

  return result;
}

unsigned __int8 *sub_1001BEA8C(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v38[11] = v2;
    v38[12] = v3;
    v5 = result + 232;
    if (result + 232 != a2)
    {
      v6 = result + 456;
      do
      {
        v7 = v5;
        v8 = result[232];
        if (v8 < *result)
        {
          v19 = 0;
          v18 = v8;
          LOBYTE(v19) = result[240];
          v20 = *(result + 248);
          v21 = *(result + 33);
          *(result + 31) = 0;
          *(result + 32) = 0;
          v22 = *(result + 17);
          v23 = *(result + 36);
          *(result + 33) = 0;
          *(result + 34) = 0;
          *(result + 35) = 0;
          *(result + 36) = 0;
          v24 = *(result + 296);
          v25 = *(result + 39);
          *(result + 37) = 0;
          *(result + 38) = 0;
          *(result + 39) = 0;
          v26 = *(result + 20);
          v27 = *(result + 42);
          *(result + 40) = 0;
          *(result + 41) = 0;
          *(result + 42) = 0;
          v28 = *(result + 344);
          v29 = *(result + 45);
          *(result + 43) = 0;
          *(result + 44) = 0;
          *(result + 45) = 0;
          v30 = *(result + 23);
          v31 = *(result + 48);
          *(result + 46) = 0;
          *(result + 47) = 0;
          *(result + 48) = 0;
          v32 = *(result + 392);
          v33 = *(result + 51);
          *(result + 49) = 0;
          *(result + 50) = 0;
          *(result + 51) = 0;
          v34 = *(result + 26);
          v35 = *(result + 54);
          *(result + 52) = 0;
          *(result + 53) = 0;
          *(result + 54) = 0;
          v36 = *(result + 440);
          v37 = *(result + 57);
          *(result + 55) = 0;
          *(result + 56) = 0;
          *(result + 57) = 0;
          v9 = v6;
          LOBYTE(v10) = *result;
          do
          {
            v11 = v9;
            v9[-14].n128_u8[0] = v10;
            v9[-14].n128_u8[8] = v9[-28].n128_u8[0];
            sub_100071A6C(&v9[-13]);
            v9[-13] = *(v9 - 440);
            v9[-12].n128_u64[0] = v9[-27].n128_u64[1];
            v9[-27].n128_u64[1] = 0;
            v9[-27].n128_u64[0] = 0;
            v9[-28].n128_u64[1] = 0;
            sub_100071A6C(&v9[-12].n128_i64[1]);
            *(v9 - 184) = v9[-26];
            v9[-11].n128_u64[1] = v9[-25].n128_u64[0];
            v9[-25].n128_u64[0] = 0;
            v9[-26].n128_u64[1] = 0;
            v9[-26].n128_u64[0] = 0;
            sub_100015184(&v9[-10], (v9 - 392));
            sub_100015184(&v9[-9].n128_i64[1], v9 - 23);
            sub_100015184(&v9[-7], (v9 - 344));
            sub_100015184(&v9[-6].n128_i64[1], v9 - 20);
            sub_100071A6C(&v9[-4]);
            v9[-4] = *(v9 - 296);
            v9[-3].n128_u64[0] = v9[-18].n128_u64[1];
            v9[-18].n128_u64[1] = 0;
            v9[-18].n128_u64[0] = 0;
            v9[-19].n128_u64[1] = 0;
            sub_100015184(&v9[-3].n128_i64[1], v9 - 17);
            sub_1001BCDF0(&v9[-1]);
            v9[-1] = *(v9 - 248);
            v12 = v9[-15].n128_u64[1];
            v9 = (v9 - 232);
            v11->n128_u64[0] = v12;
            v9->n128_u64[0] = 0;
            v11[-16].n128_u64[1] = 0;
            v11[-15].n128_u64[0] = 0;
            v10 = v11[-43].n128_u8[0];
          }

          while (v18 < v10);
          v9[-14].n128_u8[0] = v18;
          v9[-14].n128_u8[8] = v19;
          sub_100071A6C(&v9[-13]);
          v9[-13] = v20;
          v9[-12].n128_u64[0] = v21;
          v21 = 0;
          v20 = 0uLL;
          sub_100071A6C(&v9[-12].n128_i64[1]);
          *(v9 - 184) = v22;
          v13 = v9[-10].n128_u64[0];
          v9[-11].n128_u64[1] = v23;
          v23 = 0;
          v22 = 0uLL;
          if (v13)
          {
            v9[-10].n128_u64[1] = v13;
            operator delete(v13);
            v9[-10].n128_u64[0] = 0;
            v9[-10].n128_u64[1] = 0;
            v9[-9].n128_u64[0] = 0;
          }

          v9[-10] = v24;
          v9[-9].n128_u64[0] = v25;
          v25 = 0;
          v24 = 0uLL;
          v14 = v9[-9].n128_u64[1];
          if (v14)
          {
            v9[-8].n128_u64[0] = v14;
            operator delete(v14);
            v9[-9].n128_u64[1] = 0;
            v9[-8].n128_u64[0] = 0;
            v9[-8].n128_u64[1] = 0;
          }

          *(v9 - 136) = v26;
          v9[-8].n128_u64[1] = v27;
          v27 = 0;
          v26 = 0uLL;
          v15 = v9[-7].n128_u64[0];
          if (v15)
          {
            v9[-7].n128_u64[1] = v15;
            operator delete(v15);
            v9[-7].n128_u64[0] = 0;
            v9[-7].n128_u64[1] = 0;
            v9[-6].n128_u64[0] = 0;
          }

          v9[-7] = v28;
          v9[-6].n128_u64[0] = v29;
          v29 = 0;
          v28 = 0uLL;
          v16 = v9[-6].n128_u64[1];
          if (v16)
          {
            v9[-5].n128_u64[0] = v16;
            operator delete(v16);
            v9[-6].n128_u64[1] = 0;
            v9[-5].n128_u64[0] = 0;
            v9[-5].n128_u64[1] = 0;
          }

          *(v9 - 88) = v30;
          v9[-5].n128_u64[1] = v31;
          v31 = 0;
          v30 = 0uLL;
          sub_100071A6C(&v9[-4]);
          v9[-4] = v32;
          v9[-3].n128_u64[0] = v33;
          v33 = 0;
          v32 = 0uLL;
          v17 = v9[-3].n128_u64[1];
          if (v17)
          {
            v9[-2].n128_u64[0] = v17;
            operator delete(v17);
            v9[-3].n128_u64[1] = 0;
            v9[-2].n128_u64[0] = 0;
            v9[-2].n128_u64[1] = 0;
          }

          *(v9 - 40) = v34;
          v9[-2].n128_u64[1] = v35;
          v35 = 0;
          v34 = 0uLL;
          sub_1001BCDF0(&v9[-1]);
          v9[-1] = v36;
          v9->n128_u64[0] = v37;
          v37 = 0;
          v36 = 0uLL;
          v38[0] = &v36;
          sub_1001BA238(v38);
          sub_1001BD39C(&v19);
        }

        v5 = v7 + 232;
        v6 += 232;
        result = v7;
      }

      while (v7 + 232 != a2);
    }
  }

  return result;
}

__n128 *sub_1001BEEBC(__int8 *a1, char *a2)
{
  v2 = a2;
  v49 = 0;
  v48 = *a1;
  LOBYTE(v49) = a1[8];
  v4 = (a1 + 16);
  v50 = *(a1 + 1);
  v51 = *(a1 + 4);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v5 = *(a1 + 40);
  v36 = (a1 + 40);
  *(a1 + 5) = 0;
  *&v6 = *(a1 + 7);
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v37 = (a1 + 64);
  v38 = *(a1 + 8);
  *(&v6 + 1) = v38;
  v39 = *(a1 + 72);
  v54 = v39;
  v52 = v5;
  v53 = v6;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v7 = *(a1 + 88);
  v8 = *(a1 + 13);
  v35 = (a1 + 88);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  v40 = v8;
  v41 = *(a1 + 14);
  v45 = v7;
  v55 = v7;
  v56 = __PAIR128__(v41, v8);
  v9 = *(a1 + 120);
  v34 = (a1 + 112);
  *(a1 + 14) = 0;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  v10 = (a1 + 136);
  v46 = v9;
  v47 = *(a1 + 136);
  v58 = v47;
  v57 = v9;
  v42 = *(a1 + 19);
  v59 = v42;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0;
  *(a1 + 19) = 0;
  v11 = (a1 + 160);
  v60 = *(a1 + 10);
  v61 = *(a1 + 22);
  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  *(a1 + 22) = 0;
  v12 = (a1 + 184);
  v62 = *(a1 + 184);
  *(a1 + 23) = 0;
  *&v6 = *(a1 + 25);
  *(a1 + 24) = 0;
  *(a1 + 25) = 0;
  v13 = (a1 + 208);
  v44 = *(a1 + 26);
  *(&v6 + 1) = v44;
  v43 = *(a1 + 216);
  v64 = v43;
  v63 = v6;
  *(a1 + 26) = 0;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  if (v48 >= *(a2 - 232))
  {
    v16 = (a1 + 232);
    do
    {
      v14 = v16;
      if (v16 >= a2)
      {
        break;
      }

      v16 = (v16 + 232);
    }

    while (v48 >= v14->n128_u8[0]);
  }

  else
  {
    v14 = a1;
    do
    {
      v15 = v14[14].n128_u8[8];
      v14 = (v14 + 232);
    }

    while (v48 >= v15);
  }

  if (v14 < a2)
  {
    do
    {
      v17 = *(v2 - 232);
      v2 -= 232;
    }

    while (v48 < v17);
  }

  while (v14 < v2)
  {
    sub_1001BFF7C(v14, v2);
    do
    {
      v18 = v14[14].n128_u8[8];
      v14 = (v14 + 232);
    }

    while (v48 >= v18);
    do
    {
      v19 = *(v2 - 232);
      v2 -= 232;
    }

    while (v48 < v19);
  }

  if (&v14[-15].n128_i8[8] != a1)
  {
    *a1 = v14[-15].n128_i8[8];
    a1[8] = v14[-14].n128_i8[0];
    sub_100071A6C(v4);
    *(a1 + 1) = *(v14 - 216);
    *(a1 + 4) = v14[-13].n128_u64[1];
    v14[-14].n128_u64[1] = 0;
    v14[-13].n128_u64[0] = 0;
    v14[-13].n128_u64[1] = 0;
    sub_100071A6C(v36);
    *(a1 + 40) = v14[-12];
    *(a1 + 7) = v14[-11].n128_u64[0];
    v14[-12].n128_u64[0] = 0;
    v14[-12].n128_u64[1] = 0;
    v14[-11].n128_u64[0] = 0;
    sub_100015184(v37, (v14 - 168));
    sub_100015184(v35, v14 - 9);
    sub_100015184(v34, (v14 - 120));
    sub_100015184(v10, v14 - 6);
    sub_100071A6C(v11);
    *(a1 + 10) = *(v14 - 72);
    *(a1 + 22) = v14[-4].n128_u64[1];
    v14[-5].n128_u64[1] = 0;
    v14[-4].n128_u64[0] = 0;
    v14[-4].n128_u64[1] = 0;
    sub_100015184(v12, v14 - 3);
    sub_1001BCDF0(v13);
    *(a1 + 13) = *(v14 - 24);
    *(a1 + 28) = v14[-1].n128_u64[1];
    v14[-2].n128_u64[1] = 0;
    v14[-1].n128_u64[0] = 0;
    v14[-1].n128_u64[1] = 0;
  }

  v14[-15].n128_u8[8] = v48;
  v14[-14].n128_u8[0] = v49;
  sub_100071A6C(&v14[-14].n128_i64[1]);
  *(v14 - 216) = v50;
  v14[-13].n128_u64[1] = v51;
  v50 = 0uLL;
  v51 = 0;
  sub_100071A6C(&v14[-12]);
  v14[-12] = v52;
  v14[-11].n128_u64[0] = v53;
  v52 = 0uLL;
  *&v53 = 0;
  v20 = v14[-11].n128_u64[1];
  if (v20)
  {
    v14[-10].n128_u64[0] = v20;
    operator delete(v20);
    v14[-11].n128_u64[1] = 0;
    v14[-10].n128_u64[0] = 0;
    v14[-10].n128_u64[1] = 0;
    v21 = v54;
    v22 = v45;
    v23 = *(&v39 + 1);
  }

  else
  {
    v23 = *(&v39 + 1);
    v21 = v39;
    v22 = v45;
  }

  v14[-11].n128_u64[1] = v38;
  v14[-10].n128_u64[0] = v21;
  v14[-10].n128_u64[1] = v23;
  *(&v53 + 1) = 0;
  v54 = 0uLL;
  v24 = v14[-9].n128_u64[0];
  if (v24)
  {
    v14[-9].n128_u64[1] = v24;
    operator delete(v24);
    *&v22 = v45;
    v14[-9].n128_u64[0] = 0;
    v14[-9].n128_u64[1] = 0;
    v14[-8].n128_u64[0] = 0;
    v25 = *(&v55 + 1);
  }

  else
  {
    v25 = *(&v22 + 1);
  }

  v26 = *(&v46 + 1);
  v14[-9].n128_u64[0] = v22;
  v14[-9].n128_u64[1] = v25;
  v14[-8].n128_u64[0] = v40;
  v55 = 0uLL;
  *&v56 = 0;
  v27 = v14[-8].n128_u64[1];
  if (v27)
  {
    v14[-7].n128_u64[0] = v27;
    operator delete(v27);
    v26 = *(&v46 + 1);
    v14[-8].n128_u64[1] = 0;
    v14[-7].n128_u64[0] = 0;
    v14[-7].n128_u64[1] = 0;
    v28 = v57;
  }

  else
  {
    v28 = v46;
  }

  v29 = v47;
  v14[-8].n128_u64[1] = v41;
  v14[-7].n128_u64[0] = v28;
  v14[-7].n128_u64[1] = v26;
  *(&v56 + 1) = 0;
  v57 = 0uLL;
  v30 = v14[-6].n128_u64[0];
  if (v30)
  {
    v14[-6].n128_u64[1] = v30;
    operator delete(v30);
    v29 = v47;
    v14[-6].n128_u64[0] = 0;
    v14[-6].n128_u64[1] = 0;
    v14[-5].n128_u64[0] = 0;
    v31 = *(&v58 + 1);
  }

  else
  {
    v31 = *(&v47 + 1);
  }

  v14[-6].n128_u64[0] = v29;
  v14[-6].n128_u64[1] = v31;
  v14[-5].n128_u64[0] = v42;
  v58 = 0uLL;
  v59 = 0;
  sub_100071A6C(&v14[-5].n128_i64[1]);
  *(v14 - 72) = v60;
  v14[-4].n128_u64[1] = v61;
  v60 = 0uLL;
  v61 = 0;
  v32 = v14[-3].n128_u64[0];
  if (v32)
  {
    v14[-3].n128_u64[1] = v32;
    operator delete(v32);
    v14[-3].n128_u64[0] = 0;
    v14[-3].n128_u64[1] = 0;
    v14[-2].n128_u64[0] = 0;
  }

  v14[-3] = v62;
  v14[-2].n128_u64[0] = v63;
  v62 = 0uLL;
  *&v63 = 0;
  sub_1001BCDF0(&v14[-2].n128_i64[1]);
  v14[-2].n128_u64[1] = v44;
  v14[-1] = v43;
  *(&v63 + 1) = 0;
  v64 = 0uLL;
  v65 = &v63 + 1;
  sub_1001BA238(&v65);
  sub_1001BD39C(&v49);
  return v14;
}

unsigned __int8 *sub_1001BF3CC(unsigned __int8 *a1, char *a2)
{
  v4 = 0;
  v56 = 0;
  v5 = *a1;
  v55 = *a1;
  LOBYTE(v56) = a1[8];
  v57 = *(a1 + 1);
  v58 = *(a1 + 4);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v6 = *(a1 + 40);
  v42 = (a1 + 16);
  v43 = (a1 + 40);
  *(a1 + 5) = 0;
  *&v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v46 = v8;
  *(&v7 + 1) = v8;
  v45 = *(a1 + 72);
  v61 = v45;
  v59 = v6;
  v60 = v7;
  v44 = (a1 + 64);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v9 = *(a1 + 88);
  v10 = *(a1 + 13);
  v41 = (a1 + 88);
  *(a1 + 11) = 0;
  v11 = *(a1 + 14);
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  v47 = v10;
  v48 = v11;
  *&v7 = v10;
  *(&v7 + 1) = v11;
  v52 = v9;
  v62 = v9;
  v63 = v7;
  v12 = *(a1 + 120);
  *(a1 + 14) = 0;
  v13 = *(a1 + 136);
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  v53 = v12;
  v54 = v13;
  v65 = v13;
  v64 = v12;
  v49 = *(a1 + 19);
  v66 = v49;
  v39 = (a1 + 136);
  v40 = (a1 + 112);
  *(a1 + 17) = 0;
  *(a1 + 18) = 0;
  *(a1 + 19) = 0;
  v14 = (a1 + 160);
  v67 = *(a1 + 10);
  v68 = *(a1 + 22);
  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  *(a1 + 22) = 0;
  v15 = (a1 + 184);
  v69 = *(a1 + 184);
  *(a1 + 23) = 0;
  *&v13 = *(a1 + 25);
  *(a1 + 24) = 0;
  *(a1 + 25) = 0;
  v16 = (a1 + 208);
  v51 = *(a1 + 26);
  *(&v13 + 1) = v51;
  v50 = *(a1 + 216);
  v71 = v50;
  v70 = v13;
  *(a1 + 26) = 0;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  do
  {
    v17 = a1[v4 + 232];
    v4 += 232;
  }

  while (v17 < v5);
  v18 = &a1[v4];
  if (v4 == 232)
  {
    do
    {
      if (v18 >= a2)
      {
        break;
      }

      v20 = *(a2 - 232);
      a2 -= 232;
    }

    while (v20 >= v5);
  }

  else
  {
    do
    {
      v19 = *(a2 - 232);
      a2 -= 232;
    }

    while (v19 >= v5);
  }

  if (v18 >= a2)
  {
    v21 = &a1[v4];
  }

  else
  {
    v21 = &a1[v4];
    v22 = a2;
    do
    {
      sub_1001BFF7C(v21, v22);
      do
      {
        v23 = v21[232];
        v21 += 232;
      }

      while (v23 < v55);
      do
      {
        v24 = *(v22 - 232);
        v22 -= 232;
      }

      while (v24 >= v55);
    }

    while (v21 < v22);
  }

  if (v21 - 232 != a1)
  {
    *a1 = *(v21 - 232);
    a1[8] = *(v21 - 224);
    sub_100071A6C(v42);
    *(a1 + 1) = *(v21 - 216);
    *(a1 + 4) = *(v21 - 25);
    *(v21 - 27) = 0;
    *(v21 - 26) = 0;
    *(v21 - 25) = 0;
    sub_100071A6C(v43);
    *(a1 + 40) = *(v21 - 12);
    *(a1 + 7) = *(v21 - 22);
    *(v21 - 24) = 0;
    *(v21 - 23) = 0;
    *(v21 - 22) = 0;
    sub_100015184(v44, (v21 - 168));
    sub_100015184(v41, v21 - 9);
    sub_100015184(v40, (v21 - 120));
    sub_100015184(v39, v21 - 6);
    sub_100071A6C(v14);
    *(a1 + 10) = *(v21 - 72);
    *(a1 + 22) = *(v21 - 7);
    *(v21 - 9) = 0;
    *(v21 - 8) = 0;
    *(v21 - 7) = 0;
    sub_100015184(v15, v21 - 3);
    sub_1001BCDF0(v16);
    *(a1 + 13) = *(v21 - 24);
    *(a1 + 28) = *(v21 - 1);
    *(v21 - 3) = 0;
    *(v21 - 2) = 0;
    *(v21 - 1) = 0;
  }

  *(v21 - 232) = v55;
  *(v21 - 224) = v56;
  sub_100071A6C((v21 - 216));
  *(v21 - 216) = v57;
  *(v21 - 25) = v58;
  v57 = 0uLL;
  v58 = 0;
  sub_100071A6C((v21 - 192));
  *(v21 - 12) = v59;
  *(v21 - 22) = v60;
  v59 = 0uLL;
  *&v60 = 0;
  v25 = *(v21 - 21);
  if (v25)
  {
    *(v21 - 20) = v25;
    operator delete(v25);
    *(v21 - 21) = 0;
    *(v21 - 20) = 0;
    *(v21 - 19) = 0;
    v26 = v61;
    v27 = v52;
    v28 = *(&v45 + 1);
  }

  else
  {
    v28 = *(&v45 + 1);
    v26 = v45;
    v27 = v52;
  }

  *(v21 - 21) = v46;
  *(v21 - 20) = v26;
  *(v21 - 19) = v28;
  *(&v60 + 1) = 0;
  v61 = 0uLL;
  v29 = *(v21 - 18);
  if (v29)
  {
    *(v21 - 17) = v29;
    operator delete(v29);
    *&v27 = v52;
    *(v21 - 18) = 0;
    *(v21 - 17) = 0;
    *(v21 - 16) = 0;
    v30 = *(&v62 + 1);
  }

  else
  {
    v30 = *(&v27 + 1);
  }

  v31 = *(&v53 + 1);
  *(v21 - 18) = v27;
  *(v21 - 17) = v30;
  *(v21 - 16) = v47;
  v62 = 0uLL;
  *&v63 = 0;
  v32 = *(v21 - 15);
  if (v32)
  {
    *(v21 - 14) = v32;
    operator delete(v32);
    v31 = *(&v53 + 1);
    *(v21 - 15) = 0;
    *(v21 - 14) = 0;
    *(v21 - 13) = 0;
    v33 = v64;
  }

  else
  {
    v33 = v53;
  }

  v34 = v54;
  *(v21 - 15) = v48;
  *(v21 - 14) = v33;
  *(v21 - 13) = v31;
  *(&v63 + 1) = 0;
  v64 = 0uLL;
  v35 = *(v21 - 12);
  if (v35)
  {
    *(v21 - 11) = v35;
    operator delete(v35);
    v34 = v54;
    *(v21 - 12) = 0;
    *(v21 - 11) = 0;
    *(v21 - 10) = 0;
    v36 = *(&v65 + 1);
  }

  else
  {
    v36 = *(&v54 + 1);
  }

  *(v21 - 12) = v34;
  *(v21 - 11) = v36;
  *(v21 - 10) = v49;
  v65 = 0uLL;
  v66 = 0;
  sub_100071A6C((v21 - 72));
  *(v21 - 72) = v67;
  *(v21 - 7) = v68;
  v67 = 0uLL;
  v68 = 0;
  v37 = *(v21 - 6);
  if (v37)
  {
    *(v21 - 5) = v37;
    operator delete(v37);
    *(v21 - 6) = 0;
    *(v21 - 5) = 0;
    *(v21 - 4) = 0;
  }

  *(v21 - 3) = v69;
  *(v21 - 4) = v70;
  v69 = 0uLL;
  *&v70 = 0;
  sub_1001BCDF0(v21 - 3);
  *(v21 - 3) = v51;
  *(v21 - 1) = v50;
  *(&v70 + 1) = 0;
  v71 = 0uLL;
  v72 = &v70 + 1;
  sub_1001BA238(&v72);
  sub_1001BD39C(&v56);
  return v21 - 232;
}

BOOL sub_1001BF8F0(char *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0x34F72C234F72C235 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a1[232];
        v5 = (a2 - 232);
        v10 = *(a2 - 232);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          sub_1001BFF7C(a1 + 232, v5);
          if (v3[232] >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = v3 + 232;
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          sub_1001BFF7C(a1, a1 + 232);
          if (*v5 >= v3[232])
          {
            return 1;
          }

          a1 = v3 + 232;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        sub_1001BFF7C(a1, v8);
        return 1;
      case 4:
        sub_1001BE558(a1, a1 + 232, a1 + 464, a2 - 232);
        return 1;
      case 5:
        sub_1001BE558(a1, a1 + 232, a1 + 464, a1 + 696);
        v7 = *(v2 - 232);
        v6 = (v2 - 232);
        if (v7 >= v3[696])
        {
          return 1;
        }

        sub_1001BFF7C(v3 + 696, v6);
        if (v3[696] >= v3[464])
        {
          return 1;
        }

        sub_1001BFF7C(v3 + 464, v3 + 696);
        if (v3[464] >= v3[232])
        {
          return 1;
        }

        sub_1001BFF7C(v3 + 232, v3 + 464);
        if (v3[232] >= *v3)
        {
          return 1;
        }

        v8 = v3 + 232;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 232);
      if (*(a2 - 232) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v11 = (a1 + 464);
  v12 = a1[232];
  v13 = a1[464];
  if (v12 < *a1)
  {
    if (v13 >= v12)
    {
      sub_1001BFF7C(a1, a1 + 232);
      if (v3[464] >= v3[232])
      {
        goto LABEL_31;
      }

      a1 = v3 + 232;
    }

    v14 = v3 + 464;
    goto LABEL_30;
  }

  if (v13 < v12)
  {
    sub_1001BFF7C(a1 + 232, a1 + 464);
    if (v3[232] < *v3)
    {
      a1 = v3;
      v14 = v3 + 232;
LABEL_30:
      sub_1001BFF7C(a1, v14);
    }
  }

LABEL_31:
  v15 = (v3 + 696);
  if (v3 + 696 == v2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v38 = v2;
  while (1)
  {
    v18 = *v15;
    if (v18 < *v11)
    {
      v39 = v17;
      v43[0] = 0;
      v42 = v18;
      LOBYTE(v43[0]) = v15[8];
      *&v43[1] = *(v15 + 1);
      v43[3] = *(v15 + 4);
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *&v43[4] = *(v15 + 40);
      v43[6] = *(v15 + 7);
      *(v15 + 4) = 0;
      *(v15 + 5) = 0;
      *(v15 + 6) = 0;
      *(v15 + 7) = 0;
      *&v43[7] = *(v15 + 4);
      v43[9] = *(v15 + 10);
      *(v15 + 8) = 0;
      *(v15 + 9) = 0;
      *&v43[10] = *(v15 + 88);
      v43[12] = *(v15 + 13);
      *(v15 + 10) = 0;
      *(v15 + 11) = 0;
      *(v15 + 12) = 0;
      *(v15 + 13) = 0;
      *&v43[13] = *(v15 + 7);
      v19 = *(v15 + 16);
      *(v15 + 14) = 0;
      *(v15 + 15) = 0;
      *&v43[16] = *(v15 + 136);
      v20 = *(v15 + 19);
      v43[15] = v19;
      v43[18] = v20;
      *(v15 + 16) = 0;
      *(v15 + 17) = 0;
      *(v15 + 18) = 0;
      *(v15 + 19) = 0;
      *&v43[19] = *(v15 + 10);
      v21 = *(v15 + 22);
      *(v15 + 20) = 0;
      *(v15 + 21) = 0;
      *&v43[22] = *(v15 + 184);
      v23 = *(v15 + 25);
      v43[21] = v21;
      v43[24] = v23;
      *(v15 + 22) = 0;
      *(v15 + 23) = 0;
      *(v15 + 24) = 0;
      *(v15 + 25) = 0;
      *v44 = *(v15 + 13);
      *&v44[16] = *(v15 + 28);
      *(v15 + 26) = 0;
      *(v15 + 27) = 0;
      v40 = v16;
      v41 = v15;
      *(v15 + 28) = 0;
      v22 = v16;
      LOBYTE(v23) = *v11;
      while (1)
      {
        v24 = v3;
        v25 = &v3[v22];
        v25[696] = v23;
        v25[704] = v3[v22 + 472];
        sub_100071A6C(&v3[v22 + 712]);
        *&v3[v22 + 712] = *&v3[v22 + 480];
        *(v25 + 91) = *(v25 + 62);
        *(v25 + 62) = 0;
        *(v25 + 30) = 0u;
        v26 = &v3[v22 + 504];
        sub_100071A6C(&v3[v22 + 736]);
        *(v25 + 46) = *v26;
        *(v25 + 94) = *(v25 + 65);
        *(v25 + 65) = 0;
        *v26 = 0u;
        v27 = &v3[v22 + 528];
        sub_100015184((v25 + 760), v25 + 33);
        v28 = &v3[v22 + 552];
        sub_100015184((v25 + 784), (v25 + 552));
        v29 = &v3[v22 + 576];
        sub_100015184((v25 + 808), v25 + 36);
        v30 = &v3[v22 + 600];
        sub_100015184((v25 + 832), (v25 + 600));
        sub_100071A6C(&v3[v22 + 856]);
        *(v25 + 856) = *(v25 + 39);
        *(v25 + 109) = *(v25 + 80);
        *(v25 + 80) = 0;
        *(v25 + 39) = 0u;
        v31 = &v3[v22 + 648];
        sub_100015184((v25 + 880), (v25 + 648));
        sub_1001BCDF0(&v3[v22 + 904]);
        *(v25 + 904) = *(v25 + 42);
        *(v25 + 115) = *(v25 + 86);
        *(v25 + 86) = 0;
        *(v25 + 42) = 0u;
        if (v22 == -464)
        {
          break;
        }

        LODWORD(v23) = v25[232];
        v22 -= 232;
        if (v42 >= v23)
        {
          v3 += v22 + 696;
          break;
        }
      }

      *v3 = v42;
      v3[8] = v43[0];
      sub_100071A6C((v25 + 480));
      *(v25 + 60) = v43[1];
      *(v3 + 24) = *&v43[2];
      memset(&v43[1], 0, 24);
      sub_100071A6C((v25 + 504));
      *(v25 + 63) = v43[4];
      *(v3 + 3) = *&v43[5];
      memset(&v43[4], 0, 24);
      v32 = *(v25 + 66);
      v2 = v38;
      if (v32)
      {
        *(v3 + 9) = v32;
        operator delete(v32);
        *v27 = 0;
        *(v25 + 67) = 0;
        *(v25 + 68) = 0;
      }

      *v27 = v43[7];
      *(v3 + 72) = *&v43[8];
      memset(&v43[7], 0, 24);
      v33 = *v28;
      if (*v28)
      {
        *(v3 + 12) = v33;
        operator delete(v33);
        *v28 = 0;
        *(v25 + 70) = 0;
        *(v25 + 71) = 0;
      }

      *v28 = v43[10];
      *(v3 + 6) = *&v43[11];
      memset(&v43[10], 0, 24);
      v34 = *v29;
      if (*v29)
      {
        *(v3 + 15) = v34;
        operator delete(v34);
        *v29 = 0;
        *(v25 + 73) = 0;
        *(v25 + 74) = 0;
      }

      *v29 = v43[13];
      *(v3 + 120) = *&v43[14];
      memset(&v43[13], 0, 24);
      v35 = *v30;
      if (*v30)
      {
        *(v3 + 18) = v35;
        operator delete(v35);
        *v30 = 0;
        *(v25 + 76) = 0;
        *(v25 + 77) = 0;
      }

      *v30 = v43[16];
      *(v3 + 9) = *&v43[17];
      memset(&v43[16], 0, 24);
      sub_100071A6C((v25 + 624));
      *(v25 + 78) = v43[19];
      *(v3 + 168) = *&v43[20];
      memset(&v43[19], 0, 24);
      v36 = *v31;
      if (*v31)
      {
        *(v3 + 24) = v36;
        operator delete(v36);
        *v31 = 0;
        *(v25 + 82) = 0;
        *(v25 + 83) = 0;
      }

      *v31 = v43[22];
      *(v3 + 12) = *&v43[23];
      memset(&v43[22], 0, 24);
      sub_1001BCDF0(v25 + 84);
      *(v25 + 84) = *v44;
      *(v3 + 216) = *&v44[8];
      memset(v44, 0, sizeof(v44));
      v17 = v39 + 1;
      v45 = v44;
      sub_1001BA238(&v45);
      sub_1001BD39C(v43);
      v3 = v24;
      v16 = v40;
      v15 = v41;
      if (v39 == 7)
      {
        return v41 + 232 == v38;
      }
    }

    v11 = v15;
    v16 += 232;
    v15 += 232;
    if (v15 == v2)
    {
      return 1;
    }
  }
}

uint64_t sub_1001BFF7C(char *a1, char *a2)
{
  v27 = 0;
  v26 = *a1;
  LOBYTE(v27) = a1[8];
  v4 = a1 + 16;
  v28 = *(a1 + 1);
  v29 = *(a1 + 4);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v5 = a1 + 40;
  v30 = *(a1 + 40);
  v31 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v22 = (a1 + 64);
  v32 = *(a1 + 4);
  v33 = *(a1 + 10);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v21 = (a1 + 88);
  v34 = *(a1 + 88);
  v35 = *(a1 + 13);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  v6 = (a1 + 112);
  v36 = *(a1 + 7);
  v7 = *(a1 + 16);
  *(a1 + 14) = 0;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  v8 = (a1 + 136);
  v38 = *(a1 + 136);
  v9 = *(a1 + 19);
  v37 = v7;
  v39 = v9;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0;
  *(a1 + 19) = 0;
  v10 = a1 + 160;
  v40 = *(a1 + 10);
  v41 = *(a1 + 22);
  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  *(a1 + 22) = 0;
  v11 = (a1 + 184);
  v42 = *(a1 + 184);
  v12 = *(a1 + 25);
  *(a1 + 23) = 0;
  *(a1 + 24) = 0;
  *(a1 + 25) = 0;
  v13 = (a1 + 208);
  v23 = v12;
  *&v14 = v12;
  v25 = *(a1 + 26);
  *(&v14 + 1) = v25;
  v24 = *(a1 + 216);
  v44 = v24;
  v43 = v14;
  *(a1 + 26) = 0;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  *a1 = *a2;
  a1[8] = a2[8];
  sub_100071A6C((a1 + 16));
  *v4 = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  sub_100071A6C(v5);
  *v5 = *(a2 + 40);
  *(a1 + 7) = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  sub_100015184(v22, a2 + 4);
  sub_100015184(v21, (a2 + 88));
  sub_100015184(v6, a2 + 7);
  sub_100015184(v8, (a2 + 136));
  sub_100071A6C(v10);
  *v10 = *(a2 + 10);
  *(a1 + 22) = *(a2 + 22);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  sub_100015184(v11, (a2 + 184));
  sub_1001BCDF0(v13);
  *v13 = *(a2 + 13);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *a2 = v26;
  a2[8] = v27;
  sub_100071A6C((a2 + 16));
  *(a2 + 1) = v28;
  *(a2 + 4) = v29;
  v29 = 0;
  v28 = 0uLL;
  sub_100071A6C((a2 + 40));
  *(a2 + 40) = v30;
  *(a2 + 7) = v31;
  v31 = 0;
  v30 = 0uLL;
  v15 = *(a2 + 8);
  if (v15)
  {
    *(a2 + 9) = v15;
    operator delete(v15);
  }

  *(a2 + 4) = v32;
  *(a2 + 10) = v33;
  v33 = 0;
  v32 = 0uLL;
  v16 = *(a2 + 11);
  if (v16)
  {
    *(a2 + 12) = v16;
    operator delete(v16);
  }

  *(a2 + 88) = v34;
  *(a2 + 13) = v35;
  v35 = 0;
  v34 = 0uLL;
  v17 = *(a2 + 14);
  if (v17)
  {
    *(a2 + 15) = v17;
    operator delete(v17);
  }

  *(a2 + 7) = v36;
  *(a2 + 16) = v37;
  v37 = 0;
  v36 = 0uLL;
  v18 = *(a2 + 17);
  if (v18)
  {
    *(a2 + 18) = v18;
    operator delete(v18);
  }

  *(a2 + 136) = v38;
  *(a2 + 19) = v39;
  v39 = 0;
  v38 = 0uLL;
  sub_100071A6C((a2 + 160));
  *(a2 + 10) = v40;
  *(a2 + 22) = v41;
  v41 = 0;
  v40 = 0uLL;
  v19 = *(a2 + 23);
  if (v19)
  {
    *(a2 + 24) = v19;
    operator delete(v19);
  }

  *(a2 + 184) = v42;
  *(a2 + 25) = v23;
  *&v43 = 0;
  v42 = 0uLL;
  sub_1001BCDF0(a2 + 26);
  *(a2 + 26) = v25;
  *(a2 + 216) = v24;
  v44 = 0uLL;
  *(&v43 + 1) = 0;
  v45 = &v43 + 1;
  sub_1001BA238(&v45);
  return sub_1001BD39C(&v27);
}

char *sub_1001C0348(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x34F72C234F72C235 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 233)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[232 * v10];
      do
      {
        sub_1001C0480(a1, a4, v9, v12);
        v12 -= 232;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          sub_1001BFF7C(v13, a1);
          sub_1001C0480(a1, a4, v9, a1);
        }

        v13 += 232;
      }

      while (v13 != a3);
    }

    if (v8 >= 233)
    {
      v14 = 0x34F72C234F72C235 * (v8 >> 3);
      do
      {
        sub_1001C0994(a1, v6, a4, v14);
        v6 -= 232;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_1001C0480(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v68[12] = v4;
    v68[13] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= 0x34F72C234F72C235 * (&a4[-result] >> 3))
    {
      v11 = (0x69EE58469EE5846ALL * (&a4[-result] >> 3)) | 1;
      v12 = (result + 232 * v11);
      if (0x69EE58469EE5846ALL * (&a4[-result] >> 3) + 2 >= a3)
      {
        v13 = *v12;
      }

      else
      {
        v13 = *v12;
        v14 = v12[232];
        v15 = v13 >= v14;
        if (v13 <= v14)
        {
          v13 = v12[232];
        }

        if (!v15)
        {
          v12 += 232;
          v11 = 0x69EE58469EE5846ALL * (&a4[-result] >> 3) + 2;
        }
      }

      v16 = *a4;
      if (v13 >= v16)
      {
        v51 = 0;
        v50 = v16;
        LOBYTE(v51) = a4[8];
        v52 = *(a4 + 1);
        v53 = *(a4 + 4);
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = *(a4 + 40);
        *(a4 + 4) = 0;
        *(a4 + 5) = 0;
        *&v18 = *(a4 + 7);
        *(a4 + 6) = 0;
        *(a4 + 7) = 0;
        v42 = *(a4 + 8);
        *(&v18 + 1) = v42;
        v43 = *(a4 + 72);
        v54 = v17;
        v55 = v18;
        *(a4 + 8) = 0;
        *(a4 + 9) = 0;
        v19 = *(a4 + 88);
        *(a4 + 10) = 0;
        *(a4 + 11) = 0;
        v21 = *(a4 + 13);
        v20 = *(a4 + 14);
        *(a4 + 12) = 0;
        *(a4 + 13) = 0;
        v44 = v21;
        v45 = v20;
        *&v18 = v21;
        *(&v18 + 1) = v20;
        v47 = v19;
        v56 = v43;
        v57 = v19;
        v58 = v18;
        v22 = *(a4 + 120);
        *(a4 + 14) = 0;
        *(a4 + 15) = 0;
        v48 = v22;
        v49 = *(a4 + 136);
        v60 = v49;
        v59 = v22;
        v46 = *(a4 + 19);
        v61 = v46;
        *(a4 + 16) = 0;
        *(a4 + 17) = 0;
        *(a4 + 18) = 0;
        *(a4 + 19) = 0;
        v62 = *(a4 + 10);
        v24 = *(a4 + 22);
        *(a4 + 20) = 0;
        *(a4 + 21) = 0;
        v64 = *(a4 + 184);
        v23 = *(a4 + 25);
        v63 = v24;
        v65 = v23;
        *(a4 + 22) = 0;
        *(a4 + 23) = 0;
        *(a4 + 24) = 0;
        *(a4 + 25) = 0;
        v66 = *(a4 + 13);
        v67 = *(a4 + 28);
        *(a4 + 26) = 0;
        *(a4 + 27) = 0;
        *(a4 + 28) = 0;
        LOBYTE(v24) = *v12;
        while (1)
        {
          v25 = v12;
          *v7 = v24;
          v7[8] = v12[8];
          sub_100071A6C((v7 + 16));
          *(v7 + 1) = *(v25 + 1);
          *(v7 + 4) = *(v25 + 4);
          *(v25 + 2) = 0;
          *(v25 + 3) = 0;
          *(v25 + 4) = 0;
          sub_100071A6C((v7 + 40));
          *(v7 + 40) = *(v25 + 40);
          *(v7 + 7) = *(v25 + 7);
          *(v25 + 5) = 0;
          *(v25 + 6) = 0;
          *(v25 + 7) = 0;
          sub_100015184((v7 + 64), v25 + 4);
          sub_100015184((v7 + 88), (v25 + 88));
          sub_100015184((v7 + 112), v25 + 7);
          sub_100015184((v7 + 136), (v25 + 136));
          sub_100071A6C((v7 + 160));
          *(v7 + 10) = *(v25 + 10);
          *(v7 + 22) = *(v25 + 22);
          *(v25 + 20) = 0;
          *(v25 + 21) = 0;
          *(v25 + 22) = 0;
          sub_100015184((v7 + 184), (v25 + 184));
          sub_1001BCDF0(v7 + 26);
          *(v7 + 13) = *(v25 + 13);
          *(v7 + 28) = *(v25 + 28);
          *(v25 + 26) = 0;
          *(v25 + 27) = 0;
          *(v25 + 28) = 0;
          if (v9 < v11)
          {
            break;
          }

          v12 = (v8 + 232 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            LODWORD(v24) = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            LODWORD(v24) = *v12;
            v26 = v12[232];
            v27 = v24 >= v26;
            if (v24 <= v26)
            {
              LODWORD(v24) = v12[232];
            }

            if (v27)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 += 232;
              v11 = 2 * v11 + 2;
            }
          }

          v28 = v50;
          v7 = v25;
          if (v24 < v50)
          {
            goto LABEL_23;
          }
        }

        v28 = v50;
LABEL_23:
        *v25 = v28;
        v25[8] = v51;
        sub_100071A6C((v25 + 16));
        *(v25 + 1) = v52;
        *(v25 + 4) = v53;
        v52 = 0uLL;
        v53 = 0;
        sub_100071A6C((v25 + 40));
        *(v25 + 40) = v54;
        *(v25 + 7) = v55;
        v54 = 0uLL;
        *&v55 = 0;
        v29 = *(v25 + 8);
        if (v29)
        {
          *(v25 + 9) = v29;
          operator delete(v29);
          *(v25 + 8) = 0;
          *(v25 + 9) = 0;
          *(v25 + 10) = 0;
          v30 = v56;
          v31 = v47;
          v32 = *(&v43 + 1);
        }

        else
        {
          v32 = *(&v43 + 1);
          v30 = v43;
          v31 = v47;
        }

        *(v25 + 8) = v42;
        *(v25 + 9) = v30;
        *(v25 + 10) = v32;
        *(&v55 + 1) = 0;
        v56 = 0uLL;
        v33 = *(v25 + 11);
        if (v33)
        {
          *(v25 + 12) = v33;
          operator delete(v33);
          *&v31 = v47;
          *(v25 + 11) = 0;
          *(v25 + 12) = 0;
          *(v25 + 13) = 0;
          v34 = *(&v57 + 1);
        }

        else
        {
          v34 = *(&v31 + 1);
        }

        v35 = *(&v48 + 1);
        *(v25 + 11) = v31;
        *(v25 + 12) = v34;
        *(v25 + 13) = v44;
        *&v58 = 0;
        v57 = 0uLL;
        v36 = *(v25 + 14);
        if (v36)
        {
          *(v25 + 15) = v36;
          operator delete(v36);
          v35 = *(&v48 + 1);
          *(v25 + 14) = 0;
          *(v25 + 15) = 0;
          *(v25 + 16) = 0;
          v37 = v59;
        }

        else
        {
          v37 = v48;
        }

        v38 = v49;
        *(v25 + 14) = v45;
        *(v25 + 15) = v37;
        *(v25 + 16) = v35;
        *(&v58 + 1) = 0;
        v59 = 0uLL;
        v39 = *(v25 + 17);
        if (v39)
        {
          *(v25 + 18) = v39;
          operator delete(v39);
          v38 = v49;
          *(v25 + 17) = 0;
          *(v25 + 18) = 0;
          *(v25 + 19) = 0;
          v40 = *(&v60 + 1);
        }

        else
        {
          v40 = *(&v49 + 1);
        }

        *(v25 + 17) = v38;
        *(v25 + 18) = v40;
        *(v25 + 19) = v46;
        v61 = 0;
        v60 = 0uLL;
        sub_100071A6C((v25 + 160));
        *(v25 + 10) = v62;
        *(v25 + 22) = v63;
        v62 = 0uLL;
        v63 = 0;
        v41 = *(v25 + 23);
        if (v41)
        {
          *(v25 + 24) = v41;
          operator delete(v41);
          *(v25 + 23) = 0;
          *(v25 + 24) = 0;
          *(v25 + 25) = 0;
        }

        *(v25 + 184) = v64;
        *(v25 + 25) = v65;
        v64 = 0uLL;
        v65 = 0;
        sub_1001BCDF0(v25 + 26);
        *(v25 + 13) = v66;
        *(v25 + 28) = v67;
        v66 = 0uLL;
        v67 = 0;
        v68[0] = &v66;
        sub_1001BA238(v68);
        return sub_1001BD39C(&v51);
      }
    }
  }

  return result;
}

unsigned __int8 *sub_1001C0994(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v25 = 0;
    v24 = *result;
    LOBYTE(v25) = result[8];
    v26 = *(result + 1);
    v27 = *(result + 4);
    *(result + 2) = 0;
    *(result + 3) = 0;
    v28 = *(result + 40);
    v29 = *(result + 7);
    *(result + 4) = 0;
    *(result + 5) = 0;
    *(result + 6) = 0;
    *(result + 7) = 0;
    v30 = *(result + 4);
    v31 = *(result + 10);
    *(result + 8) = 0;
    *(result + 9) = 0;
    v32 = *(result + 88);
    v33 = *(result + 13);
    *(result + 10) = 0;
    *(result + 11) = 0;
    *(result + 12) = 0;
    *(result + 13) = 0;
    v34 = *(result + 7);
    v7 = *(result + 16);
    *(result + 14) = 0;
    *(result + 15) = 0;
    v36 = *(result + 136);
    v8 = *(result + 19);
    v35 = v7;
    v37 = v8;
    *(result + 16) = 0;
    *(result + 17) = 0;
    *(result + 18) = 0;
    *(result + 19) = 0;
    v38 = *(result + 10);
    v9 = *(result + 22);
    *(result + 20) = 0;
    *(result + 21) = 0;
    v40 = *(result + 184);
    v10 = *(result + 25);
    v39 = v9;
    v41 = v10;
    *(result + 22) = 0;
    *(result + 23) = 0;
    *(result + 24) = 0;
    *(result + 25) = 0;
    v42 = *(result + 13);
    v43 = *(result + 28);
    *(result + 26) = 0;
    *(result + 27) = 0;
    *(result + 28) = 0;
    v11 = sub_1001C0F5C(result, a3, a4);
    v12 = v11;
    if (v11 == (a2 - 232))
    {
      *v11 = v24;
      v11[8] = v25;
      sub_100071A6C((v11 + 16));
      *(v12 + 1) = v26;
      *(v12 + 4) = v27;
      v26 = 0uLL;
      v27 = 0;
      sub_100071A6C((v12 + 40));
      *(v12 + 40) = v28;
      v19 = *(v12 + 8);
      *(v12 + 7) = v29;
      v28 = 0uLL;
      v29 = 0;
      if (v19)
      {
        *(v12 + 9) = v19;
        operator delete(v19);
        *(v12 + 8) = 0;
        *(v12 + 9) = 0;
        *(v12 + 10) = 0;
      }

      v20 = *(v12 + 11);
      *(v12 + 4) = v30;
      *(v12 + 10) = v31;
      v30 = 0uLL;
      v31 = 0;
      if (v20)
      {
        *(v12 + 12) = v20;
        operator delete(v20);
        *(v12 + 11) = 0;
        *(v12 + 12) = 0;
        *(v12 + 13) = 0;
      }

      v21 = *(v12 + 14);
      *(v12 + 88) = v32;
      *(v12 + 13) = v33;
      v32 = 0uLL;
      v33 = 0;
      if (v21)
      {
        *(v12 + 15) = v21;
        operator delete(v21);
        *(v12 + 14) = 0;
        *(v12 + 15) = 0;
        *(v12 + 16) = 0;
      }

      v22 = *(v12 + 17);
      *(v12 + 7) = v34;
      *(v12 + 16) = v35;
      v34 = 0uLL;
      v35 = 0;
      if (v22)
      {
        *(v12 + 18) = v22;
        operator delete(v22);
        *(v12 + 17) = 0;
        *(v12 + 18) = 0;
        *(v12 + 19) = 0;
      }

      *(v12 + 136) = v36;
      *(v12 + 19) = v37;
      v36 = 0uLL;
      v37 = 0;
      sub_100071A6C((v12 + 160));
      *(v12 + 10) = v38;
      v23 = *(v12 + 23);
      *(v12 + 22) = v39;
      v38 = 0uLL;
      v39 = 0;
      if (v23)
      {
        *(v12 + 24) = v23;
        operator delete(v23);
        *(v12 + 23) = 0;
        *(v12 + 24) = 0;
        *(v12 + 25) = 0;
      }

      *(v12 + 184) = v40;
      *(v12 + 25) = v41;
      v40 = 0uLL;
      v41 = 0;
      sub_1001BCDF0(v12 + 26);
      *(v12 + 13) = v42;
      *(v12 + 28) = v43;
      v42 = 0uLL;
      v43 = 0;
    }

    else
    {
      *v11 = *(a2 - 232);
      v11[8] = *(a2 - 224);
      sub_100071A6C((v11 + 16));
      *(v12 + 1) = *(a2 - 216);
      *(v12 + 4) = *(a2 - 200);
      *(a2 - 216) = 0;
      *(a2 - 208) = 0;
      *(a2 - 200) = 0;
      sub_100071A6C((v12 + 40));
      *(v12 + 40) = *(a2 - 192);
      *(v12 + 7) = *(a2 - 176);
      *(a2 - 192) = 0;
      *(a2 - 184) = 0;
      *(a2 - 176) = 0;
      sub_100015184((v12 + 64), (a2 - 168));
      sub_100015184((v12 + 88), (a2 - 144));
      sub_100015184((v12 + 112), (a2 - 120));
      sub_100015184((v12 + 136), (a2 - 96));
      sub_100071A6C((v12 + 160));
      *(v12 + 10) = *(a2 - 72);
      *(v12 + 22) = *(a2 - 56);
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      *(a2 - 56) = 0;
      sub_100015184((v12 + 184), (a2 - 48));
      sub_1001BCDF0(v12 + 26);
      v13 = (a2 - 24);
      *(v12 + 13) = *(a2 - 24);
      *(v12 + 28) = *(a2 - 8);
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      *(a2 - 232) = v24;
      *(a2 - 224) = v25;
      sub_100071A6C(a2 - 216);
      *(a2 - 216) = v26;
      *(a2 - 200) = v27;
      v27 = 0;
      v26 = 0uLL;
      sub_100071A6C(a2 - 192);
      *(a2 - 192) = v28;
      *(a2 - 176) = v29;
      v29 = 0;
      v28 = 0uLL;
      v14 = *(a2 - 168);
      if (v14)
      {
        *(a2 - 160) = v14;
        operator delete(v14);
        *(a2 - 168) = 0;
        *(a2 - 160) = 0;
        *(a2 - 152) = 0;
      }

      *(a2 - 168) = v30;
      *(a2 - 152) = v31;
      v31 = 0;
      v30 = 0uLL;
      v15 = *(a2 - 144);
      if (v15)
      {
        *(a2 - 136) = v15;
        operator delete(v15);
        *(a2 - 144) = 0;
        *(a2 - 136) = 0;
        *(a2 - 128) = 0;
      }

      *(a2 - 144) = v32;
      *(a2 - 128) = v33;
      v33 = 0;
      v32 = 0uLL;
      v16 = *(a2 - 120);
      if (v16)
      {
        *(a2 - 112) = v16;
        operator delete(v16);
        *(a2 - 120) = 0;
        *(a2 - 112) = 0;
        *(a2 - 104) = 0;
      }

      *(a2 - 120) = v34;
      *(a2 - 104) = v35;
      v35 = 0;
      v34 = 0uLL;
      v17 = *(a2 - 96);
      if (v17)
      {
        *(a2 - 88) = v17;
        operator delete(v17);
        *(a2 - 96) = 0;
        *(a2 - 88) = 0;
        *(a2 - 80) = 0;
      }

      *(a2 - 96) = v36;
      *(a2 - 80) = v37;
      v37 = 0;
      v36 = 0uLL;
      sub_100071A6C(a2 - 72);
      *(a2 - 72) = v38;
      *(a2 - 56) = v39;
      v39 = 0;
      v38 = 0uLL;
      v18 = *(a2 - 48);
      if (v18)
      {
        *(a2 - 40) = v18;
        operator delete(v18);
        *(a2 - 48) = 0;
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
      }

      *(a2 - 48) = v40;
      *(a2 - 32) = v41;
      v41 = 0;
      v40 = 0uLL;
      sub_1001BCDF0((a2 - 24));
      *(a2 - 24) = v42;
      *(a2 - 8) = v43;
      v43 = 0;
      v42 = 0uLL;
      sub_1001C10C4(v6, (v12 + 232), a3, 0x34F72C234F72C235 * (&v12[-v6 + 232] >> 3));
    }

    v44 = &v42;
    sub_1001BA238(&v44);
    return sub_1001BD39C(&v25);
  }

  return result;
}

void sub_1001C0F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001B5274(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C0F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 232 * v5;
    v8 = v7 + 232;
    if (2 * v5 + 2 >= a3)
    {
      LOBYTE(v11) = *v8;
      v5 = (2 * v5) | 1;
    }

    else
    {
      v9 = v7 + 464;
      v10 = *(v7 + 232);
      v11 = *(v7 + 464);
      v12 = v10 >= v11;
      if (v10 > v11)
      {
        LOBYTE(v11) = v10;
      }

      if (v12)
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v9;
        v5 = 2 * v5 + 2;
      }
    }

    *a1 = v11;
    *(a1 + 8) = *(v8 + 8);
    sub_100071A6C(a1 + 16);
    *(a1 + 16) = *(v8 + 16);
    *(a1 + 32) = *(v8 + 32);
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    sub_100071A6C(a1 + 40);
    *(a1 + 40) = *(v8 + 40);
    *(a1 + 56) = *(v8 + 56);
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    sub_100015184(a1 + 64, (v8 + 64));
    sub_100015184(a1 + 88, (v8 + 88));
    sub_100015184(a1 + 112, (v8 + 112));
    sub_100015184(a1 + 136, (v8 + 136));
    sub_100071A6C(a1 + 160);
    *(a1 + 160) = *(v8 + 160);
    *(a1 + 176) = *(v8 + 176);
    *(v8 + 160) = 0;
    *(v8 + 168) = 0;
    *(v8 + 176) = 0;
    sub_100015184(a1 + 184, (v8 + 184));
    sub_1001BCDF0((a1 + 208));
    *(a1 + 208) = *(v8 + 208);
    *(a1 + 224) = *(v8 + 224);
    *(v8 + 208) = 0;
    *(v8 + 216) = 0;
    *(v8 + 224) = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t sub_1001C10C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v58[12] = v4;
    v58[13] = v5;
    v7 = result;
    v8 = v6 >> 1;
    v9 = (result + 232 * (v6 >> 1));
    v11 = (a2 - 232);
    v10 = *(a2 - 232);
    if (*v9 < v10)
    {
      v42 = 0;
      v41 = v10;
      LOBYTE(v42) = *(a2 - 224);
      v43 = *(a2 - 216);
      v44 = *(a2 - 200);
      *(a2 - 216) = 0;
      *(a2 - 208) = 0;
      v12 = *(a2 - 192);
      *(a2 - 200) = 0;
      *(a2 - 192) = 0;
      v13 = *(a2 - 176);
      v14 = *(a2 - 168);
      *(a2 - 184) = 0;
      *(a2 - 176) = 0;
      *&v15 = v13;
      v33 = v14;
      *(&v15 + 1) = v14;
      v16 = *(a2 - 144);
      v31 = *(a2 - 160);
      v47 = v31;
      v48 = v16;
      v45 = v12;
      v46 = v15;
      *(a2 - 168) = 0;
      *(a2 - 160) = 0;
      *(a2 - 152) = 0;
      *(a2 - 144) = 0;
      v24 = *(a2 - 128);
      v17 = *(a2 - 120);
      *(a2 - 136) = 0;
      *(a2 - 128) = 0;
      v32 = v24;
      *&v15 = v24;
      v36 = v17;
      *(&v15 + 1) = v17;
      v34 = v16;
      v49 = v15;
      v19 = *(a2 - 112);
      v18 = *(a2 - 96);
      *(a2 - 120) = 0;
      *(a2 - 112) = 0;
      v38 = v18;
      v51 = v18;
      v35 = v19;
      v50 = v19;
      v37 = *(a2 - 80);
      v52 = v37;
      *(a2 - 104) = 0;
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      v20 = *(a2 - 72);
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v21 = *(a2 - 56);
      v22 = *(a2 - 40);
      v53 = v20;
      v54 = v21;
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      *(a2 - 32) = 0;
      v40 = *(&v21 + 1);
      v23 = *(a2 - 24);
      v39 = v22;
      v55 = v22;
      v56 = v23;
      v57 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      LOBYTE(v24) = *v9;
      do
      {
        v25 = v9;
        *v11 = v24;
        v11[8] = v9[8];
        sub_100071A6C((v11 + 16));
        *(v11 + 1) = *(v25 + 1);
        *(v11 + 4) = *(v25 + 4);
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        *(v25 + 4) = 0;
        sub_100071A6C((v11 + 40));
        *(v11 + 40) = *(v25 + 40);
        *(v11 + 7) = *(v25 + 7);
        *(v25 + 5) = 0;
        *(v25 + 6) = 0;
        *(v25 + 7) = 0;
        sub_100015184((v11 + 64), v25 + 4);
        sub_100015184((v11 + 88), (v25 + 88));
        sub_100015184((v11 + 112), v25 + 7);
        sub_100015184((v11 + 136), (v25 + 136));
        sub_100071A6C((v11 + 160));
        *(v11 + 10) = *(v25 + 10);
        *(v11 + 22) = *(v25 + 22);
        *(v25 + 20) = 0;
        *(v25 + 21) = 0;
        *(v25 + 22) = 0;
        sub_100015184((v11 + 184), (v25 + 184));
        sub_1001BCDF0(v11 + 26);
        *(v11 + 13) = *(v25 + 13);
        *(v11 + 28) = *(v25 + 28);
        *(v25 + 26) = 0;
        *(v25 + 27) = 0;
        *(v25 + 28) = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 232 * v8);
        LODWORD(v24) = *v9;
        v11 = v25;
      }

      while (v24 < v41);
      *v25 = v41;
      v25[8] = v42;
      sub_100071A6C((v25 + 16));
      *(v25 + 1) = v43;
      *(v25 + 4) = v44;
      v44 = 0;
      v43 = 0uLL;
      sub_100071A6C((v25 + 40));
      *(v25 + 40) = v45;
      *(v25 + 7) = v46;
      *&v46 = 0;
      v45 = 0uLL;
      v26 = *(v25 + 8);
      if (v26)
      {
        *(v25 + 9) = v26;
        operator delete(v26);
        *(v25 + 8) = 0;
        *(v25 + 9) = 0;
        *(v25 + 10) = 0;
      }

      *(v25 + 8) = v33;
      *(v25 + 72) = v31;
      v47 = 0uLL;
      *(&v46 + 1) = 0;
      v27 = *(v25 + 11);
      if (v27)
      {
        *(v25 + 12) = v27;
        operator delete(v27);
        *(v25 + 11) = 0;
        *(v25 + 12) = 0;
        *(v25 + 13) = 0;
      }

      *(v25 + 88) = v34;
      *(v25 + 13) = v32;
      *&v49 = 0;
      v48 = 0uLL;
      v28 = *(v25 + 14);
      if (v28)
      {
        *(v25 + 15) = v28;
        operator delete(v28);
        *(v25 + 14) = 0;
        *(v25 + 15) = 0;
        *(v25 + 16) = 0;
      }

      *(v25 + 14) = v36;
      *(v25 + 120) = v35;
      v50 = 0uLL;
      *(&v49 + 1) = 0;
      v29 = *(v25 + 17);
      if (v29)
      {
        *(v25 + 18) = v29;
        operator delete(v29);
        *(v25 + 17) = 0;
        *(v25 + 18) = 0;
        *(v25 + 19) = 0;
      }

      *(v25 + 136) = v38;
      *(v25 + 19) = v37;
      v52 = 0;
      v51 = 0uLL;
      sub_100071A6C((v25 + 160));
      *(v25 + 10) = v53;
      *(v25 + 22) = v54;
      *&v54 = 0;
      v53 = 0uLL;
      v30 = *(v25 + 23);
      if (v30)
      {
        *(v25 + 24) = v30;
        operator delete(v30);
        *(v25 + 23) = 0;
        *(v25 + 24) = 0;
        *(v25 + 25) = 0;
      }

      *(v25 + 23) = v40;
      *(v25 + 12) = v39;
      v55 = 0uLL;
      *(&v54 + 1) = 0;
      sub_1001BCDF0(v25 + 26);
      *(v25 + 13) = v56;
      *(v25 + 28) = v57;
      v57 = 0;
      v56 = 0uLL;
      v58[0] = &v56;
      sub_1001BA238(v58);
      return sub_1001BD39C(&v42);
    }
  }

  return result;
}

uint64_t sub_1001C14EC(uint64_t a1)
{
  v1 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0xD79435E50D7943)
  {
    sub_1000CE3D4();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 4) > v2)
  {
    v2 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v4 = 0xD79435E50D7943;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    sub_1001C1634(a1, v4);
  }

  v11 = 0;
  v12 = 304 * v1;
  TrafficDescriptor::TrafficDescriptor();
  v13 = 304 * v1 + 304;
  v5 = *(a1 + 8);
  v6 = (304 * v1 + *a1 - v5);
  sub_1001C1690(a1, *a1, v5, v6);
  v7 = *a1;
  *a1 = v6;
  v8 = *(a1 + 16);
  v10 = v13;
  *(a1 + 8) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  sub_1001C1734(&v11);
  return v10;
}

void sub_1001C1620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001C1734(va);
  _Unwind_Resume(a1);
}

void sub_1001C1634(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD79435E50D7944)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1001C1690(uint64_t a1, TrafficDescriptor *a2, const TrafficDescriptor *a3, TrafficDescriptor *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      TrafficDescriptor::TrafficDescriptor(a4, v8);
      v8 = (v8 + 304);
      a4 = (a4 + 304);
      v7 -= 304;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      TrafficDescriptor::~TrafficDescriptor(v6);
      v6 = (v6 + 304);
    }
  }
}

void sub_1001C1710(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 304);
    do
    {
      TrafficDescriptor::~TrafficDescriptor(v4);
      v4 = (v5 - 304);
      v2 += 304;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C1734(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 304;
    TrafficDescriptor::~TrafficDescriptor((i - 304));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001C1784(uint64_t a1, const TrafficDescriptor *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xD79435E50D7943)
  {
    sub_1000CE3D4();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v6 = 0xD79435E50D7943;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001C1634(a1, v6);
  }

  v13 = 0;
  v14 = 304 * v2;
  TrafficDescriptor::TrafficDescriptor((304 * v2), a2);
  v15 = 304 * v2 + 304;
  v7 = *(a1 + 8);
  v8 = (304 * v2 + *a1 - v7);
  sub_1001C1690(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001C1734(&v13);
  return v12;
}

void sub_1001C18B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001C1734(va);
  _Unwind_Resume(a1);
}

void sub_1001C18CC(uint64_t a1, const TrafficDescriptor *a2, const TrafficDescriptor *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1001C1A74(a1);
    if (a4 <= 0xD79435E50D7943)
    {
      v9 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 4) >= 0x6BCA1AF286BCA1)
      {
        v10 = 0xD79435E50D7943;
      }

      else
      {
        v10 = v9;
      }

      sub_1001C1AD4(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x86BCA1AF286BCA1BLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        TrafficDescriptor::operator=();
        v6 = (v6 + 304);
        v8 = (v8 + 304);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 304);
      TrafficDescriptor::~TrafficDescriptor(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        TrafficDescriptor::operator=();
        v14 = (v14 + 304);
        v8 = (v8 + 304);
        v13 -= 304;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = sub_1001C1B24(a1, (v6 + v12), a3, v11);
  }
}

void sub_1001C1A74(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        TrafficDescriptor::~TrafficDescriptor((v3 - 304));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1001C1AD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD79435E50D7944)
  {
    sub_1001C1634(a1, a2);
  }

  sub_1000CE3D4();
}

TrafficDescriptor *sub_1001C1B24(uint64_t a1, const TrafficDescriptor *a2, const TrafficDescriptor *a3, TrafficDescriptor *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      TrafficDescriptor::TrafficDescriptor(a4, v6);
      v6 = (v6 + 304);
      a4 = (a4 + 304);
      v7 -= 304;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1001C1B84(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 304);
    do
    {
      TrafficDescriptor::~TrafficDescriptor(v4);
      v4 = (v5 - 304);
      v2 += 304;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C1BA8(uint64_t a1, const TrafficDescriptor *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xD79435E50D7943)
  {
    sub_1000CE3D4();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v6 = 0xD79435E50D7943;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001C1634(a1, v6);
  }

  v13 = 0;
  v14 = 304 * v2;
  TrafficDescriptor::TrafficDescriptor((304 * v2), a2);
  v15 = 304 * v2 + 304;
  v7 = *(a1 + 8);
  v8 = (304 * v2 + *a1 - v7);
  sub_1001C1690(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001C1734(&v13);
  return v12;
}

void sub_1001C1CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001C1734(va);
  _Unwind_Resume(a1);
}

void sub_1001C1CF0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001C1CF0(a1, *a2);
    sub_1001C1CF0(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1001B8B00(&v4);
    operator delete(a2);
  }
}

uint64_t sub_1001C1D50(uint64_t **a1, unsigned __int16 *a2)
{
  v3 = sub_1001C1D98(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1001C1E1C(a1, v3);
  return 1;
}

uint64_t sub_1001C1D98(uint64_t a1, unsigned __int16 *a2)
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
    v6 = sub_1001C1E68((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1001C1E68(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t *sub_1001C1E1C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1000194D8(a1, a2);
  v5 = (a2 + 40);
  sub_1001B8B00(&v5);
  operator delete(a2);
  return v3;
}

BOOL sub_1001C1E68(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  if (v5 < v6 || v5 == v2 && (a1[2] & 1) == 0 && (a2[2] & 1) != 0)
  {
    return 1;
  }

  return v5 == v6 && *(a1 + 4) == *(a2 + 4) && a1[3] < a2[3];
}

void sub_1001C1EE0(uint64_t *a1)
{
  if (*a1)
  {
    sub_1001BD7A8(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1001C1F20(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1001C1FE0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

unsigned __int16 *sub_1001C1FE0(void *a1, uint64_t *a2, unsigned __int16 **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_1001C1E68(a5, a2 + 16))
  {
    if (!sub_1001C1E68(a2 + 16, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = *(v18 + 2);
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1001C1E68(a5, v15 + 16))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 4;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 2);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1001C1E68(v12 + 16, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1001C2174(a1, a3, a5);
}

unsigned __int16 *sub_1001C2174(uint64_t a1, unsigned __int16 **a2, unsigned __int16 *a3)
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
        if (!sub_1001C1E68(a3, v4 + 16))
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

      if (!sub_1001C1E68(v7 + 16, a3))
      {
        break;
      }

      v5 = v7 + 4;
      v4 = *(v7 + 1);
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

uint64_t *sub_1001C21FC(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#E selectDnnForTd_sync invalid observer", buf, 2u);
  }

  sub_10000501C(buf, "");
  v3 = v1[4];
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, buf);
  if (v8 < 0)
  {
    operator delete(*buf);
  }

  sub_1001C2304(&v6);
  return sub_1000049E0(&v5);
}

void sub_1001C22D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1001C2304(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001C2304(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100007E44(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_1001C2354(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(*v1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (v1 + 40);
    if (*(v1 + 63) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I selectDnnForTd_sync %s", buf, 0xCu);
  }

  v4 = *(v1 + 32);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, v1 + 40);
  sub_1001C246C(&v7);
  return sub_1000049E0(&v6);
}

void sub_1001C2450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001C246C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001C246C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    sub_100007E44(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_1001C24D8(uint64_t a1, int a2, void *a3, __int128 *a4)
{
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "msg.mdl.mms.3p");
  ctu::OsLogLogger::OsLogLogger(&v11, &v12);
  ctu::OsLogLogger::OsLogLogger(a1, &v11);
  ctu::OsLogLogger::~OsLogLogger(&v11);
  ctu::OsLogContext::~OsLogContext(&v12);
  v13[0] = off_101E2B528;
  v13[1] = sub_1000A7A98;
  v13[3] = v13;
  sub_1001C2698((a1 + 8));
  sub_1000A8744(v13);
  *(a1 + 16) = *a3;
  v8 = a3[1];
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = a2;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = 0;
  return a1;
}

void sub_1001C2624(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *a10)
{
  v13 = v10[3];
  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_101764C40(v10 + 1, a1, a2, &a10);
  v14 = a10;
  ctu::OsLogLogger::~OsLogLogger(v10);
  _Unwind_Resume(v14);
}

capabilities::ct *sub_1001C2698(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1001C27F0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_1001C2860(uint64_t a1)
{
  cf2[0] = @"MMS";
  cf2[1] = @"MimeEncodingHint";
  v15 = 0;
  v16 = 0;
  __p = 0;
  sub_10005B328(&__p, cf2, &v18, 2uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  cf2[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, cf2);
  if (!v8)
  {
    std::mutex::unlock(v3);
    goto LABEL_9;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    std::mutex::unlock(v3);
    if (v10)
    {
LABEL_11:
      cf2[0] = 0;
      (*(*v10 + 104))(&v13, v10, *(a1 + 32), 1, &__p, 0, 0);
      sub_100060DE8(cf2, &v13);
      sub_10000A1EC(&v13);
      if (cf2[0])
      {
        if (CFEqual(@"UTF8", cf2[0]))
        {
          v11 = 134217984;
        }

        else
        {
          v11 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }

      sub_100005978(cf2);
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_9:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  if (v10)
  {
    goto LABEL_11;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_17:
  sub_100004A34(v9);
LABEL_18:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_1001C2A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978(&a14);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001C2AB0(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  memset(&v82, 0, sizeof(v82));
  sub_10000501C(&v82, "<region id=$region top=auto left=0% height=auto width=100% fit=scroll>");
  v80 = 0uLL;
  v81 = 0;
  sub_10000501C(&v80, "<$tag src=$src region=$region/>");
  v79 = 0;
  v78 = 0u;
  v77 = 0;
  v76 = 0u;
  v4 = *(*a1 + 32);
  if (v4 != *(*a1 + 40))
  {
    memset(&v75, 0, sizeof(v75));
    v5 = *(v4 + 47);
    if (v5 >= 0)
    {
      v6 = (v4 + 24);
    }

    else
    {
      v6 = *(v4 + 24);
    }

    if (v5 >= 0)
    {
      v7 = *(v4 + 47);
    }

    else
    {
      v7 = *(v4 + 32);
    }

    v8 = &v6[v7];
    if (v7 > 4)
    {
      v12 = v7;
      v13 = v6;
      while (1)
      {
        v14 = memchr(v13, 97, v12 - 4);
        if (!v14)
        {
          goto LABEL_25;
        }

        if (*v14 == 1768191329 && v14[4] == 111)
        {
          break;
        }

        v13 = v14 + 1;
        v12 = v8 - v13;
        if (v8 - v13 < 5)
        {
          goto LABEL_25;
        }
      }

      if (v14 != v8)
      {
        v16 = "Audio";
        if (v14 - v6 != -1)
        {
          goto LABEL_56;
        }
      }

LABEL_25:
      v17 = v7;
      v18 = v6;
      while (1)
      {
        v19 = memchr(v18, 118, v17 - 4);
        if (!v19)
        {
          goto LABEL_35;
        }

        if (*v19 == 1701079414 && v19[4] == 111)
        {
          break;
        }

        v18 = v19 + 1;
        v17 = v8 - v18;
        if (v8 - v18 < 5)
        {
          goto LABEL_35;
        }
      }

      if (v19 != v8)
      {
        v16 = "Video";
        if (v19 - v6 != -1)
        {
          goto LABEL_56;
        }
      }

LABEL_35:
      v21 = v7;
      v22 = v6;
      while (1)
      {
        v23 = memchr(v22, 105, v21 - 4);
        if (!v23)
        {
          goto LABEL_9;
        }

        if (*v23 == 1734438249 && v23[4] == 101)
        {
          break;
        }

        v22 = v23 + 1;
        v21 = v8 - v22;
        if (v8 - v22 <= 4)
        {
          goto LABEL_9;
        }
      }

      if (v23 != v8)
      {
        v16 = "Image";
        if (v23 - v6 != -1)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_9:
    if (v7 < 4)
    {
LABEL_55:
      v16 = "Text";
      goto LABEL_56;
    }

    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = memchr(v10, 116, v9 - 3);
      if (!v11)
      {
        goto LABEL_45;
      }

      if (*v11 == 1954047348)
      {
        break;
      }

      v10 = v11 + 1;
      v9 = v8 - v10;
      if (v8 - v10 < 4)
      {
        goto LABEL_45;
      }
    }

    if (v11 == v8 || (v16 = "Text", v11 - v6 == -1))
    {
LABEL_45:
      v25 = v6;
      while (1)
      {
        v26 = memchr(v25, 115, v7 - 3);
        if (!v26)
        {
          goto LABEL_55;
        }

        if (*v26 == 1818848627)
        {
          break;
        }

        v25 = v26 + 1;
        v7 = v8 - v25;
        if (v8 - v25 < 4)
        {
          goto LABEL_55;
        }
      }

      if (v26 == v8)
      {
        goto LABEL_55;
      }

      v16 = "Smil";
      if (v26 - v6 == -1)
      {
        goto LABEL_55;
      }
    }

LABEL_56:
    sub_10000501C(&v75, v16);
    *v73 = 0u;
    v74 = 0u;
    *v72 = 0u;
    memset(__p, 0, 24);
    v27 = __p;
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__p, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v75;
    }

    std::locale::locale(&__dst);
    size = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    v29 = __p[0].__r_.__value_.__r.__words[0];
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = __p;
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    __str.__r_.__value_.__r.__words[0] = v29;
    __str.__r_.__value_.__l.__size_ = v29 + size;
    sub_100106528(&__str.__r_.__value_.__l.__data_, &__dst);
    std::locale::~locale(&__dst);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = __p[0].__r_.__value_.__l.__size_;
    }

    if (v30 < 5)
    {
LABEL_69:
      sub_1001C6930(v72, "Text", ".txt");
      goto LABEL_70;
    }

    v31 = v27;
    v32 = v27 + v30;
    v33 = v30;
    v34 = v27;
    while (1)
    {
      v35 = memchr(v34, 97, v33 - 4);
      if (!v35)
      {
LABEL_81:
        v38 = v30;
        v39 = v27;
        goto LABEL_82;
      }

      v36 = v35;
      if (*v35 == 1768191329 && v35[4] == 111)
      {
        break;
      }

      v34 = (v35 + 1);
      v33 = v32 - (v36 + 1);
      if (v33 < 5)
      {
        goto LABEL_81;
      }
    }

    v38 = v30;
    v39 = v27;
    if (v36 != v32)
    {
      v38 = v30;
      v39 = v27;
      if (v36 - v27 != -1)
      {
        v55 = "audio";
        v56 = ".wav";
        goto LABEL_145;
      }
    }

    while (1)
    {
LABEL_82:
      v40 = memchr(v39, 105, v38 - 4);
      if (!v40)
      {
        goto LABEL_135;
      }

      if (*v40 == 1734438249 && v40[4] == 101)
      {
        break;
      }

      v39 = (v40 + 1);
      v38 = v32 - v39;
      if (v32 - v39 < 5)
      {
        goto LABEL_135;
      }
    }

    if (v40 == v32 || v40 - v27 == -1)
    {
      while (1)
      {
LABEL_135:
        v57 = memchr(v31, 118, v30 - 4);
        if (!v57)
        {
          goto LABEL_69;
        }

        if (*v57 == 1701079414 && v57[4] == 111)
        {
          break;
        }

        v31 = (v57 + 1);
        v30 = v32 - (v57 + 1);
        if (v30 < 5)
        {
          goto LABEL_69;
        }
      }

      if (v57 == v32 || v57 - v27 == -1)
      {
        goto LABEL_69;
      }

      v55 = "video";
      v56 = ".mov";
LABEL_145:
      sub_1001C6888(v72, v55, v56);
    }

    else
    {
      sub_1001C68DC(v72, "img", ".jpeg");
    }

LABEL_70:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    memset(&__str, 0, sizeof(__str));
    if (*(v4 + 71) < 0)
    {
      sub_100005F2C(&__str, *(v4 + 48), *(v4 + 56));
    }

    else
    {
      __str = *(v4 + 48);
    }

    v42 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = __str.__r_.__value_.__l.__size_;
    }

    if (!v42)
    {
      if (SHIBYTE(v73[0]) >= 0)
      {
        v43 = HIBYTE(v73[0]);
      }

      else
      {
        v43 = v72[1];
      }

      memset(&__dst, 0, sizeof(__dst));
      sub_1000677C4(&__dst, v43 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v43)
      {
        if (SHIBYTE(v73[0]) >= 0)
        {
          v45 = v72;
        }

        else
        {
          v45 = v72[0];
        }

        memmove(p_dst, v45, v43);
      }

      *(&p_dst->__r_.__value_.__l.__data_ + v43) = 95;
      std::to_string(&v69, 0);
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v69;
      }

      else
      {
        v46 = v69.__r_.__value_.__r.__words[0];
      }

      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v69.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&__dst, v46, v47);
      v49 = *&v48->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if (v74 >= 0)
      {
        v50 = &v73[1];
      }

      else
      {
        v50 = v73[1];
      }

      if (v74 >= 0)
      {
        v51 = HIBYTE(v74);
      }

      else
      {
        v51 = v74;
      }

      v52 = std::string::append(__p, v50, v51);
      v53 = v52->__r_.__value_.__r.__words[0];
      *&v83 = v52->__r_.__value_.__l.__size_;
      *(&v83 + 7) = *(&v52->__r_.__value_.__r.__words[1] + 7);
      v54 = HIBYTE(v52->__r_.__value_.__r.__words[2]);
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v53;
      __str.__r_.__value_.__l.__size_ = v83;
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&v83 + 7);
      *(&__str.__r_.__value_.__s + 23) = v54;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      std::string::operator=((v4 + 48), &__str);
    }

    memset(&__dst, 0, sizeof(__dst));
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v82;
    }

    sub_1001C7FB0(__p, "\\$region", 0);
  }

  memset(__p, 0, 24);
  sub_1000D1184(0, 0, "\n", 1uLL, __p);
  v72[0] = 0;
  v72[1] = 0;
  v73[0] = 0;
  sub_1000D1184(v76, *(&v76 + 1), "\n", 1uLL, v72);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_10000501C(a2, "<smil>\n<head>\n<layout>\n<root-layout>\n");
  v60 = *(&v78 + 1);
  for (i = v78; i != v60; i += 3)
  {
    if (*(i + 23) >= 0)
    {
      v61 = *(i + 23);
    }

    else
    {
      v61 = i[1];
    }

    memset(&v75, 0, sizeof(v75));
    sub_1000677C4(&v75, v61 + 1);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v75;
    }

    else
    {
      v62 = v75.__r_.__value_.__r.__words[0];
    }

    if (v61)
    {
      if (*(i + 23) >= 0)
      {
        v63 = i;
      }

      else
      {
        v63 = *i;
      }

      memmove(v62, v63, v61);
    }

    *(&v62->__r_.__value_.__l.__data_ + v61) = 10;
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v75;
    }

    else
    {
      v64 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v75.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v64, v65);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a2, "</layout>\n</head>\n<body>\n", 0x19uLL);
  if (0xAAAAAAAAAAAAAAABLL * ((*(&v78 + 1) - v78) >> 3) >= 2)
  {
    std::string::append(a2, "<par dur=10s>\n", 0x10uLL);
  }

  if (SHIBYTE(v73[0]) >= 0)
  {
    v66 = v72;
  }

  else
  {
    v66 = v72[0];
  }

  if (SHIBYTE(v73[0]) >= 0)
  {
    v67 = HIBYTE(v73[0]);
  }

  else
  {
    v67 = v72[1];
  }

  std::string::append(a2, v66, v67);
  if (0xAAAAAAAAAAAAAAABLL * ((*(&v78 + 1) - v78) >> 3) >= 2)
  {
    std::string::append(a2, "</par>\n", 7uLL);
  }

  std::string::append(a2, "</body>\n</smil>\n", 0x10uLL);
  if (SHIBYTE(v73[0]) < 0)
  {
    operator delete(v72[0]);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  __p[0].__r_.__value_.__r.__words[0] = &v76;
  sub_1000087B4(__p);
  __p[0].__r_.__value_.__r.__words[0] = &v78;
  sub_1000087B4(__p);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }
}