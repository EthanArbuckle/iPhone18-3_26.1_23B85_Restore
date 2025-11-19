void sub_2392954BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_239295710(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392957A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MTRDeviceConnectivityMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_239295F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);

  os_unfair_lock_unlock(&unk_27DF775E8);
  _Unwind_Resume(a1);
}

void sub_239295FB4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && nw_path_get_status(v3) == nw_path_status_satisfied)
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ path is satisfied", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    os_unfair_lock_lock(&unk_27DF775E8);
    [WeakRetained _callHandler];
    os_unfair_lock_unlock(&unk_27DF775E8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2392960D0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&unk_27DF775E8);

  _Unwind_Resume(a1);
}

void sub_239296100(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    os_unfair_lock_lock(&unk_27DF775E8);
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ connectivity now viable", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v6 = WeakRetained;
      sub_2393D5320(0, 2);
    }

    [WeakRetained _callHandler];
    os_unfair_lock_unlock(&unk_27DF775E8);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2392961FC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&unk_27DF775E8);

  _Unwind_Resume(a1);
}

void sub_239296660(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&unk_27DF775E8);

  _Unwind_Resume(a1);
}

void sub_23929687C()
{
  os_unfair_lock_lock(&unk_27DF775E8);
  if (qword_27DF77600)
  {
    v0 = 1;
  }

  else
  {
    v0 = qword_27DF775F0 == 0;
  }

  if (!v0)
  {
    v1 = sub_2393D9044(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_DEFAULT, "MTRDeviceConnectivityMonitor: Closing shared resolver connection", v3, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    DNSServiceRefDeallocate(qword_27DF775F0);
    qword_27DF775F0 = 0;
    v2 = qword_27DF775F8;
    qword_27DF775F8 = 0;
  }

  os_unfair_lock_unlock(&unk_27DF775E8);
}

void sub_239296B4C(uint64_t a1)
{
  os_unfair_lock_lock(&unk_27DF775E8);
  [*(a1 + 32) _stopMonitoring];

  os_unfair_lock_unlock(&unk_27DF775E8);
}

void sub_239296C28(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_238DBAFA8();
}

unint64_t sub_239296C70(uint64_t a1, unsigned __int16 *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_239296DA0("g/a/%x/%x/%x", v7, *a2, *(a2 + 1), *(a2 + 2));
  result = sub_239528760((a1 + 8), v7, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239296CFC(uint64_t a1, unsigned __int16 *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_239296DA0("g/a/%x/%x/%x", v7, *a2, *(a2 + 1), *(a2 + 2));
  result = sub_2395287EC((a1 + 8), v7, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239296DA0@<X0>(char *__format@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return vsnprintf(a2, 0x21uLL, __format, va);
}

id sub_239296DE4(id a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = MTREndpointInfo;
    a1 = objc_msgSendSuper2(&v13, sel_init);
    *(a1 + 4) = [v7 unsignedShortValue];
    v10 = [v8 copy];
    v11 = *(a1 + 2);
    *(a1 + 2) = v10;

    sub_23952D324(a1, [v9 copy]);
  }

  return a1;
}

uint64_t sub_239297204(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 objectForKeyedSubscript:&unk_284C41618];
  v38 = v3;
  if (v3)
  {
    v50 = 0u;
    v51 = 0u;
    *v49 = 0u;
    sub_239297944(v49, (v3 + 8));
    v4 = 1;
    while (1)
    {
      v48 = *(*(*&v49[8] + ((v51.i64[0] >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v51.i16[0] & 0x7FF));
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{v36, v37}];
      v39 = [v2 objectForKeyedSubscript:v5];

      if (*(v39 + 10) == 1)
      {
        *(v39 + 10) = 2;
        v51 = vaddq_s64(v51, xmmword_2395C0E10);
        if (v51.i64[0] >= 0x1000uLL)
        {
          operator delete(**&v49[8]);
          *&v49[8] += 8;
          v51.i64[0] -= 2048;
        }

        sub_2392979D8(v49, &v48);
        if (v48 == *(v3 + 8))
        {

          v20 = v51.i64[1];
          if (v20 != [v2 count])
          {
            v21 = sub_2393D9044(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Warning: Not all endpoints are descendants of the root endpoint", buf, 2u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1);
            }

            v4 = 0;
          }

          v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
          while (v51.i64[1])
          {
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(*(*&v49[8] + ((v51.i64[0] >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v51.i16[0] & 0x7FF))];
            v24 = [v2 objectForKeyedSubscript:v23];

            v51 = vaddq_s64(v51, xmmword_2395C0E10);
            if (v51.i64[0] >= 0x1000uLL)
            {
              operator delete(**&v49[8]);
              *&v49[8] += 8;
              v51.i64[0] -= 2048;
            }

            if (*(v24 + 10))
            {
              [v22 removeAllObjects];
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v25 = *(v24 + 24);
              v26 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
              if (v26)
              {
                v27 = *v41;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v41 != v27)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v29 = [v2 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * i)];
                    v30 = v29;
                    if (v29 && *(v29 + 10))
                    {
                      *(v29 + 10) = 0;
                      [v22 addObject:v29];
                    }
                  }

                  v26 = [v25 countByEnumeratingWithState:&v40 objects:v52 count:16];
                }

                while (v26);
              }

              v31 = [v22 copy];
              v32 = *(v24 + 32);
              *(v24 + 32) = v31;
            }
          }

          v38[10] = 0;

          sub_239298200(v49);
          goto LABEL_63;
        }
      }

      else
      {
        if (!*(v39 + 10))
        {
          *(v39 + 10) = 1;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v6 = *(v39 + 24);
          v7 = [v6 countByEnumeratingWithState:&v44 objects:v57 count:16];
          if (!v7)
          {
            goto LABEL_26;
          }

          v8 = *v45;
          while (1)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v45 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v44 + 1) + 8 * j);
              v11 = [v2 objectForKeyedSubscript:{v10, v36, v37}];
              v12 = v11;
              if (!v11)
              {
                v13 = sub_2393D9044(0);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v14 = v48;
                  v15 = [v10 unsignedShortValue];
                  *buf = 67109376;
                  v54 = v14;
                  v55 = 1024;
                  v56 = v15;
                  _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Warning: PartsList of endpoint %u references non-existant endpoint %u", buf, 0xEu);
                }

                if (sub_2393D5398(1u))
                {
                  v16 = v48;
                  v17 = [v10 unsignedShortValue];
                  goto LABEL_22;
                }

LABEL_23:
                v4 = 0;
                goto LABEL_24;
              }

              if (*(v11 + 10) == 1)
              {
                v18 = sub_2393D9044(0);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  v19 = v12[4];
                  *buf = 67109376;
                  v54 = v19;
                  v55 = 1024;
                  v56 = v48;
                  _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Warning: Cyclic endpoint composition involving endpoints %u and %u", buf, 0xEu);
                }

                if (sub_2393D5398(1u))
                {
                  v16 = v12[4];
                  v17 = v48;
LABEL_22:
                  v36 = v16;
                  v37 = v17;
                  sub_2393D5320(0, 1);
                }

                goto LABEL_23;
              }

              if (!*(v11 + 10))
              {
                sub_239297944(v49, (v11 + 8));
              }

LABEL_24:
            }

            v7 = [v6 countByEnumeratingWithState:&v44 objects:v57 count:16];
            if (!v7)
            {
LABEL_26:

              goto LABEL_33;
            }
          }
        }

        v51 = vaddq_s64(v51, xmmword_2395C0E10);
        if (v51.i64[0] >= 0x1000uLL)
        {
          operator delete(**&v49[8]);
          *&v49[8] += 8;
          v51.i64[0] -= 2048;
        }
      }

LABEL_33:
    }
  }

  v33 = sub_2393D9044(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *v49 = 0;
    _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "Missing root endpoint, not populating endpoint hierarchy", v49, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  v4 = 0;
LABEL_63:

  v34 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

uint64_t sub_239297944(void *a1, _WORD *a2)
{
  v4 = a1[4];
  if (!v4)
  {
    sub_2392982FC(a1);
    v4 = a1[4];
  }

  v5 = a1[1];
  v6 = (v5 + 8 * (v4 >> 11));
  if (a1[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 2 * (v4 & 0x7FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 2) = *a2;
  v8 = v4 - 1;
  v9 = a1[5] + 1;
  a1[4] = v8;
  a1[5] = v9;
  return *(v5 + ((v8 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v8 & 0x7FF);
}

uint64_t sub_2392979D8(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 8) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9 + v8;
  if (v7 == v9 + v8)
  {
    sub_2392988A8(a1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = *(a1 + 8);
    v10 = v8 + v9;
  }

  *(*(v6 + ((v10 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v10 & 0x7FF)) = *a2;
  v11 = v9 + 1;
  *(a1 + 40) = v11;
  v12 = v8 + v11;
  v13 = (v6 + 8 * (v12 >> 11));
  v14 = v12 & 0x7FF;
  if (v14)
  {
    v15 = *v13 + 2 * v14;
  }

  else
  {
    v15 = *(v13 - 1) + 4096;
  }

  return v15 - 2;
}

void *sub_239297A8C(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v46 = objc_opt_self();
  if (a2)
  {
    v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v52 = a2;
    v47 = a2 + 3;
    if (a2[2] != a2 + 3)
    {
      v3 = a2[2];
      do
      {
        v4 = v3[5];
        v53 = v3;
        v48 = v3 + 6;
        if (v4 != v3 + 6)
        {
          do
          {
            v49 = v4;
            if (*(v4 + 8) == 29)
            {
              v5 = v4[5];
              v54 = v4 + 6;
              if (v5 != v4 + 6)
              {
                do
                {
                  v6 = *(v5 + 8);
                  v57 = *(v53 + 16);
                  v59 = 29;
                  v60 = v6;
                  v58 = 0;
                  if (!v6)
                  {
                    v51 = v5;
                    v69[0] = 0;
                    v69[1] = 0;
                    v55 = sub_2392CD914(&v57, v52, v69);
                    if (!v55)
                    {
                      v7 = sub_2393D9044(0);
                      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                      {
                        v8 = v57;
                        v9 = sub_2393C9138();
                        *buf = 67109378;
                        v75 = v8;
                        v76 = 2080;
                        v77 = v9;
                        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Ignoring invalid DeviceTypeList for endpoint %u: %s", buf, 0x12u);
                      }

                      if (sub_2393D5398(1u))
                      {
                        v43 = v57;
                        v44 = sub_2393C9138();
                        sub_2393D5320(0, 1);
                      }
                    }

                    v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v55, "count")}];
                    v67 = 0u;
                    v68 = 0u;
                    v65 = 0u;
                    v66 = 0u;
                    v10 = v55;
                    v11 = [v10 countByEnumeratingWithState:&v65 objects:buf count:16];
                    if (v11)
                    {
                      v12 = *v66;
                      do
                      {
                        for (i = 0; i != v11; ++i)
                        {
                          if (*v66 != v12)
                          {
                            objc_enumerationMutation(v10);
                          }

                          v14 = *(*(&v65 + 1) + 8 * i);
                          v15 = [[MTRDeviceTypeRevision alloc] initWithDeviceTypeStruct:v14];
                          if (v15)
                          {
                            [v56 addObject:v15];
                          }

                          else
                          {
                            v16 = sub_2393D9044(0);
                            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                            {
                              v17 = [v14 deviceType];
                              v18 = [v17 unsignedIntValue];
                              v19 = [v14 revision];
                              v20 = [v19 unsignedShortValue];
                              *v70 = 67109632;
                              v71 = v18;
                              v72 = 1024;
                              *v73 = v20;
                              *&v73[4] = 1024;
                              *&v73[6] = v57;
                              _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Ignoring invalid device type 0x%x rev %u for endpoint %u", v70, 0x14u);
                            }

                            if (sub_2393D5398(1u))
                            {
                              v21 = [v14 deviceType];
                              v22 = [v21 unsignedIntValue];
                              v23 = [v14 revision];
                              v44 = [v23 unsignedShortValue];
                              v45 = v57;
                              v43 = v22;
                              sub_2393D5320(0, 1);
                            }
                          }
                        }

                        v11 = [v10 countByEnumeratingWithState:&v65 objects:buf count:16];
                      }

                      while (v11);
                    }

                    v61 = v57;
                    v63 = v59;
                    v64 = 3;
                    v62 = 0;
                    v24 = sub_2392CD914(&v61, v52, v69);
                    if (!v24)
                    {
                      v25 = sub_2393D9044(0);
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        v26 = v57;
                        v27 = sub_2393C9138();
                        *v70 = 67109378;
                        v71 = v26;
                        v72 = 2080;
                        *v73 = v27;
                        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Ignoring invalid PartsList for endpoint %u: %s", v70, 0x12u);
                      }

                      if (sub_2393D5398(1u))
                      {
                        v43 = v57;
                        v44 = sub_2393C9138();
                        sub_2393D5320(0, 1);
                      }

                      v24 = MEMORY[0x277CBEBF8];
                    }

                    v28 = [MTREndpointInfo alloc];
                    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v57];
                    v30 = sub_239296DE4(v28, v29, v56, v24);

                    v31 = [v30 endpointID];
                    [v50 setObject:v30 forKeyedSubscript:v31];

                    v5 = v51;
                  }

                  v32 = v5[1];
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
                      v33 = v5[2];
                      v34 = *v33 == v5;
                      v5 = v33;
                    }

                    while (!v34);
                  }

                  v5 = v33;
                }

                while (v33 != v54);
              }
            }

            v35 = v49;
            v36 = v49[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v35[2];
                v34 = *v37 == v35;
                v35 = v37;
              }

              while (!v34);
            }

            v4 = v37;
          }

          while (v37 != v48);
        }

        v38 = v53;
        v39 = v53[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = v38[2];
            v34 = *v40 == v38;
            v38 = v40;
          }

          while (!v34);
        }

        v3 = v40;
      }

      while (v40 != v47);
    }

    if ([v50 count])
    {
      sub_239297204(v46, v50);
    }

    a2 = [v50 copy];
  }

  v41 = *MEMORY[0x277D85DE8];

  return a2;
}

uint64_t sub_239298200(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 2048;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_2392982AC(a1);
}

uint64_t sub_2392982AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

const void **sub_2392982FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 8) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x800)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_239298860(a1, v10);
  }

  *(a1 + 32) = v5 + 2048;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_239298544(a1, v11);
}

void sub_2392984F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_239298544(const void **result, void *a2)
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

      sub_239298860(result, v9);
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

void *sub_239298650(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_239298860(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_239298758(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_239298860(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_239298860(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_238DBAFA8();
}

void *sub_2392988A8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x800;
  v3 = v1 - 2048;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_239298860(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_239298650(a1, &v10);
}

void sub_239298A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_239298A7C(const void **result, void *a2)
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

      sub_239298860(result[4], v9);
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

void sub_239298C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MTRDevice_XPC;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2392992DC(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceController];
  [v1 _updateRegistrationInfo];
}

void sub_2392994D0(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceController];
  [v1 _updateRegistrationInfo];
}

void sub_239299AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  os_unfair_lock_unlock((v32 + a11));

  _Unwind_Resume(a1);
}

void sub_23929A050(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceBecameActive:*(a1 + 32)];
  }
}

void sub_23929A178(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23929A3B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceConfigurationChanged:*(a1 + 32)];
  }
}

void sub_23929AE74(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF77610);

  _Unwind_Resume(a1);
}

void sub_23929AF5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceCachePrimed:*(a1 + 32)];
  }
}

void sub_23929B0A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23929B18C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23929B5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *exc_buf, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a2 == 1)
  {
    v43 = objc_begin_catch(a1);
    v44 = sub_2393D9044(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(v38);
      v46 = v42 - 160;
      *(v42 - 160) = 138412802;
      *(v46 + 4) = v37;
      *(v42 - 148) = 2112;
      *(v46 + 14) = v45;
      *(v42 - 138) = 2112;
      *(v42 - 136) = v43;
      _os_log_impl(&dword_238DAE000, v44, OS_LOG_TYPE_ERROR, "%@ Exception sending XPC messsage for %@: %@", (v42 - 160), 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v48 = NSStringFromSelector(v38);
      sub_2393D5320(0, 1);
    }

    v47 = *(a28 + 40);
    *(a28 + 40) = 0;

    objc_end_catch();
    JUMPOUT(0x23929B53CLL);
  }

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23929B75C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23929B774(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23929BC00(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23929BF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, int buf, int a30, __int128 a31, uint64_t a32)
{
  v41 = v35;

  if (a2 == 1)
  {
    v43 = objc_begin_catch(a1);
    v44 = sub_2393D9044(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(v34);
      buf = 138412802;
      WORD2(a31) = 2112;
      *(&a31 + 6) = v45;
      HIWORD(a31) = 2112;
      a32 = v43;
      _os_log_impl(&dword_238DAE000, v44, OS_LOG_TYPE_ERROR, "%@ Exception sending XPC messsage for %@: %@", &buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v48 = NSStringFromSelector(v34);
      sub_2393D5320(0, 1);
    }

    v46 = [*(v39 + 2656) array];
    v47 = *(a24 + 40);
    *(a24 + 40) = v46;

    objc_end_catch();
    JUMPOUT(0x23929BEF4);
  }

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_23929C11C(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    sub_2393D5320(0, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23929C568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t block, uint64_t a27, void (*a28)(uint64_t a1), void *a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37, void *a38, void *a39, void *a40)
{
  if (a2 == 1)
  {
    v50 = objc_begin_catch(a1);
    v51 = sub_2393D9044(0);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *(v46 - 128) = 138412290;
      *(v46 - 124) = v50;
      _os_log_impl(&dword_238DAE000, v51, OS_LOG_TYPE_ERROR, "Exception sending XPC message: %@", (v46 - 128), 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    block = MEMORY[0x277D85DD0];
    a27 = v47;
    a28 = sub_23929CF3C;
    a29 = &unk_278A72B88;
    a30 = v40;
    dispatch_async(v45, &block);

    objc_end_catch();
    JUMPOUT(0x23929C4E0);
  }

  _Unwind_Resume(a1);
}

void sub_23929C760(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Invoke error: %@", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23929C8B4;
  block[3] = &unk_278A72B88;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  dispatch_async(v5, block);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23929C8B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_23929C944(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23929CA74;
  block[3] = &unk_278A74540;
  v16 = v5;
  v17 = v6;
  v14 = *(a1 + 40);
  v8 = *(&v14 + 1);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v18 = v14;
  v19 = v11;
  v20 = *(a1 + 72);
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void sub_23929CA74(void *a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  if (!v2)
  {
    if (!v3)
    {
      v29 = sub_2393D9044(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = a1[6];
        v31 = a1[7];
        v32 = a1[8];
        v33 = a1[9];
        *buf = 138413058;
        v54 = v30;
        v55 = 2112;
        v56 = v31;
        v57 = 2112;
        v58 = v32;
        v59 = 2112;
        v60 = v33;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "%@ got invoke response for (%@, %@, %@) without values or error", buf, 0x2Au);
      }

      if (sub_2393D5398(1u))
      {
        v47 = a1[8];
        v49 = a1[9];
        v42 = *(a1 + 3);
        sub_2393D5320(0, 1);
      }

      v34 = a1[10];
      v35 = sub_23921C1E4(MTRError, 0x1EC0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_XPC.mm");
      (*(v34 + 16))(v34, 0, v35);

      goto LABEL_31;
    }

LABEL_5:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !a1[5])
    {
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = a1[7];
        v16 = a1[8];
        v17 = a1[9];
        v19 = a1[5];
        v18 = a1[6];
        *buf = 138413314;
        v54 = v18;
        v55 = 2112;
        v56 = v15;
        v57 = 2112;
        v58 = v16;
        v59 = 2112;
        v60 = v17;
        v61 = 2112;
        v62 = v19;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ got invoke response for (%@, %@, %@) that has invalid error object: %@", buf, 0x34u);
      }

      if (sub_2393D5398(1u))
      {
        v51 = a1[5];
        v40 = *(a1 + 3);
        v45 = *(a1 + 4);
        sub_2393D5320(0, 1);
      }

      v20 = a1[10];
      v21 = sub_23921C1E4(MTRError, 0x1F20000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_XPC.mm");
      (*(v20 + 16))(v20, 0, v21);

      goto LABEL_31;
    }

    v2 = a1[4];
    if (!v2)
    {
      goto LABEL_32;
    }

    goto LABEL_8;
  }

  if (v3)
  {
    goto LABEL_5;
  }

LABEL_8:
  if ((sub_23938BC3C(v2) & 1) == 0)
  {
    v22 = sub_2393D9044(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = a1[6];
      v24 = a1[8];
      v25 = a1[9];
      v26 = a1[4];
      *buf = 138413314;
      v54 = v23;
      v55 = 2112;
      v56 = v24;
      v57 = 2112;
      v58 = v25;
      v59 = 2112;
      v60 = v26;
      v61 = 2112;
      v62 = v26;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "%@ got invoke response for (%@, %@, %@) that has invalid data: %@", buf, 0x34u);
    }

    if (sub_2393D5398(1u))
    {
      v48 = a1[4];
      v43 = a1[8];
      v46 = a1[9];
      v41 = a1[6];
      sub_2393D5320(0, 1);
    }

    v27 = a1[10];
    v28 = sub_23921C1E4(MTRError, 0x1F80000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_XPC.mm");
    (*(v27 + 16))(v27, 0, v28);

    goto LABEL_31;
  }

  v5 = a1[4];
  v4 = a1[5];
  if (v5 && v4)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[6];
      v8 = a1[7];
      v9 = a1[8];
      v10 = a1[9];
      *buf = 138413570;
      v54 = v7;
      v55 = 2112;
      v56 = v8;
      v57 = 2112;
      v58 = v9;
      v59 = 2112;
      v60 = v10;
      v61 = 2112;
      v62 = v5;
      v63 = 2112;
      v64 = v4;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ got invoke response for (%@, %@, %@) with both values and error: %@, %@", buf, 0x3Eu);
    }

    if (sub_2393D5398(1u))
    {
      v50 = a1[4];
      v52 = a1[5];
      v39 = *(a1 + 3);
      v44 = *(a1 + 4);
      sub_2393D5320(0, 1);
    }

    (*(a1[10] + 16))(a1[10], 0, a1[5], v11, v12, v13);
LABEL_31:
    v36 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_32:
  v37 = *(a1[10] + 16);
  v38 = *MEMORY[0x277D85DE8];

  v37();
}

void sub_23929CF3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_23929D1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *exc_buf, void *a15, void *a16, SEL aSelector, uint64_t block, uint64_t a19, void (*a20)(uint64_t a1), void *a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37)
{
  if (a2 == 1)
  {
    v48 = objc_begin_catch(a1);
    v49 = sub_2393D9044(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(aSelector);
      v51 = v46 - 160;
      *(v46 - 160) = 138412802;
      *(v51 + 4) = v42;
      *(v46 - 148) = 2112;
      *(v51 + 14) = v50;
      *(v46 - 138) = 2112;
      *(v46 - 136) = v48;
      _os_log_impl(&dword_238DAE000, v49, OS_LOG_TYPE_ERROR, "%@ Exception sending XPC message for %@: %@", (v46 - 160), 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v52 = NSStringFromSelector(aSelector);
      sub_2393D5320(0, 1);
    }

    block = MEMORY[0x277D85DD0];
    a19 = v47;
    a20 = sub_23929DBE4;
    a21 = &unk_278A72B88;
    a22 = v39;
    dispatch_async(v38, &block);

    objc_end_catch();
    JUMPOUT(0x23929D1A4);
  }

  _Unwind_Resume(a1);
}

void sub_23929D3EC(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v10 = NSStringFromSelector(*(a1 + 56));
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23929D5A0;
  block[3] = &unk_278A72B88;
  v8 = *(a1 + 40);
  v12 = *(a1 + 48);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23929D5A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_23929D630(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23929D720;
  block[3] = &unk_278A745B8;
  v12 = v5;
  v13 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v8;
  v16 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_23929D720(void *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  if (!v2)
  {
    if (!v3)
    {
      v22 = sub_2393D9044(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = a1[6];
        v24 = a1[7];
        *buf = 138412546;
        v43 = v23;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "%@ got invoke responses for %@ without values or error", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        v34 = a1[6];
        v36 = a1[7];
        sub_2393D5320(0, 1);
      }

      v25 = a1[8];
      v26 = sub_23921C1E4(MTRError, 0x2210000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_XPC.mm");
      (*(v25 + 16))(v25, 0, v26);

      goto LABEL_37;
    }

    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = a1[5]) == 0)
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[6];
        v11 = a1[7];
        v13 = a1[5];
        *buf = 138412802;
        v43 = v12;
        v44 = 2112;
        v45 = v11;
        v46 = 2112;
        v47 = v13;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ got invoke responses for %@ that has invalid error object: %@", buf, 0x20u);
      }

      if (sub_2393D5398(1u))
      {
        v39 = a1[5];
        v32 = *(a1 + 3);
        sub_2393D5320(0, 1);
      }

      v14 = a1[8];
      v15 = sub_23921C1E4(MTRError, 0x2270000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_XPC.mm");
      (*(v14 + 16))(v14, 0, v15);

      goto LABEL_37;
    }

    v2 = a1[4];
    if (!v2)
    {
      goto LABEL_32;
    }
  }

  if (sub_23938BD48(v2))
  {
    v5 = a1[4];
    v4 = a1[5];
    if (v5)
    {
      if (v4)
      {
        v6 = sub_2393D9044(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = a1[6];
          v8 = a1[7];
          *buf = 138413058;
          v43 = v7;
          v44 = 2112;
          v45 = v8;
          v46 = 2112;
          v47 = v5;
          v48 = 2112;
          v49 = v4;
          _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ got invoke responses for %@ with both responses and error: %@, %@", buf, 0x2Au);
        }

        if (sub_2393D5398(1u))
        {
          v38 = a1[4];
          v41 = a1[5];
          v31 = *(a1 + 3);
          sub_2393D5320(0, 1);
        }

        (*(a1[8] + 16))(a1[8], 0, a1[5], v9);
        goto LABEL_37;
      }

LABEL_36:
      (*(a1[8] + 16))(a1[8], a1[4]);
      goto LABEL_37;
    }

    if (!v4)
    {
      goto LABEL_36;
    }

LABEL_32:
    v27 = sub_2393D9044(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[6];
      *buf = 138412546;
      v43 = v28;
      v44 = 2112;
      v45 = v4;
      _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "%@ got error trying to invokeCommands: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v35 = a1[6];
      v37 = a1[5];
      sub_2393D5320(0, 1);
      v29 = a1[5];
    }

    goto LABEL_36;
  }

  v16 = sub_2393D9044(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = a1[6];
    v18 = a1[7];
    v19 = a1[4];
    *buf = 138412802;
    v43 = v17;
    v44 = 2112;
    v45 = v18;
    v46 = 2112;
    v47 = v19;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%@ got invoke responses for %@ that has invalid data: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v40 = a1[4];
    v33 = *(a1 + 3);
    sub_2393D5320(0, 1);
  }

  v20 = a1[8];
  v21 = sub_23921C1E4(MTRError, 0x22D0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice_XPC.mm");
  (*(v20 + 16))(v20, 0, v21);

LABEL_37:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_23929DBE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_23929DE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t block, uint64_t a17, void (*a18)(uint64_t a1), void *a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33)
{
  if (a2 == 1)
  {
    v45 = objc_begin_catch(a1);
    v46 = sub_2393D9044(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(v39);
      v48 = v42 - 160;
      *(v42 - 160) = 138412802;
      *(v48 + 4) = v38;
      *(v42 - 148) = 2112;
      *(v48 + 14) = v47;
      *(v42 - 138) = 2112;
      *(v42 - 136) = v45;
      _os_log_impl(&dword_238DAE000, v46, OS_LOG_TYPE_ERROR, "%@ Exception sending XPC messsage for %@: %@", (v42 - 160), 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v49 = NSStringFromSelector(v39);
      sub_2393D5320(0, 1);
    }

    block = MEMORY[0x277D85DD0];
    a17 = v43;
    a18 = sub_23929E448;
    a19 = &unk_278A72B88;
    a20 = v36;
    dispatch_async(v34, &block);

    objc_end_catch();
    JUMPOUT(0x23929DE30);
  }

  _Unwind_Resume(a1);
}

void sub_23929E070(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393D9044(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Error in %@: %@", buf, 0x20u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 32);
    v10 = NSStringFromSelector(*(a1 + 56));
    sub_2393D5320(0, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23929E224;
  block[3] = &unk_278A72B88;
  v8 = *(a1 + 40);
  v12 = *(a1 + 48);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23929E224(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_23929E2B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23929E388;
  block[3] = &unk_278A72D48;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_23929E388(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [*(a1 + 32) path];
    [v5 removeItemAtPath:v4 error:0];
  }
}

void sub_23929E448(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

id sub_23929E56C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (HIWORD(v6) || v6 - 61440 > 0xFFE)
  {
    v10 = *(a1 + 4);
    if (v10 <= 256)
    {
      switch(v10)
      {
        case 3:
          v9 = sub_23929F680(v6, a2, a3);
          goto LABEL_35;
        case 4:
          v9 = sub_23929F74C(v6, a2, a3);
          goto LABEL_35;
        case 5:
        case 7:
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
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 38:
        case 39:
        case 58:
        case 61:
        case 66:
        case 67:
        case 68:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 88:
        case 90:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
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
        case 130:
        case 131:
        case 132:
        case 133:
        case 134:
        case 135:
        case 136:
        case 137:
        case 138:
        case 139:
        case 140:
        case 141:
        case 142:
        case 143:
        case 146:
        case 147:
        case 150:
        case 154:
          goto LABEL_132;
        case 6:
          v9 = sub_23929F7E0(v6, a2, a3);
          goto LABEL_35;
        case 8:
          v9 = sub_23929F964(v6, a2, a3);
          goto LABEL_35;
        case 28:
          v12 = 0;
          v24 = 0x1E0000000B5;
          goto LABEL_45;
        case 29:
          v9 = sub_23929FABC(v6, a2, a3);
          goto LABEL_35;
        case 30:
          v9 = sub_2392A0144(v6, a2, a3);
          goto LABEL_35;
        case 31:
          v9 = sub_2392A0400(v6, a2, a3);
          goto LABEL_35;
        case 37:
          v9 = sub_2392A0E70(v6, a2, a3);
          goto LABEL_35;
        case 40:
          v9 = sub_2392A1440(v6, a2, a3);
          goto LABEL_35;
        case 41:
          v12 = 0;
          v24 = 0x5AF000000B5;
          goto LABEL_45;
        case 42:
          v9 = sub_2392A1A54(v6, a2, a3);
          goto LABEL_35;
        case 43:
          v9 = sub_2392A1CE0(v6, a2, a3);
          goto LABEL_35;
        case 44:
          v9 = sub_2392A1ECC(v6, a2, a3);
          goto LABEL_35;
        case 45:
          v9 = sub_2392A20B0(v6, a2, a3);
          goto LABEL_35;
        case 46:
          v9 = sub_2392A227C(v6, a2, a3);
          goto LABEL_35;
        case 47:
          v9 = sub_2392A23D0(v6, a2, a3);
          goto LABEL_35;
        case 48:
          v9 = sub_2392A2AC8(v6, a2, a3);
          goto LABEL_35;
        case 49:
          v9 = sub_2392A2D98(v6, a2, a3);
          goto LABEL_35;
        case 50:
          v12 = 0;
          v24 = 0xA24000000B5;
          goto LABEL_45;
        case 51:
          v9 = sub_2392A32F0(v6, a2, a3);
          goto LABEL_35;
        case 52:
          v9 = sub_2392A3B24(v6, a2, a3);
          goto LABEL_35;
        case 53:
          v9 = sub_2392A3EAC(v6, a2, a3);
          goto LABEL_35;
        case 54:
          v9 = sub_2392A4B5C(v6, a2, a3);
          goto LABEL_35;
        case 55:
          v9 = sub_2392A4D74(v6, a2, a3);
          goto LABEL_35;
        case 56:
          v9 = sub_2392A4EE8(v6, a2, a3);
          goto LABEL_35;
        case 57:
          v9 = sub_2392A552C(v6, a2, a3);
          goto LABEL_35;
        case 59:
          v9 = sub_2392A5AD4(v6, a2, a3);
          goto LABEL_35;
        case 60:
          v9 = sub_2392A5BC8(v6, a2, a3);
          goto LABEL_35;
        case 62:
          v9 = sub_2392A5CE0(v6, a2, a3);
          goto LABEL_35;
        case 63:
          v9 = sub_2392A6260(v6, a2, a3);
          goto LABEL_35;
        case 64:
          v9 = sub_2392A66D0(v6, a2, a3);
          goto LABEL_35;
        case 65:
          v9 = sub_2392A691C(v6, a2, a3);
          goto LABEL_35;
        case 69:
          v9 = sub_2392A6B68(v6, a2, a3);
          goto LABEL_35;
        case 70:
          v9 = sub_2392A6BFC(v6, a2, a3);
          goto LABEL_35;
        case 71:
          v9 = sub_2392A6FA0(v6, a2, a3);
          goto LABEL_35;
        case 72:
          v9 = sub_2392A709C(v6, a2, a3);
          goto LABEL_35;
        case 73:
          v9 = sub_2392A7640(v6, a2, a3);
          goto LABEL_35;
        case 74:
          v9 = sub_2392A79C8(v6, a2, a3);
          goto LABEL_35;
        case 80:
          v9 = sub_2392A7B98(v6, a2, a3);
          goto LABEL_35;
        case 81:
          v9 = sub_2392A8018(v6, a2, a3);
          goto LABEL_35;
        case 82:
          v9 = sub_2392A83A0(v6, a2, a3);
          goto LABEL_35;
        case 83:
          v9 = sub_2392A8728(v6, a2, a3);
          goto LABEL_35;
        case 84:
          v9 = sub_2392A8A24(v6, a2, a3);
          goto LABEL_35;
        case 85:
          v9 = sub_2392A8DAC(v6, a2, a3);
          goto LABEL_35;
        case 86:
          v9 = sub_2392A9134(v6, a2, a3);
          goto LABEL_35;
        case 87:
          v9 = sub_2392A9350(v6, a2, a3);
          goto LABEL_35;
        case 89:
          v9 = sub_2392A9444(v6, a2, a3);
          goto LABEL_35;
        case 91:
          v9 = sub_2392A97CC(v6, a2, a3);
          goto LABEL_35;
        case 92:
          v9 = sub_2392A9860(v6, a2, a3);
          goto LABEL_35;
        case 93:
          v9 = sub_2392A99E0(v6, a2, a3);
          goto LABEL_35;
        case 94:
          v9 = sub_2392A9A98(v6, a2, a3);
          goto LABEL_35;
        case 95:
          v9 = sub_2392A9E20(v6, a2, a3);
          goto LABEL_35;
        case 96:
          v9 = sub_2392AA068(v6, a2, a3);
          goto LABEL_35;
        case 97:
          v9 = sub_2392AA60C(v6, a2, a3);
          goto LABEL_35;
        case 98:
          v9 = sub_2392AABB0(v6, a2, a3);
          goto LABEL_35;
        case 113:
          v9 = sub_2392AAE7C(v6, a2, a3);
          goto LABEL_35;
        case 114:
          v9 = sub_2392AB1BC(v6, a2, a3);
          goto LABEL_35;
        case 128:
          v9 = sub_2392AB4FC(v6, a2, a3);
          goto LABEL_35;
        case 129:
          v9 = sub_2392AB700(v6, a2, a3);
          goto LABEL_35;
        case 144:
          v9 = sub_2392AB8E8(v6, a2, a3);
          goto LABEL_35;
        case 145:
          v9 = sub_2392AC470(v6, a2, a3);
          goto LABEL_35;
        case 148:
          v9 = sub_2392AD6E4(v6, a2, a3);
          goto LABEL_35;
        case 149:
          v9 = sub_2392AD888(v6, a2, a3);
          goto LABEL_35;
        case 151:
          v9 = sub_2392AE350(v6, a2, a3);
          goto LABEL_35;
        case 152:
          v9 = sub_2392AE8E8(v6, a2, a3);
          goto LABEL_35;
        case 153:
          v9 = sub_2392AF6D0(v6, a2, a3);
          goto LABEL_35;
        case 155:
          v9 = sub_2392AF978(v6, a2, a3);
          goto LABEL_35;
        case 156:
          v9 = sub_2392AFE60(v6, a2, a3);
          goto LABEL_35;
        case 157:
          v9 = sub_2392B0070(v6, a2, a3);
          goto LABEL_35;
        case 158:
          v9 = sub_2392B03F8(v6, a2, a3);
          goto LABEL_35;
        case 159:
          v9 = sub_2392B0780(v6, a2, a3);
          goto LABEL_35;
        case 160:
          v9 = sub_2392B0B08(v6, a2, a3);
          goto LABEL_35;
        default:
          if (v10 == -918523)
          {
            v9 = sub_2392C45C8(v6, a2, a3);
          }

          else
          {
            if (v10 != -918496)
            {
              goto LABEL_132;
            }

            v9 = sub_2392C6D74(v6, a2, a3);
          }

          break;
      }

      goto LABEL_35;
    }

    if (v10 <= 1282)
    {
      if (v10 <= 1028)
      {
        if (v10 <= 513)
        {
          if (v10 <= 260)
          {
            switch(v10)
            {
              case 257:
                v9 = sub_2392B0F7C(v6, a2, a3);
                goto LABEL_35;
              case 258:
                v9 = sub_2392B1608(v6, a2, a3);
                goto LABEL_35;
              case 260:
                v9 = sub_2392B17A8(v6, a2, a3);
                goto LABEL_35;
            }
          }

          else
          {
            if (v10 > 511)
            {
              if (v10 == 512)
              {
                sub_2392B2EF4(v6, a2, a3);
              }

              else
              {
                sub_2392B30A0(v6, a2, a3);
              }

              goto LABEL_128;
            }

            if (v10 == 261)
            {
              v9 = sub_2392B1DD0(v6, a2, a3);
              goto LABEL_35;
            }

            if (v10 == 336)
            {
              v9 = sub_2392B2458(v6, a2, a3);
              goto LABEL_35;
            }
          }
        }

        else if (v10 > 1023)
        {
          if (v10 > 1026)
          {
            if (v10 == 1027)
            {
              sub_2392B4C78(v6, a2, a3);
            }

            else
            {
              sub_2392B4DD8(v6, a2, a3);
            }

            goto LABEL_128;
          }

          if (v10 == 1024)
          {
            v9 = sub_2392B49F4(v6, a2, a3);
            goto LABEL_35;
          }

          if (v10 == 1026)
          {
            v9 = sub_2392B4B14(v6, a2, a3);
            goto LABEL_35;
          }
        }

        else if (v10 > 767)
        {
          if (v10 == 768)
          {
            v9 = sub_2392B44BC(v6, a2, a3);
            goto LABEL_35;
          }

          if (v10 == 769)
          {
            v9 = sub_2392B4774(v6, a2, a3);
            goto LABEL_35;
          }
        }

        else
        {
          if (v10 == 514)
          {
            v9 = sub_2392B40F4(v6, a2, a3);
            goto LABEL_35;
          }

          if (v10 == 516)
          {
            v9 = sub_2392B43C8(v6, a2, a3);
            goto LABEL_35;
          }
        }
      }

      else if (v10 > 1067)
      {
        if (v10 <= 1071)
        {
          if (v10 > 1069)
          {
            if (v10 == 1070)
            {
              sub_2392B6098(v6, a2, a3);
            }

            else
            {
              sub_2392B6248(v6, a2, a3);
            }
          }

          else if (v10 == 1068)
          {
            sub_2392B5D38(v6, a2, a3);
          }

          else
          {
            sub_2392B5EE8(v6, a2, a3);
          }

          goto LABEL_128;
        }

        if (v10 > 1105)
        {
          if (v10 == 1106)
          {
            v9 = sub_2392B6A04(v6, a2, a3);
            goto LABEL_35;
          }

          if (v10 == 1107)
          {
            v9 = sub_2392B6C08(v6, a2, a3);
            goto LABEL_35;
          }
        }

        else
        {
          if (v10 == 1072)
          {
            v9 = sub_2392B63F8(v6, a2, a3);
            goto LABEL_35;
          }

          if (v10 == 1105)
          {
            v9 = sub_2392B6918(v6, a2, a3);
            goto LABEL_35;
          }
        }
      }

      else if (v10 > 1042)
      {
        if (v10 > 1065)
        {
          if (v10 == 1066)
          {
            sub_2392B59D8(v6, a2, a3);
          }

          else
          {
            sub_2392B5B88(v6, a2, a3);
          }

          goto LABEL_128;
        }

        if (v10 == 1043)
        {
          v9 = sub_2392B5678(v6, a2, a3);
          goto LABEL_35;
        }

        if (v10 == 1045)
        {
          v9 = sub_2392B5828(v6, a2, a3);
          goto LABEL_35;
        }
      }

      else if (v10 > 1035)
      {
        if (v10 == 1036)
        {
          v9 = sub_2392B5318(v6, a2, a3);
          goto LABEL_35;
        }

        if (v10 == 1037)
        {
          v9 = sub_2392B54C8(v6, a2, a3);
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 == 1029)
        {
          v9 = sub_2392B4F34(v6, a2, a3);
          goto LABEL_35;
        }

        if (v10 == 1030)
        {
          v9 = sub_2392B5090(v6, a2, a3);
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (v10 <= 1361)
      {
        switch(v10)
        {
          case 1283:
            v9 = sub_2392B6F3C(v6, a2, a3);
            goto LABEL_35;
          case 1284:
            v9 = sub_2392B7078(v6, a2, a3);
            goto LABEL_35;
          case 1285:
            v9 = sub_2392B79C8(v6, a2, a3);
            goto LABEL_35;
          case 1286:
            v9 = sub_2392B7C48(v6, a2, a3);
            goto LABEL_35;
          case 1287:
            v9 = sub_2392B8A58(v6, a2, a3);
            goto LABEL_35;
          case 1288:
            v12 = 0;
            v24 = 0x4280000000B5;
            goto LABEL_45;
          case 1289:
            v12 = 0;
            v24 = 0x428D000000B5;
            goto LABEL_45;
          case 1290:
            v9 = sub_2392B8D74(v6, a2, a3);
            goto LABEL_35;
          case 1291:
            v9 = sub_2392B8F30(v6, a2, a3);
            goto LABEL_35;
          case 1292:
            v9 = sub_2392B91DC(v6, a2, a3);
            goto LABEL_35;
          case 1293:
            v9 = sub_2392B9524(v6, a2, a3);
            goto LABEL_35;
          case 1294:
            v12 = 0;
            v24 = 0x43D8000000B5;
            goto LABEL_45;
          case 1295:
            v9 = sub_2392B9970(v6, a2, a3);
            goto LABEL_35;
          case 1296:
            v12 = 0;
            v24 = 0x4492000000B5;
            goto LABEL_45;
          default:
            if (v10 == 1360)
            {
              v9 = sub_2392B9EB8(v6, a2, a3);
            }

            else
            {
              if (v10 != 1361)
              {
                goto LABEL_132;
              }

              v9 = sub_2392BA740(v6, a2, a3);
            }

            break;
        }

        goto LABEL_35;
      }

      if (v10 > 1873)
      {
        if (v10 > 2821)
        {
          if (v10 > 323615743)
          {
            if (v10 == 323615744)
            {
              v9 = sub_2392C4470(v6, a2, a3);
              goto LABEL_35;
            }

            if (v10 == 323615747)
            {
              v9 = sub_2392C4534(v6, a2, a3);
              goto LABEL_35;
            }
          }

          else
          {
            if (v10 == 2822)
            {
              v9 = sub_2392C3DD0(v6, a2, a3);
              goto LABEL_35;
            }

            if (v10 == 2823)
            {
              v9 = sub_2392C4134(v6, a2, a3);
              goto LABEL_35;
            }
          }
        }

        else if (v10 > 2048)
        {
          if (v10 == 2049)
          {
            v9 = sub_2392C3658(v6, a2, a3);
            goto LABEL_35;
          }

          if (v10 == 2050)
          {
            v9 = sub_2392C3B08(v6, a2, a3);
            goto LABEL_35;
          }
        }

        else
        {
          if (v10 == 1874)
          {
            v9 = sub_2392C186C(v6, a2, a3);
            goto LABEL_35;
          }

          if (v10 == 1875)
          {
            v9 = sub_2392C35B8(v6, a2, a3);
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (v10 <= 1365)
        {
          if (v10 > 1363)
          {
            if (v10 == 1364)
            {
              sub_2392BCAE4(v6, a2, a3);
            }

            else
            {
              sub_2392BCDA4(v6, a2, a3);
            }
          }

          else if (v10 == 1362)
          {
            sub_2392BC01C(v6, a2, a3);
          }

          else
          {
            sub_2392BC824(v6, a2, a3);
          }

          v9 = LABEL_128:;
          goto LABEL_35;
        }

        if (v10 > 1871)
        {
          if (v10 == 1872)
          {
            sub_2392C1030(v6, a2, a3);
          }

          else
          {
            sub_2392C17D8(v6, a2, a3);
          }

          goto LABEL_128;
        }

        if (v10 == 1366)
        {
          v9 = sub_2392BE208(v6, a2, a3);
          goto LABEL_35;
        }

        if (v10 == 1792)
        {
          v9 = sub_2392BE4C0(v6, a2, a3);
          goto LABEL_35;
        }
      }
    }

LABEL_132:
    v12 = 0;
    v24 = 0x5A6B000000B5;
    goto LABEL_45;
  }

  if (v6 <= 0xFFFAu)
  {
    if (v6 == 65528)
    {
      sub_2393C5AAC(v30);
      sub_2393C5ADC(v30, 0, 0);
      v20 = sub_238F36BB4(v30, a2);
      v12 = 0;
      *a3 = v20;
      a3[1] = v21;
      if (v20)
      {
        goto LABEL_46;
      }

      v12 = objc_opt_new();
      sub_2393C5AAC(v28);
      v26 = 0;
      v27 = 0;
      sub_2393C5BDC(v28, v30);
      while (sub_238E72E88(&v26))
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
        [v12 addObject:v22];
      }
    }

    else
    {
      if (v6 != 65529)
      {
LABEL_44:
        v12 = 0;
        v24 = 0x90000000B5;
LABEL_45:
        *a3 = v24;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_46;
      }

      sub_2393C5AAC(v30);
      sub_2393C5ADC(v30, 0, 0);
      v11 = sub_238F36BB4(v30, a2);
      v12 = 0;
      *a3 = v11;
      a3[1] = v13;
      if (v11)
      {
        goto LABEL_46;
      }

      v12 = objc_opt_new();
      sub_2393C5AAC(v28);
      v26 = 0;
      v27 = 0;
      sub_2393C5BDC(v28, v30);
      while (sub_238E72E88(&v26))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
        [v12 addObject:v14];
      }
    }
  }

  else
  {
    if (v6 != 65531)
    {
      if (v6 != 65532)
      {
        if (v6 == 65533)
        {
          LOWORD(v26) = 0;
          v7 = sub_2393C5F70(a2, &v26);
          *a3 = v7;
          a3[1] = v8;
          if (!v7)
          {
            v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v26];
LABEL_35:
            v12 = v9;
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        goto LABEL_44;
      }

      LODWORD(v26) = 0;
      v18 = sub_2393C5FC8(a2, &v26);
      *a3 = v18;
      a3[1] = v19;
      if (!v18)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
        goto LABEL_35;
      }

LABEL_43:
      v12 = 0;
      goto LABEL_46;
    }

    sub_2393C5AAC(v30);
    sub_2393C5ADC(v30, 0, 0);
    v15 = sub_238F36BB4(v30, a2);
    v12 = 0;
    *a3 = v15;
    a3[1] = v16;
    if (v15)
    {
      goto LABEL_46;
    }

    v12 = objc_opt_new();
    sub_2393C5AAC(v28);
    v26 = 0;
    v27 = 0;
    sub_2393C5BDC(v28, v30);
    while (sub_238E72E88(&v26))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
      [v12 addObject:v17];
    }
  }

  if (v26 != 33 && v26)
  {
    v23 = v27;
    *a3 = v26;
    a3[1] = v23;

    goto LABEL_43;
  }

LABEL_46:

  return v12;
}

id sub_23929F680(int a1, uint64_t a2, void *a3)
{
  if (a1 == 1)
  {
    v10 = 0;
    v7 = sub_238F01014(a2, &v10);
    *a3 = v7;
    a3[1] = v8;
    if (v7)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_9;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
  }

  else
  {
    if (!a1)
    {
      v11 = 0;
      v4 = sub_2393C5F70(a2, &v11);
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    v6 = 0;
    *a3 = 0xB4000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

LABEL_9:

  return v6;
}

id sub_23929F74C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0xCC000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_238EA4DB4(a2, &v8);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    }
  }

  return v4;
}

id sub_23929F7E0(int a1, uint64_t a2, void *a3)
{
  if (a1 > 0x4000)
  {
    switch(a1)
    {
      case 16385:
        v22 = 0;
        v11 = sub_2393C5F70(a2, &v22);
        *a3 = v11;
        a3[1] = v12;
        if (!v11)
        {
          v13 = MEMORY[0x277CCABB0];
          v14 = v22;
LABEL_16:
          v6 = [v13 numberWithUnsignedShort:v14];
          goto LABEL_22;
        }

        break;
      case 16386:
        v21 = 0;
        v15 = sub_2393C5F70(a2, &v21);
        *a3 = v15;
        a3[1] = v16;
        if (!v15)
        {
          v13 = MEMORY[0x277CCABB0];
          v14 = v21;
          goto LABEL_16;
        }

        break;
      case 16387:
        v20 = 0;
        v4 = sub_238F0C9D0(a2, &v20);
        *a3 = v4;
        a3[1] = v5;
        if (!v4 && HIBYTE(v20) == 1)
        {
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
          goto LABEL_22;
        }

        break;
      default:
        goto LABEL_19;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_22;
  }

  if (a1)
  {
    if (a1 != 0x4000)
    {
LABEL_19:
      v6 = 0;
      *a3 = 0x114000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_22;
    }

    v23 = 0;
    v7 = sub_2393C5CE4(a2, &v23);
    *a3 = v7;
    a3[1] = v8;
    if (v7)
    {
      goto LABEL_18;
    }

    v9 = MEMORY[0x277CCABB0];
    v10 = v23;
  }

  else
  {
    v24 = 0;
    v17 = sub_2393C5CE4(a2, &v24);
    *a3 = v17;
    a3[1] = v18;
    if (v17)
    {
      goto LABEL_18;
    }

    v9 = MEMORY[0x277CCABB0];
    v10 = v24;
  }

  v6 = [v9 numberWithBool:v10];
LABEL_22:

  return v6;
}

id sub_23929F964(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 17:
    case 20:
      goto LABEL_9;
    case 1:
    case 4:
    case 5:
    case 6:
    case 16:
      v14 = 0;
      v4 = sub_2393C5F70(a2, &v14);
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    case 2:
    case 3:
      LOBYTE(v14) = 0;
      v7 = sub_2393C5ED0(a2, &v14);
      goto LABEL_14;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      goto LABEL_12;
    case 15:
      LOBYTE(v14) = 0;
      v7 = sub_238EA4DB4(a2, &v14);
LABEL_14:
      *a3 = v7;
      a3[1] = v8;
      if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 18:
    case 19:
      LOBYTE(v14) = 0;
      v15 = 0;
      v9 = sub_238EFD714(a2, &v14);
      *a3 = v9;
      a3[1] = v10;
      if (v9 || v15 != 1)
      {
        goto LABEL_15;
      }

LABEL_3:
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v14];
      break;
    default:
      if (a1 == 0x4000)
      {
LABEL_9:
        v14 = 0;
        v11 = sub_238F00228(a2, &v14);
        *a3 = v11;
        a3[1] = v12;
        if (v11 || HIBYTE(v14) != 1)
        {
LABEL_15:
          v6 = 0;
        }

        else
        {
LABEL_11:
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
        }
      }

      else
      {
LABEL_12:
        v6 = 0;
        *a3 = 0x1D3000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      }

      break;
  }

  return v6;
}

id sub_23929FABC(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        sub_2393C5AAC(v41);
        sub_2393C5ADC(v41, 0, 0);
        v18 = sub_238F36BB4(v41, a2);
        v6 = 0;
        *a3 = v18;
        a3[1] = v19;
        if (v18)
        {
          goto LABEL_49;
        }

        v6 = objc_opt_new();
        sub_2393C5AAC(v37);
        v36 = 0uLL;
        sub_2393C5BDC(v37, v41);
        while (sub_238DD5C4C(&v36))
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v38];
          [v6 addObject:v20];
        }

        goto LABEL_43;
      case 4:
        sub_2393C5AAC(v41);
        sub_2393C5ADC(v41, 0, 0);
        v24 = sub_238F36BB4(v41, a2);
        v6 = 0;
        *a3 = v24;
        a3[1] = v25;
        if (v24)
        {
          goto LABEL_49;
        }

        v6 = objc_opt_new();
        sub_2393C5AAC(v37);
        v36 = 0uLL;
        sub_2393C5BDC(v37, v41);
        LOBYTE(v38) = 0;
        BYTE2(v38) = 0;
        v39 = 0;
        v40[0] = 0;
        while (sub_238EA1A80(&v36) && sub_2392C6EA8(&v36))
        {
          v26 = objc_opt_new();
          v27 = v26;
          if ((v38 & 0x10000) != 0)
          {
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v38];
            [v27 setMfgCode:v28];
          }

          else
          {
            [v26 setMfgCode:0];
          }

          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v39];
          [v27 setNamespaceID:v29];

          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v39)];
          [v27 setTag:v30];

          if (v40[0] == 1 && (sub_238DE36B8(v40)[16] & 1) != 0)
          {
            v31 = sub_238DE36B8(v40);
            if ((v31[16] & 1) == 0)
            {
              sub_238EA195C();
            }

            v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v31 length:*(v31 + 1) encoding:4];
            [v27 setLabel:v32];

            v33 = [v27 label];

            if (!v33)
            {
              *a3 = xmmword_278A74628;

              goto LABEL_46;
            }
          }

          else
          {
            [v27 setLabel:0];
          }

          [v6 addObject:v27];
        }

        goto LABEL_43;
      case 5:
        v36 = 0uLL;
        v9 = sub_2393C61E0(a2, &v36);
        v6 = 0;
        *a3 = v9;
        a3[1] = v10;
        if (!v9)
        {
          v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v36 length:*(&v36 + 1) encoding:4];
          v6 = v11;
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            *a3 = xmmword_278A74638;
          }
        }

        goto LABEL_49;
    }

    goto LABEL_24;
  }

  if (!a1)
  {
    sub_2393C5AAC(v41);
    sub_2393C5ADC(v41, 0, 0);
    v13 = sub_238F36BB4(v41, a2);
    v6 = 0;
    *a3 = v13;
    a3[1] = v14;
    if (v13)
    {
      goto LABEL_49;
    }

    v6 = objc_opt_new();
    sub_2393C5AAC(v37);
    v36 = 0uLL;
    sub_2393C5BDC(v37, v41);
    v38 = 0;
    v39 = 0;
    while (sub_238EA1A80(&v36) && sub_2392C6E58(&v36))
    {
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
      [v15 setDeviceType:v16];

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v39];
      [v15 setRevision:v17];

      [v6 addObject:v15];
    }

    goto LABEL_43;
  }

  if (a1 == 1)
  {
    sub_2393C5AAC(v41);
    sub_2393C5ADC(v41, 0, 0);
    v21 = sub_238F36BB4(v41, a2);
    v6 = 0;
    *a3 = v21;
    a3[1] = v22;
    if (v21)
    {
      goto LABEL_49;
    }

    v6 = objc_opt_new();
    sub_2393C5AAC(v37);
    v36 = 0uLL;
    sub_2393C5BDC(v37, v41);
    while (sub_238E72E88(&v36))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
      [v6 addObject:v23];
    }

    goto LABEL_43;
  }

  if (a1 != 2)
  {
LABEL_24:
    v6 = 0;
    *a3 = 0x296000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_49;
  }

  sub_2393C5AAC(v41);
  sub_2393C5ADC(v41, 0, 0);
  v5 = sub_238F36BB4(v41, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (v5)
  {
    goto LABEL_49;
  }

  v6 = objc_opt_new();
  sub_2393C5AAC(v37);
  v36 = 0uLL;
  sub_2393C5BDC(v37, v41);
  while (sub_238E72E88(&v36))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
    [v6 addObject:v8];
  }

LABEL_43:
  if (v36 != 33 && v36)
  {
    v34 = *(&v36 + 1);
    *a3 = v36;
    a3[1] = v34;
LABEL_46:

    v6 = 0;
  }

LABEL_49:

  return v6;
}

id sub_2392A0144(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x2D2000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v22);
    sub_2393C5ADC(v22, 0, 0);
    v22[72] = 0;
    v6 = sub_238F36BB4(v22, a2);
    v4 = 0;
    *a3 = v6;
    a3[1] = v7;
    if (!v6)
    {
      v4 = objc_opt_new();
      sub_2392C6EFC(v22, v17);
      while (sub_2392C6F54(v17))
      {
        v8 = objc_opt_new();
        v9 = v8;
        if (v18[0] == 1)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v18)];
          [v9 setNode:v10];
        }

        else
        {
          [v8 setNode:0];
        }

        if (v19[0] == 1)
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v19)];
          [v9 setGroup:v11];
        }

        else
        {
          [v9 setGroup:0];
        }

        if (v20[0] == 1)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v20)];
          [v9 setEndpoint:v12];
        }

        else
        {
          [v9 setEndpoint:0];
        }

        if (v21[0] == 1)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v21)];
          [v9 setCluster:v13];
        }

        else
        {
          [v9 setCluster:0];
        }

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v21[8]];
        [v9 setFabricIndex:v14];

        [v4 addObject:v9];
      }

      if (LODWORD(v17[0]) != 33 && LODWORD(v17[0]))
      {
        v15 = v17[1];
        *a3 = v17[0];
        a3[1] = v15;

        v4 = 0;
      }
    }
  }

  return v4;
}

id sub_2392A0400(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          goto LABEL_7;
        }

        goto LABEL_57;
      }

      sub_2393C5AAC(&v51);
      sub_2393C5ADC(&v51, 0, 0);
      v54 = 0;
      v43 = sub_238F36BB4(&v51, a2);
      v7 = 0;
      *a3 = v43;
      a3[1] = v44;
      if (v43)
      {
        goto LABEL_83;
      }

      v7 = objc_opt_new();
      v69[0] = v54;
      if (v54 == 1)
      {
        v69[1] = v55;
      }

      sub_238EA4630(v59, &v51, v69);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      while (sub_2392C7140(v59))
      {
        v45 = objc_opt_new();
        v46 = [MEMORY[0x277CBEA90] dataWithBytes:v62 length:v63];
        [v45 setData:v46];

        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v64];
        [v45 setFabricIndex:v47];

        [v7 addObject:v45];
      }
    }

    else
    {
      sub_2393C5AAC(v69);
      sub_2393C5ADC(v20, 0, 0);
      v70 = 0;
      v21 = sub_238F36BB4(v69, a2);
      v7 = 0;
      *a3 = v21;
      a3[1] = v22;
      if (v21)
      {
        goto LABEL_83;
      }

      v7 = objc_opt_new();
      sub_2392C7004(v69, v59);
      while (sub_2392C7060(v59))
      {
        v11 = objc_opt_new();
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v62];
        [v11 setPrivilege:v23];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v62)];
        [v11 setAuthMode:v24];

        if (v65)
        {
          v14 = objc_opt_new();
          if ((v65 & 1) == 0)
          {
            sub_238EA195C();
          }

          sub_2393C5AAC(v53);
          v51 = 0;
          v52 = 0;
          sub_2393C5BDC(v53, &v63);
          while (sub_2392C70EC(&v51))
          {
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56];
            [v14 addObject:v25];
          }

          if (v51 != 33)
          {
            v18 = v51;
            if (v51)
            {
LABEL_80:
              v49 = v52;
              *a3 = v18;
              a3[1] = v49;

              goto LABEL_81;
            }
          }

          [v11 setSubjects:v14];
        }

        else
        {
          [v11 setSubjects:0];
        }

        if (v67)
        {
          v14 = objc_opt_new();
          if ((v67 & 1) == 0)
          {
            sub_238EA195C();
          }

          sub_2393C5AAC(v53);
          v51 = 0;
          v52 = 0;
          sub_2393C5BDC(v53, &v66);
          LOBYTE(v56) = 0;
          BYTE4(v56) = 0;
          LOBYTE(v57) = 0;
          BYTE2(v57) = 0;
          BYTE4(v57) = 0;
          LOBYTE(v58) = 0;
          while (1)
          {
            v26 = sub_238EA1A80(&v51);
            LODWORD(v27) = v51;
            if (v51)
            {
              v26 = 0;
            }

            if (!v26)
            {
              break;
            }

            v56 = 0;
            v57 = 0;
            v58 = 0;
            v27 = sub_238EFE418(&v56, v53);
            v51 = v27;
            v52 = v28;
            if (v27)
            {
              break;
            }

            v29 = objc_opt_new();
            v30 = v29;
            if ((v56 & 0x100000000) != 0)
            {
              v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v56];
              [v30 setCluster:v31];
            }

            else
            {
              [v29 setCluster:0];
            }

            if ((v57 & 0x10000) != 0)
            {
              v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v57];
              [v30 setEndpoint:v32];
            }

            else
            {
              [v30 setEndpoint:0];
            }

            if (v58)
            {
              v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v57)];
              [v30 setDeviceType:v33];
            }

            else
            {
              [v30 setDeviceType:0];
            }

            [v14 addObject:v30];
          }

          if (v27 != 33)
          {
            v18 = v51;
            if (v51)
            {
              goto LABEL_80;
            }
          }

          [v11 setTargets:v14];
        }

        else
        {
          [v11 setTargets:0];
        }

        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v68];
        [v11 setFabricIndex:v34];

        [v7 addObject:v11];
      }
    }
  }

  else
  {
    if (a1 <= 4)
    {
LABEL_7:
      LOWORD(v59[0]) = 0;
      v5 = sub_2393C5F70(a2, v59);
      *a3 = v5;
      a3[1] = v6;
      if (!v5)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v59[0])];
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        sub_2393C5AAC(v69);
        sub_2393C5ADC(v8, 0, 0);
        v70 = 0;
        v9 = sub_238F36BB4(v69, a2);
        v7 = 0;
        *a3 = v9;
        a3[1] = v10;
        if (v9)
        {
          goto LABEL_83;
        }

        v7 = objc_opt_new();
        sub_2392C7210(v69, v59);
        while (sub_2392C7284(v59))
        {
          v11 = objc_opt_new();
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v62];
          [v11 setEndpoint:v12];

          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v62)];
          [v11 setCluster:v13];

          v14 = objc_opt_new();
          sub_2393C5AAC(v53);
          v51 = 0;
          v52 = 0;
          sub_2393C5BDC(v53, &v63);
          LOBYTE(v56) = 0;
          BYTE4(v56) = 0;
          LOBYTE(v57) = 0;
          while (sub_2392C71B8(&v51))
          {
            v15 = objc_opt_new();
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
            [v15 setType:v16];

            if (v57)
            {
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v56)];
              [v15 setId:v17];
            }

            else
            {
              [v15 setId:0];
            }

            [v14 addObject:v15];
          }

          if (v51 != 33)
          {
            v18 = v51;
            if (v51)
            {
              goto LABEL_80;
            }
          }

          [v11 setRestrictions:v14];

          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v65];
          [v11 setFabricIndex:v19];

          [v7 addObject:v11];
        }

        goto LABEL_77;
      }

LABEL_57:
      v7 = 0;
      *a3 = 0x3D5000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_83;
    }

    sub_2393C5AAC(v69);
    sub_2393C5ADC(v35, 0, 0);
    v36 = sub_238F36BB4(v69, a2);
    v7 = 0;
    *a3 = v36;
    a3[1] = v37;
    if (v36)
    {
      goto LABEL_83;
    }

    v7 = objc_opt_new();
    sub_2392C72D8(v59, v69);
    while (sub_238EA1A80(v59) && sub_2392C7338(v59))
    {
      v11 = objc_opt_new();
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v60];
      [v11 setEndpoint:v38];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v61];
      [v11 setCluster:v39];

      v14 = objc_opt_new();
      sub_2393C5AAC(v53);
      v51 = 0;
      v52 = 0;
      sub_2393C5BDC(v53, &v62);
      LOBYTE(v56) = 0;
      BYTE4(v56) = 0;
      LOBYTE(v57) = 0;
      while (sub_2392C71B8(&v51))
      {
        v40 = objc_opt_new();
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
        [v40 setType:v41];

        if (v57)
        {
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v56)];
          [v40 setId:v42];
        }

        else
        {
          [v40 setId:0];
        }

        [v14 addObject:v40];
      }

      if (v51 != 33)
      {
        v18 = v51;
        if (v51)
        {
          goto LABEL_80;
        }
      }

      [v11 setRestrictions:v14];

      [v7 addObject:v11];
    }
  }

LABEL_77:
  if (LODWORD(v59[0]) != 33 && LODWORD(v59[0]))
  {
    v48 = v59[1];
    *a3 = v59[0];
    a3[1] = v48;
LABEL_81:

LABEL_82:
    v7 = 0;
  }

LABEL_83:

  return v7;
}

id sub_2392A0E70(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 2)
  {
    v39 = 0uLL;
    v29 = sub_2393C61E0(a2, &v39);
    v6 = 0;
    *a3 = v29;
    a3[1] = v30;
    if (!v29)
    {
      v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v39 length:*(&v39 + 1) encoding:4];
      v6 = v31;
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        *a3 = xmmword_278A74668;
      }
    }
  }

  else if (a1 == 1)
  {
    sub_2393C5AAC(v45);
    sub_2393C5ADC(v19, 0, 0);
    v20 = sub_238F36BB4(v45, a2);
    v6 = 0;
    *a3 = v20;
    a3[1] = v21;
    if (!v20)
    {
      v6 = objc_opt_new();
      sub_2392C7478(&v39, v45);
      while (sub_238EA1A80(&v39) && sub_2392C74DC(&v39))
      {
        v22 = objc_opt_new();
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v41];
        [v22 setEndpointListID:v23];

        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v42 length:v43[0] encoding:4];
        [v22 setName:v24];

        v25 = [v22 name];

        if (!v25)
        {
          *a3 = xmmword_278A74658;
          goto LABEL_37;
        }

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v43[1])];
        [v22 setType:v26];

        v27 = objc_opt_new();
        sub_2393C5AAC(v38);
        v36 = 0;
        v37 = 0;
        sub_2393C5BDC(v38, &v44);
        while (sub_238DD5C4C(&v36))
        {
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v38[36]];
          [v27 addObject:v28];
        }

        if (v36 != 33 && v36)
        {
          v34 = v37;
          *a3 = v36;
          a3[1] = v34;

LABEL_37:
LABEL_38:

          v6 = 0;
          goto LABEL_39;
        }

        [v22 setEndpoints:v27];

        [v6 addObject:v22];
      }

      if (v39 == 33)
      {
        goto LABEL_39;
      }

LABEL_30:
      if (v39)
      {
        v33 = *(&v39 + 1);
        *a3 = v39;
        a3[1] = v33;
        goto LABEL_38;
      }
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x449000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(&v36);
    sub_2393C5ADC(&v36, 0, 0);
    v5 = sub_238F36BB4(&v36, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(v40);
      v39 = 0uLL;
      sub_2393C5BDC(v40, &v36);
      LOWORD(v41) = 0;
      *(&v43[1] + 2) = 0;
      BYTE6(v43[1]) = 0;
      v42 = 0;
      v43[0] = 0;
      LOBYTE(v43[1]) = 0;
      while (1)
      {
        v8 = sub_238EA1A80(&v39);
        LODWORD(v9) = v39;
        if (v39)
        {
          v8 = 0;
        }

        if (!v8)
        {
          break;
        }

        v41 = 0;
        v42 = 0;
        memset(v43, 0, 15);
        v9 = sub_238EFF9E4(&v41, v40);
        *&v39 = v9;
        *(&v39 + 1) = v10;
        if (v9)
        {
          break;
        }

        v11 = objc_opt_new();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v41];
        [v11 setActionID:v12];

        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v42 length:v43[0] encoding:4];
        [v11 setName:v13];

        v14 = [v11 name];

        if (!v14)
        {
          *a3 = xmmword_278A74648;

          goto LABEL_38;
        }

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v43[1])];
        [v11 setType:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v43[1])];
        [v11 setEndpointListID:v16];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v43[1])];
        [v11 setSupportedCommands:v17];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v43[1])];
        [v11 setState:v18];

        [v6 addObject:v11];
      }

      if (v9 != 33)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_39:

  return v6;
}

id sub_2392A1440(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 4:
    case 7:
    case 22:
      LOWORD(v50) = 0;
      v4 = sub_2393C5F70(a2, &v50);
      *a3 = v4;
      a3[1] = v5;
      if (v4)
      {
        goto LABEL_22;
      }

      goto LABEL_3;
    case 1:
      v50 = 0uLL;
      v33 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v33;
      a3[1] = v34;
      if (v33)
      {
        break;
      }

      v11 = sub_2392C6E08(v50, *(&v50 + 1));
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A74678;
      goto LABEL_63;
    case 2:
      LOWORD(v50) = 0;
      v25 = sub_238F36E54(a2, &v50);
      v11 = 0;
      if (v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v25)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      *a3 = v28;
      a3[1] = v27;
      if (v28)
      {
        break;
      }

LABEL_3:
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v50];
      goto LABEL_8;
    case 3:
      v50 = 0uLL;
      v29 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v29;
      a3[1] = v30;
      if (v29)
      {
        break;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v50 length:*(&v50 + 1) encoding:4];
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A74688;
      goto LABEL_63;
    case 5:
      v50 = 0uLL;
      v31 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v31;
      a3[1] = v32;
      if (v31)
      {
        break;
      }

      v11 = sub_2392C6E08(v50, *(&v50 + 1));
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A74698;
      goto LABEL_63;
    case 6:
      v50 = 0uLL;
      v41 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v41;
      a3[1] = v42;
      if (v41)
      {
        break;
      }

      v11 = sub_2392C6E08(v50, *(&v50 + 1));
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A746A8;
      goto LABEL_63;
    case 8:
      v50 = 0uLL;
      v35 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v35;
      a3[1] = v36;
      if (v35)
      {
        break;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v50 length:*(&v50 + 1) encoding:4];
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A746B8;
      goto LABEL_63;
    case 9:
    case 21:
    case 24:
      LODWORD(v50) = 0;
      v7 = sub_2393C5FC8(a2, &v50);
      *a3 = v7;
      a3[1] = v8;
      if (v7)
      {
        goto LABEL_22;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v50];
      goto LABEL_8;
    case 10:
      v50 = 0uLL;
      v17 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v17;
      a3[1] = v18;
      if (v17)
      {
        break;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v50 length:*(&v50 + 1) encoding:4];
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A746C8;
      goto LABEL_63;
    case 11:
      v50 = 0uLL;
      v37 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v37;
      a3[1] = v38;
      if (v37)
      {
        break;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v50 length:*(&v50 + 1) encoding:4];
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A746D8;
      goto LABEL_63;
    case 12:
      v50 = 0uLL;
      v39 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v39;
      a3[1] = v40;
      if (v39)
      {
        break;
      }

      v11 = sub_2392C6E08(v50, *(&v50 + 1));
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A746E8;
      goto LABEL_63;
    case 13:
      v50 = 0uLL;
      v45 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v45;
      a3[1] = v46;
      if (v45)
      {
        break;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v50 length:*(&v50 + 1) encoding:4];
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A746F8;
      goto LABEL_63;
    case 14:
      v50 = 0uLL;
      v43 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v43;
      a3[1] = v44;
      if (v43)
      {
        break;
      }

      v11 = sub_2392C6E08(v50, *(&v50 + 1));
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A74708;
      goto LABEL_63;
    case 15:
      v50 = 0uLL;
      v12 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v12;
      a3[1] = v13;
      if (v12)
      {
        break;
      }

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v50 length:*(&v50 + 1) encoding:4];
      if (v11)
      {
        goto LABEL_57;
      }

      v14 = &xmmword_278A74718;
      goto LABEL_63;
    case 16:
    case 17:
      LOBYTE(v50) = 0;
      v9 = sub_2393C5CE4(a2, &v50);
      *a3 = v9;
      a3[1] = v10;
      if (v9)
      {
        goto LABEL_22;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithBool:v50];
LABEL_8:
      v11 = v6;
      break;
    case 18:
      v50 = 0uLL;
      v15 = sub_2393C61E0(a2, &v50);
      v11 = 0;
      *a3 = v15;
      a3[1] = v16;
      if (v15)
      {
        break;
      }

      v11 = sub_2392C6E08(v50, *(&v50 + 1));
      if (v11)
      {
LABEL_57:
        v47 = v11;
      }

      else
      {
        v14 = &xmmword_278A74728;
LABEL_63:
        *a3 = *v14;
      }

      break;
    case 19:
      LODWORD(v50) = 0;
      v23 = sub_238F01D20(&v50, a2);
      *a3 = v23;
      a3[1] = v24;
      if (v23)
      {
        goto LABEL_22;
      }

      v11 = objc_opt_new();
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v50];
      [v11 setCaseSessionsPerFabric:v48];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v50)];
      [v11 setSubscriptionsPerFabric:v22];
      goto LABEL_60;
    case 20:
      LOWORD(v50) = 0;
      BYTE2(v50) = 0;
      v19 = sub_238F01E50(&v50, a2);
      *a3 = v19;
      a3[1] = v20;
      if (v19)
      {
LABEL_22:
        v11 = 0;
      }

      else
      {
        v11 = objc_opt_new();
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v50];
        [v11 setFinish:v21];

        if (BYTE2(v50))
        {
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v50)];
          [v11 setPrimaryColor:v22];
LABEL_60:
        }

        else
        {
          [v11 setPrimaryColor:0];
        }
      }

      break;
    default:
      v11 = 0;
      *a3 = 0x5A2000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v11;
}

void sub_2392A1A18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2392A1A54(int a1, uint64_t a2, void *a3)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      LOBYTE(v21[0]) = 0;
      v17 = sub_238F1439C(a2, v21);
      *a3 = v17;
      a3[1] = v18;
      if (v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_11;
      }

      LOWORD(v21[0]) = 0;
      v8 = sub_238F00228(a2, v21);
      *a3 = v8;
      a3[1] = v9;
      if (v8 || BYTE1(v21[0]) != 1)
      {
        goto LABEL_17;
      }
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v21[0])];
    goto LABEL_19;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      LOBYTE(v21[0]) = 0;
      v5 = sub_2393C5CE4(a2, v21);
      *a3 = v5;
      a3[1] = v6;
      if (!v5)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithBool:LOBYTE(v21[0])];
LABEL_19:
        v10 = v7;
        goto LABEL_20;
      }

LABEL_17:
      v10 = 0;
      goto LABEL_20;
    }

LABEL_11:
    v10 = 0;
    *a3 = 0x5FE000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_20;
  }

  sub_2393C5AAC(v24);
  sub_2393C5ADC(v24, 0, 0);
  v24[72] = 0;
  v11 = sub_238F36BB4(v24, a2);
  v10 = 0;
  *a3 = v11;
  a3[1] = v12;
  if (!v11)
  {
    v10 = objc_opt_new();
    sub_2392C758C(v24, v21);
    while (sub_2392C75DC(v21))
    {
      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21[12]];
      [v13 setProviderNodeID:v14];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
      [v13 setEndpoint:v15];

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
      [v13 setFabricIndex:v16];

      [v10 addObject:v13];
    }

    if (LODWORD(v21[0]) != 33 && LODWORD(v21[0]))
    {
      v20 = v21[1];
      *a3 = v21[0];
      a3[1] = v20;

      goto LABEL_17;
    }
  }

LABEL_20:

  return v10;
}

id sub_2392A1CE0(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(v19);
    sub_2393C5ADC(v19, 0, 0);
    v10 = sub_238F36BB4(v19, a2);
    v6 = 0;
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(v16);
      v15 = 0uLL;
      sub_2393C5BDC(v16, v19);
      v17 = 0;
      v18 = 0;
      while (sub_238E43364(&v15))
      {
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v17 length:v18 encoding:4];
        if (!v12)
        {
          *a3 = xmmword_278A74748;
          goto LABEL_16;
        }

        [v6 addObject:v12];
      }

      if (v15 != 33 && v15)
      {
        v13 = *(&v15 + 1);
        *a3 = v15;
        a3[1] = v13;
LABEL_16:

        v6 = 0;
      }
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x63A000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v15 = 0uLL;
    v5 = sub_2393C61E0(a2, &v15);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v15 length:*(&v15 + 1) encoding:4];
      v6 = v8;
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        *a3 = xmmword_278A74738;
      }
    }
  }

  return v6;
}

id sub_2392A1ECC(int a1, uint64_t a2, void *a3)
{
  if (a1 == 2)
  {
    sub_2393C5AAC(v20);
    sub_2393C5ADC(v20, 0, 0);
    v8 = sub_238F36BB4(v20, a2);
    v7 = 0;
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v7 = objc_opt_new();
      sub_2393C5AAC(v18);
      v16 = 0;
      v17 = 0;
      sub_2393C5BDC(v18, v20);
      while (1)
      {
        v10 = sub_238EA1A80(&v16);
        LODWORD(v11) = v16;
        if (v16)
        {
          v10 = 0;
        }

        if (!v10)
        {
          break;
        }

        v19[0] = 0;
        v11 = sub_238F2D080(v18, v19);
        v16 = v11;
        v17 = v12;
        if (v11)
        {
          break;
        }

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v19[0]];
        [v7 addObject:v13];
      }

      if (v11 != 33 && v16)
      {
        v15 = v17;
        *a3 = v16;
        a3[1] = v15;

        goto LABEL_7;
      }
    }
  }

  else
  {
    if (a1 == 1)
    {
      LOBYTE(v16) = 0;
      v5 = sub_238F2D080(a2, &v16);
    }

    else
    {
      if (a1)
      {
        v7 = 0;
        *a3 = 0x677000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_17;
      }

      LOBYTE(v16) = 0;
      v5 = sub_238F2D024(a2, &v16);
    }

    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_17;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
  }

LABEL_17:

  return v7;
}

id sub_2392A20B0(int a1, uint64_t a2, void *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(v20);
    sub_2393C5ADC(v20, 0, 0);
    v8 = sub_238F36BB4(v20, a2);
    v7 = 0;
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v7 = objc_opt_new();
      sub_2393C5AAC(v18);
      v16 = 0;
      v17 = 0;
      sub_2393C5BDC(v18, v20);
      while (1)
      {
        v10 = sub_238EA1A80(&v16);
        LODWORD(v11) = v16;
        if (v16)
        {
          v10 = 0;
        }

        if (!v10)
        {
          break;
        }

        v19[0] = 0;
        v11 = sub_238EFD7D0(v18, v19);
        v16 = v11;
        v17 = v12;
        if (v11)
        {
          break;
        }

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v19[0]];
        [v7 addObject:v13];
      }

      if (v11 != 33 && v16)
      {
        v14 = v17;
        *a3 = v16;
        a3[1] = v14;

        goto LABEL_4;
      }
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x6A9000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    LOBYTE(v16) = 0;
    v5 = sub_238EFD7D0(a2, &v16);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_17;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
  }

LABEL_17:

  return v7;
}

id sub_2392A227C(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x6D0000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, 0, 0);
    v6 = sub_238F36BB4(v14, a2);
    v4 = 0;
    *a3 = v6;
    a3[1] = v7;
    if (!v6)
    {
      v4 = objc_opt_new();
      sub_2393C5AAC(v13);
      v11 = 0;
      v12 = 0;
      sub_2393C5BDC(v13, v14);
      while (sub_238DD5C4C(&v11))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13[36]];
        [v4 addObject:v8];
      }

      if (v11 != 33 && v11)
      {
        v9 = v12;
        *a3 = v11;
        a3[1] = v9;

        v4 = 0;
      }
    }
  }

  return v4;
}

id sub_2392A23D0(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 16:
    case 26:
      LOBYTE(v52) = 0;
      v12 = sub_238EA4D5C(a2, &v52);
      goto LABEL_60;
    case 1:
    case 25:
      LOBYTE(v52) = 0;
      v12 = sub_2393C5ED0(a2, &v52);
      goto LABEL_60;
    case 2:
      v52 = 0uLL;
      v22 = sub_2393C61E0(a2, &v52);
      v15 = 0;
      *a3 = v22;
      a3[1] = v23;
      if (v22)
      {
        break;
      }

      v15 = sub_2392C6E08(v52, *(&v52 + 1));
      if (v15)
      {
        goto LABEL_69;
      }

      v17 = &xmmword_278A74758;
      goto LABEL_74;
    case 3:
    case 6:
    case 11:
    case 13:
    case 27:
    case 29:
      LOBYTE(v52) = 0;
      BYTE4(v52) = 0;
      v5 = sub_238EFDEB0(a2, &v52);
      *a3 = v5;
      a3[1] = v6;
      if (v5 || BYTE4(v52) != 1)
      {
        goto LABEL_61;
      }

      goto LABEL_8;
    case 4:
      LOBYTE(v52) = 0;
      BYTE2(v52) = 0;
      v29 = sub_238EFD714(a2, &v52);
      *a3 = v29;
      a3[1] = v30;
      if (v29 || BYTE2(v52) != 1)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    case 5:
      LOBYTE(v52) = 0;
      v12 = sub_238EFF894(a2, &v52);
      goto LABEL_60;
    case 7:
    case 8:
    case 24:
      LODWORD(v52) = 0;
      v10 = sub_2393C5FC8(a2, &v52);
      *a3 = v10;
      a3[1] = v11;
      if (v10)
      {
        goto LABEL_61;
      }

LABEL_8:
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v52];
      goto LABEL_63;
    case 9:
    case 15:
    case 17:
    case 28:
      LOBYTE(v52) = 0;
      v7 = sub_2393C5CE4(a2, &v52);
      *a3 = v7;
      a3[1] = v8;
      if (v7)
      {
        goto LABEL_61;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithBool:v52];
      goto LABEL_63;
    case 10:
      sub_2393C5AAC(v55);
      sub_2393C5ADC(v55, 0, 0);
      v37 = sub_238F36BB4(v55, a2);
      v15 = 0;
      *a3 = v37;
      a3[1] = v38;
      if (v37)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2393C5AAC(v53);
      v52 = 0uLL;
      sub_2393C5BDC(v53, v55);
      while (1)
      {
        v39 = sub_238EA1A80(&v52);
        LODWORD(v34) = v52;
        if (v52)
        {
          v39 = 0;
        }

        if (!v39)
        {
          break;
        }

        LOBYTE(v54) = 0;
        v34 = sub_238EFD7D0(v53, &v54);
        *&v52 = v34;
        *(&v52 + 1) = v40;
        if (v34)
        {
          break;
        }

        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v54];
        [v15 addObject:v41];
      }

      goto LABEL_54;
    case 12:
      LOWORD(v52) = 0;
      v27 = sub_238F00228(a2, &v52);
      *a3 = v27;
      a3[1] = v28;
      if (!v27 && BYTE1(v52) == 1)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    case 14:
      LOBYTE(v52) = 0;
      v12 = sub_238EFD7D0(a2, &v52);
LABEL_60:
      *a3 = v12;
      a3[1] = v13;
      if (v12)
      {
        goto LABEL_61;
      }

LABEL_62:
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52];
      goto LABEL_63;
    case 18:
      sub_2393C5AAC(v55);
      sub_2393C5ADC(v55, 0, 0);
      v42 = sub_238F36BB4(v55, a2);
      v15 = 0;
      *a3 = v42;
      a3[1] = v43;
      if (v42)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2393C5AAC(v53);
      v52 = 0uLL;
      sub_2393C5BDC(v53, v55);
      while (1)
      {
        v44 = sub_238EA1A80(&v52);
        LODWORD(v34) = v52;
        if (v52)
        {
          v44 = 0;
        }

        if (!v44)
        {
          break;
        }

        LOBYTE(v54) = 0;
        v34 = sub_238EFD7D0(v53, &v54);
        *&v52 = v34;
        *(&v52 + 1) = v45;
        if (v34)
        {
          break;
        }

        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v54];
        [v15 addObject:v46];
      }

      goto LABEL_54;
    case 19:
      v52 = 0uLL;
      v20 = sub_2393C61E0(a2, &v52);
      v15 = 0;
      *a3 = v20;
      a3[1] = v21;
      if (v20)
      {
        break;
      }

      v15 = sub_2392C6E08(v52, *(&v52 + 1));
      if (v15)
      {
        goto LABEL_69;
      }

      v17 = &xmmword_278A74768;
      goto LABEL_74;
    case 20:
      LOWORD(v52) = 0;
      v18 = sub_238F240CC(a2, &v52);
      goto LABEL_57;
    case 21:
      v52 = 0uLL;
      v48 = sub_2393C61E0(a2, &v52);
      v15 = 0;
      *a3 = v48;
      a3[1] = v49;
      if (v48)
      {
        break;
      }

      v15 = sub_2392C6E08(v52, *(&v52 + 1));
      if (v15)
      {
        goto LABEL_69;
      }

      v17 = &xmmword_278A74778;
      goto LABEL_74;
    case 22:
      v52 = 0uLL;
      v14 = sub_2393C61E0(a2, &v52);
      v15 = 0;
      *a3 = v14;
      a3[1] = v16;
      if (v14)
      {
        break;
      }

      v15 = sub_2392C6E08(v52, *(&v52 + 1));
      if (v15)
      {
LABEL_69:
        v50 = v15;
      }

      else
      {
        v17 = &xmmword_278A74788;
LABEL_74:
        *a3 = *v17;
      }

      break;
    case 23:
      LOWORD(v52) = 0;
      v18 = sub_238F24124(a2, &v52);
LABEL_57:
      *a3 = v18;
      a3[1] = v19;
      if (v18)
      {
        goto LABEL_61;
      }

LABEL_58:
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v52];
LABEL_63:
      v15 = v9;
      break;
    case 30:
      sub_2393C5AAC(v55);
      sub_2393C5ADC(v55, 0, 0);
      v31 = sub_238F36BB4(v55, a2);
      v15 = 0;
      *a3 = v31;
      a3[1] = v32;
      if (!v31)
      {
        v15 = objc_opt_new();
        sub_2393C5AAC(v53);
        v52 = 0uLL;
        sub_2393C5BDC(v53, v55);
        while (1)
        {
          v33 = sub_238EA1A80(&v52);
          LODWORD(v34) = v52;
          if (v52)
          {
            v33 = 0;
          }

          if (!v33)
          {
            break;
          }

          LOBYTE(v54) = 0;
          v34 = sub_238F07C44(v53, &v54);
          *&v52 = v34;
          *(&v52 + 1) = v35;
          if (v34)
          {
            break;
          }

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v54];
          [v15 addObject:v36];
        }

LABEL_54:
        if (v34 != 33)
        {
          goto LABEL_71;
        }
      }

      break;
    case 31:
      sub_2393C5AAC(v55);
      sub_2393C5ADC(v55, 0, 0);
      v24 = sub_238F36BB4(v55, a2);
      v15 = 0;
      *a3 = v24;
      a3[1] = v25;
      if (!v24)
      {
        v15 = objc_opt_new();
        sub_2393C5AAC(v53);
        v52 = 0uLL;
        sub_2393C5BDC(v53, v55);
        while (sub_238DD5C4C(&v52))
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v54];
          [v15 addObject:v26];
        }

        if (v52 != 33)
        {
LABEL_71:
          if (v52)
          {
            v51 = *(&v52 + 1);
            *a3 = v52;
            a3[1] = v51;

LABEL_61:
            v15 = 0;
          }
        }
      }

      break;
    default:
      v15 = 0;
      *a3 = 0x8AD000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v15;
}

id sub_2392A2AC8(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
      *&v26 = 0;
      v16 = sub_2393C5F2C(a2, &v26);
      v17 = 0;
      *a3 = v16;
      a3[1] = v18;
      if (!v16)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
        goto LABEL_22;
      }

      goto LABEL_24;
    case 1:
      LODWORD(v26) = 0;
      v19 = sub_238F01D20(&v26, a2);
      *a3 = v19;
      a3[1] = v20;
      if (v19)
      {
        goto LABEL_23;
      }

      v17 = objc_opt_new();
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v26];
      [v17 setFailSafeExpiryLengthSeconds:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v26)];
      [v17 setMaxCumulativeFailsafeSeconds:v22];

      goto LABEL_24;
    case 2:
    case 3:
      LOBYTE(v26) = 0;
      v10 = sub_238EFD7D0(a2, &v26);
      *a3 = v10;
      a3[1] = v11;
      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_7;
    case 4:
    case 8:
    case 12:
      LOBYTE(v26) = 0;
      v5 = sub_2393C5CE4(a2, &v26);
      *a3 = v5;
      a3[1] = v6;
      if (v5)
      {
        goto LABEL_23;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithBool:v26];
      goto LABEL_22;
    case 5:
    case 6:
    case 7:
      LOWORD(v26) = 0;
      v8 = sub_2393C5F70(a2, &v26);
      *a3 = v8;
      a3[1] = v9;
      if (v8)
      {
        goto LABEL_23;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v26];
      goto LABEL_22;
    case 9:
      LOBYTE(v26) = 0;
      BYTE4(v26) = 0;
      v23 = sub_238EFDEB0(a2, &v26);
      *a3 = v23;
      a3[1] = v24;
      if (v23 || BYTE4(v26) != 1)
      {
        goto LABEL_23;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
      goto LABEL_22;
    case 10:
      v26 = 0uLL;
      if (sub_2393C5C40(a2) == 16)
      {
        v12 = sub_2393C60CC(a2, &v26);
        *a3 = v12;
        a3[1] = v13;
        if (v12)
        {
LABEL_23:
          v17 = 0;
        }

        else
        {
          v7 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:?];
LABEL_22:
          v17 = v7;
        }
      }

      else
      {
        v17 = 0;
        *a3 = 0x500000002BLL;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Decode.h";
      }

LABEL_24:

      return v17;
    case 11:
      LOWORD(v26) = 0;
      v14 = sub_238F0C9D0(a2, &v26);
      *a3 = v14;
      a3[1] = v15;
      if (v14 || BYTE1(v26) != 1)
      {
        goto LABEL_23;
      }

LABEL_7:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
      goto LABEL_22;
    default:
      v17 = 0;
      *a3 = 0x953000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_24;
  }
}

void sub_2392A2D70(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2392A2D98(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          goto LABEL_53;
        }

        sub_2393C5AAC(v46);
        sub_2393C5ADC(v12, 0, 0);
        v13 = sub_238F36BB4(v46, a2);
        v14 = 0;
        *a3 = v13;
        a3[1] = v15;
        if (v13)
        {
          goto LABEL_60;
        }

        v14 = objc_opt_new();
        sub_2393C5AAC(v40);
        v38 = 0;
        v39 = 0;
        sub_2393C5BDC(v40, v46);
        v44[0] = 0;
        v45[0] = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (sub_238EA1A80(&v38) && sub_2392C7684(&v38))
        {
          v16 = objc_opt_new();
          v17 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
          [v16 setNetworkID:v17];

          v18 = [MEMORY[0x277CCABB0] numberWithBool:v43];
          [v16 setConnected:v18];

          if (v44[0] == 1 && (sub_238DE36B8(v44)[16] & 1) != 0)
          {
            v19 = sub_238DE36B8(v44);
            if ((v19[16] & 1) == 0)
            {
              goto LABEL_63;
            }

            v20 = [MEMORY[0x277CBEA90] dataWithBytes:*v19 length:*(v19 + 1)];
            [v16 setNetworkIdentifier:v20];
          }

          else
          {
            [v16 setNetworkIdentifier:0];
          }

          if (v45[0] == 1 && (sub_238DE36B8(v45)[16] & 1) != 0)
          {
            v21 = sub_238DE36B8(v45);
            if (v21[16] != 1)
            {
LABEL_63:
              sub_238EA195C();
            }

            v22 = [MEMORY[0x277CBEA90] dataWithBytes:*v21 length:*(v21 + 1)];
            [v16 setClientIdentifier:v22];
          }

          else
          {
            [v16 setClientIdentifier:0];
          }

          [v14 addObject:v16];
        }

        if (v38 == 33)
        {
          goto LABEL_60;
        }

LABEL_57:
        if (!v38)
        {
          goto LABEL_60;
        }

        v36 = v39;
        *a3 = v38;
        a3[1] = v36;

        goto LABEL_59;
      }
    }

    else if (a1 != 2 && a1 != 3)
    {
      LOBYTE(v38) = 0;
      v8 = sub_2393C5CE4(a2, &v38);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithBool:v38];
        goto LABEL_42;
      }

      goto LABEL_59;
    }

    LOBYTE(v38) = 0;
    v23 = sub_2393C5ED0(a2, &v38);
    *a3 = v23;
    a3[1] = v24;
    if (v23)
    {
      goto LABEL_59;
    }

    goto LABEL_35;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        LOBYTE(v38) = 0;
        v40[0] = 0;
        v25 = sub_238F10D4C(a2, &v38);
        *a3 = v25;
        a3[1] = v26;
        if (!v25 && v40[0] == 1)
        {
          v7 = [MEMORY[0x277CBEA90] dataWithBytes:v38 length:v39];
          goto LABEL_42;
        }
      }

      else
      {
        LOBYTE(v38) = 0;
        BYTE4(v38) = 0;
        v5 = sub_238F1FD58(a2, &v38);
        *a3 = v5;
        a3[1] = v6;
        if (!v5 && BYTE4(v38) == 1)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithInt:v38];
LABEL_42:
          v14 = v7;
          goto LABEL_60;
        }
      }

      goto LABEL_59;
    }

    LOWORD(v38) = 0;
    v27 = sub_238F1FCA0(a2, &v38);
    *a3 = v27;
    a3[1] = v28;
    if (v27 || BYTE1(v38) != 1)
    {
LABEL_59:
      v14 = 0;
      goto LABEL_60;
    }

LABEL_35:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38];
    goto LABEL_42;
  }

  if (a1 != 8)
  {
    if (a1 == 9)
    {
      LOWORD(v38) = 0;
      v10 = sub_238F36E54(a2, &v38);
LABEL_40:
      *a3 = v10;
      a3[1] = v11;
      if (!v10)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v38];
        goto LABEL_42;
      }

      goto LABEL_59;
    }

    if (a1 == 10)
    {
      LOWORD(v38) = 0;
      v10 = sub_2393C5F70(a2, &v38);
      goto LABEL_40;
    }

LABEL_53:
    v14 = 0;
    *a3 = 0xA17000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_60;
  }

  sub_2393C5AAC(v46);
  sub_2393C5ADC(v29, 0, 0);
  v30 = sub_238F36BB4(v46, a2);
  v14 = 0;
  *a3 = v30;
  a3[1] = v31;
  if (!v30)
  {
    v14 = objc_opt_new();
    sub_2393C5AAC(v40);
    v38 = 0;
    v39 = 0;
    sub_2393C5BDC(v40, v46);
    while (1)
    {
      v32 = sub_238EA1A80(&v38);
      LODWORD(v33) = v38;
      if (v38)
      {
        v32 = 0;
      }

      if (!v32)
      {
        break;
      }

      LOBYTE(v41) = 0;
      v33 = sub_238F01014(v40, &v41);
      v38 = v33;
      v39 = v34;
      if (v33)
      {
        break;
      }

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
      [v14 addObject:v35];
    }

    if (v33 != 33)
    {
      goto LABEL_57;
    }
  }

LABEL_60:

  return v14;
}

id sub_2392A32F0(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v56 = 0;
        v34 = sub_2393C5F2C(a2, &v56);
        v13 = 0;
        *a3 = v34;
        a3[1] = v35;
        if (v34)
        {
          goto LABEL_78;
        }

        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56];
        goto LABEL_59;
      }

      LODWORD(v56) = 0;
      v10 = sub_2393C5FC8(a2, &v56);
      *a3 = v10;
      a3[1] = v11;
      if (!v10)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v56];
        goto LABEL_59;
      }

      goto LABEL_77;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        LOWORD(v56) = 0;
        v8 = sub_2393C5F70(a2, &v56);
        *a3 = v8;
        a3[1] = v9;
        if (!v8)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v56];
          goto LABEL_59;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    sub_2393C5AAC(v69);
    sub_2393C5ADC(v19, 0, 0);
    v20 = sub_238F36BB4(v69, a2);
    v13 = 0;
    *a3 = v20;
    a3[1] = v21;
    if (!v20)
    {
      v13 = objc_opt_new();
      sub_2392C7720(&v56, v69);
      while (sub_238EA1A80(&v56) && sub_2392C77D4(&v56))
      {
        v22 = objc_opt_new();
        v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v59[0] length:v59[1] encoding:4];
        [v22 setName:v23];

        v24 = [v22 name];

        if (!v24)
        {
          *a3 = xmmword_278A74798;
LABEL_75:

          goto LABEL_76;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithBool:v60];
        [v22 setIsOperational:v25];

        if (v62)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithBool:v61];
          [v22 setOffPremiseServicesReachableIPv4:v26];
        }

        else
        {
          [v22 setOffPremiseServicesReachableIPv4:0];
        }

        if (v64)
        {
          v27 = [MEMORY[0x277CCABB0] numberWithBool:v63];
          [v22 setOffPremiseServicesReachableIPv6:v27];
        }

        else
        {
          [v22 setOffPremiseServicesReachableIPv6:0];
        }

        v28 = [MEMORY[0x277CBEA90] dataWithBytes:v65 length:v66];
        [v22 setHardwareAddress:v28];

        v29 = objc_opt_new();
        sub_2393C5AAC(v53);
        v51 = 0;
        v52 = 0;
        sub_2393C5BDC(v53, &v67);
        v54 = 0;
        v55 = 0;
        while (sub_238EA1A80(&v51) && sub_238EA49F4(&v51))
        {
          v30 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:v55];
          [v29 addObject:v30];
        }

        if (v51 != 33)
        {
          v31 = v51;
          if (v51)
          {
            goto LABEL_74;
          }
        }

        [v22 setIPv4Addresses:v29];

        v29 = objc_opt_new();
        sub_2393C5AAC(v53);
        v51 = 0;
        v52 = 0;
        sub_2393C5BDC(v53, v68);
        v54 = 0;
        v55 = 0;
        while (sub_238EA1A80(&v51) && sub_238EA49F4(&v51))
        {
          v32 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:v55];
          [v29 addObject:v32];
        }

        if (v51 != 33)
        {
          v31 = v51;
          if (v51)
          {
LABEL_74:
            v49 = v52;
            *a3 = v31;
            a3[1] = v49;

            goto LABEL_75;
          }
        }

        [v22 setIPv6Addresses:v29];

        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v68[72]];
        [v22 setType:v33];

        [v13 addObject:v22];
      }

      if (v56 != 33)
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        LOBYTE(v56) = 0;
        v41 = sub_238EFFAE8(a2, &v56);
        *a3 = v41;
        a3[1] = v42;
        if (!v41)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
          goto LABEL_59;
        }

        goto LABEL_77;
      }

      sub_2393C5AAC(&v51);
      sub_2393C5ADC(&v51, 0, 0);
      v12 = sub_238F36BB4(&v51, a2);
      v13 = 0;
      *a3 = v12;
      a3[1] = v14;
      if (v12)
      {
        goto LABEL_78;
      }

      v13 = objc_opt_new();
      sub_2393C5AAC(v58);
      v56 = 0;
      v57 = 0;
      sub_2393C5BDC(v58, &v51);
      while (1)
      {
        v15 = sub_238EA1A80(&v56);
        LODWORD(v16) = v56;
        if (v56)
        {
          v15 = 0;
        }

        if (!v15)
        {
          break;
        }

        LOBYTE(v59[0]) = 0;
        v16 = sub_238F07C44(v58, v59);
        v56 = v16;
        v57 = v17;
        if (v16)
        {
          break;
        }

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v59[0])];
        [v13 addObject:v18];
      }
    }

    else
    {
      switch(a1)
      {
        case 6:
          sub_2393C5AAC(&v51);
          sub_2393C5ADC(&v51, 0, 0);
          v36 = sub_238F36BB4(&v51, a2);
          v13 = 0;
          *a3 = v36;
          a3[1] = v37;
          if (v36)
          {
            goto LABEL_78;
          }

          v13 = objc_opt_new();
          sub_2393C5AAC(v58);
          v56 = 0;
          v57 = 0;
          sub_2393C5BDC(v58, &v51);
          while (1)
          {
            v38 = sub_238EA1A80(&v56);
            LODWORD(v16) = v56;
            if (v56)
            {
              v38 = 0;
            }

            if (!v38)
            {
              break;
            }

            LOBYTE(v59[0]) = 0;
            v16 = sub_238EFFAE8(v58, v59);
            v56 = v16;
            v57 = v39;
            if (v16)
            {
              break;
            }

            v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v59[0])];
            [v13 addObject:v40];
          }

          break;
        case 7:
          sub_2393C5AAC(&v51);
          sub_2393C5ADC(&v51, 0, 0);
          v43 = sub_238F36BB4(&v51, a2);
          v13 = 0;
          *a3 = v43;
          a3[1] = v44;
          if (v43)
          {
            goto LABEL_78;
          }

          v13 = objc_opt_new();
          sub_2393C5AAC(v58);
          v56 = 0;
          v57 = 0;
          sub_2393C5BDC(v58, &v51);
          while (1)
          {
            v45 = sub_238EA1A80(&v56);
            LODWORD(v16) = v56;
            if (v56)
            {
              v45 = 0;
            }

            if (!v45)
            {
              break;
            }

            LOBYTE(v59[0]) = 0;
            v16 = sub_238EA4D5C(v58, v59);
            v56 = v16;
            v57 = v46;
            if (v16)
            {
              break;
            }

            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v59[0])];
            [v13 addObject:v47];
          }

          break;
        case 8:
          LOBYTE(v56) = 0;
          v5 = sub_2393C5CE4(a2, &v56);
          *a3 = v5;
          a3[1] = v6;
          if (!v5)
          {
            v7 = [MEMORY[0x277CCABB0] numberWithBool:v56];
LABEL_59:
            v13 = v7;
            goto LABEL_78;
          }

          goto LABEL_77;
        default:
LABEL_70:
          v13 = 0;
          *a3 = 0xB03000000B5;
          a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
          goto LABEL_78;
      }
    }

    if (v16 == 33)
    {
      goto LABEL_78;
    }

LABEL_68:
    if (v56)
    {
      v48 = v57;
      *a3 = v56;
      a3[1] = v48;
LABEL_76:

LABEL_77:
      v13 = 0;
    }
  }

LABEL_78:

  return v13;
}

id sub_2392A3B24(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 1)
  {
    if (a1 != 2 && a1 != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v20 = 0;
    v5 = sub_2393C5F2C(a2, &v20);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
    }

    goto LABEL_32;
  }

  if (a1)
  {
    if (a1 != 1)
    {
LABEL_9:
      v6 = 0;
      *a3 = 0xB65000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_32;
    }

    goto LABEL_7;
  }

  sub_2393C5AAC(v28);
  sub_2393C5ADC(v28, 0, 0);
  v8 = sub_238F36BB4(v28, a2);
  v6 = 0;
  *a3 = v8;
  a3[1] = v9;
  if (!v8)
  {
    v6 = objc_opt_new();
    sub_2393C5AAC(v22);
    v20 = 0;
    v21 = 0;
    sub_2393C5BDC(v22, v28);
    v23 = 0;
    v24[0] = 0;
    v25[0] = 0;
    v26[0] = 0;
    v27[0] = 0;
    while (sub_238EA1A80(&v20) && sub_2392C78C8(&v20))
    {
      v10 = objc_opt_new();
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
      [v10 setId:v11];

      if (v24[0] == 1)
      {
        v12 = sub_238DE36B8(v24);
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v12 length:v12[1] encoding:4];
        [v10 setName:v13];

        v14 = [v10 name];

        if (!v14)
        {
          *a3 = xmmword_278A747A8;

LABEL_31:
          v6 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        [v10 setName:0];
      }

      if (v25[0] == 1)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v25)];
        [v10 setStackFreeCurrent:v15];
      }

      else
      {
        [v10 setStackFreeCurrent:0];
      }

      if (v26[0] == 1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v26)];
        [v10 setStackFreeMinimum:v16];
      }

      else
      {
        [v10 setStackFreeMinimum:0];
      }

      if (v27[0] == 1)
      {
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v27)];
        [v10 setStackSize:v17];
      }

      else
      {
        [v10 setStackSize:0];
      }

      [v6 addObject:v10];
    }

    if (v20 != 33 && v20)
    {
      v18 = v21;
      *a3 = v20;
      a3[1] = v18;
      goto LABEL_31;
    }
  }

LABEL_32:

  return v6;
}

id sub_2392A3EAC(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 3:
    case 10:
    case 11:
    case 12:
    case 64:
      LOBYTE(v84) = 0;
      BYTE2(v84) = 0;
      v10 = sub_238EFD714(a2, &v84);
      *a3 = v10;
      a3[1] = v11;
      if (v10 || BYTE2(v84) != 1)
      {
        goto LABEL_3;
      }

      goto LABEL_8;
    case 1:
      LOWORD(v84) = 0;
      v82 = sub_238F161A0(a2, &v84);
      goto LABEL_82;
    case 2:
      LOBYTE(v84) = 0;
      v86[0] = 0;
      v77 = sub_238F0BA3C(a2, &v84);
      *a3 = v77;
      a3[1] = v78;
      if (v77 || v86[0] != 1)
      {
        goto LABEL_3;
      }

      v7 = sub_2392C6E08(v84, v85);
      if (!v7)
      {
        *a3 = xmmword_278A747B8;
      }

      break;
    case 4:
    case 56:
    case 57:
    case 63:
      LOBYTE(v84) = 0;
      LOBYTE(v85) = 0;
      v13 = sub_238EFD658(a2, &v84);
      *a3 = v13;
      a3[1] = v14;
      if (!v13 && v85 == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_3;
    case 5:
    case 60:
      LOBYTE(v84) = 0;
      v86[0] = 0;
      v15 = sub_238F10D4C(a2, &v84);
      *a3 = v15;
      a3[1] = v16;
      if (v15 || v86[0] != 1)
      {
        goto LABEL_3;
      }

      v12 = [MEMORY[0x277CBEA90] dataWithBytes:v84 length:v85];
      goto LABEL_18;
    case 6:
      v84 = 0;
      v36 = sub_2393C5F2C(a2, &v84);
      v7 = 0;
      *a3 = v36;
      a3[1] = v37;
      if (v36)
      {
        break;
      }

LABEL_30:
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v84];
      goto LABEL_18;
    case 7:
      sub_2392C77A0(v88);
      v57 = sub_238F36BB4(v88, a2);
      *a3 = v57;
      a3[1] = v58;
      if (v57)
      {
        goto LABEL_3;
      }

      v7 = objc_opt_new();
      sub_2392C7968(&v84, v88);
      while (1)
      {
        v59 = sub_238EA1A80(&v84);
        LODWORD(v23) = v84;
        if (v84)
        {
          v59 = 0;
        }

        if (!v59)
        {
          break;
        }

        memset(v87, 0, 35);
        v23 = sub_238F2C4EC(v87, v86);
        v84 = v23;
        v85 = v60;
        if (v23)
        {
          break;
        }

        v61 = objc_opt_new();
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v87[0]];
        [v61 setExtAddress:v62];

        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v87[1])];
        [v61 setAge:v63];

        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v87[1])];
        [v61 setRloc16:v64];

        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v87[2])];
        [v61 setLinkFrameCounter:v65];

        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v87[2])];
        [v61 setMleFrameCounter:v66];

        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v87[3])];
        [v61 setLqi:v67];

        if ((v87[3] & 0x10000) != 0)
        {
          v68 = [MEMORY[0x277CCABB0] numberWithChar:SBYTE1(v87[3])];
          [v61 setAverageRssi:v68];
        }

        else
        {
          [v61 setAverageRssi:0];
        }

        if ((v87[3] & 0x100000000) != 0)
        {
          v69 = [MEMORY[0x277CCABB0] numberWithChar:SBYTE3(v87[3])];
          [v61 setLastRssi:v69];
        }

        else
        {
          [v61 setLastRssi:0];
        }

        v70 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE5(v87[3])];
        [v61 setFrameErrorRate:v70];

        v71 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v87[3])];
        [v61 setMessageErrorRate:v71];

        v72 = [MEMORY[0x277CCABB0] numberWithBool:HIBYTE(v87[3])];
        [v61 setRxOnWhenIdle:v72];

        v73 = [MEMORY[0x277CCABB0] numberWithBool:LOBYTE(v87[4])];
        [v61 setFullThreadDevice:v73];

        v74 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v87[4])];
        [v61 setFullNetworkData:v74];

        v75 = [MEMORY[0x277CCABB0] numberWithBool:BYTE2(v87[4])];
        [v61 setIsChild:v75];

        [v7 addObject:v61];
      }

      goto LABEL_66;
    case 8:
      sub_2392C77A0(v88);
      v20 = sub_238F36BB4(v88, a2);
      *a3 = v20;
      a3[1] = v21;
      if (v20)
      {
        goto LABEL_3;
      }

      v7 = objc_opt_new();
      sub_2392C7924(v88, &v84);
      while (1)
      {
        v22 = sub_238EA1A80(&v84);
        LODWORD(v23) = v84;
        if (v84)
        {
          v22 = 0;
        }

        if (!v22)
        {
          break;
        }

        memset(v87, 0, 18);
        v23 = sub_238F2CAF0(v87, v86);
        v84 = v23;
        v85 = v24;
        if (v23)
        {
          break;
        }

        v25 = objc_opt_new();
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v87[0]];
        [v25 setExtAddress:v26];

        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v87[1])];
        [v25 setRloc16:v27];

        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v87[1])];
        [v25 setRouterId:v28];

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(v87[1])];
        [v25 setNextHop:v29];

        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v87[1])];
        [v25 setPathCost:v30];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE5(v87[1])];
        [v25 setLqiIn:v31];

        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v87[1])];
        [v25 setLqiOut:v32];

        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v87[1])];
        [v25 setAge:v33];

        v34 = [MEMORY[0x277CCABB0] numberWithBool:LOBYTE(v87[2])];
        [v25 setAllocated:v34];

        v35 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v87[2])];
        [v25 setLinkEstablished:v35];

        [v7 addObject:v25];
      }

      goto LABEL_66;
    case 9:
    case 58:
      LOBYTE(v84) = 0;
      BYTE4(v84) = 0;
      v17 = sub_238EFDEB0(a2, &v84);
      *a3 = v17;
      a3[1] = v18;
      if (!v17 && BYTE4(v84) == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 13:
      LOWORD(v84) = 0;
      v82 = sub_238F00228(a2, &v84);
LABEL_82:
      *a3 = v82;
      a3[1] = v83;
      if (v82 || BYTE1(v84) != 1)
      {
        goto LABEL_3;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v84];
      goto LABEL_18;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
      LOWORD(v84) = 0;
      v8 = sub_2393C5F70(a2, &v84);
      *a3 = v8;
      a3[1] = v9;
      if (v8)
      {
        goto LABEL_3;
      }

LABEL_8:
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v84];
      goto LABEL_18;
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
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
      LODWORD(v84) = 0;
      v5 = sub_2393C5FC8(a2, &v84);
      *a3 = v5;
      a3[1] = v6;
      if (v5)
      {
        goto LABEL_3;
      }

LABEL_17:
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v84];
LABEL_18:
      v7 = v12;
      break;
    case 59:
      LOBYTE(v84) = 0;
      BYTE4(v84) = 0;
      v79 = sub_238F2C1A0(a2, &v84);
      *a3 = v79;
      a3[1] = v80;
      if (v79 || (v84 & 0x100000000) == 0)
      {
        goto LABEL_3;
      }

      v7 = objc_opt_new();
      if (BYTE4(v84) != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v84], v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setRotationTime:", v81), v81, (v84 & 0x100000000) == 0))
      {
        sub_238EA195C();
      }

      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v84)];
      [v7 setFlags:v56];
      goto LABEL_79;
    case 61:
      LOBYTE(v84) = 0;
      BYTE4(v85) = 0;
      v43 = sub_238F2C234(a2, &v84);
      *a3 = v43;
      a3[1] = v44;
      if (v43 || (v85 & 0x100000000) == 0)
      {
        goto LABEL_3;
      }

      v7 = objc_opt_new();
      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v45 = [MEMORY[0x277CCABB0] numberWithBool:v84];
      [v7 setActiveTimestampPresent:v45];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v46 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v84)];
      [v7 setPendingTimestampPresent:v46];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v47 = [MEMORY[0x277CCABB0] numberWithBool:BYTE2(v84)];
      [v7 setMasterKeyPresent:v47];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v48 = [MEMORY[0x277CCABB0] numberWithBool:BYTE3(v84)];
      [v7 setNetworkNamePresent:v48];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v49 = [MEMORY[0x277CCABB0] numberWithBool:BYTE4(v84)];
      [v7 setExtendedPanIdPresent:v49];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v50 = [MEMORY[0x277CCABB0] numberWithBool:BYTE5(v84)];
      [v7 setMeshLocalPrefixPresent:v50];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v51 = [MEMORY[0x277CCABB0] numberWithBool:BYTE6(v84)];
      [v7 setDelayPresent:v51];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v52 = [MEMORY[0x277CCABB0] numberWithBool:HIBYTE(v84)];
      [v7 setPanIdPresent:v52];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v53 = [MEMORY[0x277CCABB0] numberWithBool:v85];
      [v7 setChannelPresent:v53];

      if (BYTE4(v85) != 1)
      {
        goto LABEL_85;
      }

      v54 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v85)];
      [v7 setPskcPresent:v54];

      if (BYTE4(v85) != 1 || ([MEMORY[0x277CCABB0] numberWithBool:BYTE2(v85)], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setSecurityPolicyPresent:", v55), v55, (v85 & 0x100000000) == 0))
      {
LABEL_85:
        sub_238EA195C();
      }

      v56 = [MEMORY[0x277CCABB0] numberWithBool:BYTE3(v85)];
      [v7 setChannelMaskPresent:v56];
LABEL_79:

      break;
    case 62:
      sub_2392C77A0(v88);
      v38 = sub_238F36BB4(v88, a2);
      *a3 = v38;
      a3[1] = v39;
      if (v38)
      {
        goto LABEL_3;
      }

      v7 = objc_opt_new();
      sub_2393C5AAC(v86);
      v84 = 0;
      v85 = 0;
      sub_2393C5BDC(v86, v88);
      while (1)
      {
        v40 = sub_238EA1A80(&v84);
        LODWORD(v23) = v84;
        if (v84)
        {
          v40 = 0;
        }

        if (!v40)
        {
          break;
        }

        LOBYTE(v87[0]) = 0;
        v23 = sub_238EA4D5C(v86, v87);
        v84 = v23;
        v85 = v41;
        if (v23)
        {
          break;
        }

        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v87[0])];
        [v7 addObject:v42];
      }

LABEL_66:
      if (v23 != 33 && v84)
      {
        v76 = v85;
        *a3 = v84;
        a3[1] = v76;

LABEL_3:
        v7 = 0;
      }

      break;
    default:
      v7 = 0;
      *a3 = 0xEE9000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v7;
}

id sub_2392A4B5C(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v18) = 0;
      v20 = 0;
      v15 = sub_238F10D4C(a2, &v18);
      *a3 = v15;
      a3[1] = v16;
      if (v15 || v20 != 1)
      {
        goto LABEL_22;
      }

      v6 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:v19];
      break;
    case 1:
      LOWORD(v18) = 0;
      v11 = sub_238F10C94(a2, &v18);
      goto LABEL_19;
    case 2:
      LOWORD(v18) = 0;
      v11 = sub_238F161A0(a2, &v18);
LABEL_19:
      *a3 = v11;
      a3[1] = v12;
      if (v11 || BYTE1(v18) != 1)
      {
        goto LABEL_22;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
      break;
    case 3:
      LOBYTE(v18) = 0;
      BYTE2(v18) = 0;
      v13 = sub_238EFD714(a2, &v18);
      *a3 = v13;
      a3[1] = v14;
      if (v13 || BYTE2(v18) != 1)
      {
        goto LABEL_22;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
      break;
    case 4:
      LOWORD(v18) = 0;
      v9 = sub_238F2C628(a2, &v18);
      *a3 = v9;
      a3[1] = v10;
      if (v9 || BYTE1(v18) != 1)
      {
        goto LABEL_22;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithChar:v18];
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      LOBYTE(v18) = 0;
      BYTE4(v18) = 0;
      v4 = sub_238EFDEB0(a2, &v18);
      *a3 = v4;
      a3[1] = v5;
      if (v4 || BYTE4(v18) != 1)
      {
        goto LABEL_22;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
      break;
    case 11:
    case 12:
      LOBYTE(v18) = 0;
      LOBYTE(v19) = 0;
      v7 = sub_238EFD658(a2, &v18);
      *a3 = v7;
      a3[1] = v8;
      if (v7 || v19 != 1)
      {
LABEL_22:
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
      }

      break;
    default:
      v6 = 0;
      *a3 = 0xFB9000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v6;
}

id sub_2392A4D74(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      goto LABEL_12;
    }

    if (!a1)
    {
      LOWORD(v12) = 0;
      v9 = sub_238F11F70(a2, &v12);
      *a3 = v9;
      a3[1] = v10;
      if (!v9 && BYTE1(v12) == 1)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (a1 != 1)
    {
LABEL_18:
      v6 = 0;
      *a3 = 0x1035000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_19;
    }

LABEL_9:
    LOWORD(v12) = 0;
    v4 = sub_238F076A4(a2, &v12);
    *a3 = v4;
    a3[1] = v5;
    if (!v4 && BYTE1(v12) == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v12];
      goto LABEL_19;
    }

LABEL_17:
    v6 = 0;
    goto LABEL_19;
  }

  if (a1 <= 6)
  {
    goto LABEL_12;
  }

  if (a1 == 7)
  {
    goto LABEL_9;
  }

  if (a1 != 8)
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = 0;
  v7 = sub_2393C5F2C(a2, &v12);
  v6 = 0;
  *a3 = v7;
  a3[1] = v8;
  if (!v7)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
  }

LABEL_19:

  return v6;
}

id sub_2392A4EE8(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 7:
      LOBYTE(v41) = 0;
      LOBYTE(v42) = 0;
      v5 = sub_238EFD658(a2, &v41);
      *a3 = v5;
      a3[1] = v6;
      if (v5 || v42 != 1)
      {
        goto LABEL_43;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v41];
      goto LABEL_45;
    case 1:
      LOBYTE(v41) = 0;
      v8 = sub_238F000A4(a2, &v41);
      goto LABEL_42;
    case 2:
      LOBYTE(v41) = 0;
      v8 = sub_238F0DC3C(a2, &v41);
      goto LABEL_42;
    case 3:
      LOBYTE(v41) = 0;
      v44 = 0;
      v12 = sub_238F2D288(a2, &v41);
      *a3 = v12;
      a3[1] = v13;
      if (v12 || (v44 & 1) == 0)
      {
        goto LABEL_43;
      }

      v14 = objc_opt_new();
      if (v44 != 1)
      {
        goto LABEL_54;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
      [v14 setFabricIndex:v15];

      if (v44 != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setNodeID:", v16), v16, (v44 & 1) == 0))
      {
LABEL_54:
        sub_238EA195C();
      }

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v43];
      [v14 setEndpoint:v17];

      goto LABEL_50;
    case 4:
      LOBYTE(v41) = 0;
      LOBYTE(v43) = 0;
      v27 = sub_238F0BA3C(a2, &v41);
      *a3 = v27;
      a3[1] = v28;
      if (v27 || v43 != 1)
      {
        goto LABEL_43;
      }

      v14 = sub_2392C6E08(v41, v42);
      if (!v14)
      {
        *a3 = xmmword_278A747C8;
      }

      goto LABEL_50;
    case 5:
      sub_2393C5AAC(v47);
      sub_2393C5ADC(v47, 0, 0);
      v29 = sub_238F36BB4(v47, a2);
      v14 = 0;
      *a3 = v29;
      a3[1] = v30;
      if (v29)
      {
        goto LABEL_50;
      }

      v14 = objc_opt_new();
      sub_2393C5AAC(&v43);
      v41 = 0;
      v42 = 0;
      sub_2393C5BDC(&v43, v47);
      LODWORD(v45) = 0;
      *(&v45 + 1) = 0;
      LOBYTE(v46) = 0;
      break;
    case 6:
      sub_2393C5AAC(v47);
      sub_2393C5ADC(v47, 0, 0);
      v18 = sub_238F36BB4(v47, a2);
      v14 = 0;
      *a3 = v18;
      a3[1] = v19;
      if (v18)
      {
        goto LABEL_50;
      }

      v14 = objc_opt_new();
      sub_2393C5AAC(&v43);
      v41 = 0;
      v42 = 0;
      sub_2393C5BDC(&v43, v47);
      LODWORD(v45) = 0;
      *(&v45 + 1) = 0;
      LOBYTE(v46) = 0;
      BYTE8(v46) = 0;
      while (1)
      {
        v20 = sub_238EA1A80(&v41);
        LODWORD(v21) = v41;
        if (v41)
        {
          v20 = 0;
        }

        if (!v20)
        {
          break;
        }

        v46 = 0u;
        v45 = 0u;
        v21 = sub_238F2DB0C(&v45, &v43);
        v41 = v21;
        v42 = v22;
        if (v21)
        {
          break;
        }

        v23 = objc_opt_new();
        v24 = [MEMORY[0x277CCABB0] numberWithInt:v45];
        [v23 setOffset:v24];

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v45 + 1)];
        [v23 setValidStarting:v25];

        if (BYTE8(v46))
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v46];
          [v23 setValidUntil:v26];
        }

        else
        {
          [v23 setValidUntil:0];
        }

        [v14 addObject:{v23, v41}];
      }

      goto LABEL_47;
    case 8:
      LOBYTE(v41) = 0;
      v8 = sub_238EFD7D0(a2, &v41);
      goto LABEL_42;
    case 9:
    case 12:
      LOBYTE(v41) = 0;
      v10 = sub_2393C5CE4(a2, &v41);
      *a3 = v10;
      a3[1] = v11;
      if (v10)
      {
        goto LABEL_43;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithBool:v41];
      goto LABEL_45;
    case 10:
    case 11:
      LOBYTE(v41) = 0;
      v8 = sub_2393C5ED0(a2, &v41);
LABEL_42:
      *a3 = v8;
      a3[1] = v9;
      if (v8)
      {
        goto LABEL_43;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
LABEL_45:
      v14 = v7;
      goto LABEL_50;
    default:
      v14 = 0;
      *a3 = 0x111A000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_50;
  }

  while (1)
  {
    v31 = sub_238EA1A80(&v41);
    LODWORD(v21) = v41;
    if (v41)
    {
      v31 = 0;
    }

    if (!v31)
    {
      break;
    }

    v45 = 0uLL;
    LOBYTE(v46) = 0;
    v21 = sub_238F2DC48(&v45, &v43);
    v41 = v21;
    v42 = v32;
    if (v21)
    {
      break;
    }

    v33 = objc_opt_new();
    v34 = [MEMORY[0x277CCABB0] numberWithInt:v45];
    [v33 setOffset:v34];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v45 + 1)];
    [v33 setValidAt:v35];

    if (v46 == 1)
    {
      v36 = sub_238DE36B8(&v46);
      v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v36 length:v36[1] encoding:4];
      [v33 setName:v37];

      v38 = [v33 name];

      if (!v38)
      {
        *a3 = xmmword_278A747D8;

        goto LABEL_53;
      }
    }

    else
    {
      [v33 setName:0];
    }

    [v14 addObject:{v33, v41}];
  }

LABEL_47:
  if (v21 == 33 || !v41)
  {
    goto LABEL_50;
  }

  v39 = v42;
  *a3 = v41;
  a3[1] = v39;
LABEL_53:

LABEL_43:
  v14 = 0;
LABEL_50:

  return v14;
}

id sub_2392A552C(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 1:
      v45 = 0uLL;
      v25 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v25;
      a3[1] = v26;
      if (!v25)
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
        if (v10)
        {
          goto LABEL_52;
        }

        v12 = &xmmword_278A747E8;
        goto LABEL_57;
      }

      goto LABEL_59;
    case 2:
      LOWORD(v45) = 0;
      v17 = sub_238F36E54(a2, &v45);
      v10 = 0;
      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0;
      }

      *a3 = v20;
      a3[1] = v19;
      if (!v20)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    case 3:
      v45 = 0uLL;
      v27 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v27;
      a3[1] = v28;
      if (!v27)
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
        if (v10)
        {
          goto LABEL_52;
        }

        v12 = &xmmword_278A747F8;
        goto LABEL_57;
      }

      goto LABEL_59;
    case 4:
    case 7:
      LOWORD(v45) = 0;
      v4 = sub_2393C5F70(a2, &v45);
      *a3 = v4;
      a3[1] = v5;
      if (v4)
      {
        goto LABEL_49;
      }

LABEL_22:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v45];
      goto LABEL_44;
    case 5:
      v45 = 0uLL;
      v23 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v23;
      a3[1] = v24;
      if (v23)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74808;
      goto LABEL_57;
    case 8:
      v45 = 0uLL;
      v29 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v29;
      a3[1] = v30;
      if (v29)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74818;
      goto LABEL_57;
    case 9:
    case 24:
      LODWORD(v45) = 0;
      v6 = sub_2393C5FC8(a2, &v45);
      *a3 = v6;
      a3[1] = v7;
      if (v6)
      {
        goto LABEL_49;
      }

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v45];
      goto LABEL_44;
    case 10:
      v45 = 0uLL;
      v35 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v35;
      a3[1] = v36;
      if (v35)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74828;
      goto LABEL_57;
    case 11:
      v45 = 0uLL;
      v13 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v13;
      a3[1] = v14;
      if (v13)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74838;
      goto LABEL_57;
    case 12:
      v45 = 0uLL;
      v21 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v21;
      a3[1] = v22;
      if (v21)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74848;
      goto LABEL_57;
    case 13:
      v45 = 0uLL;
      v15 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v15;
      a3[1] = v16;
      if (v15)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74858;
      goto LABEL_57;
    case 14:
      v45 = 0uLL;
      v9 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v9;
      a3[1] = v11;
      if (v9)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74868;
      goto LABEL_57;
    case 15:
      v45 = 0uLL;
      v31 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v31;
      a3[1] = v32;
      if (v31)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
        goto LABEL_52;
      }

      v12 = &xmmword_278A74878;
      goto LABEL_57;
    case 17:
      LOBYTE(v45) = 0;
      v33 = sub_2393C5CE4(a2, &v45);
      *a3 = v33;
      a3[1] = v34;
      if (v33)
      {
        goto LABEL_49;
      }

      v8 = [MEMORY[0x277CCABB0] numberWithBool:v45];
LABEL_44:
      v10 = v8;
      goto LABEL_59;
    case 18:
      v45 = 0uLL;
      v39 = sub_2393C61E0(a2, &v45);
      v10 = 0;
      *a3 = v39;
      a3[1] = v40;
      if (v39)
      {
        goto LABEL_59;
      }

      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45 length:*(&v45 + 1) encoding:4];
      if (v10)
      {
LABEL_52:
        v41 = v10;
      }

      else
      {
        v12 = &xmmword_278A74888;
LABEL_57:
        *a3 = *v12;
      }

LABEL_59:

      return v10;
    case 20:
      LOWORD(v45) = 0;
      BYTE2(v45) = 0;
      v37 = sub_238F01E50(&v45, a2);
      *a3 = v37;
      a3[1] = v38;
      if (v37)
      {
LABEL_49:
        v10 = 0;
      }

      else
      {
        v10 = objc_opt_new();
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v45];
        [v10 setFinish:v42];

        if (BYTE2(v45))
        {
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v45)];
          [v10 setPrimaryColor:v43];
        }

        else
        {
          [v10 setPrimaryColor:0];
        }
      }

      goto LABEL_59;
    default:
      v10 = 0;
      *a3 = 0x122A000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_59;
  }
}

void sub_2392A5AAC(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

id sub_2392A5AD4(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 2)
  {
    v14 = 0;
    v10 = sub_2393C5ED0(a2, &v14);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v14;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v15 = 0;
    v8 = sub_2393C5ED0(a2, &v15);
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v15;
      goto LABEL_12;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_13;
  }

  if (a1)
  {
    v12 = 0;
    *a3 = 0x1258000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_13;
  }

  v16 = 0;
  v4 = sub_2393C5ED0(a2, &v16);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_9;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v16;
LABEL_12:
  v12 = [v6 numberWithUnsignedChar:v7];
LABEL_13:

  return v12;
}

id sub_2392A5BC8(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 2:
      LOBYTE(v14) = 0;
      v15 = 0;
      v11 = sub_238F002E0(a2, &v14);
      *a3 = v11;
      a3[1] = v12;
      if (!v11 && v15 == 1)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v14];
        goto LABEL_15;
      }

      goto LABEL_13;
    case 1:
      v16 = 0;
      v8 = sub_238F00228(a2, &v16);
      *a3 = v8;
      a3[1] = v9;
      if (!v8 && HIBYTE(v16) == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v16;
        goto LABEL_9;
      }

      goto LABEL_13;
    case 0:
      v17 = 0;
      v4 = sub_238EFD7D0(a2, &v17);
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v17;
LABEL_9:
        v10 = [v6 numberWithUnsignedChar:v7];
        goto LABEL_15;
      }

LABEL_13:
      v10 = 0;
      goto LABEL_15;
  }

  v10 = 0;
  *a3 = 0x128E000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_15:

  return v10;
}

id sub_2392A5CE0(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
LABEL_9:
      LOBYTE(v36) = 0;
      v5 = sub_2393C5ED0(a2, &v36);
      *a3 = v5;
      a3[1] = v6;
      if (!v5)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v36];
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
LABEL_21:
        v7 = 0;
        *a3 = 0x1326000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_41;
      }

      goto LABEL_9;
    }

    sub_2393C5AAC(v47);
    sub_2393C5ADC(v30, 0, 0);
    v31 = sub_238F36BB4(v47, a2);
    v7 = 0;
    *a3 = v31;
    a3[1] = v32;
    if (v31)
    {
      goto LABEL_41;
    }

    v7 = objc_opt_new();
    sub_2393C5AAC(v38);
    v36 = 0;
    v37 = 0;
    sub_2393C5BDC(v38, v47);
    v39 = 0;
    v40 = 0;
    while (sub_238EA1A80(&v36) && sub_238EA49F4(&v36))
    {
      v33 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:v40];
      [v7 addObject:v33];
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_9;
    }

    sub_2393C5AAC(v47);
    sub_2393C5ADC(v17, 0, 0);
    v48 = 0;
    v18 = sub_238F36BB4(v47, a2);
    v7 = 0;
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
      goto LABEL_41;
    }

    v7 = objc_opt_new();
    sub_2392C7A68(v47, &v36);
    while (sub_2392C7AC8(&v36))
    {
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v40 length:v41];
      [v20 setRootPublicKey:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v42];
      [v20 setVendorID:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v43];
      [v20 setFabricID:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v44];
      [v20 setNodeID:v24];

      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v45[0] length:v45[1] encoding:4];
      [v20 setLabel:v25];

      v26 = [v20 label];

      if (!v26)
      {
        *a3 = xmmword_278A74898;

        goto LABEL_39;
      }

      if (v46[0] == 1)
      {
        v27 = sub_238DE36B8(v46);
        v28 = [MEMORY[0x277CBEA90] dataWithBytes:*v27 length:v27[1]];
        [v20 setVidVerificationStatement:v28];
      }

      else
      {
        [v20 setVidVerificationStatement:0];
      }

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46[24]];
      [v20 setFabricIndex:v29];

      [v7 addObject:v20];
    }
  }

  else
  {
    sub_2393C5AAC(v47);
    sub_2393C5ADC(v8, 0, 0);
    v48 = 0;
    v9 = sub_238F36BB4(v47, a2);
    v7 = 0;
    *a3 = v9;
    a3[1] = v10;
    if (v9)
    {
      goto LABEL_41;
    }

    v7 = objc_opt_new();
    sub_2392C79BC(v47, &v36);
    while (sub_2392C7A14(&v36))
    {
      v11 = objc_opt_new();
      v12 = [MEMORY[0x277CBEA90] dataWithBytes:v40 length:v41];
      [v11 setNoc:v12];

      if (v44)
      {
        v13 = [MEMORY[0x277CBEA90] dataWithBytes:v42 length:v43];
        [v11 setIcac:v13];
      }

      else
      {
        [v11 setIcac:0];
      }

      if (LOBYTE(v45[0]) == 1)
      {
        v14 = sub_238DE36B8(v45);
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:*v14 length:v14[1]];
        [v11 setVvsc:v15];
      }

      else
      {
        [v11 setVvsc:0];
      }

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46[8]];
      [v11 setFabricIndex:v16];

      [v7 addObject:v11];
    }
  }

  if (v36 != 33 && v36)
  {
    v34 = v37;
    *a3 = v36;
    a3[1] = v34;
LABEL_39:

LABEL_40:
    v7 = 0;
  }

LABEL_41:

  return v7;
}

id sub_2392A6260(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 1)
  {
    if (a1 != 2 && a1 != 3)
    {
      goto LABEL_21;
    }

    LOWORD(v32[0]) = 0;
    v17 = sub_2393C5F70(a2, v32);
    *a3 = v17;
    a3[1] = v18;
    if (!v17)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v32[0])];
      goto LABEL_33;
    }

LABEL_32:
    v7 = 0;
    goto LABEL_33;
  }

  if (!a1)
  {
    sub_2393C5AAC(&v28);
    sub_2393C5ADC(&v28, 0, 0);
    v30[56] = 0;
    v19 = sub_238F36BB4(&v28, a2);
    v7 = 0;
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
      goto LABEL_33;
    }

    v7 = objc_opt_new();
    sub_2392C7BD8(&v28, v32);
    while (sub_2392C7C24(v32))
    {
      v21 = objc_opt_new();
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v33];
      [v21 setGroupId:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v34];
      [v21 setGroupKeySetID:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35];
      [v21 setFabricIndex:v24];

      [v7 addObject:v21];
    }

LABEL_26:
    if (LODWORD(v32[0]) == 33 || !LODWORD(v32[0]))
    {
      goto LABEL_33;
    }

    v25 = v32[1];
    *a3 = v32[0];
    a3[1] = v25;
LABEL_31:

    goto LABEL_32;
  }

  if (a1 != 1)
  {
LABEL_21:
    v7 = 0;
    *a3 = 0x139C000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_33;
  }

  sub_2393C5AAC(v39);
  sub_2393C5ADC(v5, 0, 0);
  v39[72] = 0;
  v6 = sub_238F36BB4(v39, a2);
  v7 = 0;
  *a3 = v6;
  a3[1] = v8;
  if (!v6)
  {
    v7 = objc_opt_new();
    sub_2392C7C78(v39, v32);
    while (1)
    {
      if (!sub_2392C7CEC(v32))
      {
        goto LABEL_26;
      }

      v9 = objc_opt_new();
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v36];
      [v9 setGroupId:v10];

      v11 = objc_opt_new();
      sub_2393C5AAC(v30);
      v28 = 0;
      v29 = 0;
      sub_2393C5BDC(v30, &v37);
      while (sub_238DD5C4C(&v28))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v31];
        [v11 addObject:v12];
      }

      if (v28 != 33 && v28)
      {
        break;
      }

      [v9 setEndpoints:v11];

      if (v38[0] == 1)
      {
        v13 = sub_238DE36B8(v38);
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
        [v9 setGroupName:v14];

        v15 = [v9 groupName];

        if (!v15)
        {
          *a3 = xmmword_278A748A8;
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {
        [v9 setGroupName:0];
      }

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38[24]];
      [v9 setFabricIndex:v16];

      [v7 addObject:v9];
    }

    v26 = v29;
    *a3 = v28;
    a3[1] = v26;

    goto LABEL_30;
  }

LABEL_33:

  return v7;
}

id sub_2392A66D0(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x13CF000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v21);
    sub_2393C5ADC(v21, 0, 0);
    v6 = sub_238F36BB4(v21, a2);
    v4 = 0;
    *a3 = v6;
    a3[1] = v7;
    if (!v6)
    {
      v4 = objc_opt_new();
      sub_2393C5AAC(v18);
      v16 = 0;
      v17 = 0;
      sub_2393C5BDC(v18, v21);
      v20 = 0u;
      v19 = 0u;
      while (sub_238E433BC(&v16))
      {
        v8 = objc_opt_new();
        v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v19 length:4 encoding:?];
        [v8 setLabel:v9];

        v10 = [v8 label];

        if (!v10)
        {
          v14 = &xmmword_278A748B8;
          goto LABEL_14;
        }

        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v20 length:4 encoding:?];
        [v8 setValue:v11];

        v12 = [v8 value];

        if (!v12)
        {
          v14 = &xmmword_278A748C8;
LABEL_14:
          *a3 = *v14;

LABEL_15:
          v4 = 0;
          goto LABEL_16;
        }

        [v4 addObject:v8];
      }

      if (v16 != 33 && v16)
      {
        v13 = v17;
        *a3 = v16;
        a3[1] = v13;
        goto LABEL_15;
      }
    }
  }

LABEL_16:

  return v4;
}

id sub_2392A691C(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x1402000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v21);
    sub_2393C5ADC(v21, 0, 0);
    v6 = sub_238F36BB4(v21, a2);
    v4 = 0;
    *a3 = v6;
    a3[1] = v7;
    if (!v6)
    {
      v4 = objc_opt_new();
      sub_2393C5AAC(v18);
      v16 = 0;
      v17 = 0;
      sub_2393C5BDC(v18, v21);
      v20 = 0u;
      v19 = 0u;
      while (sub_238E433BC(&v16))
      {
        v8 = objc_opt_new();
        v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v19 length:4 encoding:?];
        [v8 setLabel:v9];

        v10 = [v8 label];

        if (!v10)
        {
          v14 = &xmmword_278A748D8;
          goto LABEL_14;
        }

        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v20 length:4 encoding:?];
        [v8 setValue:v11];

        v12 = [v8 value];

        if (!v12)
        {
          v14 = &xmmword_278A748E8;
LABEL_14:
          *a3 = *v14;

LABEL_15:
          v4 = 0;
          goto LABEL_16;
        }

        [v4 addObject:v8];
      }

      if (v16 != 33 && v16)
      {
        v13 = v17;
        *a3 = v16;
        a3[1] = v13;
        goto LABEL_15;
      }
    }
  }

LABEL_16:

  return v4;
}

id sub_2392A6B68(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x141A000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_2393C5CE4(a2, &v8);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    }
  }

  return v4;
}

id sub_2392A6BFC(int a1, uint64_t a2, void *a3)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        LODWORD(v26[0]) = 0;
        v5 = sub_238F37278(a2, v26);
LABEL_13:
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v26[0])];
LABEL_32:
          v11 = v7;
          goto LABEL_33;
        }

        goto LABEL_29;
      }

LABEL_17:
      LOWORD(v26[0]) = 0;
      v8 = sub_2393C5F70(a2, v26);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v26[0])];
        goto LABEL_32;
      }

LABEL_29:
      v11 = 0;
      goto LABEL_33;
    }

    switch(a1)
    {
      case 7:
        v26[0] = 0uLL;
        v10 = sub_2393C61E0(a2, v26);
        v11 = 0;
        *a3 = v10;
        a3[1] = v12;
        if (!v10)
        {
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*&v26[0] length:*(&v26[0] + 1) encoding:4];
          v11 = v13;
          if (v13)
          {
            v14 = v13;
          }

          else
          {
            *a3 = xmmword_278A748F8;
          }
        }

        goto LABEL_33;
      case 8:
        LOBYTE(v26[0]) = 0;
        v22 = sub_238EFF894(a2, v26);
        *a3 = v22;
        a3[1] = v23;
        if (!v22)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v26[0])];
          goto LABEL_32;
        }

        goto LABEL_29;
      case 9:
        goto LABEL_12;
    }

LABEL_30:
    v11 = 0;
    *a3 = 0x14AD000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_33;
  }

  if (a1 <= 1)
  {
    if (a1 <= 1)
    {
LABEL_12:
      LODWORD(v26[0]) = 0;
      v5 = sub_2393C5FC8(a2, v26);
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  if (a1 == 2)
  {
    goto LABEL_17;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  sub_2393C5AAC(v30);
  sub_2393C5ADC(v30, 0, 0);
  v31 = 0;
  v15 = sub_238F36BB4(v30, a2);
  v11 = 0;
  *a3 = v15;
  a3[1] = v16;
  if (!v15)
  {
    v11 = objc_opt_new();
    v33[0] = v31;
    if (v31 == 1)
    {
      v33[1] = v32;
    }

    sub_238EA4630(v26, v30, v33);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    while (sub_2392C7E34(v26))
    {
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
      [v17 setCheckInNodeID:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
      [v17 setMonitoredSubject:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
      [v17 setClientType:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v29)];
      [v17 setFabricIndex:v21];

      [v11 addObject:v17];
    }

    if (LODWORD(v26[0]) != 33 && LODWORD(v26[0]))
    {
      v25 = *(&v26[0] + 1);
      *a3 = *&v26[0];
      a3[1] = v25;

      goto LABEL_29;
    }
  }

LABEL_33:

  return v11;
}

id sub_2392A6FA0(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 2:
      v14 = 0;
      v11 = sub_238EA4D5C(a2, &v14);
      *a3 = v11;
      a3[1] = v12;
      if (v11)
      {
LABEL_10:
        v10 = 0;
        break;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      break;
    case 1:
      v15 = 0;
      v8 = sub_2393C5FC8(a2, &v15);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v15;
        goto LABEL_8;
      }

      goto LABEL_10;
    case 0:
      v16 = 0;
      v4 = sub_2393C5FC8(a2, &v16);
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v16;
LABEL_8:
        v10 = [v6 numberWithUnsignedInt:v7];
        break;
      }

      goto LABEL_10;
    default:
      v10 = 0;
      *a3 = 0x14DB000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v10;
}

id sub_2392A709C(int a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_2393C5AAC(v40);
      sub_2393C5ADC(v40, 0, 0);
      v19 = sub_238F36BB4(v40, a2);
      v14 = 0;
      *a3 = v19;
      a3[1] = v20;
      if (v19)
      {
        goto LABEL_52;
      }

      v14 = objc_opt_new();
      sub_2393C5AAC(v36);
      v34 = 0;
      v35 = 0;
      sub_2393C5BDC(v36, v40);
      LOBYTE(v38) = 0;
      LOBYTE(v39[0]) = 0;
      while (sub_238EA1A80(&v34) && sub_2392C7EAC(&v34))
      {
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38];
        [v21 setOperationalStateID:v22];

        if (LOBYTE(v39[0]) == 1)
        {
          v23 = sub_238DE36B8(v39);
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v23 length:v23[1] encoding:4];
          [v21 setOperationalStateLabel:v24];

          v25 = [v21 operationalStateLabel];

          if (!v25)
          {
            *a3 = xmmword_278A74918;

            goto LABEL_50;
          }
        }

        else
        {
          [v21 setOperationalStateLabel:0];
        }

        [v14 addObject:v21];
      }

      goto LABEL_38;
    }

    if (a1 == 4)
    {
      LOBYTE(v34) = 0;
      v28 = sub_238EA4D5C(a2, &v34);
      *a3 = v28;
      a3[1] = v29;
      if (v28)
      {
        goto LABEL_51;
      }

      goto LABEL_36;
    }

    if (a1 != 5)
    {
      goto LABEL_31;
    }

    LOBYTE(v34) = 0;
    LOBYTE(v35) = 0;
    v37[0] = 0;
    v8 = sub_238F357FC(&v34, a2);
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_51;
    }

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
    [v10 setErrorStateID:v11];

    if (v35 == 1)
    {
      v12 = sub_239289A18(&v35);
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v12 length:v12[1] encoding:4];
      [v10 setErrorStateLabel:v13];

      v14 = [v10 errorStateLabel];

      if (!v14)
      {
        v15 = &xmmword_278A74928;
LABEL_45:
        *a3 = *v15;
LABEL_48:

        goto LABEL_52;
      }
    }

    else
    {
      [v10 setErrorStateLabel:0];
    }

    if (v37[0] == 1)
    {
      v31 = sub_239289A18(v37);
      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v31 length:v31[1] encoding:4];
      [v10 setErrorStateDetails:v32];

      v14 = [v10 errorStateDetails];

      if (!v14)
      {
        v15 = &xmmword_278A74938;
        goto LABEL_45;
      }
    }

    else
    {
      [v10 setErrorStateDetails:0];
    }

    v14 = v10;
    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        v5 = sub_238EFDEB0(a2, &v34);
        *a3 = v5;
        a3[1] = v6;
        if (!v5 && BYTE4(v34) == 1)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
LABEL_37:
          v14 = v7;
          goto LABEL_52;
        }

        goto LABEL_51;
      }

LABEL_31:
      v14 = 0;
      *a3 = 0x1579000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_52;
    }

    LOWORD(v34) = 0;
    v26 = sub_238F00228(a2, &v34);
    *a3 = v26;
    a3[1] = v27;
    if (v26 || BYTE1(v34) != 1)
    {
LABEL_51:
      v14 = 0;
      goto LABEL_52;
    }

LABEL_36:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
    goto LABEL_37;
  }

  v40[0] = 0;
  v41 = 0;
  v16 = sub_238EFE808(a2, v40);
  *a3 = v16;
  a3[1] = v17;
  if (v16 || v41 != 1)
  {
    goto LABEL_51;
  }

  v14 = objc_opt_new();
  if ((v41 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2393C5AAC(v36);
  v34 = 0;
  v35 = 0;
  sub_2393C5BDC(v36, v40);
  v38 = 0;
  v39[0] = 0;
  while (sub_238E43364(&v34))
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v38 length:v39[0] encoding:4];
    if (!v18)
    {
      *a3 = xmmword_278A74908;
      goto LABEL_50;
    }

    [v14 addObject:v18];
  }

LABEL_38:
  if (v34 != 33 && v34)
  {
    v30 = v35;
    *a3 = v34;
    a3[1] = v30;
LABEL_50:

    goto LABEL_51;
  }

LABEL_52:

  return v14;
}

id sub_2392A7640(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x15C8000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74948;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A79C8(int a1, uint64_t a2, void *a3)
{
  if (a1 == 1)
  {
    LOWORD(v16) = 0;
    v12 = sub_238F10BDC(a2, &v16);
    *a3 = v12;
    a3[1] = v13;
    if (!v12 && BYTE1(v16) == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x15FE000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_18;
  }

  sub_2393C5AAC(v20);
  sub_2393C5ADC(v20, 0, 0);
  v5 = sub_238F36BB4(v20, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (!v5)
  {
    v6 = objc_opt_new();
    sub_2393C5AAC(v18);
    v16 = 0;
    v17 = 0;
    sub_2393C5BDC(v18, v20);
    while (1)
    {
      v8 = sub_238EA1A80(&v16);
      LODWORD(v9) = v16;
      if (v16)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      v19[0] = 0;
      v9 = sub_238EA4D5C(v18, v19);
      v16 = v9;
      v17 = v10;
      if (v9)
      {
        break;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v19[0]];
      [v6 addObject:v11];
    }

    if (v9 != 33 && v16)
    {
      v14 = v17;
      *a3 = v16;
      a3[1] = v14;

LABEL_17:
      v6 = 0;
    }
  }

LABEL_18:

  return v6;
}

id sub_2392A7B98(int a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      LOBYTE(v38[0]) = 0;
      v26 = sub_2393C5ED0(a2, v38);
      *a3 = v26;
      a3[1] = v27;
      if (v26)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (a1 != 4 && a1 != 5)
      {
        goto LABEL_31;
      }

      LOWORD(v38[0]) = 0;
      v20 = sub_238F00228(a2, v38);
      *a3 = v20;
      a3[1] = v21;
      if (v20 || BYTE1(v38[0]) != 1)
      {
        goto LABEL_44;
      }
    }

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v38[0])];
LABEL_30:
    v7 = v28;
    goto LABEL_45;
  }

  if (!a1)
  {
    v38[0] = 0uLL;
    v22 = sub_2393C61E0(a2, v38);
    v7 = 0;
    *a3 = v22;
    a3[1] = v23;
    if (!v22)
    {
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*&v38[0] length:*(&v38[0] + 1) encoding:4];
      v7 = v24;
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        *a3 = xmmword_278A74958;
      }
    }

    goto LABEL_45;
  }

  if (a1 == 1)
  {
    LOBYTE(v38[0]) = 0;
    BYTE2(v38[0]) = 0;
    v29 = sub_238EFD714(a2, v38);
    *a3 = v29;
    a3[1] = v30;
    if (!v29 && BYTE2(v38[0]) == 1)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v38[0])];
      goto LABEL_30;
    }

LABEL_44:
    v7 = 0;
    goto LABEL_45;
  }

  if (a1 != 2)
  {
LABEL_31:
    v7 = 0;
    *a3 = 0x1686000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_45;
  }

  sub_2393C5AAC(v43);
  sub_2393C5ADC(v5, 0, 0);
  v6 = sub_238F36BB4(v43, a2);
  v7 = 0;
  *a3 = v6;
  a3[1] = v8;
  if (!v6)
  {
    v7 = objc_opt_new();
    sub_2392C7EFC(v38, v43);
    while (sub_238EA1A80(v38) && sub_2392C7F5C(v38))
    {
      v9 = objc_opt_new();
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v39 length:v40 encoding:4];
      [v9 setLabel:v10];

      v11 = [v9 label];

      if (!v11)
      {
        *a3 = xmmword_278A74968;
        goto LABEL_42;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
      [v9 setMode:v12];

      v13 = objc_opt_new();
      sub_2393C5AAC(v36);
      v34 = 0;
      v35 = 0;
      sub_2393C5BDC(v36, &v42);
      v37 = 0;
      while (1)
      {
        v14 = sub_238EA1A80(&v34);
        LODWORD(v15) = v34;
        if (v34)
        {
          v14 = 0;
        }

        if (!v14)
        {
          break;
        }

        v37 = 0;
        v15 = sub_238F1F7F8(&v37, v36);
        v34 = v15;
        v35 = v16;
        if (v15)
        {
          break;
        }

        v17 = objc_opt_new();
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v37];
        [v17 setMfgCode:v18];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v37)];
        [v17 setValue:v19];

        [v13 addObject:v17];
      }

      if (v15 != 33 && v34)
      {
        v32 = v35;
        *a3 = v34;
        a3[1] = v32;

LABEL_42:
LABEL_43:

        goto LABEL_44;
      }

      [v9 setSemanticTags:v13];

      [v7 addObject:v9];
    }

    if (LODWORD(v38[0]) != 33 && LODWORD(v38[0]))
    {
      v31 = *(&v38[0] + 1);
      *a3 = *&v38[0];
      a3[1] = v31;
      goto LABEL_43;
    }
  }

LABEL_45:

  return v7;
}

id sub_2392A8018(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x16D5000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74978;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A83A0(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x1724000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74988;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}